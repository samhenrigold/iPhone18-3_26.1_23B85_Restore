@interface WLKURLSessionManager
+ (id)sharedInstance;
- (WLKURLSessionManager)init;
@end

@implementation WLKURLSessionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[WLKURLSessionManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

void __38__WLKURLSessionManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = WLKStartupSignpostLogObject(a1);
  if (os_signpost_enabled(v1))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v1, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SessionManager.Init", &unk_272A8884E, buf, 2u);
  }

  v2 = objc_alloc_init(WLKURLSessionManager);
  v3 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v2;

  v5 = WLKStartupSignpostLogObject(v4);
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SessionManager.Init", &unk_272A8884E, v6, 2u);
  }
}

- (WLKURLSessionManager)init
{
  v8.receiver = self;
  v8.super_class = WLKURLSessionManager;
  v2 = [(WLKURLSessionManager *)&v8 init];
  if (v2)
  {
    v3 = +[WLKNetworkRequestUtilities defaultSessionConfiguration];
    v4 = [objc_alloc(MEMORY[0x277CEE6F0]) initWithConfiguration:v3];
    v5 = objc_alloc_init(WLKURLResponseDecoder);
    [v4 setResponseDecoder:v5];

    urlSession = v2->_urlSession;
    v2->_urlSession = v4;
  }

  return v2;
}

@end