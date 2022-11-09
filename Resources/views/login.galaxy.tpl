<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vortex Login</title>
</head>
<body>
<main>
    <form method="post" action="/login">
        <label>
            <span>Email</span>
            <input name="email">
        </label>
        {if !empty($smarty.session.ERROR.email)}
            <span style="color: white; background: red">{$smarty.session.ERROR.email[0]}</span>
        {/if}
        <label>
            <span>Password</span>
            <input name="password">
        </label>
        {if !empty($smarty.session.ERROR.password)}
            <span style="color: white; background: red">{$smarty.session.ERROR.password[0]}</span>
        {/if}
        <button type="submit">Submit</button>
    </form>
</main>
</body>
</html>
<style>
    html, body {
        height: 100vh;
        width: 100vw;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    form label {
        display: grid;
        grid-template-columns: 70px 1fr;
    }
</style>
