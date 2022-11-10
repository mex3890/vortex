<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="{content('favicon.ico')}">
    <title>Vortex Login</title>
</head>
<body>
    <main>
        <a href="{$home_url}">
            <img id="vortex_logo" src="{content('img/vortex.png')}" alt="">
        </a>
        <form method="post" action="/login">
            <label>
                <input name="email" type="email" value="{old('email')}" placeholder="Email">
            </label>

            <label>
                <input name="password" type="password" value="{old('password')}" placeholder="Password">
            </label>
            <button type="submit">SUBMIT</button>
        </form>
    </main>

    {if hasError('password')}
        <div class="error-message">
            <span style="color: white;border-bottom: 1px solid white">{error('password')}</span>
        </div>
    {/if}
    {if hasError('email')}
        <div class="error-message" style="top: 85px">
            <span style="color: white; border-bottom: 1px solid white">{error('email')}</span>
        </div>
    {/if}

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

    * {
        font-family: 'Poppins', sans-serif;
    }

    html, body {
        height: 100vh;
        width: 100vw;
        display: flex;
        justify-content: center;
        align-items: center;
        background: white;
    }

    main {
        background: #494949;
        background: linear-gradient(to right, #3d3d3d, #1e7c79);
        width: 35vw;
        min-width: 340px;
        height: 60vh;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        gap: 30px;
        box-shadow: 10px 10px 17px 0 rgb(0 0 0 / 75%);
    }

    main a{
        height: 120px;
        width: 50%;
        display: flex;
        justify-content: center;
    }

    main img {
        height: 120px
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 20px;
        padding: 20px;
        width: 70%;
    }

    form label {
        display: flex;
        flex-direction: column;
    }


    form input {
        border: none;
        background-color: unset;
        border-bottom: 1px solid white;
        color: white;
    }

    form input::placeholder {
        color: white!important;
    }

    form input:focus-visible {
        outline: none;
    }

    form button {
        border-radius: 1000px;
        border: none;
        height: 30px;
        background: rgba(70, 247, 255, 0.65);
        color: #ffffff;
        cursor: pointer;
        margin-top: 20px;
    }

    .error-message {
        position: absolute;
        top: 5px;
        right: 5px;
        width: 225px;
        height: 70px;
        background-color: #2ca8af;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .disable {
        display: none;
    }

</style>
<script>
    let messages = document.getElementsByClassName('error-message')

    setTimeout(function () {
        messages[0].classList.add('disable')
        messages[1].classList.add('disable')
    }, 6000)


</script>
</body>
</html>
