@interface KNBuild
+ (BOOL)p_shouldExcludeAnimationName:(id)name forDrawable:(id)drawable;
+ (KNBuild)buildWithEffect:(id)effect animationType:(int64_t)type drawable:(id)drawable slide:(id)slide;
+ (id)menuAnimationInfosForDrawableInfo:(id)info animationType:(int64_t)type;
+ (id)p_drawableFromInfo:(id)info;
+ (id)supportedAnimationInfosForDrawableInfo:(id)info animationType:(int64_t)type;
+ (void)i_repairBuildToDrawableReferencesFromUUIDsForBuilds:(id)builds drawables:(id)drawables;
- (BOOL)canEditAnimations;
- (BOOL)customAlignToPath;
- (BOOL)customBounce;
- (BOOL)customCursor;
- (BOOL)customDecay;
- (BOOL)customIncludeEndpoints;
- (BOOL)customMotionBlur;
- (BOOL)customShine;
- (BOOL)downgradesDelivery;
- (BOOL)hasComplement;
- (BOOL)i_isFullyFormedBuild;
- (BOOL)isActionMotionBuild;
- (BOOL)isComplementOfBuild:(id)build;
- (BOOL)isEmphasisBuild;
- (BOOL)isOnSlide;
- (BOOL)p_hasComplementInBuilds:(id)builds;
- (BOOL)p_isDeliveryLocalized:(id)localized forNonNilDrawable:(id)drawable;
- (BOOL)p_supportsCustomEffectTimingCurveForLayoutStyles:(id)styles;
- (BOOL)p_supportsCustomTextDeliveryOptionsForAttributes:(id)attributes;
- (BOOL)supports3DChartRotationAngle;
- (BOOL)supportsAcceleration;
- (BOOL)supportsActionRotationAngle;
- (BOOL)supportsActionRotationDirection;
- (BOOL)supportsActionScale;
- (BOOL)supportsAlignToPath;
- (BOOL)supportsBounce;
- (BOOL)supportsCursor;
- (BOOL)supportsCustomCursor;
- (BOOL)supportsCustomDetail;
- (BOOL)supportsCustomEffectTimingCurve1;
- (BOOL)supportsCustomEffectTimingCurve2;
- (BOOL)supportsCustomEffectTimingCurve3;
- (BOOL)supportsCustomRepeats;
- (BOOL)supportsCustomScale;
- (BOOL)supportsCustomTextDelivery;
- (BOOL)supportsDecay;
- (BOOL)supportsDelivery;
- (BOOL)supportsDuration;
- (BOOL)supportsIncludeEndpoints;
- (BOOL)supportsJiggleIntensity;
- (BOOL)supportsOpacity;
- (BOOL)supportsRandomNumberSeedInspection;
- (BOOL)supportsScaleAmount;
- (BOOL)supportsShine;
- (BOOL)supportsTravelDistance;
- (KNAbstractSlide)slide;
- (KNAnimationInfo)animationInfo;
- (KNAnimationPluginMenu)directionMenu;
- (KNBuild)initWithSlide:(id)slide effect:(id)effect buildType:(int64_t)type context:(id)context;
- (KNBuildChunk)firstChunk;
- (NSArray)chunks;
- (NSSet)inspectableAttributes;
- (NSString)animationFilter;
- (NSString)customEffectTimingCurveThemeName1;
- (NSString)customEffectTimingCurveThemeName2;
- (NSString)customEffectTimingCurveThemeName3;
- (NSString)debugDescription;
- (NSString)delivery;
- (NSString)description;
- (NSString)localizedEffect;
- (NSString)title;
- (TSDBezierPathSource)customEffectTimingCurve1;
- (TSDBezierPathSource)customEffectTimingCurve2;
- (TSDBezierPathSource)customEffectTimingCurve3;
- (_NSRange)activeChunkRange;
- (_NSRange)p_calculateActiveChunkRange;
- (double)actionOpacity;
- (double)actionRotationAngle;
- (double)actionScale;
- (double)customDetail;
- (double)customScaleAmount;
- (double)customTravelDistance;
- (double)durationDefaultForInitialChunk;
- (float)custom3DChartRotation;
- (id)chunkForIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deliveriesLocalized:(BOOL)localized;
- (id)i_buildChunkForChunkIdentifier:(id)identifier;
- (id)i_drawableForArchiving:(BOOL)archiving;
- (id)i_drawableOnSlide:(id)slide;
- (id)p_buildChunkIDMap;
- (id)p_chunkAtIndex:(unint64_t)index;
- (id)p_chunkTitleByTruncatingTitle:(id)title toLength:(unint64_t)length;
- (int64_t)animationType;
- (int64_t)customAccelerationOption;
- (int64_t)customTextDelivery;
- (int64_t)randomNumberSeed;
- (unint64_t)actionAcceleration;
- (unint64_t)actionRotationDirection;
- (unint64_t)chunkCount;
- (unint64_t)customDeliveryOption;
- (unint64_t)customJiggleIntensity;
- (unint64_t)customRepeatCount;
- (unint64_t)customScale;
- (unint64_t)deliveryStyle;
- (unint64_t)direction;
- (unint64_t)directionType;
- (unint64_t)endChunkIndexFromEndOffset:(unint64_t)offset;
- (unint64_t)endOffset;
- (unint64_t)expectedChunkCount;
- (unint64_t)firstChunkIndexOnSlide;
- (unint64_t)lastActiveChunkIndexInBuild;
- (unint64_t)lastChunkIndexOnSlide;
- (unint64_t)startOffset;
- (void)didInitFromSOS;
- (void)i_deregisterBuildChunkWithChunkIdentifier:(id)identifier;
- (void)i_generateAndApplyNewChunkIdentifierToChunk:(id)chunk;
- (void)i_invalidateChunkCache;
- (void)i_registerBuildChunkIdentifierForChunk:(id)chunk;
- (void)i_rollbackChunkIDSeedForChunk:(id)chunk;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setAttributes:(id)attributes;
- (void)setDelivery:(id)delivery;
- (void)setDrawable:(id)drawable;
@end

@implementation KNBuild

- (void)i_invalidateChunkCache
{
  cachedChunks = self->_cachedChunks;
  self->_cachedChunks = 0;

  self->_cachedActiveChunkRangeIsValid = 0;
  buildChunkIDMap = self->_buildChunkIDMap;
  self->_buildChunkIDMap = 0;
}

