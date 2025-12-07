@interface TTSRegexCache
+ (id)sharedInstance;
- (TTSRegexCache)init;
- (id)regexForString:(id)string atStart:(BOOL)start;
@end

@implementation TTSRegexCache

+ (id)sharedInstance
{
  if (qword_1ED970EA0 != -1)
  {
    sub_1A9579C24();
  }

  v3 = qword_1ED970410;

  return v3;
}

- (TTSRegexCache)init
{
  v5.receiver = self;
  v5.super_class = TTSRegexCache;
  v2 = [(TTSRegexCache *)&v5 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(TTSRegexCache *)v2 setCache:dictionary];

    v2->_regexCacheLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)regexForString:(id)string atStart:(BOOL)start
{
  startCopy = start;
  stringCopy = string;
  stringCopy = stringCopy;
  if (startCopy)
  {
    stringCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@", stringCopy];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1A936B660;
  v23 = sub_1A936B670;
  v24 = 0;
  v16[1] = MEMORY[0x1E69E9820];
  v16[2] = 3221225472;
  v16[3] = sub_1A936B678;
  v16[4] = &unk_1E7880DF8;
  v18 = &v19;
  v16[5] = self;
  v8 = stringCopy;
  v17 = v8;
  AX_PERFORM_WITH_LOCK();
  v9 = v20[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v16[0] = 0;
    v11 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v8 options:1 error:v16];
    v12 = v16[0];
    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A9579C38(v12);
      }

      v10 = 0;
    }

    else
    {
      v14 = v11;
      v15 = v8;
      AX_PERFORM_WITH_LOCK();
      v10 = v14;
    }
  }

  _Block_object_dispose(&v19, 8);

  return v10;
}

@end