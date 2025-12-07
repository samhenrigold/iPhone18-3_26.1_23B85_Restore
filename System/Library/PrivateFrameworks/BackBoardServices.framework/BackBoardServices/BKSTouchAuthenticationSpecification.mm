@interface BKSTouchAuthenticationSpecification
+ (id)buildSpecification:(id)specification;
+ (id)new;
- (BKSTouchAuthenticationSpecification)_init;
- (BKSTouchAuthenticationSpecification)_initWithCopyOf:(BKSTouchAuthenticationSpecification *)of;
- (BKSTouchAuthenticationSpecification)init;
- (BKSTouchAuthenticationSpecification)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSTouchAuthenticationSpecification

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v5 = [formatterCopy appendObject:? withName:?];
  v6 = [formatterCopy appendUInt64:? withName:? format:?];
  v7 = [formatterCopy appendUInt64:? withName:? format:?];
  v8 = [formatterCopy appendUInt64:? withName:? format:?];
  v9 = [formatterCopy appendUInt64:? withName:? format:?];
  v10 = [formatterCopy appendUInt64:? withName:? format:?];
  v11 = [formatterCopy appendUInt64:? withName:? format:?];
  v12 = [formatterCopy appendFloat:? withName:?];
  v13 = [formatterCopy appendFloat:? withName:?];
  v14 = [formatterCopy appendFloat:? withName:?];
  v15 = [formatterCopy appendUInt64:? withName:? format:?];
  v16 = NSStringFromBKSHIDEventHitTestLayerInformationMask(self->_hitTestInformationMask);
  [formatterCopy appendString:? withName:?];

  v17 = NSStringFromBKSTouchAuthenticationInitialSampleEvent(self->_initialSampleEvent);
  [formatterCopy appendString:? withName:?];
}

- (BKSTouchAuthenticationSpecification)_init
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
          v16 = @"BKSTouchAuthenticationSpecification.m";
          v17 = 1024;
          v18 = 73;
          v19 = 2114;
          v20 = v4;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v4 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186382BBCLL);
      }
    }

    v8.receiver = v1;
    v8.super_class = BKSTouchAuthenticationSpecification;
    result = [(BKSTouchAuthenticationSpecification *)&v8 init];
    if (result)
    {
      result->_initialSampleEvent = 1;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self->_displays)
  {
    [coderCopy encodeObject:? forKey:?];
    coderCopy = v5;
  }

  [coderCopy encodeInt32:? forKey:?];
  [v5 encodeInt64:? forKey:?];
  [v5 encodeInt32:? forKey:?];
  [v5 encodeInt32:? forKey:?];
  [v5 encodeInt32:? forKey:?];
  [v5 encodeInt32:? forKey:?];
  [v5 encodeInt32:? forKey:?];
  [v5 encodeFloat:? forKey:?];
  [v5 encodeFloat:? forKey:?];
  [v5 encodeFloat:? forKey:?];
  [v5 encodeInteger:? forKey:?];
  [v5 encodeInteger:? forKey:?];
}

- (BKSTouchAuthenticationSpecification)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = BKSTouchAuthenticationSpecification;
  v5 = [(BKSTouchAuthenticationSpecification *)&v21 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:? forKey:?];
    v7 = [NSSet countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v6);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = MEMORY[0x1E696ABC0];
            v22 = *MEMORY[0x1E696A588];
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
            v23 = v17;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
            v19 = [v16 errorWithDomain:? code:? userInfo:?];
            [coderCopy failWithError:?];

            v15 = 0;
            goto LABEL_13;
          }
        }

        v8 = [NSSet countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    displays = v5->_displays;
    v5->_displays = v6;

    v5->_slotID = [coderCopy decodeInt32ForKey:?];
    v5->_authenticationMessageContext = [coderCopy decodeInt64ForKey:?];
    v5->_secureName = [coderCopy decodeInt32ForKey:?];
    v5->_backgroundStatisticsTopEdgeInset = [coderCopy decodeInt32ForKey:?];
    v5->_backgroundStatisticsLeftEdgeInset = [coderCopy decodeInt32ForKey:?];
    v5->_backgroundStatisticsBottomEdgeInset = [coderCopy decodeInt32ForKey:?];
    v5->_backgroundStatisticsRightEdgeInset = [coderCopy decodeInt32ForKey:?];
    [coderCopy decodeFloatForKey:?];
    v5->_backgroundStatisticsForeground = v12;
    [coderCopy decodeFloatForKey:?];
    v5->_backgroundStatisticsPassingContrast = v13;
    [coderCopy decodeFloatForKey:?];
    v5->_backgroundStatisticsFailingContrast = v14;
    v5->_hitTestInformationMask = [coderCopy decodeIntegerForKey:?];
    v5->_initialSampleEvent = [coderCopy decodeIntegerForKey:?];
  }

  v15 = v5;
