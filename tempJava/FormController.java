package mg.working.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mg.working.model.Employe;

@Controller
public class FormController {
    @PostMapping("/form")
    public ModelAndView formulaire(@RequestParam("nom") String nom ,@RequestParam("prenom") String prenom) {
        ModelAndView modelAndView = new ModelAndView("newEmp");
        Employe employe = new Employe(nom, prenom);
        modelAndView.addObject("newEmp",employe);
        return modelAndView;
    }

    @GetMapping("/dispatche_form")
    public ModelAndView dispatcheFormulaire() {
        ModelAndView modelAndView = new ModelAndView("formulaire");
        return modelAndView;
    }
}
