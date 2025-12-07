@interface NSData(GEOXPCUtil)
- (xpc_object_t)_geo_newXPCData;
@end

@implementation NSData(GEOXPCUtil)

- (xpc_object_t)_geo_newXPCData
{
  _GEOCreateDispatchData = [self _GEOCreateDispatchData];
  v2 = xpc_data_create_with_dispatch_data(_GEOCreateDispatchData);

  return v2;
}

@end