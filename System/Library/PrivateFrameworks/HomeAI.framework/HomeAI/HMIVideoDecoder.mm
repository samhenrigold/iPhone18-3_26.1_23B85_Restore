@interface HMIVideoDecoder
- (BOOL)_createSessionWithFormatDescription:(opaqueCMFormatDescription *)description;
- (BOOL)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer outputFrame:(BOOL)frame;
- (HMIVideoDecoder)initWithFrameReordering:(BOOL)reordering;
- (HMIVideoDecoderDelegate)delegate;
- (void)_didDecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_evictSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_failWithDescription:(id)description;
- (void)dealloc;
- (void)flush;
@end

@implementation HMIVideoDecoder

- (HMIVideoDecoder)initWithFrameReordering:(BOOL)reordering
{
  reorderingCopy = reordering;
  v16.receiver = self;
  v16.super_class = HMIVideoDecoder;
  v4 = [(HMIVideoDecoder *)&v16 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = 0;
    *(v4 + 7) = 0;
    v6 = MEMORY[0x277CC0898];
    v7 = *MEMORY[0x277CC0898];
    *(v4 + 5) = *MEMORY[0x277CC0898];
    v8 = *(v6 + 16);
    *(v4 + 12) = v8;
    *(v4 + 104) = v7;
    *(v4 + 15) = v8;
    v9 = 3;
    if (!reorderingCopy)
    {
      v9 = 0;
    }

    *(v4 + 5) = v9;
    *(v4 + 1) = 2;
    v10 = [objc_alloc(MEMORY[0x277D0F948]) initWithWeakObject:?];
    weakDecoder = v5->_weakDecoder;
    v5->_weakDecoder = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("HMIVideoDecoderWorkQueue", v12);
    workQueue = v5->_workQueue;
    v5->_workQueue = v13;
  }

  return v5;
}

- (BOOL)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer outputFrame:(BOOL)frame
{
  frameCopy = frame;
  v41 = *MEMORY[0x277D85DE8];
  if ([(HMIVideoNode *)self status]!= 2)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = HMICMSampleBufferFormattedDescription(buffer, 1000);
      LODWORD(time2.value) = 138543618;
      *(&time2.value + 4) = v22;
      LOWORD(time2.flags) = 2112;
      *(&time2.flags + 2) = v23;
      _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_ERROR, "%{public}@Video decoder is not running, ignoring %@", &time2, 0x16u);
    }

    v24 = v19;
    goto LABEL_28;
  }

  if (!CMSampleBufferGetNumSamples(buffer))
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      LODWORD(time2.value) = 138543362;
      *(&time2.value + 4) = v28;
      _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_ERROR, "%{public}@Sample buffer has no samples, skipping.", &time2, 0xCu);
LABEL_26:
    }

LABEL_27:

    v24 = v25;
LABEL_28:
    objc_autoreleasePoolPop(v24);
    return 0;
  }

  memset(&v38, 0, sizeof(v38));
  CMSampleBufferGetDecodeTimeStamp(&v38, buffer);
  [v37 lastSampleBufferDTS];
  if (v37[12])
  {
    [&time2 lastSampleBufferDTS];
    time1 = v38;
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        [&time2 lastSampleBufferDTS];
        v29 = HMICMTimeDescription(&time2);
        time2 = v38;
        v30 = HMICMTimeDescription(&time2);
        LODWORD(time2.value) = 138543874;
        *(&time2.value + 4) = v28;
        LOWORD(time2.flags) = 2112;
        *(&time2.flags + 2) = v29;
        HIWORD(time2.epoch) = 2112;
        v40 = v30;
        _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_ERROR, "%{public}@Invalid DTS, expected > %@, got %@, skipping.", &time2, 0x20u);

        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

  time2 = v38;
  [(HMIVideoDecoder *)self setLastSampleBufferDTS:?];
  FormatDescription = CMSampleBufferGetFormatDescription(buffer);
  if (!FormatDescription)
  {
    goto LABEL_23;
  }

  v8 = FormatDescription;
  if (![(HMIVideoDecoder *)self session]|| VTDecompressionSessionCanAcceptFormatDescription([(HMIVideoDecoder *)self session], v8))
  {
    goto LABEL_12;
  }

  v9 = +[HMIPreference sharedInstance];
  v10 = [v9 BOOLPreferenceForKey:? defaultValue:?];

  if (!v10)
  {
LABEL_23:
    [(HMIVideoDecoder *)self _failWithDescription:?];
    return 0;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    LODWORD(time2.value) = 138543362;
    *(&time2.value + 4) = v14;
    _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Restarting decoder because format description changed.", &time2, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  [(HMIVideoDecoder *)selfCopy4 flush];
  VTDecompressionSessionInvalidate([(HMIVideoDecoder *)selfCopy4 session]);
  CFRelease([(HMIVideoDecoder *)selfCopy4 session]);
  [(HMIVideoDecoder *)selfCopy4 _createSessionWithFormatDescription:?];
LABEL_12:
  if (![(HMIVideoDecoder *)self session])
  {
    reorderBufferSize = self->_reorderBufferSize;
    CallbacksForSampleBuffersSortedByOutputPTS = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
    v34 = CMBufferQueueCreate(0, reorderBufferSize, CallbacksForSampleBuffersSortedByOutputPTS, &self->_buffer);
    if (v34)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:v34];
      [(HMIVideoDecoder *)self _failWithDescription:?];

      return 0;
    }

    if ([(HMIVideoDecoder *)self _createSessionWithFormatDescription:?])
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_13:
  if (frameCopy)
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  LODWORD(time2.value) = 0;
  v16 = VTDecompressionSessionDecodeFrame([(HMIVideoDecoder *)self session], buffer, v15, 0, &time2);
  v17 = v16 == 0;
  if (v16)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:v16];
    [(HMIVideoDecoder *)self _failWithDescription:?];
  }

  return v17;
}

