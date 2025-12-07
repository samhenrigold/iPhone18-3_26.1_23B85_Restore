@interface KNSlideNode
+ (id)UUIDStringSetForSlideNodes:(id)nodes;
+ (id)parentSlideNodeForInfo:(id)info;
+ (id)slideNodeForSelectionPath:(id)path;
+ (id)slideNodeUUIDForObsoleteUniqueIDString:(id)string inSlideNodes:(id)nodes;
- (BOOL)hasChildren;
- (BOOL)hasExplicitBuilds;
- (BOOL)hasSlideSpecificHyperlinkToNode:(id)node;
- (BOOL)isSlideNumberVisible;
- (BOOL)resolverNameIsUsed:(id)used;
- (KNAbstractSlide)slide;
- (KNLiveVideoSourceUsage)liveVideoSourceUsage;
- (KNSlideNode)initWithContext:(id)context;
- (KNSlideNode)next;
- (KNSlideNode)nextSkippingCollapsed;
- (KNSlideNode)nextSkippingHidden;
- (KNSlideNode)previous;
- (KNSlideNode)previousSkippingCollapsed;
- (KNSlideNode)previousSkippingHidden;
- (KNSlideTree)slideTree;
- (NSArray)children;
- (NSString)uniqueIdentifier;
- (id)childEnumerator;
- (id)descendantsOmittingSkippedSlideNodes:(BOOL)nodes omittingCollapsedSlideNodes:(BOOL)slideNodes;
- (id)objectUUIDPath;
- (id)p_getSlideSpecificMappingForStorage:(id)storage forSlideNode:(id)node;
- (id)p_mappingFromString:(id)string;
- (id)p_slideNodeWithUUIDString:(id)string inSlideNodes:(id)nodes;
- (id)paragraphIndexesOfTopLevelBullets;
- (id)resolverMatchingName:(id)name;
- (id)resolversMatchingPrefix:(id)prefix;
- (int64_t)bodyParagraphCount;
- (unint64_t)buildEventCount;
- (unint64_t)numberOfLinksToSlideNodeInStorage:(id)storage forSlideNodeUUIDString:(id)string;
- (unint64_t)p_buildEventCount;
- (unint64_t)safeBuildEventCount;
- (unsigned)nextUntitledResolverIndex;
- (void)addHyperlinkFieldMap:(id)map forStorage:(id)storage;
- (void)addHyperlinkForInfo:(id)info toSlideNode:(id)node;
- (void)addHyperlinkForStorage:(id)storage toSlideNode:(id)node;
- (void)addOldModelDescendantsToSlideTree:(id)tree;
- (void)addRemappedTableName:(id)name;
- (void)addThumbnail:(id)thumbnail atSize:(CGSize)size;
- (void)cleanOutInvalidSlideSpecificInfoEntries;
- (void)clearRemappedTableNames;
- (void)clearSlideSpecificLinkMap;
- (void)invalidateBuildEventCountCaches;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_addHyperlinkForObjectReferencedByMapping:(id)mapping toSlideNode:(id)node;
- (void)p_addOldModelDescendantsToSlideTree:(id)tree atDepth:(unint64_t)depth;
- (void)p_commonInit;
- (void)p_removeHyperlinkForObjectReferencedByMapping:(id)mapping toSlideNode:(id)node;
- (void)p_updateHasExplicitBuilds;
- (void)purgeU15ModelIfNeeded;
- (void)removeAllThumbnails;
- (void)removeHyperlinkFieldMap:(id)map forStorage:(id)storage;
- (void)removeHyperlinkForInfo:(id)info toSlideNode:(id)node;
- (void)removeHyperlinkForStorage:(id)storage toSlideNode:(id)node;
- (void)removeInvalidSlideSpecificHyperlinksForStorage:(id)storage withSlideNodeUUIDStrings:(id)strings;
- (void)removeInvalidSlideSpecificHyperlinksWithSlideNodeUUIDStrings:(id)strings;
- (void)removeSlideSpecificMappingsFromDrawablesInGroup:(id)group;
- (void)removeThumbnailAtSize:(CGSize)size;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setClassicUniqueID:(id)d;
- (void)setDepth:(unint64_t)depth;
- (void)setDigestsForDatasThatNeedDownloadForThumbnail:(id)thumbnail;
- (void)setHasNote:(BOOL)note;
- (void)setHasTransition:(BOOL)transition;
- (void)setIsSlideNumberVisible:(BOOL)visible;
- (void)setPreviousIdentifier:(id)identifier;
- (void)setSkipped:(BOOL)skipped;
- (void)setSlide:(id)slide;
- (void)setThumbnailsAreDirty:(BOOL)dirty;
- (void)uniquifyTableNamesForUpgradeOrImport;
- (void)updateBackgroundIsNoFillOrColorFillWithAlpha;
- (void)updateLiveVideoSourceUsage;
- (void)updateTemplateSlideUUID;
- (void)upgradeSlideSpecificHyperlinksForSlideNodes:(id)nodes;
- (void)upgradeSlideSpecificStorageHyperlinksForStorage:(id)storage withSlideNodes:(id)nodes;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation KNSlideNode

- (void)setThumbnailsAreDirty:(BOOL)dirty
{
  if (self->_thumbnailsAreDirty != dirty)
  {
    [(KNSlideNode *)self willModify];
    self->_thumbnailsAreDirty = dirty;
  }
}

- (void)setHasTransition:(BOOL)transition
{
  if (self->_hasTransition != transition)
  {
    [(KNSlideNode *)self willModify];
    self->_hasTransition = transition;
  }
}

- (void)setHasNote:(BOOL)note
{
  if (self->_hasNote != note)
  {
    [(KNSlideNode *)self willModify];
    self->_hasNote = note;
  }
}

- (void)setIsSlideNumberVisible:(BOOL)visible
{
  if (self->_slideNumberVisible != visible)
  {
    [(KNSlideNode *)self willModify];
    self->_slideNumberVisible = visible;
  }
}

- (void)setDepth:(unint64_t)depth
{
  if (self->_depth != depth)
  {
    [(KNSlideNode *)self willModify];
    self->_depth = depth;
  }
}

- (void)setClassicUniqueID:(id)d
{
  dCopy = d;
  if (self->_classicUniqueID != dCopy)
  {
    v6 = dCopy;
    [(KNSlideNode *)self willModify];
    objc_storeStrong(&self->_classicUniqueID, d);
    dCopy = v6;
  }
}

+ (id)parentSlideNodeForInfo:(id)info
{
  v3 = [KNAbstractSlide parentSlideForInfo:info];
  slideNode = [v3 slideNode];

  return slideNode;
}

+ (id)slideNodeForSelectionPath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy mostSpecificSelectionOfClass:objc_opt_class()];

  slideNodeToEdit = [v4 slideNodeToEdit];

  return slideNodeToEdit;
}

- (KNSlideNode)initWithContext:(id)context
{
  v9.receiver = self;
  v9.super_class = KNSlideNode;
  v3 = [(KNSlideNode *)&v9 initWithContext:context];
  v4 = v3;
  if (v3)
  {
    [(KNSlideNode *)v3 p_commonInit];
    v5 = [KNLiveVideoSourceUsage alloc];
    v6 = [(KNLiveVideoSourceUsage *)v5 initWithLiveVideoInfos:MEMORY[0x277CBEBF8]];
    liveVideoSourceUsage = v4->_liveVideoSourceUsage;
    v4->_liveVideoSourceUsage = v6;
  }

  return v4;
}

- (NSString)uniqueIdentifier
{
  objectUUID = [(KNSlideNode *)self objectUUID];
  if (!objectUUID)
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode uniqueIdentifier]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:171 isFatal:0 description:{"invalid nil value for '%{public}s'", "uuid"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  uUIDString = [objectUUID UUIDString];

  return uUIDString;
}

- (void)setPreviousIdentifier:(id)identifier
{
  if (self->_previousIdentifier != identifier)
  {
    identifierCopy = identifier;
    [(KNSlideNode *)self willModify];
    v5 = [identifierCopy copy];

    previousIdentifier = self->_previousIdentifier;
    self->_previousIdentifier = v5;
  }
}

- (KNSlideNode)next
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v4 = [WeakRetained slideNodeAfterSlideNode:self omitSkippedSlideNodes:0 omitCollapsedSlideNodes:0];

  return v4;
}

- (KNSlideNode)previous
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v4 = [WeakRetained slideNodeBeforeSlideNode:self omitSkippedSlideNodes:0 omitCollapsedSlideNodes:0];

  return v4;
}

- (KNSlideNode)nextSkippingCollapsed
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v4 = [WeakRetained slideNodeAfterSlideNode:self omitSkippedSlideNodes:0 omitCollapsedSlideNodes:1];

  return v4;
}

- (KNSlideNode)previousSkippingCollapsed
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v4 = [WeakRetained slideNodeBeforeSlideNode:self omitSkippedSlideNodes:0 omitCollapsedSlideNodes:1];

  return v4;
}

- (KNSlideNode)nextSkippingHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v4 = [WeakRetained slideNodeAfterSlideNode:self omitSkippedSlideNodes:1 omitCollapsedSlideNodes:0];

  return v4;
}

- (KNSlideNode)previousSkippingHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v4 = [WeakRetained slideNodeBeforeSlideNode:self omitSkippedSlideNodes:1 omitCollapsedSlideNodes:0];

  return v4;
}

