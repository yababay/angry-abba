<script lang="ts">
    import Header  from '#lib/components/Header.svelte';
	import type { LayoutProps } from './$types';
	import '#lib/styles/body.scss'
	import '#lib/styles/fonts.scss'
	import '#lib/styles/article.scss'
    import Footer from '#lib/components/Footer.svelte';

	let { children }: LayoutProps = $props();
</script>

<svelte:head>
	<title>Angry ABBA</title>
</svelte:head>

<Header />

<section class="container">
	<article>
		{@render children()}
	</article>
</section>

<Footer />
