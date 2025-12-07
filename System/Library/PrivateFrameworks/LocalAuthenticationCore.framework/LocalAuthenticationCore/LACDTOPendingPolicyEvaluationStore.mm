@interface LACDTOPendingPolicyEvaluationStore
+ (NSString)storeKey;
- (NSArray)pendingEvaluations;
- (_TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore)init;
- (_TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore)initWithPersistentStore:(id)store workQueue:(id)queue;
- (id)pendingEvaluationWithIdentifier:(id)identifier;
- (void)addPendingEvaluation:(id)evaluation;
- (void)loadPersistedEvaluationsWithCompletion:(id)completion;
- (void)loadWithCompletionHandler:(id)handler;
- (void)persistEvaluations;
- (void)removePendingEvaluationWith:(id)with;
@end

@implementation LACDTOPendingPolicyEvaluationStore

+ (NSString)storeKey
{
  v2 = MEMORY[0x1B27229A0](0xD000000000000012, 0x80000001B0354A00);

  return v2;
}

- (NSArray)pendingEvaluations
{

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC_SD6ValuesVySSAF_GTt0g5(v2);
  type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore)initWithPersistentStore:(id)store workQueue:(id)queue
{
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup;
  type metadata accessor for SerialTask(0);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  swift_unknownObjectRetain();
  queueCopy = queue;
  SerialTask.start()();
  *(&self->super.isa + v7) = v8;
  v12 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict;
  *(&self->super.isa + v12) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_store) = store;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_workQueue) = queueCopy;
  v14.receiver = self;
  v14.super_class = type metadata accessor for LACDTOPendingPolicyEvaluationStore();
  return [(LACDTOPendingPolicyEvaluationStore *)&v14 init];
}

- (void)loadPersistedEvaluationsWithCompletion:(id)completion
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ();
  v11[6] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)partial apply, v11);
}

- (void)loadWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTATu;
  v12[5] = v11;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

- (void)persistEvaluations
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x88);
  selfCopy = self;
  v6 = v4();
  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup);
  v8 = swift_allocObject();
  v8[2] = selfCopy;
  v8[3] = v6;
  v8[4] = ObjectType;
  v9 = *(*v7 + 120);
  v10 = selfCopy;
  v9(&closure #1 in LACDTOPendingPolicyEvaluationStore.persist()partial apply, v8);
}

- (void)addPendingEvaluation:(id)evaluation
{
  v4 = *(evaluation + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier);
  v5 = *(evaluation + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier + 8);
  v6 = *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);
  evaluationCopy = evaluation;
  selfCopy = self;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(evaluationCopy, v4, v5, isUniquelyReferenced_nonNull_native);

  LACDTOPendingPolicyEvaluationStore.pendingEvaluationsDict.setter(v6);
}

- (id)pendingEvaluationWithIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = LACDTOPendingPolicyEvaluationStore.pendingEvaluation(withIdentifier:)(v4, v6);

  return v8;
}

- (void)removePendingEvaluationWith:(id)with
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);
  selfCopy = self;

  v7 = specialized Dictionary._Variant.removeValue(forKey:)(v4, v6);

  LACDTOPendingPolicyEvaluationStore.pendingEvaluationsDict.setter(v9);
}

- (_TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end