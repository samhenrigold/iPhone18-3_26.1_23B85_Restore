@interface CKAudioMediaObject
+ (id)UTITypes;
+ (id)generateThumbnailForPowerLevelsFromMetadata:(id)metadata color:(id)color;
+ (id)generateThumbnailForWidth:(double)width color:(id)color powerLevels:(id)levels fileURL:(id)l;
+ (id)generateWaveformFromPowerLevels:(double *)levels powerLevelsCount:(unint64_t)count color:(id)color;
+ (void)_cachePowerLevels:(id)levels forKey:(id)key;
+ (void)normalizedPowerLevelsForPowerValues:(id)values powerLevelsCount:(unint64_t)count powerLevels:(double *)levels;
- (BOOL)isAudioMessage;
- (BOOL)isPreviewable;
- (BOOL)shouldBeQuickLooked;
- (BOOL)shouldSuppressPreview;
- (BOOL)shouldSuppressPreviewForUntrustedSender;
- (BOOL)writePreviewMetadata:(id)metadata toURL:(id)l error:(id *)error;
- (Class)balloonViewClass;
- (Class)replyContextBalloonViewClass;
- (NSArray)powerLevels;
- (double)duration;
- (id)attachmentSummary:(unint64_t)summary;
- (id)composeWaveformForWidth:(double)width orientation:(char)orientation withColor:(id)color;
- (id)generatePlaceholderThumbnailForWidth:(double)width withColor:(id)color;
- (id)generatePreviewFromThumbnail:(id)thumbnail width:(double)width orientation:(char)orientation;
- (id)generatePreviewFromThumbnail:(id)thumbnail width:(double)width orientation:(char)orientation withColor:(id)color;
- (id)generateThumbnailForWidth:(double)width withColor:(id)color;
- (id)pasteboardItemProvider;
- (id)previewItemTitle;
- (id)previewMetadataWithContentsOfURL:(id)l error:(id *)error;
- (id)savedPreviewFromURL:(id)l forOrientation:(char)orientation;
- (id)temporaryWaveformWithWidth:(double)width orientation:(char)orientation;
- (id)waveformForOrientation:(char)orientation;
- (void)restorePreviewMetadataFromDict:(id)dict;
- (void)savePreview:(id)preview toURL:(id)l forOrientation:(char)orientation;
- (void)setPowerLevels:(id)levels;
@end

@implementation CKAudioMediaObject

+ (id)UTITypes
{
  audiovisualTypes = [MEMORY[0x1E6988168] audiovisualTypes];
  v3 = [audiovisualTypes indexesOfObjectsPassingTest:&__block_literal_global_67];
  v4 = [audiovisualTypes objectsAtIndexes:v3];

  return v4;
}

- (id)attachmentSummary:(unint64_t)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Audio Files" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v4 localizedStringWithFormat:v6, summary];

  return summary;
}

- (BOOL)shouldSuppressPreview
{
  if ([(CKAudioMediaObject *)self shouldSuppressPreviewForUntrustedSender])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CKAudioMediaObject;
  return [(CKMediaObject *)&v4 shouldSuppressPreview];
}

