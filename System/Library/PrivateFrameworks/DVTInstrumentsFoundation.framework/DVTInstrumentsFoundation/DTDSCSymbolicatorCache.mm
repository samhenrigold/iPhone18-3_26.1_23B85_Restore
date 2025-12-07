@interface DTDSCSymbolicatorCache
- (DTDSCSymbolicatorCache)init;
- (_CSTypeRef)symbolicatorForSharedCacheUUID:(id)d;
- (void)dealloc;
@end

@implementation DTDSCSymbolicatorCache

- (DTDSCSymbolicatorCache)init
{
  v4.receiver = self;
  v4.super_class = DTDSCSymbolicatorCache;
  v2 = [(DTDSCSymbolicatorCache *)&v4 init];
  if (v2)
  {
    v2->_sharedCacheUUIDSymbolicators = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277D025E0]);
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->_sharedCacheUUIDSymbolicators);
  v3.receiver = self;
  v3.super_class = DTDSCSymbolicatorCache;
  [(DTDSCSymbolicatorCache *)&v3 dealloc];
}

- (_CSTypeRef)symbolicatorForSharedCacheUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  Value = CFDictionaryGetValue(self->_sharedCacheUUIDSymbolicators, dCopy);
  if (Value)
  {
    v6 = *Value;
    v7 = Value[1];
  }

  else
  {
    [dCopy getUUIDBytes:v18];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3010000000;
    v16 = 0;
    v17 = 0;
    v15 = &unk_248061803;
    CSSymbolicatorForeachSharedCache();
    v8 = CSIsNull();
    sharedCacheUUIDSymbolicators = self->_sharedCacheUUIDSymbolicators;
    if (v8)
    {
      CFDictionarySetValue(sharedCacheUUIDSymbolicators, dCopy, &unk_24803DCE0);
      v6 = 0;
      v7 = 0;
    }

    else
    {
      CFDictionarySetValue(sharedCacheUUIDSymbolicators, dCopy, v13 + 4);
      CSRelease();
      v6 = v13[4];
      v7 = v13[5];
    }

    _Block_object_dispose(&v12, 8);
  }

  v10 = v6;
  v11 = v7;
  result._opaque_2 = v11;
  result._opaque_1 = v10;
  return result;
}

@end