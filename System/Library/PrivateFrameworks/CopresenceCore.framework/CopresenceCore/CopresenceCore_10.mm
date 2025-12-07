Swift::Int BackgroundSessionCreationRequest.hash.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init()();
  v3 = UUID.hashValue.getter();
  MEMORY[0x1B27111E0](v3);
  MEMORY[0x1B27111E0]([*(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest) hash]);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v4 = Set.hashValue.getter();
  MEMORY[0x1B27111E0](v4);
  v5 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember);
  if (v5)
  {
    v6 = [v5 hash];
    Hasher._combine(_:)(1u);
    MEMORY[0x1B27111E0](v6);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount));
  Hasher._combine(_:)(*(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles));
  return Hasher.finalize()();
}

id BackgroundSessionCreationRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  (*(v8 + 56))(v6, 1, 1, v7);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695D8]);
  dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_12;
  }

  v16 = *(v8 + 32);
  v16(v11, v6, v7);
  v16(v13, v11, v7);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivityCreateSessionRequest, 0x1E69D8B38);
  v17 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v17)
  {
    (*(v8 + 8))(v13, v7);
LABEL_12:

    goto LABEL_13;
  }

  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v19 = swift_allocObject();
  v34 = xmmword_1AEE07B10;
  *(v19 + 16) = xmmword_1AEE07B10;
  *(v19 + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(v19 + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  NSCoder.decodeObject(of:forKey:)();

  if (!v39)
  {
    (*(v8 + 8))(v13, v7);

    outlined destroy of Any?(v38);
LABEL_13:
    type metadata accessor for BackgroundSessionCreationRequest(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGMd, &_sShySo8TUHandleCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v8 + 8))(v13, v7);

    goto LABEL_12;
  }

  v20 = v35;
  (*(v8 + 16))(&v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_id], v13, v7);
  *&v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest] = v18;
  *&v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_members] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v34;
  *(v21 + 32) = type metadata accessor for AccountMember();
  *(v21 + 40) = type metadata accessor for AddressableMember();
  v22 = v18;
  NSCoder.decodeObject(of:forKey:)();

  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore6Member_pMd, &_s14CopresenceCore6Member_pMR);
    v23 = swift_dynamicCast();
    v24 = v35;
    v25 = v36;
    if (!v23)
    {
      v24 = 0;
      v25 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(v38);
    v24 = 0;
    v25 = 0;
  }

  v27 = &v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember];
  *v27 = v24;
  v27[1] = v25;
  v28 = MEMORY[0x1B270FF70](0x4173736F72437369, 0xEE00746E756F6363);
  v29 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount] = v29;
  v30 = MEMORY[0x1B270FF70](0xD00000000000001ALL, 0x80000001AEE32970);
  v31 = [a1 decodeBoolForKey_];

  (*(v8 + 8))(v13, v7);
  v2[OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles] = v31;
  v32 = type metadata accessor for BackgroundSessionCreationRequest(0);
  v37.receiver = v2;
  v37.super_class = v32;
  v33 = objc_msgSendSuper2(&v37, sel_init);

  return v33;
}

Swift::Void __swiftcall BackgroundSessionCreationRequest.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x1B270FF70](25705, 0xE200000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest);
  v7 = MEMORY[0x1B270FF70](0xD000000000000016, 0x80000001AEE32950);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v8 = Set._bridgeToObjectiveC()().super.isa;
  v9 = MEMORY[0x1B270FF70](0x737265626D656DLL, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember);
  swift_unknownObjectRetain();
  v11 = MEMORY[0x1B270FF70](0x6D654D6C61636F6CLL, 0xEB00000000726562);
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  v12 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount);
  v13 = MEMORY[0x1B270FF70](0x4173736F72437369, 0xEE00746E756F6363);
  [(objc_class *)with.super.isa encodeBool:v12 forKey:v13];

  v14 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles);
  v15 = MEMORY[0x1B270FF70](0xD00000000000001ALL, 0x80000001AEE32970);
  [(objc_class *)with.super.isa encodeBool:v14 forKey:v15];
}

uint64_t BackgroundSessionCreationRequest.description.getter()
{
  v1 = v0;
  swift_getObjectType();
  v15 = 0;
  v16 = 0xE000000000000000;
  MEMORY[0x1B2710020](60, 0xE100000000000000);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x1B2710020](v2);

  MEMORY[0x1B2710020](0x203A666C657320, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v3);

  MEMORY[0x1B2710020](1029990688, 0xE400000000000000);

  _StringGuts.grow(_:)(26);

  v14[0] = 0xD000000000000018;
  v14[1] = 0x80000001AEE32990;
  v4 = [*(v0 + OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest) description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x1B2710020](v5, v7);

  MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE32990);

  strcpy(v14, " members=");
  WORD1(v14[1]) = 0;
  HIDWORD(v14[1]) = -385875968;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v8 = Set.description.getter();
  MEMORY[0x1B2710020](v8);

  MEMORY[0x1B2710020](v14[0], v14[1]);

  strcpy(v14, " localHandle=");
  HIWORD(v14[1]) = -4864;
  if (*(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember))
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore6Member_pMd, &_s14CopresenceCore6Member_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x1B2710020](v9, v11);

  MEMORY[0x1B2710020](v14[0], v14[1]);

  _StringGuts.grow(_:)(18);

  v14[0] = 0xD000000000000010;
  v14[1] = 0x80000001AEE32110;
  v12 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v12);

  MEMORY[0x1B2710020](0xD000000000000010, 0x80000001AEE32110);

  if (*(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles) == 1)
  {
    MEMORY[0x1B2710020](0xD000000000000020, 0x80000001AEE329B0);
  }

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return v15;
}

id BackgroundSessionCreationRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundSessionCreationRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundSessionCreationRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for BackgroundSessionCreationRequest(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      UInt64._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, &_syXlXpMR);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v8, (v2 + 32 * v6 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B2710B10](i, a1);
        type metadata accessor for _CDInteraction();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for _CDInteraction();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B2710B10](i, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22IDSDestinationProtocol_pMd, &_sSo22IDSDestinationProtocol_pMR);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22IDSDestinationProtocol_pMd, &_sSo22IDSDestinationProtocol_pMR);
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        outlined init with take of Any(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  specialized _arrayForceCast<A, B>(_:)(a1);
  v9 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v12 = Set._bridgeToObjectiveC()().super.isa;

  [v5 setClasses:v12 forSelector:a2 argumentIndex:a3 ofReply:a4 & 1];
}

unint64_t type metadata accessor for _CDInteraction()
{
  result = lazy cache variable for type metadata for _CDInteraction;
  if (!lazy cache variable for type metadata for _CDInteraction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _CDInteraction);
  }

  return result;
}

uint64_t one-time initialization function for foregroundApplicationChanged()
{
  result = MEMORY[0x1B270FF70](0xD00000000000002ALL, 0x80000001AEE32B40);
  static NSNotificationName.foregroundApplicationChanged = result;
  return result;
}

id static NSNotificationName.foregroundApplicationChanged.getter()
{
  if (one-time initialization token for foregroundApplicationChanged != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.foregroundApplicationChanged;

  return v1;
}

uint64_t CPForegroundApplication.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPForegroundApplication_bundleIdentifier);

  return v1;
}

id CPForegroundApplication.featureFlags.getter()
{
  v1 = OBJC_IVAR___CPForegroundApplication_featureFlags;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CPForegroundApplication.featureFlags.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPForegroundApplication_featureFlags;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CPForegroundApplication.localizedApplicationName.getter()
{
  v0 = CPForegroundApplication.applicationRecord.getter();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 localizedName];

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    type metadata accessor for ConversationManagerHost();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v10._object = 0xE000000000000000;
    v5.value._countAndFlagsBits = 0x6E65736572706F43;
    v5.value._object = 0xEE0065726F436563;
    v6._object = 0x80000001AEE32A60;
    v6._countAndFlagsBits = 0xD000000000000010;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v2, v7, v10)._countAndFlagsBits;
  }

  v8 = countAndFlagsBits;

  return v8;
}

id CPForegroundApplication.applicationRecord.getter()
{
  v1 = *&v0[OBJC_IVAR___CPForegroundApplication_bundleIdentifier];
  v2 = *&v0[OBJC_IVAR___CPForegroundApplication_bundleIdentifier + 8];
  v3 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  result = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v1, v2, 1);
  if (!result)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v2, &v11);
      _os_log_impl(&dword_1AEB26000, v7, v8, "Unable to get application record for bundle identifier: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1B27120C0](v10, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }

    return 0;
  }

  return result;
}

BOOL CPForegroundApplication.isGameCenterApplication.getter()
{
  v1 = OBJC_IVAR___CPForegroundApplication_featureFlags;
  swift_beginAccess();
  if ([*(v0 + v1) gameCenterSharePlayIntegration] && (v2 = CPForegroundApplication.applicationRecord.getter()) != 0)
  {
    v3 = v2;
    v4 = [v2 entitlements];

    v5 = LSPropertyList.containsAnyGameCenterEntitlements()();
  }

  else
  {
    return 0;
  }

  return v5;
}

id CPForegroundApplication.__allocating_init(bundleIdentifier:applicationType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR___CPForegroundApplication_featureFlags;
  *&v7[v8] = [objc_allocWithZone(CPFeatureFlags) init];
  v9 = &v7[OBJC_IVAR___CPForegroundApplication_bundleIdentifier];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v7[OBJC_IVAR___CPForegroundApplication_applicationType] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id CPForegroundApplication.init(bundleIdentifier:applicationType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___CPForegroundApplication_featureFlags;
  *&v3[v8] = [objc_allocWithZone(CPFeatureFlags) init];
  v9 = &v3[OBJC_IVAR___CPForegroundApplication_bundleIdentifier];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v3[OBJC_IVAR___CPForegroundApplication_applicationType] = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id CPForegroundApplication.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CPForegroundApplication.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Cache.WrappedKey.__allocating_init(_:)(uint64_t a1)
{
  v3 = specialized Cache.WrappedKey.__allocating_init(_:)(a1, type metadata accessor for Cache.WrappedKey, specialized Cache.WrappedKey.init(_:));
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

id Cache.WrappedKey.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = specialized Cache.WrappedKey.init(_:)(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

uint64_t @objc Cache.WrappedKey.hash.getter(void *a1)
{
  v1 = a1;
  v2 = Cache.WrappedKey.hash.getter();

  return v2;
}

uint64_t Cache.WrappedKey.isEqual(_:)(uint64_t a1)
{
  v2 = (*MEMORY[0x1E69E7D40] & *v1);
  outlined init with copy of Any?(a1, v6);
  if (!v7)
  {
    outlined destroy of Any?(v6);
    goto LABEL_5;
  }

  type metadata accessor for Cache.WrappedKey(0, v2[10], v2[11], v2[12]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v3 & 1;
}

uint64_t @objc Cache.WrappedKey.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = Cache.WrappedKey.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

id Cache.WrappedKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t Cache.WrappedValue.__allocating_init(_:)(uint64_t a1)
{
  v3 = specialized Cache.WrappedKey.__allocating_init(_:)(a1, type metadata accessor for Cache.WrappedValue, specialized Cache.WrappedValue.init(_:));
  (*(*(*(v1 + 88) - 8) + 8))(a1);
  return v3;
}

id Cache.WrappedValue.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = specialized Cache.WrappedValue.init(_:)(a1);
  (*(*(*((v4 & v3) + 0x58) - 8) + 8))(a1);
  return v5;
}

id Cache.WrappedKey.__deallocating_deinit(uint64_t (*a1)(void, void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58), *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t Cache.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = a2[3];
  type metadata accessor for Cache.WrappedKey(0, a2[2], v7, a2[4]);
  v8 = specialized Cache.WrappedKey.__allocating_init(_:)(a1, type metadata accessor for Cache.WrappedKey, specialized Cache.WrappedKey.init(_:));
  v9 = [v6 objectForKey_];

  if (v9)
  {
    v14 = *(v7 - 8);
    (*(v14 + 16))(a3, &v9[*((*MEMORY[0x1E69E7D40] & *v9) + 0x68)], v7);

    v10 = v14;
    v11 = 0;
  }

  else
  {
    v10 = *(v7 - 8);
    v11 = 1;
  }

  v12 = *(v10 + 56);

  return v12(a3, v11, 1, v7);
}

uint64_t key path setter for Cache.subscript(_:) : <A, B>Cache<A, B>AB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a3, v6);
  (*(v10 + 16))(v13, a1, v9);
  v17 = type metadata accessor for Cache(0, v6, v7, v8);
  return Cache.subscript.setter(v13, v15, v17);
}

uint64_t Cache.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    v16 = *(v9 + 8);
    v16(v12, v8);
    v17 = *v3;
    v18 = a3[2];
    type metadata accessor for Cache.WrappedKey(0, v18, v7, a3[4]);
    v19 = specialized Cache.WrappedKey.__allocating_init(_:)(a2, type metadata accessor for Cache.WrappedKey, specialized Cache.WrappedKey.init(_:));
    [v17 removeObjectForKey_];

    (*(*(v18 - 8) + 8))(a2, v18);
    return (v16)(a1, v8);
  }

  else
  {
    (*(v13 + 32))(v15, v12, v7);
    v26 = *v3;
    v27 = a1;
    v21 = a3[2];
    v22 = a3[4];
    type metadata accessor for Cache.WrappedValue(0, v21, v7, v22);
    v23 = a2;
    v24 = specialized Cache.WrappedKey.__allocating_init(_:)(v15, type metadata accessor for Cache.WrappedValue, specialized Cache.WrappedValue.init(_:));
    type metadata accessor for Cache.WrappedKey(0, v21, v7, v22);
    v25 = specialized Cache.WrappedKey.__allocating_init(_:)(v23, type metadata accessor for Cache.WrappedKey, specialized Cache.WrappedKey.init(_:));
    [v26 setObject:v24 forKey:v25];

    (*(*(v21 - 8) + 8))(v23, v21);
    (*(v9 + 8))(v27, v8);
    return (*(v13 + 8))(v15, v7);
  }
}

void (*Cache.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = type metadata accessor for Optional();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v9[5] = v13;
  v15 = a3[2];
  v9[6] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v9[7] = v16;
  v18 = *(v16 + 64);
  if (v7)
  {
    v9[8] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[8] = malloc(*(v16 + 64));
    v19 = malloc(v18);
  }

  v9[9] = v19;
  (*(v17 + 16))();
  Cache.subscript.getter(a2, a3, v14);
  return Cache.subscript.modify;
}

