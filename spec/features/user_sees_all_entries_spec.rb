require "rails_helper"

describe "user sees all entries" do
  describe "they visit /entries" do
    it "displays all entries" do

      entry_1 = Entry.create!(title: "Title 1", body: "Body 1")
      entry_2 = Entry.create!(title: "Title 2", body: "Body 2")

      visit '/entries'

      expect(page).to have_link(entry_1.title)
      expect(page).to have_link(entry_2.title)
      expect(page).to have_link("Create a New Entry")

    end
  end
end
