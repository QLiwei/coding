# **CMake**

【参考资料】

CMake是一个跨平台的构建系统生成器，它允许开发人员以独立于平台的方式编写构建脚本。它是一个用于管理软件项目构建过程的工具，通过生成可与编译器如GCC、Clang或Visual Studio一起使用的本机构建文件。

使用CMake，开发人员可以编写一个单独的构建配置文件，称为CMakeLists.txt，其中描述了项目的源文件、构建目标和依赖项。然后，CMake会为特定的平台和编译器生成本机构建文件，例如Unix系统的Makefile，Windows的Visual Studio项目文件，以及macOS和iOS的Xcode项目文件。

CMake还支持广泛的第三方库和工具，包括Boost、Qt、OpenSSL等，允许开发人员轻松地将这些库包含到其项目中。

总体而言，CMake是一个强大且广泛使用的工具，它使得开发人员更容易地管理其软件项目的构建过程，特别是用于跨平台开发。



以下是一些学习CMake的推荐教程：

1. CMake官方文档：CMake官方文档包含了完整的CMake教程和参考手册，非常详细地介绍了CMake的各种功能和用法。
2. CMake入门实战：这是一本中文书籍，适合初学者快速入门，书中包含了大量的实例和示例代码。
3. CMake Cookbook：这是一本英文书籍，详细介绍了CMake的各种用法和技巧，涵盖了从基本的构建设置到高级的库管理和模块化构建等方面。
4. CMake Tutorial：这是一篇英文博客教程，逐步介绍了如何使用CMake构建一个简单的项目，非常适合初学者入门。
5. CMake Examples：这是一个GitHub项目，包含了许多CMake的使用示例，从最基本的应用到高级的用法都有覆盖。

https://www.hahack.com/codes/cmake/

## 1.下载

要在Windows上安装CMake，请按照以下步骤操作：

1. 下载CMake安装程序 访问CMake官方网站（https://cmake.org/download/）并下载适用于您的Windows版本的CMake安装程序。

2. 运行安装程序 打开下载的CMake安装程序，并按照安装向导的提示进行操作。您可以选择默认的安装选项，也可以自定义安装目录和其他选项。

3. 将CMake添加到系统PATH环境变量 安装完成后，您需要将CMake的安装目录添加到系统PATH环境变量中，以便可以在命令行中使用CMake命令。您可以按照以下步骤操作：

   - 右键单击“此电脑”，选择“属性”。
   - 点击“高级系统设置”。
   - 在“系统属性”窗口中，点击“环境变量”按钮。
   - 在“环境变量”窗口中，找到“系统变量”部分下的“Path”变量，然后双击它。
   - 在“编辑环境变量”窗口中，点击“新建”按钮，并添加CMake的安装目录，例如“C:\Program Files\CMake\bin”。
   - 点击“确定”按钮保存更改，并关闭所有窗口。

4. 验证安装 打开命令行窗口，并输入以下命令来验证CMake是否正确安装：

   ```
   cmake --version
   ```

   如果CMake正确安装，您将看到CMake的版本号。

以上是在Windows上安装CMake的基本步骤。您现在可以开始使用CMake生成项目的构建文件。

## 2.使用

1. 重新运行CMake，并使用正确的生成器。在CMakeLists.txt文件所在的目录中，执行以下命令：

   ```
   arduinoCopy code
   cmake -G "MinGW Makefiles" .
   ```

   请注意，这将使用`MinGW Makefiles`生成器重新生成构建文件。如果您使用的是其他生成器，请相应地更改`-G`选项。

CMakeLists.txt

```
cmake_minimum_required(VERSION 3.26.3)  # 设置最低版本要求

project(MyProject)  # 设置项目名称

add_executable(my_executable main.c)  # 添加可执行文件并指定源文件
```



```shell
# cmd
cmake -G "MinGW Makefiles" .

mingw32-make

cmake -G "MinGW Makefiles" . -DUSE_MYMATH=ON 

mingw32-make install
```



您收到的消息意味着 "cmake -i" 向导模式不再受支持。这意味着您不能再使用交互模式来设置 CMake 的缓存值。

相反，您应该使用 "-D" 选项在命令行上设置缓存值。例如，如果您想将名为 "MY_VARIABLE" 的缓存变量的值设置为 "my_value"，则可以通过运行以下命令来实现：

```
cmake -DMY_VARIABLE=my_value path/to/source
```

或者，您可以使用 cmake-gui 或 ccmake 工具使用交互式对话框设置缓存值。cmake-gui 是一个图形用户界面工具，可以让您配置 CMake 项目。另一方面，ccmake 是一个命令行工具，提供交互式文本界面，用于配置 CMake 项目。

要使用 cmake-gui，请在终端中运行命令 "cmake-gui"，它将启动图形界面。对于 ccmake，您可以在终端中运行命令 "ccmake path/to/source"，它将启动基于文本的界面。

```
cmake -G "MinGW Makefiles" . -DUSE_MYMATH=ON      
-- Configuring done (0.1s)
-- Generating done (0.0s)
-- Build files have been written to: E:/github/coding/build_tools/CMake/example/demo04
PS E:\github\coding\build_tools\CMake\example\demo04> mingw32-make                                      
[ 50%] Built target MathFunctions
[ 75%] Building C object CMakeFiles/Demo.dir/main.c.obj
[100%] Linking C executable Demo.exe
[100%] Built target Demo


```

.config

```
#define USE_MYMATH
```

```
PS E:\github\coding\build_tools\CMake\example\demo04> .\Demo.exe 3 4
Now we use our own Math library. 
3 ^ 4 is 81
PS E:\github\coding\build_tools\CMake\example\demo04>
```

