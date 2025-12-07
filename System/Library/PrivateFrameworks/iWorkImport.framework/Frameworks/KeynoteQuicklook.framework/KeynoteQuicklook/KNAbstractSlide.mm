@interface KNAbstractSlide
+ (BOOL)chunk:(id)chunk isFirstInDeliveryGroupForChunks:(id)chunks;
+ (Class)classForUnarchiver:(id)unarchiver;
+ (id)buildChunksInDeliveryGroupAtIndex:(unint64_t)index inBuildChunks:(id)chunks;
+ (id)p_firstActiveChunkInChunks:(id)chunks;
+ (id)parentSlideForInfo:(id)info;
+ (unint64_t)deliveryGroupCountForBuildChunks:(id)chunks;
+ (unint64_t)deliveryGroupIndexForBuildChunk:(id)chunk inBuildChunks:(id)chunks;
- (BOOL)areBuildChunksInValidOrderIgnoringInactiveChunks:(id)chunks;
- (BOOL)backgroundIsNoFillOrColorFillWithAlpha;
- (BOOL)canMoveDeliveryGroupFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (BOOL)canMoveDrawables:(id)drawables toIndexes:(id)indexes;
- (BOOL)canSetChunksToAutomaticWith:(id)with;
- (BOOL)hasComplementForBuildChunk:(id)chunk inBuildChunks:(id)chunks;
- (BOOL)hasFreeformTextPlaceholders;
- (BOOL)hasTagForInfo:(id)info;
- (BOOL)infoExistsForTag:(id)tag;
- (BOOL)infoIsPlaceholder:(id)placeholder;
- (BOOL)isBodyVisible;
- (BOOL)isSlideNumberVisible;
- (BOOL)isTemplateSlide;
- (BOOL)isTitleVisible;
- (BOOL)p_activeChunks:(id)chunks areInOrderForBuild:(id)build;
- (BOOL)p_activeChunks:(id)chunks interleaveChunksForComplementOfBuild:(id)build;
- (BOOL)p_areActiveBuildChunksInValidOrder:(id)order;
- (BOOL)p_canMoveDeliveryGroupBuildChunks:(id)chunks toIndex:(unint64_t)index;
- (BOOL)p_canMoveDeliveryGroupBuildChunksFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (BOOL)p_isChildPlaceholderInfo:(id)info;
- (BOOL)p_isValidToMoveChunk:(id)chunk toIndex:(unint64_t)index;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (KNAbstractSlide)initWithSlideNode:(id)node context:(id)context;
- (KNMotionBackgroundStyle)motionBackgroundStyle;
- (KNSlideBackgroundInfo)background;
- (KNSlideNode)slideNode;
- (NSArray)activeBuildChunks;
- (NSArray)buildsGroupedByDeliveryGroup;
- (NSArray)infosToDisplay;
- (NSArray)ownedChildInfos;
- (NSSet)referencedStyles;
- (TSDFill)backgroundFill;
- (TSUMutablePointerSet)drawablesWithInvalidatedGhosts;
- (TSUPointerKeyDictionary)drawableToGhostInfosMap;
- (_NSRange)p_activeChunkRangeForBuild:(id)build inActiveChunks:(id)chunks;
- (double)highestScaleFactorForRenderingDrawableInfo:(id)info;
- (id)activeChunksForDrawable:(id)drawable;
- (id)activeChunksForDrawable:(id)drawable animationType:(int64_t)type;
- (id)availableEventTriggersForBuildChunks:(id)chunks;
- (id)boxedObjectForProperty:(int)property;
- (id)buildChunksForActiveBuildChunkIndexes:(id)indexes;
- (id)buildChunksInDeliveryGroupAtIndex:(unint64_t)index;
- (id)buildsForDrawable:(id)drawable;
- (id)buildsForDrawable:(id)drawable type:(int64_t)type;
- (id)buildsForDrawables:(id)drawables;
- (id)childEnumerator;
- (id)chunksForDrawable:(id)drawable animationType:(int64_t)type;
- (id)chunksWhichPlayWithChunk:(id)chunk;
- (id)contentBuildForDrawable:(id)drawable;
- (id)defaultBodyPlaceholder;
- (id)defaultBodyPlaceholderWithContext:(id)context;
- (id)defaultSlideNumberPlaceholder;
- (id)defaultSlideNumberPlaceholderWithContext:(id)context;
- (id)defaultTitlePlaceholder;
- (id)defaultTitlePlaceholderWithContext:(id)context;
- (id)deliveryGroupIndexesForBuilds:(id)builds;
- (id)imageUsingDocumentRoot:(id)root;
- (id)inBuildForDrawable:(id)drawable;
- (id)infoCorrespondingToInfo:(id)info;
- (id)infoForTag:(id)tag;
- (id)instructionalTextForInfo:(id)info;
- (id)objectForProperty:(int)property;
- (id)objectUUIDPath;
- (id)outBuildForDrawable:(id)drawable;
- (id)p_ChunksForDrawable:(id)drawable animationType:(int64_t)type onlyActiveChunks:(BOOL)chunks;
- (id)p_calculateActiveBuildChunks;
- (id)p_chunksWhichWillPlayWithChunksToSetToWith:(id)with;
- (id)p_complementForBuild:(id)build;
- (id)p_firstActiveChunkInChunksForBuild:(id)build;
- (id)p_invalidBuildsOnDrawable:(id)drawable;
- (id)p_lastActiveChunkInChunksForBuild:(id)build;
- (id)pdfDataUsingDocumentRoot:(id)root;
- (id)placeholderOfClass:(Class)class withGeometry:(id)geometry stylesheet:(id)stylesheet shapePresetIndex:(int64_t)index textPresetIndex:(int64_t)presetIndex layoutPropertyMap:(id)map paragraphPropertyMap:(id)propertyMap listPropertyMap:(id)self0 context:(id)self1;
- (id)placeholderOfClass:(Class)class withGeometry:(id)geometry stylesheet:(id)stylesheet shapePresetIndex:(int64_t)index textPresetStyle:(id)style layoutPropertyMap:(id)map paragraphPropertyMap:(id)propertyMap listPropertyMap:(id)self0 context:(id)self1;
- (id)placeholderOfClass:(Class)class withGeometry:(id)geometry stylesheet:(id)stylesheet shapePresetIndex:(int64_t)index textPresetStyle:(id)style listStyle:(id)listStyle layoutPropertyMap:(id)map paragraphPropertyMap:(id)self0 listPropertyMap:(id)self1 context:(id)self2;
- (id)placeholderWithPlaceholder:(id)placeholder context:(id)context;
- (id)placeholderWithPlaceholder:(id)placeholder context:(id)context placeholderClass:(Class)class;
- (id)tagForInfo:(id)info;
- (int64_t)canMoveBuildChunk:(id)chunk toIndex:(unint64_t)index;
- (int64_t)validateMoveActiveBuildChunks:(id)chunks toActiveIndex:(unint64_t)index;
- (unint64_t)deliveryGroupCount;
- (unint64_t)deliveryGroupIndexForBuildChunk:(id)chunk;
- (unint64_t)p_keynoteVersionFromUnarchiver:(id)unarchiver;
- (void)addBuild:(id)build;
- (void)addChildInfo:(id)info;
- (void)addDrawable:(id)drawable dolcContext:(id)context;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)didInitFromSOS;
- (void)i_primitiveAddBuild:(id)build;
- (void)i_primitiveInsertBuildChunk:(id)chunk afterChunk:(id)afterChunk generateIdentifier:(BOOL)identifier;
- (void)insertBuildChunk:(id)chunk afterChunk:(id)afterChunk generateIdentifier:(BOOL)identifier;
- (void)insertChildInfo:(id)info above:(id)above;
- (void)insertChildInfo:(id)info atIndex:(unint64_t)index;
- (void)insertChildInfo:(id)info below:(id)below;
- (void)insertContainedModel:(id)model atIndex:(unint64_t)index;
- (void)insertDrawable:(id)drawable atIndex:(unint64_t)index dolcContext:(id)context;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)moveChildren:(id)children toIndexes:(id)indexes;
- (void)moveModel:(id)model toIndex:(unint64_t)index;
- (void)p_assertChunksInSequenceForBuild:(id)build;
- (void)p_checkChildInfosForDuplicates:(id)duplicates;
- (void)p_insertChildInfos:(id)infos atIndex:(unint64_t)index dolcContext:(id)context;
- (void)p_invalidateAllChunkAndBuildCaches;
- (void)p_invalidateCachesForBuildUpdate:(id)update isForRemoval:(BOOL)removal;
- (void)p_invalidateCachesForChunkUpdate:(id)update isForRemoval:(BOOL)removal;
- (void)p_invalidateSlideNodeBuildEventCountCaches;
- (void)p_setChildInfosAsOrderedSet:(id)set usingDOLC:(BOOL)c dolcContext:(id)context;
- (void)p_updateBuildEffects:(BOOL)effects version:(unint64_t)version;
- (void)p_updateBuildsReplacingPlaceholder:(id)placeholder withPlaceholder:(id)withPlaceholder;
- (void)p_updateOverlappingBuildEventTriggers;
- (void)performBlockOnInfos:(id)infos;
- (void)referencedStyleWasUpdated:(id)updated;
- (void)removeBuild:(id)build;
- (void)removeBuildChunk:(id)chunk rollbackGeneratedIdentifier:(BOOL)identifier;
- (void)removeChildInfo:(id)info;
- (void)removeContainedModel:(id)model;
- (void)removeDrawable:(id)drawable;
- (void)removeTagForDrawable:(id)drawable;
- (void)replaceChildInfo:(id)info with:(id)with;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setBodyPlaceholder:(id)placeholder;
- (void)setBuildChunks:(id)chunks generateIdentifiers:(BOOL)identifiers;
- (void)setBuilds:(id)builds;
- (void)setChildInfos:(id)infos;
- (void)setChildInfosWithoutDOLC:(id)c;
- (void)setInDocument:(BOOL)document;
- (void)setInfo:(id)info forSageTag:(id)tag;
- (void)setInstructionalText:(id)text forInfo:(id)info;
- (void)setMotionBackgroundStyle:(id)style;
- (void)setObjectPlaceholder:(id)placeholder;
- (void)setPlaceholdersForTags:(id)tags;
- (void)setSlideNode:(id)node;
- (void)setSlideNumberPlaceholder:(id)placeholder;
- (void)setStyle:(id)style;
- (void)setTitlePlaceholder:(id)placeholder;
- (void)setTransition:(id)transition;
- (void)updateMotionBackground;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation KNAbstractSlide

- (KNAbstractSlide)initWithSlideNode:(id)node context:(id)context
{
  nodeCopy = node;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = KNAbstractSlide;
  v8 = [(KNAbstractSlide *)&v27 initWithContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_slideNode, nodeCopy);
    v10 = objc_alloc_init(MEMORY[0x277CBEB98]);
    builds = v9->_builds;
    v9->_builds = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEA60]);
    buildChunks = v9->_buildChunks;
    v9->_buildChunks = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB70]);
    childInfos = v9->_childInfos;
    v9->_childInfos = v14;

    v16 = [[KNTransition alloc] initWithOwner:v9];
    transition = v9->_transition;
    v9->_transition = v16;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    instructionalTextForInfos = v9->_instructionalTextForInfos;
    v9->_instructionalTextForInfos = weakToStrongObjectsMapTable;

    documentRoot = [(KNAbstractSlide *)v9 documentRoot];
    v21 = objc_alloc(MEMORY[0x277D802E8]);
    show = [documentRoot show];
    [show size];
    v23 = [v21 initWithSize:?];

    v24 = [KNSlideBackgroundInfo backgroundWithSlide:v9 andGeometry:v23];
    background = v9->_background;
    v9->_background = v24;
  }

  return v9;
}

- (void)didInitFromSOS
{
  v14.receiver = self;
  v14.super_class = KNAbstractSlide;
  [(KNAbstractSlide *)&v14 didInitFromSOS];
  tsu_uniqueObjects = [(NSArray *)self->_buildChunks tsu_uniqueObjects];
  v4 = [tsu_uniqueObjects count];
  v5 = [(NSArray *)self->_buildChunks count];

  if (v4 != v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide didInitFromSOS]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:260 isFatal:0 description:"Initialized from SOS with duplicate chunks in chunks list."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  buildChunks = self->_buildChunks;
  builds = self->_builds;
  context = [(KNAbstractSlide *)self context];
  [KNBuildChunk i_repairChunkToBuildReferencesFromUUIDsForChunks:buildChunks builds:builds context:context];

  v12 = self->_builds;
  childInfos = [(KNAbstractSlide *)self childInfos];
  [KNBuild i_repairBuildToDrawableReferencesFromUUIDsForBuilds:v12 drawables:childInfos];
}

- (id)objectUUIDPath
{
  slideNode = [(KNAbstractSlide *)self slideNode];
  array = [MEMORY[0x277CBEB18] array];
  if (slideNode)
  {
    objectUUIDPath = [slideNode objectUUIDPath];
    uuids = [objectUUIDPath uuids];
    [array addObjectsFromArray:uuids];
  }

  objectUUID = [(KNAbstractSlide *)self objectUUID];
  [array addObject:objectUUID];

  v8 = [objc_alloc(MEMORY[0x277D81360]) initWithArray:array];

  return v8;
}

- (TSDFill)backgroundFill
{
  style = [(KNAbstractSlide *)self style];
  v3 = [style objectForProperty:516];
  null = [MEMORY[0x277CBEB68] null];

  if (v3 == null)
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)backgroundIsNoFillOrColorFillWithAlpha
{
  backgroundFill = [(KNAbstractSlide *)self backgroundFill];
  if (backgroundFill)
  {
    objc_opt_class();
    v3 = TSUDynamicCast();
    v4 = v3;
    if (v3)
    {
      v5 = [v3 isOpaque] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (self->_style != styleCopy)
  {
    [(KNAbstractSlide *)self willModify];
    motionBackgroundStyle = [(KNAbstractSlide *)self motionBackgroundStyle];
    objc_storeStrong(&self->_style, style);
    slideNode = [(KNAbstractSlide *)self slideNode];
    [slideNode updateBackgroundIsNoFillOrColorFillWithAlpha];

    motionBackgroundStyle2 = [(KNAbstractSlide *)self motionBackgroundStyle];
    v8 = motionBackgroundStyle2;
    if (motionBackgroundStyle && motionBackgroundStyle2)
    {
      [(KNMotionBackground *)self->_motionBackground updateWithStyle:motionBackgroundStyle2];
    }

    else
    {
      [(KNAbstractSlide *)self updateMotionBackground];
    }
  }
}

- (void)updateMotionBackground
{
  motionBackgroundStyle = [(KNAbstractSlide *)self motionBackgroundStyle];

  if (motionBackgroundStyle)
  {
    v4 = [KNMotionBackground alloc];
    motionBackgroundStyle2 = [(KNAbstractSlide *)self motionBackgroundStyle];
    v5 = [(KNMotionBackground *)v4 initWithStyle:?];
    motionBackground = self->_motionBackground;
    self->_motionBackground = v5;

    v7 = motionBackgroundStyle2;
  }

  else
  {
    v7 = self->_motionBackground;
    self->_motionBackground = 0;
  }
}

- (KNMotionBackgroundStyle)motionBackgroundStyle
{
  objc_opt_class();
  backgroundFill = [(KNAbstractSlide *)self backgroundFill];
  v4 = TSUDynamicCast();

  if (v4)
  {
    motionBackgroundStyle = [v4 motionBackgroundStyle];
  }

  else
  {
    motionBackgroundStyle = 0;
  }

  return motionBackgroundStyle;
}

- (void)setMotionBackgroundStyle:(id)style
{
  styleCopy = style;
  motionBackgroundStyle = [(KNAbstractSlide *)self motionBackgroundStyle];

  if (motionBackgroundStyle != styleCopy)
  {
    [(KNAbstractSlide *)self willModify];
    v5 = [[KNMotionBackgroundFill alloc] initWithMotionBackgroundStyle:styleCopy];
    v6 = [objc_alloc(MEMORY[0x277D80AB8]) initWithPropertiesAndValues:{516, v5, 0}];
    documentRoot = [(KNAbstractSlide *)self documentRoot];
    stylesheet = [documentRoot stylesheet];
    style = [(KNAbstractSlide *)self style];
    v10 = [stylesheet variationOfStyle:style propertyMap:v6];

    [(KNAbstractSlide *)self setStyle:v10];
  }
}

- (void)setTransition:(id)transition
{
  transitionCopy = transition;
  if (self->_transition != transitionCopy)
  {
    [(KNAbstractSlide *)self willModify];
    objc_storeStrong(&self->_transition, transition);
  }
}

- (void)setPlaceholdersForTags:(id)tags
{
  tagsCopy = tags;
  if (self->_placeholdersForTags != tagsCopy)
  {
    [(KNAbstractSlide *)self willModify];
    objc_storeStrong(&self->_placeholdersForTags, tags);
    slideNode = [(KNAbstractSlide *)self slideNode];
    [slideNode updateLiveVideoSourceUsage];
  }
}

- (void)setInDocument:(BOOL)document
{
  if (self->_inDocument != document)
  {
    [(KNAbstractSlide *)self willModify];
    self->_inDocument = document;
  }
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v35 = *MEMORY[0x277D85DE8];
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v25 = [mapperCopy mappedStyleForStyle:self->_style];
  if (!v25)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide adoptStylesheet:withMapper:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:401 isFatal:0 description:{"Failed to map style %@", self->_style}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide adoptStylesheet:withMapper:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:402 isFatal:0 description:{"style mapped returned style of class %@ for %@", v15, self->_style}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  objc_opt_class();
  v16 = TSUDynamicCast();
  if (v16)
  {
    [(KNAbstractSlide *)self setStyle:v16];
  }

  [(KNAbstractSlide *)self ownedChildInfos];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v17 = v31 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v18)
  {
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v30 + 1) + 8 * i) adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
      }

      v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275D46850;
  aBlock[3] = &unk_27A6978A0;
  v21 = v17;
  v27 = v21;
  v22 = stylesheetCopy;
  v28 = v22;
  v23 = mapperCopy;
  v29 = v23;
  v24 = _Block_copy(aBlock);
  v24[2](v24, self->_titlePlaceholder);
  v24[2](v24, self->_bodyPlaceholder);
  v24[2](v24, self->_objectPlaceholder);
  v24[2](v24, self->_slideNumberPlaceholder);
}

