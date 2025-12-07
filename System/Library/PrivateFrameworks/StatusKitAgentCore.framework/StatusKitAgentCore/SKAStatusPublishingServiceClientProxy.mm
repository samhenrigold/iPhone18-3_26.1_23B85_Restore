@interface SKAStatusPublishingServiceClientProxy
- (SKAStatusPublishingServiceClient)underlyingClient;
- (SKAStatusPublishingServiceClientProxy)init;
- (SKAStatusPublishingServiceClientProxy)initWithXPCConnection:(id)connection queue:(id)queue delegate:(id)delegate databaseManager:(id)manager invitationManager:(id)invitationManager publishingManager:(id)publishingManager channelManager:(id)channelManager;
- (void)fetchHandleInvitability:(SKHandle *)invitability fromHandle:(SKHandle *)handle forStatusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)inviteHandles:(NSArray *)handles fromSenderHandle:(SKHandle *)handle withInvitationPayload:(SKInvitationPayload *)payload statusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)invitedHandlesForStatusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)isHandleInviteable:(SKHandle *)inviteable fromHandle:(SKHandle *)handle forStatusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)isHandleInvited:(SKHandle *)invited fromSenderHandle:(SKHandle *)handle forStatusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)provisionPayloads:(NSArray *)payloads statusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)publishStatusRequest:(SKStatusPublishRequest *)request statusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)registerForDelegateCallbacksWithStatusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)removeInvitedHandles:(NSArray *)handles statusTypeIdentifier:(NSString *)identifier completion:(id)completion;
- (void)setUnderlyingClient:(id)client;
@end

@implementation SKAStatusPublishingServiceClientProxy

- (void)publishStatusRequest:(SKStatusPublishRequest *)request statusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = request;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_182Tu;
  v16[5] = v15;
  requestCopy = request;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_187Tu, v16);
}

- (SKAStatusPublishingServiceClient)underlyingClient
{
  v3 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUnderlyingClient:(id)client
{
  v5 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = client;
  clientCopy = client;
}

- (SKAStatusPublishingServiceClientProxy)initWithXPCConnection:(id)connection queue:(id)queue delegate:(id)delegate databaseManager:(id)manager invitationManager:(id)invitationManager publishingManager:(id)publishingManager channelManager:(id)channelManager
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
  invitationManagerCopy = invitationManager;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return SKAStatusPublishingServiceClientProxy.init(xpcConnection:queue:delegate:databaseManager:invitationManager:publishingManager:channelManager:)(connectionCopy, queueCopy, delegate, manager, invitationManagerCopy, publishingManager, channelManager);
}

- (SKAStatusPublishingServiceClientProxy)init
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

  *(&self->super.isa + OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient) = 0;
  v4 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_queue;
  type metadata accessor for SKAAsyncQueue(0);
  swift_allocObject();
  *(&self->super.isa + v4) = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000002ALL, 0x80000002201AD840, 1, 0);
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(SKAStatusPublishingServiceClientProxy *)&v6 init];
}

- (void)provisionPayloads:(NSArray *)payloads statusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = payloads;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.provisionPayloads(_:statusTypeIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_167Tu;
  v16[5] = v15;
  payloadsCopy = payloads;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_172Tu, v16);
}

- (void)invitedHandlesForStatusTypeIdentifier:(NSString *)identifier completion:(id)completion
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
  v13[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.invitedHandles(forStatusTypeIdentifier:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_152Tu;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_157Tu, v14);
}

- (void)isHandleInvited:(SKHandle *)invited fromSenderHandle:(SKHandle *)handle forStatusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = invited;
  v15[3] = handle;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInvited(_:fromSenderHandle:forStatusTypeIdentifier:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_137Tu;
  v18[5] = v17;
  invitedCopy = invited;
  handleCopy = handle;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_142Tu, v18);
}

- (void)isHandleInviteable:(SKHandle *)inviteable fromHandle:(SKHandle *)handle forStatusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = inviteable;
  v15[3] = handle;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.isHandleInviteable(_:from:forStatusTypeIdentifier:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_122Tu;
  v18[5] = v17;
  inviteableCopy = inviteable;
  handleCopy = handle;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_127Tu, v18);
}

- (void)fetchHandleInvitability:(SKHandle *)invitability fromHandle:(SKHandle *)handle forStatusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = invitability;
  v15[3] = handle;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.fetchHandleInvitability(_:from:forStatusTypeIdentifier:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_107Tu;
  v18[5] = v17;
  invitabilityCopy = invitability;
  handleCopy = handle;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_112Tu, v18);
}

- (void)inviteHandles:(NSArray *)handles fromSenderHandle:(SKHandle *)handle withInvitationPayload:(SKInvitationPayload *)payload statusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  v17[2] = handles;
  v17[3] = handle;
  v17[4] = payload;
  v17[5] = identifier;
  v17[6] = v16;
  v17[7] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.invite(_:fromSenderHandle:with:statusTypeIdentifier:);
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &_sIeghH_IeAgH_TRTA_92Tu;
  v20[5] = v19;
  handlesCopy = handles;
  handleCopy = handle;
  payloadCopy = payload;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v15, &_sIeAgH_ytIeAgHr_TRTA_97Tu, v20);
}

- (void)removeInvitedHandles:(NSArray *)handles statusTypeIdentifier:(NSString *)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = handles;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeInvitedHandles(_:statusTypeIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_77Tu;
  v16[5] = v15;
  handlesCopy = handles;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_82Tu, v16);
}

- (void)removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier:(NSString *)identifier completion:(id)completion
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
  v13[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.removeAllInvitedHandlesFromPersonalChannel(withStatusTypeIdentifier:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_62Tu;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_67Tu, v14);
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
  v13[4] = &async function pointer to partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.registerForDelegateCallbacks(withStatusTypeIdentifier:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTATu;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTATu, v14);
}

@end