```shell
                                         _ __      _,.---._      .=-.-.
                                      .-`.' ,`.  ,-.' - ,  `.   /==/_ /
                                     /==/, -   \/==/ ,    -  \ |==|, |  
                                    |==| _ .=. |==| - .=.  ,  ||==|  |  
                                    |==| , '=',|==|  : ;=:  - ||==|- |  
                                    |==|-  '..'|==|,  '='  ,  ||==| ,|  
                                    |==|,  |    \==\ _   -    ;|==|- |  
                                    /==/ - |     '.='.  ,  ; -\/==/. /  
                                    `--`---'       `--`--'' `--`--`-`   

                                 ---- by Tespera (www.tespera.com)

```
# <p align="center">The Shell script will auto install Python3 in your CentOS without complex steps.</p>

<p align="center">
    <a href="https://github.com/Tespera/AutoInstallPython3/LICENSE">
        <img src="https://img.shields.io/cocoapods/l/EFQRCode.svg?style=flat">
        </a>
    <a href="https://github.com/Tespera/AutoInstallPython3">
        <img src="https://img.shields.io/badge/language-shell-49d292.svg">
        </a>
    <a href="https://github.com/Tespera/AutoInstallPython3">
    <img src="https://img.shields.io/github/stars/Tespera/AutoInstallPython3.svg?style=social&label=Star">
        </a>
    <a href="https://github.com/Tespera/AutoInstallPython3">
    <img src="https://img.shields.io/github/forks/Tespera/AutoInstallPython3.svg?style=social&label=Fork">
        </a>
</p>


众所周知，在 Linux 系统中均默认安装了Python2 的版本，但是有时候做开发需要用到 Python3，并需要通过 pip 来安装一些依赖和扩展，但是 Linux 安装 Python3 比较麻烦，并不能通过 命令 yum install python3 来实现一键安装，所以本人写了一个简单的 Shell 脚本来实现一键安装。刚学的 Shell ，只为了方便，不喜勿喷；初级 Shell 脚本，高手忽略。


##### 首先切换到 root 用户，然后下载安装脚本

```
# git clone https://github.com/Tespera/AutoInstallPython3.git
```

##### 赋予脚本执行权限
```
# chmod +x AutoInstallPython3.sh
```

##### 开始自动安装
```
# ./AutoInstallPython3.sh
```

##### 当命令行显示如下信息时即表示安装成功

```
Installed Python and pip version is ... 
Python 3.7.3
pip 19.0.3 from /usr/local/lib/python3.7/site-packages/pip (python 3.7)

Your Python and pip have been installed in follows directory... 
/usr/local/bin/python3
/usr/local/bin/pip3
 
Install Successfully! Enjoy 😘!
 
[root@VM_135_138_centos ~]#

```

可以看到 Python 3.7.3 被安装到 /usr/local/bin/python3 目录下，pip3 被安装到 /usr/local/bin/pip3 目录下。

现在在命令行输入 python3，可以看到能成功进入 python3 的终端，大功告成。就是如此简单。

这样安装完成之后，Python3 可以正常使用，且 Python2 也同时存在

可以输入以下命令查看
```
# python3 -V &&  python -V
```

* python3 -V   版本3（3.7.3） 

* python -V   版本2（2.7.x）

各自对应的安装目录
```
# which python3 && which python
```

* /usr/bin/python3   版本3（3.7.3）

* /usr/bin/python   版本2（2.7.x）



### LICENSE
[MIT](https://github.com/Tespera/AutoInstallPython3/LICENSE)
