class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
    	t.references :user, index: true
    	t.string :user_device_id
    	t.text :android_id
    	t.text :google_api_key
    	t.string :serial_number 
    	t.string :appversion


      t.timestamps
    end
  end
end
