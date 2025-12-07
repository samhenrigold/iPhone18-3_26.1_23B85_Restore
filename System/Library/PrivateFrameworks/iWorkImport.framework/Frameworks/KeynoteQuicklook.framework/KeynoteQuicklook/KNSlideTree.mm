@interface KNSlideTree
+ (BOOL)areMultipleMasterTypesInCollection:(id)collection;
+ (id)slideNodeDepthMapToCleanUpSlideNodes:(id)nodes atDepths:(id)depths minimumValidDepth:(unint64_t)depth canExceedSlideTreeMaxDepth:(BOOL)maxDepth;
+ (id)slideNodeDepthMapToCleanUpSlideNodes:(id)nodes minimumValidDepth:(unint64_t)depth canExceedSlideTreeMaxDepth:(BOOL)maxDepth;
- (BOOL)isEmpty;
- (BOOL)slideNodeIsDisplayed:(id)displayed;
- (KNSlideTree)initWithArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner;
- (KNSlideTree)initWithOwner:(id)owner;
- (NSArray)displayedSlideNodes;
- (NSArray)visibleSlideNodes;
- (id)childrenOfSlideNode:(id)node;
- (id)defaultSlideNodeForNewSelectionNearestToIndex:(unint64_t)index;
- (id)descendantsOfSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes;
- (id)formulaReferenceNameForSlideNode:(id)node;
- (id)objectEnumerator;
- (id)orderedSlideNodesInSelection:(id)selection;
- (id)parentOfSlideNode:(id)node;
- (id)slideNamesMatchingPrefix:(id)prefix;
- (id)slideNodeAfterSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes;
- (id)slideNodeAtIndex:(unint64_t)index ignoreHiddenNodes:(BOOL)nodes;
- (id)slideNodeBeforeSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes;
- (id)slideNodeForFormulaReferenceName:(id)name caseSensitive:(BOOL)sensitive;
- (id)slideNodeWithUniqueIdentifier:(id)identifier;
- (id)slideNodesInAscendingOrder:(id)order;
- (id)slidesUsingTemplateSlide:(id)slide;
- (unint64_t)byBuildPageIndexForSlideIndex:(unint64_t)index andEventIndex:(unint64_t)eventIndex;
- (unint64_t)indexOfSlideNode:(id)node;
- (unint64_t)numberOfSlidesUsingTemplateSlide:(id)slide;
- (unint64_t)slideNumberForSlideNode:(id)node;
- (unint64_t)visiblePageCountIsSeparatedByBuilds:(BOOL)builds;
- (void)addSlideNode:(id)node atDepth:(unint64_t)depth dolcContext:(id)context;
- (void)addSlideNodeForDocumentUpgrade:(id)upgrade atDepth:(unint64_t)depth;
- (void)dealloc;
- (void)insertSlideNodes:(id)nodes atIndexes:(id)indexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths dolcContext:(id)context;
- (void)invalidateSlideNameCache;
- (void)moveSlideNodes:(id)nodes fromIndexes:(id)indexes toIndexes:(id)toIndexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths;
- (void)p_cacheSlideNodes;
- (void)p_clearSlideNodeCache;
- (void)removeAll;
- (void)removeSlideNodes:(id)nodes atIndexes:(id)indexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)slideIndex:(unint64_t *)index andEventIndex:(unint64_t *)eventIndex forByBuildPageIndex:(unint64_t)pageIndex;
@end

@implementation KNSlideTree

+ (id)slideNodeDepthMapToCleanUpSlideNodes:(id)nodes minimumValidDepth:(unint64_t)depth canExceedSlideTreeMaxDepth:(BOOL)maxDepth
{
  maxDepthCopy = maxDepth;
  v23 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(nodesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = nodesCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v18 + 1) + 8 * i), "depth", v18)}];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = [self slideNodeDepthMapToCleanUpSlideNodes:v10 atDepths:v9 minimumValidDepth:depth canExceedSlideTreeMaxDepth:maxDepthCopy];

  return v16;
}

