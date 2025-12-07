void specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      outlined consume of Set<TUHandle>.Iterator._Variant(v1);
      return;
    }

LABEL_17:
    v12 = [v11 normalizedValue];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v22 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8), swift_dynamicCast(), (v11 = v28) == 0))
    {
LABEL_26:
      outlined consume of Set<TUHandle>.Iterator._Variant(v1);
      return;
    }

LABEL_17:
    v12 = [v11 value];
    if (!v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = MEMORY[0x231934530](v13);
    }

    v14 = [objc_allocWithZone(MEMORY[0x277D18A48]) initWithPrefixedURI_];

    if (v14)
    {
      v15 = [v14 unprefixedURI];

      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v19 = *(v22 + 2);
      v18 = *(v22 + 3);
      if (v19 >= v18 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v22);
      }

      *(v22 + 2) = v19 + 1;
      v20 = &v22[16 * v19];
      *(v20 + 4) = v21;
      *(v20 + 5) = v17;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, 0x277D186C0);
    lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, 0x277D186C0), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      outlined consume of Set<TUHandle>.Iterator._Variant(v1);
      return;
    }

LABEL_17:
    v12 = [v11 loginID];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned _SWCollaborationMetadata?, @unowned NSError?) -> () with result type (URL, _SWCollaborationMetadata)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So24_SWCollaborationMetadataCtMd, &_s10Foundation3URLV_So24_SWCollaborationMetadataCtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = swift_allocError();
    *v16 = a4;
    v17 = a4;
    v18 = v14;
    v19 = v15;
  }

  else
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = (*(v8 + 32))(v13, v10, v7);
    if (a3)
    {
      *&v13[*(v11 + 48)] = a3;
      v20 = *(*(v14 + 64) + 40);
      v21 = a3;
      outlined init with take of (URL, _SWCollaborationMetadata)(v13, v20);
      return swift_continuation_throwingResume();
    }

    __break(1u);
  }

  return MEMORY[0x282200958](v18, v19);
}

uint64_t ThirdPartyCollaborationInitiationRequest.deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC11SocialLayer40ThirdPartyCollaborationInitiationRequest_url);
  return v0;
}

uint64_t ThirdPartyCollaborationInitiationRequest.__deallocating_deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC11SocialLayer40ThirdPartyCollaborationInitiationRequest_url);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for CollaborationInitiationRequest.initiateCollaboration() in conformance ThirdPartyCollaborationInitiationRequest(uint64_t a1)
{
  v6 = (*(**v1 + 216) + **(**v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v6(a1);
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, void *a2)
{
  v23 = a1;
  v4 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v21 = (&v21 - v9);
  v22 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v24 = v4;
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v25 = a2;
  dispatch thunk of Hashable.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v15 = *(v5 + 72);
    while (1)
    {
      outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v10 + 48) + v15 * v13, v8);
      if (static NSObject.== infix(_:_:)() & 1) != 0 && (static URL.== infix(_:_:)())
      {
        break;
      }

      outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v8);
      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v8);
    outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v25);
    outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v10 + 48) + v15 * v13, v23);
    return 0;
  }

  else
  {
LABEL_7:
    v17 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v25;
    v20 = v21;
    outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(v25, v21);
    v26 = *v17;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v20, v13, isUniquelyReferenced_nonNull_native);
    *v17 = v26;
    outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v19, v23);
    return 1;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t *a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v21 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()();
      goto LABEL_14;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1);
  }

  v11 = *v3;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v15 = *(v22 + 72);
    while (1)
    {
      outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v11 + 48) + v15 * a2, v8);
      if (static NSObject.== infix(_:_:)() & 1) != 0 && (static URL.== infix(_:_:)())
      {
        break;
      }

      outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v8);
      a2 = (a2 + 1) & v14;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v8);
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_14:
  v16 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v23, *(v16 + 48) + *(v22 + 72) * a2);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMd, &_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v6 + 48) + v21, v5);
        result = outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMd, &_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = v6 + 56;
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
      v21 = *(v32 + 72);
      outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(v20 + v21 * (v17 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      type metadata accessor for URL();
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2319347D0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t outlined init with take of (URL, _SWCollaborationMetadata)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So24_SWCollaborationMetadataCtMd, &_s10Foundation3URLV_So24_SWCollaborationMetadataCtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TUHandle and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUHandle and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUHandle and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUHandle and conformance NSObject);
  }

  return result;
}

uint64_t type metadata accessor for ThirdPartyCollaborationInitiationRequest.Response(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ThirdPartyCollaborationInitiationRequest(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ThirdPartyCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v6(a1);
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata completion function for ThirdPartyCollaborationInitiationRequest.Response(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Set<TUHandle>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for _SWCollaborationMetadata, 0x277CDC6C0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Set<TUHandle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Set<TUHandle>)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Set<TUHandle>);
    }
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientV_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CloudKitCollaborationInitiationRequest.Response.Recipient and conformance CloudKitCollaborationInitiationRequest.Response.Recipient, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient, &protocol conformance descriptor for CloudKitCollaborationInitiationRequest.Response.Recipient);
  result = MEMORY[0x2319347D0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(v12, v6);
      specialized Set._Variant.insert(_:)(v8, v6);
      outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v8);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1)
{
  v2 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMd, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for CollaborationInitiationResponsePayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(a1, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMd, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);

    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v7, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMd, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMR);
  }

  else
  {
    outlined init with take of CollaborationInitiationResponsePayload(a1, v10, type metadata accessor for CollaborationInitiationResponsePayload);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMd, &_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMR);
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    result = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x277D84F90];
  v23 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(result + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_24:
      outlined consume of Set<TUHandle>.Iterator._Variant(v23);
      return v9;
    }

    while (1)
    {
      v15 = [v14 normalizedValue];
      if (!v15)
      {
        v15 = [v14 value];
      }

      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v9);
      }

      *(v9 + 2) = v21 + 1;
      v22 = &v9[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v4 = v12;
      v5 = v13;
      result = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
        swift_dynamicCast();
        v14 = v29;
        v12 = v4;
        v13 = v5;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for cloudKitCollaborationInitiation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.cloudKitCollaborationInitiation);
  __swift_project_value_buffer(v0, static Log.cloudKitCollaborationInitiation);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.cloudKitCollaborationInitiation.unsafeMutableAddressor()
{
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Log.cloudKitCollaborationInitiation);
}

uint64_t static Log.cloudKitCollaborationInitiation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Log.cloudKitCollaborationInitiation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t CloudKitCollaborationInitiationRequest.Response.Recipient.shareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1)
{
  result = type metadata singleton initialization cache for CloudKitCollaborationInitiationRequest.Response.Recipient;
  if (!type metadata singleton initialization cache for CloudKitCollaborationInitiationRequest.Response.Recipient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CloudKitCollaborationInitiationRequest.Response.Recipient.shareURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static CloudKitCollaborationInitiationRequest.Response.Recipient.== infix(_:_:)(void *a1, void *a2)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);

  return static URL.== infix(_:_:)();
}

uint64_t CloudKitCollaborationInitiationRequest.Response.Recipient.hash(into:)(uint64_t a1)
{
  NSObject.hash(into:)();
  type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  type metadata accessor for URL();
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int CloudKitCollaborationInitiationRequest.Response.Recipient.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  type metadata accessor for URL();
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CloudKitCollaborationInitiationRequest.Response.Recipient.init(handle:shareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0) + 20);
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CloudKitCollaborationInitiationRequest.Response.Recipient()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  type metadata accessor for URL();
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1)
{
  NSObject.hash(into:)();
  type metadata accessor for URL();
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  type metadata accessor for URL();
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CloudKitCollaborationInitiationRequest.Response.Recipient(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static URL.== infix(_:_:)();
}

void *CloudKitCollaborationInitiationRequest.Response.recipientPayloads.getter()
{
  v1 = type metadata accessor for CollaborationInitiationResponsePayload(0);
  v40 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v43 = &v40 - v5;
  v6 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + 8);
  v12 = *(v9 + 56);
  v11 = v9 + 56;
  v10 = v12;
  v13 = 1 << *(*(v0 + 8) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v44 = *(v0 + 8);

  v17 = 0;
  v18 = MEMORY[0x277D84F98];
  while (v15)
  {
LABEL_11:
    outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v44 + 48) + *(v41 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v8, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
    v20 = *v8;
    v21 = *(v42 + 20);
    v22 = type metadata accessor for URL();
    v23 = v8 + v21;
    v24 = v43;
    (*(*(v22 - 8) + 16))(v43, v23, v22);
    v25 = v4;
    outlined init with take of CollaborationInitiationResponsePayload(v24, v4, type metadata accessor for CollaborationInitiationResponsePayload);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v18;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
    v29 = v18[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_23;
    }

    v33 = v28;
    if (v18[3] < v32)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, isUniquelyReferenced_nonNull_native);
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v18 = v45;
      if (v33)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v38 = v27;
    specialized _NativeDictionary.copy()();
    v27 = v38;
    v18 = v45;
    if (v33)
    {
LABEL_4:
      v4 = v25;
      outlined assign with take of CollaborationInitiationResponsePayload(v25, v18[7] + *(v40 + 72) * v27);
      goto LABEL_5;
    }

LABEL_17:
    v18[(v27 >> 6) + 8] |= 1 << v27;
    *(v18[6] + 8 * v27) = v20;
    v4 = v25;
    outlined init with take of CollaborationInitiationResponsePayload(v25, v18[7] + *(v40 + 72) * v27, type metadata accessor for CollaborationInitiationResponsePayload);
    v35 = v18[2];
    v31 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v31)
    {
      goto LABEL_24;
    }

    v18[2] = v36;
    v37 = v20;
LABEL_5:
    v15 &= v15 - 1;
    outlined destroy of CloudKitCollaborationInitiationRequest.Response.Recipient(v8);
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return v18;
    }

    v15 = *(v11 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *CloudKitCollaborationInitiationRequest.Response.invitationTokens.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = [v2 containerOptions];
  v4 = [v3 isServiceManatee];

  if (!v4)
  {
    if (one-time initialization token for cloudKitCollaborationInitiation != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Log.cloudKitCollaborationInitiation);
    v39 = v1;

    v40 = v2;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_231772000, v41, v42, "Not returning any invitationTokens since the container isn't a Manatee service. %@", v43, 0xCu);
      outlined destroy of (CFStringRef, [CFStringRef? : Any])(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2319361B0](v44, -1, -1);
      MEMORY[0x2319361B0](v43, -1, -1);
    }

    return MEMORY[0x277D84F98];
  }

  v5 = [v1 participants];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_39:
    v9 = MEMORY[0x277D84F98];
LABEL_40:

    return v9;
  }

LABEL_38:
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_39;
  }

LABEL_4:
  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  while (2)
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x231934AB0](v10, v6);
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v13 = [v11 userIdentity];
      v14 = [v13 lookupInfo];

      if (v14)
      {
        v15 = [v14 phoneNumber];

        if (v15)
        {
          break;
        }
      }

      v16 = [v12 userIdentity];
      v17 = [v16 lookupInfo];

      if (v17)
      {
        v15 = [v17 emailAddress];

        if (v15)
        {
          break;
        }
      }

LABEL_7:
      ++v10;
      if (v8 == v7)
      {
        goto LABEL_40;
      }
    }

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v12 invitationToken];
    if (!v21)
    {

      goto LABEL_7;
    }

    v47 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v20);
    v25 = v9[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      __break(1u);
      goto LABEL_43;
    }

    v29 = v24;
    if (v9[3] >= v28)
    {
      v31 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = v23;
        specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo36CKDeviceToDeviceShareInvitationTokenCGMd, &_ss18_DictionaryStorageCySSSo36CKDeviceToDeviceShareInvitationTokenCGMR);
        v23 = v37;
LABEL_22:
        v31 = v47;
      }

      if (v29)
      {
        v32 = v9[7];
        v33 = *(v32 + 8 * v23);
        *(v32 + 8 * v23) = v31;

        v12 = v33;
        goto LABEL_28;
      }

      v9[(v23 >> 6) + 8] |= 1 << v23;
      v34 = (v9[6] + 16 * v23);
      *v34 = v18;
      v34[1] = v20;
      *(v9[7] + 8 * v23) = v31;
      v35 = v9[2];
      v27 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (!v27)
      {
        v9[2] = v36;
LABEL_28:

        if (v8 != v7)
        {
          continue;
        }

        goto LABEL_40;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    break;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySSSo36CKDeviceToDeviceShareInvitationTokenCGMd, &_ss18_DictionaryStorageCySSSo36CKDeviceToDeviceShareInvitationTokenCGMR);
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v20);
  if ((v29 & 1) == (v30 & 1))
  {
    goto LABEL_22;
  }

LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t CloudKitCollaborationInitiationRequest.Response.init(share:recipients:containerSetupInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void *CloudKitCollaborationInitiationRequest.__allocating_init(recipients:shareOptions:share:containerSetupInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *CloudKitCollaborationInitiationRequest.init(recipients:shareOptions:share:containerSetupInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t CloudKitCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[13] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudKitCollaborationInitiationRequest.initiateCollaboration(), 0, 0);
}

uint64_t CloudKitCollaborationInitiationRequest.initiateCollaboration()()
{
  v35 = v0;
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v1, static Log.cloudKitCollaborationInitiation);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v6 = 136315650;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v9 = Set.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v34);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = *(v5 + 32);
    *(v6 + 14) = v12;
    *v7 = v12;
    *(v6 + 22) = 2080;
    v13 = *(v5 + 24);
    v14 = v12;
    v15 = [v13 optionsGroups];

    if (!v15)
    {
      __break(1u);
      return MEMORY[0x282200430](v16, v17, v18, v19, v20);
    }

    v21 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for _SWCollaborationOptionsGroup, 0x277CDC6D0);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = MEMORY[0x231934700](v22, v21);
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v34);

    *(v6 + 24) = v26;
    _os_log_impl(&dword_231772000, v2, v3, "Received request to initiate collaboration with: %s, share: %@, optionsGroup: %s", v6, 0x20u);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v8, -1, -1);
    MEMORY[0x2319361B0](v6, -1, -1);
  }

  else
  {
  }

  v27 = v0[13];
  v28 = v0[10];
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 3;
  *(v30 + 40) = &async function pointer to partial apply for closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  *(v30 + 48) = v28;
  *(v30 + 56) = partial apply for closure #1 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  *(v30 + 64) = v28;
  *(v30 + 72) = xmmword_23183DF40;
  swift_retain_n();
  v31 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10Foundation3URLV_So7CKShareCt_Tt2g5(0, 0, v27, &async function pointer to partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), v30);
  v0[19] = v31;
  v32 = swift_task_alloc();
  v0[20] = v32;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[21] = v19;
  *v32 = v0;
  v32[1] = CloudKitCollaborationInitiationRequest.initiateCollaboration();
  v18 = v0[11];
  v16 = v0[12];
  v20 = MEMORY[0x277D84950];
  v17 = v31;

  return MEMORY[0x282200430](v16, v17, v18, v19, v20);
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v2 = CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v37 = v0;
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = *(v0[12] + *(v0[11] + 48));
  (*(v3 + 32))(v1);
  (*(v3 + 16))(v2, v1, v4);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v13 = 136315394;
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v35 = *(v11 + 8);
    v35(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v36);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v14;
    *v33 = v14;
    v20 = v14;
    _os_log_impl(&dword_231772000, v7, v8, "Successfully initiated collaboration, url: %s, updatedShare: %@", v13, 0x16u);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x2319361B0](v34, -1, -1);
    MEMORY[0x2319361B0](v13, -1, -1);
  }

  else
  {

    v35 = *(v11 + 8);
    v35(v10, v12);
  }

  v21 = v0[17];
  v22 = v0[14];
  v24 = v0[9];
  v23 = v0[10];
  v25 = *(v23 + 16);
  v26 = swift_task_alloc();
  *(v26 + 16) = v21;
  v27 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVs5NeverOTg5(partial apply for closure #3 in CloudKitCollaborationInitiationRequest.initiateCollaboration(), v26, v25);

  v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientV_SayAJGTt0g5Tf4g_n(v27);

  v29 = *(v23 + 40);
  *v24 = v6;
  v24[1] = v28;
  v24[2] = v29;
  v30 = v29;
  v35(v21, v22);

  v31 = v0[1];

  return v31();
}

{
  v28 = v0;
  v1 = v0[22];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v7 = 136315394;
    v0[8] = v5;
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v27);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = *(v6 + 32);
    *(v7 + 14) = v14;
    *v8 = v14;
    v15 = v14;
    _os_log_impl(&dword_231772000, v3, v4, "Failed to initiate collaboration error: %s on share: %@", v7, 0x16u);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2319361B0](v9, -1, -1);
    MEMORY[0x2319361B0](v7, -1, -1);
  }

  swift_getErrorValue();
  v16 = Error.underlyingCKError.getter(v0[3], v0[4]);
  if (v16)
  {
    v0[6] = v16;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v17 = v0[7];
      v0[23] = v17;
      if ([v17 code] == 32)
      {
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_231772000, v18, v19, "Caught collaborationError for managedAccount sharing. Generating OTL links for participants.", v20, 2u);
          MEMORY[0x2319361B0](v20, -1, -1);
        }

        v21 = v0[10];

        v26 = (*(*v21 + 152) + **(*v21 + 152));
        v22 = swift_task_alloc();
        v0[24] = v22;
        *v22 = v0;
        v22[1] = CloudKitCollaborationInitiationRequest.initiateCollaboration();
        v23 = v0[9];

        return v26(v23);
      }
    }
  }

  swift_willThrow();

  v25 = v0[1];

  return v25();
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v2 = CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in CloudKitCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1, uint64_t a2)
{
  swift_getErrorValue();
  result = Error.underlyingCKError.getter(v23, v24);
  if (!result)
  {
    return result;
  }

  v21[0] = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v22;
  if ([v22 code] != 14)
  {

    return 0;
  }

  v5 = [v22 userInfo];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v6 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v11 = v10;

    if (v11)
    {
      outlined init with copy of Any(*(v6 + 56) + 32 * v9, v21);

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x277CBC680);
      if (swift_dynamicCast())
      {
        v12 = v22;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_13:
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.cloudKitCollaborationInitiation);
  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v12;
    v19 = v14;
    _os_log_impl(&dword_231772000, v15, v16, "Received updated server record: %@", v17, 0xCu);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v18, -1, -1);
    MEMORY[0x2319361B0](v17, -1, -1);
  }

  v20 = *(a2 + 32);
  if (!v12)
  {
    v14 = v20;
  }

  *(a2 + 32) = v14;

  return 1;
}

id Error.underlyingCKError.getter(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v60 - v8;
  v10 = *(v4 + 16);
  v61 = v11;
  v10(&v60 - v8, v11, a1);
  v12 = _getErrorEmbeddedNSError<A>(_:)();
  v62 = a2;
  if (v12)
  {
    v13 = v12;
    (*(v4 + 8))(v9, a1);
  }

  else
  {
    v13 = swift_allocError();
    (*(v4 + 32))(v14, v9, a1);
  }

  v15 = _convertErrorToNSError(_:)();

  v16 = [v15 domain];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {

LABEL_16:
    v10(v7, v61, a1);
    v37 = _getErrorEmbeddedNSError<A>(_:)();
    if (v37)
    {
      v31 = v37;
      (*(v4 + 8))(v7, a1);
    }

    else
    {
      v31 = swift_allocError();
      (*(v4 + 32))(v38, v7, a1);
    }

    goto LABEL_44;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_16;
  }

  v23 = [v15 userInfo];
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v24 + 16))
  {

    v30 = &selRef_conversationIdentifier;
    goto LABEL_21;
  }

  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
  v29 = v28;

  v30 = &selRef_conversationIdentifier;
  if ((v29 & 1) == 0)
  {

    goto LABEL_21;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v27, v64);

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v31 = v63;
  v32 = [v63 domain];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (v33 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v35 != v36)
  {
    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v59)
    {
LABEL_44:

      return v31;
    }

LABEL_21:
    v39 = [v15 userInfo];
    v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v40 + 16))
    {
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42);
      v45 = v44;

      if (v45)
      {
        outlined init with copy of Any(*(v40 + 56) + 32 * v43, v64);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7NSErrorCGMd, &_sSaySo7NSErrorCGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_41:

          return 0;
        }

        v46 = v63;
        if (v63 >> 62)
        {
          goto LABEL_50;
        }

        for (i = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v48 = 0;
          v61 = v46 & 0xFFFFFFFFFFFFFF8;
          v62 = v46 & 0xC000000000000001;
          while (1)
          {
            if (v62)
            {
              v49 = MEMORY[0x231934AB0](v48, v46);
            }

            else
            {
              if (v48 >= *(v61 + 16))
              {
                goto LABEL_49;
              }

              v49 = *(v46 + 8 * v48 + 32);
            }

            v31 = v49;
            v50 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              break;
            }

            v51 = [v49 v30[72]];
            v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v54 = v53;

            if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v55)
            {

              return v31;
            }

            v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v57)
            {
              goto LABEL_47;
            }

            ++v48;
            v30 = &selRef_conversationIdentifier;
            if (v50 == i)
            {
              goto LABEL_40;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          ;
        }
      }
    }

    else
    {
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_47:

  return v31;
}

uint64_t closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1, uint64_t a2)
{
  v2[38] = a1;
  v2[39] = a2;
  v2[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration(), 0, 0);
}

