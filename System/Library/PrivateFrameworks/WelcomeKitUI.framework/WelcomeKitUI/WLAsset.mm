@interface WLAsset
- (BOOL)download;
- (WLAsset)initWithName:(id)name remoteURL:(id)l;
@end

@implementation WLAsset

- (WLAsset)initWithName:(id)name remoteURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = WLAsset;
  v8 = [(WLAsset *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(WLAsset *)v8 setName:nameCopy];
    [(WLAsset *)v9 setRemoteURL:lCopy];
    v10 = [@"/Library/WelcomeKit/Downloads/" stringByAppendingPathComponent:nameCopy];
    v11 = NSHomeDirectory();
    v12 = [v11 stringByAppendingPathComponent:v10];
    [(WLAsset *)v9 setLocalFile:v12];
  }

  return v9;
}

- (BOOL)download
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  stringByDeletingLastPathComponent = [(NSString *)self->_localFile stringByDeletingLastPathComponent];
  if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) != 0 || (v53[0] = 0, objc_msgSend(defaultManager, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", stringByDeletingLastPathComponent, 1, 0, v53), (v5 = v53[0]) == 0))
  {
    if ([defaultManager fileExistsAtPath:self->_localFile])
    {
      v7 = 1;
      _WLLog();
    }

    else
    {
      v8 = [MEMORY[0x277CBEBC0] URLWithString:self->_remoteURL];
      v9 = [MEMORY[0x277CCAD20] requestWithURL:v8];
      defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
      v10 = [MEMORY[0x277CCAD30] sessionWithConfiguration:?];
      v11 = dispatch_semaphore_create(0);
      v49 = 0;
      v50 = &v49;
      v51 = 0x2020000000;
      v52 = 0;
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = __Block_byref_object_copy_;
      v47 = __Block_byref_object_dispose_;
      v48 = 0;
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy_;
      v37 = __Block_byref_object_dispose_;
      v38 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __19__WLAsset_download__block_invoke;
      v27[3] = &unk_279EB8C70;
      v29 = &v43;
      v30 = &v39;
      v31 = &v33;
      v32 = &v49;
      v12 = v11;
      v28 = v12;
      v13 = [v10 downloadTaskWithRequest:v9 completionHandler:v27];
      [v13 resume];
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      v22 = v44[5];
      v23 = v34[5];
      v20 = *(v50 + 24);
      v21 = v40[3];
      _WLLog();
      if (*(v50 + 24) == 1)
      {
        v24 = v9;
        v14 = v8;
        v15 = v34[5];
        v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:{self->_localFile, v20, v21, v22, v23}];
        v26 = 0;
        v17 = [defaultManager moveItemAtURL:v15 toURL:v16 error:&v26];
        v18 = v26;
        *(v50 + 24) = v17;

        if (!*(v50 + 24) || v18)
        {
          _WLLog();
        }

        v7 = *(v50 + 24);
        v8 = v14;
        v9 = v24;
      }

      else
      {
        v7 = 0;
      }

      _Block_object_dispose(&v33, 8);
      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v43, 8);

      _Block_object_dispose(&v49, 8);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
    _WLLog();
    v7 = 0;
  }

  return v7 & 1;
}

void __19__WLAsset_download__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  *(*(*(a1 + 48) + 8) + 24) = [v8 statusCode];
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ([v8 statusCode] - 200) < 0x64;
  }

  *(*(*(a1 + 64) + 8) + 24) = v10;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end