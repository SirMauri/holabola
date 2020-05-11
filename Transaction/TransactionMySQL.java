// Paquetes que
import java.io.*;
import java.sql.*;

public class TransactionMySQL {
	Connection con = null;    		// Initialize
	Statement stm = null;	  			// Initialize
	BufferedReader in = null; 		// Initialize

	static final String URL = "jdbc:mysql://localhost:3306/"; 	  				// url local de mysql
	static final String BD = "agencia_ponchito";													// nombre de la base de datos,
	static final String USER = "root";													  				// el nombre de usuario
	static final String PASSWD = "test";  											  				// el password del usuario

	// Función encargada de conectarse a mysql creando una sesión con la base de datos (https://docs.oracle.com/javase/7/docs/api/java/sql/Connection.html, )
	public TransactionMySQL() throws SQLException, Exception {
		Class.forName("com.mysql.cj.jdbc.Driver"); 							    				// Se cambió el driver de "com.mysql.jdbc.Driver" a "com.mysql.cj.jdbc.Driver" porque no estaba actualizado.
		System.out.print("Connecting to the database...\n");

		con = DriverManager.getConnection(URL+BD, USER, PASSWD);    				// conección a la base de datos. Esto se encarga de establecer una sesión con la base de datos
		System.out.println("connected\n\n");

		con.setAutoCommit(false);         												  				// Por default el objeto de Connectión tiene "auto-commit" en verdadero, que significa que guarda los cambios automaticamente después de ejecutarlos. Si haces commit en la base de datos, se salvaran todos los cambios que se han hecho hasta un punto particular en el tiempo que se especifique. Ponemos el "autocommit en falso para desactivar esta funcionalidad"
		stm = con.createStatement();																				// Inicializa un objeto que se usará para poder ejecutar las consultas a la base de datos.
		in = new BufferedReader( new InputStreamReader(System.in)); 				// Inicializa un objeto para poder estar leyendo el input de lo que el usuario ponga en el programa.
	}

	// Función que se encarga de imprimir los datos en la pantalla.
	private void dumpResultSet( ResultSet rset ) throws SQLException {
		ResultSetMetaData rsetmd = rset.getMetaData();
		int i = rsetmd.getColumnCount();

		while( rset.next() ) {
			for( int j = 1; j <= i; j++ ) {
				System.out.print( rset.getString(j) + "\t" );
			}
			System.out.println();
		}
	}

	// Función para ejecutar el query. El query se pasa como paramaetro a la función.
	private void query( String statement ) throws SQLException {
		ResultSet rset = stm.executeQuery( statement ); 											// Crea el objeto del query que será ejectuado en la base de datos y regresa los datos que se encontraron y los asigna a la variable.
		System.out.println( "Results:" );																			// Titulo de los resultas
		dumpResultSet( rset );																								// Ejecuta la función antes declarada que se encarga de imprimir los datos en la pantalla según el paramatre que le pases que en este caso son los resultados del query.

		System.out.println();																									// imprime una linea por estética.
		rset.close();																													// cierra la conección del query.
	}

	// Función para cerrar conneción con la base de datos
	private void close() throws SQLException {
		stm.close();  																												// cierra la conección del query
		con.close();																													// cierra la coneccion/sesión de la base de datos
	}

	// Función para listar un menú de opciones y ejectur codigo según la opción deseada.
	private boolean menu() throws SQLException, IOException {
		String statement;
		System.out.println( "\nNivel de aislamiento = " + con.getTransactionIsolation() + "\n" );
		System.out.println( "(1) Consultar folleto\n" );
		System.out.println( "(2) Simulacón de reservacion\n" );
		System.out.println( "(3) Reservación de un viaje\n" );
		System.out.println( "(4) Validar todas operaciones\n" );
		System.out.println( "(5) Abortar todas las operaciones\n" );
		System.out.println( "(6) Cambiar nivel de aislamiento\n" );
		System.out.println( "(7) Salir\n\n" );
		System.out.print( "Option: " );

		switch (Integer.parseInt( "0" + in.readLine())) {
			// Caso que imprime toda la tabla emp
			case 1:
				query( "SELECT DISTINCT Pais FROM CIUDAD" );	
				System.out.println("selecciona el pais");
				String pais = in.readLine();
				query( "SELECT Nom_Ciudad FROM CIUDAD WHERE Pais = '" + pais + "'");
				System.out.println("selecciona la ciudad");
				String ciudad = in.readLine();
				System.out.println("Estos son los lugares a visitar");
				query( "select * from lugar_a_visitar where NomCiudad = '" + ciudad+ "'");
				break;

			// Caso que imprime una lista filtrada según los parametros que tu le pongas.
			case 2:	
				System.out.println( "\nPredicado?" );
				query( "select * from emp where " + in.readLine() );
				break;

			// Caso que te inserta un nuevo empleado, te pude su número, Nombre, Jefe
			case 3:	
				statement = "insert into EMP values ( ";
				System.out.println( "\nNumero?" );
				statement += in.readLine();

				System.out.println( "Nombre?" );
				statement += ", '" + in.readLine() + "', 'SALESMAN', ";

				System.out.println( "Jefe?" );
				statement += in.readLine() + ", '2005-11-12', 1250.00,  500.00, 40 )";

				stm.executeUpdate( statement );
				break;

			// Cuando hayas terminao un grupo de transacciones y quieras validarlas todas para guardarlas, ejecutas esto.
			case 4:	
				con.commit();      
				break;

			// Si te equivocaste después del commit y quires volver al punto anterior, esto te permite deshacer el commit.
			case 5:	con.rollback();
				break;

			// Caso para modificar el nivel de aislamiento.
			case 6:	
				System.out.println();      
				System.out.println( con.TRANSACTION_NONE + " = TRANSACTION_NONE" );
				System.out.println( con.TRANSACTION_READ_UNCOMMITTED + " = TRANSACTION_READ_UNCOMMITTED" );
				System.out.println( con.TRANSACTION_READ_COMMITTED + " = TRANSACTION_READ_COMMITTED" );
				System.out.println( con.TRANSACTION_REPEATABLE_READ + " = TRANSACTION_REPEATABLE_READ" );
				System.out.println( con.TRANSACTION_SERIALIZABLE + " = TRANSACTION_SERIALIZABLE\n\n" );

				System.out.println( "Nivel?" );
				con.setTransactionIsolation( Integer.parseInt( in.readLine() ) );
				break;

			case 7:	
				return false;
		}
		return true;
	}

	// Función main para ya ejecutar todo
	public static void main( String arg[] ) throws SQLException, Exception {
		if( arg.length != 0 ) {
			System.err.println( "Use: java TransactionMySQL" );
			System.exit( 1 );
		}

		TransactionMySQL connection = new TransactionMySQL(); // inicializar la sesión de transacción
		while(true) // hecho para correr siempre
			try {
				if(!connection.menu())
				break;
			} catch( Exception e ) {
				System.err.println( "failed" );
				e.printStackTrace( System.err );
			}
		connection.close();
	}
}
