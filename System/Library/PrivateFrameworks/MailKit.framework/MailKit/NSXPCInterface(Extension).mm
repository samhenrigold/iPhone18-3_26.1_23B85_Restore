@interface NSXPCInterface(Extension)
+ (id)MEExtensionRemoteHostInterface;
+ (id)MERemoteExtensiontInterface;
@end

@implementation NSXPCInterface(Extension)

+ (id)MERemoteExtensiontInterface
{
  if (MERemoteExtensiontInterface_onceToken != -1)
  {
    +[NSXPCInterface(Extension) MERemoteExtensiontInterface];
  }

  v2 = MERemoteExtensiontInterface_remoteInterface;

  return v2;
}

+ (id)MEExtensionRemoteHostInterface
{
  if (MEExtensionRemoteHostInterface_onceToken != -1)
  {
    +[NSXPCInterface(Extension) MEExtensionRemoteHostInterface];
  }

  v2 = MEExtensionRemoteHostInterface_interface;

  return v2;
}

@end