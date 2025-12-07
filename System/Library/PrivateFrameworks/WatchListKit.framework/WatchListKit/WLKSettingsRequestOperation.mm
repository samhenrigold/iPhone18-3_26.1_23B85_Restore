@interface WLKSettingsRequestOperation
+ (id)_requestURL:(id *)l;
- (WLKSettingsRequestOperation)init;
- (void)prepareURLRequest:(id)request;
- (void)processResponse;
@end

@implementation WLKSettingsRequestOperation

- (WLKSettingsRequestOperation)init
{
  v3.receiver = self;
  v3.super_class = WLKSettingsRequestOperation;
  return [(WLKNetworkRequestOperation *)&v3 initWithURLRequest:0 options:0];
}

- (void)prepareURLRequest:(id)request
{
  requestCopy = request;
  v15 = 0;
  v5 = [objc_opt_class() _requestURL:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    v8 = WLKNetworkSignpostLogObject(v6);
    v9 = os_signpost_id_make_with_pointer(v8, self);

    v11 = WLKNetworkSignpostLogObject(v10);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Settings.URLRequest", &unk_272A8884E, &v14, 2u);
    }

    v13 = [MEMORY[0x277CBAB50] requestWithURL:v5];
    [v13 setTimeoutInterval:5.0];
    requestCopy[2](requestCopy, v13, 0);
  }

  else
  {
    (requestCopy)[2](requestCopy, 0, v6);
  }
}

- (void)processResponse
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = WLKNetworkSignpostLogObject(self);
  v4 = os_signpost_id_make_with_pointer(v3, self);

  v6 = WLKNetworkSignpostLogObject(v5);
  v7 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_END, v4, "Settings.URLRequest", &unk_272A8884E, &v13, 2u);
  }

  v8 = objc_alloc_init(WLKDictionaryResponseProcessor);
  data = [(WLKNetworkRequestOperation *)self data];
  v10 = [(WLKDictionaryResponseProcessor *)v8 processResponseData:data error:0];

  objc_storeStrong(&self->_response, v10);
  v11 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    response = self->_response;
    v13 = 138412290;
    v14 = response;
    _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKSettingsRequestOperation - response: %@", &v13, 0xCu);
  }
}

+ (id)_requestURL:(id *)l
{
  v3 = [MEMORY[0x277D6C480] app];
  v4 = [v3 cachedURLForKey:kBagKeyGetWatchListSettings];

  return v4;
}

@end