@interface NDOImageManager
+ (NDOImageManager)sharedManager;
- (id)fetchImageWithURLString:(id)string completion:(id)completion;
- (id)initPrivate;
@end

@implementation NDOImageManager

+ (NDOImageManager)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__NDOImageManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_shared;

  return v2;
}

uint64_t __32__NDOImageManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_shared = [objc_alloc(*(a1 + 32)) initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v6.receiver = self;
  v6.super_class = NDOImageManager;
  v2 = [(NDOImageManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    imageCache = v2->_imageCache;
    v2->_imageCache = v3;
  }

  return v2;
}

- (id)fetchImageWithURLString:(id)string completion:(id)completion
{
  stringCopy = string;
  completionCopy = completion;
  imageCache = [(NDOImageManager *)self imageCache];
  v9 = [imageCache objectForKey:stringCopy];

  if (v9)
  {
    completionCopy[2](completionCopy, v9, 0);
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
    if (v11)
    {
      mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke;
      v19[3] = &unk_279978310;
      v21 = completionCopy;
      v19[4] = self;
      v20 = stringCopy;
      v10 = [mEMORY[0x277CCAD30] dataTaskWithURL:v11 completionHandler:v19];

      [v10 resume];
      v13 = v21;
    }

    else
    {
      v14 = _NDOLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [NDOImageManager fetchImageWithURLString:completion:];
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      bundleIdentifier = [v16 bundleIdentifier];
      v13 = [v15 errorWithDomain:bundleIdentifier code:0 userInfo:0];

      (completionCopy)[2](completionCopy, 0, v13);
      v10 = 0;
    }
  }

  return v10;
}

void __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _NDOLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_5;
    block[3] = &unk_2799782E8;
    v39 = *(a1 + 48);
    v38 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v11 = v39;
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D755B8] imageWithData:v7];
    if (v11)
    {
      v12 = [*(a1 + 32) imageCache];
      [v12 setObject:v11 forKey:*(a1 + 40)];

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_2;
      v28[3] = &unk_2799782E8;
      v30 = *(a1 + 48);
      v29 = v11;
      dispatch_async(MEMORY[0x277D85CD0], v28);

      v13 = v30;
    }

    else
    {
      v20 = _NDOLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_cold_2();
      }

      v40[0] = @"data";
      v40[1] = @"response";
      v41[0] = v7;
      v21 = v8;
      if (!v8)
      {
        v21 = [MEMORY[0x277CBEB68] null];
      }

      v41[1] = v21;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      if (!v8)
      {
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 bundleIdentifier];
      v25 = [v22 errorWithDomain:v24 code:2 userInfo:v13];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_14;
      v31[3] = &unk_2799782E8;
      v26 = *(a1 + 48);
      v32 = v25;
      v33 = v26;
      v27 = v25;
      dispatch_async(MEMORY[0x277D85CD0], v31);
    }
  }

  else
  {
    v14 = _NDOLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_cold_3();
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 bundleIdentifier];
    v18 = [v15 errorWithDomain:v17 code:1 userInfo:0];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_6;
    v34[3] = &unk_2799782E8;
    v19 = *(a1 + 48);
    v35 = v18;
    v36 = v19;
    v11 = v18;
    dispatch_async(MEMORY[0x277D85CD0], v34);
  }
}

@end