@interface KNLiveVideoSourceCollection
+ (id)localizedDefaultSourceNameForLocale:(id)locale;
+ (id)p_makeDefaultSourceWithContext:(id)context;
- (BOOL)canRemoveSource:(id)source;
- (KNLiveVideoSourceCollection)initWithContext:(id)context;
- (NSSet)sources;
- (id)p_orderedSources;
- (id)p_uniqueNameForSource:(id)source proposedName:(id)name;
- (id)sourceWithObjectUUID:(id)d;
- (id)uniqueNameForSource:(id)source proposedName:(id)name;
- (id)uniqueNameForSourceWithProposedName:(id)name;
- (void)addSource:(id)source;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)removeSource:(id)source;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNLiveVideoSourceCollection

+ (id)p_makeDefaultSourceWithContext:(id)context
{
  contextCopy = context;
  v4 = [KNLiveVideoSource alloc];
  v5 = sub_275DC204C(v4);
  v6 = [v5 localizedStringForKey:@"Default Camera" value:&stru_2884D8E20 table:@"Keynote"];
  v7 = [(KNLiveVideoSource *)v4 initWithContext:contextCopy name:v6 isDefaultSource:1];

  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6EC43BD2-3B70-4836-AE07-3FBCAFFAA581"];
  [(KNLiveVideoSource *)v7 setObjectUUID:v8];

  return v7;
}

- (KNLiveVideoSourceCollection)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = KNLiveVideoSourceCollection;
  v5 = [(KNLiveVideoSourceCollection *)&v11 initWithContext:contextCopy];
  if (v5)
  {
    v6 = [objc_opt_class() p_makeDefaultSourceWithContext:contextCopy];
    defaultSource = v5->_defaultSource;
    v5->_defaultSource = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
    sources = v5->_sources;
    v5->_sources = v8;
  }

  return v5;
}

- (id)p_orderedSources
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = self->_defaultSource;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v3 arrayByAddingObjectsFromArray:self->_sources];

  return v4;
}

- (NSSet)sources
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  p_orderedSources = [(KNLiveVideoSourceCollection *)self p_orderedSources];
  v5 = [v3 initWithArray:p_orderedSources];

  return v5;
}

