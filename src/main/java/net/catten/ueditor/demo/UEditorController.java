package net.catten.ueditor.demo;

import com.baidu.ueditor.ActionEnter;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/ueditor")
public class UEditorController {

    @RequestMapping(method = {RequestMethod.GET, RequestMethod.POST})
    public ResponseEntity dispatcher(HttpServletRequest request, HttpServletResponse response){
        response.setContentType("text/html");
        String root = request.getSession().getServletContext().getRealPath("/");

        try{
            return ResponseEntity.ok(new ActionEnter(request,root).exec());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("UEditor raise an error.\n Who care, none of my business.");
        }
    }

}
