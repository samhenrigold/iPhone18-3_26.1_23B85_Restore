@interface KNPdfNoteExporter
- (BOOL)drawMonoPageExtraContentInContext:(CGContext *)context scaledClipRect:(CGRect)rect;
- (BOOL)incrementPage;
- (CGRect)monoSlideRectFromScaledClipRect:(CGRect)rect outScaledClipRect:(CGRect *)clipRect;
- (id)currentInfos;
- (id)printHelper:(id)helper noteSegmentsForSlideNode:(id)node;
- (id)slideNodesForPrintHelper:(id)helper;
- (unint64_t)pageCount;
- (void)p_preparePrintHelperIfNeeded;
@end

@implementation KNPdfNoteExporter

- (id)currentInfos
{
  objc_opt_class();
  slide = [(KNSlideNode *)self->super.super._currentSlideNode slide];
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
      v8.super_class = KNPdfNoteExporter;
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
  [(KNPdfNoteExporter *)self p_preparePrintHelperIfNeeded];
  helper = self->_helper;

  return [(KNSlideLayoutPrintHelper *)helper pageCount];
}

- (BOOL)incrementPage
{
  [(KNPdfNoteExporter *)self p_preparePrintHelperIfNeeded];
  if (!self->super.super._currentSlideNode)
  {
    [(KNSlideLayoutPrintHelper *)self->_helper resetPage];
  }

  incrementPage = [(KNSlideLayoutPrintHelper *)self->_helper incrementPage];
  slideNode = [(KNSlideLayoutPrintHelper *)self->_helper slideNode];
  currentSlideNode = self->super.super._currentSlideNode;
  self->super.super._currentSlideNode = slideNode;

  self->super.super._currentBuildIndex = [(KNSlideLayoutPrintHelper *)self->_helper buildIndex];
  if (!incrementPage)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = KNPdfNoteExporter;
  return [(KNRenderingExporter *)&v7 incrementPage];
}

- (void)p_preparePrintHelperIfNeeded
{
  if (!self->_helper)
  {
    v3 = [[KNSlideLayoutPrintHelper alloc] initWithRenderingExporter:self];
    helper = self->_helper;
    self->_helper = v3;

    v5 = self->_helper;

    MEMORY[0x2821F9670](v5, sel_setDataSource_);
  }
}

