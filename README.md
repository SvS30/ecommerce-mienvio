## Ecommerce-Mienvío
Sistema de filtros de productos usando Laravel y Vue.

### Requerimientos
- [Composer]()
- [PHP]()
- [Laravel]()
- [Node]()
- [npm]()

### Instalación
1. Instalar dependencias: `composer install`
2. Clonar archivo de variables de entorno: `cp .env.example .env`
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
4. Generar una nueva key: `php artisan key:generate`
5. Ejecutar migraciones y seeders: `php artisan migrate --seed`

### Levantar el servidor
Este comando levantará la aplicación: `php artisan serve`

Después de esto, podrás visitar http://localhost:8000 y podrás ver la aplicación

Este comando levantará la aplicación mapeada con tu ip: `php artisan serve --host=0.0.0.0`