@interface TSIntervalTimeLineFilter
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)rateRatio;
- (TSIntervalTimeLineFilter)initWithExpectedDomainAInterval:(unint64_t)interval expectedDomainBInterval:(unint64_t)bInterval filterSize:(unsigned __int8)size;
- (unint64_t)domainAIntervalFromDomainBInterval:(unint64_t)interval;
- (unint64_t)domainATimeFromDomainBTime:(unint64_t)time;
- (unint64_t)domainBIntervalFromDomainAInterval:(unint64_t)interval;
- (unint64_t)domainBTimeFromDomainATime:(unint64_t)time;
- (void)addTimestamps:(id)timestamps;
- (void)changeToNewFilterSize:(unsigned __int8)size;
- (void)getAnchors:(id *)anchors andRateRatio:(id *)ratio;
- (void)resetFilter;
- (void)resetFilterWithNewExpectedDomainAInterval:(unint64_t)interval expectedDomainBInterval:(unint64_t)bInterval;
- (void)resetFilterWithNewExpectedDomainAInterval:(unint64_t)interval expectedDomainBInterval:(unint64_t)bInterval multiIntervalCount:(unsigned int)count;
@end

@implementation TSIntervalTimeLineFilter

- (TSIntervalTimeLineFilter)initWithExpectedDomainAInterval:(unint64_t)interval expectedDomainBInterval:(unint64_t)bInterval filterSize:(unsigned __int8)size
{
  v14.receiver = self;
  v14.super_class = TSIntervalTimeLineFilter;
  v5 = [(TSIntervalTimeLineFilter *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_validIndex = -1;
    v7 = [TSIntervalFilter initWithExpectedInterval:"initWithExpectedInterval:multiIntervalCount:filterSize:" multiIntervalCount:? filterSize:?];
    aIntervalFilter = v6->_aIntervalFilter;
    v6->_aIntervalFilter = v7;

    v9 = [TSIntervalFilter initWithExpectedInterval:"initWithExpectedInterval:multiIntervalCount:filterSize:" multiIntervalCount:? filterSize:?];
    bIntervalFilter = v6->_bIntervalFilter;
    v6->_bIntervalFilter = v9;

    v11 = dispatch_queue_create("com.apple.TimeSync.TSIntervalTimeLineFilter", 0);
    syncQueue = v6->_syncQueue;
    v6->_syncQueue = v11;

    if (!v6->_aIntervalFilter || !v6->_bIntervalFilter || !v6->_syncQueue)
    {

      return 0;
    }
  }

  return v6;
}

- (void)addTimestamps:(id)timestamps
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TSIntervalTimeLineFilter_addTimestamps___block_invoke;
  block[3] = &unk_279DBD630;
  block[4] = self;
  timestampsCopy = timestamps;
  dispatch_sync(syncQueue, block);
}

void *__42__TSIntervalTimeLineFilter_addTimestamps___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = (*(v2 + 272) + 1) & 7;
  *(v2 + 8 + 8 * v3) = [*(v2 + 280) addTimestamp:? entry:?];
  result = [*(a1[4] + 288) addTimestamp:? entry:?];
  *(a1[4] + 72 + 8 * v3) = result;
  *(a1[4] + 272) = v3;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)rateRatio
{
  if (self->_validIndex > 7uLL)
  {
    v4 = -1;
    v3 = -1;
  }

  else
  {
    v3 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:?];
    v4 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:?];
  }

  v5 = v3;
  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- (void)getAnchors:(id *)anchors andRateRatio:(id *)ratio
{
  if (anchors)
  {
    anchors->var0 = -1;
    anchors->var1 = -1;
  }

  if (ratio)
  {
    ratio->var0 = -1;
    ratio->var1 = -1;
  }

  validIndex = self->_validIndex;
  if (validIndex <= 7)
  {
    if (anchors)
    {
      anchors->var0 = self->_AAnchor[validIndex];
      anchors->var1 = self->_BAnchor[validIndex];
    }

    if (ratio)
    {
      ratio->var0 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:?];
      ratio->var1 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:?];
    }
  }
}

