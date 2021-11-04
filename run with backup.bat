
@cd /d %~dp0
::将工作路径更换为脚本所在路劲
::cd 代表切换目录
::/d 代表不分盘符, 任意切换
::%0 代表批处理脚本本身
::~dp是变量扩充: d代表分区, p代表路径


@set flag=0
:: 设置参数
:: 等号左右不可存在空格
@for %%i in (run\*) do @set flag=1
@if %flag% == 0 (@echo Err: run Uprepared! & @pause & exit)
:: 根据标识符判断run 是否为空. 
:: 若为空则不可运行项目.


@xcopy run backup /y > null
:: /y 表示覆盖文件
:: 会出现已复制n个文件的提示, 
:: 这里转移提示写入的位置, 最后删除null


@call run\main.bat
cd /d %~dp0


del null
