@interface KNSlideExporter
- (BOOL)incrementPage;
- (CGRect)boundsRect;
- (CGRect)monoSlideRectFromScaledClipRect:(CGRect)rect outScaledClipRect:(CGRect *)clipRect;
- (id)slideNodesForPrintHelper:(id)helper;
- (unint64_t)pageCount;
- (void)p_preparePrintHelperIfNeeded;
- (void)setCurrentSlideNode:(id)node;
- (void)setup;
@end

@implementation KNSlideExporter

- (unint64_t)pageCount
{
  [(KNSlideExporter *)self p_preparePrintHelperIfNeeded];
  helper = self->_helper;

  return [(KNSlideLayoutPrintHelper *)helper pageCount];
}

- (BOOL)incrementPage
{
  [(KNSlideExporter *)self p_preparePrintHelperIfNeeded];
  if (!self->super._currentSlideNode)
  {
    [(KNSlideLayoutPrintHelper *)self->_helper resetPage];
  }

  incrementPage = [(KNSlideLayoutPrintHelper *)self->_helper incrementPage];
  slideNode = [(KNSlideLayoutPrintHelper *)self->_helper slideNode];
  currentSlideNode = self->super._currentSlideNode;
  self->super._currentSlideNode = slideNode;

  self->super._currentBuildIndex = [(KNSlideLayoutPrintHelper *)self->_helper buildIndex];
  if (!incrementPage)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = KNSlideExporter;
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
  show = [*(&self->super.super.super.isa + *MEMORY[0x277D7FFD8]) show];
  [show size];
  TSUFitOrFillSizeInRect();
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (clipRect)
  {
    clipRect->origin.x = v6;
    clipRect->origin.y = v7;
    clipRect->size.width = v8;
    clipRect->size.height = v9;
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)setup
{
  v3.receiver = self;
  v3.super_class = KNSlideExporter;
  [(KNRenderingExporter *)&v3 setup];
  [(KNRenderingExporter *)self setPrintingBackgrounds:1];
  [(KNRenderingExporter *)self setPrintingBuilds:0];
  [(KNRenderingExporter *)self setPrintingBorders:1];
  [(KNRenderingExporter *)self setPrintingSlideNumbers:0];
  [(KNRenderingExporter *)self setPrintingDate:0];
}

- (CGRect)boundsRect
{
  if (([*(&self->super.super.super.isa + *MEMORY[0x277D7FFE8]) isPrinting] & 1) == 0 && !-[KNRenderingExporter isPrintingComments](self, "isPrintingComments"))
  {
    show = [*(&self->super.super.super.isa + *MEMORY[0x277D7FFD8]) show];
    [show size];
  }

  TSURectWithSize();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setCurrentSlideNode:(id)node
{
  nodeCopy = node;
  v5.receiver = self;
  v5.super_class = KNSlideExporter;
  [(KNRenderingExporter *)&v5 setCurrentSlideNode:nodeCopy];
  self->super._currentBuildIndex = 0;
  [(KNSlideLayoutPrintHelper *)self->_helper setCurrentSlideNode:nodeCopy];
}

- (id)slideNodesForPrintHelper:(id)helper
{
  slidesForPrinting = [(KNRenderingExporter *)self slidesForPrinting];

  return slidesForPrinting;
}

@end