" Menu Translations:    Simplified Chinese
" Maintainer:           Shun Bai <baishunde@gmail.com>
" Previous Maintainer:  Yuheng Xie <elephant@linux.net.cn>
" Last Change:          2019 Sep 11

" Quit when menu translations have already been done.
if exists("did_menu_trans_macvim")
  finish
endif
let did_menu_trans_macvim = 1
let s:keepcpo = &cpo
set cpo&vim

scriptencoding utf-8

" MacVim specific
if has("gui_macvim")
  menutrans New\ Window			新建窗口
  menutrans New\ Tab			新建标签页
  menutrans Open\.\.\.			打开\.\.\.
  menutrans Open\ Recent		打开新近访问
  menutrans Clear\ Menu			清除菜单
  menutrans Close\ Window<Tab>:qa	关闭窗口<Tab>:qa
  menutrans Close				关闭
  menutrans Save\ All			全部保存
  menutrans Save\ As\.\.\.<Tab>:sav    另存为\.\.\.<Tab>:sav
  menutrans Find                       查找
  menutrans Find\.\.\.                 查找\.\.\.

  menutrans Find\ Next			下个查找
  menutrans Find\ Previous		上个查找
  menutrans Use\ Selection\ for\ Find	选中文本用作查找
  menutrans None			无
  menutrans Font			字体
  menutrans Show\ Fonts			列出字体
  menutrans Bigger			字体变大
  menutrans Smaller			字体变小
  menutrans Emoji\ &&\ Symbols		表情及符号
  menutrans Start\ Dictation\.\.\.	开始听写
  menutrans Minimize			最小化
  menutrans Minimize\ All		全部最小化
  menutrans Maximize			最大化
  menutrans Zoom			缩放
  menutrans Zoom\ All			全部缩放
  menutrans Toggle\ Full\ Screen\ Mode	切换全屏模式
  menutrans Tile\ Window\ to\ Left\ of\ Screen	将窗口拼贴到屏幕左侧
  menutrans Tile\ Window\ to\ Right\ of\ Screen	将窗口拼贴到屏幕右侧
  menutrans Select\ Next\ Tab		选择下一标签页
  menutrans Select\ Previous\ Tab	选择上一标签页
  menutrans Bring\ All\ To\ Front	全部带到前台
  menutrans Stay\ in\ Front		保持在前台
  menutrans Stay\ in\ Back		保持在后台
  menutrans Stay\ Level\ Normal		保持正常级别
  menutrans MacVim\ help		MacVim\ 帮助
  menutrans MacVim\ Website		MacVim\ 网站
  menutrans Show\ C&olor\ Schemes\ in\ Menu	菜单中显示色彩方案
  menutrans Show\ &Keymaps\ in\ Menu	菜单中显示键盘映射
endif

menutrans &Redo<Tab>^R						复做(&R)<Tab>^R
menutrans Ta&g\ Files\.\.\.									标签文件(Tags)(&G)\.\.\.

" fun! s:TagFiles()
if !exists("g:menutrans_tags_dialog")
  let g:menutrans_tags_dialog = "输入标签文件(Tags)名称。\n用逗号分隔文件名。"
endif

menutrans Toggle\ Line\ &Wrapping<Tab>:set\ wrap!			开/关行回绕(&W)<Tab>:set\ wrap!
menutrans Toggle\ W&rapping\ at\ Word<Tab>:set\ lbr!		开/关整词回绕(&R)<Tab>:set\ lbr!

menutrans Soft\ &Tabstop									软制表位宽度(&T)
menutrans C&olor\ Scheme					色彩方案(&O)
menutrans &Jump\ to\ This\ Tag<Tab>g^]			跳转到这个标签(Tag)(&J)<Tab>g^]
menutrans Build\ &Tags\ File					生成标签文件(Tags)(&T)

" func! s:BMMunge(fname, bnum) 
if !exists("g:menutrans_no_file")
  let g:menutrans_no_file = "[未命名]"
endif

  menutrans Tag<tab>mT								生成标签文件(Tags)<tab>mT
  menutrans thin<tab>i	紧凑(thin)<tab>i

let &cpo = s:keepcpo
unlet s:keepcpo

" vim: set ts=4 sw=4 noet fdm=marker fdc=4 :
