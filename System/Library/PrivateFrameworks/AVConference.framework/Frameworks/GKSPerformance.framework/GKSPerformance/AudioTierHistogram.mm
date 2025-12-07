@interface AudioTierHistogram
- (AudioTierHistogram)init;
- (id)newReport;
- (void)accumulateTime:(double)time forAudioTier:(id)tier;
- (void)dealloc;
- (void)end;
- (void)newAudioTier:(unsigned int)tier duplication:(unsigned int)duplication bundling:(unsigned int)bundling codecPayload:(unsigned int)payload codecBitrate:(unsigned int)bitrate mode:(unsigned int)mode;
@end

@implementation AudioTierHistogram

- (AudioTierHistogram)init
{
  v5.receiver = self;
  v5.super_class = AudioTierHistogram;
  v2 = [(AudioTierHistogram *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->currentTier = 0;
    v2->startTime = 0.0;
    v2->histogram = v3;
    v2->awdAudioTierQueue = dispatch_queue_create("com.apple.avconference.AWDAudioTierQueue", 0);
  }

  return v2;
}

- (void)dealloc
{
  histogram = self->histogram;
  if (histogram)
  {
  }

  currentTier = self->currentTier;
  if (currentTier)
  {
  }

  awdAudioTierQueue = self->awdAudioTierQueue;
  if (awdAudioTierQueue)
  {
    dispatch_release(awdAudioTierQueue);
  }

  v6.receiver = self;
  v6.super_class = AudioTierHistogram;
  [(AudioTierHistogram *)&v6 dealloc];
}

- (void)accumulateTime:(double)time forAudioTier:(id)tier
{
  v7 = objc_autoreleasePoolPush();
  v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->histogram, "objectForKeyedSubscript:", [tier description]);
  if (v8)
  {
    tier = v8;
  }

  [tier duration];
  [tier setDuration:v9 + time];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->histogram, "setObject:forKeyedSubscript:", tier, [tier description]);

  objc_autoreleasePoolPop(v7);
}

- (void)newAudioTier:(unsigned int)tier duplication:(unsigned int)duplication bundling:(unsigned int)bundling codecPayload:(unsigned int)payload codecBitrate:(unsigned int)bitrate mode:(unsigned int)mode
{
  v8 = *&mode;
  v9 = *&bitrate;
  v10 = *&payload;
  v11 = *&bundling;
  v12 = *&duplication;
  v13 = *&tier;
  Current = CFAbsoluteTimeGetCurrent();
  v16 = [[AudioTier alloc] initWithMode:v8 tier:v13 duplication:v12 bundling:v11 codecPayload:v10 codecBitrate:v9];
  awdAudioTierQueue = self->awdAudioTierQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__AudioTierHistogram_newAudioTier_duplication_bundling_codecPayload_codecBitrate_mode___block_invoke;
  block[3] = &unk_278BD2270;
  *&block[6] = Current;
  block[4] = self;
  block[5] = v16;
  dispatch_sync(awdAudioTierQueue, block);
}

void __87__AudioTierHistogram_newAudioTier_duplication_bundling_codecPayload_codecBitrate_mode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (*(v2 + 16))
  {
    [v2 accumulateTime:v3 - *(v2 + 24) forAudioTier:?];
    *(*(a1 + 32) + 24) = *(a1 + 48);
  }

  else
  {
    *(v2 + 24) = v3;
  }

  *(*(a1 + 32) + 16) = *(a1 + 40);
}

- (void)end
{
  Current = CFAbsoluteTimeGetCurrent();
  if (self->currentTier)
  {
    [(AudioTierHistogram *)self accumulateTime:Current - self->startTime forAudioTier:?];
  }

  NSLog(&cfstr_S.isa, Current, "[AudioTierHistogram end]", self->histogram);
}

- (id)newReport
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(NSMutableDictionary *)self->histogram allValues];
  v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v19)
  {
    v17 = *v21;
    do
    {
      v3 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v20 + 1) + 8 * v3);
        v5 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "tier")}];
        v6 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "mode")}];
        v7 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "duplication")}];
        v8 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "bundling")}];
        v9 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "codecPayload")}];
        v10 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "codecBitrate")}];
        v11 = objc_alloc(MEMORY[0x277CCABA8]);
        [v4 duration];
        v13 = [v11 initWithUnsignedInt:v12];
        v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v5, @"AudioTierCounterTier", v6, @"AudioTierCounterMode", v7, @"AudioTierCounterDuplication", v8, @"AudioTierCounterBundling", v9, @"AudioTierCounterCodecPayload", v10, @"AudioTierCounterCodecBitrate", v13, @"AudioTierCounterCount", 0}];
        [v18 addObject:v14];

        ++v3;
      }

      while (v19 != v3);
      v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v19);
  }

  return v18;
}

@end