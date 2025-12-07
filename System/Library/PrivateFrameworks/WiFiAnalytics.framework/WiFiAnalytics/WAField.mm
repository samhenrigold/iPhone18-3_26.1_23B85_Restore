@interface WAField
- (BOOL)BOOLValue;
- (NSData)bytesValue;
- (NSMutableArray)repeatableValues;
- (NSString)stringValue;
- (WAField)init;
- (WAField)initWithCoder:(id)coder;
- (WAField)initWithType:(int64_t)type isRepeatable:(BOOL)repeatable andKey:(id)key andTypeInfoForRepeatableSubmessage:(id)submessage;
- (WAField)initWithType:(int64_t)type isRepeatable:(BOOL)repeatable key:(id)key repeatableValues:(id)values doubleValue:(double)value floatValue:(float)floatValue int32Value:(int)int32Value int64Value:(int64_t)self0 uint32Val:(unsigned int)self1 uint64Value:(unint64_t)self2 BOOLValue:(BOOL)self3 stringValue:(id)self4 bytesValue:(id)self5 subMessageValue:(id)self6 andTypeInfoForRepeatableSubmessage:(id)self7;
- (WAMessageAWD)subMessageValue;
- (double)doubleValue;
- (float)floatValue;
- (id)_ownTypeAsString;
- (id)_typeAsString:(int64_t)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)int32Value;
- (int64_t)int64Value;
- (unint64_t)uint64Value;
- (unsigned)uint32Value;
- (void)_addRepeatableValue:(id)value;
- (void)_throwIncorrecTypeExceptionForType:(int64_t)type isGet:(BOOL)get;
- (void)_throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:(BOOL)repeatable isGet:(BOOL)get forType:(int64_t)type;
- (void)addRepeatableBoolValue:(BOOL)value;
- (void)addRepeatableBytes:(id)bytes;
- (void)addRepeatableDoubleValue:(double)value;
- (void)addRepeatableFloatValue:(float)value;
- (void)addRepeatableInt32Value:(int)value;
- (void)addRepeatableInt64Value:(int64_t)value;
- (void)addRepeatableString:(id)string;
- (void)addRepeatableSubMessageValue:(id)value;
- (void)addRepeatableUInt32Value:(unsigned int)value;
- (void)addRepeatableUInt64Value:(unint64_t)value;
- (void)encodeWithCoder:(id)coder;
- (void)setBoolValue:(BOOL)value;
- (void)setBytesValue:(id)value;
- (void)setDoubleValue:(double)value;
- (void)setFloatValue:(float)value;
- (void)setInt32Value:(int)value;
- (void)setInt64Value:(int64_t)value;
- (void)setRepeatableValues:(id)values;
- (void)setStringValue:(id)value;
- (void)setSubMessageValue:(id)value;
- (void)setUint32Value:(unsigned int)value;
- (void)setUint64Value:(unint64_t)value;
@end

@implementation WAField

- (WAField)initWithType:(int64_t)type isRepeatable:(BOOL)repeatable andKey:(id)key andTypeInfoForRepeatableSubmessage:(id)submessage
{
  LOBYTE(v8) = 0;
  LODWORD(v7) = 0;
  return [(WAField *)self initWithType:type isRepeatable:repeatable key:key repeatableValues:0 doubleValue:0 floatValue:0 int32Value:0.0 int64Value:0.0 uint32Val:v7 uint64Value:0 BOOLValue:v8 stringValue:0 bytesValue:0 subMessageValue:0 andTypeInfoForRepeatableSubmessage:submessage];
}

- (WAField)initWithType:(int64_t)type isRepeatable:(BOOL)repeatable key:(id)key repeatableValues:(id)values doubleValue:(double)value floatValue:(float)floatValue int32Value:(int)int32Value int64Value:(int64_t)self0 uint32Val:(unsigned int)self1 uint64Value:(unint64_t)self2 BOOLValue:(BOOL)self3 stringValue:(id)self4 bytesValue:(id)self5 subMessageValue:(id)self6 andTypeInfoForRepeatableSubmessage:(id)self7
{
  v17 = *&int32Value;
  repeatableCopy = repeatable;
  v48 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valuesCopy = values;
  stringValueCopy = stringValue;
  bytesValueCopy = bytesValue;
  messageValueCopy = messageValue;
  submessageCopy = submessage;
  v43.receiver = self;
  v43.super_class = WAField;
  v30 = [(WAField *)&v43 init];
  v31 = v30;
  if (!v30)
  {
    value = 0;
    goto LABEL_7;
  }

  if (type && keyCopy)
  {
    v30->_type = type;
    v30->_isRepeatable = repeatableCopy;
    v32 = [keyCopy mutableCopy];
    key = v31->_key;
    v31->_key = v32;

    v34 = [submessageCopy mutableCopy];
    typeInfoForRepeatableSubmessage = v31->_typeInfoForRepeatableSubmessage;
    v31->_typeInfoForRepeatableSubmessage = v34;

    if (repeatableCopy)
    {
      v37 = valuesCopy;
LABEL_6:
      value = v31->_value;
      v31->_value = v37;
      goto LABEL_7;
    }

    if (type <= 5)
    {
      if (type > 2)
      {
        if (type == 3)
        {
          v37 = [MEMORY[0x1E696AD98] numberWithInt:v17];
          goto LABEL_6;
        }

        if (type == 4)
        {
          [MEMORY[0x1E696AD98] numberWithLongLong:int64Value];
        }

        else
        {
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:val];
        }

        goto LABEL_13;
      }

      if (type == 1)
      {
        v37 = [MEMORY[0x1E696AD98] numberWithDouble:value];
        goto LABEL_6;
      }

      if (type == 2)
      {
        *&v36 = floatValue;
        v37 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
        goto LABEL_6;
      }

      goto LABEL_31;
    }

    if (type <= 7)
    {
      if (type == 6)
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64Value];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithBool:lValue];
      }

      v37 = LABEL_13:;
      goto LABEL_6;
    }

    switch(type)
    {
      case 8:
        v40 = stringValueCopy;
        break;
      case 9:
        v40 = bytesValueCopy;
        break;
      case 10:
        v37 = [messageValueCopy copy];
        goto LABEL_6;
      default:
LABEL_31:
        value = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(value, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v45 = "[WAField initWithType:isRepeatable:key:repeatableValues:doubleValue:floatValue:int32Value:int64Value:uint32Val:uint64Value:BOOLValue:stringValue:bytesValue:subMessageValue:andTypeInfoForRepeatableSubmessage:]";
          v46 = 1024;
          v47 = 83;
          _os_log_impl(&dword_1C8460000, value, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:[WAField init] Unhandled field type", buf, 0x12u);
        }

        goto LABEL_7;
    }

    v37 = [v40 mutableCopy];
    goto LABEL_6;
  }

  v41 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v45 = "[WAField initWithType:isRepeatable:key:repeatableValues:doubleValue:floatValue:int32Value:int64Value:uint32Val:uint64Value:BOOLValue:stringValue:bytesValue:subMessageValue:andTypeInfoForRepeatableSubmessage:]";
    v46 = 1024;
    v47 = 40;
    _os_log_impl(&dword_1C8460000, v41, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: didn't get required arguments", buf, 0x12u);
  }

  value = &v31->super;
  v31 = 0;
