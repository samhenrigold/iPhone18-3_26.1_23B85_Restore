@interface KNPdfHandoutExporter
- (BOOL)incrementPage;
- (KNPdfHandoutExporter)initWithDocumentRoot:(id)root;
- (id)currentInfos;
- (id)p_noteSegmentsForSlideNode:(id)node withScaledClipRect:(CGRect)rect firstSegmentIndex:(unint64_t)index;
- (id)p_segmentsForPage:(unint64_t)page;
- (id)p_segmentsForSlideNode:(id)node withScaledClipRect:(CGRect)rect firstSegmentIndex:(unint64_t)index;
- (unint64_t)pageCount;
- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect;
- (void)p_drawDividerLineForRect:(CGRect)rect pageRect:(CGRect)pageRect context:(CGContext *)context;
- (void)p_drawNotesForNode:(id)node index:(unint64_t)index forRect:(CGRect)rect notesIndex:(unint64_t)notesIndex scaledClipRect:(CGRect)clipRect context:(CGContext *)context;
- (void)p_drawRuledLinesForRect:(CGRect)rect pageRect:(CGRect)pageRect numberOfLines:(unint64_t)lines context:(CGContext *)context;
- (void)p_segmentSlideNodesWithScaledClipRect:(CGRect)rect;
- (void)p_segmentSlidesIfNecessary;
@end

@implementation KNPdfHandoutExporter

- (KNPdfHandoutExporter)initWithDocumentRoot:(id)root
{
  v4.receiver = self;
  v4.super_class = KNPdfHandoutExporter;
  result = [(KNRenderingExporter *)&v4 initWithDocumentRoot:root];
  result->super.super.super._slidesPerPage = 3;
  return result;
}

- (id)currentInfos
{
  objc_opt_class();
  slide = [(KNSlideNode *)self->super.super.super._currentSlideNode slide];
  v4 = TSUDynamicCast();

  if (v4)
  {
    if (self->_isDrawingNote)
    {
      note = [v4 note];
      currentInfos = [MEMORY[0x277CBEA60] arrayWithObject:note];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = KNPdfHandoutExporter;
      currentInfos = [(KNRenderingExporter *)&v8 currentInfos];
    }
  }

  else
  {
    currentInfos = 0;
  }

  return currentInfos;
}

- (unint64_t)pageCount
{
  v15 = *MEMORY[0x277D85DE8];
  [(KNPdfHandoutExporter *)self p_segmentSlidesIfNecessary];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_segments;
  v4 = 0;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 += [*(*(&v10 + 1) + 8 * i) span];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  slidesPerPage = [(KNRenderingExporter *)self slidesPerPage];
  if (v4 % slidesPerPage)
  {
    return v4 / slidesPerPage + 1;
  }

  else
  {
    return v4 / slidesPerPage;
  }
}

- (BOOL)incrementPage
{
  [(KNPdfHandoutExporter *)self p_segmentSlidesIfNecessary];
  if (self->super.super.super._currentSlideNode)
  {
    v3 = self->_pageIndex + 1;
  }

  else
  {
    v3 = 0;
  }

  self->_pageIndex = v3;
  v4 = [(KNPdfHandoutExporter *)self p_segmentsForPage:?];
  segmentsForCurrentPage = self->_segmentsForCurrentPage;
  self->_segmentsForCurrentPage = v4;

  if ([(NSArray *)self->_segmentsForCurrentPage count])
  {
    v6 = [(NSArray *)self->_segmentsForCurrentPage objectAtIndexedSubscript:0];
    slideNode = [v6 slideNode];
    currentSlideNode = self->super.super.super._currentSlideNode;
    self->super.super.super._currentSlideNode = slideNode;

    v9 = [(NSArray *)self->_segmentsForCurrentPage objectAtIndexedSubscript:0];
    self->super.super.super._currentBuildIndex = [v9 buildIndex];
  }

  v10 = [(NSArray *)self->_segmentsForCurrentPage count];
  if (v10)
  {
    v12.receiver = self;
    v12.super_class = KNPdfHandoutExporter;
    LOBYTE(v10) = [(KNRenderingExporter *)&v12 incrementPage];
  }

  return v10;
}

