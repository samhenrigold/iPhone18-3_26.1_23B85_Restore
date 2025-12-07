@interface KNSlideLayoutPrintHelper
- (BOOL)incrementPage;
- (BOOL)shouldDrawSlide;
- (KNSlideLayoutPrintHelper)initWithRenderingExporter:(id)exporter;
- (KNSlideLayoutPrintHelperDataSource)dataSource;
- (id)p_segmentsForSlideNode:(id)node;
- (unint64_t)pageCount;
- (void)p_segmentSlideNodes;
- (void)resetPage;
- (void)setCurrentSlideNode:(id)node;
- (void)setDataSource:(id)source;
@end

@implementation KNSlideLayoutPrintHelper

- (KNSlideLayoutPrintHelper)initWithRenderingExporter:(id)exporter
{
  exporterCopy = exporter;
  v8.receiver = self;
  v8.super_class = KNSlideLayoutPrintHelper;
  v5 = [(KNSlideLayoutPrintHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_renderingExporter, exporterCopy);
  }

  return v6;
}

- (unint64_t)pageCount
{
  segments = self->_segments;
  if (!segments)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideLayoutPrintHelper pageCount]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideLayoutPrintHelper.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:35 isFatal:0 description:{"invalid nil value for '%{public}s'", "_segments"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    segments = self->_segments;
  }

  return [(NSArray *)segments count];
}

- (void)resetPage
{
  currentSegment = self->_currentSegment;
  self->_currentSegment = 0;
}

- (BOOL)incrementPage
{
  if (!self->_segments)
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideLayoutPrintHelper incrementPage]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideLayoutPrintHelper.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:44 isFatal:0 description:{"invalid nil value for '%{public}s'", "_segments"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  segments = self->_segments;
  currentSegment = self->_currentSegment;
  if (currentSegment)
  {
    v8 = [(NSArray *)segments indexOfObject:?]+ 1;
    if (v8 >= [(NSArray *)self->_segments count])
    {
      v9 = 0;
      goto LABEL_8;
    }

    segments = self->_segments;
    currentSegment = v8;
  }

  v9 = [(NSArray *)segments objectAtIndexedSubscript:currentSegment];
LABEL_8:
  v10 = self->_currentSegment;
  self->_currentSegment = v9;

  return self->_currentSegment != 0;
}

- (BOOL)shouldDrawSlide
{
  commentsPageIndex = [(KNSlideLayoutPrintHelper *)self commentsPageIndex];
  buildIndex = [(KNSlideLayoutPrintHelper *)self buildIndex];
  v5 = buildIndex;
  if (commentsPageIndex)
  {
    v6 = commentsPageIndex == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (buildIndex || (([(KNSlideLayoutPrintHelper *)self notesPageIndex]== 0) & v7) == 0)
  {
    return (v5 != 0) & v7;
  }

  else
  {
    return 1;
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(KNSlideLayoutPrintHelper *)self p_segmentSlideNodes];
    v5 = obj;
  }
}

- (void)setCurrentSlideNode:(id)node
{
  v17 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_segments;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        slideNode = [v10 slideNode];

        if (slideNode == nodeCopy)
        {
          objc_storeStrong(&self->_currentSegment, v10);
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)p_segmentSlideNodes
{
  v21 = *MEMORY[0x277D85DE8];
  segments = self->_segments;
  self->_segments = 0;

  currentSegment = self->_currentSegment;
  self->_currentSegment = 0;

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_dataSource);
    v7 = [v6 slideNodesForPrintHelper:self];

    array = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(KNSlideLayoutPrintHelper *)self p_segmentsForSlideNode:*(*(&v16 + 1) + 8 * v13), v16];
          [(NSArray *)array addObjectsFromArray:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    v15 = self->_segments;
    self->_segments = array;
  }
}

- (id)p_segmentsForSlideNode:(id)node
{
  nodeCopy = node;
  array = [MEMORY[0x277CBEB18] array];
  WeakRetained = objc_loadWeakRetained(&self->_renderingExporter);
  if ([WeakRetained isPrintingComments])
  {
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v8 = [v7 printHelper:self commentsPageCountForSlideNode:nodeCopy];
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  v9 = objc_loadWeakRetained(&self->_renderingExporter);
  v10 = TSUDynamicCast();

  objc_opt_class();
  v11 = objc_loadWeakRetained(&self->_renderingExporter);
  v30 = TSUDynamicCast();

  if ((v10 || [v30 isPrintingNotes]) && objc_msgSend(nodeCopy, "hasNote"))
  {
    v12 = objc_loadWeakRetained(&self->_dataSource);
    v13 = [v12 printHelper:self noteSegmentsForSlideNode:nodeCopy];

    if (v8)
    {
      v29 = v10;
      v14 = 0;
      v31 = v13;
      do
      {
        if (v14 >= [v13 count])
        {
          v18 = [[KNPrintSegment alloc] initWithSlideNode:nodeCopy buildIndex:0 notesIndex:0 commentsPageIndex:v14 span:0];
        }

        else
        {
          v15 = [v13 objectAtIndexedSubscript:v14];
          v16 = [KNPrintSegment alloc];
          slideNode = [v15 slideNode];
          v18 = -[KNPrintSegment initWithSlideNode:buildIndex:notesIndex:commentsPageIndex:span:](v16, "initWithSlideNode:buildIndex:notesIndex:commentsPageIndex:span:", slideNode, [v15 buildIndex], objc_msgSend(v15, "notesIndex"), v14, objc_msgSend(v15, "span"));

          v13 = v31;
        }

        [array addObject:v18];

        ++v14;
      }

      while (v8 != v14);
      v10 = v29;
      if (v8 < [v13 count])
      {
        v19 = v8;
        do
        {
          v20 = [v13 objectAtIndexedSubscript:v19];
          [array addObject:v20];

          ++v19;
        }

        while (v19 < [v13 count]);
      }
    }

    else
    {
      [array addObjectsFromArray:v13];
    }
  }

  v21 = [array count] != 0;
  v22 = objc_loadWeakRetained(&self->_renderingExporter);
  if ([v22 isPrintingBuilds] && objc_msgSend(nodeCopy, "safeHasBuildEvents"))
  {
    safeBuildEventCount = [nodeCopy safeBuildEventCount];
  }

  else
  {
    safeBuildEventCount = 0;
  }

  for (; v21 <= safeBuildEventCount; ++v21)
  {
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v25 = [[KNPrintSegment alloc] initWithSlideNode:nodeCopy buildIndex:v21 notesIndex:0 commentsPageIndex:i span:0];
        [array addObject:v25];
      }
    }

    else
    {
      v26 = [[KNPrintSegment alloc] initWithSlideNode:nodeCopy buildIndex:v21 notesIndex:0 span:0];
      [array addObject:v26];
    }
  }

  v27 = [array copy];

  return v27;
}

- (KNSlideLayoutPrintHelperDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end