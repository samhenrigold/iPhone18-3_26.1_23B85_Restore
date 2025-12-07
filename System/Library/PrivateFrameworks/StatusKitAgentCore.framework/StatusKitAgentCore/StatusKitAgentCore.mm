uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v7();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return v6();
}

uint64_t partial apply for @objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return @objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(v2, v3, v5, v4);
}

uint64_t SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4[14] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:), v6, v5);
}

uint64_t type metadata accessor for SKACALogger.SKACALogToken(uint64_t a1)
{
  result = type metadata singleton initialization cache for SKACALogger.SKACALogToken;
  if (!type metadata singleton initialization cache for SKACALogger.SKACALogToken)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = swift_task_alloc();
  v0[20] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "publishStatusRequest(_:statusTypeIdentifier:)";
  *(v3 + 32) = 45;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *v4 = v0;
  v4[1] = SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, partial apply for specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:), v3, v5);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = type metadata accessor for SKACALogger.SKACALogToken(0);
  v6 = objc_allocWithZone(v5);
  static Date.now.getter();
  *&v6[OBJC_IVAR___SKACALogToken_event] = 1;
  v7 = &v6[OBJC_IVAR___SKACALogToken_client];
  *v7 = v4;
  *(v7 + 1) = v1;
  *(v0 + 40) = v6;
  *(v0 + 48) = v5;

  *(v0 + 136) = objc_msgSendSuper2((v0 + 40), sel_init);
  *(v0 + 144) = *&v2[OBJC_IVAR___SKAStatusPublishingServiceClientProxy_queue];
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v1;

  v9 = v2;
  v10 = v3;

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:), 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
    v4 = 0;
    v5 = 0;
  }

  else
  {

    *(v2 + 184) = *(v2 + 56);
    v4 = *(v2 + 120);
    v5 = *(v2 + 128);
    v3 = SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x2822009F8](SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:), v1, v2);
}

{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[14];
  v4 = *&v2[OBJC_IVAR___SKACALogToken_event];
  v5 = *&v2[OBJC_IVAR___SKACALogToken_client];
  v6 = *&v2[OBJC_IVAR___SKACALogToken_client + 8];
  v7 = OBJC_IVAR___SKACALogToken_startTime;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3, &v2[v7], v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  specialized static SKACALogger._logFailure(with:event:for:startTime:)(v1, v4, v5, v6, v3);
  outlined destroy of Date?(v3);
  swift_getErrorValue();
  Error.sanitizedError.getter(v0[3], v0[4]);
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[17];
  v2 = v0[14];
  v3 = *&v1[OBJC_IVAR___SKACALogToken_event];
  v4 = *&v1[OBJC_IVAR___SKACALogToken_client];
  v5 = *&v1[OBJC_IVAR___SKACALogToken_client + 8];
  v6 = OBJC_IVAR___SKACALogToken_startTime;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2, &v1[v6], v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  specialized static SKACALogger._logSuccess(_:for:startTime:)(v3, v4, v5, v2);
  outlined destroy of Date?(v2);

  v9 = v0[1];
  v10 = v0[23];
  v11 = v0[24];

  return v9(v10, v11);
}

uint64_t partial apply for specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

{
  return specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), &_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR, &unk_2833DC850, &async function pointer to partial apply for specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

{
  return partial apply for specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

uint64_t specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v26 = a5;
  v24 = a3;
  v25 = a4;
  v27 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v15 + 32))(v21 + v19, v18, v14);
  v22 = (v21 + v20);
  *v22 = a6;
  v22[1] = a7;

  SKAAsyncQueue.enqueue(_:_:)(v24, v25, v26, a11, v21);
}

uint64_t specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  return specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7, &_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR, &unk_2833DC738, &async function pointer to partial apply for specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

{
  return specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMd, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMR, &unk_2833DC710, &async function pointer to partial apply for specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

uint64_t SKAAsyncQueue.enqueue(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV__GMd, &_sScS12ContinuationV11YieldResultOy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV__GMR);
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x28223BE20](v12);
  v44 = &v42 - v13;
  v14 = type metadata accessor for SKAAsyncQueue.Item(0);
  v15 = MEMORY[0x28223BE20](v14);
  v43 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v42 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  UUID.init()();
  *v24 = a4;
  *(v24 + 1) = a5;
  *(v24 + 2) = a1;
  *(v24 + 3) = a2;
  v24[32] = a3;
  if (*(v6 + 128) == 1)
  {
    v25 = one-time initialization token for logger;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, logger);
    outlined init with copy of SKAAsyncQueue.Item(v24, v22);
    outlined init with copy of SKAAsyncQueue.Item(v24, v19);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47 = v42;
      *v29 = 136315650;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 112), *(v6 + 120), &v47);
      *(v29 + 12) = 2080;
      type metadata accessor for UUID();
      v30 = v28;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      outlined destroy of SKAAsyncQueue.Item(v22);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v47);

      *(v29 + 14) = v34;
      *(v29 + 22) = 2080;
      v35 = StaticString.description.getter();
      v37 = v36;
      outlined destroy of SKAAsyncQueue.Item(v19);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v47);

      *(v29 + 24) = v38;
      _os_log_impl(&dword_220099000, v27, v30, "[%s] Enqueueing request %s from %s", v29, 0x20u);
      v39 = v42;
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v39, -1, -1);
      MEMORY[0x223D77FF0](v29, -1, -1);
    }

    else
    {

      outlined destroy of SKAAsyncQueue.Item(v19);
      outlined destroy of SKAAsyncQueue.Item(v22);
    }
  }

  else
  {
  }

  outlined init with copy of SKAAsyncQueue.Item(v24, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMR);
  v40 = v44;
  AsyncStream.Continuation.yield(_:)();
  (*(v45 + 8))(v40, v46);
  return outlined destroy of SKAAsyncQueue.Item(v24);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of SKAAsyncQueue.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKAAsyncQueue.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SKAAsyncQueue.Item(uint64_t a1)
{
  v2 = type metadata accessor for SKAAsyncQueue.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t @objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:), v6, v5);
}

uint64_t sub_22009C834()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t type metadata accessor for SKAAsyncQueue.Item(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22009C8E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t outlined init with take of SKAAsyncQueue.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKAAsyncQueue.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(v0 + v3, v4);
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMd, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(v0 + v3, v4);
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(v0 + v3, v4);
}

uint64_t specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v5(v2 + 16);
}

{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v5();
}

{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v5(v2 + 16);
}

uint64_t closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR);
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[31] = v8;
  v5[32] = v7;

  return MEMORY[0x2822009F8](closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:), v8, v7);
}

void *sub_22009CD34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t partial apply for closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:)()
{
  v1 = v0[24];
  v2 = OBJC_IVAR___SKAStatusPublishingServiceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[33] = v4;
  if (v4)
  {
    v5 = v0[29];
    v6 = v0[30];
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v14 = v0[25];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[34] = v10;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String?;
    v0[13] = &block_descriptor_196;
    [v13 publishStatusRequest:v14 statusTypeIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 256);
  v4 = *(v1 + 248);
  if (v2)
  {
    v5 = closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
  }

  else
  {
    v5 = closure #1 in SKAStatusPublishingServiceClientProxy.publishStatusRequest(_:statusTypeIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[34];
  v2 = v0[33];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  **(v0 + 184) = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id OUTLINED_FUNCTION_0_1(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id specialized static SKAError.errorWithCode(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SKAError();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___SKAError_code] = a1;
  v4 = &v3[OBJC_IVAR___SKAError_customDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR___SKAError_underlyingError] = 0;
  *&v3[OBJC_IVAR___SKAError_userInfo] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12.receiver = v3;
  v12.super_class = v2;
  v5 = objc_msgSendSuper2(&v12, sel_init);
  v6 = *&v5[OBJC_IVAR___SKAError_code];
  SKAError.errorUserInfo.getter();
  v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v8 = MEMORY[0x223D76B00](0x726F727245414B53, 0xEE006E69616D6F44);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v7 initWithDomain:v8 code:v6 userInfo:isa];

  return v10;
}

uint64_t SKAError.errorUserInfo.getter()
{
  v1 = v0;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(*(v0 + OBJC_IVAR___SKAError_userInfo));
  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = *(v1 + OBJC_IVAR___SKAError_customDescription);
  v8 = *(v1 + OBJC_IVAR___SKAError_customDescription + 8);
  v20 = MEMORY[0x277D837D0];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = SKAErrorCode.defaultDescription.getter(*(v1 + OBJC_IVAR___SKAError_code));
  }

  *&v19 = v7;
  *(&v19 + 1) = v9;
  _sypWOb_0(&v19, v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v4, v6, isUniquelyReferenced_nonNull_native);

  v11 = *(v1 + OBJC_IVAR___SKAError_underlyingError);
  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v20 = type metadata accessor for NSError();
    *&v19 = v11;
    _sypWOb_0(&v19, v18);
    v15 = v11;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v12, v14, v16);
  }

  return v3;
}

