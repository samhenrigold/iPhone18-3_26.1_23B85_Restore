uint64_t GroupSession.MessageQueue.count<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = static Encodable.messageIdentifier.getter(a3);
  v5 = v4;
  v6 = PubSubTopic.QueueState.messages.getter();
  if (!*(v6 + 16))
  {

    goto LABEL_5;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v5);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(*(v6 + 56) + 8 * v7);
LABEL_6:

  return v10;
}

uint64_t GroupSession.MessageQueue.totalCount.getter()
{
  result = PubSubTopic.QueueState.messages.getter();
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = *(*(result + 56) + ((v7 << 9) | (8 * v8)));
    v10 = __OFADD__(v2, v9);
    v2 += v9;
    if (v10)
    {
      __break(1u);
LABEL_13:

      return v2;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      goto LABEL_13;
    }

    v5 = *(result + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t GroupSession.MessageQueue.hash(into:)(uint64_t a1)
{
  type metadata accessor for PubSubTopic.QueueState();
  lazy protocol witness table accessor for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState();

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int GroupSession.MessageQueue.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for PubSubTopic.QueueState();
  lazy protocol witness table accessor for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupSession<A>.MessageQueue(uint64_t a1)
{
  Hasher.init(_seed:)();
  GroupSession.MessageQueue.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState()
{
  result = lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState;
  if (!lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState)
  {
    type metadata accessor for PubSubTopic.QueueState();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState);
  }

  return result;
}

void specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TUConversationActivitySession();
    lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, type metadata accessor for TUConversationActivitySession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v5 = v22[1];
    v6 = v22[2];
    v7 = v22[3];
    v8 = v22[4];
    v9 = v22[5];
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
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

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  while (v5 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      goto LABEL_23;
    }

    v21 = v18;
    type metadata accessor for TUConversationActivitySession();
    swift_dynamicCast();
    v17 = v22[0];
    v15 = v8;
    v16 = v9;
    if (!v22[0])
    {
LABEL_24:
      v5 = v20;
LABEL_23:
      outlined consume of [UUID : Conversation].Iterator._Variant(v5);
      return;
    }

LABEL_19:
    v22[0] = v17;
    a1(&v21, v22);
    if (v4)
    {

      outlined consume of [UUID : Conversation].Iterator._Variant(v20);

      return;
    }

    if (v21)
    {
      MEMORY[0x1B27142A0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v8 = v15;
    v9 = v16;
    v5 = v20;
  }

  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t InternalGroupSessionProvider.groupSessions(for:)(void *a1, id a2, uint64_t a3)
{
  v6 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v7 = [a1 activitySessions];
  type metadata accessor for TUConversationActivitySession();
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, type metadata accessor for TUConversationActivitySession, MEMORY[0x1E69E81B8]);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = 0;
  v47 = v3;
  v44 = v6;
  v45 = a3;
  v43 = a2;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1E69E7CD0];
    v50 = MEMORY[0x1E69E7CD0];
    a2 = __CocoaSet.makeIterator()();
    v11 = __CocoaSet.Iterator.next()();
    if (v11)
    {
      v6 = MEMORY[0x1E69E7C98];
      a3 = -1;
      do
      {
        v48 = v11;
        swift_dynamicCast();
        if ([v49[0] state] && objc_msgSend(v49[0], sel_state) != 1)
        {
        }

        else
        {
          v8 = v49[0];
          v12 = *(v10 + 16);
          if (*(v10 + 24) <= v12)
          {
            specialized _NativeSet.resize(capacity:)(v12 + 1, &_ss11_SetStorageCySo29TUConversationActivitySessionCGMd, &_ss11_SetStorageCySo29TUConversationActivitySessionCGMR);
          }

          v10 = v50;
          v3 = v49[0];
          v13 = NSObject._rawHashValue(seed:)(*(v50 + 40));
          v14 = v50 + 56;
          v15 = -1 << *(v50 + 32);
          v16 = v13 & ~v15;
          v17 = v16 >> 6;
          if (((-1 << v16) & ~*(v50 + 56 + 8 * (v16 >> 6))) != 0)
          {
            v18 = __clz(__rbit64((-1 << v16) & ~*(v50 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v19 = 0;
            v20 = (63 - v15) >> 6;
            do
            {
              if (++v17 == v20 && (v19 & 1) != 0)
              {
                __break(1u);
                goto LABEL_43;
              }

              v21 = v17 == v20;
              if (v17 == v20)
              {
                v17 = 0;
              }

              v19 |= v21;
              v22 = *(v14 + 8 * v17);
            }

            while (v22 == -1);
            v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          }

          *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
          *(*(v10 + 48) + 8 * v18) = v8;
          ++*(v10 + 16);
        }

        v11 = __CocoaSet.Iterator.next()();
      }

      while (v11);
    }

LABEL_41:
    v3 = v47;
    v6 = v44;
    a3 = v45;
    a2 = v43;
    goto LABEL_42;
  }

  v24 = *(v8 + 32);
  v10 = ((1 << v24) + 63) >> 6;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v40[1] = v40;
    v41 = v10;
    MEMORY[0x1EEE9AC00](v9);
    v3 = v40 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v3, v25);
    v42 = 0;
    v6 = 0;
    a3 = v8 + 56;
    v26 = 1 << *(v8 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v10 = v27 & *(v8 + 56);
    v28 = (v26 + 63) >> 6;
    while (v10)
    {
      v29 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_33:
      v32 = v29 | (v6 << 6);
      v33 = v8;
      v34 = *(*(v8 + 48) + 8 * v32);
      if ([v34 state])
      {
        a2 = [v34 state];

        v8 = v33;
        if (a2 == 1)
        {
          goto LABEL_37;
        }
      }

      else
      {

        v8 = v33;
LABEL_37:
        *&v3[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v32;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
LABEL_40:
          v23 = specialized _NativeSet.extractSubset(using:count:)(v3, v41, v42, v8);
          v10 = v23;
          goto LABEL_41;
        }
      }
    }

    v30 = v6;
    while (1)
    {
      v6 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v6 >= v28)
      {
        goto LABEL_40;
      }

      v31 = *(a3 + 8 * v6);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v10 = (v31 - 1) & v31;
        goto LABEL_33;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v39 = swift_slowAlloc();
  v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo29TUConversationActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So29ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v39, v10, v8, closure #1 in InternalGroupSessionProvider.groupSessions(for:));

  v23 = MEMORY[0x1B2715BA0](v39, -1, -1);
LABEL_42:
  MEMORY[0x1EEE9AC00](v23);
  v40[-4] = a2;
  v40[-3] = a3;
  v40[-2] = v6;
  v40[-1] = v3;
  specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in InternalGroupSessionProvider.groupSessions(for:), &v40[-6], v10);
  v37 = v36;

  return v37;
}

uint64_t closure #2 in InternalGroupSessionProvider.groupSessions(for:)@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v39 = a5;
  v9 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a1;
  v12 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [a2 initiator];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 value];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v17;
    v35 = v16;
  }

  else
  {
    v34 = 0xE000000000000000;
    v35 = 0;
  }

  v33 = [a2 localParticipantIdentifier];
  v18 = [a2 localMember];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 handle];

    v21 = [v20 value];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = [a2 unreliableMessengerConfig];
  v26 = (*(a4 + 32))(a3, a4);
  (*(a4 + 40))(v38, a3, a4);
  v27 = (*(a4 + 16))(a3, a4);
  v28 = v36;
  v29 = [v36 activity];
  v30 = [v29 requiresParticipantTranslation];

  v31 = v37;
  result = specialized GroupSession<>.init(tuConversationActivitySession:groupUUID:initiatorHandle:localParticipantIdentifier:localParticipantHandle:unreliableMessengerConfig:topicManager:audioSessionAssertionManager:supportsSceneAssociation:requiresParticipantTranslation:)(v28, v11, v35, v34, v33, v22, v24, v25, v26, v38, v27 & 1, v30);
  if (v31)
  {

    result = 0;
  }

  *v39 = result;
  return result;
}

unint64_t type metadata accessor for TUConversationActivitySession()
{
  result = lazy cache variable for type metadata for TUConversationActivitySession;
  if (!lazy cache variable for type metadata for TUConversationActivitySession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationActivitySession);
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo29TUConversationActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So29ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = MEMORY[0x1B2715020](*(v5 + 40), v17);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for UTType();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo13CPParticipantCGMd, &_ss11_SetStorageCySo13CPParticipantCGMR);
}

{
  v2 = v1;
  v3 = type metadata accessor for Participant(0);
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v31 = v1;
    v10 = 0;
    v11 = *(v7 + 56);
    v32 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 56;
    v33 = v15;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v35 = (v14 - 1) & v14;
LABEL_15:
      v22 = *(v7 + 48);
      v34 = *(v4 + 72);
      outlined init with take of PresenceSessionInfo.Participant(v22 + v34 * (v18 | (v10 << 6)), v6, type metadata accessor for Participant);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      MEMORY[0x1B2715070](*&v6[v3[6]]);
      if (*&v6[v3[7] + 8])
      {
        Hasher._combine(_:)(1u);
        v15 = v33;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v6[v3[8]]);
      Hasher._combine(_:)(v6[v3[9]]);
      result = Hasher._finalize()();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      outlined init with take of PresenceSessionInfo.Participant(v6, *(v9 + 48) + v17 * v34, type metadata accessor for Participant);
      ++*(v9 + 16);
      v14 = v35;
    }

    v19 = v10;
    result = v32;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v32[v10];
      ++v19;
      if (v21)
      {
        v18 = __clz(__rbit64(v21));
        v35 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      bzero(v32, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v30;
    }

    v2 = v31;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo29TUConversationActivitySessionCGMd, &_ss11_SetStorageCySo29TUConversationActivitySessionCGMR);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      outlined init with take of PresenceSessionInfo.Participant(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for PresenceSessionInfo.Participant);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      dispatch thunk of Hashable.hash(into:)();
      v22 = v35;
      String.hash(into:)();
      Hasher._combine(_:)(v5[*(v22 + 24)]);
      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = outlined init with take of PresenceSessionInfo.Participant(v5, *(v8 + 48) + v16 * v21, type metadata accessor for PresenceSessionInfo.Participant);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo29TUConversationActivitySessionCGMd, &_ss11_SetStorageCySo29TUConversationActivitySessionCGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of InternalGroupSessionProvider.prepareForActivation(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InternalGroupSessionProvider.begin(activity:request:onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of InternalGroupSessionProvider.end(activity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of GroupSessionServiceProvider.start(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of GroupSessionServiceProvider.start(presenceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of GroupSessionServiceProvider.leave(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of GroupSessionServiceProvider.updateMembers(identifier:members:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of GroupSessionServiceProvider.prewarm()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GroupSessionServiceProvider.start(presenceSession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v9(a1, a2, a3);
}

uint64_t lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PresentationSpatialTemplate.customOutput.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of SpatialTemplateConfiguration(v1 + 8, &v12);
  v15[0] = v12;
  v15[1] = v13;
  v16 = v14;
  v3 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    v4 = v16;
    __swift_project_boxed_opaque_existential_1(v15, *(&v13 + 1));
    v5 = (*(v4 + 16))(v3, v4);
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v15);
    if (v5 == 0x65746E6573657270 && v7 == 0xE900000000000072)
    {

      v11 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = v9 & 1;
    }
  }

  else
  {
    result = outlined destroy of SpatialTemplateRole?(v15);
    v11 = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v11;
  *(a1 + 24) = 1;
  return result;
}

uint64_t PresentationSpatialTemplate.Role.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PresentationSpatialTemplate.Role.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresentationSpatialTemplate.Role()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresentationSpatialTemplate.Role(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PresentationSpatialTemplate.Role@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance PresentationSpatialTemplate.Role, *a1);

  *a2 = v3 != 0;
  return result;
}

Swift::Int PresentationSpatialTemplate.PresenterRoleBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

unint64_t PresentationSpatialTemplate.init(presenterRoleBehavior:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v4 = 0;
    result = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  else
  {
    v4 = &type metadata for PresentationSpatialTemplate.Role;
    result = lazy protocol witness table accessor for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role();
  }

  a2[4] = v4;
  a2[5] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role()
{
  result = lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role;
  if (!lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role;
  if (!lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role;
  if (!lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role);
  }

  return result;
}

Swift::Int PresentationSpatialTemplate.hashValue.getter()
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresentationSpatialTemplate()
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresentationSpatialTemplate(uint64_t a1)
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t static SpatialTemplatePreference.presentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = word_1EB61A5B0;
  v4 = HIBYTE(word_1EB61A5B0);
  *a1 = static SpatialTemplatePreference.presentation;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  return result;
}

uint64_t static SpatialTemplatePreference.presentation.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static SpatialTemplatePreference.presentation = v1;
  LOBYTE(word_1EB61A5B0) = v2;
  HIBYTE(word_1EB61A5B0) = v3;
  return result;
}

uint64_t (*static SpatialTemplatePreference.presentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup.modify;
}

unint64_t lazy protocol witness table accessor for type [PresentationSpatialTemplate.Role] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PresentationSpatialTemplate.Role] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PresentationSpatialTemplate.Role] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15GroupActivities27PresentationSpatialTemplateV4RoleOGMd, &_sSay15GroupActivities27PresentationSpatialTemplateV4RoleOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PresentationSpatialTemplate.Role] and conformance [A]);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PresentationSpatialTemplate.Role(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationSpatialTemplate.PresenterRoleBehavior and conformance PresentationSpatialTemplate.PresenterRoleBehavior()
{
  result = lazy protocol witness table cache variable for type PresentationSpatialTemplate.PresenterRoleBehavior and conformance PresentationSpatialTemplate.PresenterRoleBehavior;
  if (!lazy protocol witness table cache variable for type PresentationSpatialTemplate.PresenterRoleBehavior and conformance PresentationSpatialTemplate.PresenterRoleBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSpatialTemplate.PresenterRoleBehavior and conformance PresentationSpatialTemplate.PresenterRoleBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationSpatialTemplate and conformance PresentationSpatialTemplate()
{
  result = lazy protocol witness table cache variable for type PresentationSpatialTemplate and conformance PresentationSpatialTemplate;
  if (!lazy protocol witness table cache variable for type PresentationSpatialTemplate and conformance PresentationSpatialTemplate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSpatialTemplate and conformance PresentationSpatialTemplate);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationSpatialTemplate(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for PresentationSpatialTemplate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CGImageRef.thumbnailImageData(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Thumb = CGImageCreateThumb();
  if (!Thumb)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Log.default);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1AEE80000, v42, v43, "Error creating thumbnail image", v44, 2u);
      MEMORY[0x1B2715BA0](v44, -1, -1);
    }

    return 0;
  }

  v9 = Thumb;
  v10 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  static UTType.jpeg.getter();
  v11 = UTType.identifier.getter();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  v14 = MEMORY[0x1B2714130](v11, v13);

  v15 = CGImageDestinationCreateWithData(v10, v14, 1uLL, 0);
  if (!v15)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Log.default);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1AEE80000, v46, v47, "Error creating thumbnail image destination ref", v48, 2u);
      MEMORY[0x1B2715BA0](v48, -1, -1);
    }

    goto LABEL_29;
  }

  v16 = v15;
  CGImageDestinationAddImage(v15, v9, 0);
  if (!CGImageDestinationFinalize(v16))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Log.default);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1AEE80000, v50, v51, "Error finalizing thumbnail image", v52, 2u);
      MEMORY[0x1B2715BA0](v52, -1, -1);
    }

LABEL_29:
    return 0;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.default);
  v18 = v10;
  v19 = v2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v20, v21))
  {
    goto LABEL_13;
  }

  v55 = v21;
  v56 = v20;
  v22 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  v57 = a1;
  v58 = v54;
  *v22 = 136315650;
  v23 = String.init<A>(reflecting:)();
  v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v58);

  *(v22 + 4) = v25;
  *(v22 + 12) = 2080;
  v26 = NSData.startIndex.getter();
  v27 = NSData.endIndex.getter();
  v28 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v26 < v28 || result < v26)
  {
    __break(1u);
  }

  else
  {
    v30 = NSData.startIndex.getter();
    result = NSData.endIndex.getter();
    if (v27 >= v30 && result >= v27)
    {
      if (!__OFSUB__(v27, v26))
      {
        v57 = v27 - v26;
        v31 = String.init<A>(reflecting:)();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v58);

        *(v22 + 14) = v33;
        *(v22 + 22) = 2080;
        v57 = v19;
        type metadata accessor for CGImageRef(0);
        v34 = v19;
        v35 = String.init<A>(reflecting:)();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v58);

        *(v22 + 24) = v37;
        v20 = v56;
        _os_log_impl(&dword_1AEE80000, v56, v55, "Generated image preview of size %s  %s bytes for %s", v22, 0x20u);
        v38 = v54;
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v38, -1, -1);
        MEMORY[0x1B2715BA0](v22, -1, -1);
LABEL_13:

        v39 = v18;
        v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        return v40;
      }

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

CGImageRef specialized static CGImageRef.thumbnailImage(from:)()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = CGDataProviderCreateWithCFData(isa);

  if (v1)
  {
    v2 = CGImageCreateWithJPEGDataProvider(v1, 0, 1, kCGRenderingIntentDefault);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.default);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to create CGDataProvider from dataBlob", v6, 2u);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    return 0;
  }

  return v2;
}

void GroupSessionMessenger.receive<A>(_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v22 = a4;
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR);
  type metadata accessor for GroupSessionMessenger.MessageContext(255);
  v19[2] = swift_getTupleTypeMetadata2();
  v19[1] = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR, MEMORY[0x1E695BED8]);
  v8 = type metadata accessor for Publishers.CompactMap();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  v19[0] = swift_getWitnessTable();
  v11 = type metadata accessor for Publishers.HandleEvents();
  v20 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  v23 = static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(*(v4 + 16), *(v4 + 24), a1, a1, a2, a3);
  v14 = *(v4 + 40);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = v14;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = partial apply for closure #1 in GroupSessionMessenger.receive<A>(_:);
  v16[6] = v15;
  Publisher.compactMap<A>(_:)();

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v21 + 8))(v10, v8);
  swift_getWitnessTable();
  v18 = Publisher.eraseToAnyPublisher()();
  (*(v20 + 8))(v13, v11);
  GroupSessionMessenger.MessageStream.init(outputStream:)(v18, v22);
}

