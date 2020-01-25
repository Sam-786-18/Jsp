
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>
    </head>
    <body>
    <center>
        <h1>File Upload Web App Using JSP/SERVLET</h1>
        <br><br>
        <form action="UploadProcess" method="POST" enctype="multipart/form-data">
            <input type="file" name="file"/>
            <br><br>
            <input type="submit" value="UPLOAD"/>
        </form>
    </center>
</body>
</html>