+ (id)parentSlideForInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v4 = infoCopy;
    do
    {
      parentInfo = [v4 parentInfo];

      objc_opt_class();
      v6 = TSUDynamicCast();
      v7 = v6;
      if (!parentInfo)
      {
        break;
      }

      v4 = parentInfo;
    }

    while (!v6);
  }

  else
  {
    v7 = 0;
    parentInfo = 0;
  }

  return v7;
}

- (void)setChildInfos:(id)infos
{
  infosCopy = infos;
  [(KNAbstractSlide *)self p_checkChildInfosForDuplicates:?];
  v4 = [MEMORY[0x277CBEB70] orderedSetWithArray:infosCopy];
  defaultContext = [MEMORY[0x277D805F0] defaultContext];
  [(KNAbstractSlide *)self p_setChildInfosAsOrderedSet:v4 usingDOLC:1 dolcContext:defaultContext];
}

- (void)setChildInfosWithoutDOLC:(id)c
{
  cCopy = c;
  [(KNAbstractSlide *)self p_checkChildInfosForDuplicates:?];
  v4 = [MEMORY[0x277CBEB70] orderedSetWithArray:cCopy];
  defaultContext = [MEMORY[0x277D805F0] defaultContext];
  [(KNAbstractSlide *)self p_setChildInfosAsOrderedSet:v4 usingDOLC:0 dolcContext:defaultContext];
}

- (void)p_checkChildInfosForDuplicates:(id)duplicates
{
  v19 = *MEMORY[0x277D85DE8];
  duplicatesCopy = duplicates;
  v4 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:duplicatesCopy];
  v5 = [v4 count];
  if (v5 != [duplicatesCopy count])
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide p_checkChildInfosForDuplicates:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    v9 = [duplicatesCopy tsu_arrayByMappingObjectsUsingBlock:&unk_2884D4B00];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:461 isFatal:0 description:{"Attempting to set child infos array %{public}@ which contains duplicates.", v9}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v11)
    {
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v10);
          }

          if ([v10 countForObject:*(*(&v14 + 1) + 8 * v13)] >= 2 && qword_280A3CB98 != -1)
          {
            sub_275E59CA4();
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)p_setChildInfosAsOrderedSet:(id)set usingDOLC:(BOOL)c dolcContext:(id)context
{
  cCopy = c;
  v71 = *MEMORY[0x277D85DE8];
  setCopy = set;
  contextCopy = context;
  [(KNAbstractSlide *)self willModify];
  if (self->_childInfos == setCopy)
  {
    goto LABEL_53;
  }

  inDocument = [(KNAbstractSlide *)self inDocument];
  v42 = cCopy & inDocument;
  if (cCopy && inDocument)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    documentRoot = [(KNAbstractSlide *)self documentRoot];
    v43 = v9;
    v44 = v8;
    if (!cCopy)
    {
      goto LABEL_36;
    }

LABEL_6:
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = self->_childInfos;
    v10 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v10)
    {
      v47 = *v64;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v64 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v63 + 1) + 8 * i);
          if (![(NSOrderedSet *)setCopy containsObject:v12]&& ![(KNAbstractSlide *)self p_isChildPlaceholderInfo:v12])
          {
            if (inDocument)
            {
              objc_opt_class();
              v41 = &unk_2884F6548;
              v13 = TSUClassAndProtocolCast();
              v14 = v13;
              if (v13)
              {
                [v13 willBeRemovedFromDocumentRoot:{documentRoot, &unk_2884F6548}];
                [v44 addObject:v14];
              }
            }

            parentInfo = [v12 parentInfo];
            v16 = parentInfo == self;

            if (!v16)
            {
              v17 = MEMORY[0x277D81150];
              v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide p_setChildInfosAsOrderedSet:usingDOLC:dolcContext:]"];
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
              v20 = objc_opt_class();
              v21 = objc_opt_class();
              parentInfo2 = [v12 parentInfo];
              [v17 handleFailureInFunction:v18 file:v19 lineNumber:498 isFatal:0 description:{"changing the parent info on something that may be a template drawable: %{public}@, %{public}@ parent: %{public}@", v20, v21, objc_opt_class()}];

              [MEMORY[0x277D81150] logBacktraceThrottled];
            }

            [v12 setParentInfo:0];
          }
        }

        v10 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v10);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v23 = setCopy;
    v24 = [(NSOrderedSet *)v23 countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v24)
    {
      v25 = *v60;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v60 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v59 + 1) + 8 * j);
          if (![(NSOrderedSet *)self->_childInfos containsObject:v27, v41]&& ![(KNAbstractSlide *)self p_isChildPlaceholderInfo:v27])
          {
            [v27 setParentInfo:self];
            if (inDocument)
            {
              objc_opt_class();
              v41 = &unk_2884F6548;
              v28 = TSUClassAndProtocolCast();
              v29 = v28;
              if (v28)
              {
                [v28 willBeAddedToDocumentRoot:documentRoot dolcContext:{contextCopy, &unk_2884F6548}];
                [v43 addObject:v29];
              }
            }
          }
        }

        v24 = [(NSOrderedSet *)v23 countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v24);
    }

    goto LABEL_36;
  }

  documentRoot = 0;
  v43 = 0;
  v44 = 0;
  if (cCopy)
  {
    goto LABEL_6;
  }

LABEL_36:
  v30 = [(NSOrderedSet *)setCopy copy];
  childInfos = self->_childInfos;
  self->_childInfos = v30;

  slideNode = [(KNAbstractSlide *)self slideNode];
  [slideNode setIsSlideNumberVisible:{-[KNAbstractSlide isSlideNumberVisible](self, "isSlideNumberVisible")}];
  [slideNode updateLiveVideoSourceUsage];
  if (v42)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v33 = v44;
    v34 = [v33 countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (v34)
    {
      v35 = *v56;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v56 != v35)
          {
            objc_enumerationMutation(v33);
          }

          [*(*(&v55 + 1) + 8 * k) wasRemovedFromDocumentRoot:documentRoot];
        }

        v34 = [v33 countByEnumeratingWithState:&v55 objects:v68 count:16];
      }

      while (v34);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v37 = v43;
    v38 = [v37 countByEnumeratingWithState:&v51 objects:v67 count:16];
    if (v38)
    {
      v39 = *v52;
      do
      {
        for (m = 0; m != v38; ++m)
        {
          if (*v52 != v39)
          {
            objc_enumerationMutation(v37);
          }

          [*(*(&v51 + 1) + 8 * m) wasAddedToDocumentRoot:documentRoot dolcContext:contextCopy];
        }

        v38 = [v37 countByEnumeratingWithState:&v51 objects:v67 count:16];
      }

      while (v38);
    }
  }

LABEL_53:
}

- (BOOL)p_isChildPlaceholderInfo:(id)info
{
  infoCopy = info;
  titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];
  if (titlePlaceholder == infoCopy)
  {
    v9 = 1;
  }

  else
  {
    bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];
    if (bodyPlaceholder == infoCopy)
    {
      v9 = 1;
    }

    else
    {
      slideNumberPlaceholder = [(KNAbstractSlide *)self slideNumberPlaceholder];
      if (slideNumberPlaceholder == infoCopy)
      {
        v9 = 1;
      }

      else
      {
        objectPlaceholder = [(KNAbstractSlide *)self objectPlaceholder];
        v9 = objectPlaceholder == infoCopy;
      }
    }
  }

  return v9;
}

- (NSArray)ownedChildInfos
{
  v15 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_childInfos;
  v5 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isChildOfPossibleParentInfo:{self, v10}])
        {
          [array addObject:v8];
        }
      }

      v5 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return array;
}

- (KNSlideBackgroundInfo)background
{
  v3 = self->_background;
  if (!v3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide background]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:560 isFatal:0 description:{"_background is nil. This is strange and worth investigating, but we have hopes of coping with this; this assertion doesn't have to block ship."}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    documentRoot = [(KNAbstractSlide *)self documentRoot];
    show = [documentRoot show];
    v9 = objc_alloc(MEMORY[0x277D802E8]);
    [show size];
    v10 = [v9 initWithSize:?];
    v3 = [KNSlideBackgroundInfo backgroundWithSlide:self andGeometry:v10];

    if (!v3)
    {
      v11 = MEMORY[0x277D81150];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide background]"];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
      [v11 handleFailureInFunction:v12 file:v13 lineNumber:569 isFatal:0 description:{"We had a nil background, and failed to come up with a substitute. We're probably about to hit a fatal exception"}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)isTemplateSlide
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide isTemplateSlide]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:575 isFatal:0 description:{"Abstract method not overridden by %{public}@", v6}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "-[KNAbstractSlide isTemplateSlide]"];
  v12 = [v7 exceptionWithName:*MEMORY[0x277CBE658] reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (NSArray)infosToDisplay
{
  v3 = MEMORY[0x277CBEB18];
  background = [(KNAbstractSlide *)self background];
  v5 = [v3 arrayWithObject:background];

  childInfos = [(KNAbstractSlide *)self childInfos];
  if ([childInfos count])
  {
    [v5 addObjectsFromArray:childInfos];
  }

  return v5;
}

- (void)addDrawable:(id)drawable dolcContext:(id)context
{
  drawableCopy = drawable;
  contextCopy = context;
  [(KNAbstractSlide *)self insertDrawable:drawableCopy atIndex:[(NSOrderedSet *)self->_childInfos count] dolcContext:contextCopy];
}

- (void)insertDrawable:(id)drawable atIndex:(unint64_t)index dolcContext:(id)context
{
  v11[1] = *MEMORY[0x277D85DE8];
  drawableCopy = drawable;
  contextCopy = context;
  v11[0] = drawableCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(KNAbstractSlide *)self insertDrawables:v10 atIndex:index dolcContext:contextCopy];
}

- (void)removeDrawable:(id)drawable
{
  drawableCopy = drawable;
  [(KNAbstractSlide *)self willModify];
  [(KNAbstractSlide *)self removeChildInfo:drawableCopy];
  [(KNAbstractSlide *)self removeTagForDrawable:drawableCopy];
}

