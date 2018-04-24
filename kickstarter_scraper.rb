# require libraries/modules here'
#require 'pry'
require 'nokogiri'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = {}
  kickstarter.css("li.project.grid_4")
  projects
end

#binding.pry
create_project_hash
# projects: kickstarter.css("li.project.grid_4")