LABEL_7:

  return v31;
}

- (NSMutableArray)repeatableValues
{
  if ([(WAField *)self isRepeatable])
  {
    v3 = self->_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)doubleValue
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 1)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;

      [value doubleValue];
      return result;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v13 = 136446722;
      v14 = "[WAField doubleValue]";
      v15 = 1024;
      *v16 = 112;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single double value from a repeatable field (this field is a %@)", &v13, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:1];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField doubleValue]";
      v15 = 1024;
      *v16 = 111;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get double value from field of wrong type (this field is a %@). Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:1 isGet:1];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v13, 0x16u);
  }

  return 0.0;
}

- (float)floatValue
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 2)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;

      [value floatValue];
      return result;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v13 = 136446722;
      v14 = "[WAField floatValue]";
      v15 = 1024;
      *v16 = 121;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single float value from a repeatable field (this field is a %@)", &v13, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:2];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField floatValue]";
      v15 = 1024;
      *v16 = 120;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get float value from field of wrong type (this field is a %@) Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:2 isGet:1];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v13, 0x16u);
  }

  return 0.0;
}

- (int)int32Value
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 3)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;

      return [value intValue];
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v13 = 136446722;
      v14 = "[WAField int32Value]";
      v15 = 1024;
      *v16 = 130;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single int32 value from a repeatable field (this field is a %@)", &v13, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:5];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField int32Value]";
      v15 = 1024;
      *v16 = 129;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get int32 value from field of wrong type (this field is a %@) Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:3 isGet:1];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v13, 0x16u);
  }

  return 0;
}

- (int64_t)int64Value
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 4)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;

      return [value longLongValue];
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v13 = 136446722;
      v14 = "[WAField int64Value]";
      v15 = 1024;
      *v16 = 139;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single int64 value from a repeatable field (this field is a %@)", &v13, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:4];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField int64Value]";
      v15 = 1024;
      *v16 = 138;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get int64 value from field of wrong type (this field is a %@) Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:4 isGet:1];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v13, 0x16u);
  }

  return 0;
}

- (unsigned)uint32Value
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 5)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;

      return [value unsignedIntValue];
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v13 = 136446722;
      v14 = "[WAField uint32Value]";
      v15 = 1024;
      *v16 = 148;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single uint32 value from a repeatable field (this field is a %@)", &v13, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:5];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField uint32Value]";
      v15 = 1024;
      *v16 = 147;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get uint32 value from field of wrong type (this field is a %@) Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:5 isGet:1];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v13, 0x16u);
  }

  return 0;
}

- (unint64_t)uint64Value
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 6)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;

      return [value unsignedLongLongValue];
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v13 = 136446722;
      v14 = "[WAField uint64Value]";
      v15 = 1024;
      *v16 = 157;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single uint64 value from a repeatable field (this field is a %@)", &v13, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:6];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField uint64Value]";
      v15 = 1024;
      *v16 = 156;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get uint64 value from field of wrong type (this field is a %@) Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:6 isGet:1];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v13, 0x16u);
  }

  return 0;
}

- (BOOL)BOOLValue
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 7)
  {
    if (![(WAField *)self isRepeatable])
    {
      value = self->_value;

      return [value BOOLValue];
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v13 = 136446722;
      v14 = "[WAField BOOLValue]";
      v15 = 1024;
      *v16 = 166;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single BOOL value from a repeatable field (this field is a %@)", &v13, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:7];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField BOOLValue]";
      v15 = 1024;
      *v16 = 165;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get BOOL value from field of wrong type (this field is a %@) Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:7 isGet:1];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v13, 0x16u);
  }

  return 0;
}