uint64_t type metadata accessor for GroupSessionMessenger.MessageContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for GroupSessionMessenger.MessageContext;
  if (!type metadata singleton initialization cache for GroupSessionMessenger.MessageContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GroupSessionMessenger.send<A>(_:to:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a3;
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  v49[3] = v13;
  v49[4] = v14;
  v44 = v15;
  v49[5] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  v17 = *(v8 + 16);
  v17(boxed_opaque_existential_1, a1, a5);
  v50 = 1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.default);
  v17(v10, a1, a5);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v47 = v23;
    *v22 = 136315394;
    swift_getDynamicType();
    v24 = _typeName(_:qualified:)();
    v26 = v25;
    (*(v8 + 8))(v10, a5);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v47);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v46 = v12;

    v28 = String.init<A>(reflecting:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v47);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_1AEE80000, v19, v20, "Sending message: %s to: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v23, -1, -1);
    v31 = v22;
    a4 = v42;
    MEMORY[0x1B2715BA0](v31, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, a5);
  }

  v32 = static Encodable.messageIdentifier.getter(a5);
  v34 = v33;
  v35 = v45;
  v36 = *(v45 + 40);
  MEMORY[0x1EEE9AC00](v32);
  tryLog<A>(_:_:function:line:)();
  v37 = v48;
  if (v48 >> 60 == 15)
  {
  }

  else
  {
    v38 = v47;
    v39 = *(v35 + 24);
    v47 = v12;
    ObjectType = swift_getObjectType();
    LOBYTE(v46) = v36;
    (*(v39 + 16))(v38, v37, &v47, v32, v34, &v46, v43, a4, ObjectType, v39);

    outlined consume of Data?(v38, v37);
  }

  return outlined destroy of GroupSessionMessenger.MessageWrapper(v49);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF15GroupActivities14PlaybackSyncerC7MessageV_s5NeverOAH_AD0C16SessionMessengerC0G7ContextVtTB5@<X0>(void (*a1)(_BYTE *, double)@<X0>, char a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 == 4)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
    return (*(*(v7 - 8) + 56))(a5, 1, 1, v7);
  }

  else
  {
    v12[0] = a2;
    v13 = a3;
    v14 = a4;
    v10 = outlined copy of Data._Representation(a3, a4);
    a1(v12, v10);
    if (v5)
    {
      result = outlined consume of Data._Representation(v13, v14);
      __break(1u);
    }

    else
    {
      outlined consume of Data._Representation(v13, v14);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
      return (*(*(v11 - 8) + 56))(a5, 0, 1, v11);
    }
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF15GroupActivities0C16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_s5NeverOAI_AF0G7ContextVAD15SendReliabilityOtTg5@<X0>(void (*a1)(_OWORD *)@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of URL?(v2, v11, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVSgMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVSgMR);
  if (v12 == 255)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  else
  {
    v9[0] = v11[0];
    v9[1] = v11[1];
    v9[2] = v11[2];
    v10 = v12;
    a1(v9);
    if (v3)
    {
      result = outlined destroy of GroupSessionMessenger.MessageWrapper(v9);
      __break(1u);
    }

    else
    {
      outlined destroy of GroupSessionMessenger.MessageWrapper(v9);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
      return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    }
  }

  return result;
}

uint64_t GroupSessionMessenger.__allocating_init<A>(session:)(uint64_t a1)
{
  v2 = swift_allocObject();
  GroupSessionMessenger.init<A>(session:)(a1);
  return v2;
}

uint64_t GroupSessionMessenger.init<A>(session:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v4 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  *(v2 + 32) = v4;
  *(v2 + 16) = a1;
  *(v2 + 24) = &protocol witness table for GroupSession<A>;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t GroupSessionMessenger.__allocating_init<A>(session:deliveryMode:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  GroupSessionMessenger.init<A>(session:deliveryMode:)(a1, a2);
  return v4;
}

uint64_t GroupSessionMessenger.init<A>(session:deliveryMode:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v6 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  *(v3 + 32) = v6;
  *(v3 + 16) = a1;
  *(v3 + 24) = &protocol witness table for GroupSession<A>;
  *(v3 + 40) = v5;
  return v3;
}

uint64_t GroupSessionMessenger.__allocating_init(transportSession:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v5 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  *(v4 + 24) = a2;
  *(v4 + 32) = v5;
  *(v4 + 40) = 0;
  *(v4 + 16) = a1;
  return v4;
}

uint64_t GroupSessionMessenger.init(transportSession:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v6 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  *(v3 + 24) = a2;
  *(v3 + 32) = v6;
  *(v3 + 40) = 0;
  *(v3 + 16) = a1;
  return v3;
}

uint64_t GroupSessionMessenger.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t GroupSessionMessenger.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t GroupSessionMessenger.MessageWrapper.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v15;
    v18 = v14;
    v19 = v15;
    v10 = v16;
    v20 = v16;
    v11 = v17;
    v21 = v17;
    *a2 = v14;
    *(a2 + 16) = v9;
    *(a2 + 32) = v10;
    *(a2 + 48) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GroupSessionMessenger.MessageWrapper.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GroupSessionMessenger.MessageWrapper.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GroupSessionMessenger.MessageWrapper.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance GroupSessionMessenger.MessageWrapper(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GroupSessionMessenger.MessageType.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 116;
  }

  else
  {
    v2 = 100;
  }

  if (*a2)
  {
    v3 = 116;
  }

  else
  {
    v3 = 100;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupSessionMessenger.MessageType.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupSessionMessenger.MessageType.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupSessionMessenger.MessageType.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GroupSessionMessenger.MessageType.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GroupSessionMessenger.MessageType.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GroupSessionMessenger.MessageType.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 100;
  if (*v1)
  {
    v2 = 116;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GroupSessionMessenger.MessageType.CodingKeys()
{
  if (*v0)
  {
    return 116;
  }

  else
  {
    return 100;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GroupSessionMessenger.MessageType.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GroupSessionMessenger.MessageType.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GroupSessionMessenger.MessageType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GroupSessionMessenger.MessageType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroupSessionMessenger.MessageType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities0D16SessionMessengerC11MessageType33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities0D16SessionMessengerC11MessageType33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLO10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = *(KeyedDecodingContainer.allKeys.getter() + 16);

    if (v9 == 1)
    {
      v10 = KeyedDecodingContainer.allKeys.getter();
      if (*(v10 + 16))
      {
        v11 = *(v10 + 32);

        if (v11)
        {
          v12 = 1;
          v24[0] = 1;
          lazy protocol witness table accessor for type TypedPayloadBox and conformance TypedPayloadBox();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v6 + 8))(v8, v5);
          v21 = 1;
          v13 = v20[0];
          v22 = v20[1];
          v23 = v20[2];
LABEL_11:
          v17 = v22;
          v18 = v23;
          *a2 = v13;
          *(a2 + 16) = v17;
          *(a2 + 32) = v18;
          *(a2 + 48) = v12;
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }
      }

      else
      {
      }

      v25 = 0;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v6 + 8))(v8, v5);
      v12 = 0;
      v13 = v20[0];
      v24[0] = 0;
      goto LABEL_11;
    }

    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v16 = &type metadata for GroupSessionMessenger.MessageType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t GroupSessionMessenger.MessageType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities0D16SessionMessengerC11MessageType33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities0D16SessionMessengerC11MessageType33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLO10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of GroupSessionMessenger.MessageType(v2, v13);
  if (v14)
  {
    v12[0] = v13[0];
    v12[1] = v13[1];
    v12[2] = v13[2];
    v11 = 1;
    lazy protocol witness table accessor for type TypedPayloadBox and conformance TypedPayloadBox();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined destroy of TypedPayloadBox(v12);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v9 = v13[0];
    v12[0] = v13[0];
    v11 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    return outlined consume of Data._Representation(v9, *(&v9 + 1));
  }
}

void _s15GroupActivities0A16SessionMessengerC13MessageStreamV06outputF0AEy_xG7Combine12AnyPublisherVyx_AC0E7ContextVts5NeverOG_tcfCAA14PlaybackSyncerC0E0V_Tt1g5Tm(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v13);
    _os_log_impl(&dword_1AEE80000, v9, v10, "Creating message stream for message type: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  *a4 = a1;
}

void GroupSessionMessenger.MessageStream.init(outputStream:)(uint64_t a1@<X0>, void *a3@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Creating message stream for message type: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  *a3 = a1;
}

uint64_t GroupSessionMessenger.MessageStream.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  type metadata accessor for GroupSessionMessenger.MessageContext(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1E69E73E0];

  return MEMORY[0x1EEDB5BC8](a1, v8, TupleTypeMetadata2, v10, a3, a4);
}

uint64_t implicit closure #1 in GroupSessionMessenger.send(messageWrapper:to:messageTypeIdentifier:deliveryMode:completion:)@<X0>(uint64_t *a2@<X8>)
{
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper();

  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v6 = v5;

  if (!v2)
  {
    *a2 = v4;
    a2[1] = v6;
  }

  return result;
}

void *GroupSessionMessenger.send(_:to:completion:)(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a3;
  v38[0] = a1;
  v38[1] = a2;
  v39 = 0;
  outlined copy of Data._Representation(a1, a2);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);
  outlined copy of Data._Representation(a1, a2);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    result = swift_slowAlloc();
    v17 = result;
    v36 = result;
    *v15 = 134218242;
    v18 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v18 != 2)
      {
        v19 = 0;
        goto LABEL_15;
      }

      v21 = *(a1 + 16);
      v20 = *(a1 + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v18)
    {
      v19 = BYTE6(a2);
LABEL_15:
      *(v15 + 4) = v19;
      outlined consume of Data._Representation(a1, a2);
      *(v15 + 12) = 2080;
      v35 = v11;

      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v36);

      *(v15 + 14) = v25;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Sending raw data of length: %ld to: %s", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B2715BA0](v17, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);
      goto LABEL_16;
    }

    LODWORD(v19) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v19 = v19;
    goto LABEL_15;
  }

  outlined consume of Data._Representation(a1, a2);
LABEL_16:

  v26 = swift_conformsToProtocol2();
  if (v26)
  {
    v26 = (*(v26 + 8))(MEMORY[0x1E6969080], v26);
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v29 = 0xEF617461442E6E6FLL;
    v27 = 0x697461646E756F46;
  }

  v30 = *(v6 + 40);
  MEMORY[0x1EEE9AC00](v26);
  tryLog<A>(_:_:function:line:)();
  v31 = v37;
  if (v37 >> 60 == 15)
  {
  }

  else
  {
    v32 = v36;
    v33 = *(v6 + 24);
    v36 = v11;
    ObjectType = swift_getObjectType();
    LOBYTE(v35) = v30;
    (*(v33 + 16))(v32, v31, &v36, v27, v29, &v35, a4, a5, ObjectType, v33);

    outlined consume of Data?(v32, v31);
  }

  return outlined destroy of GroupSessionMessenger.MessageWrapper(v38);
}

uint64_t _s15GroupActivities0A16SessionMessengerC18MessageStreamStoreO07messageF033_7F6FED5A36F2E7FBC6D91B446E55DE7FLL3for0H4Type7Combine12AnyPublisherVyAC0E7WrapperAGLLV_AC0E7ContextVAA15SendReliabilityOts5NeverOGAA0v9TransportC0_p_xmtSeRzSERzlFZAA14PlaybackSyncerC0E0V_Tt0t1g5(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v65 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v70 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  v13 = static GroupSessionMessenger.MessageStreamStore.lock;
  Lock.lock()();
  ObjectType = swift_getObjectType();
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static GroupSessionMessenger.MessageStreamStore.contents;
  if (*(static GroupSessionMessenger.MessageStreamStore.contents + 2) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v16 & 1) != 0))
  {
    v17 = *(v14[7] + 24 * v15 + 16);
    swift_endAccess();
    v18 = swift_conformsToProtocol2();
    v19 = a1;
    if (v18)
    {
      v20 = *(v18 + 8);

      v21 = v20();
      v23 = v22;
    }

    else
    {
      v21 = 0xD000000000000026;
      v23 = 0x80000001AF01AC20;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMd, &_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMR);
    v79 = v51;
    v80 = &protocol witness table for TypedPayloadDecoder<A>;
    v52 = PropertyListDecoder.messageDecodersByMessageIdentifier.getter();
    v77 = v52;
    if (v51)
    {
      v53 = v52;
      outlined init with take of Transferable(&v78, v75);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v53;
      __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v23, isUniquelyReferenced_nonNull_native, &v74);

      __swift_destroy_boxed_opaque_existential_0(v75);
      v55 = v74;
    }

    else
    {
      outlined destroy of NSObject?(&v78, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
      specialized Dictionary._Variant.removeValue(forKey:)(v21, v23, v75);

      outlined destroy of NSObject?(v75, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
      v55 = v77;
    }

    PropertyListDecoder.messageDecodersByMessageIdentifier.setter(v55);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Log.default);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v78 = v60;
      *v59 = 136315138;
      v75[0] = v19;
      v61 = String.init<A>(reflecting:)();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v78);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_1AEE80000, v57, v58, "Returning stored message stream for session %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x1B2715BA0](v60, -1, -1);
      MEMORY[0x1B2715BA0](v59, -1, -1);
    }
  }

  else
  {
    v68 = v6;
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.default);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v69 = v13;
    v66 = v9;
    v67 = v7;
    v65 = v4;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v78 = v29;
      *v28 = 136315138;
      v75[0] = a1;
      v30 = String.init<A>(reflecting:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v78);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1AEE80000, v25, v26, "Creating new message stream for session %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1B2715BA0](v29, -1, -1);
      MEMORY[0x1B2715BA0](v28, -1, -1);
    }

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v33 = PropertyListDecoder.init()();
    if (one-time initialization token for typedPayloadDecoderMap != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v10, static CodingUserInfoKey.typedPayloadDecoderMap);
    (*(v70 + 16))(v12, v34, v10);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
    *&v78 = MEMORY[0x1E69E7CC8];
    v35 = dispatch thunk of PropertyListDecoder.userInfo.modify();
    specialized Dictionary.subscript.setter(&v78, v12);
    v35(v75, 0);
    v36 = swift_conformsToProtocol2();
    if (v36)
    {
      v37 = (*(v36 + 8))(&type metadata for PlaybackSyncer.Message, v36);
      v39 = v38;
    }

    else
    {
      v37 = 0xD000000000000026;
      v39 = 0x80000001AF01AC20;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMd, &_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMR);
    v79 = v40;
    v80 = &protocol witness table for TypedPayloadDecoder<A>;
    v41 = PropertyListDecoder.messageDecodersByMessageIdentifier.getter();
    v77 = v41;
    if (v40)
    {
      v42 = v41;
      outlined init with take of Transferable(&v78, v75);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v42;
      __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v39, v43, &v74);

      __swift_destroy_boxed_opaque_existential_0(v75);
      v44 = v74;
    }

    else
    {
      outlined destroy of NSObject?(&v78, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
      specialized Dictionary._Variant.removeValue(forKey:)(v37, v39, v75);

      outlined destroy of NSObject?(v75, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
      v44 = v77;
    }

    PropertyListDecoder.messageDecodersByMessageIdentifier.setter(v44);
    *&v78 = (*(v72 + 8))(ObjectType);
    v45 = swift_allocObject();
    *(v45 + 16) = closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)partial apply;
    *(v45 + 24) = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(Data, Participant, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR, MEMORY[0x1E695BED8]);
    v46 = v73;
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR, MEMORY[0x1E695BC80]);
    v47 = Publisher.share()();
    (*(v65 + 8))(v46, v3);
    *&v78 = v47;
    *(swift_allocObject() + 16) = a1;
    *(swift_allocObject() + 16) = a1;
    *(swift_allocObject() + 16) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR, MEMORY[0x1E695BDD0]);
    v48 = v66;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR, MEMORY[0x1E695BCC0]);
    v49 = v68;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v67 + 8))(v48, v49);
    swift_beginAccess();

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = static GroupSessionMessenger.MessageStreamStore.contents;
    static GroupSessionMessenger.MessageStreamStore.contents = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v33, v17, a1, v50);
    static GroupSessionMessenger.MessageStreamStore.contents = v75[0];
    swift_endAccess();
  }

  Lock.unlock()();
  return v17;
}

uint64_t _s15GroupActivities0A16SessionMessengerC18MessageStreamStoreO07messageF033_7F6FED5A36F2E7FBC6D91B446E55DE7FLL3for0H4Type7Combine12AnyPublisherVyAC0E7WrapperAGLLV_AC0E7ContextVAA15SendReliabilityOts5NeverOGAA0v9TransportC0_p_xmtSeRzSERzlFZ10Foundation4DataV_Tt0t1g5(void *a1, uint64_t a2)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR);
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  v9 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  Lock.lock()();
  ObjectType = swift_getObjectType();
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static GroupSessionMessenger.MessageStreamStore.contents;
  if (*(static GroupSessionMessenger.MessageStreamStore.contents + 2) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v15 & 1) != 0))
  {
    v16 = *(v13[7] + 24 * v14 + 16);
    swift_endAccess();
    v17 = one-time initialization token for default;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.default);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = a1;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v59[0] = v23;
      *v22 = 136315138;
      v58 = v21;
      v24 = String.init<A>(reflecting:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v59);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1AEE80000, v19, v20, "Returning stored message stream for session %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B2715BA0](v23, -1, -1);
      MEMORY[0x1B2715BA0](v22, -1, -1);
    }
  }

  else
  {
    v51 = v6;
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.default);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v52 = v5;
    v53 = a1;
    v49 = v3;
    v50 = v8;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v59[0] = v32;
      *v31 = 136315138;
      v58 = a1;
      v33 = String.init<A>(reflecting:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v59);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1AEE80000, v28, v29, "Creating new message stream for session %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B2715BA0](v32, -1, -1);
      MEMORY[0x1B2715BA0](v31, -1, -1);
    }

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v36 = PropertyListDecoder.init()();
    if (one-time initialization token for typedPayloadDecoderMap != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v9, static CodingUserInfoKey.typedPayloadDecoderMap);
    (*(v10 + 16))(v12, v37, v9);
    v59[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
    v59[0] = MEMORY[0x1E69E7CC8];
    v38 = dispatch thunk of PropertyListDecoder.userInfo.modify();
    specialized Dictionary.subscript.setter(v59, v12);
    v38(&v58, 0);
    v39 = v53;
    v59[0] = (*(v55 + 8))(ObjectType);
    v40 = swift_allocObject();
    *(v40 + 16) = partial apply for closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:);
    *(v40 + 24) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(Data, Participant, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR, MEMORY[0x1E695BED8]);
    v41 = v56;
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR, MEMORY[0x1E695BC80]);
    v42 = v49;
    v43 = Publisher.share()();
    (*(v57 + 8))(v41, v42);
    v59[0] = v43;
    *(swift_allocObject() + 16) = v39;
    *(swift_allocObject() + 16) = v39;
    *(swift_allocObject() + 16) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR, MEMORY[0x1E695BDD0]);
    v44 = v50;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR, MEMORY[0x1E695BCC0]);
    v45 = v52;
    v16 = Publisher.eraseToAnyPublisher()();
    (*(v51 + 8))(v44, v45);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = static GroupSessionMessenger.MessageStreamStore.contents;
    static GroupSessionMessenger.MessageStreamStore.contents = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v36, v16, v39, isUniquelyReferenced_nonNull_native);
    static GroupSessionMessenger.MessageStreamStore.contents = v58;
    swift_endAccess();
  }

  Lock.unlock()();
  return v16;
}

