class DecisionsController < ApplicationController
before_action :find_decision, only: [:show, :edit, :update, :destroy]

  def index
# gets all rows from decision table and puts it in @decision variable
    @decisions_review_list = Decision.order('review_date ASC').all
    @decisions = Decision.order('review_date DESC').all
    @decision_new = Decision.new

  end

  def show
# find only the decision entry that has the id defined in params[:id]
  end
# shows the form for creating a entry
  def new
    @decision = Decision.new
  end
# creates the entry
  def create
    @decision = Decision.new(decision_params)
      if @decision.save
        redirect_to @decision
      else
        render 'new'
      end
  end
# shows the form for editing a entry
  def edit
  end
# updates the entry
  def update
    if @decision.update(decision_params)
      redirect_to @decision
    else
      render 'edit'
    end
  end

  def destroy
    @decision.destroy
    redirect_to root_path
  end

  private
  def find_decision
# Loads the right entry.
      @decision = Decision.find(params["id"])
  end

  def decision_params
    params.require(:decision).permit(:title, :forecast, :review_date)
  end

end
