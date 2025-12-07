@interface SiriNLUMarisaTrie
- (BOOL)lookupRow:(id)row outIdx:(int64_t *)idx;
- (BOOL)reverseLookupKey:(int)key dataLength:(unint64_t)length resultBlock:(id)block;
- (SiriNLUMarisaTrie)init;
- (SiriNLUMarisaTrie)initWithURL:(id)l;
- (id).cxx_construct;
- (id)reverseLookupRow:(int)row;
- (void)addKey:(id)key payload:(id)payload;
- (void)addRow:(id)row;
- (void)enumerateAllEntriesWithBlock:(id)block;
- (void)enumerateAllRowsWithBlock:(id)block;
- (void)lookupKey:(id)key resultBlock:(id)block;
- (void)lookupPrefix:(id)prefix resultBlock:(id)block;
- (void)writeToURL:(id)l;
@end

@implementation SiriNLUMarisaTrie

- (id).cxx_construct
{
  marisa::Trie::Trie(&self->trie);
  marisa::Keyset::Keyset(&self->keyset);
  return self;
}

- (BOOL)reverseLookupKey:(int)key dataLength:(unint64_t)length resultBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  marisa::Agent::Agent(v13);
  marisa::Agent::set_query(v13);
  marisa::Trie::reverse_lookup(&self->trie, v13);
  v8 = v14;
  v9 = v15;
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v14 length:v15 + ~length encoding:4];
  v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 + v9 - length length:length];
  blockCopy[2](blockCopy, v10, v11);

  marisa::Agent::~Agent(v13);
  return 1;
}

- (id)reverseLookupRow:(int)row
{
  v9 = *MEMORY[0x277D85DE8];
  marisa::Agent::Agent(v6);
  marisa::Agent::set_query(v6);
  marisa::Trie::reverse_lookup(&self->trie, v6);
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v7 length:v8 encoding:4];
  marisa::Agent::~Agent(v6);

  return v4;
}

- (void)lookupPrefix:(id)prefix resultBlock:(id)block
{
  prefixCopy = prefix;
  blockCopy = block;
  marisa::Agent::Agent(v19);
  marisa::Agent::set_query(v19, [prefixCopy UTF8String]);
  while (marisa::Trie::predictive_search(&self->trie, v19))
  {
    v8 = __s;
    v10 = v21;
    v9 = v22;
    v11 = strchr(__s, 255);
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    if (v11)
    {
      std::string::basic_string[abi:ne200100](&__dst, v8, v11 - v8);
    }

    else
    {
      std::string::basic_string[abi:ne200100](&__dst, v8, v10);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = __dst;
    v18 = v16;
    v12 = objc_autoreleasePoolPush();
    if (v18 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
    blockCopy[2](blockCopy, v14, v9);

    objc_autoreleasePoolPop(v12);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  marisa::Agent::~Agent(v19);
}

- (void)lookupKey:(id)key resultBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  blockCopy = block;
  v19 = keyCopy;
  marisa::Agent::Agent(v21);
  v8 = [keyCopy dataUsingEncoding:4];
  v20 = [v8 mutableCopy];

  if (v20)
  {
    v9 = [v20 length];
    *buf = 255;
    [v20 appendBytes:buf length:2];
    v10 = v20;
    marisa::Agent::set_query(v21, [v20 bytes]);
    while (marisa::Trie::predictive_search(&self->trie, v21))
    {
      v11 = v22;
      v12 = v23;
      v13 = v24;
      v14 = objc_autoreleasePoolPush();
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:v11 + v9 + 1 length:~v9 + v12];
      blockCopy[2](blockCopy, v15, v13);

      objc_autoreleasePoolPop(v14);
    }

    v16 = v20;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = OverridesLogContext;
    if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "[SiriNLUMarisaTrie lookupKey:resultBlock:]";
      v27 = 2112;
      v28 = keyCopy;
      _os_log_impl(&dword_268086000, v18, OS_LOG_TYPE_INFO, "%s [WARN]: Unable to convert NSString to UTF8 NSData. String is:%@", buf, 0x16u);
    }

    v16 = 0;
    blockCopy[2](blockCopy, 0, 0);
    objc_autoreleasePoolPop(v17);
  }

  marisa::Agent::~Agent(v21);
}

- (BOOL)lookupRow:(id)row outIdx:(int64_t *)idx
{
  rowCopy = row;
  marisa::Agent::Agent(v10);
  marisa::Agent::set_query(v10, [rowCopy UTF8String]);
  v7 = marisa::Trie::lookup(&self->trie, v10);
  v8 = v7 ^ 1;
  if (!idx)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    *idx = v10[9];
  }

  marisa::Agent::~Agent(v10);

  return v7;
}