- (BOOL)i_isFullyFormedBuild
{
  if (!self->_drawable && !self->_drawableId)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_slide);
  if (WeakRetained)
  {
    v4 = self->_attributes != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)i_repairBuildToDrawableReferencesFromUUIDsForBuilds:(id)builds drawables:(id)drawables
{
  v24 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  drawablesCopy = drawables;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = buildsCopy;
  v7 = [buildsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        i_drawableId = [v12 i_drawableId];
        objc_opt_class();
        context = [v12 context];
        v15 = [context objectWithUUIDIfAvailable:i_drawableId];
        v16 = TSUDynamicCast();

        if (drawablesCopy && !v16)
        {
          if (!v9)
          {
            v9 = [KNBuildUtility UUIDToTSPObjectMapForTSPObjects:drawablesCopy];
          }

          objc_opt_class();
          v17 = [v9 objectForKeyedSubscript:i_drawableId];
          v16 = TSUCheckedDynamicCast();
        }

        if (v16)
        {
          [v12 setDrawable:v16];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }
}

- (id)i_drawableForArchiving:(BOOL)archiving
{
  drawable = self->_drawable;
  if (!drawable)
  {
    archivingCopy = archiving;
    objc_opt_class();
    context = [(KNBuild *)self context];
    v7 = context;
    drawableId = self->_drawableId;
    if (archivingCopy)
    {
      [context objectWithUUIDIfAvailable:drawableId];
    }

    else
    {
      [context objectWithUUID:drawableId];
    }
    v9 = ;
    v10 = TSUCheckedDynamicCast();

    v11 = self->_drawable;
    self->_drawable = v10;

    drawable = self->_drawable;
  }

  return drawable;
}

- (id)i_drawableOnSlide:(id)slide
{
  slideCopy = slide;
  drawable = [(KNBuild *)self drawable];
  infosToDisplay = [slideCopy infosToDisplay];

  if (([infosToDisplay containsObject:drawable] & 1) == 0)
  {
    i_drawableId = [(KNBuild *)self i_drawableId];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_275DDB8A8;
    v11[3] = &unk_27A699010;
    v12 = i_drawableId;
    v8 = i_drawableId;
    v9 = [infosToDisplay tsu_firstObjectPassingTest:v11];

    drawable = v9;
  }

  return drawable;
}

- (void)i_generateAndApplyNewChunkIdentifierToChunk:(id)chunk
{
  chunkCopy = chunk;
  v17 = chunkCopy;
  if (!chunkCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_generateAndApplyNewChunkIdentifierToChunk:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:173 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "chunk != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    chunkCopy = 0;
  }

  chunkIdentifier = [chunkCopy chunkIdentifier];
  isValid = [chunkIdentifier isValid];

  if (isValid)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_generateAndApplyNewChunkIdentifierToChunk:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:174 isFatal:0 description:{"An attempt was made to assign a chunk identifier, but the chunk already has one."}];

    [MEMORY[0x277D81150] logFullBacktrace];
  }

  if (self->_chunkIDSeed == 0x7FFFFFFF)
  {
    v14 = MEMORY[0x277D81150];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_generateAndApplyNewChunkIdentifierToChunk:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:192 isFatal:0 description:"The chunk ID counter is about to overflow and the chunk ID cannot be assigned."];

    [MEMORY[0x277D81150] logFullBacktrace];
  }

  else
  {
    [(KNBuild *)self willModify];
    ++self->_chunkIDSeed;
    v13 = [[KNBuildChunkIdentifier alloc] initWithBuild:self chunkID:self->_chunkIDSeed];
    [v17 i_setChunkIdentifier:v13];
  }
}

- (void)i_rollbackChunkIDSeedForChunk:(id)chunk
{
  v34 = *MEMORY[0x277D85DE8];
  chunkCopy = chunk;
  if (!chunkCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_rollbackChunkIDSeedForChunk:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:197 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "chunk != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  build = [chunkCopy build];

  if (build != self)
  {
    v9 = MEMORY[0x277D81150];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_rollbackChunkIDSeedForChunk:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:198 isFatal:0 description:"Chunk is not part of the receiver (build)."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  chunkIdentifier = [chunkCopy chunkIdentifier];
  chunkIDSeed = [chunkIdentifier chunkID];
  if (chunkIDSeed != self->_chunkIDSeed)
  {
    v14 = MEMORY[0x277D81150];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_rollbackChunkIDSeedForChunk:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:202 isFatal:0 description:"Trying to roll back ID for chunk which was not the last one inserted."];

    [MEMORY[0x277D81150] logFullBacktrace];
    chunkIDSeed = self->_chunkIDSeed;
  }

  if (chunkIDSeed < 1)
  {
    v25 = MEMORY[0x277D81150];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_rollbackChunkIDSeedForChunk:]"];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
    [v25 handleFailureInFunction:v26 file:v27 lineNumber:226 isFatal:0 description:"Trying to roll back an ID which is already at the beginning."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  else
  {
    v28 = chunkIdentifier;
    [(KNBuild *)self i_deregisterBuildChunkWithChunkIdentifier:chunkIdentifier];
    [(KNBuild *)self willModify];
    --self->_chunkIDSeed;
    [chunkCopy i_clearChunkIdentifier];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allKeys = [(NSMutableDictionary *)self->_buildChunkIDMap allKeys];
    v18 = [allKeys countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(allKeys);
          }

          if ([*(*(&v29 + 1) + 8 * i) integerValue] > self->_chunkIDSeed)
          {
            v22 = MEMORY[0x277D81150];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_rollbackChunkIDSeedForChunk:]"];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
            [v22 handleFailureInFunction:v23 file:v24 lineNumber:223 isFatal:0 description:"Found a pre-existing chunk which has an ID that is too high. This could cause an ID collision later."];

            [MEMORY[0x277D81150] logBacktraceThrottled];
          }
        }

        v19 = [allKeys countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    chunkIdentifier = v28;
  }
}

- (void)i_registerBuildChunkIdentifierForChunk:(id)chunk
{
  chunkCopy = chunk;
  v30 = chunkCopy;
  if (!chunkCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_registerBuildChunkIdentifierForChunk:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:241 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "chunk != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    chunkCopy = 0;
  }

  chunkIdentifier = [chunkCopy chunkIdentifier];
  v9 = chunkIdentifier;
  if (chunkIdentifier)
  {
    if (([chunkIdentifier isValid] & 1) == 0)
    {
      v10 = MEMORY[0x277D81150];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_registerBuildChunkIdentifierForChunk:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:247 isFatal:0 description:"Invalid chunk ID."];

      [MEMORY[0x277D81150] logFullBacktrace];
    }

    buildUUID = [v9 buildUUID];
    objectUUID = [(KNBuild *)self objectUUID];
    v15 = [buildUUID isEqual:objectUUID];

    if ((v15 & 1) == 0)
    {
      v16 = MEMORY[0x277D81150];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_registerBuildChunkIdentifierForChunk:]"];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
      [v16 handleFailureInFunction:v17 file:v18 lineNumber:248 isFatal:0 description:"Chunk identifier does not reference the receiver (build)."];

      [MEMORY[0x277D81150] logFullBacktrace];
    }

    chunkID = [v9 chunkID];
    p_buildChunkIDMap = [(KNBuild *)self p_buildChunkIDMap];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:chunkID];
    v22 = [p_buildChunkIDMap objectForKeyedSubscript:v21];

    if (v22 && v22 != v30)
    {
      v23 = MEMORY[0x277D81150];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_registerBuildChunkIdentifierForChunk:]"];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
      [v23 handleFailureInFunction:v24 file:v25 lineNumber:258 isFatal:0 description:"A chunk ID collision has occurred."];

      [MEMORY[0x277D81150] logFullBacktrace];
    }

    v26 = [MEMORY[0x277CCABB0] numberWithInt:chunkID];
    [p_buildChunkIDMap setObject:v30 forKeyedSubscript:v26];
  }

  else
  {
    v27 = MEMORY[0x277D81150];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_registerBuildChunkIdentifierForChunk:]"];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
    [v27 handleFailureInFunction:v28 file:v29 lineNumber:244 isFatal:0 description:{"Nil chunk identifier. %@", v30}];

    [MEMORY[0x277D81150] logFullBacktrace];
  }
}

