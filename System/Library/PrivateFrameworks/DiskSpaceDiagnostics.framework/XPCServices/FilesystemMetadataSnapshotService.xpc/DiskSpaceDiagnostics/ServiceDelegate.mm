@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = shared_filesystem_metadata_snapshot_service_log_handle(connectionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New connection from pid %d ", v11, 8u);
  }

  v6 = [connectionCopy valueForEntitlement:@"com.apple.filesystem-metadata-snapshotting"];

  if (v6)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DSFilesystemMetadataSnapshotting];
    [connectionCopy setExportedInterface:v8];

    v9 = objc_opt_new();
    [connectionCopy setExportedObject:v9];
    [connectionCopy resume];
  }

  else
  {
    v9 = shared_filesystem_metadata_snapshot_service_log_handle(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003193C(connectionCopy);
    }
  }

  return v6 != 0;
}

@end