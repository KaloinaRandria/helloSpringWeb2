package mg.working.controller;

import mg.working.model.Employe;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class EmpController {
    @GetMapping("/listeEmp")
    public ModelAndView getEmpList() {
        ModelAndView modelAndView = new ModelAndView("list");
        List<Employe> employes = (new Employe()).getEmployesList();
        modelAndView.addObject("listeEmp",employes);
        return modelAndView;
    }
}
