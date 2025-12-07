@interface MDLPathAssetResolver
- (BOOL)canResolveAssetNamed:(id)named;
- (MDLPathAssetResolver)initWithPath:(NSString *)path;
- (id)resolveAssetNamed:(id)named;
- (void)setPath:(NSString *)path;
@end

@implementation MDLPathAssetResolver

- (void)setPath:(NSString *)path
{
  v25 = path;
  if (objc_msgSend_hasSuffix_(v25, v4, @"/", v5, v10, v11, v12, v13, v6, v7, v8, v9))
  {
    v23 = v25;
  }

  else
  {
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%@/", v14, v19, v20, v21, v22, v15, v16, v17, v18, v25);
  }

  v24 = self->_path;
  self->_path = v23;
}

- (MDLPathAssetResolver)initWithPath:(NSString *)path
{
  v5 = path;
  v10.receiver = self;
  v10.super_class = MDLPathAssetResolver;
  v6 = [(MDLPathAssetResolver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
    v8 = v7;
  }

  return v7;
}

- (BOOL)canResolveAssetNamed:(id)named
{
  namedCopy = named;
  if (namedCopy && self->_path)
  {
    v15 = objc_msgSend_resolveAssetNamed_(self, v4, namedCopy, v5, v11, v12, v13, v14, v6, v7, v8, v9);
    v16 = v15 != 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)resolveAssetNamed:(id)named
{
  namedCopy = named;
  v14 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v5, self->_path, 1, v10, v11, v12, v13, v6, v7, v8, v9);
  v25 = objc_msgSend_URLByAppendingPathComponent_(v14, v15, namedCopy, v16, v21, v22, v23, v24, v17, v18, v19, v20);

  return v25;
}

@end