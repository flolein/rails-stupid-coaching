class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] == " I am going to work"
      @question = "Great!"
    elsif params[:question].include? "?"
      @question = "Silly question, get dressed and go to work!"
    else
      @question = "I don't care, get dressed and go to work!"
    end
  end

end

# def index
#     if params[:food_type].blank?
#       @restaurants = RESTAURANTS
#     else
#       @restaurants = RESTAURANTS.select do |id, restaurant|
#         restaurant[:category] == params[:food_type]
#       end
#     end
#   end

#   def create
#     render plain: "Created a new restaurant #{params[:name]} located in #{params[:address]}"
#   end

#   def show
#     @restaurant = RESTAURANTS[params[:id].to_i]
#   end
# end
