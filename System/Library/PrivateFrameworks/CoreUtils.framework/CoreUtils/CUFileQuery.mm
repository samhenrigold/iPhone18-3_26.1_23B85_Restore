@interface CUFileQuery
- (CUFileQuery)initWithDictionary:(id)dictionary error:(id *)error;
- (void)encodeWithDictionary:(id)dictionary;
@end

@implementation CUFileQuery

- (void)encodeWithDictionary:(id)dictionary
{
  path = self->_path;
  if (path)
  {
    [dictionary setObject:path forKeyedSubscript:@"path"];
  }
}

- (CUFileQuery)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = [(CUFileQuery *)self init];
  if (v7)
  {
    TypeID = CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue(dictionaryCopy, @"path", TypeID, 0);
    if (v9)
    {
      objc_storeStrong(&v7->_path, v9);
    }

    v10 = v7;
  }

  else if (error)
  {
    *error = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Init failed");
  }

  return v7;
}

@end