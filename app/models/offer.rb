class Offer < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'メンバー募集中' },
    { id: 3, name: 'メンバー募集していない' }
  ]
  include ActiveHash::Associations
  has_many :teams
end
