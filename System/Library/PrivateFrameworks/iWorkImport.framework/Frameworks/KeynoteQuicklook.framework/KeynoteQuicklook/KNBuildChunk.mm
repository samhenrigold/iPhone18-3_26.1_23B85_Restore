@interface KNBuildChunk
+ (void)i_repairChunkToBuildReferencesFromUUIDsForChunks:(id)chunks builds:(id)builds context:(id)context;
+ (void)i_validateBuildReferencesForChunks:(id)chunks;
- (BOOL)canEditAnimations;
- (BOOL)hasComplement;
- (BOOL)isActive;
- (BOOL)isAutomaticWithPreviousChunk;
- (BOOL)isAutomaticWithPreviousChunkOnSameDrawable;
- (BOOL)isComplementOfBuildChunk:(id)chunk;
- (BOOL)isFirstInDeliveryGroup;
- (KNBuild)build;
- (KNBuildChunk)initWithBuild:(id)build;
- (KNBuildChunk)initWithBuild:(id)build copyingAttributesFromChunk:(id)chunk;
- (KNBuildChunk)initWithBuild:(id)build referent:(unint64_t)referent copyingRemainingAttributesFromChunk:(id)chunk;
- (KNBuildChunk)nextChunkOnSlide;
- (KNBuildChunk)previousActiveChunkWithReferentRelativeToEnd;
- (KNBuildChunk)previousChunkOnSlide;
- (KNSlide)slide;
- (NSArray)availableEventTriggers;
- (NSSet)inspectableAttributes;
- (NSString)description;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedNameForEventTrigger:(unint64_t)trigger includeLineBreaks:(BOOL)breaks;
- (id)p_stringForReferent:(unint64_t)referent;
- (id)p_stringRepresentationWithNotAvailableForIndex:(unint64_t)index;
- (unint64_t)activeIndexOnSlide;
- (unint64_t)deliveryGroupIndex;
- (unint64_t)indexInBuild;
- (unint64_t)indexOnSlide;
- (void)didInitFromSOS;
- (void)i_clearChunkIdentifier;
- (void)i_didLoadBuild:(id)build;
- (void)i_invalidateCaches;
- (void)i_setBuildId:(id)id;
- (void)i_setBuildPointer:(id)pointer forUnarchive:(BOOL)unarchive;
- (void)i_setChunkIdentifier:(id)identifier;
- (void)i_updateChunkUUIDReferencesToBuild:(id)build;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_setDelayFromBuildAttributes:(id)attributes withReferent:(unint64_t)referent automatic:(BOOL)automatic;
- (void)p_setDurationFromBuildAttributes:(id)attributes;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setAutomatic:(BOOL)automatic;
- (void)setDelay:(double)delay;
- (void)setDuration:(double)duration;
- (void)setReferent:(unint64_t)referent;
@end

@implementation KNBuildChunk

- (void)i_invalidateCaches
{
  self->_cachedIndexInBuild = 0x7FFFFFFFFFFFFFFFLL;
  self->_cachedIndexOnSlide = 0x7FFFFFFFFFFFFFFFLL;
  self->_cachedActiveIndexOnSlide = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)i_setBuildPointer:(id)pointer forUnarchive:(BOOL)unarchive
{
  unarchiveCopy = unarchive;
  pointerCopy = pointer;
  v6 = [objc_alloc(MEMORY[0x277D80868]) initWeakReferenceWithObject:pointerCopy];
  buildReference = self->_buildReference;
  if (!buildReference || ([(TSPLazyReference *)buildReference isEqualToLazyReference:v6]& 1) == 0)
  {
    [(KNBuildChunk *)self willModify];
    objc_storeStrong(&self->_buildReference, v6);
    if (unarchiveCopy)
    {
      [(KNBuildChunk *)self i_didLoadBuild:pointerCopy];
    }
  }
}

