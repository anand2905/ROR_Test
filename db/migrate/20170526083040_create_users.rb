class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.text :u_name
      t.string :image
      t.text :email
      t.string :password

      t.timestamps
    end
  end
end
