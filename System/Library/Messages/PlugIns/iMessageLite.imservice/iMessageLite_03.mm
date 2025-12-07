id IDSOffGridMessageContext.topic.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result isInternalInstall];

    if (v3 && (v4 = [objc_opt_self() sharedInstance], v5 = String._bridgeToObjectiveC()(), v6 = String._bridgeToObjectiveC()(), v7 = objc_msgSend(v4, "getBoolFromDomain:forKey:", v5, v6), v4, v5, v6, (v7 & 1) != 0))
    {
      v8 = 1;
    }

    else
    {
      v8 = LiteTopic.init(with:)([v0 serviceType]);
    }

    return (v8 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id IDSOffGridMessageContext.command.getter()
{
  if ((IDSOffGridMessageContext.topic.getter() & 1) == 0)
  {
    return &stru_20 + 68;
  }

  return [v0 __im_underlyingCommand];
}

id LiteMessageServiceSession.joinedChat(with:)(uint64_t a1, uint64_t a2)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 chatForChatIdentifier:v5 style:45 updatingAccount:0];

  if (!v6)
  {
    v7 = String._bridgeToObjectiveC()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_53390;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_53380;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = v11;
    *(inited + 80) = a1;
    *(inited + 88) = a2;
    swift_bridgeObjectRetain_n();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    swift_arrayDestroy();
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    *(v8 + 32) = v12;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v8, v14;
    [v2 joinChat:v7 handleInfo:isa style:45 groupID:0 joinProperties:0];

    v15 = String._bridgeToObjectiveC()();
    v6 = [v2 chatForChatIdentifier:v15 style:45];
  }

  return v6;
}

id LiteMessageServiceSession.chatForChatIdentifier(_:style:account:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 canonicalFormOfID:v6];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    v7 = String._bridgeToObjectiveC()();
    v9, v10;
  }

  v11 = [a4 service];
  v12 = [v11 internalName];

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v12 = String._bridgeToObjectiveC()();
    v14, v15;
  }

  v16 = IMCopyGUIDForChat();

  if (!v16)
  {
    return 0;
  }

  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 existingChatWithGUID:v16];

  result = v18;
  if (!v18)
  {
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for versionIdentifier()
{
  v0 = type metadata accessor for Schema.Version();
  __swift_allocate_value_buffer(v0, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  __swift_project_value_buffer(v0, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  return Schema.Version.init(_:_:_:)();
}

uint64_t LiteMessageSegmentStoreSchemaV1.versionIdentifier.unsafeMutableAddressor()
{
  if (one-time initialization token for versionIdentifier != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Schema.Version();

  return __swift_project_value_buffer(v0, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
}

uint64_t static LiteMessageSegmentStoreSchemaV1.versionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for versionIdentifier != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = __swift_project_value_buffer(v2, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LiteMessageSegmentStoreSchemaV1.versionIdentifier.setter(uint64_t a1)
{
  if (one-time initialization token for versionIdentifier != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = __swift_project_value_buffer(v2, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static LiteMessageSegmentStoreSchemaV1.versionIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for versionIdentifier != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Schema.Version();
  __swift_project_value_buffer(v1, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  swift_beginAccess();
  return static LiteMessageSegmentStoreSchemaV1.versionIdentifier.modify;
}

uint64_t key path setter for static LiteMessageSegmentStoreSchemaV1.versionIdentifier : LiteMessageSegmentStoreSchemaV1.Type(uint64_t a1)
{
  if (one-time initialization token for versionIdentifier != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = __swift_project_value_buffer(v2, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static LiteMessageSegmentStoreSchemaV1.models.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMd, &_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_53390;
  v1 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
  v2 = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t a1)
{
  result = type metadata singleton initialization cache for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment;
  if (!type metadata singleton initialization cache for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.init(uint64_t a1, LiteMessageServiceSession *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
  a2, v4;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.getter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

void LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.setter(uint64_t a1, LiteMessageServiceSession *a2)
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  a2, v3;
}

uint64_t closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.modify(void *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.getValue<A>(forKey:)();

  v7 = v4[3];
  *v4 = *v6;
  v4[1] = v7;
  return LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.modify;
}

void LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.modify(char **a1, char a2)
{
  v3 = *a1;
  v3[2] = *(*a1 + 4);
  v4 = v3[1];
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v4, v5;

    v3[1], v6;
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v4, v7;
  }

  free(v3);
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.init(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.getter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.setter(uint64_t a1)
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.modify(void *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.modify;
}

void LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.modify(void **a1)
{
  v1 = *a1;
  *(*a1 + 1) = *(*a1 + 2);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.init(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  swift_getKeyPath();
  v3 = type metadata accessor for Date();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.getter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.setter(uint64_t a1)
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v2 = type metadata accessor for Date();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = type metadata accessor for Date();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v4[7] = v8;
  v4[8] = v9;
  *v4 = v1;
  swift_getKeyPath();
  v4[9] = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.getValue<A>(forKey:)();

  return LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.modify;
}

void LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 24);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    v2[1] = v7;
    KeyPath = swift_getKeyPath();
    v11[0] = v11;
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    v2[2] = v7;
    v10 = swift_getKeyPath();
    v11[0] = v11;
    __chkstk_darwin(v10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t key path getter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 304);
  outlined copy of Data._Representation(*a1, v3);
  return v4(v2, v3);
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.init(uint64_t a1, unint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  swift_getKeyPath();
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return outlined consume of Data._Representation(a1, a2);
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.getter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.setter(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data._Representation(a1, a2);
}

uint64_t closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.modify;
}

void LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v3[2] = (*a1)[4];
  v5 = *v3;
  v4 = v3[1];
  swift_getKeyPath();
  if (a2)
  {
    outlined copy of Data._Representation(v5, v4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v5, v4);

    outlined consume of Data._Representation(*v3, v3[1]);
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v5, v4);
  }

  free(v3);
}

uint64_t *LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.__allocating_init(consolidationIdentifier:segmentNumber:dateReceived:data:)(uint64_t a1, LiteMessageServiceSession *a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v23 = a4;
  v20 = a3;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_MR);
  v14 = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  v24 = v6;
  v25 = v6;
  v26 = v14;
  v27 = v14;
  v13[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v13 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  __swift_project_boxed_opaque_existential_0(v13 + 2, v13[5]);
  swift_getKeyPath();
  v24 = a1;
  v25 = a2;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
  a2, v15;

  __swift_project_boxed_opaque_existential_0(v13 + 2, v13[5]);
  swift_getKeyPath();
  v24 = v20;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  (*(v10 + 16))(v12, v23, v9);
  __swift_project_boxed_opaque_existential_0(v13 + 2, v13[5]);
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v16 = *(v10 + 8);
  v16(v12, v9);
  __swift_project_boxed_opaque_existential_0(v13 + 2, v13[5]);
  swift_getKeyPath();
  v18 = v21;
  v17 = v22;
  v24 = v21;
  v25 = v22;
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v16(v23, v9);
  outlined consume of Data._Representation(v18, v17);
  return v13;
}

uint64_t *LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.init(consolidationIdentifier:segmentNumber:dateReceived:data:)(uint64_t a1, LiteMessageServiceSession *a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v22 = a5;
  v23 = a6;
  v24 = a4;
  v21 = a3;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
  v7[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_MR);
  v15 = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  v25 = v14;
  v26 = v14;
  v27 = v15;
  v28 = v15;
  v7[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v7 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  __swift_project_boxed_opaque_existential_0(v7 + 2, v7[5]);
  swift_getKeyPath();
  v25 = a1;
  v26 = a2;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
  a2, v16;

  __swift_project_boxed_opaque_existential_0(v7 + 2, v7[5]);
  swift_getKeyPath();
  v25 = v21;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  (*(v11 + 16))(v13, v24, v10);
  __swift_project_boxed_opaque_existential_0(v7 + 2, v7[5]);
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v17 = *(v11 + 8);
  v17(v13, v10);
  __swift_project_boxed_opaque_existential_0(v7 + 2, v7[5]);
  swift_getKeyPath();
  v19 = v22;
  v18 = v23;
  v25 = v22;
  v26 = v23;
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v17(v24, v10);
  outlined consume of Data._Representation(v19, v18);
  return v7;
}

uint64_t variable initialization expression of LiteMessageSegmentStoreSchemaV1.LiteMessageSegment._$backingData@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_MR);
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  a1[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return static PersistentModel.createBackingData<A>()();
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  outlined init with take of LiteMessageContent(a1, v1 + 16);
  return swift_endAccess();
}

void (*LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.persistentBackingData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of LiteMessageContent(v1 + 16, v4);
  return LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.persistentBackingData.modify;
}

void LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.persistentBackingData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    outlined init with copy of LiteMessageContent(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    outlined init with take of LiteMessageContent((v2 + 40), v3 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    outlined init with take of LiteMessageContent(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t static LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.schemaMetadata.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMR);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_54CA0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t *LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.__allocating_init(backingData:)(void *a1)
{
  v3 = swift_allocObject();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_MR);
  *&v5 = v1;
  *(&v5 + 1) = v1;
  v6 = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  v7 = v6;
  v3[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v3 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  outlined init with copy of LiteMessageContent(a1, &v5);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v3 + 2);
  outlined init with take of LiteMessageContent(&v5, (v3 + 2));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t *LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.init(backingData:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_MR);
  v6[0] = v4;
  v6[1] = v4;
  v7 = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  v8 = v7;
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  outlined init with copy of LiteMessageContent(a1, v6);
  (*(*v2 + 360))(v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Int LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*protocol witness for PersistentModel.persistentBackingData.modify in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 368))();
  return protocol witness for PersistentModel.persistentBackingData.modify in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment;
}

void protocol witness for PersistentModel.persistentBackingData.modify in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment()
{
  Hasher.init(_seed:)();
  type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t protocol witness for Identifiable.id.getter in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment()
{
  type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(0);
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, &protocol conformance descriptor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  return PersistentModel.id.getter();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static PersistentModel.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t type metadata completion function for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t LiteMessageType.init(associatedMessageType:)(uint64_t a1)
{
  if (a1 == 3007 || a1 == 1000)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LiteMessageType@<X0>(Swift::Int *a1@<X0>, iMessageLite::LiteMessageType_optional *a2@<X8>)
{
  result = specialized LiteMessageType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

unint64_t specialized LiteMessageType.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LiteMessageType and conformance LiteMessageType()
{
  result = lazy protocol witness table cache variable for type LiteMessageType and conformance LiteMessageType;
  if (!lazy protocol witness table cache variable for type LiteMessageType and conformance LiteMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageType and conformance LiteMessageType);
  }

  return result;
}

uint64_t LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = type metadata accessor for LiteMessageContext(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[31] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[32] = v8;
  v4[33] = v7;

  return _swift_task_switch(LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:), v8, v7);
}

void LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:)()
{
  v102 = v0;
  v1 = v0[29];
  v95 = v0[28];
  v97 = v0[30];
  v93 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v91 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  _StringGuts.grow(_:)(18);
  0xE000000000000000, v6;
  v101[0] = 0x6C65722D6574696CLL;
  v101[1] = 0xEB000000002D7961;
  v7 = *v3;
  v8 = v3[1];
  v9._countAndFlagsBits = *v3;
  v9._object = v8;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x617461642ELL;
  v10._object = 0xE500000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();
  0xEB000000002D7961, v12;
  [v91 writeDataPayloadToDisk:isa fileName:v11];

  type metadata accessor for IMMessageItem();
  (*(v1 + 16))(v97, v3 + *(v93 + 36), v95);

  outlined copy of Data._Representation(v4, v2);
  v13 = specialized @nonobjc IMMessageItem.init(liteRelayIdentifier:liteRelay:date:)(v7, v8, v4, v2, v97);
  v0[34] = v13;
  outlined consume of Data._Representation(v4, v2);
  v14 = v13;
  v15 = [v14 cloudKitChatID];
  if (!v15)
  {

    lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError();
    swift_allocError();
    v43 = 2;
LABEL_12:
    *v42 = v43;
LABEL_13:
    swift_willThrow();
LABEL_14:

    v66 = v0[1];

    v66();
    return;
  }

  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v0[35] = v19;
  v20._countAndFlagsBits = v17;
  v20._object = v19;
  if (LiteMessageServiceSession.hasBlockedFromHandleID(_:)(v20))
  {
    v98 = v17;
    v21 = v0[25];
    v22 = v0[26];
    v23 = v0[24];
    v24 = v0[22];
    v25 = v0[19];

    v26 = Logger.liteSession.unsafeMutableAddressor();
    (*(v21 + 16))(v22, v26, v23);
    outlined init with copy of LiteMessageContext(v25, v24);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v19, v29;
    v30 = os_log_type_enabled(v27, v28);
    v31 = v0[25];
    v32 = v0[26];
    v33 = v0[24];
    v34 = v0[22];
    if (v30)
    {
      v35 = swift_slowAlloc();
      v101[0] = swift_slowAlloc();
      *v35 = 136315394;
      v92 = v33;
      v94 = v32;
      v36 = *v34;
      v37 = v34[1];

      outlined destroy of LiteMessageContext(v34);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v101);
      v37, v39;
      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v19, v101);
      v19, v41;
      *(v35 + 14) = v40;
      _os_log_impl(&dword_0, v27, v28, "Dropping message %s, sender %s is blocked", v35, 0x16u);
      swift_arrayDestroy();

      (*(v31 + 8))(v94, v92);
    }

    else
    {

      v19, v65;
      outlined destroy of LiteMessageContext(v34);
      (*(v31 + 8))(v32, v33);
    }

    lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError();
    swift_allocError();
    v43 = 3;
    goto LABEL_12;
  }

  v44 = *(v0[19] + *(v0[21] + 48));
  LiteMessageServiceSession.joinedChat(with:command:)(v17, v19, v44);
  v0[36] = v45;
  if (!v45)
  {

    lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError();
    swift_allocError();
    *v67 = v17;
    *(v67 + 8) = v19;
    *(v67 + 16) = 0;
    goto LABEL_13;
  }

  v46 = v45;
  if (LiteMessageServiceSession.hasExistingMessageWithLiteIdentifier(_:in:)())
  {
    v47 = v0[27];
    v49 = v0[24];
    v48 = v0[25];
    v50 = v0[23];
    v51 = v0[19];

    v19, v52;
    v53 = Logger.liteSession.unsafeMutableAddressor();
    (*(v48 + 16))(v47, v53, v49);
    outlined init with copy of LiteMessageContext(v51, v50);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v0[27];
    v19 = v0[24];
    v58 = v0[25];
    v44 = v0[23];
    if (v56)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 136315138;
      v96 = v14;
      v99 = v57;
      v101[0] = v60;
      v62 = *v44;
      v61 = v44[1];

      outlined destroy of LiteMessageContext(v44);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v61, v101);
      v61, v64;
      *(v59 + 4) = v63;
      _os_log_impl(&dword_0, v54, v55, "Already received message with identifier %s, dropping incoming message", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);

      (*(v58 + 8))(v99, v19);
LABEL_31:

      v78 = v0[1];
      v79 = v0[36];

      v78(v79);
      return;
    }

LABEL_30:

    outlined destroy of LiteMessageContext(v44);
    (*(v58 + 8))(v57, v19);
    goto LABEL_31;
  }

  v100 = v17;
  v68 = v0[21];
  v58 = v0[19];
  v69 = *(v58 + 32);
  v70 = *(v58 + 40);
  v71._countAndFlagsBits = v69;
  v71._object = v70;
  IMDChat.updateLastAddressedHandleWithMatchingSIM(to:)(v71);
  v72 = String._bridgeToObjectiveC()();
  [v14 setDestinationCallerID:v72];

  v73 = 0x80000000001;
  if (v44 == (&stru_68.addr + 7))
  {
    v73 = 0x80000000005;
  }

  v74 = 5;
  if (v44 != (&stru_68.addr + 7))
  {
    v74 = 1;
  }

  if (*(v58 + *(v68 + 40)))
  {
    v75 = v73;
  }

  else
  {
    v75 = v74;
  }

  [v14 setFlags:{v75, v91}];
  v76 = String._bridgeToObjectiveC()();
  [v14 setFallbackHash:v76];

  if (v44 == (&stru_68.addr + 7))
  {
    v80 = [objc_opt_self() sharedInstance];
    if (v80)
    {
      v81 = v80;
      v54 = [v80 anySessionForServiceName:IMServiceNameSMS];

      if (v54)
      {
        goto LABEL_36;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v44 != (&stru_68.addr + 4))
  {
LABEL_44:

    v19, v88;
    lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError();
    swift_allocError();
    *v89 = 4;
    swift_willThrow();

    goto LABEL_14;
  }

  v77 = [objc_opt_self() sharedInstance];
  if (!v77)
  {
    __break(1u);
    goto LABEL_47;
  }

  v57 = v77;
  v54 = [v77 anySessionForServiceName:IMServiceNameSatelliteSMS];

  if (!v54)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_36:
  v82 = [v54 account];
  v0[37] = v82;

  if (!v82)
  {
    goto LABEL_44;
  }

  v83 = [v82 session];
  if (!v83)
  {
    goto LABEL_40;
  }

  v84 = v83;
  v85 = [v46 chatIdentifier];
  if (!v85)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v86 = v85;
  [v84 didReceiveMessage:v14 forChat:v85 style:45 fromIDSID:0];

LABEL_40:
  if (v44 != (&stru_68.addr + 7))
  {

    v19, v90;
    goto LABEL_31;
  }

  v87 = swift_task_alloc();
  v0[38] = v87;
  *v87 = v0;
  v87[1] = LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:);

  LiteMessageServiceSession.sendDowngradeMessageIfNecessary(to:from:)(v100, v19, v69, v70);
}

uint64_t LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:)()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *v0;

  v3, v5;
  v6 = swift_task_alloc();
  *(v1 + 312) = v6;
  *v6 = v4;
  v6[1] = LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:);
  v7 = *(v1 + 272);

  return LiteMessageServiceSession.sendMessageUsingSMS(message:chat:)(v7, v2);
}

{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:);
  }

  else
  {
    v5 = LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[28];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_53390;
  v0[15] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[16] = v6;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = v4;
  __swift_allocate_boxed_opaque_existential_0((inited + 72));
  Date.init()();
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7, v9;
  [v1 updateProperties:isa];

  v10 = v0[1];
  v11 = v0[36];

  return v10(v11);
}

{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];

  v4 = v0[1];

  return v4();
}

void LiteMessageServiceSession.joinedChat(with:command:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 != 143)
  {
    if (a3 != 140)
    {
      goto LABEL_14;
    }

    v10 = [objc_opt_self() sharedInstance];
    if (!v10)
    {
      __break(1u);
      goto LABEL_19;
    }

    v11 = v10;
    v12 = [v10 anySessionForServiceName:IMServiceNameSatelliteSMS];

    if (v12)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v13 = [objc_opt_self() sharedInstance];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v12 = [v13 anySessionForServiceName:IMServiceNameSMS];

  if (!v12)
  {
LABEL_20:
    __break(1u);
    return;
  }

LABEL_8:
  v15 = [v12 account];

  if (v15)
  {
    if (!LiteMessageServiceSession.chatForChatIdentifier(_:style:account:)(a1, a2, 0x2Du, v15))
    {
      v16 = [v15 session];
      if (v16)
      {
        v17 = v16;
        v18 = String._bridgeToObjectiveC()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_53390;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_53380;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v21;
        *(inited + 48) = a1;
        *(inited + 56) = a2;
        *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 72) = v22;
        *(inited + 80) = a1;
        *(inited + 88) = a2;
        swift_bridgeObjectRetain_n();
        v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
        swift_arrayDestroy();
        *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
        *(v19 + 32) = v23;
        isa = Array._bridgeToObjectiveC()().super.isa;
        v19, v25;
        [v17 didJoinChat:v18 style:45 displayName:0 groupID:0 lastAddressedHandle:0 lastAddressedSIMID:0 handleInfo:isa];
      }

      LiteMessageServiceSession.chatForChatIdentifier(_:style:account:)(a1, a2, 0x2Du, v15);
    }

    return;
  }

LABEL_14:
  v26 = Logger.liteSession.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v26, v6);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "Could not find an account for sending SMS", v29, 2u);
  }

  (*(v7 + 8))(v9, v6);
}

uint64_t LiteMessageServiceSession.sendMessageUsingSMS(message:chat:)(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(LiteMessageServiceSession.sendMessageUsingSMS(message:chat:), v6, v5);
}

id LiteMessageServiceSession.sendMessageUsingSMS(message:chat:)()
{
  v54 = v0;
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = result;
  v3 = [result anySessionForServiceName:IMServiceNameSMS];

  if (!v3)
  {
    v30 = *(v0 + 48);
    v29 = *(v0 + 56);
    v31 = *(v0 + 40);

    v32 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v30 + 16))(v29, v32, v31);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "Could not a SMS service session", v35, 2u);
    }

    v37 = *(v0 + 48);
    v36 = *(v0 + 56);
    v38 = *(v0 + 40);

    (*(v37 + 8))(v36, v38);
    lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
    goto LABEL_13;
  }

  v4 = *(v0 + 16);
  v5 = [*(v0 + 24) style];
  v6 = [v4 fallbackHash];
  if (!v6)
  {
    v40 = *(v0 + 64);
    v41 = *(v0 + 40);
    v42 = *(v0 + 48);

    v43 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v42 + 16))(v40, v43, v41);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "No fallback hash for SMS message.", v46, 2u);
    }

    v47 = *(v0 + 64);
    v48 = *(v0 + 40);
    v49 = *(v0 + 48);

    (*(v49 + 8))(v47, v48);
    lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError();
    swift_allocError();
    *v50 = 5;
    swift_willThrow();

