DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts_tags;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;

CREATE TABLE posts (
	id INTEGER PRIMARY KEY
	,title VARCHAR(255) NOT NULL
	,content TEXT NOT NULL
	,created_at TIMESTAMP NOT NULL
	,updated_at TIMESTAMP NOT NULL
);

CREATE TABLE tags (
	id INTEGER PRIMARY KEY
	,name VARCHAR(255) NOT NULL
	,created_at TIMESTAMP NOT NULL
	,updated_at TIMESTAMP NOT NULL
);

CREATE TABLE posts_tags (
	post_id INTEGER NOT NULL
	,tag_id INTEGER NOT NULL
	,FOREIGN KEY (post_id) REFERENCES posts (id)
	,FOREIGN KEY (tag_id) REFERENCES tags (id)
);

CREATE TABLE comments (
	id INTEGER NOT NULL
	,post_id INTEGER NOT NULL
	,author_name VARCHAR(255) NOT NULL
	,author_email VARCHAR(255) NOT NULL
	,content TEXT NOT NULL
	,created_at TIMESTAMP NOT NULL
	,updated_at TIMESTAMP NOT NULL
	,FOREIGN KEY (post_id) REFERENCES posts (id)
)
