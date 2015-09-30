<head>
    <meta name="generator" content="Mahara {$SERIES} (https://mahara.org)" />
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=8; IE=9; IE=10" />
    <meta property="og:title" content="{$PAGETITLE}" />
    <meta property="og:description" content="{$sitedescription4facebook}" />
    <meta property="og:image" content="{$sitelogo4facebook}" />
    {if isset($PAGEAUTHOR)}<meta name="author" content="{$PAGEAUTHOR}">{/if}
    <title>{$PAGETITLE}</title>
    <script type="application/javascript">
    var config = {literal}{{/literal}
        'theme': {$THEMELIST|safe},
        'sesskey' : '{$SESSKEY}',
        'wwwroot': '{$WWWROOT}',
        'loggedin': {$USER->is_logged_in()|intval},
        'userid': {$USER->get('id')},
        'mobile': {if $MOBILE}1{else}0{/if},
        'handheld_device': {if $HANDHELD_DEVICE}1{else}0{/if},
        'cc_enabled': {$CC_ENABLED|intval}
    {literal}}{/literal};
    </script> 
    {$STRINGJS|safe}
{foreach from=$JAVASCRIPT item=script}
    <script type="application/javascript" src="{$script}"></script>
{/foreach}
{foreach from=$HEADERS item=header}
    {$header|safe}
{/foreach}
{if isset($INLINEJAVASCRIPT)}
    <script type="application/javascript">
{$INLINEJAVASCRIPT|safe}
    </script>
{/if}
{foreach from=$STYLESHEETLIST item=cssurl}
    <link rel="stylesheet" type="text/css" href="{$cssurl}">
{/foreach}
    <link rel="stylesheet" type="text/css" href="{theme_url filename='style/print.css'}?v={$CACHEVERSION}" media="print">
    <script type="application/javascript" src="{$WWWROOT}js/css.js?v={$CACHEVERSION}"></script>
    <link rel="shortcut icon" href="{$WWWROOT}favicon.ico?v={$CACHEVERSION}" type="image/vnd.microsoft.icon">
    <link rel="image_src" href="{$sitelogo}">
  <!-- Responsive design -->
        <script type="application/javascript" src="{$WWWROOT}js/rd-nav.js?v={$CACHEVERSION}"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
{if $ADDITIONALHTMLHEAD}{$ADDITIONALHTMLHEAD|safe}{/if}
{if $COOKIECONSENTCODE}{$COOKIECONSENTCODE|safe}{/if}

<!--Custom Menu-->
<link rel="stylesheet" href="/theme/knowledgenet-v1/megamenu/css/mgmenu.css" type="text/css" media="screen" />
<link rel="stylesheet" href="/theme/knowledgenet-v1/megamenu/css/custom-mgmenu.css" type="text/css" media="screen" />

<!--<script type="application/javascript" src="/theme/knowledgenet-v1/megamenu/js/jquery.js"></script> --jQuery -->  
<script type="application/javascript" src="/theme/knowledgenet-v1/megamenu/js/mgmenu_plugins.js"></script><!-- Mega Menu Plugins -->
<script type="application/javascript" src="/theme/knowledgenet-v1/megamenu/js/mgmenu.js"></script><!-- Mega Menu Script -->

<script>
$(document).ready(function($){
    $('#mgmenu1').universalMegaMenu({
        menu_effect: 'hover_slide',
        menu_speed_show: 300,
        menu_speed_hide: 200,
        menu_speed_delay: 200,
        menu_click_outside: true,
        menubar_trigger : false,
        menubar_hide : false,
        menu_responsive: true
    });
});
</script>
<!--END Custom Menu-->
<link rel="stylesheet" type="text/css" href="{$WWWROOT}theme/knowledgenet-v1/custom.css">



</head>
{dynamic}{flush}{/dynamic}
