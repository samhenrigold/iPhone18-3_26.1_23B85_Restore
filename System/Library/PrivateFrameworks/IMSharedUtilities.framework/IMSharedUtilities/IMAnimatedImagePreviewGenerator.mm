@interface IMAnimatedImagePreviewGenerator
+ (BOOL)validPreviewExistsAtPreviewURL:(id)l;
+ (id)UTITypes;
+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error;
@end

@implementation IMAnimatedImagePreviewGenerator

+ (id)UTITypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E69637D8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error
{
  v109[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v80 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewAnimatedImage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v80, &state);
  if (!lCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        *buf = 138412290;
        *&buf[4] = v40;
        v41 = v40;
        _os_log_impl(&dword_1A85E5000, v39, OS_LOG_TYPE_INFO, "%@ - sourceURL is nil", buf, 0xCu);
      }
    }

    if (error)
    {
      v42 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:5 userInfo:0];
LABEL_53:
      v38 = 0;
LABEL_54:
      *error = v42;
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v15 = +[IMFeatureFlags sharedFeatureFlags];
  isSessionAnimatedImageUnpackerEnabled = [v15 isSessionAnimatedImageUnpackerEnabled];

  if (isSessionAnimatedImageUnpackerEnabled)
  {
    v17 = IMOSLoggingEnabled();
    if (v17)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "%@ generate animated preview using session BlastDoor.", buf, 0xCu);
      }
    }

    v19 = MEMORY[0x1E695DFF8];
    v20 = IMSafeTemporaryDirectory(v17);
    path = [v20 path];
    v109[0] = path;
    v109[1] = @"IMAnimatedImagePreviewGeneratorPreview";
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:2];
    v78 = [v19 fileURLWithPathComponents:v22];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v78 withIntermediateDirectories:1 attributes:0 error:0];

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v25 = [v78 URLByAppendingPathComponent:stringGUID isDirectory:0];
    v26 = IMPreviewExtension();
    v27 = [v25 URLByAppendingPathExtension:v26];

    v28 = contextCopy;
    v29 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v29 startTimingForKey:@"IMAnimatedImagePreviewGenerator_PreviewGenerationTime"];
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v95 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v106 = sub_1A8601FE4;
    v107 = sub_1A86021E0;
    v108 = 0;
    v87 = 0;
    v88 = &v87;
    v89 = 0x3010000000;
    v90 = &unk_1A8980B7F;
    v91 = *MEMORY[0x1E695F060];
    v30 = dispatch_group_create();
    dispatch_group_enter(v30);
    var0 = constraints->var0;
    var2 = constraints->var2;
    var3 = constraints->var3;
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = sub_1A86E2B24;
    v82[3] = &unk_1E782A178;
    v84 = &v92;
    v85 = &v87;
    v86 = buf;
    v34 = v30;
    v83 = v34;
    v35 = v27;
    [IMAttachmentBlastdoor generateAnimatedImagePreview:lCopy senderContext:v28 destinationFileURL:v27 maxPixelDimension:200 scale:var3 maxFrameCount:v82 isSticker:var0 withCompletionBlock:var2];
    v36 = dispatch_time(0, 5000000000);
    if (dispatch_group_wait(v34, v36))
    {
      if (!IMOSLoggingEnabled())
      {
        v38 = 0;
        contextCopy = v28;
        goto LABEL_57;
      }

      contextCopy = v28;
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *v97 = 0;
        _os_log_impl(&dword_1A85E5000, v37, OS_LOG_TYPE_INFO, "Timed out generating animated image preview.", v97, 2u);
      }
    }

    else
    {
      v55 = vmulq_n_f64(v88[2], constraints->var2);
      if (size)
      {
        *size = v55;
      }

      aSizea = v55;
      [v29 stopTimingForKey:@"IMAnimatedImagePreviewGenerator_PreviewGenerationTime"];
      contextCopy = v28;
      if (IMOSLoggingEnabled())
      {
        v56 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = *(v93 + 24);
          v58 = *(*&buf[8] + 40);
          v59 = NSStringFromSize(aSizea);
          v60 = v59;
          v61 = @"NO";
          *v97 = 138413058;
          if (v57)
          {
            v61 = @"YES";
          }

          v98 = v61;
          v99 = 2112;
          v100 = v58;
          v101 = 2112;
          v102 = v59;
          v103 = 2112;
          v104 = v29;
          _os_log_impl(&dword_1A85E5000, v56, OS_LOG_TYPE_INFO, "Cache miss on animated image preview generation with success: (%@), error: (%@), outSize: %@ and timing: %@", v97, 0x2Au);

          contextCopy = v28;
        }
      }

      v62 = +[IMMetricsCollector sharedInstance];
      [v62 trackEvent:@"com.apple.Messages.IMMetricsCollectorEventPreviewCacheMiss"];

      if (*(v93 + 24) == 1)
      {
        v38 = v35;
        goto LABEL_57;
      }

      if (error)
      {
        v38 = 0;
        *error = *(*&buf[8] + 40);
        goto LABEL_57;
      }
    }

    v38 = 0;
