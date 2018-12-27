
require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV[ACCESS_TOKEN])

Bot.on :message do |message|
  if message.text.include? "Bonjour"
      message.reply(text: "Bonjour et bienvenu sur mon chatbot1 !")
  elsif message.text.include? "idée"
      message.reply(text: "Gratin dauphinois : un peu de crème, un peu de lait, et quelques pommes de terre")
      message.reply(text: "Rien de plus simple pour étonner tes amis !")
  elsif message.text.include? "Merci"
      message.reply(text: "Avec plaisir ! N'hésite pas à venir me demander d'autres idées :)")
  else 
      message.reply(text: "Je ne comprends pas, par contre tu peux me demander de te donner une idée")
  end
end