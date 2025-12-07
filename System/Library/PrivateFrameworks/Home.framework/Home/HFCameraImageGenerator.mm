@interface HFCameraImageGenerator
- (HFCameraImageGenerator)initWithDelegate:(id)delegate;
- (HFCameraImageGeneratorDelegate)delegate;
- (void)generateImagesFromAsset:(id)asset forOffsets:(id)offsets atSize:(CGSize)size withKey:(id)key;
@end

@implementation HFCameraImageGenerator

- (HFCameraImageGenerator)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = HFCameraImageGenerator;
  v5 = [(HFCameraImageGenerator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_imagesExpected = 0;
  }

  return v6;
}

- (void)generateImagesFromAsset:(id)asset forOffsets:(id)offsets atSize:(CGSize)size withKey:(id)key
{
  height = size.height;
  width = size.width;
  v34 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  offsetsCopy = offsets;
  keyCopy = key;
  [(HFCameraImageGenerator *)self setKey:?];
  v22 = assetCopy;
  v13 = [MEMORY[0x277CE6408] assetImageGeneratorWithAsset:assetCopy];
  v32 = **&MEMORY[0x277CC08F0];
  v24 = *&v32.value;
  epoch = v32.epoch;
  [v13 setRequestedTimeToleranceBefore:&v32];
  *&v32.value = v24;
  v32.epoch = epoch;
  [v13 setRequestedTimeToleranceAfter:&v32];
  [v13 setMaximumSize:{width, height}];
  -[HFCameraImageGenerator setImagesExpected:](self, "setImagesExpected:", [offsetsCopy count]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = offsetsCopy;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v17)
  {
    v18 = *v29;
    do
    {
      v19 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v28 + 1) + 8 * v19) doubleValue];
        memset(&v32, 0, sizeof(v32));
        CMTimeMakeWithSeconds(&v32, v20, 1);
        v27 = v32;
        v21 = [MEMORY[0x277CCAE60] valueWithCMTime:&v27];
        [v15 addObject:v21];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v17);
  }

  objc_initWeak(&v32, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__HFCameraImageGenerator_generateImagesFromAsset_forOffsets_atSize_withKey___block_invoke;
  v25[3] = &unk_277DFD638;
  objc_copyWeak(&v26, &v32);
  [v13 generateCGImagesAsynchronouslyForTimes:v15 completionHandler:v25];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v32);
}

void __76__HFCameraImageGenerator_generateImagesFromAsset_forOffsets_atSize_withKey___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, void *a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a3 || a5 || v11)
  {
    v16 = HFLogForCategory(0x19uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v11;
      _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Error: Trying to generate image %@", buf, 0xCu);
    }

    v13 = [WeakRetained delegate];
    v14 = [WeakRetained key];
    *buf = *a2;
    v22 = *(a2 + 16);
    v19 = *a4;
    v20 = *(a4 + 2);
    [v13 imageGenerator:WeakRetained failedToGenerateImageForRequestedTime:buf actualTime:&v19 forKey:v14];
  }

  else
  {
    v13 = [MEMORY[0x277D755B8] imageWithCGImage:a3];
    v14 = [WeakRetained delegate];
    v15 = [WeakRetained key];
    *buf = *a2;
    v22 = *(a2 + 16);
    v19 = *a4;
    v20 = *(a4 + 2);
    [v14 imageGenerator:WeakRetained didGenerateImage:v13 requestedTime:buf actualTime:&v19 forKey:v15];
  }

  [WeakRetained setImagesExpected:{objc_msgSend(WeakRetained, "imagesExpected") - 1}];
  if (![WeakRetained imagesExpected])
  {
    v17 = [WeakRetained delegate];
    v18 = [WeakRetained key];
    [v17 imageGenerator:WeakRetained finishedGeneratingImagesForKey:v18];
  }
}

- (HFCameraImageGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end