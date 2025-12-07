@interface IMMomentShareCache
+ (IMMomentShareCache)sharedInstance;
- (IMMomentShareCache)init;
- (id)_momentShareForURLString:(id)string error:(id *)error;
- (id)momentShareForURLString:(id)string error:(id *)error;
- (void)_ensureLibraryRegistration;
- (void)_processFetchedMomentShare:(id)share forURLString:(id)string error:(id)error completionHandlers:(id)handlers;
- (void)momentShareForURLString:(id)string completionHandler:(id)handler;
- (void)photoLibraryDidChange:(id)change;
@end

@implementation IMMomentShareCache

- (IMMomentShareCache)init
{
  v13.receiver = self;
  v13.super_class = IMMomentShareCache;
  v2 = [(IMMomentShareCache *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cache = v2->_cache;
    v2->_cache = v5;

    v7 = dispatch_queue_create("com.apple.messages.MomentShareLibraryRegistration", 0);
    libraryRegistrationQueue = v2->_libraryRegistrationQueue;
    v2->_libraryRegistrationQueue = v7;

    v9 = v2->_libraryRegistrationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83E199C;
    block[3] = &unk_1E780FCB0;
    v12 = v2;
    dispatch_async(v9, block);
  }

  return v2;
}

+ (IMMomentShareCache)sharedInstance
{
  if (qword_1EB2EA0F8 != -1)
  {
    sub_1A84E49B0();
  }

  v3 = qword_1ED767878;

  return v3;
}

- (void)momentShareForURLString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [(NSMutableDictionary *)self->_completionHandlers objectForKeyedSubscript:stringCopy];
  if ([v8 count])
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E49C4();
    }

    v10 = _Block_copy(handlerCopy);
    [v8 addObject:v10];
  }

  else
  {
    v22 = 0;
    v11 = [(IMMomentShareCache *)self _momentShareForURLString:stringCopy error:&v22];
    v12 = v22;
    v10 = v12;
    if (v11)
    {
      (*(handlerCopy + 2))(handlerCopy, v11, 0);
    }

    else if (IMMomentShareCacheErrorIsPermanent(v12))
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v10);
    }

    else
    {
      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(NSMutableDictionary *)self->_completionHandlers setObject:v8 forKeyedSubscript:stringCopy];
      }

      v13 = _Block_copy(handlerCopy);
      [v8 addObject:v13];

      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1A84E4A2C();
      }

      v15 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
      [(IMMomentShareCache *)self _ensureLibraryRegistration];
      sharedMomentSharePhotoLibrary = [sub_1A83E1A48() sharedMomentSharePhotoLibrary];
      librarySpecificFetchOptions = [sharedMomentSharePhotoLibrary librarySpecificFetchOptions];

      v18 = sub_1A83E1F6C();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A83E204C;
      v19[3] = &unk_1E7814CA0;
      v19[4] = self;
      v20 = stringCopy;
      v8 = v8;
      v21 = v8;
      [v18 fetchMomentShareFromShareURL:v15 options:librarySpecificFetchOptions completionHandler:v19];
    }
  }
}

- (id)momentShareForURLString:(id)string error:(id *)error
{
  stringCopy = string;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = [(NSMutableDictionary *)self->_completionHandlers objectForKeyedSubscript:stringCopy];
  if (![v7 count])
  {
    v13 = 0;
    v10 = [(IMMomentShareCache *)self _momentShareForURLString:stringCopy error:&v13];
    v9 = v13;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E4A94();
  }

  v9 = sub_1A83E22A4(-1000, 0);
  v10 = 0;
  if (error)
  {
LABEL_7:
    if (!v10)
    {
      v11 = v9;
      *error = v9;
    }
  }

LABEL_9:

  return v10;
}

- (void)_ensureLibraryRegistration
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!self->_hasRegisteredForLibraryChanges)
  {
    libraryRegistrationQueue = self->_libraryRegistrationQueue;

    dispatch_sync(libraryRegistrationQueue, &unk_1F1B6FD80);
  }
}

