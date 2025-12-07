@interface BKSHIDEventDeferringChainObserverPredicate
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDEventDeferringChainObserverPredicate)init;
- (BKSHIDEventDeferringChainObserverPredicate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringChainObserverPredicate

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventDeferringChainObserverPredicate *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      objc_storeStrong(of + 2, v3[2]);
    }
  }

  return of;
}

- (void)_init
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];
      }
    }

    v4 = +[BKSHIDEventDisplay nullDisplay];
    v5 = v1[1];
    v1[1] = v4;

    v6 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
    v7 = v1[2];
    v1[2] = v6;

    v9.receiver = v1;
    v9.super_class = BKSHIDEventDeferringChainObserverPredicate;
    return objc_msgSendSuper2(&v9, sel_init);
  }

  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringChainObserverPredicate alloc];

  return [(BKSHIDEventDeferringChainObserverPredicate *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = equalCopy;
    if (BSEqualObjects())
    {
      v5 = BSEqualObjects();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  [(BKSHIDEventDisplay *)self->_display hash];
  [(BKSHIDEventDeferringEnvironment *)self->_environment hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self->_display)
  {
    [coderCopy encodeObject:? forKey:?];
    coderCopy = v5;
  }

  if (self->_environment)
  {
    [v5 encodeObject:? forKey:?];
    coderCopy = v5;
  }
}

- (BKSHIDEventDeferringChainObserverPredicate)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = BKSHIDEventDeferringChainObserverPredicate;
  coderCopy = coder;
  v4 = [(BKSHIDEventDeferringChainObserverPredicate *)&v10 init];
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:v10.receiver forKey:v10.super_class];
  display = v4->_display;
  v4->_display = v5;

  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];

  environment = v4->_environment;
  v4->_environment = v7;

  return v4;
}

- (BKSHIDEventDeferringChainObserverPredicate)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [currentHandler handleFailureInFunction:? file:? lineNumber:? description:?];

  return 0;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [currentHandler handleFailureInFunction:? file:? lineNumber:? description:?];

  return 0;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSHIDEventDeferringChainObserverPredicate *)[BKSMutableHIDEventDeferringChainObserverPredicate alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end