_OWORD *_sypWOb_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Sendable)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = _sypWOb_0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t SKAErrorCode.defaultDescription.getter(uint64_t a1)
{
  if (a1 > 699)
  {
    if (a1 <= 999)
    {
      switch(a1)
      {
        case 700:
          return 0xD000000000000034;
        case 701:
          goto LABEL_48;
        case 702:
          goto LABEL_51;
        case 703:
          result = 0xD000000000000023;
          break;
        case 704:
          result = 0xD000000000000019;
          break;
        case 705:
          result = 0xD000000000000022;
          break;
        case 706:
          return 0xD000000000000030;
        case 800:
          result = ResponseStatus.serverResponseDescription.getter(1);
          break;
        case 801:
          result = ResponseStatus.serverResponseDescription.getter(2);
          break;
        case 802:
          result = ResponseStatus.serverResponseDescription.getter(3);
          break;
        case 803:
          result = ResponseStatus.serverResponseDescription.getter(4);
          break;
        case 804:
          result = ResponseStatus.serverResponseDescription.getter(5);
          break;
        case 805:
          result = ResponseStatus.serverResponseDescription.getter(6);
          break;
        case 806:
          result = ResponseStatus.serverResponseDescription.getter(7);
          break;
        case 807:
          result = ResponseStatus.serverResponseDescription.getter(8);
          break;
        case 808:
          goto LABEL_60;
        case 900:
          result = 0xD00000000000001CLL;
          break;
        case 901:
        case 903:
          result = 0xD000000000000029;
          break;
        case 902:
          result = 0xD000000000000014;
          break;
        case 904:
          return 0xD000000000000041;
        default:
          goto LABEL_75;
      }

      return result;
    }

    if (a1 <= 1101)
    {
      if (a1 > 1099)
      {
        if (a1 == 1100)
        {
          return 0xD00000000000002ALL;
        }

        else
        {
          return 0xD000000000000034;
        }
      }

      if (a1 == 1000)
      {
        return 0xD000000000000037;
      }

      if (a1 == 1001)
      {
        return 0xD00000000000001BLL;
      }
    }

    else
    {
      if (a1 <= 1103)
      {
        if (a1 == 1102)
        {
          return 0xD00000000000004FLL;
        }

        else
        {
          return 0xD000000000000038;
        }
      }

      switch(a1)
      {
        case 1104:
          return 0xD000000000000041;
        case 1105:
          return 0xD00000000000002CLL;
        case 9999:
          return 0xD000000000000047;
      }
    }

    goto LABEL_75;
  }

  if (a1 <= 399)
  {
    if (a1 <= 199)
    {
      switch(a1)
      {
        case 'd':
          return 0xD000000000000028;
        case 'e':
          return 0xD000000000000026;
        case 'f':
          return 0xD000000000000030;
      }
    }

    else
    {
      if (a1 <= 201)
      {
        if (a1 == 200)
        {
          return 0xD000000000000051;
        }

        _StringGuts.grow(_:)(86);
        MEMORY[0x223D76B90](0xD000000000000054, 0x80000002201ABFF0);
        MEMORY[0x223D76B90](0xD000000000000023, 0x80000002201AC050);
        return 0;
      }

      if (a1 == 202)
      {
        _StringGuts.grow(_:)(81);
        MEMORY[0x223D76B90](0xD00000000000004FLL, 0x80000002201ABF70);
        MEMORY[0x223D76B90](0xD000000000000021, 0x80000002201ABFC0);
        return 0;
      }

      if (a1 == 300)
      {
        return 0xD00000000000003FLL;
      }
    }

    goto LABEL_75;
  }

  if (a1 > 599)
  {
    if (a1 <= 601)
    {
      if (a1 == 600)
      {
        return 0xD000000000000031;
      }

      else
      {
        return 0xD00000000000002ELL;
      }
    }

    if (a1 == 602)
    {
      return 0xD000000000000017;
    }

    if (a1 == 603)
    {
      return 0xD000000000000013;
    }

LABEL_75:
    _StringGuts.grow(_:)(22);
    MEMORY[0x223D76B90](0xD000000000000014, 0x80000002201AB760);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  result = 0x6C6C6F722079654BLL;
  switch(a1)
  {
    case 400:
LABEL_51:
      result = 0xD00000000000001FLL;
      break;
    case 401:
      return result;
    case 402:
      return 0xD000000000000031;
    case 403:
      result = 0xD00000000000002FLL;
      break;
    case 404:
      result = 0xD000000000000023;
      break;
    case 405:
      result = 0xD000000000000018;
      break;
    case 406:
LABEL_48:
      result = 0xD000000000000027;
      break;
    case 500:
      result = 0xD00000000000004ELL;
      break;
    case 501:
      return 0xD00000000000001BLL;
    case 502:
      result = 0xD00000000000002DLL;
      break;
    case 503:
      result = 0xD000000000000061;
      break;
    case 504:
      return 0xD00000000000002CLL;
    case 505:
LABEL_60:
      result = 0xD00000000000001ALL;
      break;
    default:
      goto LABEL_75;
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return _sypWOb_0(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        _sypWOb_0(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = _sypWOb_0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGSaySo021SKADatabaseSubscribedcD0CGGMd, &_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGSaySo021SKADatabaseSubscribedcD0CGGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, MEMORY[0x277D24360]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        _sypWOb_0(v21, v30);
      }

      else
      {
        outlined init with copy of Any(v21, v30);
      }

      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = _sypWOb_0(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = _sypWOb_0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String?(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v0[4] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

{
  v0[2] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5Error_pGMd, &_sScCySSSgs5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMd, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

{
  v0[3] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMd, &_sScCySaySo24SKStatusProvisionPayloadCGs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of (String, Sendable)(i, &v11, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = _sypWOb_0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223D772F0](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, MEMORY[0x277D24360]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, MEMORY[0x277D24360]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      outlined init with copy of SKALocalStatusServer.FailedDelivery.ID(*(v2 + 48) + v11 * v9, v7, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      lazy protocol witness table accessor for type SKAError and conformance SKAError(&lazy protocol witness table cache variable for type SKALocalStatusServer.FailedDelivery.ID and conformance SKALocalStatusServer.FailedDelivery.ID, 255, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID, &protocol conformance descriptor for SKALocalStatusServer.FailedDelivery.ID);
      v12 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v7);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, MEMORY[0x277D24368]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D76FB0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id specialized static SKACALogger.getUnderlyingError(_:)(void *a1)
{
  v1 = [a1 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v4 = [v7 code];
      v5 = [v7 domain];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }
  }

  else
  {
  }

  return 0;
}

_OWORD *specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of UUID?(a1, &_sypSgMd, &_sypSgMR);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      outlined init with take of Any((*(v11 + 56) + 32 * v9), v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of UUID?(v14, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of Decodable & Encodable(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of UUID?(a1, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      outlined init with take of Decodable & Encodable((*(v11 + 56) + 48 * v9), v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of UUID?(v14, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return _sypWOb_0(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = _sypWOb_0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void specialized static SKACALogger.logMetadata(_:for:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    outlined init with copy of Any(*(a1 + 56) + 32 * v12, v43);
    aBlock = v13;
    outlined init with copy of Any(v43, v44);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    if (swift_dynamicCast())
    {
      v40 = v43[6];
      if (v13 > 3)
      {
        if (v13 > 5)
        {
          if (v13 == 6)
          {
            v38 = 0xD000000000000015;
            v39 = 0x80000002201ACAA0;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_65:
              v44[0] = v13;
              goto LABEL_67;
            }

            v38 = 0xD00000000000001ALL;
            v39 = 0x80000002201ACA80;
          }
        }

        else
        {
          if (v13 == 4)
          {
            v39 = 0xE700000000000000;
            v14 = 0x73736563637573;
LABEL_23:
            v38 = v14;
            goto LABEL_24;
          }

          v38 = 0xD000000000000013;
          v39 = 0x80000002201ACAC0;
        }
      }

      else
      {
        if (v13 <= 1)
        {
          if (v13)
          {
            if (v13 != 1)
            {
              goto LABEL_65;
            }

            v39 = 0xE800000000000000;
            v14 = 0x6E6F697461727564;
          }

          else
          {
            v39 = 0xE600000000000000;
            v14 = 0x746E65696C63;
          }

          goto LABEL_23;
        }

        if (v13 == 2)
        {
          v39 = 0xE900000000000065;
          v14 = 0x646F43726F727265;
          goto LABEL_23;
        }

        v38 = 0x6D6F44726F727265;
        v39 = 0xEB000000006E6961;
      }

LABEL_24:
      outlined destroy of UUID?(&aBlock, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO3key_yp5valuetMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO3key_yp5valuetMR);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      }

      v16 = v9[2];
      v15 = v9[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v9);
        v17 = v16 + 1;
        v9 = v19;
      }

      v9[2] = v17;
      v18 = &v9[3 * v16];
      v18[4] = v38;
      v18[5] = v39;
      v18[6] = v40;
    }

    else
    {
      outlined destroy of UUID?(&aBlock, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO3key_yp5valuetMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO3key_yp5valuetMR);
    }
  }

  while (2)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v8 < v7)
    {
      v6 = *(v3 + 8 * v8);
      ++v10;
      if (v6)
      {
        goto LABEL_8;
      }

      continue;
    }

    break;
  }

  if (v9[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  v7 = 0xD000000000000022;
  aBlock = v20;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v21, 1, &aBlock);

  v3 = aBlock;
  if (one-time initialization token for logger != -1)
  {
LABEL_64:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315394;

    v27 = a2;
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_68;
        }

        v28 = "Kit.presence.subscription";
        v29 = 0xD000000000000022;
      }

      else
      {
        v28 = "Kit.status.publish";
        v29 = v7 + 4;
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          v28 = "tDuplicatedChannel";
          v29 = v7 + 7;
          break;
        case 3:
          v28 = "dPersistentStore";
          v29 = v7 + 16;
          break;
        case 4:
          v28 = "recipientDevicesChanged()";
          v29 = v7 + 14;
          break;
        default:
          goto LABEL_68;
      }
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28 | 0x8000000000000000, &aBlock);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    lazy protocol witness table accessor for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey();
    v31 = Dictionary.description.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &aBlock);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_220099000, v23, v24, "Logging event %s: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D77FF0](v26, -1, -1);
    MEMORY[0x223D77FF0](v25, -1, -1);
  }

  else
  {
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      v34 = "Kit.status.publish";
      v7 += 4;
      goto LABEL_62;
    }

    if (a2 == 1)
    {
      v34 = "Kit.presence.subscription";
      goto LABEL_62;
    }

    goto LABEL_66;
  }

  if (a2 == 2)
  {
    v34 = "tDuplicatedChannel";
    v7 += 7;
    goto LABEL_62;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      v34 = "recipientDevicesChanged()";
      v7 += 14;
      goto LABEL_62;
    }

LABEL_66:
    aBlock = a2;
    while (1)
    {
LABEL_67:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
LABEL_68:
      v44[0] = v27;
    }
  }

  v34 = "dPersistentStore";
  v7 += 16;
LABEL_62:
  v35 = MEMORY[0x223D76B00](v7, v34 | 0x8000000000000000);

  v36 = swift_allocObject();
  *(v36 + 16) = v3;
  v43[3] = partial apply for closure #2 in static SKACALogger.logMetadata(_:for:);
  v43[4] = v36;
  aBlock = MEMORY[0x277D85DD0];
  v43[0] = 1107296256;
  v43[1] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v43[2] = &block_descriptor_1;
  v37 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v37);
}

uint64_t sub_2200A000C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo31SKADatabasePublishedLocalStatusC_SStGMd, &_ss23_ContiguousArrayStorageCySo31SKADatabasePublishedLocalStatusC_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31SKADatabasePublishedLocalStatusC_SStMd, &_sSo31SKADatabasePublishedLocalStatusC_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMd, &_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x223D76B90](0xD00000000000001BLL, 0x80000002201ACBB0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x223D76B90](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t lazy protocol witness table accessor for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey()
{
  result = lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey;
  if (!lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey;
  if (!lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKACALogger.SKACALogKey and conformance SKACALogger.SKACALogKey);
  }

  return result;
}

uint64_t SKACALogger.SKACALogKey.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0xD000000000000015;
      }

      if (a1 == 7)
      {
        return 0xD00000000000001ALL;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 0x73736563637573;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x746E65696C63;
      }

      if (a1 == 1)
      {
        return 0x6E6F697461727564;
      }

LABEL_18:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0x646F43726F727265;
    }

    else
    {
      return 0x6D6F44726F727265;
    }
  }
}

