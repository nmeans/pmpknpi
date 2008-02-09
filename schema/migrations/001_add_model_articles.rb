class AddModelArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.column  :title,           :string
      t.column  :permalink,       :string
      t.column  :comments_count,  :integer,   :default => 0
      t.column  :intro,           :text
      t.column  :body,            :text
      t.column  :intro_html,      :text
      t.column  :body_html,       :text
      t.column  :publish,         :boolean
      t.column  :published_on,    :date
      t.timestamps
    end
    add_index :articles, :permalink
    add_index :articles, :publish
  end

  def self.down
    drop_table :articles
  end
end