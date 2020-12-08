class AddForeignKeyToQrdata < ActiveRecord::Migration[6.1]
  def change
    add_column :qrdata, :user_id, :string
  end
end
