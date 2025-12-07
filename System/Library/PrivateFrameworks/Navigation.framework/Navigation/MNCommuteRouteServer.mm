@interface MNCommuteRouteServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)requestCommuteRoutesWith:(_TtC10Navigation29CommuteRouteRequestParameters *)with completionHandler:(id)handler;
@end

@implementation MNCommuteRouteServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1D3183D2C(connectionCopy);

  return v9 & 1;
}

- (void)requestCommuteRoutesWith:(_TtC10Navigation29CommuteRouteRequestParameters *)with completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1D3277280();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D328CE10;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D328BB08;
  v14[5] = v13;
  withCopy = with;
  selfCopy = self;
  sub_1D3183A70(0, 0, v9, &unk_1D328BB10, v14);
}

@end