- (BOOL)canMoveDrawables:(id)drawables toIndexes:(id)indexes
{
  v41 = *MEMORY[0x277D85DE8];
  drawablesCopy = drawables;
  indexesCopy = indexes;
  v8 = indexesCopy;
  if (!drawablesCopy)
  {
    v23 = MEMORY[0x277D81150];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide canMoveDrawables:toIndexes:]"];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v23 handleFailureInFunction:v24 file:v25 lineNumber:612 isFatal:0 description:{"invalid nil value for '%{public}s'", "drawables"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    if (v8)
    {
LABEL_18:
      v29 = 0;
      goto LABEL_25;
    }

LABEL_17:
    v26 = MEMORY[0x277D81150];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide canMoveDrawables:toIndexes:]"];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v26 handleFailureInFunction:v27 file:v28 lineNumber:613 isFatal:0 description:{"invalid nil value for '%{public}s'", "indexes"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    goto LABEL_18;
  }

  if (!indexesCopy)
  {
    goto LABEL_17;
  }

  v9 = [drawablesCopy count];
  v35 = [v8 count];
  lastIndex = [v8 lastIndex];
  v10 = [(NSOrderedSet *)self->_childInfos count];
  if (v9 != v35)
  {
    v11 = MEMORY[0x277D81150];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide canMoveDrawables:toIndexes:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:622 isFatal:0 description:{"Can't move drawables to indexes, counts don't match."}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (lastIndex >= v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide canMoveDrawables:toIndexes:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:623 isFatal:0 description:{"Can't move drawables to indexes, one or more indexes out of range."}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = drawablesCopy;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v18)
  {
    v19 = *v37;
    while (2)
    {
      v20 = v9;
      for (i = 0; i != v18; ++i)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v17);
        }

        if (![(NSOrderedSet *)self->_childInfos containsObject:*(*(&v36 + 1) + 8 * i)])
        {

          v9 = v20;
          v30 = MEMORY[0x277D81150];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide canMoveDrawables:toIndexes:]"];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
          [v30 handleFailureInFunction:v31 file:v32 lineNumber:631 isFatal:0 description:{"Can't move drawables to indexes, not all drawables are on this slide."}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
          v22 = 0;
          goto LABEL_20;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
      v9 = v20;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v22 = 1;
LABEL_20:
  if (lastIndex >= v10)
  {
    v22 = 0;
  }

  if (v9 == v35)
  {
    v29 = v22;
  }

  else
  {
    v29 = 0;
  }

LABEL_25:

  return v29;
}

- (void)moveChildren:(id)children toIndexes:(id)indexes
{
  childrenCopy = children;
  indexesCopy = indexes;
  if (!childrenCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide moveChildren:toIndexes:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:642 isFatal:0 description:{"invalid nil value for '%{public}s'", "children"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (!indexesCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide moveChildren:toIndexes:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:643 isFatal:0 description:{"invalid nil value for '%{public}s'", "indexes"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (childrenCopy)
  {
    v13 = [childrenCopy count];
    if (indexesCopy)
    {
      if (v13 && [indexesCopy count])
      {
        v14 = [childrenCopy count];
        v15 = [indexesCopy count];
        lastIndex = [indexesCopy lastIndex];
        v17 = [(NSOrderedSet *)self->_childInfos count];
        v18 = v17;
        if (v14 == v15)
        {
          if (lastIndex < v17)
          {
            v19 = [childrenCopy tsu_arrayByMappingObjectsUsingBlock:&unk_2884D4B40];
            v20 = [(NSOrderedSet *)self->_childInfos mutableCopy];
            [v20 removeObjectsInArray:v19];
            v21 = v18 - v14;
            if ([v20 count] != v18 - v14)
            {
              v22 = MEMORY[0x277D81150];
              v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide moveChildren:toIndexes:]"];
              v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
              [v22 handleFailureInFunction:v23 file:v24 lineNumber:661 isFatal:0 description:{"Can't move drawables to indexes, not all drawables are on this slide."}];

              [MEMORY[0x277D81150] logBacktraceThrottled];
            }

            if ([v20 count] == v21)
            {
              [(KNAbstractSlide *)self willModify];
              [v20 insertObjects:v19 atIndexes:indexesCopy];
              defaultContext = [MEMORY[0x277D805F0] defaultContext];
              [(KNAbstractSlide *)self p_setChildInfosAsOrderedSet:v20 usingDOLC:1 dolcContext:defaultContext];
            }

            goto LABEL_18;
          }
        }

        else
        {
          v26 = MEMORY[0x277D81150];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide moveChildren:toIndexes:]"];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
          [v26 handleFailureInFunction:v27 file:v28 lineNumber:651 isFatal:0 description:{"Can't move drawables to indexes, counts don't match."}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
          if (lastIndex < v18)
          {
            goto LABEL_18;
          }
        }

        v29 = MEMORY[0x277D81150];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide moveChildren:toIndexes:]"];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
        [v29 handleFailureInFunction:v30 file:v31 lineNumber:652 isFatal:0 description:{"Can't move drawables to indexes, one or more indexes out of range. movingCount: %lu, childInfosCount: %lu, indexes: %{public}@", v14, v18, indexesCopy}];

        [MEMORY[0x277D81150] logBacktraceThrottled];
      }
    }
  }

LABEL_18:
}

- (void)performBlockOnInfos:(id)infos
{
  infosCopy = infos;
  v8 = 0;
  v5 = [objc_alloc(MEMORY[0x277D80660]) initWithRootModelObject:self filter:&unk_2884D4B60];
  v6 = 0;
  do
  {
    nextObject = [v5 nextObject];

    if (!nextObject)
    {
      break;
    }

    infosCopy[2](infosCopy, nextObject, &v8);
    v6 = nextObject;
  }

  while ((v8 & 1) == 0);
}

- (id)defaultTitlePlaceholder
{
  context = [(KNAbstractSlide *)self context];
  v4 = [(KNAbstractSlide *)self defaultTitlePlaceholderWithContext:context];

  return v4;
}

- (id)defaultBodyPlaceholder
{
  context = [(KNAbstractSlide *)self context];
  v4 = [(KNAbstractSlide *)self defaultBodyPlaceholderWithContext:context];

  return v4;
}

- (id)defaultTitlePlaceholderWithContext:(id)context
{
  contextCopy = context;
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide defaultTitlePlaceholderWithContext:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:726 isFatal:0 description:{"Abstract method not overridden by %{public}@", v8}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v9 = MEMORY[0x277CBEAD8];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"Abstract method not overridden by %@: %s", v12, "-[KNAbstractSlide defaultTitlePlaceholderWithContext:]"];
  v14 = [v9 exceptionWithName:*MEMORY[0x277CBE658] reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)defaultBodyPlaceholderWithContext:(id)context
{
  contextCopy = context;
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide defaultBodyPlaceholderWithContext:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:732 isFatal:0 description:{"Abstract method not overridden by %{public}@", v8}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v9 = MEMORY[0x277CBEAD8];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"Abstract method not overridden by %@: %s", v12, "-[KNAbstractSlide defaultBodyPlaceholderWithContext:]"];
  v14 = [v9 exceptionWithName:*MEMORY[0x277CBE658] reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)defaultSlideNumberPlaceholder
{
  context = [(KNAbstractSlide *)self context];
  v4 = [(KNAbstractSlide *)self defaultSlideNumberPlaceholderWithContext:context];

  return v4;
}

- (id)defaultSlideNumberPlaceholderWithContext:(id)context
{
  contextCopy = context;
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide defaultSlideNumberPlaceholderWithContext:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:742 isFatal:0 description:{"Abstract method not overridden by %{public}@", v8}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v9 = MEMORY[0x277CBEAD8];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"Abstract method not overridden by %@: %s", v12, "-[KNAbstractSlide defaultSlideNumberPlaceholderWithContext:]"];
  v14 = [v9 exceptionWithName:*MEMORY[0x277CBE658] reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)placeholderWithPlaceholder:(id)placeholder context:(id)context placeholderClass:(Class)class
{
  placeholderCopy = placeholder;
  contextCopy = context;
  if (objc_opt_class() != class)
  {
    v9 = MEMORY[0x277D81150];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide placeholderWithPlaceholder:context:placeholderClass:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:751 isFatal:0 description:"Placeholder class must match that of the template slide placeholder object."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  geometry = [placeholderCopy geometry];
  style = [placeholderCopy style];
  textStorage = [placeholderCopy textStorage];
  v15 = [textStorage newSubstorageWithRange:0 context:0 flags:{contextCopy, 0}];

  pathSource = [placeholderCopy pathSource];
  v17 = [[class alloc] initWithContext:contextCopy geometry:geometry style:style pathSource:pathSource wpStorage:v15];
  hyperlinkURL = [placeholderCopy hyperlinkURL];
  [v17 setHyperlinkURL:hyperlinkURL];

  return v17;
}

- (id)placeholderWithPlaceholder:(id)placeholder context:(id)context
{
  placeholderCopy = placeholder;
  contextCopy = context;
  v8 = [(KNAbstractSlide *)self placeholderWithPlaceholder:placeholderCopy context:contextCopy placeholderClass:objc_opt_class()];

  return v8;
}

- (id)placeholderOfClass:(Class)class withGeometry:(id)geometry stylesheet:(id)stylesheet shapePresetIndex:(int64_t)index textPresetIndex:(int64_t)presetIndex layoutPropertyMap:(id)map paragraphPropertyMap:(id)propertyMap listPropertyMap:(id)self0 context:(id)self1
{
  geometryCopy = geometry;
  stylesheetCopy = stylesheet;
  mapCopy = map;
  propertyMapCopy = propertyMap;
  listPropertyMapCopy = listPropertyMap;
  contextCopy = context;
  objc_opt_class();
  documentRoot = [(KNAbstractSlide *)self documentRoot];
  theme = [documentRoot theme];
  v21 = TSUDynamicCast();

  v27 = v21;
  v22 = [v21 presetOfKind:*MEMORY[0x277D80BB0] index:presetIndex];
  paragraphStyle = [v22 paragraphStyle];
  listStyle = [v22 listStyle];
  v25 = [(KNAbstractSlide *)self placeholderOfClass:class withGeometry:geometryCopy stylesheet:stylesheetCopy shapePresetIndex:index textPresetStyle:paragraphStyle listStyle:listStyle layoutPropertyMap:mapCopy paragraphPropertyMap:propertyMapCopy listPropertyMap:listPropertyMapCopy context:contextCopy];

  return v25;
}

- (id)placeholderOfClass:(Class)class withGeometry:(id)geometry stylesheet:(id)stylesheet shapePresetIndex:(int64_t)index textPresetStyle:(id)style layoutPropertyMap:(id)map paragraphPropertyMap:(id)propertyMap listPropertyMap:(id)self0 context:(id)self1
{
  geometryCopy = geometry;
  stylesheetCopy = stylesheet;
  styleCopy = style;
  mapCopy = map;
  propertyMapCopy = propertyMap;
  listPropertyMapCopy = listPropertyMap;
  contextCopy = context;
  initialListStyle = [styleCopy initialListStyle];
  v21 = initialListStyle;
  if (initialListStyle)
  {
    defaultListStyle = initialListStyle;
  }

  else
  {
    documentRoot = [(KNAbstractSlide *)self documentRoot];
    theme = [documentRoot theme];
    defaultListStyle = [theme defaultListStyle];
  }

  v25 = [(KNAbstractSlide *)self placeholderOfClass:class withGeometry:geometryCopy stylesheet:stylesheetCopy shapePresetIndex:index textPresetStyle:styleCopy listStyle:defaultListStyle layoutPropertyMap:mapCopy paragraphPropertyMap:propertyMapCopy listPropertyMap:listPropertyMapCopy context:contextCopy];

  return v25;
}

- (id)placeholderOfClass:(Class)class withGeometry:(id)geometry stylesheet:(id)stylesheet shapePresetIndex:(int64_t)index textPresetStyle:(id)style listStyle:(id)listStyle layoutPropertyMap:(id)map paragraphPropertyMap:(id)self0 listPropertyMap:(id)self1 context:(id)self2
{
  geometryCopy = geometry;
  stylesheetCopy = stylesheet;
  styleCopy = style;
  listStyleCopy = listStyle;
  mapCopy = map;
  propertyMapCopy = propertyMap;
  listPropertyMapCopy = listPropertyMap;
  contextCopy = context;
  v37 = stylesheetCopy;
  v41 = propertyMapCopy;
  objc_opt_class();
  documentRoot = [(KNAbstractSlide *)self documentRoot];
  theme = [documentRoot theme];
  v22 = TSUDynamicCast();

  v36 = v22;
  v23 = [v22 presetOfKind:*MEMORY[0x277D80BB8] index:index];
  if (mapCopy && [mapCopy count])
  {
    v24 = [stylesheetCopy variationOfStyle:v23 propertyMap:mapCopy context:contextCopy];

    v23 = v24;
  }

  v25 = styleCopy;
  v26 = [propertyMapCopy count];
  v27 = v25;
  if (v26)
  {
    v27 = [stylesheetCopy variationOfStyle:v25 propertyMap:v41 context:contextCopy];
  }

  v28 = listStyleCopy;
  v29 = v28;
  if ([listPropertyMapCopy count])
  {
    v29 = [stylesheetCopy variationOfStyle:v28 propertyMap:listPropertyMapCopy context:contextCopy];
  }

  v30 = [objc_alloc(MEMORY[0x277D80F28]) initWithContext:contextCopy string:&stru_2884D8E20 kind:3 stylesheet:stylesheetCopy paragraphStyle:v27 listStyle:v29 section:0 columnStyle:0];
  v31 = objc_alloc(MEMORY[0x277D801C8]);
  [geometryCopy size];
  v32 = [v31 initWithNaturalSize:?];
  v33 = [[class alloc] initWithContext:contextCopy geometry:geometryCopy style:v23 pathSource:v32 wpStorage:v30];

  return v33;
}

- (void)setTitlePlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (placeholderCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x277D81150];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide setTitlePlaceholder:]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:871 isFatal:0 description:{"Title placeholder must be of type KNTitlePlaceholderInfo. Was: %@", objc_opt_class()}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  if (self->_titlePlaceholder != placeholderCopy)
  {
    [(KNAbstractSlide *)self willModify];
    v8 = self->_titlePlaceholder;
    inDocument = [(KNAbstractSlide *)self inDocument];
    v10 = inDocument;
    if (v8)
    {
      v11 = inDocument;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      childInfos = [(KNAbstractSlide *)self childInfos];
      v13 = [childInfos containsObject:v8] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = !v10;
    if (!placeholderCopy)
    {
      v14 = 1;
    }

    if (v14)
    {
      v16 = 0;
      if (!v13)
      {
LABEL_18:
        if (v16)
        {
          documentRoot = [(KNAbstractSlide *)self documentRoot];
          [(KNTitlePlaceholderInfo *)placeholderCopy willBeAddedToDocumentRoot:documentRoot dolcContext:0];
        }

        objc_storeStrong(&self->_titlePlaceholder, placeholder);
        [(KNTitlePlaceholderInfo *)self->_titlePlaceholder setParentInfo:self];
        if (v13)
        {
          documentRoot2 = [(KNAbstractSlide *)self documentRoot];
          [(KNTitlePlaceholderInfo *)v8 wasRemovedFromDocumentRoot:documentRoot2];
        }

        if (v16)
        {
          documentRoot3 = [(KNAbstractSlide *)self documentRoot];
          [(KNTitlePlaceholderInfo *)placeholderCopy wasAddedToDocumentRoot:documentRoot3 dolcContext:0];
        }

        goto LABEL_25;
      }
    }

    else
    {
      childInfos2 = [(KNAbstractSlide *)self childInfos];
      v16 = [childInfos2 containsObject:placeholderCopy] ^ 1;

      if (!v13)
      {
        goto LABEL_18;
      }
    }

    titlePlaceholder = self->_titlePlaceholder;
    documentRoot4 = [(KNAbstractSlide *)self documentRoot];
    [(KNTitlePlaceholderInfo *)titlePlaceholder willBeRemovedFromDocumentRoot:documentRoot4];

    [(KNTitlePlaceholderInfo *)self->_titlePlaceholder setParentInfo:0];
    goto LABEL_18;
  }

LABEL_25:
}

- (void)setBodyPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (placeholderCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x277D81150];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide setBodyPlaceholder:]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:904 isFatal:0 description:{"Body placeholder must be of type KNBodyPlaceholderInfo. Was: %@", objc_opt_class()}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  if (self->_bodyPlaceholder != placeholderCopy)
  {
    [(KNAbstractSlide *)self willModify];
    v8 = self->_bodyPlaceholder;
    inDocument = [(KNAbstractSlide *)self inDocument];
    v10 = inDocument;
    if (v8)
    {
      v11 = inDocument;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      childInfos = [(KNAbstractSlide *)self childInfos];
      v13 = [childInfos containsObject:v8] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = !v10;
    if (!placeholderCopy)
    {
      v14 = 1;
    }

    if (v14)
    {
      v16 = 0;
      if (!v13)
      {
LABEL_18:
        if (v16)
        {
          documentRoot = [(KNAbstractSlide *)self documentRoot];
          [(KNBodyPlaceholderInfo *)placeholderCopy willBeAddedToDocumentRoot:documentRoot dolcContext:0];
        }

        objc_storeStrong(&self->_bodyPlaceholder, placeholder);
        [(KNBodyPlaceholderInfo *)self->_bodyPlaceholder setParentInfo:self];
        if (v13)
        {
          documentRoot2 = [(KNAbstractSlide *)self documentRoot];
          [(KNBodyPlaceholderInfo *)v8 wasRemovedFromDocumentRoot:documentRoot2];
        }

        if (v16)
        {
          documentRoot3 = [(KNAbstractSlide *)self documentRoot];
          [(KNBodyPlaceholderInfo *)placeholderCopy wasAddedToDocumentRoot:documentRoot3 dolcContext:0];
        }

        goto LABEL_25;
      }
    }

    else
    {
      childInfos2 = [(KNAbstractSlide *)self childInfos];
      v16 = [childInfos2 containsObject:placeholderCopy] ^ 1;

      if (!v13)
      {
        goto LABEL_18;
      }
    }

    bodyPlaceholder = self->_bodyPlaceholder;
    documentRoot4 = [(KNAbstractSlide *)self documentRoot];
    [(KNBodyPlaceholderInfo *)bodyPlaceholder willBeRemovedFromDocumentRoot:documentRoot4];

    [(KNBodyPlaceholderInfo *)self->_bodyPlaceholder setParentInfo:0];
    goto LABEL_18;
  }

LABEL_25:
}

- (void)setObjectPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (self->_objectPlaceholder == placeholderCopy)
  {
    goto LABEL_22;
  }

  [(KNAbstractSlide *)self willModify];
  v5 = self->_objectPlaceholder;
  inDocument = [(KNAbstractSlide *)self inDocument];
  v7 = inDocument;
  if (v5)
  {
    v8 = inDocument;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    childInfos = [(KNAbstractSlide *)self childInfos];
    v10 = [childInfos containsObject:v5] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v7;
  if (!placeholderCopy)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    childInfos2 = [(KNAbstractSlide *)self childInfos];
    v13 = [childInfos2 containsObject:placeholderCopy] ^ 1;

    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = 0;
  if (v10)
  {
LABEL_14:
    objectPlaceholder = self->_objectPlaceholder;
    documentRoot = [(KNAbstractSlide *)self documentRoot];
    [(KNObjectPlaceholderInfo *)objectPlaceholder willBeRemovedFromDocumentRoot:documentRoot];

    [(KNObjectPlaceholderInfo *)self->_objectPlaceholder setParentInfo:0];
  }

LABEL_15:
  if (v13)
  {
    documentRoot2 = [(KNAbstractSlide *)self documentRoot];
    [(KNObjectPlaceholderInfo *)placeholderCopy willBeAddedToDocumentRoot:documentRoot2 dolcContext:0];
  }

  objc_storeStrong(&self->_objectPlaceholder, placeholder);
  [(KNObjectPlaceholderInfo *)self->_objectPlaceholder setParentInfo:self];
  if (v10)
  {
    documentRoot3 = [(KNAbstractSlide *)self documentRoot];
    [(KNObjectPlaceholderInfo *)v5 wasRemovedFromDocumentRoot:documentRoot3];
  }

  if (v13)
  {
    documentRoot4 = [(KNAbstractSlide *)self documentRoot];
    [(KNObjectPlaceholderInfo *)placeholderCopy wasAddedToDocumentRoot:documentRoot4 dolcContext:0];
  }

LABEL_22:
}

- (void)setSlideNumberPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (self->_slideNumberPlaceholder == placeholderCopy)
  {
    goto LABEL_22;
  }

  [(KNAbstractSlide *)self willModify];
  v5 = self->_slideNumberPlaceholder;
  inDocument = [(KNAbstractSlide *)self inDocument];
  v7 = inDocument;
  if (v5)
  {
    v8 = inDocument;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    childInfos = [(KNAbstractSlide *)self childInfos];
    v10 = [childInfos containsObject:v5] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v7;
  if (!placeholderCopy)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    childInfos2 = [(KNAbstractSlide *)self childInfos];
    v13 = [childInfos2 containsObject:placeholderCopy] ^ 1;

    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = 0;
  if (v10)
  {
LABEL_14:
    slideNumberPlaceholder = self->_slideNumberPlaceholder;
    documentRoot = [(KNAbstractSlide *)self documentRoot];
    [(KNSlideNumberPlaceholderInfo *)slideNumberPlaceholder willBeRemovedFromDocumentRoot:documentRoot];

    [(KNSlideNumberPlaceholderInfo *)self->_slideNumberPlaceholder setParentInfo:0];
  }

LABEL_15:
  if (v13)
  {
    documentRoot2 = [(KNAbstractSlide *)self documentRoot];
    [(KNSlideNumberPlaceholderInfo *)placeholderCopy willBeAddedToDocumentRoot:documentRoot2 dolcContext:0];
  }

  objc_storeStrong(&self->_slideNumberPlaceholder, placeholder);
  [(KNSlideNumberPlaceholderInfo *)self->_slideNumberPlaceholder setParentInfo:self];
  if (v10)
  {
    documentRoot3 = [(KNAbstractSlide *)self documentRoot];
    [(KNSlideNumberPlaceholderInfo *)v5 wasRemovedFromDocumentRoot:documentRoot3];
  }

  if (v13)
  {
    documentRoot4 = [(KNAbstractSlide *)self documentRoot];
    [(KNSlideNumberPlaceholderInfo *)placeholderCopy wasAddedToDocumentRoot:documentRoot4 dolcContext:0];
  }

LABEL_22:
}

- (BOOL)isTitleVisible
{
  if (!self->_titlePlaceholder)
  {
    return 0;
  }

  childInfos = [(KNAbstractSlide *)self childInfos];
  v4 = [childInfos containsObject:self->_titlePlaceholder];

  return v4;
}

- (BOOL)isBodyVisible
{
  if (!self->_bodyPlaceholder)
  {
    return 0;
  }

  childInfos = [(KNAbstractSlide *)self childInfos];
  v4 = [childInfos containsObject:self->_bodyPlaceholder];

  return v4;
}

- (BOOL)isSlideNumberVisible
{
  if (!self->_slideNumberPlaceholder)
  {
    return 0;
  }

  childInfos = [(KNAbstractSlide *)self childInfos];
  v4 = [childInfos containsObject:self->_slideNumberPlaceholder];

  return v4;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  ownedChildInfos = [(KNAbstractSlide *)self ownedChildInfos];
  v9 = [ownedChildInfos countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(ownedChildInfos);
        }

        [*(*(&v17 + 1) + 8 * v11++) willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
      }

      while (v9 != v11);
      v9 = [ownedChildInfos countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if (![(KNAbstractSlide *)self isTitleVisible])
  {
    titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];
    [titlePlaceholder willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  }

  if (![(KNAbstractSlide *)self isBodyVisible])
  {
    bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];
    [bodyPlaceholder willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  }

  if (![(KNAbstractSlide *)self isObjectVisible])
  {
    objectPlaceholder = [(KNAbstractSlide *)self objectPlaceholder];
    [objectPlaceholder willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  }

  if (![(KNAbstractSlide *)self isSlideNumberVisible])
  {
    slideNumberPlaceholder = [(KNAbstractSlide *)self slideNumberPlaceholder];
    [slideNumberPlaceholder willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  }

  background = [(KNAbstractSlide *)self background];
  [background willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v45 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  context = [rootCopy context];
  [(KNAbstractSlide *)self wasAddedToDocumentWithContext:context];

  [(KNAbstractSlide *)self setInDocument:1];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  ownedChildInfos = [(KNAbstractSlide *)self ownedChildInfos];
  v10 = [ownedChildInfos countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v10)
  {
    v11 = *v39;
    do
    {
      v12 = 0;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(ownedChildInfos);
        }

        [*(*(&v38 + 1) + 8 * v12++) wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
      }

      while (v10 != v12);
      v10 = [ownedChildInfos countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v10);
  }

  if (![(KNAbstractSlide *)self isTitleVisible])
  {
    titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];
    [titlePlaceholder wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  }

  if (![(KNAbstractSlide *)self isBodyVisible])
  {
    bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];
    [bodyPlaceholder wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  }

  if (![(KNAbstractSlide *)self isObjectVisible])
  {
    objectPlaceholder = [(KNAbstractSlide *)self objectPlaceholder];
    [objectPlaceholder wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  }

  if (![(KNAbstractSlide *)self isSlideNumberVisible])
  {
    slideNumberPlaceholder = [(KNAbstractSlide *)self slideNumberPlaceholder];
    [slideNumberPlaceholder wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  builds = [(KNAbstractSlide *)self builds];
  v18 = [builds countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v18)
  {
    v19 = *v35;
    do
    {
      v20 = 0;
      do
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(builds);
        }

        v21 = *(*(&v34 + 1) + 8 * v20);
        context2 = [rootCopy context];
        [v21 wasAddedToDocumentWithContext:context2];

        ++v20;
      }

      while (v18 != v20);
      v18 = [builds countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v18);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  buildChunks = [(KNAbstractSlide *)self buildChunks];
  v24 = [buildChunks countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v24)
  {
    v25 = *v31;
    do
    {
      v26 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(buildChunks);
        }

        v27 = *(*(&v30 + 1) + 8 * v26);
        context3 = [rootCopy context];
        [v27 wasAddedToDocumentWithContext:context3];

        ++v26;
      }

      while (v24 != v26);
      v24 = [buildChunks countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v24);
  }

  background = [(KNAbstractSlide *)self background];
  [background wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v42 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  ownedChildInfos = [(KNAbstractSlide *)self ownedChildInfos];
  v6 = [ownedChildInfos countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v6)
  {
    v7 = *v36;
    do
    {
      v8 = 0;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(ownedChildInfos);
        }

        [*(*(&v35 + 1) + 8 * v8++) willBeRemovedFromDocumentRoot:rootCopy];
      }

      while (v6 != v8);
      v6 = [ownedChildInfos countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v6);
  }

  if (![(KNAbstractSlide *)self isTitleVisible])
  {
    titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];
    [titlePlaceholder willBeRemovedFromDocumentRoot:rootCopy];
  }

  if (![(KNAbstractSlide *)self isBodyVisible])
  {
    bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];
    [bodyPlaceholder willBeRemovedFromDocumentRoot:rootCopy];
  }

  if (![(KNAbstractSlide *)self isObjectVisible])
  {
    objectPlaceholder = [(KNAbstractSlide *)self objectPlaceholder];
    [objectPlaceholder willBeRemovedFromDocumentRoot:rootCopy];
  }

  if (![(KNAbstractSlide *)self isSlideNumberVisible])
  {
    slideNumberPlaceholder = [(KNAbstractSlide *)self slideNumberPlaceholder];
    [slideNumberPlaceholder willBeRemovedFromDocumentRoot:rootCopy];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  builds = [(KNAbstractSlide *)self builds];
  v14 = [builds countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v14)
  {
    v15 = *v32;
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(builds);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        context = [rootCopy context];
        [v17 willBeRemovedFromDocumentWithContext:context];

        ++v16;
      }

      while (v14 != v16);
      v14 = [builds countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v14);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  buildChunks = [(KNAbstractSlide *)self buildChunks];
  v20 = [buildChunks countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v20)
  {
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(buildChunks);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        context2 = [rootCopy context];
        [v23 willBeRemovedFromDocumentWithContext:context2];

        ++v22;
      }

      while (v20 != v22);
      v20 = [buildChunks countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v20);
  }

  background = [(KNAbstractSlide *)self background];
  [background willBeRemovedFromDocumentRoot:rootCopy];

  context3 = [rootCopy context];
  [(KNAbstractSlide *)self willBeRemovedFromDocumentWithContext:context3];

  [(KNAbstractSlide *)self setInDocument:0];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v19 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  ownedChildInfos = [(KNAbstractSlide *)self ownedChildInfos];
  v6 = [ownedChildInfos countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(ownedChildInfos);
        }

        [*(*(&v14 + 1) + 8 * v8++) wasRemovedFromDocumentRoot:rootCopy];
      }

      while (v6 != v8);
      v6 = [ownedChildInfos countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if (![(KNAbstractSlide *)self isTitleVisible])
  {
    titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];
    [titlePlaceholder wasRemovedFromDocumentRoot:rootCopy];
  }

  if (![(KNAbstractSlide *)self isBodyVisible])
  {
    bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];
    [bodyPlaceholder wasRemovedFromDocumentRoot:rootCopy];
  }

  if (![(KNAbstractSlide *)self isObjectVisible])
  {
    objectPlaceholder = [(KNAbstractSlide *)self objectPlaceholder];
    [objectPlaceholder wasRemovedFromDocumentRoot:rootCopy];
  }

  if (![(KNAbstractSlide *)self isSlideNumberVisible])
  {
    slideNumberPlaceholder = [(KNAbstractSlide *)self slideNumberPlaceholder];
    [slideNumberPlaceholder wasRemovedFromDocumentRoot:rootCopy];
  }

  background = [(KNAbstractSlide *)self background];
  [background wasRemovedFromDocumentRoot:rootCopy];
}

- (void)setInfo:(id)info forSageTag:(id)tag
{
  infoCopy = info;
  tagCopy = tag;
  [(KNAbstractSlide *)self willModify];
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_placeholdersForTags];
  [v7 setObject:infoCopy forKeyedSubscript:tagCopy];
  [(KNAbstractSlide *)self setPlaceholdersForTags:v7];
}

- (id)infoForTag:(id)tag
{
  tagCopy = tag;
  objc_opt_class();
  v5 = [(NSDictionary *)self->_placeholdersForTags objectForKeyedSubscript:tagCopy];
  v6 = TSUDynamicCast();

  return v6;
}

- (BOOL)infoExistsForTag:(id)tag
{
  v3 = [(KNAbstractSlide *)self infoForTag:tag];
  v4 = v3 != 0;

  return v4;
}

- (id)tagForInfo:(id)info
{
  infoCopy = info;
  placeholdersForTags = [(KNAbstractSlide *)self placeholdersForTags];
  v6 = [placeholdersForTags allKeysForObject:infoCopy];

  if ([v6 count])
  {
    if ([v6 count] != 1)
    {
      v7 = MEMORY[0x277D81150];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide tagForInfo:]"];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
      [v7 handleFailureInFunction:v8 file:v9 lineNumber:1145 isFatal:0 description:"Multiple tags for a single placeholder"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v10 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasTagForInfo:(id)info
{
  infoCopy = info;
  placeholdersForTags = [(KNAbstractSlide *)self placeholdersForTags];
  allValues = [placeholdersForTags allValues];
  v7 = [allValues containsObject:infoCopy];

  return v7;
}

- (BOOL)infoIsPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];
  if (titlePlaceholder == placeholderCopy)
  {
    goto LABEL_8;
  }

  bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];
  if (bodyPlaceholder == placeholderCopy)
  {
LABEL_7:

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  objectPlaceholder = [(KNAbstractSlide *)self objectPlaceholder];
  v8 = objectPlaceholder;
  if (objectPlaceholder == placeholderCopy)
  {

    goto LABEL_7;
  }

  slideNumberPlaceholder = [(KNAbstractSlide *)self slideNumberPlaceholder];

  if (slideNumberPlaceholder == placeholderCopy)
  {
    v10 = 1;
    goto LABEL_10;
  }

  titlePlaceholder = [(KNAbstractSlide *)self tagForInfo:placeholderCopy];
  v10 = titlePlaceholder != 0;
LABEL_9:

LABEL_10:
  return v10;
}

- (void)removeTagForDrawable:(id)drawable
{
  drawableCopy = drawable;
  [(KNAbstractSlide *)self willModify];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_placeholdersForTags];
  v5 = [(NSDictionary *)self->_placeholdersForTags allKeysForObject:drawableCopy];
  [v4 removeObjectsForKeys:v5];

  [(KNAbstractSlide *)self setPlaceholdersForTags:v4];
}

- (BOOL)hasFreeformTextPlaceholders
{
  v16 = *MEMORY[0x277D85DE8];
  placeholdersForTags = [(KNAbstractSlide *)self placeholdersForTags];
  allValues = [placeholdersForTags allValues];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = allValues;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        v8 = TSUDynamicCast();
        v9 = v8 == 0;

        if (!v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)instructionalTextForInfo:(id)info
{
  v3 = [(NSMapTable *)self->_instructionalTextForInfos objectForKeyedSubscript:info];

  return v3;
}

- (void)setInstructionalText:(id)text forInfo:(id)info
{
  textCopy = text;
  infoCopy = info;
  [(KNAbstractSlide *)self willModify];
  if (textCopy && [textCopy length])
  {
    [(NSMapTable *)self->_instructionalTextForInfos setObject:textCopy forKeyedSubscript:infoCopy];
  }

  else
  {
    [(NSMapTable *)self->_instructionalTextForInfos removeObjectForKey:infoCopy];
  }
}

- (void)p_invalidateAllChunkAndBuildCaches
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_buildChunks;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v16 + 1) + 8 * i) i_invalidateCaches];
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_builds;
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (j = 0; j != v8; ++j)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * j);
        [v11 i_invalidateChunkCache];
        [(KNAbstractSlide *)self p_assertChunksInSequenceForBuild:v11];
      }

      v8 = [(NSSet *)v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v8);
  }

  [(KNAbstractSlide *)self p_invalidateSlideNodeBuildEventCountCaches];
}

