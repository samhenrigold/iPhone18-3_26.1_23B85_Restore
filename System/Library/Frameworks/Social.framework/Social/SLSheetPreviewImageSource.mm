@interface SLSheetPreviewImageSource
- (void)_generatePreviewImageForAttachment:(id)attachment queueToBlockWhileDownsampling:(id)downsampling resultBlock:(id)block;
- (void)_generatePreviewImageForVideoFileURL:(id)l resultBlock:(id)block;
- (void)previewImageForAttachment:(id)attachment queueToBlockWhileDownsampling:(id)downsampling resultBlock:(id)block;
@end

@implementation SLSheetPreviewImageSource

- (void)previewImageForAttachment:(id)attachment queueToBlockWhileDownsampling:(id)downsampling resultBlock:(id)block
{
  attachmentCopy = attachment;
  downsamplingCopy = downsampling;
  blockCopy = block;
  previewImage = [attachmentCopy previewImage];

  if (previewImage)
  {
    _SLLog(v5, 6, @"previewImageForAttachment: previewImage for attachment is not nil so returning", v12, v13, v14, v15, v16, v63);
    previewImage2 = [attachmentCopy previewImage];
LABEL_3:
    v18 = previewImage2;
    blockCopy[2](blockCopy, previewImage2, 0.0);

    goto LABEL_4;
  }

  if (![attachmentCopy type])
  {
    payload = [attachmentCopy payload];

    if (payload)
    {
      v38 = MEMORY[0x1E69DCAB8];
      payload2 = [attachmentCopy payload];
      v40 = [v38 imageWithData:payload2];

      [v40 size];
      v42 = v41;
      [v40 size];
      if (v42 * v48 >= 262144.0)
      {
        _SLLog(v5, 6, @"previewImageForAttachment: Generating preview from downsampled payload", v43, v44, v45, v46, v47, v63);
        [(SLSheetPreviewImageSource *)self _generatePreviewImageForAttachment:attachmentCopy queueToBlockWhileDownsampling:downsamplingCopy resultBlock:blockCopy];
      }

      else
      {
        _SLLog(v5, 6, @"previewImageForAttachment: Using payload as preview", v43, v44, v45, v46, v47, v63);
        blockCopy[2](blockCopy, v40, 0.0);
      }
    }

    else
    {
      _SLLog(v5, 6, @"previewImageForAttachment: No payload. Guess we need to wait until it loads.", v33, v34, v35, v36, v37, v63);
      blockCopy[2](blockCopy, 0, 0.0);
    }

    goto LABEL_4;
  }

  if (!SLAttachmentPayloadIsAssetLibraryURL(attachmentCopy))
  {
    if ((SLAttachmentPayloadIsVideoFileURL(attachmentCopy) & 1) != 0 || [attachmentCopy type] == 8 && (objc_msgSend(attachmentCopy, "payloadSourceFileURL"), v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "isFileURL"), v54, v55))
    {
      _SLLog(v5, 6, @"previewImageForAttachment: creating preview for video file URL", v49, v50, v51, v52, v53, v63);
      if (SLAttachmentPayloadIsVideoFileURL(attachmentCopy))
      {
        [attachmentCopy payload];
      }

      else
      {
        [attachmentCopy payloadSourceFileURL];
      }
      v62 = ;
      [(SLSheetPreviewImageSource *)self _generatePreviewImageForVideoFileURL:v62 resultBlock:blockCopy];

      goto LABEL_4;
    }

    type = [attachmentCopy type];
    _SLLog(v5, 3, @"previewImageForAttachment: Cannot create preview for attachment of type %i,returning fallback preview", v57, v58, v59, v60, v61, type);
    goto LABEL_20;
  }

  _SLLog(v5, 6, @"previewImageForAttachment: creating preview for asset URL", v19, v20, v21, v22, v23, v63);
  payload3 = [attachmentCopy payload];
  scheme = [payload3 scheme];
  v26 = [scheme isEqualToString:@"assets-library"];

  if (!v26)
  {
LABEL_20:
    previewImage2 = +[SLSheetImagePreviewView fallbackPreviewImage];
    goto LABEL_3;
  }

  _SLLog(v5, 3, @"ALAsset attachment support is deprecated", v27, v28, v29, v30, v31, v64);
LABEL_4:
}

