DB = Sequel.sqlite

DB.create_table :users do
  primary_key :id
  column :avatar_id, :varchar
end
