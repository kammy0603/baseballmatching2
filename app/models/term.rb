class Term < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '社会人野球' },
    { id: 3, name: '大学野球' },
    { id: 4, name: '高校野球' },
    { id: 5, name: '中学野球' },
    { id: 6, name: '趣味程度' },
    { id: 7, name: '初心者' }
  ]

  include ActiveHash::Associations
  has_many :users
end