uint64_t closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration()()
{
  v134 = v0;
  v133 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.cloudKitCollaborationInitiation);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      isa = v0[39].super.isa;
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = *(isa + 4);
      *(v5 + 4) = v7;
      *v6 = v7;
      v8 = v7;
      _os_log_impl(&dword_231772000, v2, v3, "Attempting to complete share: %@", v5, 0xCu);
      outlined destroy of (CFStringRef, [CFStringRef? : Any])(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2319361B0](v6, -1, -1);
      MEMORY[0x2319361B0](v5, -1, -1);
    }

    v9 = v0[39].super.isa;

    v10 = *(v9 + 3);
    v11 = [v10 optionsGroups];
    if (!v11)
    {
      __break(1u);
    }

    v12 = v11;
    v13 = v0[39].super.isa;
    v14 = CKSharingAccessTypeFromOptionsGroups();

    v15 = *(v13 + 2);
    v16 = MEMORY[0x277D84FA0];
    v128 = v14;
    v129 = v10;
    v130 = (v15 & 0xC000000000000001);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v131 = v15;
      v132 = MEMORY[0x277D84FA0];
      swift_bridgeObjectRetain_n();
      __CocoaSet.makeIterator()();
      v17 = __CocoaSet.Iterator.next()();
      if (v17)
      {
        v18 = v17;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
        v19 = v18;
        v20 = MEMORY[0x277D84FA0];
        do
        {
          v0[37].super.isa = v19;
          swift_dynamicCast();
          v21 = [(objc_class *)v0[36].super.isa type];
          v22 = v0[36].super.isa;
          if (v21 == 3)
          {
            v23 = *(v20 + 16);
            if (*(v20 + 24) <= v23)
            {
              specialized _NativeSet.resize(capacity:)(v23 + 1);
              v20 = v132;
            }

            v24 = NSObject._rawHashValue(seed:)(*(v20 + 40));
            v25 = v20 + 56;
            v26 = -1 << *(v20 + 32);
            v27 = v24 & ~v26;
            v28 = v27 >> 6;
            if (((-1 << v27) & ~*(v20 + 56 + 8 * (v27 >> 6))) != 0)
            {
              v29 = __clz(__rbit64((-1 << v27) & ~*(v20 + 56 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v30 = 0;
              v31 = (63 - v26) >> 6;
              do
              {
                if (++v28 == v31 && (v30 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_96;
                }

                v32 = v28 == v31;
                if (v28 == v31)
                {
                  v28 = 0;
                }

                v30 |= v32;
                v33 = *(v25 + 8 * v28);
              }

              while (v33 == -1);
              v29 = __clz(__rbit64(~v33)) + (v28 << 6);
            }

            *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
            *(*(v20 + 48) + 8 * v29) = v22;
            ++*(v20 + 16);
          }

          else
          {
          }

          v19 = __CocoaSet.Iterator.next()();
        }

        while (v19);
      }

      else
      {
        v20 = v16;
      }

      v15 = v131;
    }

    else
    {
      v34 = *(v15 + 32);
      v35 = v34 & 0x3F;
      v36 = ((1 << v34) + 63) >> 6;
      v37 = 8 * v36;
      v38 = swift_bridgeObjectRetain_n();
      if (v35 > 0xD)
      {

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v122 = swift_slowAlloc();
          v20 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v122, v36, v15, closure #1 in closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration());

          MEMORY[0x2319361B0](v122, -1, -1);
          goto LABEL_42;
        }
      }

      v126 = &v126;
      v127 = v36;
      MEMORY[0x28223BE20](v38);
      v39 = &v126 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v39, v37);
      v131 = 0;
      v40 = 0;
      v41 = v15;
      v42 = v15 + 56;
      v43 = 1 << *(v15 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & *(v15 + 56);
      v46 = (v43 + 63) >> 6;
      while (v45)
      {
        v47 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
LABEL_35:
        v50 = v47 | (v40 << 6);
        if ([*(*(v41 + 48) + 8 * v50) type] == 3)
        {
          *&v39[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
          v51 = __OFADD__(v131++, 1);
          if (v51)
          {
            __break(1u);
            goto LABEL_39;
          }
        }
      }

      v48 = v40;
      while (1)
      {
        v40 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_97;
        }

        if (v40 >= v46)
        {
          break;
        }

        v49 = *(v42 + 8 * v40);
        ++v48;
        if (v49)
        {
          v47 = __clz(__rbit64(v49));
          v45 = (v49 - 1) & v49;
          goto LABEL_35;
        }
      }

LABEL_39:
      v15 = v41;
      v20 = specialized _NativeSet.extractSubset(using:count:)(v39, v127, v131, v41);
    }

LABEL_42:
    v52 = specialized Sequence.compactMap<A>(_:)(v20);

    v131 = v52;
    v127 = 0;
    if (!v130)
    {
      break;
    }

    v132 = v16;
    __CocoaSet.makeIterator()();
    v54 = __CocoaSet.Iterator.next()();
    if (!v54)
    {
LABEL_61:

      goto LABEL_78;
    }

    v55 = v54;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    v56 = v55;
    v16 = MEMORY[0x277D84FA0];
    while (1)
    {
      v0[35].super.isa = v56;
      swift_dynamicCast();
      v57 = [(objc_class *)v0[34].super.isa type];
      v58 = v0[34].super.isa;
      if (v57 == 2)
      {
        break;
      }

LABEL_46:
      v56 = __CocoaSet.Iterator.next()();
      if (!v56)
      {
        goto LABEL_61;
      }
    }

    v59 = *(v16 + 16);
    if (*(v16 + 24) <= v59)
    {
      specialized _NativeSet.resize(capacity:)(v59 + 1);
    }

    v16 = v132;
    v60 = NSObject._rawHashValue(seed:)(*(v132 + 40));
    v61 = v16 + 56;
    v62 = -1 << *(v16 + 32);
    v63 = v60 & ~v62;
    v64 = v63 >> 6;
    if (((-1 << v63) & ~*(v16 + 56 + 8 * (v63 >> 6))) != 0)
    {
      v65 = __clz(__rbit64((-1 << v63) & ~*(v16 + 56 + 8 * (v63 >> 6)))) | v63 & 0x7FFFFFFFFFFFFFC0;
LABEL_60:
      *(v61 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
      *(*(v16 + 48) + 8 * v65) = v58;
      ++*(v16 + 16);
      goto LABEL_46;
    }

    v66 = 0;
    v67 = (63 - v62) >> 6;
    while (++v64 != v67 || (v66 & 1) == 0)
    {
      v68 = v64 == v67;
      if (v64 == v67)
      {
        v64 = 0;
      }

      v66 |= v68;
      v69 = *(v61 + 8 * v64);
      if (v69 != -1)
      {
        v65 = __clz(__rbit64(~v69)) + (v64 << 6);
        goto LABEL_60;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
  }

  v70 = *(v15 + 32);
  v71 = (((1 << v70) + 63) >> 6);
  if ((v70 & 0x3Fu) > 0xD)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_63;
    }

    v123 = swift_slowAlloc();
    v16 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v123, v71, v15, closure #3 in closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration());

    MEMORY[0x2319361B0](v123, -1, -1);
  }

  else
  {
LABEL_63:
    v130 = v71;
    v126 = &v126;
    MEMORY[0x28223BE20](v53);
    v73 = &v126 - ((v72 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v73, v72);
    v74 = 0;
    v75 = 0;
    v76 = v15;
    v77 = v15 + 56;
    v78 = 1 << *(v15 + 32);
    v79 = -1;
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    v80 = v79 & *(v15 + 56);
    v81 = (v78 + 63) >> 6;
    while (v80)
    {
      v82 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
LABEL_73:
      v85 = v82 | (v75 << 6);
      if ([*(*(v76 + 48) + 8 * v85) type] == 2)
      {
        *&v73[(v85 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v85;
        v51 = __OFADD__(v74++, 1);
        if (v51)
        {
          __break(1u);
          goto LABEL_77;
        }
      }
    }

    v83 = v75;
    while (1)
    {
      v75 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_98;
      }

      if (v75 >= v81)
      {
        break;
      }

      v84 = *(v77 + 8 * v75);
      ++v83;
      if (v84)
      {
        v82 = __clz(__rbit64(v84));
        v80 = (v84 - 1) & v84;
        goto LABEL_73;
      }
    }

LABEL_77:
    v16 = specialized _NativeSet.extractSubset(using:count:)(v73, v130, v74, v76);
  }

LABEL_78:
  v86 = v0[39].super.isa;
  specialized Sequence.compactMap<A>(_:)(v16);

  v87 = [*(v86 + 4) publicPermission];
  if (v87 == v128)
  {
LABEL_90:
    v109 = v0[39].super.isa;
    v110 = *(v86 + 4);
    v0[48].super.isa = v110;
    v111 = *(v109 + 5);
    v130 = v110;
    v112.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v0[49].super.isa = v112.super.isa;
    v113.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v0[50].super.isa = v113.super.isa;
    v114 = v129;
    v99 = [v129 optionsGroups];
    if (v99)
    {
      v115 = v99;
      v128 = v111;
      v116 = CKSharingPermissionTypeFromOptionsGroups();

      v99 = [v114 optionsGroups];
      if (v99)
      {
        v117 = v99;
        v104 = v0 + 2;
        v118 = v0[41].super.isa;

        v119 = objc_opt_self();

        v120 = CKSharingAllowOthersToInviteFromOptionsGroups();

        v0[2].super.isa = v0;
        v0[7].super.isa = v118;
        v0[3].super.isa = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
        v121 = swift_continuation_init();
        v0[25].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMd, &_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMR);
        v0[18].super.isa = MEMORY[0x277D85DD0];
        v0[19].super.isa = 1107296256;
        v0[20].super.isa = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned CKShare?, @unowned NSError?) -> () with result type (URL, CKShare);
        v0[21].super.isa = &block_descriptor_46;
        v0[22].super.isa = v121;
        [v119 addParticipantsToShare:v130 containerSetupInfo:v128 emailAddresses:v112.super.isa phoneNumbers:v113.super.isa permissionType:v116 allowOthersToInvite:v120 completionHandler:&v0[18]];
        goto LABEL_93;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_109;
  }

  v88 = [*(v86 + 4) currentUserParticipant];
  v89 = [*(v86 + 4) owner];
  v90 = v89;
  if (!v88)
  {
    if (!v89)
    {
      goto LABEL_84;
    }

LABEL_89:

    goto LABEL_90;
  }

  if (!v89)
  {
    v90 = v88;
    goto LABEL_89;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
  v91 = static NSObject.== infix(_:_:)();

  if ((v91 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_84:
  v92 = v0[39].super.isa;
  v93 = *(v86 + 4);
  v0[44].super.isa = v93;
  v94 = *(v92 + 5);
  v95 = v93;
  v96.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v0[45].super.isa = v96.super.isa;
  v97.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v0[46].super.isa = v97.super.isa;
  v98 = v129;
  v99 = [v129 optionsGroups];
  if (!v99)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v100 = v99;
  v130 = v95;
  v128 = CKSharingAccessTypeFromOptionsGroups();

  v99 = [v98 optionsGroups];
  if (!v99)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v101 = v99;
  v127 = v94;
  v102 = CKSharingPermissionTypeFromOptionsGroups();

  v99 = [v98 optionsGroups];
  if (!v99)
  {
LABEL_111:
    __break(1u);
    return MEMORY[0x282200938](v99);
  }

  v103 = v99;
  v104 = v0 + 10;
  v105 = v0[43].super.isa;

  v106 = objc_opt_self();

  v107 = CKSharingAllowOthersToInviteFromOptionsGroups();

  v0[10].super.isa = v0;
  v0[15].super.isa = v105;
  v0[11].super.isa = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  v108 = swift_continuation_init();
  v0[33].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMd, &_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMR);
  v0[26].super.isa = MEMORY[0x277D85DD0];
  v0[27].super.isa = 1107296256;
  v0[28].super.isa = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned CKShare?, @unowned NSError?) -> () with result type (URL, CKShare);
  v0[29].super.isa = &block_descriptor_50;
  v0[30].super.isa = v108;
  LOBYTE(v125) = v107;
  [v106 completeShare:v130 containerSetupInfo:v127 emailAddresses:v96.super.isa phoneNumbers:v97.super.isa accessType:v128 permissionType:v102 allowOthersToInvite:v125 completionHandler:&v0[26]];
LABEL_93:
  v99 = v104;

  return MEMORY[0x282200938](v99);
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v2 = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[40];
  v6 = v0[38];
  outlined init with take of (URL, CKShare)(v0[43], v4);
  v7 = *(v5 + 48);
  v8 = *(v4 + v7);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 32))(v6, v4, v9);
  *(v6 + v7) = v8;

  v10 = v0[1];

  return v10();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v2 = closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[42];
  v5 = v0[40];
  v6 = v0[38];
  outlined init with take of (URL, CKShare)(v0[41], v4);
  v7 = *(v5 + 48);
  v8 = *(v4 + v7);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 32))(v6, v4, v9);
  *(v6 + v7) = v8;

  v10 = v0[1];

  return v10();
}

{
  swift_willThrow();
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);

  v3 = *(v0 + 8);

  return v3();
}

{
  swift_willThrow();
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a8;
  v20[5] = a1;
  v20[6] = a6;
  v20[7] = a7;
  v20[8] = a4;
  v20[9] = a5;
  v20[10] = a2;
  v20[11] = a3;

  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v18, &async function pointer to partial apply for closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), v20, a8);
}

