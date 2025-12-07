@interface SPUISFilesPasteboardResultBuilder
+ (BOOL)shouldHideExtensionForURL:(id)l;
+ (BOOL)supportsResult:(id)result;
+ (id)spotlightPasteboardCacheDirectory;
+ (id)typeForURL:(id)l;
- (SPUISFilesPasteboardResultBuilder)initWithResult:(id)result;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
- (id)buildCopyItems;
- (id)buildDeleteCommand;
- (id)buildPreviewButtonItems;
- (id)buildShareItems;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)pasteboardDescription;
- (void)buildTitle;
@end

@implementation SPUISFilesPasteboardResultBuilder

+ (BOOL)supportsResult:(id)result
{
  v4 = *MEMORY[0x277CC2498];
  resultCopy = result;
  v6 = [resultCopy valueForAttribute:v4 withType:objc_opt_class()];
  v7 = objc_msgSend_count(v6);

  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___SPUISFilesPasteboardResultBuilder;
  v8 = objc_msgSendSuper2(&v10, sel_supportsResult_, resultCopy);

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

+ (id)spotlightPasteboardCacheDirectory
{
  if (spotlightPasteboardCacheDirectory_onceToken != -1)
  {
    +[SPUISFilesPasteboardResultBuilder spotlightPasteboardCacheDirectory];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager fileExistsAtPath:spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory] & 1) == 0)
  {
    [defaultManager createDirectoryAtPath:spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory withIntermediateDirectories:1 attributes:0 error:0];
  }

  v3 = spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory;
  v4 = spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory;

  return v3;
}

void __70__SPUISFilesPasteboardResultBuilder_spotlightPasteboardCacheDirectory__block_invoke()
{
  v2 = [@"~/Library/Metadata/CoreSpotlight" stringByExpandingTildeInPath];
  v0 = [v2 stringByAppendingPathComponent:@"/PasteboardHistory"];
  v1 = spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory;
  spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory = v0;
}

+ (BOOL)shouldHideExtensionForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    if ([self showAllExtensionsPreference])
    {
      bOOLValue = 0;
    }

    else
    {
      v15 = 0;
      v6 = *MEMORY[0x277CBE850];
      v14 = 0;
      v7 = [lCopy getResourceValue:&v15 forKey:v6 error:&v14];
      v8 = v15;
      v9 = v14;
      v10 = v9;
      if (v7)
      {
        v11 = v8 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (v9)
        {
          v12 = SPUISGeneralLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [(SPUISFilesPasteboardResultBuilder *)v10 shouldHideExtensionForURL:v12];
          }
        }

        bOOLValue = 1;
      }

      else
      {
        bOOLValue = [v8 BOOLValue];
      }
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (SPUISFilesPasteboardResultBuilder)initWithResult:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v18.receiver = self;
  v18.super_class = SPUISFilesPasteboardResultBuilder;
  v5 = [(SPUISPasteboardResultBuilder *)&v18 initWithResult:resultCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2498] withType:{objc_opt_class(), 0}];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x277CBEBC0] URLWithString:*(*(&v14 + 1) + 8 * v11)];
          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }

    [(SPUISFilesPasteboardResultBuilder *)v5 setFileURLs:v6];
  }

  return v5;
}

