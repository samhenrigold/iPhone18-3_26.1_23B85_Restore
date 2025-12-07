@interface KNAnimationPluginContext
- (BOOL)isBuild;
- (BOOL)isFrameRenderer;
- (BOOL)isMagicMove;
- (BOOL)isMetalRenderer;
- (BOOL)willRenderWithLiveTextureSources;
- (CGRect)animationFrame;
- (CGRect)boundingRect;
- (CGRect)boundingRectOnCanvas;
- (CGRect)drawableFrame;
- (KNAnimatedBuild)animatedBuild;
- (KNAnimationPluginContext)init;
- (NSArray)magicMoveMatches;
- (NSDictionary)buildAttributes;
- (NSDictionary)transitionAttributes;
- (NSString)description;
- (TSDRep)rep;
- (void)setAnimatedBuild:(id)build;
- (void)setTransitionAttributes:(id)attributes;
@end

@implementation KNAnimationPluginContext

- (KNAnimationPluginContext)init
{
  v6.receiver = self;
  v6.super_class = KNAnimationPluginContext;
  v2 = [(KNAnimationPluginContext *)&v6 init];
  if (v2)
  {
    v3 = [KNAnimationRandomGenerator randomGeneratorWithSeed:0];
    randomGenerator = v2->_randomGenerator;
    v2->_randomGenerator = v3;
  }

  return v2;
}

- (BOOL)isBuild
{
  rendererType = [(KNAnimationPluginContext *)self rendererType];
  if ((rendererType - 1) < 2)
  {
    return 1;
  }

  if (!rendererType)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationPluginContext isBuild]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationPluginContext.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:63 isFatal:0 description:"Unknown type!"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return 0;
}

- (BOOL)isMagicMove
{
  rendererType = [(KNAnimationPluginContext *)self rendererType];
  if ((rendererType - 7) < 2)
  {
    return 1;
  }

  if (!rendererType)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationPluginContext isMagicMove]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationPluginContext.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:91 isFatal:0 description:"Unknown type!"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return 0;
}

- (BOOL)isFrameRenderer
{
  rendererType = [(KNAnimationPluginContext *)self rendererType];
  result = 0;
  if (rendererType <= 8)
  {
    if (((1 << rendererType) & 0x154) != 0)
    {
      return 1;
    }

    else if (!rendererType)
    {
      v4 = MEMORY[0x277D81150];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationPluginContext isFrameRenderer]"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationPluginContext.m"];
      [v4 handleFailureInFunction:v5 file:v6 lineNumber:115 isFatal:0 description:"Unknown type!"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      return 0;
    }
  }

  return result;
}

- (BOOL)isMetalRenderer
{
  rendererType = [(KNAnimationPluginContext *)self rendererType];
  result = 0;
  if (rendererType <= 8)
  {
    if (((1 << rendererType) & 0x154) != 0)
    {
      return 1;
    }

    else if (!rendererType)
    {
      v4 = MEMORY[0x277D81150];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationPluginContext isMetalRenderer]"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationPluginContext.m"];
      [v4 handleFailureInFunction:v5 file:v6 lineNumber:139 isFatal:0 description:"Unknown type!"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      return 0;
    }
  }

  return result;
}

- (BOOL)willRenderWithLiveTextureSources
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  textures = [(KNAnimationPluginContext *)self textures];
  v3 = [textures countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(textures);
        }

        if ([*(*(&v7 + 1) + 8 * i) willRenderWithLiveTexturedRectangleSource])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [textures countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (NSString)description
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(KNAnimationPluginContext *)self isBuild])
  {
    v4 = @"isBuild";
  }

  else
  {
    v4 = @"isTransition";
  }

  [array addObject:v4];
  if ([(KNAnimationPluginContext *)self isMagicMove])
  {
    [array addObject:@"isMagicMove"];
  }

  isMagicMove = [(KNAnimationPluginContext *)self isMagicMove];
  v6 = MEMORY[0x277CCACA8];
  if (isMagicMove)
  {
    magicMoveMatches = [(KNAnimationPluginContext *)self magicMoveMatches];
    [v6 stringWithFormat:@"magicMoveMatches:%zd", objc_msgSend(magicMoveMatches, "count")];
  }

  else
  {
    textures = [(KNAnimationPluginContext *)self textures];
    v9 = [v6 stringWithFormat:@"textures:%zd", objc_msgSend(textures, "count")];
    [array addObject:v9];

    v10 = MEMORY[0x277CCACA8];
    magicMoveMatches = [(KNAnimationPluginContext *)self tags];
    [v10 stringWithFormat:@"tags:%zd", objc_msgSend(magicMoveMatches, "count")];
  }
  v11 = ;
  [array addObject:v11];

  if ([(KNAnimationPluginContext *)self isFrameRenderer])
  {
    v12 = MEMORY[0x277CCACA8];
    [(KNAnimationPluginContext *)self percent];
    v14 = [v12 stringWithFormat:@"percent:%0.3f", v13];
    [array addObject:v14];
  }

  v15 = MEMORY[0x277CCACA8];
  v20.receiver = self;
  v20.super_class = KNAnimationPluginContext;
  v16 = [(KNAnimationPluginContext *)&v20 description];
  v17 = [array componentsJoinedByString:{@", "}];
  v18 = [v15 stringWithFormat:@"%@: {%@}", v16, v17];

  return v18;
}

- (void)setAnimatedBuild:(id)build
{
  buildCopy = build;
  objc_storeWeak(&self->_animatedBuild, buildCopy);
  attributes = [buildCopy attributes];

  v9 = [attributes valueForAttributeKey:@"KNBuildCustomAttributesRandomNumberSeed"];

  v6 = v9;
  if (v9)
  {
    v7 = [KNAnimationRandomGenerator randomGeneratorWithSeed:v9];
    randomGenerator = self->_randomGenerator;
    self->_randomGenerator = v7;

    v6 = v9;
  }
}

- (void)setTransitionAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_storeWeak(&self->_transitionAttributes, attributesCopy);
  v8 = [attributesCopy objectForKeyedSubscript:@"KNTransitionCustomAttributesRandomNumberSeed"];

  v5 = v8;
  if (v8)
  {
    v6 = [KNAnimationRandomGenerator randomGeneratorWithSeed:v8];
    randomGenerator = self->_randomGenerator;
    self->_randomGenerator = v6;

    v5 = v8;
  }
}

- (KNAnimatedBuild)animatedBuild
{
  WeakRetained = objc_loadWeakRetained(&self->_animatedBuild);

  return WeakRetained;
}

- (NSDictionary)transitionAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionAttributes);

  return WeakRetained;
}

- (CGRect)boundingRectOnCanvas
{
  x = self->_boundingRectOnCanvas.origin.x;
  y = self->_boundingRectOnCanvas.origin.y;
  width = self->_boundingRectOnCanvas.size.width;
  height = self->_boundingRectOnCanvas.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSDictionary)buildAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_buildAttributes);

  return WeakRetained;
}

- (NSArray)magicMoveMatches
{
  WeakRetained = objc_loadWeakRetained(&self->_magicMoveMatches);

  return WeakRetained;
}

- (CGRect)drawableFrame
{
  x = self->_drawableFrame.origin.x;
  y = self->_drawableFrame.origin.y;
  width = self->_drawableFrame.size.width;
  height = self->_drawableFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)animationFrame
{
  x = self->_animationFrame.origin.x;
  y = self->_animationFrame.origin.y;
  width = self->_animationFrame.size.width;
  height = self->_animationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSDRep)rep
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);

  return WeakRetained;
}

@end