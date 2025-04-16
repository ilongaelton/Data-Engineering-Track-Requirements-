drop table if exists business;
create table business (latitude VARCHAR,
longitude VARCHAR,
business_id VARCHAR primary key,
address VARCHAR,
business_name VARCHAR,
business_type VARCHAR,
community_id INTEGER
)

SELECT *
FROM business


drop table if exists community_data;
create table community_data (community_id INTEGER,
community_name VARCHAR,
community_no VARCHAR,
global_id VARCHAR
)

SELECT *
FROM community_data


ALTER TABLE community_data ADD PRIMARY KEY (community_id);

ALTER TABLE ONLY business
    ADD CONSTRAINT community_id_fkey FOREIGN KEY(community_id)
REFERENCES community_data(community_id) ON UPDATE CASCADE;


