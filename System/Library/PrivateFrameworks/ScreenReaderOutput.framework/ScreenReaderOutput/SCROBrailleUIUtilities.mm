@interface SCROBrailleUIUtilities
+ (id)brailleForBackButton;
+ (void)tryDownloadingIfNeededForURL:(id)l;
@end

@implementation SCROBrailleUIUtilities

+ (void)tryDownloadingIfNeededForURL:(id)l
{
  v37 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v32 = 0;
  v4 = *MEMORY[0x277CBE8B8];
  v31 = 0;
  [lCopy getResourceValue:&v32 forKey:v4 error:&v31];
  v5 = v32;
  v6 = v31;
  if ([v5 BOOLValue])
  {
    v7 = *MEMORY[0x277CBE950];
    v30 = 0;
    v8 = *MEMORY[0x277CBE948];
    v29 = 0;
    [lCopy getResourceValue:&v30 forKey:v8 error:&v29];
    v9 = v30;
    v10 = v29;

    v11 = [v9 isEqualToString:v7];
    if (v11)
    {
      v12 = _SCROD_LOG(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        path = [lCopy path];
        *buf = 138412290;
        v34 = path;
        _os_log_impl(&dword_26490B000, v12, OS_LOG_TYPE_DEFAULT, "Braille UI: Starting download for iCloud file %@", buf, 0xCu);
      }

      v14 = dispatch_semaphore_create(0);
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v28 = v10;
      [defaultManager startDownloadingUbiquitousItemAtURL:lCopy error:&v28];
      v16 = v28;

      if (v16)
      {
        v18 = _SCROD_LOG(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          path2 = [lCopy path];
          *buf = 138412546;
          v34 = path2;
          v35 = 2112;
          v36 = v16;
          _os_log_impl(&dword_26490B000, v18, OS_LOG_TYPE_DEFAULT, "Braille UI: Failed to start downloading iCloud file %@: %@", buf, 0x16u);
        }
      }

      else
      {
        v18 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
        v27 = 0;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __55__SCROBrailleUIUtilities_tryDownloadingIfNeededForURL___block_invoke;
        v25[3] = &unk_279B748F0;
        v20 = v14;
        v26 = v20;
        [v18 coordinateReadingItemAtURL:lCopy options:1 error:&v27 byAccessor:v25];
        v16 = v27;
        v21 = dispatch_time(0, 10000000000);
        v22 = dispatch_semaphore_wait(v20, v21);
        if (v22)
        {
          v23 = _SCROD_LOG(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            path3 = [lCopy path];
            *buf = 138412290;
            v34 = path3;
            _os_log_impl(&dword_26490B000, v23, OS_LOG_TYPE_DEFAULT, "Braille UI: Timeout waiting for iCloud file to download %@", buf, 0xCu);
          }
        }
      }

      v10 = v16;
    }

    v6 = v10;
  }
}

+ (id)brailleForBackButton
{
  if (brailleForBackButton_onceToken != -1)
  {
    +[SCROBrailleUIUtilities brailleForBackButton];
  }

  v3 = brailleForBackButton__brailleforBackButton;

  return v3;
}

void __46__SCROBrailleUIUtilities_brailleForBackButton__block_invoke()
{
  v0 = SCROBrailleUILocString(@"back.btn.label");
  v4 = [v0 lowercaseString];

  v1 = +[SCROBrailleTranslationManager sharedManager];
  v2 = [v1 printBrailleForText:v4 language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];
  v3 = brailleForBackButton__brailleforBackButton;
  brailleForBackButton__brailleforBackButton = v2;
}

@end