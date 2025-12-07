@interface BKSHIDEventKeyCommand
+ (BOOL)_isModifierKeyWithPage:(int64_t)page usage:(int64_t)usage;
+ (BOOL)_shouldMatchKeyCommandsForEvent:(__IOHIDEvent *)event gsKeyboard:(__GSKeyboard *)keyboard;
+ (id)_descriptionForKeyCommandCollection:(id)collection;
+ (id)keyCommandForEvent:(__IOHIDEvent *)event gsKeyboard:(__GSKeyboard *)keyboard activeModifiers:(int64_t *)modifiers;
+ (id)keyCommandWithInput:(id)input modifierFlags:(int64_t)flags;
+ (id)keyCommandWithKeyCode:(int64_t)code modifierFlags:(int64_t)flags;
+ (void)_appendDescriptionOfKeyCommandCollection:(id)collection toStream:(id)stream;
- (BKSHIDEventKeyCommand)init;
- (BKSHIDEventKeyCommand)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isModifierOnlyCommand;
- (NSString)description;
- (id)_initWithInput:(id)input keyCode:(int64_t)code modifierFlags:(int64_t)flags;
- (id)_sanitizedInputForDescription;
- (int64_t)describes:(id)describes;
- (unint64_t)hash;
- (void)_appendKeyWithoutModifiersToDescriptionTarget:(id)target keyCodeString:(id)string;
- (void)_appendPropertiesCommon:(id)common;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventKeyCommand

- (int64_t)describes:(id)describes
{
  describesCopy = describes;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = describesCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_34;
  }

  if ([v6 isModifierOnlyCommand])
  {
    modifierFlags = [(BKSHIDEventKeyCommand *)self modifierFlags];
    v9 = ([v7 modifierFlags] & modifierFlags) != 0;
    goto LABEL_34;
  }

  if ([(BKSHIDEventKeyCommand *)self keyCode]!= -1)
  {
    keyCode = [v7 keyCode];
    if (keyCode == [(BKSHIDEventKeyCommand *)self keyCode])
    {
      modifierFlags2 = [(BKSHIDEventKeyCommand *)self modifierFlags];
      if (modifierFlags2 == [v7 modifierFlags])
      {
        goto LABEL_33;
      }
    }
  }

  unmodifiedInput = [v7 unmodifiedInput];
  if (!unmodifiedInput)
  {
    goto LABEL_16;
  }

  v13 = unmodifiedInput;
  commandModifiedInput = [v7 commandModifiedInput];
  if (commandModifiedInput)
  {
    goto LABEL_15;
  }

  commandModifiedInput = [v7 unmodifiedInput];
  input = [(BKSHIDEventKeyCommand *)self input];
  if ([commandModifiedInput caseInsensitiveCompare:?])
  {

LABEL_15:
    goto LABEL_16;
  }

  modifierFlags3 = [(BKSHIDEventKeyCommand *)self modifierFlags];
  modifierFlags4 = [v7 modifierFlags];

  if (modifierFlags3 == modifierFlags4)
  {
    goto LABEL_33;
  }

LABEL_16:
  commandModifiedInput2 = [v7 commandModifiedInput];
  if (commandModifiedInput2)
  {
    v17 = commandModifiedInput2;
    commandModifiedInput3 = [v7 commandModifiedInput];
    input2 = [(BKSHIDEventKeyCommand *)self input];
    if ([commandModifiedInput3 caseInsensitiveCompare:?])
    {

      goto LABEL_20;
    }

    modifierFlags5 = [(BKSHIDEventKeyCommand *)self modifierFlags];
    modifierFlags6 = [v7 modifierFlags];

    if (modifierFlags5 != modifierFlags6)
    {
      goto LABEL_20;
    }

LABEL_33:
    v9 = 3;
    goto LABEL_34;
  }