+ (void)i_repairChunkToBuildReferencesFromUUIDsForChunks:(id)chunks builds:(id)builds context:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  buildsCopy = builds;
  contextCopy = context;
  if (!contextCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildChunk(Internal) i_repairChunkToBuildReferencesFromUUIDsForChunks:builds:context:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:55 isFatal:0 description:{"invalid nil value for '%{public}s'", "context"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = chunksCopy;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        i_buildFromReference = [v18 i_buildFromReference];

        if (!i_buildFromReference)
        {
          i_buildId = [v18 i_buildId];
          if (!i_buildId)
          {
            chunkIdentifier = [v18 chunkIdentifier];
            i_buildId = [chunkIdentifier buildUUID];
          }

          objc_opt_class();
          v22 = [contextCopy objectWithUUIDIfAvailable:i_buildId];
          v23 = TSUDynamicCast();

          if (buildsCopy && !v23)
          {
            if (!v15)
            {
              v15 = [KNBuildUtility UUIDToTSPObjectMapForTSPObjects:buildsCopy];
            }

            objc_opt_class();
            v24 = [v15 objectForKeyedSubscript:i_buildId];
            v23 = TSUDynamicCast();
          }

          if (v23)
          {
            [v18 i_setBuildPointer:v23 forUnarchive:0];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }
}

+ (void)i_validateBuildReferencesForChunks:(id)chunks
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = chunks;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v28 = *v30;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * i);
        i_buildId = [v6 i_buildId];
        i_buildFromReference = [v6 i_buildFromReference];
        if (i_buildFromReference)
        {
          if (i_buildId)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v20 = MEMORY[0x277D81150];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildChunk(Internal) i_validateBuildReferencesForChunks:]"];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m"];
          [v20 handleFailureInFunction:v21 file:v22 lineNumber:105 isFatal:0 description:{"Chunk is missing back pointer to build. %@", v6}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
          if (i_buildId)
          {
            goto LABEL_8;
          }
        }

        v23 = MEMORY[0x277D81150];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildChunk(Internal) i_validateBuildReferencesForChunks:]"];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m"];
        [v23 handleFailureInFunction:v24 file:v25 lineNumber:106 isFatal:0 description:{"Chunk is missing UUID reference to build. %@", v6}];

        [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_8:
        objc_opt_class();
        context = [v6 context];
        v10 = [context objectWithUUIDIfAvailable:i_buildId];
        v11 = TSUDynamicCast();

        if (v11)
        {
          if (v11 == i_buildFromReference)
          {
            goto LABEL_17;
          }

          v12 = MEMORY[0x277D81150];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildChunk(Internal) i_validateBuildReferencesForChunks:]"];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m"];
          v15 = v12;
          v16 = v13;
          v17 = v14;
          v18 = 115;
          v19 = "Chunk's back pointer to build and UUID reference to build don't reference the same build.";
          goto LABEL_16;
        }

        if (i_buildFromReference && [i_buildFromReference tsp_isInDocument])
        {
          v26 = MEMORY[0x277D81150];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildChunk(Internal) i_validateBuildReferencesForChunks:]"];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m"];
          v15 = v26;
          v16 = v13;
          v17 = v14;
          v18 = 112;
          v19 = "Chunk has a valid build reference which is in the document, but cannot be looked at by UUID.";
LABEL_16:
          [v15 handleFailureInFunction:v16 file:v17 lineNumber:v18 isFatal:0 description:v19];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

LABEL_17:
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v4);
  }
}

- (void)i_setBuildId:(id)id
{
  idCopy = id;
  if (self->_buildId != idCopy)
  {
    v6 = idCopy;
    [(KNBuildChunk *)self willModify];
    objc_storeStrong(&self->_buildId, id);
    idCopy = v6;
  }
}

- (void)i_setChunkIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy && self->_buildChunkIdentifier)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunk(Internal) i_setChunkIdentifier:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:164 isFatal:0 description:{"An attempt was made to assign a chunk identifier, but the chunk already has one."}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  else
  {
    [(KNBuildChunk *)self willModify];
    objc_storeStrong(&self->_buildChunkIdentifier, identifier);
  }
}

- (void)i_clearChunkIdentifier
{
  [(KNBuildChunk *)self willModify];
  buildChunkIdentifier = self->_buildChunkIdentifier;
  self->_buildChunkIdentifier = 0;
}

