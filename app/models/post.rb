class Post < ActiveRecord::Base

belongs_to :user

has_attached_file :image,
:styles => {
			:thumb => "20x20#",
			:small => "56x56>",
			:medium => "165x180>",
			:medium => "640x480>"},
			:default_style => :medium,
			
			:url => "/images/posts/:id-:basename-:style.:extension",
			:path => ":rails_root/public/images/posts/:id-:basename-:style.:extension"

end