LABEL_20:
  input3 = [(BKSHIDEventKeyCommand *)self input];
  uppercaseString = [input3 uppercaseString];
  input4 = [(BKSHIDEventKeyCommand *)self input];
  lowercaseString = [input4 lowercaseString];
  if ([uppercaseString isEqualToString:?])
  {
    shiftModifiedInput = [v7 shiftModifiedInput];
    input5 = [(BKSHIDEventKeyCommand *)self input];
    if ([shiftModifiedInput isEqualToString:?])
    {
      shiftModifiedInput2 = [v7 shiftModifiedInput];
      unmodifiedInput2 = [v7 unmodifiedInput];
      v36 = shiftModifiedInput2;
      v30 = shiftModifiedInput2;
      v31 = unmodifiedInput2;
      if ([v30 isEqualToString:?])
      {
        v9 = 0;
      }

      else
      {
        v35 = ([v7 modifierFlags] & 0xFFFFFFFFFFFDFFFFLL);
        if (v35 == [(BKSHIDEventKeyCommand *)self modifierFlags])
        {
          v9 = 3;
        }

        else
        {
          v9 = 0;
        }
      }
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

LABEL_34:
  return v9;
}

- (BOOL)isModifierOnlyCommand
{
  modifierFlags = [(BKSHIDEventKeyCommand *)self modifierFlags];
  if (modifierFlags)
  {
    input = [(BKSHIDEventKeyCommand *)self input];

    if (input)
    {
      LOBYTE(modifierFlags) = 0;
    }

    else if ([(BKSHIDEventKeyCommand *)self keyCode]== -1)
    {
      LOBYTE(modifierFlags) = 1;
    }

    else
    {
      v5 = objc_opt_class();
      [(BKSHIDEventKeyCommand *)self usagePage];
      [(BKSHIDEventKeyCommand *)self keyCode];

      LOBYTE(modifierFlags) = [v5 _isModifierKeyWithPage:? usage:?];
    }
  }

  return modifierFlags;
}

- (id)_sanitizedInputForDescription
{
  input = [(BKSHIDEventKeyCommand *)self input];
  _stringRepresentation = [input _stringRepresentation];

  return _stringRepresentation;
}

- (void)_appendPropertiesCommon:(id)common
{
  commonCopy = common;
  v6 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v8 = commonCopy;
  v5 = commonCopy;
  [v5 appendCustomFormatWithName:v6 block:{3221225472, __49__BKSHIDEventKeyCommand__appendPropertiesCommon___block_invoke, &unk_1E6F47000, selfCopy}];
}

void __49__BKSHIDEventKeyCommand__appendPropertiesCommon___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (v4 && ([*(a1 + 40) style], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "clientInformation"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:"), v6, v5, (v7 & 1) == 0))
  {
    BSDescriptionStreamAppendBKSKeyModifierFlags(v3, v4);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 32) keyCode];
  v10 = v9;
  if ((v9 - 1) > 0xFFFFFFFD)
  {
    v12 = 0;
    if (v8)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if ((v9 - 4) <= 0x19)
  {
    v11 = MEMORY[0x1E696AEC0];
    goto LABEL_12;
  }

  if ((v9 - 30) <= 8)
  {
    v11 = MEMORY[0x1E696AEC0];
LABEL_12:
    v13 = [v11 stringWithCharacters:? length:?];
    if (v13)
    {
LABEL_13:
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v10, v13];

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v9 > 224)
  {
    if (v9 <= 227)
    {
      if (v9 == 225)
      {
        v13 = @"lshft";
      }

      else if (v9 == 226)
      {
        v13 = @"lopt";
      }

      else
      {
        v13 = @"lcmd";
      }

      goto LABEL_13;
    }

    if (v9 <= 229)
    {
      if (v9 == 228)
      {
        v13 = @"rctrl";
      }

      else
      {
        v13 = @"rshft";
      }

      goto LABEL_13;
    }

    if (v9 == 230)
    {
      v13 = @"ropt";
      goto LABEL_13;
    }

    if (v9 == 231)
    {
      v13 = @"rcmd";
      goto LABEL_13;
    }
  }

  else if (v9 <= 79)
  {
    switch(v9)
    {
      case '\'':
        v13 = @"0";
        goto LABEL_13;
      case ',':
        v13 = @"space";
        goto LABEL_13;
      case 'O':
        v13 = @"rightArrow";
        goto LABEL_13;
    }
  }

  else
  {
    if (v9 <= 81)
    {
      if (v9 == 80)
      {
        v13 = @"leftArrow";
      }

      else
      {
        v13 = @"downArrow";
      }

      goto LABEL_13;
    }

    if (v9 == 82)
    {
      v13 = @"upArrow";
      goto LABEL_13;
    }

    if (v9 == 224)
    {
      v13 = @"lctrl";
      goto LABEL_13;
    }
  }

LABEL_36:
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v10];
LABEL_37:
  if (v8)
  {
LABEL_38:
    [v3 appendString:?];
  }

LABEL_39:
  [*(a1 + 32) _appendKeyWithoutModifiersToDescriptionTarget:? keyCodeString:?];
}

- (void)_appendKeyWithoutModifiersToDescriptionTarget:(id)target keyCodeString:(id)string
{
  targetCopy = target;
  stringCopy = string;
  _sanitizedInputForDescription = [(BKSHIDEventKeyCommand *)self _sanitizedInputForDescription];
  if (_sanitizedInputForDescription)
  {
    [targetCopy appendString:?];
    if (!stringCopy)
    {
      goto LABEL_6;
    }

    [targetCopy appendString:?];
  }

  else if (!stringCopy)
  {
    goto LABEL_6;
  }

  [targetCopy appendString:?];
LABEL_6:
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = v3;
  v4 = v3;
  [v4 appendProem:v7 block:{3221225472, __36__BKSHIDEventKeyCommand_description__block_invoke, &unk_1E6F47C78, self}];
  v5 = [v4 description];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    input = [v5 input];
    input2 = [(BKSHIDEventKeyCommand *)self input];
    v8 = input2;
    if (input == input2)
    {
    }

    else
    {
      input3 = [v5 input];
      input4 = [(BKSHIDEventKeyCommand *)self input];
      v11 = [input3 isEqualToString:?];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    keyCode = [v5 keyCode];
    if (keyCode == [(BKSHIDEventKeyCommand *)self keyCode])
    {
      modifierFlags = [v5 modifierFlags];
      v12 = modifierFlags == [(BKSHIDEventKeyCommand *)self modifierFlags];
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (unint64_t)hash
{
  keyCode = self->_keyCode;
  if (keyCode == -1)
  {
    return [(NSString *)self->_input hash]& 0xFFFFFFFFFF40FFFFLL | self->_modifierFlags;
  }

  else
  {
    return self->_modifierFlags | keyCode & 0xFFFFFFFFFF40FFFFLL;
  }
}

- (BKSHIDEventKeyCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  [coderCopy decodeIntegerForKey:?];
  [coderCopy decodeIntegerForKey:?];

  v6 = [BKSHIDEventKeyCommand _initWithInput:"_initWithInput:keyCode:modifierFlags:" keyCode:? modifierFlags:?];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
}

- (id)_initWithInput:(id)input keyCode:(int64_t)code modifierFlags:(int64_t)flags
{
  inputCopy = input;
  v13.receiver = self;
  v13.super_class = BKSHIDEventKeyCommand;
  v9 = [(BKSHIDEventKeyCommand *)&v13 init];
  if (v9)
  {
    v10 = [inputCopy copy];
    input = v9->_input;
    v9->_input = v10;

    objc_storeStrong(&v9->_unmodifiedInput, v9->_input);
    v9->_keyCode = code;
    v9->_modifierFlags = flags;
    v9->_usagePage = 7;
  }

  return v9;
}

- (BKSHIDEventKeyCommand)init
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
    v16 = @"BKSHIDEventKeyCommand.m";
    v17 = 1024;
    v18 = 110;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BOOL)_shouldMatchKeyCommandsForEvent:(__IOHIDEvent *)event gsKeyboard:(__GSKeyboard *)keyboard
{
  if (!keyboard)
  {
    return 0;
  }

  IOHIDEventGetIntegerValue();
  IOHIDEventGetIntegerValue();
  return ([self _isModifierKeyWithPage:? usage:?] & 1) != 0 || (GSKeyboardGetModifierState() & 0x5910000) != 0;
}

+ (BOOL)_isModifierKeyWithPage:(int64_t)page usage:(int64_t)usage
{
  if (page != 7)
  {
    return GSKeyboardIsGlobeKeyUsagePair() != 0;
  }

  return (usage - 224) < 8 || usage == 83 || usage == 57;
}

+ (id)keyCommandForEvent:(__IOHIDEvent *)event gsKeyboard:(__GSKeyboard *)keyboard activeModifiers:(int64_t *)modifiers
{
  v36 = *MEMORY[0x1E69E9840];
  IntegerValue = IOHIDEventGetIntegerValue();
  v8 = IOHIDEventGetIntegerValue();
  v9 = IOHIDEventGetIntegerValue();
  [objc_opt_class() _isModifierKeyWithPage:? usage:?];
  if ((IntegerValue - 83) < 0x11 || IntegerValue == 133 || IntegerValue == 103)
  {
    v12 = 0x200000;
  }

  else
  {
    v12 = 0;
  }

  if (!MEMORY[0x1EEE89690] || !keyboard)
  {
    if (modifiers)
    {
      *modifiers = v12;
    }

    v35 = 0;
    if (IntegerValue - 4 <= 0x19)
    {
      v13 = IntegerValue + 93;
LABEL_49:
      LOBYTE(v35) = v13;
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      v17 = [objc_opt_class() keyCommandWithInput:? modifierFlags:?];
      v17[2] = IntegerValue;
      [v17 setUnmodifiedInput:?];

      goto LABEL_50;
    }

    if (IntegerValue - 30 <= 9)
    {
      v13 = IntegerValue + 18;
      goto LABEL_49;
    }

    if (IntegerValue - 89 <= 9)
    {
      v13 = IntegerValue - 41;
      goto LABEL_49;
    }

    if (IntegerValue > 0x57u)
    {
      if (IntegerValue != 88)
      {
        if (IntegerValue != 133)
        {
          goto LABEL_44;
        }

        goto LABEL_47;
      }
    }

    else if (IntegerValue != 40)
    {
      if (IntegerValue != 54)
      {
LABEL_44:
        v17 = [objc_opt_class() keyCommandWithKeyCode:? modifierFlags:?];
        goto LABEL_50;
      }

LABEL_47:
      v13 = 44;
      goto LABEL_49;
    }

    v13 = 13;
    goto LABEL_49;
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  GSKeyboardGetLiveModifierState();
  v28 = 0;
  v29 = v9;
  v27 = &v30;
  v25 = &v31;
  v26 = v33;
  v23 = &v31 + 2;
  v24 = v34;
  GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
  if (v8)
  {
    GSKeyboardGetLiveModifierState();
  }

  if (modifiers)
  {
    LiveModifierState = GSKeyboardGetLiveModifierState();
    if ((LiveModifierState & 0x480000) != 0)
    {
      v15 = (((LiveModifierState & 0x1010000) != 0) << 20) | 0x80000;
    }

    else
    {
      v15 = ((LiveModifierState & 0x1010000) != 0) << 20;
    }

    if ((LiveModifierState & 0x900000) != 0)
    {
      v15 |= 0x40000uLL;
    }

    if ((LiveModifierState & 0x220000) != 0)
    {
      v15 |= 0x20000uLL;
    }

    *modifiers = v15 | (LiveModifierState >> 3) & 0x800000 | (LiveModifierState >> 2) & 0x10000;
  }

  if (HIWORD(v32))
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v31 + 2 length:{v34, &v31, v33, &v30, 0, v9}];
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_class() keyCommandWithInput:? modifierFlags:?];
  v17[2] = IntegerValue;
  if (v32)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithCharacters:? length:?];
    [v17 setUnmodifiedInput:?];
  }

  if (HIWORD(v31))
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithCharacters:? length:?];
    [v17 setShiftModifiedInput:?];
  }

  if (v31)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithCharacters:? length:?];
    [v17 setCommandModifiedInput:?];
  }

  [v17 setUsagePage:{v23, v24, v25, v26, v27, v28, v29}];