- (BOOL)shouldSuppressPreviewForUntrustedSender
{
  senderContext = [(CKMediaObject(Display) *)self senderContext];
  v4 = senderContext;
  if (senderContext && ([senderContext isFromMe] & 1) != 0 || (-[CKMediaObject messageContext](self, "messageContext"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5) || (-[CKMediaObject messageContext](self, "messageContext"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isFromMe"), v6, (v7 & 1) != 0) || -[CKAudioMediaObject hasBeenPlayed](self, "hasBeenPlayed"))
  {
    v8 = 0;
  }

  else
  {
    selfCopy = self;
    fileURL = [(CKMediaObject *)selfCopy fileURL];
    previewMetadataFilenameExtension = [(CKAudioMediaObject *)selfCopy previewMetadataFilenameExtension];
    v13 = IMAttachmentPreviewMetadataFileURL();

    transfer = [(CKMediaObject *)selfCopy transfer];
    LODWORD(previewMetadataFilenameExtension) = [transfer isFileURLFinalized];

    if (previewMetadataFilenameExtension && ([MEMORY[0x1E696AC08] defaultManager], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "path"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "fileExistsAtPath:", v16), v16, v15, v17))
    {
      [(CKAudioMediaObject *)selfCopy setHasBeenPlayed:1];
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)pasteboardItemProvider
{
  fileURL = [(CKMediaObject *)self fileURL];
  v4 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithContentsOfURL:fileURL];
  filename = [(CKMediaObject *)self filename];
  if ([(CKAudioMediaObject *)self isAudioMessage])
  {
    isFromMe = [(CKMediaObject *)self isFromMe];
    if (isFromMe)
    {
      senderHandle = CKFrameworkBundle(isFromMe);
      v8 = [senderHandle localizedStringForKey:@"AUDIO_MESSAGE_SAVE" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      senderHandle = [(CKMediaObject *)self senderHandle];
      v9 = MEMORY[0x1E696AEC0];
      v10 = CKFrameworkBundle(senderHandle);
      v11 = [v10 localizedStringForKey:@"AUDIO_MESSAGE_VOICE_MEMO_LABEL" value:&stru_1F04268F8 table:@"ChatKit"];
      name = [senderHandle name];
      if (name)
      {
        [senderHandle name];
      }

      else
      {
        [senderHandle displayID];
      }
      v13 = ;
      v14 = [v9 stringWithFormat:v11, v13];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v17 = @"\u200F";
      }

      else
      {
        v17 = @"\u200E";
      }

      v8 = [(__CFString *)v17 stringByAppendingString:v14];
    }

    filename = v8;
  }

  [v4 setSuggestedName:filename];

  return v4;
}

- (double)duration
{
  v3 = 0.0;
  if (![(CKAudioMediaObject *)self shouldSuppressPreviewForUntrustedSender])
  {
    if ([(CKMediaObject *)self generatePreviewOutOfProcess]&& [(CKAudioMediaObject *)self isAudioMessage])
    {
      previewMetadata = [(CKMediaObject *)self previewMetadata];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        previewMetadata2 = [(CKMediaObject *)self previewMetadata];
        [(CKAudioMediaObject *)self restorePreviewMetadataFromDict:previewMetadata2];
        [(CKAudioMediaObject *)self durationFromMetadata];
        v3 = v7;
      }
    }

    else
    {
      v10.receiver = self;
      v10.super_class = CKAudioMediaObject;
      [(CKAVMediaObject *)&v10 duration];
      return v8;
    }
  }

  return v3;
}

+ (void)_cachePowerLevels:(id)levels forKey:(id)key
{
  levelsCopy = levels;
  keyCopy = key;
  if (levelsCopy && keyCopy)
  {
    if (!sPowerLevelDictionary)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
      v7 = sPowerLevelDictionary;
      sPowerLevelDictionary = v6;
    }

    if (!sPowerLevelKeyArray)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
      v9 = sPowerLevelKeyArray;
      sPowerLevelKeyArray = v8;
    }

    v10 = [sPowerLevelDictionary objectForKeyedSubscript:keyCopy];

    if (v10)
    {
      [sPowerLevelDictionary removeObjectForKey:keyCopy];
    }

    else if ([sPowerLevelKeyArray count] >= 5)
    {
      v11 = [sPowerLevelKeyArray objectAtIndexedSubscript:0];
      [sPowerLevelDictionary removeObjectForKey:v11];
      [sPowerLevelKeyArray removeFirstObject];
    }

    [sPowerLevelDictionary setObject:levelsCopy forKeyedSubscript:keyCopy];
    [sPowerLevelKeyArray addObject:keyCopy];
  }
}

- (NSArray)powerLevels
{
  transferGUID = [(CKMediaObject *)self transferGUID];
  v3 = [CKAudioMediaObject _cachedPowerLevelsForKey:transferGUID];

  return v3;
}

- (void)setPowerLevels:(id)levels
{
  levelsCopy = levels;
  transferGUID = [(CKMediaObject *)self transferGUID];
  [CKAudioMediaObject _cachePowerLevels:levelsCopy forKey:transferGUID];
}

- (BOOL)isPreviewable
{
  if ([(CKAudioMediaObject *)self shouldSuppressPreview])
  {
    return 0;
  }

  return [(CKAudioMediaObject *)self isAudioMessage];
}

- (BOOL)isAudioMessage
{
  messageContext = [(CKMediaObject *)self messageContext];
  isAudioMessage = [messageContext isAudioMessage];

  return isAudioMessage;
}

- (Class)balloonViewClass
{
  if ([(CKAudioMediaObject *)self isAudioMessage])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    audioBalloonViewClass = [v3 audioBalloonViewClass];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CKAudioMediaObject;
    audioBalloonViewClass = [(CKMediaObject *)&v6 balloonViewClass];
  }

  return audioBalloonViewClass;
}

- (Class)replyContextBalloonViewClass
{
  [(CKAudioMediaObject *)self isAudioMessage];
  v2 = objc_opt_class();

  return v2;
}

