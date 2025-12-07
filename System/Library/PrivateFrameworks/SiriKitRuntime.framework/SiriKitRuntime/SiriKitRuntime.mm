unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in AsyncSerialQueue.runAll()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = a1[2];
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 56);
    v9 = *(v4 + 40);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    swift_endAccess();

    a1[4] = v5;
    a1[5] = v9;

    v8 = v9;
  }

  else
  {
    a1[3] = 0;

    v5 = 0;
    v6 = 0;
    v8 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 24) = v6;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v3, 0);
}

uint64_t ConversationMessageDispatchingBridgeBase.getHandleMethod(_:)(void *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - v5;
  v23[0] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B4BaseCmMd, &_s16SiriMessageTypes0B4BaseCmMR);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  v10 = *(*v1 + 152);

  v12 = v10(v11);
  v23[0] = v7;
  v23[1] = v9;
  v15 = type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase(0, *(v3 + 80), v13, v14);
  MEMORY[0x1E12A1380](&v24, v23, v12, MEMORY[0x1E69E6158], v15, MEMORY[0x1E69E6168]);

  v16 = v24;
  if (!v24)
  {
    v23[3] = type metadata accessor for MessageBase();
    v23[0] = a1;
    v17 = a1;
    Mirror.init(reflecting:)();
    v18 = type metadata accessor for Mirror();
    (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
    v16 = ConversationMessageDispatchingBridgeBase.findRegisterMethod(_:)(v6);
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
    v22[1] = v9;
    v22[2] = v16;
    v22[0] = v7;
    v19 = *(*v1 + 168);

    v20 = v19(v23);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v20(v23, 0);
  }

  return v16;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t protocol witness for Bridge.name.getter in conformance ConversationBridgeSPI()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ConversationBridgeSPI.handleMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v17 = 0xD000000000000014;
  v18 = 0x80000001DCA7EAA0;
  swift_getObjectType();
  v9 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v9);

  MEMORY[0x1E12A1580](0xD000000000000011, 0x80000001DCA7EAC0);
  MessageBase.messageId.getter();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v10);

  (*(v5 + 8))(v7, v4);
  v11 = v17;
  v12 = v18;
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  v14 = *(*v8 + 208);

  v15 = a1;
  v14(v11, v12, &async function pointer to partial apply for closure #1 in ConversationBridgeSPI.handleMessage(_:), v13);
}

uint64_t sub_1DC65C4A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void AsyncSerialQueue.add(taskName:work:)()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t closure #1 in AsyncSerialQueue.add(taskName:work:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v32 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = a1[5];
  if (v12)
  {
    v29 = &v28 - v10;
    v13 = a1[4];

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v5;
      v18 = v17;
      v31[0] = v17;
      *v16 = 136446722;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, a3, v31);
      *(v16 + 12) = 2082;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[7], a1[8], v31);
      *(v16 + 22) = 2080;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v31);

      *(v16 + 24) = v19;
      _os_log_impl(&dword_1DC659000, v14, v15, "Adding workItem: %{public}s to queue: %{public}s, which is currently executing task: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    else
    {
    }

    v11 = v29;
  }

  swift_beginAccess();
  v20 = a1[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a1[2] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    a1[2] = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
  }

  *(v20 + 2) = v23 + 1;
  v24 = &v20[32 * v23];
  *(v24 + 4) = v32;
  *(v24 + 5) = a3;
  *(v24 + 6) = v30;
  *(v24 + 7) = a5;
  a1[2] = v20;
  result = swift_endAccess();
  if (!a1[3])
  {
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = a1;

    a1[3] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in AsyncSerialQueue.runAll(), v27);
  }

  return result;
}

uint64_t sub_1DC65CA20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void ConversationMessageDispatchingBridgeBase.MessageHandler.handleMethod(_:_:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v9 = v42;
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v2 + 16);
      v13 = a2;
      v14 = v12(v9);
      v14(v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = a2;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v43 = v41;
        *v28 = 136315650;
        HIDWORD(v40) = v27;
        MessageBase.messageId.getter();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        (*(v6 + 8))(v8, v5);
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v43);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        swift_getObjectType();
        v33 = _typeName(_:qualified:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v43);

        *(v28 + 14) = v35;
        *(v28 + 22) = 2080;
        v36 = _typeName(_:qualified:)();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v43);

        *(v28 + 24) = v38;
        _os_log_impl(&dword_1DC659000, v26, BYTE4(v40), "Input message %s of type %s is not of type %s", v28, 0x20u);
        v39 = v41;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v39, -1, -1);
        MEMORY[0x1E12A2F50](v28, -1, -1);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v17 = 136315394;
      swift_getObjectType();
      v19 = _typeName(_:qualified:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v43);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = _typeName(_:qualified:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v43);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1DC659000, v15, v16, "Handler invoking object is of type %s and not of type %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }
  }
}

uint64_t closure #1 in ConversationBridgeSPI.handleMessage(_:)()
{
  (*(**(v0[5] + 24) + 256))(v0[6]);
  v1 = v0[1];

  return v1();
}

void ConversationRequestAwareBridgeBase.handleMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = direct field offset for ConversationMessageDispatchingBridgeBase.logger;
  v9 = a1;
  v94 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v92 = v5;
  v93 = v4;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v95[0] = v14;
    *v13 = 136315138;
    MessageBase.messageId.getter();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v4;
    v18 = v17;
    (*(v5 + 8))(v7, v16);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v18, v95);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1DC659000, v10, v11, "Handling message id: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  type metadata accessor for RequestMessageBase();
  v20 = swift_dynamicCastClass();
  v21 = v20;
  if (!v20)
  {
    goto LABEL_12;
  }

  v22 = *(v2 + direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase);
  MEMORY[0x1EEE9AC00](v20);
  *(&v91 - 2) = v21;
  v23 = v9;
  os_unfair_lock_lock(v22 + 6);
  partial apply for closure #1 in ConversationRequestAwareBridgeBase.handleMessage(_:)(&v22[4], v95);
  os_unfair_lock_unlock(v22 + 6);

  if ((v95[0] & 1) == 0)
  {
    if ((*(v2 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) & 1) == 0)
    {

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v95[0] = v38;
        *v37 = 136315138;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), v95);
        _os_log_impl(&dword_1DC659000, v35, v36, "Bridge: %s did not register any start request message so not handling any RequestMessageBase messages", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x1E12A2F50](v38, -1, -1);
        MEMORY[0x1E12A2F50](v37, -1, -1);
      }

      goto LABEL_17;
    }

    swift_getObjectType();
    v32 = swift_conformsToProtocol2();
    if (v32 && v23)
    {
      v33 = v32;
      v34 = v23;
      ConversationRequestAwareBridgeBase.handleStartRequestInternal(_:)(v34, v33);
LABEL_20:

      goto LABEL_21;
    }

    type metadata accessor for EndRequestMessageBase();
    v39 = swift_dynamicCastClass();
    if (v39)
    {
      v40 = v39;
      v34 = v23;
      ConversationRequestAwareBridgeBase.handleEndRequestInternal(_:)(v40);
      goto LABEL_20;
    }

    v41 = specialized static CandidateRequestMessage.from(_:)(v21);
    if ((~v41 & 0xF000000000000007) != 0)
    {
      v51 = v41;
      v52 = v23;
      ConversationRequestAwareBridgeBase.handleCandidateRequestMessageInternal(_:)(v51);

      outlined consume of CandidateRequestMessage?(v51);
      return;
    }

    v42 = (*v2 + 376);
    v43 = *v42;
    v44 = (*v42)();
    if (v44)
    {
      v46 = *(v44 + 64);
      v45 = *(v44 + 72);

      v47 = RequestMessageBase.requestId.getter();
      v49 = v93;
      if (v45)
      {
        if (v46 == v47 && v45 == v48)
        {

          goto LABEL_38;
        }

        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v72)
        {
LABEL_38:
          v73 = (v43)(v50);
          if (v73)
          {
            (*(*v2 + 496))(v21, v73);
          }

LABEL_17:

          return;
        }

LABEL_31:
        if ((*(v2 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) & 1) == 0)
        {
          if (!(v43)(v50))
          {
            v34 = v23;
            v74 = Logger.logObject.getter();
            v75 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v95[0] = v77;
              *v76 = 136315650;
              MessageBase.messageId.getter();
              _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
              v78 = dispatch thunk of CustomStringConvertible.description.getter();
              v79 = v49;
              v81 = v80;
              (*(v92 + 8))(v7, v79);
              v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v81, v95);

              *(v76 + 4) = v82;
              *(v76 + 12) = 2080;
              swift_getObjectType();
              v83 = _typeName(_:qualified:)();
              v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v95);

              *(v76 + 14) = v85;
              *(v76 + 22) = 2080;
              v86 = RequestMessageBase.requestId.getter();
              v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v95);

              *(v76 + 24) = v88;
              _os_log_impl(&dword_1DC659000, v74, v75, "Receiving message id: %s of type: %s for request Id: %s but current request id not set", v76, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v77, -1, -1);
              MEMORY[0x1E12A2F50](v76, -1, -1);
            }

            goto LABEL_21;
          }
        }

        v34 = v23;

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v53, v54))
        {
          LODWORD(v94) = v54;
          v55 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v95[0] = v91;
          *v55 = 136315906;
          MessageBase.messageId.getter();
          _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v56 = dispatch thunk of CustomStringConvertible.description.getter();
          v57 = v49;
          v59 = v58;
          (*(v92 + 8))(v7, v57);
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v59, v95);

          *(v55 + 4) = v60;
          *(v55 + 12) = 2080;
          swift_getObjectType();
          v61 = _typeName(_:qualified:)();
          v63 = v43;
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v95);

          *(v55 + 14) = v64;
          *(v55 + 22) = 2080;
          v65 = RequestMessageBase.requestId.getter();
          v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v95);

          *(v55 + 24) = v67;
          *(v55 + 32) = 2080;
          v69 = (v63)(v68);
          if (v69)
          {
            v71 = *(v69 + 64);
            v70 = *(v69 + 72);
          }

          else
          {
            v70 = 0xE700000000000000;
            v71 = 0x74657320746F4ELL;
          }

          v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v70, v95);

          *(v55 + 34) = v89;
          _os_log_impl(&dword_1DC659000, v53, v94, "Receiving message id: %s of type: %s for request Id: %s but current request id: %s", v55, 0x2Au);
          v90 = v91;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v90, -1, -1);
          MEMORY[0x1E12A2F50](v55, -1, -1);
        }

LABEL_21:
        return;
      }
    }

    else
    {
      RequestMessageBase.requestId.getter();
      v49 = v93;
    }

    goto LABEL_31;
  }

  v24 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v95[0] = v28;
    *v27 = 136315138;
    swift_getObjectType();
    v29 = _typeName(_:qualified:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v95);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1DC659000, v25, v26, "RequestAware bridge handling request-scoped message %s outside of a request", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1E12A2F50](v28, -1, -1);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  else
  {
  }

LABEL_12:
  ConversationMessageDispatchingBridgeBase.handleMessage(_:)(v9);
}

uint64_t lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t outlined destroy of ReferenceResolutionClientProtocol?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t closure #1 in AsyncSerialQueue.runAll()()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 48);
  *(v0 + 56) = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = partial apply for closure #1 in closure #1 in AsyncSerialQueue.runAll();
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)((v0 + 16));
  *(v0 + 64) = 0;
  os_unfair_lock_unlock((*(v0 + 56) + 16));
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;

  if (v5)
  {
    v10 = (v4 + *v4);
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = closure #1 in AsyncSerialQueue.runAll();

    return v10();
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v4 + 16) = partial apply for closure #2 in closure #1 in AsyncSerialQueue.runAll();
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  if (v2)
  {
    os_unfair_lock_unlock((*(v0 + 56) + 16));
  }

  else
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    os_unfair_lock_unlock(v5 + 4);

    v7 = swift_task_alloc();
    *(v7 + 16) = partial apply for closure #1 in closure #1 in AsyncSerialQueue.runAll();
    *(v7 + 24) = v6;
    os_unfair_lock_lock(v5 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)((v0 + 16));
    *(v0 + 64) = 0;
    os_unfair_lock_unlock((*(v0 + 56) + 16));
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = *(v0 + 40);
    *(v0 + 72) = v10;
    *(v0 + 80) = v11;

    if (v10)
    {
      v14 = (v9 + *v9);
      v12 = swift_task_alloc();
      *(v0 + 88) = v12;
      *v12 = v0;
      v12[1] = closure #1 in AsyncSerialQueue.runAll();

      return v14();
    }

    else
    {
      v13 = *(v0 + 8);

      return v13();
    }
  }
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in AsyncSerialQueue.runAll(), 0, 0);
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);

  return v6(a1);
}

uint64_t closure #1 in ConversationBridgeSPI.handleMessage(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationBridgeSPI.handleMessage(_:), v3, 0);
}

uint64_t ConversationMessageDispatchingBridgeBase.handleMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v31);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&dword_1DC659000, v8, v9, "Bridge %s received message: %@", v10, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v14 = (*(*v2 + 264))(v7);
  if ((*(*v14 + 104))())
  {
    v15 = v7;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315394;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B4BaseCmMd, &_s16SiriMessageTypes0B4BaseCmMR);
      v20 = String.init<A>(describing:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v31);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v29 + 8))(v6, v4);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v31);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_1DC659000, v16, v17, "handleMessage got message type %s with message id: %s which is not registered with the bridge", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }
  }

  else
  {
    (*(*v14 + 88))(v2, v7);
  }
}

uint64_t partial apply for closure #1 in ConversationBridgeSPI.handleMessage(_:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationBridgeSPI.handleMessage(_:)(v2, v3);
}

double partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t partial apply for closure #1 in AsyncSerialQueue.runAll()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in AsyncSerialQueue.runAll()(a1, v4, v5, v6);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t destroy for WorkItem(uint64_t a1)
{
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ConversationBridge.handleStartSessionMessage(_:)(void *a1)
{
  v2 = v1;
  v40[1] = *v2;
  v4 = type metadata accessor for UUID();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v40 - v13;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.conversationBridge);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_1DC659000, v17, v18, "ExecutionBridge received message: %@", v19, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  type metadata accessor for ClearExecutionContext();
  v22 = swift_allocObject();
  SessionStartedMessage.userId.getter();
  v23 = type metadata accessor for UserID();
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  v24 = (*(*v2 + 992))(v14);
  (*(*v2 + 768))(v45, v24);
  v25 = v46;
  v26 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v27 = (*(*v2 + 792))();
  v28 = *(v26 + 32);
  v42 = v22;
  v28(v22, v27, &protocol witness table for NonRequestExecutionBridgeDelegate, v25, v26);

  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  if (AFIsInternalInstall() && (SessionStartedMessage.understandingOnDevice.getter() & 1) == 0)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
    v32 = v2[9];
    swift_getObjectType();
    swift_unknownObjectRetain();
    specialized static ConversationBridge.sendShowRequestHandlingStatus(withStatus:serviceHelper:requestId:completion:)(v29, v31, v32, 0, 0, 0, 0);

    swift_unknownObjectRelease();
  }

  v33 = direct field offset for ConversationBridge.isFirstRequestInSession;
  swift_beginAccess();
  *(v2 + v33) = 1;
  SessionMessageBase.sessionId.getter();
  v35 = v43;
  v34 = v44;
  (*(v43 + 56))(v11, 0, 1, v44);
  (*(*v2 + 920))(v11);
  SessionStartedMessage.sessionConfiguration.getter();
  v36 = type metadata accessor for SessionConfiguration();
  (*(*(v36 - 8) + 56))(v8, 0, 1, v36);
  (*(*v2 + 944))(v8);
  __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
  v37 = v41;
  SessionMessageBase.sessionId.getter();
  dispatch thunk of ConversationSessionsManaging.conversationSessionState(forConversationSessionId:)();
  (*(v35 + 8))(v37, v34);
  (*(*v2 + 968))(v45);
  v38 = SessionStartedMessage.isSystemAssistantExperienceEnabled.getter();
  (*(*v2 + 1040))(v38 & 1);
}

uint64_t ConversationBridge.rraasClient.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t outlined init with copy of ReferenceResolutionClientProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t ConversationBridge.nonRequestBridgePublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher;
  if (*(v0 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher))
  {
    v5 = *(v0 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher);
  }

  else
  {
    v6 = *(v0 + direct field offset for ConversationBridge.executionOutputSubmitter);
    v7 = *(*v0 + 984);

    v7(v8);
    v9 = v0[9];
    type metadata accessor for NonRequestExecutionBridgeDelegate(0);
    v5 = swift_allocObject();
    *(v5 + 16) = v6;
    outlined init with take of UserID?(v3, v5 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId);
    *(v5 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_serviceHelper) = v9;
    *(v0 + v4) = v5;
    swift_unknownObjectRetain();
  }

  return v5;
}

uint64_t ConversationRuntimeClient.sendClearExecutionContext(_:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  swift_unknownObjectRetain();
  v11 = StaticString.description.getter();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:);
  *(v14 + 24) = v10;
  *(v14 + 32) = "bridge(didReceiveClearContext:from:)";
  *(v14 + 40) = 36;
  *(v14 + 48) = 2;
  v15 = *(*v7 + 208);

  v15(v11, v13, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v14);
}

uint64_t outlined assign with take of (Input, AnyFlow, SiriEnvironment)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t ConversationBridge.isSystemAssistantExperienceEnabled.setter(char a1)
{
  v3 = direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t outlined init with take of ReferenceResolutionClientProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ConversationBridge.executionClient.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v3, &v5, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  if (v6)
  {
    return outlined init with take of ReferenceResolutionClientProtocol(&v5, a1);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v5, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  closure #1 in ConversationBridge.executionClient.getter(v1, a1);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, &v5);
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(&v5, v1 + v3, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  return swift_endAccess();
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)(v2, v3, v4, v5, v6);
}

uint64_t closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  v8 = (a1 + *a1);
  v6 = swift_task_alloc();
  *(v5 + 40) = v6;
  *v6 = v5;
  v6[1] = closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:);

  return v8();
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:)();
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);

  return specialized ConversationService.bridge(didReceiveClearContext:from:)();
}

uint64_t specialized ConversationService.bridge(didReceiveClearContext:from:)()
{
  *(v1 + 112) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 120) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveClearContext:from:), v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationService.swift", 40, 2, "bridge(didReceiveClearContext:from:)", 36, 2);
  v2 = static MessageBusActor.shared;
  v0[16] = static MessageBusActor.shared;
  v4 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v3, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = specialized ConversationService.bridge(didReceiveClearContext:from:);
  v6 = v0[14];
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v5, v7, v8, v2, v4, &async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveClearContext:from:), v6, v9);
}

{
  v1 = *(*v0 + 120);

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveClearContext:from:), v1, 0);
}

{
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v1 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14SiriKitRuntime24RemoteConversationClientC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v2 = *(v0 + 112);
  swift_beginAccess();
  *(v2 + 104) = v1;

  *(v0 + 144) = *(v2 + 192);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveClearContext:from:), v3, 0);
}

{
  v1 = *(v0 + 120);
  TaskService.onTurnInvalidated()();

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveClearContext:from:), v1, 0);
}

{
  v1 = *(v0 + 112);

  swift_beginAccess();
  *(v1 + 272) = 0;
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = 1;
  v3 = *(v1 + 120);
  *(v1 + 120) = 0;
  outlined consume of ConversationService.State(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in ConversationService.bridge(didReceiveClearContext:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[26] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveClearContext:from:), v4, 0);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveClearContext:from:)()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient, &protocol conformance descriptor for RemoteConversationClient);
    v3 = Set.Iterator.init(_cocoa:)();
    v2 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v6 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v40 = v6;
  v41 = v2;
  v39 = v13;
  while (v2 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (*(v0 + 168) = v21, type metadata accessor for RemoteConversationClient(), swift_dynamicCast(), v20 = *(v0 + 160), v18 = v8, v19 = v9, !v20))
    {
LABEL_27:
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v2);
      v34 = static MessageBusActor.shared;
      *(v0 + 216) = static MessageBusActor.shared;
      v36 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v35, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

      v37 = swift_task_alloc();
      *(v0 + 224) = v37;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGyytGMd, &_sScGyytGMR);
      *v37 = v0;
      v37[1] = closure #1 in ConversationService.bridge(didReceiveClearContext:from:);
      v3 = v34;
      v4 = v36;

      return MEMORY[0x1EEE6D898](v3, v4, v5);
    }

LABEL_19:
    v43 = v19;
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    v24 = type metadata accessor for TaskPriority();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v22, 1, 1, v24);
    v26 = swift_allocObject();
    v26[2] = 0;
    v27 = v26 + 2;
    v26[3] = 0;
    v26[4] = v20;
    v42 = v26;
    outlined init with copy of ReferenceResolutionClientProtocol?(v22, v23, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v23) = (*(v25 + 48))(v23, 1, v24);

    v28 = *(v0 + 192);
    if (v23 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 192), &_sScPSgMd, &_sScPSgMR);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v25 + 8))(v28, v24);
    }

    if (*v27)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = dispatch thunk of Actor.unownedExecutor.getter();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = **(v0 + 176);
    v33 = swift_allocObject();
    *(v33 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:);
    *(v33 + 24) = v42;

    if (v31 | v29)
    {
      v14 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v29;
      *(v0 + 80) = v31;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v0 + 200);
    *(v0 + 136) = 1;
    *(v0 + 144) = v14;
    *(v0 + 152) = v32;
    swift_task_create();

    v3 = outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sScPSgMd, &_sScPSgMR);
    v8 = v18;
    v9 = v43;
    v6 = v40;
    v2 = v41;
    v13 = v39;
  }

  v16 = v8;
  v17 = v9;
  v18 = v8;
  if (v9)
  {
LABEL_15:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v2 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
      goto LABEL_27;
    }

    v17 = *(v6 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D898](v3, v4, v5);
}

{
  v1 = *(*v0 + 208);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveClearContext:from:), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void Logger.debugF(file:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1DC659000, log, v6, "%s:%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveClearContext:from:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.bridge(didReceiveClearContext:from:)(a1, a2, v2);
}

uint64_t SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:)()
{
  v1 = v0[9];
  v2 = *(v1 + 48);
  v0[14] = v2;
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];
    v7 = swift_allocObject();
    v0[15] = v7;
    v7[2] = v5;
    v7[3] = v6;
    v7[4] = v4;
    v7[5] = v2;
    v7[6] = v3;
    swift_unknownObjectRetain_n();

    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:);
    v9 = v0[12];
    v10 = v0[8];

    return InterruptibleTaskManager.perform<A>(_:)(v9, &async function pointer to partial apply for closure #1 in SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:), v7, v10);
  }

  else
  {
    v14 = (v0[6] + *v0[6]);
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:);
    v13 = v0[5];

    return v14(v13, 0, v3);
  }
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[10];
  v2 = v0[5];

  InterruptibleTaskResult.getOrNilIfInterrupted()(v1, v2);
  (*(v0[11] + 8))(v0[12], v0[10]);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
  }

  else
  {
    v4 = SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[8];
  v2 = v0[5];

  (*(*(v1 - 8) + 56))(v2, 0, 1, v1);

  v3 = v0[1];

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TR(a1, v4);
}

uint64_t _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTQ0_;

  return v6(a1);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:)(a1, v4, v5, v6);
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "reset()", 7, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v8 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return v8(v0 + 32, &async function pointer to closure #1 in RemoteConversationClient.reset(), 0, v6, v3, v4);
}

{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {
  }

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.prepareForAudioHandoffFailed(), v3, 0);
}

uint64_t partial apply for closure #1 in SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)(a1, v4, v5, v6, v7);
}

uint64_t closure #1 in FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a4, a5);
}

uint64_t closure #1 in RemoteConversationClient.reset()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.reset(), 0, 0);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void closure #1 in closure #1 in RemoteConversationClient.reset()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = aBlock - v15;
  (*(v13 + 16))(aBlock - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = a5;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a6;
  v19 = _Block_copy(aBlock);

  [a2 *a7];
  _Block_release(v19);
}

uint64_t @objc SendableRemoteConversationXPCWrapper.reset(reply:)(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *(a1 + 16);
  v16[4] = a5;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v16[3] = a6;
  v14 = _Block_copy(v16);

  [v13 *a7];

  _Block_release(v14);
}

uint64_t partial apply for closure #1 in RemoteConversationService.reset(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.reset(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in RemoteConversationService.reset(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[28] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[31] = swift_task_alloc();
  v6[32] = type metadata accessor for RemoteConversationService.State(0);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.reset(reply:), v7, 0);
}

uint64_t closure #1 in RemoteConversationService.reset(reply:)()
{
  v22 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v3, v1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 272);
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol((v5 + 40), v0 + 16);
      outlined destroy of RemoteConversationService.State(v5 + v6, type metadata accessor for SiriRequest);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(v0 + 272);

    outlined destroy of ReferenceResolutionClientProtocol?((v7 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.executor);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6572287465736572, 0xED0000293A796C70, &v21);
    _os_log_impl(&dword_1DC659000, v9, v10, "No conversation is active, ignoring %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_10:
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  if (*(v0 + 120))
  {
    v13 = *(v0 + 248);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 136);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v15 + 32);
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in RemoteConversationService.reset(reply:), v15);

    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sScPSgMd, &_sScPSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  }

  v16 = *(v0 + 264);
  v17 = *(v0 + 232);
  SiriKitRuntimeState.invalidateCurrentTurn()();
  SiriKitRuntimeState.taskService.getter();
  TaskService.onTurnInvalidated()();

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  outlined assign with take of RemoteConversationService.State(v16, v2 + v3);
  v18 = swift_endAccess();
  v17(v18);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);

  v19 = *(v0 + 8);

  return v19();
}

Swift::Void __swiftcall SiriKitRuntimeState.invalidateCurrentTurn()()
{
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, &v4, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  if (*(&v5 + 1))
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v4, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = *((*(v2 + 64))(v1, v2) + 152);
    os_unfair_lock_lock((v3 + 20));
    *(v3 + 16) = 1;
    os_unfair_lock_unlock((v3 + 20));
    AceServiceInvokerImpl.cancelPendingCommands()();

    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    swift_beginAccess();
    outlined assign with take of ConversationTurnState?(&v4, v0 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v4, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  }
}

uint64_t outlined init with copy of RemoteConversationService.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *initializeWithCopy for RemoteConversationService.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = *(a2 + 24);
    *(a1 + 24) = v10;
    (**(v10 - 8))(a1, a2);
    v11 = *(a2 + 64);
    *(a1 + 64) = v11;
    (**(v11 - 8))(a1 + 40, a2 + 40);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    v13 = (a1 + v12);
    v14 = a2 + v12;
    v15 = *(a2 + v12 + 8);
    *v13 = *(a2 + v12);
    *(v13 + 1) = v15;
    v16 = type metadata accessor for SiriRequest(0);
    v17 = v16[5];
    v18 = type metadata accessor for Input();
    v19 = *(*(v18 - 8) + 16);

    v19(&v13[v17], v14 + v17, v18);
    *&v13[v16[6]] = *(v14 + v16[6]);
    *&v13[v16[7]] = *(v14 + v16[7]);
    v20 = v16[8];
    v21 = &v13[v20];
    v22 = (v14 + v20);
    v23 = *(v14 + v20 + 8);

    if (v23 >> 60 == 15)
    {
      *v21 = *v22;
    }

    else
    {
      v26 = *v22;
      outlined copy of Data._Representation(*v22, v23);
      *v21 = v26;
      *(v21 + 1) = v23;
    }

    *&v13[v16[9]] = *(v14 + v16[9]);
    *&v13[v16[10]] = *(v14 + v16[10]);
    *&v13[v16[11]] = *(v14 + v16[11]);
    v27 = v16[12];
    __dst = &v13[v27];
    v28 = (v14 + v27);
    v29 = type metadata accessor for SiriRequestIdentities(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);

    v32 = v28;

    if (v31(v28, 1, v29))
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(__dst, v28, *(*(v33 - 8) + 64));
    }

    else
    {
      v43 = v30;
      v44 = v29;
      v34 = type metadata accessor for IdentifiedUser();
      v35 = *(v34 - 8);
      v36 = *(v35 + 48);
      if (v36(v32, 1, v34))
      {
        v37 = v35;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        v39 = v32;
        memcpy(__dst, v32, *(*(v38 - 8) + 64));
      }

      else
      {
        v39 = v32;
        (*(v35 + 16))(__dst, v32, v34);
        v37 = v35;
        (*(v35 + 56))(__dst, 0, 1, v34);
      }

      v40 = *(v44 + 20);
      if (v36(&v39[v40], 1, v34))
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&__dst[v40], &v39[v40], *(*(v41 - 8) + 64));
      }

      else
      {
        (*(v37 + 16))(&__dst[v40], &v39[v40], v34);
        (*(v37 + 56))(&__dst[v40], 0, 1, v34);
      }

      *&__dst[*(v44 + 24)] = *&v39[*(v44 + 24)];
      v42 = *(v43 + 56);

      v42(__dst, 0, 1, v44);
    }

    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    v8 = *(a2 + 64);
    if (v8)
    {
      v9 = *(a2 + 72);
      *(a1 + 64) = v8;
      *(a1 + 72) = v9;
      (**(v8 - 8))(a1 + 40, a2 + 40);
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
    }

    *(a1 + 80) = *(a2 + 80);

