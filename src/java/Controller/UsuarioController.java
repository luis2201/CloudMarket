package Controller;

import Config.Conexion;
import Entity.Usuarios;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
 public ModelAndView Listar() {
  String sql = "call sp_usuarios_todos()";
  List resp = this.jdbcTemplate.queryForList(sql);
  view.addObject("lista", resp);
  view.setViewName("usuarios");

  return view;
 }

 @RequestMapping(value = "usuariosAdd.htm", method = RequestMethod.GET)
 public ModelAndView Agregar() {
  view.addObject(new Usuarios());
  view.setViewName("usuariosAdd");

  return view;
 }

 @RequestMapping(value = "usuariosAdd.htm", method = RequestMethod.POST)
 public ModelAndView Agregar(Usuarios u) {
  String sql = "INSERT INTO usuarios(nombres, usuario, contrasena, idrol) VALUES(?,?,?,?)";
  //this.jdbcTemplate.update(sql, u.getNombres(), u.getUsuario(), u.getUsuario(), u.getIdrol());

  return new ModelAndView("redirect:/usuarios.htm");
 }

}
