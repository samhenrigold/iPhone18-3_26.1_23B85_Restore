@interface KNLiveVideoSourceUsage
- (BOOL)isEqual:(id)equal;
- (BOOL)usesSource:(id)source withBackgroundKind:(int64_t)kind;
- (BOOL)usesSourceWithUUID:(id)d;
- (KNLiveVideoSourceUsage)initWithEntriesForLiveVideoSourceUUIDs:(id)ds;
- (KNLiveVideoSourceUsage)initWithLiveVideoInfos:(id)infos;
- (KNLiveVideoSourceUsage)initWithLiveVideoSourceUUIDMessages:(const void *)messages entryMessages:(const void *)entryMessages unarchiver:(id)unarchiver;
- (KNLiveVideoSourceUsage)initWithMergedUsages:(id)usages;
- (id)usedSourcesInContext:(id)context;
- (unint64_t)hash;
- (void)saveToLiveVideoSourceUUIDMessages:(void *)messages entryMessages:(void *)entryMessages archiver:(id)archiver;
@end

@implementation KNLiveVideoSourceUsage

- (KNLiveVideoSourceUsage)initWithEntriesForLiveVideoSourceUUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = KNLiveVideoSourceUsage;
  v5 = [(KNLiveVideoSourceUsage *)&v9 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    entriesForLiveVideoSourceUUIDs = v5->_entriesForLiveVideoSourceUUIDs;
    v5->_entriesForLiveVideoSourceUUIDs = v6;
  }

  return v5;
}

- (KNLiveVideoSourceUsage)initWithLiveVideoInfos:(id)infos
{
  v39 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(infosCopy, "count")}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = infosCopy;
  v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v33 = *v35;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v35 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v34 + 1) + 8 * i);
        i_sourceId = [v6 i_sourceId];
        if (!i_sourceId)
        {
          objc_opt_class();
          context = [v6 context];
          documentRoot = [context documentRoot];
          v10 = TSUCheckedDynamicCast();

          show = [v10 show];
          theme = [show theme];
          liveVideoSourceCollection = [theme liveVideoSourceCollection];
          defaultSource = [liveVideoSourceCollection defaultSource];
          i_sourceId = [defaultSource objectUUID];

          if (!i_sourceId)
          {
            v15 = MEMORY[0x277D81150];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSourceUsage initWithLiveVideoInfos:]"];
            v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm"];
            [v15 handleFailureInFunction:v16 file:v17 lineNumber:80 isFatal:0 description:{"invalid nil value for '%{public}s'", "defaultLiveVideoSourceUUID"}];

            [MEMORY[0x277D81150] logBacktraceThrottled];
          }
        }

        i_archivedBackgroundKind = [v6 i_archivedBackgroundKind];
        v19 = [KNLiveVideoSourceUsageEntry alloc];
        v20 = MEMORY[0x277CBEB98];
        v21 = [MEMORY[0x277CCABB0] numberWithInteger:i_archivedBackgroundKind];
        v22 = [v20 setWithObject:v21];
        v23 = [(KNLiveVideoSourceUsageEntry *)v19 initWithArchivedBackgroundKinds:v22];

        v24 = [v3 objectForKeyedSubscript:i_sourceId];
        v25 = v24;
        if (v24)
        {
          v26 = [v24 entryByMergingEntry:v23];
        }

        else
        {
          v26 = v23;
        }

        v27 = v26;
        [v3 setObject:v26 forKeyedSubscript:i_sourceId];
      }

      v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v4);
  }

  v28 = [(KNLiveVideoSourceUsage *)self initWithEntriesForLiveVideoSourceUUIDs:v3];
  return v28;
}

