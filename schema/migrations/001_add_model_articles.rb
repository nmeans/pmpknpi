class AddModelArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.column  :title,           :string
      t.column  :permalink,       :string
      t.column  :comments_count,  :integer,   :default => 0
      t.column  :commenting,      :integer,   :default => 0
      t.column  :excerpt,         :text
      t.column  :body,            :text
      t.column  :excerpt_html,    :text
      t.column  :body_html,       :text
      t.column  :filter,          :string
      t.column  :published_at,    :datetime
      t.timestamps
    end
    add_index :articles, :permalink
    add_index :articles, :published_at
  end

  def self.down
    drop_table :articles
  end
end