+ (id)slideNodeDepthMapToCleanUpSlideNodes:(id)nodes atDepths:(id)depths minimumValidDepth:(unint64_t)depth canExceedSlideTreeMaxDepth:(BOOL)maxDepth
{
  maxDepthCopy = maxDepth;
  nodesCopy = nodes;
  depthsCopy = depths;
  if (depth)
  {
    if (depth < 7)
    {
      goto LABEL_6;
    }

    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNSlideTree slideNodeDepthMapToCleanUpSlideNodes:atDepths:minimumValidDepth:canExceedSlideTreeMaxDepth:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
    v13 = "Minimum depth to clean up slides cannot exceed the allowed maximum depth of a slide tree.";
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = 96;
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNSlideTree slideNodeDepthMapToCleanUpSlideNodes:atDepths:minimumValidDepth:canExceedSlideTreeMaxDepth:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
    v13 = "Minimum depth to clean up slides cannot be less than the allowed minimum depth of a slide tree.";
    v14 = v18;
    v15 = v11;
    v16 = v12;
    v17 = 95;
  }

  [v14 handleFailureInFunction:v15 file:v16 lineNumber:v17 isFatal:0 description:v13];

  [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_6:
  v19 = [nodesCopy count];
  if (v19 != [depthsCopy count])
  {
    v20 = MEMORY[0x277D81150];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNSlideTree slideNodeDepthMapToCleanUpSlideNodes:atDepths:minimumValidDepth:canExceedSlideTreeMaxDepth:]"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
    [v20 handleFailureInFunction:v21 file:v22 lineNumber:97 isFatal:0 description:"Slide node count does not match depth count."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ([nodesCopy count])
  {
    v23 = MEMORY[0x277CBEB18];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:depth];
    v25 = [v23 arrayWithObject:v24];

    v26 = 6;
    v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
    do
    {
      null = [MEMORY[0x277CBEB68] null];
      [v27 addObject:null];

      --v26;
    }

    while (v26);
    v29 = [depthsCopy objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v29 unsignedIntegerValue];

    v31 = maxDepthCopy;
    if (!maxDepthCopy && unsignedIntegerValue > 6)
    {
      sub_275E5A440();
    }

    depthCopy = depth;
    while ([v27 count] < unsignedIntegerValue)
    {
      null2 = [MEMORY[0x277CBEB68] null];
      [v27 addObject:null2];
    }

    [v27 setObject:&unk_2884F36A8 atIndexedSubscript:unsignedIntegerValue - 1];
    v72 = v25;
    if ([nodesCopy count] >= 2)
    {
      v33 = 1;
      v70 = nodesCopy;
      v71 = depthsCopy;
      do
      {
        v34 = [depthsCopy objectAtIndexedSubscript:v33];
        unsignedIntegerValue2 = [v34 unsignedIntegerValue];

        v36 = [depthsCopy objectAtIndexedSubscript:v33 - 1];
        unsignedIntegerValue3 = [v36 unsignedIntegerValue];

        v38 = [v25 objectAtIndexedSubscript:v33 - 1];
        unsignedIntegerValue4 = [v38 unsignedIntegerValue];

        if (unsignedIntegerValue2 < unsignedIntegerValue3)
        {
          if (!unsignedIntegerValue2)
          {
            goto LABEL_30;
          }

          v40 = unsignedIntegerValue2 - 1;
          v41 = 0x7FFFFFFFFFFFFFFFLL;
          do
          {
            v42 = [v27 objectAtIndexedSubscript:v40];
            null3 = [MEMORY[0x277CBEB68] null];

            if (v42 != null3)
            {
              unsignedIntegerValue5 = [v42 unsignedIntegerValue];
              if (unsignedIntegerValue5 <= v41)
              {
                v45 = v41;
              }

              else
              {
                v45 = unsignedIntegerValue5;
              }

              if (v41 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v41 = unsignedIntegerValue5;
              }

              else
              {
                v41 = v45;
              }
            }

            --v40;
          }

          while (v40 != -1);
          v31 = maxDepthCopy;
          if (v41 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v48 = [v71 objectAtIndexedSubscript:v41];
            unsignedIntegerValue3 = [v48 unsignedIntegerValue];

            v49 = v41;
            v25 = v72;
            v50 = [v72 objectAtIndexedSubscript:v49];
            unsignedIntegerValue4 = [v50 unsignedIntegerValue];
          }

          else
          {
LABEL_30:
            v25 = v72;
            if (depthCopy != 0x7FFFFFFFFFFFFFFFLL)
            {
              v46 = depthCopy;
              v47 = 0x277CCA000;
              if (v31)
              {
                goto LABEL_38;
              }

              goto LABEL_46;
            }
          }
        }

        v47 = 0x277CCA000uLL;
        if (v31)
        {
          if (unsignedIntegerValue2 <= unsignedIntegerValue3)
          {
            v46 = unsignedIntegerValue4;
          }

          else
          {
            v46 = unsignedIntegerValue4 + 1;
          }

LABEL_38:
          depthsCopy = v71;
          while ([v27 count] < unsignedIntegerValue2)
          {
            null4 = [MEMORY[0x277CBEB68] null];
            [v27 addObject:null4];
          }

          v52 = [*(v47 + 2992) numberWithUnsignedInteger:v33];
          [v27 setObject:v52 atIndexedSubscript:unsignedIntegerValue2 - 1];
          goto LABEL_50;
        }

        v53 = 6;
        if ((unsignedIntegerValue4 + 1) < 6)
        {
          v53 = unsignedIntegerValue4 + 1;
        }

        if (unsignedIntegerValue2 <= unsignedIntegerValue3)
        {
          v46 = unsignedIntegerValue4;
        }

        else
        {
          v46 = v53;
        }

LABEL_46:
        v52 = [*(v47 + 2992) numberWithUnsignedInteger:v33];
        if (unsignedIntegerValue2 - 1 >= 5)
        {
          v54 = 5;
        }

        else
        {
          v54 = unsignedIntegerValue2 - 1;
        }

        [v27 setObject:v52 atIndexedSubscript:v54];
        depthsCopy = v71;
LABEL_50:

        v55 = [*(v47 + 2992) numberWithUnsignedInteger:v46];
        [v25 addObject:v55];

        ++v33;
        nodesCopy = v70;
      }

      while (v33 < [v70 count]);
    }

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    if ([nodesCopy count])
    {
      v58 = 0;
      do
      {
        v59 = [depthsCopy objectAtIndexedSubscript:v58];
        integerValue = [v59 integerValue];

        v61 = [v72 objectAtIndexedSubscript:v58];
        integerValue2 = [v61 integerValue];

        if (integerValue != integerValue2)
        {
          v63 = [nodesCopy objectAtIndexedSubscript:v58];
          [array addObject:v63];

          v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue2];
          [array2 addObject:v64];
        }

        ++v58;
      }

      while (v58 < [nodesCopy count]);
    }

    v65 = [[KNSlideNodeDepthMap alloc] initWithSlideNodes:array depths:array2];
  }

  else
  {
    v66 = [KNSlideNodeDepthMap alloc];
    v65 = [(KNSlideNodeDepthMap *)v66 initWithSlideNodes:MEMORY[0x277CBEBF8] depths:MEMORY[0x277CBEBF8]];
  }

  return v65;
}

+ (BOOL)areMultipleMasterTypesInCollection:(id)collection
{
  v20 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  if ([collectionCopy count] < 2)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = collectionCopy;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v6 = 0;
    if (v5)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          slide = [v9 slide];
          v11 = TSUDynamicCast();

          templateSlide = [v11 templateSlide];
          v13 = templateSlide;
          if (v6)
          {

            if (v6 != v13)
            {

              LOBYTE(v5) = 1;
              goto LABEL_15;
            }
          }

          else
          {
            v6 = templateSlide;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

LABEL_15:
  }

  return v5;
}

