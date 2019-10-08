class WeeklyScoresController < ApplicationController

    before_action :set_score, only: [:destroy]

    def new 
        @weekly_score = WeeklyScore.new
        @players = Player.all
    end 

    def create 
        @weekly_score = WeeklyScore.new(player_params)

        respond_to do |format|
            if @weekly_score.save
                format.html { redirect_to root_path, notice: 'Score was successfully created.' }
                format.json { render :show, status: :created, location: @weekly_score }
            else
                format.html { render :new }
                format.json { render json: @weekly_score.errors, status: :unprocessable_entity }
            end
        end
    end 

    def destroy
        @weekly_score.destroy
        respond_to do |format|
            format.html { redirect_to players_url, notice: 'Score was successfully destroyed.' }
            format.json { head :no_content }
        end
    end



    private

        def set_score
            @weekly_score = WeeklyScore.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def player_params
            params.require(:weekly_score).permit(:score, :player_id, :week)
        end

end
