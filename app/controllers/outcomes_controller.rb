class OutcomesController < ApplicationController
    def create
        @decision = Decision.find(params[:decision_id])
        @outcome = @decision.outcomes.create(params[:outcome].permit(:actual, :strength, :weakness))
          redirect_to decision_path(@decision)
    end
end
