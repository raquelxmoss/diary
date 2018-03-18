class EntriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @entries = current_user.entries
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def edit
    @entry = Entry.find(params[:id])
    render :new, entry: @entry
  end

  def create
    entry = current_user.entries.create(entry_params)
    redirect_to action: :show, id: entry.id
  end

  def update
    entry = Entry.find(params[:id])
    if entry.update(entry_params)
      redirect_to action: :show, id: params[:id]
    else
      flash[:alert] = entry.errors.messages
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    entry = Entry.find(params[:id])
    entry.destroy!
    redirect_to action: :index
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :body)
  end
end
