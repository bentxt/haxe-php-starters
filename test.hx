class Test {
    static function main() {

      var conn = sys.db.Mysql.connect({user:"root", port:8889, pass:"foobar", host:"127.0.0.1", database: "testbase"});

//      conn.commit();

      var rset = conn.request("SELECT * FROM testtable");

      trace("length: "+rset.length);

      for( row in rset ) {
            trace("User "+row.name+" is "+row.age+" years old ");
      }

      trace(rset);


        trace("Hello World !");
      trace(conn.dbName());
    }
}
