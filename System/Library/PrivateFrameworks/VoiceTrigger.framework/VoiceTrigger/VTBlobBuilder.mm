@interface VTBlobBuilder
+ (id)getBlobWithConfigFilename:(id)filename rootDirectory:(id)directory;
@end

@implementation VTBlobBuilder

+ (id)getBlobWithConfigFilename:(id)filename rootDirectory:(id)directory
{
  filenameCopy = filename;
  directoryCopy = directory;
  v13 = 0;
  v7 = 0;
  if (!NDBlobGetBlobSize([filenameCopy cStringUsingEncoding:4], objc_msgSend(directoryCopy, "cStringUsingEncoding:", 4), 1, 0, &v13) && v13)
  {
    v8 = [MEMORY[0x277CBEB28] dataWithLength:?];
    v9 = [filenameCopy cStringUsingEncoding:4];
    v10 = [directoryCopy cStringUsingEncoding:4];
    bytes = [v8 bytes];
    if (NDBlobBuildBlob(v9, v10, 1, 0, bytes, v13))
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }
  }

  return v7;
}

@end