void Cache.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  if (a2)
  {
    v5 = v2[7];
    v11 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v10 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v11);
    Cache.subscript.setter(v7, v3, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    Cache.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

id specialized Cache.WrappedKey.init(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  (*(*(v4 - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)], a1, v4);
  v5 = type metadata accessor for Cache.WrappedKey(0, v4, *((v3 & v2) + 0x58), *((v3 & v2) + 0x60));
  v7.receiver = v1;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

id specialized Cache.WrappedValue.init(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  (*(*(v4 - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)], a1, v4);
  v5 = type metadata accessor for Cache.WrappedValue(0, *((v3 & v2) + 0x50), v4, *((v3 & v2) + 0x60));
  v7.receiver = v1;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t type metadata instantiation function for Cache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Cache(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for Cache(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for Cache.WrappedKey(uint64_t a1)
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

uint64_t type metadata completion function for Cache.WrappedValue(uint64_t a1)
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

unint64_t Notification.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000056;
  }

  else
  {
    return 0xD00000000000003ALL;
  }
}

CopresenceCore::Notification_optional __swiftcall Notification.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Notification.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CopresenceCore_Notification_conversationManagerHostShouldConnectIfCanBypassSharePlayRestriction;
  }

  else
  {
    v4.value = CopresenceCore_Notification_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Notification(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000056;
  }

  else
  {
    v3 = 0xD00000000000003ALL;
  }

  if (v2)
  {
    v4 = "com.apple.facetime";
  }

  else
  {
    v4 = "nmanagerhost.shouldconnect";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000056;
  }

  else
  {
    v6 = 0xD00000000000003ALL;
  }

  if (*a2)
  {
    v7 = "nmanagerhost.shouldconnect";
  }

  else
  {
    v7 = "com.apple.facetime";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t lazy protocol witness table accessor for type Notification and conformance Notification()
{
  result = lazy protocol witness table cache variable for type Notification and conformance Notification;
  if (!lazy protocol witness table cache variable for type Notification and conformance Notification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Notification and conformance Notification);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Notification()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Notification(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Notification(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Notification@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Notification.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance Notification(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000056;
  }

  else
  {
    v2 = 0xD00000000000003ALL;
  }

  if (*v1)
  {
    v3 = "nmanagerhost.shouldconnect";
  }

  else
  {
    v3 = "com.apple.facetime";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void *PubSubTopicReporter.__allocating_init(queue:reportReadyCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = v7;
  return result;
}

uint64_t PubSubTopicReporter.reportReadyCallback.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *PubSubTopicReporter.init(queue:reportReadyCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC8];
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = v4;
  return v3;
}

uint64_t PubSubTopicReporter.getOrCreateConversationReport(tag:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v3[2];
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v13 = (*(*v3 + 104))(result);
    if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v15 & 1) != 0))
    {
      v16 = *(*(v13 + 56) + 8 * v14);
    }

    else
    {
      type metadata accessor for PubSubTopicReporter.ConversationReport();
      v16 = swift_allocObject();

      PubSubTopicReporter.ConversationReport.init(coversationUUID:)(a1, a2);
    }

    v17 = *(*v3 + 120);

    v18 = v17(v24);
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v20;
    *v20 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a1, a2, isUniquelyReferenced_nonNull_native);

    *v20 = v23;
    v18(v24, 0);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopicReporter.ConversationReport.__allocating_init(coversationUUID:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  PubSubTopicReporter.ConversationReport.init(coversationUUID:)(a1, a2);
  return v4;
}

uint64_t closure #1 in PubSubTopicReporter.recordInitializeAckOkLatency(latencyMillis:withTag:forTopic:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = PubSubTopicReporter.getOrCreateConversationReport(tag:)(a2, a3);
    v13 = (*(*v12 + 120))(a4, a5);

    v15 = (*(*v13 + 112))(v14);
    if (v15)
    {
      if ((*(*v15 + 256))(a6))
      {
      }

      else
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, ::log);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          log = v17;
          v22 = swift_slowAlloc();
          v20 = v22;
          *v19 = 136315394;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v22);
          *(v19 + 12) = 2080;
          *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v22);
          _os_log_impl(&dword_1AEB26000, log, v18, "[Reporter] InitializeAckOk latency omitted, topic=%s tag=%s", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v20, -1, -1);
          MEMORY[0x1B27120C0](v19, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t PubSubTopicReporter.recordInitializeAckOkLatency(latencyMillis:withTag:forTopic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v26 = a1;
  v27 = a4;
  v25 = a2;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v15 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v8 + 16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v20 = v25;
  v19[2] = v18;
  v19[3] = v20;
  v21 = v26;
  v22 = v27;
  v19[4] = a3;
  v19[5] = v22;
  v19[6] = a5;
  v19[7] = v21;
  aBlock[4] = v28;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v29;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v17, v14, v23);
  _Block_release(v23);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v31);
}

uint64_t closure #1 in PubSubTopicReporter.recordPublishAckLatency(latencyMillis:withTag:forTopic:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = PubSubTopicReporter.getOrCreateConversationReport(tag:)(a2, a3);
    v13 = (*(*v12 + 120))(a4, a5);

    v14 = *(v13 + 48);
    if (v14)
    {
      v15 = *(*v14 + 256);

      if (v15(a6))
      {
      }

      else
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, log);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v21 = v20;
          *v19 = 136315394;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v21);
          *(v19 + 12) = 2080;
          *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v21);
          _os_log_impl(&dword_1AEB26000, v17, v18, "[Reporter] Publish-ack latency omitted, topic=%s tag=%s", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v20, -1, -1);
          MEMORY[0x1B27120C0](v19, -1, -1);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #1 in PubSubTopicReporter.recordEndToEndRecordLatency(latencyMillis:withTag:forTopic:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = PubSubTopicReporter.getOrCreateConversationReport(tag:)(a2, a3);
    v13 = (*(*v12 + 120))(a4, a5);

    v14 = *(v13 + 40);
    if (v14)
    {
      v15 = *(*v14 + 256);

      if (v15(a6))
      {
      }

      else
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, log);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v21 = v20;
          *v19 = 136315394;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v21);
          *(v19 + 12) = 2080;
          *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v21);
          _os_log_impl(&dword_1AEB26000, v17, v18, "[Reporter] End-to-end record latency omitted, topic=%s tag=%s", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v20, -1, -1);
          MEMORY[0x1B27120C0](v19, -1, -1);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

Swift::Bool __swiftcall PubSubTopicReporter.emitAndRemoveReport(forTag:)(Swift::String forTag)
{
  v2 = v1;
  object = forTag._object;
  countAndFlagsBits = forTag._countAndFlagsBits;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2[2];
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  v13 = (*(*v2 + 104))(v12);
  if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v15 & 1) == 0))
  {

    return 0;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  v11 = (*(*v16 + 128))(v17);
  if (one-time initialization token for log != -1)
  {
    goto LABEL_15;
  }

LABEL_5:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, log);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v30);
    *(v21 + 12) = 2048;
    *(v21 + 14) = *(v11 + 16);

    _os_log_impl(&dword_1AEB26000, v19, v20, "[Reporter] Generating ConversationReport for tag=%s rtcReport-count=%ld", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1B27120C0](v22, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  else
  {
  }

  PubSubTopicReporter.dumpReportSnapshot()();
  v24 = *(v11 + 16);
  if (v24)
  {
    v25 = v2[3];
    v26 = (v11 + 32);
    do
    {
      v27 = *v26++;

      v25(countAndFlagsBits, object, v27);

      --v24;
    }

    while (v24);
  }

  v23 = PubSubTopicReporter.removeReport(forTag:)(countAndFlagsBits, object);

  return v23;
}

BOOL PubSubTopicReporter.removeReport(forTag:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2[2];
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v11 = (*(*v2 + 120))(v18);
  v5 = specialized Dictionary._Variant.removeValue(forKey:)(a1, a2);
  v11(v18, 0);
  if (!v5)
  {
    return v5 != 0;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, log);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v18);
    _os_log_impl(&dword_1AEB26000, v13, v14, "[Reporter] Removing ConversationReport for tag=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  return v5 != 0;
}

void PubSubTopicReporter.dumpReportSnapshot()()
{
  v1 = (*(*v0 + 104))();
  v2 = 0;
  v3 = v1 + 64;
  v35 = v1;
  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v33 = v7;
  v34 = v1 + 64;
LABEL_6:
  if (v6)
  {
    v8 = v2;
  }

  else
  {
    do
    {
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_30;
      }

      if (v8 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v8);
      ++v2;
    }

    while (!v6);
  }

  v36 = v8;
  v37 = (v6 - 1) & v6;
  v9 = __clz(__rbit64(v6)) | (v8 << 6);
  v10 = (*(v35 + 48) + 16 * v9);
  v40 = *v10;
  v11 = *(**(*(v35 + 56) + 8 * v9) + 88);
  v42 = v10[1];

  v13 = v11(v12);
  v14 = v13;
  v15 = 0;
  v16 = v13 + 64;
  v17 = 1 << *(v13 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v13 + 64);
  v20 = (v17 + 63) >> 6;
  v38 = v20;
  v39 = v13;
  if (v19)
  {
    while (2)
    {
      v21 = v15;
LABEL_21:
      v22 = *(*(v14 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v19)))));
      v23 = one-time initialization token for log;

      if (v23 != -1)
      {
        swift_once();
      }

      v19 &= v19 - 1;
      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, log);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      v41 = v26;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v43 = v28;
        *v27 = 136315394;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v43);
        *(v27 + 12) = 2080;
        v29 = (*(*v22 + 152))();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v43);

        *(v27 + 14) = v31;
        v20 = v38;
        _os_log_impl(&dword_1AEB26000, v25, v41, "[Reporter] PubSubTopicReporter tag=%s report=%s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v28, -1, -1);
        v32 = v27;
        v14 = v39;
        MEMORY[0x1B27120C0](v32, -1, -1);

        v15 = v21;
        if (v19)
        {
          continue;
        }
      }

      else
      {

        v15 = v21;
        if (v19)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      v2 = v36;
      v6 = v37;
      v7 = v33;
      v3 = v34;
      goto LABEL_6;
    }

    v19 = *(v16 + 8 * v21);
    ++v15;
    if (v19)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t PubSubTopicReporter.deinit()
{

  return v0;
}

uint64_t PubSubTopicReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PubSubTopicReporter.ConversationReport.topicReports.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t PubSubTopicReporter.ConversationReport.init(coversationUUID:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, log);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v7, v8, "[Reporter] Creating ConversationReport for conversationUUID=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t PubSubTopicReporter.ConversationReport.getOrCreateTopicReport(topic:)(uint64_t a1, unint64_t a2)
{
  v5 = (*(*v2 + 88))();
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    type metadata accessor for PubSubTopicReporter.PubSubTopicReport();
    v8 = swift_allocObject();

    PubSubTopicReporter.PubSubTopicReport.init(name:)(a1, a2);
  }

  v9 = *(*v2 + 104);

  v10 = v9(v16);
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v12;
  *v12 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, a2, isUniquelyReferenced_nonNull_native);

  *v12 = v15;
  v10(v16, 0);
  return v8;
}

uint64_t PubSubTopicReporter.PubSubTopicReport.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  PubSubTopicReporter.PubSubTopicReport.init(name:)(a1, a2);
  return v4;
}

