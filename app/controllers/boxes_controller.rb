class BoxesController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]
  before_action :set_box, only: %i[ show edit update destroy ]
  def index
    @boxes = Box.all
  end

  def show
  end

  def new
    @box = Box.new
  end

  def create
    @box = Box.new(box_params)
    if @box.save
      redirect_to @box
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @box.update(box_params)
      redirect_to @box
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @box.destroy
    redirect_to boxes_path
  end

  private
    def set_box
      @box = Box.find(params[:id])
    end

    def box_params
      params.expect(box: [ :label ])
    end
end
