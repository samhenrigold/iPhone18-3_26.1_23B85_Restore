@interface _MSMessageMediaPayload
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (BOOL)uriIsUltraExtension;
- (CGRect)sourceFrame;
- (NSURL)mediaURL;
- (UIImage)image;
- (_MSMessageMediaPayload)init;
- (_MSMessageMediaPayload)initWithCoder:(id)coder;
- (_MSMessageMediaPayload)initWithIMSticker:(id)sticker;
- (_MSMessageMediaPayload)initWithSticker:(id)sticker;
- (id)convertToStickerWithExtensionIdentifier:(id)identifier;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)setImage:(id)image;
- (void)setMediaURL:(id)l;
@end

@implementation _MSMessageMediaPayload

- (id)convertToStickerWithExtensionIdentifier:(id)identifier
{
  v83 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (![(_MSMessageMediaPayload *)self isSticker])
  {
    v10 = 0;
    goto LABEL_49;
  }

  stickerRepresentations = [(_MSMessageMediaPayload *)self stickerRepresentations];
  v75 = identifierCopy;
  if (!stickerRepresentations || (v6 = stickerRepresentations, [(_MSMessageMediaPayload *)self stickerStoreIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v11 = MEMORY[0x1E696AEC0];
    mediaURL = [(_MSMessageMediaPayload *)self mediaURL];
    path = [mediaURL path];
    v14 = IMSharedHelperMD5HashOfFileAtPath();
    v15 = [v11 stringWithFormat:@"%@-sticker", v14];

    mediaURL2 = [(_MSMessageMediaPayload *)self mediaURL];
    pathExtension = [mediaURL2 pathExtension];

    v74 = pathExtension;
    if (pathExtension)
    {
      v18 = [v15 stringByAppendingPathExtension:pathExtension];

      v15 = v18;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v20 = [defaultManager im_randomTemporaryFileURLWithFileName:v15];

    v76 = v20;
    if (v20 && ([(_MSMessageMediaPayload *)self mediaURL], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      mediaURL3 = [(_MSMessageMediaPayload *)self mediaURL];
      v78 = 0;
      v25 = [defaultManager2 copyItemAtURL:mediaURL3 toURL:v20 error:&v78];
      v26 = v78;

      if (!v25 || !v26)
      {
        goto LABEL_19;
      }

      v28 = ms_defaultLog(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [_MSMessageMediaPayload convertToStickerWithExtensionIdentifier:];
      }
    }

    else
    {
      v28 = ms_defaultLog(v21);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        mediaURL4 = [(_MSMessageMediaPayload *)self mediaURL];
        *buf = 138412546;
        v80 = v20;
        v81 = 2112;
        v82 = mediaURL4;
        _os_log_impl(&dword_1CADE6000, v28, OS_LOG_TYPE_DEFAULT, "_MSMessageMediaPayload: Cannot copy sticker file: %@ to %@, because either the source or destination file URL is nil. This may be expected if the original sticker did not have a file URL", buf, 0x16u);
      }

      v26 = 0;
    }

LABEL_19:
    v30 = v15;
    v31 = identifierCopy;
    v71 = v26;
    if (+[_MSPresentationState isRunningInCameraContext])
    {
      mediaFilename = [(_MSMessageMediaPayload *)self mediaFilename];
      if (!mediaFilename)
      {
        mediaURL5 = [(_MSMessageMediaPayload *)self mediaURL];
        mediaFilename = [mediaURL5 lastPathComponent];
      }
    }

    else
    {
      mediaFilename = 0;
    }

    v34 = objc_alloc(MEMORY[0x1E69A82C0]);
    accessibilityLabel = [(_MSMessageMediaPayload *)self accessibilityLabel];
    accessibilityName = [(_MSMessageMediaPayload *)self accessibilityName];
    searchText = [(_MSMessageMediaPayload *)self searchText];
    sanitizedPrompt = [(_MSMessageMediaPayload *)self sanitizedPrompt];
    v10 = [v34 initWithStickerID:v30 stickerPackID:v31 fileURL:v76 accessibilityLabel:accessibilityLabel accessibilityName:accessibilityName searchText:searchText sanitizedPrompt:sanitizedPrompt moodCategory:0 stickerName:mediaFilename];

    stickerRepresentations2 = [(_MSMessageMediaPayload *)self stickerRepresentations];

    if (stickerRepresentations2)
    {
      stickerRepresentations3 = [(_MSMessageMediaPayload *)self stickerRepresentations];
      [v10 setRepresentations:stickerRepresentations3];
    }

    externalURI = [(_MSMessageMediaPayload *)self externalURI];

    if (externalURI)
    {
      externalURI2 = [(_MSMessageMediaPayload *)self externalURI];
      [v10 setExternalURI:externalURI2];
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isStickersAppEnabled = [mEMORY[0x1E69A8070] isStickersAppEnabled];

    if (isStickersAppEnabled && [(_MSMessageMediaPayload *)self stickerEffectType])
    {
      [v10 setStickerEffectType:{-[_MSMessageMediaPayload stickerEffectType](self, "stickerEffectType")}];
    }

    identifierCopy = v75;
    goto LABEL_33;
  }

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isClingEnabled = [mEMORY[0x1E69A8070]2 isClingEnabled];

  if (isClingEnabled)
  {
    stickerEffectType = [(_MSMessageMediaPayload *)self stickerEffectType];
  }

  else
  {
    stickerEffectType = -1;
  }

  v72 = objc_alloc(MEMORY[0x1E69A82C0]);
  stickerStoreIdentifier = [(_MSMessageMediaPayload *)self stickerStoreIdentifier];
  uUIDString = [stickerStoreIdentifier UUIDString];
  stickerRepresentations4 = [(_MSMessageMediaPayload *)self stickerRepresentations];
  initialFrameIndex = [(_MSMessageMediaPayload *)self initialFrameIndex];
  externalURI3 = [(_MSMessageMediaPayload *)self externalURI];
  stickerName = [(_MSMessageMediaPayload *)self stickerName];
  accessibilityLabel2 = [(_MSMessageMediaPayload *)self accessibilityLabel];
  accessibilityName2 = [(_MSMessageMediaPayload *)self accessibilityName];
  searchText2 = [(_MSMessageMediaPayload *)self searchText];
  sanitizedPrompt2 = [(_MSMessageMediaPayload *)self sanitizedPrompt];
  stickerMetadata = [(_MSMessageMediaPayload *)self stickerMetadata];
  v10 = [v72 initWithStickerIdentifier:uUIDString stickerPackID:identifierCopy representations:stickerRepresentations4 effectType:stickerEffectType initialFrameIndex:initialFrameIndex externalURI:externalURI3 stickerName:stickerName accessibilityLabel:accessibilityLabel2 accessibilityName:accessibilityName2 searchText:searchText2 sanitizedPrompt:sanitizedPrompt2 metadata:stickerMetadata];

LABEL_33:
  v52 = IMBalloonExtensionIDWithSuffix();
  v53 = [identifierCopy isEqualToString:v52];

  if (v53)
  {
    animatedImageCacheURL = [(_MSMessageMediaPayload *)self animatedImageCacheURL];
    [v10 setAnimatedImageCacheURLFromExtension:animatedImageCacheURL];
  }

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v56 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:identifierCopy];

  if (v56)
  {
    selfCopy = v56;
  }

  else
  {
    v59 = ms_defaultLog(v57);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      [_MSMessageMediaPayload convertToStickerWithExtensionIdentifier:];
    }

    selfCopy = self;
  }

  attributionInfo = [(_MSMessageMediaPayload *)selfCopy attributionInfo];
  v61 = [attributionInfo mutableCopy];

  if (!v61)
  {
    v63 = ms_defaultLog(v62);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      [_MSMessageMediaPayload convertToStickerWithExtensionIdentifier:];
    }

    Mutable = [MEMORY[0x1E695DF90] dictionary];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v61 = Mutable;
  }

  accessibilityLabel3 = [v10 accessibilityLabel];
  if (accessibilityLabel3)
  {
    CFDictionarySetValue(v61, *MEMORY[0x1E69A6F98], accessibilityLabel3);
  }

  v66 = [(__CFDictionary *)v61 copy];
  [v10 setAttributionInfo:v66];

LABEL_49:

  return v10;
}

- (_MSMessageMediaPayload)initWithSticker:(id)sticker
{
  v47 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  v44.receiver = self;
  v44.super_class = _MSMessageMediaPayload;
  v5 = [(_MSMessageMediaPayload *)&v44 init];
  if (v5)
  {
    imageFileURL = [stickerCopy imageFileURL];
    mediaURL = v5->_mediaURL;
    v5->_mediaURL = imageFileURL;

    localizedDescription = [stickerCopy localizedDescription];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = localizedDescription;

    v5->_isSticker = 1;
    if (objc_opt_respondsToSelector())
    {
      data = [stickerCopy data];
      data = v5->_data;
      v5->_data = data;
    }

    stickerPackGUID = [stickerCopy stickerPackGUID];
    stickerPackGUID = v5->_stickerPackGUID;
    v5->_stickerPackGUID = stickerPackGUID;

    representations = [stickerCopy representations];
    stickerRepresentations = v5->_stickerRepresentations;
    v5->_stickerRepresentations = representations;

    externalURI = [stickerCopy externalURI];
    externalURI = v5->_externalURI;
    v5->_externalURI = externalURI;

    stickerIdentifier = [stickerCopy stickerIdentifier];
    stickerStoreIdentifier = v5->_stickerStoreIdentifier;
    v5->_stickerStoreIdentifier = stickerIdentifier;

    v5->_stickerEffectType = [stickerCopy stickerEffectType];
    attributionInfo = [stickerCopy attributionInfo];
    attributionInfo = v5->_attributionInfo;
    v5->_attributionInfo = attributionInfo;

    if (!v5->_attributionInfo)
    {
      v23 = ms_defaultLog(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [_MSMessageMediaPayload initWithSticker:];
      }
    }

    animatedImageCacheURL = [stickerCopy animatedImageCacheURL];
    animatedImageCacheURL = v5->_animatedImageCacheURL;
    v5->_animatedImageCacheURL = animatedImageCacheURL;

    v26 = *MEMORY[0x1E69A6FB0];
    v27 = [(NSDictionary *)v5->_attributionInfo objectForKey:*MEMORY[0x1E69A6FB0]];

    if (!v27)
    {
      uriIsMemoji = [(_MSMessageMediaPayload *)v5 uriIsMemoji];
      if (uriIsMemoji)
      {
        v29 = ms_defaultLog(uriIsMemoji);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CADE6000, v29, OS_LOG_TYPE_DEFAULT, "_MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID to be Memoji. This means the extension didn't set a bundle ID on the attribution info.", buf, 2u);
        }

        v30 = MEMORY[0x1E69A6980];
LABEL_13:
        v31 = *v30;
        if (!v31)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      if (!IMIsRunningIniMessageAppExtension())
      {
        uriIsUltraExtension = [(_MSMessageMediaPayload *)v5 uriIsUltraExtension];
        if (!uriIsUltraExtension)
        {
          goto LABEL_25;
        }

        v43 = ms_defaultLog(uriIsUltraExtension);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CADE6000, v43, OS_LOG_TYPE_DEFAULT, "_MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID to be StickersUltraExtension. This means the extension didn't set a bundle ID on the attribution info.", buf, 2u);
        }

        v30 = MEMORY[0x1E69A68F8];
        goto LABEL_13;
      }

      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v31 = bundleIdentifier;
      if (bundleIdentifier)
      {
        v34 = ms_defaultLog(bundleIdentifier);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v31;
          _os_log_impl(&dword_1CADE6000, v34, OS_LOG_TYPE_DEFAULT, "MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID from 3rd party extension: %@", buf, 0xCu);
        }

        v35 = v31;
      }

      if (v31)
      {
LABEL_21:
        v36 = v5->_attributionInfo;
        if (v36)
        {
          dictionary = [(NSDictionary *)v36 mutableCopy];
        }

        else
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
        }

        v38 = dictionary;
        [dictionary setObject:v31 forKey:v26];
        v39 = [v38 copy];
        v40 = v5->_attributionInfo;
        v5->_attributionInfo = v39;
      }
    }
  }

