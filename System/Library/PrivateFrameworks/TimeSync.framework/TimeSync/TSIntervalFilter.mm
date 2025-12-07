@interface TSIntervalFilter
- (TSIntervalFilter)initWithExpectedInterval:(unint64_t)interval multiIntervalCount:(unsigned int)count filterSize:(unsigned __int8)size;
- (id).cxx_construct;
- (unint64_t)_calculateNewTimestamp:(unint64_t)timestamp;
- (unint64_t)addTimestamp:(unint64_t)timestamp entry:(int64_t *)entry;
- (unint64_t)filterCountForEntry:(int64_t)validEntry;
- (unint64_t)multiIntervalTimeForEntry:(int64_t)validEntry;
- (void)dealloc;
- (void)resetFilter;
- (void)resetFilterWithNewExpectedInterval:(unint64_t)interval multiIntervalCount:(unsigned int)count;
@end

@implementation TSIntervalFilter

- (TSIntervalFilter)initWithExpectedInterval:(unint64_t)interval multiIntervalCount:(unsigned int)count filterSize:(unsigned __int8)size
{
  v13.receiver = self;
  v13.super_class = TSIntervalFilter;
  v8 = [(TSIntervalFilter *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_expectedInterval = interval;
    v8->_multiIntervalCount = count;
    v8->_filterCount = 0;
    v8->_timestampIndex = 0;
    v8->_validEntry = -1;
    v8->_filterSize = size;
    v8->_filterOffset = interval << size;
    v8->_filteredTimestamps = malloc_type_calloc(count + 1, 8uLL, 0x100004000313F17uLL);
    v10 = dispatch_queue_create("com.apple.TimeSync.TSIntervalFilter", 0);
    syncQueue = v9->_syncQueue;
    v9->_syncQueue = v10;

    if (!v9->_filteredTimestamps || !v9->_syncQueue)
    {

      return 0;
    }
  }

  return v9;
}

- (unint64_t)_calculateNewTimestamp:(unint64_t)timestamp
{
  v4 = self->_filterOffset + timestamp;
  if (self->_filterCount)
  {
    filterSize = self->_filterSize;
    v6 = v4 << self->_filterSize;
    v7 = v6;
    if (filterSize <= 0x3F)
    {
      v6 = v4 >> -filterSize;
    }

    else
    {
      v7 = 0;
    }

    if (filterSize == 64)
    {
      v7 = 0;
      v6 = self->_filterOffset + timestamp;
    }

    if (self->_filterSize)
    {
      v4 = v7;
      v8 = v6;
    }

    else
    {
      v8 = self->_filterSize;
    }

    v41.lo = v4;
    v41.hi = v8;
    IIR(&self->_filteredSnapshot, v41, filterSize);
    v9 = (__PAIR128__(v8 - self->_filteredSnapshot.hi, v4) - self->_filteredSnapshot.lo);
    v10 = self->_filterSize;
    p_filteredOffset = &self->_filteredOffset;
  }

  else
  {
    v12 = self->_filterSize;
    if (v12 == 64)
    {
      v17 = 0;
      self->_filteredSnapshot.lo = 0;
      self->_filteredSnapshot.hi = v4;
      p_filteredSnapshot = &self->_filteredSnapshot;
    }

    else
    {
      expectedInterval = self->_expectedInterval;
      if (self->_filterSize)
      {
        v19 = expectedInterval << v12;
        v20 = expectedInterval >> -v12;
        v21 = expectedInterval << v12;
        if (v12 <= 0x3F)
        {
          v19 = v20;
        }

        else
        {
          v21 = 0;
        }

        v14 = v4 >= v21;
        v22 = v4 - v21;
        if (v14)
        {
          v23 = 0;
        }

        else
        {
          v23 = -1;
        }

        v24 = v23 - v19;
        v25 = v22 << v12;
        v26 = (v24 << v12) | (v22 >> -v12);
        v27 = v22 << v12;
        if (v12 <= 0x3F)
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        if (v12 <= 0x3F)
        {
          v29 = v26;
        }

        else
        {
          v29 = v25;
        }

        self->_filteredSnapshot.lo = v28;
        self->_filteredSnapshot.hi = v29;
        p_filteredSnapshot = &self->_filteredSnapshot;
        if (v12 <= 0x3F)
        {
          v17 = v4 << v12;
        }

        else
        {
          v17 = 0;
        }

        if (v12 <= 0x3F)
        {
          v4 >>= -v12;
        }

        else
        {
          v4 <<= v12;
        }
      }

      else
      {
        v14 = v4 >= expectedInterval;
        v15 = v4 - expectedInterval;
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = -1;
        }

        self->_filteredSnapshot.lo = v15;
        self->_filteredSnapshot.hi = v16;
        p_filteredSnapshot = &self->_filteredSnapshot;
        v17 = v4;
        v4 = 0;
      }
    }

    v42.lo = v17;
    v42.hi = v4;
    IIR(p_filteredSnapshot, v42, v12);
    v30 = (__PAIR128__(v4 - self->_filteredSnapshot.hi, v17) - self->_filteredSnapshot.lo);
    v31 = IOTS_uint64mul(self->_expectedInterval, ~(-1 << self->_filterSize));
    v10 = self->_filterSize;
    v33 = self->_filterSize;
    v34 = v31 << v33;
    v35 = (v31 >> -v10) | (v32 << v33);
    v36 = v31 << v33;
    if (v10 <= 0x3F)
    {
      v34 = v35;
    }

    else
    {
      v36 = 0;
    }

    if (v10 == 64)
    {
      v36 = 0;
      v34 = v31;
    }

    if (!self->_filterSize)
    {
      v36 = v31;
      v34 = v32;
    }

    self->_filteredOffset.lo = v36;
    self->_filteredOffset.hi = v34;
    p_filteredOffset = &self->_filteredOffset;
    v9 = v30;
  }

  IIR(p_filteredOffset, v9, v10);
  v37 = (*&self->_filteredSnapshot + *&self->_filteredOffset) >> 64;
  v38 = self->_filterSize;
  v39 = v37 >> self->_filterSize;
  if (v38 <= 0x3F)
  {
    v39 = (v37 << -v38) | ((self->_filteredSnapshot.lo + self->_filteredOffset.lo) >> v38);
  }

  if (v38 != 64)
  {
    v37 = v39;
  }

  if (!self->_filterSize)
  {
    v37 = self->_filteredSnapshot.lo + self->_filteredOffset.lo;
  }

  return v37 - self->_filterOffset;
}

