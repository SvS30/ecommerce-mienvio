## Ecommerce-Mienvío
Sistema de filtros de productos usando Laravel y Vue+Bootstrap.

### Requerimientos
- Composer
- PHP >= 7.4
- Laravel >= 8.0
- Node >= 14.16
- npm >= 6

### Instalación
1. Instalar dependencias: `composer install`
2. Clonar archivo de variables de entorno: `composer run post-root-package-install`
3. Establecer variables de entorno
    ```
    APP_NAME=Laravel
    APP_ENV=local
    APP_DEBUG=true
    APP_URL=http://localhost

    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=laravel
    DB_USERNAME=root
    DB_PASSWORD=
    ```
4. Generar una nueva key: `composer run post-create-project-cmd`
5. Datos (solo requiere ejecutar alguna de estas opciones):
    - Importar `schema_ecommerce_mienvio.sql` en su sistema de **MySQL**.
    - Ejecutar migraciones y seeders: `php artisan migrate --seed`

### Levantar el servidor
Este comando levantará la aplicación: `php artisan serve`

Después de esto, podrás visitar http://localhost:8000 y podrás ver la aplicación

Este comando levantará la aplicación mapeada con tu ip: `php artisan serve --host=0.0.0.0`

### Funcionalidad
1. Luego de levantar el servidor, se debe autenticar con cualquier usuario y en su dashboard o `/home` se encuentra el listado y filtrado de productos.
2. Por defecto, se obtienen todos los productos ordenados por nombre
3. **Filtro nombre**: Se debe ingresar algun nombre, y enviar el formulario para obtener los productos filtrados.
3. **Filtro precios**: Se puede ingresar el precio minimo o máximo, o ambos para enviar la consulta y obtener los productos filtrados.