LABEL_25:

  return v5;
}

- (_MSMessageMediaPayload)initWithIMSticker:(id)sticker
{
  v56 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  v53.receiver = self;
  v53.super_class = _MSMessageMediaPayload;
  v5 = [(_MSMessageMediaPayload *)&v53 init];
  if (v5)
  {
    fileURL = [stickerCopy fileURL];
    mediaURL = v5->_mediaURL;
    v5->_mediaURL = fileURL;

    accessibilityLabel = [stickerCopy accessibilityLabel];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = accessibilityLabel;

    accessibilityName = [stickerCopy accessibilityName];
    accessibilityName = v5->_accessibilityName;
    v5->_accessibilityName = accessibilityName;

    searchText = [stickerCopy searchText];
    searchText = v5->_searchText;
    v5->_searchText = searchText;

    sanitizedPrompt = [stickerCopy sanitizedPrompt];
    sanitizedPrompt = v5->_sanitizedPrompt;
    v5->_sanitizedPrompt = sanitizedPrompt;

    v5->_isSticker = 1;
    stickerPackGUID = [stickerCopy stickerPackGUID];
    stickerPackGUID = v5->_stickerPackGUID;
    v5->_stickerPackGUID = stickerPackGUID;

    representations = [stickerCopy representations];
    stickerRepresentations = v5->_stickerRepresentations;
    v5->_stickerRepresentations = representations;

    externalURI = [stickerCopy externalURI];
    externalURI = v5->_externalURI;
    v5->_externalURI = externalURI;

    v22 = objc_alloc(MEMORY[0x1E696AFB0]);
    uniqueID = [stickerCopy uniqueID];
    v24 = [v22 initWithUUIDString:uniqueID];
    stickerStoreIdentifier = v5->_stickerStoreIdentifier;
    v5->_stickerStoreIdentifier = v24;

    v5->_stickerEffectType = [stickerCopy stickerEffectType];
    attributionInfo = [stickerCopy attributionInfo];
    v27 = [attributionInfo copy];
    attributionInfo = v5->_attributionInfo;
    v5->_attributionInfo = v27;

    if (!v5->_attributionInfo)
    {
      v30 = ms_defaultLog(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [_MSMessageMediaPayload initWithSticker:];
      }
    }

    ballonBundleID = [stickerCopy ballonBundleID];
    v32 = [ballonBundleID containsString:*MEMORY[0x1E69A69F0]];

    if ((v32 & 1) == 0)
    {
      animatedImageCacheURLFromExtension = [stickerCopy animatedImageCacheURLFromExtension];
      animatedImageCacheURL = v5->_animatedImageCacheURL;
      v5->_animatedImageCacheURL = animatedImageCacheURLFromExtension;
    }

    v35 = *MEMORY[0x1E69A6FB0];
    v36 = [(NSDictionary *)v5->_attributionInfo objectForKey:*MEMORY[0x1E69A6FB0]];

    if (!v36)
    {
      uriIsMemoji = [(_MSMessageMediaPayload *)v5 uriIsMemoji];
      if (uriIsMemoji)
      {
        v38 = ms_defaultLog(uriIsMemoji);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CADE6000, v38, OS_LOG_TYPE_DEFAULT, "_MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID to be Memoji. This means the extension didn't set a bundle ID on the attribution info.", buf, 2u);
        }

        v39 = MEMORY[0x1E69A6980];
LABEL_13:
        v40 = *v39;
        if (!v40)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      if (!IMIsRunningIniMessageAppExtension())
      {
        uriIsUltraExtension = [(_MSMessageMediaPayload *)v5 uriIsUltraExtension];
        if (!uriIsUltraExtension)
        {
          goto LABEL_25;
        }

        v52 = ms_defaultLog(uriIsUltraExtension);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CADE6000, v52, OS_LOG_TYPE_DEFAULT, "_MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID to be StickersUltraExtension. This means the extension didn't set a bundle ID on the attribution info.", buf, 2u);
        }

        v39 = MEMORY[0x1E69A68F8];
        goto LABEL_13;
      }

      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v40 = bundleIdentifier;
      if (bundleIdentifier)
      {
        v43 = ms_defaultLog(bundleIdentifier);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v55 = v40;
          _os_log_impl(&dword_1CADE6000, v43, OS_LOG_TYPE_DEFAULT, "MSMessageMediaPayload: No bundle ID in attribution info, but inferred the bundle ID from 3rd party extension: %@", buf, 0xCu);
        }

        v44 = v40;
      }

      if (v40)
      {
LABEL_21:
        v45 = v5->_attributionInfo;
        if (v45)
        {
          dictionary = [(NSDictionary *)v45 mutableCopy];
        }

        else
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
        }

        v47 = dictionary;
        [dictionary setObject:v40 forKey:v35];
        v48 = [v47 copy];
        v49 = v5->_attributionInfo;
        v5->_attributionInfo = v48;
      }
    }
  }