- (void)p_invalidateCachesForChunkUpdate:(id)update isForRemoval:(BOOL)removal
{
  v26 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (!updateCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide p_invalidateCachesForChunkUpdate:isForRemoval:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:1402 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "chunk != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  build = [updateCopy build];
  if (!build)
  {
    v11 = MEMORY[0x277D81150];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide p_invalidateCachesForChunkUpdate:isForRemoval:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:1406 isFatal:0 description:{"invalid nil value for '%{public}s'", "build"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [build i_invalidateChunkCache];
  if (!removal)
  {
    if (![(NSArray *)self->_buildChunks containsObject:updateCopy])
    {
      v14 = MEMORY[0x277D81150];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide p_invalidateCachesForChunkUpdate:isForRemoval:]"];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
      [v14 handleFailureInFunction:v15 file:v16 lineNumber:1411 isFatal:0 description:"Expected chunk to already be part of the chunks on the slide."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = self->_buildChunks;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v18)
    {
      v19 = *v22;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v21 + 1) + 8 * i) i_invalidateCaches];
        }

        v18 = [(NSArray *)v17 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v18);
    }
  }

  [(KNAbstractSlide *)self p_invalidateSlideNodeBuildEventCountCaches];
  [(KNAbstractSlide *)self i_invalidateActiveChunkCache];
}

- (void)p_invalidateCachesForBuildUpdate:(id)update isForRemoval:(BOOL)removal
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (!updateCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide p_invalidateCachesForBuildUpdate:isForRemoval:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:1433 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "build != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  chunks = [updateCopy chunks];
  v11 = [chunks countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(chunks);
        }

        [*(*(&v14 + 1) + 8 * i) i_invalidateCaches];
      }

      v11 = [chunks countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  if (!removal)
  {
    [updateCopy i_invalidateChunkCache];
    [(KNAbstractSlide *)self p_assertChunksInSequenceForBuild:updateCopy];
  }

  [(KNAbstractSlide *)self p_invalidateSlideNodeBuildEventCountCaches];
}

- (void)p_invalidateSlideNodeBuildEventCountCaches
{
  slideNode = [(KNAbstractSlide *)self slideNode];
  if (slideNode)
  {
    v5 = slideNode;
    [slideNode invalidateBuildEventCountCaches];
    v4 = 0;
    slideNode = v5;
  }

  else
  {
    v4 = 1;
  }

  self->_needsSlideNodeEventCountUpdate = v4;
}

- (void)setBuilds:(id)builds
{
  buildsCopy = builds;
  [(KNAbstractSlide *)self willModify];
  if (self->_builds != buildsCopy)
  {
    v4 = [(NSSet *)buildsCopy copy];
    builds = self->_builds;
    self->_builds = v4;

    [(KNAbstractSlide *)self p_invalidateAllChunkAndBuildCaches];
  }
}

- (void)addBuild:(id)build
{
  buildCopy = build;
  [(KNAbstractSlide *)self i_primitiveAddBuild:?];
  [(KNAbstractSlide *)self p_invalidateCachesForBuildUpdate:buildCopy isForRemoval:0];
}

- (void)removeBuild:(id)build
{
  buildCopy = build;
  [(KNAbstractSlide *)self willModify];
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:self->_builds];
  context = [(KNAbstractSlide *)self context];
  [buildCopy willBeRemovedFromDocumentWithContext:context];

  [v4 removeObject:buildCopy];
  objc_storeStrong(&self->_builds, v4);
  [(KNAbstractSlide *)self p_invalidateCachesForBuildUpdate:buildCopy isForRemoval:1];
}

- (id)buildsForDrawables:(id)drawables
{
  drawablesCopy = drawables;
  builds = [(KNAbstractSlide *)self builds];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_275D4C180;
  v9[3] = &unk_27A697928;
  v6 = drawablesCopy;
  v10 = v6;
  v7 = [builds objectsPassingTest:v9];

  return v7;
}

- (id)buildsForDrawable:(id)drawable type:(int64_t)type
{
  drawableCopy = drawable;
  builds = [(KNAbstractSlide *)self builds];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275D4C2D0;
  v11[3] = &unk_27A697950;
  v8 = drawableCopy;
  v12 = v8;
  typeCopy = type;
  v9 = [builds objectsPassingTest:v11];

  return v9;
}

- (id)buildsForDrawable:(id)drawable
{
  v3 = [(KNAbstractSlide *)self buildsForDrawable:drawable type:0];

  return v3;
}

- (id)inBuildForDrawable:(id)drawable
{
  v3 = [(KNAbstractSlide *)self buildsForDrawable:drawable type:1];
  tsu_onlyObject = [v3 tsu_onlyObject];

  return tsu_onlyObject;
}

- (id)outBuildForDrawable:(id)drawable
{
  v3 = [(KNAbstractSlide *)self buildsForDrawable:drawable type:2];
  tsu_onlyObject = [v3 tsu_onlyObject];

  return tsu_onlyObject;
}

- (id)contentBuildForDrawable:(id)drawable
{
  v3 = [(KNAbstractSlide *)self buildsForDrawable:drawable type:5];
  tsu_onlyObject = [v3 tsu_onlyObject];

  return tsu_onlyObject;
}

- (id)p_invalidBuildsOnDrawable:(id)drawable
{
  v22 = *MEMORY[0x277D85DE8];
  drawableCopy = drawable;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:1];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  builds = [(KNAbstractSlide *)self builds];
  v7 = [builds countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(builds);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        drawable = [v10 drawable];
        v12 = drawable == drawableCopy;

        if (v12)
        {
          animationFilters = [drawableCopy animationFilters];
          animationFilter = [v10 animationFilter];
          v15 = [animationFilters containsObject:animationFilter];

          if ((v15 & 1) == 0)
          {
            [v5 addObject:v10];
          }
        }
      }

      v7 = [builds countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)setBuildChunks:(id)chunks generateIdentifiers:(BOOL)identifiers
{
  identifiersCopy = identifiers;
  v20 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  [(KNAbstractSlide *)self willModify];
  if (self->_buildChunks != chunksCopy)
  {
    if (identifiersCopy)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = chunksCopy;
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = *v16;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            build = [v11 build];
            [build i_generateAndApplyNewChunkIdentifierToChunk:v11];
            [build i_registerBuildChunkIdentifierForChunk:v11];
          }

          v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v8);
      }
    }

    v13 = [(NSArray *)chunksCopy copy];
    buildChunks = self->_buildChunks;
    self->_buildChunks = v13;

    [(KNAbstractSlide *)self p_invalidateAllChunkAndBuildCaches];
  }
}

- (void)p_assertChunksInSequenceForBuild:(id)build
{
  v26 = *MEMORY[0x277D85DE8];
  chunks = [build chunks];
  buildChunks = [(KNAbstractSlide *)self buildChunks];
  firstObject = [chunks firstObject];
  v19 = [buildChunks indexOfObject:firstObject];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = chunks;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v22;
    do
    {
      v8 = 0;
      v17 = v6 + v5;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        if ([buildChunks indexOfObject:v9] < (v19 + v6))
        {
          v10 = MEMORY[0x277D81150];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide p_assertChunksInSequenceForBuild:]"];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
          [v10 handleFailureInFunction:v11 file:v12 lineNumber:1602 isFatal:0 description:"Chunks out of sequence on slide."];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        if (v6 != [v9 indexInBuild])
        {
          v13 = MEMORY[0x277D81150];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide p_assertChunksInSequenceForBuild:]"];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
          [v13 handleFailureInFunction:v14 file:v15 lineNumber:1603 isFatal:0 description:"Chunks out of sequence in build."];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        ++v6;
        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      v6 = v17;
    }

    while (v5);
  }
}

