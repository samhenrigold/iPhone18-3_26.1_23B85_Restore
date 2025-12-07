@interface RCAudioBufferEnumerator
- (RCAudioBufferEnumerator)initWithComposition:(id)composition processingFormat:(id)format startTime:(double)time error:(id *)error;
- (id)nextObject;
@end

@implementation RCAudioBufferEnumerator

- (RCAudioBufferEnumerator)initWithComposition:(id)composition processingFormat:(id)format startTime:(double)time error:(id *)error
{
  compositionCopy = composition;
  formatCopy = format;
  v30.receiver = self;
  v30.super_class = RCAudioBufferEnumerator;
  v11 = [(RCAudioBufferEnumerator *)&v30 init];
  if (!v11)
  {
LABEL_9:
    v14 = v11;
    goto LABEL_11;
  }

  v12 = [compositionCopy playableAsset:error];
  asset = v11->_asset;
  v11->_asset = v12;

  if (!v11->_asset)
  {
    v14 = 0;
    goto LABEL_11;
  }

  objc_storeStrong(&v11->_processingFormat, format);
  v14 = [objc_alloc(MEMORY[0x277CE6410]) initWithAsset:v11->_asset error:error];
  if (v14)
  {
    [(AVAsset *)v11->_asset rc_durationInSeconds];
    RCTimeRangeMake();
    CMTimeRangeFromRCTimeRange(&v29, v15, v16);
    v28 = v29;
    [(RCAudioBufferEnumerator *)v14 setTimeRange:&v28];
    rc_audioTracks = [(AVAsset *)v11->_asset rc_audioTracks];
    v18 = MEMORY[0x277CE6418];
    settings = [formatCopy settings];
    v20 = [v18 assetReaderAudioMixOutputWithAudioTracks:rc_audioTracks audioSettings:settings];

    [(AVAssetReaderAudioMixOutput *)v20 setAlwaysCopiesSampleData:0];
    if ([rc_audioTracks count] >= 2)
    {
      v21 = objc_opt_new();
      v28.start.value = 0;
      *&v28.start.timescale = &v28;
      *&v28.start.epoch = 0x2020000000uLL;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __80__RCAudioBufferEnumerator_initWithComposition_processingFormat_startTime_error___block_invoke;
      v27[3] = &unk_279E44748;
      v27[4] = &v28;
      v22 = [rc_audioTracks na_map:v27];
      [v21 setInputParameters:v22];

      [(AVAssetReaderAudioMixOutput *)v20 setAudioMix:v21];
      _Block_object_dispose(&v28, 8);
    }

    if ([(RCAudioBufferEnumerator *)v14 canAddOutput:v20])
    {
      [(RCAudioBufferEnumerator *)v14 addOutput:v20];
      [(RCAudioBufferEnumerator *)v14 startReading];
    }

    assetReader = v11->_assetReader;
    v11->_assetReader = v14;
    v24 = v14;

    mixerOutput = v11->_mixerOutput;
    v11->_mixerOutput = v20;

    goto LABEL_9;
  }

LABEL_11:

  return v14;
}

id __80__RCAudioBufferEnumerator_initWithComposition_processingFormat_startTime_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CE6540] audioMixInputParametersWithTrack:a2];
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  v7 = 0.0;
  if (!v6)
  {
    *&v7 = 1.0;
  }

  v9 = *MEMORY[0x277CC08F0];
  v10 = *(MEMORY[0x277CC08F0] + 16);
  [v3 setVolume:&v9 atTime:v7];

  return v4;
}

- (id)nextObject
{
  copyNextSampleBuffer = [(AVAssetReaderAudioMixOutput *)self->_mixerOutput copyNextSampleBuffer];
  if (copyNextSampleBuffer)
  {
    v4 = copyNextSampleBuffer;
    v5 = self->_processingFormat;
    if (CMSampleBufferGetNumSamples(v4))
    {
      bufferListSizeNeededOut = 0;
      v6 = 0;
      if (!CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(v4, &bufferListSizeNeededOut, 0, 0, 0, 0, 0, 0))
      {
        v13 = 0;
        v14 = &v13;
        v15 = 0x3032000000;
        v16 = __Block_byref_object_copy__6;
        v17 = __Block_byref_object_dispose__6;
        v18 = [MEMORY[0x277CBEB28] dataWithLength:bufferListSizeNeededOut];
        mutableBytes = [v14[5] mutableBytes];
        v11[0] = 0;
        v11[1] = v11;
        v11[2] = 0x2020000000;
        v12 = 0;
        if (CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(v4, 0, mutableBytes, bufferListSizeNeededOut, *MEMORY[0x277CBECE8], *MEMORY[0x277CBECE8], 0, &v12))
        {
          v6 = 0;
        }

        else
        {
          v8 = objc_alloc(MEMORY[0x277CB83C8]);
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __convertSampleBuffer_block_invoke;
          v10[3] = &unk_279E447E8;
          v10[4] = &v13;
          v10[5] = v11;
          v6 = [v8 initWithPCMFormat:v5 bufferListNoCopy:mutableBytes deallocator:v10];
        }

        _Block_object_dispose(v11, 8);
        _Block_object_dispose(&v13, 8);
      }
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end