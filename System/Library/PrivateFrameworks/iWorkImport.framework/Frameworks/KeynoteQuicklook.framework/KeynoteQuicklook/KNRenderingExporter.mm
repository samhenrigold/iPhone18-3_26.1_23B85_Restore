@interface KNRenderingExporter
- (BOOL)drawImageForSlideNode:(id)node event:(unint64_t)event slideSize:(CGSize)size intoRect:(CGRect)rect annotationFlagsScale:(double)scale context:(CGContext *)context;
- (BOOL)drawMonoPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page helper:(id)helper;
- (BOOL)exportToURL:(id)l pageNumber:(unint64_t)number delegate:(id)delegate error:(id *)error;
- (BOOL)incrementPage;
- (BOOL)preparePage:(unint64_t)page;
- (CGRect)beginPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page;
- (CGRect)boundsRect;
- (CGRect)monoSlideRectFromScaledClipRect:(CGRect)rect outScaledClipRect:(CGRect *)clipRect;
- (CGRect)scaledClipRectForPageCount;
- (CGRect)scaledClipRectMinusBottomSpace:(CGRect)space;
- (CGRect)unscaledClipRectForPageCount;
- (KNRenderingExporter)initWithDocumentRoot:(id)root;
- (NSArray)slidesForPrinting;
- (TSWPFontHeightInfo)bottomTextFontHeightInfo;
- (double)bottomTextVerticalSpace;
- (id)currentInfos;
- (id)p_slideNumberStringForSlideNode:(id)node buildIndex:(unint64_t)index;
- (id)p_sourceNodes;
- (id)quickLookSlideNodes;
- (int64_t)pageIndexFromQuickLookSlideNode:(id)node;
- (unint64_t)currentSlideNumber;
- (unint64_t)maximumRangeValue;
- (unint64_t)p_slideNumberForSlideNode:(id)node;
- (unint64_t)pageCount;
- (unint64_t)rangeEnd;
- (unint64_t)rangeStart;
- (void)addAnchorPointForSlide:(id)slide context:(CGContext *)context;
- (void)drawBorderForRect:(CGRect)rect context:(CGContext *)context;
- (void)drawDateForRect:(CGRect)rect context:(CGContext *)context;
- (void)drawNSStringDateForRect:(CGRect)rect context:(CGContext *)context;
- (void)drawSlideNumberForNode:(id)node buildIndex:(unint64_t)index forRect:(CGRect)rect context:(CGContext *)context position:(int64_t)position;
- (void)enableRenderAllContent;
- (void)endPageInContext:(CGContext *)context createPage:(BOOL)page;
- (void)setCurrentSlideNode:(id)node;
- (void)setOptions:(id)options;
- (void)setSlideRangeEnd:(unint64_t)end;
- (void)setSlideRangeStart:(unint64_t)start;
- (void)setup;
- (void)teardown;
@end

@implementation KNRenderingExporter

- (KNRenderingExporter)initWithDocumentRoot:(id)root
{
  rootCopy = root;
  v5 = [[KNImager alloc] initWithDocumentRoot:rootCopy];
  v13.receiver = self;
  v13.super_class = KNRenderingExporter;
  v6 = [(TSARenderingExporter *)&v13 initWithDocumentRoot:rootCopy imager:v5];
  if (v6)
  {
    [(TSDImager *)v5 setIsPrinting:1];
    [(TSDImager *)v5 setShouldShowComments:v6->_printingComments];
    [(TSDImager *)v5 setShouldShowTextCommentHighlights:0];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentSlidesOnPage = v6->_currentSlidesOnPage;
    v6->_currentSlidesOnPage = v7;

    show = [rootCopy show];
    v6->_slidesPerPage = 1;
    v10 = [[KNPdfHyperlinkController alloc] initWithShow:show];
    hyperlinkController = v6->_hyperlinkController;
    v6->_hyperlinkController = v10;

    v6->_rangeStart = 1;
    v6->_rangeEnd = -1;
    v6->_maxRangeValue = -1;
  }

  return v6;
}

