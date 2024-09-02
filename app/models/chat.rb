class Chat < ApplicationRecord
  belongs_to :users
  belongs_to :offers
  has_maby :chats
end
