<script>
  import { stores } from '@sapper/app';
  const { page } = stores();
</script>

<style>
  :global(html) {
    --prime: rgb(21, 151, 148) !important; /* TODO remove .theme-default from shared, so we don't need !important */
  }
  main {
    position: relative;
    margin: 0 auto;
    /* padding: var(--nav-h) var(--side-nav) 0 var(--side-nav); */
    padding: var(--nav-h) 0 0 0;
    overflow-x: hidden;
  }
</style>

<main>
  <slot></slot>
</main>
