package model;
// Generated 28/05/2024 23:20:30 by Hibernate Tools 4.3.1



/**
 * Estudante generated by hbm2java
 */
public class Estudante  implements java.io.Serializable {


     private Integer nrmatricula;
     private Curso curso;
     private Turma turma;
     private String nome;
     private String apelido;
     private String endereco;
     private String contacto;
     private Realiza realiza;

    public Estudante() {
    }

	
    public Estudante(Curso curso, Turma turma, String nome, String apelido, String endereco, String contacto) {
        this.curso = curso;
        this.turma = turma;
        this.nome = nome;
        this.apelido = apelido;
        this.endereco = endereco;
        this.contacto = contacto;
    }
    public Estudante(Curso curso, Turma turma, String nome, String apelido, String endereco, String contacto, Realiza realiza) {
       this.curso = curso;
       this.turma = turma;
       this.nome = nome;
       this.apelido = apelido;
       this.endereco = endereco;
       this.contacto = contacto;
       this.realiza = realiza;
    }
   
    public Integer getNrmatricula() {
        return this.nrmatricula;
    }
    
    public void setNrmatricula(Integer nrmatricula) {
        this.nrmatricula = nrmatricula;
    }
    public Curso getCurso() {
        return this.curso;
    }
    
    public void setCurso(Curso curso) {
        this.curso = curso;
    }
    public Turma getTurma() {
        return this.turma;
    }
    
    public void setTurma(Turma turma) {
        this.turma = turma;
    }
    public String getNome() {
        return this.nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getApelido() {
        return this.apelido;
    }
    
    public void setApelido(String apelido) {
        this.apelido = apelido;
    }
    public String getEndereco() {
        return this.endereco;
    }
    
    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    public String getContacto() {
        return this.contacto;
    }
    
    public void setContacto(String contacto) {
        this.contacto = contacto;
    }
    public Realiza getRealiza() {
        return this.realiza;
    }
    
    public void setRealiza(Realiza realiza) {
        this.realiza = realiza;
    }




}


