#!/bin/bash
#coding:utf-8

#判断当前登录的用户是否为root
if [ `whoami` != "root" ]
then
        echo -e "\033[31m Current user is not root! Please switch root to try again! \033[0m"
else
	
#实现Press any key to continue ...
get_char(){

	SAVEDSTTY=`stty -g`

	#隐藏终端输入显示
	stty -echo
	stty cbreak

	#dd等待用户按键 bs(block size)块大小=1,count总数=1，作用只取一个字符, 2> /dev/null 不显示任何信息
	dd if=/dev/tty bs=1 count=1 2> /dev/null
	stty -raw

	#恢复终端显示
	stty echo
	stty $SAVEDSTTY
}

echo "Beginning install Python3.7.3, Press any key to continue ..."

char=`get_char`


#安装编译环境
echo "Start Install Development tools and Dependency package..."
sudo yum -y groupinstall "Development tools"

#安装依赖包
sudo yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel libffi-devel
echo -e "\033[32m Development tools and Dependency package Install Successfully! \033[0m"

#获取Python3.7.3安装包
echo "Start Download Python-3.7.3 install package..."
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
echo -e "\033[32m Download Python-3.7.3 install package Successfully! \033[0m"

#解压安装包
echo "Start Untar the Python-3.7.3 install package..."
tar -zxvf Python-3.7.3.tgz
echo -e "\033[32m Untar the Python-3.7.3 install package Successfully! \033[0m"

#切换到安装包目录
cd Python-3.7.3

#配置Python3的安装目录
./configure --prefix=/usr/local/bin/python3

#编译安装 Python3 
echo "Start make install Python-3.7.3..."
sudo make && make install
echo -e "\033[32m Make install Python-3.7.3 Successfully! \033[0m"

#创建Python3软链接
ln -s /usr/local/bin/python3/bin/python3 /usr/bin/python3

#创建pip3软链接
ln -s /usr/local/bin/python3/bin/pip3 /usr/bin/pip3

#输出 Python3 及 pip3 的版本
echo -e "\nInstalled Python and pip version is ... "
python3 -V && pip3 -V

#输出 Python3 及 pip3 的安装目录
echo -e "\nYour Python and pip have been installed in follows directory... "
which python3 && which pip3

echo -e "\033[32m \nInstall Successfully! Enjoy 😘!\n \033[0m" 

fi
