@interface BKSHIDHapticFeedbackRequest
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDHapticFeedbackRequest)init;
- (BKSHIDHapticFeedbackRequest)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDHapticFeedbackRequest

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    of = [(BKSHIDHapticFeedbackRequest *)of _init];
    if (of)
    {
      v4 = [v3[1] copy];
      v5 = of[1];
      of[1] = v4;

      *(of + 1) = *(v3 + 1);
      objc_storeStrong(of + 4, v3[4]);
      of[5] = v3[5];
    }
  }

  return of;
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
    v5.super_class = BKSHIDHapticFeedbackRequest;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendObject:? withName:?];
  v5 = NSStringFromBKSHIDHapticFeedbackRequestDeviceType(self->_deviceType);
  v6 = [formatterCopy appendObject:? withName:?];

  v7 = [formatterCopy appendUInt64:? withName:? format:?];
  v8 = [formatterCopy appendObject:? withName:?];
  v9 = [formatterCopy appendInt64:? withName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDHapticFeedbackRequest alloc];

  return [(BKSHIDHapticFeedbackRequest *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = BSEqualObjects() && v5[2] == self->_deviceType && v5[3] == self->_senderID && BSEqualObjects() && v5[5] == self->_timestamp;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  [(NSString *)self->_pattern hash];
  [(NSNumber *)self->_powerSourceID hash];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [v3 hash];

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  [v4 hash];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  [v5 hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_pattern)
  {
    [coderCopy encodeObject:? forKey:?];
  }

  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
  if (self->_powerSourceID)
  {
    [coderCopy encodeObject:? forKey:?];
  }

  [coderCopy encodeInt64:? forKey:?];
}

- (BKSHIDHapticFeedbackRequest)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = BKSHIDHapticFeedbackRequest;
  coderCopy = coder;
  v4 = [(BKSHIDHapticFeedbackRequest *)&v11 init];
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:v11.receiver forKey:v11.super_class];
  pattern = v4->_pattern;
  v4->_pattern = v5;

  v4->_deviceType = [coderCopy decodeIntegerForKey:?];
  v4->_senderID = [coderCopy decodeInt64ForKey:?];
  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];
  powerSourceID = v4->_powerSourceID;
  v4->_powerSourceID = v7;

  v9 = [coderCopy decodeInt64ForKey:?];
  v4->_timestamp = v9;
  return v4;
}

- (BKSHIDHapticFeedbackRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [currentHandler handleFailureInFunction:? file:? lineNumber:? description:?];

  return 0;
}

void __45__BKSHIDHapticFeedbackRequest_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
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
  _init = [(BKSHIDHapticFeedbackRequest *)[BKSMutableHIDHapticFeedbackRequest alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end