- (BOOL)hasChildren
{
  next = [(KNSlideNode *)self next];
  if (next)
  {
    depth = [(KNSlideNode *)self depth];
    v5 = depth < [next depth];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)children
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v4 = [WeakRetained childrenOfSlideNode:self];

  return v4;
}

- (void)updateTemplateSlideUUID
{
  if (self->_slideReference)
  {
    slide = [(KNSlideNode *)self slide];
    objc_opt_class();
    v4 = TSUDynamicCast();
    v5 = v4;
    if (v4)
    {
      [v4 templateSlide];
    }

    else
    {
      objc_opt_class();
      TSUDynamicCast();
    }
    v10 = ;
    objectUUID = [v10 objectUUID];
    templateSlideUUID = self->_templateSlideUUID;
    if (objectUUID | templateSlideUUID && ([(NSUUID *)templateSlideUUID isEqual:objectUUID]& 1) == 0)
    {
      [(KNSlideNode *)self willModify];
      v8 = [objectUUID copy];
      v9 = self->_templateSlideUUID;
      self->_templateSlideUUID = v8;
    }
  }
}

- (void)updateBackgroundIsNoFillOrColorFillWithAlpha
{
  if (self->_slideReference)
  {
    slide = [(KNSlideNode *)self slide];
    backgroundIsNoFillOrColorFillWithAlpha = [slide backgroundIsNoFillOrColorFillWithAlpha];

    if (self->_backgroundIsNoFillOrColorFillWithAlpha != backgroundIsNoFillOrColorFillWithAlpha)
    {
      [(KNSlideNode *)self willModify];
      self->_backgroundIsNoFillOrColorFillWithAlpha = backgroundIsNoFillOrColorFillWithAlpha;
    }
  }
}

- (BOOL)hasExplicitBuilds
{
  if (!self->_hasExplicitBuildsIsUpToDate)
  {
    [(KNSlideNode *)self p_updateHasExplicitBuilds];
  }

  return self->_hasExplicitBuilds;
}

- (void)p_updateHasExplicitBuilds
{
  [(KNSlideNode *)self willModify];
  if (self->_buildEventCountIsUpToDate && ![(KNSlideNode *)self hasBuildEvents])
  {
    self->_hasExplicitBuilds = 0;
  }

  else
  {
    slide = [(KNSlideNode *)self slide];
    self->_hasExplicitBuilds = [slide buildChunkCount] != 0;
  }

  self->_hasExplicitBuildsIsUpToDate = 1;
}

- (unint64_t)buildEventCount
{
  if (!self->_buildEventCountIsUpToDate)
  {
    p_buildEventCount = [(KNSlideNode *)self p_buildEventCount];
    if (p_buildEventCount == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = MEMORY[0x277D81150];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode buildEventCount]"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m"];
      [v4 handleFailureInFunction:v5 file:v6 lineNumber:303 isFatal:0 description:"Build event count was not properly updated."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    else
    {
      v7 = p_buildEventCount;
      [(KNSlideNode *)self willModify];
      self->_buildEventCount = v7;
      self->_buildEventCountIsUpToDate = 1;
    }
  }

  return self->_buildEventCount;
}

- (unint64_t)safeBuildEventCount
{
  result = [(KNSlideNode *)self p_buildEventCount];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

- (void)invalidateBuildEventCountCaches
{
  [(KNSlideNode *)self willModify];
  self->_buildEventCountIsUpToDate = 0;
  self->_hasExplicitBuildsIsUpToDate = 0;
}

- (unint64_t)p_buildEventCount
{
  v43 = *MEMORY[0x277D85DE8];
  slide = [(KNSlideNode *)self slide];
  builds = [slide builds];
  [slide buildChunks];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = v40 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v5)
  {
    v10 = 1;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = *v38;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v38 != v7)
      {
        objc_enumerationMutation(v4);
      }

      build = [*(*(&v37 + 1) + 8 * i) build];
      if (!build)
      {
        v11 = MEMORY[0x277D81150];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode p_buildEventCount]"];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m"];
        v14 = "Chunk has a nil build. Make sure begin/endUpdatingBuildsAndChunks is being used properly.";
        v15 = v11;
        v16 = v12;
        v17 = v13;
        v18 = 343;
LABEL_14:
        [v15 handleFailureInFunction:v16 file:v17 lineNumber:v18 isFatal:0 description:v14];

        [MEMORY[0x277D81150] logBacktraceThrottled];
        v10 = 0;
        goto LABEL_15;
      }

      if (([builds containsObject:build] & 1) == 0)
      {
        v19 = MEMORY[0x277D81150];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode p_buildEventCount]"];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m"];
        v14 = "Chunk has a build which is not currently on the slide. Make sure begin/endUpdatingBuildsAndChunks is being used properly.";
        v15 = v19;
        v16 = v12;
        v17 = v13;
        v18 = 349;
        goto LABEL_14;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
    v10 = 1;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = builds;
  v21 = [(KNAnimatedSlideModel *)v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    while (2)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        if (![*(*(&v33 + 1) + 8 * j) chunkCount])
        {
          v29 = MEMORY[0x277D81150];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode p_buildEventCount]"];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m"];
          [v29 handleFailureInFunction:v30 file:v31 lineNumber:358 isFatal:0 description:"Build has no chunks on the slide. Make sure begin/endUpdatingBuildsAndChunks is being used properly."];

          [MEMORY[0x277D81150] logBacktraceThrottled];
          buildEventCount = 0x7FFFFFFFFFFFFFFFLL;
          v27 = v20;
          goto LABEL_26;
        }
      }

      v22 = [(KNAnimatedSlideModel *)v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  if (v10)
  {
    v25 = [KNAnimatedSlideModel alloc];
    infosToDisplay = [slide infosToDisplay];
    v27 = [(KNAnimatedSlideModel *)v25 initWithBuildChunks:v4 infos:infosToDisplay session:0 animatedSlideView:0];

    buildEventCount = [(KNAnimatedSlideModel *)v27 buildEventCount];
LABEL_26:
  }

  else
  {
    buildEventCount = 0x7FFFFFFFFFFFFFFFLL;
  }

  return buildEventCount;
}

- (int64_t)bodyParagraphCount
{
  slide = [(KNSlideNode *)self slide];
  bodyPlaceholder = [slide bodyPlaceholder];
  textStorage = [bodyPlaceholder textStorage];

  if ([textStorage length])
  {
    paragraphCount = [textStorage paragraphCount];
  }

  else
  {
    paragraphCount = [(KNSlideNode *)self hasBodyInOutlineView];
  }

  return paragraphCount;
}

- (void)uniquifyTableNamesForUpgradeOrImport
{
  v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = objc_alloc(MEMORY[0x277D80660]);
  slide = [(KNSlideNode *)self slide];
  v5 = [v3 initWithRootModelObject:slide filter:0];

  nextObject = [v5 nextObject];
  if (nextObject)
  {
    v7 = nextObject;
    v8 = 0x277D80000uLL;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_14:
      nextObject2 = [v5 nextObject];

      v7 = nextObject2;
      if (!nextObject2)
      {
        goto LABEL_15;
      }
    }

    objc_opt_class();
    v9 = TSUDynamicCast();
    tableName = [v9 tableName];
    if ([tableName isEqualToString:@"Unnamed"])
    {
      v11 = 1;
      if (!tableName)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = [tableName isEqualToString:@"Unnamed Table"];
      if (!tableName)
      {
        goto LABEL_10;
      }
    }

    if (!(([tableName length] == 0) | v11 & 1) && !objc_msgSend(v18, "containsObject:", tableName))
    {
      tableName2 = tableName;
LABEL_13:
      [v18 addObject:tableName2];

      goto LABEL_14;
    }

LABEL_10:
    [v9 chooseUniqueNameInContainer:self forPaste:0 needsNewName:v11 avoidNames:v18];
    tableName2 = [v9 tableName];

    if ([v18 containsObject:tableName2])
    {
      v13 = MEMORY[0x277D81150];
      [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode uniquifyTableNamesForUpgradeOrImport]"];
      v15 = v14 = v8;
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m"];
      [v13 handleFailureInFunction:v15 file:v16 lineNumber:407 isFatal:0 description:"fresh table name is already in use"];

      v8 = v14;
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (KNLiveVideoSourceUsage)liveVideoSourceUsage
{
  liveVideoSourceUsage = self->_liveVideoSourceUsage;
  if (liveVideoSourceUsage)
  {
    v3 = liveVideoSourceUsage;
  }

  else
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode liveVideoSourceUsage]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:418 isFatal:0 description:"Attempting to access liveVideoSourceUsage before it has been initialized or unarchived."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    v7 = [KNLiveVideoSourceUsage alloc];
    v3 = [(KNLiveVideoSourceUsage *)v7 initWithLiveVideoInfos:MEMORY[0x277CBEBF8]];
  }

  return v3;
}

