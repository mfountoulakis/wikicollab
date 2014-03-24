if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '25',
    :authentication => :plain,
    :user_name      => "app23188528@heroku.com",
    :password       => "rw0eaeki",
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
  }
end