LABEL_13:

    v28 = *(v0 + 8);
    goto LABEL_14;
  }

  v51 = v5;
  v7 = *(v0 + 16);
  v8 = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  result = [v7 guid];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  v12 = *(v0 + 24);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LiteMessageServiceSession.PendingSMSMessage.init(guid:fallbackHash:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LiteMessageServiceSession.pendingSMSMessages.getter();
  v53 = v21;
  specialized Set._Variant.insert(_:)(v52, v14, v16, v18, v20);
  v52[1], v22;
  v52[3], v23;
  LiteMessageServiceSession.pendingSMSMessages.setter(v53, v24);
  result = [v12 chatIdentifier];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = *(v0 + 16);
  v10, v25;

  [v3 sendMessage:v27 toChat:v26 style:v51];

  v28 = *(v0 + 8);
LABEL_14:

  return v28();
}

void LiteMessageServiceSession.handleSMSMessageSent(notification:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v128 - v8;
  v10 = type metadata accessor for Logger();
  v135 = *(v10 - 8);
  v136 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v128 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v128 - v18;
  __chkstk_darwin(v17);
  v21 = &v128 - v20;
  v22 = Notification.userInfo.getter();
  if (!v22)
  {
LABEL_24:
    v49 = Logger.liteRelaySession.unsafeMutableAddressor();
    v51 = v135;
    v50 = v136;
    (*(v135 + 16))(v13, v49, v136);
    v52 = *(v4 + 16);
    v52(v9, a1, v3);
    v52(v7, a1, v3);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v53, v54))
    {

      v64 = *(v4 + 8);
      v64(v7, v3);
      v64(v9, v3);
      (*(v51 + 8))(v13, v50);
      return;
    }

    v55 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v143[0] = v132;
    *v55 = 136315394;
    v56 = Notification.userInfo.getter();
    LODWORD(v133) = v54;
    v134 = 0x3E6C696E3CLL;
    if (v56)
    {
      v57 = v56;
      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138 = v58;
      AnyHashable.init<A>(_:)();
      if (*(v57 + 16))
      {
        v60 = specialized __RawDictionaryStorage.find<A>(_:)(&v139);
        if (v59)
        {
          outlined init with copy of Any(*(v57 + 56) + 32 * v60, &v141);
          outlined destroy of AnyHashable(&v139);
          v57, v61;
          if (*(&v142 + 1))
          {
            if (swift_dynamicCast())
            {
              v62 = v139;
              v63 = v140;
              goto LABEL_36;
            }

LABEL_35:
            v63 = 0xE500000000000000;
            v62 = 0x3E6C696E3CLL;
LABEL_36:
            v65 = *(v4 + 8);
            v65(v9, v3);
            v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v143);
            v63, v67;
            *(v55 + 4) = v66;
            *(v55 + 12) = 2080;
            v68 = Notification.userInfo.getter();
            if (v68)
            {
              v69 = v68;
              v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v138 = v70;
              AnyHashable.init<A>(_:)();
              if (*(v69 + 16))
              {
                v72 = specialized __RawDictionaryStorage.find<A>(_:)(&v139);
                if (v71)
                {
                  outlined init with copy of Any(*(v69 + 56) + 32 * v72, &v141);
                  outlined destroy of AnyHashable(&v139);
                  v69, v73;
                  if (*(&v142 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v74 = v140;
                      v134 = v139;
LABEL_46:
                      v65(v7, v3);
                      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v74, v143);
                      v74, v76;
                      *(v55 + 14) = v75;
                      _os_log_impl(&dword_0, v53, v133, "Cannot send delivery receipt for messageID %s chatIdentifier %s", v55, 0x16u);
                      swift_arrayDestroy();

                      (*(v135 + 8))(v13, v136);
                      return;
                    }

LABEL_45:
                    v74 = 0xE500000000000000;
                    goto LABEL_46;
                  }

LABEL_44:
                  outlined destroy of TaskPriority?(&v141, &_sypSgMd, &_sypSgMR);
                  goto LABEL_45;
                }
              }

              v69, v71;
              outlined destroy of AnyHashable(&v139);
            }

            v141 = 0u;
            v142 = 0u;
            goto LABEL_44;
          }

LABEL_34:
          outlined destroy of TaskPriority?(&v141, &_sypSgMd, &_sypSgMR);
          goto LABEL_35;
        }
      }

      v57, v59;
      outlined destroy of AnyHashable(&v139);
    }

    v141 = 0u;
    v142 = 0u;
    goto LABEL_34;
  }

  v23 = v22;
  v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v138 = v24;
  AnyHashable.init<A>(_:)();
  if (!*(v23 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(&v139), (v25 & 1) == 0))
  {
    v48 = v23;
LABEL_23:
    v48, v25;
    outlined destroy of AnyHashable(&v139);
    goto LABEL_24;
  }

  outlined init with copy of Any(*(v23 + 56) + 32 * v26, &v141);
  outlined destroy of AnyHashable(&v139);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23, v27;
    goto LABEL_24;
  }

  v132 = v137;
  v133 = v138;
  v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v138 = v28;
  AnyHashable.init<A>(_:)();
  if (!*(v23 + 16) || (v30 = specialized __RawDictionaryStorage.find<A>(_:)(&v139), (v29 & 1) == 0))
  {
    v23, v29;
    v48 = v133;
    goto LABEL_23;
  }

  outlined init with copy of Any(*(v23 + 56) + 32 * v30, &v141);
  outlined destroy of AnyHashable(&v139);
  v23, v31;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v133, v32;
    goto LABEL_24;
  }

  v128 = v137;
  v129 = v138;
  LiteMessageServiceSession.pendingSMSMessages.getter();
  v34 = 0;
  v37 = v35 + 56;
  v36 = *(v35 + 56);
  v131 = v35;
  v38 = 1 << *(v35 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v36;
  v41 = (v38 + 63) >> 6;
  while (v40)
  {
LABEL_16:
    v43 = (*&v131->state[40] + ((v34 << 11) | (32 * __clz(__rbit64(v40)))));
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[3];
    v130 = v43[2];
    if (v44 == v132 && v45 == v133)
    {
      v44 = v132;
LABEL_56:
      v90 = v131;

      v91 = v46;

      v90, v92;
      v133, v93;
      LiteMessageServiceSession.pendingSMSMessages.getter();
      v139 = v94;
      specialized Set._Variant.remove(_:)(v44, v45, v130, v46);
      v96 = v95;
      v98 = v97;
      LiteMessageServiceSession.pendingSMSMessages.setter(v139, v95);
      if (v96)
      {
        v46, v99;
        v45, v100;
        v96, v101;
        v102 = Logger.liteRelaySession.unsafeMutableAddressor();
        v104 = v135;
        v103 = v136;
        (*(v135 + 16))(v21, v102, v136);
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&dword_0, v105, v106, "Successfully sent Satellite SMS Relay message", v107, 2u);
        }

        (*(v104 + 8))(v21, v103);
        v108 = String._bridgeToObjectiveC()();
        v98, v109;
        v110 = v129;
        v111 = String._bridgeToObjectiveC()();
        v110, v112;
        [v134 sendRelayDeliveryReceiptForMessageID:v108 toChat:v111];
      }

      else
      {
        v129, v99;
        v113 = Logger.liteRelaySession.unsafeMutableAddressor();
        v115 = v135;
        v114 = v136;
        (*(v135 + 16))(v19, v113, v136);

        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.error.getter();
        v91, v118;
        v45, v119;
        if (os_log_type_enabled(v116, v117))
        {
          v120 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *v120 = 136315394;

          v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v139);
          v45, v122;
          *(v120 + 4) = v121;
          *(v120 + 12) = 2080;
          v45, v123;
          v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v91, &v139);
          v91, v125;
          *(v120 + 14) = v124;
          _os_log_impl(&dword_0, v116, v117, "Pending SMS message with guid %s fallback hash %s could not be removed from the pending SMS messages set. Cannot send delivery receipt.", v120, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v91, v126;
          v45, v127;
        }

        (*(v115 + 8))(v19, v114);
      }

      return;
    }

    v40 &= v40 - 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_56;
    }
  }

  while (1)
  {
    v42 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      return;
    }

    if (v42 >= v41)
    {
      break;
    }

    v40 = *(v37 + 8 * v42);
    ++v34;
    if (v40)
    {
      v34 = v42;
      goto LABEL_16;
    }
  }

  v131, v33;
  v129, v77;
  v78 = Logger.liteRelaySession.unsafeMutableAddressor();
  v80 = v135;
  v79 = v136;
  (*(v135 + 16))(v16, v78, v136);
  v81 = v133;

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();
  v81, v84;
  if (os_log_type_enabled(v82, v83))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v139 = v86;
    *v85 = 136315138;
    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v81, &v139);
    v81, v88;
    *(v85 + 4) = v87;
    _os_log_impl(&dword_0, v82, v83, "Message with ID %s is not a pending SMS message. No need to send a satellite relay delivery receipt.", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v86);
  }

  else
  {

    v81, v89;
  }

  (*(v80 + 8))(v16, v79);
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2, LiteMessageServiceSession *a3, uint64_t a4, LiteMessageServiceSession *a5)
{
  v9 = *v5;
  lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    a5, v14;
    a3, v17;
    v18 = (*(v9 + 48) + 32 * v12);
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    *a1 = *v18;
    a1[1] = v19;
    a1[2] = v20;
    a1[3] = v21;

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, a5, v12, isUniquelyReferenced_nonNull_native);
    *v5 = v24;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo25LiteMessageServiceSessionC01idC0E17PendingSMSMessageVGMd, "2x");
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[2];
      v32 = v18[1];
      v31 = v18[3];
      lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v32;
      v14[2] = v20;
      v14[3] = v31;
      ++*(v5 + 16);
      v3 = v30;
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
      bzero(v7, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = *(*v6 + 16);
  v12 = *(*v6 + 24);
  if (v12 > v11 && (a6 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v6;
  lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = -1 << *(v13 + 32);
  a5 = v14 & ~v15;
  if ((*(v13 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v16 = ~v15;
    lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a5 = (a5 + 1) & v16;
      if (((*(v13 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v17 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v18 = (*(v17 + 48) + 32 * a5);
  *v18 = result;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo25LiteMessageServiceSessionC01idC0E17PendingSMSMessageVGMd, "2x");
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v31 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = v18[1];
      v20 = v18[3];
      v29 = v18[2];
      v30 = *v18;
      lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v30;
      v14[1] = v19;
      v14[2] = v29;
      v14[3] = v20;
      ++*(v5 + 16);
      v3 = v28;
      v10 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v31 = (v17 - 1) & v17;
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

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v14 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 32 * v8);
  specialized _NativeSet._delete(at:)(v8);
  result = v13;
  *v4 = v14;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
      do
      {
        v11 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_16:
            v14 = *(v3 + 48);
            v15 = (v14 + 32 * v2);
            v16 = (v14 + 32 * v6);
            if (v2 != v6 || v15 >= v16 + 2)
            {
              v10 = v16[1];
              *v15 = *v16;
              v15[1] = v10;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

id specialized @nonobjc IMMessageItem.init(liteRelayIdentifier:liteRelay:date:)(uint64_t a1, LiteMessageServiceSession *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();
  a2, v8;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = Date._bridgeToObjectiveC()().super.isa;
  v19 = 0;
  v11 = [swift_getObjCClassFromMetadata() messageItemWithLiteRelayIdentifier:v7 liteRelayData:isa date:v10 error:&v19];

  v12 = v19;
  if (v11)
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 8);
    v15 = v12;
    v14(a5, v13);
  }

  else
  {
    v16 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 8))(a5, v17);
  }

  return v11;
}

unint64_t lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError()
{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageServiceSession.LiteRelayError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageServiceSession.LiteRelayError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[34] = a4;
  v5[35] = v4;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v6 = type metadata accessor for Logger();
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[40] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[41] = v8;
  v5[42] = v7;

  return _swift_task_switch(LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:), v8, v7);
}

uint64_t LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:)()
{
  v54 = v0;
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    return _swift_continuation_await(v1);
  }

  v2 = v1;
  v3 = [v1 anySessionForServiceName:IMServiceNameSMS];

  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = [v3 account];
  v0[43] = v4;

  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = LiteMessageServiceSession.chatForChatIdentifier(_:style:account:)(v0[33], v0[34], 0x2Du, v4);
  v0[44] = v5;
  if (!v5)
  {

LABEL_9:
    v27 = v0[33];
    v26 = v0[34];

    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v28 = v27;
    *(v28 + 8) = v26;
    *(v28 + 16) = 45;
    swift_willThrow();

    goto LABEL_10;
  }

  v6 = v5;
  v7 = LiteMessageServiceSession.senderURI(for:)();
  v0[45] = v7;
  if (v7)
  {
    v52 = v7;
    v8 = v0[39];
    v10 = v0[36];
    v9 = v0[37];
    v11 = v0[32];
    v12 = Logger.liteRelaySession.unsafeMutableAddressor();
    v0[46] = v12;
    v13 = *(v9 + 16);
    v0[47] = v13;
    v0[48] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v8, v12, v10);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v11, v16;
    v17 = os_log_type_enabled(v14, v15);
    v18 = v0[39];
    v19 = v0[36];
    v20 = v0[37];
    if (v17)
    {
      v22 = v0[31];
      v21 = v0[32];
      v51 = v0[39];
      v23 = swift_slowAlloc();
      v50 = v19;
      v24 = swift_slowAlloc();
      v53 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v53);
      _os_log_impl(&dword_0, v14, v15, "Sending relay delivery receipt using for message %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);

      v25 = *(v20 + 8);
      v25(v51, v50);
    }

    else
    {

      v25 = *(v20 + 8);
      v25(v18, v19);
    }

    v0[49] = v25;
    v32 = [objc_allocWithZone(IDSOffGridDeliveryOptions) init];
    v0[50] = v32;
    [v32 setTransportType:LiteMessageServiceSession.transportType.getter()];
    [v32 setCommand:146];
    v33 = String._bridgeToObjectiveC()();
    v34 = IDSGetUUIDData();

    if (v34)
    {
      v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v0[51] = v35;
      v0[52] = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_53390;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for Data;
      *(inited + 40) = v39;
      *(inited + 48) = v35;
      *(inited + 56) = v37;
      outlined copy of Data._Representation(v35, v37);
      v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (String, Any)(inited + 32);
      v41 = LiteMessageServiceSession.offGridRelayMessenger.getter();
      v0[53] = v41;
      v42 = String._bridgeToObjectiveC()();
      v0[54] = v42;
      v43 = v32;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v0[55] = isa;
      v40, v45;
      v0[2] = v0;
      v0[7] = v0 + 28;
      v0[3] = LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:);
      v46 = swift_continuation_init();
      v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo23IDSOffGridServerMessageC_SSts5Error_pGMd, &_sSccySo23IDSOffGridServerMessageC_SSts5Error_pGMR);
      v0[20] = _NSConcreteStackBlock;
      v0[21] = 1107296256;
      v0[22] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String);
      v0[23] = &block_descriptor_8;
      v0[24] = v46;
      [v41 __im_sendRelayDeliveryReceiptForMessageID:v42 senderURI:v52 options:v43 topLevelFields:isa completion:?];
      v1 = v0 + 2;

      return _swift_continuation_await(v1);
    }

    v48 = v0[31];
    v47 = v0[32];

    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v49 = v48;
    *(v49 + 8) = v47;
    *(v49 + 16) = 512;
    swift_willThrow();
  }

  else
  {

    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v31 = xmmword_537F0;
    *(v31 + 16) = 768;
    swift_willThrow();
  }

