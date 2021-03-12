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
public class Horarios {
        String Id_horario,Id_empleado;
        
    public Horarios(String Id_horario, String Id_empleado) {
        this.Id_horario = Id_horario;
        this.Id_empleado = Id_empleado;
    }

    public String getId_horario() {
        return Id_horario;
    }

    public void setId_horario(String Id_horario) {
        this.Id_horario = Id_horario;
    }

    public String getId_empleado() {
        return Id_empleado;
    }

    public void setId_empleado(String Id_empleado) {
        this.Id_empleado = Id_empleado;
    }
    
    
}