uint64_t PubSubTopicReporter.ConversationReport.rtcReports.getter()
{
  v1 = (*(*v0 + 88))();
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v16 = v1;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_8;
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

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = *(**(*(v16 + 56) + 8 * (__clz(__rbit64(v5)) | (v8 << 6))) + 144);

        v13 = v11(v12);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
          v9 = result;
        }

        v15 = v9[2];
        v14 = v9[3];
        if (v15 >= v14 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
          v9 = result;
        }

        v5 &= v5 - 1;
        v9[2] = v15 + 1;
        v9[v15 + 4] = v13;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t static PubSubTopicReporter.ConversationReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 88))();
  v4 = (*(*a2 + 88))();
  v5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14CopresenceCore19PubSubTopicReporterC0deF6ReportCTt1g5(v3, v4);

  return v5 & 1;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14CopresenceCore19PubSubTopicReporterC0deF6ReportCTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_13:
    v13 = v9 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_39;
    }

    v21 = *(*(v2 + 56) + 8 * v18);
    v22 = v21[2] == v17[2] && v21[3] == v17[3];
    if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_39;
    }

    v35 = v10;
    v23 = v2;
    v24 = *(*v21 + 112);

    v26 = v24(v25);
    v27 = (*(*v17 + 112))();
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_38;
      }

      v28 = specialized static Histogram.== infix(_:_:)(v26, v27);

      if ((v28 & 1) == 0)
      {
LABEL_36:

LABEL_39:

        return 0;
      }
    }

    else if (v27)
    {
LABEL_38:

      goto LABEL_39;
    }

    v29 = v21[5];
    v30 = v17[5];
    if (v29)
    {
      if (!v30)
      {
        goto LABEL_36;
      }

      v2 = v23;

      v31 = specialized static Histogram.== infix(_:_:)(v29, v30);

      if ((v31 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v2 = v23;
      if (v30)
      {
        goto LABEL_36;
      }
    }

    v32 = v21[6];
    v33 = v17[6];
    if (v32)
    {
      v7 = v35;
      if (!v33)
      {
        goto LABEL_36;
      }

      v34 = specialized static Histogram.== infix(_:_:)(v32, v33);

      result = 0;
      if ((v34 & 1) == 0)
      {
        return result;
      }
    }

    else
    {

      result = 0;
      v7 = v35;
      if (v33)
      {
        return result;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_ADTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SiTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_14CopresenceCore017AttachmentLedger_E10EncryptionVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v102 = (&v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v93 - v8);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v103);
  v11 = &v93 - v10;
  v12 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v110 = (&v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v93 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetSgMd, &_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetSgMR);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v106 = (&v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v20);
  v109 = (&v93 - v23);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v104 = v4;
  v105 = v11;
  v97 = a2;
  v98 = v9;
  v24 = 0;
  v25 = *(a1 + 64);
  v94 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v95 = v29;
  v96 = a1;
  v99 = (v5 + 48);
  v100 = 0;
  while (v28)
  {
    v30 = v17;
    v108 = (v28 - 1) & v28;
    v31 = __clz(__rbit64(v28)) | (v24 << 6);
    v32 = v104;
    v33 = v105;
LABEL_16:
    v39 = *(a1 + 56);
    v40 = *(*(a1 + 48) + 8 * v31);
    v41 = v101;
    outlined init with copy of AttachmentLedger_AttachmentEncryption(v39 + *(v111 + 72) * v31, v101);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMd, &_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMR);
    v43 = *(v42 + 48);
    v44 = v106;
    *v106 = v40;
    v45 = v44;
    outlined init with take of AttachmentLedger_AttachmentEncryption(v41, v44 + v43, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    (*(*(v42 - 8) + 56))(v45, 0, 1, v42);
    v17 = v30;
    v36 = v109;
LABEL_17:
    outlined init with take of (key: UInt64, value: AttachmentLedger_AttachmentEncryption)?(v45, v36);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMd, &_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMR);
    v47 = (*(*(v46 - 8) + 48))(v36, 1, v46) == 1;
    result = v47;
    v48 = v110;
    if (v47)
    {
      return result;
    }

    v107 = v47;
    v49 = *(v46 + 48);
    v50 = *v36;
    outlined init with take of AttachmentLedger_AttachmentEncryption(v36 + v49, v17, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(v50);
    if ((v52 & 1) == 0)
    {
      goto LABEL_86;
    }

    outlined init with copy of AttachmentLedger_AttachmentEncryption(*(a2 + 56) + *(v111 + 72) * v51, v48);
    v53 = *(v112 + 28);
    v54 = *(v103 + 48);
    outlined init with copy of AttachmentLedger_EncryptionID?(v48 + v53, v33);
    outlined init with copy of AttachmentLedger_EncryptionID?(v17 + v53, v33 + v54);
    v55 = *v99;
    if ((*v99)(v33, 1, v32) == 1)
    {
      if (v55(v33 + v54, 1, v32) != 1)
      {
        goto LABEL_84;
      }

      result = outlined destroy of NSObject?(v33, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
      goto LABEL_52;
    }

    v56 = v98;
    outlined init with copy of AttachmentLedger_EncryptionID?(v33, v98);
    if (v55(v33 + v54, 1, v32) == 1)
    {
      outlined destroy of AttachmentLedger_AttachmentEncryption(v56, type metadata accessor for AttachmentLedger_EncryptionID);
      v48 = v110;
LABEL_84:
      outlined destroy of NSObject?(v33, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR);
      goto LABEL_85;
    }

    v57 = v33 + v54;
    v58 = v102;
    result = outlined init with take of AttachmentLedger_AttachmentEncryption(v57, v102, type metadata accessor for AttachmentLedger_EncryptionID);
    v59 = *v56;
    v60 = v56[1];
    v61 = *v58;
    v62 = v58[1];
    v63 = v60 >> 62;
    v64 = v62 >> 62;
    if (v60 >> 62 == 3)
    {
      v65 = 0;
      if (!v59 && v60 == 0xC000000000000000 && v62 >> 62 == 3)
      {
        v65 = 0;
        if (!v61 && v62 == 0xC000000000000000)
        {
          goto LABEL_51;
        }
      }
    }

    else if (v63)
    {
      if (v63 == 1)
      {
        LODWORD(v65) = HIDWORD(v59) - v59;
        if (__OFSUB__(HIDWORD(v59), v59))
        {
          goto LABEL_97;
        }

        v65 = v65;
      }

      else
      {
        v68 = *(v59 + 16);
        v67 = *(v59 + 24);
        v69 = __OFSUB__(v67, v68);
        v65 = v67 - v68;
        if (v69)
        {
          goto LABEL_96;
        }
      }
    }

    else
    {
      v65 = BYTE6(v60);
    }

    if (v64 <= 1)
    {
      if (v64)
      {
        LODWORD(v70) = HIDWORD(v61) - v61;
        if (__OFSUB__(HIDWORD(v61), v61))
        {
          goto LABEL_95;
        }

        v70 = v70;
      }

      else
      {
        v70 = BYTE6(v62);
      }

LABEL_46:
      if (v65 != v70 || v65 >= 1 && (outlined copy of Data._Representation(v61, v62), v73 = v100, v74 = specialized Data.withUnsafeBytes<A>(_:)(v59, v60, v61, v62), v100 = v73, (v74 & 1) == 0))
      {
LABEL_82:
        outlined destroy of AttachmentLedger_AttachmentEncryption(v102, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of AttachmentLedger_AttachmentEncryption(v98, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of NSObject?(v105, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
        v48 = v110;
LABEL_85:
        outlined destroy of AttachmentLedger_AttachmentEncryption(v48, type metadata accessor for AttachmentLedger_AttachmentEncryption);
LABEL_86:
        outlined destroy of AttachmentLedger_AttachmentEncryption(v17, type metadata accessor for AttachmentLedger_AttachmentEncryption);
        return 0;
      }

      goto LABEL_51;
    }

    if (v64 == 2)
    {
      v72 = *(v61 + 16);
      v71 = *(v61 + 24);
      v69 = __OFSUB__(v71, v72);
      v70 = v71 - v72;
      if (v69)
      {
        goto LABEL_94;
      }

      goto LABEL_46;
    }

    if (v65)
    {
      goto LABEL_82;
    }

LABEL_51:
    type metadata accessor for UnknownStorage();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v75 = v98;
    v76 = v102;
    v77 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AttachmentLedger_AttachmentEncryption(v76, type metadata accessor for AttachmentLedger_EncryptionID);
    outlined destroy of AttachmentLedger_AttachmentEncryption(v75, type metadata accessor for AttachmentLedger_EncryptionID);
    result = outlined destroy of NSObject?(v105, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    v48 = v110;
    if ((v77 & 1) == 0)
    {
      goto LABEL_85;
    }

LABEL_52:
    v78 = *v48;
    v79 = v48[1];
    v81 = *v17;
    v80 = v17[1];
    v82 = v79 >> 62;
    v83 = v80 >> 62;
    if (v79 >> 62 == 3)
    {
      v84 = 0;
      if (!v78 && v79 == 0xC000000000000000 && v80 >> 62 == 3)
      {
        v84 = 0;
        if (!v81 && v80 == 0xC000000000000000)
        {
          goto LABEL_78;
        }
      }

LABEL_65:
      if (v83 <= 1)
      {
        goto LABEL_66;
      }

      goto LABEL_71;
    }

    if (v82 == 2)
    {
      v86 = *(v78 + 16);
      v85 = *(v78 + 24);
      v69 = __OFSUB__(v85, v86);
      v84 = v85 - v86;
      if (v69)
      {
        goto LABEL_92;
      }

      goto LABEL_65;
    }

    if (v82 == 1)
    {
      LODWORD(v84) = HIDWORD(v78) - v78;
      if (__OFSUB__(HIDWORD(v78), v78))
      {
        goto LABEL_93;
      }

      v84 = v84;
      if (v83 <= 1)
      {
LABEL_66:
        if (v83)
        {
          LODWORD(v87) = HIDWORD(v81) - v81;
          if (__OFSUB__(HIDWORD(v81), v81))
          {
            goto LABEL_91;
          }

          v87 = v87;
        }

        else
        {
          v87 = BYTE6(v80);
        }

        goto LABEL_73;
      }
    }

    else
    {
      v84 = BYTE6(v79);
      if (v83 <= 1)
      {
        goto LABEL_66;
      }
    }

LABEL_71:
    if (v83 != 2)
    {
      if (v84)
      {
        goto LABEL_85;
      }

      goto LABEL_78;
    }

    v89 = *(v81 + 16);
    v88 = *(v81 + 24);
    v69 = __OFSUB__(v88, v89);
    v87 = v88 - v89;
    if (v69)
    {
      goto LABEL_90;
    }

LABEL_73:
    if (v84 != v87)
    {
      goto LABEL_85;
    }

    if (v84 >= 1)
    {
      outlined copy of Data._Representation(*v17, v17[1]);
      v90 = v100;
      v91 = specialized Data.withUnsafeBytes<A>(_:)(v78, v79, v81, v80);
      v100 = v90;
      if ((v91 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

LABEL_78:
    if (v48[2] != v17[2])
    {
      goto LABEL_85;
    }

    type metadata accessor for UnknownStorage();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v92 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AttachmentLedger_AttachmentEncryption(v48, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    outlined destroy of AttachmentLedger_AttachmentEncryption(v17, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    a1 = v96;
    a2 = v97;
    v29 = v95;
    v28 = v108;
    result = v107;
    if ((v92 & 1) == 0)
    {
      return result;
    }
  }

  if (v29 <= v24 + 1)
  {
    v34 = v24 + 1;
  }

  else
  {
    v34 = v29;
  }

  v35 = v34 - 1;
  v32 = v104;
  v33 = v105;
  v36 = v109;
  while (1)
  {
    v37 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v37 >= v29)
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMd, &_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetMR);
      v45 = v106;
      (*(*(v66 - 8) + 56))(v106, 1, 1, v66);
      v108 = 0;
      v24 = v35;
      goto LABEL_17;
    }

    v38 = *(v94 + 8 * v37);
    ++v24;
    if (v38)
    {
      v30 = v17;
      v108 = (v38 - 1) & v38;
      v31 = __clz(__rbit64(v38)) | (v37 << 6);
      v24 = v37;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t PubSubTopicReporter.ConversationReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PubSubTopicReporter.ConversationReport(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 88))();
  v4 = (*(*v2 + 88))();
  v5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14CopresenceCore19PubSubTopicReporterC0deF6ReportCTt1g5(v3, v4);

  return v5 & 1;
}

uint64_t PubSubTopicReporter.PubSubTopicReport.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PubSubTopicReporter.PubSubTopicReport.initializeAckOkLatency.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void *PubSubTopicReporter.PubSubTopicReport.init(name:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  type metadata accessor for Histogram(0);
  swift_allocObject();
  v2[4] = Histogram.init(buckets:log:)(&outlined read-only object #0 of one-time initialization function for defaultPubSubInitializeAckLatencyBuckets, v8);
  v10(v8, 1, 1, v9);
  swift_allocObject();
  v2[5] = Histogram.init(buckets:log:)(&outlined read-only object #0 of one-time initialization function for defaultAVCLatencyBuckets, v8);
  v10(v8, 1, 1, v9);
  swift_allocObject();
  v2[6] = Histogram.init(buckets:log:)(&outlined read-only object #0 of one-time initialization function for defaultAVCLatencyBuckets, v8);
  v2[2] = a1;
  v2[3] = a2;
  v11 = one-time initialization token for log;

  if (v11 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, log);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v19);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_1AEB26000, v12, v13, "[Reporter] Creating PubSubTopicReport for topic=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t PubSubTopicReporter.PubSubTopicReport.rtcReport.getter()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC8];
  v21 = MEMORY[0x1E69E7CC8];
  v3 = (*(*v0 + 112))();
  v4 = MEMORY[0x1E69E6158];
  if (v3)
  {
    v5 = Histogram.rtcRepresentation.getter();
    v7 = v6;

    v20 = v4;
    *&v19 = v5;
    *(&v19 + 1) = v7;
    outlined init with take of Any(&v19, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000020, 0x80000001AEE2EC00, isUniquelyReferenced_nonNull_native);
    v21 = v2;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000020, 0x80000001AEE2EC00, &v19);
    outlined destroy of NSObject?(&v19, &_sypSgMd, &_sypSgMR);
  }

  if (v0[5])
  {
    v9 = Histogram.rtcRepresentation.getter();
    v20 = v4;
    *&v19 = v9;
    *(&v19 + 1) = v10;
    outlined init with take of Any(&v19, v18);
    v11 = v21;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD00000000000001FLL, 0x80000001AEE2EC30, v12);
    v21 = v11;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD00000000000001FLL, 0x80000001AEE2EC30, &v19);
    outlined destroy of NSObject?(&v19, &_sypSgMd, &_sypSgMR);
  }

  if (v1[6])
  {
    v13 = Histogram.rtcRepresentation.getter();
    v20 = v4;
    *&v19 = v13;
    *(&v19 + 1) = v14;
    outlined init with take of Any(&v19, v18);
    v15 = v21;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000020, 0x80000001AEE2EC50, v16);
    return v15;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000020, 0x80000001AEE2EC50, &v19);
    outlined destroy of NSObject?(&v19, &_sypSgMd, &_sypSgMR);
    return v21;
  }
}

unint64_t PubSubTopicReporter.PubSubTopicReport.debugDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  MEMORY[0x1B2710020](v0[2], v0[3]);
  _StringGuts.grow(_:)(27);

  v4 = (*(*v0 + 112))(v3);
  if (v4)
  {
    (*(*v4 + 296))(v4);

    v5 = String.init<A>(reflecting:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1B2710020](v5, v7);

  _StringGuts.grow(_:)(26);

  v9 = v0[5];
  if (v9)
  {
    (*(*v9 + 296))(v8);
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x1B2710020](v10, v12);

  _StringGuts.grow(_:)(22);

  v14 = v1[6];
  if (v14)
  {
    (*(*v14 + 296))(v13);
    v2 = String.init<A>(reflecting:)();
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  MEMORY[0x1B2710020](v2, v16);

  _StringGuts.grow(_:)(30);

  MEMORY[0x1B2710020](0x3D656D616ELL, 0xE500000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000019, 0x80000001AEE32BD0);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE32BF0);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE32C10);

  return 0xD000000000000013;
}

uint64_t PubSubTopicReporter.PubSubTopicReport.deinit()
{

  return v0;
}

uint64_t PubSubTopicReporter.PubSubTopicReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized static PubSubTopicReporter.PubSubTopicReport.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = (*(*a1 + 112))();
  v6 = (*(*a2 + 112))();
  if (v5)
  {
    if (!v6)
    {
      v8 = 0;
      goto LABEL_19;
    }

    v7 = specialized static Histogram.== infix(_:_:)(v5, v6);

    if ((v7 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v6)
  {
    v8 = 0;
LABEL_19:

    return v8 & 1;
  }

  v9 = a1[5];
  v10 = a2[5];
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_21:
    v8 = 0;
    return v8 & 1;
  }

  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = specialized static Histogram.== infix(_:_:)(v9, v10);

  if ((v11 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v12 = a1[6];
  v13 = a2[6];
  v8 = (v12 | v13) == 0;
  if (v12 && v13)
  {

    v8 = specialized static Histogram.== infix(_:_:)(v12, v13);
    goto LABEL_19;
  }

  return v8 & 1;
}

uint64_t outlined init with copy of AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: UInt64, value: AttachmentLedger_AttachmentEncryption)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetSgMd, &_ss6UInt64V3key_14CopresenceCore017AttachmentLedger_E10EncryptionV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AttachmentLedger_EncryptionID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)();
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for NWEndpoint();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of NSObject?(a1, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      specialized _NativeDictionary._delete(at:)(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return outlined destroy of NSObject?(v8, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of NSObject?(a1, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v17 = v21;
      }

      outlined init with take of AttachmentLedger_AttachmentEncryption(*(v17 + 56) + *(v10 + 72) * v15, v8);
      specialized _NativeDictionary._delete(at:)(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  else
  {
    outlined init with take of AttachmentLedger_AttachmentEncryption(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of NSObject?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      specialized _NativeDictionary._delete(at:)(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        specialized _NativeDictionary.copy()();
        v15 = v17;
      }

      swift_unknownObjectRelease();
      result = specialized _NativeDictionary._delete(at:)();
      *v5 = v15;
    }
  }

  return result;
}

{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        specialized _NativeDictionary.copy()();
        v15 = v17;
      }

      result = specialized _NativeDictionary._delete(at:)();
      *v5 = v15;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of ContiguousBytes(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    outlined destroy of NSObject?(a1, &_s14CopresenceCore16ProcessAssertion_pSgMd, &_s14CopresenceCore16ProcessAssertion_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of NSObject?(v9, &_s14CopresenceCore16ProcessAssertion_pSgMd, &_s14CopresenceCore16ProcessAssertion_pSgMR);
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = type metadata accessor for UUID();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        specialized _NativeDictionary.copy()();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = type metadata accessor for UUID();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      specialized _NativeDictionary._delete(at:)(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = type metadata accessor for UUID();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of ContiguousBytes(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    outlined destroy of NSObject?(a1, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMd, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of NSObject?(v9, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMd, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMR);
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
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
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
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    swift_dynamicCast();
    v17 = v22[0];
    v15 = v8;
    v16 = v9;
    if (!v22[0])
    {
LABEL_24:
      v5 = v20;
LABEL_23:
      outlined consume of Set<String>.Iterator._Variant(v5);
      return;
    }

LABEL_19:
    v22[0] = v17;
    a1(&v21, v22);
    if (v4)
    {

      outlined consume of Set<String>.Iterator._Variant(v20);

      return;
    }

    if (v21)
    {
      MEMORY[0x1B2710150]();
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

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
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

  v9 = MEMORY[0x1E69E7CC0];
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
LABEL_22:
      outlined consume of Set<String>.Iterator._Variant(v23);
      return v9;
    }

    while (1)
    {
      v15 = [v14 handle];
      v16 = [v15 value];

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
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        swift_dynamicCast();
        v14 = v29;
        v12 = v4;
        v13 = v5;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_22;
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
      goto LABEL_22;
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

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
LABEL_11:
    v14 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v15 = v14[1];
    v18[0] = *v14;
    v18[1] = v15;

    a1(&v17, v18);
    if (v3)
    {

      return v5;
    }

    if (v17)
    {
      MEMORY[0x1B2710150](result);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v19;
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo29TUConversationActivitySessionCG_14CopresenceCore05BiomeF7DonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLV0eF0Vs5NeverOTg504_s14g6Core19ifj3C32kl14Information33_nopqrst39LLV16activitySessions7membersAFShySo022dE29D0CG_SaySSGtcfcAF0tD0VAJXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v49 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v3 = v49;
    if (v41)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v4 = _HashTable.startBucket.getter();
      v5 = *(v1 + 36);
    }

    v46 = v4;
    v47 = v5;
    v48 = v41 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v38 = v1 + 56;
      v37 = v1 + 64;
      v39 = v2;
      v40 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_38;
        }

        v9 = v46;
        v10 = v48;
        v42 = v47;
        specialized Set.subscript.getter(v46, v47, v48, v1);
        v12 = v11;
        v13 = [v11 activity];
        v14 = [v13 bundleIdentifier];

        if (v14)
        {
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v16;
          v44 = v15;
        }

        else
        {
          v43 = 0;
          v44 = 0;
        }

        v17 = [v12 activity];
        v18 = [v17 activityIdentifier];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = [v12 state];
        v23 = v3;
        v49 = v3;
        v24 = *(v3 + 16);
        v25 = *(v23 + 24);
        if (v24 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v24 + 1, 1);
          v23 = v49;
        }

        *(v23 + 16) = v24 + 1;
        v26 = v23 + 40 * v24;
        *(v26 + 32) = v44;
        *(v26 + 40) = v43;
        *(v26 + 48) = v19;
        *(v26 + 56) = v21;
        *(v26 + 64) = v22 == 1;
        if (v41)
        {
          v1 = v40;
          if (!v10)
          {
            goto LABEL_43;
          }

          v3 = v23;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo29TUConversationActivitySessionC_GMd, &_sSh5IndexVySo29TUConversationActivitySessionC_GMR);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v45, 0);
          if (v6 == v39)
          {
LABEL_35:
            outlined consume of Set<AddressableMember>.Index._Variant(v46, v47, v48);
            return;
          }
        }

        else
        {
          v1 = v40;
          if (v10)
          {
            goto LABEL_44;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v27 = 1 << *(v40 + 32);
          if (v9 >= v27)
          {
            goto LABEL_39;
          }

          v3 = v23;
          v28 = v9 >> 6;
          v29 = *(v38 + 8 * (v9 >> 6));
          if (((v29 >> v9) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v40 + 36) != v42)
          {
            goto LABEL_41;
          }

          v30 = v29 & (-2 << (v9 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v39;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v37 + 8 * v28);
            v2 = v39;
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                outlined consume of Set<AddressableMember>.Index._Variant(v9, v42, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_34;
              }
            }

            outlined consume of Set<AddressableMember>.Index._Variant(v9, v42, 0);
          }

LABEL_34:
          v36 = *(v40 + 36);
          v46 = v27;
          v47 = v36;
          v48 = 0;
          if (v6 == v2)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t key path getter for BiomeSessionDonator.biomeStreamSender : BiomeSessionDonator@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed BMGroupActivitySessionEvent) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for BiomeSessionDonator.biomeStreamSender : BiomeSessionDonator(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMGroupActivitySessionEvent) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return v7(v6, v5);
}

uint64_t BiomeSessionDonator.biomeStreamSender.getter()
{
  v1 = (v0 + OBJC_IVAR___CPBiomeSessionDonator_biomeStreamSender);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t BiomeSessionDonator.biomeStreamSender.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CPBiomeSessionDonator_biomeStreamSender);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v6, v7);
}

char *BiomeSessionDonator.init(dataSource:parentQueue:)(void *a1, void *a2)
{
  v3 = v2;
  v33 = a2;
  v34 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v32 = OBJC_IVAR___CPBiomeSessionDonator_publishQueue;
  v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v27[0] = "publishAckLatency";
  v27[1] = v10;
  static DispatchQoS.utility.getter();
  v37 = MEMORY[0x1E69E7CC0];
  v31 = _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v29 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = *MEMORY[0x1E69E8090];
  v12 = *(v36 + 104);
  v36 += 104;
  v28 = v12;
  v13 = v7;
  v12(v7, v11, v35);
  *&v32[v2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = OBJC_IVAR___CPBiomeSessionDonator_biomeStream;
  v15 = v3;
  *&v3[v14] = [objc_allocWithZone(MEMORY[0x1E698F290]) init];
  v16 = &v3[OBJC_IVAR___CPBiomeSessionDonator_biomeStreamSender];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR___CPBiomeSessionDonator_oldConversationInformation;
  v18 = MEMORY[0x1E69E7CC0];
  *&v15[v17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_14CopresenceCore19BiomeSessionDonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v32 = v33;
  static DispatchQoS.unspecified.getter();
  v37 = v18;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28(v13, v11, v35);
  *&v15[OBJC_IVAR___CPBiomeSessionDonator_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = type metadata accessor for BiomeSessionDonator();
  v38.receiver = v15;
  v38.super_class = v19;
  v20 = objc_msgSendSuper2(&v38, sel_init);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = &v20[OBJC_IVAR___CPBiomeSessionDonator_biomeStreamSender];
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  *v22 = partial apply for closure #1 in BiomeSessionDonator.init(dataSource:parentQueue:);
  v22[1] = v21;
  v25 = v20;

  _sxRi_zRi0_zlyytIseghHr_SgWOe(v23, v24);

  [v34 addObserver:v25 queue:*&v25[OBJC_IVAR___CPBiomeSessionDonator_queue]];
  swift_unknownObjectRelease();

  return v25;
}

char *closure #1 in BiomeSessionDonator.init(dataSource:parentQueue:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *&result[OBJC_IVAR___CPBiomeSessionDonator_publishQueue];
    v20 = v8;
    v14 = result;
    v19 = v13;

    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in BiomeSessionDonator.init(dataSource:parentQueue:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_26;
    v16 = _Block_copy(aBlock);

    v17 = a1;
    static DispatchQoS.unspecified.getter();
    v21 = MEMORY[0x1E69E7CC0];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19;
    MEMORY[0x1B27106E0](0, v11, v7, v16);
    _Block_release(v16);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v20);
  }

  return result;
}

void closure #1 in closure #1 in BiomeSessionDonator.init(dataSource:parentQueue:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___CPBiomeSessionDonator_biomeStream);

    v6 = [v5 source];
    [v6 sendEvent_];
  }
}

uint64_t BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t *a5)
{
  v6 = v5;
  v61 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v14);

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo29TUConversationActivitySessionCG_14CopresenceCore05BiomeF7DonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLV0eF0Vs5NeverOTg504_s14g6Core19ifj3C32kl14Information33_nopqrst39LLV16activitySessions7membersAFShySo022dE29D0CG_SaySSGtcfcAF0tD0VAJXEfU_Tf1cn_n(a2);
  v17 = v16;
  v18 = OBJC_IVAR___CPBiomeSessionDonator_oldConversationInformation;
  swift_beginAccess();
  v19 = *(v5 + v18);
  v20 = *(v19 + 16);
  v62 = a2;
  if (!v20)
  {
LABEL_8:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v6 + v18);
    *(v6 + v18) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v15, a1, isUniquelyReferenced_nonNull_native);
    *(v6 + v18) = v64;
    v30 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v30);
    *(&v53 - 2) = a3;
    *(&v53 - 1) = a4;
    specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:), (&v53 - 4), a2);
    v32 = v31;
    v59 = 0;
    v60 = a4;
    if (v31 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v34 = 0;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1B2710B10](v34, v32);
        }

        else
        {
          if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v35 = *(v32 + 8 * v34 + 32);
        }

        v36 = v35;
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v38 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x78))();
        if (v38)
        {
          v40 = v38;
          v41 = v39;
          v38(v36);

          _sxRi_zRi0_zlyytIseghHr_SgWOe(v40, v41);
        }

        else
        {
        }

        ++v34;
        if (v37 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    v42 = v61;
    v43 = v61;
    v44 = v60;

    specialized Sequence.compactMap<A>(_:)(v62, v44, v42);
    v46 = v45;

    if (v46 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
      }
    }

    else if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    aBlock[4] = partial apply for closure #4 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:);
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_11;
    v48 = _Block_copy(aBlock);
    v49 = v53;
    static DispatchQoS.unspecified.getter();
    v64 = MEMORY[0x1E69E7CC0];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v50 = v55;
    v51 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v49, v50, v48);
    _Block_release(v48);
    (*(v57 + 8))(v50, v51);
    (*(v54 + 8))(v49, v56);
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v22 & 1) == 0)
  {

    goto LABEL_8;
  }

  v59 = a3;
  v23 = (*(v19 + 56) + 16 * v21);
  v24 = *v23;
  v25 = v23[1];

  v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19BiomeSessionDonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLV08ActivityE0V_Tt1g5(v17, v24);

  if ((v26 & 1) == 0)
  {

    a2 = v62;
    a3 = v59;
    goto LABEL_8;
  }

  v28 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v27, v25);

  a2 = v62;
  a3 = v59;
  if ((v28 & 1) == 0)
  {
    goto LABEL_8;
  }
}