id closure #3 in CloudKitCollaborationInitiationRequest.initiateCollaboration()@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0) + 20);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 16))(&a3[v6], a2, v7);
  *a3 = v5;
  return v5;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a2;
  v8 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *(a3 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v49 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
    v44 = v49;
    if (v41)
    {
      v12 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v12 = _HashTable.startBucket.getter();
      v13 = *(a3 + 36);
    }

    v46 = v12;
    v47 = v13;
    v48 = v41 != 0;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v43 = v3;
      v14 = 0;
      v15 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 < 0)
      {
        v15 = a3;
      }

      v36 = a3 + 56;
      v37 = v15;
      v35 = a3 + 64;
      while (v14 < v10)
      {
        if (__OFADD__(v14++, 1))
        {
          goto LABEL_39;
        }

        isUniquelyReferenced_nonNull_native = v46;
        v5 = v47;
        LODWORD(v6) = v48;
        v18 = a3;
        specialized Set.subscript.getter(v46, v47, v48, a3);
        a3 = v19;
        v45[0] = v19;
        v20 = v43;
        v39(v45);
        v43 = v20;
        if (v20)
        {
          goto LABEL_44;
        }

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        a3 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = a3;
        v24 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v44 = v21;
        result = outlined init with take of CollaborationInitiationResponsePayload(v42, v21 + v24 + *(v38 + 72) * v23, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
        if (v41)
        {
          if (!v6)
          {
            goto LABEL_45;
          }

          a3 = v18;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            isUniquelyReferenced_nonNull_native = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
          v16 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v16(v45, 0);
          if (v14 == v10)
          {
LABEL_36:
            outlined consume of Set<TUHandle>.Index._Variant(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v6)
          {
            goto LABEL_46;
          }

          if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          a3 = v18;
          v25 = 1 << *(v18 + 32);
          if (isUniquelyReferenced_nonNull_native >= v25)
          {
            goto LABEL_40;
          }

          v26 = isUniquelyReferenced_nonNull_native >> 6;
          v27 = *(v36 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
          if (((v27 >> isUniquelyReferenced_nonNull_native) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v18 + 36) != v5)
          {
            goto LABEL_42;
          }

          v28 = v27 & (-2 << (isUniquelyReferenced_nonNull_native & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | isUniquelyReferenced_nonNull_native & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v6 = v26 << 6;
            v29 = v26 + 1;
            v30 = (v35 + 8 * v26);
            while (v29 < (v25 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v6 += 64;
              ++v29;
              if (v32)
              {
                outlined consume of Set<TUHandle>.Index._Variant(isUniquelyReferenced_nonNull_native, v5, 0);
                v25 = __clz(__rbit64(v31)) + v6;
                goto LABEL_35;
              }
            }

            outlined consume of Set<TUHandle>.Index._Variant(isUniquelyReferenced_nonNull_native, v5, 0);
          }

LABEL_35:
          v33 = *(v18 + 36);
          v46 = v25;
          v47 = v33;
          v48 = 0;
          if (v14 == v10)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:

    outlined consume of Set<TUHandle>.Index._Variant(isUniquelyReferenced_nonNull_native, v5, v6);

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  return result;
}

uint64_t CloudKitCollaborationInitiationRequest.initiateOTLCollaboration()(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](CloudKitCollaborationInitiationRequest.initiateOTLCollaboration(), 0, 0);
}

{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = CloudKitCollaborationInitiationRequest.initiateOTLCollaboration();
  }

  else
  {

    v4 = CloudKitCollaborationInitiationRequest.initiateOTLCollaboration();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id CloudKitCollaborationInitiationRequest.initiateOTLCollaboration()()
{
  v73 = v0;
  if (one-time initialization token for cloudKitCollaborationInitiation != -1)
  {
LABEL_53:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = __swift_project_value_buffer(v1, static Log.cloudKitCollaborationInitiation);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v72 = v8;
    *v6 = 136315650;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v9 = Set.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v72);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = *(v5 + 32);
    *(v6 + 14) = v12;
    *v7 = v12;
    *(v6 + 22) = 2080;
    v13 = *(v5 + 24);
    v14 = v12;
    v15 = [v13 optionsGroups];

    if (!v15)
    {
LABEL_55:
      __break(1u);
      return result;
    }

    v17 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for _SWCollaborationOptionsGroup, 0x277CDC6D0);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = MEMORY[0x231934700](v18, v17);
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v72);

    *(v6 + 24) = v22;
    _os_log_impl(&dword_231772000, v2, v3, "Received request to initiate OTL-based collaboration with: %s, share: %@, optionsGroup: %s", v6, 0x20u);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v8, -1, -1);
    MEMORY[0x2319361B0](v6, -1, -1);
  }

  else
  {
  }

  v23 = v0[10];
  v24 = *(v23 + 16);
  if ((v24 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v25 = v0[2];
    v26 = v0[3];
    v27 = v0[4];
    v28 = v0[5];
    v29 = v0[6];
    v23 = v0[10];
  }

  else
  {
    v30 = -1 << *(v24 + 32);
    v26 = v24 + 56;
    v27 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(v24 + 56);

    v28 = 0;
  }

  v33 = MEMORY[0x277D84F98];
  v34 = (v27 + 64) >> 6;
  v68 = v23;
  v69 = v0;
  v70 = v26;
  for (i = v25; ; v25 = i)
  {
    v0[12] = v33;
    if (v25 < 0)
    {
      v42 = __CocoaSet.Iterator.next()();
      if (!v42 || (v0[8] = v42, type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8), swift_dynamicCast(), v41 = v0[7], v39 = v28, v40 = v29, !v41))
      {
LABEL_43:
        v62 = v0[10];
        outlined consume of Set<TUHandle>.Iterator._Variant(i);
        v63 = *(v62 + 40);
        v0[13] = v63;
        v64 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerSetupInfo_];
        v0[14] = v64;
        v65 = *(v23 + 32);
        v0[15] = v65;
        v66 = v65;
        v67 = swift_task_alloc();
        v0[16] = v67;
        *v67 = v0;
        v67[1] = CloudKitCollaborationInitiationRequest.initiateOTLCollaboration();

        return SaveShareOperation.perform()(v66, v64);
      }
    }

    else
    {
      v37 = v28;
      v38 = v29;
      v39 = v28;
      if (!v29)
      {
        while (1)
        {
          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v39 >= v34)
          {
            goto LABEL_43;
          }

          v38 = *(v26 + 8 * v39);
          ++v37;
          if (v38)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_20:
      v40 = (v38 - 1) & v38;
      v41 = *(*(v25 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
      if (!v41)
      {
        goto LABEL_43;
      }
    }

    v43 = [objc_opt_self() oneTimeURLParticipant];
    result = [*(v23 + 24) optionsGroups];
    if (!result)
    {
      __break(1u);
      goto LABEL_55;
    }

    v44 = result;
    v45 = CKSharingPermissionTypeFromOptionsGroups();

    [v43 setPermission_];
    [*(v23 + 32) addParticipant_];
    if ((v33 & 0xC000000000000001) != 0)
    {
      if (v33 < 0)
      {
        v46 = v33;
      }

      else
      {
        v46 = v33 & 0xFFFFFFFFFFFFFF8;
      }

      v47 = v43;
      v48 = __CocoaSet.count.getter();
      if (__OFADD__(v48, 1))
      {
        goto LABEL_51;
      }

      v33 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8TUHandleC_So18CKShareParticipantCTt1g5(v46, v48 + 1);
    }

    else
    {
      v49 = v43;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v33;
    v52 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
    v53 = *(v33 + 16);
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_50;
    }

    v0 = v51;
    if (*(v33 + 24) < v55)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v58 = v40;
      if (v51)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v58 = v40;
      v33 = v72;
      if (v0)
      {
LABEL_13:
        v35 = *(v33 + 56);
        v36 = *(v35 + 8 * v52);
        *(v35 + 8 * v52) = v43;

        goto LABEL_14;
      }
    }

LABEL_39:
    *(v33 + 8 * (v52 >> 6) + 64) |= 1 << v52;
    *(*(v33 + 48) + 8 * v52) = v41;
    *(*(v33 + 56) + 8 * v52) = v43;

    v59 = *(v33 + 16);
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_52;
    }

    *(v33 + 16) = v61;
LABEL_14:
    v28 = v39;
    v29 = v58;
    v23 = v68;
    v0 = v69;
    v26 = v70;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, isUniquelyReferenced_nonNull_native);
  v33 = v72;
  v56 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
  if ((v0 & 1) == (v57 & 1))
  {
    v52 = v56;
    v58 = v40;
    if (v0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t CloudKitCollaborationInitiationRequest.initiateOTLCollaboration()()
{
  v1 = v0[17];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = [*(v6 + 32) recordID];
    *(v7 + 4) = v9;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v5;
    *v8 = v9;
    v8[1] = v5;
    v10 = v5;
    _os_log_impl(&dword_231772000, v3, v4, "Completed share operation for share: %@, new share: %@", v7, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v8, -1, -1);
    MEMORY[0x2319361B0](v7, -1, -1);
  }

  v11 = v0[17];
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[12];
  v16 = v0[9];
  v15 = v0[10];

  v17 = *(v15 + 32);
  v18 = v11;
  v19 = v17;
  v20 = specialized Sequence.compactMap<A>(_:)(v14, v18);

  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientV_SayAJGTt0g5Tf4g_n(v20);

  *v16 = v19;
  v16[1] = v21;
  v16[2] = v12;
  v22 = v12;
  v23 = v0[1];

  return v23();
}

{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t SaveShareOperation.perform()(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](SaveShareOperation.perform(), 0, 0);
}

uint64_t SaveShareOperation.perform()()
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKModifyRecordsOperation, 0x277CBC4A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23183DF50;
  v8 = *(v0 + 24);
  *(v1 + 32) = v8;
  v2 = v8;
  v10.value._rawValue = v1;
  v10.is_nil = 0;
  isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v10, v11).super.super.super.super.isa;
  *(v0 + 40) = isa;
  [(objc_class *)isa setQualityOfService:25];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = isa;
  *(v4 + 24) = v8;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x277CBC680);
  *v5 = v0;
  v5[1] = SaveShareOperation.perform();

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x286D726F66726570, 0xE900000000000029, partial apply for closure #1 in SaveShareOperation.perform(), v4, v6);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = SaveShareOperation.perform();
  }

  else
  {

    v2 = SaveShareOperation.perform();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

id *CloudKitCollaborationInitiationRequest.deinit()
{

  return v0;
}

uint64_t CloudKitCollaborationInitiationRequest.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t protocol witness for CollaborationInitiationRequest.initiateCollaboration() in conformance CloudKitCollaborationInitiationRequest(uint64_t a1)
{
  v6 = (*(**v1 + 144) + **(**v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v6(a1);
}

void closure #1 in SaveShareOperation.perform()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7CKShareCs5Error_pGMd, &_sScCySo7CKShareCs5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in SaveShareOperation.perform();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [CKRecord]?, @guaranteed [CKRecordID]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);

  [a2 setModifyRecordsCompletionBlock_];
  _Block_release(v14);
  v15 = [a3 currentUserParticipant];
  v16 = [a3 owner];
  v17 = v16;
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_6;
    }

LABEL_8:

LABEL_9:
    v19 = &selRef_sharedCloudDatabase;
    goto LABEL_10;
  }

  if (!v16)
  {
    v17 = v15;
    goto LABEL_8;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
  v18 = static NSObject.== infix(_:_:)();

  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v19 = &selRef_privateCloudDatabase;
LABEL_10:
  v20 = [a4 *v19];
  [v20 addOperation_];
}

unint64_t closure #1 in closure #1 in SaveShareOperation.perform()(unint64_t result, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7CKShareCs5Error_pGMd, &_sScCySo7CKShareCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  v4 = result;
  if (!result)
  {
    goto LABEL_15;
  }

  if (!(result >> 62))
  {
    result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_13:
    MEMORY[0x231934AB0](0, v4);
    goto LABEL_9;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 32);
LABEL_9:
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7CKShareCs5Error_pGMd, &_sScCySo7CKShareCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [CKRecord]?, @guaranteed [CKRecordID]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecord, 0x277CBC5A0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecordID, 0x277CBC5D0);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v13;
  v8[14] = v14;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a1;
  v8[8] = a4;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), 0, 0);
}

void specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)()
{
  v1 = v0[8];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = v0[9];
      v0[22] = 0;
      v6 = (v2 + *v2);
      v3 = swift_task_alloc();
      v0[23] = v3;
      *v3 = v0;
      v4 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    }

    else
    {
      static Task<>.checkCancellation()();
      v6 = (v0[9] + *v0[9]);
      v3 = swift_task_alloc();
      v0[29] = v3;
      *v3 = v0;
      v4 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    }

    v3[1] = v4;
    v5 = v0[7];

    v6(v5);
  }
}

uint64_t specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  if ((*(v0 + 88))(*(v0 + 192)))
  {
    v2 = *(v0 + 128);
    v1 = *(v0 + 136);
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v5 = *(v0 + 104);
    static Clock<>.continuous.getter();
    *(v0 + 40) = v5;
    *(v0 + 48) = v3;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v6 = _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    dispatch thunk of Clock.now.getter();
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v7 = *(v2 + 8);
    *(v0 + 200) = v7;
    *(v0 + 208) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v1, v4);
    v8 = swift_task_alloc();
    *(v0 + 216) = v8;
    *v8 = v0;
    v8[1] = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);

    return MEMORY[0x2822008C8](v10, v0 + 16, v9, v6);
  }

  else
  {
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    (*(v2 + 200))(*(v2 + 144), *(v2 + 120));
    v3 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  else
  {
    v5 = *(v2 + 160);
    v4 = *(v2 + 168);
    v6 = *(v2 + 152);
    (*(v2 + 200))(*(v2 + 144), *(v2 + 120));
    (*(v5 + 8))(v4, v6);
    v3 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 176) + 1;

  if (v2 == v1)
  {
    v3 = *(v0 + 224);
    static Task<>.checkCancellation()();
    if (v3)
    {

      v4 = *(v0 + 8);

      return v4();
    }

    v9 = (*(v0 + 72) + **(v0 + 72));
    v6 = swift_task_alloc();
    *(v0 + 232) = v6;
    *v6 = v0;
    v7 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  else
  {
    ++*(v0 + 176);
    v9 = (*(v0 + 72) + **(v0 + 72));
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v7 = specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  v6[1] = v7;
  v8 = *(v0 + 56);

  return v9(v8);
}

{
  v1 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v2 = v0[1];

  return v2();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v13;
  v8[14] = v14;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a1;
  v8[8] = a4;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), 0, 0);
}

void closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)()
{
  v1 = v0[8];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = v0[9];
      v0[22] = 0;
      v6 = (v2 + *v2);
      v3 = swift_task_alloc();
      v0[23] = v3;
      *v3 = v0;
      v4 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    }

    else
    {
      static Task<>.checkCancellation()();
      v6 = (v0[9] + *v0[9]);
      v3 = swift_task_alloc();
      v0[25] = v3;
      *v3 = v0;
      v4 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    }

    v3[1] = v4;
    v5 = v0[7];

    v6(v5);
  }
}

uint64_t closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    (*(v2 + 208))(*(v2 + 144), *(v2 + 120));
    v3 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  else
  {
    v5 = *(v2 + 160);
    v4 = *(v2 + 168);
    v6 = *(v2 + 152);
    (*(v2 + 208))(*(v2 + 144), *(v2 + 120));
    (*(v5 + 8))(v4, v6);
    v3 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 176) + 1;

  if (v2 == v1)
  {
    v3 = *(v0 + 232);
    static Task<>.checkCancellation()();
    if (v3)
    {

      v4 = *(v0 + 8);

      return v4();
    }

    v9 = (*(v0 + 72) + **(v0 + 72));
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    *v6 = v0;
    v7 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  else
  {
    ++*(v0 + 176);
    v9 = (*(v0 + 72) + **(v0 + 72));
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v7 = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
  }

  v6[1] = v7;
  v8 = *(v0 + 56);

  return v9(v8);
}

{
  v1 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v2 = v0[1];

  return v2();
}

{
  if ((*(v0 + 88))(*(v0 + 192)))
  {
    v2 = *(v0 + 128);
    v1 = *(v0 + 136);
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v5 = *(v0 + 104);
    static Clock<>.continuous.getter();
    *(v0 + 40) = v5;
    *(v0 + 48) = v3;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v6 = _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    dispatch thunk of Clock.now.getter();
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v7 = *(v2 + 8);
    *(v0 + 208) = v7;
    *(v0 + 216) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v1, v4);
    v8 = swift_task_alloc();
    *(v0 + 224) = v8;
    *v8 = v0;
    v8[1] = closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);

    return MEMORY[0x2822008C8](v10, v0 + 16, v9, v6);
  }

  else
  {
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10Foundation3URLV_So7CKShareCt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  outlined init with copy of TaskPriority?(a3, &v24[-1] - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter();
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v20 + 32, v24);

      v21 = v24[0];
      outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

id CKShareParticipant.handle.getter()
{
  v1 = v0;
  v2 = [v0 userIdentity];
  v3 = [v2 lookupInfo];

  if (!v3)
  {
    if (one-time initialization token for cloudKitCollaborationInitiation != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.cloudKitCollaborationInitiation);
    v8 = v1;
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35[0] = v11;
      *v10 = 136315138;
      v36 = v8;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
      v12 = v8;
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v35);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_231772000, v3, v9, "Missing user identity for participant: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x2319361B0](v11, -1, -1);
      MEMORY[0x2319361B0](v10, -1, -1);
    }

    goto LABEL_20;
  }

  v4 = [v3 emailAddress];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() normalizedEmailAddressHandleForValue_];

    if (!v6)
    {
LABEL_15:
      if (one-time initialization token for cloudKitCollaborationInitiation != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.cloudKitCollaborationInitiation);
      v25 = v1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35[0] = v29;
        *v28 = 136315138;
        v36 = v25;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
        v30 = v25;
        v31 = String.init<A>(reflecting:)();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v35);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_231772000, v26, v27, "Missing handle for participant: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x2319361B0](v29, -1, -1);
        MEMORY[0x2319361B0](v28, -1, -1);
      }