- (id)buildTitle
{
  fileURLs = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v4 = objc_msgSend_count(fileURLs);
  if (v4 == 1)
  {
    firstObject = [fileURLs firstObject];
    v22 = 0;
    v9 = *MEMORY[0x277CBE8D0];
    v21 = 0;
    v10 = [firstObject getResourceValue:&v22 forKey:v9 error:&v21];
    v11 = v22;
    v12 = v21;
    v13 = v12;
    if (v10)
    {
      v14 = v11 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (v12)
      {
        v15 = SPUISGeneralLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(SPUISFilesPasteboardResultBuilder *)v13 buildTitle];
        }
      }

      lastPathComponent = [firstObject lastPathComponent];
      if ([objc_opt_class() shouldHideExtensionForURL:firstObject])
      {
        stringByDeletingPathExtension = [(__CFString *)lastPathComponent stringByDeletingPathExtension];

        lastPathComponent = stringByDeletingPathExtension;
      }
    }

    else
    {
      lastPathComponent = v11;
    }
  }

  else
  {
    v5 = v4;
    if (!v4)
    {
      v23.receiver = self;
      v23.super_class = SPUISFilesPasteboardResultBuilder;
      buildTitle = [(SPUISPasteboardResultBuilder *)&v23 buildTitle];
      lastPathComponent = &stru_287C50EE8;
      goto LABEL_18;
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"%lu Items" value:0 table:0];
    lastPathComponent = [v17 localizedStringWithFormat:v19, v5];
  }

  buildTitle = [MEMORY[0x277D4C598] textWithString:lastPathComponent];
LABEL_18:

  return buildTitle;
}

+ (id)typeForURL:(id)l
{
  lCopy = l;
  v10 = 0;
  v4 = *MEMORY[0x277CBE7B8];
  v9 = 0;
  [lCopy getResourceValue:&v10 forKey:v4 error:&v9];
  v5 = v10;
  v6 = v9;
  if (v6)
  {
    v7 = SPUISGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SPUISFilesPasteboardResultBuilder *)v6 typeForURL:lCopy, v7];
    }
  }

  return v5;
}

- (id)pasteboardDescription
{
  v66[6] = *MEMORY[0x277D85DE8];
  fileURLs = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v3 = objc_msgSend_count(fileURLs);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = objc_opt_class();
      firstObject = [fileURLs firstObject];
      v6 = [v4 typeForURL:firstObject];
      localizedDescription = [v6 localizedDescription];
    }

    else
    {
      v44 = fileURLs;
      v10 = *MEMORY[0x277CE1CF0];
      v66[0] = *MEMORY[0x277CE1CE8];
      v66[1] = v10;
      v11 = *MEMORY[0x277CE1EC8];
      v66[2] = *MEMORY[0x277CE1E18];
      v66[3] = v11;
      v12 = *MEMORY[0x277CE1DB8];
      v66[4] = *MEMORY[0x277CE1D80];
      v66[5] = v12;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:6];
      v13 = objc_opt_new();
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      obj = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
      v14 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v59;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v59 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = [objc_opt_class() typeForURL:*(*(&v58 + 1) + 8 * i)];
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v19 = v46;
            v20 = [v19 countByEnumeratingWithState:&v54 objects:v64 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v55;
              while (2)
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v55 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v54 + 1) + 8 * j);
                  if ([v18 conformsToType:v24])
                  {
                    v25 = [v13 objectForKeyedSubscript:v24];
                    if (v25)
                    {
                      v26 = [v13 objectForKeyedSubscript:v24];
                      v27 = [v26 integerValue] + 1;
                    }

                    else
                    {
                      v27 = 1;
                    }

                    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
                    [v13 setObject:v28 forKeyedSubscript:v24];

                    goto LABEL_23;
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v54 objects:v64 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

LABEL_23:
          }

          v15 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
        }

        while (v15);
      }

      v49 = objc_opt_new();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v47 = v46;
      v29 = [v47 countByEnumeratingWithState:&v50 objects:v63 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v51;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v51 != v31)
            {
              objc_enumerationMutation(v47);
            }

            v33 = *(*(&v50 + 1) + 8 * k);
            v34 = [v13 objectForKeyedSubscript:v33];
            integerValue = [v34 integerValue];

            if (integerValue >= 1)
            {
              v36 = MEMORY[0x277CCACA8];
              v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v38 = [v37 localizedStringForKey:@"%ld %@" value:0 table:0];
              v39 = [v13 objectForKeyedSubscript:v33];
              integerValue2 = [v39 integerValue];
              localizedDescription2 = [v33 localizedDescription];
              v42 = [v36 localizedStringWithFormat:v38, integerValue2, localizedDescription2];
              [v49 addObject:v42];
            }
          }

          v30 = [v47 countByEnumeratingWithState:&v50 objects:v63 count:16];
        }

        while (v30);
      }

      localizedDescription = [v49 componentsJoinedByString:{@", "}];

      fileURLs = v44;
    }

    v9 = localizedDescription;
    pasteboardDescription = v9;
  }

  else
  {
    v62.receiver = self;
    v62.super_class = SPUISFilesPasteboardResultBuilder;
    pasteboardDescription = [(SPUISPasteboardResultBuilder *)&v62 pasteboardDescription];
    v9 = &stru_287C50EE8;
  }

  return pasteboardDescription;
}

