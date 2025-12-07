@interface CUINamedModel
- (CUINamedModel)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (MDLAsset)asset;
- (id)_renditionForKey:(id)key inThemeRef:(unint64_t)ref;
@end

@implementation CUINamedModel

- (id)_renditionForKey:(id)key inThemeRef:(unint64_t)ref
{
  v5 = _LookupStructuredThemeProvider();
  if (![v5 assetExistsForKey:{objc_msgSend(key, "keyList")}])
  {
    return 0;
  }

  keyList = [key keyList];

  return [v5 renditionWithKey:keyList];
}

- (CUINamedModel)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v37.receiver = self;
  v37.super_class = CUINamedModel;
  v6 = [(CUINamedLookup *)&v37 initWithName:name usingRenditionKey:key fromTheme:?];
  _rendition = [(CUINamedLookup *)v6 _rendition];
  if ([(CUIThemeRendition *)_rendition type]!= 1011)
  {

    v6 = 0;
  }

  modelAsset = [(CUIThemeRendition *)_rendition modelAsset];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(CUIThemeRendition *)_rendition meshKeys];
  v8 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v23 = *v34;
    do
    {
      v11 = 0;
      v25 = v9;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        v13 = [(CUINamedModel *)v6 _renditionForKey:v12 inThemeRef:theme];
        if ([v13 type] == 1012)
        {
          v28 = v11;
          [modelAsset addObject:{objc_msgSend(v13, "modelMesh")}];
          v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(objc_msgSend(v13, "submeshKeys"), "count")}];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v27 = v13;
          submeshKeys = [v13 submeshKeys];
          v16 = [submeshKeys countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v30;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v30 != v18)
                {
                  objc_enumerationMutation(submeshKeys);
                }

                v20 = *(*(&v29 + 1) + 8 * i);
                v21 = [(CUINamedModel *)v6 _renditionForKey:v20 inThemeRef:theme];
                if ([v21 type] == 1016)
                {
                  [v14 addObject:{objc_msgSend(v21, "modelSubmesh")}];
                }

                else
                {
                  _CUILog(4, "[CUINamedModel initWithName:usingRenditionKey:fromTheme:] Got a rendition not of type kCUIModelSubMeshRenditionType with key: '%@' skipping", v20);
                }
              }

              v17 = [submeshKeys countByEnumeratingWithState:&v29 objects:v38 count:16];
            }

            while (v17);
          }

          [objc_msgSend(v27 "modelMesh")];

          v10 = v23;
          v9 = v25;
          v11 = v28;
        }

        else
        {
          _CUILog(4, "[CUINamedModel initWithName:usingRenditionKey:fromTheme:] Got a rendition not of type kCUIModelMeshRenditionType with key: '%@' skipping", v12);
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v9);
  }

  return v6;
}

- (MDLAsset)asset
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition modelAsset];
}

@end