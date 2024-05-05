package mg.working.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HelloController {
    @GetMapping("/hellocontroller")
    public ModelAndView helloMsg() {
        ModelAndView modelAndView = new ModelAndView("hello");
        modelAndView.addObject("test","Hello Controller Message");
        return modelAndView;
    }
}
