@interface LPPartitionMedia
+ (id)primaryMedia;
+ (id)supportedContentTypes;
- (id)children;
@end

@implementation LPPartitionMedia

+ (id)supportedContentTypes
{
  if (objc_opt_class() == self)
  {
    contentTypesForPartitionMedia = [self contentTypesForPartitionMedia];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___LPPartitionMedia;
    contentTypesForPartitionMedia = objc_msgSendSuper2(&v5, sel_supportedContentTypes);
  }

  return contentTypesForPartitionMedia;
}

+ (id)primaryMedia
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[LPMedia allMedia];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isPrimaryMedia])
        {
          v3 = v6;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (id)children
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:16];
  v18 = 0;
  if (MEMORY[0x29C29F270]([(LPMedia *)self ioMedia], "IOService", 1, &v18))
  {
    v4 = _os_log_pack_size();
    v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    *_os_log_pack_fill(v5, v4, 0, &dword_2997D0000, "Failed to create partition media iterator.") = 0;
    _LPLogPack(1, v5);
    v6 = MEMORY[0x29EDB8E90];
  }

  else
  {
    v7 = v18;
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3254779904;
    v15[2] = __28__LPPartitionMedia_children__block_invoke;
    v15[3] = &__block_descriptor_44_e8_32s_e8_v12__0I8l;
    v17 = v18;
    v16 = v3;
    v10 = MEMORY[0x29EDCA5F8];
    v11 = 3254779904;
    v12 = __28__LPPartitionMedia_children__block_invoke_12;
    v13 = &__block_descriptor_40_e8_32s_e5_v8__0l;
    v8 = v16;
    v14 = v8;
    iterateSafely(v7, 3, v15, &v10);
    IOObjectRelease(v18);
    v6 = [MEMORY[0x29EDB8D80] arrayWithArray:{v8, v10, v11, v12, v13}];
  }

  return v6;
}

void __28__LPPartitionMedia_children__block_invoke(uint64_t a1, uint64_t object)
{
  if (IOObjectConformsTo(object, "IOMedia"))
  {
    MEMORY[0x29C29F2C0](*(a1 + 40));
    v4 = [LPMedia mediaOfCorrectTypeGivenIOMedia:object];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

@end