@interface _FPItemDecorationFallbackLookup
- (_FPItemDecorationFallbackLookup)initWithItems:(id)items;
- (id)fp_valueForKeyPath:(id)path;
@end

@implementation _FPItemDecorationFallbackLookup

- (_FPItemDecorationFallbackLookup)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = _FPItemDecorationFallbackLookup;
  v6 = [(_FPItemDecorationFallbackLookup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, items);
  }

  return v7;
}

- (id)fp_valueForKeyPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) fp_valueForKeyPath:{pathCopy, v11}];
        if (v9)
        {

          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end