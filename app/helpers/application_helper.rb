module ApplicationHelper
<<<<<<< HEAD
=======

	def title(title = nil)
	    if title.present?
	      content_for :title, title
	    else
	      content_for?(:title) ? APP_CONFIG['default_title'] + ' | ' + content_for(:title) : APP_CONFIG['default_title']
	    end
  	end
>>>>>>> d9e2b517a797d63d78748f4ee95aedc6c071267c
end
