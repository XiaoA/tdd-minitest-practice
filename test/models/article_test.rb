require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def setup
    @article = Article.create(title: "First Article", description: "This is a test article.")
  end

  test 'article should be valid' do
    assert @article.valid?
  end

  test 'title should be present' do
    @article.title = ''
    assert_not @article.valid?
  end

  test 'title should not be too short' do
    @article.title = 'aaaa'
    assert_not @article.valid?
  end

  test 'title should not be too long' do
    @article.title = 'a' * 51
    assert_not @article.valid?
  end

  test 'description should be present' do
    @article.description = ''
    assert_not @article.valid?
  end

  test 'description should not be too short' do
    @article.description = 'aaaa'
    assert_not @article.valid?
  end

  test 'description should not be too long' do
    @article.description = 'a' * 151
    assert_not @article.valid?
  end
end
