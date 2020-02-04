<script context="module">
  export async function preload() {
    const sections = await this.fetch(`docs.json`).then(r => r.json());
    return { sections };
  }
</script>

<script>
  import Docs from '@sveltejs/site-kit/components/Docs.svelte'
  export let sections;
</script>

<svelte:head>
  <title>Mojodocs</title>

  <meta name="twitter:title" content="Mojodocs">
  <meta name="twitter:description" content="Usefull docs for mojos">
  <meta name="description" content="Usefull docs for mojos">
</svelte:head>

<Docs {sections} project="sapper"/>
