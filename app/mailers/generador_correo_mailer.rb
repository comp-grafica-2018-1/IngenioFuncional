class GeneradorCorreoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.generador_correo_mailer.confirmarCotizCloMul.subject
  #
  def confirmarCotizCloMul(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: 'Confirmación de Cotización'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.generador_correo_mailer.confirmarCotizEscCam.subject
  #
  def confirmarCotizEscCam(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: 'Confirmación de Cotización'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.generador_correo_mailer.confirmarCotizMesCam.subject
  #
  def confirmarCotizMesCam(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: 'Confirmación de Cotización'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.generador_correo_mailer.confirmarCotizMesExp.subject
  #
  def confirmarCotizMesExp(cotizacion)
    @cotizacion = cotizacion
    mail to: @cotizacion.correo, subject: 'Confirmación de Cotización'
  end
end
