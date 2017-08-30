class UserNotifierMailer < ApplicationMailer
    default :from => 'backinblack83@gmail.com'
    
    
    
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(correo)
    
    #delivery_options = { user_name: "backinblack83@gmail.com", password: "slash123", address: "smtp.gmail.com" }
    mail(to: correo,
         subject: "Recuperacion de contrasenia"
         #, delivery_method_options: delivery_options
         )
    
    
  end
end
