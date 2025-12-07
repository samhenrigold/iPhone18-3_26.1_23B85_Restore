@interface _WKWebPushSubscriptionData
- (NSData)applicationServerKey;
- (NSData)authenticationSecret;
- (NSData)ecdhPublicKey;
- (NSURL)endpoint;
- (Ref<API::WebPushSubscriptionData,)_protectedData;
- (void)dealloc;
@end

@implementation _WKWebPushSubscriptionData

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v5 = *&self[1]._data.m_storage.data[24];
    if (v5)
    {
      *&self[1]._data.m_storage.data[24] = 0;
      *&self[1]._data.m_storage.data[32] = 0;
      WTF::fastFree(v5, v4);
    }

    v6 = *&self[1]._data.m_storage.data[8];
    if (v6)
    {
      *&self[1]._data.m_storage.data[8] = 0;
      *&self[1]._data.m_storage.data[16] = 0;
      WTF::fastFree(v6, v4);
    }

    isa = self[1].super.isa;
    if (isa)
    {
      self[1].super.isa = 0;
      *self[1]._data.m_storage.data = 0;
      WTF::fastFree(isa, v4);
    }

    v8 = *&self->_data.m_storage.data[24];
    *&self->_data.m_storage.data[24] = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }
    }

    v9.receiver = self;
    v9.super_class = _WKWebPushSubscriptionData;
    [(_WKWebPushSubscriptionData *)&v9 dealloc];
  }
}

- (NSURL)endpoint
{
  objc_msgSend__protectedData(self, a2);
  WTF::URL::URL(v10, (v9 + 24));
  WTF::URL::createCFURL(&v11, v10);
  v3 = v11;
  v11 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v11;
    v11 = 0;
    if (v5)
    {
    }
  }

  v6 = v10[0];
  v10[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  v7 = v9;
  v9 = 0;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  return v3;
}

- (NSData)applicationServerKey
{
  if (self)
  {
    objc_msgSend__protectedData(self, a2);
    v3 = v10;
  }

  else
  {
    v3 = 0;
    v10 = 0;
  }

  v4 = *(v3 + 60);
  if (v4)
  {
    v5 = WTF::fastMalloc(v2, *(v3 + 60));
    memcpy(v5, *(v3 + 48), *(v3 + 60));
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5 length:v4];
  v8 = v6;
  if (v6)
  {
  }

  if (v5)
  {
    WTF::fastFree(v5, v7);
  }

  if (v10)
  {
    CFRelease(*(v10 + 8));
  }

  return v8;
}

- (NSData)authenticationSecret
{
  if (self)
  {
    objc_msgSend__protectedData(self, a2);
    v3 = v10;
  }

  else
  {
    v3 = 0;
    v10 = 0;
  }

  v4 = *(v3 + 92);
  if (v4)
  {
    v5 = WTF::fastMalloc(v2, *(v3 + 92));
    memcpy(v5, *(v3 + 80), *(v3 + 92));
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5 length:v4];
  v8 = v6;
  if (v6)
  {
  }

  if (v5)
  {
    WTF::fastFree(v5, v7);
  }

  if (v10)
  {
    CFRelease(*(v10 + 8));
  }

  return v8;
}

- (NSData)ecdhPublicKey
{
  if (self)
  {
    objc_msgSend__protectedData(self, a2);
    v3 = v10;
  }

  else
  {
    v3 = 0;
    v10 = 0;
  }

  v4 = *(v3 + 76);
  if (v4)
  {
    v5 = WTF::fastMalloc(v2, *(v3 + 76));
    memcpy(v5, *(v3 + 64), *(v3 + 76));
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5 length:v4];
  v8 = v6;
  if (v6)
  {
  }

  if (v5)
  {
    WTF::fastFree(v5, v7);
  }

  if (v10)
  {
    CFRelease(*(v10 + 8));
  }

  return v8;
}

- (Ref<API::WebPushSubscriptionData,)_protectedData
{
  v3 = v2;
  p_data = &self->_data;
  v5 = CFRetain(*&self->_data.m_storage.data[8]);
  *v3 = p_data;
  return v5;
}

@end