uint64_t closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary()()
{
  v1 = v0[24];
  v2 = [objc_allocWithZone(IDSOffGridModeOptions) init];
  v0[32] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary();
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo14IDSOffGridModeV_So0abC13PublishStatusVts5Error_pGMd, &_sSccySo14IDSOffGridModeV_So0abC13PublishStatusVts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridMode, @unowned IDSOffGridModePublishStatus, @unowned NSError?) -> () with result type (IDSOffGridMode, IDSOffGridModePublishStatus);
  v0[13] = &block_descriptor_65;
  v0[14] = v3;
  [v1 setOffGridMode:1 options:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary();
  }

  else
  {
    v5 = closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary();
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];

  v5 = Logger.liteSession.unsafeMutableAddressor();
  (*(v4 + 16))(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[28];
  v10 = v0[25];
  v11 = v0[26];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v6, v7, "Republished status as on grid", v12, 2u);
  }

  (*(v11 + 8))(v9, v10);

  v13 = v0[1];

  return v13();
}

{
  v24 = v0;
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];

  swift_willThrow();

  v5 = Logger.liteSession.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[26];
    v22 = v0[27];
    v9 = v0[25];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = v13;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);
    v14, v16;
    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v6, v7, "Failed to republish status as on grid error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);

    (*(v8 + 8))(v22, v9);
  }

  else
  {
    v18 = v0[26];
    v17 = v0[27];
    v19 = v0[25];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[1];

  return v20();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridMode, @unowned IDSOffGridModePublishStatus, @unowned NSError?) -> () with result type (IDSOffGridMode, IDSOffGridModePublishStatus)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return _swift_continuation_throwingResume(v7);
  }
}

void LiteMessageServiceSession.networkMonitorDidUpdate(_:)(void *a1)
{
  v2.super_class = LiteMessageServiceSession;
  objc_msgSendSuper2(&v2, "networkMonitorDidUpdate:", a1);
  if ([a1 immediatelyReachable])
  {
    LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()();
  }
}

uint64_t LiteMessageServiceSession.deleteAllData()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(LiteMessageServiceSession.deleteAllData(), v4, v3);
}

{
  LiteMessageSegmentStore.deleteStore()();
  v0[15] = v1;
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[9];
    v4 = LiteMessageServiceSession.deleteAllData();
  }

  else
  {

    v2 = v0[8];
    v3 = v0[9];
    v4 = LiteMessageServiceSession.deleteAllData();
  }

  return _swift_task_switch(v4, v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);

  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "deleteAllData for lite service session failed with %@", v7, 0xCu);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  (*(v0 + 104))(*(v0 + 40), *(v0 + 24));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t LiteMessageServiceSession.deleteAllData()(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[3];
  v4 = v1[4];
  v5 = Logger.liteSession.unsafeMutableAddressor();
  v1[10] = v5;
  v6 = *(v4 + 16);
  v1[11] = v6;
  v1[12] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "deleteAllData for lite service session", v9, 2u);
  }

  v10 = v1[6];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[2];

  v14 = *(v12 + 8);
  v1[13] = v14;
  v14(v10, v11);
  v15 = *(v13 + OBJC_IVAR___LiteMessageServiceSession_state + 16);
  v1[14] = v15;

  return _swift_task_switch(LiteMessageServiceSession.deleteAllData(), v15, 0);
}

uint64_t @objc closure #1 in LiteMessageServiceSession.deleteAllData()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(@objc closure #1 in LiteMessageServiceSession.deleteAllData(), v4, v3);
}

uint64_t @objc closure #1 in LiteMessageServiceSession.deleteAllData()()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in LiteMessageServiceSession.deleteAllData();

  return LiteMessageServiceSession.deleteAllData()();
}

{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    outlined init with take of Any(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void closure #1 in LiteMessageServiceSession.handler(_:outgoingPlainTextMessage:toIdentifier:fromIdentifier:fromToken:messageGUID:timeStamp:isBeingReplayed:storageContext:)(void *a1, void *a2, void *a3, void *a4)
{
  v35 = a2;
  v7 = type metadata accessor for Date();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Logger.liteSession.unsafeMutableAddressor();
  (*(v11 + 16))(v13, v14, v10);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = v9;
    v21 = a4;
    v22 = v20;
    *v19 = 138412290;
    *(v19 + 4) = v15;
    *v20 = a1;
    v23 = v15;
    _os_log_impl(&dword_0, v16, v17, "[Push Handler] => Done marking message as sending: %@", v19, 0xCu);
    outlined destroy of TaskPriority?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    a4 = v21;
    v9 = v31;

    a3 = v32;
  }

  (*(v11 + 8))(v13, v10);
  v24 = [a4 chatIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = [a4 style];
    v27 = [a3 time];
    if (v27)
    {
      v28 = v27;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v29.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v33 + 8))(v9, v34);
    }

    else
    {
      v29.super.isa = 0;
    }

    [v35 didSendMessage:a3 forChat:v25 style:v26 forceDate:v29.super.isa];
  }

  else
  {
    __break(1u);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMMessageItem?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id LiteMessageServiceSession.offGridMessenger(for:)(uint64_t a1)
{
  v2 = IDSOffGridMessageContext.topic.getter();
  v3 = 8;
  if ((v2 & 1) == 0)
  {
    v3 = 0;
  }

  v4 = *(v1 + OBJC_IVAR___LiteMessageServiceSession_state + v3);

  return v4;
}

id LiteMessageServiceSession.offGridMessenger(for:)(char a1)
{
  v2 = 8;
  if ((a1 & 1) == 0)
  {
    v2 = 0;
  }

  return *(v1 + OBJC_IVAR___LiteMessageServiceSession_state + v2);
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance IDSOffGridModePublishStatus@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, LiteMessageServiceSession *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v25[0] = 0;
      v25[1] = 0;
      v19 = v25;
      v25[2] = v14;
      v25[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v24[1] = 7;
    v24[2] = v19;
    v24[3] = v17;
    v21 = swift_task_create();

    outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
    a2, v22;

    return v21;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v14;
    v25[7] = v16;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

uint64_t sub_192B8()
{
  *(v0 + 32), v1;
  *(v0 + 48), v2;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:)(v2, v3, v4, v5, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void specialized LiteMessageServiceSession.joinChat(_:handleInfo:style:groupID:lastAddressedHandle:lastAddressedSIMID:joinProperties:)(uint64_t a1, LiteMessageServiceSession *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v39 = a7;
  v40 = a6;
  v38 = a5;
  v41 = a1;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = Logger.liteSession.unsafeMutableAddressor();
  (*(v17 + 16))(v19, v20, v16);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  a2, v23;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    v37 = a3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v36 = a8;
    v27 = a4;
    v28 = v11;
    v29 = v26;
    v42 = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, a2, &v42);
    _os_log_impl(&dword_0, v21, v22, "Joining chat %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v11 = v28;
    a4 = v27;
    a8 = v36;
  }

  (*(v17 + 8))(v19, v16);
  v30 = String._bridgeToObjectiveC()();
  if (v40)
  {
    v31 = String._bridgeToObjectiveC()();
    v32 = a10;
    if (a8)
    {
      goto LABEL_5;
    }

LABEL_9:
    v33 = 0;
    if (!v32)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v31 = 0;
  v32 = a10;
  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v33 = String._bridgeToObjectiveC()();
  if (v32)
  {
LABEL_6:
    v32 = String._bridgeToObjectiveC()();
  }

LABEL_7:
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v11 didJoinChat:v30 style:a4 displayName:0 groupID:v31 lastAddressedHandle:v33 lastAddressedSIMID:v32 handleInfo:isa];
}

uint64_t sub_1984C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary()(v3, v4, v5, v2);
}

void specialized LiteMessageServiceSession.relayLegacySatelliteMessage(_:toChat:localWatchOnly:)(NSObject *a1, uint64_t a2, NSObject *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v11 = &v50 - v10;
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = LiteMessageServiceSession.satelliteContinuitySendOptions(for:chatIdentifier:)(a1, a2, a3);
  v15 = &selRef_sharedFeatureFlags;
  v16 = [objc_opt_self() sharedInstance];
  if (!v16)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);
  v19 = v18;
  v14, v20;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v19, v22;
  v23 = [objc_opt_self() myCTPhoneNumber];
  v24 = [v17 sendDataToPeers:isa forcedCallerID:v23 shouldFilterRecepients:1 requestProxySend:0 dontSendTo:0];

  v25 = Logger.liteSession.unsafeMutableAddressor();
  v26 = *(v7 + 16);
  if (v24)
  {
    v26(v13, v25, v6);
    v27 = a1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v28, v29))
    {

      (*(v7 + 8))(v13, v6);
      goto LABEL_10;
    }

    v51 = v6;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52[0] = v31;
    *v30 = 136315138;
    v32 = [v27 guid];

    if (v32)
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v52);
      v35, v37;
      *(v30 + 4) = v36;
      _os_log_impl(&dword_0, v28, v29, "Message synced locally, guid: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);

      (*(v7 + 8))(v13, v51);
      v15 = &selRef_sharedFeatureFlags;
LABEL_10:
      [v27 setNeedsRelay:0];
      v49 = [objc_opt_self() v15[117]];

      return;
    }

    goto LABEL_15;
  }

  v26(v11, v25, v6);
  v38 = a1;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v52[0] = v42;
    *v41 = 136315138;
    v43 = [v38 guid];

    if (!v43)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v52);
    v46, v48;
    *(v41 + 4) = v47;
    _os_log_impl(&dword_0, v39, v40, "Message failed to sync: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
  }

  (*(v7 + 8))(v11, v6);
}

void specialized LiteMessageServiceSession.handler(_:outgoingPlainTextMessage:toIdentifier:fromIdentifier:fromToken:messageGUID:timeStamp:isBeingReplayed:storageContext:)(uint64_t a1, void *a2, LiteMessageServiceSession *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v213 = a6;
  v216 = a5;
  v215 = a4;
  v219 = a3;
  v217 = a2;
  v8 = type metadata accessor for Logger();
  v221 = *(v8 - 8);
  v222 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v208 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v208 - v16;
  v18 = __chkstk_darwin(v15);
  v214 = &v208 - v19;
  v20 = __chkstk_darwin(v18);
  v211 = &v208 - v21;
  v22 = __chkstk_darwin(v20);
  v212 = &v208 - v23;
  v24 = __chkstk_darwin(v22);
  v210 = &v208 - v25;
  __chkstk_darwin(v24);
  v27 = &v208 - v26;
  v28 = type metadata accessor for Date();
  v218 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v208 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = __chkstk_darwin(v31 - 8);
  v34 = &v208 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v208 - v35;
  v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v225 = v37;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v220 = v6, v38 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), v6 = v220, (v39 & 1) == 0))
  {
    outlined destroy of AnyHashable(aBlock);
LABEL_13:
    v53 = Logger.liteSession.unsafeMutableAddressor();
    v54 = v221;
    v55 = v222;
    (*(v221 + 16))(v11, v53, v222);
    v56 = v6;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v59 = 136315138;
      v61 = [v56 service];
      v62 = [v61 internalName];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, aBlock);
      v65, v67;
      *(v59 + 4) = v66;
      _os_log_impl(&dword_0, v57, v58, "[Push Handler] %s can only reflect messages via madrid relay, not relay them.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
    }

    (*(v54 + 8))(v11, v55);
    return;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v38, v226);
  outlined destroy of AnyHashable(aBlock);
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v209 = v36;
  v40 = v224;
  v41 = [v224 BOOLValue];

  v6 = v220;
  if ((v41 & 1) == 0)
  {
    goto LABEL_13;
  }

  v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v225 = v42;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v43 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v44 & 1) == 0))
  {
    outlined destroy of AnyHashable(aBlock);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v43, v226);
  outlined destroy of AnyHashable(aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v68 = Logger.liteSession.unsafeMutableAddressor();
    v69 = v221;
    v70 = v222;
    (*(v221 + 16))(v14, v68, v222);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "[Push Handler] Missing item dictionary.", v73, 2u);
    }

    (*(v69 + 8))(v14, v70);
    return;
  }

  v45 = v224;
  v46 = v225;
  if (v219)
  {
    v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v225 = v47;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v49 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v48, v226);
      outlined destroy of AnyHashable(aBlock);
      v50 = v209;
      v51 = swift_dynamicCast();
      v52 = v218;
      (*(v218 + 56))(v50, v51 ^ 1u, 1, v28);
    }

    else
    {
      outlined destroy of AnyHashable(aBlock);
      v52 = v218;
      v50 = v209;
      (*(v218 + 56))(v209, 1, 1, v28);
    }

    outlined init with copy of TaskPriority?(v50, v34, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v74 = *(v52 + 48);
    if (v74(v34, 1, v28) == 1)
    {
      Date.init()();
      if (v74(v34, 1, v28) != 1)
      {
        outlined destroy of TaskPriority?(v34, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v52 + 32))(v30, v34, v28);
    }

    outlined copy of Data._Representation(v45, v46);
    v82 = String._bridgeToObjectiveC()();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v84 = String._bridgeToObjectiveC()();
    v85.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v216 = v45;
    v86 = v85.super.isa;
    v87 = objc_opt_self();
    aBlock[0] = 0;
    v88 = [v87 messageItemWithLiteIdentifier:v82 liteData:isa senderID:v84 date:v86 error:aBlock];

    v89 = aBlock[0];
    if (v88)
    {
      v90 = *(v218 + 8);
      v91 = aBlock[0];
      v90(v30, v28);
      v92 = v216;
      v93 = v46;
      outlined consume of Data._Representation(v216, v46);
      [v88 setFlags:5];
      v94 = v88;
      v95 = [v94 guid];
      v96 = v209;
      if (v95)
      {
        v97 = v95;
        [v220 _markFromStorageIfNeeded:v213 messageGUID:v95];

        v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v225 = v98;
        AnyHashable.init<A>(_:)();
        v99 = v214;
        if (*(a1 + 16) && (v100 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), v101 = v220, (v102 & 1) != 0))
        {
          outlined init with copy of Any(*(a1 + 56) + 32 * v100, v226);
          outlined destroy of AnyHashable(aBlock);
          if (swift_dynamicCast())
          {
            v103 = v224;
            v104 = v225;
            v105 = LiteMessageServiceSession.joinedChat(with:)(v224, v225);
            v106 = v221;
            if (!v105)
            {

              v137 = Logger.liteSession.unsafeMutableAddressor();
              v138 = v211;
              v139 = v222;
              (*(v106 + 16))(v211, v137, v222);

              v140 = Logger.logObject.getter();
              v141 = static os_log_type_t.error.getter();
              v104, v142;
              if (os_log_type_enabled(v140, v141))
              {
                v143 = swift_slowAlloc();
                v220 = v94;
                v144 = v143;
                v145 = swift_slowAlloc();
                aBlock[0] = v145;
                *v144 = 136315138;
                v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, aBlock);
                v104, v147;
                *(v144 + 4) = v146;
                _os_log_impl(&dword_0, v140, v141, "[Push Handler] Could not find or create a chat with handle %s", v144, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v145);

                outlined consume of Data._Representation(v216, v93);
              }

              else
              {
                outlined consume of Data._Representation(v216, v93);

                v104, v148;
              }

              (*(v106 + 8))(v138, v139);
              goto LABEL_75;
            }

            v107 = v105;
            v108 = v94;
            v218 = v93;
            v89 = [v105 account];
            v109 = [v101 account];
            v110 = v109;
            v111 = v222;
            if (v89)
            {
              if (v109)
              {
                type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDAccount, IMDAccount_ptr);
                v112 = static NSObject.== infix(_:_:)();

                if (v112)
                {
                  goto LABEL_61;
                }

                goto LABEL_58;
              }

              v110 = v89;
            }

            else if (!v109)
            {
              goto LABEL_61;
            }

LABEL_58:
            v149 = [v220 account];
            v150 = [v149 accountID];

            if (!v150)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v152 = v151;
              v150 = String._bridgeToObjectiveC()();
              v152, v153;
            }

            [v107 setAccountID:v150];

            v89 = [objc_opt_self() sharedInstance];
            [v89 storeChat:v107];

LABEL_61:
            v154 = [objc_opt_self() sharedInstance];
            v155 = [v94 guid];
            if (v155)
            {
              v156 = v155;
              v157 = [v154 messageWithGUID:v155];

              v158 = v220;
              v159 = v212;
              if (v157)
              {
                if (![v157 errorCode])
                {
                  v104, v160;

                  v196 = Logger.liteSession.unsafeMutableAddressor();
                  (*(v106 + 16))(v210, v196, v111);
                  v197 = v108;
                  v198 = Logger.logObject.getter();
                  v199 = static os_log_type_t.default.getter();
                  if (!os_log_type_enabled(v198, v199))
                  {
                    outlined consume of Data._Representation(v216, v218);

                    (*(v106 + 8))(v210, v111);
                    goto LABEL_75;
                  }

                  v200 = swift_slowAlloc();
                  v201 = swift_slowAlloc();
                  aBlock[0] = v201;
                  *v200 = 136315138;
                  v202 = [v197 guid];

                  if (v202)
                  {
                    v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v205 = v204;

                    v206 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v205, aBlock);
                    v205, v207;
                    *(v200 + 4) = v206;
                    _os_log_impl(&dword_0, v198, v199, "[Push Handler] Already have message with guid %s.", v200, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v201);

                    outlined consume of Data._Representation(v216, v218);
                    (*(v221 + 8))(v210, v222);
                    goto LABEL_75;
                  }

                  goto LABEL_86;
                }
              }

              v161 = [v158 loginID];
              [v108 setSender:v161];

              if (IMSharedHelperDeviceHasMultipleSubscriptions())
              {
                v162 = [v107 lastAddressedLocalHandle];
              }

              else
              {
                v163 = String._bridgeToObjectiveC()();
                v162 = [v163 _stripFZIDPrefix];
              }

              [v108 setDestinationCallerID:v162];

              v164 = Logger.liteSession.unsafeMutableAddressor();
              (*(v106 + 16))(v159, v164, v111);
              v165 = v107;
              v166 = v108;
              v89 = v165;
              v167 = Logger.logObject.getter();
              v168 = static os_log_type_t.info.getter();
              v169 = &selRef_sharedFeatureFlags;
              if (os_log_type_enabled(v167, v168))
              {
                v219 = v104;
                v170 = swift_slowAlloc();
                v171 = swift_slowAlloc();
                v217 = swift_slowAlloc();
                aBlock[0] = v217;
                *v170 = 136315650;
                v172 = [v166 guid];

                if (!v172)
                {
LABEL_84:

                  __break(1u);
                  goto LABEL_85;
                }

                v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v175 = v174;

                v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v173, v175, aBlock);
                v175, v177;
                *(v170 + 4) = v176;
                *(v170 + 12) = 2080;
                v178 = [v89 chatIdentifier];

                if (!v178)
                {
LABEL_85:
                  __break(1u);
LABEL_86:
                  __break(1u);
                  return;
                }

                v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v181 = v180;

                v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v181, aBlock);
                v181, v183;
                *(v170 + 14) = v182;
                *(v170 + 22) = 2112;
                *(v170 + 24) = v89;
                *v171 = v107;
                v184 = v89;
                _os_log_impl(&dword_0, v167, v168, "[Push Handler] send message with guid: %s to identifier %s chat: %@", v170, 0x20u);
                outlined destroy of TaskPriority?(v171, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

                swift_arrayDestroy();

                (*(v221 + 8))(v212, v222);
                v104 = v219;
                v169 = &selRef_sharedFeatureFlags;
              }

              else
              {

                (*(v106 + 8))(v159, v111);
              }

              v185 = [v89 v169[78]];
              v187 = v218;
              if (v185)
              {
                v188 = v185;
                v104, v186;
                v189 = [v89 style];
                v190 = swift_allocObject();
                v191 = v220;
                v190[2] = v220;
                v190[3] = v166;
                v190[4] = v89;
                aBlock[4] = partial apply for closure #1 in LiteMessageServiceSession.handler(_:outgoingPlainTextMessage:toIdentifier:fromIdentifier:fromToken:messageGUID:timeStamp:isBeingReplayed:storageContext:);
                aBlock[5] = v190;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMMessageItem?) -> ();
                aBlock[3] = &block_descriptor_1;
                v192 = _Block_copy(aBlock);
                v193 = v166;
                v194 = v89;
                v195 = v191;

                [v195 processMessageForSending:v193 toChat:v188 style:v189 allowWatchdog:0 completionBlock:v192];
                outlined consume of Data._Representation(v216, v187);
                _Block_release(v192);

