@interface NSFileManager(protobuf)
- (id)blt_contactImagesDirectory;
@end

@implementation NSFileManager(protobuf)

- (id)blt_contactImagesDirectory
{
  v0 = BLTFileURLInPairingPath(@"ContactImages");
  if (v0)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = 0;
    v2 = [defaultManager createDirectoryAtURL:v0 withIntermediateDirectories:1 attributes:0 error:&v8];
    v3 = v8;

    if ((v2 & 1) == 0)
    {
      v5 = blt_general_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [NSFileManager(protobuf) blt_contactImagesDirectory];
      }
    }

    v6 = v0;
  }

  return v0;
}

@end