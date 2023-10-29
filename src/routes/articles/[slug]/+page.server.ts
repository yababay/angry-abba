import { getArticle } from "@yababay67/svelte-components/server/index.js"
import { REPOSITORY } from "$env/static/private"

export async function load({ params, fetch }){
    const { slug } = params
    const [  html ] = await getArticle(fetch, REPOSITORY, slug)
    return { html }
}
