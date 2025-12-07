@interface BKSHIDEventSenderDescriptor
+ (id)anyBuiltinTouchscreenDigitizer;
+ (id)anyDigitizer;
+ (id)build:(id)build;
+ (id)protobufSchema;
+ (id)stylusOpaqueTouchDigitizer;
+ (id)wildcard;
- (BKSHIDEventSenderDescriptor)init;
- (BKSHIDEventSenderDescriptor)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesDescriptor:(id)descriptor failureReason:(id *)reason;
- (id)_initWithHardwareType:(int64_t)type associatedDisplay:(id)display authenticated:(BOOL)authenticated primaryPage:(unsigned int)page primaryUsage:(unsigned int)usage senderID:(unint64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForProtobufDecoding;
- (id)initFromPropertyList:(id)list;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)propertyListEncoded;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventSenderDescriptor

- (BOOL)matchesDescriptor:(id)descriptor failureReason:(id *)reason
{
  descriptorCopy = descriptor;
  v7 = descriptorCopy;
  if (reason)
  {
    *reason = 0;
  }

  senderID = [descriptorCopy senderID];
  if (senderID && senderID != self->_senderID)
  {
    if (!reason)
    {
      goto LABEL_32;
    }

    v16 = 0;
    v17 = @"senderID does not match";
LABEL_31:
    *reason = v17;
    goto LABEL_33;
  }

  if ([v7 isAuthenticated] && !self->_authenticated)
  {
    if (!reason)
    {
      goto LABEL_32;
    }

    v16 = 0;
    v17 = @"not authenticated";
    goto LABEL_31;
  }

  hardwareType = [v7 hardwareType];
  if (hardwareType && hardwareType != self->_hardwareType)
  {
    if (!reason)
    {
      goto LABEL_32;
    }

    v16 = 0;
    v17 = @"hardware type does not match";
    goto LABEL_31;
  }

  primaryPage = [v7 primaryPage];
  primaryUsage = [v7 primaryUsage];
  if (!primaryPage)
  {
    goto LABEL_13;
  }

  if (primaryPage != self->_primaryPage)
  {
    if (!reason)
    {
      goto LABEL_32;
    }

    v16 = 0;
    v17 = @"page does not match";
    goto LABEL_31;
  }

  if (primaryUsage && primaryUsage != self->_primaryUsage)
  {
    if (reason)
    {
      v16 = 0;
      v17 = @"usage does not match";
      goto LABEL_31;
    }

LABEL_32:
    v16 = 0;
    goto LABEL_33;
  }

LABEL_13:
  associatedDisplay = [v7 associatedDisplay];
  if (associatedDisplay)
  {
    v13 = self->_associatedDisplay;
    v14 = [(BKSHIDEventDisplay *)v13 isEqual:?];
    v15 = v14;
    if (reason && (v14 & 1) == 0)
    {
      *reason = [MEMORY[0x1E696AEC0] stringWithFormat:v13, associatedDisplay];

LABEL_27:
      v16 = 0;
      goto LABEL_28;
    }

    if (!v15)
    {
      goto LABEL_27;
    }
  }

  v16 = 1;
LABEL_28:

LABEL_33:
  return v16;
}

- (BKSHIDEventSenderDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeIntegerForKey:?];
  [coderCopy decodeBoolForKey:?];
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  [coderCopy decodeIntegerForKey:?];
  [coderCopy decodeIntegerForKey:?];
  [coderCopy decodeIntegerForKey:?];

  v6 = [BKSHIDEventSenderDescriptor _initWithHardwareType:"_initWithHardwareType:associatedDisplay:authenticated:primaryPage:primaryUsage:senderID:" associatedDisplay:? authenticated:? primaryPage:? primaryUsage:? senderID:?];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventSenderDescriptor;
  return [(BKSHIDEventSenderDescriptor *)&v3 init];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  hardwareType = self->_hardwareType;
  v13 = formatterCopy;
  if (hardwareType)
  {
    v6 = NSStringFromBKSHIDEventHardwareType(hardwareType);
    [v13 appendString:? withName:?];
  }

  if (self->_senderID)
  {
    v7 = [v13 appendUInt64:? withName:? format:?];
  }

  v8 = v13;
  if (self->_primaryPage)
  {
    v9 = [v13 appendUnsignedInteger:? withName:? format:?];
    v8 = v13;
  }

  if (self->_primaryUsage)
  {
    v10 = [v13 appendUnsignedInteger:? withName:? format:?];
    v8 = v13;
  }

  v11 = [v8 appendObject:? withName:? skipIfNil:?];
  v12 = [v13 appendBool:? withName:? ifEqualTo:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v7 = self->_hardwareType == v5[1] && self->_authenticated == *(v5 + 24) && BSEqualObjects() && self->_primaryPage == v6[7] && self->_primaryUsage == v6[8] && self->_senderID == *(v6 + 5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = [BKSMutableHIDEventSenderDescriptor alloc];

  return [BKSHIDEventSenderDescriptor _initWithHardwareType:v3 associatedDisplay:"_initWithHardwareType:associatedDisplay:authenticated:primaryPage:primaryUsage:senderID:" authenticated:? primaryPage:? primaryUsage:? senderID:?];
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__BKSHIDEventSenderDescriptor_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_13121 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_13121, block);
  }

  v2 = protobufSchema_schema_13122;

  return v2;
}

