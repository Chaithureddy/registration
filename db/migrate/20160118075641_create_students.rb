class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :idcard
      t.integer :phnNo
      t.date :dob
      t.string :gender

      t.timestamps
    end
  end
end