LABEL_10:

  v29 = v0[1];

  return v29();
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 448) = v2;
  v3 = *(v1 + 336);
  v4 = *(v1 + 328);
  if (v2)
  {
    v5 = LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:);
  }

  else
  {
    v5 = LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v39 = v0;
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);
  v35 = *(v0 + 376);
  v5 = *(v0 + 368);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);
  v8 = *(v0 + 256);

  v9 = *(v0 + 240);
  v32 = *(v0 + 232);

  v35(v6, v5, v7);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v8, v12;
  v13 = v9;
  v9, v14;
  v15 = os_log_type_enabled(v10, v11);
  v16 = *(v0 + 392);
  v36 = *(v0 + 400);
  v37 = *(v0 + 416);
  v17 = *(v0 + 360);
  v33 = *(v0 + 352);
  v34 = *(v0 + 408);
  v18 = *(v0 + 344);
  v19 = *(v0 + 304);
  v20 = *(v0 + 288);
  if (v15)
  {
    v30 = *(v0 + 288);
    v31 = *(v0 + 304);
    v22 = *(v0 + 248);
    v21 = *(v0 + 256);
    v29 = *(v0 + 392);
    v23 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v38);
    *(v23 + 12) = 2080;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v13, &v38);
    v13, v25;
    *(v23 + 14) = v24;
    _os_log_impl(&dword_0, v10, v11, "Successfully sent relay delivery receipt for message %s with sent identifier %s", v23, 0x16u);
    swift_arrayDestroy();

    outlined consume of Data._Representation(v34, v37);
    v29(v31, v30);
  }

  else
  {

    outlined consume of Data._Representation(v34, v37);
    v13, v26;

    v16(v19, v20);
  }

  v27 = *(v0 + 8);

  return v27();
}

