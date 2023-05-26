# frozen_string_literal: true

namespace :db do
  desc 'Run specific seed file'
  namespace :seed do
    task single: [:environment] do
      file = if File.extname(ENV['FILE']).empty?
               "#{ENV['FILE']}.rb"
             else
               ENV['FILE']
             end
      source_path = Dir[Rails.root.join("db/seeds/#{file}")]
      load source_path.first unless source_path.empty?
    end
  end
end
