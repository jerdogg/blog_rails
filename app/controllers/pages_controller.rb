class PagesController < ApplicationController
  
  def index
    # have access to this inside my view
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    # creates it just in memory
    @page = Page.new
  end

  def create
    @page = Page.new( page_params )

    if @page.save
      redirect_to page_path(@page)
    else
      render :new
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    # instance variable
    @page = Page.find(params[:id])

    if @page.update(page_params)
      redirect_to page_path(@page)
    else
      render :edit
    end
  end

  def destroy
    Page.find(params[:id]).destroy
    redirect_to pages_path
  end


  private

  # paramaters in the URL
  def page_params
    params.require(:page).permit(:author, :title)
  end

end