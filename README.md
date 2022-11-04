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
<a href="https://github.com/mex3890/vortex/"><img src="https://badgen.net/badge/Lts/1.0.0/cyan" alt=""></a>
<a href="https://getcomposer.org/"><img src="https://badgen.net/badge/Composer/v2.4/orange" alt=""></a>
<a href="https://www.php.net/"><img src="https://badgen.net/badge/icon/v8.1?icon=php&label" alt=""></a>
<a href="https://github.com/mex3890/vortex/pulse/monthly"><img src="https://badgen.net/badge/icon/insights/green?icon=github&label" alt=""></a>
<a href="https://github.com/mex3890/vortex/"><img src="https://badgen.net/badge/icon/v8.19/red?icon=npm&label" alt=""></a>
</p>
<hr>

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