id Error.sanitizedError.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v63 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v70 = *(v6 + 16);
  v70(&v63 - v16, v3, a1);
  v18 = _getErrorEmbeddedNSError<A>(_:)();
  if (v18)
  {
    v19 = v18;
    (*(v6 + 8))(v17, a1);
  }

  else
  {
    v19 = swift_allocError();
    (*(v6 + 32))(v20, v17, a1);
  }

  v21 = _convertErrorToNSError(_:)();

  v22 = [v21 isSKAError];
  v69 = a2;
  v68 = v21;
  v67 = v9;
  v66 = v6 + 16;
  if (v22)
  {
    v23 = specialized SKAErrorCode.init(rawValue:)([v21 code]);
    v24 = v23;
    v26 = v25;
    if (v25)
    {
LABEL_6:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, logger);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = -1;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v73 = v32;
        *v31 = 136315138;
        v71 = v24;
        v72 = v26 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore12SKAErrorCodeOSgMd, &_s18StatusKitAgentCore12SKAErrorCodeOSgMR);
        v33 = String.init<A>(describing:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v73);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_220099000, v28, v29, "Error was attempted to be sanitized, but the error code was not a valid SKAErrorCode: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x223D77FF0](v32, -1, -1);
        MEMORY[0x223D77FF0](v31, -1, -1);

        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (v23 <= 699)
    {
      v30 = 0;
      if (v23 > 499)
      {
        if (v23 < 505)
        {
          goto LABEL_66;
        }

        if (v23 <= 600)
        {
          if (v23 != 505)
          {
            if (v23 != 600)
            {
              goto LABEL_6;
            }

            goto LABEL_66;
          }
        }

        else if (v23 != 601)
        {
          if (v23 == 602)
          {
            goto LABEL_49;
          }

          if (v23 != 603)
          {
            goto LABEL_6;
          }

LABEL_20:
          v30 = 3;
          goto LABEL_49;
        }
      }

      else
      {
        if (v23 <= 399)
        {
          if ((v23 - 100) < 3)
          {
            goto LABEL_49;
          }

          if ((v23 - 200) < 3)
          {
            v30 = 1;
            goto LABEL_49;
          }

          if (v23 != 300)
          {
            goto LABEL_6;
          }

          goto LABEL_69;
        }

        if ((v23 - 400) >= 7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      if (v23 <= 899)
      {
        if ((v23 - 700) > 6)
        {
          if ((v23 - 802) <= 6)
          {
            if (((1 << (v23 - 34)) & 0x67) != 0)
            {
              goto LABEL_20;
            }

            if (v23 == 805)
            {
              goto LABEL_66;
            }

            goto LABEL_67;
          }

          if ((v23 - 800) >= 2)
          {
            goto LABEL_6;
          }

          goto LABEL_69;
        }

        if (v23 == 704)
        {
LABEL_67:
          v30 = 4;
          goto LABEL_49;
        }

LABEL_69:
        v30 = 2;
        goto LABEL_49;
      }

      if (v23 > 1099)
      {
        if (v23 <= 1101)
        {
          if (v23 == 1100)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if ((v23 - 1102) < 3)
          {
            goto LABEL_66;
          }

          if (v23 == 1105)
          {
            goto LABEL_67;
          }

          if (v23 != 9999)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        if (v23 < 903)
        {
          goto LABEL_66;
        }

        if (v23 <= 999)
        {
          if (v23 == 903)
          {
            goto LABEL_67;
          }

          if (v23 != 904)
          {
            goto LABEL_6;
          }

LABEL_66:
          v30 = 5;
          goto LABEL_49;
        }

        if (v23 == 1000)
        {
          goto LABEL_66;
        }

        if (v23 != 1001)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_48:
    v30 = -1;
    goto LABEL_49;
  }

  v36 = v70;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, logger);
  v36(v15, v3, a1);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.fault.getter();
  if (!os_log_type_enabled(v38, v39))
  {

    (*(v6 + 8))(v15, a1);
    goto LABEL_48;
  }

  v64 = v6;
  v65 = v3;
  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  *v40 = 138412290;
  v36(v12, v15, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v42 = v64;
    (*(v64 + 8))(v12, a1);
  }

  else
  {
    swift_allocError();
    v42 = v64;
    (*(v64 + 32))(v43, v12, a1);
  }

  v44 = _swift_stdlib_bridgeErrorToNSError();
  (*(v42 + 8))(v15, a1);
  *(v40 + 4) = v44;
  *v41 = v44;
  _os_log_impl(&dword_220099000, v38, v39, "Error was attempted to be sanitized, but the error was not a valid SKAError: %@", v40, 0xCu);
  outlined destroy of UUID?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v30 = -1;
  MEMORY[0x223D77FF0](v41, -1, -1);
  MEMORY[0x223D77FF0](v40, -1, -1);

  v3 = v65;
  v6 = v42;
LABEL_49:
  v45 = *MEMORY[0x277D68178];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2201A7270;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v47;
  v48 = v45;
  v49 = StringFromSKStatusKitErrorCode();
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v50;
  *(inited + 56) = v52;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v53;
  v54 = v67;
  v70(v67, v3, a1);
  v55 = _getErrorEmbeddedNSError<A>(_:)();
  if (v55)
  {
    v56 = v55;
    (*(v6 + 8))(v54, a1);
  }

  else
  {
    v56 = swift_allocError();
    (*(v6 + 32))(v57, v54, a1);
  }

  v58 = _convertErrorToNSError(_:)();

  *(inited + 120) = type metadata accessor for NSError();
  *(inited + 96) = v58;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v59 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v61 = [v59 initWithDomain:v48 code:v30 userInfo:isa];

  return v61;
}

uint64_t @objc NSError.isSKAError.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0x726F727245414B53 && v5 == 0xEE006E69616D6F44)
  {

    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t specialized SKAErrorCode.init(rawValue:)(uint64_t result)
{
  if (result <= 699)
  {
    if (result > 399)
    {
      if ((result - 400) >= 7 && (result - 500) >= 6 && (result - 600) >= 4)
      {
        return 0;
      }
    }

    else if ((result - 100) >= 3 && (result - 200) >= 3 && result != 300)
    {
      return 0;
    }
  }

  else if (result > 899)
  {
    if (result > 1099)
    {
      if ((result - 1100) >= 6 && result != 9999)
      {
        return 0;
      }
    }

    else if ((result - 900) >= 5 && (result - 1000) >= 2)
    {
      return 0;
    }
  }

  else if ((result - 800) >= 9 && (result - 700) >= 7)
  {
    return 0;
  }

  return result;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void closure #4 in SKALocalStatusServer.init(idsDeviceProvider:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = [a1 idsDeviceIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a1;
    v18[5] = a2;
    v18[6] = v14;
    v18[7] = v16;
    v19 = a1;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, a4, v18);
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, log);
    v21 = a1;
    v28 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v28, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v21;
      *v24 = v21;
      v25 = v21;
      _os_log_impl(&dword_220099000, v28, v22, a5, v23, 0xCu);
      outlined destroy of UUID?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v24, -1, -1);
      MEMORY[0x223D77FF0](v23, -1, -1);
    }

    v26 = v28;
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:), 0, 0);
}

