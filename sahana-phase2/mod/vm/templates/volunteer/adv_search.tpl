<b>Please enter at least one field below:</b><br /><br />

<div class="form-container">
<form method="get" action="index.php">

<input type="hidden" name="mod" value="vm">
<input type="hidden" name="act" value="volunteer">
<input type="hidden" name="vm_action" value="process_search">
<?php
    shn_form_fsopen(_('Personal Information'));
?>
<?php
    shn_form_text(_('Any ID Number:'),'vol_id','size="30"');
    shn_form_text(_('Name:'),'vol_name','size="30"');
    shn_form_checkbox('Loose Name Matching <br />(May return many unrelated results)', 'loose', null, array('value' => 'true'));
	shn_form_fsclose();

	shn_form_fsopen('Skills');
	shn_form_radio(array('and_skills' => 'Require ALL skills below', 'or_skills' => 'Require ANY skills below'), 'Skills Matching:', 'skills_matching');
	$skills->display('', 'Node.toggleChildren(0, 0, true);');
    shn_form_fsclose();

    shn_form_submit(_('Search'));
?>

</form>
</div>


