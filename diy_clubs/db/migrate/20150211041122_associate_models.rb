class AssociateModels < ActiveRecord::Migration
  def change
  	add_column :events, :building_id, :integer
  	add_column :musics, :powersource_id, :integer 
  
  	create_table :musics_and_events do |t|
    	t.belongs_to :music_id
    	t.belongs_to :event_id
    end
  end
end