- (NSString)stringValue
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 8)
  {
    if (![(WAField *)self isRepeatable])
    {
      v3 = self->_value;
      goto LABEL_4;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v13 = 136446722;
      v14 = "[WAField stringValue]";
      v15 = 1024;
      *v16 = 175;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single string value from a repeatable field (this field is a %@)", &v13, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:8];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField stringValue]";
      v15 = 1024;
      *v16 = 174;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get string value from field of wrong type (this field is a %@) Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:8 isGet:1];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v13, 0x16u);
  }

  v3 = 0;
LABEL_4:

  return v3;
}

- (NSData)bytesValue
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 9)
  {
    if (![(WAField *)self isRepeatable])
    {
      v3 = self->_value;
      goto LABEL_4;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v13 = 136446722;
      v14 = "[WAField bytesValue]";
      v15 = 1024;
      *v16 = 184;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single bytes value from a repeatable field (this field is a %@)", &v13, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:9];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField bytesValue]";
      v15 = 1024;
      *v16 = 183;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get bytes value from field of wrong type (this field is a %@) Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:9 isGet:1];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v13, 0x16u);
  }

  v3 = 0;
LABEL_4:

  return v3;
}

- (WAMessageAWD)subMessageValue
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 10)
  {
    if (![(WAField *)self isRepeatable])
    {
      v3 = self->_value;
      goto LABEL_4;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v13 = 136446722;
      v14 = "[WAField subMessageValue]";
      v15 = 1024;
      *v16 = 193;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get a single submessage value from a repeatable field (this field is a %@)", &v13, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:1 forType:10];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField subMessageValue]";
      v15 = 1024;
      *v16 = 192;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to get submessage value from field of wrong type (this field is a %@) Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:10 isGet:1];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString3 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString3;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly access key %@ of type %@", &v13, 0x16u);
  }

  v3 = 0;
LABEL_4:

  return v3;
}

- (void)setDoubleValue:(double)value
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 1)
  {
    if (![(WAField *)self isRepeatable])
    {
      self->_value = [MEMORY[0x1E696AD98] numberWithDouble:value];

      MEMORY[0x1EEE66BB8]();
      return;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setDoubleValue:]";
      v15 = 1024;
      *v16 = 202;
      *&v16[4] = 2048;
      *&v16[6] = value;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%f) on a repeatable field (%@). Ignored.", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:1];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setDoubleValue:]";
      v15 = 1024;
      *v16 = 201;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set double value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:1 isGet:0];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v13, 0x16u);
  }
}

- (void)setFloatValue:(float)value
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 2)
  {
    if (![(WAField *)self isRepeatable])
    {
      *&v5 = value;
      self->_value = [MEMORY[0x1E696AD98] numberWithFloat:v5];

      MEMORY[0x1EEE66BB8]();
      return;
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField setFloatValue:]";
      v16 = 1024;
      *v17 = 212;
      *&v17[4] = 2048;
      *&v17[6] = value;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%f) on a repeatable field (%@). Ignored.", &v14, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:2];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField setFloatValue:]";
      v16 = 1024;
      *v17 = 211;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set float value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v14, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:2 isGet:0];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    *v17 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v14, 0x16u);
  }
}

- (void)setInt32Value:(int)value
{
  v3 = *&value;
  v17 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 3)
  {
    if (![(WAField *)self isRepeatable])
    {
      self->_value = [MEMORY[0x1E696AD98] numberWithInt:v3];

      MEMORY[0x1EEE66BB8]();
      return;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setInt32Value:]";
      v15 = 1024;
      *v16 = 222;
      *&v16[4] = 1024;
      *&v16[6] = v3;
      *&v16[10] = 2112;
      *&v16[12] = v9;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%d) on a repeatable field (%@). Ignored.", &v13, 0x22u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:3];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setInt32Value:]";
      v15 = 1024;
      *v16 = 221;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      *&v16[14] = 2112;
      *&v16[16] = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set an int32 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:3 isGet:0];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v13, 0x16u);
  }
}

- (void)setInt64Value:(int64_t)value
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 4)
  {
    if (![(WAField *)self isRepeatable])
    {
      self->_value = [MEMORY[0x1E696AD98] numberWithLongLong:value];

      MEMORY[0x1EEE66BB8]();
      return;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setInt64Value:]";
      v15 = 1024;
      *v16 = 232;
      *&v16[4] = 2048;
      *&v16[6] = value;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%lld) on a repeatable field (%@). Ignored.", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:4];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setInt64Value:]";
      v15 = 1024;
      *v16 = 231;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set an int64 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:4 isGet:0];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v13, 0x16u);
  }
}

- (void)setUint32Value:(unsigned int)value
{
  v3 = *&value;
  v17 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 5)
  {
    if (![(WAField *)self isRepeatable])
    {
      self->_value = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];

      MEMORY[0x1EEE66BB8]();
      return;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setUint32Value:]";
      v15 = 1024;
      *v16 = 241;
      *&v16[4] = 1024;
      *&v16[6] = v3;
      *&v16[10] = 2112;
      *&v16[12] = v9;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%u) on a repeatable field (%@). Ignored.", &v13, 0x22u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:5];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setUint32Value:]";
      v15 = 1024;
      *v16 = 240;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      *&v16[14] = 2112;
      *&v16[16] = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set uint32 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:5 isGet:0];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v13, 0x16u);
  }
}

- (void)setUint64Value:(unint64_t)value
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 6)
  {
    if (![(WAField *)self isRepeatable])
    {
      self->_value = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:value];

      MEMORY[0x1EEE66BB8]();
      return;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setUint64Value:]";
      v15 = 1024;
      *v16 = 251;
      *&v16[4] = 2048;
      *&v16[6] = value;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%llu) on a repeatable field (%@). Ignored.", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:6];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setUint64Value:]";
      v15 = 1024;
      *v16 = 250;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set uint64 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:6 isGet:0];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v13, 0x16u);
  }
}