- (KNSlideTree)initWithOwner:(id)owner
{
  v7.receiver = self;
  v7.super_class = KNSlideTree;
  v3 = [(KNSlideTree *)&v7 initWithOwner:owner];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
    slideNodes = v3->_slideNodes;
    v3->_slideNodes = v4;
  }

  return v3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_slideNodes;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setSlideTree:0];
      }

      while (v5 != v7);
      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = KNSlideTree;
  [(KNSlideTree *)&v8 dealloc];
}

- (id)objectEnumerator
{
  v2 = [(NSMutableOrderedSet *)self->_slideNodes copy];
  objectEnumerator = [v2 objectEnumerator];

  return objectEnumerator;
}

- (void)addSlideNode:(id)node atDepth:(unint64_t)depth dolcContext:(id)context
{
  nodeCopy = node;
  contextCopy = context;
  [(KNSlideTree *)self willModify];
  owner = [(KNSlideTree *)self owner];
  context = [owner context];
  documentRoot = [context documentRoot];

  [nodeCopy willBeAddedToDocumentRoot:documentRoot dolcContext:contextCopy];
  lastObject = [(NSMutableOrderedSet *)self->_slideNodes lastObject];
  v13 = lastObject;
  if (depth != 1 && !lastObject)
  {
    sub_275E5A62C();
  }

  [(NSMutableOrderedSet *)self->_slideNodes addObject:nodeCopy];
  [nodeCopy setSlideTree:self];
  if (v13 && [v13 depth] + 1 < depth)
  {
    sub_275E5A4E4();
  }

  if (depth - 1 >= 6)
  {
    sub_275E5A588();
  }

  [nodeCopy setDepth:depth];
  [(KNSlideTree *)self p_clearSlideNodeCache];
  [nodeCopy wasAddedToDocumentRoot:documentRoot dolcContext:contextCopy];
}

- (void)insertSlideNodes:(id)nodes atIndexes:(id)indexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths dolcContext:(id)context
{
  nodesCopy = nodes;
  indexesCopy = indexes;
  depthsCopy = depths;
  changingDepthsCopy = changingDepths;
  contextCopy = context;
  [(KNSlideTree *)self willModify];
  v15 = [nodesCopy count];
  if (v15 != [indexesCopy count])
  {
    sub_275E5A700();
  }

  owner = [(KNSlideTree *)self owner];
  context = [owner context];
  documentRoot = [context documentRoot];

  if ([nodesCopy count])
  {
    v19 = 0;
    do
    {
      v20 = [nodesCopy objectAtIndexedSubscript:v19];
      v21 = [indexesCopy objectAtIndexedSubscript:v19];
      unsignedIntegerValue = [v21 unsignedIntegerValue];
      if (unsignedIntegerValue > [(NSMutableOrderedSet *)self->_slideNodes count])
      {
        sub_275E5A7A4();
      }

      [v20 willBeAddedToDocumentRoot:documentRoot dolcContext:contextCopy];
      [(NSMutableOrderedSet *)self->_slideNodes insertObject:v20 atIndex:unsignedIntegerValue];
      [v20 setSlideTree:self];
      [v20 wasAddedToDocumentRoot:documentRoot dolcContext:contextCopy];

      ++v19;
    }

    while (v19 < [nodesCopy count]);
  }

  v23 = [depthsCopy count];
  if (v23 != [changingDepthsCopy count])
  {
    sub_275E5A848();
  }

  if ([depthsCopy count])
  {
    v24 = 0;
    do
    {
      v25 = [depthsCopy objectAtIndexedSubscript:v24];
      v26 = [changingDepthsCopy objectAtIndexedSubscript:v24];
      unsignedIntegerValue2 = [v26 unsignedIntegerValue];
      if ((unsignedIntegerValue2 - 1) >= 6)
      {
        sub_275E5A8EC();
      }

      [v25 setDepth:unsignedIntegerValue2];

      ++v24;
    }

    while (v24 < [depthsCopy count]);
  }

  [(KNSlideTree *)self p_clearSlideNodeCache];
}

- (void)moveSlideNodes:(id)nodes fromIndexes:(id)indexes toIndexes:(id)toIndexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths
{
  nodesCopy = nodes;
  indexesCopy = indexes;
  toIndexesCopy = toIndexes;
  depthsCopy = depths;
  changingDepthsCopy = changingDepths;
  [(KNSlideTree *)self willModify];
  v16 = [nodesCopy count];
  if (v16 != [indexesCopy count])
  {
    sub_275E5A990();
  }

  v31 = changingDepthsCopy;
  v32 = depthsCopy;
  v17 = [nodesCopy count];
  if (v17 != [toIndexesCopy count])
  {
    sub_275E5AA34();
  }

  if ([nodesCopy count])
  {
    v18 = 0;
    do
    {
      v19 = [nodesCopy objectAtIndexedSubscript:v18];
      v20 = [indexesCopy objectAtIndexedSubscript:v18];
      unsignedIntegerValue = [v20 unsignedIntegerValue];
      v22 = toIndexesCopy;
      v23 = [toIndexesCopy objectAtIndexedSubscript:v18];
      unsignedIntegerValue2 = [v23 unsignedIntegerValue];
      if (unsignedIntegerValue > [(NSMutableOrderedSet *)self->_slideNodes count])
      {
        sub_275E5ACA0();
      }

      if (unsignedIntegerValue2 > [(NSMutableOrderedSet *)self->_slideNodes count])
      {
        sub_275E5ABFC();
      }

      v25 = [(NSMutableOrderedSet *)self->_slideNodes objectAtIndexedSubscript:unsignedIntegerValue];
      if (v19 != v25)
      {
        sub_275E5AAD8(v19, v25, unsignedIntegerValue, unsignedIntegerValue2);
      }

      [(NSMutableOrderedSet *)self->_slideNodes removeObjectAtIndex:unsignedIntegerValue];
      [(NSMutableOrderedSet *)self->_slideNodes insertObject:v25 atIndex:unsignedIntegerValue2];

      ++v18;
      toIndexesCopy = v22;
    }

    while (v18 < [nodesCopy count]);
  }

  v26 = [v32 count];
  if (v26 != [v31 count])
  {
    sub_275E5AD44();
  }

  if ([v32 count])
  {
    v27 = 0;
    do
    {
      v28 = [v32 objectAtIndexedSubscript:v27];
      v29 = [v31 objectAtIndexedSubscript:v27];
      unsignedIntegerValue3 = [v29 unsignedIntegerValue];
      if ((unsignedIntegerValue3 - 1) >= 6)
      {
        sub_275E5ADE8();
      }

      [v28 setDepth:unsignedIntegerValue3];

      ++v27;
    }

    while (v27 < [v32 count]);
  }

  [(KNSlideTree *)self p_clearSlideNodeCache];
}

