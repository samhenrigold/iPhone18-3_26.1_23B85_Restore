@interface IOHIDLoadServiceFilterBundles
@end

@implementation IOHIDLoadServiceFilterBundles

void ___IOHIDLoadServiceFilterBundles_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1E74A9AA8;
  v1[1] = *off_1E74A9AB8;
  v0 = CFArrayCreate(*MEMORY[0x1E695E480], v1, 4, MEMORY[0x1E695E9C0]);
  __hidServiceFilterBundles = __IOHIDPlugInLoadBundles(v0);
  CFRelease(v0);
}

@end