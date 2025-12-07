@interface TransparencyGPBInt32EnumDictionary
- (BOOL)getEnum:(int *)enum forKey:(int)key;
- (BOOL)getRawValue:(int *)value forKey:(int)key;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBInt32EnumDictionary)initWithDictionary:(id)dictionary;
- (TransparencyGPBInt32EnumDictionary)initWithValidationFunction:(void *)function rawValues:(const int *)values forKeys:(const int *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializedDataForUnknownValue:(int)value forKey:(id *)key keyDataType:(unsigned __int8)type;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addRawEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndEnumsUsingBlock:(id)block;
- (void)enumerateKeysAndRawValuesUsingBlock:(id)block;
- (void)removeEnumForKey:(int)key;
- (void)setEnum:(int)enum forKey:(int)key;
- (void)setRawValue:(int)value forKey:(int)key;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBInt32EnumDictionary

- (TransparencyGPBInt32EnumDictionary)initWithValidationFunction:(void *)function rawValues:(const int *)values forKeys:(const int *)keys count:(unint64_t)count
{
  v18.receiver = self;
  v18.super_class = TransparencyGPBInt32EnumDictionary;
  v10 = [(TransparencyGPBInt32EnumDictionary *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    if (function)
    {
      functionCopy = function;
    }

    else
    {
      functionCopy = sub_100178930;
    }

    v10->_dictionary = v11;
    v10->_validationFunc = functionCopy;
    if (keys && values && count)
    {
      do
      {
        dictionary = v10->_dictionary;
        v14 = *values++;
        v15 = [NSNumber numberWithInt:v14];
        v16 = *keys++;
        [(NSMutableDictionary *)dictionary setObject:v15 forKey:[NSNumber numberWithInt:v16]];
        --count;
      }

      while (count);
    }
  }

  return v10;
}

- (TransparencyGPBInt32EnumDictionary)initWithDictionary:(id)dictionary
{
  v4 = -[TransparencyGPBInt32EnumDictionary initWithValidationFunction:rawValues:forKeys:count:](self, "initWithValidationFunction:rawValues:forKeys:count:", [dictionary validationFunc], 0, 0, 0);
  v5 = v4;
  if (dictionary && v4)
  {
    [(NSMutableDictionary *)v4->_dictionary addEntriesFromDictionary:*(dictionary + 2)];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBInt32EnumDictionary;
  [(TransparencyGPBInt32EnumDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBInt32EnumDictionary allocWithZone:zone];

  return [(TransparencyGPBInt32EnumDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dictionary = self->_dictionary;
  v6 = *(equal + 2);

  return [(NSMutableDictionary *)dictionary isEqual:v6];
}

- (void)enumerateKeysAndRawValuesUsingBlock:(id)block
{
  v7 = 0;
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  do
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    (*(block + 2))(block, [nextObject intValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", nextObject), "intValue"), &v7);
  }

  while (v7 != 1);
}

- (unint64_t)computeSerializedSizeAsField:(id)field
{
  dictionary = self->_dictionary;
  result = [(NSMutableDictionary *)dictionary count];
  if (result)
  {
    v6 = result;
    mapKeyDataType = [field mapKeyDataType];
    keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v11 = 0;
      do
      {
        v12 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
        v13 = sub_100175800([nextObject2 intValue], 1, mapKeyDataType);
        v14 = sub_100171738(2, [v12 intValue]) + v13;
        v11 += v14 + sub_10016FB50(v14);
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    else
    {
      v11 = 0;
    }

    return v11 + sub_100171D34(*(*(field + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  mapKeyDataType = [field mapKeyDataType];
  v8 = sub_1001A18B4(*(*(field + 1) + 16), 2);
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v13 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
      [stream writeInt32NoTag:v8];
      intValue = [nextObject2 intValue];
      intValue2 = [v13 intValue];
      v16 = sub_100175800(intValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:{sub_100171738(2, intValue2) + v16}];
      sub_1001759A0(stream, intValue, 1, mapKeyDataType);
      [stream writeEnum:2 value:intValue2];
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (id)serializedDataForUnknownValue:(int)value forKey:(id *)key keyDataType:(unsigned __int8)type
{
  typeCopy = type;
  v7 = *&value;
  v8 = sub_100175800(key->var1, 1, type);
  v9 = [NSMutableData dataWithLength:sub_100171738(2, v7) + v8];
  v10 = [[TransparencyGPBCodedOutputStream alloc] initWithData:v9];
  sub_1001759A0(v10, key->var3, 1, typeCopy);
  [(TransparencyGPBCodedOutputStream *)v10 writeEnum:2 value:v7];

  return v9;
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithInt:value->var3];
  v7 = [NSNumber numberWithInt:key->var3];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10017E024;
  v3[3] = &unk_1003251D0;
  v3[4] = format;
  [(TransparencyGPBInt32EnumDictionary *)self enumerateKeysAndRawValuesUsingBlock:v3];
}

- (BOOL)getEnum:(int *)enum forKey:(int)key
{
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithInt:*&key]];
  v7 = v6;
  if (enum && v6)
  {
    intValue = [v6 intValue];
    if ((self->_validationFunc)())
    {
      v9 = intValue;
    }

    else
    {
      v9 = -72499473;
    }

    *enum = v9;
  }

  return v7 != 0;
}

- (BOOL)getRawValue:(int *)value forKey:(int)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithInt:*&key]];
  v6 = v5;
  if (value && v5)
  {
    *value = [v5 intValue];
  }

  return v6 != 0;
}

- (void)enumerateKeysAndEnumsUsingBlock:(id)block
{
  v10 = 0;
  validationFunc = self->_validationFunc;
  keyEnumerator = [(NSMutableDictionary *)self->_dictionary keyEnumerator];
  do
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    v8 = nextObject;
    LODWORD(v9) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{nextObject), "intValue"}];
    v9 = validationFunc() ? v9 : 4222467823;
    (*(block + 2))(block, [v8 intValue], v9, &v10);
  }

  while (v10 != 1);
}

- (void)addRawEntriesFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:*(dictionary + 2)];
    autocreator = self->_autocreator;
    if (autocreator)
    {

      sub_100192DE8(autocreator, self);
    }
  }
}

- (void)setRawValue:(int)value forKey:(int)key
{
  [(NSMutableDictionary *)self->_dictionary setObject:[NSNumber forKey:"numberWithInt:" numberWithInt:?], [NSNumber numberWithInt:*&key]];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_100192DE8(autocreator, self);
  }
}

- (void)removeEnumForKey:(int)key
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithInt:*&key];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

- (void)setEnum:(int)enum forKey:(int)key
{
  v4 = *&key;
  v5 = *&enum;
  if (((self->_validationFunc)(*&enum, a2) & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"TransparencyGPBInt32EnumDictionary: Attempt to set an unknown enum value (%d)", v5];
  }

  [(NSMutableDictionary *)self->_dictionary setObject:[NSNumber forKey:"numberWithInt:" numberWithInt:v5], [NSNumber numberWithInt:v4]];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_100192DE8(autocreator, self);
  }
}

@end