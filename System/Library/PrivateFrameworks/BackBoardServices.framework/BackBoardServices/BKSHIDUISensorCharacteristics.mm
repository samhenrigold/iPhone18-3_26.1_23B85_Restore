@interface BKSHIDUISensorCharacteristics
+ (BKSHIDUISensorCharacteristics)new;
- (BKSHIDUISensorCharacteristics)init;
- (BKSHIDUISensorCharacteristics)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopy;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDUISensorCharacteristics

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = MEMORY[0x1E69E9820];
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:v6 block:{3221225472, __62__BKSHIDUISensorCharacteristics_appendDescriptionToFormatter___block_invoke, &unk_1E6F47C78}];
}

- (id)mutableCopy
{
  v2 = objc_alloc_init(BKSMutableHIDUISensorCharacteristics);
  [(BKSMutableHIDUISensorCharacteristics *)v2 setHasDiscreteProximitySensor:?];
  [(BKSMutableHIDUISensorCharacteristics *)v2 setSuggestedSystemApertureGracePeriodForScreenOff:?];
  return v2;
}

void __47__BKSHIDUISensorCharacteristics_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
}

+ (BKSHIDUISensorCharacteristics)new
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
    v16 = @"BKSHIDUISensorCharacteristics.m";
    v17 = 1024;
    v18 = 34;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [+[BKSHIDUISensorCharacteristics allocWithZone:](BKSHIDUISensorCharacteristics _init];
  *(result + 16) = self->_hasDiscreteProximitySensor;
  *(result + 1) = self->_suggestedSystemApertureGracePeriodForScreenOff;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v8 && *(v8 + 16) == self->_hasDiscreteProximitySensor && v8[1] == self->_suggestedSystemApertureGracePeriodForScreenOff;
  return v9;
}

- (unint64_t)hash
{
  if (self->_suggestedSystemApertureGracePeriodForScreenOff)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v2 hash];
  }

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
}

- (BKSHIDUISensorCharacteristics)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = BKSHIDUISensorCharacteristics;
  coderCopy = coder;
  v4 = [(BKSHIDUISensorCharacteristics *)&v7 init];
  v4->_hasDiscreteProximitySensor = [coderCopy decodeBoolForKey:{v7.receiver, v7.super_class}];
  v5 = [coderCopy decodeIntegerForKey:?];

  v4->_suggestedSystemApertureGracePeriodForScreenOff = v5;
  return v4;
}

- (id)_init
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(a2);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v13 = v8;
        v14 = 2114;
        v15 = v10;
        v16 = 2048;
        selfCopy = self;
        v18 = 2114;
        v19 = @"BKSHIDUISensorCharacteristics.m";
        v20 = 1024;
        v21 = 40;
        v22 = 2114;
        v23 = v7;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B49E4);
    }
  }

  self->_suggestedSystemApertureGracePeriodForScreenOff = 0x7FFFFFFFFFFFFFFFLL;
  v11.receiver = self;
  v11.super_class = BKSHIDUISensorCharacteristics;
  return [(BKSHIDUISensorCharacteristics *)&v11 init];
}

- (BKSHIDUISensorCharacteristics)init
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
    v16 = @"BKSHIDUISensorCharacteristics.m";
    v17 = 1024;
    v18 = 29;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end