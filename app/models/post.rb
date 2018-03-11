class Post < ApplicationRecord
  before_create :titleize_author
  after_create :notify_admin

  private

  def titleize_author
    self.author = self.author.to_s.titleize
  end

  def notify_admin
    PostsMailer.new_post_notification(self).deliver
  end
end
