class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_attached_file :thumbnail, :default_url => 'profile-pic-250.png', styles: { thumb: "150x150#" }
         validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/ 

end
