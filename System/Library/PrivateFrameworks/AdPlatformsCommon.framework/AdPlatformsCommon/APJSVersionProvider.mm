@interface APJSVersionProvider
- (APJSVersionProvider)init;
- (id)getJetPackVersion;
@end

@implementation APJSVersionProvider

- (APJSVersionProvider)init
{
  v6.receiver = self;
  v6.super_class = APJSVersionProvider;
  v2 = [(APJSVersionProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC17AdPlatformsCommon17JSVersionProvider);
    versionProvider = v2->_versionProvider;
    v2->_versionProvider = v3;
  }

  return v2;
}

- (id)getJetPackVersion
{
  v3 = objc_msgSend_versionProvider(self, a2, v2);
  v6 = objc_msgSend_getJetPackVersion(v3, v4, v5);

  return v6;
}

@end