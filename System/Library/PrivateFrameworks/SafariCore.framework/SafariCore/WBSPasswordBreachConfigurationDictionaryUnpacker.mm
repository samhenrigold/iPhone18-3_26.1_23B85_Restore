@interface WBSPasswordBreachConfigurationDictionaryUnpacker
- (BOOL)optionalBoolForKey:(id)key defaultValue:(BOOL)value;
- (WBSPasswordBreachConfigurationDictionaryUnpacker)initWithDictionary:(id)dictionary;
- (id)URLForKey:(id)key;
- (id)_valueOfClass:(Class)class forKey:(id)key required:(BOOL)required;
- (id)dataFromHexStringForKey:(id)key expectedLength:(id)length;
- (id)sortedUnsignedIntegerArrayForKey:(id)key minimumValue:(unint64_t)value maximumValue:(unint64_t)maximumValue ascending:(BOOL)ascending;
- (id)stringForKey:(id)key minimumLength:(unint64_t)length;
- (unint64_t)unsignedIntegerForKey:(id)key minimumValue:(unint64_t)value maximumValue:(unint64_t)maximumValue;
@end

@implementation WBSPasswordBreachConfigurationDictionaryUnpacker

- (WBSPasswordBreachConfigurationDictionaryUnpacker)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = WBSPasswordBreachConfigurationDictionaryUnpacker;
  v6 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
    v8 = v7;
  }

  return v7;
}

- (id)_valueOfClass:(Class)class forKey:(id)key required:(BOOL)required
{
  requiredCopy = required;
  keyCopy = key;
  v9 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:keyCopy];
  if (v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = v9;
      goto LABEL_11;
    }

    v14 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(isKindOfClass, v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfigurationDictionaryUnpacker _valueOfClass:forKey:required:];
    }

    goto LABEL_9;
  }

  if (requiredCopy)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfigurationDictionaryUnpacker _valueOfClass:forKey:required:];
    }

LABEL_9:
    v12 = 0;
    self->_errorOccurred = 1;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)stringForKey:(id)key minimumLength:(unint64_t)length
{
  keyCopy = key;
  v7 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:1];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 length];
    if (v9 < length)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachConfigurationDictionaryUnpacker stringForKey:minimumLength:];
      }

      self->_errorOccurred = 1;
    }

    v12 = v8;
  }

  else
  {
    v12 = &stru_1F3064D08;
  }

  return v12;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  v5 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:1];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v5];
    v8 = v6;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachConfigurationDictionaryUnpacker URLForKey:];
      }

      self->_errorOccurred = 1;
      v9 = objc_alloc_init(MEMORY[0x1E695DFF8]);
    }

    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFF8]);
  }

  return v10;
}

- (unint64_t)unsignedIntegerForKey:(id)key minimumValue:(unint64_t)value maximumValue:(unint64_t)maximumValue
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v9 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:1];
  unsignedIntegerValue = [v9 unsignedIntegerValue];
  if (unsignedIntegerValue < value || unsignedIntegerValue > maximumValue)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(unsignedIntegerValue, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412802;
      v17 = keyCopy;
      v18 = 2048;
      valueCopy = value;
      v20 = 2048;
      maximumValueCopy = maximumValue;
      _os_log_error_impl(&dword_1B8447000, v13, OS_LOG_TYPE_ERROR, "Value for configuration key %@ must be between %ld and %ld (inclusive).", &v16, 0x20u);
    }

    self->_errorOccurred = 1;
  }

  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  return unsignedIntegerValue2;
}

- (id)sortedUnsignedIntegerArrayForKey:(id)key minimumValue:(unint64_t)value maximumValue:(unint64_t)maximumValue ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v40 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:1];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v32 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = ascendingCopy - 1;
    v15 = *v30;
    v28 = keyCopy;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v30 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v29 + 1) + 8 * v16);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v24 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(isKindOfClass, v19);
        keyCopy = v28;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [WBSPasswordBreachConfigurationDictionaryUnpacker sortedUnsignedIntegerArrayForKey:minimumValue:maximumValue:ascending:];
        }

        goto LABEL_24;
      }

      unsignedIntegerValue = [v17 unsignedIntegerValue];
      if (unsignedIntegerValue < value || unsignedIntegerValue > maximumValue)
      {
        break;
      }

      if (ascendingCopy)
      {
        if (unsignedIntegerValue < v14)
        {
          goto LABEL_22;
        }
      }

      else if (unsignedIntegerValue > v14)
      {
LABEL_22:
        v26 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(unsignedIntegerValue, v21);
        keyCopy = v28;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [WBSPasswordBreachConfigurationDictionaryUnpacker sortedUnsignedIntegerArrayForKey:minimumValue:maximumValue:ascending:];
        }

LABEL_24:
        self->_errorOccurred = 1;

        v23 = 0;
        goto LABEL_25;
      }

      if (v13 == ++v16)
      {
        v13 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
        keyCopy = v28;
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    v25 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(unsignedIntegerValue, v21);
    keyCopy = v28;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v34 = v28;
      v35 = 2048;
      valueCopy = value;
      v37 = 2048;
      maximumValueCopy = maximumValue;
      _os_log_error_impl(&dword_1B8447000, v25, OS_LOG_TYPE_ERROR, "Value for configuration key %@ must be between %ld and %ld (inclusive).", buf, 0x20u);
    }

    goto LABEL_24;
  }

LABEL_17:

  v23 = v11;
LABEL_25:

  return v23;
}

- (id)dataFromHexStringForKey:(id)key expectedLength:(id)length
{
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  lengthCopy = length;
  v8 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:1];
  if ([v8 length])
  {
    v10 = [MEMORY[0x1E695DEF0] safari_dataWithHexString:v8];
    v11 = v10;
    if (lengthCopy && (v12 = [v10 length], v13 = objc_msgSend(lengthCopy, "unsignedLongValue"), v12 != v13))
    {
      v17 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v13, v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = v17;
        v20 = 138412802;
        v21 = keyCopy;
        v22 = 2048;
        unsignedLongValue = [lengthCopy unsignedLongValue];
        v24 = 2048;
        v25 = [v11 length];
        _os_log_error_impl(&dword_1B8447000, v19, OS_LOG_TYPE_ERROR, "Value for configuration key %@ has unexpected length: %lu != %lu.", &v20, 0x20u);
      }

      v15 = 0;
      self->_errorOccurred = 1;
    }

    else
    {
      v15 = v11;
    }
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfigurationDictionaryUnpacker dataFromHexStringForKey:expectedLength:];
    }

    v15 = 0;
    self->_errorOccurred = 1;
  }

  return v15;
}

- (BOOL)optionalBoolForKey:(id)key defaultValue:(BOOL)value
{
  keyCopy = key;
  v7 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:0];

  if (v7)
  {
    value = [v7 BOOLValue];
  }

  return value;
}

@end