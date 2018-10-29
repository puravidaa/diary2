require "rails_helper"

describe "user sees all articles" do
  describe "they visit /articles" do
    it "displays all articles" do

      entry_1 = Entry.create!(title: "Title 1", body: "Body 1")
      entry_2 = Entry.create!(title: "Title 2", body: "Body 2")

      visit '/articles'

      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_2.title)
      
    end
  end
end