- (id)p_buildChunkIDMap
{
  v32 = *MEMORY[0x277D85DE8];
  buildChunkIDMap = self->_buildChunkIDMap;
  if (!buildChunkIDMap)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_buildChunkIDMap;
    self->_buildChunkIDMap = v4;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(KNBuild *)self chunks];
    v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          chunkIdentifier = [v10 chunkIdentifier];
          if (([chunkIdentifier isValid] & 1) == 0)
          {
            v12 = MEMORY[0x277D81150];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) p_buildChunkIDMap]"];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
            [v12 handleFailureInFunction:v13 file:v14 lineNumber:273 isFatal:0 description:"Expected the chunk to have a fully qualified chunk identifier."];

            [MEMORY[0x277D81150] logBacktraceThrottled];
          }

          buildUUID = [chunkIdentifier buildUUID];
          objectUUID = [(KNBuild *)self objectUUID];
          v17 = [buildUUID isEqual:objectUUID];

          if ((v17 & 1) == 0)
          {
            v18 = MEMORY[0x277D81150];
            v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) p_buildChunkIDMap]"];
            v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
            [v18 handleFailureInFunction:v19 file:v20 lineNumber:274 isFatal:0 description:"Chunk identifier does not reference the receiver (build)."];

            [MEMORY[0x277D81150] logBacktraceThrottled];
          }

          v21 = self->_buildChunkIDMap;
          v22 = MEMORY[0x277CCABB0];
          chunkIdentifier2 = [v10 chunkIdentifier];
          v24 = [v22 numberWithInt:{objc_msgSend(chunkIdentifier2, "chunkID")}];
          [(NSMutableDictionary *)v21 setObject:v10 forKeyedSubscript:v24];
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v7);
    }

    buildChunkIDMap = self->_buildChunkIDMap;
  }

  return buildChunkIDMap;
}

- (id)i_buildChunkForChunkIdentifier:(id)identifier
{
  identifierCopy = identifier;
  p_buildChunkIDMap = [(KNBuild *)self p_buildChunkIDMap];
  v6 = MEMORY[0x277CCABB0];
  chunkID = [identifierCopy chunkID];

  v8 = [v6 numberWithInt:chunkID];
  v9 = [p_buildChunkIDMap objectForKeyedSubscript:v8];

  return v9;
}

- (void)i_deregisterBuildChunkWithChunkIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([identifierCopy isValid] & 1) == 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_deregisterBuildChunkWithChunkIdentifier:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:288 isFatal:0 description:"Invalid chunk identifier."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  buildUUID = [identifierCopy buildUUID];
  objectUUID = [(KNBuild *)self objectUUID];
  v9 = [buildUUID isEqual:objectUUID];

  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(Internal) i_deregisterBuildChunkWithChunkIdentifier:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:289 isFatal:0 description:"Chunk identifier does not reference the receiver (build)."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  chunkID = [identifierCopy chunkID];
  p_buildChunkIDMap = [(KNBuild *)self p_buildChunkIDMap];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:chunkID];
  [p_buildChunkIDMap removeObjectForKey:v15];
}

+ (BOOL)p_shouldExcludeAnimationName:(id)name forDrawable:(id)drawable
{
  drawableCopy = drawable;
  nameCopy = name;
  v7 = [nameCopy isEqualToString:@"apple:bc-orbital"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = [nameCopy isEqualToString:@"apple:drift object"];

  objc_opt_class();
  LOBYTE(nameCopy) = objc_opt_isKindOfClass();

  return (v7 & ~isKindOfClass | v9 & nameCopy) & 1;
}

+ (id)p_drawableFromInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v4 = TSUDynamicCast();

  return v4;
}

