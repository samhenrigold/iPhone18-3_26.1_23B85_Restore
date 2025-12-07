@interface CUITextStyle
- (CUITextStyle)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (void)dealloc;
@end

@implementation CUITextStyle

- (CUITextStyle)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v12.receiver = self;
  v12.super_class = CUITextStyle;
  v6 = [(CUINamedLookup *)&v12 initWithName:name usingRenditionKey:key fromTheme:theme];
  v7 = v6;
  if (v6)
  {
    _rendition = [(CUINamedLookup *)v6 _rendition];
    if ([(CUIThemeRendition *)_rendition type]== 1015)
    {
      csiTextStyle = [(CUIThemeRendition *)_rendition csiTextStyle];
      v7->_fontName = [NSString stringWithUTF8String:csiTextStyle + 8];
      v10 = csiTextStyle[4];
      v7->_fontSize = csiTextStyle[3];
      v7->_maxPointSize = v10;
      v7->_minPointSize = csiTextStyle[5];
      v7->_scalingStyle = *(csiTextStyle + 2);
      v7->_alignment = *(csiTextStyle + 6);
    }

    else
    {
      _CUILog(4, "CoreUI: attempting to lookup a text style '%@' with a name that is not a text style in the AssetCatalog", name);

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUITextStyle;
  [(CUINamedLookup *)&v3 dealloc];
}

@end