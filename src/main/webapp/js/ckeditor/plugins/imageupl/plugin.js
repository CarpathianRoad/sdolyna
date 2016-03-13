CKEDITOR.plugins.add( 'imageupl', {
    icons: 'imageupl',
    init: function( editor ) {
        editor.addCommand( 'imageupl', new CKEDITOR.dialogCommand( 'imageupl' ) );
        editor.ui.addButton( 'Imageupl', {
    label: 'Image upload',
    command: 'imageupl',
    toolbar: 'insert,100'
    });
    }
}); 
CKEDITOR.dialog.add( 'imageuplDialog', 'dialogs/imageupl.js' );