LABEL_22:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v24 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v24);
}

Swift::Void __swiftcall TaskService.onTurnInvalidated()()
{
  swift_beginAccess();
  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_13;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.instrumentation);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "TaskService - Turn invalidated with no current non-ended task, ignoring.", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v0 = MEMORY[0x1E12A1FE0](0, v2);

    v3 = *(v0 + 32);
    if (!*(v0 + 32))
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  v0 = *(v2 + 32);

  v3 = *(v0 + 32);
  if (*(v0 + 32))
  {
LABEL_6:
    if (v3 != 1)
    {

      goto LABEL_13;
    }
  }

LABEL_11:
  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {

    goto LABEL_13;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.instrumentation);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DC659000, v10, v11, "TaskService - updating task state to .ended because turn is invalidated.", v12, 2u);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  TaskService.update(task:state:)(v0, 2);
}

uint64_t TaskService.update(task:state:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {

LABEL_25:
    if (one-time initialization token for instrumentation != -1)
    {
      goto LABEL_66;
    }

    goto LABEL_26;
  }

  v10 = v7;
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_25;
  }

  v12 = *(a1 + 32);
  if (v12 == 1)
  {
    v13 = 0x676E696F676E6FLL;
  }

  else
  {
    v13 = 0x6465646E65;
  }

  if (v12 == 1)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  if (*(a1 + 32))
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x64657461657263;
  }

  if (*(a1 + 32))
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (a2 == 2)
  {
    v17 = 0x6465646E65;
  }

  else
  {
    v17 = 0x676E696F676E6FLL;
  }

  if (a2 == 2)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (v15 == v17 && v16 == v18)
  {

    goto LABEL_29;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_29;
  }

  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v31 = *(a1 + 33);
  (*(v6 + 16))(v9, a1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v10);
  type metadata accessor for FlowTask(0);
  a1 = swift_allocObject();
  *(a1 + 16) = v30;
  *(a1 + 24) = v29;
  *(a1 + 32) = a2;
  *(a1 + 33) = v31;
  (*(v6 + 32))(a1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v9, v10);
  swift_beginAccess();
  v32 = *(v2 + 32);
  if (v32 >> 62)
  {
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = -v33;
  v35 = 4;
  while (1)
  {
    if (v34 + v35 == 4)
    {

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.instrumentation);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v57[0] = v44;
        *v43 = 136315138;

        v45 = FlowTask.description.getter();
        v47 = v46;

        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v57);

        *(v43 + 4) = v48;
        v49 = "TaskService - Returning unmanaged task: %s";
        goto LABEL_62;
      }

LABEL_63:

      return a1;
    }

    v36 = v35 - 4;
    if ((v32 & 0xC000000000000001) == 0)
    {
      break;
    }

    v37 = MEMORY[0x1E12A1FE0](v35 - 4, v32);
LABEL_39:
    if (*(v37 + 16) == *(a1 + 16) && *(v37 + 24) == *(a1 + 24))
    {

LABEL_54:
      swift_beginAccess();
      v50 = *(v2 + 32);

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v2 + 32) = v50;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v50 < 0 || (v50 & 0x4000000000000000) != 0)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew()();
        *(v2 + 32) = v50;
      }

      if (v36 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      else
      {
        *((v50 & 0xFFFFFFFFFFFFFF8) + 8 * v35) = a1;
        *(v2 + 32) = v50;
        swift_endAccess();

        if (one-time initialization token for instrumentation == -1)
        {
          goto LABEL_60;
        }
      }

      swift_once();
LABEL_60:
      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.instrumentation);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v57[0] = v44;
        *v43 = 136315138;

        v53 = FlowTask.description.getter();
        v55 = v54;

        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v57);

        *(v43 + 4) = v56;
        v49 = "TaskService - Updated managed task: %s";
LABEL_62:
        _os_log_impl(&dword_1DC659000, v41, v42, v49, v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x1E12A2F50](v44, -1, -1);
        MEMORY[0x1E12A2F50](v43, -1, -1);
      }

      goto LABEL_63;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {

      goto LABEL_54;
    }

    ++v35;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_65;
    }
  }

  if (v36 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v32 + 8 * v35);

    goto LABEL_39;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  swift_once();
LABEL_26:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.instrumentation);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v58[0] = v23;
    *v22 = 136315138;
    v24 = FlowTask.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v58);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1DC659000, v20, v21, "TaskService - Illegal attempt to update task: %s as created", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

LABEL_29:

  return a1;
}

uint64_t FlowTask.description.getter()
{
  v5[8] = 0;
  _StringGuts.grow(_:)(68);
  MEMORY[0x1E12A1580](0x6B736154776F6C46, 0xED0000203A64697BLL);
  MEMORY[0x1E12A1580](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E12A1580](0x3A6574617473202CLL, 0xE900000000000020);
  *v5 = *(v0 + 32);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA8BA60);
  if (*(v0 + 33))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 33))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA8BA80);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v3);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return *&v5[1];
}

uint64_t outlined destroy of RemoteConversationService.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for TaskData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #2 in closure #1 in AsyncSerialQueue.runAll()()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
}

uint64_t closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)()
{
  v13 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[12] = __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 16), *(v5 + 24), &v12);
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&dword_1DC659000, v2, v3, "%s: task %lu begin", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v11 = (v0[7] + *v0[7]);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  v9 = v0[11];

  return v11(v9);
}

{
  v13 = v0;
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  ManagedContinuation.resume(returning:)(v1);
  (*(v3 + 8))(v1, v2);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v7 + 16), *(v7 + 24), &v12);
    *(v8 + 12) = 2048;
    *(v8 + 14) = v6;
    _os_log_impl(&dword_1DC659000, v4, v5, "%s: task %lu succeeded", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v2 = closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v30 = v0;
  v1 = v0[14];

  v2 = v1;
  v3 = static os_log_type_t.debug.getter();
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[14];
    v6 = v0[4];
    v26 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315650;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v27);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v27);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);

    v28 = v16;
    v29 = v15;
    MEMORY[0x1E12A1580](0x206B736174203ALL, 0xE700000000000000);
    v0[2] = v26;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v17);

    MEMORY[0x1E12A1580](0x6520776572687420, 0xEE00203A726F7272);
    v0[3] = v5;
    v18 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v19 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v19);

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v27);

    *(v7 + 24) = v20;
    _os_log_impl(&dword_1DC659000, v4, v3, "%s:%s: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);

    v21 = v5;
  }

  else
  {
    v22 = v0[14];

    v21 = v22;
  }

  v23 = v0[14];
  ManagedContinuation.resume(throwing:)(v23);

  v24 = v0[1];

  return v24();
}

uint64_t InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[16] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v5[17] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](InterruptibleTaskManager.perform<A>(_:), v6, 0);
}

uint64_t SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for InterruptibleTaskResult(0, a4, a3, a4);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v5[13] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:), v7, 0);
}

uint64_t closure #1 in RemoteConversationClient.reset()()
{
  v15 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = closure #1 in RemoteConversationClient.reset();
    v5 = v0[2];
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0x29287465736572, 0xE700000000000000, partial apply for closure #1 in closure #1 in RemoteConversationClient.reset(), v3, v6);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287465736572, 0xE700000000000000, &v14);
      _os_log_impl(&dword_1DC659000, v8, v9, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.warmup(refId:), 0, 0);
}

uint64_t protocol witness for RemoteConversationConnectionProviding.withRemoteConversationConnectionIfValid<A>(execute:) in conformance SharedFlowPluginConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:)(a1, a2, a3, a4);
}

uint64_t InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[15];
  v5 = *(v4 + 40);
  v3[18] = v5;
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3[16];
    v8 = v3[13];
    v7 = v3[14];
    v9 = v3[12];
    *(v4 + 40) = v5 + 1;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = static MessageBusActor.shared;
    v12 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v7;
    v13[5] = v4;
    v13[6] = v5;
    v13[7] = v9;
    v13[8] = v8;
    v16 = type metadata accessor for InterruptibleTaskResult(0, v7, v14, v15);

    v17 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(0, 0, v6, &async function pointer to partial apply for closure #1 in InterruptibleTaskManager.perform<A>(_:), v13, v16);
    v3[19] = v17;
    v18 = swift_allocObject();
    v18[2] = v7;
    v18[3] = v4;
    v18[4] = v17;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 32);
    *(v4 + 32) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #2 in InterruptibleTaskManager.perform<A>(_:), v18, v5, isUniquelyReferenced_nonNull_native);
    *(v4 + 32) = v22;
    swift_endAccess();
    v20 = swift_task_alloc();
    v3[20] = v20;
    *v20 = v3;
    v20[1] = InterruptibleTaskManager.perform<A>(_:);
    a1 = v3[11];
    a2 = v17;
    a3 = v16;
  }

  return MEMORY[0x1EEE6DA40](a1, a2, a3);
}

uint64_t sub_1DC6640E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  type metadata accessor for ManagedContinuation(0, a4, a3, a4);
  swift_allocObject();
  v10 = ManagedContinuation.().init()();
  v8[2] = v10;
  v11 = swift_task_alloc();
  v8[3] = v11;
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = a3;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = withCancellableContinuation<A>(body:);

  return _unsafeInheritExecutor_withTaskCancellationHandler<A>(handler:operation:)(a1, partial apply for closure #1 in withCancellableContinuation<A>(body:), v10, &async function pointer to partial apply for closure #2 in withCancellableContinuation<A>(body:), v11, a4);
}

uint64_t _unsafeInheritExecutor_withTaskCancellationHandler<A>(handler:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return MEMORY[0x1EEE6DE20](a1, a4, a5, a2, a3, a6);
}

uint64_t closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a1;
  v14[7] = a4;
  v14[8] = a5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), v14);
}

uint64_t sub_1DC6644E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1E12A23D0](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  type metadata accessor for ConversationSessionKey();
  v2 = MEMORY[0x1E69D0820];
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69D0820], &lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, v2, MEMORY[0x1E69D0830]);
}

{
  type metadata accessor for UUID();
  v2 = MEMORY[0x1E69695A8];
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, v2, MEMORY[0x1E69695C8]);
}

{
  type metadata accessor for IntentTopic();
  v2 = MEMORY[0x1E69CFD68];
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68], MEMORY[0x1E69CFD78]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69CFD68], &lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, v2, MEMORY[0x1E69CFD80]);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange();
  v2 = MEMORY[0x1E69CE620];
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange, MEMORY[0x1E69CE620], MEMORY[0x1E69CE628]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69CE620], &lazy protocol witness table cache variable for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange, v2, MEMORY[0x1E69CE630]);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](v1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  type metadata accessor for UserID();
  v2 = MEMORY[0x1E69D08C8];
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69D08C8], &lazy protocol witness table cache variable for type UserID and conformance UserID, v2, MEMORY[0x1E69D08D8]);
}

{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t ManagedContinuation.updateState(continuation:result:)(void (*a1)(void, void, void), uint64_t a2)
{
  v110 = a1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for CheckedContinuation();
  v7 = type metadata accessor for Optional();
  v115 = *(v7 - 8);
  v116 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v111 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v87 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v87 - v12;
  v117 = v6;
  v114 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v87 - v16;
  v93 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v97 = &v87 - v19;
  v95 = v5;
  v20 = type metadata accessor for Result();
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v87 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v96 = (&v87 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v87 - v30;
  v32 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v92 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v101 = &v87 - v36;
  v91 = v37;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v107 = &v87 - v40;
  [*(v2 + *(v4 + 104)) lock];
  v113 = v22;
  v42 = v22 + 16;
  v41 = *(v22 + 16);
  v41(v31, a2, v21);
  v43 = *(v32 + 48);
  v44 = v43(v31, 1, v20);
  v112 = v20;
  v105 = v32;
  v103 = v21;
  v100 = v42;
  v98 = v32 + 48;
  v108 = v43;
  if (v44 == 1)
  {
    v96 = *(v113 + 8);
    v96(v31, v21);
    v45 = v115;
    v46 = v109;
    v47 = v41;
  }

  else
  {
    v90 = v26;
    v88 = *(v32 + 32);
    v88(v107, v31, v20);
    v48 = *(*v2 + 96);
    swift_beginAccess();
    v89 = v48;
    v49 = v96;
    v41(v96, v2 + v48, v21);
    LODWORD(v48) = v43(v49, 1, v20);
    v50 = v113;
    v96 = *(v113 + 8);
    v96(v49, v21);
    v47 = v41;
    if (v48 == 1)
    {
      v51 = v90;
      v88(v90, v107, v20);
      (*(v105 + 56))(v51, 0, 1, v20);
      v52 = v89;
      swift_beginAccess();
      (*(v50 + 40))(v2 + v52, v51, v21);
      swift_endAccess();
    }

    else
    {
      (*(v105 + 8))(v107, v20);
    }

    v45 = v115;
    v46 = v109;
  }

  v53 = v110;
  v110 = v45[2];
  v110(v46, v53, v116);
  v54 = v114;
  v55 = *(v114 + 48);
  v56 = v55(v46, 1, v117);
  v99 = v47;
  if (v56 == 1)
  {
    (v45[1])(v46, v116);
  }

  else
  {
    v57 = v117;
    v58 = *(v54 + 32);
    v59 = v97;
    v58(v97, v46, v117);
    v60 = v106;
    v58(v106, v59, v57);
    v45 = v115;
    v61 = v116;
    (*(v54 + 56))(v60, 0, 1, v57);
    v62 = *(*v2 + 88);
    swift_beginAccess();
    (v45[5])(v2 + v62, v60, v61);
    swift_endAccess();
  }

  v63 = *(*v2 + 88);
  swift_beginAccess();
  v64 = v111;
  v110(v111, v2 + v63, v116);
  v65 = v55(v64, 1, v117);
  v66 = v108;
  if (v65 == 1)
  {
    (v45[1])(v64, v116);
  }

  else
  {
    v67 = v114;
    v68 = v64;
    v69 = v104;
    v115 = *(v114 + 32);
    (v115)(v104, v68, v117);
    v70 = *(*v2 + 96);
    swift_beginAccess();
    v71 = v2 + v70;
    v72 = v102;
    v73 = v103;
    v99(v102, v71, v103);
    v74 = v112;
    if (v66(v72, 1, v112) != 1)
    {
      v76 = v105 + 32;
      v113 = *(v105 + 32);
      (v113)(v101, v72, v74);
      v77 = v106;
      v78 = v117;
      (*(v67 + 56))(v106, 1, 1, v117);
      swift_beginAccess();
      (v45[5])(v2 + v63, v77, v116);
      swift_endAccess();
      v79 = v94;
      v80 = v78;
      v81 = v115;
      (v115)(v94, v69, v80);
      v82 = v92;
      (v113)(v92, v101, v112);
      v83 = (*(v67 + 80) + 24) & ~*(v67 + 80);
      v84 = (v93 + *(v76 + 48) + v83) & ~*(v76 + 48);
      v85 = swift_allocObject();
      *(v85 + 16) = v95;
      v81(v85 + v83, v79, v117);
      (v113)(v85 + v84, v82, v112);
      v75 = partial apply for closure #2 in ManagedContinuation.updateState(continuation:result:);
      goto LABEL_16;
    }

    (*(v67 + 8))(v69, v117);
    v96(v72, v73);
  }

  v75 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
LABEL_16:
  v75([*(v2 + *(*v2 + 104)) unlock]);
}

uint64_t sub_1DC665060()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(type metadata accessor for Result() - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(v7 + 64);
  (*(v3 + 8))(v0 + v5, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v9, v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v4 | v8 | 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TR(a1, v4);
}

uint64_t partial apply for closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a1;
  v8[7] = a4;
  v10 = type metadata accessor for CancellationError();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = *(a8 - 8);
  v8[17] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static MessageBusActor.shared;
  v8[18] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in InterruptibleTaskManager.perform<A>(_:), v11, 0);
}

uint64_t closure #1 in InterruptibleTaskManager.perform<A>(_:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = swift_allocObject();
  v0[19] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;

  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = closure #1 in InterruptibleTaskManager.perform<A>(_:);
  v7 = v0[17];
  v8 = v0[11];

  return withCancellableContinuation<A>(body:)(v7, partial apply for closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), v5, v8);
}

