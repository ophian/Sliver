{serendipity_hookPlugin hook="entries_header"}

<div class="article clearfix">
    <h2>{$CONST.TOPICS_OF} {$dateRange.0|formatTime:"%B %Y"}</h2>

    <p><a href="{$serendipityHTTPPath}archive">&larr; {$CONST.ARCHIVE_TEXT_SUMMARY}</a></p>

    <dl class="entries-list">
{foreach $entries AS $sentries}
  {foreach $sentries.entries AS $entry}
   <dt id="easeout"><a href="{$entry.link}" rel="bookmark">{$entry.title}</a></dt>
   <dd><span title="{$entry.timestamp|formatTime:'%A, %d. %B %Y'} {$CONST.AT} {$entry.timestamp|formatTime:'%H:%M'}">{$entry.timestamp|formatTime:'%d.%m.%y'}</span></dd>
  {/foreach}
{/foreach}
  </dl>
</div>

<article class="archive-summary">
    <h3>{if $category}{$category_info.category_name} - {/if}{$entry_count} {$CONST.TOPICS_OF} {$dateRange.0|formatTime:"%B, %Y"}</h3>
    <div class="archives_summary">
    {foreach $entries AS $sentries}
        {foreach $sentries.entries AS $entry}
            {if $entry.body || $entry.extended || $entry.properties.timeline_image}
                <div class="row each-archive-entry">

                        <div class="col-md-2 archive-post-thumb">
                            {if !$entry.properties.timeline_image}{* |is_in_string:'<iframe,<embed,<object' we assume this is a video, just emit the contents of the var *}
                                <div>{$entry.properties.timeline_image}</div>
                            {else}
                                <a href="{$entry.link}" title="{$entry.title}"><img class="img-thumbnail" {if $entry.properties.timeline_image}src="{$entry.properties.timeline_image}"{else}src="{serendipity_getFile file='img/image_unavailable.jpg'}"{/if} alt=""/></a>
                            {/if}
                        </div>
                        <div class="col-md-10 archive-post-body">
                            <h4><a href="{$entry.link}">{$entry.title}</a></h4>
                            <p class="post-info"><span class="sr-only">{$CONST.POSTED_BY}</span> <a href="{$entry.link_author}">{$entry.author}</a>
                                <span class="sr-only"> {$CONST.ON} </span><span class="entry-timestamp"><i class="fa fa-clock-o" aria-hidden="true"></i><time datetime="{$entry.timestamp|serendipity_html5time}">{$entry.timestamp|formatTime:$template_option.date_format}</time></span>
                            </p>
                            {if $entry.body}
                                {$entry.body|strip_tags|truncate:180:" ..."}
                            {else}
                                {$entry.extended|strip_tags|truncate:180:" ..."}
                            {/if}
                        </div>

                </div>
                <hr>
            {/if}
        {/foreach}
    {/foreach}
    </div>
</article>

{serendipity_hookPlugin hook="entries_footer"}
