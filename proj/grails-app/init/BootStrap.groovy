import proj.Role
import proj.User
import proj.UserRole

class BootStrap {

   def init = {
	   def adminRole = new Role('ROLE_ADMIN').save()
	   def userRole = new Role('ROLE_USER').save()
	   

      def testUser = new User('me', 'password').save()

      UserRole.create testUser, adminRole

      UserRole.withSession {
         it.flush()
         it.clear()
      }

   }
}