{
  v1 = v0[17];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[6];

  (*(v2 + 32))(v4, v1, v3);
  type metadata accessor for InterruptibleTaskResult(0, v3, v5, v6);
  swift_storeEnumTagMultiPayload();

  v7 = v0[1];

  return v7();
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = closure #1 in InterruptibleTaskManager.perform<A>(_:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 168);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 168);
  if (v3)
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = *(v0 + 88);
    v10 = *(v0 + 48);

    v11 = *(v8 + 32);
    v11(v5, v6, v7);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v12 = swift_allocError();
    v11(v13, v5, v7);
    *v10 = v12;
    type metadata accessor for InterruptibleTaskResult(0, v9, v14, v15);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v16 = *(v0 + 88);
    v17 = *(v0 + 48);

    *v17 = v4;
    type metadata accessor for InterruptibleTaskResult(0, v16, v18, v19);
    swift_storeEnumTagMultiPayload();
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1DC665650()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t ManagedContinuation.().init()()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for CheckedContinuation();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for Result();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + *(*v0 + 104)) = v5;
  v6 = v5;
  v7 = MEMORY[0x1E12A1410](0xD000000000000027, 0x80000001DCA7D620);
  [v6 setName_];

  return v0;
}

uint64_t partial apply for closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #2 in withCancellableContinuation<A>(body:)(a1, v4, v5, v6);
}

uint64_t closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in withCancellableContinuation<A>(body:), 0, 0);
}

uint64_t closure #2 in withCancellableContinuation<A>(body:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v1 + 80);
  *v4 = v0;
  v4[1] = closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000022, 0x80000001DCA7D5F0, partial apply for closure #1 in closure #2 in withCancellableContinuation<A>(body:), v3, v5);
}

uint64_t closure #1 in closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for Result();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v12 - v8);
  ManagedContinuation.setContinuation(_:)(a1);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    return a3(a2);
  }

  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
  v10 = swift_allocError();
  CancellationError.init()();
  *v9 = v10;
  swift_storeEnumTagMultiPayload();
  ManagedContinuation.resume(with:)(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t ManagedContinuation.setContinuation(_:)(uint64_t a1)
{
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = type metadata accessor for Result();
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  v6 = type metadata accessor for CheckedContinuation();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = *(v6 - 8);
  (*(v12 + 16))(&v14 - v10, v15, v6, v9);
  (*(v12 + 56))(v11, 0, 1, v6);
  (*(*(v1 - 8) + 56))(v5, 1, 1, v1);
  ManagedContinuation.updateState(continuation:result:)(v11, v5);
  (*(v3 + 8))(v5, v2);
  return (*(v8 + 8))(v11, v7);
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
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12A1F10](v9, a1);
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

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for LNSystemProtocol();
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = *(*a6 + 80);
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), 0, 0);
}

uint64_t _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined consume of (transaction: OS_os_transaction?, timer: OS_dispatch_source_timer)?(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t ConversationRuntimeClient.sendStartExecutionTurn(_:withBridgeDelegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  v11 = a1;
  swift_unknownObjectRetain();
  v12 = StaticString.description.getter();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);
  *(v15 + 24) = v10;
  *(v15 + 32) = "bridge(didReceiveStartExecutionTurn:from:)";
  *(v15 + 40) = 42;
  *(v15 + 48) = 2;
  v16 = *(*v7 + 208);

  v16(v12, v14, &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:), v15);
}

uint64_t sub_1DC66682C()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

void outlined consume of ConversationService.State(id a1, unsigned __int8 a2)
{
  v2 = a2 >> 6;
  if (v2 == 2)
  {
  }

  else if (v2 == 1)
  {
  }
}

uint64_t ConversationRuntimeClient.sendConversationUserInput(_:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  swift_unknownObjectRetain();
  v11 = StaticString.description.getter();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v14 + 32) = v9;
  *(v14 + 40) = "bridge(didReceiveInput:from:)";
  *(v14 + 48) = 29;
  *(v14 + 56) = 2;
  *(v14 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveInput:from:);
  *(v14 + 72) = v10;
  v15 = *(*v8 + 208);

  v15(v11, v13, &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:), v14);
}

uint64_t objectdestroy_16Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t outlined init with copy of ReferenceResolutionClientProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ConversationBridge.rraasClient.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v4 + v8, a4, a2, a3);
}

uint64_t closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)()
{
  v1 = v0[30];
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient, &protocol conformance descriptor for RemoteConversationClient);
    v3 = Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[6];
  }

  else
  {
    v11 = -1 << *(v2 + 32);
    v7 = v2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v2 + 56);

    v9 = 0;
  }

  v45 = v0 + 7;
  v14 = (v8 + 64) >> 6;
  v47 = v2;
  v48 = v14;
  v49 = v7;
  v46 = v0;
  while (v2 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v0[28] = v21, type metadata accessor for RemoteConversationClient(), swift_dynamicCast(), v20 = v0[27], v18 = v9, v19 = v10, !v20))
    {
LABEL_25:
      v35 = v0[30];
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v2);
      swift_beginAccess();
      v37 = *(v35 + 280);
      if (v37)
      {
        v38 = v0[31];
        v39 = type metadata accessor for TaskPriority();
        (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
        v40 = swift_allocObject();
        v40[2] = 0;
        v40[3] = 0;
        v40[4] = v37;

        _sScG7addTask8priority9operationyScPSg_xyYaYAcntF14SiriKitRuntime24RemoteConversationClientCSg_Tg5(v38, &async function pointer to partial apply for closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v40);
        outlined destroy of ReferenceResolutionClientProtocol?(v38, &_sScPSgMd, &_sScPSgMR);
      }

      v41 = static MessageBusActor.shared;
      v0[35] = static MessageBusActor.shared;
      v42 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v36, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

      v43 = swift_task_alloc();
      v0[36] = v43;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGy14SiriKitRuntime24RemoteConversationClientCSgGMd, &_sScGy14SiriKitRuntime24RemoteConversationClientCSgGMR);
      *v43 = v0;
      v43[1] = closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
      v3 = (v0 + 26);
      v4 = v41;
      v5 = v42;

      return MEMORY[0x1EEE6D8A0](v3, v4, v5, v6);
    }

LABEL_18:
    v50 = v19;
    v23 = v0[32];
    v22 = v0[33];
    v24 = type metadata accessor for TaskPriority();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v22, 1, 1, v24);
    v26 = swift_allocObject();
    v26[2] = 0;
    v27 = v26 + 2;
    v26[3] = 0;
    v26[4] = v20;
    outlined init with copy of ReferenceResolutionClientProtocol?(v22, v23, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v23) = (*(v25 + 48))(v23, 1, v24);

    v28 = v0[32];
    if (v23 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[32], &_sScPSgMd, &_sScPSgMR);
      if (*v27)
      {
        goto LABEL_20;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v25 + 8))(v28, v24);
      if (*v27)
      {
LABEL_20:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v29 = dispatch thunk of Actor.unownedExecutor.getter();
        v31 = v30;
        swift_unknownObjectRelease();
        goto LABEL_23;
      }
    }

    v29 = 0;
    v31 = 0;
LABEL_23:
    v0 = v46;
    v32 = *v46[29];
    v33 = swift_allocObject();
    *(v33 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
    *(v33 + 24) = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24RemoteConversationClientCSgMd, &_s14SiriKitRuntime24RemoteConversationClientCSgMR);
    v34 = (v31 | v29);
    if (v31 | v29)
    {
      v34 = v45;
      *v45 = 0;
      v45[1] = 0;
      v46[9] = v29;
      v46[10] = v31;
    }

    v2 = v47;
    v15 = v46[33];
    v46[23] = 1;
    v46[24] = v34;
    v46[25] = v32;
    swift_task_create();

    v3 = outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sScPSgMd, &_sScPSgMR);
    v9 = v18;
    v7 = v49;
    v10 = v50;
    v14 = v48;
  }

  v16 = v9;
  v17 = v10;
  v18 = v9;
  if (v10)
  {
LABEL_14:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v2 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      goto LABEL_25;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D8A0](v3, v4, v5, v6);
}

{
  v1 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v1, 0);
}

uint64_t sub_1DC6673E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_2()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroyTm_3(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t objectdestroyTm_4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v19 = *(v5 + 64);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v18 = *(v9 + 64);
  v11 = type metadata accessor for LaunchAppBehavior();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3, 1, v11))
  {
    (*(v12 + 8))(v0 + v3, v11);
  }

  v13 = type metadata accessor for SiriKitReliabilityCodes();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v7, 1, v13))
  {
    (*(v14 + 8))(v0 + v7, v13);
  }

  v15 = (v19 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + v10 + 8) & ~v10;

  (*(v9 + 8))(v0 + v16, v8);

  return MEMORY[0x1EEE6BDD0](v0, ((v18 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | v10 | 7);
}

uint64_t objectdestroyTm_6()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroyTm_9(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 48));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t objectdestroyTm_10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroyTm_11(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 56));

  return MEMORY[0x1EEE6BDD0](v1, 64, 7);
}

uint64_t objectdestroyTm_12()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_13()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t closure #1 in JetsamHelper.ensureJetsamTransaction()(void *a1)
{
  v2 = type metadata accessor for DispatchTimeInterval();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v42 - v5;
  v61 = type metadata accessor for DispatchTime();
  v55 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v53 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v42 - v8;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v45 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = (a1 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  if (*(a1 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction + 8))
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.executor);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[2], a1[3], aBlock);
      v21 = "os_transaction(%s) bump";
LABEL_10:
      _os_log_impl(&dword_1DC659000, v17, v18, v21, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.executor);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[2], a1[3], aBlock);
      v21 = "os_transaction(%s) begin";
      goto LABEL_10;
    }
  }

  String.utf8CString.getter();
  v44 = os_transaction_create();

  type metadata accessor for OS_dispatch_source();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v45 + 8))(v15, v13);
  v43 = v23;
  ObjectType = swift_getObjectType();
  v25 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in closure #1 in JetsamHelper.ensureJetsamTransaction();
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_14;
  v26 = _Block_copy(aBlock);

  v27 = v46;
  static DispatchQoS.unspecified.getter();
  v28 = v49;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v26);
  (*(v50 + 8))(v28, v51);
  (*(v47 + 8))(v27, v48);

  v29 = v53;
  static DispatchTime.now()();
  v30 = v54;
  DispatchTime.advanced(by:)();
  v55 = *(v55 + 8);
  (v55)(v29, v61);
  v32 = v58;
  v31 = v59;
  v33 = *(v58 + 104);
  v34 = v56;
  v33(v56, *MEMORY[0x1E69E7F40], v59);
  v35 = v57;
  *v57 = 0;
  v33(v35, *MEMORY[0x1E69E7F28], v31);
  v36 = v43;
  MEMORY[0x1E12A1C30](v30, v34, v35, ObjectType);
  v37 = *(v32 + 8);
  v37(v35, v31);
  v37(v34, v31);
  (v55)(v30, v61);
  OS_dispatch_source.resume()();
  v38 = v52;
  v39 = *v52;
  v40 = v52[1];
  *v52 = v44;
  v38[1] = v36;
  return outlined consume of (transaction: OS_os_transaction?, timer: OS_dispatch_source_timer)?(v39, v40);
}

uint64_t sub_1DC668358()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t outlined destroy of Conversation.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t InstrumentedStack.TrackedFlowAgent.__deallocating_deinit()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = OBJC_IVAR____TtCC14SiriKitRuntime17InstrumentedStackP33_D2D0045FA6DDADCCE44653D1D402214316TrackedFlowAgent_signpostId;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtCC14SiriKitRuntime17InstrumentedStackP33_D2D0045FA6DDADCCE44653D1D402214316TrackedFlowAgent_signpostId, v1);
  os_signpost(_:dso:log:name:signpostID:)();
  v6 = *(v2 + 8);
  v6(v4, v1);

  v6((v0 + v5), v1);
  return swift_deallocClassInstance();
}

