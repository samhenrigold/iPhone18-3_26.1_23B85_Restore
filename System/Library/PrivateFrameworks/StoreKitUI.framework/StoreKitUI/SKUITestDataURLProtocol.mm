@interface SKUITestDataURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request;
+ (id)canonicalRequestForRequest:(id)request;
- (void)startLoading;
@end

@implementation SKUITestDataURLProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  requestCopy = request;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITestDataURLProtocol *)v4 canInitWithRequest:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [requestCopy URL];
  scheme = [v13 scheme];

  LOBYTE(v13) = objc_msgSend_isEqualToString_(scheme);
  objc_autoreleasePoolPop(v12);

  return v13;
}

+ (id)canonicalRequestForRequest:(id)request
{
  requestCopy = request;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITestDataURLProtocol *)v4 canonicalRequestForRequest:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  return requestCopy;
}

+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITestDataURLProtocol *)v4 requestIsCacheEquivalent:v5 toRequest:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  return 0;
}

- (void)startLoading
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "SKUIUTTypeCopyPreferredTagWithClass";
}

+ (void)canInitWithRequest:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUITestDataURLProtocol canInitWithRequest:]";
}

+ (void)canonicalRequestForRequest:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUITestDataURLProtocol canonicalRequestForRequest:]";
}

+ (void)requestIsCacheEquivalent:(uint64_t)a3 toRequest:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUITestDataURLProtocol requestIsCacheEquivalent:toRequest:]";
}

@end