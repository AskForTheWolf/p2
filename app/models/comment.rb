class Comment < ActiveRecord::Base

  # nice use of AR scopes to keep code out of your controllers
  default_scope { order('updated_at DESC') } # sorts by updated at in reverse orderr

  belongs_to :post
end