- (void)restorePreviewMetadataFromDict:(id)dict
{
  v42 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v5 = dictCopy;
  if (dictCopy)
  {
    v6 = [dictCopy objectForKey:@"duration"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [v5 objectForKey:@"powerLevels"];
    v10 = v9;
    if (v8 != 0.0 && v9 != 0)
    {
      [(CKAudioMediaObject *)self setDurationFromMetadata:v8];
      [(CKAudioMediaObject *)self setPowerLevelsFromMetadata:v10];
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(2);
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          transferGUID = [(CKMediaObject *)self transferGUID];
          filename = [(CKMediaObject *)self filename];
          *buf = 134218754;
          selfCopy2 = self;
          v36 = 2112;
          v37 = transferGUID;
          v38 = 2112;
          v39 = filename;
          v40 = 2112;
          v41 = v5;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_DEBUG, "[%p, %@, %@] duration and power levels restored from metadataDict %@.", buf, 0x2Au);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        transferGUID2 = [(CKMediaObject *)self transferGUID];
        filename2 = [(CKMediaObject *)self filename];
        _CKLog(2u, @"[%p, %@, %@] duration and power levels restored from metadataDict %@.", v16, v17, v18, v19, v20, v21, self);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      transferGUID3 = [(CKMediaObject *)self transferGUID];
      filename3 = [(CKMediaObject *)self filename];
      *buf = 134218754;
      selfCopy2 = self;
      v36 = 2112;
      v37 = transferGUID3;
      v38 = 2112;
      v39 = filename3;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_DEBUG, "[%p, %@, %@] error restoring duration and power levels from metadataDict %@.", buf, 0x2Au);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    transferGUID4 = [(CKMediaObject *)self transferGUID];
    filename4 = [(CKMediaObject *)self filename];
    _CKLog(2u, @"[%p, %@, %@] error restoring duration and power levels from metadataDict %@.", v26, v27, v28, v29, v30, v31, self);
  }
}

- (id)temporaryWaveformWithWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v50 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v48 = 1024;
      v49 = orientationCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "%@ previewForOrientation:%d", buf, 0x12u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"%@ previewForOrientation:%d", v8, v9, v10, v11, v12, v13, self);
  }

  transfer = [(CKMediaObject *)self transfer];
  if ([transfer isFileDataReady] & 1) != 0 || (objc_msgSend(transfer, "isRestoring"))
  {
    if ([(CKMediaObject *)self generatePreviewOutOfProcess])
    {
      [(CKAudioMediaObject *)self durationFromMetadata];
      if (v15 == 0.0 || ([(CKAudioMediaObject *)self powerLevelsFromMetadata], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v17))
      {
        previewMetadata = [(CKMediaObject *)self previewMetadata];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          previewMetadata2 = [(CKMediaObject *)self previewMetadata];
          [(CKAudioMediaObject *)self restorePreviewMetadataFromDict:previewMetadata2];
        }
      }
    }

    v21 = [(CKAudioMediaObject *)self generateThumbnailForWidth:width];
    v22 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v21 width:orientationCopy orientation:width];

    if (v22)
    {
      goto LABEL_36;
    }

    v23 = +[CKUIBehavior sharedBehaviors];
    defaultWaveformImage = [v23 defaultWaveformImage];

    if (defaultWaveformImage)
    {
      [defaultWaveformImage size];
      v22 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:defaultWaveformImage width:orientationCopy orientation:?];

      if (v22)
      {
LABEL_36:
        v43 = v22;
        goto LABEL_39;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(2);
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_DEBUG, "Failed to load default waveform image from assets", buf, 2u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog(2u, @"Failed to load default waveform image from assets", v36, v37, v38, v39, v40, v41, v45);
      }
    }

    v42 = [(CKAudioMediaObject *)self generatePlaceholderThumbnailForWidth:width];
    v22 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v42 width:orientationCopy orientation:width];

    goto LABEL_36;
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_DEBUG, "%@ isn't previewable.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"%@ isn't previewable.", v26, v27, v28, v29, v30, v31, self);
  }

  v32 = +[CKUIBehavior sharedBehaviors];
  defaultWaveformImage2 = [v32 defaultWaveformImage];

  if (defaultWaveformImage2)
  {
    v34 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:defaultWaveformImage2 width:orientationCopy orientation:width];
  }

  else
  {
    v34 = 0;
  }

  v43 = v34;

LABEL_39:

  return v43;
}

