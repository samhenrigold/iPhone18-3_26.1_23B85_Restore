@interface IMImagePreviewGenerator
+ (BOOL)_getUncroppedSizeForImageAtURL:(id)l scale:(double)scale withImageSizeInPx:(CGSize)px maximumSizeInPx:(CGSize)inPx minimumSizeInPx:(CGSize)sizeInPx previewSize:(CGSize *)size senderContext:(id)context;
+ (CGImage)_newBlastdoorPreviewForFileAtURL:(id)l senderContext:(id)context maxPxWidth:(double)width scale:(double)scale isScreenshot:(BOOL *)screenshot isMonoskiAsset:(BOOL *)asset stickerEffect:(id *)effect error:(id *)self0;
+ (CGImage)_newCroppedAndScaledImageWithImageSource:(CGImageSource *)source withPreviewConstraints:(IMPreviewConstraints *)constraints;
+ (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error;
@end

@implementation IMImagePreviewGenerator

+ (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v20 = 138412546;
      *&v20[4] = self;
      *&v20[12] = 2112;
      *&v20[14] = lCopy;
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Generating preview for class %@ from sourceURL %@", v20, 0x16u);
    }
  }

  if (!lCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "IMImagePreviewGenerator - sourceURL is nil", v20, 2u);
      }
    }

    if (error)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:5 userInfo:0];
      goto LABEL_20;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v13 = CGImageSourceCreateWithURL(lCopy, 0);
  if (!v13)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v20 = 138412290;
        *&v20[4] = lCopy;
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "IMImagePreviewGenerator - Unable to generate image ref for %@", v20, 0xCu);
      }
    }

    if (error)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:3 userInfo:0];
LABEL_20:
      v15 = 0;
      *error = v17;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14 = *&constraints->var1.height;
  *v20 = *&constraints->var0;
  *&v20[16] = v14;
  v21 = *&constraints->var3;
  v15 = [self _newCroppedAndScaledImageWithImageSource:v13 withPreviewConstraints:v20];
  CFRelease(v13);
LABEL_22:

  return v15;
}

+ (CGImage)_newCroppedAndScaledImageWithImageSource:(CGImageSource *)source withPreviewConstraints:(IMPreviewConstraints *)constraints
{
  v25 = *MEMORY[0x1E69E9840];
  [IMImageUtilities imageSourcePxSize:?];
  v8 = v7;
  v10 = v9;
  var0 = constraints->var0;
  v12 = fmax(v8 / v9, 0.75);
  if (v12 > 1.77777778)
  {
    v12 = 1.77777778;
  }

  v13 = round(var0);
  v14 = round(var0 / v12);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = IMStringFromCGSize(v8, v10);
      v17 = constraints->var0;
      v18 = IMStringFromCGSize(v13, v14);
      *v23 = 138412802;
      *&v23[4] = v16;
      *&v23[12] = 2048;
      *&v23[14] = v17;
      *&v23[22] = 2112;
      *&v23[24] = v18;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Generating thumbnail for image with px size %@ maxWidth: %f thumbnailSize %@", v23, 0x20u);
    }
  }

  v19 = [self newThumbnailFillToSize:source imagePxSize:v13 imageSource:v14 scale:{v8, v10, constraints->var2}];
  v20 = *&constraints->var1.height;
  *v23 = *&constraints->var0;
  *&v23[16] = v20;
  v24 = *&constraints->var3;
  v21 = [self newCroppedAndRescaledImageFromImage:v19 constraints:v23 targetPxSize:{v13, v14}];
  if (v19)
  {
    CFRelease(v19);
  }

  return v21;
}

