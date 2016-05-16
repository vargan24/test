package proj

class WebsiteController {
	def ok (){
		def text = new Textp(getAuthenticatedUser(),params.data).save();
		redirect(action: "index")
		
	}
	def index = {
		def posts = Textp.list().reverse()
		if (isLoggedIn()) {
			render(view:"/website/logged",model:[posts:posts])
		 }
		else
		{
			render(view:"/website/unlogged",model:[posts:posts])
		}
	}
}

 

