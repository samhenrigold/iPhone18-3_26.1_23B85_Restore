@interface BackgroundSessionManagerHostConnection
- (void)leaveWithIdentifier:(id)identifier completion:(id)completion;
- (void)prewarmWithCompletion:(id)completion;
- (void)updateMembersWithIdentifier:(id)identifier members:(id)members completion:(id)completion;
- (void)updateShare:(id)share activityID:(id)d completion:(id)completion;
@end

@implementation BackgroundSessionManagerHostConnection

- (void)prewarmWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v3[2](v3, 0);

  _Block_release(v3);
}

- (void)leaveWithIdentifier:(id)identifier completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  BackgroundSessionManagerHostConnection.leave(identifier:completion:)(v9, thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v11);

  (*(v7 + 8))(v9, v6);
}

- (void)updateMembersWithIdentifier:(id)identifier members:(id)members completion:(id)completion
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for TUHandle();
  lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  selfCopy = self;
  specialized BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(v10, v12, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v8 + 8))(v10, v7);
}

- (void)updateShare:(id)share activityID:(id)d completion:(id)completion
{
  selfCopy = self;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v28 = &v28 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v17 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = selfCopy;
  *(v22 + 4) = selfCopy;
  *(v22 + 5) = share;
  (*(v11 + 32))(&v22[v20], v14, v10);
  v24 = &v22[v21];
  *v24 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
  v24[1] = v18;
  shareCopy = share;
  v26 = v23;
  v27 = shareCopy;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v28, &closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)partial apply, v22);

  (*(v11 + 8))(v16, v10);
}

@end