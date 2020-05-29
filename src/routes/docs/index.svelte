<script context="module">
  export async function preload() {
    const sections = await this.fetch(`docs.json`).then(r => r.json());
    return { sections };
  }
</script>

<script>
  import Docs from '@sveltejs/site-kit/components/Docs.svelte'
  import Icons from '@sveltejs/site-kit/components/Icons.svelte'
  export let sections;
</script>

<svelte:head>
  <title>Mojodocs</title>

  <meta name="twitter:title" content="Mojodocs">
  <meta name="twitter:description" content="Usefull docs for mojos">
  <meta name="description" content="Usefull docs for mojos">
</svelte:head>

<Icons />

<Docs {sections} owner="mojotech" project="mojotech-intern-docs" path="/content" />
