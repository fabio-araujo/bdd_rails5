require "rails_helper"

RSpec.feature "Show Articles" do
  before do
    @article = Article.create(title: 'The first article', body: 'Body article 1')
  end

  scenario "A user shows an article" do
    visit 'articles'
    click_link @article.title
    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.body)
    expect(current_path).to eq(article_path(@article))
  end
end