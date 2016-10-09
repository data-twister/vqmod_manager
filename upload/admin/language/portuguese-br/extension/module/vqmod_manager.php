<?php
// Button
$_['button_backup']        = 'Backup';
$_['button_cancel']        = 'Cancelar';
$_['button_clear']         = 'Limpar';
$_['button_download_log']  = 'Baixar Log';
$_['button_vqcache_dump']  = 'vqcache Dump';

// Heading
$_['heading_title']        = 'VQMod Manager';
$_['heading_description']        = 'Um poderoso add-on GUI para gerenciamento de scripts de VQMod para administrador do OpenCart';

// Columns
$_['column_action']        = 'Ativar / Desativar';
$_['column_author']        = 'Autor';
$_['column_delete']        = 'Remover';
$_['column_file_name']     = 'Nome do arquivo';
$_['column_id']            = 'Nome / Descrição';
$_['column_status']        = 'Status';
$_['column_version']       = 'Versão';
$_['column_vqmver']        = 'VQMod Versão';

// Entry
$_['entry_attribution']         = 'Atribuição:'; // Change
$_['entry_author']         = 'Autor:'; // Change
$_['entry_backup']         = 'Backup VQMod Scripts:';
$_['entry_ext_store']      = 'Versão mais recente:';
$_['entry_ext_version']    = 'Versão do VQMod Manager:';
$_['entry_forum']          = 'OpenCart Forum Thread:';
$_['entry_license']        = 'Licença:';
$_['entry_upload']         = 'VQMod Script Upload:';
$_['entry_vqcache']        = 'VQMod Cache:';
$_['entry_vqmod_path']     = 'VQMod Path:';
$_['entry_website']        = 'Website:';

// Text Highlighting
$_['highlight']            = '<span class="highlight">%s</span>';

// VQMod Manager Use Errors
$_['error_delete']         = 'Atenção: Não é possível excluir script VQMod!';
$_['error_filetype']       = 'Atenção: Tipo de arquivo inválido! Por favor, só fazer upload de arquivos .xml.';
$_['error_install']        = 'Atenção: Não é possível instalar script VQMod!';
$_['error_invalid_xml']    = 'Atenção: VQMod script XML sintaxe é invalida!  Entre em contato com o autor para suporte.';
$_['error_log_size']       = 'Atenção: Your VQMod error log is %sMBs.  The limit for VQMod Manager is 6MB.  You can download the error log by FTP or by clicking the \'Download Log\' button in the Error Log tab.  Otherwise consider clearing it.';
$_['error_log_download']   = 'Atenção: Não há logs de erros disponíveis para download!';
$_['error_moddedfile']     = 'Atenção: VQMod script attempts to mod file \'%s\' which does not appear to exist!';
$_['error_move']           = 'Atenção: Unable to save file on server.  Please check directory permissions.';
$_['error_permission']     = 'Atenção: You do not have permission to modify module VQMod Manager!';
$_['error_uninstall']      = 'Atenção: Unable to uninstall VQMod script!';
$_['error_vqmod_opencart'] = 'Atenção: \'vqmod_opencart.xml\' is rquired for VQMod to function properly!';

// $_FILE Upload Errors
$_['error_form_max_file_size']   = 'Atenção: VQMod script exceeds max allowable size!';
$_['error_ini_max_file_size']    = 'Atenção: VQMod script exceeds max php.ini file size!';
$_['error_no_temp_dir']          = 'Atenção: Diretório temporário não encontrado!';
$_['error_no_upload']            = 'Atenção: Nenhum arquivo selecionado para upload!';
$_['error_partial_upload']       = 'Atenção: Upload incompleto!';
$_['error_php_conflict']         = 'Atenção: Conflito PHP desconhecido!';
$_['error_unknown']              = 'Atenção: Erro desconhecido!';
$_['error_write_fail']           = 'Atenção: Falha ao gravar script VQMod!';