- (id)waveformForOrientation:(char)orientation
{
  orientationCopy = orientation;
  v118 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      transferGUID = [(CKMediaObject *)self transferGUID];
      filename = [(CKMediaObject *)self filename];
      *buf = 134218754;
      selfCopy6 = self;
      v112 = 2112;
      v113 = transferGUID;
      v114 = 2112;
      v115 = filename;
      v116 = 1024;
      v117 = orientationCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "[%p, %@, %@] previewForOrientation:%d", buf, 0x26u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    transferGUID2 = [(CKMediaObject *)self transferGUID];
    filename2 = [(CKMediaObject *)self filename];
    _CKLog(2u, @"[%p, %@, %@] previewForOrientation:%d", v9, v10, v11, v12, v13, v14, self);
  }

  transfer = [(CKMediaObject *)self transfer];
  if ([transfer isFileDataReady] & 1) != 0 || (objc_msgSend(transfer, "isRestoring"))
  {
    if ([(CKMediaObject *)self generatePreviewOutOfProcess])
    {
      [(CKAudioMediaObject *)self durationFromMetadata];
      if (v16 == 0.0 || ([(CKAudioMediaObject *)self powerLevelsFromMetadata], v17 = objc_claimAutoreleasedReturnValue(), v18 = v17 == 0, v17, v18))
      {
        previewMetadata = [(CKMediaObject *)self previewMetadata];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          previewMetadata2 = [(CKMediaObject *)self previewMetadata];
          [(CKAudioMediaObject *)self restorePreviewMetadataFromDict:previewMetadata2];
        }
      }
    }

    v22 = [(CKMediaObject *)self previewCacheKeyWithOrientation:orientationCopy];
    previewDispatchCache = [(CKMediaObject *)self previewDispatchCache];
    v24 = [previewDispatchCache cachedPreviewForKey:v22];

    if (v24)
    {
      v25 = v24;
LABEL_78:
      v38 = v25;
LABEL_79:

      goto LABEL_80;
    }

    transfer2 = [(CKMediaObject *)self transfer];
    isFileURLFinalized = [transfer2 isFileURLFinalized];

    if (isFileURLFinalized)
    {
      v28 = [(CKMediaObject *)self previewCachesFileURLWithOrientation:orientationCopy extension:@"png" generateIntermediaries:0];
      v29 = [(CKAudioMediaObject *)self savedPreviewFromURL:v28 forOrientation:orientationCopy];
      if (v29)
      {
        if (IMOSLoggingEnabled())
        {
          CKLogCStringForType(2);
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            selfCopy6 = self;
            _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_DEBUG, "%@ preview read from disk.", buf, 0xCu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          _CKLog(2u, @"%@ preview read from disk.", v31, v32, v33, v34, v35, v36, self);
        }

        previewDispatchCache2 = [(CKMediaObject *)self previewDispatchCache];
        [previewDispatchCache2 setCachedPreview:v29 key:v22];

        v38 = v29;
        goto LABEL_79;
      }
    }

    v46 = +[CKUIBehavior sharedBehaviors];
    [v46 previewMaxWidth];
    v48 = v47;

    if (![(CKMediaObject *)self generatePreviewOutOfProcess]|| [(CKMediaObject *)self generatePreviewOutOfProcess]&& ([(CKAudioMediaObject *)self durationFromMetadata], v49 != 0.0) && ([(CKAudioMediaObject *)self powerLevelsFromMetadata], v50 = objc_claimAutoreleasedReturnValue(), v51 = v50 == 0, v50, !v51))
    {
      v52 = +[CKUIBehavior sharedBehaviors];
      objc_msgSend_duration(self);
      [v52 transcriptWaveformWidthForDuration:?];
      v48 = v53;

      objc_msgSend_duration(self);
      v55 = v54;
      v56 = +[CKUIBehavior sharedBehaviors];
      [v56 waveformMaxWidthDuration];
      v58 = v55 > v57;

      v59 = IMOSLoggingEnabled();
      if (v58)
      {
        if (v59)
        {
          CKLogCStringForType(2);
          v60 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            selfCopy6 = self;
            _os_log_impl(&dword_19020E000, v60, OS_LOG_TYPE_DEBUG, "%@ duration is long. Generate waveform in background.", buf, 0xCu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          _CKLog(2u, @"%@ duration is long. Generate waveform in background.", v61, v62, v63, v64, v65, v66, self);
        }

        previewDispatchCache3 = [(CKMediaObject *)self previewDispatchCache];
        v68 = [previewDispatchCache3 isGeneratingPreviewForKey:v22];

        if ((v68 & 1) == 0)
        {
          previewDispatchCache4 = [(CKMediaObject *)self previewDispatchCache];
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 3221225472;
          v105[2] = __45__CKAudioMediaObject_waveformForOrientation___block_invoke_273;
          v105[3] = &unk_1E72F00B0;
          v105[4] = self;
          *&v105[5] = v48;
          v106 = orientationCopy;
          v102[0] = MEMORY[0x1E69E9820];
          v102[1] = 3221225472;
          v102[2] = __45__CKAudioMediaObject_waveformForOrientation___block_invoke_278;
          v102[3] = &unk_1E72EBBC0;
          v102[4] = self;
          v103 = v22;
          v104 = orientationCopy;
          [previewDispatchCache4 enqueueGenerationBlock:v105 completion:v102 withPriority:0 forKey:v103];
        }
      }

      else
      {
        if (v59)
        {
          CKLogCStringForType(2);
          v70 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            selfCopy6 = self;
            _os_log_impl(&dword_19020E000, v70, OS_LOG_TYPE_DEBUG, "%@ duration is short. Generate waveform sychronously.", buf, 0xCu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          _CKLog(2u, @"%@ duration is short. Generate waveform sychronously.", v71, v72, v73, v74, v75, v76, self);
        }

        v77 = [(CKAudioMediaObject *)self generateThumbnailForWidth:v48];
        v78 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v77 width:orientationCopy orientation:v48];

        if (v78)
        {
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(2);
            v79 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              selfCopy6 = self;
              _os_log_impl(&dword_19020E000, v79, OS_LOG_TYPE_DEBUG, "Finished generating preview for %@", buf, 0xCu);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
          {
            _CKLog(2u, @"Finished generating preview for %@", v80, v81, v82, v83, v84, v85, self);
          }

          previewDispatchCache5 = [(CKMediaObject *)self previewDispatchCache];
          [previewDispatchCache5 setCachedPreview:v78 key:v22];

          previewDispatchCache6 = [(CKMediaObject *)self previewDispatchCache];
          v107[0] = MEMORY[0x1E69E9820];
          v107[1] = 3221225472;
          v107[2] = __45__CKAudioMediaObject_waveformForOrientation___block_invoke;
          v107[3] = &unk_1E72F0088;
          v107[4] = self;
          v109 = orientationCopy;
          v88 = v78;
          v108 = v88;
          [previewDispatchCache6 enqueueSaveBlock:v107 forMediaObject:self withPriority:0];

          goto LABEL_77;
        }
      }
    }

    v89 = +[CKUIBehavior sharedBehaviors];
    defaultWaveformImage = [v89 defaultWaveformImage];

    if (defaultWaveformImage)
    {
      [defaultWaveformImage size];
      v88 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:defaultWaveformImage width:orientationCopy orientation:?];

      if (v88)
      {
LABEL_77:
        v25 = v88;
        goto LABEL_78;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(2);
        v91 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v91, OS_LOG_TYPE_DEBUG, "Failed to load default waveform image from assets", buf, 2u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog(2u, @"Failed to load default waveform image from assets", v92, v93, v94, v95, v96, v97, v100);
      }
    }

    v98 = [(CKAudioMediaObject *)self generatePlaceholderThumbnailForWidth:v48];
    v88 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v98 width:orientationCopy orientation:v48];

    goto LABEL_77;
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy6 = self;
      _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_DEBUG, "%@ isn't previewable.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"%@ isn't previewable.", v40, v41, v42, v43, v44, v45, self);
  }

  v38 = 0;