+ (id)supportedAnimationInfosForDrawableInfo:(id)info animationType:(int64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (type == 3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuild supportedAnimationInfosForDrawableInfo:animationType:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:119 isFatal:0 description:"Unexpected animation type."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v10 = [MEMORY[0x277CBEB58] set];
  v23 = infoCopy;
  v11 = [self p_drawableFromInfo:infoCopy];
  v12 = +[KNAnimationRegistry instance];
  animationFilters = [v11 animationFilters];
  v14 = [v12 animationInfosForAnimationType:type filter:animationFilters];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        effectIdentifier = [v20 effectIdentifier];
        if (([self p_shouldExcludeAnimationName:effectIdentifier forDrawable:v11] & 1) == 0)
        {
          [v10 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  return v10;
}

+ (id)menuAnimationInfosForDrawableInfo:(id)info animationType:(int64_t)type
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (type == 3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuild menuAnimationInfosForDrawableInfo:animationType:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:145 isFatal:0 description:"Unexpected animation type."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v10 = MEMORY[0x277CBEB58];
  v26 = infoCopy;
  v11 = [self supportedAnimationInfosForDrawableInfo:infoCopy animationType:type];
  v12 = [v10 setWithSet:v11];

  v13 = [MEMORY[0x277CBEB58] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = MEMORY[0x277D80578];
    v18 = *v28;
    v19 = MEMORY[0x277D80588];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        animationFilter = [v21 animationFilter];
        if (([animationFilter isEqualToString:*v17] & 1) != 0 || (objc_msgSend(animationFilter, "isEqualToString:", *v19) & 1) != 0 || objc_msgSend(animationFilter, "isEqualToString:", *MEMORY[0x277D80598]))
        {
          v23 = -[KNAnimationInfo initWithAnimationClass:]([KNAnimationInfo alloc], "initWithAnimationClass:", [objc_msgSend(v21 "animationClass")]);
          if ([v14 containsObject:v23])
          {
            [v13 addObject:v23];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  v24 = [v14 mutableCopy];
  [v24 minusSet:v13];

  return v24;
}

+ (KNBuild)buildWithEffect:(id)effect animationType:(int64_t)type drawable:(id)drawable slide:(id)slide
{
  v40[2] = *MEMORY[0x277D85DE8];
  drawableCopy = drawable;
  slideCopy = slide;
  effectCopy = effect;
  IsEmphasisEffect = KNEffectIsEmphasisEffect();
  if (type != 4 || (IsEmphasisEffect & 1) != 0)
  {
    if (type)
    {
      goto LABEL_7;
    }

    v21 = MEMORY[0x277D81150];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuild buildWithEffect:animationType:drawable:slide:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
    v37 = "animationType";
    v38 = "KNAnimationTypeNone";
    v16 = "expected inequality between %{public}s and %{public}s";
    v17 = v21;
    v18 = v14;
    v19 = v15;
    v20 = 180;
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuild buildWithEffect:animationType:drawable:slide:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
    v16 = "Non-emphasis action builds should not use this constructor.";
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = 179;
  }

  [v17 handleFailureInFunction:v18 file:v19 lineNumber:v20 isFatal:0 description:{v16, v37, v38}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_7:
  v22 = [KNBuild alloc];
  slide = [drawableCopy slide];
  context = [drawableCopy context];
  v25 = [(KNBuild *)v22 initWithSlide:slide effect:effectCopy buildType:type context:context];

  [(KNBuild *)v25 setDrawable:drawableCopy];
  slide2 = [drawableCopy slide];
  if (slide2)
  {
    isRightToLeft = [drawableCopy isRightToLeft];
  }

  else
  {
    isRightToLeft = [slideCopy documentIsRTL];
  }

  v28 = isRightToLeft;

  v29 = KNAnimationTypeAsString();
  v39[0] = *MEMORY[0x277D80178];
  v39[1] = @"WritingDirectionIsRTL";
  v40[0] = v29;
  v30 = [MEMORY[0x277CCABB0] numberWithBool:v28];
  v40[1] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];

  attributes = [(KNBuild *)v25 attributes];
  v33 = [attributes attributesByAddingAttributesFromDictionary:v31];
  [(KNBuild *)v25 setAttributes:v33];

  v34 = [(KNBuild *)v25 deliveriesLocalized:0];
  firstObject = [v34 firstObject];
  [(KNBuild *)v25 setDelivery:firstObject];

  return v25;
}

- (KNBuild)initWithSlide:(id)slide effect:(id)effect buildType:(int64_t)type context:(id)context
{
  slideCopy = slide;
  effectCopy = effect;
  v21.receiver = self;
  v21.super_class = KNBuild;
  v12 = [(KNBuild *)&v21 initWithContext:context];
  if (v12)
  {
    if ((KNAnimationTypeIsBuildType() & 1) == 0)
    {
      v13 = MEMORY[0x277D81150];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild initWithSlide:effect:buildType:context:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
      [v13 handleFailureInFunction:v14 file:v15 lineNumber:205 isFatal:0 description:"Tried to initialize build with a non-build animation type."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    objc_storeWeak(&v12->_slide, slideCopy);
    v16 = [*MEMORY[0x277D80118] copy];
    delivery = v12->_delivery;
    v12->_delivery = v16;

    v18 = [KNBuildAttributes defaultAttributesForEffect:effectCopy buildType:type];
    attributes = v12->_attributes;
    v12->_attributes = v18;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KNBuild alloc];
  slide = [(KNBuild *)self slide];
  effect = [(KNBuild *)self effect];
  animationType = [(KNBuild *)self animationType];
  context = [(KNBuild *)self context];
  v9 = [(KNBuild *)v4 initWithSlide:slide effect:effect buildType:animationType context:context];

  drawable = [(KNBuild *)self drawable];
  [(KNBuild *)v9 setDrawable:drawable];

  delivery = [(KNBuild *)self delivery];
  [(KNBuild *)v9 setDelivery:delivery];

  attributes = [(KNBuild *)self attributes];
  [(KNBuild *)v9 setAttributes:attributes];

  v9->_chunkIDSeed = self->_chunkIDSeed;
  if ([(KNBuild *)self chunkCount]== 1)
  {
    chunks = [(KNBuild *)self chunks];
    firstObject = [chunks firstObject];

    eventTrigger = [firstObject eventTrigger];
    attributes2 = [(KNBuild *)self attributes];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:eventTrigger];
    v18 = [attributes2 attributesBySettingValue:v17 forAttributeKey:@"KNBuildAttributesInitialChunkCreationEventTrigger"];
    [(KNBuild *)v9 setAttributes:v18];
  }

  return v9;
}

- (void)didInitFromSOS
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = KNBuild;
  [(KNBuild *)&v22 didInitFromSOS];
  if (self->_drawable)
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild didInitFromSOS]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:244 isFatal:0 description:{"expected nil value for '%{public}s'", "_drawable"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  WeakRetained = objc_loadWeakRetained(&self->_slide);

  if (WeakRetained)
  {
    objectUUID = [(KNBuild *)self objectUUID];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = objc_loadWeakRetained(&self->_slide);
    buildChunks = [v8 buildChunks];

    v10 = [buildChunks countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(buildChunks);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          i_buildId = [v14 i_buildId];
          v16 = [i_buildId isEqual:objectUUID];

          if (v16)
          {
            i_buildFromReference = [v14 i_buildFromReference];

            if (!i_buildFromReference)
            {
              [v14 i_setBuildPointer:self forUnarchive:0];
            }
          }
        }

        v11 = [buildChunks countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  objectUUID = [(KNBuild *)self objectUUID];
  uUIDString = [objectUUID UUIDString];
  [(KNBuild *)self animationType];
  v7 = KNAnimationTypeAsString();
  drawable = [(KNBuild *)self drawable];
  effect = [(KNBuild *)self effect];
  title = [(KNBuild *)self title];
  v11 = [v3 stringWithFormat:@"<%@ %p %@ type=%@ drawable=%p effect=%@ title=%@ chunk count=%lu chunkIDseed=%d>", v4, self, uUIDString, v7, drawable, effect, title, -[KNBuild chunkCount](self, "chunkCount"), self->_chunkIDSeed];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  objectUUID = [(KNBuild *)self objectUUID];
  uUIDString = [objectUUID UUIDString];
  v7 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, uUIDString];

  return v7;
}

- (KNAbstractSlide)slide
{
  WeakRetained = objc_loadWeakRetained(&self->_slide);

  if (WeakRetained)
  {
    slide = objc_loadWeakRetained(&self->_slide);
  }

  else
  {
    drawable = [(KNBuild *)self drawable];
    slide = [drawable slide];
  }

  return slide;
}

- (void)setDrawable:(id)drawable
{
  drawableCopy = drawable;
  if (!drawableCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild setDrawable:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:297 isFatal:0 description:{"invalid nil value for '%{public}s'", "drawable"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [(KNBuild *)self willModify];
  v8 = drawableCopy;
  if (self->_drawable != drawableCopy)
  {
    objc_storeStrong(&self->_drawable, drawable);
    v8 = drawableCopy;
  }

  objectUUID = [(TSDDrawableInfo *)v8 objectUUID];
  if (!objectUUID)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild setDrawable:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:310 isFatal:0 description:{"invalid nil value for '%{public}s'", "drawableId"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (self->_drawableId != objectUUID)
  {
    objc_storeStrong(&self->_drawableId, objectUUID);
  }
}

- (void)setAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_attributes != attributesCopy)
  {
    v13 = attributesCopy;
    [(KNBuild *)self willModify];
    startOffset = [(KNBuild *)self startOffset];
    endOffset = [(KNBuild *)self endOffset];
    v7 = [(KNBuildAttributes *)v13 copy];
    attributes = self->_attributes;
    self->_attributes = v7;

    startOffset2 = [(KNBuild *)self startOffset];
    endOffset2 = [(KNBuild *)self endOffset];
    attributesCopy = v13;
    if (startOffset != startOffset2 || endOffset != endOffset2)
    {
      slide = [(KNBuild *)self slide];
      self->_cachedActiveChunkRangeIsValid = 0;
      [slide i_invalidateActiveChunkCache];
      slideNode = [slide slideNode];
      [slideNode invalidateBuildEventCountCaches];

      attributesCopy = v13;
    }
  }
}

- (KNAnimationInfo)animationInfo
{
  v3 = +[KNAnimationRegistry instance];
  effect = [(KNBuild *)self effect];
  v5 = [v3 animationInfoForEffectIdentifier:effect animationType:{-[KNBuild animationType](self, "animationType")}];

  return v5;
}

- (KNAnimationPluginMenu)directionMenu
{
  animationInfo = [(KNBuild *)self animationInfo];
  animationClass = [animationInfo animationClass];

  v5 = +[KNAnimationPluginMenu animationPluginMenu];
  [animationClass fillLocalizedDirectionMenu:v5 forType:{-[KNBuild animationType](self, "animationType")}];
  attributes = [(KNBuild *)self attributes];
  v7 = [attributes valueForAttributeKey:@"WritingDirectionIsRTL"];
  v8 = [v7 isEqual:MEMORY[0x277CBEC38]];

  if (v8)
  {
    defaultDirection = [v5 defaultDirection];
    v10 = defaultDirection - 11;
    if (defaultDirection - 11) <= 0xD && ((0x3C03u >> v10))
    {
      defaultDirection = qword_275E79198[v10];
    }

    [v5 setDefaultDirection:defaultDirection];
  }

  return v5;
}

- (unint64_t)directionType
{
  animationInfo = [(KNBuild *)self animationInfo];
  animationClass = [animationInfo animationClass];

  return [animationClass directionType];
}

- (NSString)localizedEffect
{
  animationInfo = [(KNBuild *)self animationInfo];
  v4 = [animationInfo localizedNameForType:{-[KNBuild animationType](self, "animationType")}];

  return v4;
}

- (NSString)animationFilter
{
  animationInfo = [(KNBuild *)self animationInfo];
  animationFilter = [animationInfo animationFilter];

  return animationFilter;
}

- (NSArray)chunks
{
  v21 = *MEMORY[0x277D85DE8];
  cachedChunks = self->_cachedChunks;
  if (!cachedChunks)
  {
    array = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    slide = [(KNBuild *)self slide];
    buildChunks = [slide buildChunks];

    v7 = [buildChunks countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(buildChunks);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          build = [v11 build];

          if (build == self)
          {
            [array addObject:v11];
          }
        }

        v8 = [buildChunks countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    if ([array count])
    {
      v13 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:array];
      v14 = self->_cachedChunks;
      self->_cachedChunks = v13;
    }

    cachedChunks = self->_cachedChunks;
  }

  return cachedChunks;
}

- (id)p_chunkAtIndex:(unint64_t)index
{
  chunks = [(KNBuild *)self chunks];
  v5 = [chunks tsu_rangeCheckedObjectAtIndex:index];

  return v5;
}

- (unint64_t)firstChunkIndexOnSlide
{
  firstChunk = [(KNBuild *)self firstChunk];
  v3 = firstChunk;
  if (firstChunk)
  {
    indexOnSlide = [firstChunk indexOnSlide];
  }

  else
  {
    indexOnSlide = 0;
  }

  return indexOnSlide;
}

- (unint64_t)lastChunkIndexOnSlide
{
  chunks = [(KNBuild *)self chunks];
  lastObject = [chunks lastObject];

  if (lastObject)
  {
    indexOnSlide = [lastObject indexOnSlide];
  }

  else
  {
    indexOnSlide = 0;
  }

  return indexOnSlide;
}

- (unint64_t)chunkCount
{
  chunks = [(KNBuild *)self chunks];
  v3 = [chunks count];

  return v3;
}

- (unint64_t)expectedChunkCount
{
  supportsDelivery = [(KNBuild *)self supportsDelivery];
  isContentBuild = [(KNBuild *)self isContentBuild];
  if (!supportsDelivery && !isContentBuild)
  {
    return 1;
  }

  drawable = [(KNBuild *)self drawable];
  deliveryStyle = [(KNBuild *)self deliveryStyle];
  animationFilter = [(KNBuild *)self animationFilter];
  v9 = [drawable chunkCountForTextureDeliveryStyle:deliveryStyle animationFilter:animationFilter];

  return v9;
}

- (KNBuildChunk)firstChunk
{
  chunks = [(KNBuild *)self chunks];
  firstObject = [chunks firstObject];

  return firstObject;
}

- (id)chunkForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objectUUID = [(KNBuild *)self objectUUID];
  buildUUID = [identifierCopy buildUUID];
  v7 = [objectUUID isEqual:buildUUID];

  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild chunkForIdentifier:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:471 isFatal:0 description:"Attempted to resolve a chunk from an identifier using the wrong build."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v11 = [(KNBuild *)self i_buildChunkForChunkIdentifier:identifierCopy];

  return v11;
}

- (id)deliveriesLocalized:(BOOL)localized
{
  localizedCopy = localized;
  v21[1] = *MEMORY[0x277D85DE8];
  drawable = [(KNBuild *)self drawable];
  if (!drawable)
  {
    v11 = 0;
LABEL_8:
    if ([v11 count])
    {
      goto LABEL_16;
    }

    if (localizedCopy)
    {
      goto LABEL_10;
    }

    v16 = *MEMORY[0x277D80118];
LABEL_14:
    v18 = v16;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    goto LABEL_15;
  }

  animationInfo = [(KNBuild *)self animationInfo];
  isDrift = [animationInfo isDrift];

  if (!isDrift)
  {
    animationFilter = [(KNBuild *)self animationFilter];
    v11 = [drawable textureDeliveryStylesLocalized:localizedCopy animationFilter:animationFilter];

    goto LABEL_8;
  }

  if (!localizedCopy)
  {
    v16 = *MEMORY[0x277D80118];
    v20 = *MEMORY[0x277D80118];
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    if ([v11 count])
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v9 = sub_275DC204C(v8);
  v10 = [v9 localizedStringForKey:@"All at Once" value:&stru_2884D8E20 table:@"Keynote"];
  v21[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  if ([v11 count])
  {
    goto LABEL_16;
  }

LABEL_10:
  v13 = sub_275DC204C(0);
  v14 = [v13 localizedStringForKey:@"All at Once" value:&stru_2884D8E20 table:@"Keynote"];
  v19 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];

  v11 = v13;
LABEL_15:

  v11 = v15;
LABEL_16:

  return v11;
}

- (BOOL)downgradesDelivery
{
  selfCopy = self;
  v3 = [(KNBuild *)self deliveriesLocalized:0];
  LOBYTE(selfCopy) = [v3 containsObject:selfCopy->_delivery];

  return selfCopy ^ 1;
}

- (void)setDelivery:(id)delivery
{
  deliveryCopy = delivery;
  v5 = deliveryCopy;
  if (!deliveryCopy || ![(NSString *)deliveryCopy length])
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild setDelivery:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:514 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "delivery != nil && delivery.length > 0"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (v5 && self->_delivery != v5 && [(NSString *)v5 length])
  {
    [(KNBuild *)self willModify];
    obj = [(NSString *)v5 copy];

    objc_storeStrong(&self->_delivery, obj);
    drawable = [(KNBuild *)self drawable];
    if (drawable && [(KNBuild *)self p_isDeliveryLocalized:obj forNonNilDrawable:drawable])
    {
      v10 = MEMORY[0x277D81150];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild setDelivery:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:525 isFatal:0 description:"Trying to set a build's delivery with a _localized_ string. Use the non-localized variant."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v13 = obj;
  }

  else
  {
    v13 = v5;
  }
}

- (BOOL)p_isDeliveryLocalized:(id)localized forNonNilDrawable:(id)drawable
{
  localizedCopy = localized;
  drawableCopy = drawable;
  if (drawableCopy)
  {
    if (localizedCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild p_isDeliveryLocalized:forNonNilDrawable:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:533 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "drawable != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    if (localizedCopy)
    {
      goto LABEL_3;
    }
  }

  v16 = MEMORY[0x277D81150];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild p_isDeliveryLocalized:forNonNilDrawable:]"];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
  [v16 handleFailureInFunction:v17 file:v18 lineNumber:534 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "delivery != nil"}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_3:
  animationFilter = [(KNBuild *)self animationFilter];
  v9 = [drawableCopy textureDeliveryStylesLocalized:0 animationFilter:animationFilter];
  v10 = 0;
  if (([v9 containsObject:localizedCopy] & 1) == 0)
  {
    v11 = [drawableCopy textureDeliveryStylesLocalized:1 animationFilter:animationFilter];
    v10 = [v11 containsObject:localizedCopy];
  }

  return v10;
}

- (NSString)delivery
{
  if ([(KNBuild *)self downgradesDelivery])
  {
    v3 = [(KNBuild *)self deliveriesLocalized:0];
    if (![v3 count])
    {
      v4 = MEMORY[0x277D81150];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild delivery]"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
      [v4 handleFailureInFunction:v5 file:v6 lineNumber:556 isFatal:0 description:"Build doesn't have any deliveries."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    firstObject = [v3 firstObject];
  }

  else
  {
    firstObject = self->_delivery;
  }

  return firstObject;
}

- (unint64_t)deliveryStyle
{
  drawable = [(KNBuild *)self drawable];
  delivery = [(KNBuild *)self delivery];
  v5 = [drawable textureDeliveryStyleFromDeliveryString:delivery];

  return v5;
}

- (unint64_t)startOffset
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildAttributesStartOffset"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)endOffset
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildAttributesEndOffset"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (_NSRange)activeChunkRange
{
  p_cachedActiveChunkRange = &self->_cachedActiveChunkRange;
  if (self->_cachedActiveChunkRangeIsValid)
  {
    location = p_cachedActiveChunkRange->location;
    length = p_cachedActiveChunkRange->length;
  }

  else
  {
    location = [(KNBuild *)self p_calculateActiveChunkRange];
    p_cachedActiveChunkRange->location = location;
    p_cachedActiveChunkRange->length = length;
    self->_cachedActiveChunkRangeIsValid = 1;
  }

  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)p_calculateActiveChunkRange
{
  startOffset = [(KNBuild *)self startOffset];
  v4 = [(KNBuild *)self endChunkIndexFromEndOffset:[(KNBuild *)self endOffset]];
  v5 = v4 - startOffset;
  v6 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = startOffset;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 + 1;
  }

  result.length = v8;
  result.location = v7;
  return result;
}

- (unint64_t)endChunkIndexFromEndOffset:(unint64_t)offset
{
  chunkCount = [(KNBuild *)self chunkCount];
  if (chunkCount <= offset)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return chunkCount + ~offset;
  }
}

- (unint64_t)lastActiveChunkIndexInBuild
{
  chunkCount = [(KNBuild *)self chunkCount];
  activeChunkRange = [(KNBuild *)self activeChunkRange];
  v6 = activeChunkRange + v5;
  if (!v5)
  {
    v6 = chunkCount;
  }

  return v6 - 1;
}

- (id)p_chunkTitleByTruncatingTitle:(id)title toLength:(unint64_t)length
{
  titleCopy = title;
  v6 = [titleCopy length];
  v7 = titleCopy;
  v8 = v7;
  v9 = v7;
  if (v6)
  {
    if (v6 >= length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = v6;
    }

    v9 = [v7 substringWithRange:{0, lengthCopy}];
  }

  return v9;
}

- (NSString)title
{
  drawable = [(KNBuild *)self drawable];
  if (drawable)
  {
    v4 = [(KNBuild *)self p_chunkAtIndex:0];
    deliveryStyle = [(KNBuild *)self deliveryStyle];
    animationFilter = [(KNBuild *)self animationFilter];
    v7 = [drawable kn_displayableBuildOrderNameForTextureDeliveryStyle:deliveryStyle animationFilter:animationFilter chunkIndex:{objc_msgSend(v4, "indexInBuild")}];

    v8 = [(KNBuild *)self p_chunkTitleByTruncatingTitle:v7 toLength:100];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isOnSlide
{
  selfCopy = self;
  slide = [(KNBuild *)self slide];
  builds = [slide builds];
  LOBYTE(selfCopy) = [builds containsObject:selfCopy];

  return selfCopy;
}

- (BOOL)isComplementOfBuild:(id)build
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:build];
  LOBYTE(self) = [(KNBuild *)self p_hasComplementInBuilds:v4];

  return self;
}

- (BOOL)p_hasComplementInBuilds:(id)builds
{
  v22 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  if ([(KNBuild *)self isActionBuild])
  {
    v5 = 0;
  }

  else
  {
    drawable = [(KNBuild *)self drawable];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = buildsCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (v12 != self)
          {
            drawable2 = [*(*(&v17 + 1) + 8 * i) drawable];
            v14 = drawable2;
            if (drawable2 == drawable)
            {
              isActionBuild = [(KNBuild *)v12 isActionBuild];

              if (!isActionBuild)
              {
                v5 = 1;
                goto LABEL_16;
              }
            }

            else
            {
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_16:
  }

  return v5;
}

- (BOOL)hasComplement
{
  selfCopy = self;
  slide = [(KNBuild *)self slide];
  builds = [slide builds];
  LOBYTE(selfCopy) = [(KNBuild *)selfCopy p_hasComplementInBuilds:builds];

  return selfCopy;
}

- (BOOL)isActionMotionBuild
{
  effect = [(KNBuild *)self effect];
  v3 = [effect isEqualToString:*MEMORY[0x277D800C8]];

  return v3;
}

- (BOOL)isEmphasisBuild
{
  effect = [(KNBuild *)self effect];
  IsEmphasisEffect = KNEffectIsEmphasisEffect();

  return IsEmphasisEffect;
}

- (BOOL)supportsDuration
{
  effect = [(KNBuild *)self effect];
  if ([effect isEqualToString:*MEMORY[0x277D80138]] & 1) != 0 || (objc_msgSend(effect, "isEqualToString:", *MEMORY[0x277D80158]) & 1) != 0 || (objc_msgSend(effect, "isEqualToString:", *MEMORY[0x277D80148]) & 1) != 0 || (objc_msgSend(effect, "isEqualToString:", *MEMORY[0x277D80170]))
  {
    v4 = 0;
  }

  else
  {
    v6 = +[KNGalleryAppear animationName];
    if ([effect isEqualToString:v6])
    {
      v4 = 0;
    }

    else if ([effect isEqualToString:*MEMORY[0x277D80140]])
    {
      v4 = [(KNBuild *)self customTextDelivery]!= 1;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (BOOL)supportsBounce
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNBuildCustomAttributesBounce"];
  return v5;
}

- (BOOL)supportsAlignToPath
{
  animationInfo = [(KNBuild *)self animationInfo];
  v3 = [animationInfo supportsCustomAttributeKey:@"KNBuildCustomAttributesAlignToPath"];

  return v3;
}

- (BOOL)supportsAcceleration
{
  v3 = *MEMORY[0x277D800E8];
  v4 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:*MEMORY[0x277D800E8]];
  integerValue = [v4 integerValue];

  v6 = +[KNAnimationUtils isCustomEffectTimingCurveEditingEnabled];
  animationInfo = [(KNBuild *)self animationInfo];
  v8 = [animationInfo customAttributesForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurve1"];

  effect = [(KNBuild *)self effect];
  v10 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  if (v8 && (integerValue == 4 || v6))
  {
    v11 = 1;
  }

  else
  {
    v11 = [v10 containsAttributeForKey:v3];
  }

  return v11;
}

- (BOOL)supportsIncludeEndpoints
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNBuildCustomAttributesIncludeEndpoints"];
  return v5;
}

- (BOOL)supportsShine
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNBuildCustomAttributesShine"];
  return v5;
}

- (BOOL)supportsScaleAmount
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNBuildCustomAttributesScaleAmount"];
  return v5;
}

- (BOOL)supportsCustomScale
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNActionBuildCustomAttributesScale"];
  return v5;
}

- (BOOL)supportsOpacity
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:*MEMORY[0x277D800F0]];
  return v5;
}

- (BOOL)supportsActionScale
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:*MEMORY[0x277D80110]];
  return v5;
}

- (BOOL)supportsTravelDistance
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNBuildCustomAttributesTravelDistance"];
  return v5;
}

- (BOOL)supportsActionRotationAngle
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:*MEMORY[0x277D80100]];
  return v5;
}

- (BOOL)supportsActionRotationDirection
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:*MEMORY[0x277D80108]];
  return v5;
}