{
  v1 = v0[55];
  v2 = v0[53];
  v11 = v0[54];
  v3 = v0[51];
  v4 = v0[52];
  v5 = v0[50];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[43];

  swift_willThrow();

  outlined consume of Data._Representation(v3, v4);

  v9 = v0[1];

  return v9();
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for LiteOutgoingMessageContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteOutgoingMessageContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void static Double.defaultSMSDowngradeTimeInterval.getter()
{
  v0 = [objc_opt_self() sharedInstanceForBagType:1];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      [v3 doubleValue];
    }
  }

  else
  {
    outlined destroy of Any?(v6);
  }
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall LiteMessageServiceSession.prepareForFirstUnlock()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 sharedInstance];
  [v6 addListener:v0];

  v7 = [v5 sharedInstance];
  LOBYTE(v6) = [v7 isUnderFirstDataProtectionLock];

  if (v6)
  {
    v8 = Logger.liteSession.unsafeMutableAddressor();
    (*(v2 + 16))(v4, v8, v1);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Deferring first unlock tasks", v11, 2u);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {

    LiteMessageServiceSession.performFirstUnlockTasks()();
  }
}

Swift::Void __swiftcall LiteMessageServiceSession.performFirstUnlockTasks()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.liteSession.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v9, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Performing first unlock tasks", v12, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = v1;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.performFirstUnlockTasks(), v16);

  LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()();
}

uint64_t closure #1 in LiteMessageServiceSession.performFirstUnlockTasks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.performFirstUnlockTasks(), v6, v5);
}

uint64_t closure #1 in LiteMessageServiceSession.performFirstUnlockTasks()()
{
  v1 = LiteMessageServiceSession.segmentStore.getter();
  *(v0 + 48) = v1;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.performFirstUnlockTasks(), v1, 0);
}

{
  LiteMessageSegmentStore.deleteAbandonedMessageSegments()();

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.emergencyContactsDidChange(), v1, v2);
}

uint64_t sub_4A690()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.performFirstUnlockTasks()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return closure #1 in LiteMessageServiceSession.performFirstUnlockTasks()(v3, v4, v5, v2);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4A7CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

BOOL LiteMessageServiceSession.hasExistingMessageWithLiteIdentifier(_:in:)()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 messageWithGUID:v1];

  if (v2)
  {
  }

  return v2 != 0;
}

id LiteMessageServiceSession.isSatelliteConnectionActive.getter(SEL *a1)
{
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 *a1];

  return v3;
}

uint64_t LiteMessageServiceSession.transportType.getter()
{
  if (LiteMessageServiceSession.isFakingSatelliteConnection.getter())
  {
    return 1;
  }

  v0 = [objc_opt_self() sharedController];
  v1 = [v0 isSatelliteConnectionActive];

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

Swift::Void __swiftcall LiteMessageServiceSession.satelliteStateDidChange(_:)(Swift::Bool a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  LiteMessageServiceSession.lastSatelliteStateChange.setter(v7);
  if (!a1)
  {
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 cachedChats];

    type metadata accessor for IMDChat();
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v12)
      {
LABEL_4:
        if (v12 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v12; ++i)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v14 = *(v10 + 8 * i + 32);
          }

          v15 = v14;
          [v14 updatePendingIncomingSatelliteMessageCount:0];
        }
      }
    }

    v10, v11;
  }
}

unint64_t type metadata accessor for IMDChat()
{
  result = lazy cache variable for type metadata for IMDChat;
  if (!lazy cache variable for type metadata for IMDChat)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IMDChat);
  }

  return result;
}

uint64_t static LiteMessageSegmentStoreMigrationPlan.schemas.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData15VersionedSchema_pXpGMd, &_ss23_ContiguousArrayStorageCy9SwiftData15VersionedSchema_pXpGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_53390;
  v1 = lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1 and conformance LiteMessageSegmentStoreSchemaV1();
  *(v0 + 32) = &type metadata for LiteMessageSegmentStoreSchemaV1;
  *(v0 + 40) = v1;
  return v0;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance IMMessageItem.IMMessageItemContentType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized IMMessageItem.IMMessageItemContentType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

id IMMessageItem.liteAssociatedMessageSummaryInfo()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v120 = &_swiftEmptyDictionarySingleton;
  v7 = [objc_allocWithZone(IMPluginPayload) initWithMessageItem:v0];
  if (!v7)
  {
LABEL_6:
    if (![v0 type])
    {
      v32 = [v0 fileTransferGUIDs];
      if (!v32)
      {
        v20 = 1;
        goto LABEL_8;
      }

      v33 = v32;
      v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v34 + 16))
      {
        v34, v35;
        v20 = 1;
        goto LABEL_8;
      }

      v36 = *(v34 + 40);

      v34, v37;
      v38 = [objc_opt_self() sharedInstance];
      if (v38)
      {
        v40 = v38;
        v41 = String._bridgeToObjectiveC()();
        v36, v42;
        v43 = [v40 transferForGUID:v41];

        if (v43)
        {
          v44 = [v43 type];
          if (IMUTTypeIsImage() || IMUTTypeIsSupportedAnimatedImage())
          {

            v20 = 3;
          }

          else if (IMUTTypeIsMovie())
          {

            v20 = 7;
          }

          else if (IMUTTypeIsVCard())
          {

            v20 = 4;
          }

          else if (IMUTTypeIsAudio())
          {

            v20 = 2;
          }

          else if (IMUTTypeIsMap())
          {

            v20 = 6;
          }

          else if (IMUTTypeIsCalendar())
          {

            v20 = 5;
          }

          else if (IMUTTypeIsPass())
          {

            v20 = 8;
          }

          else
          {
            IsWalletOrder = IMUTTypeIsWalletOrder();

            if (IsWalletOrder)
            {
              v20 = 10;
            }

            else
            {
              v20 = 0;
            }
          }

          goto LABEL_8;
        }
      }

      else
      {
        v36, v39;
      }
    }

    v20 = 0;
LABEL_8:
    *&v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v116 + 1) = v21;
    AnyHashable.init<A>(_:)();
    *(&v117 + 1) = &type metadata for Int;
    *&v116 = v20;
    outlined init with take of Any(&v116, v115);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = &_swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v115, &v118, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(&v118);
    v23 = v114;
    v120 = v114;
    v24 = [v1 body];
    if (!v24)
    {
      return v120;
    }

    v25 = v24;
    v26 = [v24 string];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *&v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v116 + 1) = v30;
    AnyHashable.init<A>(_:)();
    *(&v117 + 1) = &type metadata for String;
    *&v116 = v27;
    *(&v116 + 1) = v29;
    outlined init with take of Any(&v116, v115);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v23;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v115, &v118, v31);
