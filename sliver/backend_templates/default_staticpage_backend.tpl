
<script type="text/javascript">
    var img_plus = '{serendipity_getFile file="img/plus.png"}';
    var img_minus = '{serendipity_getFile file="img/minus.png"}';
</script>

<script type="text/javascript" language="JavaScript" src="{serendipity_getFile file="js/plugins.js}"></script>

<div id="backend_sp_simple" class="default_staticpage">

    <div class="default_staticpage_main">
        <!-- LEFT -->

        <fieldset class="sect_basic">
            <legend>{$CONST.STATICPAGE_SECTION_BASIC}</legend>
            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="headline" what="desc"|escape:js}">{staticpage_input item="headline" what="name"|escape:js}</label>
                    {staticpage_input item="headline"}
            </div>

            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="articleformattitle" what="desc"|escape:js}">{staticpage_input item="articleformattitle" what="name"|escape:js}</label>
                    {staticpage_input item="articleformattitle"}
            </div>

            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="content" what="desc"|escape:js}">{staticpage_input item="content" what="name"|escape:js}</label>
                    {staticpage_input item="content"}
            </div>
 {* adding META elements hack start: 2011-09-29 *}
            <div class="sp_sect">
                Show optional Meta field entries
                <p id="sp_toggle_optionall"><a style="border:0; text-decoration: none;" href="#" onClick="showConfig('el1'); return false" title="{$CONST.TOGGLE_OPTION}"><img src="{serendipity_getFile file="img/plus.png"}" id="optionel1" alt="+/-" border="0">&nbsp;{$CONST.TOGGLE_ALL}</a></p>
            </div>

            <div id="el1">
              <div class="sp_sect">
                <label class="sp_label" title="Custom Title Element">HTML page title element (optional)</label>
                    <input class="input_textbox" type="text" name="serendipity[plugin][custom][title_element]" value="{$form_values.custom.title_element|@default:''}">
              </div>

              <div class="sp_sect">
                <label class="sp_label" title="Custom META Description">META Description (optional)</label>
                    <input class="input_textbox" type="text" name="serendipity[plugin][custom][meta_description]" value="{$form_values.custom.meta_description|@default:''}">
              </div>

              <div class="sp_sect">
                <label class="sp_label" title="Custom META Keywords">META Keywords (optional)</label>
                    <input class="input_textbox" type="text" name="serendipity[plugin][custom][meta_keywords]" value="{$form_values.custom.meta_keywords|@default:''}">
              </div>
            </div>
            <script type="text/javascript" language="JavaScript">document.getElementById("el1").style.display = "none";</script>
{* adding META elements hack end: 2011-09-29 *}
       </fieldset>

        <fieldset class="sect_struct">
            <legend>{$CONST.STATICPAGE_SECTION_STRUCT}</legend>
            <div class="sp_sect">
                Show Structural field options
                <p id="sp_toggle_optionall"><a style="border:0; text-decoration: none;" href="#" onClick="showConfig('el2'); return false" title="{$CONST.TOGGLE_OPTION}"><img src="{serendipity_getFile file="img/plus.png"}" id="optionel2" alt="+/-" border="0">&nbsp;{$CONST.TOGGLE_ALL}</a></p>
            </div>

            <div id="el2">
              <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="authorid" what="desc"|escape:js}">{staticpage_input item="authorid" what="name"|escape:js}</label>
                    {staticpage_input item="authorid"}
              </div>

              <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="articletype" what="desc"|escape:js}">{staticpage_input item="articletype" what="name"|escape:js}</label>
                    {staticpage_input item="articletype"}
              </div>

              <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="language" what="desc"|escape:js}">{staticpage_input item="language" what="name"|escape:js}</label>
                    {staticpage_input item="language"}
              </div>

              <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="related_category_id" what="desc"|escape:js}">{staticpage_input item="related_category_id" what="name"|escape:js}</label>
                    {staticpage_input item="related_category_id"}
              </div>

              <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="parent_id" what="desc"|escape:js}">{staticpage_input item="parent_id" what="name"|escape:js}</label>
                    {staticpage_input item="parent_id"}
              </div>

              <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="show_childpages" what="desc"|escape:js}">{staticpage_input item="show_childpages" what="name"|escape:js}</label>
                    {staticpage_input item="show_childpages"}
              </div>

              <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="shownavi" what="desc"|escape:js}">{staticpage_input item="shownavi" what="name"|escape:js}</label>
                    {staticpage_input item="shownavi"}
              </div>

              <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="pre_content" what="desc"|escape:js}">{staticpage_input item="pre_content" what="name"|escape:js}</label>
                    {staticpage_input item="pre_content"}
              </div>
            </div>
            <script type="text/javascript" language="JavaScript">document.getElementById("el2").style.display = "none";</script>
        </fieldset>
    </div>

    <div class="default_staticpage_sbar">
        <!-- RIGHT -->
        <fieldset class="sect_meta">
            <legend>{$CONST.STATICPAGE_SECTION_META}</legend>
            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="pagetitle" what="desc"|escape:js}">{staticpage_input item="pagetitle" what="name"|escape:js}</label>
                    {staticpage_input item="pagetitle"}
            </div>

            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="permalink" what="desc"|escape:js}">{staticpage_input item="permalink" what="name"|escape:js}</label>
                    {staticpage_input item="permalink"}
            </div>

            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="pass" what="desc"|escape:js}">{staticpage_input item="pass" what="name"|escape:js}</label>
                    {staticpage_input item="pass"}
            </div>

        </fieldset>
        
        <fieldset class="sect_opt">
            <legend>{$CONST.STATICPAGE_SECTION_OPT}</legend>
            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="publishstatus" what="desc"|escape:js}">{staticpage_input item="publishstatus" what="name"|escape:js}</label>
                    {staticpage_input item="publishstatus"}
            </div>

            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="is_startpage" what="desc"|escape:js}">{staticpage_input item="is_startpage" what="name"|escape:js}</label>
                    {staticpage_input item="is_startpage"}
            </div>

            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="is_404_page" what="desc"|escape:js}">{staticpage_input item="is_404_page" what="name"|escape:js}</label>
                    {staticpage_input item="is_404_page"}
            </div>

            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="showonnavi" what="desc"|escape:js}">{staticpage_input item="showonnavi" what="name"|escape:js}</label>
                    {staticpage_input item="showonnavi"}
            </div>

            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="markup" what="desc"|escape:js}">{staticpage_input item="markup" what="name"|escape:js}</label>
                    {staticpage_input item="markup"}
            </div>

            <div class="sp_sect">
                <label class="sp_label" title="{staticpage_input item="articleformat" what="desc"|escape:js}">{staticpage_input item="articleformat" what="name"|escape:js}</label>
                    {staticpage_input item="articleformat"}
            </div>

        </fieldset>

        {* EXAMPLE FOR CUSTOM STATICPAGE PROPERTIES
        
        <fieldset class="sect_custom">
            <legend>Custom</legend>

            <div class="sp_sect">
                <label class="sp_label" title="Choose the main sidebar that should be shown when this staticpage is evaluated">Sidebars</label>
                <select name="serendipity[plugin][custom][sidebars][]" multiple="multiple">
                    <option {if (@in_array('left', $form_values.custom.sidebars))}selected="selected"{/if} value="left">Left</option>
                    <option {if (@in_array('right', $form_values.custom.sidebars))}selected="selected"{/if} value="right">Right</option>
                    <option {if (@in_array('hidden', $form_values.custom.sidebars))}selected="selected"{/if} value="hidden">Hidden</option>
                </select>
            </div>

            <div class="sp_sect">
                <label class="sp_label" title="CSS class of the main page body that should be associated">Main CSS class</label>
                    <input type="text" name="serendipity[plugin][custom][css_class]" value="{$form_values.custom.css_class|@default:'None'}">&amp;serendipity[token]=89ea2ec2f137987672582b9f52f5f12d
            </div>
        </fieldset>
         END OF EXAMPLE FOR CUSTOM STATICPAGE PROPERTIES *}

        <div class="default_staticpage_button_sbar">
            <input type="submit" name="serendipity[SAVECONF]" value="{$CONST.SAVE}" class="serendipityPrettyButton input_button">
        </div>

    </div>
</div>


{staticpage_input_finish}

<br class="clear">
<div class="default_staticpage_button_main">
    <input type="submit" name="serendipity[SAVECONF]" value="{$CONST.SAVE}" class="serendipityPrettyButton input_button">
</div>
