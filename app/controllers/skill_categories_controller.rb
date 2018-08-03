class SkillCategoriesController < ActionController::Base

  def index
    @skill_categories = SkillCategory.all
    render :action => 'index.json'
  end

end