- (void)p_segmentSlidesIfNecessary
{
  if (!self->_segments)
  {
    [(KNRenderingExporter *)self scaledClipRectForPageCount];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = *MEMORY[0x277D7FFE8];
    if ([*(&self->super.super.super.super.super.isa + v11) isPrinting])
    {

      [(KNPdfHandoutExporter *)self p_segmentSlideNodesWithScaledClipRect:v4, v6, v8, v10];
    }

    else
    {
      [*(&self->super.super.super.super.super.isa + v11) setIsPrinting:1];
      [(KNRenderingExporter *)self rectBySubtractingDefaultPageMarginsFromRect:v4, v6, v8, v10];
      [(KNPdfHandoutExporter *)self p_segmentSlideNodesWithScaledClipRect:?];
      v12 = *(&self->super.super.super.super.super.isa + v11);

      [v12 setIsPrinting:0];
    }
  }
}

- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  v48 = *MEMORY[0x277D85DE8];
  v30 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FFD8]);
  show = [v30 show];
  [show size];
  slidesPerPage = [(KNRenderingExporter *)self slidesPerPage];
  isPrintingSlideNumbers = [(KNRenderingExporter *)self isPrintingSlideNumbers];
  v7 = 3.0;
  if (width < height)
  {
    v7 = 2.0;
  }

  v8 = width / v7;
  if (isPrintingSlideNumbers)
  {
    v9 = v8 + -18.0;
  }

  else
  {
    v9 = v8;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_segmentsForCurrentPage;
  v10 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = (height + (slidesPerPage - 1) * -18.0) / slidesPerPage;
    v13 = y + height - v12;
    v34 = v12 + 18.0;
    v32 = -(v12 + 18.0);
    v38 = v12;
    v35 = (v12 / 27.0);
    v36 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        slideNode = [v15 slideNode];
        buildIndex = [v15 buildIndex];
        notesIndex = [v15 notesIndex];
        span = [v15 span];
        TSUFitOrFillSizeInRect();
        v22 = v20;
        v23 = v21;
        v24 = x + v9 * 0.5 - v20 * 0.5;
        v25 = v38 + v13 - v21;
        if (!notesIndex)
        {
          [(KNRenderingExporter *)self drawImageForSlideNode:slideNode event:buildIndex slideSize:context intoRect:v20 annotationFlagsScale:v21 context:x + v9 * 0.5 - v20 * 0.5, v25, v20, v21, 0.0];
        }

        if ([(KNRenderingExporter *)self isPrintingSlideNumbers])
        {
          if (!notesIndex)
          {
            [(KNRenderingExporter *)self drawSlideNumberForNode:slideNode buildIndex:buildIndex forRect:context context:1 position:x, v13, v9, v38];
          }

          v9 = v9 + 18.0;
        }

        if (span < 2)
        {
          v27 = (height + (slidesPerPage - 1) * -18.0) / slidesPerPage;
        }

        else
        {
          v26 = (span - 1);
          v13 = v13 + v32 * v26;
          v27 = v26 * 18.0 + v38 * span;
        }

        v28 = *MEMORY[0x277D7FFE8];
        isPrinting = [*(&self->super.super.super.super.super.isa + v28) isPrinting];
        [*(&self->super.super.super.super.super.isa + v28) setIsPrinting:1];
        [(KNPdfHandoutExporter *)self p_drawNotesForNode:slideNode index:buildIndex forRect:notesIndex notesIndex:context scaledClipRect:x context:v13, v9, v27, x, y, width, height];
        [*(&self->super.super.super.super.super.isa + v28) setIsPrinting:isPrinting];
        if (!notesIndex)
        {
          [(KNRenderingExporter *)self drawBorderForRect:context context:v24, v25, v22, v23];
        }

        v11 += span;
        if (slidesPerPage != v11)
        {
          [(KNPdfHandoutExporter *)self p_drawDividerLineForRect:context pageRect:x context:v13, v9, v27, x, y, width, height];
        }

        [(KNPdfHandoutExporter *)self p_drawRuledLinesForRect:v35 pageRect:context numberOfLines:x context:v13, v9, v27, x, y, width, height];
        if ([(KNRenderingExporter *)self isPrintingSlideNumbers])
        {
          v9 = v9 + -18.0;
        }

        v13 = v13 - v34;
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v10);
  }
}

- (id)p_segmentsForPage:(unint64_t)page
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self->_segments)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPdfHandoutExporter p_segmentsForPage:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfHandoutExporter.mm"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:225 isFatal:0 description:{"invalid nil value for '%{public}s'", "_segments"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  array = [MEMORY[0x277CBEB18] array];
  slidesPerPage = [(KNRenderingExporter *)self slidesPerPage];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_segments;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = slidesPerPage * page;
    v14 = *v21;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v21 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v20 + 1) + 8 * v15);
      span = [v16 span];
      v12 += span;
      if (v12 > v13)
      {
        [array addObject:v16];
        slidesPerPage -= span;
        if (!slidesPerPage)
        {
          break;
        }
      }

      if (v11 == ++v15)
      {
        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v18 = [array copy];

  return v18;
}

