<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8 ]><html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} lang="{$LANGUAGE}" class="ie ie8"><![endif]-->
<!--[if IE 9 ]><html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} lang="{$LANGUAGE}" class="ie ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} lang="{$LANGUAGE}"><!--<![endif]-->



{include file="header/head.tpl"}
<body class="no-js">
{if $ADDITIONALHTMLTOPOFBODY}{$ADDITIONALHTMLTOPOFBODY|safe}{/if}
{if $USERMASQUERADING || !$PRODUCTIONMODE || $SITECLOSED || $SITETOP}<div class="sitemessages">{/if}
    {if $USERMASQUERADING}<div class="sitemessage"><img src="{theme_url filename='images/failure.png'}" alt="">{$masqueradedetails} {$becomeyouagain|safe}</div>{/if}
    {if !$PRODUCTIONMODE}<div class="sitemessage center">{str tag=notproductionsite section=error}</div>{/if}
    {if $SITECLOSED}<div class="sitemessage center">{if $SITECLOSED == 'logindisabled'}{str tag=siteclosedlogindisabled section=mahara arg1="`$WWWROOT`admin/upgrade.php"}{else}{str tag=siteclosed}{/if}</div>{/if}
    {if $SITETOP}<div id="switchwrap">{$SITETOP|safe}</div>{/if}
{if $USERMASQUERADING || !$PRODUCTIONMODE || $SITECLOSED || $SITETOP}</div>{/if}
<div id="container">
    <div class="center"><a class="skiplink" href="#mainmiddle">{str tag=skipmenu}</a></div>
    <div id="loading-box"></div>


<div class="top-container">
    <div class="top-container-left"><a href="{$WWWROOT}"><img src="/theme/knowledgenet-v2/static/images/knowledgenet-logo.png" alt="{$sitename}"></a></div>
        
    <div>
        <div class="top-container-right"> {include file="header/topright.tpl"}</div>         
    </div>

    
</div>    
<div class="cb"></div>
            
    <div id="top-wrapper">
{include file="header/navigation.tpl"}
        <div class="cb"></div>
    </div>

    <div id="mainmiddlewrap">
        <div id="mainmiddle">
            <div id="{if $SIDEBARS}{if $SIDEBLOCKS.right}main-wrapper-narrow-right{else}main-wrapper-narrow-left{/if}{else}main-wrapper{/if}">
                    <div id="main-column" class="main-column{if $SIDEBARS} main-column-narrow{/if}{if $selected == 'content'} editcontent{/if}">
                        <div id="main-column-container" style="border:0px solid silver;">
                        
<!---Imagemap START-->

 <?php
    $display_map = $_SERVER["HTTP_HOST"].'/';
    $not_display_map = $_SERVER["HTTP_HOST"] . $_SERVER["REQUEST_URI"];
        if ($display_map == $not_display_map  ) {
       ?>
      

<div style="width:100%; display:block; margin:0 auto; border:0px solid magenta;">
    <img id="map2"  style="width:100%; height:100%; display:block; margin:0 auto; " src="{$WWWROOT}theme/knowledgenet-v2/static/images/knowledge-net-factory.png" alt="Knowledgenet" usemap="#map2">

<map name="map2">
    <area color="blue" shape="rect" alt="Share Ideas" title="Share Ideas" coords="34,50,168,198" href="/view/sharedviews.php" target="_self"  />
    <area color="red" shape="rect" alt="Idea Builds" title="Idea Builds" coords="176,133,320,287" href="/view/index.php" target="_self" />
    <area color="orange" shape="rect" alt="Knowledge Team" title="Knowledge Team" coords="353,41,552,110" href="/group/mygroups.php" target="_self" />
    <area color="purple" shape="rect" alt="Wonderings" title="Wonderings" coords="453,121,589,287" href="/interaction/forum/view.php?id=1" target="_self" />
    <area color="green" shape="rect" alt="Start Here" title="Start Here" coords="628,151,755,258" href="http://knowledgenet.ca/moodle/mod/feedback/complete_guest.php?id=1&courseid&gopage=0" target="_blank" />
    
</map>
</div>
<?php } ?>

<!---Imagemap END-->                    





                    
                            {dynamic}{insert_messages}{/dynamic}
{if isset($PAGEHEADING)}<h1>{$PAGEHEADING}{if $PAGEHELPNAME}<span class="page-help-icon">{$PAGEHELPICON|safe}</span>{/if}</h1>
{/if}


{if $SUBPAGENAV}
  {if $SUBPAGETOP}{include file=$SUBPAGETOP}{/if}

  

{* Tabs and beginning of page container for group info pages *}
            <div class="tabswrap">
                <h3 class="rd-tab-title"><a href="#">{str tag=tabs}<span class="rd-tab"></span></a></h3>
                <ul class="in-page-tabs">
{foreach from=$SUBPAGENAV item=item}
                    <li {if $item.selected}class="current-tab"{/if}><a {if $item.tooltip}title="{$item.tooltip}" {/if}{if $item.selected}class="current-tab" {/if}href="{$WWWROOT}{$item.url}">{$item.title}<span class="accessible-hidden">({str tag=tab}{if $item.selected} {str tag=selected}{/if})</span></a></li>
{/foreach}
                </ul>
              </div>
              <div class="subpage">
{/if}