- (BOOL)supports3DChartRotationAngle
{
  effect = [(KNBuild *)self effect];
  if ([effect isEqualToString:@"apple:3d-crane"] & 1) != 0 || (objc_msgSend(effect, "isEqualToString:", @"apple:3d-rotate"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [effect isEqualToString:@"apple:3d-rotatinggrow"];
  }

  return v3;
}

- (BOOL)supportsJiggleIntensity
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNActionBuildCustomAttributesJiggleIntensity"];
  return v5;
}

- (BOOL)supportsCursor
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNBuildCustomAttributesCursor"];
  return v5;
}

- (BOOL)supportsCustomRepeats
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNActionBuildCustomAttributesRepeatCount"];
  return v5;
}

- (BOOL)supportsDecay
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNActionBuildCustomAttributesDecay"];
  return v5;
}

- (BOOL)supportsRandomNumberSeedInspection
{
  v3 = +[KNAnimationUtils isRandomNumberSeedInspectionEnabled];
  if (v3)
  {
    effect = [(KNBuild *)self effect];
    v5 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

    v6 = [v5 containsAttributeForKey:@"KNBuildCustomAttributesRandomNumberSeed"];
    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)supportsCustomEffectTimingCurve1
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2884F3AE0, 0}];
  LOBYTE(self) = [(KNBuild *)self p_supportsCustomEffectTimingCurveForLayoutStyles:v3];

  return self;
}