- (void)updateLiveVideoSourceUsage
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_slideReference)
  {
    slide = [(KNSlideNode *)self slide];
    objc_opt_class();
    v4 = TSUDynamicCast();
    v5 = v4;
    if (v4)
    {
      [v4 nonPlaceholderObjects];
    }

    else
    {
      [slide ownedChildInfos];
    }
    v6 = ;
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          objc_opt_class();
          v13 = TSUDynamicCast();
          if (v13)
          {
            [v7 addObject:{v13, v15}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v14 = [[KNLiveVideoSourceUsage alloc] initWithLiveVideoInfos:v7];
    if (![(KNLiveVideoSourceUsage *)v14 isEqual:self->_liveVideoSourceUsage])
    {
      [(KNSlideNode *)self willModify];
      objc_storeStrong(&self->_liveVideoSourceUsage, v14);
    }
  }
}

+ (id)UUIDStringSetForSlideNodes:(id)nodes
{
  v18 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(nodesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = nodesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        objectUUID = [*(*(&v13 + 1) + 8 * i) objectUUID];
        uUIDString = [objectUUID UUIDString];
        [v4 addObject:uUIDString];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)hasSlideSpecificHyperlinkToNode:(id)node
{
  v41 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  [(NSMutableDictionary *)self->_slideSpecificHyperlinkMap objectForKeyedSubscript:nodeCopy];
  v35 = 0;
  v36 = &v35;
  v5 = v37 = 0x2020000000;
  v38 = v5 != 0;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    [(KNSlideNode *)self slide];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v20 = v32 = 0u;
    childInfos = [v20 childInfos];
    v8 = [childInfos countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v8)
    {
      v22 = *v32;
      obj = childInfos;
      do
      {
        v9 = 0;
        v23 = v8;
        do
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(obj);
          }

          objc_opt_class();
          v10 = TSUDynamicCast();
          v11 = v10;
          if (v10)
          {
            allRichTextStorages = [v10 allRichTextStorages];
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v13 = allRichTextStorages;
            v14 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
            if (v14)
            {
              v15 = *v28;
LABEL_11:
              v16 = 0;
              while (1)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v27 + 1) + 8 * v16);
                v18 = [v17 length];
                v24[0] = MEMORY[0x277D85DD0];
                v24[1] = 3221225472;
                v24[2] = sub_275D73780;
                v24[3] = &unk_27A698280;
                v25 = nodeCopy;
                v26 = &v35;
                [v17 enumerateSmartFieldsWithAttributeKind:6 inRange:0 usingBlock:{v18, v24}];
                LOBYTE(v17) = *(v36 + 24);

                if (v17)
                {
                  break;
                }

                if (v14 == ++v16)
                {
                  v14 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
                  if (v14)
                  {
                    goto LABEL_11;
                  }

                  break;
                }
              }
            }
          }

          ++v9;
        }

        while (v9 != v23);
        childInfos = obj;
        v8 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v8);
    }

    v6 = *(v36 + 24);
    v5 = 0;
  }

  _Block_object_dispose(&v35, 8);

  return v6 & 1;
}

- (void)p_addHyperlinkForObjectReferencedByMapping:(id)mapping toSlideNode:(id)node
{
  nodeCopy = node;
  slideSpecificHyperlinkMap = self->_slideSpecificHyperlinkMap;
  mappingCopy = mapping;
  v8 = [(NSMutableDictionary *)slideSpecificHyperlinkMap objectForKeyedSubscript:nodeCopy];
  if (v8)
  {
    v9 = v8;
    [v8 addObject:mappingCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] setWithObject:mappingCopy];

    [(NSMutableDictionary *)self->_slideSpecificHyperlinkMap setObject:v9 forKeyedSubscript:nodeCopy];
  }
}

- (void)addHyperlinkForInfo:(id)info toSlideNode:(id)node
{
  nodeCopy = node;
  objectUUID = [info objectUUID];
  [(KNSlideNode *)self p_addHyperlinkForObjectReferencedByMapping:objectUUID toSlideNode:nodeCopy];
}

- (void)addHyperlinkForStorage:(id)storage toSlideNode:(id)node
{
  storageCopy = storage;
  nodeCopy = node;
  tst_tableInfo = [storageCopy tst_tableInfo];
  if (!tst_tableInfo)
  {
    objectUUID = [storageCopy objectUUID];
    [(KNSlideNode *)self p_addHyperlinkForObjectReferencedByMapping:objectUUID toSlideNode:nodeCopy];
  }
}

- (void)addHyperlinkFieldMap:(id)map forStorage:(id)storage
{
  storageCopy = storage;
  if (map)
  {
    v11 = storageCopy;
    v7 = [map url];
    absoluteString = [v7 absoluteString];
    v9 = absoluteString;
    if (v7 && ![absoluteString rangeOfString:@"?slideid="])
    {
      v10 = [v9 substringFromIndex:{objc_msgSend(@"?slideid=", "length")}];
      [(KNSlideNode *)self addHyperlinkForStorage:v11 toSlideNode:v10];
    }

    storageCopy = v11;
  }
}

- (void)p_removeHyperlinkForObjectReferencedByMapping:(id)mapping toSlideNode:(id)node
{
  mappingCopy = mapping;
  nodeCopy = node;
  v7 = [(NSMutableDictionary *)self->_slideSpecificHyperlinkMap objectForKey:nodeCopy];
  v8 = v7;
  if (v7 && [v7 containsObject:mappingCopy])
  {
    if ([v8 count] == 1)
    {

      [(NSMutableDictionary *)self->_slideSpecificHyperlinkMap removeObjectForKey:nodeCopy];
      v8 = 0;
    }

    else
    {
      [v8 removeObject:mappingCopy];
    }
  }
}

- (void)cleanOutInvalidSlideSpecificInfoEntries
{
  v39 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_slideSpecificHyperlinkMap allKeys];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v22 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v22)
  {
    v21 = *v34;
    do
    {
      v2 = 0;
      do
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v2;
        v23 = *(*(&v33 + 1) + 8 * v2);
        v3 = [(NSMutableDictionary *)self->_slideSpecificHyperlinkMap objectForKeyedSubscript:?];
        v25 = [MEMORY[0x277CBEB58] set];
        slide = [(KNSlideNode *)self slide];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v26 = v3;
        v5 = [v26 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v5)
        {
          v6 = v5;
          v28 = *v30;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v30 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v8 = *(*(&v29 + 1) + 8 * i);
              objc_opt_class();
              v9 = TSUDynamicCast();
              if (v9)
              {
                context = [(KNSlideNode *)self context];
                v11 = [context objectWithUUID:v9];

                objc_opt_class();
                v12 = TSUDynamicCast();
                objc_opt_class();
                if (v12)
                {
                  parentDrawable = [v12 parentDrawable];
                  v14 = TSUDynamicCast();

                  if (!v14)
                  {
                    goto LABEL_22;
                  }
                }

                else
                {
                  v14 = TSUDynamicCast();
                  if (!v14)
                  {
LABEL_22:

                    goto LABEL_23;
                  }
                }

                parentInfo = [v14 parentInfo];
                if (parentInfo)
                {
                  v16 = parentInfo;
                  while (v16 != slide)
                  {
                    parentInfo2 = [v16 parentInfo];

                    v16 = parentInfo2;
                    if (!parentInfo2)
                    {
                      goto LABEL_22;
                    }
                  }

                  [v25 addObject:v8];
                }

                goto LABEL_22;
              }

LABEL_23:
            }

            v6 = [v26 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v6);
        }

        [(KNSlideNode *)self willModify];
        v18 = [v25 count];
        slideSpecificHyperlinkMap = self->_slideSpecificHyperlinkMap;
        if (v18)
        {
          [(NSMutableDictionary *)slideSpecificHyperlinkMap setObject:v25 forKeyedSubscript:v23];
        }

        else
        {
          [(NSMutableDictionary *)slideSpecificHyperlinkMap removeObjectForKey:v23];
        }

        v2 = v24 + 1;
      }

      while (v24 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v22);
  }
}

- (void)removeHyperlinkForStorage:(id)storage toSlideNode:(id)node
{
  storageCopy = storage;
  nodeCopy = node;
  if ([(KNSlideNode *)self numberOfLinksToSlideNodeInStorage:storageCopy forSlideNodeUUIDString:nodeCopy]<= 1)
  {
    v7 = [(KNSlideNode *)self p_getSlideSpecificMappingForStorage:storageCopy forSlideNode:nodeCopy];
    objc_opt_class();
    v8 = TSUDynamicCast();
    v9 = v8;
    if (!v8 || ([v8 decrement], !objc_msgSend(v9, "linkCount")))
    {
      [(KNSlideNode *)self p_removeHyperlinkForObjectReferencedByMapping:v7 toSlideNode:nodeCopy];
    }
  }
}

- (void)removeHyperlinkForInfo:(id)info toSlideNode:(id)node
{
  nodeCopy = node;
  objectUUID = [info objectUUID];
  [(KNSlideNode *)self p_removeHyperlinkForObjectReferencedByMapping:objectUUID toSlideNode:nodeCopy];
}

- (void)removeHyperlinkFieldMap:(id)map forStorage:(id)storage
{
  storageCopy = storage;
  if (map)
  {
    v11 = storageCopy;
    v7 = [map url];
    absoluteString = [v7 absoluteString];
    v9 = absoluteString;
    if (v7 && ![absoluteString rangeOfString:@"?slideid="])
    {
      v10 = [v9 substringFromIndex:{objc_msgSend(@"?slideid=", "length")}];
      [(KNSlideNode *)self removeHyperlinkForStorage:v11 toSlideNode:v10];
    }

    storageCopy = v11;
  }
}