// VQMod Installation Errors
$_['error_error_log_write']            = 'Unable to write to VQMod error log!  Please set "<span class="error-install">/vqmod</span>" directory permissions to 755 or 777 and try again.';
$_['error_error_logs_write']           = 'Unable to write to VQMod error log!  Please set "<span class="error-install">/vqmod/logs</span>" directory permissions to 755 or 777 and try again.';
$_['error_opencart_version']           = 'OpenCart 1.5.x or later is required to use VQMod Manager!';
$_['error_opencart_xml']               = 'Required file "<span class="error-install">/vqmod/xml/vqmod_opencart.xml</span>" does not appear to exist!  Please install the latest OpenCart-compatible version of VQMod from <a href="https://github.com/vqmod/vqmod/releases" target="_blank">https://github.com/vqmod/vqmod/releases</a> and try again.';
$_['error_opencart_xml_disabled']      = 'Warning: "<span class="error-install">vqmod_opencart.xml</span>" is disabled!  VQMod scripts will not function!';
$_['error_opencart_xml_version']       = 'You appear to be using a version of "<span class="error-install">vqmod_opencart.xml</span>" that is out-of-date for your OpenCart version!  Please install the latest OpenCart-compatible version of VQMod from <a href="https://github.com/vqmod/vqmod/releases" target="_blank">https://github.com/vqmod/vqmod/releases</a> and try again.';
$_['error_vqcache_dir']                = 'Required directory "<span class="error-install">/vqmod/vqcache</span>" does not appear to exist!  Please install the latest OpenCart-compatible version of VQMod from <a href="https://github.com/vqmod/vqmod/releases" target="_blank">https://github.com/vqmod/vqmod/releases</a> and try again.';
$_['error_vqcache_write']              = 'Unable to write to "<span class="error-install">/vqmod/vqcache</span>" directory!  Set permissions to 755 or 777 and try again.';
$_['error_vqcache_files_missing']      = 'VQMod does not appear to be properly generating vqcache files!';
$_['error_vqmod_core']                 = 'Required file "<span class="error-install">vqmod.php</span>" is missing!  Please install the latest OpenCart-compatible version of VQMod from <a href="https://github.com/vqmod/vqmod/releases" target="_blank">https://github.com/vqmod/vqmod/releases</a> and try again.';
$_['error_vqmod_dir']                  = 'The "<span class="error-install">/vqmod</span>" directory does not appear to exist!';
$_['error_vqmod_install_link']         = 'VQMod does not appear to have been integrated with OpenCart!  Please run the VQMod installer at <a href="%1$s">%1$s</a>.  If you have previously run the installer ensure that you are using the latest version of VQMod found at <a href="https://github.com/vqmod/vqmod/releases" target="_blank">https://github.com/vqmod/vqmod/releases</a>.';
$_['error_vqmod_opencart_integration'] = 'VQMod does not appear to have been integrated with OpenCart!  Please install the latest OpenCart-compatible version of VQMod from <a href="https://github.com/vqmod/vqmod/releases" target="_blank">https://github.com/vqmod/vqmod/releases</a> and try again.';
$_['error_vqmod_script_dir']           = 'Required directory "<span class="error-install">/vqmod/xml</span>" does not appear to exist!  Please install the latest OpenCart-compatible version of VQMod from <a href="https://github.com/vqmod/vqmod/releases" target="_blank">https://github.com/vqmod/vqmod/releases</a> and try again.';
$_['error_vqmod_script_write']         = 'Unable to write to "<span class="error-install">/vqmod/xml</span>" directory!  Please set directory permissions to 755 or 777 and try again.';

// VQMod Manager Dependency Errors
$_['error_simplexml']       = '<a href="http://php.net/manual/en/book.simplexml.php" target="_blank">SimpleXML</a> must be installed for VQMod Manager to work properly!  Contact your host for more info.';
$_['error_ziparchive']      = '<a href="http://php.net/manual/en/class.ziparchive.php" target="_blank">ZipArchive</a> must be installed to download VQMod script files!  Contact your host for more info.';

