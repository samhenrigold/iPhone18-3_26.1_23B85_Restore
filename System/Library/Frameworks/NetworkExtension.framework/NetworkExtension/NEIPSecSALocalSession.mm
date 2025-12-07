@interface NEIPSecSALocalSession
- (BOOL)addLarvalSA:(id)a;
- (NEIPSecSALocalSession)initWithName:(id)name delegate:(id)delegate;
- (id)description;
@end

@implementation NEIPSecSALocalSession

- (BOOL)addLarvalSA:(id)a
{
  v16 = *MEMORY[0x1E69E9840];
  aCopy = a;
  v5 = [aCopy spi];
  if (v5)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      selfCopy = self;
      v14 = 1024;
      v15 = bswap32([aCopy spi]);
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%@ SPI is not 0, it is %X", &v12, 0x12u);
    }

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v12) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "SPI is not 0", &v12, 2u);
    }
  }

  else
  {
    v8 = arc4random();
    if (aCopy)
    {
      aCopy[5] = v8;
    }

    if (self)
    {
      Property = objc_getProperty(self, v9, 32, 1);
    }

    else
    {
      Property = 0;
    }

    [Property addObject:aCopy];
  }

  return v5 == 0;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    uniqueIndex = self->super._uniqueIndex;
  }

  else
  {
    uniqueIndex = 0;
  }

  name = [(NEIPSecSASession *)self name];
  v6 = [v3 initWithFormat:@"LocalSASession[%llu, %@]", uniqueIndex, name];

  return v6;
}

- (NEIPSecSALocalSession)initWithName:(id)name delegate:(id)delegate
{
  v10.receiver = self;
  v10.super_class = NEIPSecSALocalSession;
  v4 = [(NEIPSecSASession *)&v10 initWithName:name delegate:delegate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "[super initWithName:delegate] failed", v9, 2u);
    }
  }

  return v5;
}

@end