LABEL_80:

  return v38;
}

void __45__CKAudioMediaObject_waveformForOrientation___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Saving waveform for %@ to disk.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"Saving waveform for %@ to disk.", v6, v7, v8, v9, v10, v11, *(a1 + 32));
  }

  v12 = [*(a1 + 32) previewCachesFileURLWithOrientation:*(a1 + 48) extension:@"png" generateIntermediaries:1];
  [v3 savePreview:*(a1 + 40) toURL:v12 forOrientation:*(a1 + 48)];
}

id __45__CKAudioMediaObject_waveformForOrientation___block_invoke_273(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Starting background generation of waveform for %@.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"Starting background generation of waveform for %@.", v6, v7, v8, v9, v10, v11, *(a1 + 32));
  }

  v12 = *(a1 + 32);
  v13 = [v12 generateThumbnailForWidth:*(a1 + 40)];
  v14 = [v12 generatePreviewFromThumbnail:v13 width:*(a1 + 48) orientation:*(a1 + 40)];

  return v14;
}

void __45__CKAudioMediaObject_waveformForOrientation___block_invoke_278(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CKAudioMediaObject_waveformForOrientation___block_invoke_2;
  block[3] = &unk_1E72EBBC0;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __45__CKAudioMediaObject_waveformForOrientation___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) previewDispatchCache];
  v3 = [v2 cachedPreviewForKey:*(a1 + 40)];

  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Finished generating preview for %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog(2u, @"Finished generating preview for %@", v6, v7, v8, v9, v10, v11, *(a1 + 32));
    }

    v12 = [*(a1 + 32) previewDispatchCache];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__CKAudioMediaObject_waveformForOrientation___block_invoke_279;
    v13[3] = &unk_1E72F0088;
    v13[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v14 = v3;
    [v12 enqueueSaveBlock:v13 forMediaObject:*(a1 + 32) withPriority:0];

    [*(a1 + 32) postPreviewDidChangeNotifications];
  }
}

