${h.form_search()}
${h.hidden('partial','1')}
<div class="gray-legend p-3 filter-w">
  <div class="row">
    <div class="col-10">
      % for klassID in c.klassidID:
      ${h.checkbox('klassid_id', klassID.id, checkedif=c.klassid_id, label=klassID.name)}
      % endfor
    </div>
    <div class="col d-flex justify-content-end align-items-end">
        ${h.submit_dlg(_("Otsi"), container="$('#sn_listdiv')")}
    </div>
  </div>
</div>

${h.end_form()}

<div class="listdiv" id="sn_listdiv">
<%include file="saatmine.saajad_list.mako"/>
</div>

<div class="text-right">
  ${h.button(_("Jätka"), id='jatka', mdicls2='mdi-arrow-right-circle', class_="jchecked")}
</div>
<script>
$('button#jatka').click(function(){ if(!$(this).hasClass('disabled')) $('#tab-kirjasisu').click(); });  
</script>
