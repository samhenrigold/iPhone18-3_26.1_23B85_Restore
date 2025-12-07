@interface _EXNSExtensionShim.Implementation
- (_TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation)init;
- (id)beginExtensionRequest:(id)request error:(id *)error;
- (void)beginExtensionRequest:(id)request completion:(id)completion;
- (void)cancelExtensionRequestWithIdentifier:(id)identifier;
@end

@implementation _EXNSExtensionShim.Implementation

- (id)beginExtensionRequest:(id)request error:(id *)error
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  requestCopy = request;
  selfCopy = self;
  _EXNSExtensionShim.Implementation.begin(_:)(requestCopy, v9);

  v12.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);

  return v12.super.isa;
}

- (void)beginExtensionRequest:(id)request completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = request;
  v13[6] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> ();
  v13[7] = v11;
  requestCopy = request;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:), v13);
}

- (void)cancelExtensionRequestWithIdentifier:(id)identifier
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  _EXNSExtensionShim.Implementation.cancelRequest(for:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end