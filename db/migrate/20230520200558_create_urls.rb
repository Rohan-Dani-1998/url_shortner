class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :short_url
      t.text :long_url

      t.timestamps
    end
  end
end