void closure #1 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v77 = a2;
  v78 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v66 - v8;
  v10 = type metadata accessor for UUID();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v66 - v14;
  v16 = *a1;
  v17 = [*a1 activity];
  v18 = [v17 bundleIdentifier];

  if (v18)
  {
    v73 = a4;
    v74 = v4;
    v19 = [v16 activity];
    v20 = [v19 metadata];

    v71 = v9;
    v72 = v18;
    if (v20)
    {
      v21 = [v20 context];

      v22 = [v21 typedIdentifier];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v24;
      v69 = v23;
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Log.default);
      v27 = v16;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v80 = v70;
        *v30 = 136315138;
        v31 = [v27 activity];
        v32 = [v31 metadata];

        if (v32)
        {
          v79 = v32;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivityMetadata, 0x1E69D8B48);
          v33 = String.init<A>(reflecting:)();
          v35 = v34;
        }

        else
        {
          v35 = 0xE300000000000000;
          v33 = 7104878;
        }

        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v80);

        *(v30 + 4) = v36;
        _os_log_impl(&dword_1AEB26000, v28, v29, "Experience type for activity session is nil: %s", v30, 0xCu);
        v37 = v70;
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x1B27120C0](v37, -1, -1);
        MEMORY[0x1B27120C0](v30, -1, -1);
      }

      v68 = 0;
      v69 = 0;
    }

    v70 = [v16 state];
    v38 = [v16 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = UUID.uuidString.getter();
    v40 = v39;
    v42 = v75;
    v41 = v76;
    v43 = *(v75 + 8);
    v43(v15, v76);
    v44 = [v16 activity];
    v45 = v41;
    v46 = [v44 UUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = UUID.uuidString.getter();
    v49 = v48;
    v43(v13, v45);
    v50 = v71;
    outlined init with copy of UUID?(v77, v71);
    if ((*(v42 + 48))(v50, 1, v45) == 1)
    {
      outlined destroy of NSObject?(v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v53 = UUID.uuidString.getter();
      v54 = v45;
      v51 = v53;
      v52 = v55;
      v43(v50, v54);
    }

    if (v68)
    {
      v56 = v69;
    }

    else
    {
      v56 = 0;
    }

    if (v68)
    {
      v57 = v68;
    }

    else
    {
      v57 = 0xE000000000000000;
    }

    v58 = MEMORY[0x1B270FF70](v67, v40);

    v59 = MEMORY[0x1B270FF70](v47, v49);

    if (v52)
    {
      v60 = MEMORY[0x1B270FF70](v51, v52);
    }

    else
    {
      v60 = 0;
    }

    v61 = v70 == 1;
    v62 = objc_allocWithZone(MEMORY[0x1E698F288]);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v64 = MEMORY[0x1B270FF70](v56, v57);

    v65 = v72;
    v25 = [v62 initWithIsActive:v61 sourceBundleID:v72 activitySessionID:v58 activityID:v59 messagesChatGuid:v60 participantHandles:0 memberHandles:isa experienceType:v64];

    a4 = v73;
  }

  else
  {
    v25 = 0;
  }

  *a4 = v25;
}

void closure #3 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(id *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v66 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
  v13 = [*a1 activity];
  v14 = [v13 bundleIdentifier];

  if (!v14)
  {
    *a4 = 0;
    return;
  }

  v61 = a4;
  v15 = [objc_allocWithZone(MEMORY[0x1E69978D0]) init];
  [v15 setBundleId_];

  [v15 setTargetBundleId_];
  [v15 setDirection_];
  [v15 setMechanism_];
  v16 = [v11 activity];
  v17 = [v16 UUID];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  v21 = MEMORY[0x1B270FF70](v18, v20);

  [v15 setUuid_];

  v68 = a2;

  v22 = [v11 activity];
  v23 = [v22 originator];

  if (!v23)
  {
    v28 = a2;
    v35 = v61;
    v27 = v66;
    if (v66)
    {
      v36 = TUHandle.cdContact.getter();
    }

    else
    {
      v36 = 0;
    }

    v24 = v36;
    goto LABEL_24;
  }

  v24 = TUHandle.cdContact.getter();
  v7 = v23;
  v25 = v63;
  v26 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v68, v7);
  v27 = v25;

  v28 = v68;
  v22 = *(v68 + 2);
  v29 = v26 - v22;
  if (v26 > v22)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v26 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v63 = v25;
  v27 = v26;
  if (!__OFADD__(v22, v29))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v26 > *(v28 + 3) >> 1)
    {
      if (v22 <= v26)
      {
        v31 = v26;
      }

      else
      {
        v31 = v22;
      }

      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v31, 1, v28);
      v68 = v28;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v26, v22, 0);
    v22 = v66;
    if (v66)
    {
      v32 = [v66 normalizedValue];
      if (!v32)
      {
        v32 = [v22 value];
      }

      v33 = v32;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v34;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    v12 = *(v28 + 2);
    v29 = *(v28 + 3);
    v26 = v12 + 1;
    if (v12 < v29 >> 1)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v26, 1, v28);
LABEL_21:

  *(v28 + 2) = v26;
  v37 = &v28[16 * v12];
  *(v37 + 4) = v22;
  *(v37 + 5) = v27;
  v35 = v61;
LABEL_24:
  [v15 setSender_];

  v62 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC0];
  v38 = *(v28 + 2);
  if (v38)
  {
    v39 = 0;
    v40 = v28 + 40;
    v65 = *(v28 + 2);
    v57 = (v38 - 1);
    v62 = MEMORY[0x1E69E7CC0];
    v64 = v28;
    v59 = v24;
    v60 = v15;
    v58 = v28 + 40;
    do
    {
      v24 = &v40[16 * v39];
      v12 = v39;
      v26 = v65;
      while (1)
      {
        v29 = *(v28 + 2);
        if (v12 >= v29)
        {
          __break(1u);
          goto LABEL_53;
        }

        v41 = *(v24 - 1);
        v42 = *v24;
        v27 = objc_opt_self();

        v22 = MEMORY[0x1B270FF70](v41, v42);
        v7 = [v27 normalizedHandleWithDestinationID_];

        if (!v7)
        {
          goto LABEL_28;
        }

        v43 = [v7 type];
        v22 = v43 == 3 ? 2 : (v43 == 2);
        if (v22)
        {
          break;
        }

LABEL_28:

LABEL_29:
        v12 = (v12 + 1);
        v24 += 16;
        if (v26 == v12)
        {
          v15 = v60;
          v35 = v61;
          v24 = v59;
          goto LABEL_51;
        }
      }

      v44 = [v7 normalizedValue];
      if (!v44)
      {
        v44 = [v7 value];
      }

      v27 = v44;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v15 = objc_opt_self();
      v48 = [v15 typeAsCNContactPropertyKey_];
      if (v48)
      {
        v27 = v48;
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;
      }

      else
      {
        v66 = 0;
        v50 = 0;
      }

      v51 = MEMORY[0x1B270FF70](v45, v47);

      if (v50)
      {
        v52 = MEMORY[0x1B270FF70](v66, v50);
      }

      else
      {
        v52 = 0;
      }

      v22 = [v15 contactWithIdentifier:v51 identifierType:v52];

      v28 = v64;
      v26 = v65;
      if (!v22)
      {
        goto LABEL_29;
      }

      v27 = &v67;
      MEMORY[0x1B2710150](v53);
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v39 = (v12 + 1);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v62 = v67;
      v40 = v58;
      v54 = v57 == v12;
      v15 = v60;
      v35 = v61;
      v24 = v59;
    }

    while (!v54);
  }

LABEL_51:

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _CDContact, 0x1E69978A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setRecipients_];

  *v35 = v15;
}

id TUHandle.cdContact.getter()
{
  v1 = v0;
  v2 = [v0 type];
  if (v2 == 3)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 2;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = [v1 normalizedValue];
  if (!v4)
  {
    v4 = [v1 value];
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 typeAsCNContactPropertyKey_];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v16 = MEMORY[0x1B270FF70](v6, v8);

  if (v14)
  {
    v17 = MEMORY[0x1B270FF70](v12, v14);
  }

  else
  {
    v17 = 0;
  }

  v15 = [v9 contactWithIdentifier:v16 identifierType:v17];

  return v15;
}

void closure #4 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(unint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  specialized _arrayForceCast<A, B>(_:)(a1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v6[4] = partial apply for closure #1 in closure #4 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:);
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v6[3] = &block_descriptor_20;
  v5 = _Block_copy(v6);

  [v2 recordInteractions:isa completionHandler:v5];
  _Block_release(v5);
}

