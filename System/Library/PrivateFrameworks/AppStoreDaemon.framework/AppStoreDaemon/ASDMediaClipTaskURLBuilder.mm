@interface ASDMediaClipTaskURLBuilder
- (id)build;
- (id)initWithBundleID:(void *)d bag:;
- (void)setExternalVersionID:(uint64_t)d;
@end

@implementation ASDMediaClipTaskURLBuilder

- (id)initWithBundleID:(void *)d bag:
{
  v6 = a2;
  dCopy = d;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = ASDMediaClipTaskURLBuilder;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, d);
    }
  }

  return self;
}

- (id)build
{
  selfCopy = self;
  v19[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [self[2] URLForKey:0x1F301A770];
    valuePromise = [v2 valuePromise];

    v4 = [selfCopy[2] stringForKey:0x1F301A7B0];
    valuePromise2 = [v4 valuePromise];

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __42__ASDMediaClipTaskURLBuilder__pathPromise__block_invoke;
    v17 = &unk_1E7CDC478;
    v18 = selfCopy;
    v6 = [valuePromise2 thenWithBlock:&v14];

    v7 = [selfCopy[2] stringForKey:0x1F301A790];
    valuePromise3 = [v7 valuePromise];

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __43__ASDMediaClipTaskURLBuilder__queryPromise__block_invoke;
    v17 = &unk_1E7CDC478;
    v18 = selfCopy;
    v9 = [valuePromise3 thenWithBlock:&v14];

    v10 = MEMORY[0x1E698CAD0];
    v19[0] = valuePromise;
    v19[1] = v6;
    v19[2] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    v12 = [v10 promiseWithAll:v11];

    selfCopy = [v12 thenWithBlock:&__block_literal_global_7];
  }

  return selfCopy;
}

id __35__ASDMediaClipTaskURLBuilder_build__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v2 objectAtIndexedSubscript:1];
  v5 = [v2 objectAtIndexedSubscript:2];

  v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v7 = [v3 absoluteString];
  [v6 setHost:v7];

  [v6 setPath:v4];
  [v6 setQueryItems:v5];
  [v6 setScheme:@"https"];
  v8 = [MEMORY[0x1E698CAD0] promiseWithResult:v6];

  return v8;
}

id __42__ASDMediaClipTaskURLBuilder__pathPromise__block_invoke(uint64_t a1, void *a2)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v26[0] = @"{bundleId}";
  v26[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v27[0] = v5;
  v25[0] = @"{storefront}";
  v25[1] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v27[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v12 = @"/v1/catalog/{storefront}/app-clips/{bundleId}";
    do
    {
      v13 = 0;
      v14 = v12;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v20 + 1) + 8 * v13);
        v16 = [v15 objectAtIndexedSubscript:{0, v20}];
        v17 = [v15 objectAtIndexedSubscript:1];
        v12 = [(__CFString *)v14 stringByReplacingOccurrencesOfString:v16 withString:v17];

        ++v13;
        v14 = v12;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = @"/v1/catalog/{storefront}/app-clips/{bundleId}";
  }

  v18 = [MEMORY[0x1E698CAD0] promiseWithResult:v12];

  return v18;
}

id __43__ASDMediaClipTaskURLBuilder__queryPromise__block_invoke(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"l" value:v4];

  [v5 addObject:v6];
  if (*(a1 + 32))
  {
    v7 = [MEMORY[0x1E698C8A8] deviceIsiPad];
    v8 = MEMORY[0x1E698C6B8];
    if (!v7)
    {
      v8 = MEMORY[0x1E698C6C0];
    }

    v9 = *v8;
    if (v9)
    {
      v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"platform" value:v9];
      [v5 addObject:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  v23[0] = @"variantsInfo";
  v23[1] = @"verifiedAssociatedDomains";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v12 = [v11 componentsJoinedByString:{@", "}];
  v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"extend" value:v12];
  [v5 addObject:v13];

  v14 = *(*(a1 + 32) + 24);
  if (v14)
  {
    v15 = MEMORY[0x1E696AF60];
    v16 = [v14 stringValue];
    v17 = [v15 queryItemWithName:@"externalVersionId" value:v16];
    [v5 addObject:v17];

    v18 = [MEMORY[0x1E696AF60] queryItemWithName:@"fields" value:@"variantsInfo"];
    [v5 addObject:v18];
  }

  v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"relate[app-clips]" value:@"app"];
  [v5 addObject:v19];

  v20 = [MEMORY[0x1E696AF60] queryItemWithName:@"include[app-clips]" value:@"app-genres"];
  [v5 addObject:v20];

  v21 = [MEMORY[0x1E698CAD0] promiseWithResult:v5];

  return v21;
}

- (void)setExternalVersionID:(uint64_t)d
{
  if (d)
  {
    objc_storeStrong((d + 24), a2);
  }
}

@end