LABEL_75:
                outlined destroy of TaskPriority?(v209, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                return;
              }

LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

LABEL_82:
            __break(1u);
            goto LABEL_83;
          }
        }

        else
        {

          outlined destroy of AnyHashable(aBlock);
        }

        v113 = v221;
        v114 = Logger.liteSession.unsafeMutableAddressor();
        v115 = v222;
        (*(v113 + 16))(v99, v114, v222);
        v89 = v94;
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v116, v117))
        {
          outlined consume of Data._Representation(v92, v93);

          (*(v113 + 8))(v99, v115);
          goto LABEL_46;
        }

        v118 = v92;
        v218 = v93;
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        aBlock[0] = v120;
        *v119 = 136315138;
        v121 = [v89 guid];

        if (v121)
        {
          v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v123;

          v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, aBlock);
          v124, v126;
          *(v119 + 4) = v125;
          _os_log_impl(&dword_0, v116, v117, "[Push Handler] Missing handle for continuity message %s.", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v120);

          outlined consume of Data._Representation(v118, v218);
          (*(v113 + 8))(v214, v222);
          v96 = v209;
LABEL_46:
          outlined destroy of TaskPriority?(v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_82;
    }

    v127 = aBlock[0];
    v128 = v216;
    outlined consume of Data._Representation(v216, v46);
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v128, v46);
    (*(v218 + 8))(v30, v28);
    outlined destroy of TaskPriority?(v209, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v129 = Logger.liteSession.unsafeMutableAddressor();
    v130 = v221;
    v131 = v222;
    (*(v221 + 16))(v27, v129, v222);
    swift_errorRetain();
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      *v134 = 138412290;
      swift_errorRetain();
      v136 = _swift_stdlib_bridgeErrorToNSError();
      *(v134 + 4) = v136;
      *v135 = v136;
      _os_log_impl(&dword_0, v132, v133, "Failed to handle iMessage Lite continuity message: %@", v134, 0xCu);
      outlined destroy of TaskPriority?(v135, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }

    (*(v130 + 8))(v27, v131);
  }

  else
  {
    v75 = v224;
    v76 = Logger.liteSession.unsafeMutableAddressor();
    v77 = v221;
    v78 = v222;
    (*(v221 + 16))(v17, v76, v222);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_0, v79, v80, "[Push Handler] Missing from identifier.", v81, 2u);

      outlined consume of Data._Representation(v75, v46);
    }

    else
    {
      outlined consume of Data._Representation(v75, v46);
    }

    (*(v77 + 8))(v17, v78);
  }
}

unint64_t lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage()
{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageServiceSession.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageServiceSession.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageServiceSession.PendingSMSMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageServiceSession.PendingSMSMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1B8E4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in LiteMessageServiceSession.deleteAllData()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return @objc closure #1 in LiteMessageServiceSession.deleteAllData()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t objectdestroy_30Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t sub_1BBA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1BDA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void outlined consume of LiteMessageSendError?(uint64_t a1, LiteMessageServiceSession *a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    outlined consume of LiteMessageSendError(a1, a2, a3, BYTE1(a3));
  }
}

void outlined consume of LiteMessageSendError(uint64_t a1, LiteMessageServiceSession *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    a2, a2;
  }
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  *(v1 + 40), v3;

  return _swift_deallocObject(v1, a1, 7);
}

void type metadata accessor for IDSCommandID(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t one-time initialization function for liteSession()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.liteSession);
  __swift_project_value_buffer(v0, static Logger.liteSession);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for liteRelaySession()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.liteRelaySession);
  __swift_project_value_buffer(v0, static Logger.liteRelaySession);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for liteContinuity()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.liteContinuity);
  __swift_project_value_buffer(v0, static Logger.liteContinuity);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for donations()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.donations);
  __swift_project_value_buffer(v0, static Logger.donations);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for availability()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.availability);
  __swift_project_value_buffer(v0, static Logger.availability);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for liteSegmentStore()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.liteSegmentStore);
  __swift_project_value_buffer(v0, static Logger.liteSegmentStore);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for bitPacker()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.bitPacker);
  __swift_project_value_buffer(v0, static Logger.bitPacker);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.liteSession.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Logger.liteSession.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 232) = a5;
  *(v6 + 240) = v5;
  *(v6 + 472) = a4;
  *(v6 + 216) = a2;
  *(v6 + 224) = a3;
  *(v6 + 208) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v6 + 248) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v6 + 256) = v7;
  *(v6 + 264) = *(v7 - 8);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 312) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 320) = v9;
  *(v6 + 328) = v8;

  return _swift_task_switch(LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:), v9, v8);
}

uint64_t LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:)()
{
  v159 = v0;
  v1 = *(v0 + 208);
  if (*(v0 + 232) != 140)
  {
    v2 = v1;
    *(v0 + 336) = v1;
    if (v1)
    {
      goto LABEL_12;
    }

LABEL_21:
    v35 = *(v0 + 264);
    v34 = *(v0 + 272);
    v36 = *(v0 + 256);

    v37 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v35 + 16))(v34, v37, v36);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "Impossible! Failed to copy item to send", v40, 2u);
    }

    v42 = *(v0 + 264);
    v41 = *(v0 + 272);
    v43 = *(v0 + 256);

    (*(v42 + 8))(v41, v43);
    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v44 = xmmword_53800;
    *(v44 + 16) = 768;
    swift_willThrow();
    goto LABEL_32;
  }

  if ([v1 copyWithFlags:{objc_msgSend(*(v0 + 208), "flags")}])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v157 = 0u;
    v158 = 0u;
  }

  v3 = v158;
  *(v0 + 144) = v157;
  *(v0 + 160) = v3;
  if (!*(v0 + 168))
  {
    outlined destroy of TaskPriority?(v0 + 144, &_sypSgMd, &_sypSgMR);
    *(v0 + 336) = 0;
    goto LABEL_21;
  }

  type metadata accessor for IMMessageItem();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 200);
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 336) = v1;
  if (!v1)
  {
    goto LABEL_21;
  }

LABEL_12:
  v4 = *(v0 + 232);
  v5 = v1;
  v6 = LiteMessageServiceSession.accountForSending(on:command:)(1, v4);
  *(v0 + 344) = v6;
  if (v6)
  {
    v7 = v6;
    v8 = LiteMessageServiceSession.chatForChatIdentifier(_:style:account:)(*(v0 + 216), *(v0 + 224), *(v0 + 472), v6);
    *(v0 + 352) = v8;
    if (v8)
    {
      v9 = v8;
      if ([v8 style] == 45)
      {
        IMMessageItem.canSendAsLiteMessage.getter();
        if (v10)
        {
          v11 = IMDChat.participantURI.getter();
          *(v0 + 360) = v11;
          if (v11)
          {
            v12 = v11;
            v13 = LiteMessageServiceSession.senderURI(for:)();
            *(v0 + 368) = v13;
            if (v13)
            {
              v14 = v13;
              v15 = *(v0 + 304);
              v16 = *(v0 + 264);
              v17 = Logger.liteRelaySession.unsafeMutableAddressor();
              *(v0 + 376) = v17;
              v18 = *(v16 + 16);
              *(v0 + 384) = v18;
              *(v0 + 392) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
              v150 = v17;
              v148 = v18;
              (v18)(v15);
              v19 = v12;
              v20 = Logger.logObject.getter();
              v21 = static os_log_type_t.info.getter();

              v146 = v21;
              v22 = os_log_type_enabled(v20, v21);
              v23 = *(v0 + 304);
              v24 = *(v0 + 264);
              v152 = *(v0 + 256);
              v154 = v19;
              v142 = v12;
              if (v22)
              {
                v140 = *(v0 + 304);
                v25 = swift_slowAlloc();
                v138 = swift_slowAlloc();
                *&v157 = v138;
                *v25 = 136315138;
                log = v20;
                v26 = v14;
                v27 = [v19 unprefixedURI];
                v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v30 = v29;

                v14 = v26;
                v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v157);
                v30, v32;
                *(v25 + 4) = v31;
                _os_log_impl(&dword_0, log, v146, "recipient: %s", v25, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v138);

                v33 = *(v24 + 8);
                v33(v140, v152);
              }

              else
              {

                v33 = *(v24 + 8);
                v33(v23, v152);
              }

              v153 = v33;
              *(v0 + 400) = v33;
              v54 = [v9 chatIdentifier];
              if (!v54)
              {
                __break(1u);
                goto LABEL_59;
              }

              v55 = v54;
              v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v58 = v57;

              v59 = IMMessageItem.smsLiteRelayData(chatIdentifier:)(v56, v58);
              *(v0 + 408) = v59;
              *(v0 + 416) = v60;
              v61 = v60;
              v141 = v59;
              v147 = v14;
              v58, v60;
              v62 = [v154 unprefixedURI];
              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;

              v66 = [v9 chatIdentifier];
              if (v66)
              {
                v68 = v66;
                v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v71 = v70;

                if (v63 == v69 && v65 == v71)
                {
                  v71, v72;
                  v65, v73;
                  goto LABEL_50;
                }

                v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v71, v75;
                v65, v76;
                if (v74)
                {
LABEL_50:
                  v94.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  *&v157 = 0;
                  *(&v157 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(18);
                  *(&v157 + 1), v95;
                  *&v157 = 0x6C65722D6574696CLL;
                  *(&v157 + 1) = 0xEB000000002D7961;
                  v54 = [v5 guid];
                  if (v54)
                  {
                    v96 = v54;
                    v97 = *(v0 + 288);
                    v98 = *(v0 + 256);
                    v144 = *(v0 + 208);
                    v99 = objc_opt_self();
                    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v102 = v101;

                    v103._countAndFlagsBits = v100;
                    v103._object = v102;
                    String.append(_:)(v103);
                    v102, v104;
                    v105._countAndFlagsBits = 0x617461642ELL;
                    v105._object = 0xE500000000000000;
                    String.append(_:)(v105);
                    v106 = *(&v157 + 1);
                    v107 = String._bridgeToObjectiveC()();
                    v106, v108;
                    [v99 writeDataPayloadToDisk:v94.super.isa fileName:v107];

                    v109 = objc_allocWithZone(IDSOffGridMessage);
                    outlined copy of Data._Representation(v141, v61);
                    v110 = v147;
                    isa = Data._bridgeToObjectiveC()().super.isa;
                    v112 = [v109 initWithMessage:isa senderURI:v110 recipientURI:v110];
                    *(v0 + 424) = v112;

                    outlined consume of Data._Representation(v141, v61);
                    v148(v97, v150, v98);
                    v113 = v110;
                    v114 = v144;

                    v115 = Logger.logObject.getter();
                    v116 = static os_log_type_t.default.getter();
                    if (!os_log_type_enabled(v115, v116))
                    {
                      v130 = *(v0 + 288);
                      v131 = *(v0 + 256);
                      v132 = *(v0 + 224);

                      v132, v133;
                      v153(v130, v131);
LABEL_55:
                      v134 = LiteMessageServiceSession.offGridRelayMessenger.getter();
                      *(v0 + 432) = v134;
                      *(v0 + 16) = v0;
                      *(v0 + 56) = v0 + 176;
                      *(v0 + 24) = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);
                      v135 = swift_continuation_init();
                      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo26IDSOffGridEncryptedMessageC_SSts5Error_pGMd, &_sSccySo26IDSOffGridEncryptedMessageC_SSts5Error_pGMR);
                      *(v0 + 80) = _NSConcreteStackBlock;
                      *(v0 + 88) = 1107296256;
                      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String);
                      *(v0 + 104) = &block_descriptor_2;
                      *(v0 + 112) = v135;
                      [v134 encryptOffGridMessage:v112 completion:v0 + 80];
                      v54 = (v0 + 16);

                      return _swift_continuation_await(v54);
                    }

                    v156 = v112;
                    v117 = *(v0 + 224);
                    v118 = *(v0 + 208);
                    v119 = swift_slowAlloc();
                    v151 = swift_slowAlloc();
                    *&v157 = swift_slowAlloc();
                    *v119 = 136315650;
                    v120 = [v118 guid];
                    v117, v121;

                    if (v120)
                    {
                      v149 = *(v0 + 288);
                      v145 = *(v0 + 256);
                      v123 = *(v0 + 216);
                      v122 = *(v0 + 224);
                      v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v126 = v125;

                      v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v126, &v157);
                      v126, v128;
                      *(v119 + 4) = v127;
                      *(v119 + 12) = 2112;
                      *(v119 + 14) = v113;
                      *v151 = v147;
                      *(v119 + 22) = 2080;
                      v129 = v113;
                      *(v119 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v122, &v157);
                      _os_log_impl(&dword_0, v115, v116, "Encrypting relay message %s (senderURI: %@, chatIdentifier: %s", v119, 0x20u);
                      outlined destroy of TaskPriority?(v151, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

                      swift_arrayDestroy();

                      v153(v149, v145);
                      v112 = v156;
                      goto LABEL_55;
                    }

                    goto LABEL_60;
                  }

LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
                  goto LABEL_61;
                }
              }

              else
              {
                v65, v67;
              }

              v148(*(v0 + 296), v150, *(v0 + 256));
              v77 = v154;
              v78 = v9;
              v79 = Logger.logObject.getter();
              v80 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                v155 = swift_slowAlloc();
                *&v157 = v155;
                *v81 = 138412546;
                *(v81 + 4) = v77;
                v139 = v82;
                *v82 = v142;
                *(v81 + 12) = 2080;
                v83 = v77;
                v84 = [v78 chatIdentifier];

                if (!v84)
                {
LABEL_61:
                  __break(1u);
                  return _swift_continuation_await(v54);
                }

                v143 = *(v0 + 296);
                loga = *(v0 + 256);
                v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v87 = v86;

                v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v157);
                v87, v89;
                *(v81 + 14) = v88;
                _os_log_impl(&dword_0, v79, v80, "recipientURI %@ does not match chatIdentifier %s", v81, 0x16u);
                outlined destroy of TaskPriority?(v139, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

                __swift_destroy_boxed_opaque_existential_0(v155);

                v90 = v143;
                v91 = loga;
              }

              else
              {
                v92 = *(v0 + 296);
                v93 = *(v0 + 256);

                v90 = v92;
                v91 = v93;
              }

              v153(v90, v91);
              goto LABEL_50;
            }

            lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
            swift_allocError();
            *v53 = xmmword_537F0;
            *(v53 + 16) = 768;
            swift_willThrow();

            goto LABEL_30;
          }

          lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
          swift_allocError();
          *v49 = 0;
          *(v49 + 8) = 0;
