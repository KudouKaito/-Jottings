# Jottings -- record what you are doing  
## Introduction
This is a simple script to record what you are doing in different time, which can let you know what you did today. It may easy to implement by the org mode of emacs. However, I AM A VIMMER! And I have little knowledge of emacs. Therefore, I wrote this simple bash script.  
It's like a log.  
## Dependancy  
vim  
## Usage  
The only executable is the timemgr.sh. It's Usage is as below:  
```text
timemgr.sh [-t|--time] [-v|--vim] [content]  
-t|--time  
if you open vim to edit your content. It can add date to the end instead of ":r !date" by hand.  
-v|--vim  
open vim to view or edit  
```
For convenient you can link timemgr.sh to /bin or /usr/bin. For example, I make two soft link timemgr and tmm to /usr/bin  

in fact, this is only the one of functions of Jottings  
Finally, remanber to remove my record and DON'T LOOK IT!  

# 杂记 —— 记录所做作为  
这是一个用来记录特定时间段你在做啥的简单脚本, 它可以记录你一天的所作所为. 虽然这用emacs的org mode很容易实现, 但是**我是vim用户啊!!**, 而且我也还不了解emacs, 于是我就写了这个简单的bash脚本.   
就像一个log.(对,你就是生成log的程序  
## 依赖  
vim  
## 用法  
timemgr.sh就是惟一一个可执行程序,用法如下:
```text
timemgr.sh [-t|--time] [-v|--vim] [content]  
-t|--time  
如果你用vim打开编辑,那用这个选项可以快速在末尾生成时间,不用手动":r !date"  
-v|--vim  
用vim查看或编辑  
```
For convenient you can link timemgr.sh to /bin or /usr/bin. For example, I make two soft link timemgr and tmm to /usr/bin  
方便起见,你可以像我一样在/bin或者/usr/bin里面创建一个软链接timemgr和tmm.  

in fact, this is only the one of functions of Jottings  
其实, 这个功能只是我像在杂记实现的众多功能之一(其它想法还没有写,也可能不会写  
Finally, remanber to remove my record and DON'T LOOK IT!  
最后, 在使用之前要删掉TimeManagement文件夹里面的记录, 因为那是我的记录...一定不能看!!!  

下一步打算写一个同步功能(可能用github  