// VQMod Log Errors
$_['error_mod_aborted']     = 'Mod Aborted';
$_['error_mod_skipped']     = 'Operation Skipped';

// VQMod Variable Settings
$_['setting_cachetime']       = 'cacheTime:<br /><span class="help">Deprecated as of VQMod 2.2.0</span>';
$_['setting_dir_separator']   = 'Directory Separator:';
$_['setting_logfolder']       = 'Log Folder:<br /><span class="help">VQMod 2.2.0 and later</span>';
$_['setting_logging']         = 'Error Logging:';
$_['setting_modcache']        = 'modCache:';
$_['setting_path_replaces']   = 'Path Replacements:<br /><span class="help">Changes do not go into effect until the mods.cache file is deleted.</span>';
$_['setting_protected_files'] = 'Protected Files:';
$_['setting_usecache']        = 'useCache:<br /><span class="help">Deprecated as of VQMod 2.1.7</span>';

// Success
$_['success_clear_vqcache'] = 'Success: VQMod cache cleared!';
$_['success_clear_log']     = 'Success: VQMod error log cleared!';
$_['success_delete']        = 'Success: VQMod script deleted!';
$_['success_install']       = 'Success: VQMod script installed!';
$_['success_uninstall']     = 'Success: VQMod script uninstalled!';
$_['success_upload']        = 'Success: VQMod script uploaded!';

// Tabs
$_['tab_about']             = 'Sobre';
$_['tab_error_log']         = 'Log de Erros';
$_['tab_settings']          = 'Configurações e Manutenção';
$_['tab_scripts']           = 'VQMod Scripts';

// Text
$_['text_autodetect']       = 'VQMod appears to be installed at the following path.  Press Save to confirm path and complete installation.';
$_['text_autodetect_fail']  = 'Unable to detect VQMod installation.  Please download and install the <a href="https://github.com/vqmod/vqmod/releases" target="_blank">latest version</a> or enter the non-standard server installation path.';
$_['text_cachetime']        = '%s seconds';
$_['text_delete']           = 'Remover';
$_['text_disabled']         = 'Inativo';
$_['text_enabled']          = 'Ativo';
$_['text_install']          = 'Ativar';
$_['text_attribution']          = 'Module Initially Created by rph @ opencarthelp.com ported to opencart 2.x by Jason Clark (mithereal@gmail.com)';
$_['text_module']           = 'Modulo';
$_['text_no_results']       = 'No VQMod scripts were found!';
$_['text_separator']        = ' &rarr; ';
$_['text_success']          = 'Success: You have modified module VQMod Manager!';
$_['text_unavailable']      = '&mdash;';
$_['text_uninstall']        = 'Desativar';
$_['text_upload']           = 'Upload';
$_['text_usecache_help']    = 'useCache is deprecated as of VQMod 2.1.7'; // @TODO
$_['text_vqcache_help']     = 'Clears contents of the vqcache directory and deletes mods.cache file.  Some system files will always be present even after clearing the cache.';

// Version
$_['vqmod_manager_author']  = 'rph and mithereal';
$_['vqmod_manager_license'] = 'Attribution-NonCommercial-ShareAlike 3.0 Unported (CC BY-NC-SA 3.0)';
$_['vqmod_manager_version'] = '3.0';

// Javascript Warnings
$_['warning_required_delete']    = 'ATENÇÃO: Deleting \\\'vqmod_opencart.xml\\\' will cause VQMod to STOP WORKING!  Continue?';
$_['warning_required_uninstall'] = 'ATENÇÃO: Uninstalling \\\'vqmod_opencart.xml\\\' will cause VQMod to STOP WORKING!  Continue?';
$_['warning_vqmod_delete']       = 'ATENÇÃO: Deleting a VQMod script cannot be undone!  Are you sure you want to do this?';
?>