LABEL_29:
          *(v49 + 16) = 768;
          swift_willThrow();
LABEL_30:

          goto LABEL_31;
        }

        lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
        swift_allocError();
        v50 = xmmword_537E0;
      }

      else
      {

        lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
        swift_allocError();
        v50 = xmmword_537D0;
      }

      *v49 = v50;
      goto LABEL_29;
    }
  }

  v45 = *(v0 + 472);
  v47 = *(v0 + 216);
  v46 = *(v0 + 224);

  lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
  swift_allocError();
  *v48 = v47;
  *(v48 + 8) = v46;
  *(v48 + 16) = v45;
  *(v48 + 17) = 0;
  swift_willThrow();

LABEL_31:

LABEL_32:

  v51 = *(v0 + 8);

  return v51();
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = v1[42];

    v4 = v1[40];
    v5 = v1[41];
    v6 = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);
  }

  else
  {
    v4 = v1[40];
    v5 = v1[41];
    v6 = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 360);
  v5 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);

  outlined consume of Data._Representation(v3, v1);

  v8 = *(v0 + 8);
  v9 = *(v0 + 336);

  return v8(v9);
}

{
  v11 = v0[54];
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];

  swift_willThrow();

  outlined consume of Data._Representation(v3, v1);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[51];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[42];

  outlined consume of Data._Representation(v4, v2);

  v10 = v0[1];

  return v10();
}

void LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:)()
{
  v80 = v0;
  v1 = v0[54];
  v2 = v0[31];
  v4 = v0[22];
  v3 = v0[23];
  v0[56] = v4;
  v5 = v0[24];

  UUID.init(uuidString:)();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    v9 = v0[52];
    v10 = v0[53];
    v11 = v0[51];
    v12 = v0[46];
    v72 = v0[45];
    v74 = v0[44];
    v76 = v0[43];
    v13 = v0[42];
    v14 = v0[31];

    outlined destroy of TaskPriority?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v15 = v3;
    *(v15 + 8) = v5;
    *(v15 + 16) = 256;
    swift_willThrow();

    outlined consume of Data._Representation(v11, v9);

    v16 = v0[1];

    v16();
  }

  else
  {
    v17 = v0[48];
    v18 = v0[47];
    v75 = v4;
    v77 = v0[42];
    v19 = v0[35];
    v21 = v0[31];
    v20 = v0[32];
    v5, v8;
    v73 = UUID.uuidString.getter();
    v23 = v22;
    (*(v7 + 8))(v21, v6);
    v24 = v20;
    v25 = v23;
    v17(v19, v18, v24);
    v26 = v77;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v30 = v0[42];
      v31 = swift_slowAlloc();
      v79[0] = swift_slowAlloc();
      *v31 = 136315394;
      v32 = [v30 guid];
      v33 = v25;
      v34 = v32;
      v35 = v33;
      v33, v33;

      if (!v34)
      {
        __break(1u);
        return;
      }

      v78 = v0[50];
      v70 = v0[32];
      v71 = v0[35];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v79);
      v38, v40;
      *(v31 + 4) = v39;
      *(v31 + 12) = 2080;
      v25 = v35;
      *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v35, v79);
      _os_log_impl(&dword_0, v27, v28, "Reassigning %s to %s", v31, 0x16u);
      swift_arrayDestroy();

      v78(v71, v70);
      v41 = v75;
    }

    else
    {
      v42 = v0[50];
      v43 = v0[42];
      v44 = v0[35];
      v45 = v0[32];
      v25, v29;

      v42(v44, v45);
      v41 = v75;
    }

    v46 = v0[46];
    v47 = v0[42];
    specialized LiteMessageServiceSession.removePreviousServiceOriginal(of:)(v47);
    v48 = [v47 guid];
    [v47 setFallbackHash:v48];

    v49 = String._bridgeToObjectiveC()();
    v25, v50;
    [v47 setGuid:v49];

    v51 = [v46 unprefixedURI];
    if (!v51)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
      v51 = String._bridgeToObjectiveC()();
      v53, v54;
    }

    v55 = v0[46];
    v56 = v0[44];
    v57 = v0[42];
    [v57 setDestinationCallerID:v51];

    [v57 setErrorCode:0];
    [v57 setIsPendingSatelliteSend:0];
    v58 = [v55 unprefixedURI];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62._countAndFlagsBits = v59;
    v62._object = v61;
    IMDChat.updateLastAddressedHandleWithMatchingSIM(to:)(v62);
    v61, v63;
    LiteMessageServiceSession.transportType.getter();
    v64 = LiteOutgoingMessageContext.topic.getter(1);
    v66 = v65;
    v68 = v67;
    v69 = swift_task_alloc();
    v0[57] = v69;
    *v69 = v0;
    v69[1] = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);

    LiteMessageServiceSession.sendEncryptedMessage(_:to:item:context:)(v41, v56, v57, v64 & 1, v66, v68);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v7 = *v6;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = *(v7[8] + 40);
      *v12 = a2;
      v12[1] = v11;
      v12[2] = v13;
      v14 = a2;
      v6 = v7;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v6);
  }
}

void LiteMessageServiceSession.didReceiveRelayMessageDeliveryReceipt(messageID:date:)(uint64_t a1, LiteMessageServiceSession *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v12 = [objc_opt_self() sharedInstance];
  v13 = String._bridgeToObjectiveC()();
  v35 = [v12 messageWithGUID:v13];

  if (v35)
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = [v2 chatForItemWithGUID:v14];

    if (v15)
    {
      v16 = [v15 style];
      v17 = [v15 chatIdentifier];
      if (v17)
      {
        v18 = v17;
        [v2 didSendMessage:v35 forChat:v17 style:v16];

        if ([v35 errorCode])
        {
LABEL_7:

          v22 = v35;

          return;
        }

        v35 = v35;
        v19 = [v35 guid];
        if (v19)
        {
          v20 = v19;

          v21 = [v2 account];
          [v2 notifyDidSendMessageID:v20 account:v21 shouldNotify:1];

          goto LABEL_7;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v29 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v6 + 16))(v11, v29, v5);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    a2, v32;
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v33 = 136315138;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v36);
      _os_log_impl(&dword_0, v30, v31, "Could not find chat for messageID %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    else
    {
    }

    (*(v6 + 8))(v11, v5);
  }

  else
  {
    v23 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v6 + 16))(v9, v23, v5);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    a2, v26;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v36);
      _os_log_impl(&dword_0, v24, v25, "Could not find message for messageID %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
    }

    (*(v6 + 8))(v9, v5);
  }
}

unint64_t lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError()
{
  result = lazy protocol witness table cache variable for type LiteMessageSendError and conformance LiteMessageSendError;
  if (!lazy protocol witness table cache variable for type LiteMessageSendError and conformance LiteMessageSendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageSendError and conformance LiteMessageSendError);
  }

  return result;
}

void specialized LiteMessageServiceSession.removePreviousServiceOriginal(of:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v78 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v78 - v11;
  __chkstk_darwin(v10);
  v14 = &v78 - v13;
  v15 = [a1 guid];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v78 = objc_opt_self();
  v19 = [v78 sharedInstance];
  v20 = [v19 itemWithGUID:v16];

  if (v20)
  {
    v79 = v20;
    v21 = [v20 service];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
      if (v25)
      {
        if (v23 == v26 && v25 == v27)
        {
          v25, v27;
          v28, v29;
          v30 = v2;
          goto LABEL_20;
        }

        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v25, v53;
        v28, v54;
        v30 = v2;
        if (v52)
        {
LABEL_20:
          v55 = v79;
          v56 = [v79 isFromMe];
          v57 = Logger.liteRelaySession.unsafeMutableAddressor();
          v58 = *(v3 + 16);
          v59 = v80;
          if (v56)
          {
            v58(v14, v57, v30);

            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.default.getter();
            v18, v62;
            if (os_log_type_enabled(v60, v61))
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              v81 = v64;
              *v63 = 136315138;
              *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v18, &v81);
              _os_log_impl(&dword_0, v60, v61, "Removing previous service record for %s", v63, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v64);
              v59 = v80;

              v55 = v79;
            }

            (*(v3 + 8))(v14, v30);
            v65 = [v78 sharedInstance];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
            v66 = swift_allocObject();
            *(v66 + 16) = xmmword_53390;
            *(v66 + 56) = &type metadata for String;
            *(v66 + 32) = v59;
            *(v66 + 40) = v18;
            isa = Array._bridgeToObjectiveC()().super.isa;
            v66, v68;
            v69 = [v65 deleteMessageGUIDs:isa];
          }

          else
          {
            v58(v12, v57, v30);

            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.info.getter();
            v18, v72;
            if (os_log_type_enabled(v70, v71))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v81 = v74;
              *v73 = 136315138;
              v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v18, &v81);
              v18, v76;
              *(v73 + 4) = v75;
              _os_log_impl(&dword_0, v70, v71, "Existing item for %s is not from me", v73, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v74);
            }

            else
            {

              v18, v77;
            }

            (*(v3 + 8))(v12, v30);
          }

          return;
        }

        goto LABEL_12;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    v30 = v2;
    v28, v27;
LABEL_12:
    v40 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v3 + 16))(v9, v40, v30);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    v18, v43;
    v44 = os_log_type_enabled(v41, v42);
    v45 = v80;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v81 = v47;
      *v46 = 136315138;
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v18, &v81);
      v18, v49;
      *(v46 + 4) = v48;
      _os_log_impl(&dword_0, v41, v42, "Existing item for %s is not SatelliteSMS service", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    else
    {

      v18, v50;
    }

    (*(v3 + 8))(v9, v30);
    return;
  }

  v31 = Logger.liteRelaySession.unsafeMutableAddressor();
  v32 = v2;
  (*(v3 + 16))(v6, v31, v2);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  v18, v35;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v81 = v37;
    *v36 = 136315138;
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v18, &v81);
    v18, v39;
    *(v36 + 4) = v38;
    _os_log_impl(&dword_0, v33, v34, "No existing item found for %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {

    v18, v51;
  }

  (*(v3 + 8))(v6, v32);
}

unint64_t type metadata accessor for IMMessageItem()
{
  result = lazy cache variable for type metadata for IMMessageItem;
  if (!lazy cache variable for type metadata for IMMessageItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IMMessageItem);
  }

  return result;
}

uint64_t one-time initialization function for lastFetchDate()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __swift_allocate_value_buffer(v0, lastFetchDate);
  v1 = __swift_project_value_buffer(v0, lastFetchDate);
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

Swift::Void __swiftcall LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)(Swift::OpaquePointer fromHandlesIDs)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = [objc_opt_self() sharedInstanceForBagType:1];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (!*(&v26 + 1))
  {
    outlined destroy of TaskPriority?(v27, &_sypSgMd, &_sypSgMR);
LABEL_11:
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    type metadata accessor for MainActor();
    v20 = v1;

    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2]._rawValue = v21;
    v22[3]._rawValue = &protocol witness table for MainActor;
    v22[4]._rawValue = v20;
    v22[5]._rawValue = fromHandlesIDs._rawValue;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:), v22);

    return;
  }

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = v24;
  v14 = [v24 BOOLValue];

  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = Logger.liteSession.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v15, v3);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Satellite fetch disabled by server bag", v18, 2u);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[50] = a4;
  v5[51] = a5;
  v6 = type metadata accessor for Logger();
  v5[52] = v6;
  v5[53] = *(v6 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v5[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[66] = v7;
  v5[67] = *(v7 - 8);
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[71] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[72] = v9;
  v5[73] = v8;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:), v9, v8);
}

uint64_t closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)()
{
  v150 = v0;
  if ((LiteMessageServiceSession.isSatelliteConnectionActive.getter() & 1) == 0)
  {
    v14 = v0[56];
    v15 = v0[52];
    v16 = v0[53];

    v17 = Logger.liteSession.unsafeMutableAddressor();
    (*(v16 + 16))(v14, v17, v15);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[56];
    v22 = v0[52];
    v23 = v0[53];
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Skipping satellite pending message fetch, not connected to satellite";
LABEL_72:
      _os_log_impl(&dword_0, v18, v19, v25, v24, 2u);
    }

LABEL_73:

    (*(v23 + 8))(v21, v22);
    goto LABEL_74;
  }

  v2 = 0;
  v3 = &_swiftEmptyArrayStorage;
  v4 = v0[51];
  v5 = *(v4 + 16);
  v6 = v4 + 40;
  v146 = v6;
  v149 = &_swiftEmptyArrayStorage;
LABEL_3:
  v7 = (v6 + 16 * v2);
  while (v5 != v2)
  {
    if (v2 >= v5)
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_63;
    }

    v9 = v0[50];
    v10 = *v7;

    v11 = String._bridgeToObjectiveC()();
    v12 = [v9 chatForChatIdentifier:v11 style:45 updatingAccount:0];
    v10, v13;

    v7 += 2;
    ++v2;
    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v149 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v149 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v146;
      v3 = v149;
      v2 = v8;
      goto LABEL_3;
    }
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v26 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_15;
  }

LABEL_68:
  v26 = _CocoaArrayWrapper.endIndex.getter();
LABEL_15:
  v27 = 0;
  v28 = 0;
  while (v26 != v27)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v27 >= *(v5 + 16))
      {
        goto LABEL_65;
      }

      v29 = *&v3->state[8 * v27 + 24];
    }

    v30 = v29;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_64;
    }

    v31 = [v29 pendingIncomingSatelliteMessageCount];

    ++v27;
    v32 = __OFADD__(v28, v31);
    v28 += v31;
    if (v32)
    {
      goto LABEL_66;
    }
  }

  v3, v1;
  if (v28 < 1)
  {
    v54 = v0[57];
    v55 = v0[52];
    v56 = v0[53];

    v57 = Logger.liteSession.unsafeMutableAddressor();
    (*(v56 + 16))(v54, v57, v55);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v58 = os_log_type_enabled(v18, v19);
    v21 = v0[57];
    v22 = v0[52];
    v23 = v0[53];
    if (v58)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "No incoming pending satellite messages, no reason to fetch";
      goto LABEL_72;
    }

    goto LABEL_73;
  }

  v33 = v0[51];

  v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v34);
  v33, v36;
  v37 = *(v35 + 56);
  v3 = &_swiftEmptyArrayStorage;
  v149 = &_swiftEmptyArrayStorage;
  v38 = -1;
  v39 = -1 << *(v35 + 32);
  if (-v39 < 64)
  {
    v38 = ~(-1 << -v39);
  }

  v5 = v38 & v37;
  v40 = (63 - v39) >> 6;

  v41 = 0;
LABEL_29:
  v147 = v3;
  v0[74] = v3;
  while (v5)
  {
LABEL_30:
    v42 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v43 = *(*(v35 + 48) + ((v41 << 10) | (16 * v42)) + 8);
    v44 = objc_allocWithZone(IDSURI);

    v3 = String._bridgeToObjectiveC()();
    v43, v45;
    v46 = [v44 initWithUnprefixedURI:v3];

    if (v46)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v149 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v149 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v149;
      goto LABEL_29;
    }
  }

  while (1)
  {
    v47 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_67;
    }

    if (v47 >= v40)
    {
      break;
    }

    v5 = *(v35 + 56 + 8 * v47);
    ++v41;
    if (v5)
    {
      v41 = v47;
      goto LABEL_30;
    }
  }

  v35, v48;
  v49 = v147;
  if (v147 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_41;
    }