uint64_t closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_220099000, v4, v5, "receiveStatusCompanionLink deviceFound {device: %@}", v7, 0xCu);
    outlined destroy of UUID?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v8, -1, -1);
    MEMORY[0x223D77FF0](v7, -1, -1);
  }

  v10 = v0[10];
  v11 = v0[6];

  static Date.now.getter();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);

  return MEMORY[0x2822009F8](closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:), v11, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  outlined init with copy of (String, Sendable)(v1, v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v2, v4, v3);
  swift_endAccess();
  outlined destroy of UUID?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  return MEMORY[0x2822009F8](closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:), 0, 0);
}

{
  v18 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  strcpy(v17, "deviceFound[");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;

  v5 = specialized Collection.prefix(_:)(8, v2, v1, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x223D76B60](v5, v7, v9, v11);
  v14 = v13;

  MEMORY[0x223D76B90](v12, v14);

  MEMORY[0x223D76B90](93, 0xE100000000000000);
  v15 = v17[1];
  v0[11] = v17[0];
  v0[12] = v15;

  return MEMORY[0x2822009F8](closure #1 in closure #4 in SKALocalStatusServer.init(idsDeviceProvider:), v3, 0);
}

{
  SKALocalStatusServer.reconcileObservations(reason:)(v0[11], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    outlined destroy of UUID?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of UUID?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t SKALocalStatusServer.reconcileObservations(reason:)(unint64_t a1, unint64_t isUniquelyReferenced_nonNull_native)
{
  v253[3] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetSgMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v220 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v230 = &v220 - v8;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v231 = *(v241 - 8);
  v9 = MEMORY[0x28223BE20](v241);
  v225 = &v220 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v222 = &v220 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v242 = &v220 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v228 = &v220 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v220 - v17;
  if (one-time initialization token for log != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    v20 = __swift_project_value_buffer(v19, log);

    v249 = v20;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v253[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, isUniquelyReferenced_nonNull_native, v253);
      _os_log_impl(&dword_220099000, v21, v22, "reconcileObservations START {reason: %s}", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223D77FF0](v24, -1, -1);
      MEMORY[0x223D77FF0](v23, -1, -1);
    }

    v25 = v238;
    v26 = [*(v238 + 184) idsDevices];
    if (!v26)
    {
      v56 = type metadata accessor for LSKError();
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
      v57 = swift_allocError();
      *v58 = 0x6369766544736469;
      v58[1] = 0xEA00000000007365;
      (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D24380], v56);
      swift_willThrow();
LABEL_34:
      v60 = 0;
      goto LABEL_35;
    }

    v27 = v26;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSDevice, 0x277D186E0);
    isUniquelyReferenced_nonNull_native = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = [*(v25 + 168) newBackgroundContext];
    v29 = *(v25 + 176);
    v253[0] = 0;
    v30 = [v29 allSubscribedLocalStatusesInDatabaseContext:v28 error:v253];
    v31 = v253[0];
    if (!v30)
    {
      v59 = v253[0];

      v57 = _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_34;
    }

    v32 = v30;
    v221 = v28;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabaseSubscribedLocalStatus, off_27843D3D8);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v31;

    v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedcD0CGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v246 = a1;
    if (a1 >> 62)
    {
      v104 = __CocoaSet.count.getter();
      a1 = v246;
      v35 = v104;
    }

    else
    {
      v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v245 = isUniquelyReferenced_nonNull_native;
    v239 = v7;
    if (v35)
    {
      v36 = 0;
      v235 = 0;
      v240 = 0;
      v250 = a1 & 0xC000000000000001;
      v37 = a1 & 0xFFFFFFFFFFFFFF8;
      v248 = v231 + 16;
      v38 = (v231 + 8);
      while (1)
      {
        if (v250)
        {
          v39 = MEMORY[0x223D77050](v36, a1);
        }

        else
        {
          if (v36 >= *(v37 + 16))
          {
            goto LABEL_68;
          }

          v39 = *(a1 + 8 * v36 + 32);
        }

        v7 = v39;
        a1 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_67;
        }

        v40 = v240;
        SKADatabasePublishedLocalStatus.key.getter(v18);
        v240 = v40;
        if (v40)
        {

          v57 = v240;
          v60 = v235;
LABEL_35:
          v61 = v57;
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *v64 = 138412290;
            v66 = v57;
            v67 = _swift_stdlib_bridgeErrorToNSError();
            *(v64 + 4) = v67;
            *v65 = v67;
            _os_log_impl(&dword_220099000, v62, v63, "reconcileObservations FAILED {error: %@}", v64, 0xCu);
            outlined destroy of UUID?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x223D77FF0](v65, -1, -1);
            MEMORY[0x223D77FF0](v64, -1, -1);
          }

          else
          {
          }

          v68 = v60;
          return _sxRi_zRi0_zlySaySo32SKADatabaseSubscribedLocalStatusCGIsegr_SgWOe(v68, 0);
        }

        _sxRi_zRi0_zlySaySo32SKADatabaseSubscribedLocalStatusCGIsegr_SgWOe(v235, 0);
        v41 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v253[0] = v34;
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
        v44 = v34[2];
        v45 = (v43 & 1) == 0;
        v46 = __OFADD__(v44, v45);
        v47 = v44 + v45;
        if (v46)
        {
          goto LABEL_69;
        }

        v48 = v43;
        if (v41[3] >= v47)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v43 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_native = v42;
            specialized _NativeDictionary.copy()();
            v42 = isUniquelyReferenced_nonNull_native;
            v41 = v253[0];
            if ((v48 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, isUniquelyReferenced_nonNull_native);
          isUniquelyReferenced_nonNull_native = v253[0];
          v42 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
          if ((v48 & 1) != (v49 & 1))
          {
            goto LABEL_143;
          }

          v41 = isUniquelyReferenced_nonNull_native;
          if ((v48 & 1) == 0)
          {
LABEL_22:
            v41[(v42 >> 6) + 8] |= 1 << v42;
            v50 = v42;
            (*(v231 + 16))(v41[6] + *(v231 + 72) * v42, v18, v241);
            *(v41[7] + 8 * v50) = MEMORY[0x277D84F90];
            v51 = v41[2];
            v46 = __OFADD__(v51, 1);
            v52 = v51 + 1;
            if (v46)
            {
              goto LABEL_72;
            }

            v42 = v50;
            v41[2] = v52;
          }
        }

        isUniquelyReferenced_nonNull_native = v41;
        v53 = (v41[7] + 8 * v42);
        v54 = v7;
        MEMORY[0x223D76BD0]();
        if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v38)(v18, v241);
        ++v36;
        v235 = specialized thunk for @callee_guaranteed () -> (@owned [SKADatabaseSubscribedLocalStatus]);
        v55 = a1 == v35;
        v7 = v239;
        v34 = isUniquelyReferenced_nonNull_native;
        a1 = v246;
        if (v55)
        {
          goto LABEL_41;
        }
      }
    }

    v235 = 0;
    v240 = 0;
