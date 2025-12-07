@interface __NSConstantDictionaryEnumerator
- (__NSConstantDictionaryEnumerator)initWithConstantDictionary:(id)dictionary enumerateKeys:(BOOL)keys;
- (id)nextObject;
@end

@implementation __NSConstantDictionaryEnumerator

- (__NSConstantDictionaryEnumerator)initWithConstantDictionary:(id)dictionary enumerateKeys:(BOOL)keys
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = __NSConstantDictionaryEnumerator;
  result = [(__NSConstantDictionaryEnumerator *)&v7 init];
  result->_underlyingDictionary = dictionary;
  result->_currentIndex = 0;
  result->_isForKeys = keys;
  return result;
}

- (id)nextObject
{
  underlyingDictionary = self->_underlyingDictionary;
  currentIndex = self->_currentIndex;
  if (currentIndex >= underlyingDictionary->_count)
  {
    return 0;
  }

  if (self->_isForKeys)
  {
    v4 = &OBJC_IVAR___NSConstantDictionary__keys;
  }

  else
  {
    v4 = &OBJC_IVAR___NSConstantDictionary__objects;
  }

  v5 = (*(&underlyingDictionary->super.super.isa + *v4))[currentIndex];
  self->_currentIndex = currentIndex + 1;
  return v5;
}

@end