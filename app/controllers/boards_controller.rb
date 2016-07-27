class BoardsController < ApplicationController


  def new
    @board = Board.new
    session[:board] = @board
    session[:grid] = @board.grid
  end

  def show
    #@board = session[:board]
    @grid = session[:grid]
    session[:grid] = @grid
    #redirect_to action: "show"
  end

  def edit
    #@board = @board.update_board(params[:number], "R") if params[:number]
    b = Board.new
    b.grid = session[:grid]
    b.update_board(params[:id].to_i, "B") if params[:id]
    session[:grid] = b.grid
    redirect_to action: :show

  end

  def update
    #redirect_to edit_path(@board)
  end

  def create
    redirect_to edit_board_path(params[:number])
  end

  def destroy
  end
end
