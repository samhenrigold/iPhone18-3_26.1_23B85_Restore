@interface NUFontManager
- (BOOL)registerFontWithURL:(id)l error:(id *)error;
- (BOOL)unregisterFontAtURL:(id)l error:(id *)error;
- (NUFontManager)init;
- (unint64_t)referenceCountForFontWithURL:(id)l;
- (void)decreaseReferenceCountForFontWithURL:(id)l;
- (void)increaseReferenceCountForFontWithURL:(id)l;
- (void)unregisterFontWithURL:(id)l;
@end

@implementation NUFontManager

- (NUFontManager)init
{
  v9.receiver = self;
  v9.super_class = NUFontManager;
  v2 = [(NUFontManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
    v4 = dispatch_queue_create("com.apple.news.font.registration", v3);
    registrationQueue = v2->_registrationQueue;
    v2->_registrationQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCA940]);
    referenceCounts = v2->_referenceCounts;
    v2->_referenceCounts = v6;
  }

  return v2;
}

- (BOOL)registerFontWithURL:(id)l error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = NUSharedLog(lCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = lCopy;
    _os_log_impl(&dword_25C2D6000, v7, OS_LOG_TYPE_DEFAULT, "Registering font at URL %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x2020000000;
  v18 = 1;
  registrationQueue = [(NUFontManager *)self registrationQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__NUFontManager_registerFontWithURL_error___block_invoke;
  v12[3] = &unk_2799A3418;
  v12[4] = self;
  v13 = lCopy;
  p_buf = &buf;
  errorCopy = error;
  v9 = lCopy;
  dispatch_sync(registrationQueue, v12);

  v10 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  return v10 & 1;
}

void __43__NUFontManager_registerFontWithURL_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  Code = [*(a1 + 32) referenceCountForFontWithURL:*(a1 + 40)];
  if (!Code)
  {
    error = 0;
    Code = CTFontManagerRegisterFontsForURL(*(a1 + 40), kCTFontManagerScopeProcess, &error);
    if ((Code & 1) == 0)
    {
      Code = CFErrorGetCode(error);
      if (Code == 105 || (v3 = Code, Code == 305))
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      else
      {
        if (*(a1 + 56))
        {
          Code = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC4900] code:Code userInfo:0];
          **(a1 + 56) = Code;
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
        v4 = NUSharedLog(Code);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 40);
          *buf = 138543618;
          v10 = v5;
          v11 = 2048;
          v12 = v3;
          _os_log_impl(&dword_25C2D6000, v4, OS_LOG_TYPE_DEFAULT, "Font registration failed for font at URL %{public}@ with error code %lu", buf, 0x16u);
        }
      }
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v6 = NUSharedLog(Code);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&dword_25C2D6000, v6, OS_LOG_TYPE_DEFAULT, "Font registration succeeded for font at URL %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) increaseReferenceCountForFontWithURL:*(a1 + 40)];
  }
}

- (void)unregisterFontWithURL:(id)l
{
  lCopy = l;
  registrationQueue = [(NUFontManager *)self registrationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NUFontManager_unregisterFontWithURL___block_invoke;
  v7[3] = &unk_2799A3440;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  dispatch_sync(registrationQueue, v7);
}

- (BOOL)unregisterFontAtURL:(id)l error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = NUSharedLog(lCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = lCopy;
    _os_log_impl(&dword_25C2D6000, v6, OS_LOG_TYPE_DEFAULT, "Unregister font at URL %{public}@", buf, 0xCu);
  }

  error = 0;
  v7 = 1;
  if (!CTFontManagerUnregisterFontsForURL(lCopy, kCTFontManagerScopeProcess, &error))
  {
    Code = CFErrorGetCode(error);
    v9 = Code;
    if (!error || Code == 201)
    {
      v7 = Code == 201;
    }

    else
    {
      Code = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC4900] code:Code userInfo:0];
      v7 = 0;
      *error = Code;
    }

    v10 = NUSharedLog(Code);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = lCopy;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&dword_25C2D6000, v10, OS_LOG_TYPE_DEFAULT, "Unable to unregister font at URL %{public}@ with error %lu", buf, 0x16u);
    }
  }

  return v7;
}

- (void)increaseReferenceCountForFontWithURL:(id)l
{
  v9 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = NUSharedLog(lCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = lCopy;
    _os_log_impl(&dword_25C2D6000, v5, OS_LOG_TYPE_DEFAULT, "Increase reference count for font at URL %{public}@", &v7, 0xCu);
  }

  referenceCounts = [(NUFontManager *)self referenceCounts];
  [referenceCounts addObject:lCopy];
}

- (void)decreaseReferenceCountForFontWithURL:(id)l
{
  v10 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = NUSharedLog(lCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = lCopy;
    _os_log_impl(&dword_25C2D6000, v5, OS_LOG_TYPE_DEFAULT, "Decrease reference count for font at URL %{public}@", buf, 0xCu);
  }

  referenceCounts = [(NUFontManager *)self referenceCounts];
  [referenceCounts removeObject:lCopy];

  if ([(NUFontManager *)self shouldUnregisterFontWithURL:lCopy])
  {
    v7 = 0;
    [(NUFontManager *)self unregisterFontAtURL:lCopy error:&v7];
  }
}

- (unint64_t)referenceCountForFontWithURL:(id)l
{
  lCopy = l;
  referenceCounts = [(NUFontManager *)self referenceCounts];
  v6 = [referenceCounts countForObject:lCopy];

  return v6;
}

@end