class Comment < ApplicationRecord
include Visible
belongs_to :query
end
