@interface CSLPRFAppViewImageProvider
- (void)retrieveImageForLauncherViewMode:(int64_t)mode size:(CGSize)size completion:(id)completion;
@end

@implementation CSLPRFAppViewImageProvider

- (void)retrieveImageForLauncherViewMode:(int64_t)mode size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18.width = width;
    v18.height = height;
    v9 = NSStringFromCGSize(v18);
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, ">>>> calling getAppViewListImage %@", buf, 0xCu);
  }

  mEMORY[0x277D2BD60] = [MEMORY[0x277D2BD60] sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__CSLPRFAppViewImageProvider_retrieveImageForLauncherViewMode_size_completion___block_invoke;
  v12[3] = &unk_278744B60;
  v13 = completionCopy;
  modeCopy = mode;
  v11 = completionCopy;
  [mEMORY[0x277D2BD60] getAppViewListImage:v12 completion:{width, height}];
}

void __79__CSLPRFAppViewImageProvider_retrieveImageForLauncherViewMode_size_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, ">>>> could not get app view list image %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x2318C26B0](*(a1 + 32));
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> got image %@, calling %@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__CSLPRFAppViewImageProvider_retrieveImageForLauncherViewMode_size_completion___block_invoke_1;
    block[3] = &unk_278744B38;
    v13 = v8;
    v9 = v5;
    v10 = *(a1 + 40);
    v12 = v9;
    v14 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __79__CSLPRFAppViewImageProvider_retrieveImageForLauncherViewMode_size_completion___block_invoke_1(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[4];
  v3 = a1[6];

  return [CSLPRFAppViewImageCache storeImage:v2 forLauncherMode:v3];
}

@end