class SkillCategoriesController < ApplicationController
  def index
    @skill_categories = SkillCategory.all
    render :action => 'index.json'
  end

end
