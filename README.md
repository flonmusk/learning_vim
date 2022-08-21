# learning_vim


## Pack

### 0. pack的安装

方法1：

使用pack管理器（举例：minpac）安装

.vimrc加入如下内容

`call minpac#add('tpope/vim-eunuch')`

vim命令模式执行

`:PackUpdate`

Issue:

```
## minpac update progress ##

W: vim-eunuch: fatal: unable to access 'https://github.com/tpope/vim-eunuch.git/': Failed to connect to github.com port 443: Connection timed out
E: Error while updating "vim-eunuch".  Error code: 1
```

Solution:

```
git config --global  --unset https.https://github.com.proxy 
git config --global  --unset http.https://github.com.proxy
```

再提示 timeout 就多试几次，或者选择科学上网。

方法2：

离线安装

```
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/eunuch.git
```

### 1. yegappan/mru

​	Vim 的默认不支持查看“最近使用的文件”这一功能，安装mru插件可以解决（MRU 代表 most recently used）。

详细情况参考: https://github.com/tpope/vim-eunuch

​	非GUI VIM和GUI VIM的使用方法不一样。

1. 非GUI VIM

- 使用方法1：

输入`:enum `（注意m后面有个空格）然后按几次tab键选择之前打开过的文件

- 使用方法2：

映射快捷键，.vimrc 加上如下内容

```
if !has('gui_running')
  " 设置文本菜单
  if has('wildmenu')
    set wildmenu
    set cpoptions-=<
    set wildcharm=<C-Z>
    nnoremap <F10>      :emenu <C-Z>
    inoremap <F10> <C-O>:emenu <C-Z>
  endif
endif
```

2. GUI VIM

工具栏：File -> Recent Files 

