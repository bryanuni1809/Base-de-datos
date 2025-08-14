/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject16;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author BRYAN
 */
public class Mavenproject16 {

    public static void main(String[] args) {
        Scanner scanner=new Scanner(System.in);
        String[] nombres=new String[5];
        int[] edad=new int[5];
        for (int i=0;i<5;i++) {
            System.out.print("Ingrese el nombre de la persona "+(i+1)+": ");
            nombres[i]=scanner.nextLine();
            System.out.print("Ingrese la edad de "+nombres[i]+": ");
            edad[i]=scanner.nextInt();
            scanner.nextLine();
        }
        Arrays.sort(nombres);
        System.out.println("\n=== REPORTE ORDENADO POR EDAD ===");
        System.out.printf("%-5s | %-15s\n", "Edad", "Nombre");
        System.out.println("------+-------------------");

        for (String persona : nombres) {
            String[] partes = persona.split(" - ");
            System.out.printf("%-5s | %-15s\n", partes[0], partes[1]);
        }
    }   
}
