class Student < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  validates :email, presence: true,
            uniqueness: { case_sensitive: false },
            length: { maximum: 105 }
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  has_secure_password
  has_many :student_courses
  has_many :courses, through: :student_courses
end
