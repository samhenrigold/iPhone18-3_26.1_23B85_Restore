@interface BCSLocalizedString
@end

@implementation BCSLocalizedString

void ___BCSLocalizedString_block_invoke(uint64_t a1)
{
  v2 = dyld_image_path_containing_address();
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 stringWithFileSystemRepresentation:v2 length:strlen(v2)];
  v8 = _CFBundleCopyFrameworkURLForExecutablePath();

  v4 = v8;
  if (!v8)
  {
    [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v2 isDirectory:0 relativeToURL:0];
    v4 = _CFBundleCopyBundleURLForExecutableURL();
  }

  v9 = v4;
  v5 = [MEMORY[0x277CCA8D8] bundleWithURL:v4];
  v6 = *(a1 + 32);
  v7 = *v6;
  *v6 = v5;
}

@end