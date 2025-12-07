@interface PDFPageLayerTile
- (CGRect)rootViewFrame;
- (PDFPageLayerTile)initWithFrame:(CGRect)frame forPageLayer:(id)layer withRenderingTransform:(CGAffineTransform *)transform tileContentsScale:(double)scale generationID:(int)d;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)recievePDFTileSurface:(id)surface;
@end

@implementation PDFPageLayerTile

- (PDFPageLayerTile)initWithFrame:(CGRect)frame forPageLayer:(id)layer withRenderingTransform:(CGAffineTransform *)transform tileContentsScale:(double)scale generationID:(int)d
{
  layerCopy = layer;
  v18.receiver = self;
  v18.super_class = PDFPageLayerTile;
  v12 = [(PDFPageLayerTile *)&v18 init];
  if (v12)
  {
    PDFRectToCGRect();
    [v12 setFrame:?];
    [v12 setContentsOpaque:1];
    [v12 setContents:0];
    v13 = *(v12 + 14);
    *(v12 + 14) = 0;

    objc_storeWeak(v12 + 6, layerCopy);
    v15 = *&transform->c;
    v14 = *&transform->tx;
    *(v12 + 56) = *&transform->a;
    *(v12 + 72) = v15;
    *(v12 + 88) = v14;
    *(v12 + 30) = d;
    atomic_store(0, v12 + 124);
    atomic_store(0, v12 + 125);
    *(v12 + 13) = scale;
    [v12 setContentsScale:scale];
    [v12 setContentsGravity:*MEMORY[0x1E6979DC0]];
    [v12 setEdgeAntialiasingMask:0];
    [v12 setMinificationFilter:*MEMORY[0x1E6979CB8]];
    [v12 setMagnificationFilter:*MEMORY[0x1E6979C48]];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Generation %d", *(v12 + 30)];
    [v12 setName:v16];
  }

  return v12;
}

- (void)dealloc
{
  if (self->pageSurface)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v3 = +[PDFTilePool sharedPool];
    [v3 releasePDFTileSurface:self->pageSurface];

    [(PDFPageLayerTile *)self setContents:0];
    [MEMORY[0x1E6979518] commit];
  }

  v4.receiver = self;
  v4.super_class = PDFPageLayerTile;
  [(PDFPageLayerTile *)&v4 dealloc];
}

- (void)recievePDFTileSurface:(id)surface
{
  surfaceCopy = surface;
  WeakRetained = objc_loadWeakRetained(&self->pageLayer);
  if (WeakRetained)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    objc_storeStrong(&self->pageSurface, surface);
    type = self->pageSurface->type;
    if (type <= 2)
    {
      [(PDFPageLayerTile *)self setContents:*(surfaceCopy + *off_1E8151460[type])];
    }

    v7 = surfaceCopy[4];
    v8 = surfaceCopy[5];
    [(PDFPageLayerTile *)self setContentsRect:v8 / (v7 + 2 * v8), v8 / (v7 + 2 * v8), v7 / (v7 + 2 * v8), v7 / (v7 + 2 * v8)];
    atomic_store(0, &self->isWorking);
    atomic_store(1u, &self->hasContent);
    [(PDFPageLayerTile *)self setName:@"PDFPageLayerTile [Image Set]"];
    [MEMORY[0x1E6979518] commit];
    [WeakRetained tileDrawingComplete:self];
  }

  else
  {
    v9 = +[PDFTilePool sharedPool];
    [v9 releasePDFTileSurface:surfaceCopy];
  }
}

- (void)drawInContext:(CGContext *)context
{
  [(PDFPageLayerTile *)self hasStartedWork];
  CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, 1.0);
  ClipBoundingBox = CGContextGetClipBoundingBox(context);
  v15 = CGRectIntegral(ClipBoundingBox);
  CGContextFillRect(context, v15);
  renderingTransform = self->renderingTransform;
  CGContextSetCTM();
  v5 = [PDFPage isNativeRotationDrawingEnabledForThisThread:*&renderingTransform.a];
  [PDFPage setNativeRotationDrawingEnabledForThisThread:0];
  v6 = +[PDFPage shouldHideAnnotationsForThisThread];
  [PDFPage setShouldHideAnnotationsForThisThread:1];
  v7 = +[PDFPage isExcludingAKAnnotationRenderingForThisThread];
  [PDFPage setExcludingAKAnnotationRenderingForThisThread:1];
  WeakRetained = objc_loadWeakRetained(&self->pageLayer);
  page = [WeakRetained page];
  copyDisplayList = [page copyDisplayList];
  if (copyDisplayList)
  {
    v11 = copyDisplayList;
    CGDisplayListDrawInContext();
    CFRelease(v11);
  }

  else
  {
    renderingProperties = [(PDFPageLayerTile *)self renderingProperties];
    [page drawWithBox:objc_msgSend(renderingProperties toContext:{"displayBox"), context}];
  }

  [PDFPage setExcludingAKAnnotationRenderingForThisThread:v7];
  [PDFPage setShouldHideAnnotationsForThisThread:v6];
  [PDFPage setNativeRotationDrawingEnabledForThisThread:v5];
  atomic_store(0, &self->isWorking);
  atomic_store(1u, &self->hasContent);
  [WeakRetained tileDrawingComplete:self];
}

- (CGRect)rootViewFrame
{
  objc_copyStruct(v6, &self->_rootViewFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end