LABEL_41:
    v226 = v34;
    v252 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS4name_SS15modelIdentifiertTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v70 = v245;
    if (v245 >> 62)
    {
      v71 = __CocoaSet.count.getter();
      if (!v71)
      {
LABEL_77:

        v105 = v226 + 8;
        v106 = 1 << *(v226 + 32);
        v107 = -1;
        if (v106 < 64)
        {
          v107 = ~(-1 << v106);
        }

        v108 = v107 & v226[8];
        v232 = OBJC_IVAR___SKALocalStatusServer_subscriptionSubjects;
        v223 = (v106 + 63) >> 6;
        v233 = (v231 + 16);
        v234 = (v231 + 32);
        v229 = (v231 + 8);

        v109 = 0;
        *&v110 = 136315138;
        v224 = v110;
        *&v110 = 136315394;
        v244 = v110;
        v227 = v105;
        while (2)
        {
          if (v108)
          {
            v237 = v109;
            v113 = v109;
LABEL_93:
            v236 = (v108 - 1) & v108;
            v116 = __clz(__rbit64(v108)) | (v113 << 6);
            v117 = v226;
            v118 = v231;
            v119 = v228;
            v120 = v241;
            (*(v231 + 16))(v228, v226[6] + *(v231 + 72) * v116, v241);
            v121 = *(v117[7] + 8 * v116);
            v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMR);
            v123 = *(v122 + 48);
            (*(v118 + 32))(v7, v119, v120);
            *&v7[v123] = v121;
            (*(*(v122 - 8) + 56))(v7, 0, 1, v122);
          }

          else
          {
            if (v223 <= v109 + 1)
            {
              v114 = v109 + 1;
            }

            else
            {
              v114 = v223;
            }

            v115 = v114 - 1;
            while (1)
            {
              v113 = v109 + 1;
              if (__OFADD__(v109, 1))
              {
                goto LABEL_139;
              }

              if (v113 >= v223)
              {
                break;
              }

              v108 = v105[v113];
              ++v109;
              if (v108)
              {
                v237 = v113;
                goto LABEL_93;
              }
            }

            v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMR);
            (*(*(v167 - 8) + 56))(v7, 1, 1, v167);
            v236 = 0;
            v237 = v115;
          }

          v124 = v230;
          outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v7, v230, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetSgMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetSgMR);
          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG3key_SaySo021SKADatabaseSubscribedaB0CG5valuetMR);
          v126 = &selRef_executeRequest_error_;
          if ((*(*(v125 - 8) + 48))(v124, 1, v125) == 1)
          {

            v214 = Logger.logObject.getter();
            v215 = static os_log_type_t.default.getter();
            v216 = os_log_type_enabled(v214, v215);
            v217 = v221;
            v218 = v235;
            if (v216)
            {
              v219 = swift_slowAlloc();
              *v219 = 0;
              _os_log_impl(&dword_220099000, v214, v215, "reconcileObservations END", v219, 2u);
              MEMORY[0x223D77FF0](v219, -1, -1);
            }

            v68 = v218;
            return _sxRi_zRi0_zlySaySo32SKADatabaseSubscribedLocalStatusCGIsegr_SgWOe(v68, 0);
          }

          v127 = *(v124 + *(v125 + 48));
          (*v234)(v242, v124, v241);
          v128 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So32SKADatabaseSubscribedLocalStatusCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          if (!(v127 >> 62))
          {
            v129 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v129)
            {
              goto LABEL_97;
            }

LABEL_120:

            MEMORY[0x28223BE20](v168);
            *(&v220 - 4) = &v252;
            v169 = v242;
            *(&v220 - 3) = v238;
            *(&v220 - 2) = v169;

            v170 = v240;
            specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in SKALocalStatusServer.reconcileObservations(reason:), (&v220 - 6), v128);
            v172 = v171;
            v240 = v170;

            v173 = Logger.logObject.getter();
            v174 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v173, v174))
            {
              v175 = swift_slowAlloc();
              v176 = swift_slowAlloc();
              v253[0] = v176;
              *v175 = v224;
              v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
              v178 = MEMORY[0x223D76C00](v172, v177);
              v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v179, v253);

              *(v175 + 4) = v180;
              _os_log_impl(&dword_220099000, v173, v174, "reconcileObservations - Observations %s", v175, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v176);
              MEMORY[0x223D77FF0](v176, -1, -1);
              MEMORY[0x223D77FF0](v175, -1, -1);
            }

            v181 = v238;
            v182 = v232;
            swift_beginAccess();
            if (*(*(v181 + v182) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v242), (v183 & 1) != 0))
            {
              swift_endAccess();

              CurrentValueSubject.value.getter();
              v184 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14LocalStatusKit08LSKLocalC11ObservationVy10Foundation4DataVG_Tt1g5(v253[0], v172);

              v185 = v229;
              if (v184)
              {

                v111 = *v185;
                v112 = v241;
                goto LABEL_82;
              }

              v250 = v128;
              v253[0] = v172;
              CurrentValueSubject.send(_:)();

              v190 = v222;
              v191 = v241;
              (*v233)(v222, v242, v241);
              swift_retain_n();
              v192 = Logger.logObject.getter();
              v206 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v192, v206))
              {
                v194 = swift_slowAlloc();
                v195 = swift_slowAlloc();
                v253[0] = v195;
                *v194 = v244;
                lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24370]);
                v207 = dispatch thunk of CustomStringConvertible.description.getter();
                v208 = v190;
                v209 = v207;
                v211 = v210;
                v111 = *v229;
                (*v229)(v208, v191);
                v212 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v209, v211, v253);

                *(v194 + 4) = v212;
                *(v194 + 12) = 2048;
                CurrentValueSubject.value.getter();
                v213 = *(v251 + 16);

                *(v194 + 14) = v213;

                v203 = v206;
                v204 = v192;
                v205 = "reconcileObservations publishing observations to exisitng subject {identifier: %s, observations.count: %ld}";
LABEL_128:
                _os_log_impl(&dword_220099000, v204, v203, v205, v194, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v195);
                MEMORY[0x223D77FF0](v195, -1, -1);
                MEMORY[0x223D77FF0](v194, -1, -1);

LABEL_81:
                v112 = v191;
