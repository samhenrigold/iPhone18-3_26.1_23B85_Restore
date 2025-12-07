@interface GEOConfigProxy
@end

@implementation GEOConfigProxy

void ___GEOConfigProxy_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _proxyClass_16043;
  if (!_proxyClass_16043)
  {
    v2 = objc_opt_class();
    _proxyClass_16043 = v2;
  }

  v3 = objc_alloc_init(v2);
  v4 = _GEOConfigProxy_proxy;
  _GEOConfigProxy_proxy = v3;
}

@end