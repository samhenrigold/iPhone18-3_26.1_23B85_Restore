@interface PlistReader
+ (id)plistReaderWithResourcePath:(id)path;
- (PlistReader)initWithPlist:(id)plist;
@end

@implementation PlistReader

+ (id)plistReaderWithResourcePath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (![defaultManager fileExistsAtPath:pathCopy])
  {
    goto LABEL_9;
  }

  if ([pathCopy hasSuffix:@".mdplist"])
  {

LABEL_5:
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathCopy];
    defaultManager = v6;
    if (v6)
    {
      [v6 bytes];
      [defaultManager length];
      v7 = _MDPlistContainerCreateWithBytes();
      if (v7)
      {
        v8 = v7;
        v9 = _MDPlistContainerCopyRootObject();
        CFRelease(v8);
        if (v9)
        {
          v10 = [[PlistReader alloc] initWithPlist:v9];

LABEL_10:
          goto LABEL_11;
        }
      }
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v5 = [pathCopy hasSuffix:@".factors"];

  if (v5)
  {
    goto LABEL_5;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (PlistReader)initWithPlist:(id)plist
{
  plistCopy = plist;
  v9.receiver = self;
  v9.super_class = PlistReader;
  v6 = [(PlistReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plist, plist);
  }

  return v7;
}

@end