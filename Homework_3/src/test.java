import java.sql.*;
import java.sql.DriverManager;
import java.util.Scanner;



public class test {
    private static final String DRIVER = "org.postgresql.Driver";
    private static final String conn_string = "jdbc:postgresql://localhost:5432/";
   // private static final String DATABASE_1 = "test_db_homework_2";


   /* private  String USER = null; //postgres
    private static final String PASSWORD =  null; //B@b1lonia*/


    public static void main(String[] args) {
        // the choice made by the user
        String choice = null;
        // the connection to the DBMS
        Connection con = null;
        // the statement to be executed

        Statement stmt = null;

        // the results of the statement execution
        ResultSet rs = null;
        //start of a connection
        long start_c;
        //end of the connection
        long end_c;
        // start time of a statement
        long start;
        // end time of a statement
        long end;
        try {
            // register the JDBC driver to be used
            Class.forName(DRIVER);
            System.out.printf("Driver %s successfully registered .%n", DRIVER);
        } catch (ClassNotFoundException e) {
            System.out.printf(
                    "Driver %s not found : %s.%n", DRIVER, e.getMessage());
// terminate with a generic error code
            System.exit(-1);
        }
        try {
            System.out.println("Enter the name of your database");
            Scanner sc_db = new Scanner(System.in);
            String db = sc_db.nextLine();

            System.out.println("Enter the user of your database");
            Scanner sc_user = new Scanner(System.in);
            String USER = sc_user.nextLine();

            System.out.println("Enter the password of your database");
            Scanner sc_pass = new Scanner(System.in);
            String PASSWORD = sc_pass.nextLine();

// connect to the database
            start = System.currentTimeMillis();
            String DATABASE = conn_string + db;
            con = DriverManager.getConnection(DATABASE, USER, PASSWORD);
            start_c=System.currentTimeMillis();
            end = System.currentTimeMillis();
            System.out.printf("Connection to database %s successfully established in %,d milliseconds .%n", DATABASE, end - start);

            do {

                System.out.println("Enter your query");
                Scanner sc_query = new Scanner(System.in);
                String sql = sc_query.nextLine();
                start = System.currentTimeMillis();
                stmt = con.createStatement();
                end = System.currentTimeMillis();
                System.out.printf("Statement successfully created in % ,d milliseconds .%n",
                        end - start);

                start = System.currentTimeMillis();

                rs = stmt.executeQuery(sql);

                end = System.currentTimeMillis();
                System.out.printf(" %n%n Query successfully executed % ,d milliseconds .%n",
                        end - start);

                System.out.printf("Query Results :%n");

                for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {

                    System.out.print(rs.getMetaData().getColumnName(i) + "   ");
                }
                System.out.print("\n");

                while (rs.next()) {
                    for (int j = 1; j <= rs.getMetaData().getColumnCount(); j++) {

                        String columnValue = rs.getString(j);
                        System.out.print(columnValue + "       ");
                    }
                    System.out.println("");
                }
                 try
                 {
                  if (rs !=null)
                  {
                      start = System.currentTimeMillis ();
                      rs.close ();
                      end=System.currentTimeMillis ();
                      System.out.printf ("%nResult set successfully closed in % ,d milliseconds. %n",
                      end - start );
                  }
                  if (stmt !=null)
                  {
                      start=System.currentTimeMillis ();
                      stmt.close();
                      end=System.currentTimeMillis ();
                      System.out.printf("%nStatement successfully closed in % ,d milliseconds.%n",
                              end - start );

                  }
                 } catch (SQLException e) {
                     System . out . printf ("Error while releasing resources :%n");
// cycle in the exception chain
                     while (e != null) {
//e. printStackTrace ();
                         System.out.printf(" Message : %s", e.getMessage());
                         System.out.printf("SQL status code : %s", e.getSQLState());
                         System.out.printf("SQL error code : %s", e.getErrorCode());
                         System.out.printf("%n");
                         e = e.getNextException();
                     }
                 }
                System.out.println("Do you want to write another query? Please type 'Yes' if you want to write a query anything else if you do not");
                Scanner sc_ret = new Scanner(System.in);
               choice = sc_ret.nextLine();
            } while (choice.equalsIgnoreCase("Yes"));
            System.out.println ("You are disconnected from your database");
            try
            {
               if (con != null)
               {
                   start=System.currentTimeMillis();
                   con.close();
                   end_c= System.currentTimeMillis();
                   System . out . printf ("Connection successfully closed in %,d milliseconds.%n",
                           end_c - start );
                   System . out . printf ("You have been connected to your database for % ,d milliseconds.%n",
                           end_c - start_c );

               }
            }catch (SQLException e) {
                System.out.printf("Error while releasing connection :%n");
// cycle in the exception chain
                while (e != null) {
//e. printStackTrace ();
                    System.out.printf(" Message : %s", e.getMessage());
                    System.out.printf("SQL status code : %s", e.getSQLState());
                    System.out.printf("SQL error code : %s", e.getErrorCode());
                    System.out.printf("%n");
                    e = e.getNextException();
                }
            }
        }
            catch (SQLException e) {
            System.out.printf("Database access error :%n");

// cycle in the exception chain
            while (e != null) {
//e. printStackTrace ();
                System.out.printf(" Message : %s", e.getMessage());
                System.out.printf("SQL status code : %s", e.getSQLState());
                System.out.printf("SQL error code : %s", e.getErrorCode());
                System.out.printf("%n");
                e = e.getNextException();
            }
        }

    }
}




