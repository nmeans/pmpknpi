CREATE TABLE articles ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255) DEFAULT NULL, "permalink" varchar(255) DEFAULT NULL, "comments_count" integer DEFAULT 0, "commenting" integer DEFAULT 0, "excerpt" text DEFAULT NULL, "body" text DEFAULT NULL, "excerpt_html" text DEFAULT NULL, "body_html" text DEFAULT NULL, "filter" varchar(255) DEFAULT NULL, "published_at" datetime DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE assets ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "filename" varchar(255) DEFAULT NULL, "width" integer DEFAULT NULL, "height" integer DEFAULT NULL, "content_type" varchar(255) DEFAULT NULL, "size" integer DEFAULT NULL, "attachable_type" varchar(255) DEFAULT NULL, "attachable_id" integer DEFAULT NULL, "thumbnail" varchar(255) DEFAULT NULL, "parent_id" integer DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE comments ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "article_id" integer DEFAULT NULL, "admin" boolean DEFAULT 'f', "user_ip" varchar(255) DEFAULT NULL, "user_agent" varchar(255) DEFAULT NULL, "referrer" varchar(255) DEFAULT NULL, "approved" boolean DEFAULT 'f', "name" varchar(255) DEFAULT NULL, "email" varchar(255) DEFAULT NULL, "website" varchar(255) DEFAULT NULL, "yay" text DEFAULT '', "nay" text DEFAULT '', "vote_count" integer DEFAULT 1, "body" text DEFAULT NULL, "body_html" text DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE schema_info (version integer);
CREATE INDEX "index_articles_on_permalink" ON articles ("permalink");
CREATE INDEX "index_articles_on_published_at" ON articles ("published_at");
CREATE INDEX "index_assets_on_attachable_id" ON assets ("attachable_id");
CREATE INDEX "index_assets_on_attachable_type" ON assets ("attachable_type");
CREATE INDEX "index_assets_on_parent_id" ON assets ("parent_id");
CREATE INDEX "index_comments_on_approved" ON comments ("approved");
CREATE INDEX "index_comments_on_article_id" ON comments ("article_id");
INSERT INTO schema_info (version) VALUES (3)