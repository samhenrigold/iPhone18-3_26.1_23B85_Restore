@interface SBFWebClipUtilities
+ (id)sanitizeWebClip:(id)clip;
+ (id)sanitizeWebClips:(id)clips;
+ (id)sanitizeWebClipsIfNeeded;
@end

@implementation SBFWebClipUtilities

+ (id)sanitizeWebClipsIfNeeded
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = _CFCopySystemVersionDictionaryValue();
  v5 = v4;
  v6 = @"Invalid Build Version";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [standardUserDefaults objectForKey:@"SBFWebClipUtilitiesLastSanitizedBuildVersionUserDefaultsKey"];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v11 = SBLogWebClip(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1BEA11000, v11, OS_LOG_TYPE_DEFAULT, "Webclips already sanitized for this build; skipping...", v15, 2u);
    }

    v12 = 0;
  }

  else
  {
    webClips = [MEMORY[0x1E69DD2B8] webClips];
    v12 = [self sanitizeWebClips:webClips];

    [standardUserDefaults setObject:v7 forKey:@"SBFWebClipUtilitiesLastSanitizedBuildVersionUserDefaultsKey"];
  }

  return v12;
}

+ (id)sanitizeWebClips:(id)clips
{
  v21 = *MEMORY[0x1E69E9840];
  clipsCopy = clips;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [clipsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    strongToStrongObjectsMapTable = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(clipsCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [self sanitizeWebClip:v10];
        error = [v11 error];
        result = [v11 result];
        if (error)
        {
          v14 = 1;
        }

        else
        {
          v14 = result == 0;
        }

        if (v14)
        {
          if (!strongToStrongObjectsMapTable)
          {
            strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
          }

          [strongToStrongObjectsMapTable setObject:v11 forKey:v10];
        }
      }

      v6 = [clipsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    strongToStrongObjectsMapTable = 0;
  }

  return strongToStrongObjectsMapTable;
}

+ (id)sanitizeWebClip:(id)clip
{
  v71[1] = *MEMORY[0x1E69E9840];
  clipCopy = clip;
  v4 = clipCopy;
  if (!clipCopy || ([clipCopy pageURL], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    iconImagePath = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.springboard.webClipUtilitiesErrorDomain" code:0 userInfo:0];
    v27 = [SBFWebClipSanitationReport alloc];
    v28 = v4;
    v29 = 0;
    v30 = iconImagePath;
LABEL_15:
    v26 = [(SBFWebClipSanitationReport *)v27 initWithWebClip:v28 result:v29 error:v30];
    goto LABEL_16;
  }

  v7 = SBLogWebClip(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [v4 identifier];
    *buf = 138412290;
    v65 = identifier;
    _os_log_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_DEFAULT, "Sanitizing webclip '%@'", buf, 0xCu);
  }

  iconImagePath = [v4 iconImagePath];
  if (![iconImagePath length])
  {
    v27 = [SBFWebClipSanitationReport alloc];
    v28 = v4;
    v29 = 1;
    v30 = 0;
    goto LABEL_15;
  }

  v10 = CGDataProviderCreateWithFilename([iconImagePath fileSystemRepresentation]);
  v11 = CGImageSourceCreateWithDataProvider(v10, 0);
  v13 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
  v70 = *MEMORY[0x1E696E0A8];
  v71[0] = MEMORY[0x1E695E110];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
  v15 = CGImageSourceCopyPropertiesAtIndex(v11, 0, v14);

  v17 = v12;
  v18 = v13;
  if (v15)
  {
    v19 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    [v19 floatValue];
    v18 = v20;

    v21 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    [v21 floatValue];
    v17 = v22;

    CFRelease(v15);
  }

  v23 = SBLogWebClip(v16);
  v24 = v23;
  if (v13 == v18 && v12 == v17)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SBFWebClipUtilities sanitizeWebClip:v4];
    }

    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.springboard.webClipUtilitiesErrorDomain" code:1 userInfo:0];
    v26 = [[SBFWebClipSanitationReport alloc] initWithWebClip:v4 result:0 error:v25];

    if (!v11)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      identifier2 = [v4 identifier];
      v73.width = v18;
      v73.height = v17;
      v33 = NSStringFromCGSize(v73);
      *buf = 138412546;
      v65 = identifier2;
      v66 = 2112;
      v67 = v33;
      _os_log_impl(&dword_1BEA11000, v24, OS_LOG_TYPE_INFO, "Webclip '%@' is of size %@; checking if sanitization is needed...", buf, 0x16u);
    }

    if (v18 > 400.0 || v17 > 400.0)
    {
      v40 = SBLogWebClip(v34);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        identifier3 = [v4 identifier];
        v74.width = v18;
        v74.height = v17;
        v42 = NSStringFromCGSize(v74);
        v75.width = 400.0;
        v75.height = 400.0;
        v43 = NSStringFromCGSize(v75);
        *buf = 138412802;
        v65 = identifier3;
        v66 = 2112;
        v67 = v42;
        v68 = 2112;
        v69 = v43;
        _os_log_impl(&dword_1BEA11000, v40, OS_LOG_TYPE_INFO, "Webclip '%@' needs to be sanitized; resizing icon from %@ -> %@", buf, 0x20u);
      }

      v44 = objc_autoreleasePoolPush();
      v45 = *MEMORY[0x1E696E100];
      v62[0] = *MEMORY[0x1E696DFE8];
      v62[1] = v45;
      v63[0] = MEMORY[0x1E695E118];
      v46 = [MEMORY[0x1E696AD98] numberWithDouble:400.0];
      v63[1] = v46;
      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v11, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2]);

      if (ThumbnailAtIndex)
      {
        v49 = [MEMORY[0x1E695DFF8] fileURLWithPath:iconImagePath];
        v50 = CGImageDestinationCreateWithURL(v49, [*MEMORY[0x1E6982F28] identifier], 1uLL, 0);

        CGImageDestinationAddImage(v50, ThumbnailAtIndex, 0);
        v51 = CGImageDestinationFinalize(v50);
        v52 = v51;
        v53 = SBLogWebClip(v51);
        v54 = v53;
        if (v52)
        {
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            identifier4 = [v4 identifier];
            *buf = 138412290;
            v65 = identifier4;
            _os_log_impl(&dword_1BEA11000, v54, OS_LOG_TYPE_DEFAULT, "Sanitized webclip '%@'", buf, 0xCu);
          }

          v26 = [[SBFWebClipSanitationReport alloc] initWithWebClip:v4 result:2 error:0];
        }

        else
        {
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            [SBFWebClipUtilities sanitizeWebClip:v4];
          }

          v58 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.springboard.webClipUtilitiesErrorDomain" code:2 userInfo:0];
          v26 = [[SBFWebClipSanitationReport alloc] initWithWebClip:v4 result:0 error:v58];
        }

        if (v50)
        {
          CFRelease(v50);
        }

        CFRelease(ThumbnailAtIndex);
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v60 = *MEMORY[0x1E696A3A0];
        v61 = *MEMORY[0x1E696A3A8];
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        [defaultManager setAttributes:v59 ofItemAtPath:iconImagePath error:0];
      }

      else
      {
        v56 = SBLogWebClip(v48);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          [SBFWebClipUtilities sanitizeWebClip:v4];
        }

        defaultManager = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.springboard.webClipUtilitiesErrorDomain" code:2 userInfo:0];
        v26 = [[SBFWebClipSanitationReport alloc] initWithWebClip:v4 result:0 error:defaultManager];
      }

      objc_autoreleasePoolPop(v44);
      if (!v11)
      {
        goto LABEL_50;
      }
    }

    else
    {
      sb_markIconImageFileProtectionTypeAsNone = [v4 sb_markIconImageFileProtectionTypeAsNone];
      if (sb_markIconImageFileProtectionTypeAsNone)
      {
        v36 = SBLogWebClip(sb_markIconImageFileProtectionTypeAsNone);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          identifier5 = [v4 identifier];
          *buf = 138412290;
          v65 = identifier5;
          _os_log_impl(&dword_1BEA11000, v36, OS_LOG_TYPE_DEFAULT, "Sanitized webclip '%@' needed File Protection Class repair", buf, 0xCu);
        }
      }

      v38 = SBLogWebClip(sb_markIconImageFileProtectionTypeAsNone);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        identifier6 = [v4 identifier];
        *buf = 138412290;
        v65 = identifier6;
        _os_log_impl(&dword_1BEA11000, v38, OS_LOG_TYPE_DEFAULT, "Sanitized webclip '%@' didn't need sanitizing", buf, 0xCu);
      }

      v26 = [[SBFWebClipSanitationReport alloc] initWithWebClip:v4 result:1 error:0];
      if (!v11)
      {
        goto LABEL_50;
      }
    }
  }

  CFRelease(v11);
LABEL_50:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_16:

  return v26;
}

+ (void)sanitizeWebClip:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_8(&dword_1BEA11000, v2, v3, "Webclip '%@' icon cannot be resized.", v4, v5, v6, v7, v8, DWORD2(v8));
}

+ (void)sanitizeWebClip:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 identifier];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_8(&dword_1BEA11000, v2, v3, "Webclip '%@' cannot be resized; Failed to create CGImageSource; Bailing.", v4, v5, v6, v7, v8, DWORD2(v8));
}

+ (void)sanitizeWebClip:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 identifier];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_8(&dword_1BEA11000, v2, v3, "Webclip '%@' cannot be resized; Icon is of size 0,0; Bailing.", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end