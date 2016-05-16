package proj

class ListController {

      def index() {
        def persons = User.list()
        [persons:persons]
    }
}