- (void)insertBuildChunk:(id)chunk afterChunk:(id)afterChunk generateIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  chunkCopy = chunk;
  afterChunkCopy = afterChunk;
  [(KNAbstractSlide *)self i_primitiveInsertBuildChunk:chunkCopy afterChunk:afterChunkCopy generateIdentifier:identifierCopy];
  [(KNAbstractSlide *)self p_invalidateCachesForChunkUpdate:chunkCopy isForRemoval:0];
}

- (void)removeBuildChunk:(id)chunk rollbackGeneratedIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  chunkCopy = chunk;
  [(KNAbstractSlide *)self willModify];
  if (identifierCopy)
  {
    build = [chunkCopy build];
    [build i_rollbackChunkIDSeedForChunk:chunkCopy];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_buildChunks];
  context = [(KNAbstractSlide *)self context];
  [chunkCopy willBeRemovedFromDocumentWithContext:context];

  [v7 removeObject:chunkCopy];
  v9 = [v7 count];
  if (v9 >= [(NSArray *)self->_buildChunks count])
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide removeBuildChunk:rollbackGeneratedIdentifier:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:1638 isFatal:0 description:"Removing a build chunk should result in fewer build chunks."];

    [MEMORY[0x277D81150] logFullBacktrace];
  }

  objc_storeStrong(&self->_buildChunks, v7);
  [(KNAbstractSlide *)self p_invalidateCachesForChunkUpdate:chunkCopy isForRemoval:1];
}

- (id)availableEventTriggersForBuildChunks:(id)chunks
{
  if ([(KNAbstractSlide *)self canSetChunksToAutomaticWith:chunks])
  {
    return &unk_2884F3D48;
  }

  else
  {
    return &unk_2884F3D60;
  }
}

- (BOOL)canSetChunksToAutomaticWith:(id)with
{
  v44 = *MEMORY[0x277D85DE8];
  withCopy = with;
  if (!withCopy)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide canSetChunksToAutomaticWith:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:1659 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "chunksToSetToWith != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  buildChunks = [(KNAbstractSlide *)self buildChunks];
  firstObject = [buildChunks firstObject];

  v30 = firstObject;
  if ([withCopy containsObject:firstObject])
  {
    v9 = 0;
  }

  else
  {
    v24 = [(KNAbstractSlide *)self p_chunksWhichWillPlayWithChunksToSetToWith:withCopy];
    v32 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v24, "count")}];
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v24;
    v23 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v23)
    {
      v25 = *v39;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v38 + 1) + 8 * i);
          if ([v10 indexOnSlide] == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_37;
          }

          build = [v10 build];
          if ([v32 containsObject:build])
          {
            goto LABEL_36;
          }

          [v32 addObject:build];
          drawable = [build drawable];
          v12 = [strongToStrongObjectsMapTable objectForKey:?];
          if (v12)
          {
            if (![build isActionBuild] || (objc_msgSend(build, "isEmphasisBuild") & 1) != 0 || (objc_msgSend(build, "isContentBuild") & 1) != 0)
            {
LABEL_35:

LABEL_36:
LABEL_37:
              v9 = 0;
              goto LABEL_38;
            }

            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v29 = v12;
            v13 = [v29 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v13)
            {
              v14 = *v35;
              while (2)
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v35 != v14)
                  {
                    objc_enumerationMutation(v29);
                  }

                  build2 = [*(*(&v34 + 1) + 8 * j) build];
                  if (![build2 isActionBuild] || (objc_msgSend(build2, "isEmphasisBuild") & 1) != 0 || (objc_msgSend(build2, "isContentBuild") & 1) != 0)
                  {

LABEL_34:
                    goto LABEL_35;
                  }

                  effect = [build2 effect];
                  effect2 = [build effect];
                  v19 = [effect isEqualToString:effect2];

                  if (v19)
                  {
                    goto LABEL_34;
                  }
                }

                v13 = [v29 countByEnumeratingWithState:&v34 objects:v42 count:16];
                if (v13)
                {
                  continue;
                }

                break;
              }
            }

            v20 = [v29 setByAddingObject:v10];

            v21 = v20;
          }

          else
          {
            v21 = [MEMORY[0x277CBEB98] setWithObject:v10];
          }

          [strongToStrongObjectsMapTable setObject:v21 forKey:drawable];
        }

        v9 = 1;
        v23 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 1;
    }

LABEL_38:
  }

  return v9;
}

- (id)chunksWhichPlayWithChunk:(id)chunk
{
  chunkCopy = chunk;
  if ([chunkCopy isAutomatic])
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:chunkCopy];
    v6 = [(KNAbstractSlide *)self p_chunksWhichWillPlayWithChunksToSetToWith:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:chunkCopy];
  }

  return v6;
}

- (id)p_chunksWhichWillPlayWithChunksToSetToWith:(id)with
{
  v26 = *MEMORY[0x277D85DE8];
  withCopy = with;
  buildChunks = [(KNAbstractSlide *)self buildChunks];
  v6 = [buildChunks count];
  v7 = [withCopy mutableCopy];
  v8 = [MEMORY[0x277CBEB58] setWithCapacity:v6];
  lastObject = [buildChunks lastObject];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = buildChunks;
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * v13);
        isAutomaticWithPreviousChunk = [v15 isAutomaticWithPreviousChunk];
        if (isAutomaticWithPreviousChunk)
        {
          if ([v7 containsObject:v14])
          {
            [v7 addObject:v15];
          }

          else
          {
            [v8 addObject:v15];
            [v8 tsu_addNonNilObject:v14];
          }
        }

        if ([withCopy containsObject:v15])
        {
          [v7 unionSet:v8];
          [v8 removeAllObjects];
          [v7 tsu_addNonNilObject:v14];
        }

        else
        {
          if (v15 == lastObject)
          {
            v17 = 0;
          }

          else
          {
            v17 = isAutomaticWithPreviousChunk;
          }

          if ((v17 & 1) == 0)
          {
            [v8 removeAllObjects];
          }
        }

        v10 = v15;

        ++v13;
        v14 = v10;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [v7 unionSet:v8];
  v18 = [v7 copy];

  return v18;
}

- (id)activeChunksForDrawable:(id)drawable
{
  v3 = [(KNAbstractSlide *)self activeChunksForDrawable:drawable animationType:0];

  return v3;
}

