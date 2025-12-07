@interface _SFBSKWebClipCache
+ (id)sharedWebClipCache;
- (void)_reloadWebClips;
- (void)_setWebClipURLs:(id *)ls;
@end

@implementation _SFBSKWebClipCache

+ (id)sharedWebClipCache
{
  if (+[_SFBSKWebClipCache sharedWebClipCache]::once != -1)
  {
    +[_SFBSKWebClipCache sharedWebClipCache];
  }

  v3 = +[_SFBSKWebClipCache sharedWebClipCache]::cache;

  return v3;
}

- (void)_reloadWebClips
{
  if (self)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXWebApp(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_DEFAULT, "Fetching web clips", buf, 2u);
    }

    v4 = MEMORY[0x1E698F588];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37___SFBSKWebClipCache__reloadWebClips__block_invoke;
    v6[3] = &unk_1E8490B90;
    v6[4] = self;
    selfCopy = self;
    [v4 fetchWebClipsURLWithCompletionHandler:v6];
  }
}

- (void)_setWebClipURLs:(id *)ls
{
  v4 = a2;
  if (ls && ([ls[1] isEqualToArray:v4] & 1) == 0)
  {
    objc_storeStrong(ls + 1, a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38___SFBSKWebClipCache__setWebClipURLs___block_invoke;
    block[3] = &unk_1E8490658;
    block[4] = ls;
    lsCopy = ls;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end