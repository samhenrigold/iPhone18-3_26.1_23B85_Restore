@interface CUINamedLayerImage
- (BOOL)_updateFromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name;
- (CGColor)color;
- (CGRect)frame;
- (CUINamedGradient)gradient;
- (CUINamedLayerImage)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (double)opacity;
- (id)sdfTextureWithBufferAllocator:(id)allocator;
- (int)blendMode;
- (void)_setGradientOrColorName:(id)name;
- (void)dealloc;
@end

@implementation CUINamedLayerImage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedLayerImage;
  [(CUINamedLookup *)&v3 dealloc];
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

- (BOOL)_updateFromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name
{
  v14.receiver = self;
  v14.super_class = CUINamedLayerImage;
  v11 = [CUINamedLookup _updateFromCatalog:sel__updateFromCatalog_displayGamut_deviceIdiom_appearanceName_ displayGamut:? deviceIdiom:? appearanceName:?];
  if (v11)
  {
    if (![(NSString *)[(CUINamedLayerImage *)self gradientOrColorName] length])
    {
LABEL_6:
      LOBYTE(v11) = 1;
      return v11;
    }

    v12 = [catalog _appearancefallback_gradientWithName:-[CUINamedLayerImage gradientOrColorName](self displayGamut:"gradientOrColorName") deviceIdiom:gamut appearanceName:{idiom, name}];
    if (v12 || (v12 = [catalog _appearancefallback_colorWithName:-[CUINamedLayerImage gradientOrColorName](self displayGamut:"gradientOrColorName") deviceIdiom:gamut appearanceName:{idiom, name}]) != 0)
    {
      [(CUINamedLayerImage *)self _setGradientOrColor:v12];
      goto LABEL_6;
    }

    _CUILog(4, "CoreUI: Couldn't find gradient/colorname '%@' for icon layer stack %@", [(CUINamedLayerImage *)self gradientOrColorName], [(CUINamedLookup *)self name]);
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)sdfTextureWithBufferAllocator:(id)allocator
{
  AssociatedObject = objc_getAssociatedObject(self, "com.apple.coreui.iconstack.sdf");
  if (!AssociatedObject)
  {
    [(CUINamedLookup *)self storageRef];
    v6 = _LookupStructuredThemeProvider();
    v7 = CUIRenditionKeyValueForAttribute([v6 renditionKeyForName:{-[CUINamedLookup name](self, "name")}], 17);
    v8 = [(CUIRenditionKey *)[(CUINamedLookup *)self renditionKey] copy];
    [v8 setThemeElement:41];
    [v8 setThemePart:0];
    [v8 setThemeIdentifier:v7];
    [v8 setThemeDisplayGamut:1];
    [v8 setThemeDimension1:0];
    [v8 setThemeDimension2:0];
    if ([v6 canGetRenditionWithKey:{objc_msgSend(v8, "keyList")}] || (objc_msgSend(v8, "setThemeDisplayGamut:", 0), objc_msgSend(v6, "canGetRenditionWithKey:", objc_msgSend(v8, "keyList"))))
    {
      AssociatedObject = [(CUINamedLookup *)[CUINamedTexture alloc] initWithName:[(CUINamedLookup *)self name] usingRenditionKey:v8 fromTheme:[(CUINamedLookup *)self storageRef]];
    }

    else
    {
      _CUILog(4, "CoreUI: unable to locate sdf '%@' key:%@ releasing", [(CUINamedLookup *)self name], v8);
      AssociatedObject = 0;
    }

    objc_setAssociatedObject(self, "com.apple.coreui.iconstack.sdf", AssociatedObject, 0x301);
  }

  return [(CUINamedTexture *)AssociatedObject textureWithBufferAllocator:allocator];
}

- (CUINamedLayerImage)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v6.receiver = self;
  v6.super_class = CUINamedLayerImage;
  result = [(CUINamedImage *)&v6 initWithName:name usingRenditionKey:key fromTheme:theme];
  if (result)
  {
    result->_opacity = 1.0;
    result->_blendMode = 0;
  }

  return result;
}

- (double)opacity
{
  v5.receiver = self;
  v5.super_class = CUINamedLayerImage;
  [(CUINamedImage *)&v5 opacity];
  return v3 * self->_opacity;
}

- (int)blendMode
{
  v4.receiver = self;
  v4.super_class = CUINamedLayerImage;
  result = [(CUINamedImage *)&v4 blendMode];
  if (self->_blendMode > 0)
  {
    return self->_blendMode;
  }

  return result;
}

- (void)_setGradientOrColorName:(id)name
{
  gradientOrColorName = self->_gradientOrColorName;
  if (gradientOrColorName != name)
  {

    self->_gradientOrColorName = [name copy];
  }
}

- (CGColor)color
{
  _gradientOrColor = [(CUINamedLayerImage *)self _gradientOrColor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  return [_gradientOrColor cgColor];
}

- (CUINamedGradient)gradient
{
  _gradientOrColor = [(CUINamedLayerImage *)self _gradientOrColor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return _gradientOrColor;
  }

  else
  {
    return 0;
  }
}

@end