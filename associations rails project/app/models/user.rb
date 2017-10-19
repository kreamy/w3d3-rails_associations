class User < ApplicationRecord
  has_many :enrollments,
    class_name: :Enrollment,
    foreign_key: :student_id,
    primary_key: :id

   has_many :courses,
    through: :enrollments,
    source: :course

    has_many :instructed_courses,
      class_name: :Course,
      foreign_key: :instructor_id,
      primary_key: :id 
end