- (BOOL)exportToURL:(id)l pageNumber:(unint64_t)number delegate:(id)delegate error:(id *)error
{
  v10 = *(&self->super.super.isa + *MEMORY[0x277D7FFE8]);
  delegateCopy = delegate;
  lCopy = l;
  [v10 setIsPrinting:0];
  v14.receiver = self;
  v14.super_class = KNRenderingExporter;
  LOBYTE(error) = [(TSARenderingExporter *)&v14 exportToURL:lCopy pageNumber:number delegate:delegateCopy error:error];

  return error;
}

- (CGRect)boundsRect
{
  TSURectWithSize();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)currentInfos
{
  v20 = *MEMORY[0x277D85DE8];
  slide = [(KNSlideNode *)self->_currentSlideNode slide];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    infosToDisplay = [slide infosToDisplay];
    isPrintingBackgrounds = [(KNRenderingExporter *)self isPrintingBackgrounds];
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(infosToDisplay, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = infosToDisplay;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (isPrintingBackgrounds | ((objc_opt_isKindOfClass() & 1) == 0))
            {
              [v6 addObject:{v12, v15}];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setup
{
  v5.receiver = self;
  v5.super_class = KNRenderingExporter;
  [(TSARenderingExporter *)&v5 setup];
  currentSlideNode = self->_currentSlideNode;
  self->_currentSlideNode = 0;

  currentSlidesOnPage = self->_currentSlidesOnPage;
  self->_currentSlidesOnPage = 0;
}

- (void)teardown
{
  currentSlideNode = self->_currentSlideNode;
  self->_currentSlideNode = 0;

  currentSlidesOnPage = self->_currentSlidesOnPage;
  self->_currentSlidesOnPage = 0;

  v5.receiver = self;
  v5.super_class = KNRenderingExporter;
  [(TSARenderingExporter *)&v5 teardown];
}

- (unint64_t)pageCount
{
  v21 = *MEMORY[0x277D85DE8];
  slidesForPrinting = [(KNRenderingExporter *)self slidesForPrinting];
  v4 = [slidesForPrinting count];
  if (v4 && [(KNRenderingExporter *)self isPrintingBuilds])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = slidesForPrinting;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v11 safeHasBuildEvents])
          {
            v8 += [v11 safeBuildEventCount];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v8 + v4;
  v13 = v12 / [(KNRenderingExporter *)self slidesPerPage];
  if (v12 % [(KNRenderingExporter *)self slidesPerPage])
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

- (BOOL)preparePage:(unint64_t)page
{
  currentSlideNode = self->_currentSlideNode;
  self->_currentSlideNode = 0;

  for (; page; --page)
  {
    [(KNRenderingExporter *)self incrementPage];
  }

  currentSlideNode = [(KNRenderingExporter *)self currentSlideNode];
  v7 = currentSlideNode != 0;

  return v7;
}

- (BOOL)incrementPage
{
  v2 = self->_currentPage + 1;
  self->_currentPage = v2;
  return v2 <= [(KNRenderingExporter *)self pageCount];
}

- (unint64_t)rangeStart
{
  rangeStart = self->_rangeStart;
  if (rangeStart - 1 >= [(KNRenderingExporter *)self maximumRangeValue])
  {
    return 1;
  }

  else
  {
    return rangeStart;
  }
}

- (unint64_t)rangeEnd
{
  rangeEnd = self->_rangeEnd;
  maximumRangeValue = [(KNRenderingExporter *)self maximumRangeValue];
  if (rangeEnd == -1 || rangeEnd > maximumRangeValue)
  {
    v5 = maximumRangeValue;
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNRenderingExporter rangeEnd]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRenderingExporter.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:276 isFatal:0 description:{"Expects a value in a valid range for rangeEnd. RangeEnd: '%lu'. Max: '%lu'", rangeEnd, v5}];

    [MEMORY[0x277D81150] logFullBacktrace];
    return v5;
  }

  return rangeEnd;
}

- (NSArray)slidesForPrinting
{
  selfCopy = self;
  show = [*(&self->super.super.isa + *MEMORY[0x277D7FFD8]) show];
  rangeStart = [(KNRenderingExporter *)selfCopy rangeStart];
  rangeEnd = [(KNRenderingExporter *)selfCopy rangeEnd];
  LOBYTE(selfCopy) = [(KNRenderingExporter *)selfCopy isPrintingSkippedSlides];
  slideTree = [show slideTree];
  v7 = slideTree;
  if (selfCopy)
  {
    [slideTree slideNodes];
  }

  else
  {
    [slideTree visibleSlideNodes];
  }
  v8 = ;

  v9 = rangeStart - 1;
  v10 = [v8 count];
  if (rangeEnd >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = rangeEnd;
  }

  v12 = [v8 subarrayWithRange:{v9, v11 - v9}];

  return v12;
}

- (id)p_sourceNodes
{
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();
  show = [v3 show];
  slideTree = [show slideTree];
  if ([(KNRenderingExporter *)self isPrintingSkippedSlides])
  {
    [slideTree slideNodes];
  }

  else
  {
    [slideTree visibleSlideNodes];
  }
  v6 = ;

  return v6;
}

- (void)drawBorderForRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(KNRenderingExporter *)self isPrintingBorders])
  {
    v9 = MEMORY[0x277D803C0];
    blackColor = [MEMORY[0x277D81180] blackColor];
    v11 = [v9 strokeWithColor:blackColor width:0.25];

    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v14 = CGRectInset(v13, -0.125, -0.125);
    [v11 paintRect:context inContext:{v14.origin.x, v14.origin.y, v14.size.width, v14.size.height}];
  }
}