- (void)i_updateChunkUUIDReferencesToBuild:(id)build
{
  buildCopy = build;
  if (!buildCopy)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunk(Internal) i_updateChunkUUIDReferencesToBuild:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:175 isFatal:0 description:{"invalid nil value for '%{public}s'", "build"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v7 = [KNBuildChunkIdentifier alloc];
  chunkIdentifier = [(KNBuildChunk *)self chunkIdentifier];
  v9 = -[KNBuildChunkIdentifier initWithBuild:chunkID:](v7, "initWithBuild:chunkID:", buildCopy, [chunkIdentifier chunkID]);

  [(KNBuildChunk *)self i_clearChunkIdentifier];
  [(KNBuildChunk *)self i_setChunkIdentifier:v9];
  objectUUID = [buildCopy objectUUID];
  [(KNBuildChunk *)self i_setBuildId:objectUUID];

  [buildCopy i_invalidateChunkCache];
}

- (KNBuildChunk)initWithBuild:(id)build
{
  buildCopy = build;
  context = [buildCopy context];
  v17.receiver = self;
  v17.super_class = KNBuildChunk;
  v6 = [(KNBuildChunk *)&v17 initWithContext:context];

  if (v6)
  {
    if (buildCopy)
    {
      [(KNBuildChunk *)v6 i_setBuildPointer:buildCopy forUnarchive:0];
      objectUUID = [buildCopy objectUUID];
      if (!objectUUID)
      {
        v8 = MEMORY[0x277D81150];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunk initWithBuild:]"];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk.m"];
        [v8 handleFailureInFunction:v9 file:v10 lineNumber:78 isFatal:0 description:{"invalid nil value for '%{public}s'", "buildId"}];

        [MEMORY[0x277D81150] logBacktraceThrottled];
      }

      buildId = v6->_buildId;
      v6->_buildId = objectUUID;
    }

    else
    {
      v12 = MEMORY[0x277D81150];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunk initWithBuild:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk.m"];
      [v12 handleFailureInFunction:v13 file:v14 lineNumber:81 isFatal:0 description:{"Chunk initialized with nil build. %@", v6}];

      [MEMORY[0x277D81150] logFullBacktrace];
    }

    [(KNBuildChunk *)v6 i_invalidateCaches];
    v6->_automatic = 0;
    v6->_referent = 0;
    v6->_delay = 0.0;
    [buildCopy durationDefaultForInitialChunk];
    v6->_duration = v15;
  }

  return v6;
}

- (KNBuildChunk)initWithBuild:(id)build copyingAttributesFromChunk:(id)chunk
{
  chunkCopy = chunk;
  v7 = [(KNBuildChunk *)self initWithBuild:build];
  v8 = v7;
  if (chunkCopy && v7)
  {
    [chunkCopy delay];
    v8->_delay = v9;
    objc_msgSend_duration(chunkCopy);
    v8->_duration = v10;
    v8->_referent = [chunkCopy referent];
    v8->_automatic = [chunkCopy isAutomatic];
  }

  return v8;
}