LABEL_82:
                v105 = v227;
                v111(v242, v112);
                v7 = v239;
                v109 = v237;
                v108 = v236;
                continue;
              }
            }

            else
            {
              v250 = v128;
              swift_endAccess();
              v253[0] = MEMORY[0x277D84F90];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMR);
              swift_allocObject();
              v186 = CurrentValueSubject.init(_:)();
              v187 = v232;
              swift_beginAccess();

              v188 = swift_isUniquelyReferenced_nonNull_native();
              v251 = *(v181 + v187);
              *(v181 + v187) = 0x8000000000000000;
              v189 = v242;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v186, v242, v188);
              *(v181 + v187) = v251;
              swift_endAccess();
              v253[0] = v172;
              CurrentValueSubject.send(_:)();

              v190 = v225;
              v191 = v241;
              (*v233)(v225, v189, v241);
              swift_retain_n();
              v192 = Logger.logObject.getter();
              v193 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v192, v193))
              {
                v194 = swift_slowAlloc();
                v195 = swift_slowAlloc();
                v253[0] = v195;
                *v194 = v244;
                lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24370]);
                v196 = dispatch thunk of CustomStringConvertible.description.getter();
                v197 = v190;
                v198 = v196;
                v200 = v199;
                v111 = *v229;
                (*v229)(v197, v191);
                v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v200, v253);

                *(v194 + 4) = v201;
                *(v194 + 12) = 2048;
                CurrentValueSubject.value.getter();
                v202 = *(v251 + 16);

                *(v194 + 14) = v202;

                v203 = v193;
                v204 = v192;
                v205 = "reconcileObservations published observations to new subject {identifier: %s, observations.count: %ld}";
                goto LABEL_128;
              }
            }

            v111 = *v229;
            (*v229)(v190, v191);

            goto LABEL_81;
          }

          break;
        }

        v129 = __CocoaSet.count.getter();
        if (!v129)
        {
          goto LABEL_120;
        }

LABEL_97:
        v130 = 0;
        v247 = v129;
        v248 = v127 & 0xC000000000000001;
        v243 = v127 & 0xFFFFFFFFFFFFFF8;
        while (2)
        {
          if (v248)
          {
            v134 = MEMORY[0x223D77050](v130, v127);
            v135 = v130 + 1;
            if (__OFADD__(v130, 1))
            {
              goto LABEL_135;
            }
          }

          else
          {
            if (v130 >= *(v243 + 16))
            {
              goto LABEL_138;
            }

            v134 = *(v127 + 8 * v130 + 32);
            v135 = v130 + 1;
            if (__OFADD__(v130, 1))
            {
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
              goto LABEL_141;
            }
          }

          v250 = v135;
          v136 = v134;
          v137 = Logger.logObject.getter();
          v138 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            v245 = swift_slowAlloc();
            v246 = swift_slowAlloc();
            v253[0] = v246;
            *v139 = v244;
            v140 = v128;
            v141 = [v136 v126[76]];
            v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v143 = v127;
            v145 = v144;

            v128 = v140;
            v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v145, v253);
            v127 = v143;

            *(v139 + 4) = v146;
            v126 = &selRef_executeRequest_error_;
            *(v139 + 12) = 2112;
            *(v139 + 14) = v136;
            v147 = v245;
            *v245 = v136;
            v148 = v136;
            _os_log_impl(&dword_220099000, v137, v138, "status.idsIdentifier %s, status %@", v139, 0x16u);
            outlined destroy of UUID?(v147, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x223D77FF0](v147, -1, -1);
            v149 = v246;
            __swift_destroy_boxed_opaque_existential_0(v246);
            MEMORY[0x223D77FF0](v149, -1, -1);
            MEMORY[0x223D77FF0](v139, -1, -1);
          }

          v150 = [v136 v126[76]];
          v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v153 = v152;

          v154 = v136;
          v155 = swift_isUniquelyReferenced_nonNull_native();
          v253[0] = v128;
          v156 = specialized __RawDictionaryStorage.find<A>(_:)(v151, v153);
          v158 = v128[2];
          v159 = (v157 & 1) == 0;
          v46 = __OFADD__(v158, v159);
          v160 = v158 + v159;
          if (v46)
          {
            goto LABEL_136;
          }

          v161 = v157;
          if (v128[3] >= v160)
          {
            if (v155)
            {
              goto LABEL_113;
            }

            v166 = v156;
            specialized _NativeDictionary.copy()();
            v156 = v166;
            v126 = &selRef_executeRequest_error_;
            if (v161)
            {
              goto LABEL_98;
            }

LABEL_114:
            v128 = v253[0];
            *(v253[0] + (v156 >> 6) + 8) |= 1 << v156;
            v163 = (v128[6] + 16 * v156);
            *v163 = v151;
            v163[1] = v153;
            *(v128[7] + 8 * v156) = v154;

            v164 = v128[2];
            v46 = __OFADD__(v164, 1);
            v165 = v164 + 1;
            if (v46)
            {
              goto LABEL_137;
            }

            v128[2] = v165;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v160, v155);
            v156 = specialized __RawDictionaryStorage.find<A>(_:)(v151, v153);
            if ((v161 & 1) != (v162 & 1))
            {
              goto LABEL_142;
            }

LABEL_113:
            if ((v161 & 1) == 0)
            {
              goto LABEL_114;
            }

LABEL_98:
            v131 = v156;

            v128 = v253[0];
            v132 = *(v253[0] + 7);
            v133 = *(v132 + 8 * v131);
            *(v132 + 8 * v131) = v154;
          }

          ++v130;
          if (v250 == v247)
          {
            goto LABEL_120;
          }

          continue;
        }
      }
    }

    else
    {
      v71 = *((v245 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v71)
      {
        goto LABEL_77;
      }
    }

    v18 = 0;
    v247 = v70 & 0xC000000000000001;
    v243 = v70 & 0xFFFFFFFFFFFFFF8;
    *&v244 = v71;
LABEL_46:
    if (v247)
    {
      v72 = MEMORY[0x223D77050](v18, v70);
    }

    else
    {
      if (v18 >= *(v243 + 16))
      {
        goto LABEL_71;
      }

      v72 = *(v70 + 8 * v18 + 32);
    }

    v7 = v72;
    isUniquelyReferenced_nonNull_native = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      break;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v73 = [v72 uniqueID];
  if (!v73)
  {

    v7 = v239;
LABEL_45:
    ++v18;
    if (isUniquelyReferenced_nonNull_native == v71)
    {
      goto LABEL_77;
    }

    goto LABEL_46;
  }

  v74 = v73;
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  v78 = [v7 name];
  if (!v78)
  {
    goto LABEL_140;
  }

  v79 = v78;
  v248 = v18 + 1;
  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v250 = v80;

  v81 = [v7 modelIdentifier];
  if (!v81)
  {
LABEL_141:
    __break(1u);
  }

  v82 = v81;
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  isUniquelyReferenced_nonNull_native = v84;

  v85 = swift_isUniquelyReferenced_nonNull_native();
  v86 = v252;
  v253[0] = v252;
  v87 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v77);
  v89 = v86[2];
  v90 = (v88 & 1) == 0;
  v46 = __OFADD__(v89, v90);
  v91 = v89 + v90;
  if (v46)
  {
    goto LABEL_70;
  }

  v92 = v88;
  if (v86[3] >= v91)
  {
    if ((v85 & 1) == 0)
    {
      v98 = v87;
      specialized _NativeDictionary.copy()();
      v87 = v98;
      if (v92)
      {
        goto LABEL_60;
      }

      goto LABEL_62;
    }

LABEL_59:
    if (v92)
    {
LABEL_60:
      v94 = v87;

      v95 = v253[0];
      v96 = (*(v253[0] + 7) + 32 * v94);
      v97 = v250;
      *v96 = a1;
      v96[1] = v97;
      v96[2] = v83;
      v96[3] = isUniquelyReferenced_nonNull_native;

LABEL_64:
      v252 = v95;
      v7 = v239;
      v70 = v245;
      v71 = v244;
      isUniquelyReferenced_nonNull_native = v248;
      goto LABEL_45;
    }

LABEL_62:
    v95 = v253[0];
    *(v253[0] + (v87 >> 6) + 8) |= 1 << v87;
    v99 = (v95[6] + 16 * v87);
    *v99 = v75;
    v99[1] = v77;
    v100 = (v95[7] + 32 * v87);
    v101 = v250;
    *v100 = a1;
    v100[1] = v101;
    v100[2] = v83;
    v100[3] = isUniquelyReferenced_nonNull_native;

    v102 = v95[2];
    v46 = __OFADD__(v102, 1);
    v103 = v102 + 1;
    if (v46)
    {
      goto LABEL_73;
    }

    v95[2] = v103;
    goto LABEL_64;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v91, v85);
  v87 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v77);
  if ((v92 & 1) == (v93 & 1))
  {
    goto LABEL_59;
  }

