class Frequency < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '週3回以上' },
    { id: 3, name: '週2回' },
    { id: 4, name: '週1回' },
    { id: 5, name: '2週に1回' },
    { id: 6, name: '1ヶ月に1回' },
    { id: 7, name: '3ヶ月月に1回' }
  ]
  include ActiveHash::Associations
  has_many :users
  has_many :teams
end