LABEL_13:

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableTouchAuthenticationSpecification alloc];

  return [(BKSTouchAuthenticationSpecification *)&v4->super _initWithCopyOf:?];
}

- (BKSTouchAuthenticationSpecification)_initWithCopyOf:(BKSTouchAuthenticationSpecification *)of
{
  v3 = a2;
  if (of)
  {
    of = [(BKSTouchAuthenticationSpecification *)of _init];
    if (of)
    {
      v4 = [*(v3 + 1) copy];
      displays = of->_displays;
      of->_displays = v4;

      of->_slotID = *(v3 + 4);
      of->_authenticationMessageContext = *(v3 + 3);
      of->_secureName = *(v3 + 5);
      of->_backgroundStatisticsTopEdgeInset = *(v3 + 16);
      of->_backgroundStatisticsLeftEdgeInset = *(v3 + 17);
      of->_backgroundStatisticsBottomEdgeInset = *(v3 + 18);
      of->_backgroundStatisticsRightEdgeInset = *(v3 + 19);
      of->_backgroundStatisticsForeground = *(v3 + 10);
      of->_backgroundStatisticsPassingContrast = *(v3 + 11);
      of->_backgroundStatisticsFailingContrast = *(v3 + 12);
      of->_hitTestInformationMask = *(v3 + 7);
      of->_initialSampleEvent = *(v3 + 8);
    }
  }

  return of;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSTouchAuthenticationSpecification alloc];

  return [(BKSTouchAuthenticationSpecification *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = BSEqualObjects() && v5[4] == self->_slotID && *(v5 + 3) == self->_authenticationMessageContext && v5[5] == self->_secureName && *(v5 + 16) == self->_backgroundStatisticsTopEdgeInset && *(v5 + 17) == self->_backgroundStatisticsLeftEdgeInset && *(v5 + 18) == self->_backgroundStatisticsBottomEdgeInset && *(v5 + 19) == self->_backgroundStatisticsRightEdgeInset && *(v5 + 7) == self->_hitTestInformationMask && *(v5 + 8) == self->_initialSampleEvent;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(NSSet *)self->_displays hash];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v4 = [v3 hash] ^ v2;

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  v6 = [v5 hash];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v8 = v4 ^ v6 ^ [v7 hash];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
  v10 = [v9 hash];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
  v12 = v10 ^ [v11 hash];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
  v14 = v8 ^ v12 ^ [v13 hash];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
  v16 = [v15 hash];

  v17 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v18 = v16 ^ [v17 hash];

  v19 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v20 = v18 ^ [v19 hash];

  v21 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v22 = v14 ^ v20 ^ [v21 hash];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v24 = [v23 hash];

  v25 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v26 = v22 ^ v24 ^ [v25 hash];

  v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) >> 27));
  return v27 ^ (v27 >> 31);
}

- (BKSTouchAuthenticationSpecification)init
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
    v16 = @"BKSTouchAuthenticationSpecification.m";
    v17 = 1024;
    v18 = 62;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void __53__BKSTouchAuthenticationSpecification_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  [v2 addRepeatingField:? containsClass:?];
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
  [v2 addField:?];
}

+ (id)new
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
    v16 = @"BKSTouchAuthenticationSpecification.m";
    v17 = 1024;
    v18 = 67;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)buildSpecification:(id)specification
{
  specificationCopy = specification;
  _init = [(BKSTouchAuthenticationSpecification *)[BKSMutableTouchAuthenticationSpecification alloc] _init];
  specificationCopy[2](specificationCopy, _init);

  v5 = [(BKSTouchAuthenticationSpecification *)_init copy];

  return v5;
}

@end