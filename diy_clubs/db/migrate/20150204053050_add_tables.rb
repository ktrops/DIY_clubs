class AddTables  < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
    end
    
    create_table :powersource do |t|
      t.string :description
      t.integer :voltage
    end
    
    create_table :buildings do |t|
      t.string :description
      t.integer :capacity 
    end

    create_table :musics do |t|
      t.string :type
      t.string :name
      t.integer :voltage_usage
      t.string :details
    end      
  end
end