- (id)p_ChunksForDrawable:(id)drawable animationType:(int64_t)type onlyActiveChunks:(BOOL)chunks
{
  chunksCopy = chunks;
  v26 = *MEMORY[0x277D85DE8];
  drawableCopy = drawable;
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  buildChunks = [(KNAbstractSlide *)self buildChunks];
  selfCopy = self;
  v9 = [buildChunks countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(buildChunks);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (!chunksCopy || selfCopy->_shouldConsiderAllChunksActive || [*(*(&v21 + 1) + 8 * i) isActive])
        {
          build = [v12 build];
          drawable = [build drawable];
          v15 = drawable;
          if (drawable == drawableCopy)
          {
            if (type)
            {
              v16 = [build animationType] == type;

              if (!v16)
              {
                goto LABEL_16;
              }
            }

            else
            {
            }

            [array addObject:v12];
          }

          else
          {
          }

LABEL_16:

          continue;
        }
      }

      v9 = [buildChunks countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  return array;
}

- (id)activeChunksForDrawable:(id)drawable animationType:(int64_t)type
{
  v4 = [(KNAbstractSlide *)self p_ChunksForDrawable:drawable animationType:type onlyActiveChunks:1];

  return v4;
}

- (id)chunksForDrawable:(id)drawable animationType:(int64_t)type
{
  v4 = [(KNAbstractSlide *)self p_ChunksForDrawable:drawable animationType:type onlyActiveChunks:0];

  return v4;
}

- (id)p_complementForBuild:(id)build
{
  v19 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  if ([buildCopy isActionBuild] & 1) != 0 || (objc_msgSend(buildCopy, "isContentBuild"))
  {
    v5 = 0;
  }

  else
  {
    drawable = [buildCopy drawable];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    builds = [(KNAbstractSlide *)self builds];
    v5 = [builds countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(builds);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (v10 != buildCopy && ([*(*(&v14 + 1) + 8 * i) isActionBuild] & 1) == 0 && (objc_msgSend(v10, "isContentBuild") & 1) == 0)
          {
            drawable2 = [v10 drawable];
            v12 = drawable2 == drawable;

            if (v12)
            {
              v5 = v10;
              goto LABEL_17;
            }
          }
        }

        v5 = [builds countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  return v5;
}

- (id)p_firstActiveChunkInChunksForBuild:(id)build
{
  buildCopy = build;
  firstActiveChunkIndexInBuild = [buildCopy firstActiveChunkIndexInBuild];
  if (firstActiveChunkIndexInBuild == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    chunks = [buildCopy chunks];
    v5 = [chunks objectAtIndex:firstActiveChunkIndexInBuild];
  }

  return v5;
}

- (id)p_lastActiveChunkInChunksForBuild:(id)build
{
  buildCopy = build;
  lastActiveChunkIndexInBuild = [buildCopy lastActiveChunkIndexInBuild];
  if (lastActiveChunkIndexInBuild == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    chunks = [buildCopy chunks];
    v5 = [chunks objectAtIndex:lastActiveChunkIndexInBuild];
  }

  return v5;
}

- (BOOL)p_isValidToMoveChunk:(id)chunk toIndex:(unint64_t)index
{
  chunkCopy = chunk;
  build = [chunkCopy build];
  v8 = [(KNAbstractSlide *)self p_complementForBuild:build];
  chunks = [build chunks];
  v10 = chunks;
  if (v8 && ([chunks count] > 1 || objc_msgSend(v8, "chunkCount") >= 2))
  {
    v32 = v10;
    v11 = [(KNAbstractSlide *)self p_firstActiveChunkInChunksForBuild:build];
    v31 = v11;
    v12 = [(KNAbstractSlide *)self p_lastActiveChunkInChunksForBuild:build];
    v30 = v12;
    [build activeChunkRange];
    if (v13 == 1)
    {
      v14 = 1;
      indexCopy2 = index;
    }

    else
    {
      indexOnSlide = [v11 indexOnSlide];
      indexOnSlide2 = [v12 indexOnSlide];
      if (indexOnSlide >= index)
      {
        indexCopy2 = index;
      }

      else
      {
        indexCopy2 = indexOnSlide;
      }

      if (indexOnSlide2 <= index)
      {
        indexCopy3 = index;
      }

      else
      {
        indexCopy3 = indexOnSlide2;
      }

      v14 = indexCopy3 - indexCopy2 + 1;
    }

    WeakRetained = objc_loadWeakRetained(&self->_slideNode);
    slide = [WeakRetained slide];

    activeBuildChunks = [slide activeBuildChunks];
    v23 = [(KNAbstractSlide *)self p_activeChunkRangeForBuild:v8 inActiveChunks:activeBuildChunks];
    v25 = v24;

    if ([chunkCopy indexOnSlide] <= v23)
    {
      v26 = v23 - 1;
    }

    else
    {
      v26 = v23;
    }

    v34.length = v25;
    v33.location = indexCopy2;
    v33.length = v14;
    v34.location = v26;
    if (NSIntersectionRange(v33, v34).length)
    {
      v16 = v26 >= index || v25 + v26 + 1 <= index;
      if (v16 && v25 == 1)
      {
        LOBYTE(v16) = v26 < indexCopy2 || v26 - indexCopy2 >= v14;
      }
    }

    else
    {
      LOBYTE(v16) = 1;
    }

    v10 = v32;
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  return v16;
}

- (int64_t)canMoveBuildChunk:(id)chunk toIndex:(unint64_t)index
{
  chunkCopy = chunk;
  build = [chunkCopy build];
  drawable = [build drawable];
  isLocked = [drawable isLocked];

  if (isLocked)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  build2 = [chunkCopy build];
  chunks = [build2 chunks];

  if ([chunks count] >= 2)
  {
    indexInBuild = [chunkCopy indexInBuild];
    v14 = [chunks count];
    isFirstInBuild = [chunkCopy isFirstInBuild];
    v16 = isFirstInBuild;
    v17 = v14 - 1;
    if (indexInBuild == v14 - 1)
    {
      v18 = 0;
      if (isFirstInBuild)
      {
LABEL_7:
        v19 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v18 = [chunks tsu_rangeCheckedObjectAtIndex:indexInBuild + 1];
      if (v16)
      {
        goto LABEL_7;
      }
    }

    v19 = [chunks tsu_rangeCheckedObjectAtIndex:indexInBuild - 1];
LABEL_12:
    buildChunks = [(KNAbstractSlide *)self buildChunks];
    if ([buildChunks indexOfObject:chunkCopy] == index)
    {
LABEL_13:
      v20 = 1;
LABEL_31:

      goto LABEL_32;
    }

    if ([chunkCopy isFirstInBuild])
    {
      if ([buildChunks indexOfObject:v18] <= index)
      {
        v22 = [buildChunks indexOfObject:v18];
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    if (indexInBuild == v17)
    {
      if ([buildChunks indexOfObject:v19] >= index)
      {
LABEL_27:
        v22 = [buildChunks indexOfObject:v19];
LABEL_28:
        if (v22 == index)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        goto LABEL_31;
      }
    }

    else if ([buildChunks indexOfObject:v19] >= index || objc_msgSend(buildChunks, "indexOfObject:", v18) <= index)
    {
      if ([buildChunks indexOfObject:v18] == index)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (isLocked)
  {
    v20 = 3;
    goto LABEL_32;
  }

LABEL_23:
  if ([(KNAbstractSlide *)self p_isValidToMoveChunk:chunkCopy toIndex:index])
  {
    v20 = v10;
  }

  else
  {
    v20 = 4;
  }

LABEL_32:

  return v20;
}

- (int64_t)validateMoveActiveBuildChunks:(id)chunks toActiveIndex:(unint64_t)index
{
  chunksCopy = chunks;
  activeBuildChunks = [(KNAbstractSlide *)self activeBuildChunks];
  v8 = [activeBuildChunks mutableCopy];

  v9 = [v8 tsu_indexesOfObjects:chunksCopy];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    index = [v8 count];
  }

  [v8 kn_moveObjectsLocatedAtIndexes:v9 nearIndex:index];
  if ([(KNAbstractSlide *)self p_areActiveBuildChunksInValidOrder:v8])
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  return v10;
}

- (BOOL)areBuildChunksInValidOrderIgnoringInactiveChunks:(id)chunks
{
  v4 = [chunks tsu_arrayOfObjectsPassingTest:&unk_2884D4B80];
  LOBYTE(self) = [(KNAbstractSlide *)self p_areActiveBuildChunksInValidOrder:v4];

  return self;
}

- (BOOL)p_areActiveBuildChunksInValidOrder:(id)order
{
  v18 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  v5 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = orderCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        build = [*(*(&v13 + 1) + 8 * i) build];
        if (([v5 containsObject:build] & 1) == 0)
        {
          [v5 addObject:build];
          if (![(KNAbstractSlide *)self p_activeChunks:v6 areInOrderForBuild:build]|| [(KNAbstractSlide *)self p_activeChunks:v6 interleaveChunksForComplementOfBuild:build])
          {

            v11 = 0;
            goto LABEL_13;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (BOOL)p_activeChunks:(id)chunks areInOrderForBuild:(id)build
{
  chunksCopy = chunks;
  buildCopy = build;
  chunks = [buildCopy chunks];
  firstActiveChunkIndexInBuild = [buildCopy firstActiveChunkIndexInBuild];
  lastActiveChunkIndexInBuild = [buildCopy lastActiveChunkIndexInBuild];
  if (firstActiveChunkIndexInBuild <= lastActiveChunkIndexInBuild)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v12 = [chunks objectAtIndexedSubscript:firstActiveChunkIndexInBuild];
      v13 = [chunksCopy indexOfObject:v12];
      v14 = v13;
      v10 = v11 == 0x7FFFFFFFFFFFFFFFLL || v11 <= v13;

      v16 = !v10 || ++firstActiveChunkIndexInBuild > lastActiveChunkIndexInBuild;
      v11 = v14;
    }

    while (!v16);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)p_activeChunks:(id)chunks interleaveChunksForComplementOfBuild:(id)build
{
  chunksCopy = chunks;
  buildCopy = build;
  v8 = [(KNAbstractSlide *)self p_complementForBuild:buildCopy];
  if (!v8)
  {
    goto LABEL_8;
  }

  chunks = [buildCopy chunks];
  if (chunks)
  {
    chunks2 = [buildCopy chunks];
    if ([chunks2 count] && (objc_msgSend(v8, "chunks"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      chunks3 = [v8 chunks];
      v13 = [chunks3 count];

      if (v13)
      {
        chunks = [(KNAbstractSlide *)self p_activeChunkRangeForBuild:buildCopy inActiveChunks:chunksCopy];
        v15 = v14;
        v19.location = [(KNAbstractSlide *)self p_activeChunkRangeForBuild:v8 inActiveChunks:chunksCopy];
        v19.length = v16;
        v18.location = chunks;
        v18.length = v15;
        LOBYTE(chunks) = NSIntersectionRange(v18, v19).length != 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    LOBYTE(chunks) = 0;
  }

LABEL_9:

  return chunks;
}

- (_NSRange)p_activeChunkRangeForBuild:(id)build inActiveChunks:(id)chunks
{
  buildCopy = build;
  chunksCopy = chunks;
  chunks = [buildCopy chunks];
  v8 = [chunks objectAtIndexedSubscript:{objc_msgSend(buildCopy, "firstActiveChunkIndexInBuild")}];
  v9 = [chunks objectAtIndexedSubscript:{objc_msgSend(buildCopy, "lastActiveChunkIndexInBuild")}];
  v10 = [chunksCopy indexOfObject:v8];
  v11 = [chunksCopy indexOfObject:v9] - v10;

  v12 = v11 + 1;
  v13 = v10;
  result.length = v12;
  result.location = v13;
  return result;
}

- (NSArray)activeBuildChunks
{
  buildChunks = [(KNAbstractSlide *)self buildChunks];
  v4 = buildChunks;
  if (self->_shouldConsiderAllChunksActive)
  {
    p_calculateActiveBuildChunks = buildChunks;
  }

  else
  {
    p_calculateActiveBuildChunks = [(KNAbstractSlide *)self p_calculateActiveBuildChunks];
    v6 = [p_calculateActiveBuildChunks count];
    self->_shouldConsiderAllChunksActive = v6 == [v4 count];
  }

  return p_calculateActiveBuildChunks;
}

- (id)p_calculateActiveBuildChunks
{
  v16 = *MEMORY[0x277D85DE8];
  buildChunks = [(KNAbstractSlide *)self buildChunks];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(buildChunks, "count")}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = buildChunks;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isActive])
        {
          [v3 addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v9;
}

- (id)buildChunksForActiveBuildChunkIndexes:(id)indexes
{
  indexesCopy = indexes;
  activeBuildChunks = [(KNAbstractSlide *)self activeBuildChunks];
  v6 = MEMORY[0x277CBEB98];
  v7 = [activeBuildChunks objectsAtIndexes:indexesCopy];
  v8 = [v6 setWithArray:v7];

  return v8;
}

- (BOOL)hasComplementForBuildChunk:(id)chunk inBuildChunks:(id)chunks
{
  chunkCopy = chunk;
  chunksCopy = chunks;
  build = [chunkCopy build];
  if ([build isActionBuild])
  {
LABEL_4:
    v9 = 0;
LABEL_5:

    goto LABEL_17;
  }

  build2 = [chunkCopy build];
  if ([build2 isContentBuild])
  {

    goto LABEL_4;
  }

  indexOnSlide = [chunkCopy indexOnSlide];

  if (indexOnSlide)
  {
    v11 = [chunksCopy indexOfObject:chunkCopy];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [chunksCopy count];
    }

    if (v11 - 1 >= 0)
    {
      do
      {
        build = [chunksCopy objectAtIndexedSubscript:--v11];
        v7Build = [build build];
        if ([v7Build isActionBuild])
        {
        }

        else
        {
          v7Build2 = [build build];
          isContentBuild = [v7Build2 isContentBuild];

          if ((isContentBuild & 1) == 0)
          {
            v7Build3 = [build build];
            drawable = [v7Build3 drawable];
            build3 = [chunkCopy build];
            drawable2 = [build3 drawable];

            v9 = drawable == drawable2;
            if (drawable == drawable2)
            {
              goto LABEL_5;
            }

            if (![build isAutomaticWithPreviousChunk])
            {
              goto LABEL_4;
            }
          }
        }
      }

      while (v11 > 0);
    }
  }

  v9 = 0;
LABEL_17:

  return v9;
}

+ (unint64_t)deliveryGroupIndexForBuildChunk:(id)chunk inBuildChunks:(id)chunks
{
  v21 = *MEMORY[0x277D85DE8];
  chunkCopy = chunk;
  chunksCopy = chunks;
  if (![chunkCopy isActive] || !objc_msgSend(chunksCopy, "containsObject:", chunkCopy))
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = chunksCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v9)
  {

LABEL_16:
    v14 = 0;
    goto LABEL_14;
  }

  v10 = 0;
  v11 = *v17;
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v17 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v16 + 1) + 8 * v12);
    v10 += [self chunk:v13 isFirstInDeliveryGroupForChunks:{v8, v16}] & 1;
    if (v13 == chunkCopy)
    {
      break;
    }

    if (v9 == ++v12)
    {
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        goto LABEL_5;
      }

      break;
    }
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  v14 = v10 - 1;
LABEL_14:

  return v14;
}

+ (BOOL)chunk:(id)chunk isFirstInDeliveryGroupForChunks:(id)chunks
{
  chunkCopy = chunk;
  chunksCopy = chunks;
  if (chunkCopy && [chunkCopy isActive])
  {
    if ([chunkCopy isAutomatic])
    {
      v8 = [self p_firstActiveChunkInChunks:chunksCopy];
      v9 = v8 == chunkCopy;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)p_firstActiveChunkInChunks:(id)chunks
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  chunksCopy = chunks;
  v4 = [chunksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(chunksCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isActive])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [chunksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (unint64_t)deliveryGroupIndexForBuildChunk:(id)chunk
{
  chunkCopy = chunk;
  v5 = [objc_opt_class() deliveryGroupIndexForBuildChunk:chunkCopy inBuildChunks:self->_buildChunks];

  return v5;
}

- (id)deliveryGroupIndexesForBuilds:(id)builds
{
  v27 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = buildsCopy;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        chunks = [v9 chunks];
        v11 = [chunks countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = *v18;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(chunks);
              }

              v14 = [(KNAbstractSlide *)self deliveryGroupIndexForBuildChunk:*(*(&v17 + 1) + 8 * j)];
              if (v14 != 0x7FFFFFFFFFFFFFFFLL)
              {
                [indexSet addIndex:v14];
              }
            }

            v11 = [chunks countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return indexSet;
}

+ (id)buildChunksInDeliveryGroupAtIndex:(unint64_t)index inBuildChunks:(id)chunks
{
  v20 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = chunksCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 isActive])
        {
          v13 = [self deliveryGroupIndexForBuildChunk:v12 inBuildChunks:v8];
          if (v13 == index)
          {
            [array addObject:v12];
          }

          else if (v13 > index)
          {
            goto LABEL_12;
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

LABEL_12:

  return array;
}

- (id)buildChunksInDeliveryGroupAtIndex:(unint64_t)index
{
  v3 = objc_opt_class();

  return MEMORY[0x2821F9670](v3, sel_buildChunksInDeliveryGroupAtIndex_inBuildChunks_);
}

- (BOOL)p_canMoveDeliveryGroupBuildChunksFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [(KNAbstractSlide *)self buildChunksInDeliveryGroupAtIndex:index];
  [(KNAbstractSlide *)self buildChunksInDeliveryGroupAtIndex:toIndex];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v7 = v14 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (!-[KNAbstractSlide p_canMoveDeliveryGroupBuildChunks:toIndex:](self, "p_canMoveDeliveryGroupBuildChunks:toIndex:", v6, [*(*(&v13 + 1) + 8 * i) indexOnSlide]))
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)p_canMoveDeliveryGroupBuildChunks:(id)chunks toIndex:(unint64_t)index
{
  v29 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  buildChunks = [(KNAbstractSlide *)self buildChunks];
  if ([buildChunks count] <= index)
  {
    v10 = 0;
  }

  else
  {
    v22 = [buildChunks objectAtIndexedSubscript:index];
    build = [v22 build];
    drawable = [build drawable];
    isLocked = [drawable isLocked];

    if (isLocked)
    {
      v10 = 0;
    }

    else
    {
      indexInBuild = [v22 indexInBuild];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = chunksCopy;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = *v25;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            build2 = [v16 build];
            v18 = build2;
            if (build2 == build)
            {
              if ([v16 indexInBuild] >= indexInBuild)
              {
LABEL_17:

                v10 = 0;
                goto LABEL_18;
              }
            }

            else
            {
              drawable2 = [build2 drawable];
              isLocked2 = [drawable2 isLocked];

              if (isLocked2)
              {
                goto LABEL_17;
              }
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v10 = 1;
LABEL_18:
    }
  }

  return v10;
}

+ (unint64_t)deliveryGroupCountForBuildChunks:(id)chunks
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  chunksCopy = chunks;
  v5 = 0;
  v6 = [chunksCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(chunksCopy);
        }

        v5 += [self chunk:*(*(&v10 + 1) + 8 * v8++) isFirstInDeliveryGroupForChunks:{chunksCopy, v10}];
      }

      while (v6 != v8);
      v6 = [chunksCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v5;
}

- (unint64_t)deliveryGroupCount
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_deliveryGroupCountForBuildChunks_);
}

- (NSArray)buildsGroupedByDeliveryGroup
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_buildChunks;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isFirstInDeliveryGroup])
        {
          if (v6)
          {
            [array addObject:v6];
          }

          v10 = [MEMORY[0x277CBEB58] set];

          v6 = v10;
        }

        build = [v9 build];
        [v6 addObject:build];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);

    if (v6)
    {
      [array addObject:v6];
    }
  }

  else
  {

    v6 = 0;
  }

  return array;
}

- (BOOL)canMoveDeliveryGroupFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  deliveryGroupCount = [(KNAbstractSlide *)self deliveryGroupCount];
  result = 0;
  if (index != toIndex && deliveryGroupCount > index && deliveryGroupCount > toIndex)
  {
    if (index <= toIndex)
    {
      if (toIndex <= index)
      {
        return 1;
      }

      else
      {
        do
        {
          result = [(KNAbstractSlide *)self p_canMoveDeliveryGroupBuildChunksFromIndex:toIndex-- toIndex:index];
        }

        while (toIndex > index && result);
      }
    }

    else
    {
      do
      {
        result = [(KNAbstractSlide *)self p_canMoveDeliveryGroupBuildChunksFromIndex:index toIndex:toIndex++];
      }

      while (toIndex < index && result);
    }
  }

  return result;
}

- (void)i_primitiveAddBuild:(id)build
{
  buildCopy = build;
  [(KNAbstractSlide *)self willModify];
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:self->_builds];
  [buildCopy setSlide:self];
  [v4 addObject:buildCopy];
  objc_storeStrong(&self->_builds, v4);
  if ([(KNAbstractSlide *)self inDocument])
  {
    context = [(KNAbstractSlide *)self context];
    [buildCopy wasAddedToDocumentWithContext:context];
  }
}

- (void)i_primitiveInsertBuildChunk:(id)chunk afterChunk:(id)afterChunk generateIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  chunkCopy = chunk;
  afterChunkCopy = afterChunk;
  build = [chunkCopy build];
  v9 = [(NSArray *)self->_buildChunks containsObject:chunkCopy];
  if (v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide i_primitiveInsertBuildChunk:afterChunk:generateIdentifier:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:2458 isFatal:0 description:{"Trying to insert duplicate chunk %@.", chunkCopy}];

    [MEMORY[0x277D81150] logFullBacktrace];
  }

  chunkIdentifier = [chunkCopy chunkIdentifier];
  v14 = [chunkIdentifier resolveToChunkOnSlide:self];

  if (v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide i_primitiveInsertBuildChunk:afterChunk:generateIdentifier:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:2463 isFatal:0 description:{"Trying to insert chunk with duplicate chunk identifier %@.", chunkCopy}];

    [MEMORY[0x277D81150] logFullBacktrace];
    v18 = 0;
    if (identifierCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = !v9;
    if (identifierCopy)
    {
      goto LABEL_9;
    }
  }

  chunkIdentifier2 = [chunkCopy chunkIdentifier];
  chunkID = [chunkIdentifier2 chunkID];
  i_chunkIDSeed = [build i_chunkIDSeed];

  if (chunkID > i_chunkIDSeed)
  {
    v22 = MEMORY[0x277D81150];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide i_primitiveInsertBuildChunk:afterChunk:generateIdentifier:]"];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v22 handleFailureInFunction:v23 file:v24 lineNumber:2468 isFatal:0 description:"Trying to insert a chunk with an ID greater than the current seed."];

    [MEMORY[0x277D81150] logFullBacktrace];
    goto LABEL_20;
  }

