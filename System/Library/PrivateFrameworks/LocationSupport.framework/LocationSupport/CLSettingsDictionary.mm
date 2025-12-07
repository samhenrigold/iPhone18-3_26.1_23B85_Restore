@interface CLSettingsDictionary
+ (id)settingsWithDictionary:(id)dictionary;
- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value;
- (BOOL)isEqual:(id)equal;
- (CLSettingsDictionary)initWithDictionary:(id)dictionary;
- (double)doubleForKey:(id)key defaultValue:(double)value;
- (float)floatForKey:(id)key defaultValue:(float)value;
- (id)arrayForKey:(id)key defaultValue:(id)value;
- (id)dictionaryForKey:(id)key defaultValue:(id)value;
- (id)stringForKey:(id)key defaultValue:(id)value;
- (int)intForKey:(id)key defaultValue:(int)value;
- (int64_t)longForKey:(id)key defaultValue:(int64_t)value;
- (signed)shortForKey:(id)key defaultValue:(signed __int16)value;
- (void)dealloc;
@end

@implementation CLSettingsDictionary

+ (id)settingsWithDictionary:(id)dictionary
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithDictionary_(v4, v5, dictionary);

  return v6;
}

- (CLSettingsDictionary)initWithDictionary:(id)dictionary
{
  v8.receiver = self;
  v8.super_class = CLSettingsDictionary;
  v4 = [(CLSettingsDictionary *)&v8 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setDictionary_(v4, v5, dictionary);
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_setDictionary_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = CLSettingsDictionary;
  [(CLSettingsDictionary *)&v3 dealloc];
}

- (id)dictionaryForKey:(id)key defaultValue:(id)value
{
  v5 = objc_msgSend_objectForKeyedSubscript_(self->_internal, a2, key);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return value;
  }

  return objc_msgSend_settingsWithDictionary_(CLSettingsDictionary, v6, v5);
}

- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value
{
  v5 = objc_msgSend_objectForKeyedSubscript_(self->_internal, a2, key);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  return MEMORY[0x1EEE66B58](v5, sel_BOOLValue, v6);
}

- (signed)shortForKey:(id)key defaultValue:(signed __int16)value
{
  v5 = objc_msgSend_objectForKeyedSubscript_(self->_internal, a2, key);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  return MEMORY[0x1EEE66B58](v5, sel_shortValue, v6);
}

- (int)intForKey:(id)key defaultValue:(int)value
{
  v5 = objc_msgSend_objectForKeyedSubscript_(self->_internal, a2, key);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  return objc_msgSend_intValue(v5, v6, v7);
}

- (int64_t)longForKey:(id)key defaultValue:(int64_t)value
{
  v5 = objc_msgSend_objectForKeyedSubscript_(self->_internal, a2, key);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  return MEMORY[0x1EEE66B58](v5, sel_longValue, v6);
}

- (float)floatForKey:(id)key defaultValue:(float)value
{
  v5 = objc_msgSend_objectForKeyedSubscript_(self->_internal, a2, key);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  MEMORY[0x1EEE66B58](v5, sel_floatValue, v6);
  return result;
}

- (double)doubleForKey:(id)key defaultValue:(double)value
{
  v5 = objc_msgSend_objectForKeyedSubscript_(self->_internal, a2, key);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  MEMORY[0x1EEE66B58](v5, sel_doubleValue, v6);
  return result;
}

- (id)stringForKey:(id)key defaultValue:(id)value
{
  v5 = objc_msgSend_objectForKey_(self->_internal, a2, key);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E696AEC0];

    return MEMORY[0x1EEE66B58](v6, sel_stringWithString_, v5);
  }

  else if (objc_opt_respondsToSelector())
  {

    return MEMORY[0x1EEE66B58](v5, sel_stringValue, v7);
  }

  else
  {
    return value;
  }
}

- (id)arrayForKey:(id)key defaultValue:(id)value
{
  v5 = objc_msgSend_objectForKey_(self->_internal, a2, key);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return value;
  }

  v6 = MEMORY[0x1E695DEC8];

  return MEMORY[0x1EEE66B58](v6, sel_arrayWithArray_, v5);
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

  internal = self->_internal;
  v9 = objc_msgSend_dictionary(equal, v5, v6);

  return objc_msgSend_isEqual_(internal, v8, v9);
}

@end