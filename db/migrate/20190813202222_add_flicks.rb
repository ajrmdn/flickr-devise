class AddFlicks < ActiveRecord::Migration[5.2]
  def change
    create_table :flicks do |t|
      t.column :caption, :string
      t.column :user_name, :string
      t.column :user_id, :integer
    end
  end
end
