require 'blazing-whenever/recipes/update_crontab'

describe Blazing::Recipe::UpdateCrontab do

  it 'is a blazing recipe' do
    Blazing::Recipe::UpdateCrontab.superclass.should be Blazing::Recipe
  end

  describe 'run' do

    before :each do
      @recipe = Blazing::Recipe::UpdateCrontab.new(:app => 'testing', :rails_env => 'development')
      @recipe.stub(:info)
    end

    it 'calls whenever for updating crontab with params' do
      @recipe.should_receive(:system).with("bundle exec whenever --update-crontab testing --set environment=development")
      @recipe.run
    end

  end

end
