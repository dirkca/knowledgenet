{if $status}
<div class="pagestatusblock panel-body">
    <div class="{if $status == get_string('notset', 'blocktype.pagestatus')}notset{/if}{if $status == get_string('inprogress', 'blocktype.pagestatus')}inprogress{/if}{if $status == get_string('needhelp', 'blocktype.pagestatus')}needhelp{/if}{if $status == get_string('ready', 'blocktype.pagestatus')}ready{/if}">
    {$status|clean_html|safe}
    </div>
</div>
{/if}