- (BOOL)supportsCustomEffectTimingCurve2
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2884F3AF8, &unk_2884F3B10, 0}];
  LOBYTE(self) = [(KNBuild *)self p_supportsCustomEffectTimingCurveForLayoutStyles:v3];

  return self;
}

- (BOOL)supportsCustomEffectTimingCurve3
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2884F3B28, 0}];
  LOBYTE(self) = [(KNBuild *)self p_supportsCustomEffectTimingCurveForLayoutStyles:v3];

  return self;
}

- (BOOL)supportsCustomDetail
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNBuildCustomAttributesDetail"];
  return v5;
}

- (BOOL)supportsCustomCursor
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNBuildCustomAttributesCursor"];
  return v5;
}

- (BOOL)p_supportsCustomEffectTimingCurveForLayoutStyles:(id)styles
{
  stylesCopy = styles;
  v5 = +[KNAnimationUtils isCustomEffectTimingCurveEditingEnabled];
  animationInfo = [(KNBuild *)self animationInfo];
  attributes = [(KNBuild *)self attributes];
  v7Attributes = [attributes attributes];
  v9 = [animationInfo customEffectTimingCurveDisplayParametersForAttributes:v7Attributes layoutStyleOnly:1];

  v10 = [v9 objectForKeyedSubscript:&unk_2884F3B40];
  LOBYTE(animationInfo) = [stylesCopy containsObject:v10];

  return v5 & animationInfo;
}

