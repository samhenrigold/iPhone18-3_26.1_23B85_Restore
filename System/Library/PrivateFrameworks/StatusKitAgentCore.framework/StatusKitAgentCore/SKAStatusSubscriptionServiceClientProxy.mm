@interface SKAStatusSubscriptionServiceClientProxy
- (SKAStatusSubscriptionServiceClient)underlyingClient;
- (SKAStatusSubscriptionServiceClientProxy)init;
- (SKAStatusSubscriptionServiceClientProxy)initWithXPCConnection:(id)connection queue:(id)queue delegate:(id)delegate databaseManager:(id)manager subscriptionManager:(id)subscriptionManager encryptionManager:(id)encryptionManager inTrafficMode:(BOOL)mode;
- (void)allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier completion:(id)completion;
- (void)allSubscriptionMetadatasForStatusTypeIdentifier:(NSString *)identifier includingPersonalSubscription:(BOOL)subscription completion:(id)completion;
- (void)allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)deleteSubscriptionWithIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier completion:(id)completion;
- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)releasePersistentSubscriptionAssertionForSubscriptionIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier applicationIdentifier:(NSString *)applicationIdentifier completion:(id)completion;
- (void)releaseTransientSubscriptionAssertionForSubscriptionIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier completion:(id)completion;
- (void)retainPersistentSubscriptionAssertionForSubscriptionIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier applicationIdentifier:(NSString *)applicationIdentifier completion:(id)completion;
- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier completion:(id)completion;
- (void)setUnderlyingClient:(id)client;
- (void)subscriptionMetadataForHandle:(SKHandle *)handle statusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)subscriptionValidationTokensForHandle:(SKHandle *)handle statusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:(SKSubscriptionValidationTokens *)tokens fromSender:(SKHandle *)sender statusTypeIdentifier:(NSString *)identifier completion:(id)completion;
@end

@implementation SKAStatusSubscriptionServiceClientProxy

- (SKAStatusSubscriptionServiceClient)underlyingClient
{
  v3 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUnderlyingClient:(id)client
{
  v5 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = client;
  clientCopy = client;
}

- (SKAStatusSubscriptionServiceClientProxy)initWithXPCConnection:(id)connection queue:(id)queue delegate:(id)delegate databaseManager:(id)manager subscriptionManager:(id)subscriptionManager encryptionManager:(id)encryptionManager inTrafficMode:(BOOL)mode
{
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  connectionCopy = connection;
  queueCopy = queue;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return SKAStatusSubscriptionServiceClientProxy.init(xpcConnection:queue:delegate:databaseManager:subscriptionManager:encryptionManager:inTrafficMode:)(connectionCopy, queueCopy, delegate, manager, subscriptionManager, encryptionManager, mode);
}

- (SKAStatusSubscriptionServiceClientProxy)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_underlyingClient) = 0;
  v4 = OBJC_IVAR___SKAStatusSubscriptionServiceClientProxy_queue;
  type metadata accessor for SKAAsyncQueue(0);
  swift_allocObject();
  *(&self->super.isa + v4) = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000002CLL, 0x80000002201ADA90, 1, 0);
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(SKAStatusSubscriptionServiceClientProxy *)&v6 init];
}

- (void)subscriptionMetadataForHandle:(SKHandle *)handle statusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = handle;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadata(for:statusTypeIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_266Tu;
  v16[5] = v15;
  handleCopy = handle;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_271Tu, v16);
}

- (void)allSubscriptionMetadatasForStatusTypeIdentifier:(NSString *)identifier includingPersonalSubscription:(BOOL)subscription completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = identifier;
  *(v13 + 24) = subscription;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatas(forStatusTypeIdentifier:includingPersonalSubscription:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_251Tu;
  v16[5] = v15;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_256Tu, v16);
}

- (void)allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveAssertions(forStatusTypeIdentifier:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_236Tu;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_241Tu, v14);
}

- (void)allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allSubscriptionMetadatasWithActiveSubscriptions(forStatusTypeIdentifier:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_221Tu;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_226Tu, v14);
}

- (void)allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = typeIdentifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.allStatusSubscriptionsWithPersistentSubscriptionAssertion(forApplicationIdentifier:statusTypeIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_206Tu;
  v16[5] = v15;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_211Tu, v16);
}

- (void)subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionMetadataForPersonalSubscription(withStatusTypeIdentifier:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_191Tu;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_196Tu, v14);
}

- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_176Tu;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_181Tu, v14);
}

- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = typeIdentifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_161Tu;
  v16[5] = v15;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_166Tu, v16);
}

- (void)releaseTransientSubscriptionAssertionForSubscriptionIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = typeIdentifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releaseTransientSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_146Tu;
  v16[5] = v15;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_151Tu, v16);
}

- (void)retainPersistentSubscriptionAssertionForSubscriptionIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier applicationIdentifier:(NSString *)applicationIdentifier completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = identifier;
  v15[3] = typeIdentifier;
  v15[4] = applicationIdentifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.retainPersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_131Tu;
  v18[5] = v17;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_136Tu, v18);
}

- (void)releasePersistentSubscriptionAssertionForSubscriptionIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier applicationIdentifier:(NSString *)applicationIdentifier completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = identifier;
  v15[3] = typeIdentifier;
  v15[4] = applicationIdentifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.releasePersistentSubscriptionAssertion(forSubscriptionIdentifier:statusTypeIdentifier:applicationIdentifier:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_116Tu;
  v18[5] = v17;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_121Tu, v18);
}

- (void)deleteSubscriptionWithIdentifier:(NSString *)identifier statusTypeIdentifier:(NSString *)typeIdentifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = typeIdentifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.deleteSubscription(withIdentifier:statusTypeIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_101Tu;
  v16[5] = v15;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_106Tu, v16);
}

- (void)subscriptionValidationTokensForHandle:(SKHandle *)handle statusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = handle;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.subscriptionValidationTokens(for:statusTypeIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_86Tu;
  v16[5] = v15;
  handleCopy = handle;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_91Tu, v16);
}

- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:(SKSubscriptionValidationTokens *)tokens fromSender:(SKHandle *)sender statusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = tokens;
  v15[3] = sender;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusSubscriptionServiceClientProxy.validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens(_:fromSender:statusTypeIdentifier:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTATu;
  v18[5] = v17;
  tokensCopy = tokens;
  senderCopy = sender;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTATu, v18);
}

@end