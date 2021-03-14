class AddUserIdToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :user, foreign_key: { to_table: :users}
  end
end
