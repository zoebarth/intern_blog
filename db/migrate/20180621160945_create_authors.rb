class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
    t.string :first_name
    t.string :last_name
    t.string :first_and_last
    t.date :born_on
    end

  end
end