+ (CGImage)_newBlastdoorPreviewForFileAtURL:(id)l senderContext:(id)context maxPxWidth:(double)width scale:(double)scale isScreenshot:(BOOL *)screenshot isMonoskiAsset:(BOOL *)asset stickerEffect:(id *)effect error:(id *)self0
{
  assetCopy = asset;
  v52 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  *&v17 = width;
  *&v18 = scale;
  v19 = [IMAttachmentBlastdoor generateImagePreviewForFileURL:lCopy senderContext:contextCopy maxPixelDimension:&assetCopy + 8 scale:v17 error:v18];
  v20 = *(&assetCopy + 1);
  if (v19 && ([v19 utTypeString], (v21 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v19, "utTypeString"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length") == 0, v22, v21, !v23))
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    utTypeString = [v19 utTypeString];
    [v24 setValue:utTypeString forKey:@"uti_type"];

    v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(contextCopy, "isFromMe")}];
    [v24 setValue:v26 forKey:@"is_from_me"];
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(contextCopy, "isTrustedSender")}];
    [v24 setValue:v27 forKey:@"is_trusted_sender"];
    serviceName = [contextCopy serviceName];
    [v24 setValue:serviceName forKey:@"service"];

    v29 = +[IMMetricsCollector sharedInstance];
    [v29 trackEvent:@"com.apple.Messages.IMMetricsCollectorEventImagePreviewGenerationSuccess" withDictionary:v24];
  }

  else
  {
    v24 = +[IMMetricsCollector sharedInstance];
    [v24 trackEvent:@"com.apple.Messages.IMMetricsCollectorEventImagePreviewGenerationFailure"];
  }

  v30 = +[IMDefaults sharedInstance];
  v31 = [v30 getBoolFromDomain:@"com.apple.imtranscoding.IMTranscoderAgent" forKey:@"failBDPreviewGeneration" defaultValue:0];

  if (v31)
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v45 = @"com.apple.imtranscoding.IMTranscoderAgent";
        v46 = 2112;
        v47 = @"failBDPreviewGeneration";
        v48 = 2112;
        v49 = v19;
        v50 = 2112;
        v51 = v20;
        _os_log_impl(&dword_1A85E5000, v32, OS_LOG_TYPE_INFO, "Forcing PreviewGeneration to fail due to default %@ %@. Actual result: image %@ error %@", buf, 0x2Au);
      }
    }

    v33 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:14 userInfo:0];
    v20 = v33;
    goto LABEL_16;
  }

  if (!v19)
  {
LABEL_16:
    if (!v20)
    {
      v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];
    }

    v19 = 0;
    isScreenshot = 0;
    v35 = 0;
    goto LABEL_19;
  }

  image = [v19 image];
  v35 = CGImageRetain([image cgImage]);

  if (+[IMImageUtilities isCroppingAvoidanceEnabled]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    isScreenshot = [v19 isScreenshot];
  }

  else
  {
    isScreenshot = 0;
  }

  *assetCopy = 0;
  if (objc_opt_respondsToSelector())
  {
    *assetCopy = [v19 isMonoskiAsset];
  }

  v39 = +[IMFeatureFlags sharedFeatureFlags];
  isClingEnabled = [v39 isClingEnabled];

  v41 = isClingEnabled ^ 1;
  if (!effect)
  {
    v41 = 1;
  }

  if (v41 & 1) == 0 && (objc_opt_respondsToSelector())
  {
    *effect = [v19 stickerEffect];
  }

LABEL_19:
  if (error && !v35)
  {
    v37 = v20;
    *error = v20;
  }

  if (screenshot)
  {
    *screenshot = isScreenshot;
  }

  return v35;
}

+ (BOOL)_getUncroppedSizeForImageAtURL:(id)l scale:(double)scale withImageSizeInPx:(CGSize)px maximumSizeInPx:(CGSize)inPx minimumSizeInPx:(CGSize)sizeInPx previewSize:(CGSize *)size senderContext:(id)context
{
  height = sizeInPx.height;
  width = sizeInPx.width;
  v13 = inPx.height;
  v14 = inPx.width;
  v15 = px.height;
  v16 = px.width;
  lCopy = l;
  contextCopy = context;
  if (![IMImageUtilities shouldCropImageOfSize:v16 maximumSizeInPx:v15 minimumSizeInPx:v14, v13, width, height])
  {
    v31 = 0;
    v30 = 0;
    v22 = [self _newBlastdoorPreviewForFileAtURL:lCopy senderContext:contextCopy maxPxWidth:&v31 + 1 scale:&v31 isScreenshot:0 isMonoskiAsset:&v30 stickerEffect:v14 error:scale];
    v23 = v30;
    if (v22)
    {
      [IMImageUtilities uncroppedPreviewImageSizeFromImageSizeInPx:v16 maximumSizeInPx:v15, v14, v13];
      v25 = v24;
      v27 = v26;
      if (HIBYTE(v31) == 1 || [IMImageUtilities imageIsSubjectLift:v22])
      {
        size->width = v25;
        size->height = v27;
        CGImageRelease(v22);
        v21 = 1;
LABEL_12:

        goto LABEL_13;
      }

      CGImageRelease(v22);
    }

    else
    {
      v28 = IMLogHandleForCategory("IMImagePreviewGenerator");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C5C04(v23, lCopy, v28);
      }
    }

    v21 = 0;
    goto LABEL_12;
  }

  v21 = 0;
