require "blazing/recipe"

class Blazing::Recipe::UpdateCrontab < Blazing::Recipe

  def run(target_options = {})
    super target_options
 
    return if options[:targets] && !Array(options[:targets]).include?(target_options[:target_name])
    info "updating crontab"
    system "bundle exec whenever --update-crontab #{application} --set #{variables}"
  end

  private
  def application
    options[:app] || pwd
  end

  def pwd
    Dir.pwd.split('/').last
  end

  def environment
    options[:rails_env] || "production"
  end

  def variables
    "environment=#{environment}"
  end

end
