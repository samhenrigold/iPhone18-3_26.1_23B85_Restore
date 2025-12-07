@interface LAContextProvider
- (LAContextProvider)initWithTargetUID:(unsigned int)d;
- (LAContextProvider)initWithTargetUIDRef:(id)ref;
- (id)createContext;
@end

@implementation LAContextProvider

- (LAContextProvider)initWithTargetUID:(unsigned int)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&d];
  v5 = [(LAContextProvider *)self initWithTargetUIDRef:v4];

  return v5;
}

- (LAContextProvider)initWithTargetUIDRef:(id)ref
{
  refCopy = ref;
  v9.receiver = self;
  v9.super_class = LAContextProvider;
  v6 = [(LAContextProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uidRef, ref);
  }

  return v7;
}

- (id)createContext
{
  uidRef = self->_uidRef;
  if (uidRef)
  {
    intValue = [(NSNumber *)uidRef intValue];
    v3 = [[LAContext alloc] initWithExternalizedContext:0 userSession:&intValue];
  }

  else
  {
    v3 = objc_alloc_init(LAContext);
  }

  return v3;
}

@end