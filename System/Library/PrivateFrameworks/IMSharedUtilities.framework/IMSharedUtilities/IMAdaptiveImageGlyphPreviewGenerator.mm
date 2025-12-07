@interface IMAdaptiveImageGlyphPreviewGenerator
+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error;
@end

@implementation IMAdaptiveImageGlyphPreviewGenerator

+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error
{
  v43[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  v15 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewAdaptiveImageGlyph", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  v38 = dCopy;
  if (lCopy && size && error)
  {
    v17 = MEMORY[0x1E695DFF8];
    v18 = IMSafeTemporaryDirectory(v16);
    path = [v18 path];
    v43[0] = path;
    v43[1] = @"AdaptiveImageGlyphPreview";
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v21 = [v17 fileURLWithPathComponents:v20];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:0];

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v24 = [v21 URLByAppendingPathComponent:stringGUID isDirectory:0];
    v25 = [v24 URLByAppendingPathExtension:@"heic"];

    if (v25)
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = lCopy;
          _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "Invoking BlastDoor for adaptive image glyph at source URL: %@", buf, 0xCu);
        }
      }

      v27 = [IMAdaptiveImageGlyphBlastDoor generateEmojiImageAssetFromSourceURL:lCopy senderContext:contextCopy];
      v28 = v27;
      if (v27)
      {
        imageData = [v27 imageData];
        v39 = 0;
        v30 = [imageData writeToURL:v25 options:1 error:&v39];
        v31 = v39;
        if (v30)
        {
          v32 = v25;
        }

        else
        {
          v36 = IMLogHandleForCategory("IMAdaptiveImageGlyphPreviewGenerator");
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C4C50(v25, v31, v36);
          }

          v32 = 0;
          *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
        }
      }

      else
      {
        v35 = IMLogHandleForCategory("IMAdaptiveImageGlyphPreviewGenerator");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C4CD8(v25, v35);
        }

        v32 = 0;
        *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];
      }
    }

    else
    {
      v34 = IMLogHandleForCategory("IMAdaptiveImageGlyphPreviewGenerator");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C4D50(lCopy, v34);
      }

      [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:6 userInfo:0];
      *error = v32 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v33, OS_LOG_TYPE_INFO, "Invalid parameters", buf, 2u);
      }
    }

    v32 = 0;
  }

  os_activity_scope_leave(&state);

  return v32;
}

@end