- (TSWPFontHeightInfo)bottomTextFontHeightInfo
{
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  return self;
}

- (double)bottomTextVerticalSpace
{
  objc_msgSend_bottomTextFontHeightInfo(self, a2, 0, 0);
  [(KNRenderingExporter *)self bottomTextVerticalPosition];
  return 0.0 + 11.0 + v3;
}

- (void)drawDateForRect:(CGRect)rect context:(CGContext *)context
{
  if ([(KNRenderingExporter *)self isPrintingDate:rect.origin.x])
  {
    printTitle = self->_printTitle;
    if (printTitle)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = MEMORY[0x277CCA968];
      date = [MEMORY[0x277CBEAA8] date];
      v10 = [v8 localizedStringFromDate:date dateStyle:3 timeStyle:0];
      v13 = [v7 stringWithFormat:@"%@ - %@", printTitle, v10];
    }

    else
    {
      v11 = MEMORY[0x277CCA968];
      date = [MEMORY[0x277CBEAA8] date];
      v13 = [v11 localizedStringFromDate:date dateStyle:3 timeStyle:0];
    }

    v12 = v13;
    if (v13)
    {
      CGContextSaveGState(context);
      CGContextRestoreGState(context);
      v12 = v13;
    }
  }
}

- (void)drawNSStringDateForRect:(CGRect)rect context:(CGContext *)context
{
  if ([(KNRenderingExporter *)self isPrintingDate:context])
  {
    printTitle = self->_printTitle;
    if (printTitle)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = MEMORY[0x277CCA968];
      date = [MEMORY[0x277CBEAA8] date];
      v9 = [v7 localizedStringFromDate:date dateStyle:3 timeStyle:0];
      v11 = [v6 stringWithFormat:@"%@ - %@", printTitle, v9];
    }

    else
    {
      v10 = MEMORY[0x277CCA968];
      date = [MEMORY[0x277CBEAA8] date];
      v11 = [v10 localizedStringFromDate:date dateStyle:3 timeStyle:0];
    }
  }
}

- (void)drawSlideNumberForNode:(id)node buildIndex:(unint64_t)index forRect:(CGRect)rect context:(CGContext *)context position:(int64_t)position
{
  nodeCopy = node;
  if ([(KNRenderingExporter *)self isPrintingSlideNumbers])
  {
    v10 = [(KNRenderingExporter *)self p_slideNumberStringForSlideNode:nodeCopy buildIndex:index];
    if (v10)
    {
      CGContextSaveGState(context);
      CGContextRestoreGState(context);
    }
  }

  MEMORY[0x2821F9730]();
}

