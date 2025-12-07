@interface KNSlideBackgroundRep
+ (id)magicMoveMatchesBetweenOutgoingObjects:(id)objects andIncomingObjects:(id)incomingObjects textureDescription:(id)description;
- (BOOL)isOpaque;
- (KNSlideBackgroundRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)textureForDescription:(id)description;
- (void)drawInContext:(CGContext *)context;
@end

@implementation KNSlideBackgroundRep

- (KNSlideBackgroundRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v5.receiver = self;
  v5.super_class = KNSlideBackgroundRep;
  result = [(TSDRep *)&v5 initWithLayout:layout canvas:canvas];
  if (result)
  {
    result->_layerNeedsUpdate = 1;
  }

  return result;
}

- (BOOL)isOpaque
{
  slideBackgroundInfo = [(KNSlideBackgroundRep *)self slideBackgroundInfo];
  fill = [slideBackgroundInfo fill];

  if (fill)
  {
    isOpaque = [fill isOpaque];
  }

  else
  {
    isOpaque = 0;
  }

  return isOpaque;
}

- (void)drawInContext:(CGContext *)context
{
  Mutable = CGPathCreateMutable();
  [(TSDRep *)self naturalBounds];
  CGPathAddRectSafe();
  canvas = [(TSDRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (isCanvasInteractive)
  {
    v8 = [MEMORY[0x277D801F8] colorWithWhite:0.0 alpha:1.0];
    [v8 paintPath:Mutable inContext:context];
  }

  slideBackgroundInfo = [(KNSlideBackgroundRep *)self slideBackgroundInfo];
  motionBackground = [slideBackgroundInfo motionBackground];

  slideBackgroundInfo2 = [(KNSlideBackgroundRep *)self slideBackgroundInfo];
  v12 = slideBackgroundInfo2;
  if (motionBackground)
  {
    motionBackground2 = [slideBackgroundInfo2 motionBackground];
    [(TSDRep *)self naturalBounds];
    [motionBackground2 drawInContext:context inRect:?];
  }

  else
  {
    motionBackground2 = [slideBackgroundInfo2 fill];
    [motionBackground2 paintPath:Mutable inContext:context];
  }

  CGPathRelease(Mutable);
}

- (id)textureForDescription:(id)description
{
  descriptionCopy = description;
  canvas = [(TSDRep *)self canvas];
  if ([canvas isDrawingIntoPDF])
  {
    canvas2 = [(TSDRep *)self canvas];
    shouldSuppressBackgrounds = [canvas2 shouldSuppressBackgrounds];

    if (shouldSuppressBackgrounds)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = [descriptionCopy copy];

  [v9 setShouldDistortToFit:1];
  v16.receiver = self;
  v16.super_class = KNSlideBackgroundRep;
  v8 = [(TSDRep *)&v16 textureForDescription:v9];
  visibleTextures = [v8 visibleTextures];
  lastObject = [visibleTextures lastObject];
  [lastObject setTextureOpacity:1.0];
  [lastObject setTextureType:1];
  session = [v9 session];
  shouldAllowBackgroundAlpha = [session shouldAllowBackgroundAlpha];

  if ((shouldAllowBackgroundAlpha & 1) == 0)
  {
    blackColor = [MEMORY[0x277D81180] blackColor];
    [lastObject setBackgroundColor:blackColor];
  }

  [v8 setIsBackground:1];

  descriptionCopy = v9;
LABEL_8:

  return v8;
}

+ (id)magicMoveMatchesBetweenOutgoingObjects:(id)objects andIncomingObjects:(id)incomingObjects textureDescription:(id)description
{
  v41[1] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  incomingObjectsCopy = incomingObjects;
  descriptionCopy = description;
  v40 = objectsCopy;
  if ([objectsCopy count] != 1)
  {
    v9 = MEMORY[0x277D81150];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNSlideBackgroundRep magicMoveMatchesBetweenOutgoingObjects:andIncomingObjects:textureDescription:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideBackgroundRep.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:458 isFatal:0 description:"outgoingObjects != 1!"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ([incomingObjectsCopy count] >= 2)
  {
    v12 = MEMORY[0x277D81150];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNSlideBackgroundRep magicMoveMatchesBetweenOutgoingObjects:andIncomingObjects:textureDescription:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideBackgroundRep.m"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:459 isFatal:0 description:"incomingObjects > 1!"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  lastObject = [v40 lastObject];
  v38 = incomingObjectsCopy;
  lastObject2 = [incomingObjectsCopy lastObject];
  v17 = MEMORY[0x277D80320];
  layout = [lastObject layout];
  geometry = [layout geometry];
  [geometry frame];
  TSUCenterOfRect();
  v39 = [v17 matchObjectWithRep:lastObject position:?];

  v20 = MEMORY[0x277D80320];
  layout2 = [lastObject2 layout];
  geometry2 = [layout2 geometry];
  [geometry2 frame];
  TSUCenterOfRect();
  v23 = [v20 matchObjectWithRep:lastObject2 position:?];

  v36 = lastObject;
  slideBackgroundInfo = [lastObject slideBackgroundInfo];
  slideBackgroundInfo2 = [lastObject2 slideBackgroundInfo];
  motionBackground = [slideBackgroundInfo motionBackground];
  motionBackground2 = [slideBackgroundInfo2 motionBackground];
  if ([motionBackground canBlendWithMotionBackground:motionBackground2])
  {
    v28 = 5;
  }

  else
  {
    v28 = 4;
  }

  if (!(motionBackground | motionBackground2))
  {
    fill = [slideBackgroundInfo fill];
    fill2 = [slideBackgroundInfo2 fill];
    v31 = [fill isEqual:fill2];

    if (v31)
    {
      v32 = v39;

      v28 = 5;
      v23 = v32;
    }
  }

  v33 = [MEMORY[0x277D80318] matchWithOutgoingObject:v39 incomingObject:v23 matchType:v28 attributeMatchPercent:descriptionCopy textureDescription:1.0];
  v41[0] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];

  return v34;
}

@end