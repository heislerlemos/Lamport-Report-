# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( bemvindos.scss )
Rails.application.config.assets.precompile += %w( lamport_notes.scss )
Rails.application.config.assets.precompile += %w( eventos.scss )
Rails.application.config.assets.precompile += %w( calendarios.scss )
Rails.application.config.assets.precompile += %w( item_events.scss )
Rails.application.config.assets.precompile += %w( twitterposts.scss )
Rails.application.config.assets.precompile += %w( abouts.scss )
Rails.application.config.assets.precompile += %w( news.scss )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