void closure #1 in closure #4 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(char a1, void *a2, void *a3)
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
    v26 = v9;
    *v8 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14_CDInteractionCGMd, &_sSaySo14_CDInteractionCGMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v26);

    *(v8 + 4) = v12;
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Recorded interactions %s status: %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  if ((a1 & 1) == 0)
  {

    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14_CDInteractionCGMd, &_sSaySo14_CDInteractionCGMR);
      v18 = String.init<A>(reflecting:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      if (a2)
      {
        v21 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v22 = String.init<A>(reflecting:)();
        v24 = v23;
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v26);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1AEB26000, v14, v15, "Failed to record interactions %s reason: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v17, -1, -1);
      MEMORY[0x1B27120C0](v16, -1, -1);
    }
  }
}

uint64_t BiomeSessionDonator.conversationManager(_:removedConversationWith:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, 0, v5);
  return swift_endAccess();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BiomeSessionDonator.EquatableConversationInformation()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BiomeSessionDonator.EquatableConversationInformation(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Array<A>.hash(into:)(a1, v3);

  return specialized Set.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BiomeSessionDonator.EquatableConversationInformation(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  specialized Set.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BiomeSessionDonator.EquatableConversationInformation(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19BiomeSessionDonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLV08ActivityE0V_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v2, v3);
}

id BiomeSessionDonator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeSessionDonator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeSessionDonator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TUHandleType.cdContactType.getter(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B27111E0](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *v5;
      if (*(v5 - 3))
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
      Hasher._combine(_:)(v6);

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, void *a2)
{
  v15 = *(a1 + 16);
  if (!v15)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;

    v7 = [a2 normalizedValue];
    if (!v7)
    {
      v7 = [a2 value];
    }

    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == v6 && v11 == v5)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return v3;
    }

    if (v15 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v29 = result;
  if (v2)
  {
    return v29;
  }

  if (v5)
  {
    return *(v3 + 16);
  }

  v6 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_33;
  }

  v8 = (v3 + 16);
  v7 = *(v3 + 16);
  if (v6 == v7)
  {
    return v29;
  }

  v9 = 16 * result;
  while (v6 < v7)
  {
    v31 = v3;
    v10 = v3 + v9;
    v12 = *(v3 + v9 + 48);
    v11 = *(v3 + v9 + 56);

    v13 = [a2 normalizedValue];
    if (!v13)
    {
      v13 = [a2 value];
    }

    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == v12 && v17 == v11)
    {

LABEL_9:
      v3 = v31;
      goto LABEL_10;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_9;
    }

    v20 = v29;
    v3 = v31;
    if (v6 != v29)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v29 >= *v8)
      {
        goto LABEL_30;
      }

      if (v6 >= *v8)
      {
        goto LABEL_31;
      }

      v21 = (v31 + 32 + 16 * v29);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v10 + 48);
      v25 = *(v10 + 56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
      }

      v26 = v3 + 16 * v29;
      *(v26 + 32) = v24;
      *(v26 + 40) = v25;

      if (v6 >= *(v3 + 16))
      {
        goto LABEL_32;
      }

      v27 = v3 + v9;
      *(v27 + 48) = v22;
      *(v27 + 56) = v23;

      *a1 = v3;
      v20 = v29;
    }

    v29 = v20 + 1;
LABEL_10:
    ++v6;
    v8 = (v3 + 16);
    v7 = *(v3 + 16);
    v9 += 16;
    if (v6 == v7)
    {
      return v29;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    Set.Iterator.init(_cocoa:)();
    v5 = v22[1];
    v6 = v22[2];
    v7 = v22[3];
    v8 = v22[4];
    v9 = v22[5];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = (a1 + 56);
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

    v9 = (v12 & *(a1 + 56));

    v8 = 0;
  }

  while (v5 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18 || (v21 = v18, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58), swift_dynamicCast(), v17 = v22[0], v15 = v8, v16 = v9, !v22[0]))
    {
LABEL_22:
      outlined consume of Set<String>.Iterator._Variant(v5);
      return;
    }

LABEL_18:
    v22[0] = v17;
    closure #3 in BiomeSessionDonator.sendEvents(conversationID:for:messagesChatGUID:members:localMemberHandle:)(v22, a2, a3, &v21);
    if (v4)
    {

      outlined consume of Set<String>.Iterator._Variant(v5);

      return;
    }

    if (v21)
    {
      MEMORY[0x1B2710150]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v8 = v15;
    v9 = v16;
  }

  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v15 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = v6[v15];
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized BiomeSessionDonator.conversationManager(_:conversationChanged:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - v4;
  v23[0] = type metadata accessor for UUID();
  v6 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 remoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = specialized Sequence.compactMap<A>(_:)(v10);

  v12 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [a1 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [a1 messagesGroupUUID];
  if (v15)
  {
    v16 = v15;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v23[0];
  (*(v6 + 56))(v5, v17, 1, v23[0]);
  v19 = [a1 localMember];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 handle];
  }

  else
  {
    v21 = 0;
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))(v8, v14, v5, v11, v21);

  outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*(v6 + 8))(v8, v18);
}

unint64_t lazy protocol witness table accessor for type BiomeSessionDonator.EquatableConversationInformation and conformance BiomeSessionDonator.EquatableConversationInformation()
{
  result = lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation and conformance BiomeSessionDonator.EquatableConversationInformation;
  if (!lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation and conformance BiomeSessionDonator.EquatableConversationInformation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation and conformance BiomeSessionDonator.EquatableConversationInformation);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMGroupActivitySessionEvent) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t outlined init with take of AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BiomeSessionDonator.EquatableConversationInformation.ActivitySession(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BiomeSessionDonator.EquatableConversationInformation.ActivitySession(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BiomeSessionDonator.EquatableConversationInformation.ActivitySession and conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession()
{
  result = lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation.ActivitySession and conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession;
  if (!lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation.ActivitySession and conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeSessionDonator.EquatableConversationInformation.ActivitySession and conformance BiomeSessionDonator.EquatableConversationInformation.ActivitySession);
  }

  return result;
}

uint64_t DatagramChannelGroupState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C616974696E69;
  v2 = 0x73696C6261747365;
  if (a1 != 2)
  {
    v2 = 0x6465736F6C63;
  }

  if (a1)
  {
    v1 = 0x73696C6261747365;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DatagramChannelGroupState(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616974696E69;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x73696C6261747365;
  v6 = 0xEB00000000646568;
  if (v3 != 2)
  {
    v5 = 0x6465736F6C63;
    v6 = 0xE600000000000000;
  }

  v7 = 0x73696C6261747365;
  if (*a1)
  {
    v4 = 0xEC000000676E6968;
  }

  else
  {
    v7 = 0x6C616974696E69;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = 0xE700000000000000;
  v11 = 0x73696C6261747365;
  v12 = 0xEB00000000646568;
  if (*a2 != 2)
  {
    v11 = 0x6465736F6C63;
    v12 = 0xE600000000000000;
  }

  if (*a2)
  {
    v2 = 0x73696C6261747365;
    v10 = 0xEC000000676E6968;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DatagramChannelGroupState()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DatagramChannelGroupState(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DatagramChannelGroupState(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DatagramChannelGroupState@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DatagramChannelGroupState.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DatagramChannelGroupState(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C616974696E69;
  v4 = 0xEB00000000646568;
  v5 = 0x73696C6261747365;
  if (*v1 != 2)
  {
    v5 = 0x6465736F6C63;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x73696C6261747365;
    v2 = 0xEC000000676E6968;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t DatagramChannelStream.topic.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DatagramChannelStream.config.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v7[0] = v1[3];
  v7[1] = v2;
  v4 = v1[6];
  v8 = v1[5];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of DatagramClient.Configuration(v7, &v6);
}

uint64_t key path getter for DatagramChannelStream.channelGroupState : <A, B>DatagramChannelStream<A, B>@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t DatagramChannelStream.channelGroupState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t DatagramChannelStream.channelGroupState.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*DatagramChannelStream.channelGroupState.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return ConversationManagerClient.activeSessionContainer.modify;
}

uint64_t key path setter for DatagramChannelStream.$channelGroupState : <A, B>DatagramChannelStream<A, B>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 272))(v6);
}

uint64_t DatagramChannelStream.$channelGroupState.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMd, &_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t DatagramChannelStream.$channelGroupState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMd, &_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*DatagramChannelStream.$channelGroupState.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  DatagramChannelStream.$channelGroupState.getter();
  return DatagramChannelStream.$channelGroupState.modify;
}

void DatagramChannelStream.$channelGroupState.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    DatagramChannelStream.$channelGroupState.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    DatagramChannelStream.$channelGroupState.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DatagramChannelStream.channelGroupStatePublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMR);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - v4;
  (*(*v0 + 264))(v3);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<DatagramChannelGroupState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore25DatagramChannelGroupStateO_GMR, MEMORY[0x1E695C068]);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t DatagramChannelStream.ingressDeserializationFailedCount.getter()
{
  v1 = direct field offset for DatagramChannelStream.ingressDeserializationFailedCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DatagramChannelStream.ingressDeserializationFailedCount.setter(uint64_t a1)
{
  v3 = direct field offset for DatagramChannelStream.ingressDeserializationFailedCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DatagramChannelStream.channelTerminatedHandler : <A, B>DatagramChannelStream<A, B>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 440))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DatagramChannelError) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DatagramChannelStream.channelTerminatedHandler : <A, B>DatagramChannelStream<A, B>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DatagramChannelError) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 448);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return v7(v6, v5);
}

uint64_t DatagramChannelStream.channelTerminatedHandler.getter()
{
  v1 = (v0 + direct field offset for DatagramChannelStream.channelTerminatedHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t DatagramChannelStream.channelTerminatedHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for DatagramChannelStream.channelTerminatedHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v6, v7);
}

uint64_t DatagramChannelStream.__allocating_init(definition:topic:input:config:inputBufferMaxQueueSize:queue:traceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v15 = swift_allocObject();
  DatagramChannelStream.init(definition:topic:input:config:inputBufferMaxQueueSize:queue:traceId:)(v15, a2, a3, a4, a5, a6, a7, a8);
  return v15;
}

void *DatagramChannelStream.init(definition:topic:input:config:inputBufferMaxQueueSize:queue:traceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v52 = a7;
  v53 = a8;
  v50 = a2;
  v51 = a6;
  v48 = a3;
  v49 = a4;
  v11 = *v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - v13;
  type metadata accessor for EgressMessage(255, *(v11 + 80), *(v11 + 96), v15);
  v16 = type metadata accessor for AnyPublisher();
  v17 = type metadata accessor for OS_dispatch_queue();
  v47 = v17;
  v46 = v16;
  WitnessTable = swift_getWitnessTable();
  v45 = WitnessTable;
  v44 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
  *&v57 = v16;
  *(&v57 + 1) = v17;
  *&v58 = WitnessTable;
  *(&v58 + 1) = v44;
  v19 = type metadata accessor for Publishers.ReceiveOn();
  v54 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMd, &_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMR);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - v24;
  v26 = a5[1];
  v57 = *a5;
  v58 = v26;
  v27 = a5[3];
  v59 = a5[2];
  v60 = v27;
  v28 = direct field offset for DatagramChannelStream._channelGroupState;
  LOBYTE(v55) = 0;
  Published.init(initialValue:)();
  (*(v23 + 32))(v9 + v28, v25, v22);
  v29 = direct field offset for DatagramChannelStream.output;
  type metadata accessor for DatagramChannelError(255);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError, &protocol conformance descriptor for DatagramChannelError);
  type metadata accessor for PassthroughSubject();
  *(v9 + v29) = PassthroughSubject.__allocating_init()();
  v30 = direct field offset for DatagramChannelStream.sendQueue;
  *(v9 + v30) = Array.init()();
  *(v9 + direct field offset for DatagramChannelStream.participantUnicastEndpoints) = MEMORY[0x1E69E7CC8];
  *(v9 + direct field offset for DatagramChannelStream.cancellable) = 0;
  *(v9 + direct field offset for DatagramChannelStream.channelGroup) = 0;
  *(v9 + direct field offset for DatagramChannelStream.inputSubscriptionCancellable) = 0;
  *(v9 + direct field offset for DatagramChannelStream.ingressDeserializationFailedCount) = 0;
  v31 = (v9 + direct field offset for DatagramChannelStream.channelTerminatedHandler);
  *v31 = 0;
  v31[1] = 0;
  v32 = v49;
  v9[4] = v48;
  v9[5] = v32;
  v33 = v60;
  *(v9 + 5) = v59;
  *(v9 + 6) = v33;
  v34 = v58;
  *(v9 + 3) = v57;
  *(v9 + 4) = v34;
  v35 = v50;
  v9[14] = v51;
  v36 = v52;
  v37 = v53;
  v9[2] = v52;
  v9[3] = v35;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v37, v9 + direct field offset for DatagramChannelStream.traceId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v55 = v32;
  v56 = v36;
  v38 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v38 - 8) + 56))(v14, 1, 1, v38);

  v39 = v36;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v14, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  swift_retain_n();
  swift_getWitnessTable();
  v40 = Publisher.sink(receiveCompletion:receiveValue:)();

  outlined destroy of NSObject?(v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v54 + 8))(v21, v19);
  v41 = direct field offset for DatagramChannelStream.inputSubscriptionCancellable;
  swift_beginAccess();
  *(v9 + v41) = v40;

  return v9;
}

void closure #1 in DatagramChannelStream.init(definition:topic:input:config:inputBufferMaxQueueSize:queue:traceId:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;

    v6 = DatagramChannelStream.description.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, oslog, v3, "DatagramChannelStream: input egress-stream completed %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t DatagramChannelStream.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for DatagramChannelError(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = direct field offset for DatagramChannelStream.inputSubscriptionCancellable;
  swift_beginAccess();
  if (*(v0 + v5))
  {

    AnyCancellable.cancel()();
  }

  default argument 0 of DatagramChannelStream.close(error:)();
  (*(*v0 + 480))(v4);
  outlined destroy of DatagramChannelError(v4);

  outlined consume of DatagramEndpoint(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  outlined destroy of NSObject?(v0 + direct field offset for DatagramChannelStream.traceId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = direct field offset for DatagramChannelStream._channelGroupState;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMd, &_s7Combine9PublishedVy14CopresenceCore25DatagramChannelGroupStateOGMR);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v1 + direct field offset for DatagramChannelStream.channelTerminatedHandler), *(v1 + direct field offset for DatagramChannelStream.channelTerminatedHandler + 8));
  return v1;
}

uint64_t DatagramChannelStream.__deallocating_deinit()
{
  DatagramChannelStream.deinit();

  return swift_deallocClassInstance();
}

