{foreach from=$comments item=comment name="comments"}
<article id="c{$comment.id}" class="serendipity_comment{if $entry.author == $comment.author} serendipity_comment_author_self{/if} {cycle values="odd,even"} {if $comment.depth > 8}commentlevel-9{else}commentlevel-{$comment.depth}{/if}">
    <h4>{if $comment.url}<a href="{$comment.url}">{/if}{$comment.author|@default:$CONST.ANONYMOUS}{if $comment.url}</a>{/if} {$CONST.ON} <time datetime="{$comment.timestamp|@serendipity_smarty_html5time}" pubdate>{$comment.timestamp|@formatTime:$template_option.date_format}</time>:</h4>
    
    <div class="serendipity_commentBody content">
    {if $comment.body == 'COMMENT_DELETED'}
        {$CONST.COMMENT_IS_DELETED}
    {else}
        {$comment.body}
    {/if}
    </div>
    
    <footer>
        <a class="comment_source_trace" href="#c{$comment.id}">#{$comment.trace}</a>
        <span class="comment_source_author">
    {if $comment.email}
        <a href="mailto:{$comment.email}">{$comment.author|@default:$CONST.ANONYMOUS}</a>
    {else}
        {$comment.author|@default:$CONST.ANONYMOUS}
    {/if}
        </span>
    {if $comment.url}
        (<a class="comment_source_url" href="{$comment.url}" title="{$comment.url|@escape}">{$CONST.HOMEPAGE}</a>)
    {/if}
        {$CONST.ON}
        <span class="comment_source_date">{$comment.timestamp|@formatTime:$CONST.DATE_FORMAT_SHORT}</span>

    {if $entry.is_entry_owner}
        | <a class="comment_source_ownerlink" href="{$comment.link_delete}" title="{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}">{$CONST.DELETE}</a>
    {/if}
    {if $entry.allow_comments AND $comment.body != 'COMMENT_DELETED'}
        | <a class="comment_reply" href="#serendipity_CommentForm" id="serendipity_reply_{$comment.id}"{if $comment_onchange != ''} onclick="{$comment_onchange}"{/if}>{$CONST.REPLY}</a>
        <div id="serendipity_replyform_{$comment.id}"></div>
    {/if}
    </footer>
</article>
{foreachelse}
<p class="serendipity_center nocomments">{$CONST.NO_COMMENTS}</p>
{/foreach}