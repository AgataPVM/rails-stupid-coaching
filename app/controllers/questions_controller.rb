class QuestionsController < ApplicationController
  def ask; end

  def answer
    raw = params[:question].to_s
    @question = raw.strip          # mostra na tela exatamente o que o usuário digitou
    q = @question.downcase         # versão normalizada para comparar

    @answer =
      if q == "i am going to work"
        "Great!"
      elsif q.end_with?("?")       # << Ruby: end_with? (sem 's')
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