- (KNBuildChunk)initWithBuild:(id)build referent:(unint64_t)referent copyingRemainingAttributesFromChunk:(id)chunk
{
  result = [(KNBuildChunk *)self initWithBuild:build copyingAttributesFromChunk:chunk];
  if (result)
  {
    result->_referent = referent;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  build = [(KNBuildChunk *)self build];
  v6 = [v4 initWithBuild:build];

  *(v6 + 80) = self->_delay;
  *(v6 + 88) = self->_duration;
  *(v6 + 96) = self->_automatic;
  *(v6 + 104) = self->_referent;
  v7 = [(KNBuildChunkIdentifier *)self->_buildChunkIdentifier copy];
  v8 = *(v6 + 72);
  *(v6 + 72) = v7;

  v9 = [(NSUUID *)self->_buildId copy];
  v10 = *(v6 + 64);
  *(v6 + 64) = v9;

  v11 = [(TSPLazyReference *)self->_buildReference copy];
  v12 = *(v6 + 136);
  *(v6 + 136) = v11;

  objectUUID = [(KNBuildChunk *)self objectUUID];

  if (objectUUID)
  {
    v14 = MEMORY[0x277D81150];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunk copyWithZone:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk.m"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:138 isFatal:0 description:{"expected nil value for '%{public}s'", "self.objectUUID"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return v6;
}

- (void)didInitFromSOS
{
  v6.receiver = self;
  v6.super_class = KNBuildChunk;
  [(KNBuildChunk *)&v6 didInitFromSOS];
  if (!self->_buildReference)
  {
    objc_opt_class();
    context = [(KNBuildChunk *)self context];
    v4 = [context objectWithUUID:self->_buildId];
    v5 = TSUCheckedDynamicCast();

    if (v5)
    {
      [(KNBuildChunk *)self i_setBuildPointer:v5 forUnarchive:0];
    }
  }
}

- (KNBuild)build
{
  objc_opt_class();
  v3 = [(TSPLazyReference *)self->_buildReference objectAndReturnError:0];
  v4 = TSUDynamicCast();

  if (!v4)
  {
    context = [(KNBuildChunk *)self context];
    v6 = [context objectWithUUID:self->_buildId];

    objc_opt_class();
    v4 = TSUCheckedDynamicCast();
  }

  return v4;
}

- (void)setDuration:(double)duration
{
  [(KNBuildChunk *)self willModify];
  KNAnimationRoundTimeInterval();
  self->_duration = v4;
}

- (void)setDelay:(double)delay
{
  [(KNBuildChunk *)self willModify];
  KNAnimationRoundTimeInterval();
  self->_delay = v4;
}

- (void)setAutomatic:(BOOL)automatic
{
  if ([(KNBuildChunk *)self isAutomatic]!= automatic)
  {
    [(KNBuildChunk *)self willModify];
    slide = [(KNBuildChunk *)self slide];
    self->_automatic = automatic;
    slideNode = [slide slideNode];
    [slideNode invalidateBuildEventCountCaches];
  }
}

- (void)setReferent:(unint64_t)referent
{
  if (self->_referent != referent)
  {
    [(KNBuildChunk *)self willModify];
    slide = [(KNBuildChunk *)self slide];
    self->_referent = referent;
    slideNode = [slide slideNode];
    [slideNode invalidateBuildEventCountCaches];
  }
}

- (BOOL)isAutomaticWithPreviousChunk
{
  isAutomatic = [(KNBuildChunk *)self isAutomatic];
  if (isAutomatic)
  {
    LOBYTE(isAutomatic) = [(KNBuildChunk *)self referent]== 0;
  }

  return isAutomatic;
}

- (BOOL)isAutomaticWithPreviousChunkOnSameDrawable
{
  previousChunkOnSlide = [(KNBuildChunk *)self previousChunkOnSlide];
  v4 = 0;
  if ([(KNBuildChunk *)self isAutomaticWithPreviousChunk]&& previousChunkOnSlide)
  {
    build = [previousChunkOnSlide build];
    drawable = [build drawable];
    build2 = [(KNBuildChunk *)self build];
    drawable2 = [build2 drawable];
    v4 = drawable == drawable2;
  }

  return v4;
}

- (KNBuildChunk)previousChunkOnSlide
{
  indexOnSlide = [(KNBuildChunk *)self indexOnSlide];
  v4 = 0;
  if (indexOnSlide)
  {
    v5 = indexOnSlide;
    if (indexOnSlide != 0x7FFFFFFFFFFFFFFFLL)
    {
      slide = [(KNBuildChunk *)self slide];
      buildChunks = [slide buildChunks];
      v4 = [buildChunks objectAtIndex:v5 - 1];
    }
  }

  return v4;
}

- (KNBuildChunk)nextChunkOnSlide
{
  indexOnSlide = [(KNBuildChunk *)self indexOnSlide];
  slide = [(KNBuildChunk *)self slide];
  buildChunks = [slide buildChunks];

  if (indexOnSlide == 0x7FFFFFFFFFFFFFFFLL || indexOnSlide == [buildChunks count] - 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [buildChunks objectAtIndex:indexOnSlide + 1];
  }

  return v6;
}

- (NSArray)availableEventTriggers
{
  slide = [(KNBuildChunk *)self slide];
  v4 = [MEMORY[0x277CBEB98] setWithObject:self];
  v5 = [slide availableEventTriggersForBuildChunks:v4];

  return v5;
}

- (KNSlide)slide
{
  build = [(KNBuildChunk *)self build];
  slide = [build slide];

  return slide;
}

- (unint64_t)indexInBuild
{
  result = self->_cachedIndexInBuild;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    build = [(KNBuildChunk *)self build];
    chunks = [build chunks];

    if (chunks)
    {
      self->_cachedIndexInBuild = [chunks indexOfObject:self];
    }

    return self->_cachedIndexInBuild;
  }

  return result;
}

- (unint64_t)indexOnSlide
{
  slide = [(KNBuildChunk *)self slide];
  buildChunks = [slide buildChunks];

  cachedIndexOnSlide = self->_cachedIndexOnSlide;
  if (cachedIndexOnSlide < [buildChunks count] && (objc_msgSend(buildChunks, "objectAtIndexedSubscript:", self->_cachedIndexOnSlide), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == self))
  {
    v7 = self->_cachedIndexOnSlide;
  }

  else
  {
    v7 = [buildChunks indexOfObject:self];
    self->_cachedIndexOnSlide = v7;
  }

  return v7;
}

- (unint64_t)deliveryGroupIndex
{
  slide = [(KNBuildChunk *)self slide];
  v4 = [slide deliveryGroupIndexForBuildChunk:self];

  return v4;
}

- (BOOL)isFirstInDeliveryGroup
{
  selfCopy = self;
  slide = [(KNBuildChunk *)self slide];
  buildChunks = [slide buildChunks];
  LOBYTE(selfCopy) = [KNAbstractSlide chunk:selfCopy isFirstInDeliveryGroupForChunks:buildChunks];

  return selfCopy;
}

- (BOOL)isActive
{
  indexInBuild = [(KNBuildChunk *)self indexInBuild];
  build = [(KNBuildChunk *)self build];
  activeChunkRange = [build activeChunkRange];
  v8 = indexInBuild >= activeChunkRange && indexInBuild - activeChunkRange < v6;

  return v8;
}

- (unint64_t)activeIndexOnSlide
{
  slide = [(KNBuildChunk *)self slide];
  activeBuildChunks = [slide activeBuildChunks];

  cachedActiveIndexOnSlide = self->_cachedActiveIndexOnSlide;
  if (cachedActiveIndexOnSlide < [activeBuildChunks count] && (objc_msgSend(activeBuildChunks, "objectAtIndexedSubscript:", self->_cachedActiveIndexOnSlide), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == self))
  {
    v7 = self->_cachedActiveIndexOnSlide;
  }

  else
  {
    v7 = [activeBuildChunks indexOfObject:self];
    self->_cachedActiveIndexOnSlide = v7;
  }

  return v7;
}

- (BOOL)hasComplement
{
  if (self->_referent)
  {
    return 0;
  }

  build = [(KNBuildChunk *)self build];
  hasComplement = [build hasComplement];

  return hasComplement;
}

- (BOOL)isComplementOfBuildChunk:(id)chunk
{
  chunkCopy = chunk;
  build = [(KNBuildChunk *)self build];
  build2 = [chunkCopy build];

  LOBYTE(chunkCopy) = [build isComplementOfBuild:build2];
  return chunkCopy;
}

- (id)p_stringForReferent:(unint64_t)referent
{
  if (referent)
  {
    return @"end";
  }

  else
  {
    return @"start";
  }
}

- (NSString)description
{
  build = [(KNBuildChunk *)self build];
  v15 = [(KNBuildChunk *)self p_stringRepresentationWithNotAvailableForIndex:[(KNBuildChunk *)self indexOnSlide]];
  v4 = [(KNBuildChunk *)self p_stringRepresentationWithNotAvailableForIndex:[(KNBuildChunk *)self indexInBuild]];
  [(KNBuildChunk *)self isAutomatic];
  [(KNBuildChunk *)self referent];
  v5 = KNAnimationEventTriggerFromAutomaticReferent();
  if (v5 > 2)
  {
    v6 = &stru_2884D8E20;
  }

  else
  {
    v6 = off_27A6995A0[v5];
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  chunkIdentifier = [(KNBuildChunk *)self chunkIdentifier];
  [build animationType];
  v10 = KNAnimationTypeAsString();
  effect = [build effect];
  title = [(KNBuildChunk *)self title];
  v13 = [v7 stringWithFormat:@"<%@ %p id:%@ build:%p (%@ - %@) indexInBuild:%@ indexOnSlide:%@ title:%@ %@>", v8, self, chunkIdentifier, build, v10, effect, v4, v15, title, v6];

  return v13;
}

- (id)p_stringRepresentationWithNotAvailableForIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    index = @"n/a";
  }

  else
  {
    index = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", index];
  }

  return index;
}

