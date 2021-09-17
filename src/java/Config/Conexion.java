package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/** 
 * @author Luis
 */
public class Conexion {
 
 public DriverManagerDataSource Conectar(){
  DriverManagerDataSource cn = new DriverManagerDataSource();
  cn.setDriverClassName("com.mysql.jdbc.Driver");
  cn.setUrl("jdbc:mysql://localhost:3306/cloudmarket");
  cn.setUsername("root");
  cn.setPassword("");
  
  return cn;
 }
 
}