- (void)setBoolValue:(BOOL)value
{
  valueCopy = value;
  v17 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 7)
  {
    if (![(WAField *)self isRepeatable])
    {
      self->_value = [MEMORY[0x1E696AD98] numberWithBool:valueCopy];

      MEMORY[0x1EEE66BB8]();
      return;
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setBoolValue:]";
      v15 = 1024;
      *v16 = 261;
      *&v16[4] = 1024;
      *&v16[6] = valueCopy;
      *&v16[10] = 2112;
      *&v16[12] = v9;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%d) on a repeatable field (%@). Ignored.", &v13, 0x22u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:7];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v13 = 136446978;
      v14 = "[WAField setBoolValue:]";
      v15 = 1024;
      *v16 = 260;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      *&v16[14] = 2112;
      *&v16[16] = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set BOOL value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v13, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:7 isGet:0];
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    *v16 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v13, 0x16u);
  }
}

- (void)setStringValue:(id)value
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([(WAField *)self type]== 8)
  {
    if (![(WAField *)self isRepeatable])
    {
      objc_storeStrong(&self->_value, value);
      goto LABEL_4;
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField setStringValue:]";
      v16 = 1024;
      *v17 = 271;
      *&v17[4] = 2112;
      *&v17[6] = valueCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%@) on a repeatable field (%@). Ignored.", &v14, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:8];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField setStringValue:]";
      v16 = 1024;
      *v17 = 270;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set string value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v14, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:8 isGet:0];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    *v17 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v14, 0x16u);
  }

LABEL_4:
}

- (void)setBytesValue:(id)value
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([(WAField *)self type]== 9)
  {
    if (![(WAField *)self isRepeatable])
    {
      objc_storeStrong(&self->_value, value);
      goto LABEL_4;
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField setBytesValue:]";
      v16 = 1024;
      *v17 = 281;
      *&v17[4] = 2112;
      *&v17[6] = valueCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%@) on a repeatable field (%@). Ignored.", &v14, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:9];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField setBytesValue:]";
      v16 = 1024;
      *v17 = 280;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set bytes value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v14, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:9 isGet:0];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    *v17 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v14, 0x16u);
  }

LABEL_4:
}

- (void)setSubMessageValue:(id)value
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([(WAField *)self type]== 10)
  {
    if (![(WAField *)self isRepeatable])
    {
      objc_storeStrong(&self->_value, value);
      goto LABEL_4;
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField setSubMessageValue:]";
      v16 = 1024;
      *v17 = 291;
      *&v17[4] = 2112;
      *&v17[6] = valueCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set a single value (%@) on a repeatable field (%@). Ignored.", &v14, 0x26u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:0 isGet:0 forType:10];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      v14 = 136446978;
      v15 = "[WAField setSubMessageValue:]";
      v16 = 1024;
      *v17 = 290;
      *&v17[4] = 2112;
      *&v17[6] = _ownTypeAsString;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set submessage value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v14, 0x26u);
    }

    [(WAField *)self _throwIncorrecTypeExceptionForType:10 isGet:0];
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    *v17 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v14, 0x16u);
  }

LABEL_4:
}

- (void)setRepeatableValues:(id)values
{
  v14 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  if ([(WAField *)self isRepeatable])
  {
    objc_storeStrong(&self->_value, values);
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446466;
      v11 = "[WAField setRepeatableValues:]";
      v12 = 1024;
      LODWORD(v13) = 300;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to set to set repeatable values on a field that's not repeatable. Ignored", &v10, 0x12u);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:1 isGet:0 forType:0];
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = [(WAField *)self key];
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = _ownTypeAsString;
      _os_log_fault_impl(&dword_1C8460000, v7, OS_LOG_TYPE_FAULT, "Failed to properly set key %@ of type %@", &v10, 0x16u);
    }
  }
}

- (void)addRepeatableDoubleValue:(double)value
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 1)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:value];
    [(WAField *)self _addRepeatableValue:?];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      *buf = 136446978;
      v13 = "[WAField addRepeatableDoubleValue:]";
      v14 = 1024;
      *v15 = 309;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable double value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [(WAField *)self key];
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      *v15 = _ownTypeAsString2;
      _os_log_fault_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }
  }
}

- (void)addRepeatableFloatValue:(float)value
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 2)
  {
    *&v5 = value;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    [(WAField *)self _addRepeatableValue:?];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v8 = [(WAField *)self key];
      *buf = 136446978;
      v14 = "[WAField addRepeatableFloatValue:]";
      v15 = 1024;
      *v16 = 318;
      *&v16[4] = 2112;
      *&v16[6] = _ownTypeAsString;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable float value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [(WAField *)self key];
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      *v16 = _ownTypeAsString2;
      _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }
  }
}

- (void)addRepeatableInt32Value:(int)value
{
  v3 = *&value;
  v18 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 3)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [(WAField *)self _addRepeatableValue:?];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      *buf = 136446978;
      v13 = "[WAField addRepeatableInt32Value:]";
      v14 = 1024;
      *v15 = 327;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable int32 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [(WAField *)self key];
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      *v15 = _ownTypeAsString2;
      _os_log_fault_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }
  }
}

- (void)addRepeatableInt64Value:(int64_t)value
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 4)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:value];
    [(WAField *)self _addRepeatableValue:?];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      *buf = 136446978;
      v13 = "[WAField addRepeatableInt64Value:]";
      v14 = 1024;
      *v15 = 336;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable int64 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [(WAField *)self key];
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      *v15 = _ownTypeAsString2;
      _os_log_fault_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }
  }
}