void ConversationBridge.handleSessionEndedMessage(_:)(void *a1)
{
  v2 = v1;
  v61 = a1;
  v57 = type metadata accessor for UserSessionState();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v49[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v49[-v5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v53 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v49[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49[-v18];
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v23 = &v49[-v22];
  (*(*v1 + 912))(v21);
  SessionMessageBase.sessionId.getter();
  v52 = *(v7 + 56);
  v52(v19, 0, 1, v6);
  v24 = *(v10 + 56);
  outlined init with copy of ReferenceResolutionClientProtocol?(v23, v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v19, &v12[v24], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v59 = v7;
  v25 = *(v7 + 48);
  if (v25(v12, 1, v6) == 1)
  {
    v51 = v7 + 56;
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v25(&v12[v24], 1, v6) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_13:
      v41 = (*(*v1 + 416))(v62);
      v43 = v42;

      *v43 = MEMORY[0x1E69E7CC8];
      v41(v62, 0);
      v44 = v53;
      v52(v53, 1, 1, v6);
      (*(*v2 + 920))(v44);
      v63 = 0;
      memset(v62, 0, sizeof(v62));
      (*(*v2 + 968))(v62);
      v45 = type metadata accessor for SessionConfiguration();
      v46 = v54;
      (*(*(v45 - 8) + 56))(v54, 1, 1, v45);
      (*(*v2 + 944))(v46);
      v47 = v56;
      (*(v55 + 104))(v56, *MEMORY[0x1E69D06E8], v57);
      v48 = (*(*v2 + 1088))(v47);
      (*(**(v2 + direct field offset for ConversationBridge.recentDialogTracker) + 240))(v48);
      (*(*v2 + 1040))(2);
      return;
    }

    goto LABEL_6;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v12, v60, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v25(&v12[v24], 1, v6) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v59 + 8))(v60, v6);
LABEL_6:
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_7;
  }

  v51 = v7 + 56;
  v37 = v58;
  v38 = v59;
  (*(v59 + 32))(v58, &v12[v24], v6);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v39 = v60;
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v38 + 8);
  v40(v37, v6);
  outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v40(v39, v6);
  outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v50)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.conversationBridge);
  v27 = v61;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v62[0] = v31;
    *v30 = 136315138;
    v32 = v58;
    SessionMessageBase.sessionId.getter();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v59 + 8))(v32, v6);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v62);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1DC659000, v28, v29, "SessionId: %s is not the current session, ignoring", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1E12A2F50](v31, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }
}

uint64_t ConversationBridge.userSessionState.setter(uint64_t a1)
{
  v3 = direct field offset for ConversationBridge.userSessionState;
  swift_beginAccess();
  v4 = type metadata accessor for UserSessionState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t RecentDialogTracker.clearRecentDialogs()()
{
  v1 = v0;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (v7 >> 62)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v8;

    _os_log_impl(&dword_1DC659000, v3, v4, "RecentDialogTracker: clearing currently tracked %ld dialog(s).", v5, 0xCu);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {
  }

  v9 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
  swift_beginAccess();
  *(v1 + v9) = MEMORY[0x1E69E7CC0];

  return RecentDialogTracker.updateSiriEnvironment()();
}

uint64_t RecentDialogTracker.updateSiriEnvironment()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  type metadata accessor for RecentDialogsEnvironmentProvider();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider, v9, type metadata accessor for RecentDialogsEnvironmentProvider, &protocol conformance descriptor for RecentDialogsEnvironmentProvider);
  v10 = dispatch thunk of SiriEnvironment.subscript.getter();

  v11 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(*v10 + 112))(v13);

  static SiriEnvironment.default.getter();
  v14 = dispatch thunk of SiriEnvironment.subscript.getter();

  v15 = *(v1 + v11);
  if (v15 >> 62)
  {
    v16 = &selRef_setMitigationSource_;
    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  v16 = &selRef_setMitigationSource_;
  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_5:
  v17 = *(v1 + v11);
  v32 = v4;
  if ((v17 & 0xC000000000000001) != 0)
  {

    v18 = MEMORY[0x1E12A1FE0](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:

      v26 = MEMORY[0x1E12A1FE0](1, v17);

      goto LABEL_22;
    }

    v18 = *(v17 + 32);
  }

  v19 = RecentDialog.addViews.getter();

  v20 = [v19 dialogPhase];
  if (v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  DialogPhase.init(aceValue:)();
  v21 = type metadata accessor for DialogPhase();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v7, 1, v21) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
    v23 = 0;
  }

  else
  {
    v23 = DialogPhase.canBeReplayed()();
    (*(v22 + 8))(v7, v21);
  }

  v4 = v32;
  v16 = &selRef_setMitigationSource_;
LABEL_17:
  (*(*v14 + 136))(v23);

  static SiriEnvironment.default.getter();
  v8 = dispatch thunk of SiriEnvironment.subscript.getter();

  v24 = *(v1 + v11);
  if (v24 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result < 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      goto LABEL_26;
    }
  }

  v17 = *(v1 + v11);
  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v26 = *(v17 + 40);
LABEL_22:
    v27 = RecentDialog.addViews.getter();

    v28 = [v27 v16[290]];
    if (v28)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    DialogPhase.init(aceValue:)();
    v29 = type metadata accessor for DialogPhase();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v4, 1, v29) != 1)
    {
      v31 = DialogPhase.canBeReplayed()();
      (*(v30 + 8))(v4, v29);
      goto LABEL_28;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
LABEL_26:
    v31 = 0;
LABEL_28:
    (*(*v8 + 160))(v31);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RecentDialogsEnvironmentProvider.numCurrentlyTracked.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t RecentDialogsEnvironmentProvider.hasDialogToRepeat.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t RecentDialogsEnvironmentProvider.hasDialogToGoBackTo.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 25) = a1;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t), uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v12 = v8;
  v17 = *v8;
  result = a5(a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 < v23 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a4 & 1, a6, a7);
      result = a5(a3);
      if ((v24 & 1) != (v27 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = result;
      specialized _NativeDictionary.copy()(a6, a7);
      result = v26;
    }
  }

  v28 = *v12;
  if ((v24 & 1) == 0)
  {
    v28[(result >> 6) + 8] |= 1 << result;
    *(v28[6] + 8 * result) = a3;
    v30 = (v28[7] + 16 * result);
    *v30 = a1;
    v30[1] = a2;
    v31 = v28[2];
    v22 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v22)
    {
      v28[2] = v32;
      return result;
    }

    goto LABEL_15;
  }

  v29 = (v28[7] + 16 * result);
  *v29 = a1;
  v29[1] = a2;
}

uint64_t destroy for Conversation.State(char *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if ((result - 2) >= 2)
  {
    if (result == 1)
    {
    }

    else
    {
      if (result)
      {
        return result;
      }

      v4 = type metadata accessor for SiriRequest(0);
      v5 = v4[5];
      v6 = type metadata accessor for Input();
      (*(*(v6 - 8) + 8))(&a1[v5], v6);

      v7 = &a1[v4[8]];
      v8 = v7[1];
      if (v8 >> 60 != 15)
      {
        outlined consume of Data._Representation(*v7, v8);
      }

      v9 = &a1[v4[12]];
      v10 = type metadata accessor for SiriRequestIdentities(0);
      if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
      {
        v11 = type metadata accessor for IdentifiedUser();
        v12 = *(v11 - 8);
        v13 = *(v12 + 48);
        if (!v13(v9, 1, v11))
        {
          (*(v12 + 8))(v9, v11);
        }

        v14 = *(v10 + 20);
        if (!v13(&v9[v14], 1, v11))
        {
          (*(v12 + 8))(&v9[v14], v11);
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);
    }
  }
}

uint64_t Node.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  swift_weakDestroy();

  swift_weakDestroy();
  v1 = *(*v0 + 120);
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + *(*v2 + 120));
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_7Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t closure #1 in SubmissionTaskRegistry.cancelAll()@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v15 = *(*a1 + 16);
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x1E69E7288]; v5; result = )
  {
    v10 = v8;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(*(v2 + 48) + ((v10 << 9) | (8 * v11)));

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1E12A1950](v12, v13, v14, i);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      *a1 = MEMORY[0x1E69E7CD0];
      *a2 = v15;
      return result;
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t RemoteConversationService.FlowAndInputRegistry.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DC66A0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

Swift::Void __swiftcall AceServiceInvokerImpl.cancelPendingCommands()()
{
  v1 = *(*(v0 + 160) + 16);
  os_unfair_lock_lock((v1 + 24));
  closure #1 in SubmissionTaskRegistry.cancelAll()((v1 + 16), &v7);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v7;
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.ace);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_1DC659000, oslog, v4, "Completing pending completions. pending completion count: %ld", v5, 0xCu);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }
}

uint64_t outlined assign with take of ConversationTurnState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CombiningAffinityScorer(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

uint64_t FlowTask.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t JetsamHelper.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of (transaction: OS_os_transaction?, timer: OS_dispatch_source_timer)?(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction + 8));

  return swift_deallocClassInstance();
}

uint64_t InstrumentedStack.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

_OWORD *assignWithTake for RemoteConversationService.State(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of RemoteConversationService.State(a1, type metadata accessor for RemoteConversationService.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 9) = *(a2 + 9);
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    v8 = a1 + v7;
    v9 = a2 + v7;
    *(a1 + v7) = *(a2 + v7);
    v10 = type metadata accessor for SiriRequest(0);
    v11 = v10[5];
    v12 = type metadata accessor for Input();
    (*(*(v12 - 8) + 32))(&v8[v11], &v9[v11], v12);
    *&v8[v10[6]] = *&v9[v10[6]];
    *&v8[v10[7]] = *&v9[v10[7]];
    *&v8[v10[8]] = *&v9[v10[8]];
    *&v8[v10[9]] = *&v9[v10[9]];
    *&v8[v10[10]] = *&v9[v10[10]];
    *&v8[v10[11]] = *&v9[v10[11]];
    v13 = v10[12];
    v14 = &v8[v13];
    v15 = &v9[v13];
    v16 = type metadata accessor for SiriRequestIdentities(0);
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(v14, v15, *(*(v18 - 8) + 64));
    }

    else
    {
      v21 = type metadata accessor for IdentifiedUser();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      v27 = v22;
      if (v23(v15, 1, v21))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(v14, v15, *(*(v24 - 8) + 64));
      }

      else
      {
        (*(v22 + 32))(v14, v15, v21);
        (*(v22 + 56))(v14, 0, 1, v21);
      }

      v25 = *(v16 + 20);
      if (v23(&v15[v25], 1, v21))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v14[v25], &v15[v25], *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v27 + 32))(&v14[v25], &v15[v25], v21);
        (*(v27 + 56))(&v14[v25], 0, 1, v21);
      }

      *&v14[*(v16 + 24)] = *&v15[*(v16 + 24)];
      (*(v17 + 56))(v14, 0, 1, v16);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v19 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v19);
}

uint64_t ServerFallbackDisablingUtils.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t destroy for RemoteConversationService.State(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);

    v5 = type metadata accessor for SiriRequest(0);
    v6 = v5[5];
    v7 = type metadata accessor for Input();
    (*(*(v7 - 8) + 8))(&v4[v6], v7);

    v8 = &v4[v5[8]];
    v9 = v8[1];
    if (v9 >> 60 != 15)
    {
      outlined consume of Data._Representation(*v8, v9);
    }

    v10 = &v4[v5[12]];
    v11 = type metadata accessor for SiriRequestIdentities(0);
    result = (*(*(v11 - 8) + 48))(v10, 1, v11);
    if (!result)
    {
      v12 = type metadata accessor for IdentifiedUser();
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      if (!v14(v10, 1, v12))
      {
        (*(v13 + 8))(v10, v12);
      }

      v15 = *(v11 + 20);
      if (!v14(&v10[v15], 1, v12))
      {
        (*(v13 + 8))(&v10[v15], v12);
      }
    }
  }

  else if (!result)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (a1[8])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
    }
  }

  return result;
}

uint64_t Conversation.deinit()
{

  outlined destroy of Conversation.State(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state, type metadata accessor for Conversation.State);

  outlined destroy of weak ConversationTaskObservationDelegate?(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils));

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  swift_defaultActor_destroy();
  return v0;
}

