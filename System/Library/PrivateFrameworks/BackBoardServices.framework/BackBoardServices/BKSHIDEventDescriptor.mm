@interface BKSHIDEventDescriptor
+ (id)descriptorForHIDEvent:(__IOHIDEvent *)event;
+ (id)descriptorWithEventType:(unsigned int)type;
+ (void)appendDescriptorArray:(id)array toDescriptionStream:(id)stream;
- (BKSHIDEventDescriptor)init;
- (BKSHIDEventDescriptor)initWithCoder:(id)coder;
- (BKSHIDEventDescriptor)initWithEventType:(unsigned int)type;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithEventType:(unsigned int)type;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)descriptorByAddingSenderIDToMatchCriteria:(unint64_t)criteria;
- (id)succinctDescription;
- (int64_t)compare:(id)compare;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDescriptor

- (int64_t)compare:(id)compare
{
  hidEventType = self->_hidEventType;
  v4 = *(compare + 2);
  v5 = hidEventType >= v4;
  v6 = hidEventType > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

- (BKSHIDEventDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];

  [v5 unsignedIntValue];

  return [(BKSHIDEventDescriptor *)self initWithEventType:?];
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v5 = [v3 numberWithUnsignedInt:?];
  [coderCopy encodeObject:? forKey:?];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  IOHIDEventTypeGetName();
  [streamCopy appendString:? withName:?];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKSHIDEventDescriptor *)self succinctDescriptionBuilder];
  IOHIDEventTypeGetName();
  [succinctDescriptionBuilder appendString:? withName:?];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSHIDEventDescriptor *)self descriptionBuilderWithMultilinePrefix:?];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSHIDEventDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v9 = v3;
  v4 = v3;
  [v4 appendProem:v7 block:{3221225472, __36__BKSHIDEventDescriptor_description__block_invoke, &unk_1E6F47C78, selfCopy}];
  v5 = [v4 description];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v6 = [equalCopy hidEventType] == self->_hidEventType;
  }

  return v6;
}

- (BKSHIDEventDescriptor)initWithEventType:(unsigned int)type
{
  selfCopy = self;
  if (type <= 28)
  {
    if (type == 1)
    {
      v5 = BKSHIDEventVendorDefinedDescriptor;
      goto LABEL_12;
    }

    if (type == 3)
    {
      v5 = BKSHIDEventKeyboardDescriptor;
      goto LABEL_12;
    }
  }

  else
  {
    switch(type)
    {
      case 0x1Du:
        v5 = BKSHIDEventBiometricDescriptor;
        goto LABEL_12;
      case 0x25u:
        v5 = BKSHIDEventCollectionDescriptor;
        goto LABEL_12;
      case 0x27u:
        v5 = BKSHIDEventGenericGestureDescriptor;
LABEL_12:
        v6 = objc_alloc_init(v5);
        goto LABEL_13;
    }
  }

  v10.receiver = self;
  v10.super_class = BKSHIDEventDescriptor;
  v9 = [(BKSHIDEventDescriptor *)&v10 init];
  if (v9)
  {
    v9->_hidEventType = type;
  }

  v6 = v9;
  selfCopy = v6;
LABEL_13:
  v7 = v6;

  return v7;
}

- (id)_initWithEventType:(unsigned int)type
{
  v5.receiver = self;
  v5.super_class = BKSHIDEventDescriptor;
  result = [(BKSHIDEventDescriptor *)&v5 init];
  if (result)
  {
    *(result + 2) = type;
  }

  return result;
}

- (BKSHIDEventDescriptor)init
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
    v16 = @"BKSHIDEventDescriptor.m";
    v17 = 1024;
    v18 = 78;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)descriptorByAddingSenderIDToMatchCriteria:(unint64_t)criteria
{
  v3 = [BKSHIDEventSenderSpecificDescriptor initWithDescriptor:"initWithDescriptor:senderID:" senderID:?];

  return v3;
}

+ (void)appendDescriptorArray:(id)array toDescriptionStream:(id)stream
{
  streamCopy = stream;
  v6 = [array sortedArrayUsingSelector:?];
  v7 = [v6 bs_dictionaryByPartitioning:?];
  v8 = [MEMORY[0x1E698E690] build:?];
  v11 = MEMORY[0x1E69E9820];
  v12 = streamCopy;
  v13 = v7;
  v9 = v7;
  v10 = streamCopy;
  [v10 overlayStyle:v11 block:{3221225472, __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_3, &unk_1E6F47C78}];
}

void __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_3(uint64_t a1)
{
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_4;
  v6 = &unk_1E6F47C78;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  [v2 appendBodySectionWithName:v3 block:{3221225472, __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_4, &unk_1E6F47C78}];
}

void __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E9820];
  v3 = 3221225472;
  v4 = __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_5;
  v5 = &unk_1E6F466E8;
  v1 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:?];
}

void __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  if (v6 == 1)
  {
    v7 = *(a1 + 32);
    goto LABEL_5;
  }

  if (v6 == 3)
  {
    v7 = *(a1 + 32);
LABEL_5:
    v8 = [v7 appendObject:? withName:?];
    goto LABEL_14;
  }

  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:0 objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(8 * i) appendDescriptionToStream:?];
      }

      v11 = [v9 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }

LABEL_14:
}

void __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = a2;
  v4 = [v2 setWithObject:?];
  [v3 setClientInformation:?];
}

void *__67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 hidEventType];

  return [v2 numberWithUnsignedInt:?];
}

+ (id)descriptorWithEventType:(unsigned int)type
{
  v3 = [[BKSHIDEventDescriptor alloc] initWithEventType:?];

  return v3;
}

+ (id)descriptorForHIDEvent:(__IOHIDEvent *)event
{
  Type = IOHIDEventGetType();
  if (Type > 28)
  {
    if (Type == 29)
    {
      IOHIDEventGetIntegerValue();
      v4 = [BKSHIDEventBiometricDescriptor descriptorWithBiometricEventType:?];
      goto LABEL_15;
    }

    if (Type != 37)
    {
      if (Type == 39)
      {
        IOHIDEventGetIntegerValue();
        v4 = [BKSHIDEventGenericGestureDescriptor descriptorWithGenericGestureType:?];
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v5 = BKSHIDEventCollectionDescriptor;
    IOHIDEventGetIntegerValue();
LABEL_13:
    IOHIDEventGetIntegerValue();
    v4 = [__objc2_class descriptorWithPage:v5 usage:"descriptorWithPage:usage:"];
    goto LABEL_15;
  }

  if (Type == 1)
  {
    v5 = BKSHIDEventVendorDefinedDescriptor;
    IOHIDEventGetIntegerValue();
    goto LABEL_13;
  }

  if (Type == 3)
  {
    v5 = BKSHIDEventKeyboardDescriptor;
    IOHIDEventGetIntegerValue();
    goto LABEL_13;
  }

LABEL_14:
  v4 = [BKSHIDEventDescriptor descriptorWithEventType:?];
LABEL_15:

  return v4;
}

@end