- (void)removeSlideSpecificMappingsFromDrawablesInGroup:(id)group
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  childInfos = [group childInfos];
  v5 = [childInfos countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(childInfos);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        v10 = TSUDynamicCast();
        if (v10)
        {
          [(KNSlideNode *)self removeSlideSpecificMappingsFromDrawablesInGroup:v10];
        }

        else
        {
          hyperlinkURL = [v9 hyperlinkURL];

          if (hyperlinkURL)
          {
            hyperlinkURL2 = [v9 hyperlinkURL];
            v13 = [KNHyperlinkController uniqueIdentifierFromHyperlinkURL:hyperlinkURL2];

            if (v13)
            {
              [(KNSlideNode *)self removeHyperlinkForInfo:v9 toSlideNode:v13];
            }
          }
        }
      }

      v6 = [childInfos countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)p_getSlideSpecificMappingForStorage:(id)storage forSlideNode:(id)node
{
  v27 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  nodeCopy = node;
  tst_tableInfo = [storageCopy tst_tableInfo];
  if (tst_tableInfo)
  {
    v9 = [(NSMutableDictionary *)self->_slideSpecificHyperlinkMap objectForKeyedSubscript:nodeCopy];
    objectUUID = [tst_tableInfo objectUUID];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v21 = storageCopy;
      v14 = *v23;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        objc_opt_class();
        v16 = TSUDynamicCast();
        objectUUID2 = v16;
        if (v16)
        {
          tableInfoUUID = [v16 tableInfoUUID];
          v19 = [tableInfoUUID isEqual:objectUUID];

          if (v19)
          {
            break;
          }
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          objectUUID2 = 0;
          break;
        }
      }

      storageCopy = v21;
    }

    else
    {
      objectUUID2 = 0;
    }
  }

  else
  {
    objectUUID2 = [storageCopy objectUUID];
  }

  return objectUUID2;
}

- (id)childEnumerator
{
  v10[1] = *MEMORY[0x277D85DE8];
  slide = [(KNSlideNode *)self slide];
  v3 = slide;
  if (slide)
  {
    v10[0] = slide;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    objectEnumerator = [v4 objectEnumerator];
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode childEnumerator]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:791 isFatal:0 description:{"invalid nil value for '%{public}s'", "slide"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    objectEnumerator = [MEMORY[0x277CBEBF8] objectEnumerator];
  }

  return objectEnumerator;
}

- (KNAbstractSlide)slide
{
  v8 = 0;
  v2 = [(KNSlideNode *)self slideAndReturnError:&v8];
  v3 = v8;
  if (!v2)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode slide]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:844 isFatal:0 description:{"Failed to load lazy slide reference with error %@", v3}];

    [MEMORY[0x277D81150] logFullBacktrace];
  }

  return v2;
}

- (void)setSlide:(id)slide
{
  slideCopy = slide;
  [(KNSlideNode *)self willModify];
  v5 = [objc_alloc(MEMORY[0x277D80868]) initWithObject:slideCopy];

  slideReference = self->_slideReference;
  self->_slideReference = v5;

  [(TSPLazyReference *)self->_slideReference addLoadObserver:self action:sel_didLoadSlide_];
  [(KNSlideNode *)self updateTemplateSlideUUID];
  [(KNSlideNode *)self updateBackgroundIsNoFillOrColorFillWithAlpha];

  [(KNSlideNode *)self updateLiveVideoSourceUsage];
}

- (void)setSkipped:(BOOL)skipped
{
  if (self->_skipped != skipped)
  {
    [(KNSlideNode *)self willModify];
    self->_skipped = skipped;
    objc_opt_class();
    context = [(KNSlideNode *)self context];
    documentObject = [context documentObject];
    v9 = TSUDynamicCast();

    show = [v9 show];
    slideTree = [show slideTree];

    [slideTree invalidateSlideNameCache];
  }
}

- (BOOL)isSlideNumberVisible
{
  slideIfLoaded = [(KNSlideNode *)self slideIfLoaded];
  v4 = slideIfLoaded;
  if (slideIfLoaded)
  {
    slideNumberVisible = [slideIfLoaded isSlideNumberVisible];
  }

  else
  {
    slideNumberVisible = self->_slideNumberVisible;
  }

  return slideNumberVisible;
}

- (void)setDigestsForDatasThatNeedDownloadForThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  digestsForDatasThatNeedDownloadForThumbnail = self->_digestsForDatasThatNeedDownloadForThumbnail;
  if (thumbnailCopy | digestsForDatasThatNeedDownloadForThumbnail)
  {
    v9 = thumbnailCopy;
    v6 = [(NSSet *)digestsForDatasThatNeedDownloadForThumbnail isEqual:thumbnailCopy];
    thumbnailCopy = v9;
    if ((v6 & 1) == 0)
    {
      [(KNSlideNode *)self willModify];
      v7 = [v9 copy];
      v8 = self->_digestsForDatasThatNeedDownloadForThumbnail;
      self->_digestsForDatasThatNeedDownloadForThumbnail = v7;

      thumbnailCopy = v9;
    }
  }
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  contextCopy = context;
  rootCopy = root;
  slide = [(KNSlideNode *)self slide];
  [slide willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  contextCopy = context;
  rootCopy = root;
  context = [rootCopy context];
  [(KNSlideNode *)self wasAddedToDocumentWithContext:context];

  slide = [(KNSlideNode *)self slide];
  [slide wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];

  objc_opt_class();
  v12 = TSUCheckedDynamicCast();

  show = [v12 show];
  recording = [show recording];
  [recording slideNodeWasAddedToDocument:self];
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();
  show = [v5 show];
  recording = [show recording];
  [recording slideNodeWillBeRemovedFromDocument:self];

  slide = [(KNSlideNode *)self slide];
  [slide willBeRemovedFromDocumentRoot:rootCopy];

  context = [rootCopy context];

  [(KNSlideNode *)self willBeRemovedFromDocumentWithContext:context];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  slide = [(KNSlideNode *)self slide];
  [slide wasRemovedFromDocumentRoot:rootCopy];
}

- (void)addThumbnail:(id)thumbnail atSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  thumbnailCopy = thumbnail;
  if (thumbnailCopy)
  {
    [(KNSlideNode *)self willModify];
    v7 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
    [(NSMutableDictionary *)self->_thumbnails setObject:thumbnailCopy forKey:v7];
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode addThumbnail:atSize:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:929 isFatal:0 description:{"invalid nil value for '%{public}s'", "thumbnailData"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

- (void)removeThumbnailAtSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(KNSlideNode *)self willModify];
  v6 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  [(NSMutableDictionary *)self->_thumbnails removeObjectForKey:v6];
}

- (void)removeAllThumbnails
{
  [(KNSlideNode *)self willModify];
  thumbnails = self->_thumbnails;

  [(NSMutableDictionary *)thumbnails removeAllObjects];
}

- (id)resolverMatchingName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_275D74EF4;
  v16 = sub_275D74F04;
  v17 = 0;
  slide = [(KNSlideNode *)self slide];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_275D74F0C;
  v9[3] = &unk_27A6982A8;
  v6 = nameCopy;
  v10 = v6;
  v11 = &v12;
  [slide performBlockOnInfos:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)resolversMatchingPrefix:(id)prefix
{
  prefixCopy = prefix;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_275D74EF4;
  v16 = sub_275D74F04;
  array = [MEMORY[0x277CBEB18] array];
  slide = [(KNSlideNode *)self slide];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_275D7515C;
  v9[3] = &unk_27A6982A8;
  v6 = prefixCopy;
  v10 = v6;
  v11 = &v12;
  [slide performBlockOnInfos:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)resolverNameIsUsed:(id)used
{
  usedCopy = used;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  slide = [(KNSlideNode *)self slide];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_275D75360;
  v8[3] = &unk_27A6982A8;
  v6 = usedCopy;
  v9 = v6;
  v10 = &v11;
  [slide performBlockOnInfos:v8];

  LOBYTE(slide) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return slide;
}

- (unsigned)nextUntitledResolverIndex
{
  tableNameCounter = self->_tableNameCounter;
  self->_tableNameCounter = tableNameCounter + 1;
  return tableNameCounter;
}

- (void)addRemappedTableName:(id)name
{
  nameCopy = name;
  remappedTableNames = self->_remappedTableNames;
  v8 = nameCopy;
  if (!remappedTableNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_remappedTableNames;
    self->_remappedTableNames = v6;

    nameCopy = v8;
    remappedTableNames = self->_remappedTableNames;
  }

  [(NSMutableSet *)remappedTableNames addObject:nameCopy];
}

- (void)clearRemappedTableNames
{
  remappedTableNames = self->_remappedTableNames;
  self->_remappedTableNames = 0;
}

- (id)descendantsOmittingSkippedSlideNodes:(BOOL)nodes omittingCollapsedSlideNodes:(BOOL)slideNodes
{
  slideNodesCopy = slideNodes;
  nodesCopy = nodes;
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v8 = [WeakRetained descendantsOfSlideNode:self omitSkippedSlideNodes:nodesCopy omitCollapsedSlideNodes:slideNodesCopy];

  return v8;
}

- (void)addOldModelDescendantsToSlideTree:(id)tree
{
  v15 = *MEMORY[0x277D85DE8];
  treeCopy = tree;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_children;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) p_addOldModelDescendantsToSlideTree:treeCopy atDepth:{1, v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)p_addOldModelDescendantsToSlideTree:(id)tree atDepth:(unint64_t)depth
{
  v18 = *MEMORY[0x277D85DE8];
  treeCopy = tree;
  [(KNSlideNode *)self willModifyForUpgrade];
  if (depth >= 6)
  {
    depth = 6;
  }

  [(KNSlideNode *)self setSlideTree:treeCopy];
  [treeCopy addSlideNodeForDocumentUpgrade:self atDepth:depth];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_children;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * i) p_addOldModelDescendantsToSlideTree:treeCopy atDepth:{depth + 1, v13}];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  children = self->_children;
  self->_children = 0;
}

