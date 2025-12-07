@interface RDClientConnection
- (NSString)description;
- (_TtC7remindd18RDClientConnection)init;
- (void)autoCategorizationActivityDidUpdate:(id)update;
- (void)cloudKitNetworkActivityDidUpdate:(id)update;
- (void)dealloc;
- (void)storePerformerWithProcessName:(id)name storeContainerToken:(id)token reason:(id)reason completion:(id)completion;
@end

@implementation RDClientConnection

- (NSString)description
{
  selfCopy = self;
  sub_1000090AC();
  v4 = v3;

  v5 = String._bridgeToObjectiveC()();
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

- (void)storePerformerWithProcessName:(id)name storeContainerToken:(id)token reason:(id)reason completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  *(swift_allocObject() + 16) = v8;
  tokenCopy = token;
  selfCopy = self;
  sub_10000CCAC(v9, v11, token, v12, v14, sub_10000A878);

  v11, v17, v18, v19, v20, v21, v22, v23;
  v14, v24, v25, v26, v27, v28, v29, v30;
}

- (void)cloudKitNetworkActivityDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_1004BE6F8(updateCopy, &selRef_cloudKitNetworkActivityDidUpdate_, "cloudKitNetworkActivityDidUpdate: no clientProxy obtained.");
}

- (void)dealloc
{
  selfCopy = self;
  sub_100053464();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for RDClientConnection();
  [(RDClientConnection *)&v3 dealloc];
}

- (_TtC7remindd18RDClientConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)autoCategorizationActivityDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_1004BE6F8(updateCopy, &selRef_autoCategorizationActivityDidUpdate_, "autoCategorizationActivityDidUpdate: no clientProxy obtained.");
}

@end