class HomeController < ApplicationController

  def index
    @projects = Project.all
    @tasks = Task.all
    #Teams? 
  end

end
