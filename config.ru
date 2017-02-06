require_relative 'app/controllers/main_controller'
require_relative 'app/controllers/task_controller'
require_relative 'app/controllers/list_controller'

use TaskController
use ListController
run MainController