- (void)p_segmentSlideNodesWithScaledClipRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v32 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  slidesForPrinting = [(KNRenderingExporter *)self slidesForPrinting];
  obj = slidesForPrinting;
  v9 = [slidesForPrinting countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        height = [(KNPdfHandoutExporter *)self p_segmentsForSlideNode:*(*(&v26 + 1) + 8 * v12) withScaledClipRect:v10 firstSegmentIndex:x, y, width, height];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v14 = height;
        v15 = 0;
        v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v16)
        {
          v17 = *v23;
          do
          {
            v18 = 0;
            do
            {
              if (*v23 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v15 += [*(*(&v22 + 1) + 8 * v18++) span];
            }

            while (v16 != v18);
            v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v16);
        }

        [(NSArray *)array addObjectsFromArray:v14];
        v10 += v15;
        ++v12;
      }

      while (v12 != v9);
      slidesForPrinting = obj;
      v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  segments = self->_segments;
  self->_segments = array;
}

- (id)p_segmentsForSlideNode:(id)node withScaledClipRect:(CGRect)rect firstSegmentIndex:(unint64_t)index
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  nodeCopy = node;
  array = [MEMORY[0x277CBEB18] array];
  if (-[KNRenderingExporter isPrintingNotes](self, "isPrintingNotes") && [nodeCopy hasNote])
  {
    height = [(KNPdfHandoutExporter *)self p_noteSegmentsForSlideNode:nodeCopy withScaledClipRect:index firstSegmentIndex:x, y, width, height];
    [array addObjectsFromArray:height];
  }

  if (-[KNRenderingExporter isPrintingBuilds](self, "isPrintingBuilds") && [nodeCopy safeHasBuildEvents])
  {
    for (i = [array count] != 0; i <= objc_msgSend(nodeCopy, "safeBuildEventCount"); ++i)
    {
      v15 = [[KNPrintSegment alloc] initWithSlideNode:nodeCopy buildIndex:i notesIndex:0 span:1];
      [array addObject:v15];
    }
  }

  else if (![array count])
  {
    v16 = [[KNPrintSegment alloc] initWithSlideNode:nodeCopy buildIndex:0 notesIndex:0 span:1];
    [array addObject:v16];
  }

  v17 = [array copy];

  return v17;
}