- (BOOL)drawImageForSlideNode:(id)node event:(unint64_t)event slideSize:(CGSize)size intoRect:(CGRect)rect annotationFlagsScale:(double)scale context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = size.height;
  v14 = size.width;
  nodeCopy = node;
  objc_opt_class();
  v18 = TSUDynamicCast();
  show = [v18 show];
  offscreenController = self->_offscreenController;
  if (!offscreenController)
  {
    v24 = 0;
    goto LABEL_8;
  }

  [(KNOffscreenController *)offscreenController outputSize];
  if (v22 != v14 || v21 != v13)
  {
    v24 = self->_offscreenController;
LABEL_8:
    self->_offscreenController = 0;

    v25 = [[KNOffscreenController alloc] initWithShow:show canvasDelegate:self outputSize:v14, v13];
    v26 = self->_offscreenController;
    self->_offscreenController = v25;
  }

  session = [(KNOffscreenController *)self->_offscreenController session];
  [session setIsExportingToPDF:1];
  [session setShouldUseContentlessLayers:1];
  [session setShouldAllowBackgroundAlpha:{-[KNRenderingExporter isPrintingSlideBackgroundsWithAlpha](self, "isPrintingSlideBackgroundsWithAlpha")}];
  if ([(KNRenderingExporter *)self supportsPrintingComments])
  {
    if ([(KNRenderingExporter *)self isPrintingComments])
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    [session setFloatingCommentBehavior:v28];
  }

  [(KNOffscreenController *)self->_offscreenController gotoSlideNode:nodeCopy andEvent:event];
  [(KNRenderingExporter *)self isPrintingCanvas];
  [(KNRenderingExporter *)self shouldSuppressBackgrounds];
  TSDSetCGContextInfo();
  memset(&v38, 0, sizeof(v38));
  CGContextGetTextMatrix(&v38, context);
  CGContextSaveGState(context);
  CGContextClipToRectSafe();
  if ([(KNRenderingExporter *)self isPrintingDraftQuality])
  {
    CGContextSetInterpolationQuality(context, kCGInterpolationLow);
    v29 = [(KNOffscreenController *)self->_offscreenController copyImageOfCurrentEventIgnoringBuildVisilibity:[(KNRenderingExporter *)self isPrintingBuilds]^ 1];
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    CGContextDrawImage(context, v39, v29);
    CGImageRelease(v29);
  }

  else
  {
    [(KNOffscreenController *)self->_offscreenController drawCurrentEventIntoContext:context intoRect:[(KNRenderingExporter *)self isPrintingBuilds]^ 1 ignoreBuildVisibility:x, y, width, height];
  }

  if (([nodeCopy isSkipped] & 1) == 0)
  {
    [(KNPdfHyperlinkController *)self->_hyperlinkController setCurrentSlideNumber:[(KNRenderingExporter *)self currentSlideNumber]];
    isPrintingBuilds = [(KNRenderingExporter *)self isPrintingBuilds];
    hyperlinkController = self->_hyperlinkController;
    animatedSlideView = [(KNOffscreenController *)self->_offscreenController animatedSlideView];
    v33 = animatedSlideView;
    if (isPrintingBuilds)
    {
      repsCurrentlyVisible = [animatedSlideView repsCurrentlyVisible];
      [(KNPdfHyperlinkController *)hyperlinkController addHyperlinksForReps:repsCurrentlyVisible targetRect:context context:x, y, width, height];
    }

    else
    {
      repsCurrentlyVisible = [animatedSlideView canvas];
      topLevelReps = [repsCurrentlyVisible topLevelReps];
      [(KNPdfHyperlinkController *)hyperlinkController addHyperlinksForReps:topLevelReps targetRect:context context:x, y, width, height];
    }
  }

  CGContextRestoreGState(context);
  v37 = v38;
  CGContextSetTextMatrix(context, &v37);

  return 1;
}