uint64_t static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v90 = a5;
  v91 = a6;
  v89 = a4;
  v95 = a3;
  v93 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v84 - v12;
  v14 = type metadata accessor for CodingUserInfoKey();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  v96 = static GroupSessionMessenger.MessageStreamStore.lock;
  Lock.lock()();
  ObjectType = swift_getObjectType();
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = static GroupSessionMessenger.MessageStreamStore.contents;
  if (*(static GroupSessionMessenger.MessageStreamStore.contents + 2) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v20 & 1) != 0))
  {
    v21 = *(v18[7] + 24 * v19 + 16);
    swift_endAccess();
    v22 = MEMORY[0x1E6969080];

    if (v95 != v22)
    {
      v23 = v89;
      v24 = v91;
      v25 = static Encodable.messageIdentifier.getter(v89);
      v27 = v26;
      v28 = v90;
      TypedPayloadDecoder.init()();
      v29 = type metadata accessor for TypedPayloadDecoder(0, v23, v28, v24);
      v102 = v29;
      v103 = &protocol witness table for TypedPayloadDecoder<A>;
      v30 = PropertyListDecoder.messageDecodersByMessageIdentifier.getter();
      v100 = v30;
      if (v29)
      {
        v31 = v30;
        outlined init with take of Transferable(&v101, v98);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = v31;
        v33 = __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
        MEMORY[0x1EEE9AC00](v33);
        v35 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v36 + 16))(v35);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v25, v27, isUniquelyReferenced_nonNull_native, &v97, v29, &protocol witness table for TypedPayloadDecoder<A>);

        __swift_destroy_boxed_opaque_existential_0(v98);
        v37 = v97;
      }

      else
      {
        outlined destroy of NSObject?(&v101, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
        specialized Dictionary._Variant.removeValue(forKey:)(v25, v27, v98);

        outlined destroy of NSObject?(v98, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
        v37 = v100;
      }

      PropertyListDecoder.messageDecodersByMessageIdentifier.setter(v37);
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Log.default);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v101 = v79;
      *v78 = 136315138;
      v98[0] = a1;
      v80 = String.init<A>(reflecting:)();
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v101);

      *(v78 + 4) = v82;
      _os_log_impl(&dword_1AEE80000, v76, v77, "Returning stored message stream for session %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x1B2715BA0](v79, -1, -1);
      MEMORY[0x1B2715BA0](v78, -1, -1);
    }
  }

  else
  {
    v84 = v8;
    v38 = v7;
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Log.default);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = os_log_type_enabled(v40, v41);
    v88 = a1;
    v87 = v10;
    v86 = v11;
    v85 = v13;
    if (v42)
    {
      v43 = a1;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v101 = v45;
      *v44 = 136315138;
      v98[0] = v43;
      v46 = String.init<A>(reflecting:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v101);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_1AEE80000, v40, v41, "Creating new message stream for session %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1B2715BA0](v45, -1, -1);
      MEMORY[0x1B2715BA0](v44, -1, -1);
    }

    v49 = v38;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v50 = PropertyListDecoder.init()();
    if (one-time initialization token for typedPayloadDecoderMap != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v14, static CodingUserInfoKey.typedPayloadDecoderMap);
    (*(v15 + 16))(v17, v51, v14);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
    *&v101 = MEMORY[0x1E69E7CC8];
    v52 = dispatch thunk of PropertyListDecoder.userInfo.modify();
    specialized Dictionary.subscript.setter(&v101, v17);
    v52(v98, 0);
    if (v95 != MEMORY[0x1E6969080])
    {
      v53 = v89;
      v54 = v91;
      v55 = static Encodable.messageIdentifier.getter(v89);
      v57 = v56;
      v58 = v90;
      TypedPayloadDecoder.init()();
      v59 = type metadata accessor for TypedPayloadDecoder(0, v53, v58, v54);
      v102 = v59;
      v103 = &protocol witness table for TypedPayloadDecoder<A>;
      v60 = PropertyListDecoder.messageDecodersByMessageIdentifier.getter();
      v100 = v60;
      if (v59)
      {
        v61 = v60;
        outlined init with take of Transferable(&v101, v98);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v97 = v61;
        v63 = __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
        MEMORY[0x1EEE9AC00](v63);
        v65 = &v84 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v66 + 16))(v65);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v65, v55, v57, v62, &v97, v59, &protocol witness table for TypedPayloadDecoder<A>);

        __swift_destroy_boxed_opaque_existential_0(v98);
        v67 = v97;
      }

      else
      {
        outlined destroy of NSObject?(&v101, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
        specialized Dictionary._Variant.removeValue(forKey:)(v55, v57, v98);

        outlined destroy of NSObject?(v98, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
        v67 = v100;
      }

      PropertyListDecoder.messageDecodersByMessageIdentifier.setter(v67);
    }

    v68 = v88;
    *&v101 = (*(v93 + 8))(ObjectType);
    v69 = swift_allocObject();
    *(v69 + 16) = closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)partial apply;
    *(v69 + 24) = v50;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(Data, Participant, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR, MEMORY[0x1E695BED8]);
    v70 = v94;
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR, MEMORY[0x1E695BC80]);
    v71 = Publisher.share()();
    (*(v84 + 8))(v70, v49);
    *&v101 = v71;
    *(swift_allocObject() + 16) = v68;
    *(swift_allocObject() + 16) = v68;
    *(swift_allocObject() + 16) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR, MEMORY[0x1E695BDD0]);
    v72 = v85;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR, MEMORY[0x1E695BCC0]);
    v73 = v87;
    v21 = Publisher.eraseToAnyPublisher()();
    (*(v86 + 8))(v72, v73);
    swift_beginAccess();

    v74 = swift_isUniquelyReferenced_nonNull_native();
    v98[0] = static GroupSessionMessenger.MessageStreamStore.contents;
    static GroupSessionMessenger.MessageStreamStore.contents = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v50, v21, v68, v74);
    static GroupSessionMessenger.MessageStreamStore.contents = v98[0];
    swift_endAccess();
  }

  Lock.unlock()();
  return v21;
}

uint64_t closure #1 in GroupSessionMessenger.receive<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a2;
  v14 = a4 & 1;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  if (*a3 == v14)
  {
    outlined init with copy of GroupSessionMessenger.MessageType(a1, v29);
    if (v30)
    {
      v31[0] = v29[0];
      v31[1] = v29[1];
      v31[2] = v29[2];
      v22 = TypedPayloadBox.unbox<A>(as:)(a5, v18);
      MEMORY[0x1EEE9AC00](v22);
      *(&v27 - 4) = a5;
      *(&v27 - 3) = a6;
      v23 = v28;
      *(&v27 - 2) = a7;
      *(&v27 - 1) = v23;
      type metadata accessor for GroupSessionMessenger.MessageContext(255);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in closure #1 in GroupSessionMessenger.receive<A>(_:), (&v27 - 6), MEMORY[0x1E69E73E0], TupleTypeMetadata2, v25, a8);
      (*(v16 + 8))(v18, v15);
      return outlined destroy of TypedPayloadBox(v31);
    }

    else
    {
      outlined destroy of GroupSessionMessenger.MessageType(v29);
      type metadata accessor for GroupSessionMessenger.MessageContext(255);
      v26 = swift_getTupleTypeMetadata2();
      return (*(*(v26 - 8) + 56))(a8, 1, 1, v26);
    }
  }

  else
  {
    type metadata accessor for GroupSessionMessenger.MessageContext(255);
    v19 = swift_getTupleTypeMetadata2();
    v20 = *(*(v19 - 8) + 56);

    return v20(a8, 1, 1, v19);
  }
}

uint64_t closure #1 in closure #1 in GroupSessionMessenger.receive<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for GroupSessionMessenger.MessageContext(255);
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a3 - 8) + 16))(a4, a1, a3);
  return _s15GroupActivities11ParticipantVWOcTm_0(a2, a4 + v8, type metadata accessor for GroupSessionMessenger.MessageContext);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed GroupSessionMessenger.MessageWrapper, @in_guaranteed GroupSessionMessenger.MessageContext, @in_guaranteed SendReliability) -> (@out (A, GroupSessionMessenger.MessageContext)?)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
  return v3(a1, a1 + *(v4 + 48), a1 + *(v4 + 64));
}

void closure #2 in GroupSessionMessenger.receive<A>(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GroupSessionMessenger.MessageContext(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v6 = &v16 - v5;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);
  (*(v4 + 16))(v6, a1, TupleTypeMetadata2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getDynamicType();
    v12 = _typeName(_:qualified:)();
    v14 = v13;
    (*(v4 + 8))(v6, TupleTypeMetadata2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v8, v9, "Receiving message: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, TupleTypeMetadata2);
  }
}

void GroupSessionMessenger.receive(_:)(void *a1@<X8>)
{
  v16 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOG10Foundation4DataV_AOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOG10Foundation4DataV_AOtGMR);
  v2 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v4 = &v14 - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOG10Foundation4DataV_AQtGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOG10Foundation4DataV_AQtGGMR);
  v5 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v7 = &v14 - v6;
  v17 = _s15GroupActivities0A16SessionMessengerC18MessageStreamStoreO07messageF033_7F6FED5A36F2E7FBC6D91B446E55DE7FLL3for0H4Type7Combine12AnyPublisherVyAC0E7WrapperAGLLV_AC0E7ContextVAA15SendReliabilityOts5NeverOGAA0v9TransportC0_p_xmtSeRzSERzlFZ10Foundation4DataV_Tt0t1g5(*(v1 + 16), *(v1 + 24));
  v8 = *(v1 + 40);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in GroupSessionMessenger.receive(_:);
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher.compactMap<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never>, (Data, GroupSessionMessenger.MessageContext)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOG10Foundation4DataV_AOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOG10Foundation4DataV_AOtGMR, MEMORY[0x1E695BC80]);
  v11 = v14;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v2 + 8))(v4, v11);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.CompactMap<AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never>, (Data, GroupSessionMessenger.MessageContext)>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOG10Foundation4DataV_AQtGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOG10Foundation4DataV_AQtGGMR, MEMORY[0x1E695BCC0]);
  v12 = v15;
  v13 = Publisher.eraseToAnyPublisher()();
  (*(v5 + 8))(v7, v12);
  _s15GroupActivities0A16SessionMessengerC13MessageStreamV06outputF0AEy_xG7Combine12AnyPublisherVyx_AC0E7ContextVts5NeverOG_tcfCAA14PlaybackSyncerC0E0V_Tt1g5Tm(v13, 1635017028, 0xE400000000000000, v16);
}

uint64_t closure #1 in GroupSessionMessenger.receive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  if (*a3 == (a4 & 1))
  {
    outlined init with copy of GroupSessionMessenger.MessageType(a1, v15);
    if (v16 == 1)
    {
      outlined destroy of GroupSessionMessenger.MessageType(v15);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
      return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
    }

    else
    {
      v11 = v15[0];
      v12 = v15[1];
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
      v14 = *(v13 + 48);
      *a5 = v11;
      a5[1] = v12;
      _s15GroupActivities11ParticipantVWOcTm_0(a2, a5 + v14, type metadata accessor for GroupSessionMessenger.MessageContext);
      return (*(*(v13 - 8) + 56))(a5, 0, 1, v13);
    }
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
    v7 = *(*(v6 - 8) + 56);

    return v7(a5, 1, 1, v6);
  }
}

void closure #2 in GroupSessionMessenger.receive(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);
  outlined init with copy of URL?(a1, v7, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v9, v10))
  {
    outlined destroy of NSObject?(v7, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
LABEL_16:

    return;
  }

  v11 = swift_slowAlloc();
  *v11 = 134217984;
  outlined init with copy of URL?(v7, v5, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
  v12 = *v5;
  v13 = v5[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      outlined consume of Data._Representation(v12, v13);
      v16 = 0;
      goto LABEL_15;
    }

    v18 = *(v12 + 16);
    v17 = *(v12 + 24);
    v12 = outlined consume of Data._Representation(v12, v13);
    v19 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v19)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = v5[1];
    outlined consume of Data._Representation(v12, v13);
    v16 = BYTE6(v15);
LABEL_15:
    outlined destroy of GroupSessionMessenger.MessageContext(v5 + *(v2 + 48));
    outlined destroy of NSObject?(v7, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
    *(v11 + 4) = v16;
    _os_log_impl(&dword_1AEE80000, v9, v10, "Receiving raw data of length: %ld", v11, 0xCu);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    goto LABEL_16;
  }

  v20 = HIDWORD(v12);
  v21 = v12;
  outlined consume of Data._Representation(v12, v13);
  if (!__OFSUB__(v20, v21))
  {
    v16 = v20 - v21;
    goto LABEL_15;
  }

  __break(1u);
}

void *one-time initialization function for contents()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_15GroupActivities0C16SessionMessengerC18MessageStreamStoreO7Storage33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static GroupSessionMessenger.MessageStreamStore.contents = result;
  return result;
}

uint64_t static GroupSessionMessenger.MessageStreamStore.contentsCount.getter()
{
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  Lock.withLock<A>(_:)();
  return v1;
}

uint64_t *GroupSessionMessenger.MessageStreamStore.lock.unsafeMutableAddressor()
{
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  return &static GroupSessionMessenger.MessageStreamStore.lock;
}

uint64_t closure #1 in static GroupSessionMessenger.MessageStreamStore.contentsCount.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = *(static GroupSessionMessenger.MessageStreamStore.contents + 2);
  return result;
}

uint64_t one-time initialization function for lock()
{
  type metadata accessor for Lock();
  swift_allocObject();
  result = Lock.init()();
  static GroupSessionMessenger.MessageStreamStore.lock = result;
  return result;
}

double static GroupSessionMessenger.MessageStreamStore.lock.getter()
{
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t PropertyListDecoder.messageDecodersByMessageIdentifier.getter()
{
  if (one-time initialization token for typedPayloadDecoderMap != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CodingUserInfoKey();
  v1 = __swift_project_value_buffer(v0, static CodingUserInfoKey.typedPayloadDecoderMap);
  v2 = dispatch thunk of PropertyListDecoder.userInfo.getter();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15GroupActivities20TypedPayloadDecoding_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

uint64_t PropertyListDecoder.messageDecodersByMessageIdentifier.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20[1] = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities20TypedPayloadDecoding_pMd, &_s15GroupActivities20TypedPayloadDecoding_pMR);
    v14 = Dictionary.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v22);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1AEE80000, v9, v10, "Registering new typed payload decoding map: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  if (one-time initialization token for typedPayloadDecoderMap != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, static CodingUserInfoKey.typedPayloadDecoderMap);
  (*(v5 + 16))(v7, v17, v4);
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
  v22[0] = a1;
  v18 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  specialized Dictionary.subscript.setter(v22, v7);
  return v18(v21, 0);
}

uint64_t receiveCompletionOrCancel #1 <A>() in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t a1)
{
  if (one-time initialization token for lock != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x1EEE9AC00](a1);
  return Lock.withLock<A>(_:)();
}

uint64_t closure #1 in receiveCompletionOrCancel #1 <A>() in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t *a1)
{
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = specialized Dictionary.subscript.modify(v19, a1);
  if (v2[1])
  {
    if (__OFSUB__(*v2, 1))
    {
      __break(1u);
LABEL_17:
      swift_once();
LABEL_11:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Log.default);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19[0] = v15;
        *v14 = 136315138;
        v19[4] = a1;
        v16 = String.init<A>(reflecting:)();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v19);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_1AEE80000, v12, v13, "Removing stored message stream for session %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x1B2715BA0](v15, -1, -1);
        MEMORY[0x1B2715BA0](v14, -1, -1);
      }

      swift_beginAccess();
      specialized Dictionary.subscript.setter(0, 0, 0, a1);
      return swift_endAccess();
    }

    --*v2;
    (v3)(v19, 0);
  }

  else
  {
    (v3)(v19, 0);
  }

  swift_endAccess();
  swift_beginAccess();
  v4 = static GroupSessionMessenger.MessageStreamStore.contents;
  if (*(static GroupSessionMessenger.MessageStreamStore.contents + 2))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      v7 = (v4[7] + 24 * v5);
      v8 = *v7;
      v9 = v7[1];

      swift_endAccess();
      result = outlined consume of GroupSessionMessenger.MessageStreamStore.Storage?(v8, v9);
      if (v8)
      {
        return result;
      }

      if (one-time initialization token for default == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  return swift_endAccess();
}

uint64_t closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)@<X0>(uint64_t a1@<X8>)
{
  tryLog<A>(_:_:function:line:)();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF15GroupActivities0C16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_s5NeverOAI_AF0G7ContextVAD15SendReliabilityOtTg5(partial apply for closure #1 in closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:), a1);
  return outlined destroy of NSObject?(v3, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVSgMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVSgMR);
}

uint64_t closure #1 in closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  outlined init with copy of GroupSessionMessenger.MessageWrapper(a1, a4);
  result = _s15GroupActivities11ParticipantVWOcTm_0(a2, a4 + v9, type metadata accessor for Participant);
  *(a4 + v10) = a3 & 1;
  return result;
}