- (void)purgeU15ModelIfNeeded
{
  if (self->_children)
  {
    [(KNSlideNode *)self willModifyForUpgrade];
    children = self->_children;
    self->_children = 0;
  }
}

- (void)p_commonInit
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  thumbnails = self->_thumbnails;
  self->_thumbnails = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  slideSpecificHyperlinkMap = self->_slideSpecificHyperlinkMap;
  self->_slideSpecificHyperlinkMap = v5;

  self->_tableNameCounter = 1;
  self->_slideNumberVisible = 0;
  self->_depth = 1;
}

- (id)paragraphIndexesOfTopLevelBullets
{
  slide = [(KNSlideNode *)self slide];
  paragraphIndexesOfTopLevelBullets = [slide paragraphIndexesOfTopLevelBullets];

  return paragraphIndexesOfTopLevelBullets;
}

- (KNSlideTree)slideTree
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);

  return WeakRetained;
}

- (id)objectUUIDPath
{
  owningDocument = [(TSPObject *)self owningDocument];
  show = [owningDocument show];
  theme = [show theme];

  templateSlides = [theme templateSlides];
  LODWORD(show) = [templateSlides containsObject:self];

  if (show)
  {
    objectUUIDPath = [theme objectUUIDPath];
    objectUUID = [(KNSlideNode *)self objectUUID];
    objectUUIDPath2 = [objectUUIDPath UUIDPathByAppendingUUID:objectUUID];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = KNSlideNode;
    objectUUIDPath2 = [(KNSlideNode *)&v11 objectUUIDPath];
  }

  return objectUUIDPath2;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  fileFormatVersion = [unarchiverCopy fileFormatVersion];
  v7 = *(archive + 4);
  v8 = v7;
  if ((v7 & 4) != 0)
  {
    v9 = *(archive + 29);
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = sub_275D768F4;
    v79[3] = &unk_27A6982D0;
    v79[4] = self;
    v10 = unarchiverCopy;
    v11 = v79;
    [v10 readLazyReferenceMessage:v9 class:objc_opt_class() protocol:0 completion:v11];

    v8 = *(archive + 4);
  }

  if ((v8 & 0x400000) != 0)
  {
    v12 = *(archive + 72);
    if (v12)
    {
      if (v12 >= 7)
      {
        [(KNSlideNode *)self willModifyForUpgrade];
        v12 = 6;
      }
    }

    else
    {
      [(KNSlideNode *)self willModifyForUpgrade];
      v12 = 1;
    }

    self->_depth = v12;
  }

  v13 = *(archive + 14);
  if (v13 >= 1)
  {
    if (v13 == *(archive + 20))
    {
      v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v13];
      v15 = 8;
      do
      {
        v16 = [MEMORY[0x277CCAE60] valueWithCGSize:{*(*(*(archive + 11) + v15) + 24), *(*(*(archive + 11) + v15) + 28)}];
        [v14 addObject:v16];

        v15 += 8;
        --v13;
      }

      while (v13);
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = sub_275D76978;
      v76[3] = &unk_27A698320;
      v17 = v14;
      v77 = v17;
      selfCopy = self;
      v18 = unarchiverCopy;
      v19 = v76;
      [v18 readRepeatedReferenceMessage:archive + 48 class:objc_opt_class() protocol:0 completion:v19];

      goto LABEL_24;
    }

    v27 = MEMORY[0x277D81150];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode(PersistenceAdditions) loadFromArchive:unarchiver:]"];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm"];
    [v27 handleFailureInFunction:v28 file:v29 lineNumber:139 isFatal:0 description:"size of thumbnails array doesn't match size of thumbnailSizes array"];
LABEL_23:

    [MEMORY[0x277D81150] logBacktraceThrottled];
    goto LABEL_24;
  }

  v20 = *(archive + 26);
  if (v20 < 1)
  {
    goto LABEL_24;
  }

  if (v20 != *(archive + 20))
  {
    v30 = MEMORY[0x277D81150];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode(PersistenceAdditions) loadFromArchive:unarchiver:]"];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm"];
    [v30 handleFailureInFunction:v28 file:v29 lineNumber:153 isFatal:0 description:"size of thumbnails array doesn't match size of thumbnailSizes array"];
    goto LABEL_23;
  }

  v21 = 8;
  do
  {
    v22 = *(*(archive + 11) + v21);
    v23 = *(v22 + 24);
    v24 = *(v22 + 28);
    v25 = [unarchiverCopy readDataReferenceMessage:*(*(archive + 14) + v21)];
    null = [MEMORY[0x277D80828] null];

    if (v25 != null)
    {
      [(KNSlideNode *)self addThumbnail:v25 atSize:v23, v24];
    }

    v21 += 8;
    --v20;
  }

  while (v20);
LABEL_24:
  obj = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (*(archive + 38) >= 1)
  {
    v31 = 0;
    do
    {
      v32 = [MEMORY[0x277CCACA8] tsp_stringWithProtobufString:*(*(archive + 20) + 8 * v31 + 8)];
      [obj addObject:v32];

      ++v31;
    }

    while (v31 < *(archive + 38));
  }

  objc_storeStrong(&self->_digestsForDatasThatNeedDownloadForThumbnail, obj);
  v33 = *(archive + 4);
  if ((v33 & 8) != 0)
  {
    v34 = *(archive + 30);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_275D76B0C;
    v75[3] = &unk_27A698368;
    v75[4] = self;
    v35 = unarchiverCopy;
    v36 = v75;
    [v35 readReferenceMessage:v34 class:objc_opt_class() protocol:0 completion:v36];

    v33 = *(archive + 4);
  }

  if ((v33 & 0x20) != 0)
  {
    self->_thumbnailsAreDirty = *(archive + 256);
  }

  self->_skipped = *(archive + 257);
  self->_collapsed = *(archive + 258) & (v33 >> 7);
  self->_collapsedInOutlineView = *(archive + 259) & (v33 << 23 >> 31);
  self->_hasBodyInOutlineView = *(archive + 260) & (v33 << 22 >> 31);
  [(KNSlideNode *)self setHasTransition:*(archive + 262)];
  v37 = *(archive + 4);
  self->_hasNote = *(archive + 263) & (v37 << 19 >> 31);
  if ((v37 & 0x8000) != 0)
  {
    self->_slideNumberVisible = *(archive + 272);
  }

  else
  {
    if (([unarchiverCopy hasPreUFFVersion] & 1) == 0)
    {
      v38 = MEMORY[0x277D81150];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode(PersistenceAdditions) loadFromArchive:unarchiver:]"];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm"];
      [v38 handleFailureInFunction:v39 file:v40 lineNumber:227 isFatal:0 description:"Missing isSlideNumberVisible on slide node."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    if ((v7 & 4) != 0)
    {
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = sub_275D76C68;
      v74[3] = &unk_27A698390;
      v74[4] = self;
      [unarchiverCopy addFinalizeHandler:v74];
    }
  }

  if (fileFormatVersion > 0x400000000000ALL && (*(archive + 18) & 0x20) != 0)
  {
    self->_backgroundIsNoFillOrColorFillWithAlpha = *(archive + 284);
  }

  else if ((v7 & 4) != 0)
  {
    if (fileFormatVersion >= 0x400000000000BLL)
    {
      v41 = MEMORY[0x277D81150];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode(PersistenceAdditions) loadFromArchive:unarchiver:]"];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm"];
      v44 = NSStringFromTSPVersion();
      v45 = NSStringFromTSPVersion();
      [v41 handleFailureInFunction:v42 file:v43 lineNumber:250 isFatal:0 description:{"Slide background alpha expected in document saved at or after version %@ (message version is %@).", v44, v45}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_275D76D64;
    v73[3] = &unk_27A698390;
    v73[4] = self;
    [unarchiverCopy addFinalizeHandler:v73];
  }

  v46 = *(archive + 4);
  self->_slideSpecificHyperlinksCount = *(archive + 66) & (v46 << 18 >> 31);
  if ((v46 & 0x4000) != 0)
  {
    self->_buildEventCount = *(archive + 67);
  }

  if ((v46 & 0x80000) != 0)
  {
    v47 = *(archive + 69) < 3u;
    goto LABEL_50;
  }

  if ((v46 & 0x10000) != 0)
  {
    v47 = *(archive + 273);
LABEL_50:
    self->_buildEventCountIsUpToDate = v47;
  }

  if (fileFormatVersion <= 0x2000300000002 && self->_buildEventCountIsUpToDate)
  {
    [(KNSlideNode *)self willModifyForUpgrade];
    self->_buildEventCountIsUpToDate = 0;
    v46 = *(archive + 4);
  }

  if ((v46 & 0x20000) != 0)
  {
    self->_hasExplicitBuilds = *(archive + 274);
  }

  if ((v46 & 0x100000) != 0)
  {
    v48 = *(archive + 70) < 3u;
  }

  else
  {
    if ((v46 & 0x40000) == 0)
    {
      goto LABEL_61;
    }

    v48 = *(archive + 275);
  }

  self->_hasExplicitBuildsIsUpToDate = v48;