LABEL_20:
      return 0;
    }
  }

  else
  {
    v16 = [v3 phoneNumber];
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    v21 = PNCopyBestGuessCountryCodeForNumber();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v35[0] = 43;
      v35[1] = 0xE100000000000000;
      MEMORY[0x231934620](v18, v20);

      v23 = MEMORY[0x231934530](43, 0xE100000000000000);

      v22 = PNCopyBestGuessCountryCodeForNumber();
    }

    v6 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v17 isoCountryCode:v22];

    if (!v6)
    {
      goto LABEL_15;
    }
  }

  return v6;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFStringRef(0);
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

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
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFStringRef(0);
          _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
          v10 = v9;
          v11 = static _CFObject.== infix(_:_:)();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
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
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x231934A30](v9, a1);
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

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for CollaborationInitiationResponsePayload(0);
    v18 = *(v11 - 8);
    outlined init with take of CollaborationInitiationResponsePayload(v10 + *(v18 + 72) * v7, a2, type metadata accessor for CollaborationInitiationResponsePayload);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for CollaborationInitiationResponsePayload(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8TUHandleC_So18CKShareParticipantCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMd, &_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CollaborationInitiationResponsePayload(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8TUHandleC11SocialLayer38CollaborationInitiationResponsePayloadVGMd, &_ss18_DictionaryStorageCySo8TUHandleC11SocialLayer38CollaborationInitiationResponsePayloadVGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        outlined init with take of CollaborationInitiationResponsePayload(v25, v7, type metadata accessor for CollaborationInitiationResponsePayload);
      }

      else
      {
        outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(v25, v7, type metadata accessor for CollaborationInitiationResponsePayload);
        v26 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v10 + 40));
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = outlined init with take of CollaborationInitiationResponsePayload(v7, *(v10 + 56) + v24 * v18, type metadata accessor for CollaborationInitiationResponsePayload);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMd, &_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
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
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for CollaborationInitiationResponsePayload(0) - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
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

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v13 & 1) == (v20 & 1))
    {
      v9 = v19;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for CollaborationInitiationResponsePayload(0) - 8) + 72) * v9;

    return outlined assign with take of CollaborationInitiationResponsePayload(a1, v17);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v15);

  return a2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, &_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMd, &_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMR);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMd, &_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMR);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for CollaborationInitiationResponsePayload(0);
  result = outlined init with take of CollaborationInitiationResponsePayload(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for CollaborationInitiationResponsePayload);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for CollaborationInitiationResponsePayload(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8TUHandleC11SocialLayer38CollaborationInitiationResponsePayloadVGMd, &_ss18_DictionaryStorageCySo8TUHandleC11SocialLayer38CollaborationInitiationResponsePayloadVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(*(v5 + 56) + v22, v4, type metadata accessor for CollaborationInitiationResponsePayload);
        *(*(v7 + 48) + 8 * v20) = v21;
        outlined init with take of CollaborationInitiationResponsePayload(v4, *(v7 + 56) + v22, type metadata accessor for CollaborationInitiationResponsePayload);
        result = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMd, &_ss18_DictionaryStorageCySo8TUHandleCSo18CKShareParticipantCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t outlined assign with take of CollaborationInitiationResponsePayload(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationInitiationResponsePayload(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration()(a1, v1);
}

uint64_t partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2319349F0](a1, a2, v7);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void *specialized Sequence.compactMap<A>(_:)(unint64_t a1, void *a2)
{
  v68 = a2;
  v65 = type metadata accessor for URL();
  v4 = *(v65 - 8);
  v5 = MEMORY[0x28223BE20](v65);
  v64 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVSgMd, &_s11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v54 - v9);
  v71 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  v59 = *(v71 - 8);
  v11 = MEMORY[0x28223BE20](v71);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v54 - v13;
  v58 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v72 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v15 = ~v17;
    v14 = a1 + 64;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 64);
    v72 = a1;
  }

  v21 = 0;
  v57 = v15;
  v22 = (v15 + 64) >> 6;
  v62 = (v4 + 32);
  v66 = (v59 + 48);
  v67 = (v59 + 56);
  v60 = MEMORY[0x277D84F90];
  v61 = v22;
  while ((v72 & 0x8000000000000000) != 0)
  {
    v29 = __CocoaDictionary.Iterator.next()();
    if (!v29 || (v31 = v30, v73 = v29, type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8), swift_dynamicCast(), v27 = v74, v73 = v31, type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0), swift_dynamicCast(), v28 = v74, v70 = v16, !v27))
    {
LABEL_27:
      outlined consume of Set<TUHandle>.Iterator._Variant(v72);
      return v60;
    }

LABEL_17:
    v69 = v27;
    v32 = v28;
    v33 = CKShareParticipant.participantID.getter();
    v34 = MEMORY[0x231934530](v33);

    v35 = [v68 oneTimeURLForParticipantID_];

    if (v35)
    {
      v36 = v64;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v63;
      v38 = *v62;
      v39 = v14;
      v40 = v10;
      v41 = v71;
      v42 = v36;
      v43 = v65;
      (*v62)(v63, v42, v65);
      v44 = v40 + *(v41 + 20);
      v45 = v37;
      v46 = v41;
      v10 = v40;
      v14 = v39;
      v22 = v61;
      v38(v44, v45, v43);
      *v10 = v69;
      (*v67)(v10, 0, 1, v46);
      v16 = v70;
      v47 = v32;
    }

    else
    {
      (*v67)(v10, 1, 1, v71);

      v47 = v69;
      v16 = v70;
    }

    if ((*v66)(v10, 1, v71) == 1)
    {
      result = outlined destroy of (CFStringRef, [CFStringRef? : Any])(v10, &_s11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVSgMd, &_s11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVSgMR);
    }

    else
    {
      v48 = v14;
      v49 = v55;
      outlined init with take of CollaborationInitiationResponsePayload(v10, v55, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
      outlined init with take of CollaborationInitiationResponsePayload(v49, v56, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
      }

      v51 = v60[2];
      v50 = v60[3];
      v14 = v48;
      if (v51 >= v50 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v60);
      }

      v16 = v70;
      v52 = v59;
      v53 = v60;
      v60[2] = v51 + 1;
      result = outlined init with take of CollaborationInitiationResponsePayload(v56, v53 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
    }
  }

  v23 = v21;
  v24 = v16;
  if (v16)
  {
LABEL_13:
    v70 = (v24 - 1) & v24;
    v25 = (v21 << 9) | (8 * __clz(__rbit64(v24)));
    v26 = *(*(v72 + 56) + v25);
    v27 = *(*(v72 + 48) + v25);
    v28 = v26;
    if (!v27)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v21 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v21 >= v22)
    {
      goto LABEL_27;
    }

    v24 = *(v14 + 8 * v21);
    ++v23;
    if (v24)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation3URLVACSHAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:)(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t dispatch thunk of CloudKitCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return v6(a1);
}

uint64_t dispatch thunk of CloudKitCollaborationInitiationRequest.initiateOTLCollaboration()(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return v6(a1);
}

uint64_t type metadata completion function for CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1)
{
  result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t partial apply for closure #1 in closure #1 in SaveShareOperation.perform()(unint64_t a1, int a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7CKShareCs5Error_pGMd, &_sScCySo7CKShareCs5Error_pGMR);

  return closure #1 in closure #1 in SaveShareOperation.perform()(a1, a2, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of CollaborationInitiationResponsePayload(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of Set<TUHandle>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t outlined init with take of (URL, CKShare)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CloudKitCollaborationInitiationRequest.Response.Recipient(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id CollaborationAttributionView.init(highlight:variant:)(void *a1, uint64_t a2)
{
  v3 = specialized CollaborationAttributionView.init(highlight:variant:)(a1, a2);

  return v3;
}

uint64_t CollaborationAttributionView.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CollaborationAttributionView.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SLCollaborationAttributionView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CollaborationAttributionView.delegate.modify;
}

void CollaborationAttributionView.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t CollaborationAttributionView.remoteContentDidLoad.getter()
{
  v1 = (v0 + OBJC_IVAR___SLCollaborationAttributionView_remoteContentDidLoad);
  swift_beginAccess();
  v2 = *v1;
  sub_23177A430(*v1, v1[1]);
  return v2;
}

uint64_t CollaborationAttributionView.remoteContentDidLoad.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SLCollaborationAttributionView_remoteContentDidLoad);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

void *CollaborationAttributionView.highlight.getter()
{
  v1 = OBJC_IVAR___SLCollaborationAttributionView_highlight;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CollaborationAttributionView.highlight.setter(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SLCollaborationAttributionView_highlight;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  if (a1)
  {
    if (v5)
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLHighlight, off_278924EC0);
      a1 = a1;
      v6 = v5;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {

        v5 = v6;
LABEL_17:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    CollaborationAttributionView.minViableGlyphSize()();
    v9 = v8;
    if (*&v2[OBJC_IVAR___SLCollaborationAttributionView_variant] == 4)
    {
      v10 = 44.0;
    }

    else
    {
      v10 = 0.0;
    }

    [v2 bounds];
    if (v11 > v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (v12 <= v10)
    {
      v12 = v10;
    }

    [v2 setMaxWidth_];
    v13 = [v2 slotView];
    [v13 _updateContent];

    [v2 invalidateIntrinsicContentSize];
    goto LABEL_17;
  }

  if (v5)
  {
    goto LABEL_8;
  }
}

void (*CollaborationAttributionView.highlight.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SLCollaborationAttributionView_highlight;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return CollaborationAttributionView.highlight.modify;
}

void CollaborationAttributionView.highlight.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v7)
      {
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLHighlight, off_278924EC0);
        v8 = v3;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

LABEL_24:
          goto LABEL_25;
        }
      }

      else
      {
        v8 = v3;
      }
    }

    else
    {
      if (!v7)
      {
LABEL_25:
        v11 = *v4;
        goto LABEL_36;
      }

      v8 = 0;
    }

    v14 = v2[4];
    CollaborationAttributionView.minViableGlyphSize()();
    v16 = v15;
    if (*&v14[OBJC_IVAR___SLCollaborationAttributionView_variant] == 4)
    {
      v17 = 44.0;
    }

    else
    {
      v17 = 0.0;
    }

    [v14 bounds];
    if (v18 > v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    if (v19 <= v17)
    {
      v19 = v17;
    }

    [v14 setMaxWidth_];
    v20 = [v14 slotView];
    [v20 _updateContent];

    [v14 invalidateIntrinsicContentSize];
    v8 = v7;
    goto LABEL_24;
  }

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_37;
    }

    v11 = 0;
    goto LABEL_27;
  }

  if (!v7)
  {
    v11 = v3;
    goto LABEL_27;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLHighlight, off_278924EC0);
  v11 = v3;
  v12 = v7;
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
LABEL_27:
    v21 = v2[4];
    CollaborationAttributionView.minViableGlyphSize()();
    v23 = v22;
    if (*&v21[OBJC_IVAR___SLCollaborationAttributionView_variant] == 4)
    {
      v24 = 44.0;
    }

    else
    {
      v24 = 0.0;
    }

    [v21 bounds];
    if (v25 > v23)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    if (v26 <= v24)
    {
      v26 = v24;
    }

    [v21 setMaxWidth_];
    v27 = [v21 slotView];
    [v27 _updateContent];

    [v21 invalidateIntrinsicContentSize];
    v11 = v7;
    goto LABEL_36;
  }

LABEL_36:
LABEL_37:

  free(v2);
}

uint64_t CollaborationAttributionView.title.getter()
{
  v1 = (v0 + OBJC_IVAR___SLCollaborationAttributionView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CollaborationAttributionView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SLCollaborationAttributionView_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t CollaborationAttributionView.automaticallyAdjustsMaxWidthToFitBounds.getter()
{
  v1 = OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds;
  swift_beginAccess();
  return *(v0 + v1);
}

id CollaborationAttributionView.automaticallyAdjustsMaxWidthToFitBounds.setter(char a1)
{
  v3 = OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = a1;
  if (v5 & 1) == 0 && (a1)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*CollaborationAttributionView.automaticallyAdjustsMaxWidthToFitBounds.modify(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return CollaborationAttributionView.automaticallyAdjustsMaxWidthToFitBounds.modify;
}

void CollaborationAttributionView.automaticallyAdjustsMaxWidthToFitBounds.modify(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if ((v5 & 1) == 0 && v4)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}

void CollaborationAttributionView.minViableGlyphSize()()
{
  v1 = [v0 lastRenderedSlotStyle];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration];
    [v3 minViableSizeWithStyle_];
  }

  else
  {
    v4 = [v0 traitCollection];
    [v4 displayScale];
    v6 = v5;

    v7 = [v0 traitCollection];
    v8 = [v7 layoutDirection];

    v9 = v8 == 1;
    v10 = [v0 traitCollection];
    v11 = [v10 userInterfaceStyle];

    [*&v0[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] minViableSizeWithDisplayScale:v9 RTL:v11 == 2 darkMode:v6];
  }
}

id CollaborationAttributionView.updatePlaceholderSymbol(scale:weight:pointSize:)(uint64_t a1, uint64_t a2, double a3)
{
  if ((a1 - 1) >= 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v7 = objc_allocWithZone(SLDImageSymbolConfiguration);
  v8 = MEMORY[0x231934530](0xD000000000000022, 0x80000002318465A0);
  v9 = [v7 initWithName:v8 coreUISize:v6 weight:a2 pointSize:a3];

  v10 = *&v3[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration];
  *&v3[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] = v9;
  v11 = v9;
  CollaborationAttributionView.placeholderGlyphConfiguration.didset(v10);

  CollaborationAttributionView.minViableGlyphSize()();
  v13 = 44.0;
  if (*&v3[OBJC_IVAR___SLCollaborationAttributionView_variant] != 4)
  {
    v13 = 0.0;
  }

  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  [v3 maxWidth];
  if (v14 > v15)
  {
    v15 = v14;
  }

  return [v3 setMaxWidth_];
}

void CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9)
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for collaborationRenderer != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.collaborationRenderer);
  v17 = a2;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v40 = a3;
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v20 = 134219010;
    *(v20 + 4) = a1;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v17;
    *v38 = v17;
    *(v20 + 22) = 2080;
    v21 = v17;
    *(v20 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, a4, aBlock);
    *(v20 + 32) = 2080;
    v22 = MEMORY[0x231934700](a5, MEMORY[0x277D837D0]);
    v24 = a4;
    v25 = a7;
    v26 = a1;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, aBlock);

    *(v20 + 34) = v27;
    a1 = v26;
    a7 = v25;
    *(v20 + 42) = 2048;
    *(v20 + 44) = a9;
    _os_log_impl(&dword_231772000, v18, v19, "Received request to render remote content. layerID: %ld style: %@ title: %s attributionIdentifiers: %s maxWidth: %f", v20, 0x34u);
    outlined destroy of NSObject?(v38);
    MEMORY[0x2319361B0](v38, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v39, -1, -1);
    v28 = v20;
    a3 = v40;
    MEMORY[0x2319361B0](v28, -1, -1);
  }

  else
  {

    v24 = a4;
  }

  v29 = *(v41 + OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration);
  v30 = MEMORY[0x231934530](a3, v24);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v32 = *(v41 + OBJC_IVAR___SLCollaborationAttributionView_variant);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = v33;
  *(v34 + 32) = v17;
  *(v34 + 40) = a9;
  *(v34 + 48) = a7;
  *(v34 + 56) = a8;
  *(v34 + 64) = ObjectType;
  aBlock[4] = partial apply for closure #1 in CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:);
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UISSlotRemoteContent?) -> ();
  aBlock[3] = &block_descriptor_26;
  v35 = _Block_copy(aBlock);
  v36 = v17;
  v37 = v29;

  [a6 collaborationAttributionViewForTitle:v30 attributionIdentifiers:isa style:v36 placeholderGlyphConfiguration:v37 maxWidth:v32 variant:a1 layerContextID:a9 reply:v35];
  _Block_release(v35);
}

