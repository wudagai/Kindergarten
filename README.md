# kindergarte
基于ssm的育儿园信息管理系统

开发环境：

（1）操作系统：Windows 10

（2）电脑硬件要求：4G内存或者更高

（3）数据库：mariadb-10.3.9-winx64

（4）Web服务器：apache-tomcat-8.5.31

（5）浏览器：Google Chrome

系统总体框架图：
![](https://github.com/wudagai/kindergarten/blob/master/gitimg/1.png)


E-R图：

![](https://github.com/wudagai/kindergarten/blob/master/gitimg/E-R%E5%9B%BE.png)

关系模式:

根据E-R图向关系模式转换的原则，一对多，一对一，多对多，得到的具体结果如下：

（1）用户表（用户编号，用户名，真实姓名，密码，性别，电话，住址，座右铭，状态）。

（2）幼儿信息表（幼儿编号，姓名，性别，出生日期，入园日期，相片，幼儿详细地址，用户编号，班级编号,状态）。

（3）幼儿体检信息表（体检编号，体检日期，体重，身高，听力，左/右视力，牙数，传染病，体检备注，幼儿编号）。

（4）幼儿用药信息表（用药编号，发病症状，发病时间，服用药物,开始服药时间，服用次数/天，服用方法，服用天数，有无不良反    应，用药备注，幼儿编号）。

（5）幼儿请假信息表（请假编号，请假类型，开始日期，结束日期，请假原因，幼儿编号,状态）。

（6）班主任表（班主任编号，登录名，密码，姓名，性别，身高，电话，毕业院校，照片）。

（7）班级类别表（班级类别编号，班级类别名称）。

（8）班级表（班级编号，班级名称，班主任编号，班级类别编号）。

（9）管理员（管理员编号，管理员账号，密码）。


数据流图：

![](https://github.com/wudagai/kindergarten/blob/master/gitimg/%E6%95%B0%E6%8D%AE%E6%B5%81%E5%9B%BE.png)

用例图：

![](https://github.com/wudagai/kindergarten/blob/master/gitimg/%E7%94%A8%E4%BE%8B%E5%9B%BE.png)
