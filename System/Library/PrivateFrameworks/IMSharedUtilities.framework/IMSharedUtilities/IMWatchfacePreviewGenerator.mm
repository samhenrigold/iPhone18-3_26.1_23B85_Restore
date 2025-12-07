@interface IMWatchfacePreviewGenerator
+ (BOOL)decorateWatchfacePreview:(id)preview andWriteToURL:(id)l imagePxSize:(CGSize *)size;
+ (BOOL)writesToDisk;
+ (Class)greenfieldUtilitiesClass;
+ (id)UTITypes;
+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error;
@end

@implementation IMWatchfacePreviewGenerator

+ (id)UTITypes
{
  if ([self _isAvailable])
  {
    return &unk_1F1BFABF8;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

+ (BOOL)writesToDisk
{
  v8 = *MEMORY[0x1E69E9840];
  _isAvailable = [self _isAvailable];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (_isAvailable)
      {
        v4 = @"YES";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Blastdoor support available for watchfacePreviews: %@", &v6, 0xCu);
    }
  }

  return _isAvailable;
}

+ (Class)greenfieldUtilitiesClass
{
  if (qword_1EB30AD18 != -1)
  {
    sub_1A88C0C70();
  }

  v3 = qword_1EB30AD10;

  return v3;
}

+ (BOOL)decorateWatchfacePreview:(id)preview andWriteToURL:(id)l imagePxSize:(CGSize *)size
{
  v23 = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  lCopy = l;
  *size = *MEMORY[0x1E695F060];
  MEMORY[0x1AC570AA0](@"BlastDoorWatchfacePreview", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v9 = previewCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  image = [v10 image];
  cgImage = [image cgImage];

  if (cgImage)
  {
    v18 = 0;
    v13 = [IMImageUtilities persistPreviewToDiskCache:cgImage previewURL:lCopy error:&v18];
    v14 = v18;
    if (!v13 && IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = lCopy;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "IMWatchfacePreviewGenerator - Failed to write decorated image to URL %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "IMWatchfacePreviewGenerator - Failed to get image from BlastDoor image", buf, 2u);
      }
    }

    v13 = 0;
  }

  return v13;
}

+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error
{
  v63[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  v16 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewWatchFace", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  if (lCopy && size && error)
  {
    v17 = IMOSLoggingEnabled();
    errorCopy = error;
    if (v17)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Invoking Blastdoor for image", &buf, 2u);
      }
    }

    v19 = MEMORY[0x1E695DFF8];
    v20 = IMSafeTemporaryDirectory(v17);
    path = [v20 path];
    v63[0] = path;
    v63[1] = @"ImagePreview";
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
    v23 = [v19 fileURLWithPathComponents:v22];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:0];

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v26 = [v23 URLByAppendingPathComponent:stringGUID isDirectory:0];
    v27 = [v26 URLByAppendingPathExtension:@"ktx"];

    if (v27)
    {
      if ([self _isAvailable])
      {
        v53 = 0;
        v54 = &v53;
        v55 = 0x2020000000;
        v56 = 0;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v59 = 0x3010000000;
        v61 = 0;
        v62 = 0;
        v60 = &unk_1A8980B7F;
        v47 = 0;
        v48 = &v47;
        v49 = 0x3032000000;
        v50 = sub_1A8601E78;
        v51 = sub_1A8602130;
        v52 = 0;
        v28 = dispatch_group_create();
        dispatch_group_enter(v28);
        var0 = constraints->var0;
        var2 = constraints->var2;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = sub_1A862F994;
        v40[3] = &unk_1E7826950;
        v43 = &v53;
        selfCopy = self;
        v31 = v27;
        v41 = v31;
        p_buf = &buf;
        v45 = &v47;
        v32 = v28;
        v42 = v32;
        [IMAttachmentBlastdoor generatePreview:lCopy senderContext:contextCopy maxPxWidth:v40 scale:var0 withCompletionBlock:var2];
        dispatch_group_wait(v32, 0xFFFFFFFFFFFFFFFFLL);
        if (*(v54 + 24) == 1 && !v48[5])
        {
          *size = *(*(&buf + 1) + 32);
        }

        else
        {

          v33 = v48[5];
          v31 = 0;
          if (v33)
          {
            *errorCopy = v33;
          }
        }

        v27 = v31;

        _Block_object_dispose(&v47, 8);
        _Block_object_dispose(&buf, 8);
        _Block_object_dispose(&v53, 8);
        v35 = v27;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = stringGUID;
          _os_log_impl(&dword_1A85E5000, v36, OS_LOG_TYPE_INFO, "Failed to get a temporaryPreviewURL %@", &buf, 0xCu);
        }
      }

      [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:12 userInfo:0];
      v27 = 0;
      *errorCopy = v35 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A85E5000, v34, OS_LOG_TYPE_INFO, "Invalid parameters", &buf, 2u);
      }
    }

    v35 = 0;
  }

  os_activity_scope_leave(&state);

  return v35;
}

@end