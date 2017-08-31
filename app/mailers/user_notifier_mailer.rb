class UserNotifierMailer < ApplicationMailer
    default :from => 'backinblack_83@hotmail.com'
    
    
    
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(correo, password)
    @pass=password
    #delivery_options = { user_name: "backinblack83@gmail.com", password: "slash123", address: "smtp.gmail.com" }
    mail(to: correo,
         subject: "Solicitud de contraseña"
         #, delivery_method_options: delivery_options
         )
    
    
  end
end
