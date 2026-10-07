# Third-party notices / 第三者ライセンス表記

## ssbpLib / ssbpLib For HSP

- 著作権者：Copyright (c) Web Technology Corp.
- ライセンス：MIT
- 配布元：https://github.com/SpriteStudio/ssbpLib
- 確認したコミット：7974ef59df18ac49d5d57e7d5d873d90c49526cf
- ライセンス原文：https://github.com/SpriteStudio/ssbpLib/blob/7974ef59df18ac49d5d57e7d5d873d90c49526cf/LICENSE
- 確認日：2026-10-08

### 同梱物と変更内容

| このリポジトリのファイル | 公式リポジトリ内の出典 | 変更 |
| --- | --- | --- |
| SS5PlayerDll.dll | samples/HSP/SS5Player/SS5PlayerDll.dll | なし |
| upstream/main.hsp | samples/HSP/SS5Player/main.hsp | なし |
| upstream/readme.txt | samples/HSP/SS5Player/readme.txt | なし |
| upstream/README.md | samples/HSP/README.md | なし |
| upstream/SS5PlayerDll.cpp | Players/ssbpLibForHSP/SS5PlayerDll/SS5PlayerDll.cpp | なし |
| upstream/LICENSE | LICENSE | なし |
| Resources/character_template_comipo/character_2head.png | samples/HSP/SS5Player/Resources/character_template_comipo/character_2head.png | なし |
| Resources/character_template_comipo/character_3head.png | samples/HSP/SS5Player/Resources/character_template_comipo/character_3head.png | なし |
| Resources/character_template_comipo/character_template1.ssbp | samples/HSP/SS5Player/Resources/character_template_comipo/character_template1.ssbp | なし |
| ss5player.as | samples/HSP/SS5Player/main.hsp のDLL関数宣言 | 宣言を抽出しglobalを追加、出典コメントを追加 |
| main.hsp / ssbp_dish.as | samples/HSP/SS5Player/main.hsp のAPI使用方法・描画処理を参考 | HSP3Dish描画、モジュール化、操作・検証処理を実装 |

### 再配布時の表記

MITの条件に従い、上記の著作権表示と以下の許諾・免責文を、対象ソフトウェアのコピーまたは重要部分とともに保持してください。
GitHubのソース公開だけでなく、対象DLLを含むZIP等にもこのファイルまたは同等のライセンス原文を添付してください。
出典URLの記載だけでは、ライセンス原文の同梱の代わりにはなりません。

以下は上流のLICENSE原文です。独自追加コードに対する新たなライセンス許諾をこの文書で行うものではありません。

```text
The MIT License (MIT)

Copyright (c) Web Technology Corp.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

```

### サンプル素材の確認範囲

同梱PNGとssbpは、上記MITライセンスが置かれた公式リポジトリ内のサンプルから取得しています。
確認したコミットのResourcesフォルダ、その親フォルダ、およびHSP用README・リファレンスには、素材に対する別のライセンス文書や追加クレジット指定は見つかりませんでした。
そのため上流の著作権表示とMIT原文を素材にも添付して出典を保持しています。
素材について独立した権利確認や、コミPo!製品一般の素材利用条件の適用を確認したという意味ではありません。

### 同梱していないもの

HSP3.7 / HSP3Dish本体、Artlet2D、SpriteStudio本体、Ss5Converterは同梱していません。
HSPのランタイム等を将来リリースに同梱する場合は、その配布物に付属するライセンス・著作権表示も別途保持してください。
本サンプルの描画処理はArtlet2Dを呼び出しません。upstream/main.hspは原本保管用です。