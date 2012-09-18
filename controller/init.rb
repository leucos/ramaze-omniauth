# Base class with defaults
#
class Controller < Ramaze::Controller
  layout :default
  helper :xhtml, :user
  engine :etanni
end

require __DIR__('main')
require __DIR__('github')
