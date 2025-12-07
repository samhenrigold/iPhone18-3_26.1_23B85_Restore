@interface NSURL(SSBExtras)
- (BOOL)ssb_isSafeURL;
- (CFURLRef)ssb_canonicalizeURL;
- (id)ssb_hashes;
- (void)ssb_hasUserInfo;
@end

@implementation NSURL(SSBExtras)

- (void)ssb_hasUserInfo
{
  result = [self scheme];
  if (result)
  {
    v3 = result;
    if ([result caseInsensitiveCompare:@"http"])
    {
      v4 = [v3 caseInsensitiveCompare:@"https"];

      if (v4)
      {
        return 0;
      }
    }

    else
    {
    }

    return (CFURLGetByteRangeForComponent(self, kCFURLComponentUserInfo, 0).location != -1);
  }

  return result;
}

- (BOOL)ssb_isSafeURL
{
  if ([self isFileURL])
  {
    return 1;
  }

  host = [self host];
  v2 = [host length] == 0;

  return v2;
}

- (CFURLRef)ssb_canonicalizeURL
{
  Backend::Google::CanonicalURL::canonicalizeURL(self, &__p);
  v2 = CFURLCreateWithBytes(0, __p, v5 - __p, 0x8000100u, 0);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return v2;
}

- (id)ssb_hashes
{
  Backend::Google::CanonicalURL::canonicalizeURL(self, v9);
  Backend::Google::CanonicalURL::computeHashes(v9, &__p);
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v8 - __p) >> 5];
  v3 = __p;
  v4 = v8;
  if (__p != v8)
  {
    do
    {
      v5 = [MEMORY[0x277CBEA90] dataWithBytes:v3 length:32];
      [v2 addObject:v5];

      v3 += 32;
    }

    while (v3 != v4);
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return v2;
}

@end