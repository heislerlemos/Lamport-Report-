class ExampleMailer < ApplicationMailer

default from: "heisler.lemos@ita.co.ao"

def sample_mail(user)
@user = user
mail(to: @user.email, subject: "Sample email")
end
end