void *SiriKitRuntimeState.taskService.getter()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for TaskService();
    v1 = swift_allocObject();
    v1[2] = closure #1 in default argument 1 of TaskService.init(initialTask:taskIdGenerator:);
    v1[3] = 0;
    v1[4] = MEMORY[0x1E69E7CC0];
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t outlined assign with take of RemoteConversationService.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteConversationService.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Conversation.__deallocating_deinit()
{
  Conversation.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t Node.__deallocating_deinit()
{
  Node.deinit();

  return swift_deallocClassInstance();
}

uint64_t FlowAgent.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for ServerFallbackCapableRequestProcessor(uint64_t a1)
{
  result = type metadata singleton initialization cache for ServerFallbackCapableRequestProcessor;
  if (!type metadata singleton initialization cache for ServerFallbackCapableRequestProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConversationBridge.isFirstRequestInSession.getter()
{
  v1 = direct field offset for ConversationBridge.isFirstRequestInSession;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag()
{
  result = lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag;
  if (!lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag;
  if (!lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag);
  }

  return result;
}

void *ConversationBridge.muxContextMessage.getter()
{
  v1 = direct field offset for ConversationBridge.muxContextMessage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_yyctMd, &_s10Foundation4UUIDV_yyctMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v9, v5, &_s10Foundation4UUIDV_yyctMd, &_s10Foundation4UUIDV_yyctMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t RecentDialogTracker.setCurrentRequest(withRequestId:sessionId:)(void (*a1)(void, void, void, void), unint64_t a2, uint64_t a3)
{
  v54 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v47 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.conversationBridge);
  v21 = *(v15 + 16);
  v57 = v15 + 16;
  v58 = a3;
  v56 = v21;
  v21(v19, a3, v14);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v50 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v59[0] = v47;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, a2, v59);
    *(v25 + 12) = 2080;
    lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = a2;
    v28 = v5;
    v30 = v29;
    v49 = *(v15 + 8);
    v49(v19, v14);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v30, v59);
    v5 = v28;
    a2 = v27;

    *(v25 + 14) = v31;
    v32 = v54;
    _os_log_impl(&dword_1DC659000, v22, v23, "RecentDialogTracker: new request %s, session %s", v25, 0x16u);
    v33 = v47;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v33, -1, -1);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  else
  {

    v49 = *(v15 + 8);
    v49(v19, v14);
    v32 = v54;
  }

  v34 = v53;
  v35 = (v53 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId);
  *v35 = v32;
  v35[1] = a2;

  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestHasTrackedDialogs) = 0;
  v36 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentSessionId;
  swift_beginAccess();
  v37 = v55;
  v56(v55, v58, v14);
  v54 = *(v15 + 56);
  v54(v37, 0, 1, v14);
  v38 = *(v5 + 48);
  v39 = v52;
  outlined init with copy of UUID?(v34 + v36, v52);
  outlined init with copy of UUID?(v37, v39 + v38);
  v40 = *(v15 + 48);
  if (v40(v39, 1, v14) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v40(v39 + v38, 1, v14) == 1)
    {
      return outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    goto LABEL_11;
  }

  v42 = v50;
  outlined init with copy of UUID?(v39, v50);
  if (v40(v39 + v38, 1, v14) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v49(v42, v14);
LABEL_11:
    outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_12:
    RecentDialogTracker.clearRecentDialogs()();
    v43 = v51;
    v56(v51, v58, v14);
    v54(v43, 0, 1, v14);
    swift_beginAccess();
    outlined assign with take of UUID?(v43, v34 + v36);
    return swift_endAccess();
  }

  v44 = v48;
  (*(v15 + 32))(v48, v39 + v38, v14);
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = v49;
  v49(v44, v14);
  outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v46(v42, v14);
  result = outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v45 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ConversationRequestAwareBridgeBase.handleStartRequestInternal(_:)(void *a1, NSObject *a2)
{
  v3 = v2;
  v66 = a2;
  v5 = *v2;
  v6 = type metadata accessor for UUID();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v9 = RequestMessageBase.requestId.getter();
  v11 = v10;
  v63 = MessageBase.assistantId.getter();
  v13 = v12;
  v14 = (*(*v2 + 376))();
  if (!v14)
  {
    goto LABEL_7;
  }

  v16 = *(v14 + 64);
  v15 = *(v14 + 72);

  if (v16 == v9 && v15 == v11)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
LABEL_7:
      v19 = RequestMessageBase.requestId.getter();
      v21 = v20;
      v22 = (*(*v3 + 400))();
      v67[0] = v19;
      v67[1] = v21;
      MEMORY[0x1E12A1380](&v68, v67, v22, MEMORY[0x1E69E6158], *(v5 + 320), MEMORY[0x1E69E6168]);

      v23 = v68;
      if (v68)
      {

        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Logger.conversationBridge);
        v25 = a1;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v67[0] = v29;
          *v28 = 136315138;
          v30 = RequestMessageBase.requestId.getter();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v67);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_1DC659000, v26, v27, "Got StartRequest for a request for which we've previously seen speech candidates. Will promote candidate request processor to active for requestId=%s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          MEMORY[0x1E12A2F50](v29, -1, -1);
          MEMORY[0x1E12A2F50](v28, -1, -1);
        }

        v33 = v23;
      }

      else
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        __swift_project_value_buffer(v48, static Logger.conversationBridge);

        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v61[1] = 0;
          v53 = v52;
          v67[0] = v52;
          *v51 = 136315138;
          *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v67);
          _os_log_impl(&dword_1DC659000, v49, v50, "Creating new RequestProcessor to handle StartRequest<requestId: %s>", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v53);
          MEMORY[0x1E12A2F50](v53, -1, -1);
          MEMORY[0x1E12A2F50](v51, -1, -1);
        }

        SessionMessageBase.sessionId.getter();
        v54 = (v66[2].isa)(ObjectType);
        v33 = (*(*v3 + 472))(v63, v13, v8, v9, v11, v54, v55);

        (*(v64 + 8))(v8, v65);
      }

      v56 = *(*v3 + 384);

      v56(v57);
      if (v33)
      {
        (*(*v3 + 496))(a1, v33);
      }

      else
      {
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_1DC659000, v58, v59, "Could not create an instance of RequestProcessor", v60, 2u);
          MEMORY[0x1E12A2F50](v60, -1, -1);
        }

        else
        {
        }
      }

      return;
    }
  }

  v34 = a1;

  v66 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v66, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v67[0] = v37;
    *v36 = 136315650;
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v67);

    *(v36 + 4) = v38;
    *(v36 + 12) = 2080;
    MessageBase.messageId.getter();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v39 = v65;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    (*(v64 + 8))(v8, v39);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v67);

    *(v36 + 14) = v43;
    *(v36 + 22) = 2080;
    swift_getObjectType();
    v44 = _typeName(_:qualified:)();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v67);

    *(v36 + 24) = v46;
    _os_log_impl(&dword_1DC659000, v66, v35, "Got a duplicate start request message to requestId: %s messageId: %s type: %s ignoring the new start", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v37, -1, -1);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  else
  {

    v47 = v66;
  }
}

uint64_t StartRequestMessageBase.rootRequestId.getter()
{
  type metadata accessor for StartRequestMessageBase();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes16RootRequestAware_pMd, &_s16SiriMessageTypes16RootRequestAware_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ReferenceResolutionClientProtocol(v4, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v2 = dispatch thunk of RootRequestAware.rootRequestId.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    return v2;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    outlined destroy of RootRequestAware?(v4);
    return RequestMessageBase.requestId.getter();
  }
}

void *ConversationBridge.createRequestProcessor(_:_:_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v269 = a7;
  v270 = a6;
  v291 = a5;
  v285 = a4;
  v293 = a3;
  v267 = a1;
  v268 = a2;
  v9 = type metadata accessor for UserSessionState();
  v272 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v275 = &v247 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v277 = &v247 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v280 = (&v247 - v14);
  v282 = type metadata accessor for SessionConfiguration();
  v284 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v271 = &v247 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v276 = &v247 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v281 = &v247 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v287 = &v247 - v21;
  v22 = type metadata accessor for UserID();
  v288 = *(v22 - 8);
  v289 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v278 = &v247 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v274 = &v247 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v283 = &v247 - v27;
  v294 = type metadata accessor for UUID();
  v28 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v292 = &v247 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v279 = &v247 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v273 = &v247 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v286 = &v247 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v247 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v290 = &v247 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v247 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v247 - v45;
  v48.n128_f64[0] = MEMORY[0x1EEE9AC00](v47);
  v50 = &v247 - v49;
  (*(*v7 + 816))(&v325, v48);
  if (!v326)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v325, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.conversationBridge);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1DC659000, v67, v68, "Did not finish initializing ReferenceResolutionClient before receiving a new request. THIS SHOULD NOT HAPPEN!", v69, 2u);
      MEMORY[0x1E12A2F50](v69, -1, -1);
    }

    goto LABEL_40;
  }

  v51 = outlined init with take of ReferenceResolutionClientProtocol(&v325, v327);
  (*(*v7 + 840))(&v323, v51);
  if (!v324)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v323, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.conversationBridge);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_1DC659000, v71, v72, "Did not finish initializing CorrectionsPlatformClient before receiving a new request. THIS SHOULD NOT HAPPEN!", v73, 2u);
      MEMORY[0x1E12A2F50](v73, -1, -1);
    }

    goto LABEL_39;
  }

  v52 = outlined init with take of ReferenceResolutionClientProtocol(&v323, &v325);
  v53 = (*(*v7 + 864))(v52);
  if (!v53)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.conversationBridge);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_1DC659000, v75, v76, "Did not finish initializing NetworkAvailabilityProvider before receiving a new request. THIS SHOULD NOT HAPPEN!", v77, 2u);
      MEMORY[0x1E12A2F50](v77, -1, -1);
    }

    goto LABEL_37;
  }

  v258 = v9;
  v264 = v53;
  v54 = (*v7 + 912);
  v55 = *v54;
  v266 = v7;
  v259 = v54;
  v260 = v55;
  v55();
  v56 = v28 + 16;
  v57 = *(v28 + 16);
  v58 = v28;
  v59 = v294;
  v262 = v57;
  v263 = v56;
  v57(v46, v293, v294);
  (*(v58 + 56))(v46, 0, 1, v59);
  v60 = *(v36 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v50, v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v46, &v38[v60], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v265 = v58;
  v63 = *(v58 + 48);
  v61 = (v58 + 48);
  v62 = v63;
  if (v63(v38, 1, v59) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v64 = v294;
    outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v62(&v38[v60], 1, v64) == 1)
    {
      v65 = outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v8 = v266;
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v38, v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v62(&v38[v60], 1, v59) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v64 = v294;
    outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v265 + 8))(v43, v64);
LABEL_23:
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v8 = v266;
LABEL_24:
    v261 = v62;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Logger.conversationBridge);
    v79 = v292;
    v262(v292, v293, v64);
    v80 = v291;

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    v83 = os_log_type_enabled(v81, v82);
    v84 = v290;
    if (v83)
    {
      v85 = swift_slowAlloc();
      v293 = swift_slowAlloc();
      *&v323 = v293;
      *v85 = 136315650;
      v260();
      if ((v261)(v84, 1, v64))
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v86 = 0xE300000000000000;
        v87 = 7104878;
        v88 = v265;
      }

      else
      {
        v112 = v286;
        v262(v286, v84, v64);
        outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v113 = UUID.uuidString.getter();
        v86 = v114;
        v88 = v265;
        (*(v265 + 8))(v112, v64);
        v87 = v113;
      }

      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v86, &v323);

      *(v85 + 4) = v115;
      *(v85 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v116 = v292;
      v117 = dispatch thunk of CustomStringConvertible.description.getter();
      v119 = v118;
      (*(v88 + 8))(v116, v64);
      v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, &v323);

      *(v85 + 14) = v120;
      *(v85 + 22) = 2080;
      *(v85 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v285, v80, &v323);
      _os_log_impl(&dword_1DC659000, v81, v82, "Request does not belong to current session id: %s, request session id: %s for request id: %s", v85, 0x20u);
      v121 = v293;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v121, -1, -1);
      MEMORY[0x1E12A2F50](v85, -1, -1);

      __swift_destroy_boxed_opaque_existential_1Tm(&v325);
      __swift_destroy_boxed_opaque_existential_1Tm(v327);
      v8 = v266;
      goto LABEL_40;
    }

    (*(v265 + 8))(v79, v64);
    goto LABEL_38;
  }

  v261 = v62;
  v89 = v265;
  v90 = *(v265 + 32);
  v257 = v61;
  v91 = v286;
  v90(v286, &v38[v60], v59);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  LODWORD(v256) = dispatch thunk of static Equatable.== infix(_:_:)();
  v92 = v89;
  v62 = v261;
  v93 = *(v92 + 8);
  v93(v91, v59);
  outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v93(v43, v294);
  v64 = v294;
  v65 = outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = v266;
  if ((v256 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_31:
  v94 = v287;
  (*(*v8 + 984))(v65);
  v96 = v288;
  v95 = v289;
  if ((*(v288 + 48))(v94, 1, v289) != 1)
  {
    v103 = v283;
    v104 = (*(v96 + 32))(v283, v94, v95);
    v105 = v280;
    (*(*v8 + 936))(v104);
    v106 = v284;
    v107 = v282;
    if ((*(v284 + 48))(v105, 1, v282) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v105, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      __swift_project_value_buffer(v108, static Logger.conversationBridge);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_1DC659000, v109, v110, "sessionConfiguration has not been set for current session", v111, 2u);
        MEMORY[0x1E12A2F50](v111, -1, -1);
      }

      goto LABEL_63;
    }

    v122 = (*(v106 + 32))(v281, v105, v107);
    (*(*v8 + 960))(&v321, v122);
    if (!v322)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v321, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v130 = type metadata accessor for Logger();
      __swift_project_value_buffer(v130, static Logger.conversationBridge);
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        *v133 = 0;
        _os_log_impl(&dword_1DC659000, v131, v132, "Unable to find SessionState to pass to RequestProcessor", v133, 2u);
        v134 = v133;
        v106 = v284;
        MEMORY[0x1E12A2F50](v134, -1, -1);
      }

      goto LABEL_62;
    }

    v123 = outlined init with take of ReferenceResolutionClientProtocol(&v321, &v323);
    v124 = (*(*v8 + 1032))(v123);
    if (v124 == 2)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      __swift_project_value_buffer(v125, static Logger.conversationBridge);
      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&dword_1DC659000, v126, v127, "Unable to find isSystemAssistantExperienceEnabled to pass to RequestProcessor", v128, 2u);
        v129 = v128;
        v106 = v284;
        MEMORY[0x1E12A2F50](v129, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v323);
LABEL_62:
      (*(v106 + 8))(v281, v107);