void __45__CKAudioMediaObject_waveformForOrientation___block_invoke_279(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Saving waveform for %@ to disk.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"Saving waveform for %@ to disk.", v6, v7, v8, v9, v10, v11, *(a1 + 32));
  }

  v12 = [*(a1 + 32) previewCachesFileURLWithOrientation:*(a1 + 48) extension:@"png" generateIntermediaries:1];
  [v3 savePreview:*(a1 + 40) toURL:v12 forOrientation:*(a1 + 48)];
}

- (id)composeWaveformForWidth:(double)width orientation:(char)orientation withColor:(id)color
{
  orientationCopy = orientation;
  colorCopy = color;
  v9 = [(CKAudioMediaObject *)self generateThumbnailForWidth:colorCopy withColor:width];
  v10 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v9 width:orientationCopy orientation:colorCopy withColor:width];

  if (!v10)
  {
    v11 = [(CKAudioMediaObject *)self generatePlaceholderThumbnailForWidth:colorCopy withColor:width];
    v10 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:v11 width:orientationCopy orientation:colorCopy withColor:width];
  }

  return v10;
}

- (id)generatePreviewFromThumbnail:(id)thumbnail width:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  thumbnailCopy = thumbnail;
  v9 = +[CKUIBehavior sharedBehaviors];
  theme = [v9 theme];
  v11 = theme;
  if (orientationCopy == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  v13 = [theme waveformColorForColorType:v12];

  v14 = [(CKAudioMediaObject *)self generatePreviewFromThumbnail:thumbnailCopy width:orientationCopy orientation:v13 withColor:width];

  return v14;
}

- (id)generatePreviewFromThumbnail:(id)thumbnail width:(double)width orientation:(char)orientation withColor:(id)color
{
  thumbnailCopy = thumbnail;
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [thumbnailCopy imageWithAlignmentRectInsets:{0.0, 0.0, 0.0, objc_msgSend(v7, "waveformGapWidth")}];

  return v8;
}

- (void)savePreview:(id)preview toURL:(id)l forOrientation:(char)orientation
{
  previewCopy = preview;
  lCopy = l;
  if (lCopy)
  {
    fileManager = [(CKMediaObject *)self fileManager];
    path = [lCopy path];
    v11 = [fileManager fileExistsAtPath:path];

    if ((v11 & 1) == 0)
    {
      v12 = previewCopy;
      v13 = lCopy;
      im_perform_with_task_assertion();
    }
  }
}

void __55__CKAudioMediaObject_savePreview_toURL_forOrientation___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CKCreatePNGRepresentationFromUIImageFilterTypeNone(*(a1 + 32));
  CKFreeSpaceWriteDataToURL(v2, *(a1 + 40), 1);
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "%@ preview saved to %@.", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"%@ preview saved to %@.", v6, v7, v8, v9, v10, v11, *(a1 + 48));
  }
}

- (id)savedPreviewFromURL:(id)l forOrientation:(char)orientation
{
  v8.receiver = self;
  v8.super_class = CKAudioMediaObject;
  v4 = [(CKMediaObject *)&v8 savedPreviewFromURL:l forOrientation:orientation];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v4 imageWithAlignmentRectInsets:{0.0, 0.0, 0.0, objc_msgSend(v5, "waveformGapWidth")}];

  return v6;
}

