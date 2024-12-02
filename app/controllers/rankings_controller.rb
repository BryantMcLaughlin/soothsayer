class RankingsController < ApplicationController
  before_action :set_ranking, only: %i[show edit update destroy]

  # GET /rankings or /rankings.json
  def index
    @rankings = Ranking.all
  end

  # GET /rankings/1 or /rankings/1.json
  def show
  end

  # GET /rankings/new
  def new
    @ranking = Ranking.new
  end

  # GET /rankings/1/edit
  def edit
  end

  # POST /rankings or /rankings.json
  def create
    @ranking = Ranking.new(ranking_params)

    if @ranking.save
      Rails.logger.debug "Ranking saved: #{@ranking.inspect}"
      redirect_to results_rankings_path(ranking_id: @ranking.id), notice: "Ranking was successfully created."
    else
      Rails.logger.debug "Ranking not saved: #{@ranking.errors.full_messages}"
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ranking.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /rankings/results
  def results
    @ranking = Ranking.find_by(id: params[:ranking_id])
  
    if @ranking
      # Fetch scoring parameters from the saved ranking
      year = @ranking.year.to_i
      pppassyd = @ranking.pppassyd.to_f
      pppasstd = @ranking.pppasstd.to_f
      ppr = @ranking.ppr.to_f
      pprecyd = @ranking.pprecyd.to_f
      pprectd = @ranking.pprectd.to_f
      pprushyd = @ranking.pprushyd.to_f
      pprushtd = @ranking.pprushtd.to_f
  
      # Fetch and calculate player rankings for the specified year
      @player_rankings = PlayerStatistic.where(year: year).map do |player|
        total_points = (
          player.pass_yards * pppassyd +
          player.pass_tds * pppasstd +
          player.receptions * ppr +
          player.rec_yards * pprecyd +
          player.rec_tds * pprectd +
          player.rush_yards * pprushyd +
          player.rush_tds * pprushtd
        )
        {
          name: player.player_name,
          position: player.position,
          total_points: total_points
        }
      end
  
      # Sort players by total points in descending order
      @player_rankings.sort_by! { |player| -player[:total_points] }
    else
      redirect_to rankings_path, alert: "Ranking not found."
    end
  end

  # PATCH/PUT /rankings/1 or /rankings/1.json
  def update
    if @ranking.update(ranking_params)
      respond_to do |format|
        format.html { redirect_to @ranking, notice: "Ranking was successfully updated." }
        format.json { render :show, status: :ok, location: @ranking }
      end
    else
      respond_to do |format|
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ranking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rankings/1 or /rankings/1.json
  def destroy
    @ranking.destroy!

    respond_to do |format|
      format.html { redirect_to rankings_path, status: :see_other, notice: "Ranking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ranking
    @ranking = Ranking.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def ranking_params
    params.require(:ranking).permit(:year, :pppassyd, :pppasstd, :ppr, :pprecyd, :pprectd, :pprushyd, :pprushtd)
  end
end
