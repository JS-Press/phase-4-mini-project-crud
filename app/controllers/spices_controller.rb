class SpicesController < ApplicationController 

def index  
    render json: Spice.all
end

def create 
    it = Spice.create(params.permit(:title, :description, :notes, :rating, :image))
    render json: it, status: :created
end

def update 
    it = the_thing
    it.update(params.permit(:rating))
    render json: it
end

def destroy
    it = the_thing
    it.destroy
end

private

def strong_params 

end

def the_thing 
Spice.find(params[:id])
end

end
