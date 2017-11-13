class Student < ApplicationRecord
  has_and_belongs_to_many :courses, :join_table => :students_courses
  has_many :topics
  has_many :posts
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: true
  validates :index, presence: true, length: { minimum: 6, maximum: 6 }, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  def follows?(course)
    self.courses.include?(course)
  end

end