LABEL_50:

  return v17;
}

+ (id)_descriptionForKeyCommandCollection:(id)collection
{
  v4 = MEMORY[0x1E698E688];
  collectionCopy = collection;
  v6 = objc_alloc_init(v4);
  [self _appendDescriptionOfKeyCommandCollection:? toStream:?];

  v7 = [v6 description];

  return v7;
}

+ (void)_appendDescriptionOfKeyCommandCollection:(id)collection toStream:(id)stream
{
  v32 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  streamCopy = stream;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v21 = v14;
      v22 = 2114;
      v23 = v16;
      v24 = 2048;
      selfCopy = self;
      v26 = 2114;
      v27 = @"BKSHIDEventKeyCommand.m";
      v28 = 1024;
      v29 = 328;
      v30 = 2114;
      v31 = v13;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186359038);
  }

  v9 = [collectionCopy bs_dictionaryByPartitioning:?];
  v10 = [MEMORY[0x1E698E690] build:?];
  v17 = MEMORY[0x1E69E9820];
  v18 = streamCopy;
  v19 = v10;
  v11 = v10;
  v12 = streamCopy;
  [v12 appendDictionary:v17 withName:3221225472 itemBlock:{__75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_3, &unk_1E6F466A0}];
}

void __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v6;
  v9 = MEMORY[0x1E69E9820];
  v10 = v5;
  v7 = v5;
  v8 = v6;
  [v11 appendCustomFormatForValue:v9 withCustomFormatForName:{3221225472, __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_7, &unk_1E6F477E8}];
}

