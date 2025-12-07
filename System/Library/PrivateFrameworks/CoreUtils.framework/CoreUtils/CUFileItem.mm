@interface CUFileItem
- (CUFileItem)initWithDictionary:(id)dictionary error:(id *)error;
- (void)encodeWithDictionary:(id)dictionary;
@end

@implementation CUFileItem

- (void)encodeWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (self->_flags)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [dictionaryCopy setObject:v4 forKeyedSubscript:&unk_1F06A2F80];
  }

  name = self->_name;
  if (name)
  {
    [dictionaryCopy setObject:name forKeyedSubscript:&unk_1F06A2F98];
  }

  if (self->_size)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [dictionaryCopy setObject:v6 forKeyedSubscript:&unk_1F06A2FB0];
  }

  v7 = dictionaryCopy;
  if (self->_type)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [dictionaryCopy setObject:v8 forKeyedSubscript:&unk_1F06A2FC8];

    v7 = dictionaryCopy;
  }
}

- (CUFileItem)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = [(CUFileItem *)self init];
  if (v7)
  {
    v15 = 0;
    Int64Ranged = CFDictionaryGetInt64Ranged(dictionaryCopy, &unk_1F06A2F80, 0, 0xFFFFFFFFLL, &v15);
    if (!v15)
    {
      v7->_flags = Int64Ranged;
    }

    TypeID = CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue(dictionaryCopy, &unk_1F06A2F98, TypeID, 0);
    if (v10)
    {
      objc_storeStrong(&v7->_name, v10);
    }

    Int64 = CFDictionaryGetInt64(dictionaryCopy, &unk_1F06A2FB0, &v15);
    if (!v15)
    {
      v7->_size = Int64;
    }

    v12 = CFDictionaryGetInt64Ranged(dictionaryCopy, &unk_1F06A2FC8, 0xFFFFFFFF80000000, 0x7FFFFFFFLL, &v15);
    if (!v15)
    {
      v7->_type = v12;
    }

    v13 = v7;
  }

  else if (error)
  {
    *error = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Init failed");
  }

  return v7;
}

@end