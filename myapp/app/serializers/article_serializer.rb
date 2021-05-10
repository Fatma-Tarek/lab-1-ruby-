class ArticleSerializer < ActiveModel::Serializer
  attributes :id ,:title, :text
  has_many :comments

  # only let the user see comments he created.
  def comments
    object.comments.where(:user_id => current_user)
  end
 
end
