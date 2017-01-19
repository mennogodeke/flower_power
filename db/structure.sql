CREATE TABLE "order_items" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "order_id" integer,
 "product_id" integer, "amount" integer, "price" decimal(8,2),
  "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_order_items_on_order_id" ON "order_items" ("order_id");
CREATE INDEX "index_order_items_on_product_id" ON "order_items" ("product_id");
CREATE TABLE "orders" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "store_id" integer,
 "customer_id" integer, "employee_id" integer, "ready" boolean, "payed" boolean,
  "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "products" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 "product_name" varchar, "product_price" decimal(8,2),
  "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "stores" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 "store_name" varchar, "store_address" varchar, "store_zip" varchar,
  "store_city" varchar, "store_telephone" varchar, "created_at" datetime NOT NULL,
   "updated_at" datetime NOT NULL, "email" varchar);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
 "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL,
 "reset_password_token" varchar, "reset_password_sent_at" datetime,
  "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL,
   "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar,
    "last_sign_in_ip" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL,
     "employee_role" boolean DEFAULT 'f', "customer_role" boolean DEFAULT 't', "first_name" varchar,
      "insertion" varchar, "last_name" varchar, "address" varchar, "zip" varchar, "city" varchar, "dob" date);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar,
 "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO schema_migrations (version) VALUES
('20170116183842'),
('20170116191601'),
('20170116201156'),
('20170116204815'),
('20170116205848'),
('20170117082605'),
('20170117095227'),
('20170117113606'),
('20170117124002');


