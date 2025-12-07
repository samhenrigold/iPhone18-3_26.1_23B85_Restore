@interface Service
- (_TtC19ExtensionFoundation7Service)init;
- (void)beginExtensionsQuery:(id)query listenerEndpoint:(id)endpoint reply:(id)reply;
- (void)beginObservingWithConfiguration:(id)configuration reply:(id)reply;
- (void)extensionsWith:(id)with reply:(id)reply;
- (void)invalidateLaunchAssertionsForExtensionAuditToken:(id *)token reply:(id)reply;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)photoServiceAuthorizationStatusForExtensionUUID:(id)d completion:(id)completion;
- (void)prepareWithLaunchConfiguration:(id)configuration reply:(id)reply;
@end

@implementation Service

- (void)prepareWithLaunchConfiguration:(id)configuration reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  configurationCopy = configuration;
  selfCopy = self;
  specialized Service.prepare(withLaunchConfiguration:reply:)(configurationCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)invalidateLaunchAssertionsForExtensionAuditToken:(id *)token reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  specialized Service.invalidateLaunchAssertions(forExtensionAuditToken:reply:)(partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v6);
}

- (_TtC19ExtensionFoundation7Service)init
{
  v3 = OBJC_IVAR____TtC19ExtensionFoundation7Service_discoveryController;
  *(&self->super.isa + v3) = [objc_allocWithZone(type metadata accessor for _EXDiscoveryController()) init];
  *(&self->super.isa + OBJC_IVAR____TtC19ExtensionFoundation7Service_activeObservers) = MEMORY[0x1E69E7CC8];
  v4 = OBJC_IVAR____TtC19ExtensionFoundation7Service_sigtermSource;
  *(&self->super.isa + v4) = closure #1 in variable initialization expression of Service.sigtermSource();
  v6.receiver = self;
  v6.super_class = type metadata accessor for Service();
  return [(Service *)&v6 init];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized Service.listener(_:didReceive:withContext:)(connectionCopy);

  swift_unknownObjectRelease();
}

- (void)extensionsWith:(id)with reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  withCopy = with;
  selfCopy = self;
  specialized Service.extensions(with:reply:)(withCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)beginExtensionsQuery:(id)query listenerEndpoint:(id)endpoint reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  queryCopy = query;
  endpointCopy = endpoint;
  selfCopy = self;
  specialized Service.beginExtensionsQuery(_:listenerEndpoint:reply:)(queryCopy, endpointCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)beginObservingWithConfiguration:(id)configuration reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = objc_opt_self();
  configurationCopy = configuration;
  selfCopy = self;
  currentConnection = [v12 currentConnection];
  if (currentConnection)
  {
    v16 = currentConnection;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = configurationCopy;
    v18[5] = selfCopy;
    v18[6] = v16;
    v18[7] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Service.ObserverUpdate?, @unowned NSError?) -> ();
    v18[8] = v11;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in Service.beginObserving(configuration:reply:), v18);
  }

  else
  {
    __break(1u);
  }
}

- (void)photoServiceAuthorizationStatusForExtensionUUID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v10);
  selfCopy = self;
  specialized Service.photoServiceAuthorizationStatus(forExtensionUUID:completion:)(v9, v10);
  _Block_release(v10);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

@end