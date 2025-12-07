@interface KNPdfGridExporter
- (BOOL)incrementPage;
- (KNPdfGridExporter)initWithDocumentRoot:(id)root;
- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect;
@end

@implementation KNPdfGridExporter

- (KNPdfGridExporter)initWithDocumentRoot:(id)root
{
  v4.receiver = self;
  v4.super_class = KNPdfGridExporter;
  result = [(KNRenderingExporter *)&v4 initWithDocumentRoot:root];
  result->super.super.super._slidesPerPage = 4;
  return result;
}

- (BOOL)incrementPage
{
  slidesForPrinting = [(KNRenderingExporter *)self slidesForPrinting];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentSlidesOnPage = self->super.super.super._currentSlidesOnPage;
  self->super.super.super._currentSlidesOnPage = v4;

  if (!self->super.super.super._currentSlideNode)
  {
    self->super.super.super._currentBuildIndex = 0;
    v6 = [slidesForPrinting objectAtIndex:0];
    [(KNRenderingExporter *)self setCurrentSlideNode:v6];

    v7 = self->super.super.super._currentSlidesOnPage;
    v8 = MEMORY[0x277D812A8];
    currentSlideNode = self->super.super.super._currentSlideNode;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->super.super.super._currentBuildIndex];
    v11 = [v8 pairWithFirst:currentSlideNode second:v10];
    [(NSMutableArray *)v7 addObject:v11];
  }

  v12 = [(NSMutableArray *)self->super.super.super._currentSlidesOnPage count];
  if (v12 < [(KNRenderingExporter *)self slidesPerPage])
  {
    do
    {
      v13 = [slidesForPrinting indexOfObject:self->super.super.super._currentSlideNode];
      v14 = [slidesForPrinting count];
      if ([(KNRenderingExporter *)self isPrintingBuilds]&& [(KNSlideNode *)self->super.super.super._currentSlideNode safeHasBuildEvents]&& (v15 = self->super.super.super._currentBuildIndex + 1, v15 <= [(KNSlideNode *)self->super.super.super._currentSlideNode safeBuildEventCount]))
      {
        currentBuildIndex = self->super.super.super._currentBuildIndex + 1;
        self->super.super.super._currentBuildIndex = currentBuildIndex;
        v18 = MEMORY[0x277D812A8];
        v17 = self->super.super.super._currentSlidesOnPage;
        v19 = self->super.super.super._currentSlideNode;
        v20 = MEMORY[0x277CCABB0];
      }

      else
      {
        if (v13 + 1 >= v14)
        {
          break;
        }

        self->super.super.super._currentBuildIndex = 0;
        v16 = [slidesForPrinting objectAtIndex:?];
        [(KNRenderingExporter *)self setCurrentSlideNode:v16];

        v17 = self->super.super.super._currentSlidesOnPage;
        v18 = MEMORY[0x277D812A8];
        v19 = self->super.super.super._currentSlideNode;
        v20 = MEMORY[0x277CCABB0];
        currentBuildIndex = self->super.super.super._currentBuildIndex;
      }

      v22 = [v20 numberWithUnsignedInteger:currentBuildIndex];
      v23 = [v18 pairWithFirst:v19 second:v22];
      [(NSMutableArray *)v17 addObject:v23];

      v24 = [(NSMutableArray *)self->super.super.super._currentSlidesOnPage count];
    }

    while (v24 < [(KNRenderingExporter *)self slidesPerPage]);
  }

  if ([(NSMutableArray *)self->super.super.super._currentSlidesOnPage count])
  {
    v27.receiver = self;
    v27.super_class = KNPdfGridExporter;
    incrementPage = [(KNRenderingExporter *)&v27 incrementPage];
  }

  else
  {
    incrementPage = 0;
  }

  return incrementPage;
}

- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v42 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FFD8]);
  show = [v42 show];
  [show size];
  if (width <= height || v11 <= v12)
  {
    v13 = v12 > v11 && height > width;
  }

  else
  {
    v13 = 1;
  }

  v14 = [(KNRenderingExporter *)self slidesPerPage]- 2;
  if (v14 > 0xE)
  {
    v16 = 2;
    v15 = 3;
  }

  else
  {
    v15 = qword_275E71140[v14];
    v16 = qword_275E711B8[v14];
  }

  if (v13)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v13)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  v19 = (width + (v17 - 1) * -18.0) / v17;
  v20 = (v18 - 1);
  v21 = (height + v20 * -18.0) / v18;
  v22 = y + (v21 + 18.0) * v20;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0;
  do
  {
    v25 = 0;
    do
    {
      v26 = [MEMORY[0x277CCAE60] valueWithCGRect:{x + v25 * 18.0 + v19 * v25, v22 - (v24 * 18.0 + v21 * v24), v19, v21}];
      [array addObject:v26];

      ++v25;
    }

    while (v17 != v25);
    ++v24;
  }

  while (v24 != v18);
  if ([(NSMutableArray *)self->super.super.super._currentSlidesOnPage count])
  {
    v27 = 0;
    do
    {
      v28 = [(NSMutableArray *)self->super.super.super._currentSlidesOnPage objectAtIndexedSubscript:v27];
      first = [v28 first];
      second = [v28 second];
      unsignedIntegerValue = [second unsignedIntegerValue];

      v32 = [array objectAtIndexedSubscript:v27];
      [v32 CGRectValue];

      cyanColor = [MEMORY[0x277D81180] cyanColor];
      nullsub_1();

      [(KNRenderingExporter *)self isPrintingSlideNumbers];
      [show size];
      TSUFitOrFillSizeInRect();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      [(KNRenderingExporter *)self drawImageForSlideNode:first event:unsignedIntegerValue slideSize:context intoRect:v38 annotationFlagsScale:v40 context:v34, v36, v38, v40, 0.0];
      [(KNRenderingExporter *)self drawBorderForRect:context context:v35, v37, v39, v41];
      [(KNRenderingExporter *)self drawSlideNumberForNode:first buildIndex:unsignedIntegerValue forRect:context context:2 position:v35, v37, v39, v41];

      ++v27;
    }

    while (v27 < [(NSMutableArray *)self->super.super.super._currentSlidesOnPage count]);
  }
}

@end