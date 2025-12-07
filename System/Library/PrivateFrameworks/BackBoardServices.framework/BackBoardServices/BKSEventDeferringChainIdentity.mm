@interface BKSEventDeferringChainIdentity
+ (BKSEventDeferringChainIdentity)new;
+ (id)build:(id)build;
- (BKSEventDeferringChainIdentity)init;
- (BKSEventDeferringChainIdentity)initWithCoder:(id)coder;
- (BKSEventDeferringChainIdentity)initWithDisplay:(id)display environment:(id)environment;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)_initWithCopyOf:(id *)of;
- (id)didFinishProtobufDecodingWithError:(id *)error;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSEventDeferringChainIdentity

- (unint64_t)hash
{
  [(BKSHIDEventDisplay *)self->_display hash];
  [(BKSHIDEventDeferringEnvironment *)self->_environment hash];

  return BSHashPurifyNS();
}

- (id)_init
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

    v5.receiver = v1;
    v5.super_class = BKSEventDeferringChainIdentity;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSEventDeferringChainIdentity *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      objc_storeStrong(of + 2, v3[2]);
    }
  }

  return of;
}

- (id)didFinishProtobufDecodingWithError:(id *)error
{
  if (self->_display)
  {
    if (self->_environment)
    {
      selfCopy = self;
      goto LABEL_7;
    }

    v5 = MEMORY[0x1E696ABC0];
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
  }

  v6 = [v5 errorWithDomain:? code:? userInfo:?];
  v7 = v6;
  selfCopy = 0;
  *error = v6;
LABEL_7:

  return selfCopy;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v3 = [formatterCopy appendObject:? withName:?];
  v4 = [formatterCopy appendObject:? withName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableEventDeferringChainIdentity alloc];

  return [(BKSEventDeferringChainIdentity *)&v4->super.super.isa _initWithCopyOf:?];
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

- (BKSEventDeferringChainIdentity)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = BKSEventDeferringChainIdentity;
  coderCopy = coder;
  v4 = [(BKSEventDeferringChainIdentity *)&v10 init];
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

- (BKSEventDeferringChainIdentity)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [currentHandler handleFailureInFunction:? file:? lineNumber:? description:?];

  return 0;
}

- (BKSEventDeferringChainIdentity)initWithDisplay:(id)display environment:(id)environment
{
  displayCopy = display;
  environmentCopy = environment;
  _init = [(BKSEventDeferringChainIdentity *)self _init];
  if (_init)
  {
    if (!displayCopy)
    {
      displayCopy = +[BKSHIDEventDisplay nullDisplay];
    }

    objc_storeStrong(&_init->_display, displayCopy);
    objc_storeStrong(&_init->_environment, environment);
  }

  return _init;
}

void __48__BKSEventDeferringChainIdentity_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
}

+ (BKSEventDeferringChainIdentity)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [currentHandler handleFailureInFunction:? file:? lineNumber:? description:?];

  return 0;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSEventDeferringChainIdentity *)[BKSMutableEventDeferringChainIdentity alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end