LABEL_25:

  return v5;
}

- (BOOL)uriIsUltraExtension
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_externalURI)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [&unk_1F4AC70A8 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(&unk_1F4AC70A8);
          }

          if ([(NSString *)self->_externalURI hasPrefix:*(*(&v8 + 1) + 8 * i)])
          {
            LOBYTE(v3) = 1;
            return v3;
          }
        }

        v4 = [&unk_1F4AC70A8 countByEnumeratingWithState:&v8 objects:v12 count:16];
        LOBYTE(v3) = 0;
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (_MSMessageMediaPayload)initWithCoder:(id)coder
{
  v61[6] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v58.receiver = self;
  v58.super_class = _MSMessageMediaPayload;
  v5 = [(_MSMessageMediaPayload *)&v58 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    v7 = *(v5 + 4);
    *(v5 + 4) = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaData"];
    v9 = *(v5 + 7);
    *(v5 + 7) = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaFilename"];
    v11 = *(v5 + 8);
    *(v5 + 8) = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    v13 = *(v5 + 6);
    *(v5 + 6) = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    v15 = *(v5 + 9);
    *(v5 + 9) = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gpRecipeData"];
    v17 = *(v5 + 17);
    *(v5 + 17) = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityLabel"];
    v19 = *(v5 + 10);
    *(v5 + 10) = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityName"];
    v21 = *(v5 + 11);
    *(v5 + 11) = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchText"];
    v23 = *(v5 + 12);
    *(v5 + 12) = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPrompt"];
    v25 = *(v5 + 13);
    *(v5 + 13) = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stickerPackGUID"];
    v27 = *(v5 + 15);
    *(v5 + 15) = v26;

    v5[8] = [coderCopy decodeBoolForKey:@"isSticker"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceFrame"];
    v29 = v28;
    if (v28)
    {
      [v28 CGRectValue];
      *(v5 + 25) = v30;
      *(v5 + 26) = v31;
      *(v5 + 27) = v32;
      *(v5 + 28) = v33;
    }

    else
    {
      v34 = *(MEMORY[0x1E695F058] + 16);
      *(v5 + 200) = *MEMORY[0x1E695F058];
      *(v5 + 216) = v34;
    }

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialFrameIndex"];
    *(v5 + 18) = [v35 unsignedIntegerValue];
    v36 = NSClassFromString(&cfstr_Uistickerrepre.isa);
    if (v36)
    {
      v37 = [coderCopy decodeArrayOfObjectsOfClass:v36 forKey:@"stickerRepresentations"];
      v38 = *(v5 + 19);
      *(v5 + 19) = v37;
    }

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalURI"];
    v40 = *(v5 + 20);
    *(v5 + 20) = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stickerStoreIdentifier"];
    v42 = *(v5 + 21);
    *(v5 + 21) = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stickerName"];
    v44 = *(v5 + 22);
    *(v5 + 22) = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributionInfoData"];
    *(v5 + 5) = [coderCopy decodeIntForKey:@"stickerEffectType"];
    v46 = MEMORY[0x1E695DFD8];
    v61[0] = objc_opt_class();
    v61[1] = objc_opt_class();
    v61[2] = objc_opt_class();
    v61[3] = objc_opt_class();
    v61[4] = objc_opt_class();
    v61[5] = objc_opt_class();
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:6];
    v48 = [v46 setWithArray:v47];

    if (objc_opt_respondsToSelector())
    {
      v57 = 0;
      v49 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:v48 fromData:v45 error:&v57];
      v50 = v57;
    }

    else
    {
      v49 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v48 fromData:v45 error:0];
      v50 = 0;
    }

    v51 = *(v5 + 14);
    *(v5 + 14) = v49;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"animatedImageCacheURL"];
    v53 = *(v5 + 24);
    *(v5 + 24) = v52;

    if (v50)
    {
      v55 = ms_defaultLog(v54);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v50;
        _os_log_impl(&dword_1CADE6000, v55, OS_LOG_TYPE_DEFAULT, "strict-decoding 011 exception/error after unarchivedObjectOfClasses: [%@]", buf, 0xCu);
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = self->_mediaData;
  v5 = self->_mediaType;
  lastPathComponent = self->_mediaFilename;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  image = self->_image;
  if (image)
  {
    __ms_PNGData = [(UIImage *)image __ms_PNGData];

    __ms_UTI = *MEMORY[0x1E6963860];
    goto LABEL_12;
  }

  mediaURL = self->_mediaURL;
  if (mediaURL)
  {
    __ms_PNGData = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:mediaURL options:8 error:0];

    __ms_UTI = [(NSURL *)self->_mediaURL __ms_UTI];

    if (!lastPathComponent)
    {
      lastPathComponent = [(NSURL *)self->_mediaURL lastPathComponent];
    }
  }

  else
  {
LABEL_11:
    __ms_PNGData = v4;
    __ms_UTI = v5;
  }