uint64_t __45__BKSHIDEventSenderDescriptor_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_13122;
  protobufSchema_schema_13122 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __45__BKSHIDEventSenderDescriptor_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
}

+ (id)stylusOpaqueTouchDigitizer
{
  if (stylusOpaqueTouchDigitizer_onceToken != -1)
  {
    dispatch_once(&stylusOpaqueTouchDigitizer_onceToken, &__block_literal_global_67);
  }

  v3 = stylusOpaqueTouchDigitizer_descriptor;

  return v3;
}

uint64_t __57__BKSHIDEventSenderDescriptor_stylusOpaqueTouchDigitizer__block_invoke()
{
  v0 = [BKSHIDEventSenderDescriptor build:?];
  v1 = stylusOpaqueTouchDigitizer_descriptor;
  stylusOpaqueTouchDigitizer_descriptor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)anyBuiltinTouchscreenDigitizer
{
  if (anyBuiltinTouchscreenDigitizer_onceToken != -1)
  {
    dispatch_once(&anyBuiltinTouchscreenDigitizer_onceToken, &__block_literal_global_63);
  }

  v3 = anyBuiltinTouchscreenDigitizer_descriptor;

  return v3;
}

uint64_t __61__BKSHIDEventSenderDescriptor_anyBuiltinTouchscreenDigitizer__block_invoke()
{
  v0 = [BKSHIDEventSenderDescriptor build:?];
  v1 = anyBuiltinTouchscreenDigitizer_descriptor;
  anyBuiltinTouchscreenDigitizer_descriptor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __61__BKSHIDEventSenderDescriptor_anyBuiltinTouchscreenDigitizer__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPrimaryPage:? primaryUsage:?];
  v3 = +[BKSHIDEventDisplay builtinDisplay];
  [v2 setAssociatedDisplay:?];
}

+ (id)anyDigitizer
{
  if (anyDigitizer_onceToken != -1)
  {
    dispatch_once(&anyDigitizer_onceToken, &__block_literal_global_58);
  }

  v3 = anyDigitizer_descriptor;

  return v3;
}

uint64_t __43__BKSHIDEventSenderDescriptor_anyDigitizer__block_invoke()
{
  v0 = [BKSHIDEventSenderDescriptor build:?];
  v1 = anyDigitizer_descriptor;
  anyDigitizer_descriptor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)wildcard
{
  if (wildcard_onceToken != -1)
  {
    dispatch_once(&wildcard_onceToken, &__block_literal_global_13130);
  }

  v3 = wildcard_wildcard;

  return v3;
}