uint64_t DatagramChannelStream.start(channelGroup:)()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0[2];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = *(*v0 + 376);

    v8(v9);
    return DatagramChannelStream.sendNextEgressMessage()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *DatagramChannelStream.terminate(error:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v110 = a1;
  v6 = *v4;
  v7 = (*v4)[10];
  v8 = (*v4)[12];
  v9 = type metadata accessor for EgressMessage(0, v7, v8, a4);
  v111 = *(v9 - 8);
  v10 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v98 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v104 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v98 - v17;
  v109 = type metadata accessor for DatagramChannelError(0);
  v107 = *(v109 - 8);
  v19 = MEMORY[0x1EEE9AC00](v109);
  v103 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v106 = &v98 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v98 - v24;
  v26 = v6[30](v23);
  if (v26 > 1)
  {
    if (v26 != 2)
    {
    }

    v102 = v18;
  }

  else
  {
    v102 = v18;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
    v29 = (*v4)[52](result);
    v117 = 0;
    v118 = 0xE000000000000000;
    if (v29 < 1)
    {
      MEMORY[0x1B2710020](0x206C656E6E616843, 0xE800000000000000);
      v33 = v6[11];
      v34 = v6[13];
      v112 = v7;
      v113 = v33;
      v114 = v8;
      v115 = v34;
      v116 = v4;
      type metadata accessor for DatagramChannelStream(0, &v112);
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
    }

    else
    {
      MEMORY[0x1B2710020](0x206C656E6E616843, 0xE800000000000000);
      v30 = v6[11];
      v31 = v6[13];
      v112 = v7;
      v113 = v30;
      v114 = v8;
      v115 = v31;
      v116 = v4;
      type metadata accessor for DatagramChannelStream(0, &v112);
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      MEMORY[0x1B2710020](32, 0xE100000000000000);
      v32 = DatagramChannelStream.deserializationFailedDescription.getter();
      MEMORY[0x1B2710020](v32);
    }

    v35 = v118;
    v101 = v117;
    v36 = v25;
    v37 = v109;
    swift_storeEnumTagMultiPayload();
    v38 = v25;
    v39 = v110;
    v40 = specialized static DatagramChannelError.== infix(_:_:)(v38, v110);
    outlined destroy of DatagramChannelError(v36);
    v41 = v106;
    if (v40)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, log);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = v36;
        v47 = swift_slowAlloc();
        v112 = v47;
        *v45 = 136315138;
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v35, &v112);

        *(v45 + 4) = v48;
        _os_log_impl(&dword_1AEB26000, v43, v44, "%s closed by client", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        v49 = v47;
        v36 = v46;
        v39 = v110;
        MEMORY[0x1B27120C0](v49, -1, -1);
        v50 = v45;
        v37 = v109;
        MEMORY[0x1B27120C0](v50, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, log);
      outlined init with copy of DatagramChannelError(v39, v41);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      v100 = v53;
      v54 = v53;
      v55 = v52;
      if (os_log_type_enabled(v52, v54))
      {
        v99 = v36;
        v56 = v37;
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v112 = v58;
        *v57 = 136315394;
        v59 = v41;
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v35, &v112);

        *(v57 + 4) = v60;
        *(v57 + 12) = 2080;
        v61 = v102;
        outlined init with copy of DatagramChannelError(v59, v102);
        v62 = v107;
        (v107[7])(v61, 0, 1, v56);
        v63 = v61;
        v64 = v61;
        v65 = v104;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v64, v104, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
        if ((v62[6])(v65, 1, v56) == 1)
        {
          v66 = 0xE300000000000000;
          v67 = 7104878;
          v36 = v99;
        }

        else
        {
          v68 = v65;
          v69 = v99;
          outlined init with take of DatagramChannelError(v68, v99);
          outlined init with copy of DatagramChannelError(v69, v103);
          v36 = v69;
          v67 = String.init<A>(reflecting:)();
          v66 = v70;
          outlined destroy of DatagramChannelError(v36);
        }

        outlined destroy of NSObject?(v63, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
        outlined destroy of DatagramChannelError(v106);
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, &v112);

        *(v57 + 14) = v71;
        _os_log_impl(&dword_1AEB26000, v55, v100, "%s terminating reason: %s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v58, -1, -1);
        MEMORY[0x1B27120C0](v57, -1, -1);

        v37 = v109;
        v39 = v110;
      }

      else
      {

        outlined destroy of DatagramChannelError(v41);
      }
    }

    (*v5)[31](3);
    swift_storeEnumTagMultiPayload();
    v72 = specialized static DatagramChannelError.== infix(_:_:)(v39, v36);
    outlined destroy of DatagramChannelError(v36);
    if (v72)
    {
      v73 = 1;
      v74 = v105;
    }

    else
    {
      v74 = v105;
      outlined init with copy of DatagramChannelError(v39, v105);
      v73 = 0;
    }

    (v107[7])(v74, v73, 1, v37);
    PassthroughSubject.send(completion:)();
    v75 = outlined destroy of NSObject?(v74, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
    v76 = (*v5)[43](v75);
    if (v76)
    {
      AnyCancellable.cancel()();
    }

    v106 = v10;
    v77 = (*v5)[46](v76);
    v78 = v108;
    if (v77)
    {
      NWConnectionGroup.cancel()();
    }

    v79 = (*v5)[37];
    v107 = v5;
    v80 = v79(v77);
    if (MEMORY[0x1B2710210](v80, v9))
    {
      v81 = 0;
      v82 = &v78[*(v9 + 40)];
      v83 = (v111 + 16);
      v84 = (v111 + 8);
      do
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          (*(v111 + 16))(v78, v80 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v81, v9);
          v86 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_44;
          }
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v106 != 8)
          {
            __break(1u);
            return result;
          }

          v112 = result;
          (*v83)(v78, &v112, v9);
          swift_unknownObjectRelease();
          v86 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
LABEL_44:
            __break(1u);
            break;
          }
        }

        v88 = *v82;
        v87 = v82[1];
        outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(*v82, v87);
        (*v84)(v78, v9);
        if (v88)
        {
          lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError, &protocol conformance descriptor for DatagramChannelError);
          v89 = swift_allocError();
          outlined init with copy of DatagramChannelError(v110, v90);
          v88(v89);
          _sxRi_zRi0_zlyytIseghHr_SgWOe(v88, v87);
          v91 = v89;
          v78 = v108;
        }

        ++v81;
      }

      while (v86 != MEMORY[0x1B2710210](v80, v9));
    }

    v92 = v107;
    v93 = (*v107)[39](&v112);
    type metadata accessor for Array();
    Array.removeAll(keepingCapacity:)(0);
    v94 = v93(&v112, 0);
    v96 = (*v92)[55](v94);
    result = v110;
    if (v96)
    {
      v97 = v95;
      v96(v110);
      return _sxRi_zRi0_zlyytIseghHr_SgWOe(v96, v97);
    }
  }

  return result;
}

unint64_t DatagramChannelStream.deserializationFailedDescription.getter()
{
  _StringGuts.grow(_:)(31);

  (*(*v0 + 416))(v1);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  return 0xD00000000000001DLL;
}

void DatagramChannelStream.enqueueEgressMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for EgressMessage(0, *(*v4 + 80), *(*v4 + 96), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v5[2];
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v17 = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v39 = v8;
  v18 = *(*v5 + 240);
  if (v18(v17) > 2u)
  {

    goto LABEL_9;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
LABEL_9:
    v29 = *(a1 + *(v7 + 40));
    if (!v29)
    {
      return;
    }

    type metadata accessor for DatagramChannelError(0);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError, &protocol conformance descriptor for DatagramChannelError);
    v30 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v29(v30);
    v28 = v30;
    goto LABEL_11;
  }

  v38 = a1;
  v21 = (*v5 + 296);
  v22 = *v21;
  (*v21)(v20);
  v23 = MEMORY[0x1B27101F0]();

  if (__OFADD__(v23, 1))
  {
LABEL_24:
    __break(1u);
    return;
  }

  if (v5[14] < v23 + 1)
  {
    v25 = *(v38 + *(v7 + 40));
    if (!v25)
    {
      return;
    }

    lazy protocol witness table accessor for type EgressMessageError and conformance EgressMessageError();
    v26 = swift_allocError();
    *v27 = 0;
    v25();
    v28 = v26;
LABEL_11:

    return;
  }

  v22(v24);
  v31 = MEMORY[0x1B27101F0]();

  if (v31)
  {
    v33 = 0;
    v34 = v38;
    v35 = v39;
    goto LABEL_21;
  }

  v36 = v18(v32);
  if (v36 <= 1)
  {
    v34 = v38;
LABEL_19:
    v35 = v39;
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_20;
  }

  v34 = v38;
  if (v36 != 2)
  {
    goto LABEL_19;
  }

  v33 = 1;
  v35 = v39;
LABEL_20:

LABEL_21:
  (*(v35 + 16))(v10, v34, v7);
  v37 = (*(*v5 + 312))(v40);
  type metadata accessor for Array();
  Array.append(_:)();
  v37(v40, 0);
  if (v33)
  {
    DatagramChannelStream.sendNextEgressMessage()();
  }
}

void DatagramChannelStream.ingressDatagramReceived(message:data:isComplete:)(uint64_t a1, uint64_t a2, char *a3, char a4)
{
  v8 = *v4;
  v9 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 88);
  v12 = type metadata accessor for Optional();
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v57 - v14;
  v16 = *(v11 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v61 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v57 - v19;
  if ((a4 & 1) == 0)
  {
    v60 = v16;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, log);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v57[1] = v8;
      v25 = v24;
      v26 = swift_slowAlloc();
      v58 = v20;
      v27 = v26;
      *&v65[0] = v26;
      *v25 = 136315138;

      v28 = DatagramChannelStream.description.getter();
      v59 = v11;
      v29 = a2;
      v30 = a3;
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v32, v65);
      a3 = v30;
      a2 = v29;
      v11 = v59;

      *(v25 + 4) = v33;
      _os_log_impl(&dword_1AEB26000, v22, v23, "DatagramChannelStream: received message is incomplete %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v34 = v27;
      v20 = v58;
      MEMORY[0x1B27120C0](v34, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

    else
    {
    }

    v16 = v60;
  }

  if (a3 >> 60 != 15)
  {
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    outlined copy of Data?(a2, a3);
    outlined copy of Data._Representation(a2, a3);
    BinaryDecodingOptions.init()();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v16 + 56))(v15, 0, 1, v11);
    (*(v16 + 32))(v20, v15, v11);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, log);
    v36 = *(v16 + 16);
    v37 = v61;
    v58 = v20;
    v36(v61, v20, v11);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v59 = v11;
      v41 = v40;
      v42 = swift_slowAlloc();
      v64 = a3;
      v43 = v42;
      *&v65[0] = v42;
      *v41 = 136315395;

      LODWORD(v63) = v39;
      v44 = DatagramChannelStream.description.getter();
      v45 = v16;
      v47 = v46;

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v47, v65);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2081;
      v49 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
      v51 = v50;
      v52 = *(v45 + 8);
      v52(v37, v59);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v65);

      *(v41 + 14) = v53;
      _os_log_impl(&dword_1AEB26000, v38, v63, "Channel %s received datagram %{private}s", v41, 0x16u);
      swift_arrayDestroy();
      v54 = v43;
      a3 = v64;
      MEMORY[0x1B27120C0](v54, -1, -1);
      v55 = v41;
      v11 = v59;
      MEMORY[0x1B27120C0](v55, -1, -1);
    }

    else
    {

      v52 = *(v16 + 8);
      v52(v37, v11);
    }

    v56 = v58;
    PassthroughSubject.send(_:)();
    outlined consume of Data?(a2, a3);
    v52(v56, v11);
  }
}

