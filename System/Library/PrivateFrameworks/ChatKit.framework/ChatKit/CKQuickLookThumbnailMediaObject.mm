@interface CKQuickLookThumbnailMediaObject
- (BOOL)shouldSuppressPreview;
- (id)attachmentSummary:(unint64_t)summary;
- (id)diskCachedThumbnailForOrientation:(char)orientation;
- (id)previewForWidth:(double)width orientation:(char)orientation;
@end

@implementation CKQuickLookThumbnailMediaObject

- (BOOL)shouldSuppressPreview
{
  messageContext = [(CKMediaObject *)self messageContext];
  chatContext = [messageContext chatContext];
  serviceVariant = [chatContext serviceVariant];

  v10.receiver = self;
  v10.super_class = CKQuickLookThumbnailMediaObject;
  if ([(CKMediaObject *)&v10 shouldSuppressPreview])
  {
    return 1;
  }

  messageContext2 = [(CKMediaObject *)self messageContext];
  isSenderUnauthenticated = [messageContext2 isSenderUnauthenticated];
  if (serviceVariant == 1)
  {
    v6 = isSenderUnauthenticated;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)attachmentSummary:(unint64_t)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu AR Models" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v4 localizedStringWithFormat:v6, summary];

  return summary;
}

- (id)previewForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v51 = *MEMORY[0x1E69E9840];
  v6 = [(CKMediaObject *)self previewCacheKeyWithOrientation:width];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__53;
  v47 = __Block_byref_object_dispose__53;
  v48 = 0;
  transfer = [(CKMediaObject *)self transfer];
  if (-[CKQuickLookThumbnailMediaObject isPreviewable](self, "isPreviewable") && (([transfer isFileDataReady] & 1) != 0 || (objc_msgSend(transfer, "isRestoring") & 1) != 0))
  {
    previewDispatchCache = [(CKMediaObject *)self previewDispatchCache];
    v9 = [previewDispatchCache cachedPreviewForKey:v6];
    v10 = v44[5];
    v44[5] = v9;

    v11 = v44[5];
    if (!v11)
    {
      v12 = [(CKQuickLookThumbnailMediaObject *)self diskCachedThumbnailForOrientation:orientationCopy];
      v13 = v44[5];
      v44[5] = v12;

      mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
      [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7578]];

      if (!v44[5])
      {
        v31 = +[CKUIBehavior sharedBehaviors];
        [v31 attachmentBalloonSize];
        v33 = v32;
        v35 = v34;

        if (([previewDispatchCache isGeneratingPreviewForKey:v6] & 1) == 0)
        {
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __63__CKQuickLookThumbnailMediaObject_previewForWidth_orientation___block_invoke;
          v42[3] = &unk_1E72F5AD8;
          v42[6] = v33;
          v42[7] = v35;
          v42[4] = self;
          v42[5] = &v43;
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __63__CKQuickLookThumbnailMediaObject_previewForWidth_orientation___block_invoke_66;
          v36[3] = &unk_1E72F5B00;
          v40 = &v43;
          v37 = previewDispatchCache;
          v38 = v6;
          selfCopy = self;
          v41 = orientationCopy;
          [v37 enqueueGenerationBlock:v42 completion:v36 withPriority:-1 forKey:v38];
        }

        v22 = 0;
        goto LABEL_15;
      }

      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(2);
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          selfCopy3 = self;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_DEBUG, "%@ quicklook preview read from disk.", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog(2u, @"%@ quicklook preview read from disk.", v16, v17, v18, v19, v20, v21, self);
      }

      [previewDispatchCache setCachedPreview:v44[5] key:v6];
      v11 = v44[5];
    }

    v22 = v11;
LABEL_15:

    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_DEBUG, "%@ isn't previewable.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"%@ isn't previewable.", v24, v25, v26, v27, v28, v29, self);
  }

  v22 = v44[5];
LABEL_24:

  _Block_object_dispose(&v43, 8);

  return v22;
}

