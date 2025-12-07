@interface GPBUInt32EnumDictionary
- (BOOL)getEnum:(int *)enum forKey:(unsigned int)key;
- (BOOL)getRawValue:(int *)value forKey:(unsigned int)key;
- (BOOL)isEqual:(id)equal;
- (GPBUInt32EnumDictionary)initWithDictionary:(id)dictionary;
- (GPBUInt32EnumDictionary)initWithValidationFunction:(void *)function rawValues:(const int *)values forKeys:(const unsigned int *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializedDataForUnknownValue:(int)value forKey:(id *)key keyDataType:(unsigned __int8)type;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addRawEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndEnumsUsingBlock:(id)block;
- (void)enumerateKeysAndRawValuesUsingBlock:(id)block;
- (void)removeEnumForKey:(unsigned int)key;
- (void)setEnum:(int)enum forKey:(unsigned int)key;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)setRawValue:(int)value forKey:(unsigned int)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBUInt32EnumDictionary

- (GPBUInt32EnumDictionary)initWithValidationFunction:(void *)function rawValues:(const int *)values forKeys:(const unsigned int *)keys count:(unint64_t)count
{
  v18.receiver = self;
  v18.super_class = GPBUInt32EnumDictionary;
  v10 = [(GPBUInt32EnumDictionary *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    if (function)
    {
      functionCopy = function;
    }

    else
    {
      functionCopy = sub_100321780;
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
        [(NSMutableDictionary *)dictionary setObject:v15 forKey:[NSNumber numberWithUnsignedInt:v16]];
        --count;
      }

      while (count);
    }
  }

  return v10;
}

- (GPBUInt32EnumDictionary)initWithDictionary:(id)dictionary
{
  v4 = -[GPBUInt32EnumDictionary initWithValidationFunction:rawValues:forKeys:count:](self, "initWithValidationFunction:rawValues:forKeys:count:", [dictionary validationFunc], 0, 0, 0);
  v5 = v4;
  if (dictionary && v4)
  {
    [(NSMutableDictionary *)v4->_dictionary addEntriesFromDictionary:*(dictionary + 2)];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_autocreator)
  {
    sub_10033B5BC();
  }

  v3.receiver = self;
  v3.super_class = GPBUInt32EnumDictionary;
  [(GPBUInt32EnumDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBUInt32EnumDictionary allocWithZone:zone];

  return [(GPBUInt32EnumDictionary *)v4 initWithDictionary:self];
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

    (*(block + 2))(block, [nextObject unsignedIntValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", nextObject), "intValue"), &v7);
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
    v7 = *(*(field + 1) + 30);
    mapKeyDataType = [field mapKeyDataType];
    keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v12 = 0;
      do
      {
        v13 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
        v14 = sub_10031D598([nextObject2 unsignedIntValue], 1, mapKeyDataType);
        v15 = sub_100321B38([v13 intValue], v7) + v14;
        v12 += v15 + GPBComputeRawVarint32SizeForInteger(v15);
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    else
    {
      v12 = 0;
    }

    return v12 + GPBComputeWireFormatTagSize(*(*(field + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  v7 = *(*(field + 1) + 30);
  mapKeyDataType = [field mapKeyDataType];
  Tag = GPBWireFormatMakeTag(*(*(field + 1) + 16), 2);
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v14 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
      [stream writeInt32NoTag:Tag];
      unsignedIntValue = [nextObject2 unsignedIntValue];
      intValue = [v14 intValue];
      v17 = sub_10031D598(unsignedIntValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:{sub_100321B38(intValue, v7) + v17}];
      sub_10031D7A8(stream, unsignedIntValue, 1, mapKeyDataType);
      sub_100321CB4(stream, intValue, v7);
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (id)serializedDataForUnknownValue:(int)value forKey:(id *)key keyDataType:(unsigned __int8)type
{
  typeCopy = type;
  v7 = *&value;
  v8 = sub_10031D598(key->var3, 1, type);
  v9 = [NSMutableData dataWithLength:GPBComputeEnumSize(2, v7) + v8];
  v10 = [[GPBCodedOutputStream alloc] initWithData:v9];
  sub_10031D7A8(v10, key->var3, 1, typeCopy);
  [(GPBCodedOutputStream *)v10 writeEnum:2 value:v7];

  return v9;
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithInt:value->var3];
  v7 = [NSNumber numberWithUnsignedInt:key->var3];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100321E8C;
  v3[3] = &unk_1004356E8;
  v3[4] = format;
  [(GPBUInt32EnumDictionary *)self enumerateKeysAndRawValuesUsingBlock:v3];
}

- (BOOL)getEnum:(int *)enum forKey:(unsigned int)key
{
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithUnsignedInt:*&key]];
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

- (BOOL)getRawValue:(int *)value forKey:(unsigned int)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithUnsignedInt:*&key]];
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
    (*(block + 2))(block, [v8 unsignedIntValue], v9, &v10);
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

      GPBAutocreatedDictionaryModified(autocreator, self);
    }
  }
}

- (void)setRawValue:(int)value forKey:(unsigned int)key
{
  [(NSMutableDictionary *)self->_dictionary setObject:[NSNumber forKey:"numberWithInt:" numberWithInt:?], [NSNumber numberWithUnsignedInt:*&key]];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

- (void)removeEnumForKey:(unsigned int)key
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithUnsignedInt:*&key];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

- (void)setEnum:(int)enum forKey:(unsigned int)key
{
  v4 = *&key;
  v5 = *&enum;
  if (((self->_validationFunc)(*&enum, a2) & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"GPBUInt32EnumDictionary: Attempt to set an unknown enum value (%d)", v5];
  }

  [(NSMutableDictionary *)self->_dictionary setObject:[NSNumber forKey:"numberWithInt:" numberWithInt:v5], [NSNumber numberWithUnsignedInt:v4]];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

@end