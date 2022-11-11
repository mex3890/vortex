<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="{content('favicon.ico')}">
    <link rel="stylesheet" href="{content('main.css')}">
    <title>Vortex Login</title>
</head>
<body id="login">
<main>
    <a href="{$home_url}">
        <img id="vortex_logo" src="{content('img/vortex.png')}" alt="">
    </a>
    <form method="post" action="/login" enctype="multipart/form-data">
        <label>
            <input name="email" type="email" value="{old('email')}" placeholder="Email">
        </label>

        <label>
            <input name="password" type="password" value="{old('password')}" placeholder="Password">
        </label>

        <label>
            <p>
                <label>Add file (single): </label><br/>
                <input type="file" name="image"/>
            </p>
        </label>
        <button type="submit">SUBMIT</button>
    </form>
</main>

{if hasError()}
    <div class="error-message">
        {foreach from=error() item=errors}
            {foreach from=$errors item=error}
                <span>
                    {$error}<br>
                </span>
            {/foreach}
        {/foreach}
    </div>
{/if}

<script>
    let messages = document.getElementsByClassName('error-message')

    setTimeout(function () {
        messages[0].classList.add('disable')
        messages[1].classList.add('disable')
    }, 6000)


</script>
</body>
</html>