uint64_t closure #2 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t a1)
{
  if (one-time initialization token for lock != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  return Lock.withLock<A>(_:)();
}

uint64_t (*closure #1 in closure #2 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t a1))()
{
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = specialized Dictionary.subscript.modify(v4, a1);
  if (!v3[1])
  {
    (result)(v4, 0);
    return swift_endAccess();
  }

  if (!__OFADD__(*v3, 1))
  {
    ++*v3;
    (result)(v4, 0);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t a1)
{
  if (one-time initialization token for lock != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  return Lock.withLock<A>(_:)();
}

uint64_t outlined assign with take of Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.DeliveryMode and conformance GroupSessionMessenger.DeliveryMode()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.DeliveryMode and conformance GroupSessionMessenger.DeliveryMode;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.DeliveryMode and conformance GroupSessionMessenger.DeliveryMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.DeliveryMode and conformance GroupSessionMessenger.DeliveryMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.MessageReliability and conformance GroupSessionMessenger.MessageReliability()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageReliability and conformance GroupSessionMessenger.MessageReliability;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageReliability and conformance GroupSessionMessenger.MessageReliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageReliability and conformance GroupSessionMessenger.MessageReliability);
  }

  return result;
}

uint64_t type metadata completion function for GroupSessionMessenger.MessageContext(uint64_t a1)
{
  result = type metadata accessor for Participant(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata instantiation function for GroupSessionMessenger.MessageStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionMessenger.MessageWrapper(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupSessionMessenger.MessageWrapper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TypedPayloadBox and conformance TypedPayloadBox()
{
  result = lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMd, &_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMR);
  v23 = v8;
  v24 = &protocol witness table for TypedPayloadDecoder<A>;
  v9 = *a4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return outlined init with take of Transferable(&v22, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  __swift_mutable_project_boxed_opaque_existential_1(&v22, v8);
  specialized _NativeDictionary._insert(at:key:value:)(v11, a1, a2, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v22);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return outlined init with take of Transferable(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  specialized _NativeDictionary._insert(at:key:value:)(v17, a2, a3, v30, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v33);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = outlined init with take of Transferable(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t outlined destroy of GroupSessionMessenger.MessageContext(uint64_t a1)
{
  v2 = type metadata accessor for GroupSessionMessenger.MessageContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15GroupActivities11ParticipantVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data, @in_guaranteed Participant, @in_guaranteed SendReliability) -> (@out (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)?)(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMd, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMR);
  return v3(v4, v5, &a1[*(v6 + 48)], &a1[*(v6 + 64)]);
}

uint64_t getEnumTagSinglePayload for GroupSessionMessenger.MessageStreamStore.Storage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for GroupSessionMessenger.MessageStreamStore.Storage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionMessenger.MessageType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GroupSessionMessenger.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for GroupSessionMessenger.MessageType(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMR);
  v4 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<CKShare>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMR, MEMORY[0x1E695BF38]);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5TQ0_;

  return MEMORY[0x1EEE6D8C8](v2 + 2, v3, v4);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5TQ0_()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5TY2_;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5TY1_;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = lazy protocol witness table accessor for type GroupSessionJournal.Attachments.Iterator and conformance GroupSessionJournal.Attachments.Iterator();
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5TQ0_;

  return MEMORY[0x1EEE6D8C8](v2 + 2, &type metadata for GroupSessionJournal.Attachments.Iterator, v3);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5TQ0_()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5TY2_;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = AnyGroupActivity.tuConversationActivity<A>(as:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5TY2_()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E24SessionAttachmentManagerC11AttachmentsV8IteratorV_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = lazy protocol witness table accessor for type GroupSessionAttachmentManager.Attachments.Iterator and conformance GroupSessionAttachmentManager.Attachments.Iterator();
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5TQ0_;

  return MEMORY[0x1EEE6D8C8](v2 + 2, &type metadata for GroupSessionAttachmentManager.Attachments.Iterator, v3);
}

void specialized closure #1 in _PublisherElements.Iterator.Inner.next()(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v10 = a2[2];
  os_unfair_lock_lock(v10);
  swift_beginAccess();
  outlined init with copy of URL?((a2 + 4), &v22, a3, a4);
  if (!v23)
  {
    swift_beginAccess();
    v11 = a2[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2[3] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = a5(0, *(v11 + 16) + 1, 1, v11);
      a2[3] = v11;
    }

    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      v11 = a5(v13 > 1, v14 + 1, 1, v11);
    }

    *(v11 + 16) = v14 + 1;
    *(v11 + 8 * v14 + 32) = a1;
    a2[3] = v11;
    swift_endAccess();
    swift_beginAccess();
    v15 = a2[9];
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_12;
    }

    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_12:
      v16 = static Subscribers.Demand.unlimited.getter();
    }

    a2[9] = v16;
    swift_endAccess();
    os_unfair_lock_unlock(v10);
    return;
  }

  if (v23 == 1)
  {
    os_unfair_lock_unlock(v10);
    **(*(a1 + 64) + 40) = 0;
    swift_continuation_resume();
  }

  else
  {
    outlined init with take of Transferable(&v22, v21);
    swift_beginAccess();
    v17 = a2[3];
    v18 = swift_isUniquelyReferenced_nonNull_native();
    a2[3] = v17;
    if ((v18 & 1) == 0)
    {
      v17 = a5(0, *(v17 + 16) + 1, 1, v17);
      a2[3] = v17;
    }

    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      v17 = a5(v19 > 1, v20 + 1, 1, v17);
    }

    *(v17 + 16) = v20 + 1;
    *(v17 + 8 * v20 + 32) = a1;
    a2[3] = v17;
    swift_endAccess();
    os_unfair_lock_unlock(v10);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    dispatch thunk of Subscription.request(_:)();
    __swift_destroy_boxed_opaque_existential_0(v21);
  }
}

double GroupSessionAttachmentManager.attachments.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  if (*(v1 + 32))
  {
    v7 = *(v1 + 32);
  }

  else
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMd, &_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMR);
    v8 = v1;
    Published.projectedValue.getter();
    swift_endAccess();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[GroupSessionAttachmentManager.Attachment]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMR, MEMORY[0x1E695C068]);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v4 + 8))(v6, v3);
    *(v8 + 32) = v7;
  }

  *a1 = v7;

  return result;
}

uint64_t GroupSessionAttachmentManager.Attachments.init(_:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMd, &_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[GroupSessionAttachmentManager.Attachment]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMR, MEMORY[0x1E695C068]);
  v7 = Publisher.eraseToAnyPublisher()();

  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  return result;
}

uint64_t (*GroupSessionAttachmentManager.attachments.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  GroupSessionAttachmentManager.attachments.getter(a1);
  return GroupSessionJournal.attachments.modify;
}

uint64_t GroupSessionAttachmentManager._attachments.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t GroupSessionAttachmentManager.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager_cancellables;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t GroupSessionAttachmentManager.upload<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[51] = a4;
  v5[52] = v4;
  v5[49] = a2;
  v5[50] = a3;
  v5[48] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[57] = v7;
  v5[58] = *(v7 - 8);
  v5[59] = swift_task_alloc();
  v8 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  v5[60] = v8;
  v5[61] = *(v8 - 8);
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v9 = type metadata accessor for ResolvedTransferRepresentation();
  v5[64] = v9;
  v5[65] = *(v9 - 8);
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v10 = type metadata accessor for _TransferRepresentationInputs();
  v5[72] = v10;
  v5[73] = *(v10 - 8);
  v5[74] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[75] = AssociatedTypeWitness;
  v12 = type metadata accessor for _TransferRepresentationValue();
  v5[76] = v12;
  v5[77] = *(v12 - 8);
  v5[78] = swift_task_alloc();
  v13 = type metadata accessor for _TransferRepresentationOutputs();
  v5[79] = v13;
  v5[80] = *(v13 - 8);
  v5[81] = swift_task_alloc();
  v5[82] = *(AssociatedTypeWitness - 8);
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v14 = type metadata accessor for Optional();
  v5[86] = v14;
  v5[87] = *(v14 - 8);
  v5[88] = swift_task_alloc();
  v5[89] = *(a3 - 8);
  v5[90] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v5[91] = v15;
  v5[92] = *(v15 - 8);
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionAttachmentManager.upload<A>(_:), 0, 0);
}

uint64_t GroupSessionAttachmentManager.upload<A>(_:)(uint64_t a1)
{
  v140 = v1;
  UUID.init()();
  if (one-time initialization token for ledger != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v2 = *(v1 + 95);
    v3 = *(v1 + 94);
    v4 = *(v1 + 92);
    v5 = *(v1 + 91);
    buf = v1;
    v6 = *(v1 + 90);
    v7 = *(v1 + 89);
    v8 = *(v1 + 50);
    v9 = *(v1 + 49);
    v10 = type metadata accessor for Logger();
    *(v1 + 96) = v10;
    *(v1 + 97) = __swift_project_value_buffer(v10, static Log.ledger);
    v11 = *(v7 + 16);
    v12 = v6;
    v13 = v1;
    v11(v12, v9, v8);
    v14 = *(v4 + 16);
    *(v1 + 98) = v14;
    *(v1 + 99) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v3, v2, v5);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v1 + 94);
    v19 = *(v1 + 92);
    v134 = *(v1 + 91);
    v20 = *(v1 + 90);
    v21 = *(v1 + 89);
    v130 = v11;
    if (v17)
    {
      v121 = v18;
      v22 = *(buf + 88);
      loga = v15;
      v23 = *(buf + 87);
      v119 = *(buf + 86);
      v125 = v16;
      v24 = *(buf + 50);
      v25 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v139[0] = v123;
      *v25 = 136315394;
      v11(v22, v20, v24);
      (*(v21 + 56))(v22, 0, 1, v24);
      v26 = >> prefix<A>(_:)(v22, v24);
      v28 = v27;
      (*(v23 + 8))(v22, v119);
      (*(v21 + 8))(v20, v24);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v139);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v33 = *(v19 + 8);
      v33(v121, v134);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v139);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_1AEE80000, loga, v125, "Received upload request for item: %s, using ID: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v123, -1, -1);
      v35 = v25;
      v13 = buf;
      MEMORY[0x1B2715BA0](v35, -1, -1);
    }

    else
    {
      v36 = *(buf + 50);

      v33 = *(v19 + 8);
      v33(v18, v134);
      (*(v21 + 8))(v20, v36);
    }

    v118 = v33;
    *(v13 + 100) = v33;
    v37 = *(v13 + 85);
    v38 = *(v13 + 84);
    v39 = *(v13 + 82);
    v120 = *(v13 + 81);
    logb = *(v13 + 80);
    v135 = *(v13 + 79);
    v40 = *(v13 + 78);
    v124 = *(v13 + 77);
    v126 = *(v13 + 76);
    v41 = v13;
    v42 = *(v13 + 75);
    v43 = *(v41 + 74);
    v44 = *(v41 + 73);
    v122 = *(v41 + 72);
    dispatch thunk of static Transferable.transferRepresentation.getter();
    swift_getDynamicType();
    v117 = *(v39 + 16);
    v117(v38, v37, v42);
    _TransferRepresentationValue.init(_:)();
    _TransferRepresentationInputs.init()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
    v45 = *(v44 + 8);
    v1 = (v44 + 8);
    v45(v43, v122);
    (*(v124 + 8))(v40, v126);
    v46 = _TransferRepresentationOutputs.storage.getter();
    (logb[1].isa)(v120, v135);
    v47 = v46;
    log = *(v46 + 16);
    if (!log)
    {
      break;
    }

    v48 = 0;
    v49 = *(v41 + 65);
    v50 = MEMORY[0x1E69E7CC0];
    v51 = v41;
    while (v48 < *(v47 + 16))
    {
      v52 = *(v51 + 71);
      v53 = *(v51 + 69);
      v54 = *(v51 + 64);
      v55 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v56 = v47;
      v57 = *(v49 + 72);
      (*(v49 + 16))(v52, v47 + v55 + v57 * v48, v54);
      v58 = *(v49 + 32);
      v58(v53, v52, v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139[0] = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 16) + 1, 1);
        v50 = v139[0];
      }

      v61 = *(v50 + 16);
      v60 = *(v50 + 24);
      v51 = buf;
      if (v61 >= v60 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
        v50 = v139[0];
      }

      v48 = (v48 + 1);
      v62 = *(buf + 69);
      v63 = *(buf + 64);
      *(v50 + 16) = v61 + 1;
      v58(v50 + v55 + v61 * v57, v62, v63);
      v1 = v130;
      v47 = v56;
      if (log == v48)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  v50 = MEMORY[0x1E69E7CC0];
  v51 = v41;
  v1 = v130;
LABEL_15:

  if (*(v50 + 16))
  {
    v64 = *(v51 + 65);
    v65 = *(v64 + 16);
    v65(*(v51 + 70), v50 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), *(v51 + 64));

    v66 = ResolvedTransferRepresentation.exporting.getter();
    *(v51 + 101) = v66;
    *(v51 + 102) = v67;
    if (v66)
    {
      v68 = v66;
      v69 = *(v51 + 49);
      v136 = *(v51 + 25);
      *(v51 + 5) = v136;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51 + 7);
      v1(boxed_opaque_existential_1, v69, v136);
      v137 = (v68 + *v68);
      v71 = swift_task_alloc();
      *(v51 + 103) = v71;
      *v71 = v51;
      v71[1] = GroupSessionAttachmentManager.upload<A>(_:);

      return v137(v51 + 16, v51 + 56);
    }

    v65(*(v51 + 68), *(v51 + 70), *(v51 + 64));
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    v91 = os_log_type_enabled(v89, v90);
    v92 = *(v51 + 68);
    v93 = *(v51 + 65);
    v94 = *(v51 + 64);
    if (v91)
    {
      v138 = v90;
      v96 = *(v51 + 53);
      v95 = *(v51 + 54);
      v97 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v139[0] = v131;
      bufa = v97;
      *v97 = 136315138;
      v65(v95, v92, v94);
      (*(v93 + 56))(v95, 0, 1, v94);
      outlined init with copy of URL?(v95, v96, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v93 + 48))(v96, 1, v94) == 1)
      {
        v98 = 0xE300000000000000;
        v99 = 7104878;
      }

      else
      {
        v104 = *(v51 + 67);
        v105 = *(v51 + 66);
        v106 = *(v51 + 65);
        v107 = *(v51 + 64);
        (*(v106 + 32))(v104, *(v51 + 53), v107);
        v65(v105, v104, v107);
        v99 = String.init<A>(reflecting:)();
        v98 = v108;
        (*(v106 + 8))(v104, v107);
      }

      v109 = *(v51 + 68);
      v110 = *(v51 + 65);
      v111 = *(v51 + 64);
      outlined destroy of NSObject?(*(v51 + 54), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v103 = *(v110 + 8);
      v103(v109, v111);
      v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v98, v139);

      *(bufa + 4) = v112;
      _os_log_impl(&dword_1AEE80000, v89, v138, "Failed to find exporting closure from representation: %s", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131);
      MEMORY[0x1B2715BA0](v131, -1, -1);
      MEMORY[0x1B2715BA0](bufa, -1, -1);
    }

    else
    {

      v103 = *(v93 + 8);
      v103(v92, v94);
    }

    v100 = *(v51 + 95);
    v101 = *(v51 + 91);
    v113 = *(v51 + 70);
    v114 = *(v51 + 64);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v115 = 0;
    swift_willThrow();
    v103(v113, v114);
  }

  else
  {
    v73 = *(v51 + 85);
    v74 = *(v51 + 83);
    v75 = *(v51 + 75);

    v117(v74, v73, v75);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v51;
    v80 = *(v51 + 83);
    v81 = *(v79 + 82);
    v82 = *(v79 + 75);
    if (v78)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v139[0] = v84;
      *v83 = 136315138;
      swift_getDynamicType();
      v85 = _typeName(_:qualified:)();
      v87 = v86;
      (*(v81 + 8))(v80, v82);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v139);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_1AEE80000, v76, v77, "Failed to find supported representation for strategy: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x1B2715BA0](v84, -1, -1);
      MEMORY[0x1B2715BA0](v83, -1, -1);
    }

    else
    {

      (*(v81 + 8))(v80, v82);
    }

    v51 = buf;
    v100 = *(buf + 95);
    v101 = *(buf + 91);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v102 = 0;
    swift_willThrow();
  }

  v118(v100, v101);
  (*(*(v51 + 82) + 8))(*(v51 + 85), *(v51 + 75));

  v116 = *(v51 + 1);

  return v116();
}

