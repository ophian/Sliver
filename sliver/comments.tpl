<ul class="comment-list">
{foreach $comments AS $comment}
    {if $comment@first}{assign var="prevdepth" value=$comment.depth}{/if}
    {if ($comment.depth == $prevdepth) && !$comment@first}

        </li>
    {elseif $comment.depth < $prevdepth}
        {for $i=1 to $prevdepth-$comment.depth}

            </li></ul>
        {/for}

        </li>
    {elseif $comment.depth > $prevdepth}

        <ul class="comment-children">
    {/if}

    <li id="comment-{$comment.id}" class="comment-list-item">
        <a id="c{$comment.id}"></a>
        <div id="div-comment-{$comment.id}" class="serendipity_comment{cycle values=" odd, even"} comment_author_{$comment.author|makeFilename}{if ( ($entry.author == $comment.author) AND ($entry.email == $commentform_entry.email) ) OR ( ($comment.entry_author_realname == $comment.author) AND ($comment.entry_author_email == $comment.clear_email) )} serendipity_comment_author_self{/if}">
            {if $comment.avatar}{$comment.avatar}{/if}

            <div class="comment-list-item-body">
                <h5 class="comment-author-heading">
                    <span class="comment-author-details">
                        {if $comment.url}

                            <a class="comment-author-url" href="{$comment.url}" title="{$comment.url|escape}" rel="external nofollow">{$comment.author|default:$CONST.ANONYMOUS}</a>
                        {else}

                            {$comment.author|default:$CONST.ANONYMOUS}
                        {/if}

                    </span>
                    <time class="comment-date" datetime="{$comment.timestamp|serendipity_html5time}">{if $template_option.comment_time_format == 'time'}{$comment.timestamp|formatTime:'%b %e. %Y'} {$CONST.AT} {$comment.timestamp|formatTime:'%I:%M %p'}{/if}</time>
                </h5>
                <div class="comment-content{if $comment.type == 'PINGBACK'} ping{/if}">
                    {if $comment.body == 'COMMENT_DELETED'}

                        {$CONST.COMMENT_IS_DELETED}
                    {else}

                        {if $comment.type == 'TRACKBACK'}{$comment.body|strip_tags:false} [&hellip;]{else}{if $comment.type == 'PINGBACK'}[PingBack]{else}{$comment.body}{/if}{/if}
                    {/if}

                </div>
                <div class="comment-meta">
                {if $smarty.get.serendipity.action != 'comments'}

                    <a class="comment-source-trace btn btn-sm btn-default" href="{$comment.url|escape:'htmlall'}#c{$comment.id}">#{$comment.trace}</a>
                {/if}
                {if $entry.is_entry_owner}

                    <a class="comment-source-ownerlink comment-reply-link btn btn-sm btn-default" href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|sprintf:$comment.id:$comment.author}');" title="{$CONST.DELETE}"><i class="fa fa-lg fa-trash-o"></i><span class="sr-only"> {$CONST.DELETE}</span></a>
                {/if}
                {if $entry.allow_comments AND $comment.body != 'COMMENT_DELETED'}

                    <a class="comment-reply-link btn btn-sm btn-default" href="#serendipity_CommentForm" id="serendipity_reply_{$comment.id}" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}'; {$comment_onchange}" title="{$CONST.REPLY}"><i class="fa fa-lg fa-reply"></i><span class="sr-only"> {$CONST.REPLY}</span></a>
                    <div id="serendipity_replyform_{$comment.id}"></div>
                {/if}

                </div>
            </div>
        </div>
    {if $comment@last}
        {if $comment.depth>0}
            {for $i=1 to $comment.depth}

                </li></ul>
            {/for}
        {/if}

        </li>
    {/if}
    {assign var="prevdepth" value=$comment.depth}
{foreachelse}

    <li class="serendipity_center nocomments">{$CONST.NO_COMMENTS}</li>
{/foreach}

</ul>