LABEL_61:
  if (self->_previousIdentifier)
  {
    v49 = MEMORY[0x277D81150];
    v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode(PersistenceAdditions) loadFromArchive:unarchiver:]"];
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm"];
    [v49 handleFailureInFunction:v50 file:v51 lineNumber:322 isFatal:0 description:{"expected nil value for '%{public}s'", "_previousIdentifier"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    v46 = *(archive + 4);
  }

  if (v46)
  {
    0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 27) & 0xFFFFFFFFFFFFFFFELL];
    goto LABEL_67;
  }

  if ((v46 & 2) != 0)
  {
    0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 28) & 0xFFFFFFFFFFFFFFFELL];
LABEL_67:
    v53 = 0xFFFFFFFFFFFFFFFELL;
    objc_storeStrong(&self->_previousIdentifier, 0xFFFFFFFFFFFFFFFELL);
  }

  if (fileFormatVersion < *MEMORY[0x277D80968] || fileFormatVersion < *MEMORY[0x277D80970] && *(archive + 8) >= 1)
  {
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_275D76E60;
    v72[3] = &unk_27A697A10;
    v72[4] = self;
    v54 = unarchiverCopy;
    v55 = v72;
    [v54 readRepeatedReferenceMessage:archive + 24 class:objc_opt_class() protocol:0 completion:v55];
  }

  [(NSMutableDictionary *)self->_slideSpecificHyperlinkMap removeAllObjects];
  archiveCopy = archive;
  if (*(archive + 32) >= 1)
  {
    v57 = 0;
    do
    {
      v58 = archiveCopy;
      v59 = *(*(archiveCopy + 17) + 8 * v57 + 8);
      0xFFFFFFFFFFFFFFFELL2 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(v59 + 48) & 0xFFFFFFFFFFFFFFFELL];
      v61 = [MEMORY[0x277CBEB58] set];
      [(NSMutableDictionary *)self->_slideSpecificHyperlinkMap setObject:v61 forKeyedSubscript:0xFFFFFFFFFFFFFFFELL2];
      if (*(v59 + 32) >= 1)
      {
        v62 = 0;
        do
        {
          v63 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(*(v59 + 40) + 8 * v62 + 8)];
          v64 = [(KNSlideNode *)self p_mappingFromString:v63];
          [v61 addObject:v64];

          ++v62;
        }

        while (v62 < *(v59 + 32));
      }

      ++v57;
      archiveCopy = v58;
    }

    while (v57 < v58[32]);
  }

  v65 = archiveCopy;
  if ((archiveCopy[4] & 0x10) != 0)
  {
    v66 = [unarchiverCopy readWeakObjectUUIDReferenceMessage:*(archiveCopy + 31)];
    templateSlideUUID = self->_templateSlideUUID;
    self->_templateSlideUUID = v66;
  }

  v68 = [[KNLiveVideoSourceUsage alloc] initWithLiveVideoSourceUUIDMessages:v65 + 42 entryMessages:v65 + 48 unarchiver:unarchiverCopy];
  liveVideoSourceUsage = self->_liveVideoSourceUsage;
  self->_liveVideoSourceUsage = v68;
}

- (id)p_mappingFromString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy componentsSeparatedByString:{@", "}];
  if ([v4 count] == 2)
  {
    objc_opt_class();
    v5 = [v4 objectAtIndexedSubscript:1];
    v6 = TSUDynamicCast();

    integerValue = [v6 integerValue];
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    v9 = [v4 objectAtIndexedSubscript:0];
    v10 = [v8 initWithUUIDString:v9];

    v11 = [[KNSlideNodeSlideSpecificTableCounter alloc] initWithTableInfoUUID:v10 andLinkCount:integerValue];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:stringCopy];
  }

  return v11;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v131 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  selfCopy = self;
  depth = [(KNSlideNode *)self depth];
  if (depth >> 31)
  {
    v95 = MEMORY[0x277D81150];
    v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode(PersistenceAdditions) saveToArchive:archiver:]"];
    v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm"];
    [v95 handleFailureInFunction:v96 file:v97 lineNumber:390 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    LODWORD(depth) = 0x7FFFFFFF;
  }

  archiveCopy2 = archive;
  *(archive + 4) |= 0x400000u;
  *(archive + 72) = depth;
  hasNote = [(KNSlideNode *)selfCopy hasNote];
  *(archive + 4) |= 0x1000u;
  *(archive + 263) = hasNote;
  isSlideNumberVisible = [(KNSlideNode *)selfCopy isSlideNumberVisible];
  v9 = *(archive + 4);
  *(archive + 272) = isSlideNumberVisible;
  *(archive + 4) = v9 | 0x8400;
  *(archive + 261) = 0;
  hasTransition = [(KNSlideNode *)selfCopy hasTransition];
  *(archive + 4) |= 0x800u;
  *(archive + 262) = hasTransition;
  isSkipped = [(KNSlideNode *)selfCopy isSkipped];
  *(archive + 4) |= 0x40u;
  *(archive + 257) = isSkipped;
  if (selfCopy->_buildEventCountIsUpToDate)
  {
    buildEventCount = [(KNSlideNode *)selfCopy buildEventCount];
    if (buildEventCount >> 31)
    {
      v98 = MEMORY[0x277D81150];
      v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNode(PersistenceAdditions) saveToArchive:archiver:]"];
      v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm"];
      [v98 handleFailureInFunction:v99 file:v100 lineNumber:401 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      LODWORD(buildEventCount) = 0x7FFFFFFF;
    }

    archiveCopy2 = archive;
    *(archive + 4) |= 0x4000u;
    *(archive + 67) = buildEventCount;
  }

  [archiverCopy setIgnoreAndPreserveUntilModifiedRuleForField:26 message:archiveCopy2];
  if (selfCopy->_buildEventCountIsUpToDate)
  {
    v13 = 2;
  }

  else
  {
    v13 = -1;
  }

  *(archiveCopy2 + 4) |= 0x80000u;
  *(archiveCopy2 + 69) = v13;
  if (selfCopy->_hasExplicitBuildsIsUpToDate)
  {
    hasExplicitBuilds = [(KNSlideNode *)selfCopy hasExplicitBuilds];
    *(archiveCopy2 + 4) |= 0x20000u;
    *(archiveCopy2 + 274) = hasExplicitBuilds;
  }

  [archiverCopy setIgnoreAndPreserveUntilModifiedRuleForField:27 message:archiveCopy2];
  v15 = selfCopy;
  if (selfCopy->_hasExplicitBuildsIsUpToDate)
  {
    v16 = 2;
  }

  else
  {
    v16 = -1;
  }

  v17 = *(archiveCopy2 + 4);
  *(archiveCopy2 + 70) = v16;
  backgroundIsNoFillOrColorFillWithAlpha = selfCopy->_backgroundIsNoFillOrColorFillWithAlpha;
  *(archiveCopy2 + 4) = v17 | 0x300000;
  *(archiveCopy2 + 284) = backgroundIsNoFillOrColorFillWithAlpha;
  slideReference = selfCopy->_slideReference;
  if (slideReference)
  {
    *(archiveCopy2 + 4) = v17 | 0x300004;
    v20 = *(archiveCopy2 + 29);
    if (!v20)
    {
      v21 = *(archive + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C8F050](v21);
      *(archive + 29) = v20;
    }

    [archiverCopy setStrongLazyReference:slideReference message:v20];
    v15 = selfCopy;
  }

  if (v15->_thumbnails)
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](selfCopy->_thumbnails, "count")}];
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    keyEnumerator = [(NSMutableDictionary *)selfCopy->_thumbnails keyEnumerator];
    v24 = [keyEnumerator countByEnumeratingWithState:&v121 objects:v130 count:16];
    if (!v24)
    {
      goto LABEL_36;
    }

    v25 = *v122;
    while (1)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v122 != v25)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v27 = *(*(&v121 + 1) + 8 * i);
        v28 = [(NSMutableDictionary *)selfCopy->_thumbnails objectForKeyedSubscript:v27];
        [v22 addObject:v28];

        [v27 CGSizeValue];
        v30 = v29;
        v32 = v31;
        v33 = *(archive + 11);
        if (!v33)
        {
          goto LABEL_32;
        }

        v34 = *(archive + 20);
        v35 = *v33;
        if (v34 < *v33)
        {
          *(archive + 20) = v34 + 1;
          v36 = *&v33[2 * v34 + 2];
          goto LABEL_34;
        }

        if (v35 == *(archive + 21))
        {
LABEL_32:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 72));
          v33 = *(archive + 11);
          v35 = *v33;
        }

        *v33 = v35 + 1;
        v36 = MEMORY[0x277C8EFF0](*(archive + 9));
        v37 = *(archive + 20);
        v38 = *(archive + 11) + 8 * v37;
        *(archive + 20) = v37 + 1;
        *(v38 + 8) = v36;
