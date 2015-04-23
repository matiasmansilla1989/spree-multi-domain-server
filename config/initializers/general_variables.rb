if Rails.env.production?
  ENV['PROTOCOL'] = 'https'
  ENV['SERVER']   = '.webappbetaone.socialsquare.ae'
else
  ENV['PROTOCOL'] = 'http'
  ENV['SERVER']   = '.socialsquare:3001'
end
