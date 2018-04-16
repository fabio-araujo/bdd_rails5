require 'rails_helper'

RSpec.describe 'Deleting an article' do
  before do
    @article = Article.create(title: 'The first article', body: 'Body article 1')
  end

  scenario "A user deletes an article" do
    visit "/"

    click_link @article.title
    click_link "Delete Article"

    expect(page).to have_content("Article has been deleted")
    expect(current_path).to eq(articles_path)
  end
end