- (void)addRepeatableUInt32Value:(unsigned int)value
{
  v3 = *&value;
  v18 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 5)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    [(WAField *)self _addRepeatableValue:?];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      *buf = 136446978;
      v13 = "[WAField addRepeatableUInt32Value:]";
      v14 = 1024;
      *v15 = 345;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable uint32 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [(WAField *)self key];
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      *v15 = _ownTypeAsString2;
      _os_log_fault_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }
  }
}

- (void)addRepeatableUInt64Value:(unint64_t)value
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 6)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:value];
    [(WAField *)self _addRepeatableValue:?];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      *buf = 136446978;
      v13 = "[WAField addRepeatableUInt64Value:]";
      v14 = 1024;
      *v15 = 354;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable uint64 value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [(WAField *)self key];
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      *v15 = _ownTypeAsString2;
      _os_log_fault_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }
  }
}

- (void)addRepeatableBoolValue:(BOOL)value
{
  valueCopy = value;
  v18 = *MEMORY[0x1E69E9840];
  if ([(WAField *)self type]== 7)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:valueCopy];
    [(WAField *)self _addRepeatableValue:?];
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      *buf = 136446978;
      v13 = "[WAField addRepeatableBoolValue:]";
      v14 = 1024;
      *v15 = 363;
      *&v15[4] = 2112;
      *&v15[6] = _ownTypeAsString;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable BOOL value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", buf, 0x26u);
    }

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [(WAField *)self key];
      _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      *v15 = _ownTypeAsString2;
      _os_log_fault_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", buf, 0x16u);
    }
  }
}

- (void)addRepeatableString:(id)string
{
  v17 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (stringCopy)
  {
    if ([(WAField *)self type]== 8)
    {
      [(WAField *)self _addRepeatableValue:stringCopy];
      goto LABEL_4;
    }

    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v11 = 136446978;
      v12 = "[WAField addRepeatableString:]";
      v13 = 1024;
      *v14 = 373;
      *&v14[4] = 2112;
      *&v14[6] = _ownTypeAsString;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable string value on a WAField instance that's not of that type (type is %@). Set was ignored . Field key: %@", &v11, 0x26u);

      goto LABEL_9;
    }
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self key];
      v11 = 136446722;
      v12 = "[WAField addRepeatableString:]";
      v13 = 1024;
      *v14 = 372;
      *&v14[4] = 2112;
      *&v14[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add nil string value - preventing crash by bailing but DATA LOSS HAS LIKELY OCCURRED as the caller meant to add something. Field key: %@", &v11, 0x1Cu);
LABEL_9:
    }
  }

  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v9 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    *v14 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", &v11, 0x16u);
  }

LABEL_4:
}

- (void)addRepeatableBytes:(id)bytes
{
  v17 = *MEMORY[0x1E69E9840];
  bytesCopy = bytes;
  if (bytesCopy)
  {
    if ([(WAField *)self type]== 9)
    {
      [(WAField *)self _addRepeatableValue:bytesCopy];
      goto LABEL_4;
    }

    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v11 = 136446978;
      v12 = "[WAField addRepeatableBytes:]";
      v13 = 1024;
      *v14 = 383;
      *&v14[4] = 2112;
      *&v14[6] = _ownTypeAsString;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable bytes value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v11, 0x26u);

      goto LABEL_9;
    }
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self key];
      v11 = 136446722;
      v12 = "[WAField addRepeatableBytes:]";
      v13 = 1024;
      *v14 = 382;
      *&v14[4] = 2112;
      *&v14[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add nil bytes value - preventing crash by bailing but DATA LOSS HAS LIKELY OCCURRED as the caller meant to add something. Field key: %@", &v11, 0x1Cu);
LABEL_9:
    }
  }

  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v9 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    *v14 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", &v11, 0x16u);
  }

LABEL_4:
}

- (void)addRepeatableSubMessageValue:(id)value
{
  v17 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (valueCopy)
  {
    if ([(WAField *)self type]== 10)
    {
      [(WAField *)self _addRepeatableValue:valueCopy];
      goto LABEL_4;
    }

    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v7 = [(WAField *)self key];
      v11 = 136446978;
      v12 = "[WAField addRepeatableSubMessageValue:]";
      v13 = 1024;
      *v14 = 393;
      *&v14[4] = 2112;
      *&v14[6] = _ownTypeAsString;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable submessage value on a WAField instance that's not of that type (type is %@). Set was ignored. Field key: %@", &v11, 0x26u);

      goto LABEL_9;
    }
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _ownTypeAsString = [(WAField *)self key];
      v11 = 136446722;
      v12 = "[WAField addRepeatableSubMessageValue:]";
      v13 = 1024;
      *v14 = 392;
      *&v14[4] = 2112;
      *&v14[6] = _ownTypeAsString;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add nil submessage value - preventing crash by bailing but DATA LOSS HAS LIKELY OCCURRED as the caller meant to add something. Field key: %@", &v11, 0x1Cu);
LABEL_9:
    }
  }

  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v9 = [(WAField *)self key];
    _ownTypeAsString2 = [(WAField *)self _ownTypeAsString];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    *v14 = _ownTypeAsString2;
    _os_log_fault_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", &v11, 0x16u);
  }

LABEL_4:
}

