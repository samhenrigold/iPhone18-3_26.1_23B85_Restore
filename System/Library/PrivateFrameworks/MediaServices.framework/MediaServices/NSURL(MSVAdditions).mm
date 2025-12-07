@interface NSURL(MSVAdditions)
+ (id)msv_urlForMediaAssetWithPersistentID:()MSVAdditions pathExtension:;
- (uint64_t)msv_mediaAssetPersistentID;
@end

@implementation NSURL(MSVAdditions)

- (uint64_t)msv_mediaAssetPersistentID
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  scheme = [self scheme];
  if (([scheme isEqualToString:@"ipod-library"] & 1) == 0)
  {

    return 0;
  }

  host = [self host];
  v4 = [host isEqualToString:@"item"];

  if (!v4)
  {
    return 0;
  }

  query = [self query];
  v6 = [query componentsSeparatedByString:@"&"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:{@"=", v18}];
        if ([v12 count] >= 2)
        {
          v13 = [v12 objectAtIndex:0];
          if ([v13 isEqualToString:@"id"])
          {
            v14 = [v12 objectAtIndex:1];
            v15 = [MEMORY[0x1E696AE88] scannerWithString:v14];
            [v15 scanLongLong:&v22];

            v16 = v22;
            if (v16)
            {

              goto LABEL_18;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v22;
}

+ (id)msv_urlForMediaAssetWithPersistentID:()MSVAdditions pathExtension:
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@/%@.%@?%@=%lli", @"ipod-library", @"item", @"item", a4, @"id", a3];
  v6 = [v4 URLWithString:v5];

  return v6;
}

@end