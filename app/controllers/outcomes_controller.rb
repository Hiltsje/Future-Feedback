class OutcomesController < ApplicationController

  def index
# gets all rows from decision table and puts it in @decision variable
    @outcomes = Outcome.all
  end

    def create
        @decision = Decision.find(params[:decision_id])
        @outcome = @decision.outcomes.create(params[:outcome].permit(:actual, :strength, :weakness))
          redirect_to decision_path(@decision)
    end
end