uint64_t GroupSessionAttachmentManager.upload<A>(_:)()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  if (v0)
  {
    v3 = GroupSessionAttachmentManager.upload<A>(_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v3 = GroupSessionAttachmentManager.upload<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v69 = v0;
  outlined init with copy of Transferable(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  if (!swift_dynamicCast())
  {
    outlined init with copy of Transferable(v0 + 16, v0 + 136);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v68 = v26;
      *v25 = 136315138;
      outlined init with copy of Transferable(v0 + 136, v0 + 176);
      outlined init with copy of URL?(v0 + 176, v0 + 216, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
      if (*(v0 + 240))
      {
        outlined init with take of Transferable((v0 + 216), v0 + 256);
        outlined init with copy of Transferable(v0 + 256, v0 + 296);
        v27 = String.init<A>(reflecting:)();
        v29 = v28;
        __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      }

      else
      {
        v29 = 0xE300000000000000;
        v27 = 7104878;
      }

      outlined destroy of NSObject?(v0 + 176, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v68);

      *(v25 + 4) = v39;
      _os_log_impl(&dword_1AEE80000, v23, v24, "Failed to convert %s to Data", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B2715BA0](v26, -1, -1);
      MEMORY[0x1B2715BA0](v25, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    }

    v40 = *(v0 + 816);
    v41 = *(v0 + 808);
    v65 = *(v0 + 800);
    v42 = *(v0 + 760);
    v43 = *(v0 + 728);
    v44 = *(v0 + 560);
    v45 = *(v0 + 520);
    v46 = *(v0 + 512);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v41, v40);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v45 + 8))(v44, v46);
    v65(v42, v43);
    goto LABEL_17;
  }

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 504);
  v5 = *(v0 + 480);
  v6 = *(v0 + 464);
  v59 = *(v0 + 800);
  v61 = *(v0 + 456);
  v7 = *(v0 + 440);
  v66 = *(v0 + 448);
  v9 = *(v0 + 368);
  v8 = *(v0 + 376);
  (*(v0 + 784))(v4, *(v0 + 760), v3);
  swift_weakInit();
  v10 = (v4 + *(v5 + 24));
  *v10 = v9;
  v10[1] = v8;
  v62 = v9;
  outlined copy of Data._Representation(v9, v8);
  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 840) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v59(v1, v3);
  static URL.temporaryDirectory.getter();
  (*(v6 + 56))(v7, 0, 1, v61);
  URL.init(string:relativeTo:)();

  outlined destroy of NSObject?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v66, 1, v61) == 1)
  {
    v11 = *(v0 + 448);
    outlined consume of Data._Representation(v9, v8);
    outlined destroy of NSObject?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 768), static Log.default);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AEE80000, v12, v13, "Failed to convert TemporaryDirectory to URL", v14, 2u);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    v15 = *(v0 + 816);
    v16 = *(v0 + 808);
    v64 = *(v0 + 800);
    v63 = *(v0 + 760);
    v17 = *(v0 + 728);
    v18 = *(v0 + 560);
    v19 = *(v0 + 520);
    v21 = *(v0 + 504);
    v20 = *(v0 + 512);

    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v16, v15);
    outlined destroy of GroupSessionAttachmentManager.Attachment(v21, type metadata accessor for GroupSessionAttachmentManager.Attachment);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v19 + 8))(v18, v20);
    v64(v63, v17);
    goto LABEL_17;
  }

  v30 = *(v0 + 832);
  (*(*(v0 + 464) + 32))(*(v0 + 472), *(v0 + 448), *(v0 + 456));
  Data.write(to:options:)();
  if (v30)
  {
    v31 = *(v0 + 816);
    v32 = *(v0 + 808);
    v58 = *(v0 + 760);
    v60 = *(v0 + 800);
    v56 = *(v0 + 560);
    v57 = *(v0 + 728);
    v33 = *(v0 + 520);
    v35 = *(v0 + 504);
    v34 = *(v0 + 512);
    v37 = *(v0 + 464);
    v36 = *(v0 + 472);
    v38 = *(v0 + 456);
    outlined consume of Data._Representation(v62, v8);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v32, v31);
    (*(v37 + 8))(v36, v38);
    outlined destroy of GroupSessionAttachmentManager.Attachment(v35, type metadata accessor for GroupSessionAttachmentManager.Attachment);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v33 + 8))(v56, v34);
    v60(v58, v57);
LABEL_17:
    (*(*(v0 + 656) + 8))(*(v0 + 680), *(v0 + 600));

    v48 = *(v0 + 8);

    return v48();
  }

  v50 = *(v0 + 416);
  outlined consume of Data._Representation(v9, v8);
  v51 = *(v50 + 24);
  ObjectType = swift_getObjectType();
  v67 = (*(v51 + 40) + **(v51 + 40));
  v53 = swift_task_alloc();
  *(v0 + 848) = v53;
  *v53 = v0;
  v53[1] = GroupSessionAttachmentManager.upload<A>(_:);
  v54 = *(v0 + 760);
  v55 = *(v0 + 472);

  return v67(v54, v55, 0, 0xF000000000000000, ObjectType, v51);
}

{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = GroupSessionAttachmentManager.upload<A>(_:);
  }

  else
  {
    v2 = GroupSessionAttachmentManager.upload<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = [objc_allocWithZone(MEMORY[0x1E6997708]) init];
  v2 = [v1 sharePlayAttachmentLedgerEnabled];

  if ((v2 & 1) == 0)
  {
    outlined init with copy of GroupSessionAttachmentManager.Attachment(v0[63], v0[62], type metadata accessor for GroupSessionAttachmentManager.Attachment);
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = static Published.subscript.modify();
    v5 = v4;
    v6 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
      *v5 = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
      *v5 = v6;
    }

    v11 = v0[61];
    v10 = v0[62];
    v6[2] = v9 + 1;
    outlined init with take of GroupSessionAttachmentManager.Attachment(v10, v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9);
    v3(v0 + 42, 0);
  }

  v23 = v0[91];
  v24 = v0[95];
  v26 = v0[100];
  v27 = v0[85];
  v12 = v0[82];
  v25 = v0[75];
  v13 = v0[70];
  v14 = v0[65];
  v15 = v0[63];
  v16 = v0[64];
  v18 = v0[58];
  v17 = v0[59];
  v19 = v0[57];
  v20 = v0[48];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[101], v0[102]);
  (*(v18 + 8))(v17, v19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v14 + 8))(v13, v16);
  v26(v24, v23);
  outlined init with take of GroupSessionAttachmentManager.Attachment(v15, v20);
  (*(v12 + 8))(v27, v25);

  v21 = v0[1];

  return v21();
}

{
  v1 = v0[100];
  v2 = v0[95];
  v3 = v0[91];
  v4 = v0[70];
  v5 = v0[65];
  v6 = v0[64];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[101], v0[102]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v0[82] + 8))(v0[85], v0[75]);

  v7 = v0[1];

  return v7();
}

{
  v12 = v0[100];
  v1 = v0[95];
  v2 = v0[91];
  v3 = v0[70];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v8 = v0[58];
  v7 = v0[59];
  v9 = v0[57];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[101], v0[102]);
  (*(v8 + 8))(v7, v9);
  outlined destroy of GroupSessionAttachmentManager.Attachment(v6, type metadata accessor for GroupSessionAttachmentManager.Attachment);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v4 + 8))(v3, v5);
  v12(v1, v2);
  (*(v0[82] + 8))(v0[85], v0[75]);

  v10 = v0[1];

  return v10();
}

uint64_t GroupSessionAttachmentManager.Attachment.init(id:ledger:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  swift_weakInit();

  v11 = (a4 + *(v9 + 24));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

char *GroupSessionAttachmentManager.__allocating_init<A>(session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GroupSession(0, *(*a1 + 80), *(*a1 + 88), a4);
  v6 = swift_allocObject();

  return specialized GroupSessionAttachmentManager.init(transportSession:)(a1, v6, v5, &protocol witness table for GroupSession<A>);
}

char *GroupSessionAttachmentManager.__allocating_init(transportSession:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized GroupSessionAttachmentManager.__allocating_init(transportSession:)(a1, v2, ObjectType, a2);
}

char *GroupSessionAttachmentManager.init(transportSession:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized GroupSessionAttachmentManager.init(transportSession:)(a1, v2, ObjectType, a2);
}

uint64_t closure #1 in GroupSessionAttachmentManager.init(transportSession:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A24SessionAttachmentManagerC0D0VSgMd, &_s15GroupActivities0A24SessionAttachmentManagerC0D0VSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v31 - v7;
  v8 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v31 - v12;
  v13 = type metadata accessor for UUID();
  result = MEMORY[0x1EEE9AC00](v13);
  v39 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v40 = *(*a1 + 16);
  if (v40)
  {
    v19 = 0;
    v37 = v16 + 16;
    v38 = (v16 + 8);
    v32 = v9;
    v36 = (v9 + 48);
    v43 = MEMORY[0x1E69E7CC0];
    v33 = v8;
    v34 = a2;
    while (v19 < *(v18 + 16))
    {
      v20 = v18;
      v21 = v16;
      v22 = v39;
      v3 = v15;
      (*(v16 + 16))(v39, v18 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v19, v15);
      v23 = v41;
      v24 = a2;
      closure #1 in closure #1 in GroupSessionAttachmentManager.init(transportSession:)(v22, a2, v41);
      v25 = v22;
      v9 = v3;
      (*v38)(v25, v3);
      if ((*v36)(v23, 1, v8) == 1)
      {
        result = outlined destroy of NSObject?(v23, &_s15GroupActivities0A24SessionAttachmentManagerC0D0VSgMd, &_s15GroupActivities0A24SessionAttachmentManagerC0D0VSgMR);
      }

      else
      {
        v26 = v35;
        outlined init with take of GroupSessionAttachmentManager.Attachment(v23, v35);
        outlined init with take of GroupSessionAttachmentManager.Attachment(v26, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
        }

        v28 = v43[2];
        v27 = v43[3];
        v3 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v43);
        }

        v29 = v42;
        v30 = v43;
        v43[2] = v3;
        result = outlined init with take of GroupSessionAttachmentManager.Attachment(v29, v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
        v8 = v33;
        v24 = v34;
      }

      ++v19;
      v15 = v9;
      a2 = v24;
      v18 = v20;
      v16 = v21;
      if (v40 == v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v38)(v9, v3);

    __break(1u);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *v31 = v43;
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSessionAttachmentManager.init(transportSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.ledger);
  v20 = *(v11 + 16);
  v42 = a1;
  v21 = a1;
  v22 = v20;
  v20(v18, v21, v10);
  v23 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v23, v40);
  v41 = v22;
  if (v24)
  {
    v36 = v16;
    v25 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45[0] = v37;
    v38 = v25;
    *v25 = 136315138;
    v22(v9, v18, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    outlined init with copy of URL?(v9, v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      v26 = 0xE300000000000000;
      v27 = 7104878;
    }

    else
    {
      v28 = v36;
      (*(v11 + 32))(v36, v7, v10);
      v22(v39, v28, v10);
      v27 = String.init<A>(reflecting:)();
      v26 = v29;
      (*(v11 + 8))(v28, v10);
    }

    outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v11 + 8))(v18, v10);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v45);

    v31 = v38;
    *(v38 + 1) = v30;
    _os_log_impl(&dword_1AEE80000, v23, v40, "Received new attachment: %s", v31, 0xCu);
    v32 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1B2715BA0](v32, -1, -1);
    MEMORY[0x1B2715BA0](v31, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v18, v10);
  }

  v33 = v44;
  v41(v44, v42, v10);
  swift_beginAccess();
  swift_weakLoadStrong();
  v34 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  swift_weakInit();

  *(v33 + *(v34 + 24)) = xmmword_1AF012B00;
  return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
}

uint64_t closure #2 in GroupSessionAttachmentManager.init(transportSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v81 = a3;
  v78 = a2;
  v5 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  v72 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v75 = &v67 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v67 - v15;
  v16 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v85 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v82 = &v67 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v73 = &v67 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v74 = &v67 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v67 - v29;
  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = __swift_project_value_buffer(v31, static Log.ledger);
  v33 = *(v20 + 16);
  v79 = a1;
  v33(v30, a1, v19);
  outlined init with copy of GroupSessionAttachmentManager.Attachment(v81, v18, type metadata accessor for Participant);
  v81 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v83 = v20 + 16;
  v76 = v20;
  v77 = v33;
  if (v36)
  {
    v68 = v35;
    v69 = v5;
    v37 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v86[0] = v67;
    *v37 = 136315394;
    v38 = v80;
    v33(v80, v30, v19);
    (*(v20 + 56))(v38, 0, 1, v19);
    outlined init with copy of URL?(v38, v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v20 + 48))(v14, 1, v19) == 1)
    {
      v39 = 7104878;
      v40 = 0xE300000000000000;
    }

    else
    {
      v41 = v14;
      v42 = v34;
      v43 = v33;
      v44 = v73;
      v45 = v74;
      (*(v20 + 32))(v74, v41, v19);
      v43(v44, v45, v19);
      v34 = v42;
      v39 = String.init<A>(reflecting:)();
      v40 = v46;
      (*(v20 + 8))(v45, v19);
    }

    outlined destroy of NSObject?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v20 + 8))(v30, v19);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v86);

    *(v37 + 4) = v47;
    *(v37 + 12) = 2080;
    v48 = Participant.description.getter();
    v50 = v49;
    outlined destroy of GroupSessionAttachmentManager.Attachment(v18, type metadata accessor for Participant);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v86);

    *(v37 + 14) = v51;
    _os_log_impl(&dword_1AEE80000, v34, v68, "Received new attachment: %s from: %s", v37, 0x16u);
    v52 = v67;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v52, -1, -1);
    MEMORY[0x1B2715BA0](v37, -1, -1);

    v5 = v69;
  }

  else
  {

    outlined destroy of GroupSessionAttachmentManager.Attachment(v18, type metadata accessor for Participant);
    (*(v20 + 8))(v30, v19);
  }

  v53 = v82;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v84 = result;
  if (result)
  {
    v77(v53, v79, v19);
    v55 = Data.init(contentsOf:options:)();
    v57 = v56 | 0x1000000000000000;
    v58 = v71;
    (*(v76 + 32))(v71, v53, v19);
    swift_weakInit();
    v59 = (v58 + *(v5 + 24));
    *v59 = v55;
    v59[1] = v57;
    swift_getKeyPath();
    swift_getKeyPath();
    v60 = static Published.subscript.modify();
    v62 = v61;
    v63 = *v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v62 = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
      *v62 = v63;
    }

    v66 = v63[2];
    v65 = v63[3];
    if (v66 >= v65 >> 1)
    {
      v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v63);
      *v62 = v63;
    }

    v63[2] = v66 + 1;
    outlined init with take of GroupSessionAttachmentManager.Attachment(v58, v63 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v66);
    v60(v86, 0);
  }

  return result;
}

uint64_t GroupSessionAttachmentManager.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager___attachments;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMd, &_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t GroupSessionAttachmentManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager___attachments;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMd, &_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t GroupSessionAttachmentManager.Attachment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GroupSessionAttachmentManager.Attachment.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t key path getter for GroupSessionAttachmentManager.Attachment.ledger : GroupSessionAttachmentManager.Attachment@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GroupSessionAttachmentManager.Attachment(a1, v6, type metadata accessor for GroupSessionAttachmentManager.Attachment);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of GroupSessionAttachmentManager.Attachment(v6, type metadata accessor for GroupSessionAttachmentManager.Attachment);
  *a2 = Strong;
  return result;
}

uint64_t GroupSessionAttachmentManager.Attachment.ledger.getter()
{
  type metadata accessor for GroupSessionAttachmentManager.Attachment(0);

  return swift_weakLoadStrong();
}

uint64_t GroupSessionAttachmentManager.Attachment.ledger.setter(uint64_t a1)
{
  type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  swift_weakAssign();
}

uint64_t (*GroupSessionAttachmentManager.Attachment.ledger.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(type metadata accessor for GroupSessionAttachmentManager.Attachment(0) + 20);
  *a1 = swift_weakLoadStrong();
  return GroupSessionJournal.Attachment.ledger.modify;
}

uint64_t GroupSessionAttachmentManager.Attachment.source.getter()
{
  v1 = v0 + *(type metadata accessor for GroupSessionAttachmentManager.Attachment(0) + 24);
  v2 = *v1;
  outlined copy of GroupSessionAttachmentManager.Attachment.AttachmentSource(*v1, *(v1 + 8));
  return v2;
}

uint64_t GroupSessionAttachmentManager.Attachment.source.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for GroupSessionAttachmentManager.Attachment(0) + 24);
  result = outlined consume of GroupSessionAttachmentManager.Attachment.AttachmentSource(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t GroupSessionAttachmentManager.Attachment.load<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[45] = a4;
  v5[46] = v4;
  v5[43] = a1;
  v5[44] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v6 = type metadata accessor for Optional();
  v5[49] = v6;
  v5[50] = *(v6 - 8);
  v5[51] = swift_task_alloc();
  v7 = type metadata accessor for ResolvedTransferRepresentation();
  v5[52] = v7;
  v5[53] = *(v7 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v8 = type metadata accessor for _TransferRepresentationInputs();
  v5[60] = v8;
  v5[61] = *(v8 - 8);
  v5[62] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[63] = AssociatedTypeWitness;
  v10 = type metadata accessor for _TransferRepresentationValue();
  v5[64] = v10;
  v5[65] = *(v10 - 8);
  v5[66] = swift_task_alloc();
  v11 = type metadata accessor for _TransferRepresentationOutputs();
  v5[67] = v11;
  v5[68] = *(v11 - 8);
  v5[69] = swift_task_alloc();
  v5[70] = *(AssociatedTypeWitness - 8);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v5[74] = v12;
  v5[75] = *(v12 - 8);
  v5[76] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionAttachmentManager.Attachment.load<A>(_:), 0, 0);
}

