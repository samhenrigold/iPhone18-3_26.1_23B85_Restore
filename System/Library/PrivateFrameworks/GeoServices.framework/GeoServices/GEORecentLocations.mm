@interface GEORecentLocations
- (GEORecentLocations)init;
@end

@implementation GEORecentLocations

- (GEORecentLocations)init
{
  v10.receiver = self;
  v10.super_class = GEORecentLocations;
  v2 = [(GEORecentLocations *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.navd.recentLocationsService" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFB20AD0];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    [v5 setClasses:v8 forSelector:sel_requestRecentLocationsWithResponse_ argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];
    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

@end