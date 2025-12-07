@interface NSArray(NSEmailAddressArray)
- (id)mf_uncommentedAddressList;
@end

@implementation NSArray(NSEmailAddressArray)

- (id)mf_uncommentedAddressList
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [self count];
  if (v2)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [self countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(self);
          }

          [v2 addObject:{objc_msgSend(*(*(&v8 + 1) + 8 * v6++), "mf_uncommentedAddress")}];
        }

        while (v4 != v6);
        v4 = [self countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  return v2;
}

@end