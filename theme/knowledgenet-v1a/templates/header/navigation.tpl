
{if $MAINNAV}
        <div id="main-nav" class="{if $ADMIN || $INSTITUTIONALADMIN || $STAFF || $INSTITUTIONALSTAFF}{if $DROPDOWNMENU}dropdown-adminnav {else}adminnav {/if}{/if}main-nav">
            <h3 class="rd-nav-title"><a href="#">{if $ADMIN || $INSTITUTIONALADMIN || $STAFF || $INSTITUTIONALSTAFF}{str tag=admin} {/if}{str tag=menu}<span class="rd-arrow"></span></a></h3>
 <!--- ---> 
<div id="nav-container">
    <div id="nav-container-left">
 
            <ul id="{if $DROPDOWNMENU}dropdown-nav{else}nav{/if}">
{strip}
{foreach from=$MAINNAV item=item}
                <li class="{if $item.path}{$item.path}{else}dashboard{/if}{if $item.selected} selected{/if}{if $DROPDOWNMENU} dropdown-nav-home{/if}"><span><a href="{$WWWROOT}{$item.url}"{if $item.accesskey} accesskey="{$item.accesskey}"{/if} class="{if $item.path}{$item.path}{else}dashboard{/if}">{if $item.accessibletitle && !$DROPDOWNMENU}<span aria-hidden="true" role="presentation">{/if}{$item.title}{if $item.accessibletitle && !$DROPDOWNMENU}</span> <span class="accessible-hidden">({$item.accessibletitle})</span>{/if}{if $DROPDOWNMENU && $item.submenu} <span class="accessible-hidden">({str tag=dropdownmenu})</span>{/if}</a></span>
{if $item.submenu}
                    <ul class="{if $DROPDOWNMENU}dropdown-sub {/if}rd-subnav">
{strip}
{foreach from=$item.submenu item=subitem}
                        <li class="{if $subitem.selected}selected {/if}{if $subitem.submenu}has-sub {/if}"><span>
                            <a href="{$WWWROOT}{$subitem.url}"{if $subitem.accesskey} accesskey="{$subitem.accesskey}"{/if}>{$subitem.title}</a>
                        </span>
                        {if $subitem.submenu}
                            <ul class="dropdown-tertiary">
                            {foreach from=$subitem.submenu item=tertiaryitem}
                                <li{if $tertiaryitem.selected} class="selected"{/if}><span>
                                    <a href="{$WWWROOT}{$tertiaryitem.url}"{if $tertiaryitem.accesskey} accesskey="{$tertiaryitem.accesskey}"{/if}>{$tertiaryitem.title}</a>
                                </span></li>
                            {/foreach}
                            </ul>
                        {/if}
                        </li>
{/foreach}
{/strip}
                     <div class="cl"></div>
                    </ul>
{/if}
                </li>
{/foreach}
<!--- ---> 


            </ul>
    </div> <!---END id="nav-container-left"--->
    <div id="nav-container-center">
                <!--{if !$nosearch && ($LOGGEDIN || $publicsearchallowed)} {header_search_form}{/if} -->
                {if !$nosearch && !$ADMIN } {header_search_form}{/if}
    </div><!---END id="nav-container-center"---> 
    <div id="nav-container-right"> 
                    {if $ADMIN || $INSTITUTIONALADMIN || $STAFF || $INSTITUTIONALSTAFF}
                        <li style="border:0px solid red;" class="returntosite"><span><a href="{$WWWROOT}" accesskey="h" class="return-site">{str tag="returntosite"}</a></span> </li>
        {elseif $USER->get('admin')}
                        <li class="dashboard"><a class="dashboard" href="/">Dashboard</a></li>
                        <li style="border:0px solid magenta;" class="siteadmin"><span><a href="{$WWWROOT}admin/" accesskey="a" class="admin-site">{str tag="administration"}</a></span></li>
        {elseif $USER->is_institutional_admin()}
                        <li class="instituteadmin"><span><a href="{$WWWROOT}admin/users/search.php" accesskey="a" class="admin-user">{str tag="administration"}</a></span></li>
        {elseif $USER->get('staff')}
                        <li class="siteinfo"><span><a href="{$WWWROOT}admin/users/search.php" accesskey="a" class="admin-user">{str tag="siteinformation"}</a></span></li>
        {elseif $USER->is_institutional_staff()}
                        <li class="instituteinfo"><span><a href="{$WWWROOT}admin/users/search.php" accesskey="a" class="admin-user">{str tag="institutioninformation"}</a></span></li>
        {elseif $USER}
                        <li class="dashboard"><a class="dashboard" href="/">Dashboard</a></li>
        {/if}

    
    </div><!---END id="nav-container-right" ---> 
</div> <!---END id="nav-container"--->   
            
            
</div> <!---END id="main-nav"--->
<div style="clear:both;"></div>      
<!--- --->           
        
{if $DROPDOWNMENU}
{else}
        <div id="sub-nav" style="border:0px solid magenta;">
{if $SELECTEDSUBNAV}
            <ul>{strip}
{foreach from=$SELECTEDSUBNAV item=item}
               <li{if $item.selected} class="selected"{/if}><span><a href="{$WWWROOT}{$item.url}"{if $item.accesskey} accesskey="{$item.accesskey}"{/if}>{$item.title}</a></span>
               {if $item.submenu && $item.selected}
               {assign var=tertiarymenu value=$item.submenu}
               {/if}
               </li>
{/foreach}
            {/strip}</ul>
{/if}
            <div class="cb"></div>
            </div>
            {if $tertiarymenu}
                <div id="tertiary-nav">
                   <ul>{strip}
                   {foreach from=$tertiarymenu item=tertiaryitem}
                       <li{if $tertiaryitem.selected} class="selected"{/if}><span>
                           <a href="{$WWWROOT}{$tertiaryitem.url}"{if $tertiaryitem.accesskey} accesskey="{$tertiaryitem.accesskey}"{/if}>{$tertiaryitem.title}</a>
                       </span></li>
                   {/foreach}
                   {/strip}</ul>
            <div class="cb"></div>
            </div>
           {/if}
{/if}
{/if}

    