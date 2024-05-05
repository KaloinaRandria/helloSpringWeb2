package mg.working.model;

import java.util.ArrayList;
import java.util.List;

public class Employe {
    String nom;
    String prenom;

    public Employe(String nom, String prenom) {
        this.nom = nom;
        this.prenom = prenom;
    }
    public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    public String getPrenom() {
        return prenom;
    }
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public List<Employe> getEmployesList() {
        List<Employe> employes = new ArrayList();
        employes.add(new Employe("Kaloina", "Randria"));
        employes.add(new Employe("Valisoa", "Randria"));
        employes.add(new Employe("Hamael", "Rakoto"));
        employes.add(new Employe("Tahina", "Rakoto"));
        return employes;
    }
    public Employe() {}
}

