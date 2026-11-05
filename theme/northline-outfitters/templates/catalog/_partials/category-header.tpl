{**
 * Northline: a category with a photo shows its title, text and photo as the full-width banner above the
 * columns (catalog/listing/category.tpl), so this header only keeps the subcategories. The filters re-render
 * this file after each change, so the banner is not repeated. Categories without a photo keep the standard header.
 * @author iamshoaibktk@gmail.com  @license AFL-3.0
 *}
{if !empty($category.cover.bySize.category_cover.url)}
  <div id="js-product-list-header">
    {if $listing.pagination.items_shown_from == 1}
      {include file='catalog/_partials/subcategories.tpl' subcategories=$subcategories|default:[]}
    {/if}
  </div>
{else}
  {include file='parent:catalog/_partials/category-header.tpl'}
{/if}
