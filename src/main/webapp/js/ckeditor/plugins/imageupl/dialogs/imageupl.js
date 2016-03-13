CKEDITOR.dialog.add( 'imageuplDialog', function ( editor ) {
    return {
        title: 'Image upload',
        minWidth: 400,
        minHeight: 200,

        contents: [
            {
                id: 'tab-basic',
                label: 'Basic Settings',
                elements: [
                    // UI elements of the first tab will be defined here.
                ]
            }
        ]
    };
});