LABEL_70:
    v132 = v0[58];
    v134 = v0[52];
    v133 = v0[53];

    v147, v135;
    v136 = Logger.liteSession.unsafeMutableAddressor();
    (*(v133 + 16))(v132, v136, v134);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v137 = os_log_type_enabled(v18, v19);
    v21 = v0[58];
    v22 = v0[52];
    v23 = v0[53];
    if (!v137)
    {
      goto LABEL_73;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "No handles to fetch pending messages for";
    goto LABEL_72;
  }

  if (!*(&dword_10 + (v147 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_70;
  }

LABEL_41:
  if (one-time initialization token for lastFetchDate != -1)
  {
    swift_once();
  }

  v50 = v0[67];
  v51 = v0[66];
  v52 = v0[65];
  v53 = __swift_project_value_buffer(v0[63], lastFetchDate);
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v53, v52, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v50 + 48))(v52, 1, v51) == 1)
  {
    outlined destroy of TaskPriority?(v0[65], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v59 = v0[69];
    v60 = v0[67];
    v61 = v0[66];
    (*(v60 + 32))(v0[70], v0[65], v61);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v63 = v62;
    v64 = *(v60 + 8);
    v64(v59, v61);
    if (v63 < 1.0)
    {
      v65 = v0[70];
      v66 = v0[68];
      v67 = v0[67];
      v68 = v0[66];
      v69 = v0[62];
      v70 = v0[52];
      v71 = v0[53];

      v147, v72;
      v73 = Logger.liteSession.unsafeMutableAddressor();
      (*(v71 + 16))(v69, v73, v70);
      (*(v67 + 16))(v66, v65, v68);
      v74 = Logger.logObject.getter();
      v148 = static os_log_type_t.info.getter();
      v75 = os_log_type_enabled(v74, v148);
      v76 = v0[70];
      v77 = v0[68];
      v78 = v0[66];
      v79 = v0[62];
      v81 = v0[52];
      v80 = v0[53];
      if (v75)
      {
        v145 = v0[52];
        v82 = swift_slowAlloc();
        v143 = v79;
        v83 = swift_slowAlloc();
        v149 = v83;
        *v82 = 136315394;
        lazy protocol witness table accessor for type Date and conformance Date();
        v140 = v78;
        v141 = v76;
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        v85 = v78;
        v87 = v86;
        v64(v77, v85);
        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v87, &v149);
        v87, v89;
        *(v82 + 4) = v88;
        *(v82 + 12) = 2048;
        *(v82 + 14) = 0x3FF0000000000000;
        _os_log_impl(&dword_0, v74, v148, "Not fetching, last fetch performed at %s which is less than %f seconds ago", v82, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v83);

        (*(v80 + 8))(v143, v145);
        v64(v141, v140);
      }

      else
      {

        v64(v77, v78);
        (*(v80 + 8))(v79, v81);
        v64(v76, v78);
      }

      goto LABEL_74;
    }

    v64(v0[70], v0[66]);
    v49 = v147;
  }

  v90 = v0[67];
  v91 = v0[66];
  v92 = v0[64];
  v93 = v0[61];
  v94 = v0[52];
  v95 = v0[53];
  static Date.now.getter();
  (*(v90 + 56))(v92, 0, 1, v91);
  swift_beginAccess();
  outlined assign with take of Date?(v92, v53);
  swift_endAccess();
  v96 = Logger.liteSession.unsafeMutableAddressor();
  v0[75] = v96;
  v97 = *(v95 + 16);
  v0[76] = v97;
  v0[77] = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v97(v93, v96, v94);

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.info.getter();
  v49, v100;
  v101 = os_log_type_enabled(v98, v99);
  v102 = v0[61];
  v104 = v0[52];
  v103 = v0[53];
  if (v101)
  {
    v144 = v0[52];
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v149 = v106;
    *v105 = 136315138;
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    v107 = Array.description.getter();
    v109 = v108;
    v142 = v102;
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, &v149);
    v109, v111;
    *(v105 + 4) = v110;
    _os_log_impl(&dword_0, v98, v99, "Fetching pending messages for handles: %s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v106);

    v112 = *(v103 + 8);
    v112(v142, v144);
  }

  else
  {

    v112 = *(v103 + 8);
    v112(v102, v104);
  }

  v0[78] = v112;
  v113 = LiteMessageServiceSession.offGridMessenger.getter();
  v0[79] = "sendFetchRequestForHandles:completions:";
  v114 = [v113 respondsToSelector:?];

  if (v114)
  {
    v115 = LiteMessageServiceSession.offGridMessenger.getter();
    v0[80] = v115;

    v117 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v116);
    v147, v118;
    v0[81] = type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    v0[82] = lazy protocol witness table accessor for type IDSURI and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;
    v0[83] = isa;
    v117, v120;
    v0[2] = v0;
    v0[7] = v0 + 46;
    v0[3] = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
    v121 = swift_continuation_init();
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyShySo6IDSURICGs5Error_pGMd, &_sSccyShySo6IDSURICGs5Error_pGMR);
    v0[84] = v122;
    v0[25] = v122;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet?, @unowned NSError?) -> () with result type Set<IDSURI>;
    v0[21] = &block_descriptor_3;
    v0[22] = v121;
    [v115 sendFetchRequestForHandles:isa completions:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }

  v123 = v0[59];
  v124 = v0[52];

  v147, v125;
  v97(v123, v96, v124);
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.error.getter();
  v128 = os_log_type_enabled(v126, v127);
  v129 = v0[59];
  v130 = v0[52];
  if (v128)
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&dword_0, v126, v127, "Not sending fetch request, not supported by installed version of IDS client", v131, 2u);
  }

  v112(v129, v130);
LABEL_74:

  v138 = v0[1];

  return v138();
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 680) = v2;
  v3 = *(v1 + 584);
  v4 = *(v1 + 576);
  if (v2)
  {
    v5 = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
  }

  else
  {
    v5 = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 704) = v2;
  v3 = *(v1 + 584);
  v4 = *(v1 + 576);
  if (v2)
  {
    v5 = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
  }

  else
  {
    v5 = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);

  *(v0 + 376), v3;

  v4 = *(v0 + 8);

  return v4();
}

{
  v25 = v0;
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[54];
  v6 = v0[52];

  swift_willThrow();

  v3(v5, v4, v6);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v22 = v0[54];
    v23 = v0[78];
    v9 = v0[52];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = v13;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);
    v14, v16;
    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v7, v8, "Failed to send fetch request: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);

    v23(v22, v9);
  }

  else
  {
    v17 = v0[78];
    v18 = v0[54];
    v19 = v0[52];

    v17(v18, v19);
  }

  v20 = v0[1];

  return v20();
}

uint64_t closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)(uint64_t a1, const char *a2)
{
  v3 = *(v2 + 664);
  v4 = *(v2 + 640);
  *(v2 + 368), a2;

  v5 = *(v2 + 632);
  v6 = LiteMessageServiceSession.offGridRelayMessenger.getter();
  LODWORD(v5) = [v6 respondsToSelector:v5];

  if (v5)
  {
    v7 = *(v2 + 672);
    v8 = *(v2 + 592);
    v9 = LiteMessageServiceSession.offGridRelayMessenger.getter();
    *(v2 + 688) = v9;
    v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v8);
    v8, v11;
    isa = Set._bridgeToObjectiveC()().super.isa;
    *(v2 + 696) = isa;
    v10, v13;
    *(v2 + 80) = v2;
    *(v2 + 120) = v2 + 376;
    *(v2 + 88) = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
    v14 = swift_continuation_init();
    *(v2 + 264) = v7;
    *(v2 + 208) = _NSConcreteStackBlock;
    *(v2 + 216) = 1107296256;
    *(v2 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet?, @unowned NSError?) -> () with result type Set<IDSURI>;
    *(v2 + 232) = &block_descriptor_14_0;
    *(v2 + 240) = v14;
    [v9 sendFetchRequestForHandles:isa completions:v2 + 208];

    return _swift_continuation_await(v2 + 80);
  }

  else
  {
    v15 = *(v2 + 608);
    v16 = *(v2 + 600);
    v17 = *(v2 + 592);
    v18 = *(v2 + 480);
    v19 = *(v2 + 416);

    v17, v20;
    v15(v18, v16, v19);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v2 + 624);
    v25 = *(v2 + 480);
    v26 = *(v2 + 416);
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v21, v22, "Not sending fetch request for relay, not supported by installed version of IDS client", v27, 2u);
    }

    v24(v25, v26);

    v28 = *(v2 + 8);

    return v28();
  }
}

uint64_t closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)(uint64_t a1)
{
  v49 = v1;
  v2 = v1[83];
  v3 = v1[80];
  v4 = v1[76];
  v5 = v1[75];
  v6 = v1[55];
  v7 = v1[52];
  swift_willThrow();

  v4(v6, v5, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v46 = v1[55];
    v47 = v1[78];
    v10 = v1[52];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = v14;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v48);
    v15, v17;
    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "Failed to send fetch request: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);

    v47(v46, v10);
  }

  else
  {
    v18 = v1[78];
    v19 = v1[55];
    v20 = v1[52];

    v18(v19, v20);
  }

  v21 = v1[79];
  v22 = LiteMessageServiceSession.offGridRelayMessenger.getter();
  LODWORD(v21) = [v22 respondsToSelector:v21];

  if (v21)
  {
    v23 = v1[84];
    v24 = v1[74];
    v25 = LiteMessageServiceSession.offGridRelayMessenger.getter();
    v1[86] = v25;
    v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v24);
    v24, v27;
    isa = Set._bridgeToObjectiveC()().super.isa;
    v1[87] = isa;
    v26, v29;
    v1[10] = v1;
    v1[15] = v1 + 47;
    v1[11] = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
    v30 = swift_continuation_init();
    v1[33] = v23;
    v1[26] = _NSConcreteStackBlock;
    v1[27] = 1107296256;
    v1[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet?, @unowned NSError?) -> () with result type Set<IDSURI>;
    v1[29] = &block_descriptor_14_0;
    v1[30] = v30;
    [v25 sendFetchRequestForHandles:isa completions:v1 + 26];

    return _swift_continuation_await(v1 + 10);
  }

  else
  {
    v31 = v1[76];
    v32 = v1[75];
    v33 = v1[74];
    v34 = v1[60];
    v35 = v1[52];

    v33, v36;
    v31(v34, v32, v35);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v1[78];
    v41 = v1[60];
    v42 = v1[52];
    if (v39)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v37, v38, "Not sending fetch request for relay, not supported by installed version of IDS client", v43, 2u);
    }

    v40(v41, v42);

    v44 = v1[1];

    return v44();
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet?, @unowned NSError?) -> () with result type Set<IDSURI>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    lazy protocol witness table accessor for type IDSURI and conformance NSObject();
    **(*(v4 + 64) + 40) = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_211DC()
{
  swift_unknownObjectRelease();

  *(v0 + 40), v1;

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)(v4, v5, v6, v2, v3);
}

uint64_t sub_212BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

Swift::Int BitCollection.LiteRelayEncodingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConsolidationIdentifierError(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t IDSOffGridEncryptedMessage.consolidationIdentifier.getter()
{
  v1 = v0;
  v2 = [v0 encryptionProperties];
  countAndFlagsBits = [v2 __im_encryptionKeyID];

  if (!countAndFlagsBits || (v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v6 = v5, countAndFlagsBits, countAndFlagsBits = specialized Collection.first.getter(v4, v6), outlined consume of Data._Representation(v4, v6), (countAndFlagsBits & 0x100) != 0))
  {
    lazy protocol witness table accessor for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v7 = [v1 encryptionProperties];
    v8 = [v7 ratchetCounter];

    v9 = [v8 integerValue];
    v20 = v9;
    v10 = specialized Data.InlineData.init(_:)(&v20, &v21);
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_53390;
    *(v13 + 32) = countAndFlagsBits;
    v14 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v13);
    v16 = v15;
    v13, v15;
    v21 = v14;
    v22 = v16;
    Data.append(_:)();
    v17 = v21;
    v18 = v22;
    countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
    outlined consume of Data._Representation(v10, v12 & 0xFFFFFFFFFFFFFFLL);
    outlined consume of Data._Representation(v17, v18);
  }

  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError()
{
  result = lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError;
  if (!lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError;
  if (!lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError);
  }

  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = Data._Representation.subscript.getter();
  v4 = 0;
  return v3 | (v4 << 8);
}

id IDSOffGridEncryptedMessage.segmentNumber.getter(SEL *a1)
{
  v3 = [v1 encryptionProperties];
  v4 = [v3 *a1];

  v5 = [v4 integerValue];
  return v5;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t getEnumTagSinglePayload for ConsolidationIdentifierError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ConsolidationIdentifierError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

Swift::Int LiteMessageServiceSession.LiteRelayError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LiteMessageServiceSession.OutgoingSatelliteMessageError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LiteMessageServiceSession.OutgoingSatelliteMessageError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

NSObject *LiteMessageServiceSession.satelliteContinuitySendOptions(for:chatIdentifier:)(NSObject *a1, uint64_t a2, NSObject *a3)
{
  v5 = v3;
  v169 = a1;
  v8 = type metadata accessor for Logger();
  v168 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v167 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v166 = &v158 - v12;
  __chkstk_darwin(v11);
  v165 = &v158 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v158 - v18;
  v20 = String._bridgeToObjectiveC()();
  v21 = [v5 chatForChatIdentifier:v20 style:45 updatingAccount:0];

  if (v21)
  {
    a3 = v21;
    v22 = IMDChat.participantURI.getter();
    if (v22)
    {
      v23 = v22;
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
      v174 = v24;
      v25 = v169;
      a3 = v169;
      IMMessageItem.liteData.getter();
      if (!v4)
      {
        v158 = 0;
        v163 = v21;
        v164 = v8;
        v31 = v26;
        v32 = v27;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;
        v173 = &type metadata for Data;
        *&v172 = v31;
        *(&v172 + 1) = v32;
        outlined init with take of Any(&v172, v171);
        v160 = v31;
        v161 = v32;
        outlined copy of Data._Representation(v31, v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v170 = v24;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v171, v33, v35, isUniquelyReferenced_nonNull_native);
        v35, v37;
        v38 = v170;
        v174 = v170;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        v162 = v23;
        v42 = [v23 unprefixedURI];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v173 = &type metadata for String;
        *&v172 = v43;
        *(&v172 + 1) = v45;
        outlined init with take of Any(&v172, v171);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v170 = v38;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v171, v39, v41, v46);
        v41, v47;
        v48 = v170;
        v174 = v170;
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v173 = &type metadata for String;
        *&v172 = v52;
        *(&v172 + 1) = v53;
        outlined init with take of Any(&v172, v171);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v170 = v48;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v171, v49, v51, v54);
        v51, v55;
        v56 = v170;
        v174 = v170;
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;
        v60 = [v25 guid];
        if (v60)
        {
          v61 = v60;
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;

          v173 = &type metadata for String;
          *&v172 = v62;
          *(&v172 + 1) = v64;
          v25 = v169;
          outlined init with take of Any(&v172, v171);
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v170 = v56;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v171, v57, v59, v65);
          v59, v66;
          v174 = v170;
        }

        else
        {
          specialized Dictionary._Variant.removeValue(forKey:)(v57, v59, &v172);
          v59, v67;
          outlined destroy of TaskPriority?(&v172, &_sypSgMd, &_sypSgMR);
        }

        v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;
        v70 = [v25 time];
        v71 = v163;
        if (v70)
        {
          v72 = v70;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v74 = type metadata accessor for Date();
        v75 = *(v74 - 8);
        (*(v75 + 56))(v17, v73, 1, v74);
        outlined init with take of Date?(v17, v19);
        if ((*(v75 + 48))(v19, 1, v74) == 1)
        {
          outlined destroy of TaskPriority?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          specialized Dictionary._Variant.removeValue(forKey:)(v159, v69, &v172);
          v69, v76;
          outlined destroy of TaskPriority?(&v172, &_sypSgMd, &_sypSgMR);
        }

        else
        {
          v173 = v74;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v172);
          (*(v75 + 32))(boxed_opaque_existential_0, v19, v74);
          outlined init with take of Any(&v172, v171);
          v78 = v174;
          v79 = swift_isUniquelyReferenced_nonNull_native();
          v170 = v78;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v171, v159, v69, v79);
          v69, v80;
          v174 = v170;
        }

        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v82;
        v84 = type metadata accessor for NSNumber();
        v85.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
        v173 = v84;
        *&v172 = v85;
        outlined init with take of Any(&v172, v171);
        v86 = v174;
        v87 = swift_isUniquelyReferenced_nonNull_native();
        v170 = v86;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v171, v81, v83, v87);
        v83, v88;
        v174 = v170;
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;
        v92.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
        v173 = v84;
        *&v172 = v92;
        outlined init with take of Any(&v172, v171);
        v93 = v174;
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v170 = v93;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v171, v89, v91, v94);
        v91, v95;
        v96 = v170;
        v174 = v170;
        v97 = v71;
        [v71 style];
        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v100 = v99;
        v101 = _IMDRelayChatStyleStringFromChatStyle();
        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v103;

        v173 = &type metadata for String;
        *&v172 = v102;
        *(&v172 + 1) = v104;
        outlined init with take of Any(&v172, v171);
        v105 = swift_isUniquelyReferenced_nonNull_native();
        v170 = v96;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v171, v98, v100, v105);
        v100, v106;
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v170);
        v108 = v107;

        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v108, v110;
        v111 = JWEncodeDictionary();

        if (v111)
        {
          v112 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v114 = v113;

          v115 = Data._bridgeToObjectiveC()().super.isa;
          v116 = [(objc_class *)v115 _FTCopyGzippedData];

          if (v116)
          {
            v167 = v112;
            v117 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v119 = v118;

            v120 = [v169 guid];
            v121 = IDSGetUUIDData();

            if (v121)
            {
              v122 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v123 = v119;
              v125 = v124;

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
              v126 = swift_allocObject();
              v169 = v114;
              v127 = v126;
              *(v126 + 16) = xmmword_53960;
              *(v126 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v127[5].super.super.isa = v128;
              v129.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
              v127[9].super.super.isa = v84;
              v127[6].super.super.isa = v129.super.super.isa;
              v127[10].super.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v127[11].super.super.isa = v130;
              v131.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
              v127[15].super.super.isa = v84;
              v127[12].super.super.isa = v131.super.super.isa;
              v127[16].super.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v127[17].super.super.isa = v132;
              v133.super.super.isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
              v127[21].super.super.isa = v84;
              v127[18].super.super.isa = v133.super.super.isa;
              v127[22].super.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v127[23].super.super.isa = v134;
              v127[27].super.super.isa = &type metadata for Data;
              v127[24].super.super.isa = v122;
              v127[25].super.super.isa = v125;
              v127[28].super.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v127[29].super.super.isa = v135;
              v127[33].super.super.isa = &type metadata for Int;
              v127[30].super.super.isa = (&stru_68 + 39);
              v127[34].super.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v127[35].super.super.isa = v136;
              v127[36].super.super.isa = v117;
              v127[37].super.super.isa = v123;
              v127[39].super.super.isa = &type metadata for Data;
              v127[40].super.super.isa = 0xD00000000000001BLL;
              v127[41].super.super.isa = 0x80000000000562E0;
              outlined copy of Data._Representation(v122, v125);
              outlined copy of Data._Representation(v117, v123);
              v137.super.super.isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
              v127[45].super.super.isa = v84;
              v127[42].super.super.isa = v137.super.super.isa;
              a3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v127);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              outlined consume of Data._Representation(v160, v161);
              outlined consume of Data._Representation(v122, v125);
              outlined consume of Data._Representation(v117, v123);

              outlined consume of Data._Representation(v167, v169);
              return a3;
            }

            v151 = Logger.liteContinuity.unsafeMutableAddressor();
            v152 = v168;
            v153 = v165;
            (*(v168 + 16))(v165, v151, v164);
            a3 = Logger.logObject.getter();
            v154 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(a3, v154))
            {
              v155 = swift_slowAlloc();
              *v155 = 0;
              _os_log_impl(&dword_0, a3, v154, "Failed to convert UUID to Data. Not relaying.", v155, 2u);
            }

            (*(v152 + 8))(v153, v164);
            lazy protocol witness table accessor for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError();
            swift_allocError();
            *v156 = 3;
            swift_willThrow();

            outlined consume of Data._Representation(v117, v119);
            v150 = v167;
          }

          else
          {
            v144 = Logger.liteContinuity.unsafeMutableAddressor();
            v145 = v168;
            v146 = v166;
            (*(v168 + 16))(v166, v144, v164);
            a3 = Logger.logObject.getter();
            v147 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(a3, v147))
            {
              v148 = swift_slowAlloc();
              *v148 = 0;
              _os_log_impl(&dword_0, a3, v147, "Failed to compress off grid relay message. Not relaying.", v148, 2u);
            }

            (*(v145 + 8))(v146, v164);
            lazy protocol witness table accessor for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError();
            swift_allocError();
            *v149 = 2;
            swift_willThrow();

            v150 = v112;
          }

          outlined consume of Data._Representation(v150, v114);
        }

        else
        {
          v138 = Logger.liteContinuity.unsafeMutableAddressor();
          v140 = v167;
          v139 = v168;
          (*(v168 + 16))(v167, v138, v164);
          a3 = Logger.logObject.getter();
          v141 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(a3, v141))
          {
            v142 = swift_slowAlloc();
            *v142 = 0;
            _os_log_impl(&dword_0, a3, v141, "Failed to encode off grid relay message. Not relaying.", v142, 2u);
          }

          (*(v139 + 8))(v140, v164);
          lazy protocol witness table accessor for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError();
          swift_allocError();
          *v143 = 1;
          swift_willThrow();
        }

        outlined consume of Data._Representation(v160, v161);
        return a3;
      }

      v24, v28;
    }

    else
    {
      lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
      swift_allocError();
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v30 + 16) = 768;
      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v29 = a2;
    *(v29 + 8) = a3;
    *(v29 + 16) = 45;
    swift_willThrow();
  }

  return a3;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v13;
    }

    *(*(v11 + 48) + 16 * v8 + 8), v10;
    outlined init with take of Any((*(v11 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v4 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
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
        outlined init with take of Any(v24, v34);
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
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
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
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        outlined init with take of Any((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v36);
        outlined init with copy of Any(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();
      v10, v12;
      v13 = v11 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
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
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
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
      outlined init with copy of (String, Any)(v4, &v13);
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
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError()
{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageServiceSession.OutgoingSatelliteMessageError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageServiceSession.OutgoingSatelliteMessageError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *IMDService.idsServiceNames.getter()
{
  v1 = [v0 serviceProperties];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v3 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v4, v9);
    outlined destroy of AnyHashable(v8);
    v2, v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    v2, v3;
    outlined destroy of AnyHashable(v8);
  }

  return &_swiftEmptyArrayStorage;
}

LiteMessageServiceSession *IMDService.idsServiceName.getter()
{
  result = IMDService.idsServiceNames.getter();
  if (*&result->state[8])
  {
    v1 = *&result->state[24];
    v2 = result;

    v2, v3;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall IMDService.hasAlias(_:)(Swift::String a1)
{
  v18 = a1;
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  v4 = [v2 accountsForService:v1];

  if (!v4)
  {
LABEL_19:
    __break(1u);
    return v2;
  }

  type metadata accessor for IMDAccount();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
LABEL_17:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_16;
      }

      v10 = *(v5 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = [v10 aliases];
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = v18;
    __chkstk_darwin(v14);
    v17[2] = &v19;
    LOBYTE(v12) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v17, v13);
    v13, v15;

    v8 = v9 + 1;
  }

  while ((v12 & 1) == 0);
  v5, v6;
  LOBYTE(v2) = v7 != v9;
  return v2;
}

unint64_t type metadata accessor for IMDAccount()
{
  result = lazy cache variable for type metadata for IMDAccount;
  if (!lazy cache variable for type metadata for IMDAccount)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IMDAccount);
  }

  return result;
}

void String.liteEscapedText.getter(uint64_t a1, uint64_t a2)
{

  v2 = &unk_664A8;
  v3 = 17;
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_53390;
    *(v6 + 32) = v5;
    *(v6 + 40) = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_53380;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0xE100000000000000;
    *(v7 + 48) = v5;
    *(v7 + 56) = v4;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySJGMd, &_sSaySJGMR);
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type [Character] and conformance [A]();
    RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
    v6, v8;
    v7, v9;
    v2 += 2;
    --v3;
  }

  while (v3);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Character] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Character] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Character] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySJGMd, &_sSaySJGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Character] and conformance [A]);
  }

  return result;
}

