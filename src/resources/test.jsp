<%@ page import="java.lang.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.fenixsoft.classloading.execute.*" %>
<%
        InputStream is = new FileInputStream("输入测试的test.class文件所在的路径");
        byte[] b = new byte[is.available()];
        is.read(b);
        is.close();
        String text = JavaClassExecuter.execute(b);
        out.println(text);
%>


