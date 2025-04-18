class EmailSenderJob < ApplicationJob
  queue_as :default

  def perform(email, message)
    #Mock de mensagem inicial
    puts "Enviando mensagem para #{email}: #{message}"
  end
end