LABEL_9:
  if (!v18)
  {
    goto LABEL_20;
  }

  [(KNAbstractSlide *)self willModify];
  if (!build)
  {
    v25 = MEMORY[0x277D81150];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide i_primitiveInsertBuildChunk:afterChunk:generateIdentifier:]"];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v25 handleFailureInFunction:v26 file:v27 lineNumber:2475 isFatal:0 description:{"invalid nil value for '%{public}s'", "build"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_buildChunks];
  if (afterChunkCopy)
  {
    v29 = [(NSArray *)self->_buildChunks indexOfObject:?]+ 1;
    if (!identifierCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v29 = 0;
  if (identifierCopy)
  {
LABEL_16:
    [build i_generateAndApplyNewChunkIdentifierToChunk:chunkCopy];
  }

LABEL_17:
  [build i_registerBuildChunkIdentifierForChunk:chunkCopy];
  [v28 insertObject:chunkCopy atIndex:v29];
  objc_storeStrong(&self->_buildChunks, v28);
  if ([(KNAbstractSlide *)self inDocument])
  {
    context = [(KNAbstractSlide *)self context];
    [chunkCopy wasAddedToDocumentWithContext:context];
  }

LABEL_20:
}

- (TSUPointerKeyDictionary)drawableToGhostInfosMap
{
  drawableToGhostInfosMap = self->_drawableToGhostInfosMap;
  if (!drawableToGhostInfosMap)
  {
    v4 = objc_alloc_init(MEMORY[0x277D812B8]);
    v5 = self->_drawableToGhostInfosMap;
    self->_drawableToGhostInfosMap = v4;

    drawableToGhostInfosMap = self->_drawableToGhostInfosMap;
  }

  return drawableToGhostInfosMap;
}

- (TSUMutablePointerSet)drawablesWithInvalidatedGhosts
{
  drawablesWithInvalidatedGhosts = self->_drawablesWithInvalidatedGhosts;
  if (!drawablesWithInvalidatedGhosts)
  {
    v4 = objc_alloc_init(MEMORY[0x277D81258]);
    v5 = self->_drawablesWithInvalidatedGhosts;
    self->_drawablesWithInvalidatedGhosts = v4;

    drawablesWithInvalidatedGhosts = self->_drawablesWithInvalidatedGhosts;
  }

  return drawablesWithInvalidatedGhosts;
}

- (void)insertContainedModel:(id)model atIndex:(unint64_t)index
{
  v6 = TSUProtocolCast();
  v10 = v6;
  if (v6)
  {
    [(KNAbstractSlide *)self insertChildInfo:v6 atIndex:index, &unk_2884F6E18];
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[KNAbstractSlide insertContainedModel:atIndex:]", &unk_2884F6E18}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:2685 isFatal:0 description:"Must provide an info!"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

- (void)removeContainedModel:(id)model
{
  v4 = TSUProtocolCast();
  v8 = v4;
  if (v4)
  {
    [(KNAbstractSlide *)self removeChildInfo:v4, &unk_2884F6E18];
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[KNAbstractSlide removeContainedModel:]", &unk_2884F6E18}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:2693 isFatal:0 description:"Must provide an info!"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

- (void)moveModel:(id)model toIndex:(unint64_t)index
{
  v14[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v7 = TSUProtocolCast();
  v8 = v7;
  if (v7)
  {
    v14[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:{1, &unk_2884F6E18}];
    v10 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
    [(KNAbstractSlide *)self moveChildren:v9 toIndexes:v10];
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[KNAbstractSlide moveModel:toIndex:]", &unk_2884F6E18}];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:2701 isFatal:0 description:"Must provide an info!"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

- (void)p_insertChildInfos:(id)infos atIndex:(unint64_t)index dolcContext:(id)context
{
  infosCopy = infos;
  contextCopy = context;
  [(KNAbstractSlide *)self willModify];
  v9 = [objc_alloc(MEMORY[0x277CBEB40]) initWithOrderedSet:self->_childInfos];
  v10 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{index, objc_msgSend(infosCopy, "count")}];
  [v9 insertObjects:infosCopy atIndexes:v10];
  [(KNAbstractSlide *)self p_setChildInfosAsOrderedSet:v9 usingDOLC:1 dolcContext:contextCopy];
}

- (void)addChildInfo:(id)info
{
  infoCopy = info;
  [(KNAbstractSlide *)self insertChildInfo:infoCopy atIndex:[(NSOrderedSet *)self->_childInfos count]];
}

- (void)insertChildInfo:(id)info atIndex:(unint64_t)index
{
  v10[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  defaultContext = [MEMORY[0x277D805F0] defaultContext];
  [(KNAbstractSlide *)self p_insertChildInfos:v8 atIndex:index dolcContext:defaultContext];
}

- (void)insertChildInfo:(id)info below:(id)below
{
  infoCopy = info;
  belowCopy = below;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  [(KNAbstractSlide *)self insertChildInfo:infoCopy atIndex:[(NSOrderedSet *)self->_childInfos indexOfObject:v7]+ 1];
}

- (void)insertChildInfo:(id)info above:(id)above
{
  infoCopy = info;
  aboveCopy = above;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  [(KNAbstractSlide *)self insertChildInfo:infoCopy atIndex:[(NSOrderedSet *)self->_childInfos indexOfObject:v7]];
}

- (void)removeChildInfo:(id)info
{
  infoCopy = info;
  [(KNAbstractSlide *)self willModify];
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithOrderedSet:self->_childInfos];
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();
  [v4 removeObject:v5];
  defaultContext = [MEMORY[0x277D805F0] defaultContext];
  [(KNAbstractSlide *)self p_setChildInfosAsOrderedSet:v4 usingDOLC:1 dolcContext:defaultContext];
}

- (void)replaceChildInfo:(id)info with:(id)with
{
  infoCopy = info;
  withCopy = with;
  [(KNAbstractSlide *)self willModify];
  v7 = [objc_alloc(MEMORY[0x277CBEB40]) initWithOrderedSet:self->_childInfos];
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  objc_opt_class();
  v9 = TSUCheckedDynamicCast();
  [v7 replaceObjectAtIndex:objc_msgSend(v7 withObject:{"indexOfObject:", v8), v9}];
  defaultContext = [MEMORY[0x277D805F0] defaultContext];
  [(KNAbstractSlide *)self p_setChildInfosAsOrderedSet:v7 usingDOLC:1 dolcContext:defaultContext];
}

- (id)infoCorrespondingToInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  parentInfo = [infoCopy parentInfo];
  v6 = TSUDynamicCast();

  if (v6)
  {
    titlePlaceholder = [v6 titlePlaceholder];

    if (titlePlaceholder == infoCopy)
    {
      titlePlaceholder2 = [(KNAbstractSlide *)self titlePlaceholder];
    }

    else
    {
      bodyPlaceholder = [v6 bodyPlaceholder];

      if (bodyPlaceholder == infoCopy)
      {
        titlePlaceholder2 = [(KNAbstractSlide *)self bodyPlaceholder];
      }

      else
      {
        slideNumberPlaceholder = [v6 slideNumberPlaceholder];

        if (slideNumberPlaceholder != infoCopy)
        {
          v10 = [v6 tagForInfo:infoCopy];
          if (v10)
          {
            v11 = [(KNAbstractSlide *)self infoForTag:v10];
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_14;
        }

        titlePlaceholder2 = [(KNAbstractSlide *)self slideNumberPlaceholder];
      }
    }

    v11 = titlePlaceholder2;
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (double)highestScaleFactorForRenderingDrawableInfo:(id)info
{
  v19 = *MEMORY[0x277D85DE8];
  [(KNAbstractSlide *)self activeChunksForDrawable:info];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    v6 = *MEMORY[0x277D800E0];
    v7 = 1.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        build = [*(*(&v14 + 1) + 8 * i) build];
        effect = [build effect];
        v11 = [effect isEqualToString:v6];

        if (v11)
        {
          [build actionScale];
          if (v12 >= v7)
          {
            v7 = v12;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  objc_opt_class();
  backgroundFill = [(KNAbstractSlide *)self backgroundFill];
  v6 = TSUCheckedDynamicCast();

  owningDocument = [(TSPObject *)self owningDocument];
  show = [owningDocument show];
  [show size];
  [v6 renderedImageSizeForObjectSize:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)childEnumerator
{
  v3 = [MEMORY[0x277CBEB58] set];
  ownedChildInfos = [(KNAbstractSlide *)self ownedChildInfos];
  [v3 addObjectsFromArray:ownedChildInfos];

  titlePlaceholder = [(KNAbstractSlide *)self titlePlaceholder];

  if (titlePlaceholder)
  {
    titlePlaceholder2 = [(KNAbstractSlide *)self titlePlaceholder];
    [v3 addObject:titlePlaceholder2];
  }

  bodyPlaceholder = [(KNAbstractSlide *)self bodyPlaceholder];

  if (bodyPlaceholder)
  {
    bodyPlaceholder2 = [(KNAbstractSlide *)self bodyPlaceholder];
    [v3 addObject:bodyPlaceholder2];
  }

  objectPlaceholder = [(KNAbstractSlide *)self objectPlaceholder];

  if (objectPlaceholder)
  {
    objectPlaceholder2 = [(KNAbstractSlide *)self objectPlaceholder];
    [v3 addObject:objectPlaceholder2];
  }

  slideNumberPlaceholder = [(KNAbstractSlide *)self slideNumberPlaceholder];

  if (slideNumberPlaceholder)
  {
    slideNumberPlaceholder2 = [(KNAbstractSlide *)self slideNumberPlaceholder];
    [v3 addObject:slideNumberPlaceholder2];
  }

  objectEnumerator = [v3 objectEnumerator];

  return objectEnumerator;
}

- (id)boxedObjectForProperty:(int)property
{
  v3 = *&property;
  v5 = String();
  v6 = 0;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [(KNAbstractSlide *)self floatValueForProperty:v3];
      if (v9 != INFINITY)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        goto LABEL_14;
      }
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_14;
      }

      [(KNAbstractSlide *)self doubleValueForProperty:v3];
      if (v8 != INFINITY)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (!v5)
    {
      v6 = [(KNAbstractSlide *)self objectForProperty:v3];
      goto LABEL_14;
    }

    if (v5 != 1)
    {
      goto LABEL_14;
    }

    v7 = [(KNAbstractSlide *)self intValueForProperty:v3];
    if (v7 != 0x80000000)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInt:v7];
      goto LABEL_14;
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)objectForProperty:(int)property
{
  switch(property)
  {
    case 4215:
      placeholdersForTags = [(KNAbstractSlide *)self placeholdersForTags];
      break;
    case 4214:
      placeholdersForTags = [(KNAbstractSlide *)self childInfos];
      break;
    case 515:
      placeholdersForTags = [(KNAbstractSlide *)self style];
      break;
    default:
      placeholdersForTags = 0;
      break;
  }

  return placeholdersForTags;
}

- (NSSet)referencedStyles
{
  v3 = MEMORY[0x277CBEB58];
  style = [(KNAbstractSlide *)self style];
  v5 = [v3 setWithObject:style];

  motionBackgroundStyle = [(KNAbstractSlide *)self motionBackgroundStyle];
  [v5 tsu_addNonNilObject:motionBackgroundStyle];

  return v5;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  style = [(KNAbstractSlide *)self style];
  v5 = blockCopy[2](blockCopy, style);
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide replaceReferencedStylesUsingBlock:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:3121 isFatal:0 description:{"Failed to map style %@", style}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide replaceReferencedStylesUsingBlock:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:3123 isFatal:0 description:"mapped style is not of right class"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [(KNAbstractSlide *)self setStyle:v9];
}

- (void)referencedStyleWasUpdated:(id)updated
{
  updatedCopy = updated;
  motionBackgroundStyle = [(KNAbstractSlide *)self motionBackgroundStyle];
  if (motionBackgroundStyle == updatedCopy)
  {

    goto LABEL_5;
  }

  motionBackgroundStyle2 = [(KNAbstractSlide *)self motionBackgroundStyle];
  v6 = [motionBackgroundStyle2 isDescendentOf:updatedCopy];

  if (v6)
  {
LABEL_5:
    [(KNAbstractSlide *)self updateMotionBackground];
  }
}

- (void)setSlideNode:(id)node
{
  nodeCopy = node;
  objc_storeWeak(&self->_slideNode, nodeCopy);
  if (self->_needsSlideNodeEventCountUpdate && ![(KNAbstractSlide *)self isTemplateSlide])
  {
    [nodeCopy invalidateBuildEventCountCaches];
    self->_needsSlideNodeEventCountUpdate = 0;
  }
}

+ (Class)classForUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  [unarchiverCopy messageWithDescriptor:off_2812EA908[32]];

  v4 = objc_opt_class();
  v5 = v4;

  return v4;
}

- (void)p_updateBuildsReplacingPlaceholder:(id)placeholder withPlaceholder:(id)withPlaceholder
{
  v20 = *MEMORY[0x277D85DE8];
  placeholderCopy = placeholder;
  withPlaceholderCopy = withPlaceholder;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  builds = [(KNAbstractSlide *)self builds];
  v9 = [builds countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(builds);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        drawable = [v12 drawable];
        v14 = drawable == placeholderCopy;

        if (v14)
        {
          [v12 setDrawable:withPlaceholderCopy];
        }
      }

      v9 = [builds countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  sourceType = [unarchiverCopy sourceType];
  v7 = sourceType == 1;
  v8 = *(archive + 36);
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = sub_275D52930;
  v102[3] = &unk_27A697998;
  v102[4] = self;
  v9 = unarchiverCopy;
  v10 = objc_opt_class();
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x277D80A18];
  }

  [v9 readReferenceMessage:v11 class:v10 protocol:0 completion:v102];

  v12 = [KNTransition alloc];
  if (*(archive + 37))
  {
    v13 = *(archive + 37);
  }

  else
  {
    v13 = &qword_2812EAB40;
  }

  v14 = [(KNTransition *)v12 initWithArchive:v13 unarchiver:v9 owner:self];
  [(KNAbstractSlide *)self setTransition:v14];

  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x3032000000;
  v100[3] = sub_275D52944;
  v100[4] = sub_275D52954;
  v101 = 0;
  v15 = *(archive + 20);
  selfCopy = self;
  archiveCopy = archive;
  if ((v15 & 0x80000000) != 0)
  {
    v65 = MEMORY[0x277D81150];
    v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide loadFromArchive:unarchiver:]"];
    v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
    [v65 handleFailureInFunction:v66 file:v67 lineNumber:3181 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    v15 = 0;
  }

  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = sub_275D5295C;
  v98[3] = &unk_27A6979C0;
  v98[5] = v100;
  v98[6] = v15;
  v98[4] = self;
  v99 = sourceType == 1;
  v16 = v9;
  [v16 readRepeatedWeakReferenceMessage:archive + 72 class:objc_opt_class() protocol:0 completion:v98];

  v17 = *(archive + 50);
  if (v17)
  {
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = sub_275D52B3C;
    v97[3] = &unk_27A6979E8;
    v97[5] = v17;
    v97[4] = self;
    v18 = v16;
    [v18 readRepeatedWeakReferenceMessage:archive + 192 class:objc_opt_class() protocol:0 completion:v97];
  }

  if (*(archive + 8) >= 1)
  {
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = sub_275D52C64;
    v96[3] = &unk_27A697A10;
    v96[4] = self;
    v19 = v16;
    [v19 readRepeatedReferenceMessage:archive + 24 class:objc_opt_class() protocol:0 completion:v96];
  }

  v20 = v16;
  if (*(archive + 56) < 1)
  {
    v22 = *(archive + 14);
    if (v22 >= 1)
    {
      v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v22];
      context = [(KNAbstractSlide *)self context];
      for (i = 0; i != v22; ++i)
      {
        v26 = [[KNBuildChunk alloc] initWithContext:context];
        v27 = [(KNAbstractSlide *)self newObjectUUIDWithOffset:i];
        [(KNBuildChunk *)v26 setObjectUUID:v27];

        context2 = [(KNAbstractSlide *)self context];
        [(KNBuildChunk *)v26 wasAddedToDocumentDuringUnarchiveWithContext:context2];

        [(KNBuildChunk *)v26 loadFromArchive:*(*(archive + 8) + 8 * i + 8) unarchiver:v20];
        [(NSArray *)v23 addObject:v26];
      }

      buildChunks = self->_buildChunks;
      self->_buildChunks = v23;

      v7 = sourceType == 1;
    }
  }

  else
  {
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = sub_275D52DC8;
    v95[3] = &unk_27A697A10;
    v95[4] = self;
    v21 = v16;
    [v21 readRepeatedReferenceMessage:archive + 216 class:objc_opt_class() protocol:0 completion:v95];
  }

  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x3032000000;
  v93[3] = sub_275D52944;
  v93[4] = sub_275D52954;
  v94 = 0;
  archiveCopy2 = archive;
  v31 = *(archive + 4);
  v68 = unarchiverCopy;
  if ((v31 & 0x20) != 0)
  {
    v32 = *(archive + 38);
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = sub_275D52DDC;
    v92[3] = &unk_27A697A38;
    v92[4] = v93;
    v33 = v20;
    [v33 readReferenceMessage:v32 class:objc_opt_class() protocol:0 completion:{v92, unarchiverCopy}];

    v31 = *(archive + 4);
  }

  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x3032000000;
  v90[3] = sub_275D52944;
  v90[4] = sub_275D52954;
  v91 = 0;
  if ((v31 & 0x40) != 0)
  {
    v34 = *(archive + 39);
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = sub_275D52DEC;
    v89[3] = &unk_27A697A38;
    v89[4] = v90;
    v35 = v20;
    [v35 readReferenceMessage:v34 class:objc_opt_class() protocol:0 completion:v89];

    v31 = *(archive + 4);
  }

  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x3032000000;
  v87[3] = sub_275D52944;
  v87[4] = sub_275D52954;
  v88 = 0;
  if ((v31 & 0x20000) != 0)
  {
    v36 = *(archive + 50);
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_275D52DFC;
    v86[3] = &unk_27A697A38;
    v86[4] = v87;
    v37 = v20;
    [v37 readReferenceMessage:v36 class:objc_opt_class() protocol:0 completion:v86];

    v31 = *(archive + 4);
  }

  if ((v31 & 0x400) != 0)
  {
    v38 = *(archive + 43);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_275D52E0C;
    v84[3] = &unk_27A697A60;
    v84[4] = self;
    v85 = v7;
    v39 = v20;
    [v39 readReferenceMessage:v38 class:objc_opt_class() protocol:0 completion:v84];
  }

  v40 = *(archive + 32);
  obj = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v40];
  if (v40 >= 1)
  {
    v41 = 8;
    do
    {
      v42 = *(archiveCopy2[17] + v41);
      v43 = [MEMORY[0x277CCACA8] tsp_stringWithProtobufString:{*(v42 + 24) & 0xFFFFFFFFFFFFFFFELL, v68}];
      v44 = *(v42 + 32);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = sub_275D52E94;
      v81[3] = &unk_27A697A88;
      v82 = obj;
      v45 = v43;
      v83 = v45;
      v46 = v20;
      v47 = objc_opt_class();
      if (v44)
      {
        v48 = v44;
      }

      else
      {
        v48 = MEMORY[0x277D80A18];
      }

      [v46 readReferenceMessage:v48 class:v47 protocol:0 completion:v81];

      v41 += 8;
      --v40;
      archiveCopy2 = archiveCopy;
    }

    while (v40);
  }

  objc_storeStrong(&self->_placeholdersForTags, obj);
  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  if ((*(archiveCopy2 + 18) & 0x10) != 0)
  {
    v49 = archiveCopy[53];
    v50 = *(v49 + 24);
    if (v50 >= 1)
    {
      v51 = 8;
      do
      {
        v52 = *(*(v49 + 32) + v51);
        v53 = [MEMORY[0x277CCACA8] tsp_stringWithProtobufString:{*(v52 + 24) & 0xFFFFFFFFFFFFFFFELL, v68}];
        v54 = *(v52 + 32);
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = sub_275D52EFC;
        v78[3] = &unk_27A697A88;
        v79 = weakToStrongObjectsMapTable;
        v55 = v53;
        v80 = v55;
        v56 = v20;
        v57 = objc_opt_class();
        if (v54)
        {
          v58 = v54;
        }

        else
        {
          v58 = MEMORY[0x277D80A18];
        }

        [v56 readWeakReferenceMessage:v58 class:v57 protocol:0 completion:v78];

        v51 += 8;
        --v50;
      }

      while (v50);
    }
  }

  objc_storeStrong(&selfCopy->_instructionalTextForInfos, weakToStrongObjectsMapTable);
  if (*(archiveCopy + 457) == 1 && sourceType == 1)
  {
    hasPreUFFVersion = 1;
    v60 = 1;
  }

  else
  {
    hasPreUFFVersion = [v20 hasPreUFFVersion];
    v60 = sourceType == 1;
  }

  selfCopy->_inDocument = hasPreUFFVersion;
  fileFormatVersion = [v20 fileFormatVersion];
  hasPreUFFVersion2 = [v20 hasPreUFFVersion];
  preUFFVersion = [v20 preUFFVersion];
  v64 = [(KNAbstractSlide *)selfCopy p_keynoteVersionFromUnarchiver:v20];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = sub_275D52F64;
  v74[3] = &unk_27A697AF8;
  v75 = hasPreUFFVersion2;
  v76 = fileFormatVersion < 0x2000000000007;
  v74[10] = v64;
  v74[11] = fileFormatVersion;
  v74[4] = selfCopy;
  v74[5] = v100;
  v77 = v60;
  v74[6] = v93;
  v74[7] = v90;
  v74[8] = v87;
  v74[9] = preUFFVersion;
  [v20 addFinalizeHandler:v74];

  _Block_object_dispose(v87, 8);
  _Block_object_dispose(v90, 8);

  _Block_object_dispose(v93, 8);
  _Block_object_dispose(v100, 8);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v145[2] = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v111 = archiverCopy;
  selfCopy = self;
  style = self->_style;
  *(archive + 4) |= 8u;
  v8 = *(archive + 36);
  if (!v8)
  {
    v9 = *(archive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x277C8F050](v9);
    *(archive + 36) = v8;
    archiverCopy = v111;
  }

  [archiverCopy setStrongReference:style message:v8];
  transition = [(KNAbstractSlide *)selfCopy transition];
  *(archive + 4) |= 0x10u;
  v11 = *(archive + 37);
  if (!v11)
  {
    v12 = *(archive + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = sub_275E1F6F8(v12);
    *(archive + 37) = v11;
  }

  [transition saveToArchive:v11 archiver:v111];

  v13 = [(NSSet *)selfCopy->_builds count];
  v110 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v13];
  v14 = [KNAbstractSlideAlternateArchiveBuildFilter alloc];
  v15 = *MEMORY[0x277D808D8];
  v16 = [(KNAbstractSlideAlternateArchiveBuildFilter *)v14 initWithExcludedBuildMinVersion:*MEMORY[0x277D808D8] capacity:v13];
  v145[0] = v16;
  v17 = [KNAbstractSlideAlternateArchiveBuildFilter alloc];
  v18 = *MEMORY[0x277D80990];
  v19 = [(KNAbstractSlideAlternateArchiveBuildFilter *)v17 initWithExcludedBuildMinVersion:*MEMORY[0x277D80990] capacity:v13];
  v145[1] = v19;
  v104 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:2];

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  obj = selfCopy->_builds;
  v20 = [(NSSet *)obj countByEnumeratingWithState:&v133 objects:v144 count:16];
  if (v20)
  {
    v105 = *v134;
    v101 = *MEMORY[0x277D80170];
    do
    {
      v21 = 0;
      v108 = v20;
      do
      {
        if (*v134 != v105)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v133 + 1) + 8 * v21);
        [v110 addObject:v22];
        effect = [v22 effect];
        v24 = [effect isEqualToString:v101];

        if (v24)
        {
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v25 = v104;
          v26 = [v25 countByEnumeratingWithState:&v129 objects:v143 count:16];
          if (v26)
          {
            v27 = *v130;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v130 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(*(&v129 + 1) + 8 * i);
                if ([v29 excludedBuildMinVersion] <= v15)
                {
                  [v29 addExcludedBuild:v22];
                }
              }

              v26 = [v25 countByEnumeratingWithState:&v129 objects:v143 count:16];
            }

            while (v26);
          }

          v20 = v108;
        }

        if ([v22 isContentBuild])
        {
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v30 = v104;
          v31 = [v30 countByEnumeratingWithState:&v125 objects:v142 count:16];
          if (v31)
          {
            v32 = *v126;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v126 != v32)
                {
                  objc_enumerationMutation(v30);
                }

                v34 = *(*(&v125 + 1) + 8 * j);
                if ([v34 excludedBuildMinVersion] <= v18)
                {
                  [v34 addExcludedBuild:v22];
                }
              }

              v31 = [v30 countByEnumeratingWithState:&v125 objects:v142 count:16];
            }

            while (v31);
          }

          v20 = v108;
        }

        ++v21;
      }

      while (v21 != v20);
      v20 = [(NSSet *)obj countByEnumeratingWithState:&v133 objects:v144 count:16];
    }

    while (v20);
  }

  [v111 setStrongReferenceArray:v110 message:archive + 24];
  [v111 setStrongReferenceArray:selfCopy->_buildChunks message:archive + 216];
  [v111 setWeakReferenceOrderedSet:selfCopy->_childInfos message:archive + 192];
  ownedChildInfos = [(KNAbstractSlide *)selfCopy ownedChildInfos];
  [v111 setStrongReferenceArray:ownedChildInfos message:archive + 72];

  titlePlaceholder = [(KNAbstractSlide *)selfCopy titlePlaceholder];
  LOBYTE(ownedChildInfos) = titlePlaceholder == 0;

  if ((ownedChildInfos & 1) == 0)
  {
    titlePlaceholder2 = [(KNAbstractSlide *)selfCopy titlePlaceholder];
    *(archive + 4) |= 0x20u;
    v38 = *(archive + 38);
    if (!v38)
    {
      v39 = *(archive + 1);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = MEMORY[0x277C8F050](v39);
      *(archive + 38) = v38;
    }

    [v111 setStrongReference:titlePlaceholder2 message:v38];
  }

  bodyPlaceholder = [(KNAbstractSlide *)selfCopy bodyPlaceholder];
  v41 = bodyPlaceholder == 0;

  if (!v41)
  {
    bodyPlaceholder2 = [(KNAbstractSlide *)selfCopy bodyPlaceholder];
    *(archive + 4) |= 0x40u;
    v43 = *(archive + 39);
    if (!v43)
    {
      v44 = *(archive + 1);
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = MEMORY[0x277C8F050](v44);
      *(archive + 39) = v43;
    }

    [v111 setStrongReference:bodyPlaceholder2 message:v43];
  }

  objectPlaceholder = [(KNAbstractSlide *)selfCopy objectPlaceholder];
  v46 = objectPlaceholder == 0;

  if (!v46)
  {
    objectPlaceholder2 = [(KNAbstractSlide *)selfCopy objectPlaceholder];
    *(archive + 4) |= 0x20000u;
    v48 = *(archive + 50);
    if (!v48)
    {
      v49 = *(archive + 1);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = MEMORY[0x277C8F050](v49);
      *(archive + 50) = v48;
    }

    [v111 setStrongReference:objectPlaceholder2 message:v48];
  }

  slideNumberPlaceholder = [(KNAbstractSlide *)selfCopy slideNumberPlaceholder];
  v51 = slideNumberPlaceholder == 0;

  if (!v51)
  {
    slideNumberPlaceholder2 = [(KNAbstractSlide *)selfCopy slideNumberPlaceholder];
    *(archive + 4) |= 0x400u;
    v53 = *(archive + 43);
    if (!v53)
    {
      v54 = *(archive + 1);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277C8F050](v54);
      *(archive + 43) = v53;
    }

    [v111 setStrongReference:slideNumberPlaceholder2 message:v53];
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  keyEnumerator = [(NSDictionary *)selfCopy->_placeholdersForTags keyEnumerator];
  v102 = keyEnumerator;
  v56 = [keyEnumerator countByEnumeratingWithState:&v121 objects:v141 count:16];
  if (v56)
  {
    v106 = *v122;
    do
    {
      for (k = 0; k != v56; ++k)
      {
        if (*v122 != v106)
        {
          objc_enumerationMutation(v102);
        }

        v58 = *(*(&v121 + 1) + 8 * k);
        v59 = [(NSDictionary *)selfCopy->_placeholdersForTags objectForKeyedSubscript:v58];
        v60 = *(archive + 17);
        if (!v60)
        {
          goto LABEL_72;
        }

        v61 = *(archive + 32);
        v62 = *v60;
        if (v61 < *v60)
        {
          *(archive + 32) = v61 + 1;
          v63 = *&v60[2 * v61 + 2];
          goto LABEL_74;
        }

        if (v62 == *(archive + 33))
        {
LABEL_72:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 120));
          v60 = *(archive + 17);
          v62 = *v60;
        }

        *v60 = v62 + 1;
        v63 = sub_275E1FE50(*(archive + 15));
        v64 = *(archive + 32);
        v65 = *(archive + 17) + 8 * v64;
        *(archive + 32) = v64 + 1;
        *(v65 + 8) = v63;
LABEL_74:
        tsp_protobufString = [v58 tsp_protobufString];
        *(v63 + 16) |= 1u;
        sub_275D55B98(__p, tsp_protobufString);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v138 < 0)
        {
          operator delete(__p[0]);
        }

        childInfos = [(KNAbstractSlide *)selfCopy childInfos];
        v68 = [childInfos containsObject:v59];

        if ((v68 & 1) == 0)
        {
          v69 = MEMORY[0x277D81150];
          v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAbstractSlide saveToArchive:archiver:]"];
          v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm"];
          [v69 handleFailureInFunction:v70 file:v71 lineNumber:3808 isFatal:0 description:{"Saving tagged drawable %@ with tag %@ that is not among the childInfos for %@", v59, v58, selfCopy}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        *(v63 + 16) |= 2u;
        v72 = *(v63 + 32);
        if (!v72)
        {
          v73 = *(v63 + 8);
          if (v73)
          {
            v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
          }

          v72 = MEMORY[0x277C8F050](v73);
          *(v63 + 32) = v72;
        }

        [v111 setStrongReference:v59 message:v72];
      }

      keyEnumerator = v102;
      v56 = [v102 countByEnumeratingWithState:&v121 objects:v141 count:16];
    }

    while (v56);
  }

  *(archive + 4) |= 0x100000u;
  v74 = *(archive + 53);
  if (!v74)
  {
    v75 = *(archive + 1);
    if (v75)
    {
      v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
    }

    v74 = sub_275E1FF68(v75);
    *(archive + 53) = v74;
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  keyEnumerator2 = [(NSMapTable *)selfCopy->_instructionalTextForInfos keyEnumerator];
  v77 = [keyEnumerator2 countByEnumeratingWithState:&v117 objects:v140 count:16];
  if (v77)
  {
    v78 = *v118;
    do
    {
      for (m = 0; m != v77; ++m)
      {
        if (*v118 != v78)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v80 = *(*(&v117 + 1) + 8 * m);
        v81 = *(v74 + 32);
        if (!v81)
        {
          goto LABEL_98;
        }

        v82 = *(v74 + 24);
        v83 = *v81;
        if (v82 < *v81)
        {
          *(v74 + 24) = v82 + 1;
          v84 = *&v81[2 * v82 + 2];
          goto LABEL_100;
        }

        if (v83 == *(v74 + 28))
        {
LABEL_98:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v74 + 16));
          v81 = *(v74 + 32);
          v83 = *v81;
        }

        *v81 = v83 + 1;
        v84 = sub_275E1FEDC(*(v74 + 16));
        v85 = *(v74 + 24);
        v86 = *(v74 + 32) + 8 * v85;
        *(v74 + 24) = v85 + 1;
        *(v86 + 8) = v84;
LABEL_100:
        *(v84 + 16) |= 2u;
        v87 = *(v84 + 32);
        if (!v87)
        {
          v88 = *(v84 + 8);
          if (v88)
          {
            v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
          }

          v87 = MEMORY[0x277C8F050](v88);
          *(v84 + 32) = v87;
        }

        [v111 setWeakReference:v80 message:v87];
        v89 = [(NSMapTable *)selfCopy->_instructionalTextForInfos objectForKeyedSubscript:v80];
        tsp_protobufString2 = [v89 tsp_protobufString];
        *(v84 + 16) |= 1u;
        sub_275D55B98(__p, tsp_protobufString2);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v138 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v77 = [keyEnumerator2 countByEnumeratingWithState:&v117 objects:v140 count:16];
    }

    while (v77);
  }

  [v111 setIgnoreAndPreserveRuleForField:45 message:archive];
  inDocument = selfCopy->_inDocument;
  *(archive + 4) |= 0x10000000u;
  *(archive + 457) = inDocument;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v109 = v104;
  v92 = [v109 countByEnumeratingWithState:&v113 objects:v139 count:16];
  if (v92)
  {
    v93 = *v114;
    v107 = *MEMORY[0x277D809B8];
    v103 = *MEMORY[0x277D80970];
    do
    {
      for (n = 0; n != v92; ++n)
      {
        if (*v114 != v93)
        {
          objc_enumerationMutation(v109);
        }

        v95 = *(*(&v113 + 1) + 8 * n);
        if ([v95 hasExcludedBuilds])
        {
          v96 = [v95 filteredBuildsForBuilds:v110];
          v97 = [v111 alternateDiffToMergeBeforeVersion:objc_msgSend(v95 fileFormatVersion:"excludedBuildMinVersion") message:{v107, archive}];
          google::protobuf::internal::AssignDescriptors();
          v98 = [v97 messageWithNewFunction:sub_275D55CF8 descriptor:off_2812EA908[32]];

          [v97 removeField:2 message:v98];
          [v97 setStrongReferenceArray:v96 message:v98 + 24];
          v99 = [v95 filteredBuildChunksForBuildChunks:selfCopy->_buildChunks];
          [v97 removeField:43 message:v98];
          [v97 setStrongReferenceArray:v99 message:v98 + 216];
          [v111 requiresDocumentReadVersion:v103 writeVersion:v18];
        }
      }

      v92 = [v109 countByEnumeratingWithState:&v113 objects:v139 count:16];
    }

    while (v92);
  }
}

