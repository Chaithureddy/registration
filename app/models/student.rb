class Student < ActiveRecord::Base
  attr_accessible :dob, :gender, :idcard, :name, :phnNo
end