uint64_t GroupSessionAttachmentManager.Attachment.load<A>(_:)()
{
  v121 = v0;
  v1 = v0;
  v2 = v0[46];
  v3 = (v2 + *(type metadata accessor for GroupSessionAttachmentManager.Attachment(0) + 24));
  v4 = *v3;
  v0[77] = *v3;
  v5 = v3[1];
  v0[78] = v5;
  v6 = (v5 >> 60) & 3;
  v7 = v5;
  if (!v6)
  {
LABEL_4:
    v104 = v7;
    v0[84] = v7;
    v0[83] = v4;
    v8 = v0[73];
    v9 = v0[72];
    v10 = v0[70];
    logc = v0[68];
    bufa = v0[67];
    v11 = v0[66];
    v12 = v0[63];
    v108 = v0[65];
    v109 = v0[64];
    v13 = v0[61];
    v14 = v0[62];
    v106 = v0[69];
    v107 = v0[60];
    v105 = v4;
    outlined copy of GroupSessionAttachmentManager.Attachment.AttachmentSource(v4, v5);
    dispatch thunk of static Transferable.transferRepresentation.getter();
    swift_getDynamicType();
    v103 = *(v10 + 16);
    v103(v9, v8, v12);
    _TransferRepresentationValue.init(_:)();
    _TransferRepresentationInputs.init()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
    (*(v13 + 8))(v14, v107);
    (*(v108 + 8))(v11, v109);
    v15 = _TransferRepresentationOutputs.storage.getter();
    (logc[1].isa)(v106, bufa);
    v16 = v15;
    log = *(v15 + 16);
    if (log)
    {
      v17 = 0;
      v18 = v0[53];
      v19 = MEMORY[0x1E69E7CC0];
      v1 = v0;
      v110 = v16;
      while (v17 < *(v16 + 16))
      {
        v20 = *(v1 + 59);
        v21 = *(v1 + 57);
        v22 = v1;
        v23 = *(v1 + 52);
        v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v25 = *(v18 + 72);
        (*(v18 + 16))(v20, v16 + v24 + v25 * v17, v23);
        v26 = *(v18 + 32);
        v26(v21, v20, v23);
        v120[0] = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
          v19 = v120[0];
        }

        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        v1 = v22;
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v19 = v120[0];
        }

        v17 = (v17 + 1);
        v29 = *(v22 + 57);
        v30 = *(v22 + 52);
        *(v19 + 16) = v28 + 1;
        v26(v19 + v24 + v28 * v25, v29, v30);
        v16 = v110;
        if (log == v17)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
      v1 = v0;
LABEL_18:

      if (*(v19 + 16))
      {
        v39 = *(v1 + 53);
        v40 = *(v39 + 16);
        v40(*(v1 + 58), v19 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), *(v1 + 52));

        v41 = ResolvedTransferRepresentation.importing.getter();
        *(v1 + 85) = v41;
        *(v1 + 86) = v42;
        if (v41)
        {
          v43 = v41;
          v44 = MEMORY[0x1E6965B68];
          *(v1 + 10) = MEMORY[0x1E6969080];
          *(v1 + 11) = v44;
          *(v1 + 7) = v105;
          *(v1 + 8) = v104;
          outlined copy of Data._Representation(v105, v104);
          buf = v43 + *v43;
          v45 = swift_task_alloc();
          *(v1 + 87) = v45;
          *v45 = v1;
          v45[1] = GroupSessionAttachmentManager.Attachment.load<A>(_:);

          return (buf)(v1 + 16, v1 + 56);
        }

        if (one-time initialization token for ledger != -1)
        {
          swift_once();
        }

        v63 = *(v1 + 58);
        v64 = *(v1 + 56);
        v65 = *(v1 + 52);
        v66 = type metadata accessor for Logger();
        __swift_project_value_buffer(v66, static Log.ledger);
        v40(v64, v63, v65);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        v69 = os_log_type_enabled(v67, v68);
        v70 = *(v1 + 56);
        v72 = *(v1 + 52);
        v71 = *(v1 + 53);
        if (v69)
        {
          logb = v67;
          v74 = *(v1 + 47);
          v73 = *(v1 + 48);
          v75 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v120[0] = v111;
          *v75 = 136315138;
          v40(v73, v70, v72);
          (*(v71 + 56))(v73, 0, 1, v72);
          outlined init with copy of URL?(v73, v74, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
          if ((*(v71 + 48))(v74, 1, v72) == 1)
          {
            v76 = 0xE300000000000000;
            v77 = 7104878;
          }

          else
          {
            v84 = *(v1 + 54);
            v83 = *(v1 + 55);
            v85 = v68;
            v87 = *(v1 + 52);
            v86 = *(v1 + 53);
            (*(v86 + 32))(v83, *(v1 + 47), v87);
            v40(v84, v83, v87);
            v77 = String.init<A>(reflecting:)();
            v76 = v88;
            (*(v86 + 8))(v83, v87);
            v68 = v85;
          }

          v89 = *(v1 + 56);
          v91 = *(v1 + 52);
          v90 = *(v1 + 53);
          outlined destroy of NSObject?(*(v1 + 48), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
          v92 = v91;
          v82 = *(v90 + 8);
          v82(v89, v92);
          v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, v120);

          *(v75 + 4) = v93;
          _os_log_impl(&dword_1AEE80000, logb, v68, "Failed to find importing closure from representation %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v111);
          MEMORY[0x1B2715BA0](v111, -1, -1);
          MEMORY[0x1B2715BA0](v75, -1, -1);
        }

        else
        {

          v82 = *(v71 + 8);
          v82(v70, v72);
        }

        v94 = *(v1 + 73);
        v95 = *(v1 + 70);
        v96 = *(v1 + 63);
        v97 = v1;
        v98 = *(v1 + 58);
        v99 = *(v97 + 52);
        lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
        swift_allocError();
        *v100 = 0;
        swift_willThrow();
        outlined consume of Data._Representation(v105, v104);
        v101 = v98;
        v1 = v97;
        v82(v101, v99);
        (*(v95 + 8))(v94, v96);
        goto LABEL_38;
      }

      if (one-time initialization token for ledger == -1)
      {
        goto LABEL_24;
      }
    }

    swift_once();
LABEL_24:
    v46 = *(v1 + 73);
    v47 = *(v1 + 71);
    v48 = *(v1 + 63);
    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Log.ledger);
    v103(v47, v46, v48);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v1 + 71);
    v54 = *(v1 + 70);
    v55 = *(v1 + 63);
    if (v52)
    {
      bufb = v1;
      v56 = swift_slowAlloc();
      logd = swift_slowAlloc();
      v120[0] = logd;
      *v56 = 136315138;
      swift_getDynamicType();
      v57 = _typeName(_:qualified:)();
      v59 = v58;
      v60 = *(v54 + 8);
      v60(v53, v55);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v120);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1AEE80000, v50, v51, "Failed to find supported representation for strategy: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(logd);
      MEMORY[0x1B2715BA0](logd, -1, -1);
      v62 = v56;
      v1 = bufb;
      MEMORY[0x1B2715BA0](v62, -1, -1);
    }

    else
    {

      v60 = *(v54 + 8);
      v60(v53, v55);
    }

    v79 = *(v1 + 73);
    v80 = *(v1 + 63);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v81 = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v105, v104);
    v60(v79, v80);
    goto LABEL_38;
  }

  if (v6 == 1)
  {
    v7 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    goto LABEL_4;
  }

  Strong = swift_weakLoadStrong();
  v0[79] = Strong;
  if (!Strong)
  {
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v78 = 2;
    swift_willThrow();
LABEL_38:

    v102 = *(v1 + 1);

    return v102();
  }

  v0[80] = *(Strong + 16);
  v32 = *(Strong + 24);
  ObjectType = swift_getObjectType();
  v34 = *(v32 + 48);
  swift_unknownObjectRetain();
  loga = (v34 + *v34);
  v35 = swift_task_alloc();
  v0[81] = v35;
  *v35 = v0;
  v35[1] = GroupSessionAttachmentManager.Attachment.load<A>(_:);
  v36 = v0[76];
  v37 = v0[46];

  return (loga)(v36, v37, ObjectType, v32);
}

{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = GroupSessionAttachmentManager.Attachment.load<A>(_:);
  }

  else
  {
    v2 = GroupSessionAttachmentManager.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v114 = v0;
  v1 = v0[82];
  swift_unknownObjectRelease();
  v2 = Data.init(contentsOf:options:)();
  v4 = v3;
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

LABEL_3:

    v8 = v0[1];

    return v8();
  }

  (*(v6 + 8))(v5, v7);

  v97 = v2;
  v98 = v4;
  v0[84] = v4;
  v0[83] = v2;
  v10 = v0[73];
  v11 = v0[72];
  v12 = v0[70];
  v108 = v0[67];
  v13 = v0[66];
  v101 = v0[65];
  v102 = v0[68];
  v14 = v0[63];
  v103 = v0[64];
  v16 = v0[61];
  v15 = v0[62];
  v99 = v0[69];
  v100 = v0[60];
  outlined copy of GroupSessionAttachmentManager.Attachment.AttachmentSource(v0[77], v0[78]);
  dispatch thunk of static Transferable.transferRepresentation.getter();
  swift_getDynamicType();
  v96 = *(v12 + 16);
  v96(v11, v10, v14);
  _TransferRepresentationValue.init(_:)();
  _TransferRepresentationInputs.init()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
  (*(v16 + 8))(v15, v100);
  (*(v101 + 8))(v13, v103);
  v17 = _TransferRepresentationOutputs.storage.getter();
  (*(v102 + 8))(v99, v108);
  v18 = v17;
  v109 = *(v17 + 16);
  if (v109)
  {
    v19 = 0;
    v20 = v0[53];
    v21 = v20 + 32;
    v22 = MEMORY[0x1E69E7CC0];
    v104 = v18;
    v106 = v0;
    while (v19 < *(v18 + 16))
    {
      v23 = v0[59];
      v24 = v0[57];
      v25 = v0;
      v26 = v21;
      v27 = v25[52];
      v28 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v29 = *(v20 + 72);
      (*(v20 + 16))(v23, v18 + v28 + v29 * v19, v27);
      v30 = *(v20 + 32);
      v31 = v27;
      v21 = v26;
      v30(v24, v23, v31);
      v113[0] = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
        v22 = v113[0];
      }

      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      v0 = v106;
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v22 = v113[0];
      }

      ++v19;
      v34 = v106[57];
      v35 = v106[52];
      *(v22 + 16) = v33 + 1;
      v30(v22 + v28 + v33 * v29, v34, v35);
      v18 = v104;
      if (v109 == v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_16:

  if (!*(v22 + 16))
  {

    if (one-time initialization token for ledger == -1)
    {
LABEL_22:
      v43 = v0[73];
      v44 = v0[71];
      v45 = v0[63];
      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Log.ledger);
      v96(v44, v43, v45);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v0[71];
      v51 = v0[70];
      v52 = v0[63];
      if (v49)
      {
        v107 = v0;
        v53 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v113[0] = v111;
        *v53 = 136315138;
        swift_getDynamicType();
        v54 = _typeName(_:qualified:)();
        v56 = v55;
        v57 = *(v51 + 8);
        v57(v50, v52);
        v58 = v57;
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v113);

        *(v53 + 4) = v59;
        _os_log_impl(&dword_1AEE80000, v47, v48, "Failed to find supported representation for strategy: %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v111);
        MEMORY[0x1B2715BA0](v111, -1, -1);
        v0 = v107;
        MEMORY[0x1B2715BA0](v53, -1, -1);

        v60 = v58;
      }

      else
      {

        v60 = *(v51 + 8);
        v60(v50, v52);
      }

      v76 = v0[73];
      v77 = v0[63];
      lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
      swift_allocError();
      *v78 = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v97, v98);
      v60(v76, v77);
      goto LABEL_3;
    }

LABEL_36:
    swift_once();
    goto LABEL_22;
  }

  v36 = v0[53];
  v37 = *(v36 + 16);
  v37(v0[58], v22 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v0[52]);

  v38 = ResolvedTransferRepresentation.importing.getter();
  v0[85] = v38;
  v0[86] = v39;
  if (!v38)
  {
    if (one-time initialization token for ledger != -1)
    {
      swift_once();
    }

    v61 = v0[58];
    v62 = v0[56];
    v63 = v0[52];
    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Log.ledger);
    v37(v62, v61, v63);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[56];
    v70 = v0[52];
    v69 = v0[53];
    if (v67)
    {
      v112 = v66;
      v72 = v0[47];
      v71 = v0[48];
      v73 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v113[0] = v105;
      *v73 = 136315138;
      v37(v71, v68, v70);
      (*(v69 + 56))(v71, 0, 1, v70);
      outlined init with copy of URL?(v71, v72, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v69 + 48))(v72, 1, v70) == 1)
      {
        v74 = 0xE300000000000000;
        v75 = 7104878;
      }

      else
      {
        v80 = v0[54];
        v81 = v0[55];
        v83 = v0[52];
        v82 = v0[53];
        (*(v82 + 32))(v81, v0[47], v83);
        v37(v80, v81, v83);
        v75 = String.init<A>(reflecting:)();
        v74 = v84;
        (*(v82 + 8))(v81, v83);
      }

      v85 = v0[56];
      v87 = v0[52];
      v86 = v0[53];
      outlined destroy of NSObject?(v0[48], &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v88 = v87;
      v79 = *(v86 + 8);
      v79(v85, v88);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v74, v113);

      *(v73 + 4) = v89;
      _os_log_impl(&dword_1AEE80000, v65, v112, "Failed to find importing closure from representation %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x1B2715BA0](v105, -1, -1);
      MEMORY[0x1B2715BA0](v73, -1, -1);
    }

    else
    {

      v79 = *(v69 + 8);
      v79(v68, v70);
    }

    v90 = v0[73];
    v91 = v0[70];
    v92 = v0[63];
    v93 = v0[58];
    v94 = v0[52];
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v95 = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v97, v98);
    v79(v93, v94);
    (*(v91 + 8))(v90, v92);
    goto LABEL_3;
  }

  v40 = v38;
  v41 = MEMORY[0x1E6965B68];
  v0[10] = MEMORY[0x1E6969080];
  v0[11] = v41;
  v0[7] = v97;
  v0[8] = v98;
  outlined copy of Data._Representation(v97, v98);
  v110 = (v40 + *v40);
  v42 = swift_task_alloc();
  v0[87] = v42;
  *v42 = v0;
  v42[1] = GroupSessionAttachmentManager.Attachment.load<A>(_:);

  return (v110)(v0 + 2, v0 + 7);
}

{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = GroupSessionAttachmentManager.Attachment.load<A>(_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v3 = GroupSessionAttachmentManager.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v44 = v0;
  outlined init with copy of Transferable(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 672);
    v2 = *(v0 + 664);
    v40 = *(v0 + 584);
    v3 = *(v0 + 560);
    v39 = *(v0 + 504);
    v4 = *(v0 + 464);
    v5 = *(v0 + 416);
    v6 = *(v0 + 424);
    v7 = *(v0 + 408);
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 680), *(v0 + 688));
    outlined consume of Data._Representation(v2, v1);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v6 + 8))(v4, v5);
    v10 = *(v8 - 8);
    (*(v10 + 56))(v7, 0, 1, v8);
    (*(v10 + 32))(v9, v7, v8);
    (*(v3 + 8))(v40, v39);

    v11 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 400);
    v12 = *(v0 + 408);
    v14 = *(v0 + 392);
    (*(*(*(v0 + 352) - 8) + 56))(v12, 1, 1);
    (*(v13 + 8))(v12, v14);
    if (one-time initialization token for ledger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.ledger);
    outlined init with copy of Transferable(v0 + 16, v0 + 136);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v43[0] = v19;
      *v18 = 136315394;
      outlined init with copy of Transferable(v0 + 136, v0 + 176);
      outlined init with copy of URL?(v0 + 176, v0 + 216, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
      if (*(v0 + 240))
      {
        outlined init with take of Transferable((v0 + 216), v0 + 256);
        outlined init with copy of Transferable(v0 + 256, v0 + 296);
        v20 = String.init<A>(reflecting:)();
        v22 = v21;
        __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 7104878;
      }

      v23 = *(v0 + 352);
      outlined destroy of NSObject?(v0 + 176, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v43);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      *(v0 + 336) = v23;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v26 = >> prefix<A>(_:)(v0 + 336, MetatypeMetadata);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v43);

      *(v18 + 14) = v28;
      _os_log_impl(&dword_1AEE80000, v16, v17, "Failed to convert %s to %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v19, -1, -1);
      MEMORY[0x1B2715BA0](v18, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    }

    v29 = *(v0 + 688);
    v30 = *(v0 + 680);
    v31 = *(v0 + 672);
    v32 = *(v0 + 664);
    v33 = *(v0 + 560);
    v41 = *(v0 + 504);
    v42 = *(v0 + 584);
    v34 = *(v0 + 464);
    v35 = *(v0 + 416);
    v36 = *(v0 + 424);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v37 = 1;
    swift_willThrow();
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v30, v29);
    outlined consume of Data._Representation(v32, v31);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v36 + 8))(v34, v35);
    (*(v33 + 8))(v42, v41);

    v11 = *(v0 + 8);
  }

  return v11();
}

{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[73];
  v4 = v0[70];
  v5 = v0[63];
  v6 = v0[58];
  v7 = v0[52];
  v8 = v0[53];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[85], v0[86]);
  outlined consume of Data._Representation(v2, v1);
  (*(v8 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:), 0, 0);
}

uint64_t GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:)()
{
  type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v0[8] = *(Strong + 16);
    v2 = *(Strong + 24);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 48);
    swift_unknownObjectRetain();
    v11 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:);
    v6 = v0[6];
    v7 = v0[2];

    return v11(v6, v7, ObjectType, v2);
  }

  else
  {
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:);
  }

  else
  {
    v2 = GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[10];
  swift_unknownObjectRelease();
  v2 = Data.init(contentsOf:options:)();
  v4 = v0[5];
  if (v1)
  {
    (*(v4 + 8))(v0[6], v0[4]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v2;
    v8 = v3;
    (*(v4 + 8))(v0[6], v0[4]);

    v9 = v0[1];

    return v9(v7, v8);
  }
}

{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupSessionAttachmentManager.Attachment.loadMetadata<A>(of:)()
{
  return MEMORY[0x1EEE6DFA0](GroupSessionAttachmentManager.Attachment.loadMetadata<A>(of:), 0, 0);
}

{
  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t GroupSessionAttachmentManager.Attachments.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMR);
  v2 = swift_allocObject();

  v3 = swift_slowAlloc();
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = static Subscribers.Demand.none.getter();
  *v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMR, MEMORY[0x1E695BED8]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMR, &protocol conformance descriptor for _PublisherElements<A>.Iterator.Inner);
  Publisher.subscribe<A>(_:)();

  *a1 = v2;
  return result;
}

uint64_t GroupSessionAttachmentManager.Attachments.Iterator.baseIterator.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t GroupSessionAttachmentManager.Attachments.Iterator.next()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](GroupSessionAttachmentManager.Attachments.Iterator.next(), 0, 0);
}

{
  v1 = v0[3];
  v2 = *v1;
  v0[4] = *v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGSgMd, &_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGSgMR);
  *v4 = v0;
  v4[1] = GroupSessionJournal.Attachments.Iterator.next();

  return MEMORY[0x1EEE6DE18](v0 + 2, &async function pointer to partial apply for specialized closure #2 in _PublisherElements.Iterator.next(), v3, partial apply for specialized closure #1 in _PublisherElements.Iterator.next(), v2, 0, 0, v5);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionAttachmentManager.Attachments.Iterator(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionAttachmentManager.Attachments.Iterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionAttachmentManager.Attachments.Iterator()
{
  v1 = v0[4];
  v2 = *v1;
  v0[5] = *v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGSgMd, &_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGSgMR);
  *v4 = v0;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator;

  return MEMORY[0x1EEE6DE18](v0 + 2, &closure #2 in _PublisherElements.Iterator.next()specialized partial apply, v3, closure #1 in _PublisherElements.Iterator.next()specialized partial apply, v2, 0, 0, v5);
}

uint64_t _s15GroupActivities0A24SessionAttachmentManagerC11AttachmentsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = _s15GroupActivities0A14SessionJournalC11AttachmentsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E24SessionAttachmentManagerC11AttachmentsV8IteratorV_Tg5(a2, a3);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance GroupSessionAttachmentManager.Attachments@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMR);
  v2 = swift_allocObject();

  v3 = swift_slowAlloc();
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = static Subscribers.Demand.none.getter();
  *v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMR, MEMORY[0x1E695BED8]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMR, &protocol conformance descriptor for _PublisherElements<A>.Iterator.Inner);
  Publisher.subscribe<A>(_:)();

  *a1 = v2;
}