LABEL_63:
      (*(v96 + 8))(v103, v95);
      goto LABEL_38;
    }

    v135 = v124;
    v136 = (*v8 + 1008);
    v137 = *v136;
    v138 = v136;
    if ((*v136)())
    {
      v139 = (*(*v8 + 1056))();
      if (!v139)
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v230 = type metadata accessor for Logger();
        __swift_project_value_buffer(v230, static Logger.conversationBridge);
        v231 = Logger.logObject.getter();
        v232 = static os_log_type_t.error.getter();
        v233 = os_log_type_enabled(v231, v232);
        v235 = v288;
        v234 = v289;
        v236 = v283;
        if (v233)
        {
          v237 = swift_slowAlloc();
          *v237 = 0;
          _os_log_impl(&dword_1DC659000, v231, v232, "MUX is enabled but MUXContextMessage is not received. Cannot create a RequestProcessor", v237, 2u);
          v238 = v237;
          v106 = v284;
          MEMORY[0x1E12A2F50](v238, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v323);
        (*(v106 + 8))(v281, v107);
        (*(v235 + 8))(v236, v234);
        goto LABEL_38;
      }
    }

    v252 = v135;
    v262(v273, v293, v294);
    v140 = *(v106 + 16);
    v259 = v106 + 16;
    v260 = v140;
    (v140)(v276, v281, v107);
    v141 = outlined init with copy of ReferenceResolutionClientProtocol((v8 + 4), &v321);
    v142 = v8;
    (*(*v8 + 768))(v315, v141);
    v253 = *(v8 + direct field offset for ConversationBridge.executionOutputSubmitter);
    v143 = *(v8 + direct field offset for ConversationBridge.preExecutionActionHandler);
    v286 = *(v8 + direct field offset for ConversationBridge.decisionMaker);
    v287 = v143;
    v144 = outlined init with copy of ReferenceResolutionClientProtocol(&v323, v314);
    v145 = v8[9];
    v292 = *(v8 + direct field offset for ConversationBridge.instrumentationUtil);
    v293 = v145;
    v254 = (*(*v8 + 744))(v144);
    v290 = (*(*v8 + 888))();
    outlined init with copy of ReferenceResolutionClientProtocol(v327, v313);
    outlined init with copy of ReferenceResolutionClientProtocol(&v325, v312);
    v280 = v138;
    v146 = v289;
    v148 = v288 + 16;
    v147 = *(v288 + 16);
    v149 = v147(v274, v283, v289);
    *&v255 = *(v8 + direct field offset for ConversationBridge.recentDialogTracker);
    (*(*v8 + 1080))(v149);
    v150 = type metadata accessor for FeatureChecker();
    v151 = swift_allocObject();
    *(v151 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
    v310 = &type metadata for IntelligenceFlowFeatureFlag;
    v248 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
    v311 = v248;
    v152 = isFeatureEnabled(_:)();
    v153 = __swift_destroy_boxed_opaque_existential_1Tm(v309);
    *(v151 + 17) = v152 & 1;
    v257 = (*(*v142 + 1056))(v153);
    LODWORD(v261) = v137();
    type metadata accessor for ServerFallbackCapableRequestProcessor(0);
    v101 = swift_allocObject();
    v311 = &protocol witness table for FeatureChecker;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_requestHandledOnServer) = 0;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor) = 0;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_executeNLOnServerMessage) = 0;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_isUserOnActivePhoneCall) = 2;
    v249 = v150;
    v310 = v150;
    v309[0] = v151;
    v154 = MEMORY[0x1E69E7CC0];
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_gatedExecuteNLOnServer) = MEMORY[0x1E69E7CC0];
    v262(v279, v273, v294);
    v155 = v271;
    (v260)(v271, v276, v107);
    outlined init with copy of ReferenceResolutionClientProtocol(&v321, v308);
    outlined init with copy of ReferenceResolutionClientProtocol(v315, v307);
    outlined init with copy of ReferenceResolutionClientProtocol(v314, v306);
    outlined init with copy of ReferenceResolutionClientProtocol(v313, v305);
    outlined init with copy of ReferenceResolutionClientProtocol(v312, v304);
    v256 = v148;
    v280 = v147;
    v147(v278, v274, v146);
    v250 = *(v272 + 16);
    v251 = v272 + 16;
    v250(v275, v277, v258);
    outlined init with copy of ReferenceResolutionClientProtocol(v309, v303);
    v156 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
    v247 = type metadata accessor for ConcurrentTaskPool();
    v157 = swift_allocObject();
    *(v157 + 16) = v154;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v158 = swift_allocObject();
    *(v101 + v156) = v157;
    v159 = v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
    v159[16] = 3;
    *v159 = 0;
    *(v159 + 1) = 0;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
    *(v158 + 16) = 0;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
    *(v157 + 24) = v158;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
    v160 = (v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
    *v160 = 0;
    v160[1] = 0;
    v161 = v155;
    v162 = v292;
    (v260)(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration, v161, v107);
    v163 = objc_opt_self();

    v164 = v264;

    v165 = [v163 sharedPreferences];
    v166 = [objc_opt_self() clientWithIdentifier_];
    v167 = type metadata accessor for TrialExperimentationAssetManager();
    v168 = swift_allocObject();
    v169 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
    *(v168 + 16) = v166;
    *(v168 + 24) = v169;
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    v170 = static SelfReflectionCurareDonator.instance;
    type metadata accessor for SelfReflectionAgent();
    v171 = swift_allocObject();
    v302 = &protocol witness table for TrialExperimentationAssetManager;
    v301 = v167;
    *&v300 = v168;
    type metadata accessor for TaggingService();
    swift_allocObject();

    *(v171 + 104) = TaggingService.init()();
    *(v171 + 144) = 0;
    *(v171 + 128) = 0u;
    *(v171 + 112) = 0u;
    *(v171 + 16) = v162;
    *(v171 + 24) = v164;
    *(v171 + 32) = v165;
    LODWORD(v259) = v252 & 1;
    *(v171 + 40) = v252 & 1;
    outlined init with take of ReferenceResolutionClientProtocol(&v300, v171 + 48);
    swift_beginAccess();
    *(v171 + 128) = 0;
    swift_beginAccess();
    *(v171 + 136) = 0;
    swift_beginAccess();
    v172 = *(v171 + 144);
    *(v171 + 144) = 0;

    *(v171 + 152) = 33686018;
    *(v171 + 156) = 514;
    *(v171 + 160) = 0;
    *(v171 + 168) = 1;
    *(v171 + 169) = *v318;
    *(v171 + 172) = *&v318[3];
    *(v171 + 176) = 0;
    *(v171 + 184) = 1;
    *(v171 + 185) = 2;
    *(v171 + 186) = v316;
    *(v171 + 190) = v317;
    *(v171 + 192) = 0;
    *(v171 + 200) = 0;
    LOBYTE(v297) = 1;
    LOBYTE(v296[0]) = 1;
    *(v171 + 208) = 33686018;
    *(v171 + 212) = 514;
    *(v171 + 216) = 0;
    *(v171 + 224) = 1;
    *(v171 + 225) = *v320;
    *(v171 + 228) = *&v320[3];
    *(v171 + 232) = 0;
    *(v171 + 240) = 1;
    *(v171 + 241) = 2;
    v173 = *&v318[7];
    *(v171 + 246) = v319;
    *(v171 + 242) = v173;
    *(v171 + 248) = 0;
    *(v171 + 256) = 0;
    *(v171 + 88) = v170;
    *(v171 + 264) = 0;
    *(v171 + 96) = 0;
    v174 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v171;
    outlined init with copy of ReferenceResolutionClientProtocol(v307, v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
    v175 = v253;
    v176 = v253[3];
    v177 = *(*v253 + 152);
    v178 = swift_unknownObjectRetain();
    v179 = v177(v178);
    outlined init with copy of ReferenceResolutionClientProtocol((v175 + 4), &v300);
    v180 = *(v101 + v174);
    v181 = v249;
    v182 = swift_allocObject();
    v183 = v257;
    v260 = v257;

    *(v182 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
    v298 = &type metadata for IntelligenceFlowFeatureFlag;
    v299 = v248;
    LOBYTE(v177) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(&v297);
    *(v182 + 17) = v177 & 1;
    type metadata accessor for ConversationOutputSubmitter();
    v184 = swift_allocObject();
    v299 = &protocol witness table for FeatureChecker;
    v298 = v181;
    *&v297 = v182;
    v185 = swift_allocObject();
    v186 = MEMORY[0x1E69E7CC0];
    *(v185 + 16) = MEMORY[0x1E69E7CC0];
    v187 = swift_allocObject();
    *(v187 + 16) = 0;
    *(v185 + 24) = v187;
    *(v184 + 16) = v185;
    *(v184 + 88) = 0;
    *(v184 + 80) = 0;
    *(v184 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v186);
    *(v184 + 104) = 30000000000;
    *(v184 + 24) = v176;
    *(v184 + 72) = v179 & 1;
    swift_beginAccess();
    v188 = *(v184 + 80);
    *(v184 + 80) = v183;

    outlined init with take of ReferenceResolutionClientProtocol(&v300, v184 + 32);
    swift_beginAccess();
    *(v184 + 88) = v180;

    outlined init with take of ReferenceResolutionClientProtocol(&v297, v184 + 112);
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v184;
    v189 = v287;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = v286;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = v189;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = v293;
    outlined init with copy of ReferenceResolutionClientProtocol(v306, v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = v292;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = v254 & 1;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = v264;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = v290;
    outlined init with copy of ReferenceResolutionClientProtocol(v305, v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
    outlined init with copy of ReferenceResolutionClientProtocol(v304, v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = v183;
    v190 = v278;
    (v280)(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v278, v289);
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = v261 & 1;
    v250(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState, v275, v258);
    outlined init with copy of ReferenceResolutionClientProtocol(v303, v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
    v191 = v255;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = v255;
    v192 = *(*v191 + 224);

    v260 = v260;

    v193 = v293;
    swift_unknownObjectRetain();
    v192(v285, v291, v279);
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = v259;
    v194 = v190;
    v195 = v193;
    v196 = v280;
    if (one-time initialization token for sharedInstance != -1)
    {
      swift_once();
    }

    v197 = static DeviceContextHelper.sharedInstance;
    v198 = (v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
    v286 = type metadata accessor for DeviceContextHelper();
    v287 = v197;
    v198[3] = v286;
    v198[4] = &protocol witness table for DeviceContextHelper;
    *v198 = v197;
    type metadata accessor for ConversationBridgeProcessorDelegate();
    v199 = swift_allocObject();
    swift_weakInit();
    *(v199 + 24) = v195;
    *(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v199;
    if (v261)
    {
      v200 = v287;
      v201 = v270;
      if (!v257)
      {
        v239 = one-time initialization token for conversationBridge;
        swift_unknownObjectRetain();

        if (v239 != -1)
        {
          swift_once();
        }

        v240 = type metadata accessor for Logger();
        __swift_project_value_buffer(v240, static Logger.conversationBridge);
        v241 = Logger.logObject.getter();
        v242 = static os_log_type_t.error.getter();
        v243 = os_log_type_enabled(v241, v242);
        v221 = v294;
        v216 = v269;
        v218 = v285;
        if (v243)
        {
          v244 = swift_slowAlloc();
          *v244 = 0;
          _os_log_impl(&dword_1DC659000, v241, v242, "Cannot create an instance of ContextUpdater since MUXContextMessage is unavailable", v244, 2u);
          MEMORY[0x1E12A2F50](v244, -1, -1);
        }

        v211 = 0;
        v220 = 0;
        v219 = 0;
        v215 = v291;
        v217 = v267;
        v204 = v268;
        v201 = v270;
        goto LABEL_76;
      }

      v202 = v260;
      swift_unknownObjectRetain();

      v261 = specialized static ConversationMUXUtils.getAllUserIds(from:)();
      specialized static ConversationMUXUtils.getAllKnownUserIds(from:)();
      v280 = v203;

      v204 = v268;
    }

    else
    {
      v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMR);
      v205 = v288;
      v257 = *(v288 + 72);
      v206 = (*(v288 + 80) + 32) & ~*(v288 + 80);
      v207 = swift_allocObject();
      v255 = xmmword_1DCA66060;
      *(v207 + 16) = xmmword_1DCA66060;
      v208 = v289;
      v196(v207 + v206, v194, v289);
      swift_unknownObjectRetain();

      v261 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v207);
      swift_setDeallocating();
      v209 = *(v205 + 8);
      v209(v207 + v206, v208);
      swift_deallocClassInstance();
      v210 = swift_allocObject();
      *(v210 + 16) = v255;
      v196(v210 + v206, v278, v208);
      v280 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v210);
      swift_setDeallocating();
      v209(v210 + v206, v208);
      swift_deallocClassInstance();
      v204 = v268;
      v201 = v270;
      v200 = v287;
    }

    v211 = type metadata accessor for MultiUserContextUpdater();
    outlined init with copy of ReferenceResolutionClientProtocol(v306, &v300);
    outlined init with copy of ReferenceResolutionClientProtocol(v305, &v297);
    outlined init with copy of ReferenceResolutionClientProtocol(v304, v296);
    v212 = v293;
    ObjectType = swift_getObjectType();
    v295 = v200;
    v214 = v292;

    swift_unknownObjectRetain();

    v215 = v291;

    v216 = v269;

    v246 = ObjectType;
    *&v245 = v214;
    *(&v245 + 1) = v261;
    v217 = v267;
    v218 = v285;
    v219 = specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(&v300, &v297, v296, v212, v267, v204, v285, v215, v201, v216, &v295, v245, v280, v211, v286, v246, &protocol witness table for DeviceContextHelper);
    v220 = &protocol witness table for MultiUserContextUpdater;
    v221 = v294;
LABEL_76:
    v222 = (v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
    *v222 = v219;
    v222[1] = 0;
    v222[2] = 0;
    v222[3] = v211;
    v222[4] = v220;
    v262(v101 + OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId, v279, v221);
    outlined init with copy of ReferenceResolutionClientProtocol(v308, (v101 + 3));
    v101[12] = v217;
    v101[13] = v204;
    v101[8] = v218;
    v101[9] = v215;
    v101[10] = v201;
    v101[11] = v216;
    v101[2] = v293;
    swift_unknownObjectRetain();

    ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)(v101);

    __swift_destroy_boxed_opaque_existential_1Tm(v303);
    v293 = *(v272 + 8);
    v293(v275, v258);
    v292 = *(v288 + 8);
    (v292)(v278, v289);
    __swift_destroy_boxed_opaque_existential_1Tm(v304);
    __swift_destroy_boxed_opaque_existential_1Tm(v305);
    __swift_destroy_boxed_opaque_existential_1Tm(v306);
    __swift_destroy_boxed_opaque_existential_1Tm(v307);
    __swift_destroy_boxed_opaque_existential_1Tm(v308);
    v223 = *(v284 + 8);
    v224 = v282;
    v223(v271, v282);
    v225 = *(v265 + 8);
    v225(v279, v221);
    v293(v277, v258);
    v226 = v289;
    v227 = v292;
    (v292)(v274, v289);
    __swift_destroy_boxed_opaque_existential_1Tm(v312);
    __swift_destroy_boxed_opaque_existential_1Tm(v313);
    __swift_destroy_boxed_opaque_existential_1Tm(v314);
    __swift_destroy_boxed_opaque_existential_1Tm(v315);
    __swift_destroy_boxed_opaque_existential_1Tm(&v321);
    v223(v276, v224);
    v225(v273, v294);
    __swift_destroy_boxed_opaque_existential_1Tm(&v323);
    v223(v281, v224);
    v227(v283, v226);
    __swift_destroy_boxed_opaque_existential_1Tm(&v325);
    __swift_destroy_boxed_opaque_existential_1Tm(v327);
    __swift_destroy_boxed_opaque_existential_1Tm(v309);
    v228 = direct field offset for ConversationBridge.isFirstRequestInSession;
    v229 = v266;
    swift_beginAccess();
    *(v229 + v228) = 0;
    return v101;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v97 = type metadata accessor for Logger();
  __swift_project_value_buffer(v97, static Logger.conversationBridge);
  v75 = Logger.logObject.getter();
  v98 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v75, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_1DC659000, v75, v98, "UserId has not been set for current session", v99, 2u);
    MEMORY[0x1E12A2F50](v99, -1, -1);
  }

LABEL_37:

LABEL_38:
  __swift_destroy_boxed_opaque_existential_1Tm(&v325);
LABEL_39:
  __swift_destroy_boxed_opaque_existential_1Tm(v327);
LABEL_40:
  v100 = direct field offset for ConversationBridge.isFirstRequestInSession;
  swift_beginAccess();
  v101 = 0;
  *(v8 + v100) = 0;
  return v101;
}

uint64_t partial apply for closure #1 in ConversationRequestAwareBridgeBase.handleMessage(_:)@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*result + 16);
  v4 = (*result + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = *v4++;
    result = swift_getObjectType();
  }

  while (v7 != result);
  *a2 = v5 != 0;
  return result;
}

uint64_t AnnounceContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ConversationBridge.isSystemAssistantExperienceEnabled.getter()
{
  v1 = direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationBridge.isMUXEnabled.getter()
{
  v1 = direct field offset for ConversationBridge.isMUXEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationBridge.userSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for ConversationBridge.userSessionState;
  swift_beginAccess();
  v4 = type metadata accessor for UserSessionState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ManagedContinuation.resume(returning:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = type metadata accessor for Result();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(*(v3 - 8) + 16))(&v10 - v7, a1, v3, v6);
  swift_storeEnumTagMultiPayload();
  ManagedContinuation.resume(with:)(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DC66F280()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t InterruptibleTaskManager.perform<A>(_:)()
{
  v1 = *(v0 + 144);

  swift_beginAccess();
  v2 = specialized Dictionary._Variant.removeValue(forKey:)(v1);
  v4 = v3;
  swift_endAccess();
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(*v0 + 136);

  return MEMORY[0x1EEE6DFA0](InterruptibleTaskManager.perform<A>(_:), v1, 0);
}

uint64_t protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl()
{
  return (*(v0 + 8))();
}

{
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl, 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD00000000000001ELL, 0x80000001DCA7C2F0, closure #1 in AceServiceInvokerImpl.prepareForAudioHandoffFailed()partial apply, v2, v3);
}

{

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v5, v1, v1, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)()
{
  v1 = v0[11];
  v2 = *(v1 + 48);
  v0[18] = v2;
  if (v2)
  {
    v3 = *(v1 + 56);
    v4 = one-time initialization token for executor;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "RemoteConversation is active", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v9 = v0[10];
    v11 = v0[8];
    v10 = v0[9];

    v12 = swift_allocObject();
    v0[19] = v12;
    v12[2] = v9;
    v12[3] = v11;
    v12[4] = v10;
    v12[5] = v2;
    v12[6] = v3;
    swift_unknownObjectRetain();

    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
    v14 = v0[16];
    v15 = v0[10];

    return InterruptibleTaskManager.perform<A>(_:)(v14, &async function pointer to partial apply for closure #1 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v12, v15);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DC659000, v18, v19, "RemoteConversation is invalid, will reconnect", v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    v21 = v0[11];

    if (*(v21 + 64))
    {
      v22 = *(v21 + 64);
    }

    else
    {
      v23 = v0[11];
      v24 = v0[12];
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
      v26 = static MessageBusActor.shared;
      v27 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
      v28 = swift_allocObject();
      v28[2] = v26;
      v28[3] = v27;
      v28[4] = v23;

      v22 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime18RemoteConversation_p_Tt2g5(0, 0, v24, &async function pointer to partial apply for closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v28);
      *(v21 + 64) = v22;
      swift_retain_n();
    }

    v0[22] = v22;
    swift_retain_n();
    v29 = swift_task_alloc();
    v0[23] = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime18RemoteConversation_pMd, &_s14SiriKitRuntime18RemoteConversation_pMR);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v29 = v0;
    v29[1] = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
    v32 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 5, v22, v30, v31, v32);
  }
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[13];
  v2 = v0[7];

  InterruptibleTaskResult.get()(v1, v2);
  (*(v0[14] + 8))(v0[16], v0[13]);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 136);

  if (v0)
  {
    v4 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v4 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = v0[6];
  v0[25] = v5;
  v1[8] = 0;

  v1[6] = v5;
  v1[7] = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7 = swift_allocObject();
  v0[26] = v7;
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v5;
  v7[6] = v6;

  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  v9 = v0[15];
  v10 = v0[10];

  return InterruptibleTaskManager.perform<A>(_:)(v9, &async function pointer to partial apply for closure #3 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v7, v10);
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 136);

  if (v0)
  {
    v4 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v4 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[13];
  v2 = v0[7];

  InterruptibleTaskResult.get()(v1, v2);
  (*(v0[14] + 8))(v0[15], v0[13]);

  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DC66FB70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *initializeWithCopy for InterruptibleTaskResult(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 3;
  if (v5 < 3)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 3;
  v5 = v8 + 3;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 2)
  {
    v13 = *a2;
    v14 = *a2;
    *a1 = v13;
    v12 = 2;
  }

  else if (v5 == 1)
  {
    v10 = *a2;
    v11 = *a2;
    *a1 = v10;
    v12 = 1;
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v12 = 0;
  }

  *(a1 + v4) = v12;
  return a1;
}

void destroy for InterruptibleTaskResult(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = a1[v2];
  v4 = v3 - 3;
  if (v3 >= 3)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 3;
    v3 = v6 + 3;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 2 || v3 == 1)
  {
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }
}

uint64_t InterruptibleTaskResult.getOrNilIfInterrupted()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return swift_willThrow();
    }

    else
    {
      (*(v4 + 8))(v7, a1);
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
    }
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 - 8);
    (*(v11 + 32))(a2, v7, v10);
    return (*(v11 + 56))(a2, 0, 1, v10);
  }
}

