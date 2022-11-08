class JobsController < ApplicationController

  def index
    @jobs = JobPost.all
    @categories = {

    }
    @categories = ['<i class="fa-solid fa-computer"></i>', '<i class="fa-solid fa-person-digging"></i>',
                    '<i class="fa-solid fa-deer"></i>', '<i class="fa-regular fa-circle-radiation"></i>',
                    '<i class="fa-solid fa-user-ninja"></i>', '<i class="fa-solid fa-rocket"></i>',
                    '<i class="fa-solid fa-dog"></i>', '<i class="fa-solid fa-skull-crossbones"></i>',
                    '<i class="fa-solid fa-cow"></i>', '<i class="fa-solid fa-bird"></i>']
  end

  def show
    @job = JobPost.find(params[:id])
  end
end
