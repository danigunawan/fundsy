class AddOauthFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :string
    add_column :users, :provider, :string
    add_column :users, :twitter_token, :string
    add_column :users, :twitter_secret, :string
    add_column :users, :twitter_raw_data, :text

    #add index to the users table and its a composite index for uid and service provider
    # then run bin/rake db:migrate
    add_index :users, [:uid, :provider]
  end
end
