@interface PUPhotoPickerHostViewController
- (PUPhotoPickerHostViewControllerDelegate)delegate;
- (void)invalidate;
- (void)performPhotoPickerPreviewOfFirstAsset;
- (void)performTraitCollectionUpdateWithCompletion:(id)completion;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation PUPhotoPickerHostViewController

- (PUPhotoPickerHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7.receiver = self;
  v7.super_class = PUPhotoPickerHostViewController;
  [(_UIRemoteViewController *)&v7 viewServiceDidTerminateWithError:errorCopy];
  if (![(PUPhotoPickerHostViewController *)self _isInvalidated])
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[PUPhotoPickerHostViewController viewServiceDidTerminateWithError:]";
      v10 = 2112;
      v11 = errorCopy;
      _os_log_impl(&dword_1D2128000, v5, OS_LOG_TYPE_ERROR, "%s Error %@", buf, 0x16u);
    }

    hostProxy = [(PUPhotoPickerHostViewController *)self hostProxy];
    [hostProxy cancelPhotoPicker];
  }
}

- (void)performTraitCollectionUpdateWithCompletion:(id)completion
{
  v25[5] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  traitCollection = [(PUPhotoPickerHostViewController *)self traitCollection];
  v5 = MEMORY[0x1E69DD1B8];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithVerticalSizeClass:{objc_msgSend(traitCollection, "verticalSizeClass")}];
  v25[0] = v6;
  v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithHorizontalSizeClass:{objc_msgSend(traitCollection, "horizontalSizeClass")}];
  v25[1] = v7;
  v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceIdiom:{objc_msgSend(traitCollection, "userInterfaceIdiom")}];
  v25[2] = v8;
  v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithLayoutDirection:{objc_msgSend(traitCollection, "layoutDirection")}];
  v25[3] = v9;
  v10 = MEMORY[0x1E69DD1B8];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v12 = [v10 traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory];
  v25[4] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
  v14 = [v5 traitCollectionWithTraitsFromCollections:v13];

  v20 = 0;
  v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v20];
  v16 = v20;
  if (v16)
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[PUPhotoPickerHostViewController performTraitCollectionUpdateWithCompletion:]";
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_1D2128000, v17, OS_LOG_TYPE_ERROR, "%s Error %@", buf, 0x16u);
    }
  }

  hostProxy = [(PUPhotoPickerHostViewController *)self hostProxy];
  [hostProxy performTraitCollectionUpdateUsingData:v15 completion:completionCopy];
}

- (void)performPhotoPickerPreviewOfFirstAsset
{
  hostProxy = [(PUPhotoPickerHostViewController *)self hostProxy];
  [hostProxy performPhotoPickerPreviewOfFirstAsset];
}

- (void)invalidate
{
  if (![(PUPhotoPickerHostViewController *)self _isInvalidated])
  {
    [(PUPhotoPickerHostViewController *)self set_invalidated:1];
    hostProxy = [(PUPhotoPickerHostViewController *)self hostProxy];
    [hostProxy invalidatePhotoPickerHostServices];

    [(PUPhotoPickerHostViewController *)self setHostExtensionContext:0];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setNavigationBarHidden:1];
  }
}

@end