<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="{content('favicon.ico')}">
    <title>Vortex</title>
</head>
<body>
<main>
    <div id="header">
        <img id="logo" src="{content('img/vortex.png')}" alt="Vortex">
        <h1 id="title">Vortex</h1>
    </div>
    <div id="grid">
        <div class="card">
            <div class="card-header">
                <img src="{content('img/icons/coin.png')}" alt="Vortex">
                <span>Sponsor our work</span>
            </div>
            <div class="card-body">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                    the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley
                    of type and scrambled it to make a type specimen book. It has survived not only five centuries,
                    but also the leap into electronic typesetting, remaining essentially unchanged. It was
                    popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
                    and more recently with desktop publishing software like Aldus PageMaker including versions of
                    Lorem Ipsum.
                </p>
            </div>
            <a href="https://packagist.org/packages/vortex-framework/vortex">Packagist</a>
        </div>
        <div class="card">
            <div class="card-header">
                <img src="{content('img/icons/github.png')}" alt="Vortex">
                <span>Github</span>
            </div>
            <div class="card-body">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                    the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley
                    of type and scrambled it to make a type specimen book. It has survived not only five centuries,
                    but also the leap into electronic typesetting, remaining essentially unchanged. It was
                    popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
                    and more recently with desktop publishing software like Aldus PageMaker including versions of
                    Lorem Ipsum.
                </p>
            </div>
            <a href="https://github.com/mex3890/vortex">Github</a>
        </div>
        <div class="card">
            <div class="card-header">
                <img src="{content('img/icons/discord.png')}" alt="Vortex">
                <span>Discord</span>
            </div>
            <div class="card-body">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                    the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley
                    of type and scrambled it to make a type specimen book. It has survived not only five centuries,
                    but also the leap into electronic typesetting, remaining essentially unchanged. It was
                    popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
                    and more recently with desktop publishing software like Aldus PageMaker including versions of
                    Lorem Ipsum.
                </p>
            </div>
            <a href="https://discord.com/channels/1038294975730958456/1038294978201399318">Discord</a>
        </div>
        <div class="card">
            <div class="card-header">
                <img src="{content('img/icons/gear.png')}" alt="Vortex">
                <span>Dependencies</span>
            </div>
            <div class="card-body">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                    the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley
                    of type and scrambled it to make a type specimen book. It has survived not only five centuries,
                    but also the leap into electronic typesetting, remaining essentially unchanged. It was
                    popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
                    and more recently with desktop publishing software like Aldus PageMaker including versions of
                    Lorem Ipsum.
                </p>
            </div>
            <a>Dependencies</a>
        </div>

    </div>
    <div id="footer">
        <span>@Vortex Team Developers</span>
        <ul id="social-media-list">
            <li><img src="{content('img/icons/meta.png')}" alt="Vortex"></li>
            <li><img src="{content('img/icons/instagram.png')}" alt="Vortex"></li>
            <li><img src="{content('img/icons/mail.png')}" alt="Vortex"></li>
            <li><img src="{content('img/icons/twitter.png')}" alt="Vortex"></li>
            <li><img src="{content('img/icons/youtube.png')}" alt="Vortex"></li>
        </ul>
    </div>
</main>
</body>
</html>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

    * {
        font-family: 'Poppins', sans-serif;
    }

    html {
        min-height: 100vh;
        max-width: 100vw;
    }

    body {
        max-width: 100vw;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        padding: 0;
        margin: 0;
        background-color: #494949;
    }

    main {
        max-height: 100%;
    }

    #header{
        display: flex;
        align-items: center;
        align-self: flex-start;
    }

    #header #logo{
        height: 100px;
    }

    #header #title{
        color: #ffffff;
        font-size: 3rem;
    }

    #grid{
        display: grid;
        grid-template-columns: 1fr 1fr;
        width: 80vw;
        gap: 5px;
    }

    #grid .card{
        background: #3b3b3b;
        padding: 20px;
    }

    #grid .card:nth-child(1){
        border-top-left-radius: 15px;
    }

    #grid .card:nth-child(2){
        border-top-right-radius: 15px;
    }

    #grid .card:nth-child(3){
        border-bottom-left-radius: 15px;
    }

    #grid .card:nth-child(4){
        border-bottom-right-radius: 15px;
    }

    #grid .card-header{
        display: flex;
        align-items: center;
        gap: 10px;
    }

    #grid .card-header img{
        height: 25px;
    }

    #grid .card-header span {
        color: #00C2CB;
        font-size: 1.2rem;
        font-weight: 500;
    }

    #grid .card-body p {
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 4;
        display: -webkit-box;
        overflow: hidden;
        color: #6b6b6b;
        font-size: 0.9rem;
    }

    #grid .card a {
        background: #2ca8af;
        padding: 3px 10px;
        border-radius: 1000px;
        font-size: 0.9rem;
        color: rgb(20, 84, 87);
        text-decoration: none;
        transition:all 0.3s ease;
    }

    #grid .card a:hover {
        cursor: pointer;
        color: white;
    }

    #footer {
        display: flex;
        justify-content: space-between;
        padding: 5px 0;
    }

    #footer span {
        color: #2ca8af;
    }

    #footer #social-media-list {
        list-style: none;
        display: flex;
        gap: 5px;
    }

    @media(max-width: 800px) {
        #grid {
            grid-template-columns: 1fr;
        }

        #grid .card{
            border-radius: 15px;
        }

        main {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        #footer {
            margin: 0 10px;
        }
    }
</style>
