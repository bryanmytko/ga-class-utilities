require "json"
require "byebug"

class SquadUtil
  def initialize(squad_data)
    squad_file = File.read(squad_data)
    squad_hash = JSON.parse(squad_file)
    @repo = squad_hash["repo"]
    @squad = squad_hash["squad"]
  end

  def clone_squad_repos(path)
    dir = path + "/" + @repo

    Dir.mkdir(dir, 0755) unless File.exists?(dir)
    Dir.chdir(dir)

    @squad.each do |squad_member|
      repo_url = "git@github.com:#{squad_member["github"]}/#{@repo}.git"
      system "git", "clone", repo_url, squad_member["name"]
    end
  end
end
