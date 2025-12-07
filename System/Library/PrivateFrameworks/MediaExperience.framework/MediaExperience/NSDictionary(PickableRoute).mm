@interface NSDictionary(PickableRoute)
- (uint64_t)matchesUID:()PickableRoute;
@end

@implementation NSDictionary(PickableRoute)

- (uint64_t)matchesUID:()PickableRoute
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [self objectForKey:AVController_RouteDescriptionKey_RouteUID];
  if (v5 && [v5 rangeOfString:a3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  result = [self objectForKey:AVController_RouteDescriptionKey_AlternateUIDs];
  if (result)
  {
    v7 = result;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    result = [result countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (result)
    {
      v8 = result;
      v9 = *v13;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (v11)
        {
          if ([v11 rangeOfString:a3] != 0x7FFFFFFFFFFFFFFFLL)
          {
            return 1;
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
          result = 0;
          if (v8)
          {
            goto LABEL_6;
          }

          return result;
        }
      }
    }
  }

  return result;
}

@end