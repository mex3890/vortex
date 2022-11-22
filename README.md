<br><br>
<div align="center">
    <img height="200" src="public/img/vortex.png" alt="Vortex">
</div>

<div align="center">
    <a href="https://github.com/mex3890/vortex/"><img height="120" src="public/img/vortex_name.png" alt="Vortex"></a>
</div>

<p align="center">
<a href="https://github.com/mex3890/vortex/"><img src="https://badgen.net/badge/Support/mail/purple" alt=""></a>
<a href="https://github.com/mex3890/vortex/"><img src="https://badgen.net/badge/icon/discord/black?icon=discord&label" alt=""></a><br>
<a href="https://github.com/mex3890/vortex/"><img src="https://badgen.net/badge/Lts/1.0.3/cyan" alt=""></a>
<a href="https://getcomposer.org/"><img src="https://badgen.net/badge/Composer/v2.4/orange" alt=""></a>
<a href="https://www.php.net/"><img src="https://badgen.net/badge/icon/v8.1?icon=php&label" alt=""></a>
<a href="https://github.com/mex3890/vortex/pulse/monthly"><img src="https://badgen.net/badge/icon/insights/green?icon=github&label" alt=""></a>
<a href="https://github.com/mex3890/vortex/"><img src="https://badgen.net/badge/icon/v8.19/red?icon=npm&label" alt=""></a>
</p>
<hr>

## Validations

`The validation Class`

You can use the Validation class to validate your requests, to choose the validations of each field you must pass an
array containing the respective rules as in the example below

```php
Validation::check($attributes, $rules, $feedback);
```

| PARAMETER    | TYPE  | DESCRIPTION                                            | DEFAULT |
|--------------|:-----:|--------------------------------------------------------|:-------:|
| $attributes  | array | The array with the data to be validated                |    X    |
| $rules       | array | The array containing the rules to be used to validated |    X    |
| $feedback    | array | An array with the responses for invalid cases          |    X    |

One example of an application of the validation method

