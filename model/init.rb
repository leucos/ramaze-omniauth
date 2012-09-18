require 'sequel'

Sequel::Model.plugin(:schema)
DB=Sequel.sqlite('./omni.db')

require __DIR__('user')
