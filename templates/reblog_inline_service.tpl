{strip}
{if ($smarty.const.ACTIVE_PACKAGE != 'blogs' || $smarty.const.ACTIVE_PACKAGE != 'reblog') && ( $aPost.feed_id || $post_info.feed_id )}
	{if $post_info }
		{assign var=aPost value=$post_info}
	{/if}
	<div class="reblog_source date">
		{tr}<a href="{$smarty.const.REBLOG_PKG_URL}">Reblogged</a> from{/tr} <a href="{$aPost.item_link}">{$aPost.feed_name}</a>
		<br />
		{if $aPost.item_author}
			{tr}Originally authored by{/tr} <strong>{$aPost.item_author}</strong>
		{/if}
	</div>
{/if}
{/strip}