````php
$rules = [
    'email' => [
        'required',
        'email'
    ],
    'password' => [
        'required',
        ['string', 10, 50],
        ['password', ['upper-case', 'special-character']]
];

$feedback = [
     'email' => [
        'required' => 'The email is required',
        'email' => 'Enter with a valid email'
     ],
     'password' => [
        'required' => 'The password is required',
        'string' => 'The password must be a string',
        'string.min' => 'Minimum characters is 10',
        'string.max' => 'Maximum characters is 50',
        'password.upper-case' => 'Need upper case character',
        'password.special-character' => 'Need special character'
     ]
]

public static function login(Request $request): void
    {
        Validation::check($request->attributes(), self::$rules, self::$feedback);
        $attributes = $request->attributes();

        $verifyServer = new VerifyUser($attributes['email'], $attributes['password']);
        $verify_password = $verifyServer->verifyUserByEmail();

        if ($verifyServer->verifyUserByEmail()) {
            redirect('/home');
        }

        redirect('/');
    }
````

### List of available validation rules

`bool`
- **Description** - Simple validation to **bool** attributes
- **Usage** - `'bool'` 
- **Parameters** - **Don't** use parameters

`boolean`
- **Description** - Simple validation to **boolean** attributes
- **Usage** - `'boolean'`
- **Parameters** - **Don't** use parameters

`date`
- **Description** - An validation for **date** attributes
- **Usage** - `'date'`, `['date', 'Y-m-d']`
- **Parameters** - `format`, you can set the format for validation, the default format is set in `.env` like `DATE_FORMAT=Y-m-d`

`date_time`
- **Description** - Simple validation for **date-time**
- **Usage** - `'bool'`
- **Parameters** - `format`, you can set the format for validation, 
the default format is set in `.env` from merge `DATE_FORMAT=Y-m-d` and `TIME_FORMAT=H:i:s`

`email`
- **Description** - Simple validation for **email** attributes
- **Usage** - `'email'`
- **Parameters** - **Don't** use parameters

`file`
- **Description** - Complete validation for **file** attributes
- **Usage** - `'file'`, `['file', ['pdf', 'php', 'html']]`, `['file', ['pdf', 'php', 'html'], 1000]`
- **Parameters** - `extensions`, `max size limit`, all parameters are optional

`float`
- **Description** - Simple validation for **float** attributes
- **Usage** - `'float'`, `['float', -100]`, `['float', 10, 100.7]`
- **Parameters** - `min`, `max`, all parameters are optional

`image`
- **Description** - Complete validation for **image** attributes
- **Usage** - `'image'`, `['image', ['png', 'jpeg']]`, `['image', ['png'], 1000]`
- **Parameters** - `extensions`, `max size limit`, all parameters are optional

`int`
- **Description** - Simple validation for **int** attributes
- **Usage** - `'int'`, `['int', -100]`, `['int', 10, 1000]`
- **Parameters** - `min`, `max`, all parameters are optional

`password`
- **Description** - Complete validation for **password** attributes
- **Usage** - `['password', ['number', 'upper-case', 'lower-case', 'special-character']]`
- **Parameters** - **array filters**, you can set the required constraints in this list
- `number` `upper-case` `lower-case` `special-character`

`required`
- **Description** - Simple validation for **required** attributes
- **Usage** - `'required'`
- **Parameters** - **Don't** use parameters

`string`
- **Description** - Simple validation for **string** attributes
- **Usage** - `'string'`, `['string', 30]`, `['string', 10, 200]`
- **Parameters** - `min`, `max`, all parameters are optional

`time`
- **Description** - An validation for **time** attributes
- **Usage** - `'time'`, `['time', 'H:i:s']`
- **Parameters** - `format`, you can set the format for validation, the default format is set in `.env` like `TIME_FORMAT=H:i:s`

`unique`
- **Description** - Validation for **unique** attributes
- **Usage** - `['unique', 'users', 'email']`
- **Parameters** - `table`, `column`, you need pass the table and column name for validate if the attribute is unique

`url`
- **Description** - Simple validation for **url** attributes
- **Usage** - `'url'`
- **Parameters** - **Don't** use parameters

`Installation`

- On terminal run the composer command with your new project name

```shell
composer create-project vortex-framework/vortex YOUR_PROJECT_NAME
```

- Copy the .env.example and rename to .env
- **Set the variables** to continue the installation

```dotenv
APP_NAME=$PROJECT_NAME
APP_ENV=local
APP_URL=$PROJECT_URL

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=$DATABASE_NAME
DB_USERNAME=$DATABASE_USERNAME
DB_PASSWORD=$DATABASE_PASSWORD
DB_CHARSET=utf8mb4
```

- on terminal go to your root project dir and run Cosmo Vortex Installation command

```shell
php cosmo vortex:install
```

- Your output should be equal to this
- [x] load environment........... SUCCESS<br>
- [x] first migrations............... SUCCESS<br>
- [x] set time zone................. SUCCESS

- To test your project run:

```shell
php cosmo migrate
php cosmo seed
```

- That create a User default table and create one User

`Routes with static files`

<h5><b> /|\ GET</b></h5>

```php
$route->get('/', $route->view('contact.php'));
```

````php
You can pass the relative path of view or use the $route->view helper
````

`Using Smarty in Galaxy`

<h5><b> /|\ Galaxy</b></h5>
<p>Use variable in template</p>

````html
<h1>{{$var}}</h1>
````

```php
$route->get('/', function () use ($galaxy) {
    $var = 1;
    $galaxy->render('template_path', ['var' => $var]);
});
```

<hr>
<p>Make comments</p>

````html
<h1>{*New comment are here*}</h1>
````

<hr>
<br>

`Create new Command with Cosmos`

<h5><b> /|\ Instance Cosmos</b></h5>

```php
class Migrate extends Command
{
    private Cosmos $cosmos;
    
        public function __construct()
        {
            $this->cosmos = new Cosmos();
        }
    }
}
```

<br>
<h5><b> /|\ Start</b></h5>

```php
$cosmos->start( $with_time, $with_change_counter ): void
```

```diff
@@ This function starts the command and allows you to choose two parameters: @@
    * Runtime count
    * Number of changes
```

| PARAMETER             |      TYPE       | DESCRIPTION                                                             |  DEFAULT   |
|-----------------------|:---------------:|-------------------------------------------------------------------------|:----------:|
| $output               | OutputInterface | Pass the output to write to the terminal                                |     X      |
| $width_time           |      bool       | Set whether the build time will be shown at the end of the command      |   false    |
| $width_change_counter |      bool       | Set whether the success counter will be shown at the end of the command |   false    |

<br>

<h5><b> /|\ Title</b></h5>

```php
$cosmos->title( $main_title, $secondary_title ): void
```

```diff
@@ This method mount and write the title of command @@
```

| PARAMETER             |  TYPE  | DESCRIPTION                                                | DEFAULT |
|-----------------------|:------:|------------------------------------------------------------|:-------:|
| $main_title           | string | Set the first string to be show on the command line title  |    X    |
| $secondary_title      | string | Set the second string to be show on the command line title |    X    |

<br>

<h5><b> /|\ IndexRow</b></h5>

```php
$cosmos->indexRow( $first_index, $second_index ): void
```

```diff
@@ This method create and write a index @@
```

| PARAMETER     |  TYPE  | DESCRIPTION                                                | DEFAULT |
|---------------|:------:|------------------------------------------------------------|:-------:|
| $first_index  | string | Set the first string to be show on the command line index  |    X    |
| $second_index | string | Set the second string to be show on the command line index |    X    |

<br>

<h5><b> /|\ FileSuccessRow</b></h5>

```php
$cosmos->fileSuccessRow( $filename,  $status ): void
```

```diff
@@ This method mount and write a filename success message @@
```

| PARAMETER |  TYPE  | DESCRIPTION                                                          | DEFAULT |
|-----------|:------:|----------------------------------------------------------------------|:-------:|
| $filename | string | Set the filename that will appear at the start of the row on success |    X    |
| $status   | string | defines the status that will appear at the end of the row on success |    X    |

<br>

<h5><b> /|\ FileFailRow</b></h5>

```php
$cosmos->fileFailRow( $filename,  $status ): void
```

```diff
@@ This method mount and write a filename fail message @@
```

| PARAMETER |  TYPE  | DESCRIPTION                                                       | DEFAULT |
|-----------|:------:|-------------------------------------------------------------------|:-------:|
| $filename | string | Set the filename that will appear at the start of the row on fail |    X    |
| $status   | string | defines the status that will appear at the end of the row on fail |    X    |

<br>

<h5><b> /|\ Finish</b></h5>

```php
$cosmos->finish(): void
```

```diff
@@ This method is required to finish the command @@
```

<h5><b> /|\ CommandSuccess</b></h5>

```php
$cosmos->commandSuccess( $main_title ): void
```

```diff
@@ This method write the success message @@
```

| PARAMETER |  TYPE  | DESCRIPTION                                                      | DEFAULT |
|-----------|:------:|------------------------------------------------------------------|:-------:|
| $filename | string | Set the string to be show on the command line title with success |    X    |

<br>