- (void)_addRepeatableValue:(id)value
{
  *&v15[13] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([(WAField *)self isRepeatable])
  {
    if (!self->_value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      value = self->_value;
      self->_value = v5;
    }

    [self->_value addObject:valueCopy];
  }

  else
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(WAField *)self key];
      v12 = 136446722;
      v13 = "[WAField _addRepeatableValue:]";
      v14 = 1024;
      *v15 = 402;
      v15[2] = 2112;
      *&v15[3] = v8;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to add a repeatable values to a field that's not repeatable. This action was ignored. Key: %@", &v12, 0x1Cu);
    }

    [(WAField *)self _throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:1 isGet:0 forType:0];
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [(WAField *)self key];
      _ownTypeAsString = [(WAField *)self _ownTypeAsString];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      *v15 = _ownTypeAsString;
      _os_log_fault_impl(&dword_1C8460000, v9, OS_LOG_TYPE_FAULT, "Failed to properly add key %@ of type %@", &v12, 0x16u);
    }
  }
}

- (WAField)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Please use the init defined in the header for this class" userInfo:0];
  objc_exception_throw(v2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = MEMORY[0x1E696ACD0];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v22 = 0;
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v22];
  v15 = v22;
  v21 = v15;
  v16 = [v20 unarchivedObjectOfClasses:v13 fromData:v14 error:&v21];
  v17 = v21;

  if (v17)
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "[WAField copyWithZone:]";
      v25 = 1024;
      v26 = 420;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:WAMessageAWD copyWithZone failed, unarchive/archive error: %@", buf, 0x1Cu);
    }
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
  [coderCopy encodeBool:self->_isRepeatable forKey:@"_isRepeatable"];
  [coderCopy encodeObject:self->_key forKey:@"_key"];
  typeInfoForRepeatableSubmessage = self->_typeInfoForRepeatableSubmessage;
  if (typeInfoForRepeatableSubmessage)
  {
    [coderCopy encodeObject:typeInfoForRepeatableSubmessage forKey:@"_typeInfoForRepeatableSubmessage"];
  }

  value = self->_value;
  if (value)
  {
    [coderCopy encodeObject:value forKey:@"_value"];
  }
}

