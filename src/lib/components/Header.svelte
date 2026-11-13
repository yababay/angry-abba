<script lang="ts">
    import { page } from "$app/state";

    const { pathname } = page.url
</script>

<header class="header d-flex flex-column justify-content-between align-items-center pt-1 pb-3">
    <h1>
        <a href={pathname.startsWith('/angry-abba') ? '/angry-abba/' : '/'}>Angry ABBA</a>
    </h1> 
    <p>
        популярные мелодии, драматические тексты
    </p>
</header>

<style lang="scss">

    header h1 {
        font-variant: small-caps;
        height: calc(clamp(7rem,15vh,10rem)*.6);
        line-height: calc(clamp(7rem,15vh,10rem)*.6);
        font-size: clamp(2.5rem,clamp(7rem,15vh,10rem) * .6 / 1.2,4.1rem) !important;
        font-family: TitleFont;
        letter-spacing: .5rem;
    }

    header p {
        height: calc(clamp(7rem,15vh,10rem) - (clamp(7rem,15vh,10rem)*.78));
        line-height: calc(clamp(7rem,15vh,10rem) - (clamp(7rem,15vh,10rem)*.78));
        font-size: clamp(1rem,(clamp(7rem,15vh,10rem) - clamp(7rem,15vh,10rem) * .6 * 1.3) / 1.2,1.3rem) !important;
        font-family: SubtitleFont;
        font-variant: small-caps;
        letter-spacing: .5rem;
    }

    header h1 a, header p {
        text-decoration: none;
        color: #6495ed !important;
    }
</style>