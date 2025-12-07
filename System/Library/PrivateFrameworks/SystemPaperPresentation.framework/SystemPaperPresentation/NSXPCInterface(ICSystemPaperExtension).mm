@interface NSXPCInterface(ICSystemPaperExtension)
+ (id)ic_extensionInterface;
+ (id)ic_hostInterface;
@end

@implementation NSXPCInterface(ICSystemPaperExtension)

+ (id)ic_extensionInterface
{
  if (ic_extensionInterface_onceToken != -1)
  {
    +[NSXPCInterface(ICSystemPaperExtension) ic_extensionInterface];
  }

  v2 = ic_extensionInterface_extensionInterface;

  return v2;
}

+ (id)ic_hostInterface
{
  if (ic_hostInterface_onceToken != -1)
  {
    +[NSXPCInterface(ICSystemPaperExtension) ic_hostInterface];
  }

  v2 = ic_hostInterface_hostInterface;

  return v2;
}

@end