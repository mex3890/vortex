{extends file="layouts/main.galaxy.tpl"}
{block name=title}Login{/block}
{block name=main_content}
<main id="login">
    <div class="default-form">
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
            <input name="vortex_redirect" type="hidden" value="{$smarty.get.LAST_ROUTE}">
            <button type="submit">LOGIN</button>
        </form>
    </div>
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
{/block}