LABEL_13:

  return v21;
}

+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error
{
  v87[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  v15 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewImage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  if (lCopy && size && error)
  {
    v16 = IMOSLoggingEnabled();
    errorCopy = error;
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = lCopy;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Invoking Blastdoor for image at source URL: %@", buf, 0xCu);
      }
    }

    v18 = MEMORY[0x1E695DFF8];
    v19 = IMSafeTemporaryDirectory(v16);
    path = [v19 path];
    v87[0] = path;
    v87[1] = @"ImagePreview";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    v22 = [v18 fileURLWithPathComponents:v21];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:0];

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v25 = [v22 URLByAppendingPathComponent:stringGUID isDirectory:0];
    v26 = [v25 URLByAppendingPathExtension:@"ktx"];

    if (!v26)
    {
      if (IMOSLoggingEnabled())
      {
        v62 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = lCopy;
          _os_log_impl(&dword_1A85E5000, v62, OS_LOG_TYPE_INFO, "Failed to get a temporaryPreviewURL for sourceURL: %@", buf, 0xCu);
        }
      }

      [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:6 userInfo:0];
      v26 = 0;
      *error = v61 = 0;
      goto LABEL_88;
    }

    if (![self writesToDisk])
    {
      v61 = 0;
LABEL_88:

      goto LABEL_89;
    }

    v82 = 0;
    var0 = constraints->var0;
    if (constraints->var0 < *"")
    {
      var0 = *"";
    }

    var2 = constraints->var2;
    v80 = 0;
    v81 = 0;
    v29 = [self _newBlastdoorPreviewForFileAtURL:lCopy senderContext:contextCopy maxPxWidth:&v82 + 1 scale:&v82 isScreenshot:&v81 isMonoskiAsset:&v80 stickerEffect:var0 error:var2];
    v73 = v81;
    v30 = v80;
    v72 = v30;
    if (!v29 || v30)
    {
      if (v30)
      {
        v63 = v30;

        goto LABEL_86;
      }

      v63 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];

      if (v63)
      {
        goto LABEL_86;
      }

LABEL_62:
      v63 = 0;
      v26 = 0;
