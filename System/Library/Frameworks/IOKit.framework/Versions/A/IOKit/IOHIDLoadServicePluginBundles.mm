@interface IOHIDLoadServicePluginBundles
@end

@implementation IOHIDLoadServicePluginBundles

void ___IOHIDLoadServicePluginBundles_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = xmmword_1E74A9AE8;
  v2 = @"/usr/appleinternal/lib/HIDPlugins/ServicePlugins";
  v0 = CFArrayCreate(*MEMORY[0x1E695E480], &v1, 3, MEMORY[0x1E695E9C0]);
  __hidServicePluginBundles = __IOHIDPlugInLoadBundles(v0);
  CFRelease(v0);
}

@end