LABEL_142:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_143:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedcD0CGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedaB0CGtMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedaB0CGtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGSaySo021SKADatabaseSubscribedcD0CGGMd, &_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGSaySo021SKADatabaseSubscribedcD0CGGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Sendable)(v9, v5, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedaB0CGtMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVG_SaySo021SKADatabaseSubscribedaB0CGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So37SKADatabasePublishedLocalStatusDeviceCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo9IDSDeviceCGMd, &_ss18_DictionaryStorageCySSSo9IDSDeviceCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo37SKADatabasePublishedLocalStatusDeviceCGMd, &_ss18_DictionaryStorageCySSSo37SKADatabasePublishedLocalStatusDeviceCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for Date();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo32SKADatabaseSubscribedLocalStatusCGMd, &_ss18_DictionaryStorageCySSSo32SKADatabaseSubscribedLocalStatusCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2S4name_SS15modelIdentifiertGMd, &_ss18_DictionaryStorageCyS2S4name_SS15modelIdentifiertGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v39 = *v24;
      v40 = *v22;
      v26 = v24[3];
      v38 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v39;
      v17[1] = v25;
      v17[2] = v38;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore08SKALocalC6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAHGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore08SKALocalC6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAHGMR);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v36 = v2;
    v37 = v9;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      v26 = v38;
      if (v42)
      {
        outlined init with take of SKALocalStatusServer.FailedDelivery.ID(v25, v38, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        v27 = *(v41 + 72);
        outlined init with take of SKALocalStatusServer.FailedDelivery.ID(*(v9 + 56) + v27 * v23, v44, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      }

      else
      {
        outlined init with copy of SKALocalStatusServer.FailedDelivery.ID(v25, v38, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        v27 = *(v41 + 72);
        outlined init with copy of SKALocalStatusServer.FailedDelivery.ID(*(v9 + 56) + v27 * v23, v44, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      }

      Hasher.init(_seed:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, MEMORY[0x277D24360]);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      outlined init with take of SKALocalStatusServer.FailedDelivery.ID(v26, *(v11 + 48) + v43 * v19, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      result = outlined init with take of SKALocalStatusServer.FailedDelivery.ID(v44, *(v11 + 56) + v27 * v19, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOSe_SEpGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOSe_SEpGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 48 * v19);
      if (v4)
      {
        outlined init with take of Decodable & Encodable(v21, v30);
      }

      else
      {
        outlined init with copy of Decodable & Encodable(v21, v30);
      }

      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of Decodable & Encodable(v30, (*(v7 + 56) + 48 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G16LogEventMetadataVGMd, &_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G16LogEventMetadataVGMR);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 48 * v21;
      v26 = *(v25 + 16);
      v38 = *(v25 + 24);
      v39 = *v25;
      v37 = *(v25 + 40);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v39;
      *(v17 + 16) = v26;
      *(v17 + 24) = v38;
      *(v17 + 40) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t _sxRi_zRi0_zlySaySo32SKADatabaseSubscribedLocalStatusCGIsegr_SgWOe(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *_sSo30ACAccountCredentialRenewResultVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2200A41FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2200A42C4()
{
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2200A4378()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2200A4424()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVGMd, &_sScSy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((v9 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_2200A459C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A4654()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2200A474C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2200A4808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2200A48D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2200A49AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2200A4A0C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2200A4AEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2200A4B24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A4BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A4C9C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  result = LSKKey.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2200A4CDC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2200A4D2C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2200A4D64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2200A4DBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A4E9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A4F84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A4FE0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2200A5010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ContinuousClock.Instant();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2200A50BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ContinuousClock.Instant();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2200A5160()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2200A51A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A51EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A5230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2200A52DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2200A5380()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2200A53B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyShySo15SKPresentDeviceCGs5NeverOGMd, &_sScCyShySo15SKPresentDeviceCGs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A544C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2200A5540()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2200A562C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2200A5728()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2200A5778()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2200A57C4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2200A58F0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2200A5938()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2200A59FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200A5A40()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2200AABA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2200AB2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2200AF5B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_2200B2550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t AuthCredentialReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 2)
      {
        [a1 clearOneofValuesForAuthCredentialOneof];
        *(a1 + 32) |= 1u;
        *(a1 + 8) = 2;
        v21 = objc_alloc_init(SharedOwnershipAuth);
        objc_storeStrong((a1 + 16), v21);
        v24[0] = 0;
        v24[1] = 0;
        if (!PBReaderPlaceMark() || !SharedOwnershipAuthReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        [a1 clearOneofValuesForAuthCredentialOneof];
        *(a1 + 32) |= 1u;
        *(a1 + 8) = 1;
        v19 = PBReaderReadString();
        v20 = *(a1 + 24);
        *(a1 + 24) = v19;
      }

      else if (v13)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = 0;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((SLOBYTE(v24[0]) & 0x80000000) == 0)
          {
            break;
          }

          if (v14++ > 8)
          {
            goto LABEL_36;
          }
        }

        [a2 hasError];
      }

LABEL_36:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityActivationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v15 = PBReaderReadString();
            v16 = 16;
            goto LABEL_64;
          }

          if (v13 == 8)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v41) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v41 & 0x7F) << v17;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_78;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_78:
            v38 = 48;
            goto LABEL_79;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v41) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v41 & 0x7F) << v24;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_70;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_70:
            *(a1 + 8) = v30;
            goto LABEL_80;
          }

          if (v13 == 6)
          {
            v15 = PBReaderReadData();
            v16 = 40;
LABEL_64:
            v37 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_80;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            LOBYTE(v41) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v41 & 0x7F) << v31;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_74;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v33;
          }

LABEL_74:
          v38 = 52;
LABEL_79:
          *(a1 + v38) = v23;
          goto LABEL_80;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadData();
          v16 = 56;
          goto LABEL_64;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(AuthCredential);
          objc_storeStrong((a1 + 24), v14);
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !AuthCredentialReadFrom(v14, a2))
          {
LABEL_82:

            return 0;
          }

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ChannelIdentity);
          objc_storeStrong((a1 + 32), v14);
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !ChannelIdentityReadFrom(v14, a2))
          {
            goto LABEL_82;
          }

LABEL_44:
          PBReaderRecallMark();

          goto LABEL_80;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_80:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityActivationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v65[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v65[0] & 0x7F) << v5;
        if ((v65[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v65[0]) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v65[0] & 0x7F) << v42;
              if ((v65[0] & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_113;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v44;
            }

LABEL_113:
            v61 = 16;
            goto LABEL_127;
          }

          if (v13 == 4)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 64) |= 4u;
            while (1)
            {
              LOBYTE(v65[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v65[0] & 0x7F) << v23;
              if ((v65[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_101;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_101:
            v61 = 24;
            goto LABEL_127;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 64) |= 0x20u;
            while (1)
            {
              LOBYTE(v65[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v65[0] & 0x7F) << v36;
              if ((v65[0] & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_109;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v38;
            }

LABEL_109:
            v62 = 48;
            goto LABEL_122;
          }

          if (v13 == 2)
          {
            v21 = PBReaderReadData();
            v22 = *(a1 + 56);
            *(a1 + 56) = v21;

            goto LABEL_128;
          }
        }

        goto LABEL_96;
      }

      if (v13 > 6)
      {
        break;
      }

      if (v13 != 5)
      {
        if (v13 == 6)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v65[0] & 0x7F) << v30;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v32;
          }

LABEL_105:
          v62 = 40;
          goto LABEL_122;
        }

LABEL_96:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_128;
      }

      v54 = objc_alloc_init(ChannelActivityParticipantPayload);
      [a1 addParticipantPayload:v54];
      v65[0] = 0;
      v65[1] = 0;
      if (!PBReaderPlaceMark() || !ChannelActivityParticipantPayloadReadFrom(v54, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_128:
      v63 = [a2 position];
      if (v63 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 7:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 64) |= 0x40u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v65[0] & 0x7F) << v48;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_117;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v50;
        }

LABEL_117:
        v62 = 52;
        goto LABEL_122;
      case 8:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 64) |= 1u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v65[0] & 0x7F) << v55;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_126;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v57;
        }

LABEL_126:
        v61 = 8;
LABEL_127:
        *(a1 + v61) = v29;
        goto LABEL_128;
      case 9:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 64) |= 0x10u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v65[0] & 0x7F) << v14;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_121;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_121:
        v62 = 44;
LABEL_122:
        *(a1 + v62) = v20;
        goto LABEL_128;
    }

    goto LABEL_96;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityDeactivationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(AuthCredential);
          objc_storeStrong((a1 + 24), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !AuthCredentialReadFrom(v16, a2))
          {
LABEL_49:

            return 0;
          }

          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(ChannelIdentity);
          objc_storeStrong((a1 + 32), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !ChannelIdentityReadFrom(v16, a2))
          {
            goto LABEL_49;
          }

