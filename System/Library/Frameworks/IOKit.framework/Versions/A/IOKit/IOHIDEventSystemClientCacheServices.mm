@interface IOHIDEventSystemClientCacheServices
@end

@implementation IOHIDEventSystemClientCacheServices

uint64_t ____IOHIDEventSystemClientCacheServices_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"ServiceID");
  v5 = CFDictionaryGetValue(theDict, @"Properties");
  os_unfair_recursive_lock_lock_with_options();
  if (!CFDictionaryGetValue(*(*(a1 + 32) + 96), Value))
  {
    v6 = _IOHIDServiceClientCreate(*MEMORY[0x1E695E480], Value, v5, *(a1 + 32));
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(*(*(a1 + 32) + 96), Value, v6);
      CFRelease(v7);
    }
  }

  return os_unfair_recursive_lock_unlock();
}

@end