- (KNLiveVideoSourceUsage)initWithMergedUsages:(id)usages
{
  selfCopy = self;
  v19 = *MEMORY[0x277D85DE8];
  usagesCopy = usages;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = usagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        entriesForLiveVideoSourceUUIDs = [*(*(&v14 + 1) + 8 * v8) entriesForLiveVideoSourceUUIDs];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = sub_275D974E8;
        v13[3] = &unk_27A6988B0;
        v13[4] = v4;
        [entriesForLiveVideoSourceUUIDs enumerateKeysAndObjectsUsingBlock:v13];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [(KNLiveVideoSourceUsage *)selfCopy initWithEntriesForLiveVideoSourceUUIDs:v4];
  return v10;
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
      entriesForLiveVideoSourceUUIDs = [(KNLiveVideoSourceUsage *)self entriesForLiveVideoSourceUUIDs];
      entriesForLiveVideoSourceUUIDs2 = [v5 entriesForLiveVideoSourceUUIDs];
      v8 = [entriesForLiveVideoSourceUUIDs isEqual:entriesForLiveVideoSourceUUIDs2];
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
  entriesForLiveVideoSourceUUIDs = [(KNLiveVideoSourceUsage *)self entriesForLiveVideoSourceUUIDs];
  v3 = [entriesForLiveVideoSourceUUIDs hash];

  return v3;
}

- (id)usedSourcesInContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  entriesForLiveVideoSourceUUIDs = [(KNLiveVideoSourceUsage *)self entriesForLiveVideoSourceUUIDs];
  v21 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(entriesForLiveVideoSourceUUIDs, "count")}];
  objc_opt_class();
  documentRoot = [contextCopy documentRoot];
  v5 = TSUCheckedDynamicCast();

  v18 = v5;
  show = [v5 show];
  theme = [show theme];
  liveVideoSourceCollection = [theme liveVideoSourceCollection];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = entriesForLiveVideoSourceUUIDs;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [liveVideoSourceCollection sourceWithObjectUUID:*(*(&v22 + 1) + 8 * i)];
        if (v12)
        {
          [v21 addObject:v12];
        }

        else
        {
          v13 = MEMORY[0x277D81150];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSourceUsage usedSourcesInContext:]"];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm"];
          [v13 handleFailureInFunction:v14 file:v15 lineNumber:166 isFatal:0 description:{"invalid nil value for '%{public}s'", "usedSource", entriesForLiveVideoSourceUUIDs}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  return v21;
}

- (BOOL)usesSource:(id)source withBackgroundKind:(int64_t)kind
{
  sourceCopy = source;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  objc_opt_class();
  context = [sourceCopy context];
  documentRoot = [context documentRoot];
  v9 = TSUCheckedDynamicCast();

  show = [v9 show];
  theme = [show theme];
  liveVideoSourceCollection = [theme liveVideoSourceCollection];

  entriesForLiveVideoSourceUUIDs = [(KNLiveVideoSourceUsage *)self entriesForLiveVideoSourceUUIDs];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_275D97C1C;
  v16[3] = &unk_27A6988D8;
  v16[4] = liveVideoSourceCollection;
  v14 = sourceCopy;
  v17 = v14;
  v18 = &v20;
  kindCopy = kind;
  [entriesForLiveVideoSourceUUIDs enumerateKeysAndObjectsUsingBlock:v16];

  LOBYTE(sourceCopy) = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return sourceCopy;
}

- (BOOL)usesSourceWithUUID:(id)d
{
  dCopy = d;
  entriesForLiveVideoSourceUUIDs = [(KNLiveVideoSourceUsage *)self entriesForLiveVideoSourceUUIDs];
  v6 = [entriesForLiveVideoSourceUUIDs objectForKeyedSubscript:dCopy];
  v7 = v6 != 0;

  return v7;
}