- (BOOL)supportsDelivery
{
  if ([(KNBuild *)self isActionBuild])
  {
    return 0;
  }

  v4 = [(KNBuild *)self deliveriesLocalized:0];
  v3 = [v4 count] > 1;

  return v3;
}

- (BOOL)supportsCustomTextDelivery
{
  effect = [(KNBuild *)self effect];
  v4 = [KNBuildAttributes defaultAttributesForEffect:effect buildType:[(KNBuild *)self animationType]];

  v5 = [v4 containsAttributeForKey:@"KNBuildCustomAttributesTextDelivery"];
  return v5;
}

- (int64_t)animationType
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:*MEMORY[0x277D80178]];
  v3 = KNAnimationTypeFromString();

  return v3;
}

- (double)durationDefaultForInitialChunk
{
  attributes = [(KNBuild *)self attributes];
  v3 = [attributes valueForAttributeKey:@"KNBuildAttributesDefaultDuration"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (unint64_t)direction
{
  animationType = [(KNBuild *)self animationType];
  if (![(KNBuild *)self supportsDirection])
  {
    return 0;
  }

  v4 = +[KNAnimationPluginMenu animationPluginMenu];
  animationInfo = [(KNBuild *)self animationInfo];
  animationClass = [animationInfo animationClass];

  [animationClass fillLocalizedDirectionMenu:v4 forType:animationType];
  defaultDirection = [v4 defaultDirection];
  attributes = [(KNAnimationAttributes *)self->_attributes attributes];
  v9 = [attributes objectForKey:@"KNBuildAttributesDirection"];

  if (!v9 || (v10 = [v9 intValue], (objc_msgSend(v4, "containsDirection:", v10) & 1) == 0))
  {
    attributes2 = [(KNBuild *)self attributes];
    v12 = [attributes2 valueForAttributeKey:@"WritingDirectionIsRTL"];
    v13 = [v12 isEqual:MEMORY[0x277CBEC38]];

    if (v13 && (v14 = defaultDirection - 11, (defaultDirection - 11) <= 0xD))
    {
      v10 = defaultDirection;
      if ((0x3C03u >> v14))
      {
        v10 = qword_275E79198[v14];
      }
    }

    else
    {
      v10 = defaultDirection;
    }
  }

  return v10;
}

- (unint64_t)actionAcceleration
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:*MEMORY[0x277D800E8]];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)actionScale
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:*MEMORY[0x277D80110]];
  [v2 tsu_CGFloatValue];
  v4 = v3;

  return v4;
}

- (double)actionRotationAngle
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:*MEMORY[0x277D80100]];
  [v2 tsu_CGFloatValue];
  v4 = v3;

  return v4;
}

- (unint64_t)actionRotationDirection
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:*MEMORY[0x277D80108]];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)actionOpacity
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:*MEMORY[0x277D800F0]];
  [v2 tsu_CGFloatValue];
  v4 = v3;

  return v4;
}

- (float)custom3DChartRotation
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild custom3DChartRotation]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:1002 isFatal:0 description:"Do not call method"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[KNBuild custom3DChartRotation]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (int64_t)customTextDelivery
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesTextDelivery"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)customDeliveryOption
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesDeliveryOption"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)customAccelerationOption
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:*MEMORY[0x277D800E8]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)customBounce
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesBounce"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)customAlignToPath
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesAlignToPath"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)customMotionBlur
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesMotionBlur"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)customIncludeEndpoints
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesIncludeEndpoints"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)customShine
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesShine"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)customScaleAmount
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesScaleAmount"];
  [v2 tsu_CGFloatValue];
  v4 = v3;

  return v4;
}

- (double)customTravelDistance
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesTravelDistance"];
  [v2 tsu_CGFloatValue];
  v4 = v3;

  return v4;
}

- (unint64_t)customRepeatCount
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNActionBuildCustomAttributesRepeatCount"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)customDecay
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNActionBuildCustomAttributesDecay"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)customScale
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNActionBuildCustomAttributesScale"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)customJiggleIntensity
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNActionBuildCustomAttributesJiggleIntensity"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)randomNumberSeed
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesRandomNumberSeed"];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (double)customDetail
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesDetail"];
  [v2 tsu_CGFloatValue];
  v4 = v3;

  return v4;
}