LABEL_40:
          PBReaderRecallMark();

          goto LABEL_47;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = 40;
            goto LABEL_28;
          case 4:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v27 & 0x7F) << v18;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_46;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_46:
            *(a1 + 8) = v24;
            goto LABEL_47;
          case 5:
            v14 = PBReaderReadString();
            v15 = 16;
LABEL_28:
            v17 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityDeactivationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 40) |= 8u;
          while (1)
          {
            v47 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v47 & 0x7F) << v36;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_74;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v38;
          }

LABEL_74:
          v44 = 28;
LABEL_79:
          *(a1 + v44) = v20;
          goto LABEL_80;
        }

        if (v13 != 2)
        {
LABEL_60:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_80;
        }

        v21 = PBReaderReadData();
        v22 = *(a1 + 32);
        *(a1 + 32) = v21;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v49 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v49 & 0x7F) << v23;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_65;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_65:
            v43 = 8;
            break;
          case 4:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              v48 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v48 & 0x7F) << v30;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_69;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v32;
            }

LABEL_69:
            v43 = 16;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              v50 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v50 & 0x7F) << v14;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_78;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_78:
            v44 = 24;
            goto LABEL_79;
          default:
            goto LABEL_60;
        }

        *(a1 + v43) = v29;
      }

LABEL_80:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityParticipantPayloadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityPollingRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(AuthCredential);
          objc_storeStrong((a1 + 16), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !AuthCredentialReadFrom(v16, a2))
          {
LABEL_49:

            return 0;
          }

          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(ChannelIdentity);
          objc_storeStrong((a1 + 24), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !ChannelIdentityReadFrom(v16, a2))
          {
            goto LABEL_49;
          }

LABEL_40:
          PBReaderRecallMark();

          goto LABEL_47;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v27 & 0x7F) << v17;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_46;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_46:
            *(a1 + 32) = v23;
            goto LABEL_47;
          case 4:
            v14 = PBReaderReadData();
            v15 = 40;
            goto LABEL_37;
          case 5:
            v14 = PBReaderReadString();
            v15 = 8;
LABEL_37:
            v24 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityPollingResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59[0] & 0x7F) << v5;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v59[0] & 0x7F) << v43;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v45;
            }

LABEL_95:
            v56 = 8;
            goto LABEL_108;
          }

          if (v13 == 4)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v59[0] & 0x7F) << v23;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_107;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_107:
            v56 = 16;
LABEL_108:
            *(a1 + v56) = v29;
            goto LABEL_114;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 56) |= 0x10u;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v59[0] & 0x7F) << v36;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v38;
            }

LABEL_91:
            v55 = 40;
LABEL_113:
            *(a1 + v55) = v22;
            goto LABEL_114;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadData();
            v15 = *(a1 + 48);
            *(a1 + 48) = v14;

            goto LABEL_114;
          }
        }

        goto LABEL_86;
      }

      if (v13 > 6)
      {
        break;
      }

      if (v13 != 5)
      {
        if (v13 == 6)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            LOBYTE(v59[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v59[0] & 0x7F) << v16;
            if ((v59[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_103;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_103:
          v55 = 32;
          goto LABEL_113;
        }

        goto LABEL_86;
      }

      v42 = objc_alloc_init(ChannelActivityParticipantPayload);
      [a1 addParticipantPayload:v42];
      v59[0] = 0;
      v59[1] = 0;
      if (!PBReaderPlaceMark() || !ChannelActivityParticipantPayloadReadFrom(v42, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_114:
      v57 = [a2 position];
      if (v57 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 7)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      *(a1 + 56) |= 0x20u;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v59[0] & 0x7F) << v49;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v11 = v50++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_99;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v51;
      }

LABEL_99:
      v55 = 44;
      goto LABEL_113;
    }

    if (v13 == 8)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 56) |= 8u;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v59[0] & 0x7F) << v30;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_112;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v32;
      }

LABEL_112:
      v55 = 36;
      goto LABEL_113;
    }

LABEL_86:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_114;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityUpdateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 24);
        *(a1 + 24) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_44:
          v30 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_50;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v30 = 8;
        }

        *(a1 + v30) = v20;
      }

LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelActivityUpdatePayloadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = PBReaderReadData();
        v23 = *(a1 + 8);
        *(a1 + 8) = v22;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(ChannelActivityParticipantPayload);
        [a1 addParticipantPayload:v21];
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !ChannelActivityParticipantPayloadReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_38:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelDeferredPublishInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(ChannelIdentity);
          objc_storeStrong((a1 + 16), v16);
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !ChannelIdentityReadFrom(v16, a2))
          {
LABEL_61:

            return 0;
          }

          goto LABEL_47;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(SharedChannelProvisionOffGridPacketInfo);
          [a1 addChannelProvisionOffGridPacketInfo:v16];
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !SharedChannelProvisionOffGridPacketInfoReadFrom(v16, a2))
          {
            goto LABEL_61;
          }

LABEL_47:
          PBReaderRecallMark();

          goto LABEL_59;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v33 & 0x7F) << v17;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_53;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_53:
            v30 = 32;
            goto LABEL_58;
          case 4:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v33 & 0x7F) << v24;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_57;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v26;
            }

LABEL_57:
            v30 = 36;
LABEL_58:
            *(a1 + v30) = v23;
            goto LABEL_59;
          case 5:
            v14 = PBReaderReadString();
            v15 = *(a1 + 8);
            *(a1 + 8) = v14;

            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelIdentityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadData();
        v15 = 24;
LABEL_36:
        v24 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_41;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v27 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v27 & 0x7F) << v16;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_40;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_40:
      *(a1 + 16) = v22;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 32;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = PBReaderReadData();
      v15 = 8;
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ChannelPublishPayloadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v62[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62[0] & 0x7F) << v5;
        if ((v62[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 40;
          goto LABEL_61;
        }

        if (v13 == 4)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            LOBYTE(v62[0]) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v62[0] & 0x7F) << v17;
            if ((v62[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_94:
          v57 = 16;
          goto LABEL_101;
        }

        goto LABEL_89;
      }

      if (v13 == 1)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 60) |= 1u;
        while (1)
        {
          LOBYTE(v62[0]) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v62[0] & 0x7F) << v31;
          if ((v62[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_100;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v33;
        }

LABEL_100:
        v57 = 8;
LABEL_101:
        *(a1 + v57) = v23;
        goto LABEL_114;
      }

      if (v13 != 2)
      {
        goto LABEL_89;
      }

      v16 = objc_alloc_init(ChannelIdentity);
      objc_storeStrong((a1 + 32), v16);
      v62[0] = 0;
      v62[1] = 0;
      if (!PBReaderPlaceMark() || !ChannelIdentityReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_114:
      v60 = [a2 position];
      if (v60 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 60) |= 4u;
        while (1)
        {
          LOBYTE(v62[0]) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v62[0] & 0x7F) << v44;
          if ((v62[0] & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v50 = 0;
            goto LABEL_108;
          }
        }

        if ([a2 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v46;
        }

LABEL_108:
        v59 = 48;
        goto LABEL_113;
      }

      if (v13 == 6)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 60) |= 0x10u;
        while (1)
        {
          LOBYTE(v62[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v62[0] & 0x7F) << v24;
          if ((v62[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            LOBYTE(v30) = 0;
            goto LABEL_96;
          }
        }

        v30 = (v26 != 0) & ~[a2 hasError];
LABEL_96:
        v58 = 56;
        goto LABEL_104;
      }
    }

    else
    {
      switch(v13)
      {
        case 7:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 60) |= 0x20u;
          while (1)
          {
            LOBYTE(v62[0]) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v62[0] & 0x7F) << v38;
            if ((v62[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_103;
            }
          }

          v30 = (v40 != 0) & ~[a2 hasError];
LABEL_103:
          v58 = 57;
LABEL_104:
          *(a1 + v58) = v30;
          goto LABEL_114;
        case 8:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            LOBYTE(v62[0]) = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v62[0] & 0x7F) << v51;
            if ((v62[0] & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v50 = 0;
              goto LABEL_112;
            }
          }

          if ([a2 hasError])
          {
            v50 = 0;
          }

          else
          {
            v50 = v53;
          }

LABEL_112:
          v59 = 52;
LABEL_113:
          *(a1 + v59) = v50;
          goto LABEL_114;
        case 9:
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_61:
          v37 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_114;
      }
    }

LABEL_89:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_114;
  }

  return [a2 hasError] ^ 1;
}