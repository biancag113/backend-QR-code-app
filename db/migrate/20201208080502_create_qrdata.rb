class CreateQrdata < ActiveRecord::Migration[6.1]
  def change
    create_table :qrdata do |t|
      t.string :vendor
      t.string :qrcode

      t.timestamps
    end
  end
end
