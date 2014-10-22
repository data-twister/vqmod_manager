<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button onclick="$('#form').submit();" type="submit" form="form" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>

            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>


    <div class="container-fluid">
        <?php if($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php 
        } ?>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $heading_description; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">

                    <ul class="nav nav-tabs">

                        <li class="active"><a data-toggle="tab" href="#tab-scripts"><?php echo $tab_scripts; ?></a></li>
                        <li class=""><a data-toggle="tab" href="#tab-settings"><?php echo $tab_settings; ?></a></li>
                        <li class=""><a data-toggle="tab" href="#tab-error"><?php echo  $tab_error_log; ?></a></li>
                        <li class=""><a data-toggle="tab" href="#tab-about"><?php echo  $tab_about; ?></a></li>
                    </ul>
                    <div class="tab-content">
                        <?php if ($vqmod_is_installed == true) { ?>
                        <div id="tab-scripts" class="tab-pane active">

                            <div class="table-responsive">
                                <table class="vqmm-list table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th class="left"><?php echo $column_file_name; ?><hr /><i><?php echo $column_id; ?></i></th>
                                    <th class="center"><?php echo $column_version; ?></th>
                                    <th class="center"><?php echo $column_vqmver; ?></th>
                                    <th class="center"><?php echo $column_author; ?></th>
                                    <th class="center"><?php echo $column_status; ?></th>
                                    <th class="center"><?php echo $column_action; ?></th>
                                    <th class="center"><?php echo $column_delete; ?></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <?php if ($vqmods) { ?>
                                        <?php $class = 'row-odd'; ?>
                                        <?php foreach ($vqmods as $vqmod) { ?>
                                        <?php $class = ($class == 'row-even' ? 'row-odd' : 'row-even'); ?>
                                        <tr class="<?php echo $class; ?>">
                                            <td class="left"><strong><?php echo $vqmod['file_name']; ?></strong><br /><div class="description"><?php echo $vqmod['id']; ?><br /><?php echo $vqmod['invalid_xml']; ?></div></td>
                                            <td class="center"><?php echo $vqmod['version']; ?></td>
                                            <td class="center"><?php echo $vqmod['vqmver']; ?></td>
                                            <td class="center"><?php echo $vqmod['author']; ?></td>
                                            <td class="center"><?php echo $vqmod['status'] ?></td>
                                            <td class="action"><?php foreach ($vqmod['action'] as $action) { 
                                                if($vqmod['status'] == 'Enabled'){?>
                                                <a title="<?php echo $action['text']; ?>" class="btn btn-danger" data-toggle="tooltip" href="<?php echo $action['href']; ?>"><i class="fa fa-minus-circle"></i></a>
                                                <?php  }else{
                                                ?>
                                                 <a title="<?php echo $action['text']; ?>" class="btn btn-success" data-toggle="tooltip" href="<?php echo $action['href']; ?>"><i class="fa fa-plus-circle" ></i></a><?php }} ?></td>
                                            <td class="action">
                                                <a title="<?php echo $text_delete; ?>" class="btn btn-danger" href="<?php echo $vqmod['delete'] ?>" data-toggle="tooltip"><i class="fa fa-trash-o"></i></a></td>
                                        </tr>
                                        <?php } ?>
                                        <?php } else { ?>
                                        <tr>
                                            <td class="center" colspan="7"><?php echo $text_no_results; ?></td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                                <table class="form table table-bordered table-hover">
                                    <tr>
                                        <td class="text-left"><?php echo $entry_upload; ?>&nbsp;<input data-toggle="tooltip" title="<?php echo $entry_upload; ?>" class="btn" type="file" name="vqmod_file" /><input class="button btn-success" type="submit" title="<?php echo $text_upload; ?>" name="upload" data-toggle="tooltip" value="<?php echo $text_upload; ?>" /></td>
                                    </tr>
                                </table>
                            </div>           
                        </div>

                       
                        <div id="tab-settings" class="tab-pane">
                         <div class="table-responsive">
                            <table class="form table table-bordered table-hover">
                                <tr>
                                    <td class="text-left"><?php echo $entry_vqcache; ?><br /><span class="help"><?php echo $text_vqcache_help; ?></span></td>
                                    <td class="text-left">
                                        <select multiple="multiple" size="7" id="vqcache">
                                            <?php foreach ($vqcache as $vqcache_file) { ?>
                                            <option><?php echo $vqcache_file; ?></option>
                                            <?php } ?>
                                        </select><br />
                                        <a href="<?php echo $clear_vqcache; ?>" class="btn btn-danger" data-toggle="tooltip"  title="<?php echo $button_clear; ?>"><span><i class="fa fa-trash-o"><?php echo ' '.$button_clear; ?></i></span></a>
                                        <?php if ($ziparchive) { ?>
                                        <a href="<?php echo $download_vqcache; ?>" class="btn btn-danger" data-toggle="tooltip"  title="<?php echo $button_vqcache_dump; ?>"><span><i class="fa fa-trash-o"><?php echo ' ' .$button_vqcache_dump; ?></i></span></a>
                                        <?php } ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left"><?php echo $entry_backup; ?></td>
                                    <?php if ($ziparchive) { ?>
                                    <td class="text-left"><a data-toggle="tooltip" title="<?php echo $button_backup; ?>" href="<?php echo $download_scripts; ?>" class="btn btn-primary"><span><i class="fa fa-save"><?php echo ' ' .$button_backup; ?></i></span></a></td>
                                    <?php } else { ?>
                                    <td class="text-left"><?php echo $error_ziparchive; ?></td>
                                    <?php } ?>
                                </tr>
                                <tr>
                                    <td class="text-left"><?php echo $entry_vqmod_path; ?></td>
                                    <td class="text-left"><?php echo $vqmod_path; ?></td>
                                </tr>
                                <?php if ($vqmod_vars) { ?>
                                <?php foreach ($vqmod_vars as $vqmod_var) { ?>
                                <tr>
                                    <td class="text-left"><?php echo $vqmod_var['setting']; ?></td>
                                    <td class="text-left"><?php echo $vqmod_var['value']; ?></td>
                                </tr>
                                <?php } ?>
                                <?php } ?>
                            </table>
                        </div>
                        </div>
                        
                        <div id="tab-error" class="tab-pane">
                             <div class="table-responsive">
                            <table class="form table table-bordered table-hover">
                                <tr>
                                    <td class="text-left"><textarea rows="20" cols="90" id="error-log"><?php echo $log; ?></textarea>
                                        <div class="right"><?php if ($ziparchive) { ?><a data-toggle="tooltip" title="<?php echo $button_download_log; ?>" href="<?php echo $download_log; ?>" class="btn btn-primary"><span><i class="fa fa-save"><?php echo ' ' .$button_download_log; ?></i></span></a><?php } ?> <a data-toggle="tooltip" title="<?php echo $button_clear; ?>" href="<?php echo $clear_log; ?>" class="btn btn-danger"><span><i class="fa fa-trash-o"><?php echo ' ' .$button_clear; ?></i></span></a></div></td>
                                </tr>
                            </table>
                        </div>
                        </div>
                        
                        <div id="tab-about" class="tab-pane">
                             <div class="table-responsive">
                            <table class="form table table-bordered table-hover">
                                <tr>
                                    <td class="text-left"><?php echo $entry_ext_version; ?></td>
                                    <td class="text-left"><?php echo $vqmod_manager_version; ?></td>
                                </tr>
                                <tr>
                                    <td class="text-left"><?php echo $entry_author; ?></td>
                                    <td class="text-left"><?php echo $vqmod_manager_author; ?></td>
                                </tr>
                                <tr>
                                    <td class="text-left"><?php echo $entry_website; ?></td>
                                    <td class="text-left"><a class="about" href="https://github.com/mithereal/vqmod_manager" target="_blank">https://github.com/mithereal/vqmod_manager</a></td>
                                </tr>
                                <tr>
                                    <td class="text-left"><?php echo $entry_ext_store; ?></td>
                                    <td class="text-left"><a class="about" href="https://github.com/mithereal/vqmod_manager">https://github.com/mithereal/vqmod_manager</a></td>
                                </tr>
                                <tr>
                                    <td class="text-left"><?php echo $entry_forum; ?></td>
                                    <td class="text-left"><a class="" target="_blank"></a></td>
                                </tr>
                                <tr>
                                    <td class="text-left"><?php echo $entry_license; ?></td>
                                    <td class="text-left"><a class="about" href="http://creativecommons.org/licenses/by-nc-sa/3.0/legalcode" target="_blank"><?php echo $vqmod_manager_license; ?></a></td>
                                </tr>
                                <tr>
                                    <td class="text-left"><?php echo $entry_attribution; ?></td>
                                    <td class="text-left"><?php echo $text_attribution; ?></td>
                                </tr>
                            </table>
                        </div>
                        </div>
                
                <?php } else { ?>
                <span><?php echo $vqmod_installation_error; ?></span>
                <?php } ?>
            </div>
        </div>
        </div>
        </div>
        </div>

        <script type="text/javascript">
            $(document).ready(function () {
                // Confirm Delete
                $('a').click(function () {
                    if ($(this).attr('href') != null && $(this).attr('href').indexOf('delete', 1) != -1) {
                        if (!confirm('<?php echo $warning_vqmod_delete; ?>')) {
                            return false;
                        }
                    }
                });

                // Confirm vqmod_opencart.xml Uninstall
                $('a').click(function () {
                    if ($(this).attr('href') != null && $(this).attr('href').indexOf('vqmod_opencart', 1) != -1 && $(this).attr('href').indexOf('uninstall', 1) != -1) {
                        if (!confirm('<?php echo $warning_required_uninstall; ?>')) {
                            return false;
                        }
                    }
                });

                // Confirm vqmod_opencart.xml Delete
                $('a').click(function () {
                    if ($(this).attr('href') != null && $(this).attr('href').indexOf('vqmod_opencart', 1) != -1 && $(this).attr('href').indexOf('delete', 1) != -1) {
                        if (!confirm('<?php echo $warning_required_delete; ?>')) {
                            return false;
                        }
                    }
                });
            });
        </script>

  <script type="text/javascript"><!--
$('#tabs a:first').tab('show');
//--></script>
       