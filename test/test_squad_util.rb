require "minitest/autorun"
require "./squad_util"
require "byebug"

class TestMinitestSquadUtil < Minitest::Test
  def setup
    squad_data = "test/data/squad.json"
    squad_util = SquadUtil.new(squad_data)

    # @cloned_repos = squad_util.clone_squad_repos
    # @TODO mock ? no API call
  end

  def test_that_squad_repos_can_be_cloned
    # @TODO
  end
end