- (id)p_noteSegmentsForSlideNode:(id)node withScaledClipRect:(CGRect)rect firstSegmentIndex:(unint64_t)index
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v55[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  array = [MEMORY[0x277CBEB18] array];
  if ([nodeCopy hasNote])
  {
    slidesPerPage = [(KNRenderingExporter *)self slidesPerPage];
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    MaxX = CGRectGetMaxX(v57);
    v12 = 3.0;
    if (width < height)
    {
      v12 = 2.0;
    }

    v58.size.width = width / v12;
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.height = (height + (slidesPerPage - 1) * -18.0) / slidesPerPage;
    v13 = CGRectGetMaxX(v58);
    objc_opt_class();
    slide = [nodeCopy slide];
    v15 = TSUDynamicCast();

    v47 = v15;
    note = [v15 note];
    [note setShrinkTextForPrinting:0];
    containedStorage = [note containedStorage];
    v54 = [containedStorage length];

    canvas = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FFE8]) canvas];
    layoutController = [canvas layoutController];
    if (v54)
    {
      v19 = 0;
      v20 = 0;
      v21 = MaxX - v13 + -25.0 + 18.0;
      v22 = (slidesPerPage + index / slidesPerPage * slidesPerPage - index - 1) * 18.0 + (height + (slidesPerPage - 1) * -18.0) / slidesPerPage * (slidesPerPage + index / slidesPerPage * slidesPerPage - index);
      v48 = slidesPerPage + index / slidesPerPage * slidesPerPage - index;
      v50 = v48;
      do
      {
        [note setInitialCharacterIndexForExporting:v19];
        [note setFrameForPrinting:{0.0, 0.0, v21, v22}];
        v55[0] = note;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
        [canvas setInfosToDisplay:v23];

        objc_opt_class();
        v24 = [layoutController layoutForInfo:note];
        v25 = TSUDynamicCast();

        if (!v25)
        {
          v26 = MEMORY[0x277D81150];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPdfHandoutExporter p_noteSegmentsForSlideNode:withScaledClipRect:firstSegmentIndex:]"];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfHandoutExporter.mm"];
          [v26 handleFailureInFunction:v27 file:v28 lineNumber:339 isFatal:0 description:{"invalid nil value for '%{public}s'", "noteLayout"}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        [layoutController validateLayouts];
        containedLayout = [v25 containedLayout];

        if (!containedLayout)
        {
          v30 = MEMORY[0x277D81150];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPdfHandoutExporter p_noteSegmentsForSlideNode:withScaledClipRect:firstSegmentIndex:]"];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfHandoutExporter.mm"];
          [v30 handleFailureInFunction:v31 file:v32 lineNumber:343 isFatal:0 description:{"invalid nil value for '%{public}s'", "containedLayout"}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        [containedLayout invalidateTextLayout];
        [layoutController invalidateLayout:containedLayout];
        [layoutController validateLayouts];
        containedTextRange = [containedLayout containedTextRange];
        v35 = v34;
        [canvas setInfosToDisplay:MEMORY[0x277CBEBF8]];
        v36 = containedTextRange + v35;
        if (containedTextRange + v35 >= v54)
        {
          v38 = MEMORY[0x277D80DC0];
          columns = [containedLayout columns];
          [v38 columnRectForRange:containedTextRange withColumns:{v35, columns}];
          v41 = v40;

          v42 = [KNPrintSegment alloc];
          v43 = vcvtpd_u64_f64(v41 / (height / slidesPerPage));
          if (v48 >= v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = v48;
          }

          v37 = [(KNPrintSegment *)v42 initWithSlideNode:nodeCopy buildIndex:0 notesIndex:v19 span:v44];
        }

        else
        {
          v37 = [[KNPrintSegment alloc] initWithSlideNode:nodeCopy buildIndex:0 notesIndex:v19 span:v50];
          v50 = slidesPerPage;
          v22 = height;
        }

        [array addObject:v37];

        v19 = v36;
        v20 = containedLayout;
      }

      while (v36 < v54);
    }

    else
    {
      containedLayout = 0;
    }

    [note setInitialCharacterIndexForExporting:0];
    [containedLayout invalidateTextLayout];
    if (containedLayout)
    {
      [layoutController invalidateLayout:containedLayout];
    }
  }

  v45 = [array copy];

  return v45;
}

- (void)p_drawDividerLineForRect:(CGRect)rect pageRect:(CGRect)pageRect context:(CGContext *)context
{
  height = pageRect.size.height;
  width = pageRect.size.width;
  y = pageRect.origin.y;
  x = pageRect.origin.x;
  v10 = rect.origin.x;
  MinY = CGRectGetMinY(rect);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MaxX = CGRectGetMaxX(v16);
  v13 = [MEMORY[0x277D81180] colorWithWhite:0.0 alpha:0.5];
  CGContextSetStrokeColorWithColor(context, [v13 CGColor]);
  v14 = MinY + -9.0;

  CGContextSetLineWidth(context, 0.25);
  CGContextBeginPath(context);
  CGContextMoveToPoint(context, v10, v14);
  CGContextAddLineToPoint(context, v10 + MaxX - v10, v14);
  CGContextClosePath(context);

  CGContextStrokePath(context);
}

- (void)p_drawRuledLinesForRect:(CGRect)rect pageRect:(CGRect)pageRect numberOfLines:(unint64_t)lines context:(CGContext *)context
{
  height = pageRect.size.height;
  width = pageRect.size.width;
  y = pageRect.origin.y;
  x = pageRect.origin.x;
  v12 = rect.size.height;
  v13 = rect.size.width;
  v14 = rect.origin.y;
  v15 = rect.origin.x;
  if ([(KNRenderingExporter *)self isPrintingRuledLines])
  {
    v21.origin.x = v15;
    v21.origin.y = v14;
    v21.size.width = v13;
    v21.size.height = v12;
    MaxX = CGRectGetMaxX(v21);
    v22.origin.x = v15;
    v22.origin.y = v14;
    v22.size.width = v13;
    v22.size.height = v12;
    MaxY = CGRectGetMaxY(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v17 = CGRectGetMaxX(v23);
    v18 = [MEMORY[0x277D81180] colorWithWhite:0.0 alpha:0.25];
    CGContextSetStrokeColorWithColor(context, [v18 CGColor]);

    CGContextSetLineWidth(context, 0.25);
    if (lines)
    {
      v19 = MaxX + 9.0 + v17 - (MaxX + 9.0);
      do
      {
        MaxY = MaxY + -27.0;
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, MaxX + 9.0, MaxY);
        CGContextAddLineToPoint(context, v19, MaxY);
        CGContextClosePath(context);
        CGContextStrokePath(context);
        --lines;
      }

      while (lines);
    }
  }
}

