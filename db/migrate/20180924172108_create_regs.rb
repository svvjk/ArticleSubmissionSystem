class CreateRegs < ActiveRecord::Migration[5.1]
  def change
    create_table :regs do |t|
      t.string :name
      t.string :contactno
      t.string :Emailid
      t.string :currentsemester
      t.string :Regid, null: false 
      t.string :password

      t.timestamps
    end
	add_index :regs, :Regid, unique: true
  end
end
