if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => "app22167973@heroku.com",
    :password       => "3qaqyays",
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
  }
end