LABEL_87:
      v26 = v26;

      v61 = v26;
      goto LABEL_88;
    }

    image = v29;
    [IMImageUtilities imageRefPxSize:v29];
    v32 = v31;
    v34 = v33;
    v35 = constraints->var0;
    v36 = fmax(v31 / v33, 0.75);
    if (v36 <= 1.77777778)
    {
      v37 = v36;
    }

    else
    {
      v37 = 1.77777778;
    }

    v38 = +[IMImageUtilities isCroppingAvoidanceEnabled];
    v39 = v35 / v37;
    v40 = round(v35);
    v41 = round(v39);
    if (v38)
    {
      if (constraints->var3)
      {
        v41 = v34;
        v40 = v32;
      }

      v42 = [IMImageUtilities newUncroppedPreviewImageFromImage:v29 isScreenshot:HIBYTE(v82) maximumSizeInPx:v40 minimumSizeInPx:v41, constraints->var1.width, constraints->var1.height];
      if (v42)
      {
        goto LABEL_22;
      }
    }

    v43 = *&constraints->var1.height;
    *buf = *&constraints->var0;
    v85 = v43;
    v86 = *&constraints->var3;
    v44 = [self newCroppedAndRescaledImageFromImage:v29 constraints:buf targetPxSize:{v40, v41}];
    v42 = v44;
    if (v44)
    {
LABEL_22:
      v79 = 0;
      v45 = v42;
      v46 = [IMImageUtilities persistPreviewToDiskCache:v42 previewURL:v26 error:&v79];
      v74 = v79;
      if (v46)
      {
        [IMImageUtilities imageRefPxSize:v45];
        v32 = v47;
        v34 = v48;
        uRLByDeletingPathExtension = [v26 URLByDeletingPathExtension];
        v50 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"plist"];

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v51 = +[IMFeatureFlags sharedFeatureFlags];
        isClingEnabled = [v51 isClingEnabled];

        if (isClingEnabled && [v73 length] && (objc_msgSend(v73, "isEqualToString:", @"none") & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v53 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v73;
              _os_log_impl(&dword_1A85E5000, v53, OS_LOG_TYPE_INFO, "Sticker had effect: %@", buf, 0xCu);
            }
          }

          [dictionary setObject:v73 forKeyedSubscript:@"stickerEffectType"];
        }

        if (v82 == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v54 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A85E5000, v54, OS_LOG_TYPE_INFO, "Image was monoski.", buf, 2u);
            }
          }

          v55 = [MEMORY[0x1E696AD98] numberWithBool:v82];
          [dictionary setObject:v55 forKeyedSubscript:@"IMIsMonoskiAssetKey"];
        }

        if (![dictionary count])
        {
          goto LABEL_79;
        }

        if (IMOSLoggingEnabled())
        {
          v56 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A85E5000, v56, OS_LOG_TYPE_INFO, "Writing preview metadata", buf, 2u);
          }
        }

        v78 = 0;
        v57 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:&v78];
        v58 = v78;
        if (v57)
        {
          if ([v57 writeToURL:v50 atomically:1])
          {
            if (IMOSLoggingEnabled())
            {
              v59 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v50;
                _os_log_impl(&dword_1A85E5000, v59, OS_LOG_TYPE_INFO, "Wrote down preview metadata plist to %@", buf, 0xCu);
              }

LABEL_77:
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v59 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v50;
              _os_log_impl(&dword_1A85E5000, v59, OS_LOG_TYPE_INFO, "Couldn't write down preview metadata plist to %@", buf, 0xCu);
            }

            goto LABEL_77;
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v59 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v58;
            _os_log_impl(&dword_1A85E5000, v59, OS_LOG_TYPE_INFO, "Failed making preview metadata plist %@", buf, 0xCu);
          }

          goto LABEL_77;
        }

LABEL_79:
        v64 = 0;
        v66 = 1;
        goto LABEL_80;
      }

      v44 = v74;
    }

    else
    {
      v45 = 0;
    }

    v74 = v44;
    v64 = [(CGImage *)v44 copy];
    if (IMOSLoggingEnabled())
    {
      v65 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v64;
        _os_log_impl(&dword_1A85E5000, v65, OS_LOG_TYPE_INFO, "IMImagePreviewGenerator - Unable to generate image: error=%@", buf, 0xCu);
      }
    }

    v66 = 0;
LABEL_80:
    CGImageRelease(v45);
    v63 = v64;
    CGImageRelease(image);

    if (v64)
    {
      v67 = 0;
    }

    else
    {
      v67 = v66;
    }

    if (v67 == 1)
    {
      v63 = 0;
      size->width = v32;
      size->height = v34;
      goto LABEL_87;
    }

    if (v64)
    {
LABEL_86:
      v68 = v63;
      v26 = 0;
      *errorCopy = v63;
      goto LABEL_87;
    }

    goto LABEL_62;
  }

  if (IMOSLoggingEnabled())
  {
    v60 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v60, OS_LOG_TYPE_INFO, "Invalid parameters", buf, 2u);
    }
  }

  v61 = 0;
LABEL_89:
  os_activity_scope_leave(&state);

  return v61;
}

@end