double CollaborationAttributionView.expectedHeight(for:)(double a1)
{
  [v1 frame];
  Width = CGRectGetWidth(v11);
  if (SL_CGFloatApproximatelyEqualToFloat(a1, Width) || (v4 = [v1 lastRenderedSlotStyle]) == 0)
  {
    v5 = [v1 slotView];
    [v5 intrinsicContentSize];
    v8 = v9;
  }

  else
  {
    v5 = v4;
    v6 = [objc_allocWithZone(SLDCollaborationAttributionViewEmptySlotContent) initWithStyle:v4 variant:*&v1[OBJC_IVAR___SLCollaborationAttributionView_variant] maxWidth:*&v1[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] placeholderGlyphConfig:0 forRemote:a1];
    [v6 contentSize];
    v8 = v7;
  }

  return v8;
}

uint64_t key path getter for CollaborationAttributionView.remoteContentDidLoad : CollaborationAttributionView@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for CollaborationAttributionView.remoteContentDidLoad : CollaborationAttributionView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  sub_23177A430(v3, v4);
  return v7(v6, v5);
}

void CollaborationAttributionView.placeholderGlyphConfiguration.didset(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLDImageSymbolConfiguration, off_278924E68);
  v4 = v3;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    CollaborationAttributionView.minViableGlyphSize()();
    v7 = v6;
    if (*&v2[OBJC_IVAR___SLCollaborationAttributionView_variant] == 4)
    {
      v8 = 44.0;
    }

    else
    {
      v8 = 0.0;
    }

    [v2 bounds];
    if (v9 > v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v10 <= v8)
    {
      v10 = v8;
    }

    [v2 setMaxWidth_];
    v11 = [v2 slotView];
    [v11 _updateContent];

    [v2 invalidateIntrinsicContentSize];
  }
}

id CollaborationAttributionView.__allocating_init(highlight:variant:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized CollaborationAttributionView.init(highlight:variant:)(a1, a2);

  return v6;
}

id CollaborationAttributionView.init(variant:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR___SLCollaborationAttributionView_remoteContentDidLoad];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR___SLCollaborationAttributionView_highlight] = 0;
  v4 = &v1[OBJC_IVAR___SLCollaborationAttributionView_title];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds] = 0;
  *&v1[OBJC_IVAR___SLCollaborationAttributionView_variant] = a1;
  v5 = objc_allocWithZone(SLDImageSymbolConfiguration);
  v6 = MEMORY[0x231934530](0xD000000000000022, 0x80000002318465A0);
  v7 = [v5 initWithName:v6 coreUISize:2 weight:3 pointSize:22.0];

  v8 = OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration;
  *&v1[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] = v7;
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  [*&v1[v8] minViableSizeWithDisplayScale:0 RTL:0 darkMode:v11];
  v13 = 44.0;
  if (a1 != 4)
  {
    v13 = 0.0;
  }

  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLDCollaborationAttributionViewService, off_278924DA8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CollaborationAttributionView();
  return objc_msgSendSuper2(&v17, sel_initWithServiceProxyClass_maxWidth_, ObjCClassFromMetadata, v14);
}

id CollaborationAttributionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t CollaborationAttributionView.init(coder:)(void *a1)
{
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall CollaborationAttributionView.layoutSubviews()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CollaborationAttributionView();
  v1 = objc_msgSendSuper2(&v7, sel_layoutSubviews);
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x100))(v1))
  {
    CollaborationAttributionView.minViableGlyphSize()();
    v3 = v2;
    if (*(v0 + OBJC_IVAR___SLCollaborationAttributionView_variant) == 4)
    {
      v4 = 44.0;
    }

    else
    {
      v4 = 0.0;
    }

    [v0 bounds];
    if (v5 > v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    if (v6 <= v4)
    {
      v6 = v4;
    }

    [v0 setMaxWidth_];
  }
}

Swift::Void __swiftcall CollaborationAttributionView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for CollaborationAttributionView();
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    isa = [(objc_class *)isa preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!isa)
  {

    goto LABEL_11;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    return;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    [v1 invalidateIntrinsicContentSize];
  }
}

id CollaborationAttributionView.makePlaceholderSlotContent(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR___SLCollaborationAttributionView_variant];
  v5 = v4 == 4 || v4 == 1;
  if (v5 && ([v2 maxWidth], v6 > 0.0))
  {
    v7 = *&v2[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration];
    v8 = objc_opt_self();
    v9 = v7;
    [v2 maxWidth];
    v10 = [v8 placeholderTagForMaxWidth:v9 placeholderGlyphConfiguration:?];
    v11 = [objc_allocWithZone(SLDCollaborationAttributionViewSlotDrawer) init];
    result = [v11 drawingWithStyle:a1 tag:v10 forRemote:0];
    if (result)
    {
      v13 = [objc_opt_self() contentWithDrawing:result style:a1];

      swift_unknownObjectRelease();
      return v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    [v2 bounds];
    return [objc_allocWithZone(SLDCollaborationAttributionViewEmptySlotContent) initWithStyle:a1 variant:v4 maxWidth:*&v2[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] placeholderGlyphConfig:0 forRemote:CGRectGetWidth(v14)];
  }

  return result;
}

void CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for collaborationRenderer != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.collaborationRenderer);
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v14;
    v21 = v11;
    v22 = v9;
    v23 = v5;
    v24 = a3;
    v25 = a4;
    v26 = v20;
    *v19 = 134218242;
    *(v19 + 4) = v42;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v20 = v16;
    v27 = v16;
    _os_log_impl(&dword_231772000, v17, v18, "Received request to render remote content for layerID: %ld style: %@", v19, 0x16u);
    outlined destroy of NSObject?(v26);
    v28 = v26;
    a4 = v25;
    a3 = v24;
    v5 = v23;
    v9 = v22;
    v11 = v21;
    v14 = v38;
    MEMORY[0x2319361B0](v28, -1, -1);
    MEMORY[0x2319361B0](v19, -1, -1);
  }

  v29 = [v5 serviceProxy];
  v30 = [v29 collaborationAttributionViewService];

  if (v30)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v31 = static OS_dispatch_queue.main.getter();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v34 = v42;
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v16;
    v33[5] = v30;
    v33[6] = a3;
    v33[7] = a4;
    aBlock[4] = partial apply for closure #1 in CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:);
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_1;
    v35 = _Block_copy(aBlock);
    v36 = v16;
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x2319348A0](0, v14, v11, v35);
    _Block_release(v35);
    swift_unknownObjectRelease();

    (*(v41 + 8))(v11, v9);
    (*(v39 + 8))(v14, v40);
  }
}

void closure #1 in CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a2;
  v84 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v78 = a3;
  v79 = a4;
  v80 = a6;
  v81 = v16;
  v82 = v14;
  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *Strong) + 0xB8);
  v86 = Strong;
  v20 = v19();
  if (v20)
  {
    v21 = v20;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v86;
  v24 = (*((*v18 & *v86) + 0xE8))();
  if (!v25)
  {
    if (v22)
    {
      v27 = [v22 fileName];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v28;

      v23 = v86;
      v26 = v19();
      if (v26)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v85 = 0x8000000231846880;
      v77 = 0xD000000000000017;
      v26 = (v19)(v24);
      if (v26)
      {
        goto LABEL_11;
      }
    }

LABEL_34:

    if (one-time initialization token for collaborationRenderer != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Log.collaborationRenderer);
    v63 = v23;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock[0] = v67;
      *v66 = 136315138;
      v88 = v19();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11SLHighlightCSgMd, &_sSo11SLHighlightCSgMR);
      v68 = String.init<A>(describing:)();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, aBlock);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_231772000, v64, v65, "AttributionIdentifiers for highlight: %s are nil, dropping remote render request.", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x2319361B0](v67, -1, -1);
      MEMORY[0x2319361B0](v66, -1, -1);
    }

    else
    {
    }

    return;
  }

  v77 = v24;
  v85 = v25;
  v26 = v19();
  if (!v26)
  {
    goto LABEL_34;
  }

LABEL_11:
  v29 = v26;
  v30 = [v26 attributions];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLAttribution, off_278924CF8);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v31 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v72 = v12;
    v73 = v13;
    v74 = v10;
    v75 = v9;
    v76 = v22;
    v22 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v33 = 0;
    v87 = v31 & 0xC000000000000001;
    while (1)
    {
      if (v87)
      {
        v34 = MEMORY[0x231934AB0](v33, v31);
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v34 = *(v31 + 8 * v33 + 32);
      }

      v10 = v34;
      v35 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v12 = i;
      v36 = [v34 uniqueIdentifier];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
      }

      v13 = v22[2];
      v39 = v22[3];
      v10 = (v13 + 1);
      if (v13 >= v39 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v13 + 1, 1, v22);
      }

      v22[2] = v10;
      v40 = &v22[2 * v13];
      v40[4] = v9;
      v40[5] = v38;
      ++v33;
      i = v12;
      if (v35 == v12)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_26:

  v41 = v86;
  [v41 maxWidth];
  if (v42 <= 0.0)
  {

    if (one-time initialization token for collaborationRenderer != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Log.collaborationRenderer);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v76;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_231772000, v57, v58, "maxWidth is 0.0, dropping remote render request.", v61, 2u);
      MEMORY[0x2319361B0](v61, -1, -1);
    }
  }

  else
  {
    v43 = [v41 remoteRenderingQueue];

    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v46 = v83;
    v45[2] = v44;
    v45[3] = v46;
    v47 = v77;
    v48 = v78;
    v45[4] = v78;
    v45[5] = v47;
    v49 = v84;
    v45[6] = v85;
    v45[7] = v22;
    v50 = v80;
    v45[8] = v79;
    v45[9] = v49;
    v45[10] = v50;
    aBlock[4] = partial apply for closure #2 in closure #1 in CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:);
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_46_0;
    v51 = _Block_copy(aBlock);

    v52 = v48;
    swift_unknownObjectRetain();

    v53 = v81;
    static DispatchQoS.unspecified.getter();
    v88 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v54 = v72;
    v55 = v75;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x2319348A0](0, v53, v54, v51);
    _Block_release(v51);

    (v74)[1](v54, v55);
    (*(v82 + 8))(v53, v73);
  }
}

void closure #2 in closure #1 in CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong maxWidth];
    CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:)(a2, a3, a4, a5, a6, a7, a8, a9, v18);
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t closure #1 in CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v34 = a7;
  v36 = a6;
  v37 = a4;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v15 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for collaborationRenderer != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.collaborationRenderer);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = a2;
    v23 = v21;
    *v21 = 134217984;
    *(v21 + 4) = v22;
    _os_log_impl(&dword_231772000, v19, v20, "Finished render request layerID: %ld", v21, 0xCu);
    MEMORY[0x2319361B0](v23, -1, -1);
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v27 = swift_allocObject();
  v28 = v37;
  *(v27 + 16) = v25;
  *(v27 + 24) = v28;
  *(v27 + 32) = a1;
  *(v27 + 40) = a8;
  *(v27 + 48) = a5;
  v29 = v34;
  *(v27 + 56) = v36;
  *(v27 + 64) = v29;
  aBlock[4] = partial apply for closure #1 in closure #1 in CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:);
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_33;
  v30 = _Block_copy(aBlock);
  v31 = a1;

  v32 = v28;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2319348A0](0, v17, v14, v30);
  _Block_release(v30);

  (*(v35 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v38);
}

