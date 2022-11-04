<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>404 - Route Not Found</title>
    </head>
    <body>
        <main>
            <div id="vortex-logo">
                <img src="{{$vortex_logo_url}}" alt="">
            </div>
            <div id="text-content">
                <h1>404</h1>
                <p>This page <br>Not found</p>
            </div>
            <a href="{{$home_url}}">Back root</a>
        </main>
    </body>
</html>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
    * {
        font-family: 'Poppins', sans-serif;
    }
    html {
        height: 100vh;
        width: 100vw;
    }
    body, main {
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        padding: 0;
        margin: 0;
        background-color: #494949;
    }
    #text-content {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 40px;
    }
    h1 {
        font-size: 8rem;
        margin: 0;
        color: #fff;
    }
    p {
        font-size: 2rem;
        color: #fff;
    }
    #vortex-logo {
        height: 15vh;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    #vortex-logo > img {
        height: 20vh;
    }
    a {
        text-decoration: none;
        background-color: #00C2CB;
        border-radius: 1000px;
        color: #fff;
        padding: 8px 40px;
    }
</style>