- (KNBuildChunk)previousActiveChunkWithReferentRelativeToEnd
{
  build = [(KNBuildChunk *)self build];
  slide = [build slide];

  buildChunks = [slide buildChunks];
  indexOnSlide = [(KNBuildChunk *)self indexOnSlide];
  selfCopy = self;
  if (indexOnSlide)
  {
    do
    {
      --indexOnSlide;
      v8 = selfCopy;
      selfCopy = [buildChunks objectAtIndexedSubscript:indexOnSlide];
    }

    while ((![(KNBuildChunk *)selfCopy isActive]|| [(KNBuildChunk *)selfCopy isAutomatic]&& [(KNBuildChunk *)selfCopy referent]!= 1) && indexOnSlide);
  }

  return selfCopy;
}

- (id)localizedNameForEventTrigger:(unint64_t)trigger includeLineBreaks:(BOOL)breaks
{
  breaksCopy = breaks;
  if (!trigger)
  {
    previousActiveChunkWithReferentRelativeToEnd = [(KNBuildChunk *)self previousActiveChunkWithReferentRelativeToEnd];
    activeIndexOnSlide = [previousActiveChunkWithReferentRelativeToEnd activeIndexOnSlide];

    v19 = MEMORY[0x277CCABB8];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:activeIndexOnSlide + 1];
    v6 = [v19 localizedStringFromNumber:v20 numberStyle:0];

    v11 = MEMORY[0x277CCACA8];
    v13 = sub_275DC204C(v21);
    v14 = v13;
    v15 = @"With Build %@";
    v16 = @"With\nBuild %@";
    goto LABEL_8;
  }

  if (trigger != 2)
  {
    if (trigger != 1)
    {
      v25 = MEMORY[0x277D81150];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunk localizedNameForEventTrigger:includeLineBreaks:]"];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk.m"];
      [v25 handleFailureInFunction:v26 file:v27 lineNumber:486 isFatal:0 description:"Unexpected trigger type."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      v24 = 0;
      goto LABEL_18;
    }

    v5 = sub_275DC204C(self);
    v6 = v5;
    v7 = @"On Tap";
    goto LABEL_16;
  }

  activeIndexOnSlide2 = [(KNBuildChunk *)self activeIndexOnSlide];
  if (activeIndexOnSlide2)
  {
    v9 = MEMORY[0x277CCABB8];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:activeIndexOnSlide2];
    v6 = [v9 localizedStringFromNumber:v10 numberStyle:0];

    v11 = MEMORY[0x277CCACA8];
    v13 = sub_275DC204C(v12);
    v14 = v13;
    v15 = @"After Build %@";
    v16 = @"After\nBuild %@";