- (unint64_t)domainATimeFromDomainBTime:(unint64_t)time
{
  validIndex = self->_validIndex;
  if (validIndex > 7)
  {
    return -1;
  }

  v6 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:?];
  v7 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:?];
  v8 = self->_BAnchor[validIndex];
  v9 = self->_AAnchor[validIndex];

  return TSTimeXtoTimeY(time, v8, v7, v9, v6);
}

- (unint64_t)domainAIntervalFromDomainBInterval:(unint64_t)interval
{
  if (self->_validIndex > 7)
  {
    return -1;
  }

  v5 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:?];
  v6 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:?];

  return TSIntervalXtoIntervalY(interval, v6, v5);
}

- (unint64_t)domainBTimeFromDomainATime:(unint64_t)time
{
  validIndex = self->_validIndex;
  if (validIndex > 7)
  {
    return -1;
  }

  v6 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:?];
  v7 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:?];
  v8 = self->_AAnchor[validIndex];
  v9 = self->_BAnchor[validIndex];

  return TSTimeXtoTimeY(time, v8, v6, v9, v7);
}

- (unint64_t)domainBIntervalFromDomainAInterval:(unint64_t)interval
{
  if (self->_validIndex > 7)
  {
    return -1;
  }

  v5 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:?];
  v6 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:?];

  return TSIntervalXtoIntervalY(interval, v5, v6);
}

- (void)resetFilter
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__TSIntervalTimeLineFilter_resetFilter__block_invoke;
  block[3] = &unk_279DBD658;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

void *__39__TSIntervalTimeLineFilter_resetFilter__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 280) resetFilter];
  v2 = *(*(a1 + 32) + 288);

  return [v2 resetFilter];
}

- (void)resetFilterWithNewExpectedDomainAInterval:(unint64_t)interval expectedDomainBInterval:(unint64_t)bInterval
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__TSIntervalTimeLineFilter_resetFilterWithNewExpectedDomainAInterval_expectedDomainBInterval___block_invoke;
  block[3] = &unk_279DBD630;
  block[4] = self;
  block[5] = interval;
  block[6] = bInterval;
  dispatch_sync(syncQueue, block);
}

void *__94__TSIntervalTimeLineFilter_resetFilterWithNewExpectedDomainAInterval_expectedDomainBInterval___block_invoke(void *a1)
{
  [*(a1[4] + 280) resetFilterWithNewExpectedInterval:?];
  v2 = *(a1[4] + 288);

  return [v2 resetFilterWithNewExpectedInterval:?];
}

- (void)resetFilterWithNewExpectedDomainAInterval:(unint64_t)interval expectedDomainBInterval:(unint64_t)bInterval multiIntervalCount:(unsigned int)count
{
  syncQueue = self->_syncQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __113__TSIntervalTimeLineFilter_resetFilterWithNewExpectedDomainAInterval_expectedDomainBInterval_multiIntervalCount___block_invoke;
  v6[3] = &unk_279DBD680;
  v6[4] = self;
  v6[5] = interval;
  countCopy = count;
  v6[6] = bInterval;
  dispatch_sync(syncQueue, v6);
}

void *__113__TSIntervalTimeLineFilter_resetFilterWithNewExpectedDomainAInterval_expectedDomainBInterval_multiIntervalCount___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 280) resetFilterWithNewExpectedInterval:? multiIntervalCount:?];
  v2 = *(*(a1 + 32) + 288);

  return [v2 resetFilterWithNewExpectedInterval:? multiIntervalCount:?];
}

- (void)changeToNewFilterSize:(unsigned __int8)size
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__TSIntervalTimeLineFilter_changeToNewFilterSize___block_invoke;
  v4[3] = &unk_279DBD6A8;
  v4[4] = self;
  sizeCopy = size;
  dispatch_sync(syncQueue, v4);
}

void *__50__TSIntervalTimeLineFilter_changeToNewFilterSize___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 280) changeToNewFilterSize:?];
  v2 = *(*(a1 + 32) + 288);

  return [v2 changeToNewFilterSize:?];
}

@end