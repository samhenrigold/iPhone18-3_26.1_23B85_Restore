@interface CUINamedSolidLayerImage
- (CGRect)frame;
- (CUINamedSolidLayerImage)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (double)opacity;
- (id)edgeDefinitionTextureWithBufferAllocator:(id)allocator;
- (id)gradientTextureWithBufferAllocator:(id)allocator;
- (int)blendMode;
- (void)dealloc;
@end

@implementation CUINamedSolidLayerImage

- (CUINamedSolidLayerImage)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v13.receiver = self;
  v13.super_class = CUINamedSolidLayerImage;
  v7 = [CUINamedImage initWithName:sel_initWithName_usingRenditionKey_fromTheme_ usingRenditionKey:name fromTheme:?];
  v8 = v7;
  if (v7)
  {
    v7->_opacity = 1.0;
    v7->_blendMode = 0;
    v9 = _LookupStructuredThemeProvider();
    v10 = [key copy];
    v11 = [key copy];
    [v10 setThemeElement:41];
    [v10 setThemePart:0];
    [v10 setThemeDimension1:1];
    [v10 setThemeDimension2:0];
    [v11 setThemeElement:41];
    [v11 setThemePart:0];
    [v11 setThemeDimension1:2];
    [v11 setThemeDimension2:0];
    if ([v9 canGetRenditionWithKey:{objc_msgSend(v10, "keyList")}])
    {
      v8->_edgeTexture = [(CUINamedLookup *)[CUINamedTexture alloc] initWithName:[(CUINamedLookup *)v8 name] usingRenditionKey:v10 fromTheme:theme];
    }

    else
    {
      _CUILog(4, "CoreUI: %s can't find edgeTexture", "[CUINamedSolidLayerImage initWithName:usingRenditionKey:fromTheme:]");
    }

    if ([v9 canGetRenditionWithKey:{objc_msgSend(v11, "keyList")}])
    {
      v8->_gradientTexture = [(CUINamedLookup *)[CUINamedTexture alloc] initWithName:[(CUINamedLookup *)v8 name] usingRenditionKey:v11 fromTheme:theme];
    }

    else
    {
      _CUILog(4, "CoreUI: %s can't find edgeTexture", "[CUINamedSolidLayerImage initWithName:usingRenditionKey:fromTheme:]");
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedSolidLayerImage;
  [(CUINamedLookup *)&v3 dealloc];
}

- (double)opacity
{
  v5.receiver = self;
  v5.super_class = CUINamedSolidLayerImage;
  [(CUINamedImage *)&v5 opacity];
  return v3 * self->_opacity;
}

- (int)blendMode
{
  v4.receiver = self;
  v4.super_class = CUINamedSolidLayerImage;
  result = [(CUINamedImage *)&v4 blendMode];
  if (self->_blendMode > 0)
  {
    return self->_blendMode;
  }

  return result;
}

- (id)edgeDefinitionTextureWithBufferAllocator:(id)allocator
{
  edgeTexture = self->_edgeTexture;
  if (edgeTexture)
  {

    return [(CUINamedTexture *)edgeTexture textureWithBufferAllocator:allocator];
  }

  else
  {
    edgeTXR = self->_edgeTXR;
    if (edgeTXR)
    {
      CUICurrentPlatform();
      [(CUINamedImage *)self image];
      v7 = CUICreateSDFEdgeTextureFromImage();
      self->_edgeTXR = v7;
      v8 = v7;
      edgeTXR = self->_edgeTXR;
    }

    v9 = edgeTXR;

    return v9;
  }
}

- (id)gradientTextureWithBufferAllocator:(id)allocator
{
  gradientTexture = self->_gradientTexture;
  if (gradientTexture)
  {

    return [(CUINamedTexture *)gradientTexture textureWithBufferAllocator:allocator];
  }

  else
  {
    gradientTXR = self->_gradientTXR;
    if (gradientTXR)
    {
      CUICurrentPlatform();
      [(CUINamedImage *)self image];
      v7 = CUICreateSDFGradientTextureFromImage();
      self->_gradientTXR = v7;
      v8 = v7;
      gradientTXR = self->_gradientTXR;
    }

    v9 = gradientTXR;

    return v9;
  }
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end