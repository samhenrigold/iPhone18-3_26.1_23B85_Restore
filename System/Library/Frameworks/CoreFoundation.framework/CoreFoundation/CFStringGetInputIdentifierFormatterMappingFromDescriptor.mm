@interface CFStringGetInputIdentifierFormatterMappingFromDescriptor
@end

@implementation CFStringGetInputIdentifierFormatterMappingFromDescriptor

void ___CFStringGetInputIdentifierFormatterMappingFromDescriptor_block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(*(a1 + 32));
  _CFStringGetInputIdentifierFormatterMappingFromDescriptor_localizedStringFormattingFamilyInfo = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = CFDictionaryGetCount(*(a1 + 32));
  if (((v3 >> 59) & 0xF) != 0)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", 2 * v3);
    v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
    CFRelease(v19);
    objc_exception_throw(v20);
  }

  v6 = v3;
  if (v3)
  {
    v7 = 2 * v3;
  }

  else
  {
    v7 = 1;
  }

  v8 = MEMORY[0x1EEE9AC00](v7, v4, v5);
  v10 = (&v21 - v9);
  v23[0] = 0;
  if (v11 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, v23);
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  CFDictionaryGetKeysAndValues(*(a1 + 32), v10, &v10[v6]);
  if (v6 >= 1)
  {
    v13 = v6;
    do
    {
      v14 = *v10;
      v15 = v10[v6];
      v22 = 0;
      v16 = __CFStringCopyCharSetWithPattern(v15, &v22);
      v17 = v22;
      if (v22)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        CFDictionarySetValue(_CFStringGetInputIdentifierFormatterMappingFromDescriptor_localizedStringFormattingFamilyInfo, v14, v22);
        CFRelease(v17);
      }

      ++v10;
      --v13;
    }

    while (v13);
  }

  free(v12);
}

@end