- (void)removeSlideNodes:(id)nodes atIndexes:(id)indexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths
{
  nodesCopy = nodes;
  indexesCopy = indexes;
  depthsCopy = depths;
  changingDepthsCopy = changingDepths;
  v12 = indexesCopy;
  v37 = changingDepthsCopy;
  [(KNSlideTree *)self willModify];
  owner = [(KNSlideTree *)self owner];
  context = [owner context];
  documentRoot = [context documentRoot];

  v16 = [nodesCopy count];
  if (v16 != [indexesCopy count])
  {
    sub_275E5AE8C();
  }

  if ([indexesCopy count])
  {
    v17 = 0;
    v18 = 0x280A39000uLL;
    do
    {
      v19 = [v12 objectAtIndexedSubscript:v17];
      unsignedIntegerValue = [v19 unsignedIntegerValue];
      v21 = *(v18 + 1088);
      if (unsignedIntegerValue > [*(&self->super.super.isa + v21) count])
      {
        v22 = MEMORY[0x277D81150];
        v39 = v19;
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideTree removeSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]"];
        [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
        selfCopy = self;
        v25 = documentRoot;
        v26 = v18;
        v28 = v27 = v12;
        [v22 handleFailureInFunction:v23 file:v28 lineNumber:458 isFatal:0 description:"Slides must be inserted within the bounds of the deck."];

        v12 = v27;
        v18 = v26;
        documentRoot = v25;
        self = selfCopy;
        v19 = v39;

        [MEMORY[0x277D81150] logBacktraceThrottled];
      }

      v29 = [nodesCopy objectAtIndexedSubscript:v17];
      v30 = [*(&self->super.super.isa + v21) objectAtIndexedSubscript:unsignedIntegerValue];
      v31 = v30;
      if (v29 != v30)
      {
        sub_275E5AF30(v29, v30, unsignedIntegerValue);
      }

      [v30 willBeRemovedFromDocumentRoot:documentRoot];
      [*(&self->super.super.isa + v21) removeObjectAtIndex:unsignedIntegerValue];
      [v31 setSlideTree:0];
      [v31 wasRemovedFromDocumentRoot:documentRoot];

      ++v17;
    }

    while (v17 < [v12 count]);
  }

  v32 = [depthsCopy count];
  if (v32 != [v37 count])
  {
    sub_275E5B048();
  }

  if ([depthsCopy count])
  {
    v33 = 0;
    do
    {
      v34 = [depthsCopy objectAtIndexedSubscript:v33];
      v35 = [v37 objectAtIndexedSubscript:v33];
      unsignedIntegerValue2 = [v35 unsignedIntegerValue];
      if ((unsignedIntegerValue2 - 1) >= 6)
      {
        sub_275E5B0EC();
      }

      [v34 setDepth:unsignedIntegerValue2];

      ++v33;
    }

    while (v33 < [depthsCopy count]);
  }

  [(KNSlideTree *)self p_clearSlideNodeCache];
}

- (void)removeAll
{
  v29 = *MEMORY[0x277D85DE8];
  [(KNSlideTree *)self willModify];
  owner = [(KNSlideTree *)self owner];
  context = [owner context];
  documentRoot = [context documentRoot];

  v6 = [(NSMutableOrderedSet *)self->_slideNodes copy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v23 + 1) + 8 * i) willBeRemovedFromDocumentRoot:documentRoot];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  [(NSMutableOrderedSet *)self->_slideNodes removeAllObjects];
  slideNodesForUniqueIdentifiersCache = self->_slideNodesForUniqueIdentifiersCache;
  self->_slideNodesForUniqueIdentifiersCache = 0;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * j);
        [v18 wasRemovedFromDocumentRoot:{documentRoot, v19}];
        [v18 setSlideTree:0];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  [(KNSlideTree *)self p_clearSlideNodeCache];
}

- (NSArray)visibleSlideNodes
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  slideNodes = [(KNSlideTree *)self slideNodes];
  v5 = [slideNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(slideNodes);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 isSkipped] & 1) == 0)
        {
          [array addObject:v9];
        }
      }

      v6 = [slideNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (NSArray)displayedSlideNodes
{
  v17 = *MEMORY[0x277D85DE8];
  displayedSlideNodeCache = self->_displayedSlideNodeCache;
  if (!displayedSlideNodeCache)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableOrderedSet count](self->_slideNodes, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_slideNodes;
    v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([(KNSlideTree *)self slideNodeIsDisplayed:v10, v12])
          {
            [v4 addObject:v10];
          }
        }

        v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [(KNSlideTree *)self setDisplayedSlideNodes:v4];
    displayedSlideNodeCache = self->_displayedSlideNodeCache;
  }

  return displayedSlideNodeCache;
}

