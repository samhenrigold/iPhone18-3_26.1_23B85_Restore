@interface UIMenu(_MUExtras)
- (id)_mapsui_allChildren;
@end

@implementation UIMenu(_MUExtras)

- (id)_mapsui_allChildren
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [self children];
  v4 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(children);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [array addObject:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _mapsui_allChildren = [v8 _mapsui_allChildren];
          [array addObjectsFromArray:_mapsui_allChildren];
        }
      }

      v5 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return array;
}

@end