LABEL_10:
    outlined destroy of AnyHashable(&v118);
    return v114;
  }

  v8 = v7;
  v9 = [v7 data];
  if (!v9)
  {

    goto LABEL_6;
  }

  v112 = v3;
  v10 = v9;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v12;

  *&v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v116 + 1) = v13;
  AnyHashable.init<A>(_:)();
  v14 = [v8 pluginBundleID];
  v113 = v11;
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(&v117 + 1) = &type metadata for String;
    *&v116 = v16;
    *(&v116 + 1) = v18;
    v11 = v113;
    outlined init with take of Any(&v116, v115);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v114 = &_swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v115, &v118, v19);
    outlined destroy of AnyHashable(&v118);
    v120 = v114;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(&v118, &v116);
    outlined destroy of TaskPriority?(&v116, &_sypSgMd, &_sypSgMR);
    outlined destroy of AnyHashable(&v118);
  }

  *&v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v116 + 1) = v45;
  AnyHashable.init<A>(_:)();
  v46 = [v8 pluginBundleID];
  if (v46)
  {
    v47 = v46;
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
    v54 = v111;
    if (v48 == v51 && v50 == v52)
    {
      v50, v52;
      v53, v55;
      v56 = 1;
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v50, v58;
      v53, v59;
      v56 = 9;
      if (v57)
      {
        v56 = 1;
      }
    }

    v11 = v113;
  }

  else
  {
    v56 = 0;
    v54 = v111;
  }

  *(&v117 + 1) = &type metadata for Int;
  *&v116 = v56;
  outlined init with take of Any(&v116, v115);
  v60 = v120;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v60;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v115, &v118, v61);
  outlined destroy of AnyHashable(&v118);
  v62 = v114;
  v120 = v114;
  *&v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v116 + 1) = v63;
  AnyHashable.init<A>(_:)();
  v64 = specialized IMMessageItem.summary(from:)(v8);
  if (v65)
  {
    *(&v117 + 1) = &type metadata for String;
    *&v116 = v64;
    *(&v116 + 1) = v65;
    outlined init with take of Any(&v116, v115);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v62;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v115, &v118, v66);
    outlined destroy of AnyHashable(&v118);
    v120 = v114;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(&v118, &v116);
    outlined destroy of TaskPriority?(&v116, &_sypSgMd, &_sypSgMR);
    outlined destroy of AnyHashable(&v118);
  }

  result = IMExtensionPayloadUnarchivingClasses();
  if (result)
  {
    v68 = result;
    v69 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v71 = *(v69 + 16);
    if (!v71)
    {
      v69, v70;
      v72 = _swiftEmptyArrayStorage;
LABEL_36:
      v74 = specialized _arrayConditionalCast<A, B>(_:)(v72);

      v75 = objc_allocWithZone(NSKeyedUnarchiver);
      outlined copy of Data._Representation(v11, v54);
      v76 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
      outlined consume of Data._Representation(v11, v54);
      if (v74)
      {
        v77 = specialized _arrayForceCast<A, B>(_:)(v74);
        v74, v78;
      }

      else
      {
        v77 = 0;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;
      v81 = v76;
      NSCoder.decodeObject(of:forKey:)();
      v80, v82;
      v77, v83;
      if (*(&v119 + 1))
      {
        type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
        if (swift_dynamicCast())
        {
          v84 = v116;
          *&v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(&v116 + 1) = v85;
          v86 = [v84 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v86)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v116 = 0u;
            v117 = 0u;
          }

          v118 = v116;
          v119 = v117;
          if (*(&v117 + 1))
          {
            if (swift_dynamicCast())
            {
              v87 = v115[0];
              type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMChat, IMChat_ptr);
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v89 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
              v121._object = 0x8000000000056A70;
              v90._countAndFlagsBits = 0x73654D2040252031;
              v90._object = 0xEC00000065676173;
              v91.value._object = 0x8000000000056A50;
              v121._countAndFlagsBits = 0xD00000000000001BLL;
              v91.value._countAndFlagsBits = 0xD000000000000011;
              v92._countAndFlagsBits = 0;
              v92._object = 0xE000000000000000;
              object = NSLocalizedString(_:tableName:bundle:value:comment:)(v90, v91, v89, v92, v121)._object;

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, "Bw");
              v94 = swift_allocObject();
              *(v94 + 16) = xmmword_53390;
              *(v94 + 56) = &type metadata for String;
              *(v94 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v94 + 32) = v87;

              v95 = static String.localizedStringWithFormat(_:_:)();
              v112 = v96;
              v94, v96;
              object, v97;
              *&v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(&v116 + 1) = v98;
              AnyHashable.init<A>(_:)();
              *(&v117 + 1) = &type metadata for String;
              v116 = v87;
              outlined init with take of Any(&v116, v115);
              v99 = v120;
              v100 = swift_isUniquelyReferenced_nonNull_native();
              v114 = v99;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v115, &v118, v100);
              outlined destroy of AnyHashable(&v118);
              v101 = v114;
              *&v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(&v116 + 1) = v102;
              AnyHashable.init<A>(_:)();
              *(&v117 + 1) = &type metadata for String;
              *&v116 = v95;
              *(&v116 + 1) = v112;
              outlined init with take of Any(&v116, v115);
              v103 = swift_isUniquelyReferenced_nonNull_native();
              v114 = v101;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v115, &v118, v103);

              outlined consume of Data._Representation(v113, v111);
              goto LABEL_10;
            }
          }

          else
          {

            outlined destroy of TaskPriority?(&v118, &_sypSgMd, &_sypSgMR);
          }
        }

        v54 = v111;
      }

      else
      {
        outlined destroy of TaskPriority?(&v118, &_sypSgMd, &_sypSgMR);
      }

      v104 = Logger.liteSession.unsafeMutableAddressor();
      v105 = v112;
      (*(v112 + 2))(v6, v104, v2);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_0, v106, v107, "Failed to decode plugin payload dictionary.", v108, 2u);

        outlined consume of Data._Representation(v113, v54);
      }

      else
      {

        outlined consume of Data._Representation(v113, v54);
      }

      (*(v105 + 1))(v6, v2);
      return v120;
    }

    v72 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(*(v69 + 16), 0);
    v73 = specialized Sequence._copySequenceContents(initializing:)(&v118, (v72 + 4), v71, v69);
    result = outlined consume of [IDSURI : NSNumber].Iterator._Variant(v118);
    if (v73 == v71)
    {
      v11 = v113;
      goto LABEL_36;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of AnyHashable(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCmMd, &_sSo8NSObjectCmMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCmMd, &_sSo8NSObjectCmMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, &_syXlXpMR);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo8NSObjectCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCmMd, &_sSo8NSObjectCmMR);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCySo8NSObjectCmGMd;
    v3 = &_ss23_ContiguousArrayStorageCySo8NSObjectCmGMR;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
    v3 = &_ss23_ContiguousArrayStorageCyyXlGMR;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined destroy of AnyHashable(*(v9 + 48) + 40 * v7);
    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
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
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
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
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return outlined init with take of Any(a1, v17);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
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
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      outlined init with copy of AnyHashable(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      v20 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v20)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t specialized IMMessageItem.IMMessageItemContentType.init(rawValue:)(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

id specialized IMMessageItem.summary(from:)(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v81 - v10;
  result = [a1 pluginBundleID];
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == v14 && v18 == v16)
  {
    v16, v18;
    goto LABEL_10;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v19, v22;
  if ((v21 & 1) == 0)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    if (v27 == v14 && v28 == v16)
    {
      v16, v28;
LABEL_22:
      v29, v30;
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMChat, IMChat_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v34 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v80 = 0x8000000000056B80;
      v35 = 0xD000000000000013;
      v36 = 0x8000000000056B60;
      v37 = 0x8000000000056A50;
      v38 = 0xD000000000000026;
LABEL_28:
      v46 = 0xD000000000000011;
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v35, *(&v37 - 1), v34, v47, *&v38)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v29, v32;
    if (v31)
    {
      v29 = v16;
      goto LABEL_22;
    }

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
    if (v39 == v14 && v40 == v16)
    {
      goto LABEL_25;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v41, v44;
    if (v43)
    {
      goto LABEL_27;
    }

    v49 = IMBalloonExtensionIDWithSuffix();
    if (v49)
    {
      v50 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v52;

      if (v51 == v14 && v41 == v16 || (v53 = _stringCompareWithSmolCheck(_:_:expecting:)(), , v41, v54, v41 = v16, (v53 & 1) != 0))
      {
LABEL_25:
        v16, v40;
        v16 = v41;
LABEL_27:
        v16, v42;
        type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMChat, IMChat_ptr);
        v45 = swift_getObjCClassFromMetadata();
        v34 = [objc_opt_self() bundleForClass:v45];
        v80 = 0x8000000000056B40;
        v35 = 0x654D206F746F6850;
        v36 = 0xED00006567617373;
        v37 = 0x8000000000056A50;
        v38 = 0xD00000000000001ALL;
        goto LABEL_28;
      }
    }

    else
    {
    }

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
    if (v55 == v14 && v56 == v16)
    {
      v16, v56;
LABEL_39:
      v16, v58;
      v57, v61;
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMChat, IMChat_ptr);
      v62 = swift_getObjCClassFromMetadata();
      v34 = [objc_opt_self() bundleForClass:v62];
      v80 = 0x8000000000056B10;
      v35 = 0xD000000000000015;
      v36 = 0x8000000000056AF0;
      v37 = 0x8000000000056A50;
      v38 = 0xD000000000000028;
      goto LABEL_28;
    }

    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v57, v60;
    v57 = v16;
    if (v59)
    {
      goto LABEL_39;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v63 == v16)
    {
      v63, v63;
      v65 = v16;
    }

    else
    {
      v67 = v63;
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v67, v69;
      v16, v70;
      if (v68)
      {
        goto LABEL_45;
      }

      v72 = IMBalloonExtensionIDWithSuffix();
      if (!v72)
      {
        v16, v73;
        return 0;
      }

      v74 = v72;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v76;

      if (v75 != v14 || v65 != v16)
      {
        v77 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v65, v78;
        v16, v79;
        if ((v77 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_46;
      }
    }

    v65, v64;
LABEL_45:
    v16, v66;
LABEL_46:
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMChat, IMChat_ptr);
    v71 = swift_getObjCClassFromMetadata();
    v34 = [objc_opt_self() bundleForClass:v71];
    v35 = 0xD000000000000010;
    v80 = 0x8000000000056AC0;
    v36 = 0x8000000000056AA0;
    v37 = 0x8000000000056A50;
    v38 = 0xD000000000000023;
    goto LABEL_28;
  }

  v19 = v16;
LABEL_10:
  v19, v23;
  v24 = [a1 url];
  if (v24)
  {
    v25 = v24;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 56))(v9, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v9, 1, 1, v2);
  }

  outlined init with take of URL?(v9, v11);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    outlined destroy of TaskPriority?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  (*(v3 + 16))(v5, v11, v2);
  outlined destroy of TaskPriority?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v26 = URL.absoluteString.getter();
  (*(v3 + 8))(v5, v2);
  return v26;
}

id specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type IMMessageItem.IMMessageItemContentType and conformance IMMessageItem.IMMessageItemContentType()
{
  result = lazy protocol witness table cache variable for type IMMessageItem.IMMessageItemContentType and conformance IMMessageItem.IMMessageItemContentType;
  if (!lazy protocol witness table cache variable for type IMMessageItem.IMMessageItemContentType and conformance IMMessageItem.IMMessageItemContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IMMessageItem.IMMessageItemContentType and conformance IMMessageItem.IMMessageItemContentType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IMMessageItem.IMMessageItemContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IMMessageItem.IMMessageItemContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t LiteMessageSendError.errorDescription.getter(unint64_t a1, unint64_t a2, __int16 a3)
{
  if (HIBYTE(a3) <= 1u)
  {
    v15 = 0;
    if (HIBYTE(a3))
    {
      _StringGuts.grow(_:)(56);
      v12._countAndFlagsBits = 0xD00000000000001ELL;
      v12._object = 0x8000000000056C60;
      String.append(_:)(v12);
      v13._countAndFlagsBits = a1;
      v13._object = a2;
      String.append(_:)(v13);
      v8 = "Encrypted message identifier (";
      v9 = 0xD000000000000018;
    }

    else
    {
      _StringGuts.grow(_:)(71);
      v5._countAndFlagsBits = 0xD000000000000018;
      v5._object = 0x8000000000056D80;
      String.append(_:)(v5);
      v6._countAndFlagsBits = a1;
      v6._object = a2;
      String.append(_:)(v6);
      v7._countAndFlagsBits = 0x79747320646E6120;
      v7._object = 0xEB0000000020656CLL;
      String.append(_:)(v7);
      type metadata accessor for IMChatStyle(0);
      _print_unlocked<A, B>(_:_:)();
      v8 = "No chat with identifier ";
      v9 = 0xD000000000000020;
    }

    v11 = v8 | 0x8000000000000000;
    goto LABEL_8;
  }

  if (HIBYTE(a3) == 2)
  {
    _StringGuts.grow(_:)(45);
    0xE000000000000000, v10;
    v15 = 0xD00000000000002BLL;
    v9 = a1;
    v11 = a2;
LABEL_8:
    String.append(_:)(*&v9);
    return v15;
  }

  result = 0xD000000000000017;
  if (!(a2 | a1) && !a3)
  {
    return 0xD00000000000001ALL;
  }

  if (a1 != 1 || a2 || a3)
  {
    if (a1 != 2 || a2 || a3)
    {
      if (a1 != 3 || a2 || a3)
      {
        if (a1 != 4 || a2 || a3)
        {
          if (a1 != 5 || a2 || a3)
          {
            if (a1 != 6 || a2 || a3)
            {
              return 0xD00000000000001CLL;
            }

            else
            {
              return 0xD000000000000016;
            }
          }

          else
          {
            return 0xD000000000000033;
          }
        }
      }

      else
      {
        return 0xD000000000000036;
      }
    }

    else
    {
      return 0xD00000000000003ALL;
    }
  }

  return result;
}

unint64_t LiteMessageSendError.telemetryDescription.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (HIBYTE(a3) > 1u)
  {
    if (HIBYTE(a3) == 2)
    {
      return 0xD000000000000025;
    }

    if (!(a2 | a1) && !a3)
    {
      return 0xD000000000000028;
    }

    if (a1 == 1 && !a2 && !a3)
    {
      return 0xD000000000000025;
    }

    if (a1 != 2 || a2 || a3)
    {
      if (a1 != 3 || a2 || a3)
      {
        if (a1 != 4 || a2 || a3)
        {
          if (a1 != 5 || a2 || a3)
          {
            v5 = a1 == 6 && a2 == 0;
            if (v5 && a3 == 0)
            {
              return 0xD000000000000020;
            }

            else
            {
              return 0xD00000000000002ALL;
            }
          }

          else
          {
            return 0xD000000000000032;
          }
        }

        else
        {
          return 0xD000000000000026;
        }
      }

      else
      {
        return 0xD000000000000024;
      }
    }

    else
    {
      return 0xD000000000000029;
    }
  }

  else if (HIBYTE(a3))
  {
    return 0xD00000000000002DLL;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t Error.liteItemSendErrorCode.getter(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    if (v11 == 3 && v8 == 4 && v9 == 0 && v10 == 0)
    {
      return 26;
    }

    outlined consume of LiteMessageSendError(v8, v9, v10, v11);
  }

  return 4;
}

uint64_t get_enum_tag_for_layout_string_12iMessageLite0bA9SendErrorO(uint64_t a1)
{
  if ((*(a1 + 17) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 17) & 3;
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageSendError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 18))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 17);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageSendError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LiteMessageSendError(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
  }

  *(result + 17) = a2;
  return result;
}

uint64_t BitCollection.bytes.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t BitCollection.init(bitsOf:)(void *a1)
{
  v6 = xmmword_54310;
  v7 = 0;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  (*(v4 + 8))(&v6, v3, v4);
  if (v1)
  {
    outlined consume of Data._Representation(v6, *(&v6 + 1));
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v6;
  }
}

Swift::Void __swiftcall BitCollection.appendLeastSignificantBits(from:count:)(Swift::UInt8 from, Swift::UInt8 count)
{
  if (count)
  {
    v3 = 8 - count;
    if ((v3 & 0xFFFFFF00) != 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v4 = from << (v3 & 7);
    if ((8 - count) <= 8u)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v2 + 16);
    if ((v6 | 8) == 8)
    {
      *(v2 + 16) = count;
LABEL_36:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd, "Pu");
      v23 = lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>, &_ss15CollectionOfOneVys5UInt8VGMd, "Pu", &protocol conformance descriptor for <A> CollectionOfOne<A>);
      LOBYTE(v21[0]) = v5;
      __swift_project_boxed_opaque_existential_0(v21, v22);
      Data._Representation.replaceSubrange(_:with:count:)();
      __swift_destroy_boxed_opaque_existential_0(v21);
      return;
    }

    v8 = *v2;
    v7 = v2[1];
    v9 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_18;
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
LABEL_18:
        if (!__OFSUB__(v10, 1))
        {
          if (v9 > 1)
          {
            if (v9 != 2)
            {
              v14 = 0;
              goto LABEL_29;
            }

            v16 = *(v8 + 16);
            v15 = *(v8 + 24);
            v13 = __OFSUB__(v15, v16);
            v14 = v15 - v16;
            if (!v13)
            {
LABEL_29:
              if (!__OFSUB__(v14, 1))
              {
                Data._Representation.subscript.getter();
                Data._Representation.subscript.setter();
                v18 = v6 + count;
                if (((v6 + count) & 0x100) == 0)
                {
                  *(v2 + 16) = v18;
                  if ((v6 + count) < 9u)
                  {
                    return;
                  }

                  v19 = v18 - 8;
                  *(v2 + 16) = v19;
                  v20 = count - v19;
                  if ((v20 & 0xFFFFFF00) == 0)
                  {
                    if ((v20 & 0xF8) != 0)
                    {
                      LOBYTE(v5) = 0;
                    }

                    else
                    {
                      LOBYTE(v5) = v5 << (v20 & 7);
                    }

                    goto LABEL_36;
                  }

                  goto LABEL_42;
                }

LABEL_41:
                __break(1u);
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            __break(1u);
          }

          else if (!v9)
          {
            v14 = BYTE6(v7);
            goto LABEL_29;
          }

          LODWORD(v14) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            goto LABEL_44;
          }

          v14 = v14;
          goto LABEL_29;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = BYTE6(v7);
      goto LABEL_18;
    }

    LODWORD(v10) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    v10 = v10;
    goto LABEL_18;
  }
}

uint64_t BitCollection.append(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined copy of Data._Representation(a1, a2);
  Data.Iterator.init(_:at:)();
  while (1)
  {
    v8 = Data.Iterator.next()();
    if ((*&v8 & 0x100) != 0)
    {
      break;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v8.value, 8u);
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall BitCollection.appendVarint8(_:)(Swift::UInt64 a1)
{
  do
  {
    if (a1 >= 8)
    {
      v2 = a1 & 7 | 8;
    }

    else
    {
      v2 = a1 & 7;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v2, 4u);
    v3 = a1 > 7;
    a1 >>= 3;
  }

  while (v3);
}

Swift::Void __swiftcall BitCollection.appendVarint64(_:)(Swift::UInt64 a1)
{
  do
  {
    if (a1 >= 0x40)
    {
      v2 = a1 & 0x3F | 0x40;
    }

    else
    {
      v2 = a1 & 0x3F;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v2, 7u);
    v3 = a1 > 0x3F;
    a1 >>= 6;
  }

  while (v3);
}

Swift::Void __swiftcall BitCollection.appendVarint128(_:)(Swift::UInt64 a1)
{
  do
  {
    BitCollection.appendLeastSignificantBits(from:count:)(a1 & 0x7F | ((a1 > 0x7F) << 7), 8u);
    v2 = a1 > 0x7F;
    a1 >>= 7;
  }

  while (v2);
}

uint64_t BitCollection.append(_:)(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  outlined copy of Data._Representation(a1, a2);
  v6 = 0;
  v7 = a2 >> 62;
  v8 = __OFSUB__(HIDWORD(a1), a1);
  v26 = v8;
  if (v7 > 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = a1 >> 32;
  v10 = a1;
  if (v7)
  {
    while (1)
    {
      if (v10 == v9)
      {
        goto LABEL_11;
      }

      if (v7 == 2)
      {
        v13 = *(a1 + 16);
        v12 = *(a1 + 24);
        v14 = __OFSUB__(v12, v13);
        v11 = v12 - v13;
        if (v14)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v11 = HIDWORD(a1) - a1;
        if (v26)
        {
          goto LABEL_55;
        }
      }

LABEL_18:
      v14 = __OFSUB__(v11, 1);
      v15 = v11 - 1;
      if (v14)
      {
        goto LABEL_45;
      }

      if ((v15 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_46;
      }

      v14 = __OFADD__(a3, 8 * v15);
      v16 = a3 + 8 * v15;
      if (v14)
      {
        goto LABEL_47;
      }

      if (v6 == v16)
      {
        goto LABEL_41;
      }

LABEL_22:
      v17 = v6 >> 3;
      if (v7 > 1)
      {
        break;
      }

      if (v7)
      {
        if (v17 < a1 || v17 >= a1 >> 32)
        {
          goto LABEL_50;
        }

        v23 = __DataStorage._bytes.getter();
        if (!v23)
        {
          goto LABEL_57;
        }

        v20 = v23;
        v24 = __DataStorage._offset.getter();
        v22 = v17 - v24;
        if (__OFSUB__(v17, v24))
        {
          goto LABEL_52;
        }

LABEL_37:
        v18 = *(v20 + v22);
        goto LABEL_38;
      }

      if (v17 >= BYTE6(a2))
      {
        goto LABEL_48;
      }

      v27 = a1;
      v28 = a2;
      v29 = BYTE2(a2);
      v30 = BYTE3(a2);
      v31 = BYTE4(a2);
      v32 = BYTE5(a2);
      v18 = *(&v27 + v17);
LABEL_38:
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
      }

      BitCollection.appendLeastSignificantBits(from:count:)((v18 >> (v6++ & 7)) & 1, 1u);
      if (v7 <= 1)
      {
        goto LABEL_5;
      }

LABEL_8:
      if (v7 != 2)
      {
        goto LABEL_11;
      }

      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
    }

    if (v7 != 2)
    {
      goto LABEL_56;
    }

    if (v17 < *(a1 + 16))
    {
      goto LABEL_49;
    }

    if (v17 >= *(a1 + 24))
    {
      goto LABEL_51;
    }

    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
      goto LABEL_58;
    }

    v20 = v19;
    v21 = __DataStorage._offset.getter();
    v22 = v17 - v21;
    if (__OFSUB__(v17, v21))
    {
      goto LABEL_53;
    }

    goto LABEL_37;
  }

  v11 = BYTE6(a2);
  if ((a2 & 0xFF000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_41:

  return outlined consume of Data._Representation(a1, a2);
}

BOOL BitCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = a1 + 7;
  }

  v3 = a1 - (v2 & 0xFFFFFFFFFFFFFFF8);
  v4 = Data._Representation.subscript.getter();
  v5 = 1 << v3;
  if (v3 < 0)
  {
    LOBYTE(v5) = 0;
  }

  return (v4 & v5) != 0;
}

uint64_t BitCollection.endIndex.getter(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2 || *(result + 16) == *(result + 24))
    {
      return 0;
    }
  }

  else
  {
    if (!v3)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v4 = BYTE6(a2);
        goto LABEL_15;
      }

      return 0;
    }

    if (result == result >> 32)
    {
      return 0;
    }
  }

  if (v3 == 2)
  {
    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v4 = v5 - v6;
    if (!v7)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  LODWORD(v4) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v4 = v4;
LABEL_15:
  v7 = __OFSUB__(v4, 1);
  v8 = v4 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v8 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = 8 * v8;
  result = v9 + a3;
  if (__OFADD__(v9, a3))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return result;
}

Swift::Int __swiftcall BitCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance BitCollection@<X0>(uint64_t *a1@<X8>)
{
  result = BitCollection.endIndex.getter(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance BitCollection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  result = BitCollection.endIndex.getter(*v2, v6, v8);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *a2 = v5;
  *(a2 + 8) = v4;

  return outlined copy of Data._Representation(v7, v6);
}

uint64_t protocol witness for Collection.indices.getter in conformance BitCollection@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = BitCollection.endIndex.getter(v2, v3, v4);

  return outlined copy of Data._Representation(v2, v3);
}