uint64_t __39__BKSHIDEventSenderDescriptor_wildcard__block_invoke()
{
  v0 = objc_alloc_init(BKSMutableHIDEventSenderDescriptor);
  v1 = wildcard_wildcard;
  wildcard_wildcard = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)build:(id)build
{
  buildCopy = build;
  v4 = objc_alloc_init(BKSMutableHIDEventSenderDescriptor);
  buildCopy[2](buildCopy, v4);

  v5 = [(BKSMutableHIDEventSenderDescriptor *)v4 copy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [BKSHIDEventSenderDescriptor alloc];

  return [BKSHIDEventSenderDescriptor _initWithHardwareType:v3 associatedDisplay:"_initWithHardwareType:associatedDisplay:authenticated:primaryPage:primaryUsage:senderID:" authenticated:? primaryPage:? primaryUsage:? senderID:?];
}

- (id)initFromPropertyList:(id)list
{
  listCopy = list;
  v44.receiver = self;
  v44.super_class = BKSHIDEventSenderDescriptor;
  v5 = [(BKSHIDEventSenderDescriptor *)&v44 init];
  if (v5)
  {
    v6 = [listCopy objectForKey:?];
    v7 = objc_opt_class();
    v8 = v6;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    integerValue = [v10 integerValue];
    v5->_hardwareType = integerValue;
    v12 = [listCopy objectForKey:?];
    v13 = objc_opt_class();
    v14 = v12;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    bOOLValue = [v16 BOOLValue];
    v5->_authenticated = bOOLValue;
    v18 = [listCopy objectForKey:?];
    v19 = objc_opt_class();
    v20 = v18;
    if (v19)
    {
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    unsignedIntValue = [v22 unsignedIntValue];
    v5->_primaryPage = unsignedIntValue;
    v24 = [listCopy objectForKey:?];
    v25 = objc_opt_class();
    v26 = v24;
    if (v25)
    {
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    unsignedIntValue2 = [v28 unsignedIntValue];
    v5->_primaryUsage = unsignedIntValue2;
    v30 = [listCopy objectForKey:?];
    v31 = objc_opt_class();
    v32 = v30;
    if (v31)
    {
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    unsignedLongLongValue = [v34 unsignedLongLongValue];
    v5->_senderID = unsignedLongLongValue;
    v36 = [listCopy objectForKey:?];
    v37 = objc_opt_class();
    v38 = v36;
    if (v37)
    {
      if (objc_opt_isKindOfClass())
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;

    if (v40)
    {
      if ([v40 isEqual:?])
      {
        v41 = +[BKSHIDEventDisplay nullDisplay];
      }

      else
      {
        if ([v40 isEqual:?])
        {
          +[BKSHIDEventDisplay builtinDisplay];
        }

        else
        {
          [BKSHIDEventDisplay displayWithHardwareIdentifier:?];
        }
        v41 = ;
      }

      associatedDisplay = v5->_associatedDisplay;
      v5->_associatedDisplay = v41;
    }
  }

  return v5;
}

- (id)propertyListEncoded
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_hardwareType)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v3 setObject:? forKey:?];
  }

  if (self->_authenticated)
  {
    [v3 setObject:? forKey:?];
  }

  associatedDisplay = self->_associatedDisplay;
  if (associatedDisplay)
  {
    if ([(BKSHIDEventDisplay *)associatedDisplay _isNullDisplay]|| [(BKSHIDEventDisplay *)self->_associatedDisplay _isBuiltinDisplay])
    {
      [v3 setObject:? forKey:?];
    }

    else
    {
      _hardwareIdentifier = [(BKSHIDEventDisplay *)self->_associatedDisplay _hardwareIdentifier];
      [v3 setObject:? forKey:?];
    }
  }

  if (self->_primaryPage)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v3 setObject:? forKey:?];
  }

  if (self->_primaryUsage)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v3 setObject:? forKey:?];
  }

  if (self->_senderID)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v3 setObject:? forKey:?];
  }

  return v3;
}

- (id)_initWithHardwareType:(int64_t)type associatedDisplay:(id)display authenticated:(BOOL)authenticated primaryPage:(unsigned int)page primaryUsage:(unsigned int)usage senderID:(unint64_t)d
{
  v45 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (displayCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = MEMORY[0x1E696AEC0];
      classForCoder = [displayCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v24 = NSStringFromClass(classForCoder);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v22 stringWithFormat:@"display", v24, v26];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(a2);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138544642;
        v34 = v28;
        v35 = 2114;
        v36 = v30;
        v37 = 2048;
        selfCopy = self;
        v39 = 2114;
        v40 = @"BKSHIDEventSenderDescriptor.m";
        v41 = 1024;
        v42 = 85;
        v43 = 2114;
        v44 = v27;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v27 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B40C0);
    }
  }

  v17 = objc_opt_class();
  if (v17 != objc_opt_class())
  {
    v18 = objc_opt_class();
    if (v18 != objc_opt_class())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }
  }

  v32.receiver = self;
  v32.super_class = BKSHIDEventSenderDescriptor;
  v19 = [(BKSHIDEventSenderDescriptor *)&v32 init];
  v20 = v19;
  if (v19)
  {
    v19->_hardwareType = type;
    objc_storeStrong(&v19->_associatedDisplay, display);
    v20->_authenticated = authenticated;
    v20->_primaryPage = page;
    v20->_primaryUsage = usage;
    v20->_senderID = d;
  }

  return v20;
}

- (BKSHIDEventSenderDescriptor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  return 0;
}

@end