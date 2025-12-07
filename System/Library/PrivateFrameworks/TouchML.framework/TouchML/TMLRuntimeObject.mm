@interface TMLRuntimeObject
- (BOOL)tmlHasPropertyForKey:(id)key;
- (id)valueForKey:(id)key;
- (void)registerTMLProperty:(id)property;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation TMLRuntimeObject

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = objc_getAssociatedObject(self, "pc");
  v6 = [v5 objectForKeyedSubscript:keyCopy];
  if (v6)
  {
    null = [MEMORY[0x277CBEB68] null];
    if (v6 == null)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TMLRuntimeObject;
    v9 = [(TMLRuntimeObject *)&v11 valueForKey:keyCopy];
  }

  return v9;
}

- (void)setValue:(id)value forKey:(id)key
{
  keyCopy = key;
  null = [TMLJSNil unwrap:value];
  v8 = objc_getAssociatedObject(self, "pc");
  v9 = [v8 objectForKeyedSubscript:keyCopy];
  if (v9)
  {
    if (!null)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v10 = [v8 objectForKeyedSubscript:keyCopy];
    v11 = [null isEqual:v10];

    if ((v11 & 1) == 0)
    {
      [(TMLRuntimeObject *)self willChangeValueForKey:keyCopy];
      [v8 setObject:null forKeyedSubscript:keyCopy];
      [(TMLRuntimeObject *)self didChangeValueForKey:keyCopy];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TMLRuntimeObject;
    [(TMLRuntimeObject *)&v12 setValue:null forKey:keyCopy];
  }
}

- (void)registerTMLProperty:(id)property
{
  propertyCopy = property;
  v6 = objc_getAssociatedObject(self, "pc");
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    objc_setAssociatedObject(self, "pc", v6, 1);
  }

  null = [MEMORY[0x277CBEB68] null];
  [v6 setObject:null forKeyedSubscript:propertyCopy];
}

- (BOOL)tmlHasPropertyForKey:(id)key
{
  keyCopy = key;
  v5 = objc_getAssociatedObject(self, "pc");
  v6 = [v5 objectForKeyedSubscript:keyCopy];

  if (!v6)
  {
    v7 = [TMLRuntime ensurePropertyWithKeyPath:keyCopy forObject:self writable:0];
  }

  return 1;
}

@end