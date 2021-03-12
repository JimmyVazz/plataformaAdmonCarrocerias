/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package carroceria.reclutamiento;

/**
 *
 * @author cesarchv
 */
public class Empleado {
    String Numero_empleado,Nombre,NESS,CURP,RFC,Direccion;

    public Empleado(String Numero_empleado, String Nombre, String NESS, String CURP, String RFC, String Direccion) {
        this.Numero_empleado = Numero_empleado;
        this.Nombre = Nombre;
        this.NESS = NESS;
        this.CURP = CURP;
        this.RFC = RFC;
        this.Direccion = Direccion;
    }

    public String getNumero_empleado() {
        return Numero_empleado;
    }

    public void setNumero_empleado(String Numero_empleado) {
        this.Numero_empleado = Numero_empleado;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getNESS() {
        return NESS;
    }

    public void setNESS(String NESS) {
        this.NESS = NESS;
    }

    public String getCURP() {
        return CURP;
    }

    public void setCURP(String CURP) {
        this.CURP = CURP;
    }

    public String getRFC() {
        return RFC;
    }

    public void setRFC(String RFC) {
        this.RFC = RFC;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }
    
    
}
