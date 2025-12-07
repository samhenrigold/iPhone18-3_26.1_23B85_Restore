@interface KNBuildChunkIdentifier
+ (id)emptyIdentifier;
- (BOOL)isEqual:(id)equal;
- (KNBuildChunkIdentifier)initWithBuild:(id)build chunkID:(int)d;
- (KNBuildChunkIdentifier)initWithMessage:(const void *)message;
- (id)description;
- (id)initEmptyIdentifier;
- (id)resolveToChunkOnSlide:(id)slide;
- (id)resolveToChunkUsingContext:(id)context;
- (void)saveToMessage:(void *)message;
@end

@implementation KNBuildChunkIdentifier

+ (id)emptyIdentifier
{
  if (qword_280A3C5B0 != -1)
  {
    sub_275E60930();
  }

  v3 = qword_280A3C5B8;

  return v3;
}

- (id)initEmptyIdentifier
{
  v6.receiver = self;
  v6.super_class = KNBuildChunkIdentifier;
  v2 = [(KNBuildChunkIdentifier *)&v6 init];
  v3 = v2;
  if (v2)
  {
    buildUUID = v2->_buildUUID;
    v2->_buildUUID = 0;

    v3->_chunkID = 0;
  }

  return v3;
}

- (KNBuildChunkIdentifier)initWithBuild:(id)build chunkID:(int)d
{
  buildCopy = build;
  if (!buildCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunkIdentifier initWithBuild:chunkID:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifier.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:54 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "build != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ((d - 1) >= 0x7FFFFFFE)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunkIdentifier initWithBuild:chunkID:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifier.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:55 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "KNIsValidChunkID(chunkID)"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v21.receiver = self;
  v21.super_class = KNBuildChunkIdentifier;
  v13 = [(KNBuildChunkIdentifier *)&v21 init];
  if (v13)
  {
    objectUUID = [buildCopy objectUUID];
    v15 = [objectUUID copy];
    buildUUID = v13->_buildUUID;
    v13->_buildUUID = v15;

    if (!v13->_buildUUID)
    {
      v17 = MEMORY[0x277D81150];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunkIdentifier initWithBuild:chunkID:]"];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifier.m"];
      [v17 handleFailureInFunction:v18 file:v19 lineNumber:61 isFatal:0 description:{"invalid nil value for '%{public}s'", "_buildUUID"}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v13->_chunkID = d;
  }

  return v13;
}

- (id)resolveToChunkUsingContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunkIdentifier resolveToChunkUsingContext:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifier.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:86 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "context != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ([(KNBuildChunkIdentifier *)self isEmpty])
  {
    v8 = 0;
  }

  else
  {
    objc_opt_class();
    v9 = [contextCopy objectWithUUID:self->_buildUUID];
    v10 = TSUCheckedDynamicCast();

    v8 = [v10 chunkForIdentifier:self];
  }

  return v8;
}

- (id)resolveToChunkOnSlide:(id)slide
{
  v27 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  if (!slideCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunkIdentifier resolveToChunkOnSlide:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifier.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:100 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "slide != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ([(KNBuildChunkIdentifier *)self isEmpty])
  {
    v8 = 0;
  }

  else
  {
    objc_opt_class();
    context = [slideCopy context];
    v10 = [context objectWithUUID:self->_buildUUID];
    v11 = TSUCheckedDynamicCast();

    if (([v11 isOnSlide] & 1) == 0)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      builds = [slideCopy builds];
      v13 = [builds countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(builds);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            objectUUID = [v17 objectUUID];
            v19 = [objectUUID isEqual:self->_buildUUID];

            if (v19)
            {
              v20 = v17;

              v11 = v20;
              goto LABEL_16;
            }
          }

          v14 = [builds countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    v8 = [v11 chunkForIdentifier:self];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    buildUUID = [(KNBuildChunkIdentifier *)self buildUUID];
    buildUUID2 = [v5 buildUUID];
    v8 = buildUUID2;
    if (buildUUID2 | buildUUID && ![buildUUID2 isEqual:buildUUID])
    {
      v10 = 0;
    }

    else
    {
      chunkID = [v5 chunkID];
      v10 = chunkID == [(KNBuildChunkIdentifier *)self chunkID];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  isEmpty = [(KNBuildChunkIdentifier *)self isEmpty];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = v5;
  if (isEmpty)
  {
    v7 = [v4 stringWithFormat:@"<%@ %p (empty)>", v5, self];
  }

  else
  {
    uUIDString = [(NSUUID *)self->_buildUUID UUIDString];
    v7 = [v4 stringWithFormat:@"<%@ %p build uuid:%@ id:%d>", v6, self, uUIDString, self->_chunkID];
  }

  return v7;
}

- (KNBuildChunkIdentifier)initWithMessage:(const void *)message
{
  v17.receiver = self;
  v17.super_class = KNBuildChunkIdentifier;
  v4 = [(KNBuildChunkIdentifier *)&v17 init];
  if (v4)
  {
    v5 = *(message + 4);
    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      if (*(message + 3))
      {
        v7 = *(message + 3);
      }

      else
      {
        v7 = MEMORY[0x277D809E0];
      }

      v8 = [v6 tsp_initWithMessage:v7];
      buildUUID = v4->_buildUUID;
      v4->_buildUUID = v8;

      v5 = *(message + 4);
    }

    if ((v5 & 2) != 0)
    {
      v4->_chunkID = *(message + 8);
    }

    else
    {
      v10 = MEMORY[0x277D81150];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunkIdentifier(PersistenceAdditions) initWithMessage:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifierPersistenceAdditions.mm"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:37 isFatal:0 description:"Unarchived a chunk identifier which is missing the chunk_id field."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    if (![(KNBuildChunkIdentifier *)v4 isEmpty]&& !v4->_buildUUID)
    {
      v13 = MEMORY[0x277D81150];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunkIdentifier(PersistenceAdditions) initWithMessage:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifierPersistenceAdditions.mm"];
      [v13 handleFailureInFunction:v14 file:v15 lineNumber:40 isFatal:0 description:{"Attempted to unarchive a chunk identifier which is not empty, but which is missing a build UUID."}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  return v4;
}

- (void)saveToMessage:(void *)message
{
  if (![(KNBuildChunkIdentifier *)self isEmpty]&& !self->_buildUUID)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunkIdentifier(PersistenceAdditions) saveToMessage:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifierPersistenceAdditions.mm"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:47 isFatal:0 description:{"Attempted to archive a chunk identifier which is not empty, but which is missing a build UUID."}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  buildUUID = self->_buildUUID;
  if (buildUUID)
  {
    *(message + 4) |= 1u;
    v9 = *(message + 3);
    if (!v9)
    {
      v10 = *(message + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C8F000](v10);
      *(message + 3) = v9;
    }

    [(NSUUID *)buildUUID tsp_saveToMessage:v9];
  }

  chunkID = self->_chunkID;
  *(message + 4) |= 2u;
  *(message + 8) = chunkID;
}

@end