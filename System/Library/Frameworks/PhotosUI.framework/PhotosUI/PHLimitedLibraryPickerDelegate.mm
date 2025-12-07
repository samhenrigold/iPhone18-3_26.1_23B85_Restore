@interface PHLimitedLibraryPickerDelegate
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation PHLimitedLibraryPickerDelegate

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v18 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  pickingCopy = picking;
  v8 = PLBackendGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v15 = pickerCopy;
    v16 = 2112;
    v17 = pickingCopy;
    _os_log_impl(&dword_1D2128000, v8, OS_LOG_TYPE_DEBUG, "[Limited Library Picker] picker: %@ didFinishPicking: %@", buf, 0x16u);
  }

  finishedPickingBlock = [(PHLimitedLibraryPickerDelegate *)self finishedPickingBlock];

  if (finishedPickingBlock)
  {
    v10 = PFMap();
    finishedPickingBlock2 = [(PHLimitedLibraryPickerDelegate *)self finishedPickingBlock];
    v12 = [v10 copy];
    (finishedPickingBlock2)[2](finishedPickingBlock2, v12);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PHLimitedLibraryPickerDelegate_picker_didFinishPicking___block_invoke_2;
  v13[3] = &unk_1E83F7818;
  v13[4] = self;
  [pickerCopy dismissViewControllerAnimated:1 completion:v13];
}

void __58__PHLimitedLibraryPickerDelegate_picker_didFinishPicking___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dismissalBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) dismissalBlock];
    v3[2]();
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v12 = *MEMORY[0x1E69E9840];
  dismissCopy = dismiss;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = dismissCopy;
    _os_log_impl(&dword_1D2128000, v5, OS_LOG_TYPE_DEBUG, "[Limited Library Picker] presentationControllerDidDismiss: %@", &v10, 0xCu);
  }

  finishedPickingBlock = [(PHLimitedLibraryPickerDelegate *)self finishedPickingBlock];

  if (finishedPickingBlock)
  {
    finishedPickingBlock2 = [(PHLimitedLibraryPickerDelegate *)self finishedPickingBlock];
    finishedPickingBlock2[2](finishedPickingBlock2, MEMORY[0x1E695E0F0]);
  }

  dismissalBlock = [(PHLimitedLibraryPickerDelegate *)self dismissalBlock];

  if (dismissalBlock)
  {
    dismissalBlock2 = [(PHLimitedLibraryPickerDelegate *)self dismissalBlock];
    dismissalBlock2[2]();
  }
}

@end