@interface GEOComposedRouteCoordinateArray
- (double)_length;
@end

@implementation GEOComposedRouteCoordinateArray

- (double)_length
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0.0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(self + 8);
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = *v12;
    v4 = 0.0;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = 0.0;
        if (v6)
        {
          v9 = *(v6 + 72);
          v8 = *(v6 + 80);
          if (v9 != v8)
          {
            v7 = *(v8 - 8);
          }
        }

        v4 = v4 + v7;
      }

      v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v2);
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

@end