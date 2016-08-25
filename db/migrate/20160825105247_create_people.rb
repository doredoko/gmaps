class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :family_name
      t.string :postalcode
      t.string :city
      t.string :town
      t.string :banchi
      t.string :tel_sigai
      t.string :telsinai
      t.string :keitai
      t.string :bikou
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.boolean :douki
      t.boolean :genki
      t.boolean :kouenkai
      t.float :kihukin
      t.integer :syoukai_id
      t.integer :level

      t.timestamps
    end
  end
end
