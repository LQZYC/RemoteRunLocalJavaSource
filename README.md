# 深入理解JAVA虚拟机--Idea远程执行本地Java代码


今天在看深入理解JAVA虚拟机的9.3节，作者实现了一个远程执行功能。这个功能可以在远程服务器中临时执行一段程序代码，而去不依赖jdk版本，不改变缘由服务端程序的部署，不依赖任何第三方库，不入侵原有的程序，不会对原有程序运行带来任何影响。程序的原理可以去看书，本文主要结合IDEA把使用过程记录一下。

##工程配置
新建一个工程，把书中的5个类倒入，然后写一个测试类（test），这个类的代码就是要让远程服务器自动执行的。test.jsp是用来触发远程服务器执行本地的java代码。目录结构如下图所示：
![1][1]
##上传文件配置
书中作者使用的是eclipse并自己实现了一个插件，可以把本地文件上传到服务器中去，这样如果有灵感时，直接本地写一段测试代码，然后通过插件一键上传到服务器即可。使用idea不用这样麻烦，idea有自带的上传文件到服务器的插件，插件名称为Remote Host,Remote Host配置如下，首先配置远程服务器的文件夹，我使用的tomcat，我就直接配置到了tomcat目录下的webapp中

![2][2]

然后配置mapping，这个就是配置一个对应关系，（本地目录-->服务器目录），

![3][3]

这样配置结束后，在本地工程目录上点击“upload to ..“，即可把本地文件上传到服务器中去
![4][4]
##运行结果
我这边是把编译好的class文件上传到了服务器工程的WEB-INF/classes中，然后把test.jsp上传到了服务器工程的根目录下，这样直接运行ip:port/工程名/test.jsp即可输出我们测试代码的结果，如下图所示
![5][5]
##联系作者
- [CSDN][7]


  [1]: http://7xs1iq.com1.z0.glb.clouddn.com/idea%E8%BF%9C%E7%A8%8B%E6%89%A7%E8%A1%8C%E6%9C%AC%E5%9C%B0java%E4%BB%A3%E7%A0%811.png
  [2]: http://7xs1iq.com1.z0.glb.clouddn.com/Idea%E8%BF%9C%E7%A8%8B%E6%89%A7%E8%A1%8C%E6%9C%AC%E5%9C%B0Java%E4%BB%A3%E7%A0%812.png
  [3]: http://7xs1iq.com1.z0.glb.clouddn.com/Idea%E8%BF%9C%E7%A8%8B%E6%89%A7%E8%A1%8C%E6%9C%AC%E5%9C%B0Java%E4%BB%A3%E7%A0%813.png
  [4]: http://7xs1iq.com1.z0.glb.clouddn.com/Idea%E8%BF%9C%E7%A8%8B%E6%89%A7%E8%A1%8C%E6%9C%AC%E5%9C%B0Java%E4%BB%A3%E7%A0%814.png
  [5]: http://7xs1iq.com1.z0.glb.clouddn.com/Idea%E8%BF%9C%E7%A8%8B%E6%89%A7%E8%A1%8C%E6%9C%AC%E5%9C%B0Java%E4%BB%A3%E7%A0%815.png
  [7]: http://blog.csdn.net/lqleo323