void static NSAttributedString.makeMessageBody(for:)()
{
  v0 = objc_allocWithZone(IMToSuperParserContext);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithContent:v1];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    [v2 appendString:v3];

    if ([v2 body])
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t LiteMessageServiceSession.logger(for:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = Logger.liteRelaySession.unsafeMutableAddressor();
  }

  else
  {
    v3 = Logger.liteSession.unsafeMutableAddressor();
  }

  v4 = v3;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v4, v5);
}

uint64_t LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v6;
  v3[11] = v5;

  return _swift_task_switch(LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:), v6, v5);
}

uint64_t LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:)()
{
  v1 = v0[6];
  v2 = IDSOffGridEncryptedMessage.totalSegments.getter();
  v3 = Logger.liteSession.unsafeMutableAddressor();
  v4 = *(v1 + 16);
  v5 = v0[5];
  if (v2 <= 1)
  {
    v4(v0[8], v3, v5);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Message is a single segment, immediately decrypting", v18, 2u);
    }

    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[6];
    v22 = v0[3];

    (*(v21 + 8))(v19, v20);
    v23 = [v22 identifier];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v0[12] = v26;
    v27 = swift_task_alloc();
    v0[13] = v27;
    *v27 = v0;
    v27[1] = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
    v28 = v0[3];
    v29 = v0[2];

    return LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)(v29, v24, v26, v28);
  }

  else
  {
    v4(v0[7], v3, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Message is one of several segments", v8, 2u);
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];

    (*(v10 + 8))(v9, v11);
    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
    v13 = v0[3];
    v14 = v0[2];

    return LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:)(v14, v13);
  }
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    v6 = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
  }

  else
  {
    *(v2 + 96), v3;
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    v6 = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
  }

  else
  {
    v5 = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:)(uint64_t a1, const char *a2)
{
  *(v2 + 96), a2;

  v3 = *(v2 + 8);

  return v3();
}

uint64_t LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  type metadata accessor for Date();
  v5[32] = swift_task_alloc();
  type metadata accessor for LiteMessageContext(0);
  v5[33] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v5[34] = v6;
  v5[35] = *(v6 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[38] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[39] = v8;
  v5[40] = v7;

  return _swift_task_switch(LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:), v8, v7);
}

uint64_t LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)()
{
  v1 = v0[27];
  v2 = LiteMessageServiceSession.offGridMessenger(for:)(v0[30]);
  v0[41] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17IDSOffGridMessageC_SSts5Error_pGMd, &_sSccySo17IDSOffGridMessageC_SSts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String);
  v0[13] = &block_descriptor_4;
  v0[14] = v3;
  [v2 decryptOffGridMessage:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  v3 = *(v1 + 320);
  v4 = *(v1 + 312);
  if (v2)
  {
    v5 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  else
  {
    v5 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v90 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[29];
  v6 = v0[18];
  v5 = v0[19];
  v0[43] = v6;
  v7 = v0[20];

  v8 = Logger.liteSession.unsafeMutableAddressor();
  v83 = *(v3 + 16);
  v85 = v8;
  v83(v2);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v4, v11;
  v7, v12;
  v13 = os_log_type_enabled(v9, v10);
  v14 = v0[37];
  v16 = v0[34];
  v15 = v0[35];
  v88 = v6;
  if (v13)
  {
    v77 = v0[29];
    v81 = v0[34];
    v17 = v5;
    v18 = v7;
    v19 = v0[28];
    v20 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v20 = 136315394;
    v21 = v19;
    v7 = v18;
    v5 = v17;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v77, v89);
    *(v20 + 12) = 2080;
    *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v7, v89);
    _os_log_impl(&dword_0, v9, v10, "Decrypted %s as %s", v20, 0x16u);
    swift_arrayDestroy();

    v6 = v88;

    v22 = *(v15 + 8);
    v22(v14, v81);
  }

  else
  {

    v22 = *(v15 + 8);
    v22(v14, v16);
  }

  v23 = [v6 senderURI];
  if (!v23)
  {

    v7, v56;
    lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError();
    swift_allocError();
    *v57 = xmmword_537F0;
    *(v57 + 16) = 2;
    swift_willThrow();

    v58 = v0[1];
LABEL_15:

    return v58();
  }

  v78 = v5;
  v82 = v7;
  v24 = v0[31];
  v25 = v23;
  v26 = [v23 unprefixedURI];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = [v6 recipientURI];
  v31 = v27;
  v32 = [v30 unprefixedURI];

  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v33;

  v34 = [v24 service];
  v35._countAndFlagsBits = v27;
  v35._object = v29;
  v36 = IMDService.hasAlias(_:)(v35);

  v37._countAndFlagsBits = v31;
  v37._object = v29;
  if (LiteMessageServiceSession.hasBlockedFromHandleID(_:)(v37))
  {
    v79 = v22;
    v38 = v0[36];
    v39 = v0[34];
    v40 = v0[29];

    v80, v41;
    v82, v42;
    (v83)(v38, v85, v39);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v40, v45;
    v29, v46;
    v47 = os_log_type_enabled(v43, v44);
    v48 = v0[36];
    v49 = v0[34];
    if (v47)
    {
      v86 = v0[36];
      v51 = v0[28];
      v50 = v0[29];
      v52 = swift_slowAlloc();
      v89[0] = swift_slowAlloc();
      *v52 = 136315394;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, v89);
      *(v52 + 12) = 2080;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v29, v89);
      v29, v54;
      *(v52 + 14) = v53;
      _os_log_impl(&dword_0, v43, v44, "Dropping message %s, sender %s is blocked", v52, 0x16u);
      swift_arrayDestroy();

      v55 = v86;
    }

    else
    {

      v29, v73;
      v55 = v48;
    }

    v79(v55, v49);

    v58 = v0[1];
    goto LABEL_15;
  }

  v59 = v0[32];
  v60 = v0[29];
  v84 = v0[28];
  v87 = v0[33];
  v61 = v0[27];

  IDSOffGridEncryptedMessage.dateSent.getter();
  v62 = LiteMessageServiceSession.isLiteMessageActiveOverSatellite.getter();
  v63 = [v61 preferredServiceType];
  v64 = IDSOffGridMessageContext.command.getter();
  LiteMessageContext.init(identifier:unencryptedIdentifier:senderID:recipientID:isFromMe:date:sentOrReceivedOnSatellite:preferredService:command:)(v78, v82, v84, v60, v31, v29, v76, v80, v87, v36, v59, v62 & 1, v63, v64);
  v65 = IDSOffGridMessageContext.topic.getter();
  v66 = [v88 message];
  v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v0[44] = v67;
  v0[45] = v69;
  if (v65)
  {
    v70 = swift_task_alloc();
    v0[48] = v70;
    *v70 = v0;
    v70[1] = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
    v71 = v0[33];

    return LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:)(v67, v69, v71);
  }

  else
  {
    v74 = swift_task_alloc();
    v0[46] = v74;
    *v74 = v0;
    v74[1] = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
    v75 = v0[33];

    return LiteMessageServiceSession.storeAndBroadcastDecryptedMessageData(_:context:)(v67, v69, v75);
  }
}

{
  v1 = *(v0 + 328);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[43];
  v2 = v0[33];

  outlined destroy of LiteMessageContext(v2);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[43];
  v2 = v0[33];

  outlined destroy of LiteMessageContext(v2);

  v3 = v0[1];

  return v3();
}

uint64_t LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[21] = v2;
  v4[22] = a1;
  v4[23] = v1;
  v4[47] = v1;

  outlined consume of Data._Representation(v3[44], v3[45]);
  v5 = v3[40];
  v6 = v3[39];
  if (v1)
  {
    v7 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  else
  {
    v7 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  return _swift_task_switch(v7, v6, v5);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[24] = v2;
  v4[25] = a1;
  v4[26] = v1;
  v4[49] = v1;

  outlined consume of Data._Representation(v3[44], v3[45]);
  v5 = v3[40];
  v6 = v3[39];
  if (v1)
  {
    v7 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  else
  {
    v7 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  return _swift_task_switch(v7, v6, v5);
}

id LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)()
{
  v1 = *(v0 + 176);

  v2 = v1;
  v3 = IDSOffGridEncryptedMessage.pendingMessageCountForHandle.getter();
  v4 = IDSOffGridEncryptedMessage.pendingMessageCountTotal.getter();
  [v2 updateIsDownloadingPendingSatelliteMessages:v3 > 0];
  [v2 updatePendingIncomingSatelliteMessageCount:v3];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v7 = [*(v0 + 248) service];
    v8 = [v7 internalName];

    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      v8 = String._bridgeToObjectiveC()();
      v10, v11;
    }

    v12 = *(v0 + 344);
    v13 = *(v0 + 264);
    [v6 updateBadgeForPendingSatelliteMessagesIfNeeded:v4 onService:v8];

    outlined destroy of LiteMessageContext(v13);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = *(v0 + 200);

  v2 = v1;
  v3 = IDSOffGridEncryptedMessage.pendingMessageCountForHandle.getter();
  v4 = IDSOffGridEncryptedMessage.pendingMessageCountTotal.getter();
  [v2 updateIsDownloadingPendingSatelliteMessages:v3 > 0];
  [v2 updatePendingIncomingSatelliteMessageCount:v3];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v7 = [*(v0 + 248) service];
    v8 = [v7 internalName];

    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      v8 = String._bridgeToObjectiveC()();
      v10, v11;
    }

    v12 = *(v0 + 344);
    v13 = *(v0 + 264);
    [v6 updateBadgeForPendingSatelliteMessagesIfNeeded:v4 onService:v8];

    outlined destroy of LiteMessageContext(v13);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v6;
  v3[11] = v5;

  return _swift_task_switch(LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:), v6, v5);
}

uint64_t LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:)()
{
  v1 = LiteMessageServiceSession.segmentStore.getter();
  *(v0 + 96) = v1;

  return _swift_task_switch(LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:), v1, 0);
}

{
  LiteMessageSegmentStore.insertMessageSegment(_:)(v0[2]);
  v0[13] = 0;

  v1 = v0[10];
  v2 = v0[11];

  return _swift_task_switch(LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:), v1, v2);
}

{
  v1 = v0[13];
  v2 = IDSOffGridEncryptedMessage.consolidationIdentifier.getter();
  v0[14] = v1;
  v0[15] = v2;
  v0[16] = v3;
  if (v1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = LiteMessageServiceSession.segmentStore.getter();
    v0[17] = v6;

    return _swift_task_switch(LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:), v6, 0);
  }
}

{
  *(v0 + 144) = LiteMessageSegmentStore.countMessageSegments(for:)(*(v0 + 120));
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:);
  }

  else
  {

    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:);
  }

  return _swift_task_switch(v4, v2, v3);
}

