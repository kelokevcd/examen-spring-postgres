# Proyecto Spring Boot con PostgreSQL

Este proyecto es una aplicación de Spring Boot que se conecta a una base de datos PostgreSQL, diseñada para verificar la conexión exitosamente al iniciar la aplicación.

## Requisitos Previos
1. Tener **Java 17** o superior instalado.
2. Tener **Maven** instalado.
3. Tener **PostgreSQL** instalado y ejecutándose localmente.

## Configuración de la Base de Datos

1. Abre tu cliente de PostgreSQL (pgAdmin, DBeaver, o terminal `psql`).
2. Ejecuta el script `database.sql` incluido en este repositorio. Esto creará la tabla `productos` e insertará 5 productos de prueba.
3. **Importante**: Verifica las credenciales en el archivo `src/main/resources/application.properties`. Por defecto, está configurado así:
   - URL: `jdbc:postgresql://localhost:5432/productos_db`
   - Usuario: `postgres`
   - Contraseña: `admin`
   
   Ajusta estos valores según la configuración de tu PostgreSQL local.

## Cómo ejecutar el proyecto

1. Abre una terminal en la carpeta raíz del proyecto (`spring-boot-postgres`).
2. Compila y ejecuta la aplicación usando Maven:
   ```bash
   mvn spring-boot:run
   ```
3. Observa la consola durante el inicio. Deberías ver el siguiente mensaje indicando éxito:
   ```
   ✅ Conexión a PostgreSQL exitosa
   ```
   En caso de error (por credenciales o base de datos no creada), verás:
   ```
   ❌ Error al conectar con PostgreSQL: [detalle_del_error]
   ```

## Estructura del Proyecto
- `src/main/java/com/examen/SpringBootPostgresApplication.java`: Clase principal con la verificación de conexión (`CommandLineRunner`).
- `src/main/java/com/examen/model/Producto.java`: Entidad JPA que representa la tabla `productos`.
- `src/main/resources/application.properties`: Propiedades de conexión e Hibernate.
- `database.sql`: Script SQL para inicializar la base de datos.

## Entregables
Puedes subir toda esta carpeta a tu repositorio de GitHub para enviarlo como parte de tu examen.