void closure #1 in closure #1 in CollaborationAttributionView._renderRemoteContent(forLayerContextID:style:forTitle:maxWidth:attributionIdentifiers:usingService:yield:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), double a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [v13 setLastRenderedSlotStyle_];
    [v13 setRemoteContentIsLoaded_];

    if (a3)
    {
      v14 = a3;
      a4();
      [v13 setNeedsLayout];
      v15 = [v13 layoutIfNeeded];
      v16 = (*((*MEMORY[0x277D85000] & *v13) + 0x88))(v15);
      if (v16)
      {
        [v16 collaborationAttributionViewDidLoadNewRemoteContent_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v17 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_23183D7F0;
      v24 = a7;
      swift_getMetatypeMetadata();
      v19 = String.init<A>(describing:)();
      v21 = v20;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      *(v18 + 96) = type metadata accessor for CollaborationAttributionView();
      *(v18 + 104) = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CollaborationAttributionView and conformance NSObject, v22, type metadata accessor for CollaborationAttributionView, MEMORY[0x277D85388]);
      *(v18 + 72) = v13;
      *(v18 + 136) = MEMORY[0x277D85048];
      *(v18 + 144) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v18 + 112) = a5;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
      v23 = v13;
      v14 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v17, &dword_231772000, v14, "[%@: %p] returned nil remote content for maxWidth: %f", 53, 2, v18, v24);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UISSlotRemoteContent?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id CollaborationAttributionView.__allocating_init(serviceProxyClass:maxWidth:)(uint64_t a1, double a2)
{
  v4 = objc_allocWithZone(v2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v4 initWithServiceProxyClass:ObjCClassFromMetadata maxWidth:a2];
}

id CollaborationAttributionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CollaborationAttributionView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollaborationAttributionView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id specialized CollaborationAttributionView.init(highlight:variant:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR___SLCollaborationAttributionView_remoteContentDidLoad];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR___SLCollaborationAttributionView_highlight;
  *&v2[OBJC_IVAR___SLCollaborationAttributionView_highlight] = 0;
  v7 = &v2[OBJC_IVAR___SLCollaborationAttributionView_title];
  *v7 = 0;
  v7[1] = 0;
  v2[OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds] = 0;
  swift_beginAccess();
  *&v2[v6] = a1;
  v8 = objc_allocWithZone(SLDImageSymbolConfiguration);
  v9 = a1;
  v10 = MEMORY[0x231934530](0xD000000000000022, 0x80000002318465A0);
  v11 = [v8 initWithName:v10 coreUISize:2 weight:3 pointSize:22.0];

  v12 = OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration;
  *&v2[OBJC_IVAR___SLCollaborationAttributionView_placeholderGlyphConfiguration] = v11;
  *&v2[OBJC_IVAR___SLCollaborationAttributionView_variant] = a2;
  v13 = [objc_opt_self() mainScreen];
  [v13 scale];
  v15 = v14;

  [*&v2[v12] minViableSizeWithDisplayScale:0 RTL:0 darkMode:v15];
  v17 = 44.0;
  if (a2 != 4)
  {
    v17 = 0.0;
  }

  if (v16 > v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLDCollaborationAttributionViewService, off_278924DA8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CollaborationAttributionView();
  return objc_msgSendSuper2(&v21, sel_initWithServiceProxyClass_maxWidth_, ObjCClassFromMetadata, v18);
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

BOOL static NodeIdentity.< infix(_:_:)()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  NodeIdentity.hash.getter(&v11 - v5);
  v7 = SHA256Digest.hashValue.getter();
  v8 = *(v1 + 8);
  v8(v6, v0);
  NodeIdentity.hash.getter(v4);
  v9 = SHA256Digest.hashValue.getter();
  v8(v4, v0);
  return v7 < v9;
}

uint64_t NodeIdentity.hash.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SHA256();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for P256.Signing.PublicKey();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for NodeIdentity(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of NodeIdentity(v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v13, v7);
    v14 = SHA256.init()();
    v15 = MEMORY[0x2319343F0](v14);
    v17 = v16;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v15, v16, v6);
    outlined consume of Data._Representation(v15, v17);
    SHA256.finalize()();
    (*(v8 + 8))(v10, v7);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v19 = type metadata accessor for SHA256Digest();
    return (*(*(v19 - 8) + 32))(a1, v13, v19);
  }
}

uint64_t outlined init with copy of NodeIdentity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static NodeIdentity.== infix(_:_:)()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  NodeIdentity.hash.getter(&v10 - v5);
  NodeIdentity.hash.getter(v4);
  lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v7 = static Digest.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance NodeIdentity()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  NodeIdentity.hash.getter(&v11 - v5);
  v7 = SHA256Digest.hashValue.getter();
  v8 = *(v1 + 8);
  v8(v6, v0);
  NodeIdentity.hash.getter(v4);
  v9 = SHA256Digest.hashValue.getter();
  v8(v4, v0);
  return v7 < v9;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance NodeIdentity()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  NodeIdentity.hash.getter(&v11 - v5);
  v7 = SHA256Digest.hashValue.getter();
  v8 = *(v1 + 8);
  v8(v6, v0);
  NodeIdentity.hash.getter(v4);
  v9 = SHA256Digest.hashValue.getter();
  v8(v4, v0);
  return v7 >= v9;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance NodeIdentity()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  NodeIdentity.hash.getter(&v11 - v5);
  v7 = SHA256Digest.hashValue.getter();
  v8 = *(v1 + 8);
  v8(v6, v0);
  NodeIdentity.hash.getter(v4);
  v9 = SHA256Digest.hashValue.getter();
  v8(v4, v0);
  return v7 >= v9;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance NodeIdentity()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  NodeIdentity.hash.getter(&v11 - v5);
  v7 = SHA256Digest.hashValue.getter();
  v8 = *(v1 + 8);
  v8(v6, v0);
  NodeIdentity.hash.getter(v4);
  v9 = SHA256Digest.hashValue.getter();
  v8(v4, v0);
  return v7 < v9;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeIdentity()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  NodeIdentity.hash.getter(&v10 - v5);
  NodeIdentity.hash.getter(v4);
  lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v7 = static Digest.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t MerkleNode.parent.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t MerkleNode.hash.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SHA256();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for P256.Signing.PublicKey();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for NodeIdentity(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of NodeIdentity(v1 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v13, v7);
    v14 = SHA256.init()();
    v15 = MEMORY[0x2319343F0](v14);
    v17 = v16;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v15, v16, v6);
    outlined consume of Data._Representation(v15, v17);
    SHA256.finalize()();
    (*(v8 + 8))(v10, v7);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v19 = type metadata accessor for SHA256Digest();
    return (*(*(v19 - 8) + 32))(a1, v13, v19);
  }
}

uint64_t MerkleNode.__allocating_init(node:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_parent) = 0;
  *(v2 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_left) = 0;
  *(v2 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_right) = 0;
  outlined init with take of NodeIdentity(a1, v2 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);
  return v2;
}

uint64_t MerkleNode.init(node:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_parent) = 0;
  *(v1 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_left) = 0;
  *(v1 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_right) = 0;
  outlined init with take of NodeIdentity(a1, v1 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);
  return v1;
}

uint64_t MerkleNode.deinit()
{
  outlined destroy of NodeIdentity(v0 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);

  return v0;
}

uint64_t MerkleNode.__deallocating_deinit()
{
  outlined destroy of NodeIdentity(v0 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t MerkleTree.root.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t MerkleTree.rootHash.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*v1 + 96))();
  if (v3)
  {
    (*(*v3 + 184))(v3);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for SHA256Digest();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t MerkleTree.__allocating_init(nodeIdentities:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MerkleTree.init(nodeIdentities:)(a1);
  return v2;
}

uint64_t MerkleTree.init(nodeIdentities:)(uint64_t a1)
{
  v3 = type metadata accessor for NodeIdentity(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    v16[1] = v1 + 24;
    v17 = v1;
    v18[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = *(v4 + 80);
    v16[0] = a1;
    v9 = a1 + ((v8 + 32) & ~v8);
    v10 = *(v4 + 72);
    do
    {
      outlined init with copy of NodeIdentity(v9, v6);
      type metadata accessor for MerkleNode(0);
      v11 = swift_allocObject();
      *(v11 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_parent) = 0;
      *(v11 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_left) = 0;
      *(v11 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_right) = 0;
      outlined init with take of NodeIdentity(v6, v11 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += v10;
      --v7;
    }

    while (v7);

    v1 = v17;
    v12 = v18[0];
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *(v1 + 16) = v12;

  v14 = MerkleTree.buildTree(nodes:)(v13);

  swift_beginAccess();
  *(v1 + 24) = v14;

  return v1;
}

void *MerkleTree.verify(node:)(uint64_t a1)
{
  v48 = a1;
  v49[2] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for SHA256();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for P256.Signing.PublicKey();
  v6 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for NodeIdentity(0);
  MEMORY[0x28223BE20](v47);
  v37 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  v16 = *(v1 + 16);
  if (v16 >> 62)
  {
LABEL_35:
    v2 = v16;
    result = __CocoaSet.count.getter();
    v16 = v2;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v30[1] = v1;
  v18 = 0;
  v43 = v16 & 0xFFFFFFFFFFFFFF8;
  v44 = v16 & 0xC000000000000001;
  v36 = (v10 + 32);
  v34 = v3;
  v35 = (v6 + 32);
  v32 = (v4 + 8);
  v33 = (v6 + 8);
  v41 = (v10 + 8);
  v42 = v13;
  v10 = v37;
  v6 = v38;
  v31 = v15;
  v39 = result;
  v40 = v16;
  while (!v44)
  {
    if (v18 >= *(v43 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v3 = *(v16 + 8 * v18 + 32);

    v13 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      goto LABEL_29;
    }

LABEL_7:
    outlined init with copy of NodeIdentity(v48, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = v45;
      (*v35)(v45, v10, v46);
      v19 = SHA256.init()();
      v20 = MEMORY[0x2319343F0](v19);
      v10 = v20;
      v6 = v16;
      v21 = v16 >> 62;
      if ((v16 >> 62) > 1)
      {
        if (v21 != 2)
        {
          lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          memset(v49, 0, 14);
          goto LABEL_22;
        }

        v15 = *(v20 + 16);
        v23 = *(v20 + 24);
        v1 = v16 & 0x3FFFFFFFFFFFFFFFLL;
        if (__DataStorage._bytes.getter())
        {
          v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          if (__OFSUB__(v15, __DataStorage._offset.getter()))
          {
            __break(1u);
LABEL_38:
            __break(1u);
          }
        }

        v24 = __OFSUB__(v23, v15);
        v4 = (v23 - v15);
        if (v24)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (!v21)
        {
          v49[0] = v20;
          LOWORD(v49[1]) = v16;
          BYTE2(v49[1]) = BYTE2(v16);
          BYTE3(v49[1]) = BYTE3(v16);
          BYTE4(v49[1]) = BYTE4(v16);
          BYTE5(v49[1]) = BYTE5(v16);
          lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
LABEL_22:
          v25 = v38;
          v26 = v34;
          dispatch thunk of HashFunction.update(bufferPointer:)();
          outlined consume of Data._Representation(v10, v6);
          goto LABEL_23;
        }

        v4 = v20;
        v15 = ((v20 >> 32) - v20);
        if (v20 >> 32 < v20)
        {
          goto LABEL_33;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v10, __DataStorage._offset.getter()))
        {
          goto LABEL_38;
        }
      }

      MEMORY[0x231933EB0]();
      lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      v25 = v38;
      v26 = v34;
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v10, v6);
      v15 = v31;
LABEL_23:
      SHA256.finalize()();
      (*v33)(v45, v46);
      v22 = (*v32)(v25, v26);
      v6 = v25;
      v10 = v37;
      goto LABEL_24;
    }

    v22 = (*v36)(v15, v10, v9);
LABEL_24:
    v2 = v15;
    v15 = v42;
    (*(*v3 + 184))(v22);
    lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
    if (static Digest.== infix(_:_:)())
    {
      goto LABEL_30;
    }

    v1 = v41;
    v4 = *v41;
    (*v41)(v15, v9);
    v4(v2, v9);
    ++v18;
    v16 = v40;
    v15 = v2;
    if (v13 == v39)
    {
      return 0;
    }
  }

  v3 = MEMORY[0x231934AB0](v18, v16);
  v13 = (v18 + 1);
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_7;
  }

LABEL_29:
  __break(1u);
LABEL_30:

  v28 = MerkleTree.generateProofOfInclusion(node:)(v27);

  v29 = *v41;
  (*v41)(v15, v9);
  v29(v2, v9);
  return v28;
}

uint64_t MerkleTree.buildTree(nodes:)(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return v3;
  }

LABEL_3:
  if (v3 != 1)
  {
    v5 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84F90];
    if (v3 < 1)
    {
LABEL_24:
      v11 = MerkleTree.buildTree(nodes:)(v5);

      return v11;
    }

    v6 = 0;
    while ((a1 & 0xC000000000000001) == 0)
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v2 = (a1 + 8 * v6);
      v7 = v2[4];

      if ((v6 + 1) >= v3)
      {
        goto LABEL_18;
      }

      if (v6 + 1 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v8 = v2[5];

LABEL_19:
      specialized MerkleTree.createParent(leftNode:rightNode:)(v7, v8);

      MEMORY[0x2319346D0](v9);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v2 = &v12;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v10 = v6 + 2;
      if (__OFADD__(v6, 2))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v3 = __CocoaSet.count.getter();
        if (!v3)
        {
          return v3;
        }

        goto LABEL_3;
      }

      v6 += 2;
      if (v10 >= v3)
      {
        v5 = v12;
        goto LABEL_24;
      }
    }

    v7 = MEMORY[0x231934AB0](v6, a1);
    if ((v6 + 1) < v3)
    {
      v8 = MEMORY[0x231934AB0]();
      goto LABEL_19;
    }

LABEL_18:

    v8 = v7;
    goto LABEL_19;
  }

  if (!v2)
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    return 0;
  }

