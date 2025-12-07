@interface HMIVideoAssetReader
- (BOOL)_createOutputsForAsset:(id)asset readVideo:(BOOL)video readAudio:(BOOL)audio;
- (BOOL)checkAndSaveCrashReportWithData:(id)data;
- (HMIVideoAssetReader)initWithAsset:(id)asset readVideoTrack:(BOOL)track readAudioTrack:(BOOL)audioTrack;
- (opaqueCMSampleBuffer)_copyNextSampleBufferFromTrackOutput:(id)output;
- (opaqueCMSampleBuffer)copyNextSampleBufferWithTrackIndexOutput:(unint64_t *)output;
- (void)dealloc;
@end

@implementation HMIVideoAssetReader

- (HMIVideoAssetReader)initWithAsset:(id)asset readVideoTrack:(BOOL)track readAudioTrack:(BOOL)audioTrack
{
  assetCopy = asset;
  v18.receiver = self;
  v18.super_class = HMIVideoAssetReader;
  v8 = [(HMIVideoAssetReader *)&v18 init];
  if (v8)
  {
    v8->_trackSamples = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    array = [MEMORY[0x277CBEB18] array];
    trackOutputs = v8->_trackOutputs;
    v8->_trackOutputs = array;

    objc_storeStrong(&v8->_asset, asset);
    v11 = [MEMORY[0x277CE6410] assetReaderWithAsset:? error:?];
    v12 = 0;
    assetReader = v8->_assetReader;
    v8->_assetReader = v11;

    if (v8->_assetReader)
    {
      if ([HMIVideoAssetReader _createOutputsForAsset:v8 readVideo:"_createOutputsForAsset:readVideo:readAudio:" readAudio:?])
      {
        v14 = 1;
LABEL_7:
        v8->super._status = v14;

        goto LABEL_8;
      }
    }

    else
    {
      error = v8->super._error;
      v8->super._error = v12;
      v16 = v12;
    }

    v14 = 4;
    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

- (BOOL)_createOutputsForAsset:(id)asset readVideo:(BOOL)video readAudio:(BOOL)audio
{
  audioCopy = audio;
  videoCopy = video;
  array = [MEMORY[0x277CBEB18] array];
  if (videoCopy)
  {
    v9 = [(AVAsset *)self->_asset tracksWithMediaType:?];
    [array addObjectsFromArray:?];
  }

  if (audioCopy)
  {
    v10 = [(AVAsset *)self->_asset tracksWithMediaType:?];
    [array addObjectsFromArray:?];
  }

  v11 = array;
  v12 = [v11 countByEnumeratingWithState:0 objects:? count:?];
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0];
    v15 = *MEMORY[0x277CBEEE8];
    while (2)
    {
      for (i = 0; i != v13; i = (i + 1))
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:? outputSettings:?];
        [v17 setAlwaysCopiesSampleData:?];
        if (![(AVAssetReader *)self->_assetReader canAddOutput:?])
        {

          v18 = 0;
          goto LABEL_15;
        }

        [(AVAssetReader *)self->_assetReader addOutput:?];
        [(NSMutableArray *)self->_trackOutputs addObject:?];
        CFArrayAppendValue(self->_trackSamples, v15);
      }

      v13 = [v11 countByEnumeratingWithState:? objects:? count:?];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_15:

  return v18;
}

- (void)dealloc
{
  [(AVAssetReader *)self->_assetReader cancelReading];
  CFRelease(self->_trackSamples);
  v3.receiver = self;
  v3.super_class = HMIVideoAssetReader;
  [(HMIVideoAssetReader *)&v3 dealloc];
}

