/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project;

import java.sql.*;
import java.sql.DriverManager;

/**
 *
 * @author UPJV
 */
public class ConnectionProvider {
      Connection conn=null;
       
    public static java.sql.Connection Conexion(){
       try {
    	 //Chargement du pilote JDBC pour MYSQL puis creation de la connection
    	   //DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    	// ou bien 
          Class.forName("com.mysql.jdbc.Driver");
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/rappel","root","");
	if (conn!=null)
	          System.out.println("Connexion à la base de données a été établie avec succès");
        else 
              	  System.out.println("Problème de connexion à la base");
						
       return conn;
       
       }catch(Exception e) {
           System.out.println("--> SQLException : " + e) ;
           
       return null;
       }
    }
}
