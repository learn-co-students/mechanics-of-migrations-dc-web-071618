class CreateArtists < ActiveRecord::Migration
  #NEW HOTNESS METHOD OF USING ACTIVERECORD::MIGRATION. YEAH!!!!

  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end

# OLD BUSTED METHOD USING SQL.  BOOO!!!!
  # conection = ActiveRecord::Base.establish_connection(
  #   :adapter => "sqlite3"
  #   :database => "db/artsts.sqlite"
  # )
  #
  # dql = <<-SQL
  #   CREATE TABLE IF NOT EXISTS artists (
  #     id INTEGER PRIMARY KEY
  #     name TEXT
  #     genre TEXT
  #     age INTEGER
  #     hometown TEXT
  #   )
  #   SQL
  #
  # ActiveRecord::Base.connection.execute(sql)



end
