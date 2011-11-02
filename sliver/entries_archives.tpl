{* foreach from=$archives item="archive"}
    <div class="archive-year">
        <h3>{$archive.year}</h3>
        {serendipity_fetchPrintEntries range="$archive.year" full=false fetchDrafts=false noSticky=true}
    </div>
{/foreach *}
{serendipity_hookPlugin hook="entries_header"}

<div id="blog-archive">
  <h1>{$CONST.ARCHIVES}</h1>

  <p>{$CONST.ARCHIVE_TEXT_INTRO}</p>

  <p>{$CONST.ARCHIVE_TEXT_ADD|@sprintf:$serendipityHTTPPath}</p>

  <div id="bycats" class="clearfix">
  {serendipity_showPlugin class="serendipity_categories_plugin"}
  </div>
  <div id="bytags" class="clearfix">
  {serendipity_showPlugin class="serendipity_plugin_freetag"}
  </div>

  <div id="bydate" class="clearfix">
    <h2>{$CONST.DATE}</h2>
    <p>{$CONST.ARCHIVE_TEXT_YEARMONTH}</p>
    
  {foreach from=$archives item="archive"}
    <div class="archive-year {cycle name="blah" values="left,center,right"}">
    <h3>{$archive.year}</h3>

    <dl>
    {foreach from=$archive.months item="month"}
       {if $month.entry_count > 0}
       <dt>{if $month.entry_count != '0'}<a href="{$month.link_summary}">{/if}{$month.date|@formatTime:"%B"}{if $month.entry_count != '0'}</a>{/if}: </dt>
       <dd>{$month.entry_count} {$CONST.ENTRIES}</dd>
       {/if}
    {/foreach}
    
    </dl>
    
    </div>
  {/foreach}
    
  </div>
  
</div>

{serendipity_hookPlugin hook="entries_footer"}

