class CreateSocialOuths < ActiveRecord::Migration[5.0]
  def change
    create_table :social_ouths do |t|
      t.string :provider
      t.string :uid
      t.references :user, index: true

      t.timestamps
    end
  end
end
