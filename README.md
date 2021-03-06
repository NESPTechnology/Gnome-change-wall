# 我的简书
[https://www.jianshu.com/p/dfe5d95601c7](https://www.jianshu.com/p/dfe5d95601c7)
# 我的Ｂ站
[视频预览](https://www.bilibili.com/video/av58696215)

# Gnome-change-wall

自动下载必应壁纸，自动更换桌面壁纸

# Gnome 下的自动下载轮换壁纸
![预览.gif](https://upload-images.jianshu.io/upload_images/1717758-d1f978f815318b57.gif?imageMogr2/auto-orient/strip)


## 开机自启动设置
![开机启动.png](https://upload-images.jianshu.io/upload_images/1717758-6ef140cdad23b85a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
### 设置思路
１．写个```.desktop ```文件，放进  ```~/.local/share/applications/```目录内，
２．然后在```gnome-tweak```内添加开机自启，简直不要太爽


源码地址[https://github.com/NESPTechnology/Gnome-change-wall](https://github.com/NESPTechnology/Gnome-change-wall)

 ## 使用方法
 1.下载[bundle.zip](https://github.com/NESPTechnology/Gnome-change-wall/raw/master/bundle.zip) 并解压，目录结构如下
 
 ```Shell
 /bundle
├── add-sys-init.sh //添加开机自启,需要chkconfig软件包
├── change-wall.jar
├── launch.sh//启动脚本
├── lib              //依赖库
│   ├── fastjson-1.2.58.jar
│   ├── jsoup-1.12.1.jar
│   ├── kotlin-reflect.jar
│   ├── kotlin-reflect-sources.jar
│   ├── kotlin-stdlib.jar
│   ├── kotlin-stdlib-jdk7.jar
│   ├── kotlin-stdlib-jdk7-sources.jar
│   ├── kotlin-stdlib-jdk8.jar
│   ├── kotlin-stdlib-jdk8-sources.jar
│   ├── kotlin-stdlib-sources.jar
│   ├── kotlin-test.jar
│   ├── kotlin-test-sources.jar
│   ├── okhttp-4.0.0.jar
│   └── okio-2.2.2.jar
├── settings.json//设置文件
└── shell
    └── exec.sh
 
 ```
 
 在终端运行```launch.sh```你就已经启动该服务，它会依照你的设定运行。
 
 2.setttings.json配置文件讲解
 
 ```json
{
  "wall_img_dir": "biying2",/轮播壁纸用的壁纸所在目录，程序会自动遍历其下及其子目录下的壁纸，并进行轮换壁纸
  "cycle_time": 20000,/每个壁纸停留的时长。即壁纸轮换周期,单位毫秒
  "dl_biying_img_dir": "biying2",//下载必应壁纸所存储的目录
  "dl_biying_img_mode": 0,//0:以最新的壁纸为顺序下载，1:以最热的壁纸为顺序下载,其他数字默认为0
  "dl_biying_img_max_count": 20,//最大的壁纸下载数量
  "delete_files_before_dl_biying_img": true,//下载前是否需要先清空目录
  "dl_delay_time": "1h",//每隔一定的时间重新下载，三种格式举例：2h或2d或2d2h , h代表小时，d代表天
}
```
 
 
 