uint64_t *protocol witness for Collection.index(_:offsetBy:) in conformance BitCollection@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance BitCollection@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v4 = *result;
  if (a2)
  {
    v5 = *a3 - v4;
    if (v5 >= a2 - 1)
    {
      v5 = a2 - 1;
    }

    if (v5 >= (v4 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v5 = v4 ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v6 = v5 + 1;
    if (v6 >= 5)
    {
      v9 = v6 & 3;
      if ((v6 & 3) == 0)
      {
        v9 = 4;
      }

      v7 = v6 - v9;
      v10 = 0uLL;
      v11 = *result;
      v12 = vdupq_n_s64(1uLL);
      v13 = v7;
      do
      {
        v10 = vaddq_s64(v10, v12);
        v11 = vaddq_s64(v11, v12);
        v13 -= 4;
      }

      while (v13);
      result = vaddvq_s64(vpaddq_s64(v11, v10));
    }

    else
    {
      v7 = 0;
      result = *result;
    }

    v14 = (v7 + v4);
    v15 = v14 - 0x7FFFFFFFFFFFFFFFLL;
    v16 = &v14[-*a3];
    v17 = a2 - v7;
    v4 = result;
    while (1)
    {
      v8 = v16 == 0;
      if (!v16)
      {
        v4 = 0;
        goto LABEL_21;
      }

      if (!v15)
      {
        break;
      }

      ++v4;
      ++v15;
      ++v16;
      if (!--v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v8 = 0;
LABEL_21:
  *a4 = v4;
  *(a4 + 8) = v8;
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance BitCollection(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance BitCollection(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance BitCollection(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance BitCollection@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance BitCollection(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance BitCollection@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance BitCollection()
{
  result = BitCollection.endIndex.getter(*v0, *(v0 + 8), *(v0 + 16));
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance BitCollection()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v2, *(v0 + 16));
  outlined consume of Data._Representation(v1, v2);
  return v3;
}

Swift::Int BitCollection.binaryString.getter(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  result = BitCollection.endIndex.getter(a1, a2, a3);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    return Data.binaryString(bitCount:)(result)._countAndFlagsBits;
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t lazy protocol witness table accessor for type BitCollection and conformance BitCollection()
{
  result = lazy protocol witness table cache variable for type BitCollection and conformance BitCollection;
  if (!lazy protocol witness table cache variable for type BitCollection and conformance BitCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitCollection and conformance BitCollection);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for BitCollection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for BitCollection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(result + 16) == *(result + 24))
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    if (!v4)
    {
      if ((a2 & 0xFF000000000000) == 0)
      {
        return _swiftEmptyArrayStorage;
      }

      v5 = BYTE6(a2);
      goto LABEL_15;
    }

    if (result == result >> 32)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  if (v4 == 2)
  {
    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v5 = v5;
LABEL_15:
  v9 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v5 - 0x1000000000000001) >> 61 != 7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v10 = a3 + 8 * v9;
  if (__OFADD__(a3, 8 * v9))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v10)
  {
    if (a3 + 8 * v5 + 0x7FFFFFFFFFFFFFF8 >= 0x8000000000000001)
    {
      v11 = result;
      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1gq5(v10, 0);
      outlined copy of Data._Representation(v11, a2);
      v14 = specialized Sequence._copySequenceContents(initializing:)(v15, (v13 + 4), v10, v11, a2, v3);
      result = outlined consume of Data._Representation(v15[0], v15[1]);
      if (v14 == v10)
      {
        return v13;
      }

      goto LABEL_30;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      v30 = a1;
      v9 = 0;
      v10 = a5 >> 62;
      v11 = a4;
      v47 = a4 >> 32;
      v44 = HIDWORD(a4);
      v12 = __OFSUB__(HIDWORD(a4), a4);
      v33 = v12;
      v32 = HIDWORD(a4) - a4;
      v34 = a5 & 0xFF000000000000;
      v46 = BYTE6(a5);
      v31 = a6;
      v45 = a6;
      v29 = a3;
      v13 = a3 - 1;
      v42 = a4 >> 16;
      v43 = a4 >> 8;
      v40 = a4 >> 40;
      v41 = a4 >> 24;
      v38 = HIBYTE(a4);
      v39 = HIWORD(a4);
      v36 = a5 >> 16;
      v37 = a5 >> 8;
      v35 = a5 >> 24;
      while (1)
      {
        if (v10 > 1)
        {
          if (v10 != 2)
          {
            goto LABEL_15;
          }

          v15 = *(a4 + 16);
          v14 = *(a4 + 24);
        }

        else
        {
          v14 = v47;
          v15 = a4;
          if (!v10)
          {
            v16 = v46;
            if (!v34)
            {
              goto LABEL_15;
            }

            goto LABEL_22;
          }
        }

        if (v15 == v14)
        {
LABEL_15:
          if (!v9)
          {
            goto LABEL_47;
          }

          goto LABEL_26;
        }

        if (v10 == 2)
        {
          v18 = *(a4 + 16);
          v17 = *(a4 + 24);
          v19 = __OFSUB__(v17, v18);
          v16 = v17 - v18;
          if (v19)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v16 = v32;
          if (v33)
          {
            goto LABEL_59;
          }
        }

LABEL_22:
        v19 = __OFSUB__(v16, 1);
        v20 = v16 - 1;
        if (v19)
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if ((v20 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_51;
        }

        v19 = __OFADD__(v45, 8 * v20);
        v21 = v45 + 8 * v20;
        if (v19)
        {
          goto LABEL_52;
        }

        if (v9 == v21)
        {
LABEL_47:
          a3 = v9;
          a1 = v30;
          a6 = v31;
          break;
        }

LABEL_26:
        v22 = v9 >> 3;
        if (v10 > 1)
        {
          if (v10 != 2)
          {
            goto LABEL_62;
          }

          if (v22 < *(a4 + 16))
          {
            goto LABEL_53;
          }

          if (v22 >= *(a4 + 24))
          {
            goto LABEL_56;
          }

          v24 = __DataStorage._bytes.getter();
          if (!v24)
          {
            goto LABEL_64;
          }

          v25 = v24;
          a1 = __DataStorage._offset.getter();
          v26 = v22 - a1;
          if (__OFSUB__(v22, a1))
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (!v10)
          {
            if (v22 >= v46)
            {
              goto LABEL_54;
            }

            v48[0] = v11;
            v48[1] = v43;
            v48[2] = v42;
            v48[3] = v41;
            v48[4] = v44;
            v48[5] = v40;
            v48[6] = v39;
            v48[7] = v38;
            v48[8] = a5;
            v48[9] = v37;
            v48[10] = v36;
            v48[11] = v35;
            v48[12] = BYTE4(a5);
            v48[13] = BYTE5(a5);
            v23 = v48[v22];
            goto LABEL_42;
          }

          if (v22 < a4 || v22 >= v47)
          {
            goto LABEL_55;
          }

          v27 = __DataStorage._bytes.getter();
          if (!v27)
          {
            goto LABEL_63;
          }

          v25 = v27;
          a1 = __DataStorage._offset.getter();
          v26 = v22 - a1;
          if (__OFSUB__(v22, a1))
          {
            goto LABEL_57;
          }
        }

        v23 = *(v25 + v26);
LABEL_42:
        *(a2 + v9) = (v23 >> (v9 & 7)) & 1;
        if (v13 == v9)
        {
          a1 = v30;
          a6 = v31;
          a3 = v29;
          break;
        }

        if (__OFADD__(++v9, 1))
        {
          __break(1u);
          goto LABEL_46;
        }
      }
    }
  }

  else
  {
LABEL_46:
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = a3;
  return a3;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

unint64_t BitCollectionMessageContentError.errorDescription.getter(uint64_t a1, void *a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(38);
    0xE000000000000000, v6;
    v10 = 0xD000000000000021;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v10 = 0;
    _StringGuts.grow(_:)(58);
    v5._countAndFlagsBits = 0xD000000000000035;
    v5._object = 0x8000000000056FF0;
    String.append(_:)(v5);
LABEL_5:
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 3025191;
    v8._object = 0xE300000000000000;
    String.append(_:)(v8);
    return v10;
  }

  return 0xD000000000000027;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitCollection.appendAsCompressedBytes(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for Data.Iterator();
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v11 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    BitCollection.appendLeastSignificantBits(from:count:)(0, 8u);
    return;
  }

  v46 = v4;
  static String.Encoding.utf8.getter();
  v12 = String.data(using:allowLossyConversion:)();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  if (v14 >> 60 == 15)
  {
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 2;
    swift_willThrow();
    return;
  }

  v43 = v1;
  if ((specialized BitCollection.allowCompression.getter() & 1) == 0 || (v16 = [objc_opt_self() sharedCompressor], v17 = IMDLiteMessageCompressor.compress(_:)(), v19 = v18, v21 = v20, v16, v19 >> 60 == 15))
  {
    outlined copy of Data._Representation(v12, v14);
    v21 = 0;
    v17 = v12;
    v19 = v14;
  }

  v44 = v21;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);
  outlined copy of Data?(v12, v14);
  outlined copy of Data._Representation(v17, v19);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  v45 = v12;
  if (!v25)
  {
    outlined consume of Data._Representation(v17, v19);
    outlined consume of Data?(v12, v14);

    v30 = v19 >> 62;
    goto LABEL_35;
  }

  v26 = swift_slowAlloc();
  v27 = v26;
  *v26 = 134218496;
  *(v26 + 4) = v44;
  *(v26 + 12) = 2048;
  v28 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = BYTE6(v14);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v28 != 2)
  {
    v29 = 0;
    goto LABEL_24;
  }

  v32 = *(v45 + 16);
  v31 = *(v45 + 24);
  v33 = __OFSUB__(v31, v32);
  v29 = v31 - v32;
  if (v33)
  {
    __break(1u);
LABEL_21:
    LODWORD(v29) = HIDWORD(v45) - v45;
    if (__OFSUB__(HIDWORD(v45), v45))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v29 = v29;
  }

LABEL_24:
  *(v26 + 14) = v29;
  outlined consume of Data?(v45, v14);
  *(v27 + 22) = 2048;
  v30 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v30 != 2)
    {
      v34 = 0;
      goto LABEL_34;
    }

    v36 = *(v17 + 16);
    v35 = *(v17 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (!v33)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_31:
    LODWORD(v34) = HIDWORD(v17) - v17;
    if (__OFSUB__(HIDWORD(v17), v17))
    {
LABEL_58:
      __break(1u);
      return;
    }

    v34 = v34;
    goto LABEL_34;
  }

  if (v30)
  {
    goto LABEL_31;
  }

  v34 = BYTE6(v19);
LABEL_34:
  *(v27 + 24) = v34;
  outlined consume of Data._Representation(v17, v19);
  _os_log_impl(&dword_0, v23, v24, "Compressor chose codec %ld, shrunk %ld bytes to %ld", v27, 0x20u);

LABEL_35:
  v37 = v44;
  if (v30 <= 1)
  {
    if (!v30)
    {
      v38 = BYTE6(v19);
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (v30 != 2)
  {
    goto LABEL_46;
  }

  v40 = *(v17 + 16);
  v39 = *(v17 + 24);
  v38 = v39 - v40;
  if (__OFSUB__(v39, v40))
  {
    __break(1u);
LABEL_42:
    if (__OFSUB__(HIDWORD(v17), v17))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v38 = HIDWORD(v17) - v17;
  }

  if ((v38 & 0x8000000000000000) == 0)
  {
    goto LABEL_47;
  }

  __break(1u);
LABEL_46:
  v38 = 0;
  do
  {
LABEL_47:
    BitCollection.appendLeastSignificantBits(from:count:)(v38 & 0x7F | ((v38 > 0x7F) << 7), 8u);
    v41 = v38 > 0x7F;
    v38 >>= 7;
  }

  while (v41);
  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v37 > 0xFF)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  BitCollection.appendLeastSignificantBits(from:count:)(v37, 4u);
  outlined copy of Data._Representation(v17, v19);
  Data.Iterator.init(_:at:)();
  while (1)
  {
    v42 = Data.Iterator.next()();
    if ((*&v42 & 0x100) != 0)
    {
      break;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v42.value, 8u);
  }

  outlined consume of Data?(v45, v14);
  outlined consume of Data._Representation(v17, v19);
  (*(v47 + 8))(v6, v46);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitCollection.appendAsUTF8Bytes(_:)(Swift::String a1)
{
  v14 = type metadata accessor for Data.Iterator();
  v13 = *(v14 - 8);
  __chkstk_darwin(v14);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v9 >> 60 == 15)
  {
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    outlined copy of Data._Representation(v7, v9);
    Data.Iterator.init(_:at:)();
    while (1)
    {
      v11 = Data.Iterator.next()();
      if ((*&v11 & 0x100) != 0)
      {
        break;
      }

      BitCollection.appendLeastSignificantBits(from:count:)(v11.value, 8u);
    }

    outlined consume of Data?(v7, v9);
    (*(v13 + 8))(v2, v14);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitCollection.appendAsVarint8PrefixedUTF8Bytes(_:)(Swift::String a1)
{
  v20 = type metadata accessor for Data.Iterator();
  v19 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v9 >> 60 == 15)
  {
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 2;
    swift_willThrow();
    return;
  }

  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_14;
    }

    v14 = *(v7 + 16);
    v13 = *(v7 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
LABEL_12:
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
      return;
    }

    v12 = HIDWORD(v7) - v7;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_10;
  }

  v12 = BYTE6(v9);
  do
  {
LABEL_15:
    if (v12 >= 8)
    {
      v15 = v12 & 7 | 8;
    }

    else
    {
      v15 = v12 & 7;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v15, 4u);
    v16 = v12 > 7;
    v12 >>= 3;
  }

  while (v16);
  outlined copy of Data._Representation(v7, v9);
  Data.Iterator.init(_:at:)();
  while (1)
  {
    v17 = Data.Iterator.next()();
    if ((*&v17 & 0x100) != 0)
    {
      break;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v17.value, 8u);
  }

  outlined consume of Data?(v7, v9);
  (*(v19 + 8))(v2, v20);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitCollection.appendAsNullTerminatedUTF8Bytes(_:)(Swift::String a1)
{
  v14 = type metadata accessor for Data.Iterator();
  v1 = *(v14 - 8);
  __chkstk_darwin(v14);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v8 = String.data(using:allowLossyConversion:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v17 = v8;
    v18 = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd, "Pu");
    v16[3] = v12;
    v16[4] = lazy protocol witness table accessor for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>();
    LOBYTE(v16[0]) = 0;
    v15 = *__swift_project_boxed_opaque_existential_0(v16, v12);
    Data._Representation.replaceSubrange(_:with:count:)();
    __swift_destroy_boxed_opaque_existential_0(v16);
    outlined copy of Data._Representation(v17, v18);
    Data.Iterator.init(_:at:)();
    while (1)
    {
      v13 = Data.Iterator.next()();
      if ((*&v13 & 0x100) != 0)
      {
        break;
      }

      BitCollection.appendLeastSignificantBits(from:count:)(v13.value, 8u);
    }

    (*(v1 + 8))(v3, v14);
    outlined consume of Data._Representation(v17, v18);
  }
}

unint64_t BitCollection.append16UUIDBytes(_:)(_BYTE *a1)
{
  v2 = type metadata accessor for Data.Iterator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for UUID() - 8) + 64);
  if (v6 >= 16)
  {
    v7 = 16;
  }

  else
  {
    v7 = v6;
  }

  result = specialized Data.init(bytes:count:)(a1, v7);
  v10 = result;
  v11 = v9;
  v12 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v14 = *(result + 16);
      v13 = *(result + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v16 == 16)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    v17 = UUID.uuidString.getter();
    v19 = v18;
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 1;
    swift_willThrow();
    return outlined consume of Data._Representation(v10, v11);
  }

  if (!v12)
  {
    if (BYTE6(v9) != 16)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (HIDWORD(result) - result != 16)
  {
    goto LABEL_14;
  }

LABEL_11:
  outlined copy of Data._Representation(result, v9);
  Data.Iterator.init(_:at:)();
  while (1)
  {
    v21 = Data.Iterator.next()();
    if ((*&v21 & 0x100) != 0)
    {
      break;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v21.value, 8u);
  }

  outlined consume of Data._Representation(v10, v11);
  return (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitCollection.append16UUIDBytes(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of UUID?(v5);
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v10 = countAndFlagsBits;
    *(v10 + 8) = object;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    BitCollection.append16UUIDBytes(_:)(v9);
    (*(v7 + 8))(v9, v6);
  }
}

unint64_t lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError()
{
  result = lazy protocol witness table cache variable for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError;
  if (!lazy protocol witness table cache variable for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError);
  }

  return result;
}

id specialized BitCollection.allowCompression.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    if (v2)
    {
      v3 = String._bridgeToObjectiveC()();
      v4 = String._bridgeToObjectiveC()();
      v5 = IMGetDomainBoolForKey();

      return (v5 ^ 1u);
    }

    else
    {
      return &dword_0 + 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>()
{
  result = lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>;
  if (!lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15CollectionOfOneVys5UInt8VGMd, "Pu");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>);
  }

  return result;
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16iMessageLiteCore013BitCollectionA12ContentErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

Swift::String __swiftcall Data.binaryString(bitCount:)(Swift::Int bitCount)
{
  v3 = v2;
  v4 = v1;
  v61 = 0;
  v62 = 0xE000000000000000;
  v53 = 0xE000000000000000;
  v6 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_59;
    }

    v9 = *(v1 + 16);
    v8 = *(v1 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(v2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
    goto LABEL_74;
  }

  v7 = HIDWORD(v1) - v1;
LABEL_10:
  if (v7 < 0)
  {
    goto LABEL_73;
  }

LABEL_11:
  v53 = 0xE000000000000000;
  if (v7)
  {
    v11 = 0;
    v51 = v1 >> 32;
    v52 = v1;
    v54 = BYTE6(v2);
    v50 = HIDWORD(v1);
    v12 = __OFSUB__(HIDWORD(v1), v1);
    v38 = v12;
    v37 = HIDWORD(v1) - v1;
    v48 = v1 >> 16;
    v49 = v1 >> 8;
    v46 = v1 >> 40;
    v47 = v1 >> 24;
    v44 = HIBYTE(v1);
    v45 = HIWORD(v1);
    v42 = v2 >> 16;
    v43 = v2 >> 8;
    v40 = HIDWORD(v2);
    v41 = v2 >> 24;
    v39 = v2 >> 40;
    v56 = v2;
    v57 = v1;
    v58 = v2 >> 62;
    v55 = v7;
    while (1)
    {
      if (bitCount < 1)
      {
LABEL_60:
        v34 = v61;
        v53 = v62;
        goto LABEL_61;
      }

      if (v6 > 1)
      {
        break;
      }

      if (v6)
      {
        if (v11 < v52 || v11 >= v51)
        {
          goto LABEL_67;
        }

        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
          goto LABEL_76;
        }

        v15 = v18;
        v19 = __DataStorage._offset.getter();
        v17 = v11 - v19;
        if (__OFSUB__(v11, v19))
        {
          goto LABEL_69;
        }

LABEL_33:
        v13 = *(v15 + v17);
        goto LABEL_34;
      }

      if (v11 >= v54)
      {
        goto LABEL_65;
      }

      LOBYTE(v60._countAndFlagsBits) = v4;
      BYTE1(v60._countAndFlagsBits) = v49;
      BYTE2(v60._countAndFlagsBits) = v48;
      BYTE3(v60._countAndFlagsBits) = v47;
      BYTE4(v60._countAndFlagsBits) = v50;
      BYTE5(v60._countAndFlagsBits) = v46;
      BYTE6(v60._countAndFlagsBits) = v45;
      HIBYTE(v60._countAndFlagsBits) = v44;
      LOBYTE(v60._object) = v3;
      BYTE1(v60._object) = v43;
      BYTE2(v60._object) = v42;
      BYTE3(v60._object) = v41;
      BYTE4(v60._object) = v40;
      BYTE5(v60._object) = v39;
      v13 = *(&v60._countAndFlagsBits + v11);
LABEL_34:
      v20 = 0;
      v59 = v11 + 1;
      v60._countAndFlagsBits = 0;
      if (bitCount >= 8)
      {
        v21 = 8;
      }

      else
      {
        v21 = bitCount;
      }

      v60._object = 0xE000000000000000;
      do
      {
        if (v20 >= v21)
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
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v22 = 7 - v20;
        if ((v22 & 0xFFFFFF00) != 0)
        {
          goto LABEL_63;
        }

        ++v20;
        if (((1 << v22) & v13) == 0 || v22 > 8u)
        {
          v24 = 48;
        }

        else
        {
          v24 = 49;
        }

        v25 = 0xE100000000000000;
        String.append(_:)(*&v24);
        0xE100000000000000, v26;
      }

      while (v20 != v21);
      object = v60._object;
      String.append(_:)(v60);
      object, v28;
      LODWORD(v6) = v58;
      if (v58 <= 1)
      {
        v29 = v54;
        v4 = v57;
        if (v58)
        {
          v29 = v37;
          if (v38)
          {
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
          }
        }

        goto LABEL_56;
      }

      v4 = v57;
      if (v58 != 2)
      {
        v29 = 0;
        goto LABEL_56;
      }

      v31 = *(v57 + 16);
      v30 = *(v57 + 24);
      v10 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v10)
      {
        goto LABEL_71;
      }

LABEL_56:
      v10 = __OFSUB__(v29, 1);
      v32 = v29 - 1;
      if (v10)
      {
        goto LABEL_64;
      }

      if (v11 < v32)
      {
        v33._countAndFlagsBits = 32;
        v33._object = 0xE100000000000000;
        String.append(_:)(v33);
      }

      bitCount -= v21;
      ++v11;
      v3 = v56;
      if (v59 == v55)
      {
        goto LABEL_60;
      }
    }

    if (v6 != 2)
    {
      goto LABEL_75;
    }

    if (v11 < *(v4 + 16))
    {
      goto LABEL_66;
    }

    if (v11 >= *(v4 + 24))
    {
      goto LABEL_68;
    }

    v14 = __DataStorage._bytes.getter();
    if (!v14)
    {
      goto LABEL_77;
    }

    v15 = v14;
    v16 = __DataStorage._offset.getter();
    v17 = v11 - v16;
    if (__OFSUB__(v11, v16))
    {
      goto LABEL_70;
    }

    goto LABEL_33;
  }

LABEL_59:
  v34 = 0;
LABEL_61:
  v35 = v53;
  result._object = v35;
  result._countAndFlagsBits = v34;
  return result;
}

uint64_t Data.binaryString.getter(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return Data.binaryString(bitCount:)(0)._countAndFlagsBits;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v3) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v3 = v3;
LABEL_10:
  if ((v3 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_15;
  }

  return Data.binaryString(bitCount:)(8 * v3)._countAndFlagsBits;
}

uint64_t BitCollection.append(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v2);
  return (*(v3 + 8))(v1, v2, v3);
}

void __getIDSOffGridDeliveryHandlesDonationOptionsClass_block_invoke_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getIDSOffGridDeliveryHandlesDonationOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMIDSOffGrid.m" lineNumber:20 description:{@"Unable to find class %s", "IDSOffGridDeliveryHandlesDonationOptions"}];

  __break(1u);
}

void IDSLibrary_cold_1(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *IDSLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMIDSOffGrid.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getIDSOffGridServiceUpdateMessageClass_block_invoke_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getIDSOffGridServiceUpdateMessageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMIDSOffGrid.m" lineNumber:21 description:{@"Unable to find class %s", "IDSOffGridServiceUpdateMessage"}];

  __break(1u);
}

void __getIDSOffGridServerMessageClass_block_invoke_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getIDSOffGridServerMessageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMIDSOffGrid.m" lineNumber:22 description:{@"Unable to find class %s", "IDSOffGridServerMessage"}];

  __break(1u);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}