- (void)addAnchorPointForSlide:(id)slide context:(CGContext *)context
{
  memset(&v13, 0, sizeof(v13));
  slideCopy = slide;
  CGContextGetCTM(&v13, context);
  show = [*(&self->super.super.isa + *MEMORY[0x277D7FFD8]) show];
  [show size];
  point = vaddq_f64(*&v13.tx, vmlaq_f64(vmulq_n_f64(*&v13.c, v8), 0, *&v13.a));
  v9 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [slideCopy uniqueIdentifier];

  v11 = [v9 stringWithFormat:@"?slideid=%@", uniqueIdentifier];
  CGPDFContextAddDestinationAtPoint(context, v11, point);
}

- (unint64_t)currentSlideNumber
{
  slidesForPrinting = [(KNRenderingExporter *)self slidesForPrinting];
  v4 = [slidesForPrinting indexOfObject:self->_currentSlideNode];

  return v4;
}

- (void)setCurrentSlideNode:(id)node
{
  nodeCopy = node;
  if (self->_currentSlideNode != nodeCopy)
  {
    v8 = nodeCopy;
    objc_storeStrong(&self->_currentSlideNode, node);
    v6 = *(&self->super.super.isa + *MEMORY[0x277D7FFE8]);
    slide = [(KNSlideNode *)self->_currentSlideNode slide];
    [v6 setSlide:slide];

    nodeCopy = v8;
  }
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  v57.receiver = self;
  v57.super_class = KNRenderingExporter;
  [(TSARenderingExporter *)&v57 setOptions:optionsCopy];
  self->_maxRangeValue = -1;
  v5 = [optionsCopy objectForKey:*MEMORY[0x277D80780]];
  if (v5)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    [v6 setRenderingQuality:{objc_msgSend(v5, "intValue")}];
  }

  v7 = [optionsCopy objectForKeyedSubscript:@"KNPrintSlideBorders"];
  v8 = v7;
  if (v7)
  {
    self->_printingBorders = [v7 BOOLValue];
  }

  v9 = [optionsCopy objectForKeyedSubscript:@"KNPrintUsePageMargins"];
  v10 = v9;
  if (v9)
  {
    self->_printingPageMargins = [v9 BOOLValue];
  }

  v11 = [optionsCopy objectForKeyedSubscript:@"KNPrintDate"];
  v12 = v11;
  if (v11)
  {
    self->_printingDate = [v11 BOOLValue];
  }

  v13 = [optionsCopy objectForKeyedSubscript:@"KNPrintDateTitle"];
  if (v13)
  {
    objc_storeStrong(&self->_printTitle, v13);
  }

  v14 = [optionsCopy objectForKeyedSubscript:@"KNPrintSlideNumbers"];
  v15 = v14;
  if (v14)
  {
    self->_printingSlideNumbers = [v14 BOOLValue];
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"KNPrintEachBuild"];
  v17 = v16;
  if (v16)
  {
    self->_printingBuilds = [v16 BOOLValue];
  }

  v54 = v10;
  v55 = v8;
  v18 = [optionsCopy objectForKeyedSubscript:@"KNPrintHiddenSlides"];
  v19 = v18;
  if (v18)
  {
    self->_printingSkippedSlides = [v18 BOOLValue];
  }

  v20 = v5;
  v49 = v19;
  v21 = [optionsCopy objectForKeyedSubscript:@"KNPrintDraftQuality"];
  v22 = v21;
  if (v21)
  {
    self->_printingDraftQuality = [v21 BOOLValue];
  }

  v23 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D807B8]];
  v24 = v23;
  if (v23)
  {
    self->_printingComments = [v23 BOOLValue];
  }

  v47 = v24;
  v53 = v12;
  v25 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D807A8]];
  v26 = v25;
  if (v25)
  {
    self->_printingBackgrounds = [v25 BOOLValue];
  }

  v46 = v26;
  v52 = v13;
  v27 = [optionsCopy objectForKeyedSubscript:@"KNPrintDraftQuality"];
  v28 = v27;
  if (v27)
  {
    self->_printingDraftQuality = [v27 BOOLValue];
  }

  v29 = [optionsCopy objectForKeyedSubscript:@"KNPrintSlideRangeStart"];
  v30 = v29;
  v51 = v15;
  if (v29)
  {
    unsignedIntegerValue = [v29 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  [(KNRenderingExporter *)self setSlideRangeStart:unsignedIntegerValue];
  v32 = [optionsCopy objectForKeyedSubscript:@"KNPrintSlideRangeEnd"];
  v33 = v32;
  v50 = v17;
  if (v32)
  {
    unsignedIntegerValue2 = [v32 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = [(KNRenderingExporter *)self maximumRangeValue];
  }

  v48 = v22;
  [(KNRenderingExporter *)self setSlideRangeEnd:unsignedIntegerValue2];
  v35 = [optionsCopy objectForKeyedSubscript:@"KNPrintSlidesPerGridPage"];
  v36 = v35;
  if (v35)
  {
    -[KNRenderingExporter setSlidesPerPage:](self, "setSlidesPerPage:", [v35 integerValue]);
  }

  v37 = [optionsCopy objectForKeyedSubscript:@"KNPrintSlidesPerHandoutPage"];
  v38 = v37;
  if (v37)
  {
    -[KNRenderingExporter setSlidesPerPage:](self, "setSlidesPerPage:", [v37 integerValue]);
  }

  v56 = v20;
  v39 = [optionsCopy objectForKeyedSubscript:@"KNPrintAddNotesToHandout"];
  v40 = v39;
  if (v39)
  {
    self->_printingNotes = [v39 BOOLValue];
  }

  v41 = [optionsCopy objectForKeyedSubscript:@"KNPrintRuledLines"];
  v42 = v41;
  if (v41)
  {
    self->_printingRuledLines = [v41 BOOLValue];
  }

  v43 = [optionsCopy objectForKeyedSubscript:@"KNPrintSlideBackgroundsWithAlpha"];
  v44 = v43;
  if (v43)
  {
    bOOLValue = [v43 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  self->_printingSlideBackgroundsWithAlpha = bOOLValue;
}

- (void)enableRenderAllContent
{
  self->_printingSkippedSlides = 1;
  self->_printingBackgrounds = 1;
  self->_printingSlideBackgroundsWithAlpha = 1;
  self->_printingComments = 1;
}

- (int64_t)pageIndexFromQuickLookSlideNode:(id)node
{
  nodeCopy = node;
  if ([(KNRenderingExporter *)self isPrintingBuilds])
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNRenderingExporter pageIndexFromQuickLookSlideNode:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRenderingExporter.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:745 isFatal:0 description:"Printing builds not supported in -pageIndexFromSlide"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    quickLookSlideNodes = [(KNRenderingExporter *)self quickLookSlideNodes];
    v8 = [quickLookSlideNodes indexOfObjectIdenticalTo:nodeCopy];
  }

  return v8;
}

- (id)quickLookSlideNodes
{
  show = [*(&self->super.super.isa + *MEMORY[0x277D7FFD8]) show];
  slideTree = [show slideTree];
  visibleSlideNodes = [slideTree visibleSlideNodes];

  return visibleSlideNodes;
}

- (void)setSlideRangeStart:(unint64_t)start
{
  maximumRangeValue = [(KNRenderingExporter *)self maximumRangeValue];
  if (start != -1 && (!start || maximumRangeValue < start))
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNRenderingExporter setSlideRangeStart:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRenderingExporter.m"];
    v10 = NSStringFromSelector(a2);
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:761 isFatal:0 description:{"%@ expects a value in the range [1, slideTree.visibleSlideNodes.count}] ||  [1, slideTree.slideNodes.count)  || NSUIntegerMax", v10);

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (start + 1 < 3)
  {
    startCopy = 1;
  }

  else
  {
    startCopy = start;
  }

  self->_rangeStart = startCopy;
}

- (void)setSlideRangeEnd:(unint64_t)end
{
  maximumRangeValue = [(KNRenderingExporter *)self maximumRangeValue];
  if (end == -1)
  {
    end = maximumRangeValue;
  }

  else if (!end || maximumRangeValue < end)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNRenderingExporter setSlideRangeEnd:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRenderingExporter.m"];
    v10 = NSStringFromSelector(a2);
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:772 isFatal:0 description:{"%@ expects a value in the range [1, slideTree.visibleSlideNodes.count}] ||  [1, slideTree.slideNodes.count)  || NSUIntegerMax", v10);

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  self->_rangeEnd = end;
}

- (unint64_t)maximumRangeValue
{
  result = self->_maxRangeValue;
  if (result == -1)
  {
    p_sourceNodes = [(KNRenderingExporter *)self p_sourceNodes];
    self->_maxRangeValue = [p_sourceNodes count];

    return self->_maxRangeValue;
  }

  return result;
}

- (unint64_t)p_slideNumberForSlideNode:(id)node
{
  nodeCopy = node;
  show = [*(&self->super.super.isa + *MEMORY[0x277D7FFD8]) show];
  if ([(KNRenderingExporter *)self isPrintingSelectedSlides]|| [(KNRenderingExporter *)self isPrintingSkippedSlides])
  {
    slideTree = [show slideTree];
    v7 = [slideTree indexOfSlideNode:nodeCopy] + 1;
  }

  else
  {
    slideTree = [show slideTree];
    v7 = [slideTree slideNumberForSlideNode:nodeCopy];
  }

  return v7;
}

- (id)p_slideNumberStringForSlideNode:(id)node buildIndex:(unint64_t)index
{
  nodeCopy = node;
  v7 = [(KNRenderingExporter *)self p_slideNumberForSlideNode:nodeCopy];
  isPrintingBuilds = [(KNRenderingExporter *)self isPrintingBuilds];
  if (isPrintingBuilds && (isPrintingBuilds = [nodeCopy hasBuildEvents], isPrintingBuilds))
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = sub_275DC204C(isPrintingBuilds);
    v11 = [v10 localizedStringForKey:@"%lu-%lu" value:&stru_2884D8E20 table:@"Keynote"];
    [v9 localizedStringWithFormat:v11, v7, index + 1];
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v10 = sub_275DC204C(isPrintingBuilds);
    v11 = [v10 localizedStringForKey:@"%lu" value:&stru_2884D8E20 table:@"Keynote"];
    [v12 localizedStringWithFormat:v11, v7, v15];
  }
  v13 = ;

  return v13;
}

- (CGRect)scaledClipRectMinusBottomSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  if ([(KNRenderingExporter *)self isPrintingDate]|| [(KNRenderingExporter *)self isPrintingSlideNumbers]&& [(KNRenderingExporter *)self supportsPrintingComments])
  {
    [(KNRenderingExporter *)self bottomTextVerticalSpace];
    y = y + v8;
    [(KNRenderingExporter *)self bottomTextVerticalSpace];
    height = height - v9;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)scaledClipRectForPageCount
{
  if ([*(&self->super.super.isa + *MEMORY[0x277D7FFE8]) isPrinting])
  {
    [(KNRenderingExporter *)self unscaledClipRectForPageCount];
    [(KNRenderingExporter *)self viewScaleForPageCount];
  }

  else
  {
    [(TSARenderingExporter *)self unscaledClipRect];
  }

  TSUMultiplyRectScalar();

  [(KNRenderingExporter *)self scaledClipRectMinusBottomSpace:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)beginPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page
{
  pageCopy = page;
  TSUMultiplyRectScalar();
  v22.origin.x = v9;
  v22.origin.y = v10;
  v22.size.width = v11;
  v22.size.height = v12;
  if (pageCopy)
  {
    CGContextBeginPage(context, &v22);
  }

  v13 = *MEMORY[0x277D7FFE8];
  if (([*(&self->super.super.isa + v13) isPrinting] & 1) == 0 && -[KNRenderingExporter useWhiteBackground](self, "useWhiteBackground"))
  {
    CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, 1.0);
    CGContextFillRect(context, v22);
  }

  if (([*(&self->super.super.isa + v13) isPrinting] & 1) == 0 && !-[KNRenderingExporter supportsPrintingComments](self, "supportsPrintingComments"))
  {
    [(KNRenderingExporter *)self rectBySubtractingDefaultPageMarginsFromRect:*&v22.origin, v22.size.width, v22.size.height];
    v22.origin.x = v14;
    v22.origin.y = v15;
    v22.size.width = v16;
    v22.size.height = v17;
    CGContextTranslateCTM(context, v14, v15);
    v22.origin = *MEMORY[0x277CBF348];
  }

  [MEMORY[0x277D81180] yellowColor];

  y = v22.origin.y;
  x = v22.origin.x;
  width = v22.size.width;
  height = v22.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)endPageInContext:(CGContext *)context createPage:(BOOL)page
{
  if (page)
  {
    CGContextEndPage(context);
  }
}

- (CGRect)unscaledClipRectForPageCount
{
  x = self->_unscaledClipRectForPageCount.origin.x;
  y = self->_unscaledClipRectForPageCount.origin.y;
  width = self->_unscaledClipRectForPageCount.size.width;
  height = self->_unscaledClipRectForPageCount.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)monoSlideRectFromScaledClipRect:(CGRect)rect outScaledClipRect:(CGRect *)clipRect
{
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[KNRenderingExporter(Mono) monoSlideRectFromScaledClipRect:outScaledClipRect:]", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRenderingExporter.m"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:904 isFatal:0 description:{"Abstract method not overridden by %{public}@", v8}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"Abstract method not overridden by %@: %s", v13, "-[KNRenderingExporter(Mono) monoSlideRectFromScaledClipRect:outScaledClipRect:]"];
  v15 = [v9 exceptionWithName:v10 reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

- (BOOL)drawMonoPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page helper:(id)helper
{
  pageCopy = page;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  helperCopy = helper;
  [(KNRenderingExporter *)self beginPageInContext:context viewScale:pageCopy unscaledClipRect:scale createPage:x, y, width, height];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(KNRenderingExporter *)self scaledClipRectMinusBottomSpace:?];
  v24 = *(MEMORY[0x277CBF3A0] + 16);
  v37 = *MEMORY[0x277CBF3A0];
  v38 = v24;
  [(KNRenderingExporter *)self monoSlideRectFromScaledClipRect:&v37 outScaledClipRect:?];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  progressContext = [(TSARenderingExporter *)self progressContext];
  [progressContext advanceProgress:1.0];

  LODWORD(progressContext) = [helperCopy shouldDrawSlide];
  if (progressContext)
  {
    [(KNRenderingExporter *)self drawBorderForRect:context context:v26, v28, v30, v32];
    v34 = [(KNRenderingExporter *)self drawImageForSlideNode:self->_currentSlideNode event:self->_currentBuildIndex slideSize:context intoRect:v30 annotationFlagsScale:v32 context:v26, v28, v30, v32, 0.0];
  }

  else
  {
    v34 = 0;
  }

  v35 = v34 | [(KNRenderingExporter *)self drawMonoPageExtraContentInContext:context scaledClipRect:v37, v38];
  if (v35)
  {
    [(KNRenderingExporter *)self drawSlideNumberForNode:self->_currentSlideNode buildIndex:self->_currentBuildIndex forRect:context context:3 position:v17, v19, v21, v23];
    [(KNRenderingExporter *)self drawDateForRect:context context:v17, v19, v21, v23];
  }

  if (([*(&self->super.super.isa + *MEMORY[0x277D7FFE8]) isPrinting] & 1) == 0 && !-[KNSlideNode isSkipped](self->_currentSlideNode, "isSkipped") && !self->_currentBuildIndex)
  {
    [(KNRenderingExporter *)self addAnchorPointForSlide:self->_currentSlideNode context:context];
  }

  [(KNRenderingExporter *)self endPageInContext:context createPage:pageCopy];
  return v35 & 1;
}

@end