uint64_t DatagramChannelStream.sendNextEgressMessage()()
{
  v1 = v0;
  v2 = *v0;
  v133 = v2;
  v136 = type metadata accessor for DatagramChannelError(0);
  v131 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v130 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v128 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for DispatchQoS();
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v126 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v134 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v115 - v10;
  v12 = type metadata accessor for NWEndpoint();
  v13 = *(v12 - 8);
  v142 = v12;
  v143 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v141 = (&v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v137 = (&v115 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v138 = &v115 - v18;
  v19 = *(v2 + 80);
  v139 = *(v2 + 96);
  v140 = v19;
  v21 = type metadata accessor for EgressMessage(0, v19, v139, v20);
  v145 = *(v21 - 8);
  v22 = *(v145 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v132 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v115 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v144 = &v115 - v27;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = v1[2];
  *v31 = v32;
  (*(v29 + 104))(v31, *MEMORY[0x1E69E8020], v28);
  v125 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v33 = (*(v29 + 8))(v31, v28);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  if ((*(*v1 + 240))(v33) > 2u)
  {
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0)
  {
    aBlock[0] = (*(*v1 + 296))(result);
    type metadata accessor for Array();
    swift_getWitnessTable();
    v36 = Collection.isEmpty.getter();

    if ((v36 & 1) == 0)
    {
      v118 = v4;
      v37 = (*(*v1 + 312))(aBlock);
      swift_getWitnessTable();
      v4 = v144;
      RangeReplaceableCollection.removeFirst()();
      v37(aBlock, 0);
      if (one-time initialization token for log != -1)
      {
        goto LABEL_52;
      }

      while (1)
      {
        v38 = type metadata accessor for Logger();
        v39 = __swift_project_value_buffer(v38, log);
        v40 = v145;
        v41 = *(v145 + 16);
        v120 = v145 + 16;
        v119 = v41;
        v41(v26, v4, v21);

        v42 = Logger.logObject.getter();
        v4 = v21;
        v43 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v124 = v39;
          v45 = v44;
          v122 = swift_slowAlloc();
          aBlock[0] = v122;
          *v45 = 136315395;
          v46 = DatagramChannelStream.description.getter();
          v48 = v47;

          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, aBlock);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2081;
          v50 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
          v52 = v51;
          v123 = *(v145 + 8);
          v123(v26, v4);
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, aBlock);

          *(v45 + 14) = v53;
          _os_log_impl(&dword_1AEB26000, v42, v43, "Channel %s sending datagram %{private}s", v45, 0x16u);
          v54 = v122;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v54, -1, -1);
          v55 = v45;
          v39 = v124;
          MEMORY[0x1B27120C0](v55, -1, -1);
        }

        else
        {

          v123 = *(v40 + 8);
          v56 = (v123)(v26, v4);
        }

        v57 = v4;
        v58 = (*(*v1 + 368))(v56);
        v59 = v144;
        v124 = v58;
        if (!v58)
        {

          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            aBlock[0] = v66;
            *v65 = 136315138;
            v67 = DatagramChannelStream.description.getter();
            v69 = v68;

            v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, aBlock);

            *(v65 + 4) = v70;
            _os_log_impl(&dword_1AEB26000, v63, v64, "DatagramChannelStream.sendNextEgressMessage: channel not yet started %s", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v66);
            v71 = v123;
            MEMORY[0x1B27120C0](v66, -1, -1);
            MEMORY[0x1B27120C0](v65, -1, -1);
          }

          else
          {

            v71 = v123;
          }

          return v71(v59, v57);
        }

        v60 = v139;
        v26 = 0;
        v61 = Message.serializedData(partial:)();
        v72 = v62 >> 62;
        if ((v62 >> 62) <= 1)
        {
          break;
        }

        if (v72 != 2)
        {
          v73 = 0;
          goto LABEL_26;
        }

        v75 = *(v61 + 16);
        v74 = *(v61 + 24);
        v76 = __OFSUB__(v74, v75);
        v73 = v74 - v75;
        if (v76)
        {
          __break(1u);
LABEL_23:
          LODWORD(v73) = HIDWORD(v61) - v61;
          if (__OFSUB__(HIDWORD(v61), v61))
          {
LABEL_54:
            __break(1u);

            outlined consume of Data._Representation(v122, v121);

            result = (*v11)(v39, v4);
            __break(1u);
            return result;
          }

          v73 = v73;
        }

LABEL_26:
        if (v73 >= v1[11])
        {
          v86 = v61;
          v87 = v62;
          v88 = *&v59[*(v4 + 40)];
          if (v88)
          {
            lazy protocol witness table accessor for type EgressMessageError and conformance EgressMessageError();
            v89 = swift_allocError();
            *v90 = 1;
            v88();
          }

          DatagramChannelStream.sendNextEgressMessage()();

          outlined consume of Data._Representation(v86, v87);
          return (v123)(v59, v57);
        }

        v122 = v61;
        v121 = v62;
        v77 = *&v59[*(v4 + 36)];
        if (!v77 || (v135 = *(v77 + 16)) == 0)
        {
          (*(v143 + 56))(v134, 1, 1, v142);
          type metadata accessor for NWConnectionGroup.Message();
          v91 = v121;
          outlined copy of Data._Representation(v122, v121);
          v143 = static NWConnectionGroup.Message.default.getter();
          v92 = v132;
          v119(v132, v59, v4);
          v93 = v145;
          v94 = (*(v145 + 80) + 56) & ~*(v145 + 80);
          v95 = swift_allocObject();
          *(v95 + 2) = v140;
          v96 = v133;
          *(v95 + 3) = *(v133 + 88);
          *(v95 + 4) = v60;
          *(v95 + 5) = *(v96 + 104);
          *(v95 + 6) = v1;
          (*(v93 + 32))(&v95[v94], v92, v57);

          v97 = v122;
          v98 = v134;
          NWConnectionGroup.send(content:to:message:completion:)();

          outlined consume of Data._Representation(v97, v91);
          outlined consume of Data._Representation(v97, v91);
          outlined destroy of NSObject?(v98, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
          return (v123)(v59, v57);
        }

        v4 = 0;
        v21 = v77 + 32;
        v134 = (v143 + 48);
        v78 = MEMORY[0x1E69E7CC0];
        v79 = (v143 + 32);
        v115 = v57;
        v80 = v142;
        v81 = v77;
        v117 = v77;
        v116 = v77 + 32;
        while (v4 < *(v81 + 16))
        {
          aBlock[0] = *(v21 + 8 * v4);
          closure #1 in DatagramChannelStream.sendNextEgressMessage()(aBlock, v1, v11);
          if ((*v134)(v11, 1, v80) == 1)
          {
            outlined destroy of NSObject?(v11, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
          }

          else
          {
            v82 = *v79;
            v83 = v137;
            (*v79)(v137, v11, v80);
            v82(v141, v83, v80);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78);
            }

            v85 = v78[2];
            v84 = v78[3];
            if (v85 >= v84 >> 1)
            {
              v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v78);
            }

            v78[2] = v85 + 1;
            v80 = v142;
            v82((v78 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v85), v141, v142);
            v81 = v117;
            v21 = v116;
          }

          if (v135 == ++v4)
          {
            v137 = dispatch_group_create();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
            v141 = swift_allocBox();
            (*(v131 + 56))(v99, 1, 1, v136);
            v100 = v78[2];
            if (!v100)
            {
LABEL_49:

              v102 = v132;
              v103 = v115;
              v119(v132, v144, v115);
              v104 = v145;
              v105 = (*(v145 + 80) + 48) & ~*(v145 + 80);
              v106 = (v22 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
              v107 = swift_allocObject();
              *(v107 + 2) = v140;
              v108 = v133;
              v109 = v139;
              *(v107 + 3) = *(v133 + 88);
              *(v107 + 4) = v109;
              *(v107 + 5) = *(v108 + 104);
              (*(v104 + 32))(&v107[v105], v102, v103);
              *&v107[v106] = v141;
              *&v107[(v106 + 15) & 0xFFFFFFFFFFFFFFF8] = v1;
              aBlock[4] = partial apply for closure #3 in DatagramChannelStream.sendNextEgressMessage();
              aBlock[5] = v107;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              aBlock[3] = &block_descriptor_12;
              v110 = _Block_copy(aBlock);

              v111 = v126;
              static DispatchQoS.unspecified.getter();
              v146 = MEMORY[0x1E69E7CC0];
              lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
              v112 = v128;
              v113 = v118;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v114 = v137;
              OS_dispatch_group.notify(qos:flags:queue:execute:)();

              _Block_release(v110);
              outlined consume of Data._Representation(v122, v121);
              (*(v130 + 8))(v112, v113);
              (*(v127 + 8))(v111, v129);
              v123(v144, v103);
            }

            v101 = 0;
            v11 = (v143 + 8);
            while (1)
            {
              v39 = v138;
              if (v101 >= v78[2])
              {
                break;
              }

              v4 = v142;
              (*(v143 + 16))(v138, v78 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v101, v142);
              closure #2 in DatagramChannelStream.sendNextEgressMessage()(v39, v137, v124, v122, v121, v141, v1);
              ++v101;
              (*v11)(v39, v4);
              if (v100 == v101)
              {
                goto LABEL_49;
              }
            }

            __break(1u);
            goto LABEL_54;
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        swift_once();
      }

      if (!v72)
      {
        v73 = BYTE6(v62);
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  return result;
}

uint64_t closure #1 in DatagramChannelStream.sendNextEgressMessage()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - v10;
  v64 = type metadata accessor for NWEndpoint();
  v12 = *(v64 - 8);
  v13 = MEMORY[0x1EEE9AC00](v64);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v53 - v19;
  v21 = *a1;
  v22 = (*(*a2 + 320))(v18);
  if (*(v22 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
    if (v24)
    {
      v25 = v64;
      (*(v12 + 16))(v17, *(v22 + 56) + *(v12 + 72) * v23, v64);

      v26 = *(v12 + 32);
      v26(v20, v17, v25);
      v26(a3, v20, v25);
      return (*(v12 + 56))(a3, 0, 1, v25);
    }
  }

  v61 = v3;
  v62 = v21;
  v60 = a3;

  if (*(a2 + 80) == 1)
  {
    v29 = *(a2 + 24);
    v28 = *(a2 + 32);
    v30 = *(a2 + 64);
    v31 = *(a2 + 72);
    v32 = *(a2 + 48);
    v56 = *(a2 + 56);
    v33 = v56;
    v57 = v32;

    outlined copy of Data?(v30, v31);
    v55 = MEMORY[0x1B270FF70](v32, v33);
    v54 = MEMORY[0x1B270FF70](v29, v28);
    if (v31 >> 60 == 15)
    {
      v34 = 0;
    }

    else
    {
      v34 = v30;
    }

    if (v31 >> 60 == 15)
    {
      v35 = 0xC000000000000000;
    }

    else
    {
      v35 = v31;
    }

    v36 = objc_opt_self();
    outlined copy of Data?(v30, v31);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v34, v35);
    v38 = v36;
    v40 = v54;
    v39 = v55;
    v41 = [v38 createEndpointForSessionIDAlias:v55 topic:v54 participantIDAlias:v62 salt:isa];

    NWEndpoint.init(_:)();
    outlined consume of DatagramEndpoint(v57, v56, v30, v31, 1);
    v42 = v64;
    if ((*(v12 + 48))(v11, 1, v64) != 1)
    {
      v57 = *(v12 + 32);
      v43 = v58;
      v57(v58, v11, v42);
      v44 = v59;
      (*(v12 + 16))(v59, v43, v42);
      v56 = *(v12 + 56);
      v56(v44, 0, 1, v42);
      v45 = (*(*a2 + 336))(v63);
      specialized Dictionary.subscript.setter(v44, v62);
      v45(v63, 0);
      v46 = v60;
      v57(v60, v43, v42);
      return (v56)(v46, 0, 1, v42);
    }
  }

  else
  {
    v42 = v64;
    (*(v12 + 56))(v11, 1, 1, v64);
  }

  outlined destroy of NSObject?(v11, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, log);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v60;
  if (v50)
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = v62;
    _os_log_impl(&dword_1AEB26000, v48, v49, "Could not create an endpoint for participant: %llu", v52, 0xCu);
    MEMORY[0x1B27120C0](v52, -1, -1);
  }

  return (*(v12 + 56))(v51, 1, 1, v42);
}

uint64_t closure #2 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v33 = a6;
  v34 = a4;
  v35 = a5;
  v36 = a3;
  v28[0] = a2;
  v9 = *a7;
  v30 = a7;
  v31 = v9;
  v32 = v9;
  v10 = type metadata accessor for NWEndpoint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v28 - v15;
  v29 = v28 - v15;
  dispatch_group_enter(a2);
  v17 = *(v11 + 16);
  v17(v16, a1, v10);
  (*(v11 + 56))(v16, 0, 1, v10);
  type metadata accessor for NWConnectionGroup.Message();
  v28[1] = static NWConnectionGroup.Message.default.getter();
  v17(v13, a1, v10);
  v18 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v30;
  v22 = v31;
  *(v20 + 16) = *(v31 + 80);
  v23 = v33;
  *(v20 + 24) = *(v32 + 88);
  v24 = v28[0];
  *(v20 + 40) = *(v22 + 104);
  *(v20 + 48) = v24;
  *(v20 + 56) = v23;
  (*(v11 + 32))(v20 + v18, v13, v10);
  *(v20 + v19) = v21;
  v25 = v24;

  v26 = v29;
  NWConnectionGroup.send(content:to:message:completion:)();

  return outlined destroy of NSObject?(v26, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
}

uint64_t closure #1 in closure #2 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v52 = a4;
  v7 = type metadata accessor for NWEndpoint();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v48 - v15;
  v17 = type metadata accessor for NWError();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_projectBox();
  dispatch_group_leave(a2);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v16, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return outlined destroy of NSObject?(v16, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  (*(v18 + 32))(v20, v16, v17);
  (*(v18 + 16))(v13, v20, v17);
  v23 = type metadata accessor for DatagramChannelError(0);
  swift_storeEnumTagMultiPayload();
  v49 = *(v23 - 8);
  v50 = v23;
  (*(v49 + 56))(v13, 0, 1, v23);
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v13, v21, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  v51 = v20;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, log);
  v25 = v53;
  v26 = v54;
  v27 = v55;
  (*(v54 + 16))(v53, v52, v55);
  swift_retain_n();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52 = v21;
    v32 = v31;
    v58[0] = v31;
    *v30 = 136315394;
    v33 = NWEndpoint.debugDescription.getter();
    v34 = v27;
    v36 = v35;
    (*(v26 + 8))(v25, v34);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v36, v58);

    *(v30 + 4) = v37;
    *(v30 + 12) = 2080;
    v38 = DatagramChannelStream.description.getter();
    v40 = v39;

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v58);

    *(v30 + 14) = v41;
    _os_log_impl(&dword_1AEB26000, v28, v29, "Failed to send egress message to endpoint: %s %s", v30, 0x16u);
    swift_arrayDestroy();
    v42 = v32;
    v43 = v51;
    v21 = v52;
    MEMORY[0x1B27120C0](v42, -1, -1);
    MEMORY[0x1B27120C0](v30, -1, -1);

    v44 = v56;
  }

  else
  {

    (*(v26 + 8))(v25, v27);
    v44 = v56;
    v43 = v51;
  }

  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v21, v44, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  result = (*(v49 + 48))(v44, 1, v50);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    DatagramChannelStream.terminate(error:)(v44, v45, v46, v47);
    (*(v18 + 8))(v43, v17);
    return outlined destroy of DatagramChannelError(v44);
  }

  return result;
}

uint64_t closure #3 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v9 = a1 + *(type metadata accessor for EgressMessage(0, *(v4 + 80), *(v4 + 96), v8) + 40);
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 8);
    v12 = swift_projectBox();
    swift_beginAccess();
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v12, v7, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
    v13 = type metadata accessor for DatagramChannelError(0);
    if ((*(*(v13 - 8) + 48))(v7, 1, v13) == 1)
    {

      outlined destroy of NSObject?(v7, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
      v14 = 0;
    }

    else
    {
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError, &protocol conformance descriptor for DatagramChannelError);
      v14 = swift_allocError();
      outlined init with take of DatagramChannelError(v7, v15);
    }

    v10(v14);

    _sxRi_zRi0_zlyytIseghHr_SgWOe(v10, v11);
  }

  return DatagramChannelStream.sendNextEgressMessage()();
}

uint64_t closure #4 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v42 = a3;
  v4 = *a2;
  v41 = type metadata accessor for DatagramChannelError(0);
  MEMORY[0x1EEE9AC00](v41);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for NWError();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v9, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of NSObject?(v9, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    v15 = type metadata accessor for EgressMessage(0, *(v4 + 80), *(v4 + 96), v14);
    v16 = *(v42 + *(v15 + 40));
    if (v16)
    {
      v16(0);
    }

    return DatagramChannelStream.sendNextEgressMessage()();
  }

  else
  {
    v40 = v4;
    (*(v11 + 32))(v13, v9, v10);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, log);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v13;
      v23 = v22;
      v43 = v22;
      *v21 = 136315138;
      v24 = DatagramChannelStream.description.getter();
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v43);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Failed to multicast egress message %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v28 = v23;
      v13 = v39;
      MEMORY[0x1B27120C0](v28, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    else
    {
    }

    v29 = v40;
    (*(v11 + 16))(v6, v13, v10);
    swift_storeEnumTagMultiPayload();
    DatagramChannelStream.terminate(error:)(v6, v30, v31, v32);
    v34 = type metadata accessor for EgressMessage(0, *(v29 + 80), *(v29 + 96), v33);
    v35 = *(v42 + *(v34 + 40));
    if (v35)
    {
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError, &protocol conformance descriptor for DatagramChannelError);
      v36 = swift_allocError();
      outlined init with copy of DatagramChannelError(v6, v37);
      v35(v36);
    }

    outlined destroy of DatagramChannelError(v6);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t protocol witness for AnyDatagramChannelStream.topic.getter in conformance DatagramChannelStream<A, B>()
{
  v1 = *(v0 + 24);

  return v1;
}

void (*protocol witness for AnyDatagramChannelStream.channelGroupState.modify in conformance DatagramChannelStream<A, B>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 256))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t DatagramChannelStream.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 96);
  v12 = *(*v3 + 80);
  v13 = v7;
  v8 = type metadata accessor for DatagramChannelStream.OutputSubscription(0, &v12);
  swift_allocObject();

  v10 = specialized DatagramChannelStream.OutputSubscription.init<A>(channelStream:subscriber:)(v9, a1, a2, a3);
  *(&v13 + 1) = v8;
  WitnessTable = swift_getWitnessTable();
  *&v12 = v10;
  dispatch thunk of Subscriber.receive(subscription:)();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v12);
}

uint64_t DatagramChannelStream.description.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v18 = 0;
  v19 = 0xE000000000000000;
  MEMORY[0x1B2710020](0x3D666C6573, 0xE500000000000000);
  v17 = v0;
  _print_unlocked<A, B>(_:_:)();
  v8 = v18;
  v15 = v19;
  v18 = 0x3D6369706F74;
  v19 = 0xE600000000000000;
  MEMORY[0x1B2710020](*(v0 + 24), *(v0 + 32));
  v9 = v19;
  v16 = v18;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + direct field offset for DatagramChannelStream.traceId, v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    v18 = v8;
    v19 = v15;
    MEMORY[0x1B2710020](32, 0xE100000000000000);
    MEMORY[0x1B2710020](v16, v9);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v18 = 0x3D64496563617274;
    v19 = 0xE800000000000000;
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v10);

    v11 = v18;
    v12 = v19;
    (*(v2 + 8))(v4, v1);
    v18 = v8;
    v19 = v15;
    MEMORY[0x1B2710020](32, 0xE100000000000000);
    MEMORY[0x1B2710020](v16, v9);

    MEMORY[0x1B2710020](32, 0xE100000000000000);
    MEMORY[0x1B2710020](v11, v12);
  }

  return v18;
}

unint64_t specialized DatagramChannelGroupState.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DatagramChannelGroupState.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined destroy of DatagramChannelError(uint64_t a1)
{
  v2 = type metadata accessor for DatagramChannelError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized DatagramChannelStream.OutputSubscription.init<A>(channelStream:subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v30 = a2;
  v7 = *v4;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 56) = 0;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  v34 = v4 + 24;
  *(v4 + 16) = v9;
  v12 = *(v9 + direct field offset for DatagramChannelStream.output);
  v31 = v9;
  v32 = v12;
  v35[0] = v12;
  v13 = *(v8 + 16);
  v28 = v10;
  v29 = v13;
  (v13)(v11);
  v14 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v33 = v4;
  v27 = v7[10];
  *(v15 + 2) = v27;
  v26 = v7[11];
  *(v15 + 3) = v26;
  *(v15 + 4) = a3;
  v16 = v7[12];
  *(v15 + 5) = v16;
  v17 = v7[13];
  *(v15 + 6) = v17;
  *(v15 + 7) = a4;
  v18 = *(v8 + 32);
  v18(&v15[v14], v11, a3);
  v29(v11, v30, a3);
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 2) = v27;
  *(v19 + 3) = v20;
  *(v19 + 4) = a3;
  *(v19 + 5) = v16;
  v21 = v25;
  *(v19 + 6) = v17;
  *(v19 + 7) = v21;
  v18(&v19[v14], v11, a3);
  type metadata accessor for DatagramChannelError(255);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError, &protocol conformance descriptor for DatagramChannelError);
  type metadata accessor for PassthroughSubject();

  swift_getWitnessTable();
  v22 = Publisher.sink(receiveCompletion:receiveValue:)();

  v35[3] = type metadata accessor for AnyCancellable();
  v35[4] = MEMORY[0x1E695BF08];

  v35[0] = v22;
  v23 = v34;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v35, v23, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_endAccess();
  return v33;
}

