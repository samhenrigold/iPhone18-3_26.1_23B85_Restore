@interface WBSReaderFontDownloadManager
+ (WBSReaderFontDownloadManager)sharedManager;
- (BOOL)hasOngoingRequestForFont:(id)font;
- (WBSReaderFontDownloadManager)init;
- (double)downloadProgressForFont:(id)font;
- (void)downloadFont:(id)font;
@end

@implementation WBSReaderFontDownloadManager

+ (WBSReaderFontDownloadManager)sharedManager
{
  {
    v3 = +[WBSReaderFontDownloadManager sharedManager]::sharedInstance;
  }

  else
  {
    v3 = objc_alloc_init(WBSReaderFontDownloadManager);
    +[WBSReaderFontDownloadManager sharedManager]::sharedInstance = v3;
  }

  return v3;
}

- (WBSReaderFontDownloadManager)init
{
  v7.receiver = self;
  v7.super_class = WBSReaderFontDownloadManager;
  v2 = [(WBSReaderFontDownloadManager *)&v7 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    fontFamilyToProgress = v2->_fontFamilyToProgress;
    v2->_fontFamilyToProgress = dictionary;

    v5 = v2;
  }

  return v2;
}

- (BOOL)hasOngoingRequestForFont:(id)font
{
  fontFamilyToProgress = self->_fontFamilyToProgress;
  familyName = [font familyName];
  v5 = [(NSMutableDictionary *)fontFamilyToProgress objectForKeyedSubscript:familyName];
  LOBYTE(fontFamilyToProgress) = v5 != 0;

  return fontFamilyToProgress;
}

- (double)downloadProgressForFont:(id)font
{
  fontFamilyToProgress = self->_fontFamilyToProgress;
  familyName = [font familyName];
  v5 = [(NSMutableDictionary *)fontFamilyToProgress objectForKeyedSubscript:familyName];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)downloadFont:(id)font
{
  v15[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  v5 = fontCopy;
  if (fontCopy)
  {
    fontFamilyToProgress = self->_fontFamilyToProgress;
    familyName = [fontCopy familyName];
    [(NSMutableDictionary *)fontFamilyToProgress setObject:&unk_1F3A9AFB8 forKeyedSubscript:familyName];

    v14[0] = *MEMORY[0x1E6965790];
    familyName2 = [v5 familyName];
    v14[1] = *MEMORY[0x1E6965840];
    v15[0] = familyName2;
    v15[1] = &unk_1F3A9AFD0;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

    v10 = CTFontDescriptorCreateWithAttributes(v9);
    v11 = [MEMORY[0x1E695DEC8] arrayWithObject:v10];
    CFRelease(v10);
    progressBlock[0] = MEMORY[0x1E69E9820];
    progressBlock[1] = 3221225472;
    progressBlock[2] = __45__WBSReaderFontDownloadManager_downloadFont___block_invoke;
    progressBlock[3] = &unk_1E7FC9C28;
    progressBlock[4] = self;
    v13 = v5;
    CTFontDescriptorMatchFontDescriptorsWithProgressHandler(v11, 0, progressBlock);
  }
}

uint64_t __45__WBSReaderFontDownloadManager_downloadFont___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __45__WBSReaderFontDownloadManager_downloadFont___block_invoke_3;
      v19[3] = &unk_1E7FB7C70;
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v21 = a3;
      v19[4] = v12;
      v20 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], v19);
    }

    else if (a2 == 8)
    {
      v5 = [a3 objectForKey:*MEMORY[0x1E69656F8]];
      v7 = WBS_LOG_CHANNEL_PREFIXReader(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(a1 + 40) familyName];
        v9 = [v5 safari_privacyPreservingDescription];
        __45__WBSReaderFontDownloadManager_downloadFont___block_invoke_cold_1(v8, v9, buf, v7);
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __45__WBSReaderFontDownloadManager_downloadFont___block_invoke_23;
      v15[3] = &unk_1E7FB7F10;
      v10 = *(a1 + 40);
      v15[4] = *(a1 + 32);
      v16 = v10;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__WBSReaderFontDownloadManager_downloadFont___block_invoke_4;
      block[3] = &unk_1E7FB7F10;
      v4 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v18 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__WBSReaderFontDownloadManager_downloadFont___block_invoke_2;
    v22[3] = &unk_1E7FB7F10;
    v11 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v23 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v22);
  }

  return 1;
}

void __45__WBSReaderFontDownloadManager_downloadFont___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"WBSReaderFontDownloadNotificationUserInfoKey";
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"WBSReaderFontDownloadDidBeginNotification" object:v4 userInfo:v5];
}

void __45__WBSReaderFontDownloadManager_downloadFont___block_invoke_3(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 48) objectForKey:*MEMORY[0x1E6965700]];
  [v2 doubleValue];
  v4 = v3;

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = [*(a1 + 40) familyName];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = @"WBSReaderFontDownloadNotificationUserInfoKey";
  v13[0] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v8 postNotificationName:@"WBSReaderFontDownloadProgressDidChangeNotification" object:v10 userInfo:v11];
}

void __45__WBSReaderFontDownloadManager_downloadFont___block_invoke_4(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) familyName];
  [v2 removeObjectForKey:v3];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = @"WBSReaderFontDownloadNotificationUserInfoKey";
  v9[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v4 postNotificationName:@"WBSReaderFontDownloadDidFinishNotification" object:v6 userInfo:v7];
}

void __45__WBSReaderFontDownloadManager_downloadFont___block_invoke_23(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) familyName];
  [v2 removeObjectForKey:v3];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = @"WBSReaderFontDownloadNotificationUserInfoKey";
  v9[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v4 postNotificationName:@"WBSReaderFontDownloadDidFailNotification" object:v6 userInfo:v7];
}

void __45__WBSReaderFontDownloadManager_downloadFont___block_invoke_cold_1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Downloading %{public}@ failed: %{public}@", buf, 0x16u);
}

@end