- (BOOL)customCursor
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNBuildCustomAttributesCursor"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (TSDBezierPathSource)customEffectTimingCurve1
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurve1"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (TSDBezierPathSource)customEffectTimingCurve2
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurve2"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (TSDBezierPathSource)customEffectTimingCurve3
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurve3"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (NSString)customEffectTimingCurveThemeName1
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName1"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (NSString)customEffectTimingCurveThemeName2
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName2"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (NSString)customEffectTimingCurveThemeName3
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName3"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (NSSet)inspectableAttributes
{
  animationInfo = [(KNBuild *)self animationInfo];
  defaultAttributes = [animationInfo defaultAttributes];

  v5 = MEMORY[0x277CBEB58];
  allKeys = [defaultAttributes allKeys];
  v7 = [v5 setWithArray:allKeys];

  [v7 kn_addOrRemoveObject:@"KNBuildAttributesDirection" withCondition:{-[KNBuild supportsDirection](self, "supportsDirection")}];
  [v7 kn_addOrRemoveObject:@"KNBuildDeliveryProperty" withCondition:{-[KNBuild supportsDelivery](self, "supportsDelivery")}];
  supportsDuration = [(KNBuild *)self supportsDuration];
  if ([v7 containsObject:@"KNBuildAttributesDefaultDuration"])
  {
    [v7 removeObject:@"KNBuildAttributesDefaultDuration"];
    [v7 addObject:@"KNBuildChunkDurationProperty"];
  }

  [v7 kn_addOrRemoveObject:@"KNBuildChunkDurationProperty" withCondition:supportsDuration];
  v9 = [(KNBuild *)self deliveryStyle]!= 0;
  [v7 kn_addOrRemoveObject:@"KNBuildAttributesStartOffset" withCondition:v9];
  [v7 kn_addOrRemoveObject:@"KNBuildAttributesEndOffset" withCondition:v9];
  isActionMotionBuild = [(KNBuild *)self isActionMotionBuild];
  [v7 kn_addOrRemoveObject:*MEMORY[0x277D800F8] withCondition:isActionMotionBuild];
  [v7 kn_addOrRemoveObject:@"KNBuildCustomAttributesAlignToPath" withCondition:{-[KNBuild supportsAlignToPath](self, "supportsAlignToPath")}];
  [v7 kn_addOrRemoveObject:@"KNBuildCustomAttributesDeliveryOption" withCondition:{-[KNBuild p_supportsCustomTextDeliveryOptionsForAttributes:](self, "p_supportsCustomTextDeliveryOptionsForAttributes:", v7)}];
  supportsAcceleration = [(KNBuild *)self supportsAcceleration];
  [v7 kn_addOrRemoveObject:*MEMORY[0x277D800E8] withCondition:supportsAcceleration];
  [v7 kn_addOrRemoveObject:@"KNBuildCustomAttributesRandomNumberSeed" withCondition:{-[KNBuild supportsRandomNumberSeedInspection](self, "supportsRandomNumberSeedInspection")}];
  supportsCustomEffectTimingCurve3 = [(KNBuild *)self supportsCustomEffectTimingCurve3];
  [v7 kn_addOrRemoveObject:@"KNAnimationAttributesCustomEffectTimingCurve3" withCondition:supportsCustomEffectTimingCurve3];
  if (supportsCustomEffectTimingCurve3)
  {
    [v7 kn_addOrRemoveObject:@"KNAnimationAttributesCustomEffectTimingCurve2" withCondition:0];
LABEL_6:
    supportsCustomEffectTimingCurve1 = 0;
    goto LABEL_8;
  }

  supportsCustomEffectTimingCurve2 = [(KNBuild *)self supportsCustomEffectTimingCurve2];
  [v7 kn_addOrRemoveObject:@"KNAnimationAttributesCustomEffectTimingCurve2" withCondition:supportsCustomEffectTimingCurve2];
  if (supportsCustomEffectTimingCurve2)
  {
    goto LABEL_6;
  }

  supportsCustomEffectTimingCurve1 = [(KNBuild *)self supportsCustomEffectTimingCurve1];
LABEL_8:
  [v7 kn_addOrRemoveObject:@"KNAnimationAttributesCustomEffectTimingCurve1" withCondition:supportsCustomEffectTimingCurve1];
  [v7 kn_addOrRemoveObject:@"KNBuildCustomAttributesDetail" withCondition:{-[KNBuild supportsCustomDetail](self, "supportsCustomDetail")}];

  return v7;
}

- (BOOL)p_supportsCustomTextDeliveryOptionsForAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [attributesCopy containsObject:@"KNBuildCustomAttributesTextDelivery"] && objc_msgSend(attributesCopy, "containsObject:", @"KNBuildCustomAttributesDeliveryOption") && -[KNBuild customTextDelivery](self, "customTextDelivery") > 1;

  return v5;
}

- (BOOL)canEditAnimations
{
  drawable = [(KNBuild *)self drawable];
  if ([drawable isLocked])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    parentInfo = [drawable parentInfo];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = [drawable isInlineWithText] ^ 1;
    }
  }

  return v3;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = unarchiverCopy;
  if ((*(archive + 16) & 2) != 0)
  {
    v8 = *(archive + 4);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_275E517EC;
    v16[3] = &unk_27A699760;
    v16[4] = self;
    v9 = unarchiverCopy;
    [v9 readWeakReferenceMessage:v8 class:objc_opt_class() protocol:0 completion:v16];
  }

  else if (KNBuildArchivingLogCat_init_token != -1)
  {
    sub_275E6112C();
  }

  0xFFFFFFFFFFFFFFFELL = [MEMORY[0x277CCACA8] tsp_stringWithProtobufString:*(archive + 3) & 0xFFFFFFFFFFFFFFFELL];
  delivery = self->_delivery;
  self->_delivery = 0xFFFFFFFFFFFFFFFELL;

  if ([(NSString *)self->_delivery isEqualToString:@"All At Once"])
  {
    [(KNBuild *)self willModifyForUpgrade];
    objc_storeStrong(&self->_delivery, *MEMORY[0x277D80118]);
  }

  v12 = [KNBuildAttributes alloc];
  if (*(archive + 5))
  {
    v13 = *(archive + 5);
  }

  else
  {
    v13 = &unk_2812EAC50;
  }

  v14 = [(KNBuildAttributes *)v12 initFromBuildAttributesArchive:v13];
  attributes = self->_attributes;
  self->_attributes = v14;

  if ((*(archive + 16) & 0x10) != 0)
  {
    self->_chunkIDSeed = *(archive + 14);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = [(KNBuild *)self i_drawableForArchiving:1];
  if (v7)
  {
    *(archive + 4) |= 2u;
    v8 = *(archive + 4);
    if (!v8)
    {
      v9 = *(archive + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = MEMORY[0x277C8F050](v9);
      *(archive + 4) = v8;
    }

    [archiverCopy setWeakReference:v7 message:v8];
  }

  else if (KNBuildCobblestoneLogCat_init_token != -1)
  {
    sub_275E61154();
  }

  v10 = self->_delivery;
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(PersistenceAdditions) saveToArchive:archiver:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildPersistenceAdditions.mm"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:92 isFatal:0 description:{"invalid nil value for '%{public}s'", "delivery"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (![(__CFString *)v10 length])
  {
    v14 = MEMORY[0x277D81150];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(PersistenceAdditions) saveToArchive:archiver:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildPersistenceAdditions.mm"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:95 isFatal:0 description:"Archiving an empty delivery string."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    v10 = &stru_2884D8E20;
  }

  v17 = v10;
  sub_275E51DB8(archive, [(__CFString *)v10 UTF8String]);
  *(archive + 4) |= 8u;
  *(archive + 6) = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_275E51ECC;
  v20[3] = &unk_27A697C88;
  v20[4] = self;
  archiveCopy = archive;
  v18 = archiverCopy;
  v21 = v18;
  [v18 pushScopeForField:4 message:archive usingBlock:v20];
  chunkIDSeed = self->_chunkIDSeed;
  *(archive + 4) |= 0x10u;
  *(archive + 14) = chunkIDSeed;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuild(PersistenceAdditions) loadFromUnarchiver:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildPersistenceAdditions.mm"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:113 isFatal:0 description:"KNBuild needs a separate method for subclass unarchiving"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v10 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v9 = [v10 messageWithDescriptor:off_2812EA908[16]];

  [(KNBuild *)self loadFromArchive:v9 unarchiver:v10];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275E52190 descriptor:off_2812EA908[16]];

  [(KNBuild *)self saveToArchive:v4 archiver:archiverCopy];
}

@end