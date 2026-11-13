<script lang="ts">
    let { src, caption } = $props()
</script>

<figure>
    <img {src} alt={caption} />
    <figcaption>{caption}</figcaption>
</figure>

<style lang="scss">

    $figure-padding: .5rem;
    $figure-max-width: 78ch;

    figure,  img {
        margin: 0;
        display: block;
    }
    
    figure {
        margin-block: $figure-padding;
        box-sizing: border-box;
        border: 1px #222 solid;
        max-width: $figure-max-width;
    }

    img {
        margin: $figure-padding;
        width: 100%;
        max-width: calc($figure-max-width - 2 * $figure-padding);
        height: auto;
    }

    figcaption {
        padding: 0;
        margin: 0 0 $figure-padding $figure-padding;
        color: #777;
        font-size: small;
    }    
</style>