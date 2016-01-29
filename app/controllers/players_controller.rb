class PlayersController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    # @players = Player.all
    @players = Player.where(position: ['FC', 'C']).search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 10, :page => params[:page])
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @players = Player.all
    @player_touch_total = @player.points_per_elbow_touch + @player.points_per_paint_touch + @player.points_per_post_touch
  end


  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:id, :name, :team, :games_played, :wins, :losses, :minutes, :points, :touches, :time_of_possession, :seconds_per_touch, :dribbles_per_touch, :points_per_touch, :position, :frontcourt_touches, :elbow_touches, :post_touches, :paint_touches, :points_per_elbow_touch, :points_per_post_touch, :points_per_paint_touch, :points_per_fc_touch)
    end

    def sort_column
      Player.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
