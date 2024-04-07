# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
#
require 'time'
require_relative 'config/application'

Rails.application.load_tasks

task :push do
  system 'rubocop -A'
  system 'git add .'
  system "git commit -m 'Update #{Time.now}.'"
  system 'git pull'
  system 'git push origin main'
end