- (id)_momentShareForURLString:(id)string error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1A8259CC0;
  v37 = sub_1A825AF8C;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1A8259CC0;
  v31 = sub_1A825AF8C;
  v32 = 0;
  v7 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:stringCopy];
  v8 = v7;
  if (v7)
  {
    first = [v7 first];
    if (first)
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = v10;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          uuid = [first uuid];
          sub_1A84E4AFC(uuid, stringCopy, buf, v11);
        }
      }

      v13 = v34;
      first = first;
      second = v13[5];
      v13[5] = first;
    }

    else
    {
      second = [v8 second];
      if (second)
      {
        v21 = IMLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v41 = second;
          v42 = 2112;
          v43 = stringCopy;
          _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_DEFAULT, "Returning cached permanent error: %@, for URL: %@", buf, 0x16u);
        }

        objc_storeStrong(v28 + 5, second);
      }
    }
  }

  else
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E4B64();
    }

    first = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
    [(IMMomentShareCache *)self _ensureLibraryRegistration];
    sharedMomentSharePhotoLibrary = [sub_1A83E1A48() sharedMomentSharePhotoLibrary];
    librarySpecificFetchOptions = [sharedMomentSharePhotoLibrary librarySpecificFetchOptions];

    v26 = 0;
    v18 = [sub_1A83E1F6C() fetchLocalMomentShareFromShareURL:first error:&v26 options:librarySpecificFetchOptions];
    second = v26;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1A83E281C;
    v25[3] = &unk_1E7814CC8;
    v25[4] = &v33;
    v25[5] = &v27;
    v19 = _Block_copy(v25);
    v39 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    [(IMMomentShareCache *)self _processFetchedMomentShare:v18 forURLString:stringCopy error:second completionHandlers:v20];
  }

  v22 = v34[5];
  if (error && !v22)
  {
    *error = v28[5];
    v22 = v34[5];
  }

  v23 = v22;

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v23;
}

- (void)_processFetchedMomentShare:(id)share forURLString:(id)string error:(id)error completionHandlers:(id)handlers
{
  shareCopy = share;
  stringCopy = string;
  errorCopy = error;
  handlersCopy = handlers;
  if (shareCopy)
  {
    v14 = sub_1A83E2B6C(shareCopy);
    [(NSMutableDictionary *)self->_cache setObject:v14 forKeyedSubscript:stringCopy];

    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E4BCC(shareCopy);
    }

    v16 = shareCopy;
    v17 = 0;
  }

  else
  {
    v18 = errorCopy;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v19 = off_1EB2EA670;
    v39 = off_1EB2EA670;
    if (!off_1EB2EA670)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = sub_1A83E32A8;
      v34 = &unk_1E7811770;
      v35 = &v36;
      v20 = sub_1A83E32F8();
      v37[3] = dlsym(v20, "PXIsMomentShareErrorPermanent");
      off_1EB2EA670 = *(v35[1] + 24);
      v19 = v37[3];
    }

    _Block_object_dispose(&v36, 8);
    if (!v19)
    {
      sub_1A84E4CE0();
    }

    v21 = v19(v18);

    if (v21)
    {
      v22 = -1001;
    }

    else
    {
      v22 = -1000;
    }

    v23 = sub_1A83E22A4(v22, v18);
    v17 = v23;
    if (v21)
    {
      v24 = sub_1A83E2BC0(v23);
      [(NSMutableDictionary *)self->_cache setObject:v24 forKeyedSubscript:stringCopy];
    }

    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E4C64();
    }
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1A83E2C14;
  v28[3] = &unk_1E7814CF0;
  v29 = shareCopy;
  v30 = v17;
  v26 = v17;
  v27 = shareCopy;
  [handlersCopy enumerateObjectsUsingBlock:v28];
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83E2CC4;
  v6[3] = &unk_1E7810140;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

@end