- (id)generateThumbnailForWidth:(double)width withColor:(id)color
{
  colorCopy = color;
  generatePreviewOutOfProcess = [(CKMediaObject *)self generatePreviewOutOfProcess];
  powerLevels = [(CKAudioMediaObject *)self powerLevels];
  if (generatePreviewOutOfProcess)
  {
    v9 = [CKAudioMediaObject generateThumbnailForWidth:colorCopy color:powerLevels powerLevels:0 fileURL:width];

    if (!v9 && [(CKAudioMediaObject *)self shouldSuppressPreviewForUntrustedSender])
    {
      v10 = 0;
      goto LABEL_8;
    }

    powerLevelsFromMetadata = [(CKAudioMediaObject *)self powerLevelsFromMetadata];
    v10 = [CKAudioMediaObject generateThumbnailForWidth:colorCopy color:powerLevelsFromMetadata powerLevels:0 fileURL:width];
  }

  else
  {
    powerLevelsFromMetadata = [(CKMediaObject *)self fileURL];
    v10 = [CKAudioMediaObject generateThumbnailForWidth:colorCopy color:powerLevels powerLevels:powerLevelsFromMetadata fileURL:width];
    v9 = powerLevels;
  }

LABEL_8:

  return v10;
}

+ (void)normalizedPowerLevelsForPowerValues:(id)values powerLevelsCount:(unint64_t)count powerLevels:(double *)levels
{
  v45 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v36 = &v36;
  countCopy = count;
  MEMORY[0x1EEE9AC00](valuesCopy);
  v8 = &v36 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, 8 * count);
  bzero(levels, 8 * count);
  bzero(v8, 8 * count);
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v9 = [valuesCopy countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v41;
    v14 = countCopy - 1;
    v37 = levels + 2;
    v38 = xmmword_190DD06F0;
    do
    {
      v15 = 0;
      v16 = v11;
      do
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(valuesCopy);
        }

        [*(*(&v40 + 1) + 8 * v15) floatValue];
        v18 = v17;
        v19 = v12 * countCopy;
        v20 = [valuesCopy count];
        if (v19 / v20 >= v14)
        {
          v11 = v14;
        }

        else
        {
          v11 = v19 / v20;
        }

        v21 = *&v8[8 * v11];
        v22 = v18 * v18 + levels[v11] * levels[v11] * v21;
        v23 = v21 + 1;
        v24 = sqrt(v22 / v23);
        levels[v11] = v24;
        v25 = v11 - v16;
        v26 = v11 == v16 || v16 + 1 >= v11;
        v27 = v38;
        if (!v26)
        {
          v28 = levels[v16];
          v29 = v24 - v28;
          v30 = ((v29 / v25) + v28);
          v31 = v25 & 0xFFFFFFFFFFFFFFFELL;
          v32 = vdupq_n_s64(v11 + ~v16 - 1);
          v33 = &v37[v16];
          v34 = 1;
          do
          {
            v35 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v34 - 1), v27)));
            if (v35.i8[0])
            {
              *(v33 - 1) = v30;
            }

            if (v35.i8[4])
            {
              *v33 = v30;
            }

            v34 += 2;
            v33 += 2;
            v31 -= 2;
          }

          while (v31);
        }

        *&v8[8 * v11] = v23;
        ++v12;
        ++v15;
        v16 = v11;
      }

      while (v15 != v10);
      v10 = [valuesCopy countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v10);
  }
}

+ (id)generateThumbnailForWidth:(double)width color:(id)color powerLevels:(id)levels fileURL:(id)l
{
  v15[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  levelsCopy = levels;
  lCopy = l;
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = (width / [v12 waveformPowerLevelWidthIncrement]);

  if (v13)
  {
    bzero(v15 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v13);
    if ([levelsCopy count])
    {
      [CKAudioMediaObject normalizedPowerLevelsForPowerValues:levelsCopy powerLevelsCount:v13 powerLevels:v15 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
LABEL_4:
      v13 = [CKAudioMediaObject generateWaveformFromPowerLevels:v15 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0) powerLevelsCount:v13 color:colorCopy];
      goto LABEL_8;
    }

    if (lCopy && CKWaveformPowerLevelsForFileURL(lCopy, v15 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13))
    {
      goto LABEL_4;
    }

    v13 = 0;
  }

LABEL_8:

  return v13;
}

+ (id)generateThumbnailForPowerLevelsFromMetadata:(id)metadata color:(id)color
{
  v14[1] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  colorCopy = color;
  if (metadataCopy && [metadataCopy count])
  {
    v7 = [metadataCopy count];
    v8 = v14 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v8, 8 * v7);
    bzero(v8, 8 * v7);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [metadataCopy objectAtIndex:i];
        [v10 floatValue];
        *&v8[8 * i] = v11;
      }
    }

    v12 = [CKAudioMediaObject generateWaveformFromPowerLevels:v8 powerLevelsCount:v7 color:colorCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)generateWaveformFromPowerLevels:(double *)levels powerLevelsCount:(unint64_t)count color:(id)color
{
  colorCopy = color;
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 waveformMinLinearPowerLevel];
  v10 = v9;

  if (count)
  {
    levelsCopy = levels;
    countCopy = count;
    v13 = 1.0;
    do
    {
      if (*levelsCopy < 1.0)
      {
        v10 = 0.0;
      }

      v14 = fmax(*levelsCopy - v10, 0.0);
      *levelsCopy++ = v14;
      if (v13 < v14)
      {
        v13 = v14;
      }

      --countCopy;
    }

    while (countCopy);
    levelsCopy2 = levels;
    countCopy2 = count;
    do
    {
      *levelsCopy2 = *levelsCopy2 / v13;
      ++levelsCopy2;
      --countCopy2;
    }

    while (countCopy2);
  }

  v17 = CKWaveformWithPowerLevels(levels, count, colorCopy);

  return v17;
}

