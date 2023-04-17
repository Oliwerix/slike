<script>
    import {slike } from './slike'    

</script>
<style>
    img {
        width: 100px;
    }
</style>
<h1>Slike maturantskega plesa GIMB 2023</h1>

{#each slike as slika}
    <a href="{slika.split(".")[0]}.jpg">
        <img src={`${slika}`} loading="lazy" alt="slika iz maturantskega izleta z imenom {slika}, katera je na tem strezniku LP webmaster."/>

    </a>
{/each}