- (void)_generatePreviewImageForAttachment:(id)attachment queueToBlockWhileDownsampling:(id)downsampling resultBlock:(id)block
{
  attachmentCopy = attachment;
  downsamplingCopy = downsampling;
  blockCopy = block;
  _SLLog(v5, 6, @"SLComposeServiceViewController-_generatePreviewImageForAttachment:%@", v11, v12, v13, v14, v15, attachmentCopy);
  if ([attachmentCopy type] || (objc_msgSend(attachmentCopy, "previewImage"), v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    _SLLog(v5, 3, @"_generatePreviewImageForAttachment called for non-image payload attachment", v16, v17, v18, v19, v20, v24);
    blockCopy[2](blockCopy, 0, 0.0);
  }

  else
  {
    _SLLog(v5, 6, @"Image attachment with nil preview - triggering thumbnail generation", v16, v17, v18, v19, v20, v24);
    payload = [attachmentCopy payload];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke;
    block[3] = &unk_1E81759A0;
    v26 = payload;
    v27 = blockCopy;
    v23 = payload;
    dispatch_async(downsamplingCopy, block);
  }
}

void __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke_2;
  v6[3] = &unk_1E8175AD0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [SLImageDownsampling generateThumbnailFromImageData:v3 adjustSmallestSideToSize:200 resultsHandler:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke_3;
  block[3] = &unk_1E8175AA8;
  v6 = v3;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E69DCAB8] imageWithData:?];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(*(a1 + 48) + 16))(0.0);
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_generatePreviewImageForVideoFileURL:(id)l resultBlock:(id)block
{
  v41[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  _SLLog(v4, 7, @"SLSheetPreviewImageSource _generatePreviewImageForVideoFileURL: %@", v9, v10, v11, v12, v13, lCopy);
  v14 = objc_alloc(MEMORY[0x1E6988168]);
  v15 = *MEMORY[0x1E6987BB8];
  v40[0] = *MEMORY[0x1E6987BD8];
  v40[1] = v15;
  v41[0] = &unk_1F4202A60;
  v41[1] = MEMORY[0x1E695E110];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v17 = [v14 initWithURL:lCopy options:v16];

  _SLLog(v4, 7, @"SLSheetPreviewImageSource _generatePreviewImageForVideoFileURL: got asset %@", v18, v19, v20, v21, v22, v17);
  if (v17)
  {
    assetImageGenerator = self->_assetImageGenerator;
    if (!assetImageGenerator)
    {
      v29 = [objc_alloc(MEMORY[0x1E6987E68]) initWithAsset:v17];
      v30 = self->_assetImageGenerator;
      self->_assetImageGenerator = v29;

      [(AVAssetImageGenerator *)self->_assetImageGenerator setAppliesPreferredTrackTransform:1];
      assetImageGenerator = self->_assetImageGenerator;
    }

    v31 = MEMORY[0x1E696B098];
    CMTimeMakeWithSeconds(&v38, 0.0, 1);
    v32 = [v31 valueWithCMTime:&v38];
    v39 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __78__SLSheetPreviewImageSource__generatePreviewImageForVideoFileURL_resultBlock___block_invoke;
    v34[3] = &unk_1E8175B20;
    v35 = v17;
    v37 = blockCopy;
    v36 = lCopy;
    [(AVAssetImageGenerator *)assetImageGenerator generateCGImagesAsynchronouslyForTimes:v33 completionHandler:v34];
  }

  else
  {
    _SLLog(v4, 3, @"Could not create AVAsset from %@", v23, v24, v25, v26, v27, lCopy);
    (*(blockCopy + 2))(blockCopy, 0, 0.0);
  }
}

void __78__SLSheetPreviewImageSource__generatePreviewImageForVideoFileURL_resultBlock___block_invoke(id *a1, uint64_t a2, CGImage *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = MEMORY[0x1E696AD98];
  v11 = a6;
  v17 = [v10 numberWithInteger:a5];
  _SLLog(v6, 7, @"SLSheetPreviewImageSource _generatePreviewImageForVideoFileURL: did generate image %@ result %@ error %{public}@", v12, v13, v14, v15, v16, a3);

  if (a3)
  {
    CGImageRetain(a3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__SLSheetPreviewImageSource__generatePreviewImageForVideoFileURL_resultBlock___block_invoke_2;
  block[3] = &unk_1E8175AF8;
  v22 = a3;
  v19 = a1[4];
  v21 = a1[6];
  v20 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__SLSheetPreviewImageSource__generatePreviewImageForVideoFileURL_resultBlock___block_invoke_2(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 56))
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      objc_msgSend_duration(v10, a2);
    }

    _SLLog(v8, 3, @"Video duration CMTime.flags kCMTimeFlags_Valid is not set", a4, a5, a6, a7, a8, v14);
    v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:*(a1 + 56)];
    (*(*(a1 + 48) + 16))(0.0);
    CGImageRelease(*(a1 + 56));
  }

  else
  {
    _SLLog(v8, 6, @"AVAssetImageGenerator failed for %@", a4, a5, a6, a7, a8, *(a1 + 40));
    v11 = *(*(a1 + 48) + 16);
    v12.n128_u64[0] = 0;

    v11(v12);
  }
}

@end