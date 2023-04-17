<script>
    import {slike } from './slike'    

</script>

<h1>Welcome to SvelteKit</h1>
<p>Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation</p>

{#each slike as slika}
    <a href="{slika.split(".")[0]}.jpg">
        <img src={`${slika}`} alt="slika iz maturantskega izleta z imenom {slika}, katera je na tem strezniku LP webmaster."/>

    </a>
{/each}
