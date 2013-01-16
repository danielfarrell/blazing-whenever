require 'blazing-whenever/recipes/update_crontab'

describe Blazing::Recipe::UpdateCrontab do

  it 'is a blazing recipe' do
    Blazing::Recipe::UpdateCrontab.superclass.should be Blazing::Recipe
  end

  describe 'run' do

    it 'should call whenever for updating crontab with params' do
      @recipe = Blazing::Recipe::UpdateCrontab.new(:app => 'testing', :rails_env => 'development')
      @recipe.stub(:info)
      @recipe.should_receive(:system).with("bundle exec whenever --update-crontab testing --set environment=development")
      @recipe.run
    end

    it 'should return early if targets is set and does not include current target' do
      @recipe = Blazing::Recipe::UpdateCrontab.new(:app => 'testing', :rails_env => 'development', :targets => :production)
      @recipe.should_not_receive(:system)
      @recipe.run(:target_name => :development)
    end
  end

end