- (id)defaultSlideNodeForNewSelectionNearestToIndex:(unint64_t)index
{
  v5 = [(NSMutableOrderedSet *)self->_slideNodes count];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideTree defaultSlideNodeForNewSelectionNearestToIndex:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:561 isFatal:0 description:"Invalid index passed to the slide tree."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    v5 = 0;
  }

  else if (v5)
  {
    if (v5 <= index)
    {
      [(NSMutableOrderedSet *)self->_slideNodes lastObject];
    }

    else
    {
      [(NSMutableOrderedSet *)self->_slideNodes objectAtIndexedSubscript:index];
    }
    v5 = ;
  }

  return v5;
}

- (unint64_t)indexOfSlideNode:(id)node
{
  nodeCopy = node;
  v5 = [(NSMutableOrderedSet *)self->_slideNodes indexOfObject:nodeCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideTree indexOfSlideNode:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
    objectUUIDPath = [nodeCopy objectUUIDPath];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:582 isFatal:0 description:{"Slide node %{public}@ %{public}@, does not exist in this document.", nodeCopy, objectUUIDPath}];

    [MEMORY[0x277D81150] logFullBacktrace];
  }

  return v5;
}

- (id)orderedSlideNodesInSelection:(id)selection
{
  v18 = *MEMORY[0x277D85DE8];
  slideNodes = [selection slideNodes];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(slideNodes, "count")}];
  if ([slideNodes count])
  {
    slideNodes2 = [(KNSlideTree *)self slideNodes];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [slideNodes2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(slideNodes2);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([slideNodes containsObject:v11])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [slideNodes2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (id)slideNodeAtIndex:(unint64_t)index ignoreHiddenNodes:(BOOL)nodes
{
  nodesCopy = nodes;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_slideNodes;
  v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (!nodesCopy || ([*(*(&v14 + 1) + 8 * i) isSkipped] & 1) == 0)
        {
          if (!index)
          {
            v12 = v11;
            goto LABEL_14;
          }

          --index;
        }
      }

      v8 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)slideNodeWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  slideNodesForUniqueIdentifiersCache = self->_slideNodesForUniqueIdentifiersCache;
  if (!slideNodesForUniqueIdentifiersCache)
  {
    [(KNSlideTree *)self p_cacheSlideNodes];
    slideNodesForUniqueIdentifiersCache = self->_slideNodesForUniqueIdentifiersCache;
  }

  v6 = [(NSMutableDictionary *)slideNodesForUniqueIdentifiersCache objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (BOOL)isEmpty
{
  slideNodes = [(KNSlideTree *)self slideNodes];
  v3 = [slideNodes count] == 0;

  return v3;
}

- (unint64_t)slideNumberForSlideNode:(id)node
{
  nodeCopy = node;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (([nodeCopy isSkipped] & 1) == 0)
  {
    visibleSlideNodes = [(KNSlideTree *)self visibleSlideNodes];
    v7 = [visibleSlideNodes indexOfObject:nodeCopy];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v7 + 1;
    }
  }

  return v5;
}

- (unint64_t)visiblePageCountIsSeparatedByBuilds:(BOOL)builds
{
  v17 = *MEMORY[0x277D85DE8];
  if (builds)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    visibleSlideNodes = [(KNSlideTree *)self visibleSlideNodes];
    v4 = [visibleSlideNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(visibleSlideNodes);
          }

          v6 += [*(*(&v12 + 1) + 8 * i) buildEventCount] + 1;
        }

        v5 = [visibleSlideNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {
    visibleSlideNodes2 = [(KNSlideTree *)self visibleSlideNodes];
    v10 = [visibleSlideNodes2 count];

    return v10;
  }
}

- (unint64_t)byBuildPageIndexForSlideIndex:(unint64_t)index andEventIndex:(unint64_t)eventIndex
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  visibleSlideNodes = [(KNSlideTree *)self visibleSlideNodes];
  v7 = [visibleSlideNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v17;
    while (2)
    {
      v12 = 0;
      v13 = v9 + 1;
      v9 += v8;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(visibleSlideNodes);
        }

        v14 = v10 + 1;
        if (v13 > index)
        {
          v10 = v14 + eventIndex;
          goto LABEL_12;
        }

        v10 = [*(*(&v16 + 1) + 8 * v12++) buildEventCount] + v14;
        ++v13;
      }

      while (v8 != v12);
      v8 = [visibleSlideNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_12:

  return v10 - 1;
}

- (void)slideIndex:(unint64_t *)index andEventIndex:(unint64_t *)eventIndex forByBuildPageIndex:(unint64_t)pageIndex
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  visibleSlideNodes = [(KNSlideTree *)self visibleSlideNodes];
  v9 = [visibleSlideNodes countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    eventIndexCopy = eventIndex;
    v11 = 0;
    v12 = 0;
    v13 = *v22;
    while (2)
    {
      v14 = 0;
      v15 = v11 + 1;
      v11 += v10;
      v16 = v12;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(visibleSlideNodes);
        }

        buildEventCount = [*(*(&v21 + 1) + 8 * v14) buildEventCount];
        v12 = v16 + buildEventCount + 1;
        if (v12 > pageIndex)
        {
          v18 = pageIndex - v16;
          v11 = v15;
          goto LABEL_11;
        }

        ++v14;
        ++v15;
        v16 += buildEventCount + 1;
      }

      while (v10 != v14);
      v10 = [visibleSlideNodes countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v18 = 0;
LABEL_11:
    eventIndex = eventIndexCopy;
  }

  else
  {
    v18 = 0;
    v11 = 0;
  }

  if (v11 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v11;
  }

  *index = (v19 - 1);
  *eventIndex = v18;
}

- (unint64_t)numberOfSlidesUsingTemplateSlide:(id)slide
{
  v3 = [(KNSlideTree *)self slidesUsingTemplateSlide:slide];
  v4 = [v3 count];

  return v4;
}

- (id)slidesUsingTemplateSlide:(id)slide
{
  v21 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  v5 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  slideNodes = [(KNSlideTree *)self slideNodes];
  v7 = [slideNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(slideNodes);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        slide = [v11 slide];
        v13 = TSUDynamicCast();

        templateSlide = [v13 templateSlide];

        if (templateSlide == slideCopy)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [slideNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)formulaReferenceNameForSlideNode:(id)node
{
  nodeCopy = node;
  if (!self->_formulaReferenceNamesForSlideNodesCache)
  {
    [(KNSlideTree *)self p_cacheSlideNodes];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMapTable *)self->_formulaReferenceNamesForSlideNodesCache objectForKey:nodeCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)slideNodeForFormulaReferenceName:(id)name caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!self->_slideNodesForFormulaReferenceNamesCache)
  {
    [(KNSlideTree *)self p_cacheSlideNodes];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sensitiveCopy)
  {
    v8 = [(NSMutableDictionary *)self->_slideNodesForFormulaReferenceNamesCache objectForKeyedSubscript:nameCopy];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_slideNodesForFormulaReferenceNamesCache;
    v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v18 = 40;
      selfCopy2 = self;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [(KNSlideTree *)selfCopy owner:v18];
          objectLocale = [v14 objectLocale];
          v16 = [objectLocale localizedCaseInsensitiveIsEqual:v13 toString:nameCopy];

          if (v16)
          {
            v8 = [*(&selfCopy2->super.super.isa + v18) objectForKeyedSubscript:v13];
            goto LABEL_15;
          }
        }

        v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_15:
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)slideNamesMatchingPrefix:(id)prefix
{
  v22 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  if (!self->_slideNodesForFormulaReferenceNamesCache)
  {
    [(KNSlideTree *)self p_cacheSlideNodes];
  }

  array = [MEMORY[0x277CBEB18] array];
  obj = self;
  objc_sync_enter(obj);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_slideNodesForFormulaReferenceNamesCache;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([prefixCopy length])
        {
          owner = [(KNSlideTree *)obj owner];
          objectLocale = [owner objectLocale];
          locale = [objectLocale locale];
          v13 = [v9 tst_hasCaseInsensitivePrefix:prefixCopy withLocale:locale];

          if (!v13)
          {
            continue;
          }
        }

        [array addObject:v9];
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);

  return array;
}