- (id)previewMetadataWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:l];
  v6 = v5;
  if (error && !v5)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:4 userInfo:0];
  }

  return v6;
}

- (BOOL)writePreviewMetadata:(id)metadata toURL:(id)l error:(id *)error
{
  metadataCopy = metadata;
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [metadataCopy writeToURL:lCopy atomically:1];
    if ((v9 & 1) == 0)
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CKAudioMediaObject writePreviewMetadata:lCopy toURL:v10 error:?];
      }

      if (error)
      {
        v11 = 9;
LABEL_11:
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:v11 userInfo:0];
      }
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKAudioMediaObject writePreviewMetadata:v12 toURL:? error:?];
    }

    v9 = 0;
    if (error)
    {
      v11 = 13;
      goto LABEL_11;
    }
  }

  return v9;
}

- (BOOL)shouldBeQuickLooked
{
  messageContext = [(CKMediaObject *)self messageContext];
  isAudioMessage = [messageContext isAudioMessage];

  if (isAudioMessage)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CKAudioMediaObject;
  return [(CKMediaObject *)&v6 shouldBeQuickLooked];
}

- (id)previewItemTitle
{
  filename = [(CKMediaObject *)self filename];
  if ([filename isEqualToString:@"Audio Message.caf"])
  {

LABEL_4:
    v7 = CKFrameworkBundle(v4);
    v8 = [v7 localizedStringForKey:@"PREVIEW_TITLE_AUDIO_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

    goto LABEL_6;
  }

  filename2 = [(CKMediaObject *)self filename];
  v6 = [filename2 isEqualToString:@"Audio Message.amr"];

  if (v6)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)generatePlaceholderThumbnailForWidth:(double)width withColor:(id)color
{
  colorCopy = color;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CKAudioMediaObject_generatePlaceholderThumbnailForWidth_withColor___block_invoke;
  block[3] = &unk_1E72EBA18;
  v6 = colorCopy;
  v23 = v6;
  if (generatePlaceholderThumbnailForWidth_withColor__once != -1)
  {
    dispatch_once(&generatePlaceholderThumbnailForWidth_withColor__once, block);
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = width / [v7 waveformPowerLevelWidthIncrement];

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 waveformHeight];
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  waveformPowerLevelWidthIncrement = [v12 waveformPowerLevelWidthIncrement];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v16 = v15;

  cGImage = [generatePlaceholderThumbnailForWidth_withColor__sMaxWidthPlaceholderWaveform CGImage];
  v25.origin.x = *MEMORY[0x1E695EFF8];
  v25.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v25.size.width = v8 * waveformPowerLevelWidthIncrement * v16;
  v25.size.height = v11 * v16;
  v18 = CGImageCreateWithImageInRect(cGImage, v25);
  if (v18)
  {
    v19 = v18;
    v20 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v18 scale:0 orientation:v16];
    CFRelease(v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __69__CKAudioMediaObject_generatePlaceholderThumbnailForWidth_withColor___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 waveformMaxPowerLevelsCount];

  v4 = v7 - ((8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, 8 * v3);
  bzero(v4, 8 * v3);
  v5 = CKWaveformWithPowerLevels(v4, v3, *(a1 + 32));
  v6 = generatePlaceholderThumbnailForWidth_withColor__sMaxWidthPlaceholderWaveform;
  generatePlaceholderThumbnailForWidth_withColor__sMaxWidthPlaceholderWaveform = v5;
}

- (void)writePreviewMetadata:(uint64_t)a1 toURL:(NSObject *)a2 error:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Failed writing metadata to: %@", &v2, 0xCu);
}

@end