void *__63__CKQuickLookThumbnailMediaObject_previewForWidth_orientation___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E697A0E0]);
  v3 = [*(a1 + 32) fileURL];
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
  v6 = [v2 initWithFileAtURL:v3 size:4 scale:*(a1 + 48) representationTypes:{*(a1 + 56), v5}];

  [v6 setShouldUseRestrictedExtension:1];
  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Requesting media object generation with request %@", buf, 0xCu);
  }

  v8 = dispatch_group_create();
  v9 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v9 startTimingForKey:@"CKQuickLookThumbnailMediaObject_PreviewGenerationTime"];
  dispatch_group_enter(v8);
  v10 = [MEMORY[0x1E697A0E8] sharedGenerator];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __63__CKQuickLookThumbnailMediaObject_previewForWidth_orientation___block_invoke_62;
  v23 = &unk_1E72F4DC8;
  v25 = *(a1 + 40);
  v11 = v8;
  v24 = v11;
  [v10 generateBestRepresentationForRequest:v6 completionHandler:&v20];

  [v9 stopTimingForKey:{@"CKQuickLookThumbnailMediaObject_PreviewGenerationTime", v20, v21, v22, v23}];
  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [*(a1 + 32) UTIType];
    *buf = 138412546;
    v27 = v13;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Cache miss on UTI type %@ generated with timing: %@", buf, 0x16u);
  }

  v14 = [MEMORY[0x1E69A8168] sharedInstance];
  [v14 trackEvent:*MEMORY[0x1E69A7580]];

  v15 = dispatch_time(0, 20000000000);
  if (dispatch_group_wait(v11, v15))
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke_cold_2(v6, v16);
    }
  }

  v17 = *(*(*(a1 + 40) + 8) + 40);
  v18 = v17;

  return v17;
}

void __63__CKQuickLookThumbnailMediaObject_previewForWidth_orientation___block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 UIImage];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Generation completed with result %@ error %@", &v11, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__CKQuickLookThumbnailMediaObject_previewForWidth_orientation___block_invoke_66(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CKQuickLookThumbnailMediaObject_previewForWidth_orientation___block_invoke_2;
  block[3] = &unk_1E72F5B00;
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v2;
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__63__CKQuickLookThumbnailMediaObject_previewForWidth_orientation___block_invoke_2(void *result)
{
  v1 = *(*(*(result + 7) + 8) + 40);
  if (v1)
  {
    v2 = result;
    [*(result + 4) setCachedPreview:v1 key:*(result + 5)];
    if (CKIsRunningInFullCKClient())
    {
      v3 = *(v2 + 4);
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __63__CKQuickLookThumbnailMediaObject_previewForWidth_orientation___block_invoke_3;
      v4[3] = &unk_1E72F0B68;
      v6 = *(v2 + 64);
      v5 = *(v2 + 3);
      [v3 enqueueSaveBlock:v4 forMediaObject:v5 withPriority:0];
    }

    return [*(v2 + 6) postPreviewDidChangeNotifications];
  }

  return result;
}

void __63__CKQuickLookThumbnailMediaObject_previewForWidth_orientation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v5 previewFilenameExtension];
  v7 = [v3 previewCachesFileURLWithOrientation:v4 extension:v6 generateIntermediaries:1];

  [v5 savePreview:*(*(*(a1 + 40) + 8) + 40) toURL:v7 forOrientation:*(a1 + 48)];
}

- (id)diskCachedThumbnailForOrientation:(char)orientation
{
  orientationCopy = orientation;
  previewFilenameExtension = [(CKMediaObject *)self previewFilenameExtension];
  v6 = [(CKMediaObject *)self previewCachesFileURLWithOrientation:orientationCopy extension:previewFilenameExtension generateIntermediaries:0];

  if (v6 && (v7 = CGImageSourceCreateWithURL(v6, 0)) != 0)
  {
    v8 = v7;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
    if (ImageAtIndex)
    {
      v10 = ImageAtIndex;
      v11 = MEMORY[0x1E69DCAB8];
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v13 = [v11 imageWithCGImage:v10 scale:0 orientation:?];

      CGImageRelease(v10);
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end