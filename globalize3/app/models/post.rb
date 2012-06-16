class Post < ActiveRecord::Base
  translates :title, :body
  attr_accessible :title, :body

  def self.test
    post = self.new
    I18n.locale = :en
    post.title = 'abc-en'
    post.body = 'body-en'
    post.save!

    I18n.locale = :wk
    post.update_attributes(:title => 'abc-wk', :body => 'body-wk')
  end
end
