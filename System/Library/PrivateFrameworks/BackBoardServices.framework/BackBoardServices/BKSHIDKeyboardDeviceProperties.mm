@interface BKSHIDKeyboardDeviceProperties
+ (BKSHIDKeyboardDeviceProperties)new;
+ (id)build:(id)build;
- (BKSHIDKeyboardDeviceProperties)init;
- (BKSHIDKeyboardDeviceProperties)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)_initCopyFromOriginal:(id)original;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDKeyboardDeviceProperties

- (id)_init
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v5 = NSStringFromSelector(sel__init);
          v6 = objc_opt_class();
          v7 = NSStringFromClass(v6);
          *buf = 138544642;
          v10 = v5;
          v11 = 2114;
          v12 = v7;
          v13 = 2048;
          v14 = v1;
          v15 = 2114;
          v16 = @"BKSHIDKeyboardDeviceProperties.m";
          v17 = 1024;
          v18 = 52;
          v19 = 2114;
          v20 = v4;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v4 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18639F4F4);
      }
    }

    v8.receiver = v1;
    v8.super_class = BKSHIDKeyboardDeviceProperties;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendUInt64:? withName:? format:?];
  v5 = [formatterCopy appendObject:? withName:?];
  v6 = [formatterCopy appendObject:? withName:?];
  v7 = [formatterCopy appendObject:? withName:?];
  if (self->_exclusivityIdentifier)
  {
    [formatterCopy appendString:? withName:?];
  }

  if (self->_platformInputModeConfiguration)
  {
    v8 = [formatterCopy appendObject:? withName:?];
  }

  v9 = [formatterCopy appendInteger:? withName:?];
  v10 = [formatterCopy appendInteger:? withName:?];
  v11 = [formatterCopy appendInteger:? withName:?];
  v12 = [formatterCopy appendBool:? withName:?];
  v13 = [formatterCopy appendBool:? withName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDKeyboardDeviceProperties alloc];

  return [(BKSHIDKeyboardDeviceProperties *)v4 _initCopyFromOriginal:?];
}

- (id)_initCopyFromOriginal:(id)original
{
  v3 = a2;
  if (original)
  {
    v16.receiver = original;
    v16.super_class = BKSHIDKeyboardDeviceProperties;
    v4 = objc_msgSendSuper2(&v16, sel_init);
    original = v4;
    if (v4)
    {
      v4[1] = *(v3 + 1);
      v5 = [*(v3 + 2) copy];
      v6 = *(original + 2);
      *(original + 2) = v5;

      v7 = [*(v3 + 3) copy];
      v8 = *(original + 3);
      *(original + 3) = v7;

      v9 = [*(v3 + 4) copy];
      v10 = *(original + 4);
      *(original + 4) = v9;

      v11 = [*(v3 + 5) copy];
      v12 = *(original + 5);
      *(original + 5) = v11;

      v13 = [*(v3 + 6) copy];
      v14 = *(original + 6);
      *(original + 6) = v13;

      *(original + 72) = *(v3 + 72);
      *(original + 14) = *(v3 + 14);
      *(original + 8) = *(v3 + 8);
      *(original + 73) = *(v3 + 73);
      *(original + 74) = *(v3 + 74);
    }
  }

  return original;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDKeyboardDeviceProperties alloc];

  return [(BKSHIDKeyboardDeviceProperties *)v4 _initCopyFromOriginal:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[1] == self->_senderID && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && *(equalCopy + 72) == self->_countryCode && *(equalCopy + 14) == self->_standardType && equalCopy[8] == self->_subinterfaceID && *(equalCopy + 73) == self->_capsLockKeyHasLanguageSwitchLabel && *(equalCopy + 74) == self->_globeKeyLabelHasGlobeSymbol;

  return v5;
}

- (unint64_t)hash
{
  senderID = self->_senderID;
  v4 = [(NSString *)self->_transport hash]^ senderID;
  v5 = [(NSString *)self->_language hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_layout hash];
  v7 = [(NSString *)self->_exclusivityIdentifier hash];
  v8 = v6 ^ v7 ^ [(NSData *)self->_platformInputModeConfiguration hash];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
  v10 = [v9 hash];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v12 = v8 ^ v10 ^ [v11 hash];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v14 = [v13 hash];

  return v12 ^ v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:? forKey:?];
  if (self->_transport)
  {
    [coderCopy encodeObject:? forKey:?];
  }

  if (self->_language)
  {
    [coderCopy encodeObject:? forKey:?];
  }

  v4 = coderCopy;
  if (self->_layout)
  {
    [coderCopy encodeObject:? forKey:?];
    v4 = coderCopy;
  }

  if (self->_exclusivityIdentifier)
  {
    [coderCopy encodeObject:? forKey:?];
    v4 = coderCopy;
  }

  if (self->_platformInputModeConfiguration)
  {
    [coderCopy encodeObject:? forKey:?];
    v4 = coderCopy;
  }

  [v4 encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
}

- (BKSHIDKeyboardDeviceProperties)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = BKSHIDKeyboardDeviceProperties;
  coderCopy = coder;
  v4 = [(BKSHIDKeyboardDeviceProperties *)&v17 init];
  v4->_senderID = [coderCopy decodeInt64ForKey:{v17.receiver, v17.super_class}];
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  transport = v4->_transport;
  v4->_transport = v5;

  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];
  language = v4->_language;
  v4->_language = v7;

  objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:? forKey:?];
  layout = v4->_layout;
  v4->_layout = v9;

  objc_opt_class();
  v11 = [coderCopy decodeObjectOfClass:? forKey:?];
  exclusivityIdentifier = v4->_exclusivityIdentifier;
  v4->_exclusivityIdentifier = v11;

  objc_opt_class();
  v13 = [coderCopy decodeObjectOfClass:? forKey:?];
  platformInputModeConfiguration = v4->_platformInputModeConfiguration;
  v4->_platformInputModeConfiguration = v13;

  v4->_countryCode = [coderCopy decodeIntegerForKey:?];
  v4->_standardType = [coderCopy decodeIntegerForKey:?];
  v4->_subinterfaceID = [coderCopy decodeIntegerForKey:?];
  v4->_capsLockKeyHasLanguageSwitchLabel = [coderCopy decodeBoolForKey:?];
  v15 = [coderCopy decodeBoolForKey:?];

  v4->_globeKeyLabelHasGlobeSymbol = v15;
  return v4;
}

- (BKSHIDKeyboardDeviceProperties)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDKeyboardDeviceProperties.m";
    v17 = 1024;
    v18 = 41;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void __48__BKSHIDKeyboardDeviceProperties_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
}

+ (BKSHIDKeyboardDeviceProperties)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDKeyboardDeviceProperties.m";
    v17 = 1024;
    v18 = 46;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSHIDKeyboardDeviceProperties *)[BKSMutableHIDKeyboardDeviceProperties alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end