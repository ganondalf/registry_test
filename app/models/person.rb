class Person < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  def formal_name(id)
    p = Person.find(id)
    p.first_name = p.first_name.capitalize
    p.last_name = p.last_name.capitalize
    if p.is_married == false && p.gender == 'female'
      return "Ms. #{p.first_name} #{p.last_name}"
    elsif p.gender == 'female' && p.is_married == true
      return "Mrs. #{p.first_name} #{p.last_name}"
    else
      return "Mr. #{p.first_name} #{p.last_name}"
    end
  end
end

