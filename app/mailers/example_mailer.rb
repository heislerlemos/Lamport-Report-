class ExampleMailer < ApplicationMailer


  def sample_email(user)
    @user = user
    mg_client = Mailgun::Client.new ENV['key-a2e4870338e9fe4da1f5fdc81c4c94bc']
    message_params = {:from    => ENV['heisler.lemos@gmail.com'],
                      :to      => @user.email,
                      :subject => 'Sample Mail using Mailgun API',
                      :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
    mg_client.send_message ENV['sandbox6d0e985d20d041e7b6d011f40e173a9c.mailgun.org'], message_params
  end

end