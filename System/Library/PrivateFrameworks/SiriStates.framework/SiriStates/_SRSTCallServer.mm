@interface _SRSTCallServer
- (_SRSTCallServer)init;
@end

@implementation _SRSTCallServer

- (_SRSTCallServer)init
{
  ObjectType = swift_getObjectType();
  InstrumentationManager.sharedLogger.unsafeMutableAddressor();
  v3 = *(ObjectType + 128);

  v5 = v3(v4);
  swift_deallocPartialClassInstance();
  return v5;
}

@end