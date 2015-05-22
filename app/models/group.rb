class Group < ActiveRecord::Base
   belongs_to :user
   default_scope -> { order(created_at: :desc) }
   validates :user_id, presence: true
   validates :name, presence: true, length: { maximum: 20 }
   validates :teacher, presence:true, length: { maximum: 30 }
end
