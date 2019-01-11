class CreateDevmakerContractsContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :devmaker_contracts_contracts do |t|
      t.text :name
      t.text :content_html
      t.text :slug
      t.index :slug, unique: true

      t.timestamps
    end
  end
end
