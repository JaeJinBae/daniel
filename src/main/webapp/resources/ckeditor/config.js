/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	config.language = 'ko';
	// config.uiColor = '#AADC6E';

	config.removeButtons = 'Underline,Subscript,Superscript';

	// Set the most common block elements.
	config.format_tags = 'p;h1;h2;h3;pre';

	// Simplify the dialog windows.
	config.removeDialogTabs = 'image:advanced;link:advanced';

	// user_edit
	config.filebrowserUploadUrl='/lib/js/ckeditor/upload.php';		//upload
	config.enterMode = CKEDITOR.ENTER_DIV;
	config.shiftEnterMode = CKEDITOR.ENTER_DIV;
	config.tabSpaces = 4;
	config.menu_subMenuDelay = 0;									//하위메뉴지연(0:제거)
	config.toolbarStartupExpanded = true;							//에디터 시작시 툴바보임
	config.resize_enabled = false;									//resize
	CKEDITOR.config.allowedContent = true;							//iframe

	//config.enterMode = CKEDITOR.ENTER_BR;							//enter시 br로
	//config.enterMode = CKEDITOR.ENTER_P;							//enter시 p로
	//config.shiftEnterMode = CKEDITOR.ENTER_DIV;					//shift+enter
};