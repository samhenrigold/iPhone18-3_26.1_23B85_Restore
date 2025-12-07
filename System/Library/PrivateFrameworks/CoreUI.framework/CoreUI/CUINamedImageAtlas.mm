@interface CUINamedImageAtlas
- (BOOL)_dimension1ExistsInKeyFormatForThemeRef:(_BOOL8)result;
- (CGImage)image;
- (CUINamedImageAtlas)initWithName:(id)name usingRenditionKey:(id)key withContents:(id)contents contentsFromCatalog:(id)catalog fromTheme:(unint64_t)theme withSourceThemeRef:(unint64_t)ref;
- (id)_renditionForKey:(uint64_t)key inThemeRef:(void *)ref;
- (void)dealloc;
@end

@implementation CUINamedImageAtlas

- (void)dealloc
{
  atlasImages = self->_atlasImages;
  if (atlasImages)
  {
    CFRelease(atlasImages);
  }

  v4.receiver = self;
  v4.super_class = CUINamedImageAtlas;
  [(CUINamedLookup *)&v4 dealloc];
}

- (CUINamedImageAtlas)initWithName:(id)name usingRenditionKey:(id)key withContents:(id)contents contentsFromCatalog:(id)catalog fromTheme:(unint64_t)theme withSourceThemeRef:(unint64_t)ref
{
  v14 = _LookupStructuredThemeProvider();
  v79.receiver = self;
  v79.super_class = CUINamedImageAtlas;
  v15 = [(CUINamedLookup *)&v79 initWithName:name usingRenditionKey:key fromTheme:theme];
  if (!v15->_images)
  {
    v17 = [name stringByAppendingString:@"/"];
    v69 = objc_alloc_init(NSMutableDictionary);
    v58 = objc_alloc_init(NSMutableArray);
    theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    catalogCopy = catalog;
    nameCopy = name;
    if (contents && (v18 = -[CUINamedImageAtlas _renditionForKey:inThemeRef:](v15, contents), [objc_msgSend(v18 "contentNames")]))
    {
      obj = [[NSMutableSet alloc] initWithArray:{objc_msgSend(v18, "contentNames")}];
    }

    else
    {
      obj = 0;
    }

    v19 = [(CUIRenditionKey *)[(CUINamedLookup *)v15 renditionKey] copy];
    v53 = [CUINamedImageAtlas _dimension1ExistsInKeyFormatForThemeRef:v15];
    themeScale = [v19 themeScale];
    themeIdiom = [v19 themeIdiom];
    themeSubtype = [v19 themeSubtype];
    themeDisplayGamut = [v19 themeDisplayGamut];
    themeDirection = [v19 themeDirection];
    themeSizeClassHorizontal = [v19 themeSizeClassHorizontal];
    themeSizeClassVertical = [v19 themeSizeClassVertical];
    themeMemoryClass = [v19 themeMemoryClass];
    themeGraphicsClass = [v19 themeGraphicsClass];
    [v19 setThemeDimension1:0];
    v59 = v15;
    v54 = v19;
    v20 = [CUINamedImageAtlas _renditionForKey:v15 inThemeRef:v19];
    if (v20)
    {
      v21 = 0;
      do
      {
        v55 = v20;
        v56 = v21;
        themeCopy = theme;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        layerReferences = [v20 layerReferences];
        v24 = [layerReferences countByEnumeratingWithState:&v75 objects:v81 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v76;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v76 != v26)
              {
                objc_enumerationMutation(layerReferences);
              }

              referenceKey = [*(*(&v75 + 1) + 8 * i) referenceKey];
              v29 = [v14 renditionNameForKeyList:{objc_msgSend(referenceKey, "keyList")}];
              v31 = v29;
              if ([v29 rangeOfString:v17 options:8 range:{0, objc_msgSend(v29, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v31 = [v29 substringFromIndex:v30];
              }

              v32 = [[CUINamedImage alloc] initWithName:v31 usingRenditionKey:referenceKey fromTheme:themeCopy];
              if (v32)
              {
                v33 = v32;
                [(NSDictionary *)v69 setObject:v32 forKey:v31];
              }

              [obj removeObject:v29];
            }

            v25 = [layerReferences countByEnumeratingWithState:&v75 objects:v81 count:16];
          }

          while (v25);
        }

        [(NSArray *)v58 addObject:v55];
        unslicedImage = [v55 unslicedImage];
        if (unslicedImage)
        {
          CFArrayAppendValue(theArray, unslicedImage);
          theme = themeCopy;
          v35 = v56;
          if (!v53)
          {
            break;
          }
        }

        else
        {
          theme = themeCopy;
          v35 = v56;
          if (!v53)
          {
            break;
          }
        }

        v21 = v35 + 1;
        [v54 setThemeDimension1:v21];
        v20 = [CUINamedImageAtlas _renditionForKey:v59 inThemeRef:v54];
      }

      while (v20);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v36 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v72;
      do
      {
        v39 = 0;
        do
        {
          if (*v72 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v71 + 1) + 8 * v39);
          v42 = v40;
          if ([v40 rangeOfString:v17 options:8 range:{0, objc_msgSend(v40, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v42 = [v40 substringFromIndex:v41];
          }

          v43 = [catalogCopy imageWithName:v40 scaleFactor:themeIdiom deviceIdiom:themeSubtype deviceSubtype:themeDisplayGamut displayGamut:themeDirection layoutDirection:themeSizeClassHorizontal sizeClassHorizontal:themeScale sizeClassVertical:themeSizeClassVertical memoryClass:themeMemoryClass graphicsClass:themeGraphicsClass];
          if (v43)
          {
            v44 = v43;
            [v43 setName:v42];
            [(NSDictionary *)v69 setObject:v44 forKey:v42];
            v45 = [objc_msgSend(v44 "_rendition")];
            if (v45)
            {
              v46 = [CUINamedImageAtlas _renditionForKey:v59 inThemeRef:v45];
              if (v46 && (v47 = v46, [(NSArray *)v58 indexOfObject:v46]== 0x7FFFFFFFFFFFFFFFLL))
              {
                [(NSArray *)v58 addObject:v47];
                unslicedImage2 = [v47 unslicedImage];
                if (unslicedImage2)
                {
                  CFArrayAppendValue(theArray, unslicedImage2);
                }
              }

              else
              {
                _CUILog(1, "CoreUI: didn't find parent rendition for '%@' skipping it", v40, v50);
              }
            }
          }

          else
          {
            _CUILog(1, "CoreUI: couldn't find image '%@' in '%@'", v40, nameCopy);
          }

          v39 = v39 + 1;
        }

        while (v37 != v39);
        v49 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
        v37 = v49;
      }

      while (v49);
    }

    v15 = v59;
    v59->_images = v69;
    v59->_renditions = v58;
    v59->_atlasImages = theArray;
  }

  return v15;
}

- (CGImage)image
{
  atlasImages = self->_atlasImages;
  if (!atlasImages || CFArrayGetCount(atlasImages) < 1)
  {
    return 0;
  }

  _CUILog(1, "CoreUI: using depricated method [CUINamedImageAtlas image] use [CUINamedImageAtlas images] instead");
  v4 = self->_atlasImages;

  return CFArrayGetValueAtIndex(v4, 0);
}

- (id)_renditionForKey:(uint64_t)key inThemeRef:(void *)ref
{
  if (!key)
  {
    return 0;
  }

  v3 = _LookupStructuredThemeProvider();
  if (![v3 assetExistsForKey:{objc_msgSend(ref, "keyList")}])
  {
    return 0;
  }

  keyList = [ref keyList];

  return [v3 renditionWithKey:keyList];
}

- (BOOL)_dimension1ExistsInKeyFormatForThemeRef:(_BOOL8)result
{
  if (result)
  {
    keyFormat = [_LookupStructuredThemeProvider() keyFormat];
    return CUIRenditionKeyHasIdentifier(keyFormat, 8);
  }

  return result;
}

@end