void __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E9820];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  [v3 overlayStyle:v2 block:{3221225472, __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_5, &unk_1E6F47C78}];
}

void __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  BSDescriptionStreamAppendBKSKeyModifierFlags(v3, [v2 unsignedIntValue]);
}

void __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 appendCollection:? withName:? itemBlock:?];
}

void __75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setCollectionLineBreak:?];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:?];
  [v2 setClientInformation:?];
}

void *__75__BKSHIDEventKeyCommand__appendDescriptionOfKeyCommandCollection_toStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 modifierFlags];

  return [v2 numberWithInteger:?];
}

+ (id)keyCommandWithKeyCode:(int64_t)code modifierFlags:(int64_t)flags
{
  v4 = [BKSHIDEventKeyCommand _initWithInput:"_initWithInput:keyCode:modifierFlags:" keyCode:? modifierFlags:?];

  return v4;
}

+ (id)keyCommandWithInput:(id)input modifierFlags:(int64_t)flags
{
  inputCopy = input;
  null = [MEMORY[0x1E695DFB0] null];
  v6 = [inputCopy isEqual:?];

  if (v6)
  {

    inputCopy = 0;
  }

  v7 = [BKSHIDEventKeyCommand _initWithInput:"_initWithInput:keyCode:modifierFlags:" keyCode:? modifierFlags:?];

  return v7;
}

@end