- (void)enumerateAllRowsWithBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  marisa::Agent::Agent(v14);
  v5 = 0;
  *&v6 = 136315394;
  v13 = v6;
  while (v5 < marisa::Trie::size(&self->trie))
  {
    marisa::Agent::set_query(v14);
    marisa::Trie::reverse_lookup(&self->trie, v14);
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = objc_autoreleasePoolPush();
    std::string::basic_string[abi:ne200100](&__p, v7, v9);
    if (v19 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{p_p, v13}];
    blockCopy[2](blockCopy, v12, v8);

    if (v19 < 0)
    {
      operator delete(__p);
    }

    objc_autoreleasePoolPop(v10);
    ++v5;
  }

  marisa::Agent::~Agent(v14);
}

- (void)enumerateAllEntriesWithBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  marisa::Agent::Agent(v17);
  v5 = 0;
  *&v6 = 136315394;
  v16 = v6;
  while (v5 < marisa::Trie::size(&self->trie))
  {
    marisa::Agent::set_query(v17);
    marisa::Trie::reverse_lookup(&self->trie, v17);
    v7 = __s;
    v8 = v19;
    v9 = v20;
    v10 = strchr(__s, -1);
    v11 = objc_autoreleasePoolPush();
    v12 = v10 - v7;
    std::string::basic_string[abi:ne200100](&__p, v7, v10 - v7);
    if (v22 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{p_p, v16}];
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:&v7[v12 + 1] length:~v12 + v8];
    blockCopy[2](blockCopy, v14, v15, v9);

    if (v22 < 0)
    {
      operator delete(__p);
    }

    objc_autoreleasePoolPop(v11);
    ++v5;
  }

  marisa::Agent::~Agent(v17);
}

- (void)writeToURL:(id)l
{
  lCopy = l;
  marisa::Trie::build(&self->trie, &self->keyset);
  path = [lCopy path];
  marisa::Trie::save(&self->trie, [path UTF8String]);
}

- (void)addRow:(id)row
{
  rowCopy = row;
  uTF8String = [rowCopy UTF8String];
  v6 = strlen(uTF8String);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v10 = v6;
  if (v6)
  {
    memmove(&__dst, uTF8String, v6);
  }

  *(&__dst + v7) = 0;
  if (v10 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  marisa::Keyset::push_back(&self->keyset, p_dst, 1.0);
  if (v10 < 0)
  {
    operator delete(__dst);
  }
}

- (void)addKey:(id)key payload:(id)payload
{
  keyCopy = key;
  payloadCopy = payload;
  v8 = objc_alloc(MEMORY[0x277CBEB28]);
  v9 = [keyCopy dataUsingEncoding:4];
  v10 = [v8 initWithData:v9];

  v12 = -1;
  [v10 appendBytes:&v12 length:1];
  if (payloadCopy && [payloadCopy length])
  {
    [v10 appendData:payloadCopy];
  }

  bytes = [v10 bytes];
  [v10 length];
  marisa::Keyset::push_back(&self->keyset, bytes, 1.0);
}

- (SiriNLUMarisaTrie)init
{
  v3.receiver = self;
  v3.super_class = SiriNLUMarisaTrie;
  return [(SiriNLUMarisaTrie *)&v3 init];
}

- (SiriNLUMarisaTrie)initWithURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (v7)
  {
    v18.receiver = self;
    v18.super_class = SiriNLUMarisaTrie;
    v8 = [(SiriNLUMarisaTrie *)&v18 init];
    if (v8)
    {
      path2 = [lCopy path];
      v10 = path2;
      marisa::Trie::mmap(&v8->trie, [path2 UTF8String]);

      v11 = OverridesLogContext;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        lastPathComponent = [lCopy lastPathComponent];
        v13 = marisa::Trie::num_keys(&v8->trie);
        *buf = 136315650;
        v20 = "[SiriNLUMarisaTrie initWithURL:]";
        v21 = 2112;
        v22 = lastPathComponent;
        v23 = 2048;
        v24 = v13;
        _os_log_impl(&dword_268086000, v11, OS_LOG_TYPE_INFO, "%s OVMarisaTrie %@ loaded {count: %lu}", buf, 0x20u);
      }
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v15 = OverridesLogContext;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      path3 = [lCopy path];
      *buf = 136315394;
      v20 = "[SiriNLUMarisaTrie initWithURL:]";
      v21 = 2112;
      v22 = path3;
      _os_log_impl(&dword_268086000, v15, OS_LOG_TYPE_INFO, "%s [WARN]: Unable to locate marisa trie {path: %@}", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end