uint64_t key path getter for GroupSessionAttachmentManager._attachments : GroupSessionAttachmentManager@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for GroupSessionAttachmentManager._attachments : GroupSessionAttachmentManager(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t outlined init with take of GroupSessionAttachmentManager.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *specialized GroupSessionAttachmentManager.__allocating_init(transportSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();

  return specialized GroupSessionAttachmentManager.init(transportSession:)(a1, v7, a3, a4);
}

char *specialized GroupSessionAttachmentManager.init(transportSession:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMR);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I24SessionAttachmentManagerC0L0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I24SessionAttachmentManagerC0L0VGGMR);
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMd, &_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  *(a2 + 4) = 0;
  v20 = OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager___attachments;
  v36 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGMd, &_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGMR);
  Published.init(initialValue:)();
  (*(v17 + 32))(&a2[v20], v19, v16);
  *&a2[OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager_cancellables] = MEMORY[0x1E69E7CD0];
  *(a2 + 2) = a1;
  *(a2 + 3) = a4;
  v36 = (*(a4 + 24))(v30, a4);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  v30 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher.map<A>(_:)();

  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UUID], Never>, [GroupSessionAttachmentManager.Attachment]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I24SessionAttachmentManagerC0L0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I24SessionAttachmentManagerC0L0VGGMR, MEMORY[0x1E695BD60]);
  v21 = v31;
  Publisher<>.assign(to:)();
  (*(v32 + 8))(v15, v21);
  v22 = v34;
  v23 = v35;
  (*(v34 + 16))(v33, v11, v35);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v22 + 8))(v11, v23);
  v24 = *(a2 + 3);
  ObjectType = swift_getObjectType();
  v36 = (*(v24 + 32))(ObjectType, v24);
  v26 = swift_allocObject();
  swift_weakInit();

  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for closure #2 in GroupSessionAttachmentManager.init(transportSession:);
  *(v27 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(UUID, URL, Participant), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR, v30);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return a2;
}

double outlined copy of GroupSessionAttachmentManager.Attachment.AttachmentSource(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return outlined copy of Data._Representation(a1, a2);
}

uint64_t outlined consume of GroupSessionAttachmentManager.Attachment.AttachmentSource(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return outlined consume of Data._Representation(result, a2);
}

unint64_t lazy protocol witness table accessor for type GroupSessionAttachmentManager.Attachments.Iterator and conformance GroupSessionAttachmentManager.Attachments.Iterator()
{
  result = lazy protocol witness table cache variable for type GroupSessionAttachmentManager.Attachments.Iterator and conformance GroupSessionAttachmentManager.Attachments.Iterator;
  if (!lazy protocol witness table cache variable for type GroupSessionAttachmentManager.Attachments.Iterator and conformance GroupSessionAttachmentManager.Attachments.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionAttachmentManager.Attachments.Iterator and conformance GroupSessionAttachmentManager.Attachments.Iterator);
  }

  return result;
}

void type metadata completion function for GroupSessionAttachmentManager(uint64_t a1)
{
  type metadata accessor for Published<[GroupSessionAttachmentManager.Attachment]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[GroupSessionAttachmentManager.Attachment]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[GroupSessionAttachmentManager.Attachment]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGMd, &_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[GroupSessionAttachmentManager.Attachment]>);
    }
  }
}

uint64_t type metadata completion function for GroupSessionAttachmentManager.Attachment(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities0A24SessionAttachmentManagerC0D0V0D6SourceO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t getEnumTagSinglePayload for GroupSessionAttachmentManager.Attachment.AttachmentSource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupSessionAttachmentManager.Attachment.AttachmentSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_1AF012B10;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for GroupSessionAttachmentManager.Attachment.AttachmentSource(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

uint64_t _s10Foundation4UUIDVAA3URLV15GroupActivities11ParticipantVIegnnn_AC_AeHtIegn_TRTA_0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMd, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMR);
  return v3(a1, a1 + *(v4 + 48), a1 + *(v4 + 64));
}

uint64_t outlined init with copy of GroupSessionAttachmentManager.Attachment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GroupSessionAttachmentManager.Attachment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *Participant.init(handle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  UUID.init()();
  result = type metadata accessor for Participant(0);
  v7 = (a3 + result[5]);
  *v7 = a1;
  v7[1] = a2;
  *(a3 + result[6]) = 0;
  *(a3 + result[8]) = 0;
  v8 = (a3 + result[7]);
  *v8 = 0;
  v8[1] = 0;
  *(a3 + result[9]) = 0;
  return result;
}

uint64_t Participant.asNearbyParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Participant(0);
  v4 = v3[6];
  v5 = *(v1 + v4);
  v6 = (v1 + v3[5]);
  v8 = *v6;
  v7 = v6[1];
  v9 = (v1 + v3[7]);
  v11 = *v9;
  v10 = v9[1];
  *(a1 + v4) = v5;

  result = UUID.init(_:)(v5);
  v13 = (a1 + v3[5]);
  *v13 = v8;
  v13[1] = v7;
  v14 = (a1 + v3[7]);
  *v14 = v11;
  v14[1] = v10;
  *(a1 + v3[8]) = 1;
  *(a1 + v3[9]) = 0;
  return result;
}

int *Participant.init(serverIdentifier:handle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  UUID.init(_:)(a1);
  result = type metadata accessor for Participant(0);
  *(a4 + result[6]) = a1;
  v9 = (a4 + result[5]);
  *v9 = a2;
  v9[1] = a3;
  *(a4 + result[8]) = 0;
  v10 = (a4 + result[7]);
  *v10 = 0;
  v10[1] = 0;
  *(a4 + result[9]) = 0;
  return result;
}

uint64_t Participant.init(serverIdentifier:handle:stableDeviceIdentifier:isNearbyWithLocalParticipant:isConnectedToCommunalDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for Participant(0);
  *(a8 + v16[6]) = a1;
  result = UUID.init(_:)(a1);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (a3)
  {
    v19 = a3;
  }

  v20 = (a8 + v16[5]);
  *v20 = v18;
  v20[1] = v19;
  v21 = (a8 + v16[7]);
  *v21 = a4;
  v21[1] = a5;
  *(a8 + v16[8]) = a6;
  *(a8 + v16[9]) = a7;
  return result;
}

id Participant.cpParticipant.getter()
{
  v1 = type metadata accessor for Participant(0);
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  v5 = objc_allocWithZone(MEMORY[0x1E6997710]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = MEMORY[0x1B2714130](v3, v4);
  v8 = [v5 initWithUUID:isa accountIdentifier:v7];

  [v8 _setParticipantIdentifier_];
  return v8;
}

int *Participant.init(id:handle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 16))(a4, a1, v8);
  v11 = UUID.uint64Value.getter(v10);
  (*(v9 + 8))(a1, v8);
  result = type metadata accessor for Participant(0);
  *(a4 + result[6]) = v11;
  v13 = (a4 + result[5]);
  *v13 = a2;
  v13[1] = a3;
  v14 = (a4 + result[7]);
  *v14 = 0;
  v14[1] = 0;
  *(a4 + result[8]) = 0;
  *(a4 + result[9]) = 0;
  return result;
}

uint64_t Participant.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Participant.handle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Participant(0) + 20));

  return v1;
}

uint64_t Participant.stableDeviceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Participant(0) + 28));

  return v1;
}

uint64_t Participant.isNearbyWithLocalParticipant.setter(char a1)
{
  result = type metadata accessor for Participant(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t Participant.isConnectedToCommunalDevice.setter(char a1)
{
  result = type metadata accessor for Participant(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

int *Participant.init(cpParticipant:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 participantIdentifier];
  v5 = [a1 accountIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  UUID.init(_:)(v4);
  result = type metadata accessor for Participant(0);
  *(a2 + result[6]) = v4;
  v10 = (a2 + result[5]);
  *v10 = v6;
  v10[1] = v8;
  *(a2 + result[8]) = 0;
  v11 = (a2 + result[7]);
  *v11 = 0;
  v11[1] = 0;
  *(a2 + result[9]) = 0;
  return result;
}

void Participant.hash(into:)(uint64_t a1)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for Participant(0);
  String.hash(into:)();
  MEMORY[0x1B2715070](*(v1 + v2[6]));
  if (*(v1 + v2[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v2[8]));
  Hasher._combine(_:)(*(v1 + v2[9]));
}

Swift::Int Participant.hashValue.getter()
{
  Hasher.init(_seed:)();
  Participant.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Participant()
{
  Hasher.init(_seed:)();
  Participant.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Participant(uint64_t a1)
{
  Hasher.init(_seed:)();
  Participant.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t Participant.description.getter()
{
  _StringGuts.grow(_:)(18);

  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v1);

  v2 = type metadata accessor for Participant(0);
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x1B27141F0]();
    MEMORY[0x1B27141F0](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  }

  v7 = (v0 + v2[7]);
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    _StringGuts.grow(_:)(28);

    MEMORY[0x1B27141F0](v9, v8);
    MEMORY[0x1B27141F0](0xD00000000000001ALL, 0x80000001AF01C500);
  }

  if (*(v0 + v2[8]) == 1)
  {
    MEMORY[0x1B27141F0](0xD000000000000024, 0x80000001AF01C4D0);
  }

  if (*(v0 + v2[9]) == 1)
  {
    MEMORY[0x1B27141F0](0xD000000000000023, 0x80000001AF01C4A0);
  }

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t specialized static Participant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v4 = type metadata accessor for Participant(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    goto LABEL_18;
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v14)
  {
    goto LABEL_18;
  }

  if (*(a1 + v4[8]) == *(a2 + v4[8]))
  {
    v16 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
    return v16 & 1;
  }

LABEL_18:
  v16 = 0;
  return v16 & 1;
}

uint64_t static BinaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AF00DBA0;
  v7 = a1;
  (*(a3 + 8))();
  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v6 + 16);
    outlined copy of Data._Representation(v7, *(v6 + 24));
  }

  return v7;
}

double BinaryEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = xmmword_1AF00DBA0;
  return result;
}

uint64_t BinaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in BinaryEncoder.encode<A>(_:), 0, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], MEMORY[0x1E69E7410], a8);
  swift_beginAccess();
  Data.append(_:)();
  swift_endAccess();
  return outlined consume of Data._Representation(v9, v10);
}

uint64_t closure #1 in BinaryEncoder.encode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = specialized Data.InlineData.init(_:)(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = specialized Data.LargeSlice.init(_:)(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = specialized Data.InlineSlice.init(_:)(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = specialized Data.InlineData.init(_:)(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = specialized Data.LargeSlice.init(_:)(v3, v4);
    }

    else
    {
      v6 = specialized Data.InlineSlice.init(_:)(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t BinaryEncoder.encode(_:)(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6[0] = UUID.uuid.getter();
  v6[1] = v1;
  v2 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v6, v7);
  v4 = v3;
  swift_beginAccess();
  Data.append(_:)();
  swift_endAccess();
  return outlined consume of Data._Representation(v2, v4);
}

uint64_t BinaryEncoder.encode(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Data.append(_:)();
  return swift_endAccess();
}

uint64_t BinaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v14 - v5;
  dispatch thunk of RawRepresentable.rawValue.getter();
  BinaryEncoder.encode<A>(_:)(v6, AssociatedTypeWitness, v7, v8, v9, v10, v11, v12);
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

{
  return (*(a3 + 8))(v3, a2);
}

uint64_t BinaryEncoder.__deallocating_deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

double BinaryEncoder.init()()
{
  result = 0.0;
  *(v0 + 16) = xmmword_1AF00DBA0;
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
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

uint64_t IdentifiableGroupActivity.uuid.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v15[3] = *(v16 - 8);
  v7 = MEMORY[0x1EEE9AC00](v16);
  v15[2] = v15 - v8;
  v17 = *(a1 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  v15[4] = v5;
  dispatch thunk of Identifiable.id.getter();
  v13 = type metadata accessor for UUID();
  swift_getAssociatedConformanceWitness();
  default argument 0 of static SharableObjectIdentifier.identifier<A, B>(ofType:with:)(AssociatedTypeWitness, v13);
  v18 = a3;
  static SharableObjectIdentifier.identifier<A, B>(ofType:with:)();
  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

id XPCWrapper.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized XPCWrapper.init(_:)(a1);
  (*(*(*(v1 + 10) - 8) + 8))(a1);
  return v4;
}

id XPCWrapper.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = specialized XPCWrapper.init(_:)(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

Swift::Void __swiftcall XPCWrapper.encode(with:)(NSCoder with)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = MEMORY[0x1B2714130](1635017060, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v3];
}

void @objc XPCWrapper.encode(with:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  XPCWrapper.encode(with:)(v4);
}

id XPCWrapper.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  v5 = v4[10];
  v6 = type metadata accessor for Optional();
  v28 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v24 - v11;
  type metadata accessor for NSData();
  v13 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v13 && (v27 = v10, v30 = xmmword_1AF011260, v14 = v13, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v14, v15 = *(&v30 + 1), *(&v30 + 1) >> 60 != 15))
  {
    v16 = v30;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v25 = v4[11];
    v26 = v16;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v18 = v27;
    (*(v27 + 56))(v9, 0, 1, v5);
    v19 = *(v18 + 32);
    v19(v12, v9, v5);
    v20 = MEMORY[0x1E69E7D40];
    v21 = &v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x70)];
    *v21 = v26;
    *(v21 + 1) = v15;
    v19(&v2[*((*v20 & *v2) + 0x68)], v12, v5);
    v22 = type metadata accessor for XPCWrapper(0, v5, v25, v4[12]);
    v29.receiver = v2;
    v29.super_class = v22;
    v23 = objc_msgSendSuper2(&v29, sel_init);

    return v23;
  }

  else
  {

    type metadata accessor for XPCWrapper(0, v5, v4[11], v4[12]);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id XPCWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCWrapper.__deallocating_deinit()
{
  v1 = type metadata accessor for XPCWrapper(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0x50), *((*MEMORY[0x1E69E7D40] & *v0) + 0x58), *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t @objc XPCWrapper.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);
  v3 = &a1[*((*v2 & *a1) + 0x70)];
  v4 = *v3;
  v5 = v3[1];

  return outlined consume of Data._Representation(v4, v5);
}

id specialized XPCWrapper.init(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v17 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *((v3 & v2) + 0x68);
  v5 = *((v3 & v2) + 0x50);
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v7 = *((v3 & v2) + 0x60);
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v15)
  {

    (*(v6 + 8))(&v1[v4], v5);
    type metadata accessor for XPCWrapper(0, v5, *(v17 + 88), v7);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v8;
    v12 = v9;

    v13 = &v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x70)];
    *v13 = v11;
    v13[1] = v12;
    v14 = type metadata accessor for XPCWrapper(0, v5, *(v17 + 88), v7);
    v16.receiver = v1;
    v16.super_class = v14;
    return objc_msgSendSuper2(&v16, sel_init);
  }
}

unint64_t type metadata accessor for NSData()
{
  result = lazy cache variable for type metadata for NSData;
  if (!lazy cache variable for type metadata for NSData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSData);
  }

  return result;
}

uint64_t type metadata completion function for XPCWrapper(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static BinaryDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = 0;
  v10 = *(a5 + 8);
  v11 = outlined copy of Data._Representation(a2, a3);
  return v10(v9, a4, a5, v11);
}

uint64_t BinaryDecoder.isAtEnd.getter()
{
  v1 = v0[4];
  result = swift_beginAccess();
  v3 = v0[2];
  v4 = v0[3];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v6 = 0;
    if (v5 != 2)
    {
      return v1 >= v6;
    }

    v8 = v3 + 16;
    v3 = *(v3 + 16);
    v7 = *(v8 + 8);
    v9 = __OFSUB__(v7, v3);
    v6 = v7 - v3;
    if (!v9)
    {
      return v1 >= v6;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v4);
    return v1 >= v6;
  }

  v9 = __OFSUB__(HIDWORD(v3), v3);
  v10 = HIDWORD(v3) - v3;
  if (!v9)
  {
    v6 = v10;
    return v1 >= v6;
  }

  __break(1u);
  return result;
}

uint64_t BinaryDecoder.decode<A>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v42 = a4;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v10 = result / 8;
  v11 = *(a2 - 8);
  if (result / 8 != *(v11 + 64))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1B27141F0](0xD000000000000018, 0x80000001AF01C5A0);
    v20 = _typeName(_:qualified:)();
    MEMORY[0x1B27141F0](v20);

    MEMORY[0x1B27141F0](0xD00000000000003FLL, 0x80000001AF01C5C0);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B00], v17);
LABEL_28:
    swift_willThrow();
    return (*(v11 + 8))(v42, a2);
  }

  v12 = v4[4];
  if (__OFADD__(v12, v10))
  {
    __break(1u);
    goto LABEL_30;
  }

  result = swift_beginAccess();
  v13 = v5[2];
  v14 = v5[3];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    v16 = 0;
    if (v15 != 2)
    {
      goto LABEL_13;
    }

    v22 = v13 + 16;
    v13 = *(v13 + 16);
    v21 = *(v22 + 8);
    v23 = __OFSUB__(v21, v13);
    v16 = v21 - v13;
    if (!v23)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v14);
    goto LABEL_13;
  }

  v23 = __OFSUB__(HIDWORD(v13), v13);
  v24 = HIDWORD(v13) - v13;
  if (v23)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = v24;
