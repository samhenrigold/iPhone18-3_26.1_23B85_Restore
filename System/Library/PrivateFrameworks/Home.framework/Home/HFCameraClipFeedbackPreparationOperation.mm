@interface HFCameraClipFeedbackPreparationOperation
- (HFCameraClipFeedbackPreparationOperation)initWithCameraClip:(id)clip completionHandler:(id)handler;
- (void)main;
@end

@implementation HFCameraClipFeedbackPreparationOperation

- (HFCameraClipFeedbackPreparationOperation)initWithCameraClip:(id)clip completionHandler:(id)handler
{
  clipCopy = clip;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = HFCameraClipFeedbackPreparationOperation;
  v9 = [(HFCameraClipFeedbackPreparationOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cameraClip, clip);
    v11 = _Block_copy(handlerCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

- (void)main
{
  v32 = *MEMORY[0x277D85DE8];
  cameraClip = [(HFCameraClipFeedbackPreparationOperation *)self cameraClip];
  v4 = [HFCameraUtilities videoDestinationURLForCameraClip:cameraClip strippedAudio:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v4 path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (v7)
  {
    v8 = HFLogForCategory(0x14uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Stripped audio file exists at url:%@.", buf, 0xCu);
    }

    completionHandler = [(HFCameraClipFeedbackPreparationOperation *)self completionHandler];
    (completionHandler)[2](completionHandler, v4);
  }

  else
  {
    cameraClip2 = [(HFCameraClipFeedbackPreparationOperation *)self cameraClip];
    completionHandler = [HFCameraUtilities videoDestinationURLForCameraClip:cameraClip2];

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [completionHandler path];
    v13 = [defaultManager2 fileExistsAtPath:path2];

    v14 = HFLogForCategory(0x14uLL);
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        cameraClip3 = [(HFCameraClipFeedbackPreparationOperation *)self cameraClip];
        hf_prettyDescription = [cameraClip3 hf_prettyDescription];
        *buf = 138412290;
        v29 = hf_prettyDescription;
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Proceed to strip audio file and truncate file to 20 seconds for clip: %@", buf, 0xCu);
      }

      v18 = [MEMORY[0x277CE63D8] assetWithURL:completionHandler];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __48__HFCameraClipFeedbackPreparationOperation_main__block_invoke;
      v23[3] = &unk_277DF3398;
      v24 = v18;
      v25 = completionHandler;
      selfCopy = self;
      v27 = v4;
      completionHandler2 = v18;
      [completionHandler2 loadValuesAsynchronouslyForKeys:&unk_282525798 completionHandler:v23];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        cameraClip4 = [(HFCameraClipFeedbackPreparationOperation *)self cameraClip];
        hf_prettyDescription2 = [cameraClip4 hf_prettyDescription];
        path3 = [completionHandler path];
        *buf = 138412546;
        v29 = hf_prettyDescription2;
        v30 = 2112;
        v31 = path3;
        _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "Unable to find file to convert for clip: %@; URL: %@. THIS SHOULD NEVER HAPPEN.", buf, 0x16u);
      }

      completionHandler2 = [(HFCameraClipFeedbackPreparationOperation *)self completionHandler];
      (*(completionHandler2 + 2))(completionHandler2, 0);
    }
  }
}

void __48__HFCameraClipFeedbackPreparationOperation_main__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6548] composition];
  v3 = *MEMORY[0x277CE5EA8];
  v4 = [v2 addMutableTrackWithMediaType:*MEMORY[0x277CE5EA8] preferredTrackID:0];
  v5 = [*(a1 + 32) tracksWithMediaType:v3];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_msgSend_duration(v7);
    }

    else
    {
      memset(&duration, 0, sizeof(duration));
    }

    start = **&MEMORY[0x277CC08F0];
    v18 = *&start.value;
    epoch = start.epoch;
    CMTimeRangeMake(&buf, &start, &duration);
    *&duration.value = v18;
    duration.epoch = epoch;
    [v4 insertTimeRange:&buf ofTrack:v6 atTime:&duration error:0];
    v14 = objc_alloc(MEMORY[0x277CE6400]);
    v15 = [v14 initWithAsset:v2 presetName:*MEMORY[0x277CE5C78]];
    [v15 setOutputFileType:*MEMORY[0x277CE5DA8]];
    [v15 setOutputURL:*(a1 + 56)];
    [v15 setShouldOptimizeForNetworkUse:1];
    CMTimeMake(&buf.start, 0, 1000);
    CMTimeMakeWithSeconds(&duration, 20.0, 1000);
    CMTimeRangeMake(&v24, &buf.start, &duration);
    buf = v24;
    [v15 setTimeRange:&buf];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__HFCameraClipFeedbackPreparationOperation_main__block_invoke_5;
    v19[3] = &unk_277DF3398;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = *(a1 + 40);
    v10 = v15;
    [v10 exportAsynchronouslyWithCompletionHandler:v19];
  }

  else
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [*(a1 + 40) path];
    [v8 removeItemAtPath:v9 error:0];

    v10 = HFLogForCategory(0x14uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 48) cameraClip];
      v12 = [v11 hf_prettyDescription];
      LODWORD(buf.start.value) = 138412290;
      *(&buf.start.value + 4) = v12;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Missing video track. Unable to strip audio from clip: %@", &buf, 0xCu);
    }
  }
}

void __48__HFCameraClipFeedbackPreparationOperation_main__block_invoke_5(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) status];
  if (v2 == 5)
  {
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [*(a1 + 56) path];
    [v13 removeItemAtPath:v14 error:0];

    v3 = HFLogForCategory(0x14uLL);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v9 = [*(a1 + 40) cameraClip];
    v10 = [v9 hf_prettyDescription];
    v11 = [*(a1 + 32) error];
    v16 = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v12 = "Cancelled audio stripping and truncation of clip: %@; error: %@";
    goto LABEL_13;
  }

  if (v2 == 4)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [*(a1 + 56) path];
    [v7 removeItemAtPath:v8 error:0];

    v3 = HFLogForCategory(0x14uLL);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v9 = [*(a1 + 40) cameraClip];
    v10 = [v9 hf_prettyDescription];
    v11 = [*(a1 + 32) error];
    v16 = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v12 = "Failure to strip audio and truncate clip: %@; error: %@";
LABEL_13:
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, v12, &v16, 0x16u);

    goto LABEL_10;
  }

  if (v2 != 3)
  {
    return;
  }

  v3 = HFLogForCategory(0x14uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) cameraClip];
    v5 = [v4 hf_prettyDescription];
    v6 = *(a1 + 48);
    v16 = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Finished stripping/truncating file for clip: %@; URL: %@.", &v16, 0x16u);
  }

LABEL_10:

  v15 = [*(a1 + 40) completionHandler];
  v15[2]();
}

@end