- (void)addSource:(id)source
{
  sourceCopy = source;
  defaultSource = [(KNLiveVideoSourceCollection *)self defaultSource];

  if (defaultSource == sourceCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSourceCollection addSource:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceCollection.mm"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:71 isFatal:0 description:"Cannot add the default source to the source collection."];
  }

  else
  {
    if ([(NSArray *)self->_sources indexOfObjectIdenticalTo:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(KNLiveVideoSourceCollection *)self willModify];
      v5 = [(NSArray *)self->_sources mutableCopy];
      [v5 addObject:sourceCopy];
      [v5 sortUsingComparator:&unk_2884D8978];
      objc_storeStrong(&self->_sources, v5);
      context = [(KNLiveVideoSourceCollection *)self context];
      [sourceCopy wasAddedToDocumentWithContext:context];

      goto LABEL_7;
    }

    v10 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSourceCollection addSource:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceCollection.mm"];
    [v10 handleFailureInFunction:v8 file:v9 lineNumber:75 isFatal:0 description:"Cannot add a source already contained in the source collection."];
  }

  [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_7:
}

- (BOOL)canRemoveSource:(id)source
{
  sourceCopy = source;
  defaultSource = [(KNLiveVideoSourceCollection *)self defaultSource];
  LOBYTE(self) = defaultSource != sourceCopy;

  return self;
}

- (void)removeSource:(id)source
{
  sourceCopy = source;
  if (![(KNLiveVideoSourceCollection *)self canRemoveSource:?])
  {
    v7 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSourceCollection removeSource:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceCollection.mm"];
    [v7 handleFailureInFunction:v5 file:v6 lineNumber:98 isFatal:0 description:"Cannot remove the default source from the source collection."];
    goto LABEL_5;
  }

  if ([(NSArray *)self->_sources indexOfObjectIdenticalTo:sourceCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoSourceCollection removeSource:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSourceCollection.mm"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:102 isFatal:0 description:"Cannot remove a source not already contained in the source collection."];
LABEL_5:

    [MEMORY[0x277D81150] logBacktraceThrottled];
    goto LABEL_7;
  }

  [(KNLiveVideoSourceCollection *)self willModify];
  context = [(KNLiveVideoSourceCollection *)self context];
  [sourceCopy willBeRemovedFromDocumentWithContext:context];

  v9 = [(NSArray *)self->_sources mutableCopy];
  [(NSArray *)v9 removeObjectIdenticalTo:sourceCopy];
  [(NSArray *)v9 sortUsingComparator:&unk_2884D8978];
  sources = self->_sources;
  self->_sources = v9;

LABEL_7:
}

- (id)sourceWithObjectUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  p_orderedSources = [(KNLiveVideoSourceCollection *)self p_orderedSources];
  v6 = [p_orderedSources countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(p_orderedSources);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      objectUUID = [v9 objectUUID];
      v11 = [objectUUID isEqual:dCopy];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [p_orderedSources countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    defaultSource = v9;

    if (defaultSource)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  defaultSource = [(KNLiveVideoSourceCollection *)self defaultSource];
LABEL_12:

  return defaultSource;
}

- (id)uniqueNameForSourceWithProposedName:(id)name
{
  v3 = [(KNLiveVideoSourceCollection *)self p_uniqueNameForSource:0 proposedName:name];

  return v3;
}

- (id)uniqueNameForSource:(id)source proposedName:(id)name
{
  v4 = [(KNLiveVideoSourceCollection *)self p_uniqueNameForSource:source proposedName:name];

  return v4;
}

- (id)p_uniqueNameForSource:(id)source proposedName:(id)name
{
  v34 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  nameCopy = name;
  p_orderedSources = [(KNLiveVideoSourceCollection *)self p_orderedSources];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(p_orderedSources, "count")}];
  context = [(KNLiveVideoSourceCollection *)self context];
  documentRoot = [context documentRoot];
  documentLocale = [documentRoot documentLocale];

  v26 = documentLocale;
  locale = [documentLocale locale];
  v12 = [nameCopy stringByFoldingWithOptions:1 locale:?];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = p_orderedSources;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v25 = p_orderedSources;
    v15 = 0;
    v16 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        if (!sourceCopy || v18 != sourceCopy)
        {
          name = [v18 name];
          v20 = name;
          if (v15)
          {
            v15 = 1;
          }

          else
          {
            v21 = [name stringByFoldingWithOptions:1 locale:locale];
            v15 = [v12 isEqualToString:v21];
          }

          [v8 addObject:v20];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);

    if (v15)
    {
      v22 = TSUNumberFormatterIncreaseTagFromStringWithSeparator();
      goto LABEL_18;
    }
  }

  else
  {
  }

  v22 = nameCopy;
LABEL_18:
  v23 = v22;

  return v23;
}

+ (id)localizedDefaultSourceNameForLocale:(id)locale
{
  v3 = [locale localizedStringForKey:@"Default Camera" value:@"Default Camera" table:@"Keynote"];

  return v3;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = [unarchiverCopy messageWithDescriptor:off_2812EA908[112]];

  if (*(v5 + 16))
  {
    v10 = *(v5 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_275E54DAC;
    v14[3] = &unk_27A6997E0;
    v14[4] = self;
    v11 = unarchiverCopy;
    [v11 readReferenceMessage:v10 class:objc_opt_class() protocol:0 completion:v14];
  }

  else
  {
    [(KNLiveVideoSourceCollection *)self willModifyForUpgrade];
    v6 = objc_opt_class();
    context = [(KNLiveVideoSourceCollection *)self context];
    v8 = [v6 p_makeDefaultSourceWithContext:context];
    defaultSource = self->_defaultSource;
    self->_defaultSource = v8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_275E54DC0;
  v13[3] = &unk_27A699808;
  v13[4] = self;
  v12 = unarchiverCopy;
  [v12 readRepeatedReferenceMessage:v5 + 24 class:objc_opt_class() protocol:0 completion:v13];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275E5500C descriptor:off_2812EA908[112]];

  defaultSource = self->_defaultSource;
  *(v4 + 16) |= 1u;
  v6 = *(v4 + 48);
  if (!v6)
  {
    v7 = *(v4 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x277C8F050](v7);
    *(v4 + 48) = v6;
  }

  [archiverCopy setStrongReference:defaultSource message:v6];
  [archiverCopy setStrongReferenceArray:self->_sources message:v4 + 24];
  [archiverCopy setMessageVersion:sub_275E53AE0()];
  [archiverCopy requiresDocumentVersion:sub_275E53AD0()];
}

@end