@interface MDPlistContainerCopyCSObject
@end

@implementation MDPlistContainerCopyCSObject

void ___MDPlistContainerCopyCSObject_block_invoke(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 2);
  v5 = _MDPlistContainerCopyCSObject(v3, &v7, v4);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(a1 + 48), v5);

    CFRelease(v6);
  }
}

void ___MDPlistContainerCopyCSObject_block_invoke_2(uint64_t a1, const char *a2, uint64_t a3, __int128 *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = *a4;
  v13 = *(a4 + 2);
  v8 = _MDPlistContainerCopyCSObject(v6, &v12, v7);
  if (v8)
  {
    v9 = v8;
    v10 = CFStringCreateWithCStringNoCopy(*(a1 + 32), a2, 0x8000100u, *MEMORY[0x1E695E498]);
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(*(a1 + 48), v10, v9);
      CFRelease(v11);
    }

    CFRelease(v9);
  }
}

@end