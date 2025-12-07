@interface GDFileOpen
+ (BOOL)setFileLimitWithError:(id *)error;
+ (int)openWithPath:(id)path flags:(int)flags protection:(int)protection mode:(int)mode errorCode:(int *)code;
@end

@implementation GDFileOpen

+ (BOOL)setFileLimitWithError:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  v26.rlim_cur = 0;
  v26.rlim_max = 0;
  if (getrlimit(8, &v26))
  {
    if (!error)
    {
      return 0;
    }

    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    v11 = objc_msgSend_initWithFormat_(v5, v9, @"Unable to get rlimit [%i] %s", v10, v6, v8);
    v12 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v28 = v11;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, &v28, &v27, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v12, v15, @"com.apple.IntelligencePlatform.IntelligencePlatformCompute", 2, v14);
    *error = LABEL_4:;

    objc_autoreleasePoolPop(v4);
    return 0;
  }

  if (v26.rlim_cur <= 0x4FF)
  {
    v26.rlim_cur = 1280;
    if (setrlimit(8, &v26))
    {
      if (!error)
      {
        return 0;
      }

      v4 = objc_autoreleasePoolPush();
      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      v18 = *__error();
      v19 = __error();
      v20 = strerror(*v19);
      v11 = objc_msgSend_initWithFormat_(v17, v21, @"Unable to set rlimit [%i] %s", v22, v18, v20);
      v23 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v30[0] = v11;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v30, &v29, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"com.apple.IntelligencePlatform.IntelligencePlatformCompute", 1, v14);
      goto LABEL_4;
    }
  }

  return 1;
}

+ (int)openWithPath:(id)path flags:(int)flags protection:(int)protection mode:(int)mode errorCode:(int *)code
{
  v8 = *&mode;
  pathCopy = path;
  v15 = objc_msgSend_UTF8String(pathCopy, v12, v13, v14);
  v16 = open_dprotected_np(v15, flags, protection, 0, v8);
  v17 = v16;
  if (code && v16 < 0)
  {
    *code = *__error();
  }

  return v17;
}

@end