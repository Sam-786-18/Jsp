package MainPackage;

import java.io.File;
import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadProcess extends HttpServlet {
    
    //Keep in mind that this file path is for Linux OS
    private String filePath = "D:/BootApp/photo";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //..
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        if (ServletFileUpload.isMultipartContent(request)) {
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem fileItem : multiparts) {
                    if (!fileItem.isFormField()) {
                        String fileName = new File(fileItem.getName()).getName();
                        fileItem.write(new File(filePath + File.separator + fileName));
                    }
                }
                request.setAttribute("message", "File Uploaded Successfully !");
            }
            catch (Exception x) {
                request.setAttribute("message", "File Upload Failed due to " + x);
            }
        }
        else {
            request.setAttribute("message", "No File found !");
        }
        request.getRequestDispatcher("uploadResult.jsp").forward(request, response);
    }

}