- (WAField)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = WAField;
  v5 = [(WAField *)&v25 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v5->_isRepeatable = [coderCopy decodeBoolForKey:@"_isRepeatable"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_typeInfoForRepeatableSubmessage"];
    typeInfoForRepeatableSubmessage = v5->_typeInfoForRepeatableSubmessage;
    v5->_typeInfoForRepeatableSubmessage = v8;

    if (v5->_isRepeatable)
    {
      v24 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = [v24 setWithObjects:{v10, v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
      v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"_value"];
      value = v5->_value;
      v5->_value = v19;

LABEL_7:
      goto LABEL_8;
    }

    type = [(WAField *)v5 type];
    if (type > 7)
    {
      if (type == 8 || type == 9 || type == 10)
      {
        goto LABEL_6;
      }
    }

    else if ((type - 1) < 7)
    {
LABEL_6:
      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_value"];
      v18 = v5->_value;
      v5->_value = v22;
      goto LABEL_7;
    }

    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "[WAField initWithCoder:]";
      v28 = 1024;
      v29 = 472;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: unexpected type", buf, 0x12u);
    }

    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (id)description
{
  v93 = *MEMORY[0x1E69E9840];
  if (![(WAField *)self type])
  {
    v62 = @"No type, likely not initialized";
    goto LABEL_91;
  }

  string = [MEMORY[0x1E696AD60] string];
  v4 = [(WAField *)self key];
  _ownTypeAsString = [(WAField *)self _ownTypeAsString];
  [string appendFormat:@"%@ - %@: ", v4, _ownTypeAsString];

  if ([(WAField *)self isRepeatable])
  {
    repeatableValues = [(WAField *)self repeatableValues];
    v7 = [repeatableValues count];

    if (v7)
    {
      v8 = @"[\r";
    }

    else
    {
      v8 = @"[]";
    }

    [string appendString:v8];
  }

  for (i = 0; ; ++i)
  {
    if ([(WAField *)self isRepeatable])
    {
      repeatableValues2 = [(WAField *)self repeatableValues];
      v11 = [repeatableValues2 count];

      v12 = v11 >= 10 ? 10 : v11;
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    isRepeatable = [(WAField *)self isRepeatable];
    if (i >= v13)
    {
      break;
    }

    if (isRepeatable)
    {
      [string appendString:@"          "];
    }

    type = [(WAField *)self type];
    if (type > 5)
    {
      if (type > 7)
      {
        switch(type)
        {
          case 8:
            v43 = MEMORY[0x1E696AEC0];
            isRepeatable2 = [(WAField *)self isRepeatable];
            if (isRepeatable2)
            {
              repeatableValues3 = [(WAField *)self repeatableValues];
              stringValue = [repeatableValues3 objectAtIndexedSubscript:i];
              v67 = stringValue;
            }

            else
            {
              stringValue = [(WAField *)self stringValue];
              v70 = stringValue;
            }

            v55 = [v43 stringWithFormat:@"%@", stringValue];
            [string appendString:v55];

            if (isRepeatable2)
            {

              v27 = repeatableValues3;
            }

            else
            {
              v27 = v70;
            }

            break;
          case 9:
            v49 = MEMORY[0x1E696AEC0];
            isRepeatable3 = [(WAField *)self isRepeatable];
            if (isRepeatable3)
            {
              repeatableValues4 = [(WAField *)self repeatableValues];
              bytesValue = [repeatableValues4 objectAtIndexedSubscript:i];
              v65 = bytesValue;
            }

            else
            {
              bytesValue = [(WAField *)self bytesValue];
              v68 = bytesValue;
            }

            v59 = [v49 stringWithFormat:@"%@", bytesValue];
            [string appendString:v59];

            if (isRepeatable3)
            {

              v27 = repeatableValues4;
            }

            else
            {
              v27 = v68;
            }

            break;
          case 10:
            v19 = MEMORY[0x1E696AEC0];
            isRepeatable4 = [(WAField *)self isRepeatable];
            if (isRepeatable4)
            {
              repeatableValues5 = [(WAField *)self repeatableValues];
              subMessageValue = [repeatableValues5 objectAtIndexedSubscript:i];
              v64 = subMessageValue;
            }

            else
            {
              subMessageValue = [(WAField *)self subMessageValue];
              v66 = subMessageValue;
            }

            v57 = [v19 stringWithFormat:@"%@", subMessageValue];
            [string appendString:v57];

            if (isRepeatable4)
            {

              v27 = repeatableValues5;
            }

            else
            {
              v27 = v66;
            }

            break;
          default:
LABEL_54:
            v27 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              type2 = [(WAField *)self type];
              *buf = 136446722;
              v88 = "[WAField description]";
              v89 = 1024;
              v90 = 542;
              v91 = 2048;
              v92 = type2;
              _os_log_impl(&dword_1C8460000, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: Unhandled type: %ld", buf, 0x1Cu);
            }

            break;
        }

LABEL_80:

        goto LABEL_81;
      }

      if (type == 6)
      {
        v37 = MEMORY[0x1E696AEC0];
        isRepeatable5 = [(WAField *)self isRepeatable];
        if (isRepeatable5)
        {
          repeatableValues6 = [(WAField *)self repeatableValues];
          v72 = [repeatableValues6 objectAtIndexedSubscript:i];
          unsignedLongLongValue = [v72 unsignedLongLongValue];
        }

        else
        {
          unsignedLongLongValue = [(WAField *)self uint64Value];
        }

        v53 = [v37 stringWithFormat:@"%llu", unsignedLongLongValue];
        [string appendString:v53];

        if (isRepeatable5)
        {

          v27 = repeatableValues6;
          goto LABEL_80;
        }
      }

      else
      {
        v28 = MEMORY[0x1E696AEC0];
        isRepeatable6 = [(WAField *)self isRepeatable];
        selfCopy = self;
        if (isRepeatable6)
        {
          repeatableValues7 = [(WAField *)self repeatableValues];
          selfCopy = [repeatableValues7 objectAtIndexedSubscript:i];
          v69 = selfCopy;
        }

        v31 = [v28 stringWithFormat:@"%d", objc_msgSend(selfCopy, "BOOLValue")];
        [string appendString:v31];

        if (isRepeatable6)
        {

          v27 = repeatableValues7;
          goto LABEL_80;
        }
      }
    }

    else if (type <= 2)
    {
      if (type == 1)
      {
        v32 = MEMORY[0x1E696AEC0];
        isRepeatable7 = [(WAField *)self isRepeatable];
        selfCopy2 = self;
        if (isRepeatable7)
        {
          repeatableValues8 = [(WAField *)self repeatableValues];
          selfCopy2 = [repeatableValues8 objectAtIndexedSubscript:i];
          v80 = selfCopy2;
        }

        [selfCopy2 doubleValue];
        v36 = [v32 stringWithFormat:@"%f", v35];
        [string appendString:v36];

        if (isRepeatable7)
        {

          v27 = repeatableValues8;
          goto LABEL_80;
        }
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_54;
        }

        v22 = MEMORY[0x1E696AEC0];
        isRepeatable8 = [(WAField *)self isRepeatable];
        selfCopy3 = self;
        if (isRepeatable8)
        {
          repeatableValues9 = [(WAField *)self repeatableValues];
          selfCopy3 = [repeatableValues9 objectAtIndexedSubscript:i];
          v77 = selfCopy3;
        }

        [selfCopy3 floatValue];
        v26 = [v22 stringWithFormat:@"%f", v25];
        [string appendString:v26];

        if (isRepeatable8)
        {

          v27 = repeatableValues9;
          goto LABEL_80;
        }
      }
    }

    else if (type == 3)
    {
      v40 = MEMORY[0x1E696AEC0];
      isRepeatable9 = [(WAField *)self isRepeatable];
      if (isRepeatable9)
      {
        repeatableValues10 = [(WAField *)self repeatableValues];
        v79 = [repeatableValues10 objectAtIndexedSubscript:i];
        intValue = [v79 intValue];
      }

      else
      {
        intValue = [(WAField *)self int32Value];
      }

      v54 = [v40 stringWithFormat:@"%d", intValue];
      [string appendString:v54];

      if (isRepeatable9)
      {

        v27 = repeatableValues10;
        goto LABEL_80;
      }
    }

    else if (type == 4)
    {
      v46 = MEMORY[0x1E696AEC0];
      isRepeatable10 = [(WAField *)self isRepeatable];
      if (isRepeatable10)
      {
        repeatableValues11 = [(WAField *)self repeatableValues];
        v76 = [repeatableValues11 objectAtIndexedSubscript:i];
        intValue2 = [v76 intValue];
      }

      else
      {
        intValue2 = [(WAField *)self int64Value];
      }

      v58 = [v46 stringWithFormat:@"%lld", intValue2];
      [string appendString:v58];

      if (isRepeatable10)
      {

        v27 = repeatableValues11;
        goto LABEL_80;
      }
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      isRepeatable11 = [(WAField *)self isRepeatable];
      if (isRepeatable11)
      {
        repeatableValues12 = [(WAField *)self repeatableValues];
        v74 = [repeatableValues12 objectAtIndexedSubscript:i];
        unsignedIntValue = [v74 unsignedIntValue];
      }

      else
      {
        unsignedIntValue = [(WAField *)self uint32Value];
      }

      v56 = [v16 stringWithFormat:@"%u", unsignedIntValue];
      [string appendString:v56];

      if (isRepeatable11)
      {

        v27 = repeatableValues12;
        goto LABEL_80;
      }
    }

LABEL_81:
    if ([(WAField *)self isRepeatable])
    {
      [string appendString:{@", \r"}];
    }

    if (i == 9)
    {
      [string appendString:@"          ...\r"];
    }
  }

  if (isRepeatable)
  {
    repeatableValues13 = [(WAField *)self repeatableValues];
    v61 = [repeatableValues13 count];

    if (v61)
    {
      [string appendString:@"     ]"];
    }
  }

  v62 = [MEMORY[0x1E696AEC0] stringWithString:string];

LABEL_91:

  return v62;
}

- (id)_typeAsString:(int64_t)string
{
  v27 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  if (string <= 4)
  {
    if (string > 1)
    {
      if (string == 2)
      {
        v6 = @"float";
      }

      else if (string == 3)
      {
        v6 = @"int32";
      }

      else
      {
        v6 = @"int64";
      }

      goto LABEL_28;
    }

    if (string)
    {
      if (string != 1)
      {
LABEL_25:
        v8 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v22 = "[WAField _typeAsString:]";
          v23 = 1024;
          v24 = 600;
          v25 = 2048;
          type = [(WAField *)self type];
          _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: Unhandled type: %ld", buf, 0x1Cu);
        }

        v6 = @"[UNDETERMINED TYPE]";
        goto LABEL_28;
      }

      v6 = @"double";
    }

    else
    {
      v6 = @"[NO TYPE INFO]";
    }
  }

  else
  {
    if (string <= 7)
    {
      if (string == 5)
      {
        v6 = @"uint32";
      }

      else if (string == 6)
      {
        v6 = @"uint64";
      }

      else
      {
        v6 = @"BOOL";
      }

      goto LABEL_28;
    }

    switch(string)
    {
      case 8:
        v6 = @"string";
        break;
      case 9:
        v6 = @"bytes";
        break;
      case 10:
        if ([(WAField *)self isRepeatable])
        {
          v7 = [(NSString *)self->_typeInfoForRepeatableSubmessage componentsSeparatedByString:@"^^"];
        }

        else
        {
          v7 = 0;
        }

        if ([(WAField *)self isRepeatable])
        {
          repeatableValues = [(WAField *)self repeatableValues];
          firstObject = [repeatableValues firstObject];
          v12 = MEMORY[0x1E696AEC0];
          if (firstObject)
          {
            repeatableValues2 = [(WAField *)self repeatableValues];
            firstObject2 = [repeatableValues2 firstObject];
            repeatableValues4 = [firstObject2 key];
            repeatableValues3 = [(WAField *)self repeatableValues];
            [v12 stringWithFormat:@"Repeatable submessage with key: %@, count: %lu", repeatableValues4, objc_msgSend(repeatableValues3, "count"), v20];
          }

          else
          {
            repeatableValues2 = [v7 objectAtIndexedSubscript:0];
            firstObject2 = [v7 objectAtIndexedSubscript:1];
            repeatableValues4 = [(WAField *)self repeatableValues];
            repeatableValues3 = [repeatableValues4 firstObject];
            [v12 stringWithFormat:@"Repeatable submessage, key: %@ original classname: %@ first instance: %@", repeatableValues2, firstObject2, repeatableValues3];
          }
          v19 = ;
          [string appendFormat:@"%@", v19];
        }

        else
        {
          subMessageValue = [(WAField *)self subMessageValue];
          v18 = [subMessageValue key];
          [string appendFormat:@"%@", v18];
        }

        goto LABEL_29;
      default:
        goto LABEL_25;
    }
  }

LABEL_28:
  [string appendString:v6];
LABEL_29:

  return string;
}

- (id)_ownTypeAsString
{
  type = [(WAField *)self type];

  return [(WAField *)self _typeAsString:type];
}

- (void)_throwIncorrecTypeExceptionForType:(int64_t)type isGet:(BOOL)get
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  if (get)
  {
    v8 = @"GET";
  }

  else
  {
    v8 = @"SET";
  }

  v9 = [(WAField *)self _typeAsString:type];
  _ownTypeAsString = [(WAField *)self _ownTypeAsString];
  v11 = [(WAField *)self key];
  v12 = [v7 stringWithFormat:@"Attempt to %@ %@ value on a field that's a %@. Field Key: %@", v8, v9, _ownTypeAsString, v11];
  v13 = [v5 exceptionWithName:v6 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_throwIncorrectRepeatableStateExceptionAsFieldShouldBeRepeatable:(BOOL)repeatable isGet:(BOOL)get forType:(int64_t)type
{
  repeatableCopy = repeatable;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = MEMORY[0x1E696AEC0];
  if (get)
  {
    v10 = @"GET";
  }

  else
  {
    v10 = @"SET";
  }

  v11 = [(WAField *)self _typeAsString:type];
  v12 = [(WAField *)self key];
  v13 = v12;
  if (repeatableCopy)
  {
    [v9 stringWithFormat:@"Attempt to %@ a single value on a field that holds repeatable values. Type: %@ field key: %@", v10, v11, v12];
  }

  else
  {
    [v9 stringWithFormat:@"Attempt to %@ a repeatable value on a field that should contain a single value. Type: %@ field key: %@", v10, v11, v12];
  }
  v14 = ;
  v15 = [v7 exceptionWithName:v8 reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

@end