- (unint64_t)addTimestamp:(unint64_t)timestamp entry:(int64_t *)entry
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__TSIntervalFilter_addTimestamp_entry___block_invoke;
  v7[3] = &unk_279DBDF28;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = timestamp;
  v7[7] = entry;
  dispatch_sync(syncQueue, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void *__39__TSIntervalFilter_addTimestamp_entry___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 24))
  {
    v3 = a1[6];
    **(v2 + 32) = v3;
    *(*(a1[4] + 32) + 8 * *(a1[4] + 16)) = v3 - *(a1[4] + 8);
    v4 = a1[4];
    v5 = *(v4 + 16);
    if (v5 >= 2)
    {
      do
      {
        v6 = a1[4];
        v7 = (*(v6 + 32) + 8 * v5--);
        *(v7 - 1) = *v7 - *(v6 + 8);
      }

      while (v5 > 1);
      v4 = a1[4];
    }

    *(v4 + 40) = 0;
    v2 = a1[4];
  }

  result = [v2 _calculateNewTimestamp:?];
  *(*(a1[5] + 8) + 24) = result;
  *(*(a1[4] + 32) + 8 * (*(a1[4] + 40))++) = *(*(a1[5] + 8) + 24);
  v9 = a1[4];
  if (*(v9 + 40) == *(v9 + 16) + 1)
  {
    *(v9 + 40) = 0;
    v9 = a1[4];
  }

  ++*(v9 + 24);
  v10 = a1[4];
  v11 = (*(v10 + 176) + 1) & 7;
  *(v10 + 8 * v11 + 48) = *(v10 + 24);
  *(a1[4] + 8 * v11 + 112) = *(*(a1[5] + 8) + 24) - *(*(a1[4] + 32) + 8 * *(a1[4] + 40));
  *(a1[4] + 176) = v11;
  v12 = a1[7];
  if (v12)
  {
    *v12 = v11;
  }

  return result;
}

- (unint64_t)multiIntervalTimeForEntry:(int64_t)validEntry
{
  result = -1;
  if (validEntry < 0)
  {
    validEntry = self->_validEntry;
  }

  if (validEntry <= 7)
  {
    return self->_timestampIntervals[validEntry];
  }

  return result;
}

- (unint64_t)filterCountForEntry:(int64_t)validEntry
{
  if (validEntry < 0)
  {
    validEntry = self->_validEntry;
  }

  if (validEntry > 7)
  {
    return 0;
  }

  else
  {
    return self->_timestampCount[validEntry];
  }
}

- (void)resetFilter
{
  [(TSIntervalFilter *)self multiIntervalTime];

  [(TSIntervalFilter *)self resetFilterWithNewExpectedInterval:?];
}

- (void)resetFilterWithNewExpectedInterval:(unint64_t)interval multiIntervalCount:(unsigned int)count
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__TSIntervalFilter_resetFilterWithNewExpectedInterval_multiIntervalCount___block_invoke;
  block[3] = &unk_279DBDF50;
  countCopy = count;
  block[4] = self;
  block[5] = interval;
  dispatch_sync(syncQueue, block);
}

void *__74__TSIntervalFilter_resetFilterWithNewExpectedInterval_multiIntervalCount___block_invoke(void *result)
{
  v1 = result;
  v2 = result[4];
  if (*(v2 + 16) != *(result + 12))
  {
    free(*(v2 + 32));
    *(v1[4] + 16) = *(v1 + 12);
    result = malloc_type_calloc((*(v1[4] + 16) + 1), 8uLL, 0x100004000313F17uLL);
    *(v1[4] + 32) = result;
    v2 = v1[4];
  }

  *(v2 + 8) = v1[5];
  *(v1[4] + 200) = *(v1[4] + 8) << *(v1[4] + 192);
  *(v1[4] + 24) = 0;
  *(v1[4] + 176) = -1;
  return result;
}

- (void)dealloc
{
  free(self->_filteredTimestamps);
  v3.receiver = self;
  v3.super_class = TSIntervalFilter;
  [(TSIntervalFilter *)&v3 dealloc];
}

- (id).cxx_construct
{
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  return self;
}

@end