@interface LACStorageObjectEncoder
- (id)_convertACMExclaveBatchToDictionary:(id)dictionary;
- (id)_lastBioAuthDataToNumber:(id)number;
- (id)encodeValue:(id)value forKey:(int64_t)key error:(id *)error;
@end

@implementation LACStorageObjectEncoder

- (id)encodeValue:(id)value forKey:(int64_t)key error:(id *)error
{
  valueCopy = value;
  v9 = valueCopy;
  if (error)
  {
    *error = 0;
  }

  if (!valueCopy)
  {
    goto LABEL_27;
  }

  if (key == 24 && [valueCopy length] >= 3)
  {
    bytes = [v9 bytes];
    v11 = [(LACStorageObjectEncoder *)self _convertACMExclaveBatchToDictionary:*bytes | (*(bytes + 2) << 16)];
LABEL_14:
    v15 = v11;
    goto LABEL_28;
  }

  if (([(objc_class *)[LACSecureStorage classForKey:?], "isEqual:", objc_opt_class()]& 1) == 0)
  {
    v11 = v9;
    goto LABEL_14;
  }

  if (key > 13)
  {
    if (key == 14)
    {
      v11 = [(LACStorageObjectEncoder *)self _lastBioAuthDataToNumber:v9];
      goto LABEL_14;
    }

    if (key != 1001)
    {
LABEL_19:
      if ([v9 length] == 1)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithBool:{*objc_msgSend(v9, "bytes")}];
        goto LABEL_14;
      }

      if (error)
      {
        v16 = @"Expected BOOL in NSNumber";
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

  else if (key != 7)
  {
    if (key == 12)
    {
      v12 = [(LACStorageObjectEncoder *)self _lastBioAuthDataToNumber:v9];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 integerValue] < 0x5265C01;
        v15 = [MEMORY[0x1E696AD98] numberWithBool:v14];
      }

      else
      {
        v15 = MEMORY[0x1E695E110];
      }

      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if ([v9 length] == 1)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithChar:{*objc_msgSend(v9, "bytes")}];
    goto LABEL_14;
  }

  if (error)
  {
    v16 = @"Expected 1 byte in NSNumber";
LABEL_26:
    [LACStorageError errorWithCode:1 debugDescription:v16];
    *error = v15 = 0;
    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
LABEL_28:

  return v15;
}

- (id)_convertACMExclaveBatchToDictionary:(id)dictionary
{
  v3 = *&dictionary.var0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:20];
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:v5];
  }

  if ((v3 & 0xFF00) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:18];
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:v6];
  }

  if ((*&v3 & 0xFF0000) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:19];
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:v7];
  }

  v8 = [dictionary copy];

  return v8;
}

- (id)_lastBioAuthDataToNumber:(id)number
{
  if (*[number bytes])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end