- (KNLiveVideoSourceUsage)initWithLiveVideoSourceUUIDMessages:(const void *)messages entryMessages:(const void *)entryMessages unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9 = *(messages + 2);
  v10 = *(entryMessages + 2);
  if (v9 == v10)
  {
    v27.receiver = self;
    v27.super_class = KNLiveVideoSourceUsage;
    v11 = [(KNLiveVideoSourceUsage *)&v27 init];
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277CBEB38]);
      v13 = v9;
      if ((v9 & 0x80000000) != 0)
      {
        v24 = MEMORY[0x277D81150];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSourceUsage initWithLiveVideoSourceUUIDMessages:entryMessages:unarchiver:]"];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm"];
        [v24 handleFailureInFunction:v25 file:v26 lineNumber:222 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

        [MEMORY[0x277D81150] logBacktraceThrottled];
        v13 = 0;
      }

      v14 = [v12 initWithCapacity:v13];
      if (v9 >= 1)
      {
        v15 = 8;
        do
        {
          v16 = [unarchiverCopy readWeakObjectUUIDReferenceMessage:*(*(messages + 2) + v15)];
          v17 = [[KNLiveVideoSourceUsageEntry alloc] initWithMessage:*(*(entryMessages + 2) + v15) unarchiver:unarchiverCopy];
          [(NSDictionary *)v14 setObject:v17 forKeyedSubscript:v16];

          v15 += 8;
          --v9;
        }

        while (v9);
      }

      entriesForLiveVideoSourceUUIDs = v11->_entriesForLiveVideoSourceUUIDs;
      v11->_entriesForLiveVideoSourceUUIDs = v14;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    if (v10)
    {
      v20 = MEMORY[0x277D81150];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSourceUsage initWithLiveVideoSourceUUIDMessages:entryMessages:unarchiver:]"];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceUsage.mm"];
      [v20 handleFailureInFunction:v21 file:v22 lineNumber:215 isFatal:0 description:{"If there is a mismatch between live video source UUIDs and usage entries, the usage entries should be empty (i.e. when upgrading from an old version.)"}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)saveToLiveVideoSourceUUIDMessages:(void *)messages entryMessages:(void *)entryMessages archiver:(id)archiver
{
  v36 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSDictionary count](self->_entriesForLiveVideoSourceUUIDs, "count")}];
  entriesForLiveVideoSourceUUIDs = self->_entriesForLiveVideoSourceUUIDs;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_275D98434;
  v34[3] = &unk_27A6988B0;
  v34[4] = v9;
  [(NSDictionary *)entriesForLiveVideoSourceUUIDs enumerateKeysAndObjectsUsingBlock:v34];
  [v9 sortUsingComparator:&unk_2884D4F70];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v12)
  {
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        first = [v15 first];
        v17 = *(messages + 2);
        if (!v17)
        {
          goto LABEL_11;
        }

        v18 = *(messages + 2);
        v19 = *v17;
        if (v18 >= *v17)
        {
          if (v19 == *(messages + 3))
          {
LABEL_11:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(messages);
            v17 = *(messages + 2);
            v19 = *v17;
          }

          *v17 = v19 + 1;
          v20 = MEMORY[0x277C8F000](*messages);
          v21 = *(messages + 2);
          v22 = *(messages + 2) + 8 * v21;
          *(messages + 2) = v21 + 1;
          *(v22 + 8) = v20;
          goto LABEL_13;
        }

        *(messages + 2) = v18 + 1;
        v20 = *&v17[2 * v18 + 2];
LABEL_13:
        [archiverCopy setWeakReferenceToObjectUUID:first message:v20];

        second = [v15 second];
        v24 = *(entryMessages + 2);
        if (!v24)
        {
          goto LABEL_18;
        }

        v25 = *(entryMessages + 2);
        v26 = *v24;
        if (v25 < *v24)
        {
          *(entryMessages + 2) = v25 + 1;
          v27 = *&v24[2 * v25 + 2];
          goto LABEL_20;
        }

        if (v26 == *(entryMessages + 3))
        {
LABEL_18:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(entryMessages);
          v24 = *(entryMessages + 2);
          v26 = *v24;
        }

        *v24 = v26 + 1;
        v27 = sub_275E2196C(*entryMessages);
        v28 = *(entryMessages + 2);
        v29 = *(entryMessages + 2) + 8 * v28;
        *(entryMessages + 2) = v28 + 1;
        *(v29 + 8) = v27;
LABEL_20:
        [second saveToMessage:v27 archiver:archiverCopy];
      }

      v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }
}

@end