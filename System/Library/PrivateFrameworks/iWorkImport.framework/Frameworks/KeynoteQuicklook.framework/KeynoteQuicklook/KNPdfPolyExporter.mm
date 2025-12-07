@interface KNPdfPolyExporter
- (BOOL)drawPolyPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page;
- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect;
@end

@implementation KNPdfPolyExporter

- (BOOL)drawPolyPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page
{
  pageCopy = page;
  [(KNRenderingExporter *)self beginPageInContext:scale viewScale:rect.origin.x unscaledClipRect:rect.origin.y createPage:rect.size.width, rect.size.height];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  CGContextSaveGState(context);
  progressContext = [(TSARenderingExporter *)self progressContext];
  [progressContext advanceProgress:1.0];

  [(KNRenderingExporter *)self scaledClipRectMinusBottomSpace:v10, v12, v14, v16];
  [(KNPdfPolyExporter *)self drawPolyPageBodyInContext:context scaledClipRect:?];
  CGContextRestoreGState(context);
  [(KNRenderingExporter *)self drawDateForRect:context context:v10, v12, v14, v16];
  [(KNRenderingExporter *)self endPageInContext:context createPage:pageCopy];
  return 1;
}

- (void)drawPolyPageBodyInContext:(CGContext *)context scaledClipRect:(CGRect)rect
{
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[KNPdfPolyExporter drawPolyPageBodyInContext:scaledClipRect:]", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPdfExporter.mm"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:60 isFatal:0 description:{"Abstract method not overridden by %{public}@", v8}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v9 = MEMORY[0x277CBEAD8];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"Abstract method not overridden by %@: %s", v12, "-[KNPdfPolyExporter drawPolyPageBodyInContext:scaledClipRect:]"];
  v14 = [v9 exceptionWithName:*MEMORY[0x277CBE658] reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

@end