uint64_t CheckedContinuation.resume(with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Result();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v16, v8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v4 + 32))(v6, v16, v3);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #1 in RemoteConversationClient.ensureReady()()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  v16 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_allocObject();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    swift_unknownObjectRetain_n();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *(v4 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.ensureReady();
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = closure #1 in RemoteConversationClient.ensureReady();
    v6 = v0[2];
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)specialized partial apply, v4, v7);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6552657275736E65, 0xED00002928796461, &v15);
      _os_log_impl(&dword_1DC659000, v9, v10, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = closure #1 in RemoteConversationClient.ensureReady();
  }

  else
  {

    v2 = closure #1 in RemoteConversationClient.ensureReady();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t withCancellableContinuation<A>(body:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_3Tm_1(void (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v3 + 24));
  a1(*(v3 + 32));

  return a3(v3, a2, 7);
}

uint64_t objectdestroy_3Tm_2(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_3Tm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1E12A23D0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1E12A23D0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t ManagedContinuation.deinit()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  type metadata accessor for Result();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ManagedContinuation.__deallocating_deinit()
{
  ManagedContinuation.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #2 in ManagedContinuation.updateState(continuation:result:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = *(type metadata accessor for CheckedContinuation() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Result() - 8);
  v6 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return closure #2 in ManagedContinuation.updateState(continuation:result:)(v0 + v3, v6, v1);
}

uint64_t closure #2 in ManagedContinuation.updateState(continuation:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(with:)(a2, v4);
}

uint64_t ManagedContinuation.resume(with:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for Result();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = type metadata accessor for CheckedContinuation();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  (*(*(v7 - 8) + 56))(&v15 - v11, 1, 1, v7, v10);
  v13 = *(v2 - 8);
  (*(v13 + 16))(v6, a1, v2);
  (*(v13 + 56))(v6, 0, 1, v2);
  ManagedContinuation.updateState(continuation:result:)(v12, v6);
  (*(v4 + 8))(v6, v3);
  return (*(v9 + 8))(v12, v8);
}

Swift::Void __swiftcall ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:)(Swift::OpaquePointer activeTasks, Swift::OpaquePointer completedTasks)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31[-1] - v7;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.executor);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v8;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31[0] = v14;
    *v13 = 136315394;
    v15 = type metadata accessor for Siri_Nlu_External_Task();
    v16 = MEMORY[0x1E12A16D0](activeTasks._rawValue, v15);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v31);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v19 = MEMORY[0x1E12A16D0](completedTasks._rawValue, v15);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v31);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1DC659000, v10, v11, "[ConversationService]: Registering ExecutionTaskContext with activeTasks: %s, completedTasks: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    v22 = v13;
    v8 = v30;
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  v3[2]._rawValue = activeTasks._rawValue;

  v3[3]._rawValue = completedTasks._rawValue;

  if (v3[4]._rawValue)
  {

    MEMORY[0x1E12A1950](v23, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = one-time initialization token for shared;

  if (v25 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = static MessageBusActor.shared;
  v28 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v27, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v29 = swift_allocObject();
  v29[2] = v26;
  v29[3] = v28;
  v29[4] = v3;

  v3[4]._rawValue = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:), v29);
}

uint64_t closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:)()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {

    v4 = closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:);
  }

  else
  {
    v4 = closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.executor);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "[ConversationService]: ExecutionTaskContext expired. Clearing it.", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    v5 = *(v0 + 40);

    (*(*v5 + 192))();
  }

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = static ConversationService.ExecutionTaskContext.expirationInNanoSeconds;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:);

  return MEMORY[0x1EEE6DA60](v1);
}

Swift::Void __swiftcall ConversationService.ExecutionTaskContext.clear()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[ConversationService]: Clearing ExecutionTaskContext", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];

  *(v1 + 24) = v6;
}

uint64_t sub_1DC671AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t destroy for SiriRequest(uint64_t a1, int *a2)
{

  v4 = a2[5];
  v5 = type metadata accessor for Input();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = (a1 + a2[8]);
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v6, v7);
  }

  v8 = a1 + a2[12];
  v9 = type metadata accessor for SiriRequestIdentities(0);
  result = (*(*(v9 - 8) + 48))(v8, 1, v9);
  if (!result)
  {
    v11 = type metadata accessor for IdentifiedUser();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (!v13(v8, 1, v11))
    {
      (*(v12 + 8))(v8, v11);
    }

    v14 = *(v9 + 20);
    if (!v13(v8 + v14, 1, v11))
    {
      (*(v12 + 8))(v8 + v14, v11);
    }
  }

  return result;
}

uint64_t CorrectionsUndoManager.__deallocating_deinit()
{

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 24, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for AFServiceDeviceContext()
{
  result = lazy cache variable for type metadata for AFServiceDeviceContext;
  if (!lazy cache variable for type metadata for AFServiceDeviceContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AFServiceDeviceContext);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RemoteConversationService.executionDidComplete()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.executionDidComplete(), v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "executionDidComplete()", 22, 2);
  v5 = (*(**(v1 + 168) + 216) + **(**(v1 + 168) + 216));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = RemoteConversationService.executionDidComplete();

  return v5();
}

uint64_t outlined init with take of Conversation.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.reset(reply:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(a1, v4, v5, v1 + 32);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:);

  return v6(v2, v3);
}

uint64_t protocol witness for Conversational.cancel() in conformance Conversation()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return Conversation.cancel()();
}

uint64_t Conversation.cancel()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x1EEE6DFA0](Conversation.cancel(), v0, 0);
}

{
  v1 = (*(**(v0[5] + 112) + 192))();
  if (v1)
  {
    v0[6] = v1;
    v2 = v1;
    v0[7] = swift_weakLoadStrong();
    v3 = *(v2 + 16);
    v0[8] = v3;

    return MEMORY[0x1EEE6DFA0](Conversation.cancel(), v3, 0);
  }

  else
  {
    swift_beginAccess();
    Conversation.State.cancel()();
    swift_endAccess();
    v4 = v0[1];

    return v4();
  }
}

{
  v1 = *(v0 + 40);
  FlowAgent.cancel()();

  return MEMORY[0x1EEE6DFA0](Conversation.cancel(), v1, 0);
}

{
  v1 = v0[7];

  if (v1)
  {
    v2 = v0[7];
    v0[6] = v2;
    v0[7] = swift_weakLoadStrong();
    v3 = *(v2 + 16);
    v0[8] = v3;

    return MEMORY[0x1EEE6DFA0](Conversation.cancel(), v3, 0);
  }

  else
  {
    swift_beginAccess();
    Conversation.State.cancel()();
    swift_endAccess();
    v4 = v0[1];

    return v4();
  }
}

Swift::Void __swiftcall FlowAgent.cancel()()
{
  v1 = v0;
  v2 = type metadata accessor for FlowTraceEvent();
  v39 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136315138;
    v41 = *(v0 + 112);
    v42[0] = v9;
    type metadata accessor for AnyFlow();
    v10 = v2;
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v42);

    *(v8 + 4) = v13;
    v2 = v10;
    _os_log_impl(&dword_1DC659000, v6, v7, "[Conversation] Cancel flow %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  swift_beginAccess();
  *(v0 + 130) = 1;
  v14 = *(v0 + 144);
  if (v14)
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v38 = v2;
      v19 = v18;
      *v17 = 136315138;
      v40 = *(v0 + 112);
      v41 = v18;
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v41);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1DC659000, v15, v16, "%s cancelling prepare() task.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      v23 = v19;
      v2 = v38;
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    v24 = type metadata accessor for PrepareResponse();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1E12A1950](v14, v24, v25, MEMORY[0x1E69E7288]);
  }

  v26 = *(v1 + 136);
  if (v26)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 136315138;
      v40 = *(v1 + 112);
      v41 = v30;
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v41);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1DC659000, v27, v28, "%s cancelling execute() task.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1E12A2F50](v30, -1, -1);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    v34 = type metadata accessor for ExecuteResponse();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1E12A1950](v26, v34, v35, MEMORY[0x1E69E7288]);
  }

  *v4 = *(v1 + 112);
  v36 = v39;
  (*(v39 + 104))(v4, *MEMORY[0x1E69CFB10], v2);

  static FlowTrace.trace(event:)();
  (*(v36 + 8))(v4, v2);
}

Swift::Void __swiftcall Conversation.State.cancel()()
{
  v1 = v0;
  v2 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with take of Conversation.State(v1, v4, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = *v4;

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, static Logger.executor);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_1DC659000, v8, v9, "[Conversation] Cancelling speculation task.", v10, 2u);
          MEMORY[0x1E12A2F50](v10, -1, -1);
        }

        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGSgMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGSgMR);
LABEL_22:
        v21 = v11;
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        MEMORY[0x1E12A1950](v6, v21, v22, MEMORY[0x1E69E7288]);

        goto LABEL_25;
      }

      v16 = type metadata accessor for Conversation.State;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);

      v16 = type metadata accessor for SiriRequest;
    }

    outlined destroy of Conversation.State(v4, v16);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v6 = *v4;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DC659000, v18, v19, "[Conversation] Cancelling execution task.", v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    v11 = type metadata accessor for ConversationCommitResult(0);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "[Conversation] cancel() was called on an already cancelled conversation", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }
  }

LABEL_25:
  swift_storeEnumTagMultiPayload();
}

uint64_t initializeWithCopy for SelfReflectionResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;

  return a1;
}

uint64_t destroy for SelfReflectionResponse(uint64_t a1)
{
}

uint64_t RequestContextData.Builder.__deallocating_deinit()
{
  RequestContextData.Builder.deinit();

  return swift_deallocClassInstance();
}

uint64_t RequestContextData.Builder.deinit()
{

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_audioSource, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_audioDestination, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_responseMode, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_restrictions, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_positionInSession, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);

  return v0;
}

uint64_t closure #1 in ConcurrentTaskPool.add(task:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    *(a1 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  *(a1 + 16) = v4;
  swift_endAccess();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySayypGGMd, &_ss23_ContiguousArrayStorageCySayypGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS11appBundleId_SDySSypG8userDatatGMd, &_ss23_ContiguousArrayStorageCySS11appBundleId_SDySSypG8userDatatGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11appBundleId_SDySSypG8userDatatMd, &_sSS11appBundleId_SDySSypG8userDatatMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t ServiceBridgeErrorHandlingProxy.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ServiceBridgeDelegateXPCWrapper.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t SharedContextServiceImpl.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ServiceBridgeDelegate.xpcWrapper.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ServiceBridgeDelegateXPCWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return v4;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}