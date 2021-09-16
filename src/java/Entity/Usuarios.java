package Entity;

/**
 * @author Luis
 */
public class Usuarios {
 int idusuario;
 String nombres;
 String usuario;
 String contrasena;
 int idrol;
 String foto;
 boolean estado;

 public Usuarios() {
 }

 public Usuarios(int idusuario, String nombres, String usuario, String contrasena, int idrol, String foto, boolean estado) {
  this.idusuario = idusuario;
  this.nombres = nombres;
  this.usuario = usuario;
  this.contrasena = contrasena;
  this.idrol = idrol;
  this.foto = foto;
  this.estado = estado;
 }

 public int getIdusuario() {
  return idusuario;
 }

 public String getNombres() {
  return nombres;
 }

 public String getUsuario() {
  return usuario;
 }

 public String getContrasena() {
  return contrasena;
 }

 public int getIdrol() {
  return idrol;
 }

 public String getFoto() {
  return foto;
 }

 public boolean isEstado() {
  return estado;
 }

 public void setIdusuario(int idusuario) {
  this.idusuario = idusuario;
 }

 public void setNombres(String nombres) {
  this.nombres = nombres;
 }

 public void setUsuario(String usuario) {
  this.usuario = usuario;
 }

 public void setContrasena(String contrasena) {
  this.contrasena = contrasena;
 }

 public void setIdrol(int idrol) {
  this.idrol = idrol;
 }

 public void setFoto(String foto) {
  this.foto = foto;
 }

 public void setEstado(boolean estado) {
  this.estado = estado;
 }
 
}
