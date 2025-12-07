@interface __NSCFDictionary
- (BOOL)isEqual:(id)equal;
- (Class)classForCoder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObservationInfo:(void *)info;
@end

@implementation __NSCFDictionary

- (unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  return CFDictionaryGetCount(self);
}

- (id)description
{
  v11 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  __CFDictionaryGetKeyCallbacks(v9, self);
  v4 = v10;
  __CFDictionaryGetValueCallbacks(self, v7);
  if (v4 && v4 != CFCopyDescription || v8 && v8 != CFCopyDescription)
  {
    return CFCopyDescription(self);
  }

  v6.receiver = self;
  v6.super_class = __NSCFDictionary;
  return [(NSDictionary *)&v6 description];
}

- (Class)classForCoder
{
  _CFDictionaryIsMutable(self);

  return objc_opt_self();
}

- (id)objectForKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return CFDictionaryGetValue(self, key);
}

- (id)keyEnumerator
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [objc_allocWithZone(__NSFastEnumerationEnumerator) initWithObject:self];

  return v4;
}

- (void)setObject:(id)object forKey:(id)key
{
  if (!_CFDictionaryIsMutable(self))
  {
    [__NSCFDictionary setObject:a2 forKey:?];
  }

  if (!__cf_tsanWriteFunction)
  {
    if (key)
    {
      goto LABEL_4;
    }

LABEL_9:
    _NSDictionaryRaiseInsertNilKeyException(self, a2);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!key)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (!object)
  {
    _NSDictionaryRaiseInsertNilValueException(self, a2, key);
  }

  v9 = [key copyWithZone:0];
  CFDictionarySetValue(self, v9, object);
}

- (void)removeObjectForKey:(id)key
{
  if (!_CFDictionaryIsMutable(self))
  {
    [(__NSCFDictionary *)self removeObjectForKey:a2];
  }

  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  if (!key)
  {
    _NSDictionaryRaiseRemoveNilKeyException(self, a2);
  }

  CFDictionaryRemoveValue(self, key);
}

- (void)setObservationInfo:(void *)info
{
  v6 = *MEMORY[0x1E69E9840];
  _CFDictionarySetKVOBit(self, info != 0);
  v5.receiver = self;
  v5.super_class = __NSCFDictionary;
  [(__NSCFDictionary *)&v5 setObservationInfo:info];
}

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  if (_CFExecutableLinkedOnOrAfter(6uLL))
  {
    v7.receiver = self;
    v7.super_class = __NSCFDictionary;
    return [(NSDictionary *)&v7 isEqual:equal];
  }

  else
  {
    return equal && _CFNonObjCEqual(self, equal) != 0;
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableDictionary);
  }

  return _CFDictionaryFastEnumeration(self, state, objects, count);
}

- (void)removeAllObjects
{
  if (!_CFDictionaryIsMutable(self))
  {
    [(__NSCFDictionary *)self removeAllObjects];
  }

  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  CFDictionaryRemoveAllValues(self);
}

- (id)copyWithZone:(_NSZone *)zone
{
  theDict = self;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
    self = theDict;
  }

  if (_CFDictionaryIsMutable(self))
  {

    return CFDictionaryCreateCopy(0, theDict);
  }

  else
  {

    return theDict;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return CFDictionaryCreateMutableCopy(0, 0, self);
}

@end