class Article < ApplicationRecord
 self.primary_key = 'Articleno'
  belongs_to :reg ,foreign_key: 'Regno'
 
end
