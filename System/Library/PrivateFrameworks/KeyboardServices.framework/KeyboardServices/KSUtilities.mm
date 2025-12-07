@interface KSUtilities
@end

@implementation KSUtilities

void __33___KSUtilities_keyboardDirectory__block_invoke(uint64_t a1)
{
  v1 = _homeDirectory(a1);
  v2 = keyboardDirectory_dir;
  keyboardDirectory_dir = v1;

  v3 = [keyboardDirectory_dir stringByAppendingPathComponent:@"/Library/Keyboard"];
  v4 = keyboardDirectory_dir;
  keyboardDirectory_dir = v3;
}

void __41___KSUtilities_keyboardServicesDirectory__block_invoke(uint64_t a1)
{
  v1 = _homeDirectory(a1);
  v2 = keyboardServicesDirectory_dir;
  keyboardServicesDirectory_dir = v1;

  v3 = [keyboardServicesDirectory_dir stringByAppendingPathComponent:@"/Library/KeyboardServices"];
  v4 = keyboardServicesDirectory_dir;
  keyboardServicesDirectory_dir = v3;

  v12 = 1;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:keyboardServicesDirectory_dir isDirectory:&v12];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = 0;
    [v7 createDirectoryAtPath:keyboardServicesDirectory_dir withIntermediateDirectories:0 attributes:0 error:&v11];
    v8 = v11;

    if (v8)
    {
      v9 = keyboardServicesDirectory_dir;
      v10 = [v8 localizedDescription];
      NSLog(&cfstr_CouldNotCreate.isa, v9, v10);
    }
  }
}

@end