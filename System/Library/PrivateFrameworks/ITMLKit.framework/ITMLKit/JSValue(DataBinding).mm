@interface JSValue(DataBinding)
- (id)_ikdt_globalObject;
- (id)ikdt_prototype;
- (uint64_t)ikdt_isArray;
- (uint64_t)ikdt_isObject;
@end

@implementation JSValue(DataBinding)

- (id)ikdt_prototype
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([self isObject])
  {
    _ikdt_globalObject = [self _ikdt_globalObject];
    v3 = [_ikdt_globalObject objectForKeyedSubscript:@"getPrototypeOf"];
    v7[0] = self;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    v5 = [v3 callWithArguments:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)ikdt_isArray
{
  ikdt_prototype = [self ikdt_prototype];
  isArray = [ikdt_prototype isArray];

  return isArray;
}

- (uint64_t)ikdt_isObject
{
  ikdt_prototype = [self ikdt_prototype];
  isObject = [ikdt_prototype isObject];

  return isObject;
}

- (id)_ikdt_globalObject
{
  v0 = +[IKAppContext currentAppContext];
  jsContext = [v0 jsContext];
  v2 = [jsContext objectForKeyedSubscript:@"Object"];

  return v2;
}

@end