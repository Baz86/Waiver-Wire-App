require 'rails_helper'

RSpec.describe "news_items/show", type: :view do
  before(:each) do
    @news_item = assign(:news_item, NewsItem.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
