class Dog

    ActiveRecord::Base.establish_connection(
        adapter: "sqlite3",
        database: "./db/test.sqlite3"
      )

# Class inherits from ActiveRecord::Base
    class Dog < ActiveRecord::Base
    end

# Create
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS dogs (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT
    )
    SQL

    ActiveRecord::Base.connection.execute(sql)
end
