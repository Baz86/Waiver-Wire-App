require 'rails_helper'

RSpec.describe "news_items/index", type: :view do
  before(:each) do
    assign(:news_items, [
      NewsItem.create!(),
      NewsItem.create!()
    ])
  end

  it "renders a list of news_items" do
    render
  end
end
