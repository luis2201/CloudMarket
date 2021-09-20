package Controller;

import Config.Conexion;
import Entity.Usuarios;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsuarioController {

 int idusuario;
 Conexion cn = new Conexion();
 JdbcTemplate jdbcTemplate = new JdbcTemplate(cn.Conectar());
 ModelAndView view = new ModelAndView();
 List resp;

 @RequestMapping("usuarios.htm")
 public ModelAndView Listar() {
  String sql = "call sp_usuarios_todos()";
  resp = this.jdbcTemplate.queryForList(sql);
  view.addObject("lista", resp);
  view.setViewName("usuario/usuarios");

  return view;
 }

 @RequestMapping(value = "usuariosAdd.htm", method = RequestMethod.GET)
 public ModelAndView Agregar() {
  view.addObject(new Usuarios());
  view.setViewName("usuario/usuariosAdd");

  return view;
 }

 @RequestMapping(value = "usuariosAdd.htm", method = RequestMethod.POST)
 public ModelAndView Agregar(Usuarios u) {
  String sql = "INSERT INTO usuarios(nombres, usuario, contrasena, idrol) VALUES(?,?,?,?)";
  this.jdbcTemplate.update(sql, u.getNombres(), u.getUsuario(), u.getUsuario(), u.getIdrol());

  return new ModelAndView("redirect:/usuarios.htm");
 }

 @RequestMapping(value = "usuariosEdit.htm", method = RequestMethod.GET)
 public ModelAndView Editar(HttpServletRequest request) {
  idusuario = Integer.parseInt(request.getParameter("idusuario"));
  String sql = "SELECT * FROM usuarios WHERE idusuario = ?";
  resp = this.jdbcTemplate.queryForList(sql, idusuario);
  view.addObject("lista", resp);
  view.setViewName("usuario/usuariosEdit");

  return view;
 }

 @RequestMapping(value = "usuariosEdit.htm", method = RequestMethod.POST)
 public ModelAndView Editar(Usuarios u) {
  String sql = "UPDATE usuarios SET nombres = ?, usuario = ?, contrasena = ?, idrol = ? WHERE idusuario = ?";
  this.jdbcTemplate.update(sql, u.getNombres(), u.getUsuario(), u.getUsuario(), u.getIdrol(), idusuario);

  return new ModelAndView("redirect:/usuarios.htm");
 }

 @RequestMapping("usuariosDelete.htm")
 public ModelAndView Eliminar(HttpServletRequest request) {
  idusuario = Integer.parseInt(request.getParameter("idusuario"));
  String sql = "DELETE FROM usuarios WHERE idusuario = ?";
  this.jdbcTemplate.update(sql, idusuario);
  
  return new ModelAndView("redirect:/usuarios.htm");
 }
 
 @ModelAttribute("listaRoles")
 public Map<String, String> ListaRoles(){
  Map<String, String> roles = new LinkedHashMap<>();
  
  
  return roles;
 }

}
