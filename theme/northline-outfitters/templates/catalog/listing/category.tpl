{**
 * Northline: the category title, text and photo as a full-width banner with the breadcrumb inside it,
 * above the filters and products. Categories without a photo keep the standard header.
 * @author iamshoaibktk@gmail.com  @license AFL-3.0
 *}
{extends file='parent:catalog/listing/category.tpl'}

{block name='breadcrumb'}
  {if !empty($category.cover.bySize.category_cover.url) && $listing.pagination.items_shown_from == 1}
    <header class="nl-catban">
      <picture class="nl-catban__media">
        {if isset($category.cover.bySize.category_cover_2x.url)}<source media="(min-width: 1000px)" srcset="{$category.cover.bySize.category_cover_2x.url}">{/if}
        <img src="{$category.cover.bySize.category_cover.url}" alt="" width="{$category.cover.bySize.category_cover.width}" height="{$category.cover.bySize.category_cover.height}" fetchpriority="high">
      </picture>
      <div class="container nl-catban__in">
        {include file='_partials/breadcrumb.tpl'}
        <h1 class="nl-catban__title">{$category.name}</h1>
        {if $category.description}<div class="nl-catban__text rich-text">{$category.description nofilter}</div>{/if}
      </div>
    </header>
  {else}
    {$smarty.block.parent}
  {/if}
{/block}