LABEL_57:

    _Block_object_dispose(&v87, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v92, 8);
    goto LABEL_71;
  }

  if (IMOSLoggingEnabled())
  {
    v43 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A85E5000, v43, OS_LOG_TYPE_INFO, "%@ generate animated preview using inefficient BlastDoor.", buf, 0xCu);
    }
  }

  v44 = MEMORY[0x1AC570AA0](@"CKAnimatedImage", @"ChatKit");
  v45 = MEMORY[0x1AC570AA0](@"CKAnimatedImageMediaObject", @"ChatKit");
  v46 = v45;
  if (!v45 || !v44)
  {
    if (IMOSLoggingEnabled())
    {
      v52 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = objc_opt_class();
        *buf = 138412802;
        *&buf[4] = v53;
        *&buf[12] = 2112;
        *&buf[14] = v46;
        *&buf[22] = 2112;
        v106 = v44;
        v54 = v53;
        _os_log_impl(&dword_1A85E5000, v52, OS_LOG_TYPE_INFO, "%@ failed to weak link CKAnimatedImageMediaObjectClass - %@ CKAnimatedImageClass - %@", buf, 0x20u);
      }
    }

    if (error)
    {
      goto LABEL_52;
    }

    goto LABEL_70;
  }

  v47 = constraints->var0;
  v48 = constraints->var2;
  if (![(objc_class *)v45 conformsToProtocol:&unk_1F1C42D58])
  {
    if (IMOSLoggingEnabled())
    {
      v63 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = objc_opt_class();
        *buf = 138412290;
        *&buf[4] = v64;
        v65 = v64;
        _os_log_impl(&dword_1A85E5000, v63, OS_LOG_TYPE_INFO, "%@ CKAnimatedImageMediaObject not conforming to appropriate protocols", buf, 0xCu);
      }
    }

    if (error)
    {
LABEL_52:
      v42 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:10 userInfo:0];
      goto LABEL_53;
    }

LABEL_70:
    v38 = 0;
    goto LABEL_71;
  }

  v49 = objc_alloc_init(v46);
  stringGUID2 = [MEMORY[0x1E696AEC0] stringGUID];
  v38 = [v49 generateAndPersistAnimatedPreviewFromSourceURL:lCopy senderContext:contextCopy forWidth:stringGUID2 withTransferGUID:constraints->var3 isSticker:v47 / v48];

  if ([v44 conformsToProtocol:&unk_1F1C42F60])
  {
    if (size)
    {
      if (v38)
      {
        v81 = 0;
        v51 = [v44 animatedImageFromOptimizedBitmapAtFileURL:v38 error:&v81];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v69 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A85E5000, v69, OS_LOG_TYPE_INFO, "Could not create CKAnimatedImage - previewURL is nil.", buf, 2u);
          }
        }

        v51 = 0;
      }

      [v51 size];
      v71 = v70;
      v73 = v72;
      [v51 scale];
      size->width = v71 * v74;
      size->height = v73 * v74;
    }

    goto LABEL_71;
  }

  if (IMOSLoggingEnabled())
  {
    v66 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v67 = objc_opt_class();
      *buf = 138412290;
      *&buf[4] = v67;
      v68 = v67;
      _os_log_impl(&dword_1A85E5000, v66, OS_LOG_TYPE_INFO, "%@ CKAnimatedImageMediaObject not conforming to appropriate protocols", buf, 0xCu);
    }
  }

  if (error)
  {
    v42 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:10 userInfo:0];
    goto LABEL_54;
  }

LABEL_71:
  os_activity_scope_leave(&state);

  return v38;
}

+ (BOOL)validPreviewExistsAtPreviewURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    v7 = [MEMORY[0x1AC570AA0](@"CKAnimatedImage" @"ChatKit")];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end