LABEL_8:
    if (breaksCopy)
    {
      v22 = v16;
    }

    else
    {
      v22 = v15;
    }

    v23 = [v13 localizedStringForKey:v22 value:&stru_2884D8E20 table:@"Keynote"];
    v24 = [v11 stringWithFormat:v23, v6];

    goto LABEL_17;
  }

  v5 = sub_275DC204C(0);
  v6 = v5;
  if (breaksCopy)
  {
    v7 = @"After\nTransition";
  }

  else
  {
    v7 = @"After Transition";
  }

LABEL_16:
  v24 = [v5 localizedStringForKey:v7 value:&stru_2884D8E20 table:@"Keynote"];
LABEL_17:

LABEL_18:

  return v24;
}

- (NSString)title
{
  if ([(KNBuildChunk *)self indexOnSlide]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_2884D8E20;
  }

  else
  {
    build = [(KNBuildChunk *)self build];
    drawable = [build drawable];
    deliveryStyle = [build deliveryStyle];
    animationFilter = [build animationFilter];
    v8 = [drawable chunkCountForTextureDeliveryStyle:deliveryStyle animationFilter:animationFilter];
    indexInBuild = [(KNBuildChunk *)self indexInBuild];
    if (indexInBuild >= v8)
    {
      v3 = &stru_2884D8E20;
    }

    else
    {
      v3 = [drawable kn_displayableBuildOrderNameForTextureDeliveryStyle:deliveryStyle animationFilter:animationFilter chunkIndex:indexInBuild];
    }
  }

  return v3;
}

- (NSSet)inspectableAttributes
{
  v3 = [MEMORY[0x277CBEB58] set];
  [v3 addObject:@"KNBuildChunkEventTriggerProperty"];
  [v3 addObject:@"KNAnimationOrder"];
  if ([(KNBuildChunk *)self isAutomatic])
  {
    [v3 addObject:@"KNBuildChunkDelayProperty"];
  }

  return v3;
}

