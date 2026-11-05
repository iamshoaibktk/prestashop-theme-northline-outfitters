{**
 * Northline product card: photo, name, then the price and the temperature tag on one row, then the colours.
 * Only the inner blocks are replaced, so Hummingbird's cart button block stays as it is and each Theme Kit
 * card style decides how it looks or hides it ("Fabric label" has none). For products with sizes or colours
 * the kit opens quick view from that button so the options are chosen first.
 * @author iamshoaibktk@gmail.com  @license AFL-3.0
 *}
{extends file='parent:catalog/_partials/miniatures/product.tpl'}

{* Colours are shown under the price row instead (see product_reviews). *}
{block name='product_variants'}{/block}

{* Old price before the current one, then the temperature tag at the end of the same row. *}
{block name='product_discount_price'}
  {if $product.has_discount}
    <span class="product-miniature__regular-price" aria-label="{l s='Regular price' d='Shop.Theme.Catalog'}">{$product.regular_price}</span>
  {/if}
  {hook h='displayProductListReviews' product=$product}
{/block}

{block name='product_reviews'}
  {if $product.main_variants}
    <div class="nl-card__colours">
      <span class="product-miniature__variants">{include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}</span>
      <span class="nl-card__count">{if $product.main_variants|count == 1}{l s='1 colour' d='Modules.Hbkit.Shop'}{else}{l s='%count% colours' sprintf=['%count%' => $product.main_variants|count] d='Modules.Hbkit.Shop'}{/if}</span>
    </div>
  {/if}
{/block}
