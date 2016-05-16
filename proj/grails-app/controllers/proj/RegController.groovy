package proj

class RegController  {

    def index= {
    }
    def save() {
		
		def newUser = new User(params).save()
  
		UserRole.create newUser, Role.get(2);
  
		UserRole.withSession {
		   it.flush()
		   it.clear()
		}
        render "Success!"
    }
}
