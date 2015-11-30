class User < ActiveRecord::Base

 validates :name, presence:true, lengthi: { maximum: 50 }

 validates :email, presence:true, lengthi: { maximum: 255 }
end
