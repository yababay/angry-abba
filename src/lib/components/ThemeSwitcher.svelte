<script lang="ts">
    export let label: string = 'Светлая тема'
</script>

<div class="form-check form-switch theme-switch-holder">
    <button type="button" class="btn btn-dark btn-sm" id="theme-switcher">{label}</button>
    <!-- input class="form-check-input" type="checkbox" role="switch" id="theme-switcher" checked>
    <label class="form-check-label" for="theme-switcher">{label}</label -->
</div>
  
<style lang="scss">
    .theme-switch-holder {
        position: absolute;
        top: 1rem;
        right: 1rem;
        button {
            color: darkgrey;
        }
    }
</style>

<svelte:head>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const PRETTY_BG = 'pretty-background'
            const themeSwitcher = document.getElementById('theme-switcher')

            const hideAiBg = () => {
                console.log('bg')
                document.body.style.backgroundImage = 'url(/abbushka.png)'
                themeSwitcher.closest('.theme-switch-holder').classList.add('d-none')
                localStorage.setItem(PRETTY_BG, '1')
            }

            if(localStorage.getItem(PRETTY_BG) === '1') {hideAiBg(); return}
            themeSwitcher.checked = false
            themeSwitcher.addEventListener('click', hideAiBg)
        })
    </script>
</svelte:head>
