@interface MFSearchResponseQueue
- (BOOL)addItem:(id)item;
- (BOOL)flush;
- (MFSearchResponseQueue)init;
- (void)dealloc;
@end

@implementation MFSearchResponseQueue

- (MFSearchResponseQueue)init
{
  v5.receiver = self;
  v5.super_class = MFSearchResponseQueue;
  v2 = [(MFBaseSyncResponseQueue *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MFBufferedQueue *)v2 setMaximumLatency:60.0];
    v3->indexSet = objc_alloc_init(MEMORY[0x277CCAB58]);
  }

  return v3;
}

- (BOOL)addItem:(id)item
{
  v18 = *MEMORY[0x277D85DE8];
  if ([item responseType] == 14)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    searchResults = [item searchResults];
    v6 = [searchResults countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(searchResults);
          }

          unsignedIntValue = [*(*(&v13 + 1) + 8 * i) unsignedIntValue];
          if ([(NSMutableIndexSet *)self->indexSet count]>= self->limit)
          {
            firstIndex = [(NSMutableIndexSet *)self->indexSet firstIndex];
            if (firstIndex >= unsignedIntValue)
            {
              continue;
            }

            [(NSMutableIndexSet *)self->indexSet removeIndex:firstIndex];
          }

          [(NSMutableIndexSet *)self->indexSet addIndex:unsignedIntValue];
        }

        v7 = [searchResults countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return 1;
}

- (BOOL)flush
{
  indexSet = self->indexSet;
  if (indexSet)
  {
    lastIndex = [(NSMutableIndexSet *)indexSet lastIndex];
    if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = lastIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSMutableIndexSet *)self->indexSet indexLessThanIndex:i])
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        v9.receiver = self;
        v9.super_class = MFSearchResponseQueue;
        [(MFBufferedQueue *)&v9 addItem:v6];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MFSearchResponseQueue;
  return [(MFBufferedQueue *)&v8 flush];
}

- (void)dealloc
{
  self->indexSet = 0;
  v3.receiver = self;
  v3.super_class = MFSearchResponseQueue;
  [(MFBaseSyncResponseQueue *)&v3 dealloc];
}

@end