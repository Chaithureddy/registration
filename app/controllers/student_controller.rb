class StudentController < ApplicationController

  before_filter :authenticate_user!

end
