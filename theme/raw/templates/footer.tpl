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
      <table width="100%" border="0">
  <tr>
    <td><div id="powered-by"><a href="http://knowledgenet.ca/"><img src="{theme_url filename='images/powered_by_knowledgenet.png'}" border="0" alt="Powered by Knowledgenet"></a></div></td>
    <td><div id="powered-by"><a href="http://creativecommons.org/licenses/by-sa/3.0/"><img src="{theme_url filename='images/by-sa-3_0.png'}" border="0" alt="Creative Commons Attribution-Share Alike 3.0 Unported license."><br>Creative Commons Attribution-Share Alike 3.0 Unported license.</a></div></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>

      
      
        
        <!-- This site is powered by Mahara, an Open Source
             ePortfolio system. See http://mahara.org/ for more
             details.
             NOTE: this image and link are a way that you can
             support the Mahara project. Please consider
             displaying them on your site to spread the word! -->
        <!--<div id="footer-nav">
        {foreach from=$FOOTERMENU item=item name=footermenu}
          {if !$.foreach.footermenu.first}<span class="bar-before">{/if}<a href="{$item.url}">{$item.title}</a>{if !$.foreach.footermenu.first}</span>{/if}
        {/foreach}
        </div>-->
        <!-- there is a div id="performance-info" wrapping this -->{mahara_performance_info}
		<div id="version">{mahara_version}</div>
		<div class="cb"></div>
      </div><!-- footer -->
    </div><!-- footer-wrap -->
</div><!-- container -->
{if $ADDITIONALHTMLFOOTER}{$ADDITIONALHTMLFOOTER|safe}{/if}
</body>
</html>
