@interface HFCameraVideoDownloadOperation
+ (id)downloadOperationForClip:(id)clip;
- (BOOL)fileAlreadyExists;
- (HFCameraVideoDownloadOperation)init;
- (HFCameraVideoDownloaderDelegate)delegate;
- (id)description;
- (void)fileDownloadFailedWithError:(id)error;
- (void)fileDownloadFinishedWithElapsedTime:(double)time;
- (void)fileDownloadNotNeeded;
- (void)fileDownloadProgress:(unint64_t)progress;
@end

@implementation HFCameraVideoDownloadOperation

- (HFCameraVideoDownloadOperation)init
{
  v5.receiver = self;
  v5.super_class = HFCameraVideoDownloadOperation;
  v2 = [(NSBlockOperation *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(HFCameraAnalyticsCameraTimelapseLoadEvent);
    [(HFCameraVideoDownloadOperation *)v2 setTimelapseLoadEvent:v3];
  }

  return v2;
}

- (BOOL)fileAlreadyExists
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  destinationURL = [(HFCameraVideoDownloadOperation *)self destinationURL];
  path = [destinationURL path];
  v6 = [defaultManager fileExistsAtPath:path];

  return v6;
}

+ (id)downloadOperationForClip:(id)clip
{
  clipCopy = clip;
  v5 = objc_alloc_init(self);
  [v5 setClip:clipCopy];
  v6 = [HFCameraUtilities videoDestinationURLForCameraClip:clipCopy];
  [v5 setDestinationURL:v6];

  objc_initWeak(&location, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HFCameraVideoDownloadOperation_downloadOperationForClip___block_invoke;
  v8[3] = &unk_277DF4460;
  objc_copyWeak(&v9, &location);
  [v5 addExecutionBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __59__HFCameraVideoDownloadOperation_downloadOperationForClip___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained fileAlreadyExists])
  {
    [WeakRetained fileDownloadNotNeeded];
  }

  else
  {
    v1 = [WeakRetained downloadBlock];
    v1[2]();
  }
}

- (void)fileDownloadNotNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clip = [(HFCameraVideoDownloadOperation *)self clip];
    hf_prettyDescription = [clip hf_prettyDescription];
    v15 = 136315394;
    v16 = "[HFCameraVideoDownloadOperation fileDownloadNotNeeded]";
    v17 = 2112;
    v18 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v15, 0x16u);
  }

  clip2 = [(HFCameraVideoDownloadOperation *)self clip];
  quality = [clip2 quality];

  if (quality == 1)
  {
    timelapseLoadEvent = [(HFCameraVideoDownloadOperation *)self timelapseLoadEvent];
    v9 = [timelapseLoadEvent sendEventForState:1];
  }

  delegate = [(HFCameraVideoDownloadOperation *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(HFCameraVideoDownloadOperation *)self delegate];
    clip3 = [(HFCameraVideoDownloadOperation *)self clip];
    destinationURL = [(HFCameraVideoDownloadOperation *)self destinationURL];
    [delegate2 foundVideoFileForClip:clip3 atURL:destinationURL];
  }
}

- (void)fileDownloadFailedWithError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    clip = [(HFCameraVideoDownloadOperation *)self clip];
    hf_prettyDescription = [clip hf_prettyDescription];
    v16 = 136315650;
    v17 = "[HFCameraVideoDownloadOperation fileDownloadFailedWithError:]";
    v18 = 2112;
    v19 = errorCopy;
    v20 = 2112;
    v21 = hf_prettyDescription;
    _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%s %@ fetching clip: %@", &v16, 0x20u);
  }

  clip2 = [(HFCameraVideoDownloadOperation *)self clip];
  quality = [clip2 quality];

  if (quality == 1)
  {
    timelapseLoadEvent = [(HFCameraVideoDownloadOperation *)self timelapseLoadEvent];
    v9 = [timelapseLoadEvent sendEventForState:0];
  }

  delegate = [(HFCameraVideoDownloadOperation *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(HFCameraVideoDownloadOperation *)self delegate];
    clip3 = [(HFCameraVideoDownloadOperation *)self clip];
    [delegate2 failedToDownloadVideoFileForClip:clip3];
  }
}

- (void)fileDownloadFinishedWithElapsedTime:(double)time
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clip = [(HFCameraVideoDownloadOperation *)self clip];
    hf_prettyDescription = [clip hf_prettyDescription];
    clip2 = [(HFCameraVideoDownloadOperation *)self clip];
    objc_msgSend_duration(clip2);
    v19 = 136315906;
    v20 = "[HFCameraVideoDownloadOperation fileDownloadFinishedWithElapsedTime:]";
    v21 = 2112;
    v22 = hf_prettyDescription;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%s %@; duration: %.2f in %.2f", &v19, 0x2Au);
  }

  clip3 = [(HFCameraVideoDownloadOperation *)self clip];
  quality = [clip3 quality];

  if (quality == 1)
  {
    timelapseLoadEvent = [(HFCameraVideoDownloadOperation *)self timelapseLoadEvent];
    v13 = [timelapseLoadEvent sendEventForState:2];
  }

  delegate = [(HFCameraVideoDownloadOperation *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate2 = [(HFCameraVideoDownloadOperation *)self delegate];
    clip4 = [(HFCameraVideoDownloadOperation *)self clip];
    destinationURL = [(HFCameraVideoDownloadOperation *)self destinationURL];
    [delegate2 didDownloadVideoFileForClip:clip4 toURL:destinationURL];
  }
}

- (void)fileDownloadProgress:(unint64_t)progress
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clip = [(HFCameraVideoDownloadOperation *)self clip];
    hf_prettyDescription = [clip hf_prettyDescription];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:progress];
    v13 = 136315650;
    v14 = "[HFCameraVideoDownloadOperation fileDownloadProgress:]";
    v15 = 2112;
    v16 = hf_prettyDescription;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%s %@; download progress: %@", &v13, 0x20u);
  }

  delegate = [(HFCameraVideoDownloadOperation *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(HFCameraVideoDownloadOperation *)self delegate];
    clip2 = [(HFCameraVideoDownloadOperation *)self clip];
    [delegate2 downloadProgress:progress forClip:clip2];
  }
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  clip = [(HFCameraVideoDownloadOperation *)self clip];
  uniqueIdentifier = [clip uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  [v3 appendString:uUIDString withName:@"clipUUID"];

  v7 = [v3 appendBool:-[HFCameraVideoDownloadOperation isFinished](self withName:{"isFinished"), @"isFinished"}];
  v8 = [v3 appendBool:-[HFCameraVideoDownloadOperation isCancelled](self withName:{"isCancelled"), @"isCancelled"}];
  v9 = [v3 appendBool:-[HFCameraVideoDownloadOperation isExecuting](self withName:{"isExecuting"), @"isExecuting"}];
  build = [v3 build];

  return build;
}

- (HFCameraVideoDownloaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end