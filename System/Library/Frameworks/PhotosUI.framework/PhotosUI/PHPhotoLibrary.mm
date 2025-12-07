@interface PHPhotoLibrary
@end

@implementation PHPhotoLibrary

void __86__PHPhotoLibrary_LimitedLibraryPicker__presentLimitedLibraryPickerFromViewController___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLPickerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1D2128000, v3, OS_LOG_TYPE_DEBUG, "Limited library picker selected new assets with identifiers: %@", &v4, 0xCu);
  }
}

@end