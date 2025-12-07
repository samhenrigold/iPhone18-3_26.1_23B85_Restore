@interface KNOffscreenController
- (BOOL)gotoSlideNode:(id)node andEvent:(unint64_t)event;
- (CGImage)copyImageOfCurrentEventIgnoringBuildVisilibity:(BOOL)visilibity;
- (CGSize)outputSize;
- (KNAnimatedSlideView)animatedSlideView;
- (KNOffscreenController)initWithShow:(id)show canvasDelegate:(id)delegate;
- (KNOffscreenController)initWithShow:(id)show canvasDelegate:(id)delegate outputSize:(CGSize)size shouldEnableHDR:(BOOL)r;
- (void)dealloc;
- (void)drawCurrentEventIntoContext:(CGContext *)context intoRect:(CGRect)rect ignoreBuildVisibility:(BOOL)visibility;
- (void)generateImageOfCurrentEventWithCompletonHandler:(id)handler;
@end

@implementation KNOffscreenController

- (KNOffscreenController)initWithShow:(id)show canvasDelegate:(id)delegate
{
  delegateCopy = delegate;
  showCopy = show;
  [showCopy size];
  v8 = [(KNOffscreenController *)self initWithShow:showCopy canvasDelegate:delegateCopy outputSize:0 shouldEnableHDR:?];

  return v8;
}

- (KNOffscreenController)initWithShow:(id)show canvasDelegate:(id)delegate outputSize:(CGSize)size shouldEnableHDR:(BOOL)r
{
  height = size.height;
  width = size.width;
  showCopy = show;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = KNOffscreenController;
  v13 = [(KNOffscreenController *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_outputSize.width = width;
    v13->_outputSize.height = height;
    if (r)
    {
      currentCapabilities = [MEMORY[0x277D801F0] currentCapabilities];
      v14->_supportsHDR = [currentCapabilities isHDRCapable];

      supportsHDR = v14->_supportsHDR;
    }

    else
    {
      supportsHDR = 0;
      v13->_supportsHDR = 0;
    }

    height = [KNPlaybackSessionConfiguration configurationWithOffscreenCGContextBoundsSize:supportsHDR shouldEnableHDR:width, height];
    v18 = [[KNPlaybackSession alloc] initWithShow:showCopy configuration:height canvasDelegate:delegateCopy];
    session = v14->_session;
    v14->_session = v18;

    [(KNPlaybackSession *)v14->_session setPlayMode:5];
    [(KNPlaybackSession *)v14->_session setIsShowLayerVisible:0];
    v20 = v14;
  }

  return v14;
}

- (void)dealloc
{
  [(KNPlaybackSession *)self->_session tearDown];
  v3.receiver = self;
  v3.super_class = KNOffscreenController;
  [(KNOffscreenController *)&v3 dealloc];
}

- (BOOL)gotoSlideNode:(id)node andEvent:(unint64_t)event
{
  [(KNPlaybackSession *)self->_session gotoSlideNode:?];
  if (node)
  {
    animatedSlideViewForCurrentSlide = [(KNPlaybackSession *)self->_session animatedSlideViewForCurrentSlide];
    [animatedSlideViewForCurrentSlide setCurrentEventIndex:event];
  }

  else
  {
    animatedSlideViewForCurrentSlide = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_animatedSlideView);

  if (WeakRetained != animatedSlideViewForCurrentSlide)
  {
    objc_storeWeak(&self->_animatedSlideView, animatedSlideViewForCurrentSlide);
  }

  return node != 0;
}

- (CGImage)copyImageOfCurrentEventIgnoringBuildVisilibity:(BOOL)visilibity
{
  [(KNOffscreenController *)self supportsHDR];
  v5 = TSDBitmapContextCreate();
  if ([(KNOffscreenController *)self supportsHDR])
  {
    TSDCGContextSetShouldRenderHDRContent();
  }

  accessController = [(KNPlaybackSession *)self->_session accessController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_275DACDF0;
  v9[3] = &unk_27A698A48;
  v9[4] = self;
  v9[5] = v5;
  visilibityCopy = visilibity;
  [accessController performRead:v9];

  Image = CGBitmapContextCreateImage(v5);
  CGContextRelease(v5);
  return Image;
}

- (void)generateImageOfCurrentEventWithCompletonHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(-2, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275DACF64;
  v7[3] = &unk_27A698068;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (void)drawCurrentEventIntoContext:(CGContext *)context intoRect:(CGRect)rect ignoreBuildVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  memset(&v15, 0, sizeof(v15));
  CGContextGetTextMatrix(&v15, context);
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, x, y);
  CGContextScaleCTM(context, width / self->_outputSize.width, height / self->_outputSize.height);
  CGContextTranslateCTM(context, 0.0, self->_outputSize.height);
  CGContextScaleCTM(context, 1.0, -1.0);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
  v12 = objc_autoreleasePoolPush();
  v13 = objc_loadWeakRetained(&self->_animatedSlideView);
  [v13 renderIntoContext:context eventIndex:objc_msgSend(v13 ignoreBuildVisibility:{"currentEventIndex"), visibilityCopy}];

  objc_autoreleasePoolPop(v12);
  [MEMORY[0x277CD9FF0] commit];
  CGContextRestoreGState(context);
  v14 = v15;
  CGContextSetTextMatrix(context, &v14);
}

- (KNAnimatedSlideView)animatedSlideView
{
  WeakRetained = objc_loadWeakRetained(&self->_animatedSlideView);

  return WeakRetained;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end