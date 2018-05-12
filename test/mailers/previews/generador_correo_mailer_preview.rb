# Preview all emails at http://localhost:3000/rails/mailers/generador_correo_mailer
class GeneradorCorreoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/generador_correo_mailer/confirmarCotizCloMul
  def confirmarCotizCloMul
    GeneradorCorreoMailer.confirmarCotizCloMul
  end

  # Preview this email at http://localhost:3000/rails/mailers/generador_correo_mailer/confirmarCotizEscCam
  def confirmarCotizEscCam
    GeneradorCorreoMailer.confirmarCotizEscCam
  end

  # Preview this email at http://localhost:3000/rails/mailers/generador_correo_mailer/confirmarCotizMesCam
  def confirmarCotizMesCam
    GeneradorCorreoMailer.confirmarCotizMesCam
  end

  # Preview this email at http://localhost:3000/rails/mailers/generador_correo_mailer/confirmarCotizMesExp
  def confirmarCotizMesExp
    GeneradorCorreoMailer.confirmarCotizMesExp
  end

end
