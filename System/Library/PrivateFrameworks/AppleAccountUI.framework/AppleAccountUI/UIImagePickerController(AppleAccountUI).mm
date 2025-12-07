@interface UIImagePickerController(AppleAccountUI)
+ (id)aaui_fixedCropRect:()AppleAccountUI forOriginalImage:;
@end

@implementation UIImagePickerController(AppleAccountUI)

+ (id)aaui_fixedCropRect:()AppleAccountUI forOriginalImage:
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  cGRectValue = [v5 CGRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (v8 < 0.0)
  {
    v16 = _AAUILogSystem(cGRectValue);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      v43 = 138412546;
      v44 = v17;
      v45 = 2112;
      v46 = &unk_1F44C0618;
      _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "aaui_fixedCropRect:forOriginalImage: fixing cropRect left %@ outside originalImage left %@", &v43, 0x16u);
    }

    v13 = v13 + v9;
    v9 = 0.0;
  }

  v18 = [v6 size];
  if (v13 + v9 > v19)
  {
    v20 = _AAUILogSystem(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [MEMORY[0x1E696AD98] numberWithDouble:v13 + v9];
      v22 = MEMORY[0x1E696AD98];
      [v6 size];
      v23 = [v22 numberWithDouble:?];
      v43 = 138412546;
      v44 = v21;
      v45 = 2112;
      v46 = v23;
      _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "aaui_fixedCropRect:forOriginalImage: fixing cropRect right %@ outside originalImage right %@", &v43, 0x16u);
    }

    v18 = [v6 size];
    v13 = v24 - v9;
  }

  if (v11 < 0.0)
  {
    v25 = _AAUILogSystem(v18);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      v43 = 138412546;
      v44 = v26;
      v45 = 2112;
      v46 = &unk_1F44C0618;
      _os_log_impl(&dword_1C5355000, v25, OS_LOG_TYPE_DEFAULT, "aaui_fixedCropRect:forOriginalImage: fixing cropRect top %@ outside originalImage top %@", &v43, 0x16u);
    }

    v15 = v15 + v11;
    v11 = 0.0;
  }

  v27 = [v6 size];
  if (v15 + v11 > v28)
  {
    v29 = _AAUILogSystem(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [MEMORY[0x1E696AD98] numberWithDouble:v15 + v11];
      v31 = MEMORY[0x1E696AD98];
      [v6 size];
      v33 = [v31 numberWithDouble:v32];
      v43 = 138412546;
      v44 = v30;
      v45 = 2112;
      v46 = v33;
      _os_log_impl(&dword_1C5355000, v29, OS_LOG_TYPE_DEFAULT, "aaui_fixedCropRect:forOriginalImage: fixing cropRect bottom %@ outside originalImage bottom %@", &v43, 0x16u);
    }

    [v6 size];
    v15 = v34 - v11;
  }

  [v5 CGRectValue];
  v50.origin.x = v35;
  v50.origin.y = v36;
  v50.size.width = v37;
  v50.size.height = v38;
  v49.origin.x = v9;
  v49.origin.y = v11;
  v49.size.width = v13;
  v49.size.height = v15;
  if (CGRectEqualToRect(v49, v50))
  {
    v39 = v5;
  }

  else
  {
    v39 = [MEMORY[0x1E696B098] valueWithCGRect:{v9, v11, v13, v15}];

    v41 = _AAUILogSystem(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138412290;
      v44 = v39;
      _os_log_impl(&dword_1C5355000, v41, OS_LOG_TYPE_DEFAULT, "aaui_fixedCropRect:forOriginalImage: returning fixed cropRect %@", &v43, 0xCu);
    }
  }

  return v39;
}

@end