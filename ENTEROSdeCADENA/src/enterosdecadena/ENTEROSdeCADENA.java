/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterosdecadena;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author SEBAS
 */
public class ENTEROSdeCADENA {
private static String fechaDevolucion;
    /**
     * @param args the command line arguments
     */
    public static  ArrayList<Integer> extraerNumeros(String cadena) {
    // aca los vamos a guardar uwu
    ArrayList<Integer> todosLosNumeros = new ArrayList<Integer>();
    // un encuentrador vrgs :v
    Matcher encuentrador = Pattern.compile("\\d+").matcher(cadena);
    // busca prro >:v
    while (encuentrador.find()) { 
      // me lo guardas porfis?
      todosLosNumeros.add(Integer.parseInt(encuentrador.group()));
    } 
    // sale bai :'v
    return todosLosNumeros;
  }
    
    public static  String calcularFechaDevolucion(String fechaInicial){
     
          //Calculando fecha de devolucion
        int dia, mes, año;
        dia = extraerNumeros(fechaInicial).get(0);
        mes = extraerNumeros(fechaInicial).get(1);
        año = extraerNumeros(fechaInicial).get(2);
            if (mes == 12) {
                 fechaDevolucion = (dia + "/01/"+(año+1));
            }
            else if (mes == 1 && dia == 30) {
                  fechaDevolucion = ("01/03/"+año);
            }
            else if (mes == 1 && dia == 31) {
                  fechaDevolucion = ("02/03/"+año);
            }
            else if (mes%2 == 1) {
                  fechaDevolucion = ("1/"+(mes+2)+"/"+año);
            }
            else{
                fechaDevolucion = (dia + "/"+(mes+1)+"/"+año);
            }
        
        return fechaDevolucion;
     }
    public static void main(String[] args) {
        // TODO code application logic here
       String linea = "11/12/2020";
       int dia = extraerNumeros(linea).get(0);
        System.out.println(dia);
        String fecha = calcularFechaDevolucion(linea);
        System.out.println(fecha);
        
    }
    
}
