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
public class EntradasYSalidas {
    String Id_empleado,Horas_trabajadas_por_dia,Hora_entrada,Hora_inicio_comida,Horas_termino_comida,Hora_salida;

    public EntradasYSalidas(String Id_empleado, String Horas_trabajadas_por_dia, String Hora_entrada, String Hora_inicio_comida, String Horas_termino_comida, String Hora_salida) {
        this.Id_empleado = Id_empleado;
        this.Horas_trabajadas_por_dia = Horas_trabajadas_por_dia;
        this.Hora_entrada = Hora_entrada;
        this.Hora_inicio_comida = Hora_inicio_comida;
        this.Horas_termino_comida = Horas_termino_comida;
        this.Hora_salida = Hora_salida;
    }

    public String getId_empleado() {
        return Id_empleado;
    }

    public void setId_empleado(String Id_empleado) {
        this.Id_empleado = Id_empleado;
    }

    public String getHoras_trabajadas_por_dia() {
        return Horas_trabajadas_por_dia;
    }

    public void setHoras_trabajadas_por_dia(String Horas_trabajadas_por_dia) {
        this.Horas_trabajadas_por_dia = Horas_trabajadas_por_dia;
    }

    public String getHora_entrada() {
        return Hora_entrada;
    }

    public void setHora_entrada(String Hora_entrada) {
        this.Hora_entrada = Hora_entrada;
    }

    public String getHora_inicio_comida() {
        return Hora_inicio_comida;
    }

    public void setHora_inicio_comida(String Hora_inicio_comida) {
        this.Hora_inicio_comida = Hora_inicio_comida;
    }

    public String getHoras_termino_comida() {
        return Horas_termino_comida;
    }

    public void setHoras_termino_comida(String Horas_termino_comida) {
        this.Horas_termino_comida = Horas_termino_comida;
    }

    public String getHora_salida() {
        return Hora_salida;
    }

    public void setHora_salida(String Hora_salida) {
        this.Hora_salida = Hora_salida;
    }
    
}
