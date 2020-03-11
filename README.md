# flutter-demo
flutter-demo

flutter中文社区：https://flutter.cn/

flutter中文网：https://flutterchina.club/

flutter实战电子书：https://book.flutterchina.club/

# 搭建开发环境

## 在macOS上搭建flutter开发环境

### 获取flutter sdk

官网地址：https://flutter.dev/docs/development/tools/sdk/releases?tab=macos#macos

github：https://github.com/flutter/flutter/releases

查看flutter SDK版本号：解压后 flutter/version

添加flutter到path中，'pwd'是解压后flutter的文件路径。

```shell
export PATH=`pwd`/flutter/bin:$PATH
```

export命令文件所在：

```
~/.bash_profile
```

至此，只能在当前路径下使用flutter命令

### 安装依赖

运行 `flutter doctor` 命令，查看是否需要安装其他依赖。根据提醒安装缺少的环境依赖。

例如：

```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, v1.12.13+hotfix.8, on Mac OS X 10.15.2 19C57, locale zh-Hans-CN)
[✓] Android toolchain - develop for Android devices (Android SDK version 28.0.3)
[✓] Xcode - develop for iOS and macOS (Xcode 11.3.1)
[✓] Android Studio (version 3.3)
[!] IntelliJ IDEA Ultimate Edition (version 2019.2.3)
    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
    ✗ Dart plugin not installed; this adds Dart specific functionality.
[✓] VS Code (version 1.42.1)
[!] Connected device
    ! No devices available
```

问题：

执行 `flutter doctor` 命令时，提示“无法打开“idevice_id”，因为无法验证开发者”。

去Mac的“系统偏好设置-->安全隐私-->通用-->允许idevice_id”，重新运行 `flutter doctor` 命令，弹窗会出现打开按钮。

### 全局可用flutter命令

1. 获取flutter SDK路径，用在第2步中添加的路径。

2. 不同系统文件目录可能会不相同，以 `.bashrc` 为例。在 `.bashrc` 文件中添加路径。

   ```
   export PATH="$PATH:/Users/inspiry/Desktop/work/flutter/bin"
   ```

3. 运行 `source $HOME/.bash_profile` 刷新命令行
4. 使用 `echo $PATH` 命令查看SDK路径是否已添加
5. 使用 `which flutter` 查找flutter，验证是否可用全局命令



























