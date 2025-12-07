@interface KNLiveVideoSourceUsageEntry
- (BOOL)isEqual:(id)equal;
- (KNLiveVideoSourceUsageEntry)initWithArchivedBackgroundKinds:(id)kinds;
- (KNLiveVideoSourceUsageEntry)initWithMessage:(const void *)message unarchiver:(id)unarchiver;
- (id)entryByMergingEntry:(id)entry;
- (unint64_t)hash;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNLiveVideoSourceUsageEntry

- (KNLiveVideoSourceUsageEntry)initWithArchivedBackgroundKinds:(id)kinds
{
  kindsCopy = kinds;
  v9.receiver = self;
  v9.super_class = KNLiveVideoSourceUsageEntry;
  v5 = [(KNLiveVideoSourceUsageEntry *)&v9 init];
  if (v5)
  {
    v6 = [kindsCopy copy];
    archivedBackgroundKinds = v5->_archivedBackgroundKinds;
    v5->_archivedBackgroundKinds = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      archivedBackgroundKinds = [(KNLiveVideoSourceUsageEntry *)self archivedBackgroundKinds];
      archivedBackgroundKinds2 = [v5 archivedBackgroundKinds];
      v8 = [archivedBackgroundKinds isEqual:archivedBackgroundKinds2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  archivedBackgroundKinds = [(KNLiveVideoSourceUsageEntry *)self archivedBackgroundKinds];
  v3 = [archivedBackgroundKinds hash];

  return v3;
}

- (id)entryByMergingEntry:(id)entry
{
  entryCopy = entry;
  archivedBackgroundKinds = [(KNLiveVideoSourceUsageEntry *)self archivedBackgroundKinds];
  archivedBackgroundKinds2 = [entryCopy archivedBackgroundKinds];
  v7 = [archivedBackgroundKinds setByAddingObjectsFromSet:archivedBackgroundKinds2];

  v8 = [[KNLiveVideoSourceUsageEntry alloc] initWithArchivedBackgroundKinds:v7];

  return v8;
}

- (KNLiveVideoSourceUsageEntry)initWithMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v19.receiver = self;
  v19.super_class = KNLiveVideoSourceUsageEntry;
  v7 = [(KNLiveVideoSourceUsageEntry *)&v19 init];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB58]);
    if ((*(message + 4) & 0x80000000) != 0)
    {
      v16 = MEMORY[0x277D81150];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSourceUsageEntry initWithMessage:unarchiver:]"];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm"];
      [v16 handleFailureInFunction:v17 file:v18 lineNumber:310 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v9 = [v8 initWithCapacity:?];
    v10 = *(message + 4);
    if (v10)
    {
      v11 = *(message + 3);
      v12 = 4 * v10;
      do
      {
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:*v11];
        [(NSSet *)v9 addObject:v13];

        ++v11;
        v12 -= 4;
      }

      while (v12);
    }

    archivedBackgroundKinds = v7->_archivedBackgroundKinds;
    v7->_archivedBackgroundKinds = v9;
  }

  return v7;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [(KNLiveVideoSourceUsageEntry *)self archivedBackgroundKinds:message];
  allObjects = [v5 allObjects];
  v7 = [allObjects sortedArrayUsingSelector:sel_compare_];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        integerValue = [*(*(&v23 + 1) + 8 * v11) integerValue];
        v13 = integerValue;
        if (integerValue >= 0x80000000)
        {
          v16 = MEMORY[0x277D81150];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSourceUsageEntry saveToMessage:archiver:]"];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm"];
          [v16 handleFailureInFunction:v17 file:v18 lineNumber:328 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

          [MEMORY[0x277D81150] logBacktraceThrottled];
          v13 = 0x7FFFFFFF;
        }

        else if (integerValue <= 0xFFFFFFFF7FFFFFFFLL)
        {
          v19 = MEMORY[0x277D81150];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSourceUsageEntry saveToMessage:archiver:]"];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm"];
          [v19 handleFailureInFunction:v20 file:v21 lineNumber:328 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

          [MEMORY[0x277D81150] logBacktraceThrottled];
          v13 = 0x80000000;
        }

        v14 = *(message + 4);
        if (v14 == *(message + 5))
        {
          v15 = v14 + 1;
          sub_275D98CF0(message + 4, v14 + 1);
          *(*(message + 3) + 4 * v14) = v13;
        }

        else
        {
          *(*(message + 3) + 4 * v14) = v13;
          v15 = v14 + 1;
        }

        *(message + 4) = v15;
        ++v11;
      }

      while (v9 != v11);
      v22 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v9 = v22;
    }

    while (v22);
  }
}

@end