- (void)p_updateOverlappingBuildEventTriggers
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  buildChunks = [(KNAbstractSlide *)self buildChunks];
  v4 = [buildChunks countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(buildChunks);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 hasComplement])
        {
          [(KNAbstractSlide *)self willModifyForUpgrade];
          [v7 setReferent:1];
        }
      }

      v4 = [buildChunks countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (unint64_t)p_keynoteVersionFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if ([unarchiverCopy hasPreUFFVersion])
  {
    preUFFVersion = [unarchiverCopy preUFFVersion];
  }

  else
  {
    fileFormatVersion = [unarchiverCopy fileFormatVersion];
    if (fileFormatVersion >= *MEMORY[0x277D80958])
    {
      if (fileFormatVersion >= *MEMORY[0x277D80988])
      {
        if (fileFormatVersion >= *MEMORY[0x277D808C8])
        {
          v6 = &qword_275E79258;
        }

        else
        {
          v6 = &unk_275E79248;
        }
      }

      else
      {
        v6 = &qword_275E79240;
      }
    }

    else
    {
      v6 = &qword_275E79238;
    }

    preUFFVersion = *v6;
  }

  return preUFFVersion;
}

- (void)p_updateBuildEffects:(BOOL)effects version:(unint64_t)version
{
  effectsCopy = effects;
  v46 = *MEMORY[0x277D85DE8];
  v36 = +[KNAnimationRegistry instance];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(KNAbstractSlide *)self builds];
  v4 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v4)
  {
    v35 = *v42;
    do
    {
      v37 = v4;
      for (i = 0; i != v37; ++i)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * i);
        effect = [v6 effect];
        animationType = [v6 animationType];
        drawable = [v6 drawable];
        v10 = [v36 animationInfoForEffectIdentifier:effect animationType:animationType includeObsoleteNames:1 drawable:drawable];
        v11 = v10;
        if (version < 0xE94D0C4B44)
        {
          effectIdentifier = [v10 effectIdentifier];
          [effectIdentifier isEqualToString:effect];
        }

        animationClass = [v11 animationClass];
        if ([animationClass conformsToProtocol:&unk_28852EB30])
        {
          attributes = [v6 attributes];
          v14Attributes = [attributes attributes];

          v40 = v14Attributes;
          effectIdentifier2 = [v11 effectIdentifier];
          v39 = 0;
          [animationClass upgradeAttributes:&v40 animationName:effectIdentifier2 oldAnimationName:effect warning:&v39 type:objc_msgSend(v6 isFromClassic:"animationType") version:{effectsCopy, version}];
          v17 = v40;

          v18 = v39;
          attributes2 = [v6 attributes];
          v20 = [attributes2 attributesByAddingAttributesFromDictionary:v17];
          [v6 setAttributes:v20];
        }

        if ([animationClass conformsToProtocol:&unk_28852EBF0] && objc_msgSend(animationClass, "shouldWarnOnUpgradeWithOldAnimationName:version:", effect, version))
        {
          context = [(KNAbstractSlide *)self context];
          delegate = [context delegate];
          v22 = objc_opt_respondsToSelector();
          if (v22)
          {
            v23 = MEMORY[0x277CCACA8];
            v30 = sub_275DC204C(v22);
            v24 = [v30 localizedStringForKey:@"%@ builds were imported as %@." value:&stru_2884D8E20 table:@"Keynote"];
            v25 = [KNAnimationRegistry localizedNameForUnsupportedAnimation:effect];
            v26 = [animationClass localizedAnimationStringForUpgradeWarning:{objc_msgSend(v6, "animationType")}];
            v27 = [v23 localizedStringWithFormat:v24, v25, v26];

            v28 = [MEMORY[0x277D81368] warningWithMessage:v27];
            v29 = [MEMORY[0x277CBEB98] setWithObject:v28];
            [delegate addPersistenceWarnings:v29];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v4);
  }
}

- (KNSlideNode)slideNode
{
  WeakRetained = objc_loadWeakRetained(&self->_slideNode);

  return WeakRetained;
}

- (id)pdfDataUsingDocumentRoot:(id)root
{
  rootCopy = root;
  v5 = [[KNImager alloc] initWithDocumentRoot:rootCopy];
  slideNode = [(KNAbstractSlide *)self slideNode];
  [(TSDImager *)v5 setIsPrinting:1];
  blackColor = [MEMORY[0x277D81180] blackColor];
  [(TSDImager *)v5 setBackgroundColor:blackColor];

  show = [rootCopy show];
  [show size];
  TSURectWithSize();
  [(TSDImager *)v5 setUnscaledClipRect:?];

  infosToDisplay = [(KNAbstractSlide *)self infosToDisplay];
  [(TSDImager *)v5 setInfos:infosToDisplay];

  show2 = [rootCopy show];

  slideTree = [show2 slideTree];
  -[KNImager setSlideNumber:](v5, "setSlideNumber:", [slideTree slideNumberForSlideNode:slideNode]);

  slide = [slideNode slide];
  [(KNImager *)v5 setSlide:slide];

  pdfData = [(TSDImager *)v5 pdfData];

  return pdfData;
}

- (id)imageUsingDocumentRoot:(id)root
{
  rootCopy = root;
  v5 = [[KNImager alloc] initWithDocumentRoot:rootCopy];
  slideNode = [(KNAbstractSlide *)self slideNode];
  blackColor = [MEMORY[0x277D81180] blackColor];
  [(TSDImager *)v5 setBackgroundColor:blackColor];

  show = [rootCopy show];
  [show size];
  TSURectWithSize();
  [(TSDImager *)v5 setUnscaledClipRect:?];

  infosToDisplay = [(KNAbstractSlide *)self infosToDisplay];
  [(TSDImager *)v5 setInfos:infosToDisplay];

  show2 = [rootCopy show];

  slideTree = [show2 slideTree];
  -[KNImager setSlideNumber:](v5, "setSlideNumber:", [slideTree slideNumberForSlideNode:slideNode]);

  slide = [slideNode slide];
  [(KNImager *)v5 setSlide:slide];

  newImage = [(TSDImager *)v5 newImage];
  v14 = [objc_alloc(MEMORY[0x277D811F8]) initWithCGImage:newImage];
  CGImageRelease(newImage);

  return v14;
}

@end