LABEL_13:
  if (__OFSUB__(v16, v12))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v16 - v12 >= v10)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v40 - 4) = v10;
    *(&v40 - 3) = v5;
    *(&v40 - 2) = v12;
    *(&v40 - 1) = v12 + v10;
    result = _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v42, partial apply for closure #1 in BinaryDecoder.decode<A>(_:), (&v40 - 6), a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v32);
    v33 = v5[4];
    v23 = __OFADD__(v33, v10);
    v34 = v33 + v10;
    if (!v23)
    {
      v5[4] = v34;
      return result;
    }

    goto LABEL_31;
  }

  v25 = type metadata accessor for DecodingError();
  swift_allocError();
  v41 = v26;
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(98);
  MEMORY[0x1B27141F0](0xD00000000000002ALL, 0x80000001AF01C600);
  v27 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v27);

  result = MEMORY[0x1B27141F0](0x766168206557202ELL, 0xEA00000000002065);
  v28 = v5[2];
  v29 = v5[3];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    v31 = 0;
    if (v30 != 2 || (v36 = v28 + 16, v28 = *(v28 + 16), v35 = *(v36 + 8), v23 = __OFSUB__(v35, v28), v31 = v35 - v28, !v23))
    {
LABEL_26:
      if (!__OFSUB__(v31, v5[4]))
      {
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B27141F0](v38);

        MEMORY[0x1B27141F0](0xD000000000000021, 0x80000001AF01C630);
        v47 = v10;
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B27141F0](v39);

        MEMORY[0x1B27141F0](0x2E736574796220, 0xE700000000000000);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v25 - 8) + 104))(v41, *MEMORY[0x1E69E6B00], v25);
        goto LABEL_28;
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else if (!v30)
  {
    v31 = BYTE6(v29);
    goto LABEL_26;
  }

  v23 = __OFSUB__(HIDWORD(v28), v28);
  v37 = HIDWORD(v28) - v28;
  if (!v23)
  {
    v31 = v37;
    goto LABEL_26;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t closure #1 in BinaryDecoder.decode<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 - result;
  if (!result)
  {
    v6 = 0;
  }

  if (v6 == a3)
  {
    swift_beginAccess();
    result = *(a4 + 16);
    v10 = result;
    v11 = *(a4 + 24);
    if (a6 >= a5)
    {
      outlined copy of Data._Representation(result, *(a4 + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
      lazy protocol witness table accessor for type Data and conformance Data();
      lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
      DataProtocol.copyBytes<A>(to:from:)();
      return outlined consume of Data._Representation(v10, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t BinaryDecoder.decode(_:)()
{
  v1 = v0;
  v2 = v0[4];
  if (__OFADD__(v2, 16))
  {
    __break(1u);
    goto LABEL_28;
  }

  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v6 = 0;
    if (v5 != 2)
    {
      goto LABEL_11;
    }

    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    v9 = __OFSUB__(v7, v8);
    v6 = v7 - v8;
    if (!v9)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v4);
    goto LABEL_11;
  }

  LODWORD(v6) = HIDWORD(v3) - v3;
  if (__OFSUB__(HIDWORD(v3), v3))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v6 = v6;
LABEL_11:
  v9 = __OFSUB__(v6, v2);
  v10 = v6 - v2;
  if (v9)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v10 >= 16)
  {
    v26 = v3;
    v27 = v4;
    if (v2 + 16 >= v2)
    {
      outlined copy of Data._Representation(v3, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
      lazy protocol witness table accessor for type Data and conformance Data();
      lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
      DataProtocol.copyBytes<A>(to:from:)();
      outlined consume of Data._Representation(v26, v27);
      v18 = v1[4];
      v9 = __OFADD__(v18, 16);
      v19 = v18 + 16;
      if (!v9)
      {
        v1[4] = v19;
        return UUID.init(uuid:)();
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v11 = type metadata accessor for DecodingError();
  swift_allocError();
  v13 = v12;
  _StringGuts.grow(_:)(102);
  MEMORY[0x1B27141F0](0xD00000000000003ALL, 0x80000001AF01C660);
  v14 = v1[2];
  v15 = v1[3];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    v17 = 0;
    if (v16 != 2)
    {
      goto LABEL_25;
    }

    v22 = v14 + 16;
    v14 = *(v14 + 16);
    v21 = *(v22 + 8);
    v9 = __OFSUB__(v21, v14);
    v17 = v21 - v14;
    if (!v9)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(v15);
    goto LABEL_25;
  }

  v9 = __OFSUB__(HIDWORD(v14), v14);
  v23 = HIDWORD(v14) - v14;
  if (v9)
  {
    goto LABEL_33;
  }

  v17 = v23;
LABEL_25:
  if (__OFSUB__(v17, v1[4]))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v24);

  MEMORY[0x1B27141F0](0xD000000000000021, 0x80000001AF01C630);
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v25);

  MEMORY[0x1B27141F0](0x2E736574796220, 0xE700000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B00], v11);
  return swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>);
  }

  return result;
}

uint64_t BinaryDecoder.decode(_:encoding:delimiter:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = v2[2];
  v9 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AF00CA60;
  *(v10 + 32) = a2;
  outlined copy of Data._Representation(v8, v9);
  v11 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v10);
  v13 = v12;

  v16 = v2[3];
  v15 = v2[4];
  v17 = v2[2];
  v18 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    v19 = 0;
    if (v18 != 2)
    {
      goto LABEL_10;
    }

    v21 = v17 + 16;
    v17 = *(v17 + 16);
    v20 = *(v21 + 8);
    v19 = v20 - v17;
    if (!__OFSUB__(v20, v17))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(v16);
    goto LABEL_10;
  }

  v22 = __OFSUB__(HIDWORD(v17), v17);
  v23 = HIDWORD(v17) - v17;
  if (v22)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v19 = v23;
LABEL_10:
  if (v19 < v15)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v47 = v5;
  v24 = a1;
  v25 = Data.range(of:options:in:)();
  v27 = v26;
  outlined consume of Data._Representation(v11, v13);
  result = outlined consume of Data._Representation(v8, v9);
  if (v27)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6B00], v28);
    swift_willThrow();
    return v6;
  }

  v31 = v2[4];
  if (v25 < v31)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  v32 = specialized Data.subscript.getter(v31, v25, v2[2], v2[3]);
  v34 = v33;
  swift_endAccess();
  v48 = v32;
  v49 = v34;
  (*(v6 + 16))(v50, v24, v47);
  lazy protocol witness table accessor for type Data and conformance Data();
  v35 = String.init<A>(bytes:encoding:)();
  if (!v36)
  {
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x1B27141F0](0xD000000000000027, 0x80000001AF01C6D0);
    lazy protocol witness table accessor for type String.Encoding and conformance String.Encoding();
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B27141F0](v41);

    MEMORY[0x1B27141F0](0x6E69646F636E6520, 0xEA00000000002E67);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v40, *MEMORY[0x1E69E6B00], v6);
    swift_willThrow();
    outlined consume of Data._Representation(v32, v34);
    return v6;
  }

  v6 = v35;
  v37 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v37 == 2)
    {
      v43 = *(v32 + 16);
      v42 = *(v32 + 24);
      result = outlined consume of Data._Representation(v32, v34);
      v38 = v42 - v43;
      if (__OFSUB__(v42, v43))
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      result = outlined consume of Data._Representation(v32, v34);
      v38 = 0;
    }

LABEL_26:
    v44 = v2[4];
    v22 = __OFADD__(v44, v38);
    v45 = v44 + v38;
    if (!v22)
    {
      v2[4] = v45;
      return v6;
    }

    goto LABEL_31;
  }

  if (!v37)
  {
    result = outlined consume of Data._Representation(v32, v34);
    v38 = BYTE6(v34);
    goto LABEL_26;
  }

LABEL_23:
  result = outlined consume of Data._Representation(v32, v34);
  LODWORD(v38) = HIDWORD(v32) - v32;
  if (!__OFSUB__(HIDWORD(v32), v32))
  {
    v38 = v38;
    goto LABEL_26;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t specialized Data.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return Data._Representation.subscript.getter();
  }

LABEL_17:
  __break(1u);
  return result;
}

void *BinaryDecoder.decode(_:length:)(void *result)
{
  v2 = v1;
  v3 = v1[4];
  v4 = result + v3;
  if (__OFADD__(v3, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = result;
  result = swift_beginAccess();
  v6 = v2[2];
  v7 = v2[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    if (v8 != 2)
    {
      goto LABEL_11;
    }

    v11 = v6 + 16;
    v6 = *(v6 + 16);
    v10 = *(v11 + 8);
    v12 = __OFSUB__(v10, v6);
    v9 = v10 - v6;
    if (!v12)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7);
    goto LABEL_11;
  }

  v12 = __OFSUB__(HIDWORD(v6), v6);
  v13 = HIDWORD(v6) - v6;
  if (v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = v13;
LABEL_11:
  if (__OFSUB__(v9, v3))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v9 - v3 >= v5)
  {
    v2[4] = v4;
    if (v4 >= v3)
    {
      swift_beginAccess();
      v21 = Data._Representation.subscript.getter();
      swift_endAccess();
      return v21;
    }

    goto LABEL_29;
  }

  v14 = type metadata accessor for DecodingError();
  swift_allocError();
  v16 = v15;
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(100);
  result = MEMORY[0x1B27141F0](0xD000000000000038, 0x80000001AF01C700);
  v17 = v2[2];
  v18 = v2[3];
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    v20 = 0;
    if (v19 != 2 || (v23 = v17 + 16, v17 = *(v17 + 16), v22 = *(v23 + 8), v12 = __OFSUB__(v22, v17), v20 = v22 - v17, !v12))
    {
LABEL_24:
      if (!__OFSUB__(v20, v2[4]))
      {
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B27141F0](v25);

        MEMORY[0x1B27141F0](0xD000000000000021, 0x80000001AF01C630);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B27141F0](v26);

        v21 = v27;
        MEMORY[0x1B27141F0](0x2E736574796220, 0xE700000000000000);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B00], v14);
        swift_willThrow();
        return v21;
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  else if (!v19)
  {
    v20 = BYTE6(v18);
    goto LABEL_24;
  }

  v12 = __OFSUB__(HIDWORD(v17), v17);
  v24 = HIDWORD(v17) - v17;
  if (!v12)
  {
    v20 = v24;
    goto LABEL_24;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t BinaryDecoder.decodeRemainder()()
{
  v1 = v0[4];
  result = swift_beginAccess();
  v3 = v0[2];
  v4 = v0[3];
  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v5)
    {
      v9 = __OFSUB__(HIDWORD(v3), v3);
      v16 = HIDWORD(v3) - v3;
      if (v9)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if (v1 >= v16)
      {
        return 0;
      }
    }

    else if (v1 >= BYTE6(v4))
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    if (v1 < 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v8 = v3 + 16;
  v6 = *(v3 + 16);
  v7 = *(v8 + 8);
  v9 = __OFSUB__(v7, v6);
  v10 = v7 - v6;
  if (v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v1 >= v10)
  {
    return 0;
  }

LABEL_8:
  result = swift_beginAccess();
  v11 = v0[2];
  v12 = v0[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    v14 = 0;
    v15 = 0;
    if (v13 == 2)
    {
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
    }
  }

  else
  {
    if (v13)
    {
      v14 = v11 >> 32;
    }

    else
    {
      v14 = BYTE6(v12);
    }

    if (v13)
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v14 < v1 || v14 < v15)
  {
    __break(1u);
    goto LABEL_27;
  }

  v17 = Data._Representation.subscript.getter();
  swift_endAccess();
  return v17;
}

uint64_t BinaryDecoder.__deallocating_deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t BinaryDecoder.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);

  return v5(v6, a2, a3);
}

uint64_t BinaryDecoder.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v21[0] = a5;
  v21[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v21 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - v11;
  v13 = v22;
  result = BinaryDecoder.decode<A>(_:)(AssociatedTypeWitness, v8);
  if (!v13)
  {
    v15 = v21[0];
    v22 = 0;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    v16 = *(a2 - 8);
    if ((*(v16 + 48))(v12, 1, a2) == 1)
    {
      (*(v10 + 8))(v12, v9);
      v17 = type metadata accessor for DecodingError();
      swift_allocError();
      v19 = v18;
      v21[2] = 0;
      v21[3] = 0xE000000000000000;
      _StringGuts.grow(_:)(81);
      MEMORY[0x1B27141F0](0xD000000000000034, 0x80000001AF01C740);
      v20 = _typeName(_:qualified:)();
      MEMORY[0x1B27141F0](v20);

      MEMORY[0x1B27141F0](0xD00000000000001BLL, 0x80000001AF01C780);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B00], v17);
      return swift_willThrow();
    }

    else
    {
      return (*(v16 + 32))(v15, v12, a2);
    }
  }

  return result;
}

uint64_t BinaryDecoder.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  result = BinaryDecoder.decode<A>(_:)(v6, &v9 - v7);
  if (!v4)
  {
    return dispatch thunk of OptionSet.init(rawValue:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String.Encoding and conformance String.Encoding()
{
  result = lazy protocol witness table cache variable for type String.Encoding and conformance String.Encoding;
  if (!lazy protocol witness table cache variable for type String.Encoding and conformance String.Encoding)
  {
    type metadata accessor for String.Encoding();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.Encoding and conformance String.Encoding);
  }

  return result;
}

__n128 SystemCoordinator.ParticipantState.pose.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *(a1 + 32) = *(v1 + 160);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 192);
  result = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = result;
  return result;
}

__n128 SystemCoordinator.ParticipantState.init(isSpatial:seat:pose:role:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  v5 = *(a2 + 80);
  *(a5 + 80) = *(a2 + 64);
  *(a5 + 96) = v5;
  *(a5 + 112) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(a5 + 16) = *a2;
  *(a5 + 32) = v6;
  v7 = *(a2 + 48);
  *(a5 + 48) = *(a2 + 32);
  *(a5 + 64) = v7;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  *(a5 + 192) = *(a3 + 64);
  *(a5 + 160) = v10;
  *(a5 + 176) = v11;
  *(a5 + 128) = v8;
  *(a5 + 144) = v9;
  result = *a4;
  v13 = *(a4 + 16);
  *(a5 + 232) = *(a4 + 32);
  *(a5 + 216) = v13;
  *(a5 + 200) = result;
  return result;
}

__n128 SystemCoordinator.ParticipantState.Seat.pose.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t SystemCoordinator.ParticipantState.Seat.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v13 = *v1;
  v14 = v2;
  v3 = v1[3];
  v15 = v1[2];
  v16 = v3;
  SPPose3D.hash(into:)();
  outlined init with copy of URL?((v1 + 4), &v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v9 + 1))
  {
    outlined init with take of Transferable(&v8, v11);
  }

  else
  {
    outlined destroy of NSObject?(&v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v11, 0, sizeof(v11));
    v12 = 0;
  }

  outlined init with copy of URL?(v11, &v8, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (*(&v9 + 1))
  {
    v5 = v8;
    v6 = v9;
    v7 = v10;
    Hasher._combine(_:)(1u);
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of NSObject?(v11, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    return outlined destroy of AnySpatialTemplateRole(&v5);
  }

  else
  {
    Hasher._combine(_:)(0);
    return outlined destroy of NSObject?(v11, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  }
}

__n128 SystemCoordinator.ParticipantState.Seat.init(pose:role:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v3;
  v4 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v4;
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 64) = *a2;
  *(a3 + 80) = v6;
  *(a3 + 96) = *(a2 + 32);
  return result;
}

Swift::Int SystemCoordinator.ParticipantState.Seat.hashValue.getter()
{
  Hasher.init(_seed:)();
  SystemCoordinator.ParticipantState.Seat.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SystemCoordinator.ParticipantState.Seat()
{
  Hasher.init(_seed:)();
  SystemCoordinator.ParticipantState.Seat.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemCoordinator.ParticipantState.Seat(uint64_t a1)
{
  Hasher.init(_seed:)();
  SystemCoordinator.ParticipantState.Seat.hash(into:)(v2);
  return Hasher._finalize()();
}

void SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(void *a1@<X0>, uint64_t a3@<X8>)
{
  *a3 = *(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x70))(&v44);
  v60 = v50;
  v61 = v51;
  v62 = v52;
  v63 = v53;
  v56 = v46;
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v54 = v44;
  v55 = v45;
  if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(&v54) == 1)
  {
    v33 = 0u;
    v34 = 0u;
    *&v35 = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0;
    *(a3 + 104) = xmmword_1AF00FCC0;
    LOBYTE(v30) = 1;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 1;
  }

  else
  {
    v5 = v63;
    if (v63)
    {
      v6 = *(&v62 + 1);
      v39 = v50;
      v40 = v51;
      v41 = v52;
      v42 = v53;
      v35 = v46;
      v36 = v47;
      v37 = v48;
      v38 = v49;
      v33 = v44;
      v34 = v45;
      outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(&v33, &v30);
      role #1 (for:inSeatNumber:) in SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(v6, v5, &v30);
      outlined destroy of NSObject?(&v44, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
    }

    else
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
    }

    v33 = v30;
    v34 = v31;
    *&v35 = v32;
    v7 = *(&v57 + 1);
    v29 = v57;
    v8 = *(&v56 + 1);
    v28 = v56;
    v9 = *(&v55 + 1);
    v27 = v55;
    v10 = *(&v54 + 1);
    v26 = v54;
    outlined init with copy of URL?(&v33, a3 + 80, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    *(a3 + 16) = v26;
    *(a3 + 32) = v27;
    *(a3 + 48) = v28;
    *(a3 + 64) = v29;
    outlined destroy of NSObject?(&v44, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
    if (v62)
    {
      v11 = v29;
      v12 = v28;
      v13 = v27;
      v14 = v26;
    }

    else
    {
      v7 = *(&v61 + 1);
      v11 = v61;
      v8 = *(&v60 + 1);
      v12 = v60;
      v9 = *(&v59 + 1);
      v13 = v59;
      v10 = *(&v58 + 1);
      v14 = v58;
    }

    v43 = 0;
    *(a3 + 128) = v14;
    *(a3 + 136) = v10;
    *(a3 + 144) = v13;
    *(a3 + 152) = v9;
    *(a3 + 160) = v12;
    *(a3 + 168) = v8;
    *(a3 + 176) = v11;
    *(a3 + 184) = v7;
    *(a3 + 192) = 0;
  }

  outlined init with copy of URL?(&v33, &v30, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  v15 = *(&v31 + 1);
  if (*(&v31 + 1))
  {
    v16 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v17 = (*(v16 + 16))(v15, v16);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0(&v30);
    v20 = *(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8);
    if (v20)
    {
      if (v17 == *(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier) && v20 == v19)
      {

LABEL_20:
        v22 = v34;
        *(a3 + 200) = v33;
        *(a3 + 216) = v22;
        v23 = v35;
        goto LABEL_25;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of NSObject?(&v30, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    if (!*(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8))
    {
      goto LABEL_19;
    }
  }

  v24 = *(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8);
  if (v24)
  {
    role #1 (for:inSeatNumber:) in SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(*(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier), v24, &v30);
    outlined destroy of NSObject?(&v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  }

  else
  {
    outlined destroy of NSObject?(&v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);

    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  v25 = v31;
  *(a3 + 200) = v30;
  *(a3 + 216) = v25;
  v23 = v32;
LABEL_25:
  *(a3 + 232) = v23;
}