LABEL_34:
        v39 = v30;
        v40 = v32;
        *(v36 + 16) |= 3u;
        *(v36 + 24) = v39;
        *(v36 + 28) = v40;
      }

      v24 = [keyEnumerator countByEnumeratingWithState:&v121 objects:v130 count:16];
      if (!v24)
      {
LABEL_36:

        [archiverCopy setDataReferenceArray:v22 message:archive + 96];
        break;
      }
    }
  }

  thumbnailsAreDirty = [(KNSlideNode *)selfCopy thumbnailsAreDirty];
  *(archive + 4) |= 0x20u;
  *(archive + 256) = thumbnailsAreDirty;
  digestsForDatasThatNeedDownloadForThumbnail = selfCopy->_digestsForDatasThatNeedDownloadForThumbnail;
  if (digestsForDatasThatNeedDownloadForThumbnail)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v43 = digestsForDatasThatNeedDownloadForThumbnail;
    v44 = [(NSSet *)v43 countByEnumeratingWithState:&v117 objects:v129 count:16];
    if (!v44)
    {
      goto LABEL_52;
    }

    v45 = *v118;
    while (1)
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v118 != v45)
        {
          objc_enumerationMutation(v43);
        }

        uTF8String = [*(*(&v117 + 1) + 8 * j) UTF8String];
        archiveCopy4 = archive;
        v49 = *(archive + 20);
        if (!v49)
        {
          goto LABEL_48;
        }

        v50 = *(archive + 38);
        v51 = *v49;
        if (v50 < *v49)
        {
          *(archive + 38) = v50 + 1;
          v52 = *&v49[2 * v50 + 2];
          goto LABEL_50;
        }

        if (v51 == *(archive + 39))
        {
LABEL_48:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 144));
          archiveCopy4 = archive;
          v49 = *(archive + 20);
          v51 = *v49;
        }

        *v49 = v51 + 1;
        v52 = sub_275D5EFD8(archiveCopy4[18]);
        v53 = *(archive + 38);
        v54 = *(archive + 20) + 8 * v53;
        *(archive + 38) = v53 + 1;
        *(v54 + 8) = v52;
LABEL_50:
        MEMORY[0x277C8F920](v52, uTF8String);
      }

      v44 = [(NSSet *)v43 countByEnumeratingWithState:&v117 objects:v129 count:16];
      if (!v44)
      {
LABEL_52:

        break;
      }
    }
  }

  previousIdentifier = selfCopy->_previousIdentifier;
  if (previousIdentifier)
  {
    uTF8String2 = [(NSString *)previousIdentifier UTF8String];
    *(archive + 4) |= 2u;
    sub_275D55B98(__p, uTF8String2);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v126 < 0)
    {
      operator delete(__p[0]);
    }
  }

  [(NSMutableDictionary *)selfCopy->_slideSpecificHyperlinkMap allKeys];
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  obj = v114 = 0u;
  v104 = [obj countByEnumeratingWithState:&v113 objects:v128 count:16];
  if (v104)
  {
    v103 = *v114;
    do
    {
      for (k = 0; k != v104; ++k)
      {
        if (*v114 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v113 + 1) + 8 * k);
        v105 = [(NSMutableDictionary *)selfCopy->_slideSpecificHyperlinkMap objectForKeyedSubscript:v57];
        archiveCopy6 = archive;
        v59 = *(archive + 17);
        if (!v59)
        {
          goto LABEL_66;
        }

        v60 = *(archive + 32);
        v61 = *v59;
        if (v60 < *v59)
        {
          *(archive + 32) = v60 + 1;
          v62 = *&v59[2 * v60 + 2];
          goto LABEL_68;
        }

        if (v61 == *(archive + 33))
        {
LABEL_66:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 120));
          archiveCopy6 = archive;
          v59 = *(archive + 17);
          v61 = *v59;
        }

        *v59 = v61 + 1;
        v62 = sub_275E20080(archiveCopy6[15]);
        v63 = *(archive + 32);
        v64 = *(archive + 17) + 8 * v63;
        *(archive + 32) = v63 + 1;
        *(v64 + 8) = v62;
LABEL_68:
        v65 = v57;
        uTF8String3 = [v57 UTF8String];
        *(v62 + 16) |= 1u;
        sub_275D55B98(__p, uTF8String3);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v126 < 0)
        {
          operator delete(__p[0]);
        }

        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v67 = v105;
        v68 = [v67 countByEnumeratingWithState:&v109 objects:v127 count:16];
        if (v68)
        {
          v69 = *v110;
          do
          {
            for (m = 0; m != v68; ++m)
            {
              if (*v110 != v69)
              {
                objc_enumerationMutation(v67);
              }

              objc_opt_class();
              v71 = TSUDynamicCast();
              v72 = v71;
              if (v71)
              {
                stringValue = [v71 stringValue];
                v74 = stringValue;
                uTF8String4 = [stringValue UTF8String];

                v76 = *(v62 + 40);
                if (!v76)
                {
                  goto LABEL_84;
                }

                v77 = *(v62 + 32);
                v78 = *v76;
                if (v77 < *v76)
                {
                  *(v62 + 32) = v77 + 1;
                  v79 = *&v76[2 * v77 + 2];
LABEL_86:
                  MEMORY[0x277C8F920](v79, uTF8String4);
                  goto LABEL_92;
                }

                if (v78 == *(v62 + 36))
                {
LABEL_84:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v62 + 24));
                  v76 = *(v62 + 40);
                  v78 = *v76;
                }

                *v76 = v78 + 1;
                v79 = sub_275D5EFD8(*(v62 + 24));
                v88 = *(v62 + 32);
                v89 = *(v62 + 40) + 8 * v88;
                *(v62 + 32) = v88 + 1;
                *(v89 + 8) = v79;
                goto LABEL_86;
              }

              objc_opt_class();
              v80 = TSUDynamicCast();
              uUIDString = [v80 UUIDString];
              v82 = uUIDString;
              uTF8String5 = [uUIDString UTF8String];

              v84 = *(v62 + 40);
              if (!v84)
              {
                goto LABEL_89;
              }

              v85 = *(v62 + 32);
              v86 = *v84;
              if (v85 >= *v84)
              {
                if (v86 == *(v62 + 36))
                {
LABEL_89:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v62 + 24));
                  v84 = *(v62 + 40);
                  v86 = *v84;
                }

                *v84 = v86 + 1;
                v87 = sub_275D5EFD8(*(v62 + 24));
                v90 = *(v62 + 32);
                v91 = *(v62 + 40) + 8 * v90;
                *(v62 + 32) = v90 + 1;
                *(v91 + 8) = v87;
                goto LABEL_91;
              }

              *(v62 + 32) = v85 + 1;
              v87 = *&v84[2 * v85 + 2];
LABEL_91:
              MEMORY[0x277C8F920](v87, uTF8String5);

LABEL_92:
            }

            v68 = [v67 countByEnumeratingWithState:&v109 objects:v127 count:16];
          }

          while (v68);
        }
      }

      v104 = [obj countByEnumeratingWithState:&v113 objects:v128 count:16];
    }

    while (v104);
  }

  templateSlideUUID = selfCopy->_templateSlideUUID;
  if (templateSlideUUID)
  {
    *(archive + 4) |= 0x10u;
    v93 = *(archive + 31);
    if (!v93)
    {
      v94 = *(archive + 1);
      if (v94)
      {
        v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
      }

      v93 = MEMORY[0x277C8F000](v94);
      *(archive + 31) = v93;
    }

    [archiverCopy setWeakReferenceToObjectUUID:templateSlideUUID message:v93];
  }

  [(KNLiveVideoSourceUsage *)selfCopy->_liveVideoSourceUsage saveToLiveVideoSourceUUIDMessages:archive + 168 entryMessages:archive + 192 archiver:archiverCopy];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  [(KNSlideNode *)self p_commonInit];
  v6 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v5 = [v6 messageWithDescriptor:off_2812EA908[36]];

  [(KNSlideNode *)self loadFromArchive:v5 unarchiver:v6];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275D77E80 descriptor:off_2812EA908[36]];

  [(KNSlideNode *)self saveToArchive:v4 archiver:archiverCopy];
}

- (void)clearSlideSpecificLinkMap
{
  [(KNSlideNode *)self willModify];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  slideSpecificHyperlinkMap = self->_slideSpecificHyperlinkMap;
  self->_slideSpecificHyperlinkMap = v3;
}

