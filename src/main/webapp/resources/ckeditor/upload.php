<?
include_once("{$_SERVER['DOCUMENT_ROOT']}/_init.php");

if($_FILES['upload']['size'] > 0){
	$mfile = new mfile();

	$filename = $_FILES['upload']['name'];
	$filetemp = $_FILES['upload']['tmp_name'];
	$fileext = $mfile->file_path($filename, "extension");
	$filetype = $mfile->file_type_check($fileext, "Y", "Y");

	if($filetype == "image"){
		$new_filename = $mfile->file_upload(FILE_PATH . "/ckeditor/", $filetemp, $filename);

		echo "
			<script type='text/javascript'>
				window.parent.CKEDITOR.tools.callFunction({$_GET['CKEditorFuncNum']}, '".FILE_URL."/ckeditor/{$new_filename}');
			</script>
		";
	}
}
?>