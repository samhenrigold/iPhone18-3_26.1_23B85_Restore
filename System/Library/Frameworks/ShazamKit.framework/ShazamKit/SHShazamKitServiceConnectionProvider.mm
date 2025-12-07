@interface SHShazamKitServiceConnectionProvider
- (id)shazamKitServiceConnection;
@end

@implementation SHShazamKitServiceConnectionProvider

- (id)shazamKitServiceConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.shazamd" options:4096];
  v3 = SHShazamKitServiceInterface(v2);
  [v2 setRemoteObjectInterface:v3];

  v5 = SHShazamKitClientInterface(v4);
  [v2 setExportedInterface:v5];

  return v2;
}

@end