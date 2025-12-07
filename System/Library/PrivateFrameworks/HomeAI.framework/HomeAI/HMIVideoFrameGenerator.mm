@interface HMIVideoFrameGenerator
- (HMIVideoFrameGenerator)initWithVideoFragment:(id)fragment;
- (void)generateVideoFramesForTimes:(id)times completionHandler:(id)handler;
@end

@implementation HMIVideoFrameGenerator

- (HMIVideoFrameGenerator)initWithVideoFragment:(id)fragment
{
  fragmentCopy = fragment;
  v12.receiver = self;
  v12.super_class = HMIVideoFrameGenerator;
  v5 = [(HMIVideoFrameGenerator *)&v12 init];
  if (v5)
  {
    v6 = [HMIMemoryAVAsset alloc];
    data = [fragmentCopy data];
    v8 = [(HMIMemoryAVAsset *)v6 initWithData:?];

    v9 = [[HMIVideoAssetReader alloc] initWithAsset:?];
    reader = v5->_reader;
    v5->_reader = v9;
  }

  return v5;
}

- (void)generateVideoFramesForTimes:(id)times completionHandler:(id)handler
{
  timesCopy = times;
  handlerCopy = handler;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v8 setDelegate:?];
  array = [MEMORY[0x277CBEB18] array];
  v16 = MEMORY[0x277D85DD0];
  v11 = timesCopy;
  v12 = array;
  [v9 setDecoderDidDecodeSampleBuffer:{v16, 3221225472, __72__HMIVideoFrameGenerator_generateVideoFramesForTimes_completionHandler___block_invoke, &unk_2787542D8}];
  while (1)
  {
    reader = [(HMIVideoFrameGenerator *)self reader];
    copyNextSampleBuffer = [reader copyNextSampleBuffer];

    if (!copyNextSampleBuffer)
    {
      break;
    }

    if (HMICMSampleBufferIsVideo(copyNextSampleBuffer))
    {
      CopyWithoutEdits = HMICMSampleBufferCreateCopyWithoutEdits(copyNextSampleBuffer);
      [v8 handleSampleBuffer:? outputFrame:?];
      CFRelease(CopyWithoutEdits);
    }

    CFRelease(copyNextSampleBuffer);
  }

  [v8 flush];
  handlerCopy[2](handlerCopy, v12);
}

void __72__HMIVideoFrameGenerator_generateVideoFramesForTimes_completionHandler___block_invoke(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  memset(&v6, 0, sizeof(v6));
  HMICMSampleBufferGetPresentationTimeRange(a3, &v6);
  if ([*(a1 + 32) na_any:{MEMORY[0x277D85DD0], 3221225472, __72__HMIVideoFrameGenerator_generateVideoFramesForTimes_completionHandler___block_invoke_2, &__block_descriptor_80_e17_B16__0__NSValue_8l, *&v6.start.value, *&v6.start.epoch, *&v6.duration.timescale}])
  {
    v4 = *(a1 + 40);
    v5 = [[HMIVideoFrame alloc] initWithSampleBuffer:?];
    [v4 addObject:?];
  }
}

BOOL __72__HMIVideoFrameGenerator_generateVideoFramesForTimes_completionHandler___block_invoke_2(_OWORD *a1, void *a2)
{
  if (a2)
  {
    [&time CMTimeValue];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v3 = a1[3];
  *&v5.start.value = a1[2];
  *&v5.start.epoch = v3;
  *&v5.duration.timescale = a1[4];
  return CMTimeRangeContainsTime(&v5, &time) != 0;
}

@end