- (CGRect)monoSlideRectFromScaledClipRect:(CGRect)rect outScaledClipRect:(CGRect *)clipRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  show = [*(&self->super.super.super.super.isa + *MEMORY[0x277D7FFD8]) show];
  [show size];
  v10 = y + 9.0;
  v11 = height + -18.0;
  v12 = x + 9.0;
  v13 = width + -18.0;
  TSUFitOrFillSizeInRect();
  v23 = CGRectIntegral(v22);
  v14 = v23.origin.x;
  v15 = v23.origin.y;
  v16 = v23.size.width;
  v17 = v23.size.height;
  if (clipRect)
  {
    v24.origin.x = v12;
    v24.origin.y = v10;
    v24.size.width = v13;
    v24.size.height = v11;
    *clipRect = CGRectIntegral(v24);
  }

  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (BOOL)drawMonoPageExtraContentInContext:(CGContext *)context scaledClipRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  commentsPageIndex = [(KNSlideLayoutPrintHelper *)self->_helper commentsPageIndex];
  notesIndex = [(KNSlideLayoutPrintHelper *)self->_helper notesIndex];
  if (self->super.super._currentBuildIndex)
  {
    return 0;
  }

  v12 = notesIndex;
  if (![(KNSlideNode *)self->super.super._currentSlideNode hasNote])
  {
    return 0;
  }

  if ((commentsPageIndex - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002 && v12 == 0)
  {
    return 0;
  }

  memset(&v38, 0, sizeof(v38));
  CGContextGetTextMatrix(&v38, context);
  CGContextSaveGState(context);
  self->_isDrawingNote = 1;
  clearColor = [MEMORY[0x277D81180] clearColor];
  v15 = *MEMORY[0x277D7FFE8];
  [*(&self->super.super.super.super.isa + v15) setBackgroundColor:clearColor];

  CGContextTranslateCTM(context, x, y);
  if (v12)
  {
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v16 = CGRectGetWidth(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v17 = CGRectGetHeight(v40);
    width = v16;
  }

  else
  {
    v17 = height * 0.5 + -18.0;
  }

  cyanColor = [MEMORY[0x277D81180] cyanColor];
  nullsub_1();

  objc_opt_class();
  slide = [(KNSlideNode *)self->super.super._currentSlideNode slide];
  v22 = TSUDynamicCast();

  note = [v22 note];
  [note setShrinkTextForPrinting:0];
  [note setFrameForPrinting:{0.0, 0.0, width, v17}];
  [note setInitialCharacterIndexForExporting:v12];
  canvas = [*(&self->super.super.super.super.isa + v15) canvas];
  layoutController = [canvas layoutController];
  v34 = layoutController;
  objc_opt_class();
  v25 = [layoutController layoutForInfo:note];
  v26 = TSUDynamicCast();

  v33 = v26;
  if (v26)
  {
    containedLayout = [v26 containedLayout];
    [containedLayout invalidateTextLayout];
    [layoutController invalidateLayout:containedLayout];
    [layoutController validateLayouts];
  }

  else
  {
    containedLayout = 0;
  }

  v32 = v15;
  isPrinting = [*(&self->super.super.super.super.isa + v15) isPrinting];
  if ((isPrinting & 1) == 0)
  {
    [*(&self->super.super.super.super.isa + v15) setIsPrinting:1];
  }

  v37.receiver = self;
  v37.super_class = KNPdfNoteExporter;
  v18 = [(TSARenderingExporter *)&v37 drawCurrentPageInContext:context viewScale:0 unscaledClipRect:1.0 createPage:0.0, 0.0, width, v17];
  if (!v18)
  {
    v29 = MEMORY[0x277D81150];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPdfNoteExporter drawMonoPageExtraContentInContext:scaledClipRect:]"];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfNoteExporter.mm"];
    [v29 handleFailureInFunction:v30 file:v31 lineNumber:196 isFatal:0 description:"Failed to print note"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ((isPrinting & 1) == 0)
  {
    [*(&self->super.super.super.super.isa + v32) setIsPrinting:0];
  }

  [note setInitialCharacterIndexForExporting:0];
  [containedLayout invalidateTextLayout];
  if (containedLayout)
  {
    [v34 invalidateLayout:containedLayout];
  }

  [canvas setInfosToDisplay:MEMORY[0x277CBEBF8]];
  self->_isDrawingNote = 0;

  CGContextRestoreGState(context);
  v36 = v38;
  CGContextSetTextMatrix(context, &v36);
  return v18;
}

- (id)slideNodesForPrintHelper:(id)helper
{
  slidesForPrinting = [(KNRenderingExporter *)self slidesForPrinting];

  return slidesForPrinting;
}

- (id)printHelper:(id)helper noteSegmentsForSlideNode:(id)node
{
  v49[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v5 = *MEMORY[0x277D7FFE8];
  isPrinting = [*(&self->super.super.super.super.isa + v5) isPrinting];
  [*(&self->super.super.super.super.isa + v5) setIsPrinting:0];
  v44 = v5;
  [(KNRenderingExporter *)self scaledClipRectForPageCount];
  v48.origin.x = v7;
  v48.origin.y = v8;
  v48.size.width = v9;
  v48.size.height = v10;
  [*(&self->super.super.super.super.isa + v5) setIsPrinting:isPrinting];
  [(KNPdfNoteExporter *)self monoSlideRectFromScaledClipRect:&v48 outScaledClipRect:*&v48.origin, *&v48.size];
  selfCopy = self;
  array = [MEMORY[0x277CBEB18] array];
  if ([nodeCopy hasNote])
  {
    objc_opt_class();
    slide = [nodeCopy slide];
    v42 = TSUDynamicCast();

    note = [v42 note];
    [note setShrinkTextForPrinting:0];
    containedStorage = [note containedStorage];
    v45 = [containedStorage length];

    Width = CGRectGetWidth(v48);
    Height = CGRectGetHeight(v48);
    size = v48.size;
    isPrinting2 = [*(&self->super.super.super.super.isa + v5) isPrinting];
    if ((isPrinting2 & 1) == 0)
    {
      [*(&self->super.super.super.super.isa + v5) setIsPrinting:1];
    }

    canvas = [*(&self->super.super.super.super.isa + v5) canvas];
    layoutController = [canvas layoutController];
    v41 = isPrinting2;
    if (v45)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = [[KNPrintSegment alloc] initWithSlideNode:nodeCopy buildIndex:0 notesIndex:v21 span:v20];
        [array addObject:v23];
        [note setInitialCharacterIndexForExporting:v21];
        if (v20)
        {
          v24 = Height;
        }

        else
        {
          v24 = size.height * 0.5 + -18.0;
        }

        if (v20)
        {
          v25 = Width;
        }

        else
        {
          v25 = size.width;
        }

        [note setFrameForPrinting:{0.0, 0.0, v25, v24}];
        v49[0] = note;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
        [canvas setInfosToDisplay:v26];

        objc_opt_class();
        v27 = [layoutController layoutForInfo:note];
        v28 = TSUDynamicCast();

        if (!v28)
        {
          v29 = MEMORY[0x277D81150];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPdfNoteExporter printHelper:noteSegmentsForSlideNode:]"];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfNoteExporter.mm"];
          [v29 handleFailureInFunction:v30 file:v31 lineNumber:282 isFatal:0 description:{"invalid nil value for '%{public}s'", "noteLayout"}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        [layoutController validateLayouts];
        containedLayout = [v28 containedLayout];

        if (!containedLayout)
        {
          v33 = MEMORY[0x277D81150];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPdfNoteExporter printHelper:noteSegmentsForSlideNode:]"];
          v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfNoteExporter.mm"];
          [v33 handleFailureInFunction:v34 file:v35 lineNumber:286 isFatal:0 description:{"invalid nil value for '%{public}s'", "containedLayout"}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        [containedLayout invalidateTextLayout];
        [layoutController invalidateLayout:containedLayout];
        [layoutController validateLayouts];
        containedTextRange = [containedLayout containedTextRange];
        v38 = v37;
        [canvas setInfosToDisplay:MEMORY[0x277CBEBF8]];

        v21 = containedTextRange + v38;
        ++v20;
        v22 = containedLayout;
      }

      while (v21 < v45);
    }

    else
    {
      containedLayout = 0;
    }

    if ((v41 & 1) == 0)
    {
      [*(&selfCopy->super.super.super.super.isa + v44) setIsPrinting:0];
    }

    [note setInitialCharacterIndexForExporting:0];
    [containedLayout invalidateTextLayout];
    if (containedLayout)
    {
      [layoutController invalidateLayout:containedLayout];
    }
  }

  v39 = [array copy];

  return v39;
}

@end