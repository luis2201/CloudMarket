package Controllers;

import Config.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Luis
 */
@Controller
public class UsuarioController {
 Conexion cn = new Conexion();
 JdbcTemplate jdbcTemplate = new JdbcTemplate(cn.Conectar());
 ModelAndView view = new ModelAndView();
 
 @RequestMapping("usuarios.htm")
 public ModelAndView Listar(){
  String sql = "call sp_usuarios_todos()";
  List resp = this.jdbcTemplate.queryForList(sql);
  view.addObject("lista", resp);
  view.setViewName("usuarios");
  
  return view;
 }
 
}
