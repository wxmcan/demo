Taobao.configure do |configure|
  # buychina
  configure.app_key = "12642556"
  configure.app_secret = "e5772ab7a5ebbacec747d566ca1ea5ed"
  configure.endpoint = "http://gw.api.taobao.com/router/rest"

  # bob
  #configure.app_key = "12639323"
  #configure.app_secret = "618dec8d1813546a0d3183223e49f0de"
  #configure.endpoint = "http://gw.api.taobao.com/router/rest"


  #configure.app_key = "12621743"
  #configure.app_secret = "7880e37e6c6088e81fe72bc75d423578"
  #configure.endpoint = "http://gw.api.taobao.com/router/rest"


  #configure.app_key = "12193713"
  #configure.app_secret = "92b1e540ea1cb7370748d6d2aca7c9ef"
  #configure.endpoint = "http://gw.api.taobao.com/router/rest"

  #configure.app_key = "12642556"
  #configure.app_secret = "sandbox7a5ebbacec747d566ca1ea5ed"
#  configure.endpoint = "http://gw.api.tbsandbox.com/router/rest "
  if ::Rails.env.production?
  else
  end
end