{
  v53 = v0;
  v1 = *(v0 + 144);
  v2 = IDSOffGridEncryptedMessage.totalSegments.getter();
  v3 = *(v0 + 128);
  if (v1 == v2)
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = Logger.liteSession.unsafeMutableAddressor();
    (*(v6 + 16))(v4, v7, v5);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    v3, v10;
    if (os_log_type_enabled(v8, v9))
    {
      v12 = *(v0 + 120);
      v11 = *(v0 + 128);
      v13 = *(v0 + 64);
      v14 = *(v0 + 40);
      v15 = *(v0 + 48);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v52 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v52);
      _os_log_impl(&dword_0, v8, v9, "Received all message segments for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);

      (*(v15 + 8))(v13, v14);
    }

    else
    {
      v37 = *(v0 + 64);
      v38 = *(v0 + 40);
      v39 = *(v0 + 48);

      (*(v39 + 8))(v37, v38);
    }

    v40 = swift_task_alloc();
    *(v0 + 160) = v40;
    *v40 = v0;
    v40[1] = LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:);
    v42 = *(v0 + 120);
    v41 = *(v0 + 128);
    v43 = *(v0 + 24);

    return LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:)(v42, v41, v43);
  }

  else
  {
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 40);
    v21 = *(v0 + 16);

    v22 = Logger.liteSession.unsafeMutableAddressor();
    (*(v19 + 16))(v18, v22, v20);

    v23 = v21;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    v3, v26;
    if (os_log_type_enabled(v24, v25))
    {
      v28 = *(v0 + 144);
      v30 = *(v0 + 120);
      v29 = *(v0 + 128);
      v31 = *(v0 + 48);
      v50 = *(v0 + 40);
      v51 = *(v0 + 56);
      v32 = *(v0 + 16);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v52 = v34;
      *v33 = 134218498;
      *(v33 + 4) = v28;
      *(v33 + 12) = 2048;
      *(v33 + 14) = IDSOffGridEncryptedMessage.totalSegments.getter();

      *(v33 + 22) = 2080;
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v52);
      v29, v36;
      *(v33 + 24) = v35;
      _os_log_impl(&dword_0, v24, v25, "Has %ld of %ld segments for %s, awaiting more segments", v33, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v34);

      (*(v31 + 8))(v51, v50);
    }

    else
    {
      v46 = *(v0 + 48);
      v45 = *(v0 + 56);
      v47 = *(v0 + 40);
      v48 = *(v0 + 16);
      *(v0 + 128), v27;

      (*(v46 + 8))(v45, v47);
    }

    v49 = *(v0 + 8);

    return v49();
  }
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    v6 = LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:);
  }

  else
  {
    *(v2 + 128), v3;
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    v6 = LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 128);

  v1, v2;

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 128);

  v1, v2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for Logger();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v7;
  v4[17] = v6;

  return _swift_task_switch(LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:), v7, v6);
}

uint64_t LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:)()
{
  v1 = LiteMessageServiceSession.segmentStore.getter();
  *(v0 + 144) = v1;

  return _swift_task_switch(LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:), v1, 0);
}

{
  v0[19] = LiteMessageSegmentStore.messageSegments(for:)(v0[6], v0[7]);
  v0[20] = 0;

  v1 = v0[16];
  v2 = v0[17];

  return _swift_task_switch(LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:), v1, v2);
}

{
  v1 = *(v0 + 152);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_21:
    v39 = *(v0 + 152);

    v39, v40;
    lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError();
    swift_allocError();
    *v41 = 0;
    *(v41 + 8) = 0;
    *(v41 + 16) = 2;
    swift_willThrow();
    goto LABEL_22;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v4 = *(*(v0 + 152) + 32);
  }

  v5 = v4;
  *(v0 + 168) = v4;
  if (v2)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = IDSOffGridEncryptedMessage.totalSegments.getter();
  v8 = *(v0 + 152);
  if (v6 == v7)
  {
    v9 = *(v0 + 112);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v12 = Logger.liteSession.unsafeMutableAddressor();
    *(v0 + 176) = v12;
    v13 = *(v11 + 16);
    *(v0 + 184) = v13;
    *(v0 + 192) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v10);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      if (v2)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
      }

      v23 = *(v0 + 152);
      *(v18 + 4) = v19;
      v23, v17;
      _os_log_impl(&dword_0, v14, v15, "Consolidating and decrypting %ld segments", v18, 0xCu);
    }

    else
    {
      *(v0 + 152), v16;
    }

    v24 = *(v0 + 152);
    v25 = *(v0 + 112);
    v26 = *(v0 + 80);
    v27 = *(v0 + 88);
    v28 = *(v27 + 8);
    *(v0 + 200) = v28;
    *(v0 + 208) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v25, v26);
    v29 = objc_allocWithZone(IDSOffGridEncryptedMessage);
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSOffGridEncryptedMessage, IDSOffGridEncryptedMessage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v24, v31;
    v32 = [v29 initWithSegments:isa];
    *(v0 + 216) = v32;

    v33 = [v32 identifier];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *(v0 + 224) = v36;
    v37 = swift_task_alloc();
    *(v0 + 232) = v37;
    *v37 = v0;
    v37[1] = LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:);
    v38 = *(v0 + 64);

    return LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)(v32, v34, v36, v38);
  }

  v8, v20;
  v21 = IDSOffGridEncryptedMessage.totalSegments.getter();
  lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError();
  swift_allocError();
  *v22 = v6;
  *(v22 + 8) = v21;
  *(v22 + 16) = 1;
  swift_willThrow();

LABEL_22:

  v42 = *(v0 + 8);

  return v42();
}

{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    v6 = LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:);
  }

  else
  {
    *(v2 + 224), v3;
    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    v6 = LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  (*(v0 + 184))(*(v0 + 104), *(v0 + 176), *(v0 + 80));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Successfully decrypted and stored consolidated message, removing parts from store", v3, 2u);
  }

  v4 = *(v0 + 200);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);

  v4(v5, v6);
  v7 = LiteMessageServiceSession.segmentStore.getter();
  *(v0 + 248) = v7;

  return _swift_task_switch(LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:), v7, 0);
}

{
  LiteMessageSegmentStore.deleteMessageSegments(for:)(v0[3]);
  v0[16]._countAndFlagsBits = v1;
  if (v1)
  {
    countAndFlagsBits = v0[8]._countAndFlagsBits;
    object = v0[8]._object;
    v4 = LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:);
  }

  else
  {

    countAndFlagsBits = v0[8]._countAndFlagsBits;
    object = v0[8]._object;
    v4 = LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:);
  }

  return _swift_task_switch(v4, countAndFlagsBits, object);
}

{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[21];

  v2, v4;

  v5 = v0[1];

  return v5();
}

{
  v26 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);

  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 216);
    v24 = *(v0 + 200);
    v8 = *(v0 + 168);
    v22 = *(v0 + 80);
    v23 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = v12;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v25);
    v13, v15;
    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v5, v6, "Failed to clean up message segments: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);

    v24(v23, v22);
  }

  else
  {
    v16 = *(v0 + 200);
    v17 = *(v0 + 168);
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);

    v16(v18, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

void IDSOffGridEncryptedMessage.dateSent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 respondsToSelector:"date"])
  {
    v12 = [v1 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v12;
  }

  else
  {
    v7 = Logger.liteSession.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v7, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "IDSOffGridEncryptedMessage does not have date", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
    static Date.now.getter();
  }
}

uint64_t LiteMessageServiceSession.storeAndBroadcastDecryptedMessageData(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for LiteMessageContext(0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(LiteMessageServiceSession.storeAndBroadcastDecryptedMessageData(_:context:), v7, v6);
}

id LiteMessageServiceSession.storeAndBroadcastDecryptedMessageData(_:context:)()
{
  v159 = v0;
  v1 = v0[5];
  v2 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v158[0] = 0x2D6574696CLL;
  v158[1] = 0xE500000000000000;
  String.append(_:)(*v1);
  v4._countAndFlagsBits = 0x617461642ELL;
  v4._object = 0xE500000000000000;
  String.append(_:)(v4);
  v5 = String._bridgeToObjectiveC()();
  0xE500000000000000, v6;
  [v2 writeDataPayloadToDisk:isa fileName:v5];

  v7 = *(v1 + 64);
  v8 = 32;
  if (*(v1 + 64))
  {
    v8 = 48;
  }

  v9 = 40;
  if (*(v1 + 64))
  {
    v9 = 56;
  }

  v10 = *(v1 + v8);
  v11 = *(v1 + v9);

  v12 = LiteMessageServiceSession.joinedChat(with:)(v10, v11);
  if (!v12)
  {

    lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError();
    swift_allocError();
    *v19 = v10;
    *(v19 + 8) = v11;
    *(v19 + 16) = 0;
    swift_willThrow();
    goto LABEL_30;
  }

  v13 = v12;
  v14 = v0[6];
  v15 = [v12 account];
  v16 = [v14 account];
  v17 = v16;
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (!v16)
  {
    v17 = v15;
LABEL_14:

    goto LABEL_15;
  }

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDAccount, IMDAccount_ptr);
  v18 = static NSObject.== infix(_:_:)();

  if ((v18 & 1) == 0)
  {
LABEL_15:
    v20 = v0[6];
    v21 = v13;
    v22 = [v20 account];
    v23 = [v22 accountID];

    if (!v23)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      v23 = String._bridgeToObjectiveC()();
      v25, v26;
    }

    [v21 setAccountID:v23];

    v27 = [objc_opt_self() sharedInstance];
    [v27 storeChat:v21];
  }

LABEL_18:
  v28 = v13;
  v29 = LiteMessageServiceSession.hasExistingMessageWithLiteIdentifier(_:in:)();

  if (v29)
  {
    v32 = v0[12];
    v31 = v0[13];
    v33 = v0[11];
    v34 = v0[8];
    v35 = v0[5];
    v11, v30;

    v36 = Logger.liteSession.unsafeMutableAddressor();
    (*(v32 + 16))(v31, v36, v33);
    outlined init with copy of LiteMessageContext(v35, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[12];
    v41 = v0[13];
    v42 = v0[11];
    v43 = v0[8];
    if (v39)
    {
      v154 = v0[13];
      v44 = swift_slowAlloc();
      v156 = v28;
      v45 = swift_slowAlloc();
      v158[0] = v45;
      *v44 = 136315138;
      v46 = *v43;
      v47 = v43[1];

      outlined destroy of LiteMessageContext(v43);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v158);
      v47, v49;
      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v37, v38, "Already received message with identifier %s, dropping incoming message", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v28 = v156;

      (*(v40 + 8))(v154, v42);
    }

    else
    {

      outlined destroy of LiteMessageContext(v43);
      (*(v40 + 8))(v41, v42);
    }

LABEL_64:

    v147 = v0[1];

    return v147(v28);
  }

  v155 = v11;
  v50 = v0[5];
  v51 = 48;
  if (v7)
  {
    v51 = 32;
  }

  v52 = 56;
  if (v7)
  {
    v52 = 40;
  }

  v53 = *(v50 + v51);
  v54 = *(v50 + v52);

  v157 = v28;
  v55 = v28;
  v56._countAndFlagsBits = v53;
  v56._object = v54;
  IMDChat.updateLastAddressedHandleWithMatchingSIM(to:)(v56);
  v54, v57;

  v58 = *(v50 + 40);
  v59 = String._bridgeToObjectiveC()();
  v60 = Data._bridgeToObjectiveC()().super.isa;
  v61 = String._bridgeToObjectiveC()();
  v62 = Date._bridgeToObjectiveC()().super.isa;
  v63 = objc_opt_self();
  v0[2] = 0;
  v64 = [v63 messageItemWithLiteIdentifier:v59 liteData:v60 senderID:v61 date:v62 error:v0 + 2];

  v65 = v0[2];
  if (v64)
  {
    v66 = v0[5];
    if (v7)
    {
      v67 = 0x80000009005;
      v68 = 36869;
    }

    else
    {
      v58 = *(v66 + 56);
      v67 = 0x80000000001;
      v68 = 1;
    }

    v73 = v0[7];

    v74 = v65;
    v75 = v64;
    v76 = String._bridgeToObjectiveC()();
    v58, v77;
    [v75 setDestinationCallerID:v76];

    v78 = *(v66 + *(v73 + 40));
    if (v78)
    {
      v79 = v67;
    }

    else
    {
      v79 = v68;
    }

    [v75 setFlags:v79];
    v80 = v55;
    result = [v80 chatIdentifier];
    if (result)
    {
      v81 = result;
      v82 = v0[6];

      [v82 didReceiveMessage:v75 forChat:v81 style:45 fromIDSID:0];
      if ((v78 & 1) == 0)
      {
        result = [v80 recipient];
        if (!result)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v83 = result;
        v84 = [result cachedOffGridMode];

        if ((v84 & 1) == 0)
        {
          v85 = v0[5];
          v86 = v7;
          if (!*(v85 + *(v0[7] + 44)))
          {
            v86 = 1;
          }

          if ((v86 & 1) == 0)
          {
            v87 = v0[16];
            v89 = v0[11];
            v88 = v0[12];
            v90 = v0[10];
            v91 = Logger.liteSession.unsafeMutableAddressor();
            (*(v88 + 16))(v87, v91, v89);
            outlined init with copy of LiteMessageContext(v85, v90);
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v92, v93))
            {
              v152 = v93;
              v94 = swift_slowAlloc();
              v158[0] = swift_slowAlloc();
              *v94 = 136315394;
              result = [v80 chatIdentifier];
              if (!result)
              {
LABEL_71:
                __break(1u);
                return result;
              }

              v95 = result;
              v96 = v0[12];
              v148 = v0[11];
              v149 = v0[16];
              v97 = v0[10];
              v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v100 = v99;

              v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v158);
              v100, v102;
              *(v94 + 4) = v101;
              *(v94 + 12) = 2080;
              v103 = *v97;
              v104 = v97[1];

              outlined destroy of LiteMessageContext(v97);
              v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, v158);
              v104, v106;
              *(v94 + 14) = v105;
              _os_log_impl(&dword_0, v92, v152, "Downgrading chat: %s to iMessage Lite as we received a message while on-grid: %s", v94, 0x16u);
              swift_arrayDestroy();

              (*(v96 + 8))(v149, v148);
            }

            else
            {
              v107 = v0[16];
              v109 = v0[11];
              v108 = v0[12];
              v110 = v0[10];

              outlined destroy of LiteMessageContext(v110);
              (*(v108 + 8))(v107, v109);
            }

            [v80 setWasDowngradedToLiteMessage:1];
          }
        }
      }

      if ([v80 wasDowngradedToLiteMessage])
      {
        v111 = v0[5];
        if (!*(v111 + *(v0[7] + 44)))
        {
          v112 = v0[15];
          v114 = v0[11];
          v113 = v0[12];
          v115 = v0[9];
          v116 = Logger.liteSession.unsafeMutableAddressor();
          (*(v113 + 16))(v112, v116, v114);
          outlined init with copy of LiteMessageContext(v111, v115);
          v117 = Logger.logObject.getter();
          v118 = static os_log_type_t.default.getter();
          v119 = os_log_type_enabled(v117, v118);
          v120 = v0[15];
          v122 = v0[11];
          v121 = v0[12];
          v123 = v0[9];
          if (v119)
          {
            v124 = swift_slowAlloc();
            v153 = v120;
            v125 = swift_slowAlloc();
            v158[0] = v125;
            *v124 = 136315138;
            v150 = *v123;
            v151 = v122;
            v126 = v123[1];

            outlined destroy of LiteMessageContext(v123);
            v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v126, v158);
            v126, v128;
            *(v124 + 4) = v127;
            _os_log_impl(&dword_0, v117, v118, "Clearing downgrade flag as the preferred service is iMessage %s", v124, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v125);

            (*(v121 + 8))(v153, v151);
          }

          else
          {

            outlined destroy of LiteMessageContext(v123);
            (*(v121 + 8))(v120, v122);
          }

          [v80 setWasDowngradedToLiteMessage:0];
        }
      }

      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v129 = result;
        v130 = [result anySessionForServiceName:IMServiceNameiMessage];

        if (!v130)
        {
          v135 = v0[14];
          v136 = v0[11];
          v137 = v0[12];

          v155, v138;
          v139 = Logger.liteSession.unsafeMutableAddressor();
          (*(v137 + 16))(v135, v139, v136);
          v140 = Logger.logObject.getter();
          v141 = static os_log_type_t.error.getter();
          v142 = os_log_type_enabled(v140, v141);
          v143 = v0[14];
          v144 = v0[11];
          v145 = v0[12];
          if (v142)
          {
            v146 = swift_slowAlloc();
            *v146 = 0;
            _os_log_impl(&dword_0, v140, v141, "No iMessage service session found for preferred service request", v146, 2u);
          }

          else
          {
          }

          (*(v145 + 8))(v143, v144);
          goto LABEL_63;
        }

        v131 = String._bridgeToObjectiveC()();
        v132 = v80;
        result = [v132 chatIdentifier];
        if (result)
        {
          v133 = result;

          v155, v134;
          [v130 deleteExistingMessageAwaitingReplacementWithFallbackHash:v131 chatIdentifier:v133];

LABEL_63:
          v28 = v157;
          goto LABEL_64;
        }

        goto LABEL_69;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v69 = v65;
  v155, v70;

  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_30:

  v71 = v0[1];

  return v71();
}