- (unint64_t)numberOfLinksToSlideNodeInStorage:(id)storage forSlideNodeUUIDString:(id)string
{
  storageCopy = storage;
  stringCopy = string;
  MEMORY[0x277C8E690](v15, storageCopy, 0, [storageCopy length], 6, 0);
  v7 = 0;
  while (TSWPAttributeEnumerator::nextAttributeIndex(v15, 0))
  {
    objc_opt_class();
    v8 = TSWPAttributeRecord::object();
    v9 = TSUDynamicCast();

    if (v9)
    {
      v10 = [v9 url];
      absoluteString = [v10 absoluteString];
      v12 = absoluteString;
      if (v10)
      {
        if (![absoluteString rangeOfString:@"?slideid="])
        {
          v13 = [v12 substringFromIndex:{objc_msgSend(@"?slideid=", "length")}];
          v7 += [v13 isEqualToString:stringCopy];
        }
      }
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v15);

  return v7;
}

+ (id)slideNodeUUIDForObsoleteUniqueIDString:(id)string inSlideNodes:(id)nodes
{
  v24 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  nodesCopy = nodes;
  v7 = [nodesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(nodesCopy);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      previousIdentifier = [v10 previousIdentifier];
      v12 = [stringCopy isEqualToString:previousIdentifier];

      if (v12)
      {
        break;
      }

      objectUUID = [v10 objectUUID];
      uUIDString = [objectUUID UUIDString];
      v15 = [stringCopy isEqualToString:uUIDString];

      if (v15)
      {
        goto LABEL_10;
      }

      if (v7 == ++v9)
      {
        v7 = [nodesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    objectUUID2 = [v10 objectUUID];
    uUIDString2 = [objectUUID2 UUIDString];

    if (uUIDString2)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_10:
  }

  uUIDString2 = stringCopy;
LABEL_12:

  return uUIDString2;
}

- (void)upgradeSlideSpecificStorageHyperlinksForStorage:(id)storage withSlideNodes:(id)nodes
{
  v39 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  nodesCopy = nodes;
  v30 = storageCopy;
  MEMORY[0x277C8E690](v37, storageCopy, 0, [storageCopy length], 6, 0);
  v24 = [MEMORY[0x277CBEB58] set];
  while (TSWPAttributeEnumerator::nextAttributeIndex(v37, 0))
  {
    objc_opt_class();
    v6 = TSWPAttributeRecord::object();
    v7 = TSUDynamicCast();

    if (v7)
    {
      [v24 addObject:v7];
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v24;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [v11 url];
        absoluteString = [v12 absoluteString];
        v14 = absoluteString;
        if (v12 && ![absoluteString rangeOfString:@"?slideid="])
        {
          v15 = [v14 substringFromIndex:{objc_msgSend(@"?slideid=", "length")}];
          v16 = [(KNSlideNode *)self p_slideNodeWithUUIDString:v15 inSlideNodes:nodesCopy];
          v17 = v15;
          if (!v16)
          {
            v28 = [KNSlideNode slideNodeUUIDForObsoleteUniqueIDString:v15 inSlideNodes:nodesCopy];

            if (([v15 isEqualToString:?] & 1) == 0)
            {
              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"?slideid=", v28];
              range = [v11 range];
              v26 = v19;
              v20 = range;
              [v30 willModifyForUpgrade];
              [v30 removeSmartField:v11 fromRange:v20 undoTransaction:{v26, 0}];
              v25 = [MEMORY[0x277CBEBC0] URLWithString:v27];
              v21 = objc_alloc(MEMORY[0x277D80E58]);
              context = [v30 context];
              v23 = [v21 initWithContext:context url:v25];

              [v30 addSmartField:v23 toRange:v20 dolcContext:v26 undoTransaction:{0, 0}];
            }

            v17 = v28;
          }

          [(KNSlideNode *)self willModifyForUpgrade];
          [(KNSlideNode *)self addHyperlinkForStorage:v30 toSlideNode:v17];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v37);
}

- (void)removeInvalidSlideSpecificHyperlinksForStorage:(id)storage withSlideNodeUUIDStrings:(id)strings
{
  v33 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  stringsCopy = strings;
  v25 = storageCopy;
  MEMORY[0x277C8E690](v31, storageCopy, 0, [storageCopy length], 6, 0);
  v22 = [MEMORY[0x277CBEB58] set];
  while (TSWPAttributeEnumerator::nextAttributeIndex(v31, 0))
  {
    objc_opt_class();
    v6 = TSWPAttributeRecord::object();
    v7 = TSUDynamicCast();

    if (v7)
    {
      [v22 addObject:v7];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v22;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 url];
        absoluteString = [v12 absoluteString];
        v14 = absoluteString;
        if (v12 && ![absoluteString rangeOfString:@"?slideid="])
        {
          v15 = [v14 substringFromIndex:{objc_msgSend(@"?slideid=", "length")}];
          if (([stringsCopy containsObject:v15] & 1) == 0)
          {
            range = [v11 range];
            v18 = v16;
            if (*MEMORY[0x277D81490] != range || *(MEMORY[0x277D81490] + 8) != v16)
            {
              [v25 willModifyForUpgrade];
              [v25 removeSmartField:v11 fromRange:range undoTransaction:{v18, 0}];
              v19 = MEMORY[0x277D80DB0];
              context = [v25 context];
              v21 = [v19 nullStyleWithContext:context];
              [v25 setCharacterStyle:v21 range:range undoTransaction:{v18, 0}];
            }
          }

          [(KNSlideNode *)self willModifyForUpgrade];
          [(KNSlideNode *)self removeHyperlinkForStorage:v25 toSlideNode:v15];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v31);
}

- (void)upgradeSlideSpecificHyperlinksForSlideNodes:(id)nodes
{
  v41 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  slide = [(KNSlideNode *)self slide];
  [slide childInfos];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v5 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v28 = *v36;
    do
    {
      v6 = 0;
      v27 = v5;
      do
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * v6);
        hyperlinkURL = [v7 hyperlinkURL];
        absoluteString = [hyperlinkURL absoluteString];
        if (hyperlinkURL && ![absoluteString rangeOfString:@"?slideid="])
        {
          v8 = [absoluteString substringFromIndex:{objc_msgSend(@"?slideid=", "length")}];
          v9 = [(KNSlideNode *)self p_slideNodeWithUUIDString:v8 inSlideNodes:nodesCopy];
          v10 = v8;
          if (!v9)
          {
            v11 = [KNSlideNode slideNodeUUIDForObsoleteUniqueIDString:v8 inSlideNodes:nodesCopy];

            if (([v8 isEqualToString:v11] & 1) == 0)
            {
              v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"?slideid=", v11];
              [v7 willModifyForUpgrade];
              v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
              [v7 setHyperlinkURL:v13];
            }

            v10 = v11;
          }

          [(KNSlideNode *)self willModifyForUpgrade];
          [(KNSlideNode *)self addHyperlinkForInfo:v7 toSlideNode:v10];
        }

        objc_opt_class();
        v14 = TSUDynamicCast();
        v15 = v14;
        if (v14)
        {
          textStorage = [v14 textStorage];
          [(KNSlideNode *)self upgradeSlideSpecificStorageHyperlinksForStorage:textStorage withSlideNodes:nodesCopy];
        }

        objc_opt_class();
        v17 = TSUDynamicCast();
        v18 = v17;
        if (v17)
        {
          allRichTextStorages = [v17 allRichTextStorages];
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v20 = allRichTextStorages;
          v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v21)
          {
            v22 = *v32;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v32 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v31 + 1) + 8 * i);
                [v24 setParentInfo:v18];
                [(KNSlideNode *)self upgradeSlideSpecificStorageHyperlinksForStorage:v24 withSlideNodes:nodesCopy];
              }

              v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v21);
          }

          v5 = v27;
        }

        ++v6;
      }

      while (v6 != v5);
      v5 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v5);
  }

  self->_slideSpecificHyperlinksCount = 0;
}

- (id)p_slideNodeWithUUIDString:(id)string inSlideNodes:(id)nodes
{
  v20 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  nodesCopy = nodes;
  v7 = [nodesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(nodesCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objectUUID = [v10 objectUUID];
        uUIDString = [objectUUID UUIDString];
        v13 = [stringCopy isEqualToString:uUIDString];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [nodesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)removeInvalidSlideSpecificHyperlinksWithSlideNodeUUIDStrings:(id)strings
{
  v36 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  slide = [(KNSlideNode *)self slide];
  [slide childInfos];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v23 = *v31;
    do
    {
      v6 = 0;
      v22 = v5;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        hyperlinkURL = [v7 hyperlinkURL];
        absoluteString = [hyperlinkURL absoluteString];
        if (hyperlinkURL && ![absoluteString rangeOfString:@"?slideid="])
        {
          v8 = [absoluteString substringFromIndex:{objc_msgSend(@"?slideid=", "length")}];
          if (([stringsCopy containsObject:v8] & 1) == 0)
          {
            [v7 willModifyForUpgrade];
            [v7 setHyperlinkURL:0];
          }
        }

        objc_opt_class();
        v9 = TSUDynamicCast();
        v10 = v9;
        if (v9)
        {
          textStorage = [v9 textStorage];
          [(KNSlideNode *)self removeInvalidSlideSpecificHyperlinksForStorage:textStorage withSlideNodeUUIDStrings:stringsCopy];
        }

        objc_opt_class();
        v12 = TSUDynamicCast();
        v13 = v12;
        if (v12)
        {
          allRichTextStorages = [v12 allRichTextStorages];
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v15 = allRichTextStorages;
          v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v16)
          {
            v17 = *v27;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v27 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v26 + 1) + 8 * i);
                [v19 setParentInfo:v13];
                [(KNSlideNode *)self removeInvalidSlideSpecificHyperlinksForStorage:v19 withSlideNodeUUIDStrings:stringsCopy];
              }

              v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v16);
          }

          v5 = v22;
        }

        ++v6;
      }

      while (v6 != v5);
      v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }
}

@end