LABEL_12:
  [coderCopy encodeObject:__ms_UTI forKey:@"mediaType"];
  [coderCopy encodeObject:__ms_PNGData forKey:@"mediaData"];
  [coderCopy encodeObject:lastPathComponent forKey:@"mediaFilename"];
  [coderCopy encodeObject:self->_text forKey:@"text"];
  [coderCopy encodeObject:self->_data forKey:@"data"];
  [coderCopy encodeObject:self->_generativePlaygroundRecipeData forKey:@"gpRecipeData"];
  [coderCopy encodeObject:self->_accessibilityLabel forKey:@"accessibilityLabel"];
  [coderCopy encodeObject:self->_accessibilityName forKey:@"accessibilityName"];
  [coderCopy encodeObject:self->_searchText forKey:@"searchText"];
  [coderCopy encodeObject:self->_sanitizedPrompt forKey:@"sanitizedPrompt"];
  [coderCopy encodeObject:self->_stickerPackGUID forKey:@"stickerPackGUID"];
  [coderCopy encodeBool:self->_isSticker forKey:@"isSticker"];
  v12 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_sourceFrame.origin.x, self->_sourceFrame.origin.y, self->_sourceFrame.size.width, self->_sourceFrame.size.height}];
  [coderCopy encodeObject:v12 forKey:@"sourceFrame"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_initialFrameIndex];
  [coderCopy encodeObject:v13 forKey:@"initialFrameIndex"];

  [coderCopy encodeObject:self->_stickerRepresentations forKey:@"stickerRepresentations"];
  [coderCopy encodeObject:self->_externalURI forKey:@"externalURI"];
  [coderCopy encodeObject:self->_stickerStoreIdentifier forKey:@"stickerStoreIdentifier"];
  [coderCopy encodeObject:self->_stickerName forKey:@"stickerName"];
  [coderCopy encodeObject:self->_animatedImageCacheURL forKey:@"animatedImageCacheURL"];
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_attributionInfo requiringSecureCoding:1 error:0];
  [coderCopy encodeObject:v14 forKey:@"attributionInfoData"];

  [coderCopy encodeInteger:self->_stickerEffectType forKey:@"stickerEffectType"];
}