- (void)invalidateSlideNameCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  slideNodesForFormulaReferenceNamesCache = selfCopy->_slideNodesForFormulaReferenceNamesCache;
  selfCopy->_slideNodesForFormulaReferenceNamesCache = 0;

  formulaReferenceNamesForSlideNodesCache = selfCopy->_formulaReferenceNamesForSlideNodesCache;
  selfCopy->_formulaReferenceNamesForSlideNodesCache = 0;

  objc_sync_exit(selfCopy);
  objc_opt_class();
  owner = [(KNSlideTree *)selfCopy owner];
  context = [owner context];
  documentRoot = [context documentRoot];
  v7 = TSUDynamicCast();
  calculationEngine = [v7 calculationEngine];
  [calculationEngine markIndirectCallsAsDirty];
}

- (id)childrenOfSlideNode:(id)node
{
  nodeCopy = node;
  if (([(NSMutableOrderedSet *)self->_slideNodes containsObject:nodeCopy]& 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideTree childrenOfSlideNode:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
    objectUUIDPath = [nodeCopy objectUUIDPath];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:802 isFatal:0 description:{"Slide node, %{public}@ %{public}@, does not exist in this deck.", nodeCopy, objectUUIDPath}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  array = [MEMORY[0x277CBEB18] array];
  depth = [nodeCopy depth];
  v11 = [(NSMutableOrderedSet *)self->_slideNodes indexOfObject:nodeCopy]+ 1;
  if (v11 < [(NSMutableOrderedSet *)self->_slideNodes count])
  {
    while (1)
    {
      v12 = [(NSMutableOrderedSet *)self->_slideNodes objectAtIndexedSubscript:v11];
      depth2 = [v12 depth];
      if (depth >= depth2)
      {
        break;
      }

      if (depth2 == depth + 1)
      {
        [array addObject:v12];
      }

      if (++v11 >= [(NSMutableOrderedSet *)self->_slideNodes count])
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:
  v14 = [array copy];

  return v14;
}

- (id)descendantsOfSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes
{
  slideNodesCopy = slideNodes;
  nodesCopy = nodes;
  nodeCopy = node;
  if (([(NSMutableOrderedSet *)self->_slideNodes containsObject:nodeCopy]& 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideTree descendantsOfSlideNode:omitSkippedSlideNodes:omitCollapsedSlideNodes:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
    objectUUIDPath = [nodeCopy objectUUIDPath];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:822 isFatal:0 description:{"Slide node, %{public}@ %{public}@, does not exist in this deck.", nodeCopy, objectUUIDPath}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  array = [MEMORY[0x277CBEB18] array];
  depth = [nodeCopy depth];
  if ((![nodeCopy isCollapsed] || !slideNodesCopy) && (!objc_msgSend(nodeCopy, "isSkipped") || !nodesCopy))
  {
    v14 = [(NSMutableOrderedSet *)self->_slideNodes indexOfObject:nodeCopy]+ 1;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (v14 >= [(NSMutableOrderedSet *)self->_slideNodes count])
      {
        break;
      }

      v16 = [(NSMutableOrderedSet *)self->_slideNodes objectAtIndexedSubscript:v14];
      depth2 = [v16 depth];
      v18 = depth2;
      if (depth < depth2 && depth2 < v15)
      {
        if ([v16 hasChildren] && (slideNodesCopy && (objc_msgSend(v16, "isCollapsed") & 1) != 0 || nodesCopy && objc_msgSend(v16, "isSkipped")))
        {
          v15 = v18 + 1;
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        [array addObject:v16];
      }

      ++v14;
    }

    while (depth < v18);
  }

  v20 = [array copy];

  return v20;
}

- (id)slideNodeBeforeSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes
{
  slideNodesCopy = slideNodes;
  nodesCopy = nodes;
  nodeCopy = node;
  if (([(NSMutableOrderedSet *)self->_slideNodes containsObject:nodeCopy]& 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideTree slideNodeBeforeSlideNode:omitSkippedSlideNodes:omitCollapsedSlideNodes:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
    objectUUIDPath = [nodeCopy objectUUIDPath];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:855 isFatal:0 description:{"Slide node, %{public}@ %{public}@, does not exist in this deck.", nodeCopy, objectUUIDPath}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v13 = [(NSMutableOrderedSet *)self->_slideNodes indexOfObject:nodeCopy];
  if (v13)
  {
    for (i = v13 - 1; i != -1; --i)
    {
      v15 = [(NSMutableOrderedSet *)self->_slideNodes objectAtIndexedSubscript:i];
      if (slideNodesCopy)
      {
        v16 = ![(KNSlideTree *)self slideNodeIsDisplayed:v15];
        if (nodesCopy)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = 0;
        if (nodesCopy)
        {
LABEL_9:
          isSkipped = [v15 isSkipped];
          goto LABEL_10;
        }
      }

      isSkipped = 0;
LABEL_10:
      if (((v16 | isSkipped) & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (id)slideNodeAfterSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes
{
  slideNodesCopy = slideNodes;
  nodesCopy = nodes;
  nodeCopy = node;
  if (([(NSMutableOrderedSet *)self->_slideNodes containsObject:nodeCopy]& 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideTree slideNodeAfterSlideNode:omitSkippedSlideNodes:omitCollapsedSlideNodes:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
    objectUUIDPath = [nodeCopy objectUUIDPath];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:874 isFatal:0 description:{"Slide node, %{public}@ %{public}@, does not exist in this deck.", nodeCopy, objectUUIDPath}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v13 = [(NSMutableOrderedSet *)self->_slideNodes indexOfObject:nodeCopy];
  v14 = [(NSMutableOrderedSet *)self->_slideNodes count];
  v15 = v13 + 1;
  if (v15 < v14)
  {
    v16 = v14;
    do
    {
      v17 = [(NSMutableOrderedSet *)self->_slideNodes objectAtIndexedSubscript:v15];
      if (slideNodesCopy)
      {
        v18 = ![(KNSlideTree *)self slideNodeIsDisplayed:v17];
        if (nodesCopy)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v18 = 0;
        if (nodesCopy)
        {
LABEL_9:
          isSkipped = [v17 isSkipped];
          goto LABEL_10;
        }
      }

      isSkipped = 0;
LABEL_10:
      if (((v18 | isSkipped) & 1) == 0)
      {
        goto LABEL_13;
      }

      ++v15;
    }

    while (v16 != v15);
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (id)parentOfSlideNode:(id)node
{
  nodeCopy = node;
  depth = [nodeCopy depth];
  v6 = [(NSMutableOrderedSet *)self->_slideNodes indexOfObject:nodeCopy];
  v7 = v6;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideTree parentOfSlideNode:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
    objectUUIDPath = [nodeCopy objectUUIDPath];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:899 isFatal:0 description:{"Slide node, %{public}@ %{public}@, does not exist in this deck, so no parent can be found.", nodeCopy, objectUUIDPath}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    if (depth <= 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (depth <= 1)
    {
      goto LABEL_14;
    }

    if (!v6)
    {
      v12 = MEMORY[0x277D81150];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideTree parentOfSlideNode:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
      [v12 handleFailureInFunction:v13 file:v14 lineNumber:902 isFatal:0 description:"First slide node has invalid depth."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  if (v7)
  {
    while (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [(NSMutableOrderedSet *)self->_slideNodes objectAtIndexedSubscript:--v7];
      if ([v15 depth] < depth)
      {
        if (v15)
        {
          goto LABEL_15;
        }

        break;
      }

      if (!v7)
      {
        break;
      }
    }
  }

  v16 = MEMORY[0x277D81150];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideTree parentOfSlideNode:]"];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
  [v16 handleFailureInFunction:v17 file:v18 lineNumber:914 isFatal:0 description:"Parent slide node not found. Something is wrong."];

  [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_14:
  v15 = 0;
LABEL_15:

  return v15;
}

- (BOOL)slideNodeIsDisplayed:(id)displayed
{
  displayedCopy = displayed;
  if ([displayedCopy depth] >= 2 && (-[KNSlideTree parentOfSlideNode:](self, "parentOfSlideNode:", displayedCopy), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    do
    {
      isCollapsed = [v6 isCollapsed];
      if (isCollapsed)
      {
        break;
      }

      v8 = [(KNSlideTree *)self parentOfSlideNode:v6];

      v6 = v8;
    }

    while (v8);
    v9 = isCollapsed ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)slideNodesInAscendingOrder:(id)order
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_275D81FD0;
  v5[3] = &unk_27A6985A0;
  v5[4] = self;
  v3 = [order sortedArrayUsingComparator:v5];

  return v3;
}

- (void)addSlideNodeForDocumentUpgrade:(id)upgrade atDepth:(unint64_t)depth
{
  upgradeCopy = upgrade;
  [(KNSlideTree *)self willModifyForUpgrade];
  lastObject = [(NSMutableOrderedSet *)self->_slideNodes lastObject];
  v7 = lastObject;
  if (depth != 1 && !lastObject)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideTree addSlideNodeForDocumentUpgrade:atDepth:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:958 isFatal:0 description:"First slide must be at depth one."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (([(NSMutableOrderedSet *)self->_slideNodes containsObject:upgradeCopy]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_slideNodes addObject:upgradeCopy];
    [upgradeCopy setSlideTree:self];
    if (v7 && [v7 depth] + 1 < depth)
    {
      sub_275E5B190();
    }

    if (depth - 1 >= 6)
    {
      sub_275E5B234();
    }

    [upgradeCopy setDepth:depth];
    [(KNSlideTree *)self p_clearSlideNodeCache];
  }
}

- (void)p_clearSlideNodeCache
{
  displayedSlideNodeCache = self->_displayedSlideNodeCache;
  self->_displayedSlideNodeCache = 0;

  slideNodesForUniqueIdentifiersCache = self->_slideNodesForUniqueIdentifiersCache;
  self->_slideNodesForUniqueIdentifiersCache = 0;

  [(KNSlideTree *)self invalidateSlideNameCache];
}

- (void)p_cacheSlideNodes
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_slideNodesForUniqueIdentifiersCache)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    slideNodesForUniqueIdentifiersCache = selfCopy->_slideNodesForUniqueIdentifiersCache;
    selfCopy->_slideNodesForUniqueIdentifiersCache = v3;
  }

  if (!selfCopy->_slideNodesForFormulaReferenceNamesCache)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    slideNodesForFormulaReferenceNamesCache = selfCopy->_slideNodesForFormulaReferenceNamesCache;
    selfCopy->_slideNodesForFormulaReferenceNamesCache = v5;
  }

  if (!selfCopy->_formulaReferenceNamesForSlideNodesCache)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:512 capacity:0];
    formulaReferenceNamesForSlideNodesCache = selfCopy->_formulaReferenceNamesForSlideNodesCache;
    selfCopy->_formulaReferenceNamesForSlideNodesCache = v7;
  }

  [(NSMutableDictionary *)selfCopy->_slideNodesForUniqueIdentifiersCache removeAllObjects];
  [(NSMutableDictionary *)selfCopy->_slideNodesForFormulaReferenceNamesCache removeAllObjects];
  [(NSMapTable *)selfCopy->_formulaReferenceNamesForSlideNodesCache removeAllObjects];
  documentRoot = [(KNSlideTree *)selfCopy documentRoot];
  documentLocale = [documentRoot documentLocale];
  v32 = [documentLocale localizedStringForKey:@"Skipped Slide %@" value:&stru_2884D8E20 table:@"Keynote"];

  documentRoot2 = [(KNSlideTree *)selfCopy documentRoot];
  documentLocale2 = [documentRoot2 documentLocale];
  v31 = [documentLocale2 localizedStringForKey:@"Slide %@" value:&stru_2884D8E20 table:@"Keynote"];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = selfCopy->_slideNodes;
  v13 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v34 = *v37;
    do
    {
      v35 = v13;
      for (i = 0; i != v35; ++i)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        if (!selfCopy->_formatter)
        {
          v18 = objc_alloc_init(MEMORY[0x277CCABB8]);
          formatter = selfCopy->_formatter;
          selfCopy->_formatter = v18;

          [(NSNumberFormatter *)selfCopy->_formatter setNumberStyle:1];
          v20 = selfCopy->_formatter;
          documentRoot3 = [(KNSlideTree *)selfCopy documentRoot];
          documentLocale3 = [documentRoot3 documentLocale];
          locale = [documentLocale3 locale];
          [(NSNumberFormatter *)v20 setLocale:locale];
        }

        if ([v17 isSkipped])
        {
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:++v15];
          v25 = [(NSNumberFormatter *)selfCopy->_formatter stringFromNumber:v24];
          [MEMORY[0x277CCACA8] stringWithFormat:v32, v25];
        }

        else
        {
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:++v14];
          v25 = [(NSNumberFormatter *)selfCopy->_formatter stringFromNumber:v24];
          [MEMORY[0x277CCACA8] stringWithFormat:v31, v25];
        }
        v26 = ;

        if (v17)
        {
          if (v26)
          {
            uniqueIdentifier = [v17 uniqueIdentifier];
            v28 = uniqueIdentifier == 0;

            if (!v28)
            {
              [(NSMutableDictionary *)selfCopy->_slideNodesForFormulaReferenceNamesCache setObject:v17 forKeyedSubscript:v26];
              [(NSMapTable *)selfCopy->_formulaReferenceNamesForSlideNodesCache setObject:v26 forKey:v17];
              v29 = selfCopy->_slideNodesForUniqueIdentifiersCache;
              uniqueIdentifier2 = [v17 uniqueIdentifier];
              [(NSMutableDictionary *)v29 setObject:v17 forKeyedSubscript:uniqueIdentifier2];
            }
          }
        }
      }

      v13 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  [(KNSlideTree *)selfCopy setDisplayedSlideNodes:0];
  objc_sync_exit(selfCopy);
}

- (KNSlideTree)initWithArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner
{
  unarchiverCopy = unarchiver;
  ownerCopy = owner;
  v26.receiver = self;
  v26.super_class = KNSlideTree;
  v10 = [(KNSlideTree *)&v26 initWithOwner:ownerCopy];
  if (v10)
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = sub_275D82A0C;
    v24[4] = sub_275D82A1C;
    v25 = 0;
    if (*(archive + 16))
    {
      v11 = *(archive + 6);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_275D82A24;
      v23[3] = &unk_27A6985C8;
      v23[4] = v24;
      v12 = unarchiverCopy;
      [v12 readReferenceMessage:v11 class:objc_opt_class() protocol:0 completion:v23];
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_275D82A34;
    v21[3] = &unk_27A697A10;
    v13 = v10;
    v22 = v13;
    v14 = unarchiverCopy;
    [v14 readRepeatedReferenceMessage:archive + 24 class:objc_opt_class() protocol:0 completion:v21];

    fileFormatVersion = [v14 fileFormatVersion];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_275D82AD0;
    v17[3] = &unk_27A6985F0;
    v19 = v24;
    v18 = v13;
    v20 = fileFormatVersion;
    [v14 addFinalizeHandler:v17];

    _Block_object_dispose(v24, 8);
  }

  return v10;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  slideNodes = [(KNSlideTree *)self slideNodes];
  [archiverCopy setStrongReferenceArray:slideNodes message:archive + 24];
}

@end