- (void)p_drawNotesForNode:(id)node index:(unint64_t)index forRect:(CGRect)rect notesIndex:(unint64_t)notesIndex scaledClipRect:(CGRect)clipRect context:(CGContext *)context
{
  height = clipRect.size.height;
  width = clipRect.size.width;
  y = clipRect.origin.y;
  x = clipRect.origin.x;
  v14 = rect.size.height;
  v15 = rect.size.width;
  v16 = rect.origin.y;
  v17 = rect.origin.x;
  nodeCopy = node;
  if ([(KNRenderingExporter *)self isPrintingNotes])
  {
    v21 = [nodeCopy hasNote] ^ 1;
    if (index)
    {
      LOBYTE(v21) = 1;
    }

    if ((v21 & 1) == 0)
    {
      memset(&v43, 0, sizeof(v43));
      CGContextGetTextMatrix(&v43, context);
      CGContextSaveGState(context);
      self->_isDrawingNote = 1;
      clearColor = [MEMORY[0x277D81180] clearColor];
      v23 = *MEMORY[0x277D7FFE8];
      [*(&self->super.super.super.super.super.isa + v23) setBackgroundColor:clearColor];

      v44.origin.x = v17;
      v44.origin.y = v16;
      v44.size.width = v15;
      v44.size.height = v14;
      MaxX = CGRectGetMaxX(v44);
      CGContextTranslateCTM(context, MaxX + 18.0, v16);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v25 = CGRectGetMaxX(v45);
      v46.origin.x = v17;
      v46.origin.y = v16;
      v46.size.width = v15;
      v46.size.height = v14;
      v26 = CGRectGetMaxX(v46);
      cyanColor = [MEMORY[0x277D81180] cyanColor];
      v28 = v25 - v26 + -25.0 + 18.0;
      nullsub_1();

      [(KNRenderingExporter *)self setCurrentSlideNode:nodeCopy];
      objc_opt_class();
      slide = [(KNSlideNode *)self->super.super.super._currentSlideNode slide];
      v30 = TSUDynamicCast();

      v39 = v30;
      note = [v30 note];
      [note setShrinkTextForPrinting:0];
      [note setFrameForPrinting:{0.0, 0.0, v28, v14}];
      [note setInitialCharacterIndexForExporting:notesIndex];
      canvas = [*(&self->super.super.super.super.super.isa + v23) canvas];
      layoutController = [canvas layoutController];
      objc_opt_class();
      v33 = [layoutController layoutForInfo:note];
      v34 = TSUDynamicCast();

      if (v34)
      {
        containedLayout = [v34 containedLayout];
        [containedLayout invalidateTextLayout];
        [layoutController invalidateLayout:containedLayout];
        [layoutController validateLayouts];
      }

      else
      {
        containedLayout = 0;
      }

      v42.receiver = self;
      v42.super_class = KNPdfHandoutExporter;
      if (![(TSARenderingExporter *)&v42 drawCurrentPageInContext:context viewScale:0 unscaledClipRect:1.0 createPage:0.0, 0.0, v28, v14])
      {
        v36 = MEMORY[0x277D81150];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPdfHandoutExporter p_drawNotesForNode:index:forRect:notesIndex:scaledClipRect:context:]"];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfHandoutExporter.mm"];
        [v36 handleFailureInFunction:v37 file:v38 lineNumber:465 isFatal:0 description:"Failed to print note"];

        [MEMORY[0x277D81150] logBacktraceThrottled];
      }

      [note setInitialCharacterIndexForExporting:0];
      [containedLayout invalidateTextLayout];
      if (containedLayout)
      {
        [layoutController invalidateLayout:containedLayout];
      }

      [canvas setInfosToDisplay:MEMORY[0x277CBEBF8]];
      self->_isDrawingNote = 0;

      CGContextRestoreGState(context);
      v41 = v43;
      CGContextSetTextMatrix(context, &v41);
    }
  }
}

@end