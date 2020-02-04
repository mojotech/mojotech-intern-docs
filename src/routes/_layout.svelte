<script>
  import { stores } from '@sapper/app';
  const { page } = stores();
</script>

<style>
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
