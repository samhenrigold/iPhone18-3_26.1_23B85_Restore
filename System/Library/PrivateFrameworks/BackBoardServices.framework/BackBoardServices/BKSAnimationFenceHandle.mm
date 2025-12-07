@interface BKSAnimationFenceHandle
+ (id)newFenceHandleForCAFenceHandle:(id)handle;
+ (id)newFenceHandleForContext:(id)context;
- (BKSAnimationFenceHandle)init;
- (BKSAnimationFenceHandle)initWithBSXPCCoder:(id)coder;
- (BKSAnimationFenceHandle)initWithCoder:(id)coder;
- (BKSAnimationFenceHandle)initWithXPCDictionary:(id)dictionary;
- (id)_initWithCAFenceHandle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)CAPort;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BKSAnimationFenceHandle

- (void)dealloc
{
  [(CAFenceHandle *)self->_caFence invalidate];
  v3.receiver = self;
  v3.super_class = BKSAnimationFenceHandle;
  [(BKSAnimationFenceHandle *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSAnimationFenceHandle alloc];
  v5 = [(CAFenceHandle *)self->_caFence copyWithZone:?];
  v6 = [(BKSAnimationFenceHandle *)v4 _initWithCAFenceHandle:?];

  return v6;
}

- (BKSAnimationFenceHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  getCAFenceHandleClass();
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];

  v6 = [(BKSAnimationFenceHandle *)self _initWithCAFenceHandle:?];
  return v6;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  createXPCRepresentation = [(CAFenceHandle *)self->_caFence createXPCRepresentation];
  if (createXPCRepresentation)
  {
    [coderCopy encodeXPCObject:? forKey:?];
  }
}

- (BKSAnimationFenceHandle)initWithBSXPCCoder:(id)coder
{
  v4 = [coder decodeXPCObjectOfType:? forKey:?];
  v5 = [getCAFenceHandleClass() handleFromXPCRepresentation:?];
  v6 = [(BKSAnimationFenceHandle *)self _initWithCAFenceHandle:?];

  return v6;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    xdict = dictionaryCopy;
    createXPCRepresentation = [(CAFenceHandle *)self->_caFence createXPCRepresentation];
    if (createXPCRepresentation)
    {
      xpc_dictionary_set_value(xdict, "f", createXPCRepresentation);
    }

    dictionaryCopy = xdict;
  }
}

- (BKSAnimationFenceHandle)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  CAFenceHandleClass = getCAFenceHandleClass();
  if (dictionaryCopy)
  {
    v6 = xpc_dictionary_get_value(dictionaryCopy, "f");
  }

  else
  {
    v6 = 0;
  }

  v7 = [CAFenceHandleClass handleFromXPCRepresentation:?];
  v8 = [(BKSAnimationFenceHandle *)self _initWithCAFenceHandle:?];

  if (dictionaryCopy)
  {
  }

  return v8;
}

- (unsigned)CAPort
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  [(CAFenceHandle *)self->_caFence accessMachPort:?];
  v2 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __33__BKSAnimationFenceHandle_CAPort__block_invoke(uint64_t result, int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  return result;
}

- (id)_initWithCAFenceHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = BKSAnimationFenceHandle;
  v6 = [(BKSAnimationFenceHandle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_caFence, handle);
  }

  return v7;
}

- (BKSAnimationFenceHandle)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:objc_opt_class() object:? file:? lineNumber:? description:?];

  return 0;
}

+ (id)newFenceHandleForCAFenceHandle:(id)handle
{
  handleCopy = handle;
  v4 = [[BKSAnimationFenceHandle alloc] _initWithCAFenceHandle:?];

  return v4;
}

+ (id)newFenceHandleForContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
  }

  newFenceFromDefaultServer = [getCAFenceHandleClass() newFenceFromDefaultServer];
  [contextCopy addFence:?];
  v5 = [BKSAnimationFenceHandle newFenceHandleForCAFenceHandle:?];

  return v5;
}

@end