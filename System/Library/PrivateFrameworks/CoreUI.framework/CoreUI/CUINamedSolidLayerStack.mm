@interface CUINamedSolidLayerStack
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (CUINamedSolidLayerStack)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme resolvingWithBlock:(id)block;
- (id)layerImageAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation CUINamedSolidLayerStack

- (CUINamedSolidLayerStack)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme resolvingWithBlock:(id)block
{
  nameCopy = name;
  v34.receiver = self;
  v34.super_class = CUINamedSolidLayerStack;
  v8 = [(CUINamedLookup *)&v34 initWithName:name usingRenditionKey:key fromTheme:?];
  _rendition = [(CUINamedLookup *)v8 _rendition];
  if ([(CUIThemeRendition *)_rendition type]== 1018)
  {
    if (!nameCopy)
    {
      [(CUINamedLookup *)v8 setName:[(CUIThemeRendition *)_rendition name]];
      nameCopy = [(CUIThemeRendition *)_rendition name];
    }

    v26 = v8;
    v28 = objc_alloc_init(NSMutableArray);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [(CUIThemeRendition *)_rendition layerReferences];
    v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v31;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = (*(block + 2))(block, [v15 referenceKey]);
          if (!v16)
          {
            _CUILog(4, "CoreUI: Unable to resolve layer reference for '%@' name '%@' layerRef referenceKey '%@'", v15, nameCopy, [v15 referenceKey]);
            goto LABEL_23;
          }

          theme = [[CUINamedSolidLayerImage alloc] initWithName:[NSString usingRenditionKey:"stringWithFormat:" fromTheme:@"%@[%ld]" stringWithFormat:nameCopy, ++v12], v16, theme];
          if ([(CUINamedLookup *)theme _rendition])
          {
            [v15 frame];
            [(CUINamedSolidLayerImage *)theme setFrame:?];
            [v15 opacity];
            if (v18 < 1.0)
            {
              [(CUINamedSolidLayerImage *)theme opacity];
              if (v19 == 1.0)
              {
                [v15 opacity];
                [(CUINamedSolidLayerImage *)theme setOpacity:?];
              }
            }

            if ([v15 blendMode] >= 1 && !-[CUINamedSolidLayerImage blendMode](theme, "blendMode"))
            {
              -[CUINamedSolidLayerImage setBlendMode:](theme, "setBlendMode:", [v15 blendMode]);
            }

            -[CUINamedSolidLayerImage setFixedFrame:](theme, "setFixedFrame:", [v15 fixedFrame]);
            [(NSArray *)v28 addObject:theme];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
    v20 = v26;
    v26->_layers = v28;
    v8 = objc_alloc_init(CUIRenditionKey);
    [(CUINamedSolidLayerStack *)v8 setThemeElement:[(CUIRenditionKey *)[(CUINamedLookup *)v26 key] themeElement]];
    [(CUINamedSolidLayerStack *)v8 setThemePart:208];
    [(CUINamedSolidLayerStack *)v8 setThemeIdentifier:[(CUIRenditionKey *)[(CUINamedLookup *)v26 key] themeIdentifier]];
    v21 = (*(block + 2))(block, v8);
    if (v21)
    {
      v22 = v21;
      [(CUINamedLookup *)v26 storageRef];
      v23 = _LookupStructuredThemeProvider();
      v24 = [v23 copyLookupKeySignatureForKey:{objc_msgSend(v22, "keyList")}];
      v26->_flattenedImageRendition = [v23 renditionWithKey:objc_msgSend(v22 usingKeySignature:{"keyList"), v24}];
    }

    else
    {
      _CUILog(4, "CoreUI: Unable to resolve flattened image for layer stack %@", v26);
    }
  }

  else
  {
    _CUILog(4, "CoreUI: Attempting to create named layer stack '%@' from inappropriate rendition type: %@", nameCopy, _rendition);
    v20 = 0;
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  v8.receiver = self;
  v8.super_class = CUINamedSolidLayerStack;
  if (![(CUINamedLookup *)&v8 isEqual:?])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = -[NSArray isEqual:](-[CUINamedSolidLayerStack layers](self, "layers"), "isEqual:", [equal layers]);
  if (v5)
  {
    type = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] type];
    if (type == [objc_msgSend(equal "_rendition")])
    {
      LOBYTE(v5) = 1;
      return v5;
    }

LABEL_6:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = CUINamedSolidLayerStack;
  v3 = [(CUINamedLookup *)&v14 hash];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  layers = [(CUINamedSolidLayerStack *)self layers];
  v5 = [(NSArray *)layers countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(layers);
        }

        v3 *= 2654435769 * [*(*(&v10 + 1) + 8 * v8) hash];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)layers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CGSize)size
{
  metrics = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] metrics];

  [metrics imageSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)layerImageAtIndex:(unint64_t)index
{
  layers = [(CUINamedSolidLayerStack *)self layers];

  return [(NSArray *)layers objectAtIndexedSubscript:index];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedSolidLayerStack;
  [(CUINamedLookup *)&v3 dealloc];
}

@end