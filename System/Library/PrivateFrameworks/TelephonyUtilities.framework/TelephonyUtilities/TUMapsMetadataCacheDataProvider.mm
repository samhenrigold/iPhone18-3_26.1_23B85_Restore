@interface TUMapsMetadataCacheDataProvider
- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group;
@end

@implementation TUMapsMetadataCacheDataProvider

- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group
{
  v29 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  groupCopy = group;
  v8 = [MEMORY[0x1E695DFA8] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = dsCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        handle = [*(*(&v24 + 1) + 8 * v13) handle];
        normalizedValue = [handle normalizedValue];

        if ([normalizedValue length])
        {
          v16 = CFPhoneNumberCreate();
          if (v16)
          {
            v17 = v16;
            [v8 addObject:v16];
            CFRelease(v17);
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    dispatch_group_enter(groupCopy);
    v18 = objc_alloc_init(CUTWeakLinkClass());
    [v18 _setAllowPhoneNumberLookupUsingCellular:1];
    allObjects = [v8 allObjects];
    [v18 _setPhoneNumbers:allObjects];

    v20 = dispatch_queue_create("com.apple.telephonyutilities.metadatacache.mapsQueue", 0);
    v21 = [objc_alloc(CUTWeakLinkClass()) initWithRequest:v18];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__TUMapsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke;
    v22[3] = &unk_1E7426AD8;
    v22[4] = self;
    v23 = groupCopy;
    [v21 _phoneOnlyStartWithCompletionHandler:v22 queue:v20];
  }
}

void __75__TUMapsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [a2 mapItems];
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    v6 = 0x1E7423000uLL;
    do
    {
      v7 = 0;
      v23 = v4;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = [v8 name];
        if ([v9 length])
        {
          v10 = [v8 phoneNumber];
          v11 = [v10 length];

          if (!v11)
          {
            goto LABEL_15;
          }

          v9 = [v8 phoneNumber];
          if ([v9 length])
          {
            v12 = [v8 placemark];
            v13 = [v12 countryCode];

            v14 = [*(v6 + 3480) normalizedPhoneNumberHandleForValue:v9 isoCountryCode:v13];
            if (v14)
            {
              v15 = [[TUMetadataDestinationID alloc] initWithHandle:v14];
              if (v15)
              {
                v16 = v5;
                v17 = v2;
                v18 = v6;
                v19 = *(a1 + 32);
                v20 = [v8 name];
                v21 = v19;
                v6 = v18;
                v2 = v17;
                v5 = v16;
                v4 = v23;
                [v21 setObject:v20 forDestinationID:v15];
              }
            }
          }
        }

LABEL_15:
        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 40));
}

@end