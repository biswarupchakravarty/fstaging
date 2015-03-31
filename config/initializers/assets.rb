# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

def javascript_manifest_files(loc = '')
  Dir.chdir("#{Rails.root}/app/assets/javascripts/") do
    puts "Adding #{loc}*.js to asset pipeline"
    return Dir["#{loc}*.js"]
  end
end

def stylesheet_manifest_files(loc = '')
  Dir.chdir("#{Rails.root}/app/assets/stylesheets/") do
    puts "Adding #{loc}*.css to asset pipeline"
    return Dir["#{loc}*.css"]
  end
end

['', 'web/'].each do |loc|
  Rails.application.config.assets.precompile += javascript_manifest_files(loc) + stylesheet_manifest_files(loc)
end