unint64_t lazy protocol witness table accessor for type DatagramChannelGroupState and conformance DatagramChannelGroupState()
{
  result = lazy protocol witness table cache variable for type DatagramChannelGroupState and conformance DatagramChannelGroupState;
  if (!lazy protocol witness table cache variable for type DatagramChannelGroupState and conformance DatagramChannelGroupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatagramChannelGroupState and conformance DatagramChannelGroupState);
  }

  return result;
}

void type metadata completion function for DatagramChannelStream(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<DatagramChannelGroupState>();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void type metadata accessor for Published<DatagramChannelGroupState>()
{
  if (!lazy cache variable for type metadata for Published<DatagramChannelGroupState>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<DatagramChannelGroupState>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EgressMessageError and conformance EgressMessageError()
{
  result = lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError;
  if (!lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError;
  if (!lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError);
  }

  return result;
}

uint64_t outlined init with copy of DatagramChannelError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatagramChannelError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DatagramChannelError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatagramChannelError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #4 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for EgressMessage(0, v4[2], v4[4], a4) - 8);
  v7 = v4[6];
  v8 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return closure #4 in DatagramChannelStream.sendNextEgressMessage()(a1, v7, v8);
}

uint64_t partial apply for closure #3 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for EgressMessage(0, *(v4 + 16), *(v4 + 32), a4) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v4 + v7);
  v9 = *(v4 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #3 in DatagramChannelStream.sendNextEgressMessage()(v4 + v6, v8, v9);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in closure #2 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1)
{
  v3 = *(type metadata accessor for NWEndpoint() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);

  return closure #1 in closure #2 in DatagramChannelStream.sendNextEgressMessage()(a1, v6, v7, v1 + v4, v5);
}

uint64_t closure #1 in static DictionaryConvertible.compactMapValuesToDictionaryConvertible(_:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  v11 = *(a3 + 8);

  v11(v12, a2, a3);
  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v10, 1, a2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 1;
  }

  else
  {
    (*(v13 + 32))(a4, v10, a2);
    v14 = 0;
  }

  return (*(v13 + 56))(a4, v14, 1, a2);
}

unint64_t CPAppPolicy.GlobalAutoSharePlayToggle.description.getter(char a1)
{
  _StringGuts.grow(_:)(44);

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v2, v3);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0xD000000000000029;
}

CopresenceCore::CPAppPolicy::AuthorizedBundles::SchemaVersion_optional __swiftcall CPAppPolicy.AuthorizedBundles.SchemaVersion.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = CopresenceCore_CPAppPolicy_AuthorizedBundles_SchemaVersion_one;
  }

  else
  {
    v1.value = CopresenceCore_CPAppPolicy_AuthorizedBundles_SchemaVersion_unknownDefault;
  }

  if (rawValue == -1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CPAppPolicy.AuthorizedBundles.SchemaVersion.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CPAppPolicy.AuthorizedBundles.SchemaVersion()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  MEMORY[0x1B27111E0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CPAppPolicy.AuthorizedBundles.SchemaVersion()
{
  if (*v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  return MEMORY[0x1B27111E0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CPAppPolicy.AuthorizedBundles.SchemaVersion(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  MEMORY[0x1B27111E0](v3);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance CPAppPolicy.AuthorizedBundles.SchemaVersion@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CPAppPolicy.AuthorizedBundles.SchemaVersion(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (!*v1)
  {
    v2 = -1;
  }

  *a1 = v2;
}

uint64_t CPAppPolicy.AuthorizedBundles.bundleIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CPAppPolicy.AuthorizedBundles.allowedHandles.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t CPAppPolicy.AuthorizedBundles.description.getter()
{
  _StringGuts.grow(_:)(83);
  MEMORY[0x1B2710020](0xD000000000000030, 0x80000001AEE330A0);
  MEMORY[0x1B2710020](*(v0 + 8), *(v0 + 16));
  MEMORY[0x1B2710020](0x69726F6874756120, 0xEC0000003D64657ALL);
  if (*(v0 + 24))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 24))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v1, v2);

  MEMORY[0x1B2710020](0xD000000000000010, 0x80000001AEE330E0);
  type metadata accessor for Date();
  v3 = Dictionary.description.getter();
  MEMORY[0x1B2710020](v3);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0;
}

uint64_t CPAppPolicy.AuthorizedBundles.init(version:bundleIdentifier:authorized:allowedHandles:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

unint64_t CPAppPolicy.ContactsChangeHistoryToken.description.getter()
{
  _StringGuts.grow(_:)(48);

  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = String.init<A>(reflecting:)();
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1B2710020](v2, v4);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0xD00000000000002DLL;
}

uint64_t CPAppPolicy.ContactHandles.description.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a3 + 40;
    v6 = MEMORY[0x1E69E7CC0];
    v25 = a3 + 40;
    do
    {
      v28 = v6;
      v7 = (v5 + 16 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_18;
        }

        v9 = *(v7 - 1);
        v10 = *v7;
        swift_bridgeObjectRetain_n();
        v11 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v9, v10);
        v13 = v12;
        isa = Data._bridgeToObjectiveC()().super.isa;
        outlined consume of Data._Representation(v11, v13);
        v15 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

        if (v15)
        {
          break;
        }

        ++v8;
        v7 += 2;
        if (v4 == v3)
        {
          v6 = v28;
          goto LABEL_16;
        }
      }

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v6 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1, v28);
        v6 = result;
      }

      v5 = v25;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v20 + 1;
      v21 = v6 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v4 != v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  _StringGuts.grow(_:)(70);
  MEMORY[0x1B2710020](0xD00000000000002ELL, 0x80000001AEE33130);
  MEMORY[0x1B2710020](v26, a2);
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE33160);
  v22 = MEMORY[0x1B2710180](v6, MEMORY[0x1E69E6158]);
  v24 = v23;

  MEMORY[0x1B2710020](v22, v24);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0;
}

double CPAppPolicy.AuthorizedBundles.init(dictionary:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  specialized CPAppPolicy.AuthorizedBundles.init(dictionary:)(a2, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t CPAppPolicy.AuthorizedBundles.dictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC8];
  if (v2 != 2)
  {
    v15 = &type metadata for CPAppPolicy.AuthorizedBundles.SchemaVersion;
    LOBYTE(v14) = v2 & 1;
    outlined init with take of Any(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  }

  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  v15 = MEMORY[0x1E69E6158];
  *&v14 = v5;
  *(&v14 + 1) = v6;
  outlined init with take of Any(&v14, v13);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000010, 0x80000001AEE32AB0, v7);
  v8 = v1[24];
  v15 = MEMORY[0x1E69E6370];
  LOBYTE(v14) = v8;
  outlined init with take of Any(&v14, v13);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0x7A69726F68747561, 0xEA00000000006465, v9);
  v10 = *(v1 + 4);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
  *&v14 = v10;
  outlined init with take of Any(&v14, v13);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0x486465776F6C6C61, 0xEE0073656C646E61, v11);
  return v3;
}

double protocol witness for DictionaryConvertible.init(dictionary:) in conformance CPAppPolicy.AuthorizedBundles@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  specialized CPAppPolicy.AuthorizedBundles.init(dictionary:)(a2, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t CPAppPolicy.ContactHandles.dictionaryRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = MEMORY[0x1E69E6158];
  *&v9 = a1;
  *(&v9 + 1) = a2;
  outlined init with take of Any(&v9, v8);

  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, 0xD000000000000011, 0x80000001AEE33180, isUniquelyReferenced_nonNull_native);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *&v9 = a3;
  outlined init with take of Any(&v9, v8);

  v6 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, 0xD000000000000011, 0x80000001AEE331A0, v6);
  return v4;
}

uint64_t protocol witness for DictionaryConvertible.init(dictionary:) in conformance CPAppPolicy.ContactHandles@<X0>(Swift::OpaquePointer a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized CPAppPolicy.ContactHandles.init(dictionary:)(a1._rawValue);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t specialized CPAppPolicy.ContactHandles.init(dictionary:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x80000001AEE33180);
    if (v3)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v2, v8);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x80000001AEE331A0), (v5 & 1) != 0))
        {
          outlined init with copy of Any(*(a1 + 56) + 32 * v4, v8);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          if (swift_dynamicCast())
          {
            return v7;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t specialized CPAppPolicy.AuthorizedBundles.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6F6973726576, 0xE700000000000000);
  if ((v5 & 1) != 0 && (outlined init with copy of Any(*(a1 + 56) + 32 * v4, v20), swift_dynamicCast()))
  {
    v6 = v18;
    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 2;
    if (!*(a1 + 16))
    {
LABEL_17:

      v6 = 0;
      v10 = 0;
      v9 = 0;
      v13 = 0;
      v17 = 0;
      goto LABEL_18;
    }
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001AEE32AB0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v7, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v9 = v19;
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v10 = v18;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(0x7A69726F68747561, 0xEA00000000006465);
  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v11, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  if (!*(a1 + 16) || (v13 = v18, v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x486465776F6C6C61, 0xEE0073656C646E61), (v15 & 1) == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v14, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

  v17 = v18;
LABEL_18:
  *a2 = v6;
  a2[1] = v10;
  a2[2] = v9;
  a2[3] = v13;
  a2[4] = v17;
  return result;
}

unint64_t lazy protocol witness table accessor for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion()
{
  result = lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CPAppPolicy.GlobalAutoSharePlayToggle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for CPAppPolicy.ContactsChangeHistoryToken(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CPAppPolicy.ContactsChangeHistoryToken(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CPAppPolicy.ContactHandles(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CPAppPolicy.ContactHandles(uint64_t result, int a2, int a3)
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

Swift::Int specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v33 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
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

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v8 << 6)));
    v13 = *v11;
    v12 = v11[1];

    specialized CPAppPolicy.AuthorizedBundles.init(dictionary:)(v14, v34);
    v15 = v35;
    if (v35)
    {
      v29 = v34[1];
      v30 = v34[0];
      v31 = v36;
      v32 = v37;
      v16 = v33;
      v17 = *(v33 + 16);
      if (*(v33 + 24) <= v17)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17 + 1, 1);
        v16 = v38;
      }

      v33 = v16;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v18 = v33 + 64;
      v19 = -1 << *(v33 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v33 + 64 + 8 * (v20 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        while (++v21 != v24 || (v23 & 1) == 0)
        {
          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v18 + 8 * v21);
          if (v26 != -1)
          {
            v22 = __clz(__rbit64(~v26)) + (v21 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v33 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = (*(v33 + 48) + 16 * v22);
      *v27 = v13;
      v27[1] = v12;
      v28 = *(v33 + 56) + 40 * v22;
      *v28 = v30;
      *(v28 + 8) = v29;
      *(v28 + 16) = v15;
      *(v28 + 24) = v31 & 1;
      *(v28 + 32) = v32;
      ++*(v33 + 16);
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v33;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  v2 = a1 + 64;
  v38 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (63 - v3) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    swift_bridgeObjectRetain_n();

    v16 = specialized CPAppPolicy.ContactHandles.init(dictionary:)(v15);
    if (v17)
    {
      v35 = v16;
      v36 = v17;
      v37 = v18;
      v19 = v38;
      v20 = *(v38 + 16);
      if (*(v38 + 24) <= v20)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20 + 1, 1);
        v19 = v39;
      }

      v38 = v19;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = v38 + 64;
      v22 = -1 << *(v38 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v38 + 64 + 8 * (v23 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v22) >> 6;
        v27 = v35;
        v26 = v36;
        v28 = v37;
        while (++v24 != v30 || (v29 & 1) == 0)
        {
          v31 = v24 == v30;
          if (v24 == v30)
          {
            v24 = 0;
          }

          v29 |= v31;
          v32 = *(v21 + 8 * v24);
          if (v32 != -1)
          {
            v25 = __clz(__rbit64(~v32)) + (v24 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_27;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v38 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v27 = v35;
      v26 = v36;
      v28 = v37;
LABEL_24:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v33 = (*(v38 + 48) + 16 * v25);
      *v33 = v14;
      v33[1] = v13;
      v34 = (*(v38 + 56) + 24 * v25);
      *v34 = v27;
      v34[1] = v26;
      v34[2] = v28;
      ++*(v38 + 16);
    }

    else
    {
    }
  }

  v9 = v8;
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      outlined consume of Set<String>.Iterator._Variant(a1);
      return v38;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC8];
  v5 = a1 + 64;
  v32 = MEMORY[0x1E69E7CC8];
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);

  v10 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = v11 | (v10 << 6);
        if (!*(*(*(a1 + 56) + 8 * v12) + 16))
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v29 = v10;
      v30 = v2;
      v15 = (*(a1 + 48) + 16 * v12);
      v16 = *v15;
      v17 = *(v4 + 16);
      v31 = v15[1];
      if (*(v4 + 24) <= v17)
      {

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17 + 1, 1);
        v4 = v32;
      }

      else
      {
      }

      Hasher.init(_seed:)();
      v28 = v16;
      String.hash(into:)();
      result = Hasher._finalize()();
      v18 = v4 + 64;
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v4 + 64 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v4 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v2 = v30;
LABEL_25:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = (*(v4 + 48) + 16 * v22);
      *v27 = v28;
      v27[1] = v31;
      ++*(v4 + 16);

      v10 = v29;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v19) >> 6;
    v2 = v30;
    while (++v21 != v24 || (v23 & 1) == 0)
    {
      v25 = v21 == v24;
      if (v21 == v24)
      {
        v21 = 0;
      }

      v23 |= v25;
      v26 = *(v18 + 8 * v21);
      if (v26 != -1)
      {
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_7:
    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= ((63 - v6) >> 6))
      {
        outlined consume of Set<String>.Iterator._Variant(a1);
        return v4;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v2 = a1 + 64;
  v31 = MEMORY[0x1E69E7CC8];
  v32 = MEMORY[0x1E69E7CC8];
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (63 - v3) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    swift_bridgeObjectRetain_n();

    v16 = specialized ActivityListPresenceContext.init(dictionary:)(v15);
    if (v16)
    {
      v30 = v16;
      v17 = v31;
      v18 = *(v31 + 16);
      if (*(v31 + 24) <= v18)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18 + 1, 1);
        v17 = v32;
      }

      v31 = v17;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = v31 + 64;
      v20 = -1 << *(v31 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v31 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v20) >> 6;
        v24 = v30;
        while (++v22 != v26 || (v25 & 1) == 0)
        {
          v27 = v22 == v26;
          if (v22 == v26)
          {
            v22 = 0;
          }

          v25 |= v27;
          v28 = *(v19 + 8 * v22);
          if (v28 != -1)
          {
            v23 = __clz(__rbit64(~v28)) + (v22 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_27;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v31 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v24 = v30;
LABEL_24:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v29 = (*(v31 + 48) + 16 * v23);
      *v29 = v14;
      v29[1] = v13;
      *(*(v31 + 56) + 8 * v23) = v24;
      ++*(v31 + 16);
    }

    else
    {
    }
  }

  v9 = v8;
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      outlined consume of Set<String>.Iterator._Variant(a1);
      return v31;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t AttachmentLedger_CreateTopicResponse.topicConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(TopicResponse + 28), v5, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v8 = *(*(Topic - 8) + 48);
  if (v8(v5, 1, Topic) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, Topic);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  }

  return result;
}

uint64_t AttachmentLedger_AttachmentMetadata.mmcsMetadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 36);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata);
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_MMCSMetadata.baseBlob.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 36);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_MMCSMetadata.progressBlob.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 40);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v5 = *(*(updated - 8) + 56);

  return v5(v1 + v3, 0, 1, updated);
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0) + 40);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_EncryptionID);
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeRequest.initialize.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  v3 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.error.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 36), v5, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v7 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 40), v5, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v7 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 24), v5, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v7 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a1 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v5 = *(*(updated - 8) + 56);

  return v5(v1 + v3, 0, 1, updated);
}

uint64_t AttachmentLedger_GetAuthTokenResponse.authPutMaterials.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(AuthTokenResponse + 32), v5, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v7 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  return result;
}

uint64_t AttachmentLedger_GetAuthTokenResponse.error.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(AuthTokenResponse + 28), v5, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v7 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}