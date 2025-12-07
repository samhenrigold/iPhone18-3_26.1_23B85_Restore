@interface NSBundle
@end

@implementation NSBundle

void __50__NSBundle_SCROBundleExtras__brailleDriverBundles__block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [@"/System/Library/ScreenReader" stringByAppendingPathComponent:@"BrailleDrivers"];
  [v2 addObject:v3];

  v34 = v2;
  v4 = [v2 reverseObjectEnumerator];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v37 = [MEMORY[0x277CBEB18] array];
  v35 = v4;
  v6 = [v4 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = @"brailledriver";
    do
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v44 = 0;
      v10 = [v9 contentsOfDirectoryAtPath:v7 error:&v44];
      v36 = v44;

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v11 = v10;
      v39 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v39)
      {
        v12 = *v41;
        v38 = *v41;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v41 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v40 + 1) + 8 * i);
            v15 = [v14 pathExtension];
            v16 = [v15 isEqualToString:v8];

            if (v16)
            {
              v17 = *(a1 + 32);
              v18 = [v7 stringByAppendingPathComponent:v14];
              v19 = [v17 bundleWithPath:v18];

              v20 = [v19 bundleIdentifier];
              if ([v20 length])
              {
                v21 = [v5 objectForKey:v20];
                v22 = v21;
                if (v21)
                {
                  [v21 bundlePath];
                  v23 = v11;
                  v24 = v8;
                  v25 = v7;
                  v26 = a1;
                  v28 = v27 = v5;
                  NSLog(&cfstr_DuplicateBrail.isa, v28);

                  v5 = v27;
                  a1 = v26;
                  v7 = v25;
                  v8 = v24;
                  v11 = v23;
                  v12 = v38;
                }

                else
                {
                  [v5 setObject:v19 forKey:v20];
                  [v37 addObject:v19];
                }
              }
            }
          }

          v39 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v39);
      }

      v29 = [v35 nextObject];

      v7 = v29;
    }

    while (v29);
  }

  v30 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v5];
  v31 = _DriverBundleDictionary;
  _DriverBundleDictionary = v30;

  v32 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v37];
  v33 = _DriverBundleArray;
  _DriverBundleArray = v32;
}

void __50__NSBundle_SCROBundleExtras___brailleTableBundles__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [@"/System/Library/ScreenReader" stringByAppendingPathComponent:@"BrailleTables"];
  [v2 addObject:v3];

  v32 = v2;
  v4 = [v2 reverseObjectEnumerator];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = v4;
  v6 = [v4 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = @"brailletable";
    do
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v42 = 0;
      v10 = [v9 contentsOfDirectoryAtPath:v7 error:&v42];
      v34 = v42;

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = v10;
      v37 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v37)
      {
        v12 = *v39;
        v36 = *v39;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v39 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v38 + 1) + 8 * i);
            v15 = [v14 pathExtension];
            v16 = [v15 isEqualToString:v8];

            if (v16)
            {
              v17 = *(a1 + 32);
              v18 = [v7 stringByAppendingPathComponent:v14];
              v19 = [v17 bundleWithPath:v18];

              v20 = [v19 bundleIdentifier];
              if ([v20 length])
              {
                v21 = [v5 objectForKey:v20];
                v22 = v21;
                if (v21)
                {
                  [v21 bundlePath];
                  v23 = v11;
                  v24 = v8;
                  v25 = v7;
                  v26 = v5;
                  v28 = v27 = a1;
                  NSLog(&cfstr_DuplicateBrail_0.isa, v28);

                  a1 = v27;
                  v5 = v26;
                  v7 = v25;
                  v8 = v24;
                  v11 = v23;
                  v12 = v36;
                }

                else
                {
                  [v5 setObject:v19 forKey:v20];
                  [v35 addObject:v19];
                }
              }
            }
          }

          v37 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v37);
      }

      v29 = [v33 nextObject];

      v7 = v29;
    }

    while (v29);
  }

  v30 = [v35 copy];
  v31 = _TableBundleArray;
  _TableBundleArray = v30;
}

@end