- (id)buildThumbnail
{
  fileURLs = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v4 = objc_msgSend_count(fileURLs);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = objc_opt_new();
      firstObject = [fileURLs firstObject];
      [v5 setFilePath:firstObject];

      goto LABEL_7;
    }

    [(SPUISPasteboardResultBuilder *)&v8 buildThumbnail:self];
  }

  else
  {
    [(SPUISPasteboardResultBuilder *)&v9 buildThumbnail:v8.receiver];
  }
  v5 = ;
LABEL_7:

  return v5;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  v4 = objc_opt_new();
  relatedAppBundleIdentifier = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  [v4 setBundleIdentifier:relatedAppBundleIdentifier];

  return v4;
}

- (id)buildCopyItems
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  fileURLs = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v5 = [fileURLs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(fileURLs);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = objc_opt_new();
        [v10 setUrl:v9];
        [v3 addObject:v10];
      }

      v6 = [fileURLs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)buildShareItems
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  fileURLs = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v5 = [fileURLs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(fileURLs);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = objc_opt_new();
        [v10 setUrlValue:v9];
        [v3 addObject:v10];
      }

      v6 = [fileURLs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)buildDeleteCommand
{
  v9.receiver = self;
  v9.super_class = SPUISFilesPasteboardResultBuilder;
  buildDeleteCommand = [(SPUISPasteboardResultBuilder *)&v9 buildDeleteCommand];
  fileURLs = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SPUISFilesPasteboardResultBuilder_buildDeleteCommand__block_invoke;
  v8[3] = &unk_279D0BE18;
  v8[4] = self;
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:v8];
  v6 = [fileURLs filteredArrayUsingPredicate:v5];
  [buildDeleteCommand setFilesToDelete:v6];

  return buildDeleteCommand;
}

uint64_t __55__SPUISFilesPasteboardResultBuilder_buildDeleteCommand__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 path];
  v3 = [objc_opt_class() spotlightPasteboardCacheDirectory];
  v4 = [v2 hasPrefix:v3];

  return v4;
}

- (id)buildPreviewButtonItems
{
  v14.receiver = self;
  v14.super_class = SPUISFilesPasteboardResultBuilder;
  buildPreviewButtonItems = [(SPUISPasteboardResultBuilder *)&v14 buildPreviewButtonItems];
  v4 = [buildPreviewButtonItems mutableCopy];

  fileURLs = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v6 = objc_msgSend_count(fileURLs);

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = MEMORY[0x277D4C550];
    fileURLs2 = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
    firstObject = [fileURLs2 firstObject];
    v11 = [v8 punchoutWithURL:firstObject];
    [v7 setPunchout:v11];

    v12 = objc_opt_new();
    [v12 setCommand:v7];
    [v4 addObject:v12];
  }

  return v4;
}

+ (void)shouldHideExtensionForURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B882000, a2, OS_LOG_TYPE_ERROR, "failed to get hidden extension key for url with error: %@", &v2, 0xCu);
}

- (void)buildTitle
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_26B882000, a2, OS_LOG_TYPE_ERROR, "failed to get localized name key for url with error: %@", &v2, 0xCu);
}

+ (void)typeForURL:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 path];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_26B882000, a3, OS_LOG_TYPE_ERROR, "error: %@\ngetting content type for URL: %@", &v6, 0x16u);
}

@end