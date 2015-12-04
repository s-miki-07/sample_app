class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
    add indexi :users, :email, unique: true
  end
end