- (opaqueCMSampleBuffer)_copyNextSampleBufferFromTrackOutput:(id)output
{
  v16 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  copyNextSampleBuffer = [outputCopy copyNextSampleBuffer];
  if (copyNextSampleBuffer)
  {
    copyNextSampleBuffer2 = copyNextSampleBuffer;
    while (!CMSampleBufferGetNumSamples(copyNextSampleBuffer2))
    {
      CFRelease(copyNextSampleBuffer2);
      copyNextSampleBuffer2 = [outputCopy copyNextSampleBuffer];
      if (!copyNextSampleBuffer2)
      {
        goto LABEL_5;
      }
    }

    memset(&v15, 0, sizeof(v15));
    CMSampleBufferGetDecodeTimeStamp(&v15, copyNextSampleBuffer2);
  }

  else
  {
LABEL_5:
    if ([(AVAssetReader *)self->_assetReader status]== 3)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        error = [(AVAssetReader *)self->_assetReader error];
        LODWORD(v15.value) = 138543618;
        *(&v15.value + 4) = v10;
        LOWORD(v15.flags) = 2112;
        *(&v15.flags + 2) = error;
        _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to read sample buffer, error: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      error2 = [(AVAssetReader *)self->_assetReader error];
      error = selfCopy->super._error;
      selfCopy->super._error = error2;

      copyNextSampleBuffer2 = 0;
      selfCopy->super._status = 4;
    }

    else
    {
      copyNextSampleBuffer2 = 0;
    }
  }

  return copyNextSampleBuffer2;
}

- (opaqueCMSampleBuffer)copyNextSampleBufferWithTrackIndexOutput:(unint64_t *)output
{
  v32 = *MEMORY[0x277D85DE8];
  status = self->super._status;
  if (status != 1)
  {
    if (status == 4)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        LODWORD(buf.value) = 138543362;
        *(&buf.value + 4) = v9;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Asset reader failed, ignoring", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      return 0;
    }

LABEL_14:
    buf = **&MEMORY[0x277CC08B0];
    if ([(NSMutableArray *)self->_trackOutputs count])
    {
      v15 = 0;
      v16 = *MEMORY[0x277CBEEE8];
      v17 = -1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_trackSamples, v15);
        if (ValueAtIndex)
        {
          v19 = ValueAtIndex == v16;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          memset(&v30, 0, sizeof(v30));
          CMSampleBufferGetDecodeTimeStamp(&v30, ValueAtIndex);
          time1 = v30;
          v28 = buf;
          if (CMTimeCompare(&time1, &v28) < 0)
          {
            buf = v30;
            v17 = v15;
          }
        }

        ++v15;
      }

      while ([(NSMutableArray *)self->_trackOutputs count]> v15);
      if ((v17 & 0x80000000) == 0)
      {
        v20 = CFArrayGetValueAtIndex(self->_trackSamples, v17);
        v21 = CFRetain(v20);
        v22 = [(NSMutableArray *)self->_trackOutputs objectAtIndexedSubscript:?];
        v23 = [(HMIVideoAssetReader *)self _copyNextSampleBufferFromTrackOutput:?];

        trackSamples = self->_trackSamples;
        if (v23)
        {
          CFArraySetValueAtIndex(trackSamples, v17, v23);
          CFRelease(v23);
          if (!output)
          {
            return v21;
          }
        }

        else
        {
          CFArraySetValueAtIndex(trackSamples, v17, v16);
          if (!output)
          {
            return v21;
          }
        }

        *output = v17;
        return v21;
      }
    }

    return 0;
  }

  if (![(AVAssetReader *)self->_assetReader startReading])
  {
    error = [(AVAssetReader *)self->_assetReader error];
    error = self->super._error;
    self->super._error = error;

    v21 = 0;
    self->super._status = 4;
    return v21;
  }

  self->super._status = 2;
  if ([(NSMutableArray *)self->_trackOutputs count])
  {
    v10 = 0;
    v11 = *MEMORY[0x277CBEEE8];
    do
    {
      v12 = [(NSMutableArray *)self->_trackOutputs objectAtIndexedSubscript:?];
      v13 = [(HMIVideoAssetReader *)self _copyNextSampleBufferFromTrackOutput:?];

      v14 = self->_trackSamples;
      if (v13)
      {
        CFArraySetValueAtIndex(v14, v10, v13);
        CFRelease(v13);
      }

      else
      {
        CFArraySetValueAtIndex(v14, v10, v11);
      }

      ++v10;
    }

    while ([(NSMutableArray *)self->_trackOutputs count]> v10);
  }

  if (self->super._status != 4)
  {
    goto LABEL_14;
  }

  return 0;
}

