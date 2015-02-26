class AssociateModels < ActiveRecord::Migration
  def change
  	add_column :events, :building_id, :integer
  	add_column :musics, :powersource_id, :integer
  	add_column :buildings, :event_id, :integer
  	add_index :buildings, :event_id 
  
  	create_table :events_musics do |t|
    	t.belongs_to :music_id
    	t.belongs_to :event_id
    end
  end
end
