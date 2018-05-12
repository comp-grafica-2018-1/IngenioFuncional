require 'test_helper'

class GeneradorCorreoMailerTest < ActionMailer::TestCase
  test "confirmarCotizCloMul" do
    mail = GeneradorCorreoMailer.confirmarCotizCloMul
    assert_equal "Confirmarcotizclomul", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmarCotizEscCam" do
    mail = GeneradorCorreoMailer.confirmarCotizEscCam
    assert_equal "Confirmarcotizesccam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmarCotizMesCam" do
    mail = GeneradorCorreoMailer.confirmarCotizMesCam
    assert_equal "Confirmarcotizmescam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmarCotizMesExp" do
    mail = GeneradorCorreoMailer.confirmarCotizMesExp
    assert_equal "Confirmarcotizmesexp", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