id IDSOffGridEncryptedMessage.pendingMessageCountForHandle.getter(SEL *a1)
{
  v3 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v3 respondsToSelector:*a1])
  {
    v8 = [v3 *a1];
    v9 = [v8 integerValue];

    return v9;
  }

  else
  {
    v11 = Logger.liteSession.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v11, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "IDSOffGridEncryptedMessage does not have pending message count", v14, 2u);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

uint64_t outlined destroy of LiteMessageContext(uint64_t a1)
{
  v2 = type metadata accessor for LiteMessageContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of LiteMessageContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiteMessageContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

iMessageLite::LiteMessageEffect_optional __swiftcall LiteMessageEffect.init(expressiveSendStyleID:)(Swift::String_optional expressiveSendStyleID)
{
  object = expressiveSendStyleID.value._object;
  countAndFlagsBits = expressiveSendStyleID.value._countAndFlagsBits;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (!object)
  {
    v4, v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11, v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12, v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13, v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14, v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15, v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16, v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17, v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18, v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19, v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20, v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21, v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22, v22;
    return 13;
  }

  if (v3 == countAndFlagsBits && v4 == object)
  {
    object, v4;
    v10 = v5;
    goto LABEL_11;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v8;
  if (v7)
  {
    v10 = object;
LABEL_11:
    v10, v9;
    return 0;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == countAndFlagsBits && v25 == object)
  {
    object, v25;
    v31 = v26;
    goto LABEL_19;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v26, v29;
  if (v28)
  {
    v31 = object;
LABEL_19:
    v31, v30;
    return 1;
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  if (v32 == countAndFlagsBits && v33 == object)
  {
    object, v33;
    v39 = v34;
    goto LABEL_27;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v34, v37;
  if (v36)
  {
    v39 = object;
LABEL_27:
    v39, v38;
    return 2;
  }

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  if (v40 == countAndFlagsBits && v41 == object)
  {
    object, v41;
    v44 = v42;
LABEL_33:
    v44, v43;
    return 3;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v42, v46;
  if (v45)
  {
    v44 = object;
    goto LABEL_33;
  }

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;
  if (v47 == countAndFlagsBits && v48 == object)
  {
    object, v48;
    v51 = v49;
LABEL_39:
    v51, v50;
    return 4;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v49, v53;
  if (v52)
  {
    v51 = object;
    goto LABEL_39;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;
  if (v54 == countAndFlagsBits && v55 == object)
  {
    object, v55;
    v58 = v56;
LABEL_45:
    v58, v57;
    return 5;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v56, v60;
  if (v59)
  {
    v58 = object;
    goto LABEL_45;
  }

  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;
  if (v61 == countAndFlagsBits && v62 == object)
  {
    object, v62;
    v65 = v63;
LABEL_51:
    v65, v64;
    return 6;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v63, v67;
  if (v66)
  {
    v65 = object;
    goto LABEL_51;
  }

  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;
  if (v68 == countAndFlagsBits && v69 == object)
  {
    object, v69;
    v72 = v70;
LABEL_57:
    v72, v71;
    return 7;
  }

  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v70, v74;
  if (v73)
  {
    v72 = object;
    goto LABEL_57;
  }

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;
  if (v75 == countAndFlagsBits && v76 == object)
  {
    object, v76;
    v79 = v77;
LABEL_63:
    v79, v78;
    return 8;
  }

  v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v77, v81;
  if (v80)
  {
    v79 = object;
    goto LABEL_63;
  }

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;
  if (v82 == countAndFlagsBits && v83 == object)
  {
    object, v83;
    v86 = v84;
LABEL_69:
    v86, v85;
    return 9;
  }

  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v84, v88;
  if (v87)
  {
    v86 = object;
    goto LABEL_69;
  }

  v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v90;
  if (v89 == countAndFlagsBits && v90 == object)
  {
    object, v90;
    v93 = v91;
LABEL_75:
    v93, v92;
    return 10;
  }

  v94 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v91, v95;
  if (v94)
  {
    v93 = object;
    goto LABEL_75;
  }

  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;
  if (v96 == countAndFlagsBits && v97 == object)
  {
    object, v97;
    v100 = v98;
LABEL_81:
    v100, v99;
    return 11;
  }

  v101 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v98, v102;
  if (v101)
  {
    v100 = object;
    goto LABEL_81;
  }

  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;
  if (v103 == countAndFlagsBits && v104 == object)
  {
    v104, v104;
    object, v106;
    return 12;
  }

  v107 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v105, v108;
  object, v109;
  if ((v107 & 1) == 0)
  {
    return 13;
  }

  return 12;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LiteMessageEffect()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LiteMessageEffect(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LiteMessageEffect@<X0>(Swift::Int *a1@<X0>, iMessageLite::LiteMessageEffect_optional *a2@<X8>)
{
  result = specialized LiteMessageEffect.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t specialized LiteMessageEffect.init(rawValue:)(uint64_t a1)
{
  if ((a1 - 1) >= 0xD)
  {
    return 13;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t lazy protocol witness table accessor for type LiteMessageEffect and conformance LiteMessageEffect()
{
  result = lazy protocol witness table cache variable for type LiteMessageEffect and conformance LiteMessageEffect;
  if (!lazy protocol witness table cache variable for type LiteMessageEffect and conformance LiteMessageEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageEffect and conformance LiteMessageEffect);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void IMMessageItem.canSendAsLiteMessage.getter()
{
  v1 = v0;
  v90 = type metadata accessor for Logger();
  v2 = *(v90 - 8);
  v3 = __chkstk_darwin(v90);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v90 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v90 - v10;
  __chkstk_darwin(v9);
  v13 = &v90 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &v90 - v15;
  v17 = [v1 guid];
  if (!v17)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v18 = v17;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  UUID.init(uuidString:)();
  v20, v21;
  v22 = type metadata accessor for UUID();
  LODWORD(v18) = (*(*(v22 - 8) + 48))(v16, 1, v22);
  outlined destroy of UUID?(v16);
  if (v18 == 1)
  {
    v23 = Logger.liteSession.unsafeMutableAddressor();
    v24 = v90;
    (*(v2 + 16))(v5, v23, v90);
    v25 = v1;
    v26 = Logger.logObject.getter();
    v1 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v1))
    {

      goto LABEL_18;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v91 = v28;
    *v27 = 136315138;
    v29 = [v25 guid];

    if (v29)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v91);
      v32, v34;
      *(v27 + 4) = v33;
      _os_log_impl(&dword_0, v26, v1, "IMItem invalid for sending, has malformed GUID %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);

LABEL_18:
      v61 = *(v2 + 8);
      v62 = v5;
LABEL_35:
      v61(v62, v24);
      return;
    }

    goto LABEL_37;
  }

  v35 = [v1 fileTransferGUIDs];
  v24 = v90;
  if (v35)
  {
    v36 = v35;
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = *(v37 + 16);
    v37, v39;
    if (v38)
    {
      v40 = Logger.liteSession.unsafeMutableAddressor();
      (*(v2 + 16))(v8, v40, v24);
      v41 = v1;
      v42 = Logger.logObject.getter();
      v1 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v1))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v91 = v44;
        *v43 = 136315138;
        v45 = [v41 guid];

        if (!v45)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v91);
        v48, v50;
        *(v43 + 4) = v49;
        _os_log_impl(&dword_0, v42, v1, "IMItem invalid for sending %s has file transfers", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
      }

      else
      {
      }

      v61 = *(v2 + 8);
      v62 = v8;
      goto LABEL_35;
    }
  }

  v51 = [v1 balloonBundleID];
  if (!v51)
  {
    goto LABEL_29;
  }

  v52 = [v1 balloonBundleID];
  if (!v52)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
    goto LABEL_22;
  }

  v53 = v52;
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;
  if (!v56)
  {
LABEL_22:
    v59, v58;
    goto LABEL_23;
  }

  if (v54 == v57 && v56 == v58)
  {
    v56, v58;
    v59, v60;
    goto LABEL_29;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v56, v75;
  v59, v76;
  if ((v74 & 1) == 0)
  {
LABEL_23:
    v63 = Logger.liteSession.unsafeMutableAddressor();
    (*(v2 + 16))(v11, v63, v24);
    v64 = v1;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v1 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v91 = v67;
      *v1 = 136315138;
      v68 = [v64 guid];

      if (!v68)
      {
LABEL_39:
        __break(1u);
LABEL_40:

        __break(1u);
        return;
      }

      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v91);
      v71, v73;
      *(v1 + 1) = v72;
      _os_log_impl(&dword_0, v65, v66, "IMItem invalid for sending %s has balloon plugin", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
    }

    else
    {
    }

    v61 = *(v2 + 8);
    v62 = v11;
    goto LABEL_35;
  }

LABEL_29:
  if ([v1 scheduleType])
  {
    v77 = Logger.liteSession.unsafeMutableAddressor();
    (*(v2 + 16))(v13, v77, v24);
    v1 = v1;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v78, v79))
    {

      v61 = *(v2 + 8);
      v62 = v13;
      goto LABEL_35;
    }

    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v91 = v81;
    *v80 = 136315394;
    v82 = [v1 guid];
    if (v82)
    {
      v83 = v82;
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, &v91);
      v86, v88;
      *(v80 + 4) = v87;
      *(v80 + 12) = 2048;
      v89 = [v1 scheduleType];

      *(v80 + 14) = v89;
      _os_log_impl(&dword_0, v78, v79, "IMItem invalid for sending %s, is a scheduled message of type: %lu", v80, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v81);

      (*(v2 + 8))(v13, v90);
      return;
    }

    goto LABEL_40;
  }
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void LiteMessageHeader.append(to:)(uint64_t a1, uint64_t a2, uint64_t a3, LiteMessageServiceSession *a4)
{
  v6 = a2;
  v7 = IMMessageItem.IMMessageItemContentType.rawValue.getter(a2);
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    do
    {
      if (v8 >= 8)
      {
        v9 = v8 & 7 | 8;
      }

      else
      {
        v9 = v8 & 7;
      }

      BitCollection.appendLeastSignificantBits(from:count:)(v9, 4u);
      v10 = v8 > 7;
      v8 >>= 3;
    }

    while (v10);
    if (!LiteMessageType.isCoreType.getter(v6))
    {
      if (a4)
      {
        v11 = a3;
      }

      else
      {
        v11 = 0;
      }

      if (a4)
      {
        v12 = a4;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      v13._countAndFlagsBits = v11;
      v13._object = v12;
      BitCollection.appendAsCompressedBytes(_:)(v13);
      v12, v14;
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageHeader(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageHeader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t LiteMessageSegmentStore.context.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  if (*(v0 + 112))
  {
  }

  if (specialized static LiteMessageSegmentStore.makePersistentContainer()())
  {
    v8 = v0;
    v9 = Logger.liteSegmentStore.unsafeMutableAddressor();
    (*(v2 + 16))(v7, v9, v1);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "Initializing model context", v12, 2u);
    }

    (*(v2 + 8))(v7, v1);
    type metadata accessor for ModelContext();
    swift_allocObject();
    *(v8 + 112) = ModelContext.init(_:)();
  }

  v14 = Logger.liteSegmentStore.unsafeMutableAddressor();
  (*(v2 + 16))(v5, v14, v1);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "No container available for context", v17, 2u);
  }

  (*(v2 + 8))(v5, v1);
  return 0;
}

uint64_t LiteMessageSegmentStore.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t LiteMessageSegmentStore.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t LiteMessageSegmentStore.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LiteMessageSegmentStore.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t LiteMessageSegmentStore.insertMessageSegment(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!LiteMessageSegmentStore.context.getter())
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  v11 = LiteMessageSegmentStore.hasExistingMessageSegment(for:)();
  if (v1)
  {
  }

  if (v11)
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    v13 = 8;
LABEL_9:
    *v12 = v13;
    swift_willThrow();
  }

  v16 = objc_opt_self();
  v48 = 0;
  v17 = [v16 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v48];
  v18 = v48;
  if (!v17)
  {
    v21 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    v13 = 1;
    goto LABEL_9;
  }

  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v19;

  v20 = IDSOffGridEncryptedMessage.consolidationIdentifier.getter();
  v43 = v22;
  v44 = v20;
  v45 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
  v42 = IDSOffGridEncryptedMessage.segmentNumber.getter();
  static Date.now.getter();
  v24 = v46;
  v23 = v47;
  outlined copy of Data._Representation(v46, v47);
  v25 = LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.__allocating_init(consolidationIdentifier:segmentNumber:dateReceived:data:)(v44, v43, v42, v10, v24, v23);
  lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  dispatch thunk of ModelContext.insert<A>(_:)();
  dispatch thunk of ModelContext.save()();
  v26 = Logger.liteSegmentStore.unsafeMutableAddressor();
  (*(v4 + 16))(v7, v26, v3);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    LODWORD(v45) = v28;
    v30 = v25;
    v31 = v29;
    v44 = swift_slowAlloc();
    v48 = v44;
    *v31 = 134218242;
    v32 = *(*v30 + 200);
    v43 = v27;
    v33 = v32();
    v42 = v31;
    *(v31 + 4) = v33;

    *(v31 + 6) = 2080;
    v35 = (*(*v30 + 152))(v34);
    v37 = v36;
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v48);
    v37, v39;
    v41 = v42;
    v40 = v43;
    *(v42 + 14) = v38;
    _os_log_impl(&dword_0, v40, v45, "Stored message segment %ld of %s", v41, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);

    outlined consume of Data._Representation(v46, v47);
  }

  else
  {
    outlined consume of Data._Representation(v24, v47);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError()
{
  result = lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError;
  if (!lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError;
  if (!lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError);
  }

  return result;
}

BOOL LiteMessageSegmentStore.hasExistingMessageSegment(for:)()
{
  v1 = type metadata accessor for Logger();
  v30 = *(v1 - 8);
  __chkstk_darwin(v1);
  v29 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMR);
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  if (LiteMessageSegmentStore.context.getter())
  {
    v26[1] = v1;
    v27 = v6;
    v13 = IDSOffGridEncryptedMessage.consolidationIdentifier.getter();
    if (v0)
    {
    }

    else
    {
      v17 = v13;
      v18 = v14;
      v19 = IDSOffGridEncryptedMessage.segmentNumber.getter();
      v26[0] = v26;
      v20 = __chkstk_darwin(v19);
      v26[-4] = v17;
      v26[-3] = v18;
      v26[-2] = v20;
      v33 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
      Predicate.init(_:)();
      v18, v21;
      v22 = v31;
      v23 = v32;
      (*(v32 + 16))(v5, v12, v31);
      (*(v23 + 56))(v5, 0, 1, v22);
      lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
      FetchDescriptor.init(predicate:sortBy:)();
      v24 = dispatch thunk of ModelContext.fetchCount<A>(_:)();

      (*(v28 + 8))(v8, v27);
      (*(v23 + 8))(v12, v22);
      return v24 > 0;
    }
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
  }

  return v15;
}

uint64_t closure #3 in LiteMessageSegmentStore.hasExistingMessageSegment(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v57 = a4;
  v44 = a3;
  v50 = a1;
  v63 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMR);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  __chkstk_darwin(v6);
  v55 = v42 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSiGMR);
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSiGAC5ValueVy_SiGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSiGAC5ValueVy_SiGGMR);
  v11 = *(v10 - 8);
  v61 = v10;
  v62 = v11;
  __chkstk_darwin(v10);
  v54 = v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMR);
  v22 = *(v21 - 8);
  v45 = v21;
  v46 = v22;
  __chkstk_darwin(v21);
  v24 = v42 - v23;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMR);
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = v42 - v25;
  v50 = *v50;
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v26 = *(v18 + 8);
  v42[1] = v18 + 8;
  v43 = v26;
  v26(v20, v17);
  v64 = a2;
  v65 = v44;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMR, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v27 = v45;
  v28 = v48;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v49 + 8))(v16, v28);
  (*(v46 + 8))(v24, v27);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v29 = v52;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v43(v20, v17);
  v64 = v57;
  v30 = v55;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSiGMR, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMR, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v31 = v54;
  v32 = v30;
  v33 = v56;
  v34 = v59;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v60 + 8))(v32, v34);
  (*(v58 + 8))(v29, v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0jI20SegmentStoreSchemaV1O0jiK0CGSSGAC5ValueVy_SSGGAGy_AIy_AQSiGATy_SiGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0jI20SegmentStoreSchemaV1O0jiK0CGSSGAC5ValueVy_SSGGAGy_AIy_AQSiGATy_SiGGGMR);
  v36 = v63;
  v63[3] = v35;
  v36[4] = lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>>> and conformance <> PredicateExpressions.Conjunction<A, B>();
  __swift_allocate_boxed_opaque_existential_0(v36);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMR, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSiGAC5ValueVy_SiGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSiGAC5ValueVy_SiGGMR, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v37 = v47;
  v38 = v31;
  v39 = v51;
  v40 = v61;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v62 + 8))(v38, v40);
  return (*(v53 + 8))(v37, v39);
}

uint64_t key path getter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t key path getter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

