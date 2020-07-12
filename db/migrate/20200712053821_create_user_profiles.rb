class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.integer :age
      t.string :job
      t.string :introduction

      t.timestamps
    end
  end
end
