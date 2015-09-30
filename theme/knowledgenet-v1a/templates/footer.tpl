{if $SUBPAGENAV}
                        </div><!--end subpage rel-->
{/if}
                    </div><!-- end main-column-container -->
                    <div class="cl"></div>
                </div><!-- end main-column -->
{if $SIDEBARS && $SIDEBLOCKS.right}
                <div id="right-column" class="sidebar">
{include file="sidebar.tpl" blocks=$SIDEBLOCKS.right}
                </div>
{/if}
{if $SIDEBARS && $SIDEBLOCKS.left}
                <div id="left-column" class="sidebar">
{include file="sidebar.tpl" blocks=$SIDEBLOCKS.left}
                </div>
{/if}
				<div class="cb"></div>
        </div><!-- main-wrapper -->
    </div><!-- mainmiddle -->
    </div><!-- mainmiddlewrap -->
    <div id="footer-wrap" {if $editing == true}class="editcontent"{/if}>
      <div id="footer">
        <div id="powered-by"><a href="http://icampus21.com">
        <!--<img src="{theme_url filename='images/powered_by_mahara.png'}" border="0" alt="Powered by iCampus21">-->
        <img src="http://icampus21.com/sites/default/files/iCampus21_logo_small.png" border="0" width="75" height="37" alt="Powered by iCampus21">
        </a></div>
        <!-- This site is powered by Mahara, an Open Source
             ePortfolio system. See http://mahara.org/ for more
             details.
             NOTE: this image and link are a way that you can
             support the Mahara project. Please consider
             displaying them on your site to spread the word! -->
        <div id="footer-nav">
        {foreach from=$FOOTERMENU item=item name=footermenu}
          {if !$.foreach.footermenu.first}<span class="bar-before">{/if}<a href="{$item.url}">{$item.title}</a>{if !$.foreach.footermenu.first}</span>{/if}
        {/foreach}
        </div>
        <!-- there is a div id="performance-info" wrapping this -->{mahara_performance_info}
		<div id="version">{mahara_version}</div>
		<div class="cb"></div>
      </div><!-- footer -->
    </div><!-- footer-wrap -->
</div><!-- container -->
{if $ADDITIONALHTMLFOOTER}{$ADDITIONALHTMLFOOTER|safe}{/if}


<!---Image map V1--->
 <?php
    $display_map = $_SERVER["HTTP_HOST"].'/';
    $not_display_map = $_SERVER["HTTP_HOST"] . $_SERVER["REQUEST_URI"];
       if ($display_map == $not_display_map  ) {
?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="https://www.knowledgenet.ca/theme/knowledgenet-v1a/templates/imagemapster/jquery.imagemapster.js"></script>



<script>
$(document).ready(function ()
{
	$('#map2').mapster({
	singleSelect : true,
	render_highlight : { altImage : 'https://www.knowledgenet.ca/theme/knowledgenet-v1a/static/images/knowledge-net-factory2.gif' },
    mapKey: 'color',
	fill : true, altImage : 'https://www.knowledgenet.ca/theme/knowledgenet-v1a/static/images/knowledge-net-factory3.png',
	fillOpacity : 0.8,
	stroke : false,
	strokeColor : 'ff0000',
	strokeWidth : 1,
    clickNavigate : true,


});
});
</script>

<script>


var resizeTime = 100;     // total duration of the resize effect, 0 is instant
var resizeDelay = 100;    // time to wait before checking the window size again
                          // the shorter the time, the more reactive it will be.
                          // short or 0 times could cause problems with old browsers.
                          
$('img').mapster({
    mapKey: 'state'
});

// Resize the map to fit within the boundaries provided

function resize(maxWidth,maxHeight) {
     var image =  $('img'),
        imgWidth = image.width(),
        imgHeight = image.height(),
        newWidth=0,
        newHeight=0;

    if (imgWidth/maxWidth>imgHeight/maxHeight) {
        newWidth = maxWidth;
    } else {
        newHeight = maxHeight;
    }
    image.mapster('resize',newWidth,newHeight,resizeTime);   
}

// Track window resizing events, but only actually call the map resize when the
// window isn't being resized any more

function onWindowResize() {
    
    var curWidth = $(window).width(),
        curHeight = $(window).height(),
        checking=false;
    if (checking) {
        return;
            }
    checking = true;
    window.setTimeout(function() {
        var newWidth = $(window).width(),
           newHeight = $(window).height();
        if (newWidth === curWidth &&
            newHeight === curHeight) {
            resize(newWidth,newHeight); 
        }
        checking=false;
    },resizeDelay );
}

$(window).bind('resize',onWindowResize);



</script>
<?php } ?>


</body>
</html>