- (void)flush
{
  if ([(HMIVideoDecoder *)self session])
  {
    VTDecompressionSessionWaitForAsynchronousFrames([(HMIVideoDecoder *)self session]);
    while (!CMBufferQueueIsEmpty([(HMIVideoDecoder *)self buffer]))
    {
      v3 = CMBufferQueueDequeueAndRetain([(HMIVideoDecoder *)self buffer]);
      [(HMIVideoDecoder *)self _evictSampleBuffer:?];
      CFRelease(v3);
    }
  }
}

- (void)dealloc
{
  if ([(HMIVideoDecoder *)self buffer])
  {
    CFRelease(self->_buffer);
    [(HMIVideoDecoder *)self setBuffer:?];
  }

  if ([(HMIVideoDecoder *)self session])
  {
    session = [(HMIVideoDecoder *)self session];
    weakDecoder = [(HMIVideoDecoder *)self weakDecoder];
    workQueue = [(HMIVideoDecoder *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__HMIVideoDecoder_dealloc__block_invoke;
    block[3] = &unk_278754838;
    v9 = weakDecoder;
    v10 = session;
    v6 = weakDecoder;
    dispatch_async(workQueue, block);

    [(HMIVideoDecoder *)self setSession:?];
  }

  v7.receiver = self;
  v7.super_class = HMIVideoDecoder;
  [(HMIVideoDecoder *)&v7 dealloc];
}

void __26__HMIVideoDecoder_dealloc__block_invoke(uint64_t a1)
{
  VTDecompressionSessionWaitForAsynchronousFrames(*(a1 + 40));
  VTDecompressionSessionInvalidate(*(a1 + 40));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

- (BOOL)_createSessionWithFormatDescription:(opaqueCMFormatDescription *)description
{
  v20 = *MEMORY[0x277D85DE8];
  [(HMIVideoDecoder *)self weakDecoder];

  v18 = *MEMORY[0x277CE2778];
  v19 = @"HomeAI";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v16 = *MEMORY[0x277CC4DE0];
  v17 = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v6 = VTDecompressionSessionCreateWithOptions();
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v10;
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create decompression session: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v6 == 0;
}

- (void)_evictSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v16 = *MEMORY[0x277D85DE8];
  memset(&v14, 0, sizeof(v14));
  CMSampleBufferGetPresentationTimeStamp(&v14, buffer);
  [v13 lastSampleBufferPTS];
  if (v13[12])
  {
    [&time1 lastSampleBufferPTS];
    v12 = v14;
    if ((CMTimeCompare(&time1, &v12) & 0x80000000) == 0)
    {
      [(HMIVideoDecoder *)self _failWithDescription:?];
      v5 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        LODWORD(time1.value) = 138543618;
        *(&time1.value + 4) = v8;
        LOWORD(time1.flags) = 2112;
        *(&time1.flags + 2) = buffer;
        v9 = "%{public}@Decoded sample is out of PTS order, sample: %@";
LABEL_8:
        _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, v9, &time1, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  if ((v14.flags & 1) == 0)
  {
    [(HMIVideoDecoder *)self _failWithDescription:?];
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      LODWORD(time1.value) = 138543618;
      *(&time1.value + 4) = v8;
      LOWORD(time1.flags) = 2112;
      *(&time1.flags + 2) = buffer;
      v9 = "%{public}@Decoded sample has an invalid PTS, sample: %@";
      goto LABEL_8;
    }

LABEL_9:

    objc_autoreleasePoolPop(v5);
    return;
  }

  v10 = objc_autoreleasePoolPush();
  delegate = [(HMIVideoDecoder *)self delegate];
  [delegate decoder:? didDecodeSampleBuffer:?];

  objc_autoreleasePoolPop(v10);
  time1 = v14;
  [(HMIVideoDecoder *)self setLastSampleBufferPTS:?];
}

- (void)_didDecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if ([(HMIVideoDecoder *)self reorderBufferSize])
  {
    BufferCount = CMBufferQueueGetBufferCount(self->_buffer);
    if (BufferCount == [(HMIVideoDecoder *)self reorderBufferSize])
    {
      v6 = CMBufferQueueDequeueAndRetain(self->_buffer);
      [(HMIVideoDecoder *)self _evictSampleBuffer:?];
      CFRelease(v6);
    }

    buffer = self->_buffer;

    CMBufferQueueEnqueue(buffer, buffer);
  }

  else
  {

    [(HMIVideoDecoder *)self _evictSampleBuffer:?];
  }
}

- (void)_failWithDescription:(id)description
{
  v13 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  if (self->super.super._status == 4)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Decoder is already in a failed state.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    self->super.super._status = 4;
    v9 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:? description:?];
    HMIErrorLog(self, v9);
    delegate = [(HMIVideoDecoder *)self delegate];
    [delegate decoder:? didFailWithError:?];
  }
}

- (HMIVideoDecoderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end