- (BOOL)canEditAnimations
{
  build = [(KNBuildChunk *)self build];
  canEditAnimations = [build canEditAnimations];

  return canEditAnimations;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  self->_needsAutomaticFromBuildAttributes = 1;
  self->_needsReferentFromBuildAttributes = 1;
  self->_needsDelayFromBuildAttributes = 1;
  self->_needsDurationFromBuildAttributes = 1;
  v7 = *(archive + 4);
  if ((v7 & 0x40) != 0)
  {
    self->_automatic = *(archive + 68);
    self->_needsAutomaticFromBuildAttributes = 0;
    if ((v7 & 0x80) == 0)
    {
LABEL_3:
      if ((v7 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_referent = *(archive + 69);
  self->_needsReferentFromBuildAttributes = 0;
  if ((v7 & 8) == 0)
  {
LABEL_4:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  KNAnimationRoundTimeInterval();
  self->_delay = v8;
  self->_needsDelayFromBuildAttributes = 0;
  v7 = *(archive + 4);
  if ((v7 & 0x10) == 0)
  {
LABEL_5:
    if ((v7 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_10:
  KNAnimationRoundTimeInterval();
  self->_duration = v9;
  self->_needsDurationFromBuildAttributes = 0;
  v7 = *(archive + 4);
  if ((v7 & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  if (*(archive + 5))
  {
    v11 = *(archive + 5);
  }

  else
  {
    v11 = MEMORY[0x277D809E0];
  }

  v12 = [v10 tsp_initWithMessage:v11];
  buildId = self->_buildId;
  self->_buildId = v12;

  v7 = *(archive + 4);
LABEL_15:
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_275E2D0F4;
  v27[4] = sub_275E2D104;
  v28 = 0;
  if (v7)
  {
    v14 = *(archive + 3);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_275E2D10C;
    v26[3] = &unk_27A6995C0;
    v26[4] = v27;
    v15 = unarchiverCopy;
    [v15 readWeakReferenceMessage:v14 class:objc_opt_class() protocol:0 completion:v26];

    v16 = *(archive + 3);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_275E2D11C;
    v25[3] = &unk_27A6982D0;
    v25[4] = self;
    v17 = v15;
    v18 = objc_opt_class();
    if (v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = MEMORY[0x277D80A18];
    }

    [v17 readWeakLazyReferenceMessage:v19 class:v18 protocol:0 completion:v25];
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_275E2D134;
  v24[3] = &unk_27A6995E8;
  v24[4] = self;
  v24[5] = v27;
  [unarchiverCopy addFinalizeHandler:v24];
  if ((*(archive + 16) & 2) != 0)
  {
    v20 = [KNBuildChunkIdentifier alloc];
    if (*(archive + 4))
    {
      v21 = *(archive + 4);
    }

    else
    {
      v21 = &qword_2812EABA8;
    }

    v22 = [(KNBuildChunkIdentifier *)v20 initWithMessage:v21];
    buildChunkIdentifier = self->_buildChunkIdentifier;
    self->_buildChunkIdentifier = v22;
  }

  [(KNBuildChunk *)self i_invalidateCaches];
  _Block_object_dispose(v27, 8);
}

- (void)i_didLoadBuild:(id)build
{
  buildCopy = build;
  attributes = [buildCopy attributes];
  if (!attributes)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunk(PersistenceAdditions) i_didLoadBuild:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkPersistenceAdditions.mm"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:122 isFatal:0 description:{"invalid nil value for '%{public}s'", "buildAttributes"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (self->_needsAutomaticFromBuildAttributes)
  {
    [(KNBuildChunk *)self willModifyForUpgrade];
    v8 = [attributes valueForAttributeKey:@"KNBuildAttributesInitialChunkCreationEventTrigger"];
    [v8 unsignedIntegerValue];

    self->_automatic = KNAnimationAutomaticFromEventTrigger();
  }

  if (self->_needsReferentFromBuildAttributes)
  {
    [(KNBuildChunk *)self willModifyForUpgrade];
    v9 = [attributes valueForAttributeKey:@"KNBuildAttributesInitialChunkCreationEventTrigger"];
    [v9 unsignedIntegerValue];

    self->_referent = KNAnimationReferentFromEventTrigger();
  }

  if (self->_needsDelayFromBuildAttributes)
  {
    [(KNBuildChunk *)self willModifyForUpgrade];
    [(KNBuildChunk *)self p_setDelayFromBuildAttributes:attributes withReferent:self->_referent automatic:self->_automatic];
  }

  if (self->_needsDurationFromBuildAttributes)
  {
    [(KNBuildChunk *)self willModifyForUpgrade];
    [(KNBuildChunk *)self p_setDurationFromBuildAttributes:attributes];
  }

  if (!self->_buildId)
  {
    [(KNBuildChunk *)self willModifyForUpgrade];
    objectUUID = [buildCopy objectUUID];
    if (!objectUUID)
    {
      v11 = MEMORY[0x277D81150];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunk(PersistenceAdditions) i_didLoadBuild:]"];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkPersistenceAdditions.mm"];
      [v11 handleFailureInFunction:v12 file:v13 lineNumber:159 isFatal:0 description:{"invalid nil value for '%{public}s'", "buildUUID"}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    buildId = self->_buildId;
    self->_buildId = objectUUID;
  }
}

- (void)p_setDelayFromBuildAttributes:(id)attributes withReferent:(unint64_t)referent automatic:(BOOL)automatic
{
  automaticCopy = automatic;
  attributesCopy = attributes;
  v8 = @"KNBuildAttributesInitialChunkCreationDelay";
  if (automaticCopy)
  {
    if (referent)
    {
      if (referent != 1)
      {
        goto LABEL_7;
      }

      v9 = off_27A698DE8;
    }

    else
    {
      v9 = off_27A698DF0;
    }

    v10 = *v9;

    v8 = v10;
  }

LABEL_7:
  v11 = [attributesCopy valueForAttributeKey:v8];
  [v11 doubleValue];
  KNAnimationRoundTimeInterval();
  self->_delay = v12;
}

- (void)p_setDurationFromBuildAttributes:(id)attributes
{
  v4 = [attributes valueForAttributeKey:@"KNBuildAttributesDefaultDuration"];
  [v4 doubleValue];
  KNAnimationRoundTimeInterval();
  v6 = v5;

  self->_duration = v6;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  buildReference = self->_buildReference;
  v24 = archiverCopy;
  if (buildReference)
  {
    *(archive + 4) |= 1u;
    v8 = *(archive + 3);
    if (!v8)
    {
      v9 = *(archive + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = MEMORY[0x277C8F050](v9);
      *(archive + 3) = v8;
      archiverCopy = v24;
    }

    [archiverCopy setWeakLazyReference:buildReference message:v8];
  }

  else if (!self->_buildId && [archiverCopy targetType] != 4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunk(PersistenceAdditions) saveToArchive:archiver:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkPersistenceAdditions.mm"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:195 isFatal:0 description:{"[buildReference_log] Trying to archive a nil build reference for chunk %@, and _buildId is nil.", self}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [(KNBuildChunk *)self delay];
  *(archive + 4) |= 8u;
  *(archive + 6) = v13;
  objc_msgSend_duration(self);
  *(archive + 4) |= 0x10u;
  *(archive + 7) = v14;
  isAutomatic = [(KNBuildChunk *)self isAutomatic];
  *(archive + 4) |= 0x40u;
  *(archive + 68) = isAutomatic;
  v16 = [(KNBuildChunk *)self referent]== 1;
  v17 = *(archive + 4);
  *(archive + 4) = v17 | 0x80;
  *(archive + 69) = v16;
  buildChunkIdentifier = self->_buildChunkIdentifier;
  if (buildChunkIdentifier)
  {
    *(archive + 4) = v17 | 0x82;
    v19 = *(archive + 4);
    if (!v19)
    {
      v20 = *(archive + 1);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = sub_275E1F89C(v20);
      *(archive + 4) = v19;
    }

    [(KNBuildChunkIdentifier *)buildChunkIdentifier saveToMessage:v19];
  }

  buildId = self->_buildId;
  if (buildId)
  {
    *(archive + 4) |= 4u;
    v22 = *(archive + 5);
    if (!v22)
    {
      v23 = *(archive + 1);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x277C8F000](v23);
      *(archive + 5) = v22;
    }

    [(NSUUID *)buildId tsp_saveToMessage:v22];
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildChunk(PersistenceAdditions) loadFromUnarchiver:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkPersistenceAdditions.mm"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:213 isFatal:0 description:"KNBuildChunk needs a separate method for subclass unarchiving"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v10 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v9 = [v10 messageWithDescriptor:off_2812EA908[6]];

  [(KNBuildChunk *)self loadFromArchive:v9 unarchiver:v10];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275E2DC80 descriptor:off_2812EA908[6]];

  [(KNBuildChunk *)self saveToArchive:v4 archiver:archiverCopy];
}

@end