package Controller;

import Entity.Usuarios;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class UsuarioValidate implements Validator {

 @Override
 public boolean supports(Class<?> type) {
  return Usuarios.class.isAssignableFrom(type);
 }

 @Override
 public void validate(Object o, Errors errors) {
  Usuarios u = (Usuarios) o;
  ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombres", "required.nombres", "Ingrese nombres del usuario");  
 }
 
}
