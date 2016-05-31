require 'rails_helper'

RSpec.describe "Tasks", type: :feature do
  describe "GET /tasks" do
    it "display some tasks" do
      visit tasks_path
    end
  end
end
