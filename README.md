## MBM

## Description

The task is developed by Laravel 8. Laravel Repository Pattern is used for development. Laravel Passport is used for API authentication. Frontend is developed by Vue JS SB Admin Template.In development.I used
https://datatables.net/extensions/buttons/examples/html5/simple.html and https://datatables.yajrabox.com/eloquent/basic
for doing this assesment.

### Installation

1. Clone this repo

```
git clone https://github.com/rifatcse09/mbm_assesment
```

2. Install composer packages

```
$ cd mbm_assesment
$ composer install
```

3. Create and setup .env file

```
$ copy .env.example .env
$ php artisan key:generate
put database credentials in .env file
```

4. Migrate and insert records

```
$ php artisan migrate
$ php artisan db:seed

or can import
mbm_assesment.sql attached in project root directory

```

5. Install passport

```
$ php artisan passport:install
$ php artisan passport:keys
```

6. Install dependency with NPM

```
 npm install
```

7. Develop

```
npm run dev
```

8. Run the server

```
$ php artisan serve
```

9. Use any user from user table

```
password:123456
```