- (_MSMessageMediaPayload)init
{
  v3.receiver = self;
  v3.super_class = _MSMessageMediaPayload;
  return [(_MSMessageMediaPayload *)&v3 init];
}

- (void)setMediaURL:(id)l
{
  lCopy = l;
  mediaType = self->_mediaType;
  self->_mediaType = 0;

  mediaData = self->_mediaData;
  self->_mediaData = 0;

  mediaURL = self->_mediaURL;
  self->_mediaURL = lCopy;
}

- (NSURL)mediaURL
{
  mediaURL = self->_mediaURL;
  if (!mediaURL)
  {
    if (self->_mediaData && self->_mediaType)
    {
      v4 = +[_MSTempFileManager sharedInstance];
      v5 = [v4 writeTemporaryFileWithData:self->_mediaData type:self->_mediaType];
      v6 = self->_mediaURL;
      self->_mediaURL = v5;

      mediaURL = self->_mediaURL;
    }

    else
    {
      mediaURL = 0;
    }
  }

  return mediaURL;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  mediaType = self->_mediaType;
  self->_mediaType = 0;

  mediaData = self->_mediaData;
  self->_mediaData = 0;

  image = self->_image;
  self->_image = imageCopy;
}

- (UIImage)image
{
  if (!self->_image)
  {
    if (self->_mediaData)
    {
      mediaType = self->_mediaType;
      if (mediaType)
      {
        if (UTTypeConformsTo(mediaType, *MEMORY[0x1E69637F8]))
        {
          v6 = [MEMORY[0x1E69DCAB8] imageWithData:self->_mediaData];
          image = self->_image;
          self->_image = v6;
        }
      }
    }
  }

  v3 = self->_image;

  return v3;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([identifier isEqualToString:@"com.apple.sticker.mediaPayload"])
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    handlerCopy[2](handlerCopy, v7, 0);
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:8675309 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v7);
  }

  return 0;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v12 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:self fromData:data error:&v12];
  v7 = v12;
  v8 = v7;
  if (error && !v6)
  {
    v9 = v7;
    *error = v8;
    v10 = ms_defaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[_MSMessageMediaPayload objectWithItemProviderData:typeIdentifier:error:];
    }
  }

  return v6;
}

- (CGRect)sourceFrame
{
  x = self->_sourceFrame.origin.x;
  y = self->_sourceFrame.origin.y;
  width = self->_sourceFrame.size.width;
  height = self->_sourceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)convertToStickerWithExtensionIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)convertToStickerWithExtensionIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)convertToStickerWithExtensionIdentifier:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1CADE6000, v1, OS_LOG_TYPE_ERROR, "IMStickerFromPayload: could not generate attribution info for '%@' even after attempting to fall back to using the info on the media payload: %@", v2, 0x16u);
}

+ (void)objectWithItemProviderData:typeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end