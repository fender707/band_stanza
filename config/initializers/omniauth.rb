OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['619301838148308'], ENV['3eb404fa201cae110d5b36d2bf2f0904']
end
