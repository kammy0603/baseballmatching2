class Registration < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '選手登録する' },
    { id: 3, name: '選手登録しない' }
  ]
  include ActiveHash::Associations
  has_many :users
end
