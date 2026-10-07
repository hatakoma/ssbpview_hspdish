; Based on ssbpLib For HSP, Copyright (c) Web Technology Corp. (MIT).
; See THIRD_PARTY_NOTICES.md and upstream/LICENSE for notices and changes.
; Windows / HSP3Dish renderer for the official SS5PlayerDll.
; Buffer IDs 10..109 are reserved. Call ssbp_init once.
#include "ss5player.as"

#module ssbp_dish
#deffunc ssbp_init
    dim state,18
    dim dx,4 : dim dy,4 : dim tx,4 : dim ty,4
    dim loaded,100
    sdim texture,1024
    result = SSPlayer_initlize()
    result = SSPlayer_setFps(60)
    return

#deffunc ssbp_load str filename
    exist filename
    if strsize < 0 : dialog "SSBP not found: " + filename : end
    result = SSPlayer_addData(filename)
    repeat 100
        slot = cnt
        texture_id = SSPlayer_get_texureIndex(slot)
        if texture_id < 0 : continue
        if loaded(texture_id) : continue
        result = SSPlayer_get_texureName(slot,varptr(texture))
        exist texture
        if strsize < 0 : dialog "Texture not found: " + texture : end
        celload texture,texture_id+10
        loaded(texture_id)=1
    loop
    gsel 0
    return

#deffunc ssbp_draw int player
    parts = SSPlayer_get_partNum(player)
    repeat parts
        result = SSPlayer_get_partStatus(player,cnt,state)
        if state(0)<0 : continue
        if state(1)=0 : continue
        if state(11)<=0 : continue
        if state(6)<=0 | state(7)<=0 : continue
        angle = double(state(10))*3.141592653589793/180.0
        ; Match the official sample's single-axis flip correction.
        if state(13)+state(14)=1 : angle=-angle
        ca=cos(angle) : sa=sin(angle)
        zx=double(state(8))/100.0 : zy=double(state(9))/100.0
        tx(0)=state(4) : ty(0)=state(5)
        tx(1)=state(4)+state(6) : ty(1)=state(5)
        tx(2)=tx(1) : ty(2)=state(5)+state(7)
        tx(3)=tx(0) : ty(3)=ty(2)
        repeat 4
            corner=cnt
            lx=double(tx(corner)-state(4))-double(state(6))/2.0
            ly=double(ty(corner)-state(5))-double(state(7))/2.0
            dx(corner)=int(double(state(2))+(lx*ca-ly*sa)*zx)
            dy(corner)=int(double(state(3))+(lx*sa+ly*ca)*zy)
        loop
        ; Dish uses the PNG alpha channel with gmode 3.
        gmode 3,,,state(11)
        gsquare state(0)+10,dx,dy,tx,ty
    loop
    return
#global
