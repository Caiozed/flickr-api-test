module StaticPagesHelper
	def photo_url(photo_id)
		sizes = flickr.photos.getSizes(photo_id: photo_id)
		sizes.find{|s| s.label == "Small"}.source
	end

	def user_photos(user_id)
		flickr.people.getInfo(user_id: user_id).photosurl
	end
end
