@interface NSBundle(NanoMediaBridgeUI)
+ (id)nanoMediaBridgeUIBundle;
@end

@implementation NSBundle(NanoMediaBridgeUI)

+ (id)nanoMediaBridgeUIBundle
{
  if (nanoMediaBridgeUIBundle_onceToken != -1)
  {
    +[NSBundle(NanoMediaBridgeUI) nanoMediaBridgeUIBundle];
  }

  v2 = nanoMediaBridgeUIBundle___nanoMediaBridgeUIBundle;

  return v2;
}

@end