@interface IOHIDLoadConnectionPluginBundles
@end

@implementation IOHIDLoadConnectionPluginBundles

void ___IOHIDLoadConnectionPluginBundles_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = xmmword_1E74A9B20;
  v0 = CFArrayCreate(*MEMORY[0x1E695E480], &v1, 2, MEMORY[0x1E695E9C0]);
  __hidConnectionPluginBundles = __IOHIDPlugInLoadBundles(v0);
  CFRelease(v0);
}

@end