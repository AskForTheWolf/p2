class Post < ActiveRecord::Base

  # nice use of AR scopes to keep code out of your controllers
  default_scope { order('updated_at DESC') } # sorts by updated at in reverse orderr

  has_many :comments
  belongs_to :user
end