LABEL_6:
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x231934AB0](0, a1);
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in MerkleTree.createParent(leftNode:rightNode:)()
{
  MEMORY[0x2319346B0]();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

void *MerkleTree.generateProofOfInclusion(node:)(uint64_t a1)
{
  v3 = type metadata accessor for SHA256Digest();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  if (!a1)
  {
    return result;
  }

  v8 = *(*v1 + 96);

  v10 = v8(v9);
  if (v10)
  {
    v11 = v10;

    if (v11 == a1)
    {
      goto LABEL_15;
    }
  }

  v12 = *(*a1 + 112);
  v13 = v12();
  if (v13)
  {
    v14 = (*(*v13 + 136))(v13);

    if (v14)
    {

      if (v14 == a1)
      {
        v16 = (v12)(v15);
        if (v16)
        {
          v17 = (*(*v16 + 160))(v16);
          goto LABEL_11;
        }

LABEL_15:

        return MEMORY[0x277D84F90];
      }
    }
  }

  v18 = v12();
  if (!v18)
  {
    goto LABEL_15;
  }

  v17 = (*(*v18 + 136))(v18);
LABEL_11:
  v19 = v17;

  if (!v19)
  {
    goto LABEL_15;
  }

  (*(*v19 + 184))(v20);
  v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = v21[2];
  v22 = v21[3];
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    v29 = v23 + 1;
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
    v24 = v29;
    v21 = v28;
  }

  v21[2] = v24;
  v25 = (*(v4 + 32))(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v6, v3);
  v30 = v21;
  v26 = (*(*v19 + 112))(v25);
  v27 = MerkleTree.generateProofOfInclusion(node:)(v26);

  specialized Array.append<A>(contentsOf:)(v27);

  return v30;
}

uint64_t MerkleTree.deinit()
{

  return v0;
}

uint64_t MerkleTree.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t outlined init with take of NodeIdentity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NodeIdentity(uint64_t a1)
{
  v2 = type metadata accessor for NodeIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for NodeIdentity(uint64_t a1)
{
  result = type metadata accessor for SHA256Digest();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for P256.Signing.PublicKey();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for MerkleNode(uint64_t a1)
{
  result = type metadata accessor for NodeIdentity(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized MerkleTree.createParent(leftNode:rightNode:)(uint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for NodeIdentity(0);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256Digest();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256();
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = SHA256.init()();
  (*(*a1 + 184))(v13);
  v27 = v12;
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v14 = *(v7 + 8);
  v15 = v14(v9, v6);
  (*(*a2 + 184))(v15);
  v26 = v12;
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v14(v9, v6);
  SHA256.finalize()();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MerkleNode(0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_parent) = 0;
  *(v16 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_left) = 0;
  *(v16 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_right) = 0;
  outlined init with take of NodeIdentity(v5, v16 + OBJC_IVAR____TtC11SocialLayer10MerkleNode_node);
  v17 = *(*a1 + 120);
  v18 = swift_retain_n();
  v17(v18);
  (*(*a2 + 120))(v16);
  v19 = OBJC_IVAR____TtC11SocialLayer10MerkleNode_left;
  swift_beginAccess();
  *(v16 + v19) = a1;

  v20 = OBJC_IVAR____TtC11SocialLayer10MerkleNode_right;
  swift_beginAccess();
  *(v16 + v20) = a2;

  (*(v24 + 8))(v12, v25);
  return v16;
}

uint64_t ProcessVerifierError.message.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProcessVerifierError()
{
  v1 = *v0;

  return v1;
}

uint64_t ProcessVerifier.useStaticKeyForTesting.getter()
{
  v1 = OBJC_IVAR___SLDProcessVerifier_useStaticKeyForTesting;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ProcessVerifier.useStaticKeyForTesting.setter(char a1)
{
  v3 = OBJC_IVAR___SLDProcessVerifier_useStaticKeyForTesting;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ProcessVerifier.staticTestingKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SymmetricKeySize();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgSgMd, &_s9CryptoKit12SymmetricKeyVSgSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR___SLDProcessVerifier____lazy_storage___staticTestingKey;
  swift_beginAccess();
  outlined init with copy of (NSAttributedStringKey, Any)(v1 + v10, v9, &_s9CryptoKit12SymmetricKeyVSgSgMd, &_s9CryptoKit12SymmetricKeyVSgSgMR);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return outlined init with take of SymmetricKey?(v9, a1);
  }

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v9, &_s9CryptoKit12SymmetricKeyVSgSgMd, &_s9CryptoKit12SymmetricKeyVSgSgMR);
  v13 = OBJC_IVAR___SLDProcessVerifier_useStaticKeyForTesting;
  swift_beginAccess();
  if (*(v1 + v13) == 1)
  {
    static SymmetricKeySize.bits128.getter();
    SymmetricKey.init(size:)();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v16 = type metadata accessor for SymmetricKey();
  (*(*(v16 - 8) + 56))(a1, v14, 1, v16);
  outlined init with copy of (NSAttributedStringKey, Any)(a1, v7, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  outlined assign with take of SymmetricKey??(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t static ProcessVerifier.tagData(from:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static String.Encoding.utf8.getter();
    a2 = String.data(using:allowLossyConversion:)();
    (*(v4 + 8))(v6, v3);
  }

  return a2;
}

uint64_t ProcessVerifier.sign(process:tag:)(void *a1, uint64_t a2, unint64_t a3)
{
  v44[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SymmetricKey();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v43 = 0;
  v11 = [v10 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v43];
  v12 = v43;
  if (!v11)
  {
    v16 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  v40 = v7;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  ProcessVerifier.acquireKey()(v9);
  if (v3)
  {
    outlined consume of Data._Representation(v13, v15);
LABEL_6:
    if (one-time initialization token for ProcessVerifier != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.ProcessVerifier);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44[0] = v22;
      *v21 = 136315138;
      v43 = ObjectType;
      swift_getMetatypeMetadata();
      v23 = String.init<A>(describing:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_231772000, v19, v20, "sign() caught error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x2319361B0](v22, -1, -1);
      MEMORY[0x2319361B0](v21, -1, -1);
    }

    swift_willThrow();
    return v20;
  }

  v17 = v13;
  v20 = specialized ProcessVerifier.createSealedBox(from:using:tag:)(v13, v15, v9, a2, a3);
  ObjectType = v15;
  if (one-time initialization token for ProcessVerifier != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Log.ProcessVerifier);
  v28 = a1;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v40;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v39 = v17;
    v34 = v33;
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v28;
    *v35 = v28;
    v36 = v28;
    _os_log_impl(&dword_231772000, v29, v30, "sign() successfully signed process: %@", v34, 0xCu);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2319361B0](v35, -1, -1);
    v37 = v34;
    v17 = v39;
    v32 = v40;
    MEMORY[0x2319361B0](v37, -1, -1);
  }

  outlined consume of Data._Representation(v17, ObjectType);

  (*(v41 + 8))(v9, v32);
  return v20;
}

uint64_t ProcessVerifier.acquireKey()@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v3 = type metadata accessor for SymmetricKeySize();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR___SLDProcessVerifier_useStaticKeyForTesting;
  swift_beginAccess();
  if (*(v1 + v14) == 1)
  {
    ProcessVerifier.staticTestingKey.getter(v13);
    if ((*(v5 + 48))(v13, 1, v4) != 1)
    {
      return (*(v5 + 32))(v21, v13, v4);
    }

    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v13, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  }

  result = specialized GenericPasswordStore.readKey<A>(account:)(0xD000000000000028, 0x8000000231846A40, v11);
  if (v2)
  {
    return result;
  }

  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v11, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if (one-time initialization token for ProcessVerifier != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.ProcessVerifier);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_231772000, v17, v18, "acquireKey() did not find an existing key in the keychain. Creating one.", v19, 2u);
      MEMORY[0x2319361B0](v19, -1, -1);
    }

    static SymmetricKeySize.bits128.getter();
    SymmetricKey.init(size:)();
    specialized GenericPasswordStore.storeKey<A>(_:account:)(v7, 0xD000000000000028, 0x8000000231846A40);
    v13 = v7;
  }

  else
  {
    v13 = v11;
  }

  return (*(v5 + 32))(v21, v13, v4);
}

_DWORD *ProcessVerifier.verify(data:tag:)(uint64_t a1, _DWORD *a2, uint64_t a3, unint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v51 = a2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for AES.GCM.SealedBox();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SymmetricKey();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProcessVerifier.acquireKey()(v13);
  if (!v4)
  {
    v47 = v11;
    v48 = v10;
    v14 = v50;
    v15 = v51;
    outlined copy of Data._Representation(a1, v51);
    _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(a1, v15);
    v16 = v13;
    if (v14 >> 60 == 15)
    {
      v29 = static AES.GCM.open(_:using:)();
      v31 = v30;
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v17 = v49;
      v53 = v49;
      v54 = v14;
      outlined copy of Data._Representation(v49, v14);
      lazy protocol witness table accessor for type Data and conformance Data();
      v18 = static AES.GCM.open<A>(_:using:authenticating:)();
      v31 = v19;
      v20 = v6;
      v32 = v18;
      (*(v7 + 8))(v9, v20);
      outlined consume of Data?(v17, v14);
      v29 = v32;
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSProcessIdentity, 0x277D46F60);
    v33 = v31;
    v34 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v51 = v33;
    if (v34)
    {
      ObjectType = v29;
      if (one-time initialization token for ProcessVerifier != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Log.ProcessVerifier);
      v6 = v34;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v6;
        *v39 = v34;
        v40 = v6;
        _os_log_impl(&dword_231772000, v36, v37, "verify() successfully verified process: %@", v38, 0xCu);
        outlined destroy of (CFStringRef, [CFStringRef? : Any])(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x2319361B0](v39, -1, -1);
        MEMORY[0x2319361B0](v38, -1, -1);
      }

      outlined consume of Data._Representation(ObjectType, v51);

      (*(v47 + 8))(v16, v48);
      return v6;
    }

    if (one-time initialization token for ProcessVerifier != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Log.ProcessVerifier);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v6 = v51;
    if (v44)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_231772000, v42, v43, "verify() could not unarchive a process identity from signed data.", v45, 2u);
      MEMORY[0x2319361B0](v45, -1, -1);
    }

    lazy protocol witness table accessor for type ProcessVerifierError and conformance ProcessVerifierError();
    swift_allocError();
    *v46 = 0xD000000000000041;
    v46[1] = 0x8000000231846910;
    swift_willThrow();
    outlined consume of Data._Representation(v29, v6);
    (*(v47 + 8))(v16, v48);
  }

  if (one-time initialization token for ProcessVerifier != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.ProcessVerifier);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v55 = v24;
    *v6 = 136315138;
    v53 = ObjectType;
    swift_getMetatypeMetadata();
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v55);

    *(v6 + 1) = v27;
    _os_log_impl(&dword_231772000, v22, v23, "verify() caught error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x2319361B0](v24, -1, -1);
    MEMORY[0x2319361B0](v6, -1, -1);
  }

  swift_willThrow();
  return v6;
}

uint64_t specialized GenericPasswordStore.readKey<A>(account:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result[35] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183E340;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v8;
  strcpy((inited + 48), "sociallayerd");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  v10 = *MEMORY[0x277CDC238];
  type metadata accessor for CFStringRef(0);
  *(inited + 120) = v11;
  *(inited + 96) = v10;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v12;
  *(inited + 168) = v7;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v13;
  v14 = MEMORY[0x277D839B0];
  *(inited + 216) = MEMORY[0x277D839B0];
  v15 = 1;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v16;
  *(inited + 264) = v14;
  *(inited + 240) = 1;
  v17 = v10;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  result[0] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = SecItemCopyMatching(isa, result);

  if (v19 == -25300)
  {
LABEL_6:
    v20 = type metadata accessor for SymmetricKey();
    (*(*(v20 - 8) + 56))(a3, v15, 1, v20);
    return swift_unknownObjectRelease();
  }

  if (!v19)
  {
    if (result[0])
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        SymmetricKey.init<A>(data:)();
        v15 = 0;
      }
    }

    goto LABEL_6;
  }

  _StringGuts.grow(_:)(24);

  *&v30 = 0xD000000000000016;
  *(&v30 + 1) = 0x8000000231846A90;
  v21 = SecCopyErrorMessageString(v19, 0);
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = v23;
  }

  else
  {
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v27;
  }

  MEMORY[0x231934620](v26, v25);

  lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError();
  swift_allocError();
  *v28 = v30;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      outlined consume of Data._Representation(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = MEMORY[0x277CC9318];
  v29[4] = MEMORY[0x277CC9300];
  v29[0] = a1;
  v29[1] = a2;
  v10 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x277CC9318]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = MEMORY[0x231933EB0]();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  closure #1 in Data.init<A>(_:)(v15, v14, &v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return AES.GCM.SealedBox.init(combined:)();
}