void *LiteMessageSegmentStore.messageSegments(for:)(unint64_t a1, uint64_t a2)
{
  v73 = a1;
  v3 = type metadata accessor for Logger();
  v75 = *(v3 - 8);
  v76 = v3;
  v4 = __chkstk_darwin(v3);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v10 = *(v74 - 8);
  __chkstk_darwin(v74);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMR);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v63 - v15);
  v17 = LiteMessageSegmentStore.context.getter();
  if (v17)
  {
    v18 = v17;
    v69 = v10;
    v66 = &v63;
    __chkstk_darwin(v17);
    *(&v63 - 2) = v73;
    *(&v63 - 1) = a2;
    v80[2] = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
    Predicate.init(_:)();
    v19 = *(v14 + 16);
    v78 = v16;
    v19(v9, v16, v13);
    v67 = v14;
    v68 = v13;
    (*(v14 + 56))(v9, 0, 1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGGMd, &_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVy12iMessageLite0eD20SegmentStoreSchemaV1O0edF0CGMd, &_s10Foundation14SortDescriptorVy12iMessageLite0eD20SegmentStoreSchemaV1O0edF0CGMR);
    *(swift_allocObject() + 16) = xmmword_53390;
    swift_getKeyPath();
    SortDescriptor.init<A>(_:order:)();
    lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
    FetchDescriptor.init(predicate:sortBy:)();
    v79 = v12;
    v65 = v18;
    v20 = v77;
    v21 = dispatch thunk of ModelContext.fetch<A>(_:)();
    if (v20)
    {
      v23 = v75;
      v22 = v76;
      v24 = v70;
      v25 = v74;
LABEL_24:
      v55 = Logger.liteSegmentStore.unsafeMutableAddressor();
      (*(v23 + 16))(v24, v55, v22);
      swift_errorRetain();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        swift_errorRetain();
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 4) = v60;
        *v59 = v60;
        _os_log_impl(&dword_0, v56, v57, "Failed to fetch segments: %@", v58, 0xCu);
        outlined destroy of TaskPriority?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      (*(v23 + 8))(v24, v22);
      lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
      swift_allocError();
      *v61 = 3;
      swift_willThrow();

      (*(v69 + 8))(v79, v25);
      return (*(v67 + 8))(v78, v68);
    }

    else
    {
      v28 = v21;
      v29 = Logger.liteSegmentStore.unsafeMutableAddressor();
      v31 = v75;
      v30 = v76;
      v32 = v72;
      (*(v75 + 16))(v72, v29, v76);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();
      a2, v35;
      LODWORD(v64) = v34;
      v36 = os_log_type_enabled(v33, v34);
      v37 = v74;
      v77 = v28;
      v71 = v28 >> 62;
      if (!v36)
      {

        v28, v43;
        (*(v31 + 8))(v32, v30);
        goto LABEL_10;
      }

      v38 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v80[0] = v32;
      *v38 = 134218242;
      if (v28 >> 62)
      {
        goto LABEL_32;
      }

      v40 = v77;
      v41 = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
LABEL_8:
      v42 = v73;
      *(v38 + 4) = v41;
      v40, v39;
      *(v38 + 12) = 2080;
      *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, a2, v80);
      _os_log_impl(&dword_0, v33, v64, "Fetched %ld segments of %s", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v32);

      (*(v75 + 8))(v72, v76);
LABEL_10:
      v33 = v68;
      a2 = v69;
      v44 = v67;
      if (v71)
      {
        while (1)
        {
          v38 = v77;
          v45 = _CocoaArrayWrapper.endIndex.getter();
          if (!v45)
          {
            break;
          }

LABEL_12:
          v80[0] = &_swiftEmptyArrayStorage;
          v33 = v80;
          specialized ContiguousArray.reserveCapacity(_:)();
          if (v45 < 0)
          {
            __break(1u);
LABEL_32:
            v40 = v77;
            v41 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_8;
          }

          v72 = type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
          v32 = type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSOffGridEncryptedMessage, IDSOffGridEncryptedMessage_ptr);
          v44 = 0;
          v46 = v38;
          v73 = v38 & 0xC000000000000001;
          v64 = v38 & 0xFFFFFFFFFFFFFF8;
          v71 = v45;
          while (1)
          {
            a2 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            if (v73)
            {
              v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v44 >= *(v64 + 16))
              {
                goto LABEL_28;
              }

              v47 = *&v46->state[8 * v44 + 24];
            }

            v48 = (*(*v47 + 296))();
            v50 = v49;
            v37 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
            outlined consume of Data._Representation(v48, v50);
            if (!v37)
            {
              v77, v51;
              v23 = v75;
              v22 = v76;
              lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
              swift_allocError();
              *v54 = 4;
              swift_willThrow();

              v25 = v74;
              v24 = v70;
              goto LABEL_24;
            }

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v44;
            v52 = a2 == v71;
            v33 = v78;
            v53 = v79;
            v46 = v77;
            if (v52)
            {
              v77, v77;

              (*(v69 + 8))(v53, v74);
              (*(v67 + 8))(v33, v68);
              return v80[0];
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
        }
      }

      else
      {
        v38 = v77;
        v45 = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
        if (v45)
        {
          goto LABEL_12;
        }
      }

      v38, v62;
      (*(a2 + 8))(v79, v37);
      (*(v44 + 8))(v78, v33);
      return &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    *v26 = 0;
    return swift_willThrow();
  }
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LiteMessageSegmentStore.countMessageSegments(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = type metadata accessor for Logger();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMR);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v27 - v13;
  v15 = LiteMessageSegmentStore.context.getter();
  if (v15)
  {
    v27[1] = v27;
    __chkstk_darwin(v15);
    v27[-2] = countAndFlagsBits;
    v27[-1] = object;
    v34 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
    Predicate.init(_:)();
    (*(v12 + 16))(v7, v14, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
    FetchDescriptor.init(predicate:sortBy:)();
    v16 = v28;
    v17 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
    if (v16)
    {
      v18 = Logger.liteSegmentStore.unsafeMutableAddressor();
      (*(v32 + 16))(v31, v18, v33);
      swift_errorRetain();
      object = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(object, v19))
      {
        v20 = swift_slowAlloc();
        v28 = v11;
        v21 = v20;
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        swift_errorRetain();
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v23;
        *v22 = v23;
        _os_log_impl(&dword_0, object, v19, "Failed to fetch count: %@", v21, 0xCu);
        outlined destroy of TaskPriority?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        v11 = v28;
      }

      (*(v32 + 8))(v31, v33);
      lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
      swift_allocError();
      *v24 = 6;
      swift_willThrow();

      (*(v29 + 8))(v10, v30);
      (*(v12 + 8))(v14, v11);
    }

    else
    {
      object = v17;

      (*(v29 + 8))(v10, v30);
      (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }

  return object;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LiteMessageSegmentStore.deleteMessageSegments(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = type metadata accessor for Logger();
  v51 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMR);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v15 = LiteMessageSegmentStore.context.getter();
  if (v15)
  {
    v48 = &v43;
    v49 = v3;
    v16 = __chkstk_darwin(v15);
    *(&v43 - 2) = countAndFlagsBits;
    *(&v43 - 1) = object;
    v44 = object;
    v17 = v16;
    v52[2] = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
    Predicate.init(_:)();
    (*(v12 + 16))(v10, v14, v11);
    v18 = *(v12 + 56);
    v46 = v11;
    v18(v10, 0, 1, v11);
    lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
    v47 = v17;
    v19 = v50;
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    if (v19)
    {
      outlined destroy of TaskPriority?(v10, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
      v20 = Logger.liteSegmentStore.unsafeMutableAddressor();
      v21 = v51;
      v22 = v49;
      (*(v51 + 16))(v6, v20, v49);
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        swift_errorRetain();
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&dword_0, v23, v24, "Failed to delete segments: %@", v25, 0xCu);
        outlined destroy of TaskPriority?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v22 = v49;

        v21 = v51;
      }

      (*(v21 + 8))(v6, v22);
      lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
      swift_allocError();
      *v28 = 3;
      swift_willThrow();

      (*(v12 + 8))(v14, v46);
    }

    else
    {
      v43 = countAndFlagsBits;
      outlined destroy of TaskPriority?(v10, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
      v30 = Logger.liteSegmentStore.unsafeMutableAddressor();
      v31 = v51;
      v32 = v45;
      v33 = v49;
      (*(v51 + 16))(v45, v30, v49);
      v34 = v44;

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      v34, v37;
      v50 = v35;
      if (os_log_type_enabled(v35, v36))
      {
        v38 = swift_slowAlloc();
        v39 = v33;
        v40 = swift_slowAlloc();
        v52[0] = v40;
        *v38 = 136315138;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v52);
        v41 = v36;
        v42 = v50;
        _os_log_impl(&dword_0, v50, v41, "Deleted segments of %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);

        (*(v31 + 8))(v32, v39);
      }

      else
      {

        (*(v31 + 8))(v32, v33);
      }

      (*(v12 + 8))(v14, v46);
    }
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }
}

uint64_t closure #4 in LiteMessageSegmentStore.messageSegments(for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMR);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMR);
  a4[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_0(a4);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMR, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v17 = v21;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

Swift::Void __swiftcall LiteMessageSegmentStore.deleteAbandonedMessageSegments()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v61 = &v52[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __chkstk_darwin(v2);
  v6 = &v52[-v5];
  __chkstk_darwin(v4);
  v60 = &v52[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v52[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMR);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52[-v13];
  v15 = type metadata accessor for Date();
  v62 = *(v15 - 8);
  v63 = v15;
  v16 = __chkstk_darwin(v15);
  v55 = &v52[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v52[-v18];
  v20 = LiteMessageSegmentStore.context.getter();
  if (v20)
  {
    v21 = v20;
    v64 = v1;
    v65 = v0;
    v22 = Date.init(timeIntervalSinceNow:)();
    v56 = v52;
    __chkstk_darwin(v22);
    *&v52[-16] = v19;
    v66[2] = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
    Predicate.init(_:)();
    v23 = *(v12 + 16);
    v57 = v14;
    v23(v10, v14, v11);
    v58 = v12;
    v59 = v11;
    (*(v12 + 56))(v10, 0, 1, v11);
    lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    outlined destroy of TaskPriority?(v10, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
    v31 = Logger.liteSegmentStore.unsafeMutableAddressor();
    v32 = v64;
    v33 = v60;
    (*(v64 + 16))(v60, v31, v65);
    v34 = v62;
    v35 = v63;
    v36 = v55;
    (*(v62 + 16))(v55, v19, v63);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v19;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v61 = v21;
      v42 = v41;
      v54 = swift_slowAlloc();
      v66[0] = v54;
      *v42 = 136315138;
      lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v53 = v38;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      v46 = v36;
      v47 = *(v34 + 8);
      v62 = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v47(v46, v35);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v66);
      v45, v49;
      *(v42 + 4) = v48;
      _os_log_impl(&dword_0, v37, v53, "Deleted segments older than %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);

      (*(v32 + 8))(v60, v65);
      (*(v58 + 8))(v57, v59);
      v47(v40, v35);
    }

    else
    {

      v50 = v36;
      v51 = *(v34 + 8);
      v51(v50, v35);
      (*(v32 + 8))(v33, v65);
      (*(v58 + 8))(v57, v59);
      v51(v19, v35);
    }
  }

  else
  {
    v24 = Logger.liteSegmentStore.unsafeMutableAddressor();
    (*(v1 + 16))(v6, v24, v0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
      swift_allocError();
      *v29 = 0;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_0, v25, v26, "Failed to delete abandoned message segments: %@", v27, 0xCu);
      outlined destroy of TaskPriority?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    (*(v1 + 8))(v6, v0);
  }
}

uint64_t closure #4 in LiteMessageSegmentStore.deleteAbandonedMessageSegments()@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23[1] = a2;
  v25 = a3;
  v24 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v23[0] = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMR);
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGAA4DateVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGAA4DateVGMR);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v23 - v15;
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  type metadata accessor for Date();
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = v23[0];
  v18 = v24;
  (*(v23[0] + 104))(v4, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v24);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGAA4DateVGAC5ValueVy_AQGGMd, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGAA4DateVGAC5ValueVy_AQGGMR);
  v20 = v25;
  v25[3] = v19;
  v20[4] = lazy protocol witness table accessor for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>();
  __swift_allocate_boxed_opaque_existential_0(v20);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGAA4DateVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGAA4DateVGMR, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMR, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v21 = v26;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v17 + 8))(v4, v18);
  (*(v27 + 8))(v8, v21);
  return (*(v14 + 8))(v16, v13);
}

uint64_t key path setter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 256))(v6);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LiteMessageSegmentStore.deleteStore()()
{
  v94 = type metadata accessor for Logger();
  v83 = *(v94 - 8);
  v1 = __chkstk_darwin(v94);
  v93 = v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v81[0] = v81 - v3;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for URL();
  v8 = *(v86 - 8);
  v9 = __chkstk_darwin(v86);
  v82 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = v81 - v12;
  __chkstk_darwin(v11);
  v15 = v81 - v14;
  *(v0 + 112) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_53C40;
  v16 = IMSMSDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v95 = 0x8000000000056340;
  v97 = 0xD000000000000013;
  v98 = 0x8000000000056340;
  LODWORD(v92) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v17 = *(v5 + 104);
  v90 = v5 + 104;
  v91 = v17;
  v84 = v4;
  (v17)(v7);
  v89 = lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  v18 = *(v5 + 8);
  v87 = v5 + 8;
  v88 = v18;
  v18(v7, v4);
  v19 = *(v8 + 8);
  v20 = v86;
  v19(v13, v86);
  v21 = URL.path.getter();
  v23 = v22;
  v24 = v15;
  v25 = v20;
  v19(v24, v20);
  v26 = inited;
  v27 = inited;
  *(inited + 32) = v21;
  v81[1] = v27 + 32;
  *(v26 + 40) = v23;
  v28 = IMSMSDirectoryURL();
  v29 = v82;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v97 = 0xD000000000000013;
  v98 = v95;
  v30 = v84;
  (v91)(v7, v92, v84);
  URL.appending<A>(path:directoryHint:)();
  v88(v7, v30);
  v19(v29, v25);
  v31 = URL.path.getter();
  v33 = v32;
  v19(v13, v25);
  v97 = v31;
  v98 = v33;

  v34._countAndFlagsBits = 1835561773;
  v34._object = 0xE400000000000000;
  String.append(_:)(v34);
  v33, v35;
  v36 = v98;
  v37 = inited;
  *(inited + 48) = v97;
  *&v37->state[48] = v36;
  v38 = IMSMSDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v97 = 0xD000000000000013;
  v98 = v95;
  v39 = v84;
  (v91)(v7, v92, v84);
  URL.appending<A>(path:directoryHint:)();
  v88(v7, v39);
  v40 = v86;
  v19(v29, v86);
  v41 = URL.path.getter();
  v43 = v42;
  v44 = v13;
  v45 = v37;
  v19(v44, v40);
  v97 = v41;
  v98 = v43;

  v46._countAndFlagsBits = 1818326829;
  v46._object = 0xE400000000000000;
  String.append(_:)(v46);
  v43, v47;
  v48 = v98;
  *&v37->state[56] = v97;
  *v37[1].IMDAppleServiceSession_opaque = v48;
  v95 = objc_opt_self();
  v49 = 0;
  v50 = (v83 + 16);
  v51 = (v83 + 8);
  *&v52 = 138412290;
  v92 = v52;
  v91 = (v83 + 16);
  while (1)
  {
    v54 = *&v45->state[v49 + 32];

    v55 = [(LiteMessageServiceSession *)v95 defaultManager];
    v56 = String._bridgeToObjectiveC()();
    v54, v57;
    v97 = 0;
    v58 = [v55 removeItemAtPath:v56 error:&v97];

    if (!v58)
    {
      break;
    }

    v53 = v97;
LABEL_3:
    v49 += 16;
    if (v49 == 48)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }
  }

  v59 = v97;
  v60 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v97 = v60;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
  if (!swift_dynamicCast())
  {
    v45, v61;
    goto LABEL_16;
  }

  v62 = v96;
  if ([v96 code] == &dword_4)
  {
    v64 = Logger.liteSegmentStore.unsafeMutableAddressor();
    (*v50)(v93, v64, v94);
    v65 = v62;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v51;
      v70 = v45;
      v71 = swift_slowAlloc();
      *v68 = v92;
      *(v68 + 4) = v65;
      *v71 = v65;
      v72 = v65;
      _os_log_impl(&dword_0, v66, v67, "File not found, ignoring error: %@", v68, 0xCu);
      outlined destroy of TaskPriority?(v71, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v45 = v70;
      v51 = v69;
      v50 = v91;
    }

    else
    {
      v72 = v66;
      v66 = v65;
    }

    (*v51)(v93, v94);

    goto LABEL_3;
  }

  v45, v63;
  v73 = Logger.liteSegmentStore.unsafeMutableAddressor();
  v74 = v81[0];
  (*v50)(v81[0], v73, v94);
  v75 = v62;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v78 = v92;
    *(v78 + 4) = v75;
    *v79 = v75;
    v80 = v75;
    _os_log_impl(&dword_0, v76, v77, "Error removing file: %@", v78, 0xCu);
    outlined destroy of TaskPriority?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  (*v51)(v74, v94);
  swift_willThrow();
LABEL_16:
}

uint64_t getEnumTagSinglePayload for LiteMessageSegmentStoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageSegmentStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}