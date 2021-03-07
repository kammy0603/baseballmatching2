class Level < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '全国大会優勝' },
    { id: 3, name: '都道府県大会優勝' },
    { id: 4, name: '市町村大会優勝' },
    { id: 5, name: '趣味として楽しみたい' }
  ]
  include ActiveHash::Associations
  has_many :users
  has_many :teams
end
