@interface IOHIDLoadBundles
@end

@implementation IOHIDLoadBundles

CFMutableDictionaryRef ___IOHIDLoadBundles_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E74A9A28;
  v4[1] = *off_1E74A9A38;
  v0 = *MEMORY[0x1E695E480];
  v1 = CFArrayCreate(*MEMORY[0x1E695E480], v4, 4, MEMORY[0x1E695E9C0]);
  __hidPlugInBundles = __IOHIDPlugInLoadBundles(v1);
  CFRelease(v1);
  result = __hidPlugInBundles;
  if (__hidPlugInBundles)
  {
    Count = CFArrayGetCount(__hidPlugInBundles);
    result = CFDictionaryCreateMutable(v0, Count, MEMORY[0x1E695E9D8], 0);
    __hidPlugInInstanceCache = result;
  }

  return result;
}

@end