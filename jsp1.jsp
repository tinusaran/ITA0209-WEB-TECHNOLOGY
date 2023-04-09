<%@ page import="java.io.* ,java.util.*" %>
<html>
    <head>
        <title>Auto Refresh</title>
    </head>
    <body>
        <center>
            <form>
                <fieldset style="width:20%; background-color:#e6ffe6;">
                    <legend>Auto refresh</legend>
                    <h2>Auto Refresh Example</h2>
                    <% response.setIntHeader("Refresh", 1);
                       Calendar calendar = new GregorianCalendar();
                       String am_pm;
                       int hour = calendar.get(calendar.HOUR);
                       int minute = calendar.get(calendar.MINUTE);
                       int second = calendar.get(calendar.SECOND);
                       if(calendar.get(calendar.AM_PM) == 0)
                          am_pm = "AM";
                       else
                          am_pm = "PM";
                       String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
                       out.println("Crrent Time: " + CT + "\n");
                    %>
                </fieldset>
            </form>
        </center>
    </body>
</html>