# ssbpLib_hsp

HSP3.7 + Windows版HSP3Dish + 公式ssbpLib For HSPの最小サンプルです。
公式のArtlet2D描画を、PNGの`celload`と`gsquare`による描画に置き換えました。

## 実行

`main.hsp`をHSP3.7のエディタで開いてF5を押してください。
または`run.cmd`を実行します（初期設定は`C:\hsp37`）。
DLLとResourcesはmain.hspと同じフォルダに置いてください。

- Space：一時停止／再開
- 左右キー：一時停止中に1コマ戻す／進める
- F：左右反転
- Esc／ウィンドウを閉じる：終了・DLLのデータ解放

## ファイル

- `main.hsp`：サンプル本体。3頭身キャラクターのstanceをループ再生。
- `ssbp_dish.as`：再利用する描画モジュール。
- `ss5player.as`：公式DLLの関数宣言（モジュールから使えるglobal宣言）。
- `SS5PlayerDll.dll`：公式配布の32bit DLL。
- `Resources/`：公式サンプルのssbpとPNG。
- `upstream/`：参照用の公式サンプル、DLLソース、リファレンス、MITライセンス。元のmain.hspはArtlet2Dが必要なので通常は実行しません。

## 利用の流れ

1. `hsp3dish.as`と`ssbp_dish.as`をinclude。
2. `ssbp_init`を1回呼び、`ssbp_load "ファイル.ssbp"`で読み込む。
3. `SSPlayer_play(プレイヤー番号,"ssbpの拡張子なし名","ssae名/モーション名")`を呼ぶ。
4. 毎フレーム`SSPlayer_update()`を1回呼び、`redraw 0`と`redraw 1`の間で`ssbp_draw プレイヤー番号`を呼ぶ。
5. 終了時に`SSPlayer_Delete()`を呼ぶ。

プレイヤー番号は0～31。画像バッファID 10～109を予約します。
`ssbp_draw`は現在の描画先へ描き、gmodeを変更します。
更新間隔は60fpsを想定した固定刻みで、処理落ち時の実時間補正はありません。
DLLの各APIの戻り値は多くが常に0なので、成功判定として扱わないでください。
存在しないモーション名や非対応形式は旧DLL内でエラーになる可能性があります。

## 対応範囲

位置、Z回転、拡縮、不透明度、反転、描画順、PNGアルファに対応する初期版です。
公式サンプルと同様、X/Y回転、頂点変形、カラーブレンド、サイズ属性、UVアニメーション、
ユーザーデータ、インスタンスアニメの描画は対象外です。パーツのブレンド方式は通常合成のみです。
回転・拡縮は公式HSPサンプルの変換順序に合わせています。

これはWindows用DLLを呼ぶ構成です。HSP3DishでもAndroid/iOS/Webへそのまま移植はできません。
公式HSP版の動作確認対象はSpriteStudio5-SDK v1.4.5のSs5Converter出力です。
新しいSpriteStudioのデータとの互換性は保証しません。

## 確認

ローカルのHSP3.7でコンパイルし、HSP3Dishで素材読込・19パーツの更新と描画命令を
120フレーム実行して正常終了することを確認しました。
見た目の完全一致およびキー操作の目視確認は未実施です。
自動確認は`hsp3dish.exe main.ax --smoke`で実行し、`smoke-result.txt`に結果を出します。

## 出典・ライセンス

- [紹介記事](https://www.webtech.co.jp/blog/products/spritestudio/7731/)
- [ssbpLib For HSP](https://github.com/SpriteStudio/ssbpLib/wiki/ssbpLibForHSP)
- [公式リポジトリ](https://github.com/SpriteStudio/ssbpLib)

ssbpLib / ssbpLib For HSPの著作権表示は **Copyright (c) Web Technology Corp.**、ライセンスは **MIT License** です。
再配布時には著作権表示とMITの許諾・免責文を保持してください。

- [第三者ライセンス・同梱物の出典・改変内容](THIRD_PARTY_NOTICES.md)
- [上流MITライセンス原文](upstream/LICENSE)

公式ファイルは2026-10-08に取得し、上流コミット`7974ef59df18ac49d5d57e7d5d873d90c49526cf`を確認しています。
同梱素材も公式リポジトリ由来です。素材の個別条件の調査範囲は第三者ライセンス文書に記載しています。
DLLや素材を含む配布ZIPにもライセンス表記を添付してください。

この表記は第三者の権利・ライセンスを示すものです。本プロジェクト独自の追加コード全体に適用するライセンスは未設定です。
