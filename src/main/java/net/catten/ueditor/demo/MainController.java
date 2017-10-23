package net.catten.ueditor.demo;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Controller
@RequestMapping
public class MainController {

    @GetMapping
    public String index() {
        return "index";
    }

    @PostMapping("/article/post")
    public String postArticle(){
        String filename = "";

        return "redirect:/html/" + filename;
    }

    /*
    *
    * Plain old file upload
    *
    *
    * */

    @GetMapping("/file/upload")
    public String uploadForm(HttpServletRequest request, Model model) {
        File file = new File(request.getSession().getServletContext().getRealPath("/uploaded-files"));
        if (file.exists() && file.isDirectory()) model.addAttribute("files", file.listFiles());
        return "upload-form";
    }

    @PostMapping("/file/upload")
    public String uploadFileApi(@RequestParam MultipartFile[] files, HttpServletRequest request) throws IOException {
        for (MultipartFile file : files) {
            if (!file.isEmpty()) {
                String dirPath = request.getSession().getServletContext().getRealPath("/uploaded-files/" + newFilename(
                        UUID.randomUUID().toString(),
                        extNameOf(file.getOriginalFilename())
                ));
                FileUtils.copyInputStreamToFile(file.getInputStream(), new File(dirPath));
            }
        }
        return "redirect:/file/upload";
    }

    private String newFilename(String... identifies){
        StringBuilder builder = new StringBuilder(String.valueOf(TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis())));
        for (String s : identifies) builder.append(s);
        return builder.toString();
    }

    private String extNameOf(String filename){
        return filename.substring(filename.lastIndexOf("."));
    }
}