- (BOOL)checkAndSaveCrashReportWithData:(id)data
{
  v41 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  array = [MEMORY[0x277CBEB18] array];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3810000000;
  v37 = &unk_22D2C2491;
  v38 = *MEMORY[0x277CC08B0];
  v39 = *(MEMORY[0x277CC08B0] + 16);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3810000000;
  v32 = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 16);
  v31 = &unk_22D2C2491;
  v33 = v6;
  tracks = [(AVAsset *)self->_asset tracks];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __55__HMIVideoAssetReader_checkAndSaveCrashReportWithData___block_invoke;
  v23 = &unk_278752CC8;
  selfCopy = self;
  v26 = &v34;
  v27 = &v28;
  v8 = array;
  v25 = v8;
  [tracks na_each:?];

  lhs = *(v29 + 4);
  rhs = *(v35 + 4);
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) > 1.0)
  {
    [v8 addObject:?];
  }

  if ([v8 count])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v12;
      LOWORD(time.flags) = 2112;
      *(&time.flags + 2) = v8;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Warnings: %@", &time, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    string = [MEMORY[0x277CCAB68] string];
    [v8 na_each:?];
    if (+[HMIPreference isInternalInstall])
    {
      [string appendString:?];
      v14 = [dataCopy base64EncodedDataWithOptions:?];
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:? encoding:?];
      [string appendString:?];

      [string appendString:?];
    }

    HMISimulateCrash(@"Asset Check", string, 1);
  }

  v16 = [v8 count] != 0;

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v16;
}

void __55__HMIVideoAssetReader_checkAndSaveCrashReportWithData___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    if (v3)
    {
      [buf timeRange];
    }

    else
    {
      v25 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v8 = HMICMTimeRangeDescription(buf);
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 2112;
    *&buf[24] = v8;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Track %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    [v18 timeRange];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  *buf = *(&v18[1] + 8);
  *&buf[16] = *(&v18[2] + 1);
  time2 = *(*(*(a1 + 48) + 8) + 32);
  CMTimeMinimum(&v19, buf, &time2);
  *(*(*(a1 + 48) + 8) + 32) = v19;
  if (v3)
  {
    [v15 timeRange];
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  *buf = *(&v15[1] + 8);
  *&buf[16] = *(&v15[2] + 1);
  time2 = *(*(*(a1 + 56) + 8) + 32);
  CMTimeMaximum(&v16, buf, &time2);
  *(*(*(a1 + 56) + 8) + 32) = v16;
  if (v3)
  {
    [v14 timeRange];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  *buf = *(&v14[1] + 8);
  *&buf[16] = *(&v14[2] + 1);
  if (CMTimeGetSeconds(buf) > 3600.0)
  {
    v9 = *(a1 + 40);
    v20 = @"name";
    v21 = @"discussion";
    v22 = @"VeryLongTrackDuration";
    v10 = MEMORY[0x277CCACA8];
    if (v3)
    {
      [buf timeRange];
    }

    else
    {
      v25 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v11 = HMICMTimeRangeDescription(buf);
    v12 = [v10 stringWithFormat:v3, v11];
    v23 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v9 addObject:?];
  }
}

void *__55__HMIVideoAssetReader_checkAndSaveCrashReportWithData___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:?];
  [v3 appendFormat:v5];

  v6 = *(a1 + 32);
  v7 = [v4 objectForKeyedSubscript:?];

  [v6 appendFormat:v7];
  v8 = *(a1 + 32);

  return [v8 appendString:?];
}

@end