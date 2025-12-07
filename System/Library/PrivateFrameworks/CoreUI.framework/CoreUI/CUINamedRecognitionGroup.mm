@interface CUINamedRecognitionGroup
- (CUINamedRecognitionGroup)initWithName:(id)name contentsFromCatalog:(id)catalog usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (id)namedRecognitionItemList;
- (id)recognitionItemsWithName:(id)name;
- (void)dealloc;
@end

@implementation CUINamedRecognitionGroup

- (CUINamedRecognitionGroup)initWithName:(id)name contentsFromCatalog:(id)catalog usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v28.receiver = self;
  v28.super_class = CUINamedRecognitionGroup;
  v8 = [(CUINamedLookup *)&v28 initWithName:name usingRenditionKey:key fromTheme:theme];
  if (v8)
  {
    v9 = [name stringByAppendingString:@"/"];
    contentNames = [(CUIThemeRendition *)[(CUINamedLookup *)v8 _rendition] contentNames];
    if (![contentNames count])
    {
      _CUILog(4, "CoreUI: NamedRecognitionGroup '%@' has no contents", name);

      return 0;
    }

    v8->_imageContents = objc_alloc_init(NSMutableDictionary);
    v8->_objectContents = objc_alloc_init(NSMutableDictionary);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [contentNames countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(contentNames);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          v16 = [catalog _recognitionImageWithName:v15];
          if (!v16)
          {
            v19 = [catalog _recognitionObjectWithName:v15];
            if (!v19)
            {
              _CUILog(4, "[CUINamedRecognitionGroup initWithName:contentsFromCatalog:usingRenditionKey:fromTheme:] couldn't find any recognitions objects named '%@' skipping", v15);
              goto LABEL_17;
            }

LABEL_14:
            v20 = v19;
            if ([v15 rangeOfString:v9 options:8 range:{0, objc_msgSend(v15, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v15 = [v15 substringFromIndex:v21];
            }

            [(NSMutableDictionary *)v8->_objectContents setObject:v20 forKey:v15];
            goto LABEL_17;
          }

          v17 = v16;
          if ([v15 rangeOfString:v9 options:8 range:{0, objc_msgSend(v15, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = [v15 substringFromIndex:v18];
          }

          [(NSMutableDictionary *)v8->_imageContents setObject:v17 forKey:v15];
          v19 = [catalog _recognitionObjectWithName:v15];
          if (v19)
          {
            goto LABEL_14;
          }

LABEL_17:
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v22 = [contentNames countByEnumeratingWithState:&v24 objects:v29 count:16];
        v12 = v22;
      }

      while (v22);
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedRecognitionGroup;
  [(CUINamedLookup *)&v3 dealloc];
}

- (id)namedRecognitionItemList
{
  allKeys = [(NSMutableDictionary *)self->_imageContents allKeys];
  allKeys2 = [(NSMutableDictionary *)self->_objectContents allKeys];

  return [allKeys arrayByAddingObjectsFromArray:allKeys2];
}

- (id)recognitionItemsWithName:(id)name
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(CUINamedRecognitionGroup *)self recognitionImageWithName:name];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [(CUINamedRecognitionGroup *)self recognitionObjectWithName:name];
  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [v5 copy];

  return v8;
}

@end