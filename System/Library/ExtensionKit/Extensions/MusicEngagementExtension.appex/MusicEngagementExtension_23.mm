Swift::Void __swiftcall CompoundRequestResponseInvalidation.append(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = *(a1._rawValue + 2);
  swift_beginAccess();
  swift_beginAccess();
  if (v4)
  {
    v5 = (a1._rawValue + 32);
    do
    {
      v16 = *v5;
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = *(*(&v16 + 1) + 24);
      swift_unknownObjectRetain_n();

      v9(closure #1 in CompoundRequestResponseInvalidation.append(_:)partial apply, v8, ObjectType, *(&v16 + 1));

      swift_beginAccess();
      v10 = *(v2 + 40);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 40) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
        *(v2 + 40) = v10;
      }

      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      }

      v10[2] = v13 + 1;
      *&v10[2 * v13 + 4] = v16;
      *(v2 + 40) = v10;
      swift_endAccess();
      if (((*(*(&v16 + 1) + 40))(ObjectType, *(&v16 + 1)) & 1) != 0 && (*(v2 + 32) & 1) == 0 && (*(v2 + 32) = 1, (v14 = *(v2 + 16)) != 0))
      {
        v15 = *(v2 + 24);

        v14(v6, *(&v16 + 1));
        swift_unknownObjectRelease_n();
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v14, v15);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v5;
      --v4;
    }

    while (v4);
  }
}

void CompoundRequestResponseInvalidation.debugDescription.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    while (v3 < *(v1 + 16))
    {
      ++v3;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v5 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
      v7 = v6;

      v8._countAndFlagsBits = v5;
      v8._object = v7;
      String.append(_:)(v8);

      v9._countAndFlagsBits = 124;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      swift_unknownObjectRelease();

      v4 += 16;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v10._countAndFlagsBits = 93;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
  }
}

uint64_t CompoundRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t *CompoundRequestResponseInvalidation.deinit()
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t CompoundRequestResponseInvalidation.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(trigger:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMd, &_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming(a1, v2 + 32);
  v3 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t BindingRequestResponseInvalidation.init(triggers:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  *(v2 + 16) = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v6, 0, partial apply for closure #1 in BindingRequestResponseInvalidation.init(triggers:), v5);

  return v2;
}

double closure #1 in BindingRequestResponseInvalidation.init(triggers:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    if (*(v4 + 40) == 1 || (*(v4 + 40) = 1, swift_beginAccess(), (v5 = *(v4 + 24)) == 0))
    {
    }

    else
    {
      v6 = *(v4 + 32);
      v7 = lazy protocol witness table accessor for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation(&lazy protocol witness table cache variable for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);

      v5(v4, v7);

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
    }
  }

  return result;
}

uint64_t BindingRequestResponseInvalidation.debugDescription.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities9WhitetailO7BindingCSgMd, &_s14MusicUtilities9WhitetailO7BindingCSgMR);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  return 0x3D676E69646E6942;
}

uint64_t BindingRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

void *BindingRequestResponseInvalidation.deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t BindingRequestResponseInvalidation.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BindingRequestResponseInvalidation()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities9WhitetailO7BindingCSgMd, &_s14MusicUtilities9WhitetailO7BindingCSgMR);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  return 0x3D676E69646E6942;
}

void *specialized CompoundRequestResponseInvalidation.init(responseInvalidations:)(uint64_t a1)
{
  v2 = v1;
  v21 = v2;
  v2[2] = 0;
  v2 += 2;
  *(v2 + 16) = 0;
  v2[3] = _swiftEmptyArrayStorage;
  v4 = v2 + 3;
  v2[1] = 0;
  v5 = *(a1 + 16);
  v20 = v2 + 2;
  swift_beginAccess();
  v19 = v2;
  swift_beginAccess();
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v22 = v5;
      v23 = *v6;
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = v4;
      v11 = *(*(&v23 + 1) + 24);
      swift_unknownObjectRetain_n();

      v11(closure #1 in CompoundRequestResponseInvalidation.append(_:)partial apply, v9, ObjectType, *(&v23 + 1));
      v4 = v10;

      swift_beginAccess();
      v12 = v21[5];
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21[5] = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
        *v10 = v12;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
      }

      v12[2] = v15 + 1;
      *&v12[2 * v15 + 4] = v23;
      *v10 = v12;
      swift_endAccess();
      if (((*(*(&v23 + 1) + 40))(ObjectType, *(&v23 + 1)) & 1) != 0 && (*v20 & 1) == 0 && (*v20 = 1, (v16 = *v19) != 0))
      {
        v17 = v21[3];

        v16(v7, *(&v23 + 1));
        swift_unknownObjectRelease_n();
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v16, v17);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v6;
      v5 = v22 - 1;
    }

    while (v22 != 1);
  }

  return v21;
}

uint64_t sub_100243D08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100243D48()
{

  return swift_deallocObject();
}

uint64_t instantiation function for generic protocol witness table for GenericRequestResponseInvalidation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation(&lazy protocol witness table cache variable for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CompoundRequestResponseInvalidation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation(&lazy protocol witness table cache variable for type CompoundRequestResponseInvalidation and conformance CompoundRequestResponseInvalidation, type metadata accessor for CompoundRequestResponseInvalidation, &protocol conformance descriptor for CompoundRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for BindingRequestResponseInvalidation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation(&lazy protocol witness table cache variable for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Logger.sharePlayTogether.unsafeMutableAddressor()
{
  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.sharePlayTogether);
}

uint64_t SharePlayTogetherSession.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of TaskPriority?(a1, v6, &_sypSgMd_0, &_sypSgMR_0);
  if (!v7)
  {
    outlined destroy of TaskPriority?(v6, &_sypSgMd_0, &_sypSgMR_0);
    goto LABEL_9;
  }

  type metadata accessor for SharePlayTogetherSession(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if (*&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier) && *&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8))
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

uint64_t SharePlayTogetherSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier);

  return v1;
}

SEL *SharePlayTogetherSession.isPlaceholder.getter(SEL *result)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    return [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session) *result];
  }

  __break(1u);
  return result;
}

void *SharePlayTogetherSession.title.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result localizedSessionName];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SharePlayTogetherSession.joinToken.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result joinToken];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.routeType.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.routeType.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SharePlayTogetherSession.routeSymbolName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void key path getter for SharePlayTogetherSession.routeSymbolName : SharePlayTogetherSession(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t key path setter for SharePlayTogetherSession.routeSymbolName : SharePlayTogetherSession(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t SharePlayTogetherSession.routeSymbolName.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void (*SharePlayTogetherSession.routeSymbolName.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t SharePlayTogetherSession.$routeSymbolName.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$routeSymbolName.modify(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__routeSymbolName;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t SharePlayTogetherSession.participants.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void key path getter for SharePlayTogetherSession.participants : SharePlayTogetherSession(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t key path setter for SharePlayTogetherSession.participants : SharePlayTogetherSession(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t SharePlayTogetherSession.participants.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

void (*SharePlayTogetherSession.participants.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.videoBounds.modify;
}

uint64_t SharePlayTogetherSession.$participants.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVG_GMR);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVGGMd, &_s7Combine9PublishedVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$participants.modify(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVG_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVGGMd, &_s7Combine9PublishedVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$videoBounds.modify;
}

void (*SharePlayTogetherSession.connectedParticipantsCount.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t SharePlayTogetherSession.$connectedParticipantsCount.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$connectedParticipantsCount.modify(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

void key path getter for SharePlayTogetherSession.pendingParticipantsCount : SharePlayTogetherSession(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t key path setter for SharePlayTogetherSession.pendingParticipantsCount : SharePlayTogetherSession(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t SharePlayTogetherSession.connectedParticipantsCount.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

void (*SharePlayTogetherSession.pendingParticipantsCount.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t SharePlayTogetherSession.$pendingParticipantsCount.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$pendingParticipantsCount.modify(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t property wrapper backing initializer of SharePlayTogetherSession.host(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  outlined init with copy of TaskPriority?(a1, &v7 - v4, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  outlined init with copy of TaskPriority?(v5, v3, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  Published.init(initialValue:)();
  outlined destroy of TaskPriority?(a1, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  return outlined destroy of TaskPriority?(v5, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
}

double SharePlayTogetherSession.host.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

double key path getter for SharePlayTogetherSession.host : SharePlayTogetherSession(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t key path setter for SharePlayTogetherSession.host : SharePlayTogetherSession(uint64_t a1, void **a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  outlined init with copy of TaskPriority?(a1, &v11 - v6, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of TaskPriority?(v7, v5, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  v9 = v8;
  static Published.subscript.setter();
  return outlined destroy of TaskPriority?(v7, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
}

uint64_t SharePlayTogetherSession.host.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  __chkstk_darwin();
  v4 = &v7 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of TaskPriority?(a1, v4, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  v5 = v1;
  static Published.subscript.setter();
  return outlined destroy of TaskPriority?(a1, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
}

void (*SharePlayTogetherSession.host.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t SharePlayTogetherSession.$host.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSg_GMd, &_s7Combine9PublishedV9PublisherVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSg_GMR);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSgGMd, &_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$host.modify(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSg_GMd, &_s7Combine9PublishedV9PublisherVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSg_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSgGMd, &_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

void SharePlayTogetherSession.qrCode.getter(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for String.Encoding() - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v10 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v9 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 8);
  v11 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 16);
  v12 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 24);
  v13 = v10;
  v14 = v9;
  v15 = v11;
  v16 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  if (v12)
  {
LABEL_8:
    outlined copy of QRCode?(v10, v9, v11, v12);
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v15;
    a1[3] = v16;
    a1[4] = v17;
    return;
  }

  v18 = v4;
  v34 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  v35 = 0;
  v32 = v9;
  v33 = v11;
  v31 = v10;
  v19 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v19)
  {
    v20 = [v19 joinToken];
    if (v20 && (v21 = v20, v22 = [v20 joinURLString], v21, static String._unconditionallyBridgeFromObjectiveC(_:)(), v22, static String.Encoding.utf8.getter(), v23 = String.data(using:allowLossyConversion:)(), v25 = v24, , (*(v3 + 8))(v7, v18), v25 >> 60 != 15))
    {
      specialized QRCode.init(data:errorCorrectionLevel:)(v23, v25, 76, v36);
      v26 = *v8;
      v27 = v8[1];
      v28 = v8[2];
      v29 = v8[3];
      v30 = v36[1];
      *v8 = v36[0];
      *(v8 + 1) = v30;
      v8[4] = v37;
      outlined consume of QRCode?(v26, v27, v28, v29);
      v13 = *v8;
      v14 = v8[1];
      v15 = v8[2];
      v16 = v8[3];
      v17 = v8[4];
      outlined copy of QRCode?(*v8, v14, v15, v16);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v10 = v31;
    v9 = v32;
    v11 = v33;
    v12 = v35;
    goto LABEL_8;
  }

  __break(1u);
}

void SharePlayTogetherSession.joinURL.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v3)
  {
    v4 = [v3 joinToken];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 joinURLString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.init(string:)();
    }

    else
    {
      v7 = type metadata accessor for URL();
      v8 = *(*(v7 - 8) + 56);

      v8(a1, 1, 1, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t SharePlayTogetherSession.isActive.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    if ([result isPlaceholder])
    {
      return 0;
    }

    else if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      return v2 > 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.isPersistent.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.isPersistent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void SharePlayTogetherSession.init(info:endpoint:)(void *a1, void *a2)
{
  v78 = a1;
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSgGMd, &_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSgGMR);
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin();
  v75 = v74 - v4;
  v74[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  __chkstk_darwin();
  v6 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v74 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVGGMd, &_s7Combine9PublishedVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVGGMR);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v74 - v15;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = 0;
  v17 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v83[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore24SharePlayTogetherSessionC11ParticipantVGMd, &_sSay9MusicCore24SharePlayTogetherSessionC11ParticipantVGMR);
  Published.init(initialValue:)();
  (*(v14 + 32))(&v2[v17], v16, v13);
  v18 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v83[0] = 0;
  Published.init(initialValue:)();
  v19 = *(v10 + 32);
  v19(&v2[v18], v12, v9);
  v20 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v83[0] = 0;
  Published.init(initialValue:)();
  v19(&v2[v20], v12, v9);
  v21 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v22 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  outlined init with copy of TaskPriority?(v8, v6, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  v23 = v75;
  Published.init(initialValue:)();
  v24 = v8;
  v25 = v78;
  outlined destroy of TaskPriority?(v24, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  (*(v76 + 32))(&v2[v21], v23, v77);
  v26 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected] = 0;
  v27 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  *&v2[v27] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_16MusicKitInternal13SocialProfileVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually] = 0;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = 0;
  v28 = [v25 identifier];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier];
  *v32 = v29;
  v32[1] = v31;
  v33 = [v25 isHosted];
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] = v33;
  v34 = v79;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint] = v79;
  v35 = v34;
  v36 = [v25 hostInfo];
  LOBYTE(v31) = [v36 routeType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType] = v31;
  v37 = [v35 groupLeader];
  v38 = [v37 transportType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent] = v38 != 6;
  v39 = [v25 hostInfo];
  LODWORD(v38) = [v39 routeType];

  if (v38 == 1 || (v40 = [v25 hostInfo], v41 = objc_msgSend(v40, "routeType"), v40, v41 == 2))
  {
    swift_beginAccess();
    v81 = 0x6C6C69662E726163;
    v82 = 0xE800000000000000;
    Published.init(initialValue:)();
    swift_endAccess();
    v42 = 1;
  }

  else
  {
    v43 = [v35 outputDevices];
    if (v43)
    {
      v44 = v43;
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRAVOutputDevice, MRAVOutputDevice_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v45 = objc_opt_self();
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRAVOutputDevice, MRAVOutputDevice_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v47 = [v45 symbolNameForOutputDevices:isa];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    swift_beginAccess();
    v81 = v48;
    v82 = v50;
    Published.init(initialValue:)();
    swift_endAccess();
    v42 = 0;
  }

  v51 = type metadata accessor for SharePlayTogetherSession(0);
  v80.receiver = v2;
  v80.super_class = v51;
  v52 = objc_msgSendSuper2(&v80, "init");
  v53 = [v25 identifier];
  if (!v53)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = String._bridgeToObjectiveC()();
  }

  v54 = objc_opt_self();
  v55 = v52;
  v56 = [v54 remoteControlGroupSessionWithIdentifier:v53 delegate:v55];

  v57 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  *&v55[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = v56;
  swift_unknownObjectRelease();
  v58 = MRAVEndpointOutputDevicesDidChangeNotification;
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v42;
  *(v60 + 24) = v59;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v61 = v35;
  *&v55[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v58, v35, 1, 1, partial apply for closure #1 in SharePlayTogetherSession.init(info:endpoint:), v60);

  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, static Logger.sharePlayTogether);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v63, v64))
  {

    goto LABEL_15;
  }

  v65 = swift_slowAlloc();
  v66 = swift_slowAlloc();
  v83[0] = v66;
  *v65 = 136446210;
  v67 = *&v55[v57];
  if (v67)
  {
    v68 = v66;
    swift_unknownObjectRetain();

    v69 = [v67 description];
    swift_unknownObjectRelease();
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v73 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v70, v72, v83);

    *(v65 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v63, v64, "Initialized SharePlayTogetherSession object with MR session %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);

LABEL_15:
    return;
  }

  __break(1u);
}

void closure #1 in SharePlayTogetherSession.init(info:endpoint:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(Strong + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint);

        v6 = [v5 outputDevices];
        if (v6)
        {
          type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRAVOutputDevice, MRAVOutputDevice_ptr);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      v7 = objc_opt_self();
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRAVOutputDevice, MRAVOutputDevice_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v9 = [v7 symbolNameForOutputDevices:isa];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void SharePlayTogetherSession.approve(participant:)(uint64_t a1, SEL *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v7 = *(v5 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v7 *a2];

  swift_unknownObjectRelease();
  if (!v13)
  {
    return;
  }

  if (!*(v5 + v6))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15[4] = a3;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error) -> ();
  v15[3] = a4;
  v14 = _Block_copy(v15);
  [swift_unknownObjectRetain() *a5];
  _Block_release(v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SharePlayTogetherSession.endSession()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    v2[4] = CFRange.init(_:);
    v2[5] = 0;
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error) -> ();
    v2[3] = &block_descriptor_37;
    v1 = _Block_copy(v2);
    [swift_unknownObjectRetain() removeAllParticipantsWithCompletion:v1];
    _Block_release(v1);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.leave()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v1)
  {
    v2 = [v1 identifier];
    if (!v2)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = String._bridgeToObjectiveC()();
    }

    v4[4] = CFRange.init(_:);
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v4[3] = &block_descriptor_40;
    v3 = _Block_copy(v4);
    MRGroupSessionLeaveSessionWithIdentifier();
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.cleanup(notifyObservers:)(Swift::Bool notifyObservers)
{
  if (notifyObservers)
  {
    v2 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
    swift_beginAccess();
    v3 = *(v1 + v2);
    v4 = *(v3 + 16);
    if (v4)
    {

      v5 = v3 + 40;
      do
      {
        v6 = *(v5 - 8);
        v9[0] = 1;

        v6(v9);

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  *(v1 + v7) = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  *(v1 + v8) = _swiftEmptyArrayStorage;
}

uint64_t SharePlayTogetherSession.addSessionConnectionObserver(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) == 1)
  {
    return a1();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v8 = *(v2 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(v2 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
  v12[5] = v6;
  *(v2 + v7) = v8;
  return swift_endAccess();
}

uint64_t SharePlayTogetherSession.addSessionEndedObserver(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = _sSbIegy_SbytIegnr_TRTA_0;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

id SharePlayTogetherSession.assertSessionManagementScreenVisible()()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result assertSessionManagementScreenVisible];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.socialProfile(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 identifierType] == 1 && (v5 = objc_msgSend(a1, "participantIdentifier")) != 0)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16) && (, v12 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v7, v9), v14 = v13, , (v14 & 1) != 0))
    {
      v15 = *(v11 + 56);
      v16 = type metadata accessor for SocialProfile();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a2, v15 + *(v17 + 72) * v12, v16);

      return (*(v17 + 56))(a2, 0, 1, v16);
    }

    else
    {

      v21 = type metadata accessor for SocialProfile();
      return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
    }
  }

  else
  {
    v19 = type metadata accessor for SocialProfile();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

void *SharePlayTogetherSession.isEquivalent(to:)(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = [result isPlaceholder];
  result = *(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v4 == [result isPlaceholder])
  {
    v14 = 0;
  }

  else
  {
    v5 = [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [*(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v14 & 1);
}

void SharePlayTogetherSession.updateParticipants()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v114 = &v108 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13SocialProfileVGMd, &_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13SocialProfileVGMR);
  v113 = *(v3 - 8);
  v4 = *(v113 + 64);
  __chkstk_darwin();
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v108 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  __chkstk_darwin();
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v108 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
  __chkstk_darwin();
  v124 = &v108 - v10;
  v115 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v128 = *(v115 - 8);
  __chkstk_darwin();
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v118 = __swift_project_value_buffer(v13, static Logger.sharePlayTogether);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Updating participants", v16, 2u);
  }

  v17 = swift_allocObject();
  v129 = v17;
  *(v17 + 16) = &_swiftEmptySetSingleton;
  v120 = v17 + 16;
  v125 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v18 = *&v1[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
  if (!v18)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v19 = [v18 pendingParticipants];
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(*(v20 + 16), 0);
    v23 = specialized Sequence._copySequenceContents(initializing:)(v132, (v22 + 4), v21, v20);
    outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v132[0]);
    if (v23 == v21)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_10:
  specialized _arrayForceCast<A, B>(_:)(v22);

  v132[0] = specialized Array._copyToContiguousArray()(v24);
  specialized MutableCollection<>.sort(by:)(v132);
  v111 = v3;

  v25 = *&v1[v125];
  if (!v25)
  {
    goto LABEL_77;
  }

  v122 = v132[0];
  v26 = [v25 participants];
  v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = *(v27 + 16);
  if (!v28)
  {
LABEL_14:

    v29 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v29 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(*(v27 + 16), 0);
  v30 = specialized Sequence._copySequenceContents(initializing:)(v132, (v29 + 4), v28, v27);
  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v132[0]);
  if (v30 != v28)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  specialized _arrayForceCast<A, B>(_:)(v29);

  v132[0] = specialized Array._copyToContiguousArray()(v31);
  specialized MutableCollection<>.sort(by:)(v132);

  v121 = v132[0];
  if ((v132[0] & 0x8000000000000000) == 0 && (v132[0] & 0x4000000000000000) == 0)
  {
    v32 = *(v132[0] + 16);
    goto LABEL_18;
  }

  while (1)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:
    swift_getKeyPath();
    swift_getKeyPath();
    v132[0] = v32;
    v33 = v1;
    static Published.subscript.setter();
    v34 = v122;
    v110 = v8;
    if (v122 < 0 || (v122 & 0x4000000000000000) != 0)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v35 = *(v122 + 16);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v132[0] = v35;
    v36 = v33;
    static Published.subscript.setter();
    v132[0] = v34;

    specialized Array.append<A>(contentsOf:)(v37);
    v38 = v132[0];
    v109 = v5;
    v108 = v4;
    v119 = v1;
    if (v132[0] >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (!v39)
      {
LABEL_33:

        v41 = _swiftEmptyArrayStorage;
        goto LABEL_34;
      }
    }

    else
    {
      v39 = *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_33;
      }
    }

    v132[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    v40 = 0;
    v41 = v132[0];
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v42 = *(v38 + 8 * v40 + 32);
        swift_unknownObjectRetain();
      }

      processParticipant #1 (_:) in SharePlayTogetherSession.updateParticipants()(v42, v36, v129, v12);
      swift_unknownObjectRelease();
      v132[0] = v41;
      v44 = v41[2];
      v43 = v41[3];
      v5 = (v44 + 1);
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
        v41 = v132[0];
      }

      ++v40;
      v41[2] = v5;
      outlined init with take of SharePlayTogetherSession.Participant(v12, v41 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v44);
    }

    while (v39 != v40);

    v1 = v119;
LABEL_34:
    swift_getKeyPath();
    swift_getKeyPath();
    v132[0] = v41;
    v126 = v36;
    static Published.subscript.setter();
    v45 = *&v1[v125];
    if (!v45)
    {
      goto LABEL_78;
    }

    v46 = [v45 members];
    v12 = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRUserIdentity, MRUserIdentity_ptr);
    lazy protocol witness table accessor for type MRUserIdentity and conformance NSObject();
    v47 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = v120;
    if ((v47 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v47 = v132[0];
      v1 = v132[1];
      v48 = v132[2];
      v49 = v132[3];
      v8 = v132[4];
    }

    else
    {
      v49 = 0;
      v50 = -1 << *(v47 + 32);
      v1 = (v47 + 56);
      v48 = ~v50;
      v51 = -v50;
      v52 = v51 < 64 ? ~(-1 << v51) : -1;
      v8 = (v52 & *(v47 + 56));
    }

    v117 = v48;
    v53 = (v48 + 64) >> 6;
    v123 = v12;
    if (v47 < 0)
    {
      break;
    }

    while (1)
    {
      v57 = v49;
      v58 = v8;
      v55 = v49;
      if (!v8)
      {
        break;
      }

LABEL_51:
      v56 = (v58 - 1) & v58;
      v5 = *(*(v47 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v58)))));
      if (!v5)
      {
        goto LABEL_59;
      }

LABEL_52:
      if ([v5 type] == 1)
      {
        v127 = v56;
        v59 = [v5 identifier];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        v63 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
        v64 = v126;
        swift_beginAccess();
        v65 = *&v64[v63];
        if (*(v65 + 16) && (, v66 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v60, v62), v68 = v67, , (v68 & 1) != 0))
        {
          v69 = *(v65 + 56);
          v70 = type metadata accessor for SocialProfile();
          v71 = *(v70 - 8);
          v72 = v71;
          v73 = v69 + *(v71 + 72) * v66;
          v74 = v124;
          (*(v71 + 16))(v124, v73, v70);

          (*(v72 + 56))(v74, 0, 1, v70);
          v4 = v120;
          outlined destroy of TaskPriority?(v74, &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
        }

        else
        {

          v75 = type metadata accessor for SocialProfile();
          v76 = v124;
          (*(*(v75 - 8) + 56))(v124, 1, 1, v75);
          outlined destroy of TaskPriority?(v76, &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
          v77 = [v5 identifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v78 = MusicItemID.init(_:)();
          v80 = v79;
          swift_beginAccess();
          specialized Set._Variant.insert(_:)(&v131, v78, v80);
          swift_endAccess();
        }

        v49 = v55;
        v8 = v127;
        v12 = v123;
        if (v47 < 0)
        {
          goto LABEL_44;
        }
      }

      else
      {

        v49 = v55;
        v8 = v56;
        if (v47 < 0)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v55 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v55 >= v53)
      {
        goto LABEL_59;
      }

      v58 = *&v1[8 * v55];
      ++v57;
      if (v58)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
  }

LABEL_44:
  v54 = __CocoaSet.Iterator.next()();
  if (v54)
  {
    v131 = v54;
    swift_dynamicCast();
    v5 = v130[0];
    v55 = v49;
    v56 = v8;
    if (v130[0])
    {
      goto LABEL_52;
    }
  }

LABEL_59:
  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v47);
  v81 = *&v119[v125];
  if (!v81)
  {
LABEL_79:
    __break(1u);

    __break(1u);
    return;
  }

  swift_unknownObjectRetain();

  v82 = [v81 host];
  swift_unknownObjectRelease();
  if (v82)
  {
    v83 = v116;
    v84 = v126;
    processParticipant #1 (_:) in SharePlayTogetherSession.updateParticipants()(v82, v126, v129, v116);
    (*(v128 + 56))(v83, 0, 1, v115);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of TaskPriority?(v83, v110, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
    v85 = v84;
    static Published.subscript.setter();
    swift_unknownObjectRelease();
    outlined destroy of TaskPriority?(v83, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  }

  swift_beginAccess();
  v86 = *v4;
  v87 = *(*v4 + 16);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  v90 = os_log_type_enabled(v88, v89);
  if (v87)
  {
    if (v90)
    {
      v91 = swift_slowAlloc();
      *v91 = 134349056;
      *(v91 + 4) = *(v86 + 16);
      _os_log_impl(&_mh_execute_header, v88, v89, "Fetching %{public}ld profiles", v91, 0xCu);
    }

    swift_getKeyPath();
    v92 = *(v86 + 16);
    if (!v92 || (v93 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8MusicKit0H6ItemIDV_Tt1g5(*(v86 + 16), 0), v89 = v93, v94 = specialized Sequence._copySequenceContents(initializing:)(v130, v93 + 4, v92, v86), v95 = v130[0], v88 = v130[4], , v90 = outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v95), v94 == v92))
    {
      type metadata accessor for SocialProfile();
      lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(&lazy protocol witness table cache variable for type SocialProfile and conformance SocialProfile, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(&lazy protocol witness table cache variable for type SocialProfile and conformance SocialProfile, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      v97 = v112;
      MusicCatalogResourceRequest.init<A>(matching:memberOf:)();
      v98 = type metadata accessor for TaskPriority();
      v99 = v114;
      (*(*(v98 - 8) + 56))(v114, 1, 1, v98);
      v100 = v113;
      v101 = v109;
      v102 = v111;
      (*(v113 + 16))(v109, v97, v111);
      type metadata accessor for MainActor();
      v103 = v126;
      v104 = static MainActor.shared.getter();
      v105 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v106 = (v108 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
      v107 = swift_allocObject();
      *(v107 + 16) = v104;
      *(v107 + 24) = &protocol witness table for MainActor;
      (*(v100 + 32))(v107 + v105, v101, v102);
      *(v107 + v106) = v103;
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v99, &async function pointer to partial apply for closure #4 in SharePlayTogetherSession.updateParticipants(), v107);

      (*(v100 + 8))(v97, v102);

      return;
    }

    __break(1u);
  }

  if (v90)
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&_mh_execute_header, v88, v89, "No pending profiles to fetch", v96, 2u);
  }
}

uint64_t processParticipant #1 (_:) in SharePlayTogetherSession.updateParticipants()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
  __chkstk_darwin();
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v46 - v10;
  __chkstk_darwin();
  v13 = v46 - v12;
  v14 = type metadata accessor for SocialProfile();
  v15 = *(v14 - 8);
  v49 = *(v15 + 56);
  v50 = v14;
  v49(v13, 1, 1);
  v16 = [a1 identity];
  v17 = &stru_1005F2000;
  if (v16)
  {
    v18 = v16;
    if ([v16 type] == 1)
    {
      v46[1] = a3;
      v48 = v13;
      v19 = [v18 identifier];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
      swift_beginAccess();
      v23 = *(a2 + v22);
      if (*(v23 + 16) && (, v47 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v47, v21), v25 = v24, , (v25 & 1) != 0))
      {
        (*(v15 + 16))(v11, *(v23 + 56) + *(v15 + 72) * v47, v50);
        v13 = v48;
        outlined destroy of TaskPriority?(v48, &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);

        v26 = 0;
      }

      else
      {

        v13 = v48;
        outlined destroy of TaskPriority?(v48, &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
        v26 = 1;
      }

      v27 = v50;
      (v49)(v11, v26, 1, v50);
      outlined init with take of SocialProfile?(v11, v13);
      outlined init with copy of TaskPriority?(v13, v9, &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
      if ((*(v15 + 48))(v9, 1, v27) == 1)
      {
        outlined destroy of TaskPriority?(v9, &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
        v28 = [v18 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = MusicItemID.init(_:)();
        v31 = v30;
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v51, v29, v31);
        swift_endAccess();

        v17 = &stru_1005F2000;
        goto LABEL_12;
      }

      outlined destroy of TaskPriority?(v9, &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
    }

    else
    {
    }

    v17 = &stru_1005F2000;
  }

LABEL_12:
  v32 = [a1 v17[156].name];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = [a1 identity];
  if (v36 && (v37 = v36, v38 = [v36 displayName], v37, v38))
  {
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = [a1 isPending];
  v43 = [a1 isGuest];
  v44 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  (v49)(a4 + v44, 1, 1, v50);
  *a4 = v33;
  *(a4 + 8) = v35;
  *(a4 + 16) = v39;
  *(a4 + 24) = v41;
  *(a4 + 32) = v42;
  *(a4 + 33) = v43;
  return outlined assign with take of SocialProfile?(v13, a4 + v44);
}

uint64_t SharePlayTogetherSession.Participant.init(id:displayName:isPending:isGuest:socialProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v17 = type metadata accessor for SocialProfile();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;

  return outlined assign with take of SocialProfile?(a7, a8 + v16);
}

uint64_t closure #1 in SharePlayTogetherSession.updateParticipants()(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identity];
  if (v3 && (v4 = v3, v5 = [v3 displayName], v4, v5))
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = [v2 identity];
  if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v6 != v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0xE000000000000000;
    if (v6)
    {
LABEL_12:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_13;
    }
  }

  if (v8 != v14)
  {
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15 & 1;
}

uint64_t closure #4 in SharePlayTogetherSession.updateParticipants()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v5[5] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal13SocialProfileVGMd, &_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal13SocialProfileVGMR);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[8] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMR);
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v5[11] = *(v9 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[17] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13SocialProfileVGMd, &_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13SocialProfileVGMR);
  *v10 = v5;
  v10[1] = closure #4 in SharePlayTogetherSession.updateParticipants();

  return MusicCatalogResourceRequest.response()(v7, v11);
}

uint64_t closure #4 in SharePlayTogetherSession.updateParticipants()()
{
  *(*v1 + 144) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #4 in SharePlayTogetherSession.updateParticipants();
  }

  else
  {
    v4 = closure #4 in SharePlayTogetherSession.updateParticipants();
  }

  return _swift_task_switch(v4, v3, v2);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  MusicCatalogResourceResponse.items.getter();
  (*(v2 + 8))(v1, v3);
  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.sharePlayTogether);
  v34 = *(v7 + 16);
  v34(v4, v5, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[9];
  v14 = v0[10];
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    lazy protocol witness table accessor for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v16 = dispatch thunk of Collection.distance(from:to:)();
    v33 = *(v14 + 8);
    v33(v12, v13);
    *(v15 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Finished fetching %{public}ld profiles", v15, 0xCu);
  }

  else
  {
    v33 = *(v14 + 8);
    v33(v12, v13);
  }

  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[9];
  v23 = v0[4];
  v22 = v0[5];
  v32 = v22;
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v34(v18, v17, v21);
  v25 = v23;
  v26 = static MainActor.shared.getter();
  v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v28 = (v20 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = &protocol witness table for MainActor;
  (*(v19 + 32))(v29 + v27, v18, v21);
  *(v29 + v28) = v25;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v32, &async function pointer to partial apply for closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants(), v29);

  v33(v17, v21);

  v30 = v0[1];

  return v30();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
  v5[35] = swift_task_alloc();
  v6 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v7 = type metadata accessor for SocialProfile();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVy0cD8Internal13SocialProfileVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVy0cD8Internal13SocialProfileVGGMR);
  v5[45] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants(), v9, v8);
}

void closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants()()
{
  v1 = v0;
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[30];
  v5 = v0[31];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMR);
  (*(*(v6 - 8) + 16))(v3, v4, v6);
  v7 = *(v2 + 36);
  lazy protocol witness table accessor for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>();
  dispatch thunk of Collection.startIndex.getter();
  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  dispatch thunk of Collection.endIndex.getter();
  v114 = v1;
  v109 = v5;
  if (*(v3 + v7) != v1[27])
  {
    v57 = v1[41];
    v105 = (v57 + 16);
    v107 = v1 + 2;
    v108 = (v57 + 32);
    v103 = v57;
    v100 = v7;
    do
    {
      v60 = v1[43];
      v113 = v1[42];
      v61 = v1[40];
      v111 = dispatch thunk of Collection.subscript.read();
      (*v105)(v60);
      v111(v107, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v62 = SocialProfile.id.getter();
      v64 = v63;
      swift_beginAccess();
      v65 = *v108;
      (*v108)(v113, v60, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *(v109 + v8);
      v115 = v67;
      *(v109 + v8) = 0x8000000000000000;
      v68 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v62, v64);
      v70 = v67[2];
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_61;
      }

      v74 = v69;
      if (v67[3] >= v73)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = v68;
          specialized _NativeDictionary.copy()();
          v68 = v81;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v73, isUniquelyReferenced_nonNull_native);
        v68 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v62, v64);
        if ((v74 & 1) != (v75 & 1))
        {

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }
      }

      v76 = v114[42];
      v77 = v114[40];
      if (v74)
      {
        v58 = v68;

        v59 = v115;
        (*(v103 + 40))(v115[7] + *(v103 + 72) * v58, v76, v77);
      }

      else
      {
        v59 = v115;
        v115[(v68 >> 6) + 8] |= 1 << v68;
        v78 = (v115[6] + 16 * v68);
        *v78 = v62;
        v78[1] = v64;
        v65(v115[7] + *(v103 + 72) * v68, v76, v77);
        v79 = v115[2];
        v72 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v72)
        {
          goto LABEL_62;
        }

        v115[2] = v80;
      }

      v1 = v114;
      *(v109 + v8) = v59;

      swift_endAccess();
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v3 + v100) != v114[27]);
  }

  v98 = v8;
  outlined destroy of TaskPriority?(v1[45], &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVy0cD8Internal13SocialProfileVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVy0cD8Internal13SocialProfileVGGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v1[28] + 16);

  v10 = v1;
  if (!v9)
  {
LABEL_31:
    v53 = v10[36];
    v54 = v10[37];
    v55 = v10[35];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v56 = *(v54 + 48);
    if (v56(v55, 1, v53) == 1)
    {
      outlined destroy of TaskPriority?(v10[35], &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
    }

    else
    {
      v82 = v10 + 6;
      v83 = v10[36];
      outlined init with take of SharePlayTogetherSession.Participant(v10[35], v10[39]);
      v84 = SharePlayTogetherSession.host.modify(v10 + 6);
      v86 = v85;
      v87 = v56(v85, 1, v83);
      v88 = v10[39];
      if (!v87)
      {
        v89 = *v88;
        v90 = v88[1];
        swift_beginAccess();
        v91 = *(v109 + v98);
        if (*(v91 + 16))
        {

          v92 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v89, v90);
          if (v93)
          {
            v10 = v114;
            (*(v114[41] + 16))(v114[32], *(v91 + 56) + *(v114[41] + 72) * v92, v114[40]);
            v94 = 0;
          }

          else
          {
            v94 = 1;
            v10 = v114;
          }
        }

        else
        {
          v94 = 1;
          v10 = v114;
        }

        v88 = v10[39];
        v95 = v10[36];
        v96 = v10[32];
        (*(v10[41] + 56))(v96, v94, 1, v10[40]);
        outlined assign with take of SocialProfile?(v96, v86 + *(v95 + 32));
      }

      (v84)(v82, 0);
      outlined destroy of SharePlayTogetherSession.Participant(v88);
    }

    type metadata accessor for SharePlayTogetherSession(0);
    lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(&lazy protocol witness table cache variable for type SharePlayTogetherSession and conformance SharePlayTogetherSession, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    v97 = v10[1];

    v97();
    return;
  }

  v11 = v1[41];
  v13 = v1[37];
  v12 = v1[38];
  v101 = v1[36];
  v110 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v112 = v1[31];
  swift_beginAccess();
  v14 = 0;
  v102 = v9;
  v104 = (v11 + 56);
  v99 = v11;
  v106 = v13;
  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = v10[29];
    if (v14 >= *(v15 + 16))
    {
      break;
    }

    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = *(v13 + 72) * v14;
    outlined init with copy of SharePlayTogetherSession.Participant(v15 + v16 + v17, v10[38]);

    if (*(v12 + 32) == 1)
    {
      v18 = *(v112 + v110);
      if (!v18)
      {
        goto LABEL_66;
      }

      swift_unknownObjectRetain();
      v19 = String._bridgeToObjectiveC()();
      v20 = [v18 pendingParticipantForIdentifier:v19];
      swift_unknownObjectRelease();

      if (v20)
      {
        v21 = [v20 identity];
        swift_unknownObjectRelease();
        if (v21)
        {
          v22 = [v21 identifier];

          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          v26 = *(v109 + v98);
          if (*(v26 + 16) && (, v27 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v23, v25), v29 = v28, , (v29 & 1) != 0))
          {
            (*(v99 + 16))(v10[34], *(v26 + 56) + *(v99 + 72) * v27, v10[40]);

            v30 = 0;
          }

          else
          {

            v30 = 1;
          }

          (*v104)(v10[34], v30, 1, v10[40]);
          swift_getKeyPath();
          swift_getKeyPath();
          v44 = static Published.subscript.modify();
          v50 = v49;
          v51 = *v49;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *v50 = v51;
          if ((v52 & 1) == 0)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
            *v50 = v51;
          }

          v13 = v106;
          if (v14 >= v51[2])
          {
            goto LABEL_64;
          }

          outlined assign with take of SocialProfile?(v10[34], v51 + v16 + v17 + *(v101 + 32));
LABEL_5:
          v44();

          v9 = v102;
          goto LABEL_6;
        }
      }
    }

    v31 = *(v112 + v110);
    if (!v31)
    {
      goto LABEL_65;
    }

    swift_unknownObjectRetain();
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 participantForIdentifier:v32];
    swift_unknownObjectRelease();

    if (v33)
    {
      v34 = [v33 identity];
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = [v34 identifier];

        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = *(v109 + v98);
        if (*(v39 + 16) && (, v40 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v36, v38), v42 = v41, , (v42 & 1) != 0))
        {
          (*(v99 + 16))(v10[33], *(v39 + 56) + *(v99 + 72) * v40, v10[40]);

          v43 = 0;
        }

        else
        {

          v43 = 1;
        }

        (*v104)(v10[33], v43, 1, v10[40]);
        swift_getKeyPath();
        swift_getKeyPath();
        v44 = static Published.subscript.modify();
        v46 = v45;
        v47 = *v45;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *v46 = v47;
        if ((v48 & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
          *v46 = v47;
        }

        v13 = v106;
        if (v14 >= v47[2])
        {
          goto LABEL_63;
        }

        outlined assign with take of SocialProfile?(v10[33], v47 + v16 + v17 + *(v101 + 32));
        goto LABEL_5;
      }
    }

LABEL_6:
    ++v14;
    outlined destroy of SharePlayTogetherSession.Participant(v10[38]);
    if (v9 == v14)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

id SharePlayTogetherSession.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SharePlayTogetherSession(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SharePlayTogetherSession@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharePlayTogetherSession(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t SharePlayTogetherSession.Participant.socialProfile.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);

  return outlined assign with take of SocialProfile?(a1, v3);
}

double SharePlayTogetherSession.groupSessionDidConnect(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v6 = v1;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  v8[5] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v4, &async function pointer to partial apply for closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:), v8);

  return result;
}

uint64_t closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:), v7, v6);
}

uint64_t closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:)()
{
  v22 = v0;

  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharePlayTogether);
  swift_unknownObjectRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446210;
    v7 = [v4 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v10, &v21);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "groupSessionDidConnect %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v12 = v0[11];
  *(v12 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) = 1;
  v13 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v14 = *(v12 + v13);
  v15 = *(v14 + 16);
  if (v15)
  {

    v16 = v14 + 40;
    do
    {
      v17 = *(v16 - 8);

      v17(v18);

      v16 += 16;
      --v15;
    }

    while (v15);
  }

  *(v12 + v13) = _swiftEmptyArrayStorage;

  SharePlayTogetherSession.qrCode.getter(v0 + 2);
  outlined destroy of TaskPriority?((v0 + 2), &_s9MusicCore6QRCodeVSgMd, &_s9MusicCore6QRCodeVSgMR);
  type metadata accessor for SharePlayTogetherSession(0);
  lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(&lazy protocol witness table cache variable for type SharePlayTogetherSession and conformance SharePlayTogetherSession, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v19 = v0[1];

  return v19();
}

double SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  swift_errorRetain();
  v7 = v2;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a2;
  v9[5] = v7;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v5, &async function pointer to partial apply for closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:), v9);

  return result;
}

uint64_t closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:), v7, v6);
}

void closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)()
{
  v31 = v0;

  if (one-time initialization token for sharePlayTogether != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sharePlayTogether);
  swift_errorRetain();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v6 = 138543618;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2082;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySbcMd, &_sySbcMR);
    v10 = Array.description.getter();
    v12 = v11;

    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v12, &v30);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Session invalidated with error %{public}@. Calling %{public}s observers.", v6, 0x16u);
    outlined destroy of TaskPriority?(v7, &_sSo8NSObjectCSgMd_0, &_sSo8NSObjectCSgMR_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v14 = *(v0 + 96);
  v15 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v26 = v15;
    v18 = *(v0 + 96);
    v19 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually;
    v20 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
    v28 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;

    v27 = v0;
    swift_beginAccess();
    v0 = 0;
    v21 = v16 + 40;
    while (1)
    {
      if (v0 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v23 = *(v21 - 8);
      if ((*(v18 + v19) & 1) != 0 || *(v18 + v20) == 1)
      {

        v22 = 1;
      }

      else
      {
        v24 = *(v18 + v28);
        if (!v24)
        {
          __break(1u);
          return;
        }

        v22 = [v24 isPlaceholder];
      }

      ++v0;
      v29 = v22;
      v23(&v29);

      v21 += 16;
      if (v17 == v0)
      {

        v15 = v26;
        v0 = v27;
        break;
      }
    }
  }

  *(v14 + v15) = _swiftEmptyArrayStorage;

  v25 = *(v0 + 8);

  v25();
}

uint64_t closure #1 in SharePlayTogetherSession.groupSession(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in SharePlayTogetherSession.groupSession(_:didUpdate:), v6, v5);
}

void @objc SharePlayTogetherSession.groupSession(_:didUpdate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectRetain();
  v11 = a1;
  specialized SharePlayTogetherSession.groupSession(_:didUpdate:)(a5, a6, a7);
  swift_unknownObjectRelease();
}

uint64_t closure #1 in SharePlayTogetherSession.groupSession(_:didUpdateMembers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in SharePlayTogetherSession.groupSession(_:didUpdateMembers:), v6, v5);
}

uint64_t closure #1 in SharePlayTogetherSession.groupSession(_:didUpdateMembers:)()
{

  SharePlayTogetherSession.updateParticipants()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t one-time initialization function for sharePlayTogether()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sharePlayTogether);
  __swift_project_value_buffer(v0, static Logger.sharePlayTogether);
  return Logger.init(subsystem:category:)();
}

void outlined copy of QRCode?(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    outlined copy of Data._Representation(a2, a3);

    v4 = a4;
  }
}

uint64_t static Logger.sharePlayTogether.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.sharePlayTogether);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10DSPComplexV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10DSPComplexVGMd, &_ss23_ContiguousArrayStorageCySo10DSPComplexVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8MusicKit0H6ItemIDV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit0D6ItemIDVGMd, &_ss23_ContiguousArrayStorageCy8MusicKit0D6ItemIDVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo25MRGroupSessionParticipant_p_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
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

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 176) >= *(*v14 + 176))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = (v4 >> 1);
    if (v4 >= 2)
    {
      type metadata accessor for SyncedLyricsLineView.Word();
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v18[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
    v18[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &stru_1005F2000;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v7 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v8 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = [v7 v6[158].attr];
      if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      v15 = [v8 v6[158].attr];
      if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v12 != v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = 0xE000000000000000;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      if (v14 == v20)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v6 = &stru_1005F2000;
LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_17:
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v6 = &stru_1005F2000;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        __break(1u);
        return;
      }

      v22 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin();
  v39 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v29 - v10;
  v12 = __chkstk_darwin();
  v42 = &v29 - v13;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v40 = *(v11 + 16);
    v41 = v11 + 16;
    v15 = *(v11 + 72);
    v16 = (v11 + 8);
    v37 = (v11 + 32);
    v38 = v14;
    v17 = (v14 + v15 * (a3 - 1));
    v36 = -v15;
    v18 = a1 - a3;
    v30 = v15;
    v19 = v14 + v15 * a3;
LABEL_5:
    v34 = v17;
    v35 = a3;
    v32 = v19;
    v33 = v18;
    v20 = v17;
    while (1)
    {
      v21 = v42;
      v22 = v40;
      v40(v42, v19, v8, v12);
      v23 = v43;
      v22(v43, v20, v8);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of static Comparable.< infix(_:_:)();
      v25 = *v16;
      (*v16)(v23, v8);
      v25(v21, v8);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v17 = &v34[v30];
        v18 = v33 - 1;
        v19 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v26 = *v37;
      v27 = v39;
      (*v37)(v39, v19, v8);
      swift_arrayInitWithTakeFrontToBack();
      v26(v20, v27, v8);
      v20 += v36;
      v19 += v36;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_115:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_156;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v96 = v4;
LABEL_118:
      v119 = v96;
      v4 = *(v96 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v97 = *&v96[16 * v4];
          v98 = v96;
          v99 = *&v96[16 * v4 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v97), (*a3 + 8 * *&v96[16 * v4 + 16]), (*a3 + 8 * v99), v5);
          if (v114)
          {
            goto LABEL_126;
          }

          if (v99 < v97)
          {
            goto LABEL_143;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = specialized _ArrayBuffer._consumeAndCreateNew()(v98);
          }

          if (v4 - 2 >= *(v98 + 2))
          {
            goto LABEL_144;
          }

          v100 = &v98[16 * v4];
          *v100 = v97;
          *(v100 + 1) = v99;
          v119 = v98;
          specialized Array.remove(at:)(v4 - 1);
          v96 = v119;
          v4 = *(v119 + 16);
          if (v4 <= 1)
          {
            goto LABEL_126;
          }
        }

        goto LABEL_154;
      }

LABEL_126:

      return;
    }

LABEL_150:
    v96 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_118;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
LABEL_4:
  v9 = v7;
  if (v7 + 1 >= v6)
  {
    v6 = v7 + 1;
    goto LABEL_33;
  }

  v104 = v8;
  v10 = *a3;
  v118 = *(*a3 + 8 * (v7 + 1));
  v5 = *(v10 + 8 * v7);
  v117 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v115 = closure #1 in SharePlayTogetherSession.updateParticipants()(&v118, &v117);
  if (v114)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = v7 + 2;
  v102 = v7;
  v109 = 8 * v7;
  v111 = v6;
  v11 = (v10 + 8 * v7 + 16);
  while (v6 != v4)
  {
    v13 = *(v11 - 1);
    v14 = *v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = [v14 identity];
    if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = [v13 identity];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 displayName];

      if (v23)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v25;
      }

      else
      {
        v24 = 0;
        v5 = 0xE000000000000000;
      }

      v6 = v111;
      if (v18 != v24)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = 0xE000000000000000;
      if (v18)
      {
        goto LABEL_7;
      }
    }

    if (v20 == v5)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_8:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    ++v4;
    ++v11;
    if ((v115 ^ v12))
    {
      v6 = v4 - 1;
      break;
    }
  }

  v9 = v102;
  v8 = v104;
  v26 = v109;
  if ((v115 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v6 < v102)
  {
    goto LABEL_149;
  }

  if (v102 < v6)
  {
    v27 = 8 * v6 - 8;
    v28 = v6;
    v29 = v102;
    do
    {
      if (v29 != --v28)
      {
        v30 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v31 = *(v30 + v26);
        *(v30 + v26) = *(v30 + v27);
        *(v30 + v27) = v31;
      }

      ++v29;
      v27 -= 8;
      v26 += 8;
    }

    while (v29 < v28);
  }

LABEL_33:
  v32 = a3[1];
  if (v6 >= v32)
  {
    goto LABEL_41;
  }

  if (__OFSUB__(v6, v9))
  {
    goto LABEL_146;
  }

  if (v6 - v9 >= a4)
  {
LABEL_41:
    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_145;
    }

    goto LABEL_42;
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_147;
  }

  if (v9 + a4 < v32)
  {
    v32 = v9 + a4;
  }

  if (v32 < v9)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v6 == v32)
  {
    goto LABEL_41;
  }

  v107 = v32;
  v103 = v9;
  v105 = v8;
  v116 = *a3;
  v4 = *a3 + 8 * v6 - 8;
  v79 = v9 - v6;
  while (2)
  {
    v110 = v4;
    v112 = v6;
    v80 = *(v116 + 8 * v6);
    v108 = v79;
LABEL_95:
    v81 = *v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v82 = [v80 identity];
    if (v82 && (v83 = v82, v84 = [v82 displayName], v83, v84))
    {
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;
    }

    else
    {
      v85 = 0;
      v87 = 0xE000000000000000;
    }

    v88 = [v81 identity];
    if (!v88 || (v89 = v88, v90 = [v88 displayName], v89, !v90))
    {
      v5 = 0;
      v92 = 0xE000000000000000;
      if (v85)
      {
        goto LABEL_105;
      }

LABEL_104:
      if (v87 != v92)
      {
        goto LABEL_105;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_93:
      v6 = v112 + 1;
      v4 = v110 + 8;
      v79 = v108 - 1;
      if (v112 + 1 != v107)
      {
        continue;
      }

      v9 = v103;
      v8 = v105;
      v7 = v107;
      if (v107 < v103)
      {
        goto LABEL_145;
      }

LABEL_42:
      v33 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v33;
      }

      else
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
      }

      v4 = *(v8 + 2);
      v34 = *(v8 + 3);
      v35 = v4 + 1;
      if (v4 >= v34 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v35;
      v36 = &v8[16 * v4];
      *(v36 + 4) = v9;
      *(v36 + 5) = v7;
      v37 = *a1;
      if (!*a1)
      {
        goto LABEL_155;
      }

      if (v4)
      {
        while (2)
        {
          v38 = v35 - 1;
          if (v35 >= 4)
          {
            v43 = &v8[16 * v35 + 32];
            v44 = *(v43 - 64);
            v45 = *(v43 - 56);
            v49 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            if (v49)
            {
              goto LABEL_132;
            }

            v48 = *(v43 - 48);
            v47 = *(v43 - 40);
            v49 = __OFSUB__(v47, v48);
            v41 = v47 - v48;
            v42 = v49;
            if (v49)
            {
              goto LABEL_133;
            }

            v50 = &v8[16 * v35];
            v52 = *v50;
            v51 = *(v50 + 1);
            v49 = __OFSUB__(v51, v52);
            v53 = v51 - v52;
            if (v49)
            {
              goto LABEL_135;
            }

            v49 = __OFADD__(v41, v53);
            v54 = v41 + v53;
            if (v49)
            {
              goto LABEL_138;
            }

            if (v54 >= v46)
            {
              v72 = &v8[16 * v38 + 32];
              v74 = *v72;
              v73 = *(v72 + 1);
              v49 = __OFSUB__(v73, v74);
              v75 = v73 - v74;
              if (v49)
              {
                goto LABEL_142;
              }

              if (v41 < v75)
              {
                v38 = v35 - 2;
              }
            }

            else
            {
LABEL_61:
              if (v42)
              {
                goto LABEL_134;
              }

              v55 = &v8[16 * v35];
              v57 = *v55;
              v56 = *(v55 + 1);
              v58 = __OFSUB__(v56, v57);
              v59 = v56 - v57;
              v60 = v58;
              if (v58)
              {
                goto LABEL_137;
              }

              v61 = &v8[16 * v38 + 32];
              v63 = *v61;
              v62 = *(v61 + 1);
              v49 = __OFSUB__(v62, v63);
              v64 = v62 - v63;
              if (v49)
              {
                goto LABEL_140;
              }

              if (__OFADD__(v59, v64))
              {
                goto LABEL_141;
              }

              if (v59 + v64 < v41)
              {
                goto LABEL_75;
              }

              if (v41 < v64)
              {
                v38 = v35 - 2;
              }
            }
          }

          else
          {
            if (v35 == 3)
            {
              v39 = *(v8 + 4);
              v40 = *(v8 + 5);
              v49 = __OFSUB__(v40, v39);
              v41 = v40 - v39;
              v42 = v49;
              goto LABEL_61;
            }

            v65 = &v8[16 * v35];
            v67 = *v65;
            v66 = *(v65 + 1);
            v49 = __OFSUB__(v66, v67);
            v59 = v66 - v67;
            v60 = v49;
LABEL_75:
            if (v60)
            {
              goto LABEL_136;
            }

            v68 = &v8[16 * v38];
            v70 = *(v68 + 4);
            v69 = *(v68 + 5);
            v49 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v49)
            {
              goto LABEL_139;
            }

            if (v71 < v59)
            {
              break;
            }
          }

          v4 = v38 - 1;
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
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
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_152;
          }

          v5 = v8;
          v76 = *&v8[16 * v4 + 32];
          v77 = *&v8[16 * v38 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v76), (*a3 + 8 * *&v8[16 * v38 + 32]), (*a3 + 8 * v77), v37);
          if (v114)
          {
            goto LABEL_126;
          }

          if (v77 < v76)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_131;
          }

          v78 = v5 + 16 * v4;
          *(v78 + 32) = v76;
          *(v78 + 40) = v77;
          v119 = v5;
          specialized Array.remove(at:)(v38);
          v8 = v119;
          v35 = *(v119 + 16);
          if (v35 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    break;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;

  if (v85 == v5)
  {
    goto LABEL_104;
  }

LABEL_105:
  v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if ((v93 & 1) == 0)
  {
    goto LABEL_93;
  }

  if (v116)
  {
    v94 = *v4;
    v80 = *(v4 + 8);
    *v4 = v80;
    *(v4 + 8) = v94;
    v4 -= 8;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

{
  v5 = a3[1];
  if (v5 < 1)
  {
    NewAByxGyFSnySiG_Tgq5_1 = _swiftEmptyArrayStorage;
LABEL_105:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
    }

    v90 = NewAByxGyFSnySiG_Tgq5_1 + 16;
    v91 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &NewAByxGyFSnySiG_Tgq5_1[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
          goto LABEL_114;
        }
      }

      goto LABEL_141;
    }

LABEL_114:

    return;
  }

  v6 = 0;
  NewAByxGyFSnySiG_Tgq5_1 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      v10 = (*a3 + 32 * v8);
      if (*v10 == *v9 && v10[1] == v9[1])
      {
        v12 = 0;
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (*(v13 - 1) == v13[3] && *v13 == v15)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else if ((v12 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            goto LABEL_23;
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v8 + a4;
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0(0, *(NewAByxGyFSnySiG_Tgq5_1 + 2) + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
    }

    v45 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    v44 = *(NewAByxGyFSnySiG_Tgq5_1 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0((v44 > 1), v45 + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
    }

    *(NewAByxGyFSnySiG_Tgq5_1 + 2) = v46;
    v47 = &NewAByxGyFSnySiG_Tgq5_1[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(NewAByxGyFSnySiG_Tgq5_1 + 4);
          v51 = *(NewAByxGyFSnySiG_Tgq5_1 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &NewAByxGyFSnySiG_Tgq5_1[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &NewAByxGyFSnySiG_Tgq5_1[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &NewAByxGyFSnySiG_Tgq5_1[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &NewAByxGyFSnySiG_Tgq5_1[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v8 + 32];
        v88 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v49 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v87), (*a3 + 32 * *&NewAByxGyFSnySiG_Tgq5_1[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
        }

        if (v8 >= *(NewAByxGyFSnySiG_Tgq5_1 + 2))
        {
          goto LABEL_117;
        }

        v89 = &NewAByxGyFSnySiG_Tgq5_1[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        _sSa6remove2atxSi_tFSnySiG_Tgq5_1(v49);
        v46 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &NewAByxGyFSnySiG_Tgq5_1[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &NewAByxGyFSnySiG_Tgq5_1[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &NewAByxGyFSnySiG_Tgq5_1[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = *v38 == v35 && *(v38 + 8) == v36;
    if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

{
  v5 = a3[1];
  if (v5 < 1)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 = _swiftEmptyArrayStorage;
LABEL_124:
    NewAByxGyFSnySiG_Tgq5_2 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 176);
    v10 = *(*(*a3 + 8 * v6) + 176);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 176);
      v14 = v13 >= v12;
      ++v11;
      v12 = v13;
    }

    while ((((v9 < v10) ^ v14) & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(v24 + 176) >= *(*v26 + 176))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1);
    }

    v30 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 + 2);
    v29 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1((v29 > 1), v30 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1);
    }

    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 + 2) = v31;
    v32 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v30];
    *(v32 + 4) = v6;
    *(v32 + 5) = v8;
    v104 = v8;
    v33 = *a1;
    if (!*a1)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 + 4);
      v36 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v31];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v31];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1;
    v106 = v34 - 1;
    v73 = *&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v34 + 32];
    v74 = *&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v34 + 40];
    v107 = *&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v34 + 16];
    v108 = v74;
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = &v33[v80];
      v83 = v80 < 1;
      NewAByxGyFSnySiG_Tgq5_2 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v77 + 176) >= *(*v85 + 176))
        {
          break;
        }

        v89 = v75 == v77;
        v77 += 8;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        v75 += 8;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85;
      v85 += 8;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = &v33[v81];
    v86 = v109;
    if (v81 < 1 || v76 <= New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1)
    {
      v85 = v33;
      v90 = v77;
      NewAByxGyFSnySiG_Tgq5_2 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      NewAByxGyFSnySiG_Tgq5_2 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 8;
        v79 -= 8;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 8;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (*(v94 + 176) < *(*v90 + 176))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          v79 -= 8;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        v77 -= 8;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= &v85[v95 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      NewAByxGyFSnySiG_Tgq5_2 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_2(NewAByxGyFSnySiG_Tgq5_2);
    }

    if (v86 > *(NewAByxGyFSnySiG_Tgq5_2 + 2))
    {
      goto LABEL_137;
    }

    v96 = &NewAByxGyFSnySiG_Tgq5_2[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    _sSa6remove2atxSi_tFSnySiG_Tgq5_2(v86);
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 = NewAByxGyFSnySiG_Tgq5_2;
    v31 = *(NewAByxGyFSnySiG_Tgq5_2 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_2(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1);
LABEL_126:
  v97 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 + 2);
  if (v97 < 2)
  {
LABEL_134:
  }

  else
  {
    while (*a3)
    {
      v98 = *&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v97];
      v99 = *&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v97 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v98), (*a3 + 8 * *&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v97 + 16]), (*a3 + 8 * v99), NewAByxGyFSnySiG_Tgq5_2);
      if (v103)
      {
        goto LABEL_134;
      }

      if (v99 < v98)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_2(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1);
      }

      if (v97 - 2 >= *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 + 2))
      {
        goto LABEL_151;
      }

      v100 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1[16 * v97];
      *v100 = v98;
      *(v100 + 1) = v99;
      _sSa6remove2atxSi_tFSnySiG_Tgq5_2(v97 - 1);
      v97 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1 + 2);
      if (v97 <= 1)
      {
        goto LABEL_134;
      }
    }

LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = a2;
    }

    v63 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_30:
      v34 = v6;
      goto LABEL_61;
    }

    v15 = &stru_1005F2000;
    while (1)
    {
      __dst = v5;
      v16 = *v5;
      v17 = *v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = [v16 v15[158].attr];
      v59 = v6;
      if (v18 && (v19 = v18, v20 = [v18 displayName], v19, v20))
      {
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = [v17 v15[158].attr];
      if (v24 && (v25 = v24, v26 = [v24 displayName], v25, v26))
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        if (v21 != v27)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v29 = 0xE000000000000000;
        if (v21)
        {
          goto LABEL_23;
        }
      }

      if (v23 == v29)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v15 = &stru_1005F2000;
LABEL_26:
        v32 = v13;
        v31 = v59;
        v33 = v59 == v13++;
        v5 = __dst;
        if (v33)
        {
          goto LABEL_28;
        }

LABEL_27:
        *v31 = *v32;
        goto LABEL_28;
      }

LABEL_23:
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v15 = &stru_1005F2000;
      if ((v30 & 1) == 0)
      {
        goto LABEL_26;
      }

      v31 = v59;
      v32 = __dst;
      v5 = __dst + 1;
      if (v59 != __dst)
      {
        goto LABEL_27;
      }

LABEL_28:
      v6 = v31 + 1;
      if (v13 >= v63 || v5 >= v4)
      {
        goto LABEL_30;
      }
    }
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v35 = a4;
    memmove(a4, a2, 8 * v12);
    v5 = a2;
    a4 = v35;
  }

  v63 = &a4[v12];
  v13 = a4;
  if (v10 < 8 || v5 <= v6)
  {
    v34 = v5;
    goto LABEL_61;
  }

  v37 = &stru_1005F2000;
  v58 = a4;
  v60 = v6;
  do
  {
    __dsta = v5;
    v38 = v5 - 1;
    --v4;
    v39 = v63;
    v57 = v38;
    while (1)
    {
      v40 = *--v39;
      v41 = *v38;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v42 = [v40 v37[158].attr];
      if (v42 && (v43 = v42, v44 = [v42 displayName], v43, v44))
      {
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = [v41 v37[158].attr];
      if (v48 && (v49 = v48, v50 = [v48 displayName], v49, v50))
      {
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        if (v45 != v51)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v53 = 0xE000000000000000;
        if (v45)
        {
          goto LABEL_50;
        }
      }

      if (v47 == v53)
      {
        v54 = 0;
        goto LABEL_51;
      }

LABEL_50:
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_51:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v55 = v4 + 1;
      if (v54)
      {
        break;
      }

      v38 = v57;
      if (v55 != v63)
      {
        *v4 = *v39;
      }

      --v4;
      v63 = v39;
      v37 = &stru_1005F2000;
      if (v39 <= v58)
      {
        v63 = v39;
        v13 = v58;
        v34 = __dsta;
        goto LABEL_61;
      }
    }

    v34 = v57;
    if (v55 != __dsta)
    {
      *v4 = *v57;
    }

    v13 = v58;
    v37 = &stru_1005F2000;
    if (v63 <= v58)
    {
      break;
    }

    v5 = v57;
  }

  while (v57 > v60);
LABEL_61:
  if (v34 != v13 || v34 >= (v13 + ((v63 - v13 + (v63 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v34, v13, 8 * (v63 - v13));
  }

  return 1;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5_0(0, *(a1 + 16), 0, a1);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
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
        goto LABEL_27;
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
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
    v14 = 1;
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
      if (__OFADD__(v14++, 1))
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

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo25MRGroupSessionParticipant_p_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

BOOL specialized static SharePlayTogetherSession.Participant.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfile();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSg_ADtMd, &_s16MusicKitInternal13SocialProfileVSg_ADtMR);
  __chkstk_darwin();
  v12 = &v21 - v11;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  if (v13)
  {
    if (!v14 || (*(a1 + 16) != *(a2 + 16) || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v15 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v16 = *(v10 + 48);
  outlined init with copy of TaskPriority?(a1 + v15, v12, &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
  outlined init with copy of TaskPriority?(a2 + v15, &v12[v16], &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
  v17 = *(v5 + 48);
  if (v17(v12, 1, v4) != 1)
  {
    outlined init with copy of TaskPriority?(v12, v9, &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
    if (v17(&v12[v16], 1, v4) == 1)
    {
      (*(v5 + 8))(v9, v4);
      goto LABEL_17;
    }

    (*(v5 + 32))(v7, &v12[v16], v4);
    lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(&lazy protocol witness table cache variable for type SocialProfile and conformance SocialProfile, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20 = *(v5 + 8);
    v20(v7, v4);
    v20(v9, v4);
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
    return (v19 & 1) != 0;
  }

  if (v17(&v12[v16], 1, v4) != 1)
  {
LABEL_17:
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal13SocialProfileVSg_ADtMd, &_s16MusicKitInternal13SocialProfileVSg_ADtMR);
    return 0;
  }

  outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
  return 1;
}

void outlined consume of QRCode?(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    outlined consume of Data._Representation(a2, a3);
  }
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double block_destroy_helper_40(uint64_t a1)
{

  return result;
}

{

  return result;
}

uint64_t sub_10024DB0C()
{

  return swift_deallocObject();
}

uint64_t outlined assign with take of SocialProfile?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(a1, v4, v5, v7, v6);
}

double specialized SharePlayTogetherSession.groupSession(_:didUpdate:)(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v8 = &v18 - v7;
  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.sharePlayTogether);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, a1, v12, 2u);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = v6;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v8, a3, v16);

  return result;
}

void type metadata completion function for SharePlayTogetherSession(uint64_t a1)
{
  type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<String>, &type metadata for String, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<MPCPlayerResponse?>(319, &lazy cache variable for type metadata for Published<[SharePlayTogetherSession.Participant]>, &_sSay9MusicCore24SharePlayTogetherSessionC11ParticipantVGMd, &_sSay9MusicCore24SharePlayTogetherSessionC11ParticipantVGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Int>, &type metadata for Int, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<MPCPlayerResponse?>(319, &lazy cache variable for type metadata for Published<SharePlayTogetherSession.Participant?>, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMR);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10024E1A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10024E274(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for SharePlayTogetherSession.Participant(uint64_t a1)
{
  type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for String?, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SocialProfile?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Published<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for SocialProfile?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SocialProfile?)
  {
    type metadata accessor for SocialProfile();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SocialProfile?);
    }
  }
}

uint64_t objectdestroy_46Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_10024E4E4()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of SharePlayTogetherSession.Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MRUserIdentity and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type MRUserIdentity and conformance NSObject;
  if (!lazy protocol witness table cache variable for type MRUserIdentity and conformance NSObject)
  {
    type metadata accessor for UIAction(255, &lazy cache variable for type metadata for MRUserIdentity, MRUserIdentity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MRUserIdentity and conformance NSObject);
  }

  return result;
}

uint64_t sub_10024E5E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  result = dispatch thunk of SocialProfileFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #4 in SharePlayTogetherSession.updateParticipants()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13SocialProfileVGMd, &_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13SocialProfileVGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #4 in SharePlayTogetherSession.updateParticipants()(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_101Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants()(a1, v6, v7, v1 + v5, v8);
}

unint64_t lazy protocol witness table accessor for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>()
{
  result = lazy protocol witness table cache variable for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>;
  if (!lazy protocol witness table cache variable for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>);
  }

  return result;
}

uint64_t outlined init with copy of SharePlayTogetherSession.Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SharePlayTogetherSession.Participant(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of SocialProfile?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd, &_s16MusicKitInternal13SocialProfileVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024EB60()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SharePlayTogetherSession.groupSession(_:didUpdateMembers:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in SharePlayTogetherSession.groupSession(_:didUpdateMembers:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in SharePlayTogetherSession.groupSession(_:didUpdatePendingParticipants:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in SharePlayTogetherSession.groupSession(_:didUpdate:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SharePlayTogetherSession.groupSession(_:didUpdate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in SharePlayTogetherSession.groupSession(_:didUpdate:)(a1, v4, v5, v6);
}

uint64_t GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 225) = a3;
  *(v4 + 224) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v4 + 32) = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities26AuthorizationPromptOptionsVSgMd, &_s15GroupActivities26AuthorizationPromptOptionsVSgMR);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = type metadata accessor for GroupActivitiesManager.PrepareResult(0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v7 = type metadata accessor for AuthorizationPromptOptions.PromptCondition();
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();
  v8 = type metadata accessor for AuthorizationPromptOptions();
  *(v4 + 160) = v8;
  *(v4 + 168) = *(v8 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = type metadata accessor for MainActor();
  *(v4 + 192) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 200) = v10;
  *(v4 + 208) = v9;

  return _swift_task_switch(GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v10, v9);
}

uint64_t GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 80);
  v5 = &enum case for AuthorizationPromptOptions.PromptCondition.always(_:);
  if (!*(v0 + 224))
  {
    v5 = &enum case for AuthorizationPromptOptions.PromptCondition.automatic(_:);
  }

  (*(*(v0 + 144) + 104))(*(v0 + 152), *v5, *(v0 + 136));
  AuthorizationPromptOptions.init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);
  v7 = *(v0 + 128);
  v8 = *(v0 + 80);

  return GroupActivitiesManager.prepareForActivation(options:)(v7, v8);
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);

  outlined destroy of TaskPriority?(v2, &_s15GroupActivities26AuthorizationPromptOptionsVSgMd, &_s15GroupActivities26AuthorizationPromptOptionsVSgMR);
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return _swift_task_switch(GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v4, v3);
}

{
  v43 = v0;

  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.groupActivities);
  outlined init with copy of GroupActivitiesManager.PrepareResult(v2, v1, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136446210;
    outlined init with copy of GroupActivitiesManager.PrepareResult(v7, v8, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    outlined destroy of GroupActivitiesManager.PrepareResult(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v13, &v42);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "prepareForActivation result=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {

    outlined destroy of GroupActivitiesManager.PrepareResult(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
  }

  v15 = v0[13];
  v16 = v0[5];
  v17 = v0[6];
  outlined init with copy of GroupActivitiesManager.PrepareResult(v0[16], v15, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v18 = *(v17 + 48);
  if (v18(v15, 4, v16))
  {
    v19 = v0[16];
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[5];
    (*(v0[21] + 8))(v0[22], v0[20]);
    outlined destroy of GroupActivitiesManager.PrepareResult(v20, type metadata accessor for GroupActivitiesManager.PrepareResult);
    outlined init with take of GroupActivitiesManager.PrepareResult(v19, v21, type metadata accessor for GroupActivitiesManager.PrepareResult);
    if ((v18(v21, 4, v22) | 2) == 3)
    {
      v41 = 0;
    }

    else
    {
      outlined destroy of GroupActivitiesManager.PrepareResult(v0[12], type metadata accessor for GroupActivitiesManager.PrepareResult);
      v41 = 1;
    }
  }

  else
  {
    v23 = v0[21];
    v39 = v0[20];
    v40 = v0[22];
    v38 = v0[16];
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[6];
    v27 = v0[3];
    v28 = v0[4];
    v37 = v28;
    v29 = v0[2];
    outlined init with take of GroupActivitiesManager.PrepareResult(v0[13], v24, type metadata accessor for GroupActivitiesManager.Activity);
    GroupActivitiesManager.beginMeasuringInitiationTime()();
    v30 = type metadata accessor for TaskPriority();
    v41 = 1;
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    outlined init with copy of GroupActivitiesManager.PrepareResult(v24, v25, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = v29;

    v32 = static MainActor.shared.getter();
    v33 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v29;
    v34[5] = v27;
    outlined init with take of GroupActivitiesManager.PrepareResult(v25, v34 + v33, type metadata accessor for GroupActivitiesManager.Activity);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v37, &async function pointer to partial apply for closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v34);

    outlined destroy of GroupActivitiesManager.PrepareResult(v24, type metadata accessor for GroupActivitiesManager.Activity);
    outlined destroy of GroupActivitiesManager.PrepareResult(v38, type metadata accessor for GroupActivitiesManager.PrepareResult);
    (*(v23 + 8))(v40, v39);
  }

  v35 = v0[1];

  return v35(v41);
}

uint64_t GroupActivitiesManager.leave(performLeaveCommand:)(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 280) = a1;
  *(v2 + 144) = type metadata accessor for MainActor();
  *(v2 + 152) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return _swift_task_switch(GroupActivitiesManager.leave(performLeaveCommand:), v4, v3);
}

uint64_t GroupActivitiesManager.leave(performLeaveCommand:)()
{
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 176) = __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 280);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "👋🏻 Leaving session. Will perform leaveCommand=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 280);

  if (v6 == 1)
  {
    v7 = *(v0 + 136);
    v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v0 + 184) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v7 + v8) = 1;
    swift_beginAccess();
    v9 = v7[5];
    v10 = v7[6];
    __swift_project_boxed_opaque_existential_0Tm(v7 + 2, v9);
    v11 = *(v9 - 8);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    (*(v11 + 16))();
    v13 = (*(v10 + 48))(v9, v10);
    *(v0 + 200) = v13;
    (*(v11 + 8))(v12, v9);
    if (v13)
    {
      v14 = *(v0 + 136);
      *(v0 + 40) = &type metadata for Player.LeaveSessionCommand;
      *(v0 + 48) = &protocol witness table for Player.LeaveSessionCommand;
      *(v0 + 208) = [objc_opt_self() systemRoute];
      *(v0 + 120) = v14;

      v15 = String.init<A>(reflecting:)();
      *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 56) = v15;
      *(v0 + 64) = v16;
      *(v0 + 216) = static MainActor.shared.getter();
      v18 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 224) = v18;
      *(v0 + 232) = v17;

      return _swift_task_switch(GroupActivitiesManager.leave(performLeaveCommand:), v18, v17);
    }

    *(*(v0 + 136) + *(v0 + 184)) = 0;
  }

  else
  {
  }

  v19 = *(v0 + 136);
  v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v19 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    GroupSession.leave()();
  }

  v21 = *(v0 + 136);
  *(v19 + v20) = 0;

  GroupActivitiesManager.session.didset();
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v23 = *(v21 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v23)
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Leave completed, pending session found", v26, 2u);
    }

    *(v19 + v20) = v23;
    swift_retain_n();

    GroupActivitiesManager.session.didset();

    *(v21 + v22) = 0;
  }

  v27 = *(v0 + 8);

  return v27();
}

{
  v1 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd, &_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMR);
  v2 = swift_allocObject();
  v0[30] = v2;
  *(v2 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming((v0 + 2), v2 + 32);
  v0[31] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = GroupActivitiesManager.leave(performLeaveCommand:);

  return PlaybackController.perform(_:options:intent:issuer:)(v2, 0x10000, 1, v1, 0, (v0 + 7));
}

{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(GroupActivitiesManager.leave(performLeaveCommand:), v1, v2);
}

{
  v1 = *(v0 + 264);

  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return _swift_task_switch(v4, v2, v3);
  }

LABEL_5:
  v5 = *(v0 + 200);

  outlined destroy of TaskPriority?(v0 + 56, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = GroupActivitiesManager.leave(performLeaveCommand:);

  return _swift_task_switch(v4, v2, v3);
}

{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(GroupActivitiesManager.leave(performLeaveCommand:), v1, v2);
}

{
  v1 = v0[26];
  v2 = v0[25];

  v3 = v0[20];
  v4 = v0[21];

  return _swift_task_switch(GroupActivitiesManager.leave(performLeaveCommand:), v3, v4);
}

{
  v20 = v0;

  outlined destroy of TaskPriority?((v0 + 7), &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[34];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[16] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to perform leaveCommand with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
  }

  *(v0[17] + v0[23]) = 0;
  v9 = v0[17];
  v10 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v9 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    GroupSession.leave()();
  }

  v11 = v0[17];
  *(v9 + v10) = 0;

  GroupActivitiesManager.session.didset();
  v12 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v13 = *(v11 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v13)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Leave completed, pending session found", v16, 2u);
    }

    *(v9 + v10) = v13;
    swift_retain_n();

    GroupActivitiesManager.session.didset();

    *(v11 + v12) = 0;
  }

  v17 = v0[1];

  return v17();
}

{

  *(v0[17] + v0[23]) = 0;
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    GroupSession.leave()();
  }

  v3 = v0[17];
  *(v1 + v2) = 0;

  GroupActivitiesManager.session.didset();
  v4 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v5 = *(v3 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v5)
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Leave completed, pending session found", v8, 2u);
    }

    *(v1 + v2) = v5;
    swift_retain_n();

    GroupActivitiesManager.session.didset();

    *(v3 + v4) = 0;
  }

  v9 = v0[1];

  return v9();
}

uint64_t GroupActivitiesManager.leave(performLeaveCommand:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = GroupActivitiesManager.leave(performLeaveCommand:);
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = GroupActivitiesManager.leave(performLeaveCommand:);
  }

  return _swift_task_switch(v7, v4, v6);
}

void GroupActivitiesManager.postEvent(_:participantID:)(id *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v187 = a3;
  v185 = a2;
  v6 = a1[1];
  v170 = *a1;
  v169 = v6;
  v7 = a1[3];
  v168 = a1[2];
  v167 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v174 = v156 - v8;
  v177 = type metadata accessor for GroupSessionEvent();
  v176 = *(v177 - 8);
  __chkstk_darwin();
  v171 = v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v175 = v156 - v10;
  __chkstk_darwin();
  v178 = v156 - v11;
  v166 = type metadata accessor for GroupSessionEvent.Action.QueueChange.Item();
  v162 = *(v166 - 8);
  __chkstk_darwin();
  v164 = v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for GroupSessionEvent.Action.QueueChange();
  v161 = *(v165 - 8);
  __chkstk_darwin();
  v163 = v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for GroupSessionEvent.Action();
  v180 = *(v181 - 8);
  __chkstk_darwin();
  v173 = v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = v156 - v15;
  v191 = type metadata accessor for UUID();
  v184 = *(v191 - 8);
  __chkstk_darwin();
  v190 = v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  __chkstk_darwin();
  v182 = v156 - v17;
  v192 = type metadata accessor for Participant();
  v193 = *(v192 - 8);
  __chkstk_darwin();
  v172 = v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = v156 - v19;
  __chkstk_darwin();
  v189 = v156 - v20;
  __chkstk_darwin();
  v186 = v156 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMR);
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = v156 - v26;
  swift_beginAccess();
  v28 = v3[7];
  v29 = v3[8];
  v30 = v3[9];
  v31 = v3[10];
  *(v3 + 7) = xmmword_1004F2EC0;
  v3[9] = 0;
  v3[10] = 0;
  outlined consume of SharedListening.Event.Alert?(v28, v29, v30, v31);
  swift_beginAccess();
  v33 = v3[5];
  v32 = v3[6];
  __swift_project_boxed_opaque_existential_0Tm(v3 + 2, v33);
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin();
  v37 = v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v35);
  v38 = (*(v32 + 56))(v33, v32);
  (*(v34 + 8))(v37, v33);
  v39 = [v38 applicationState];

  v183 = a1;
  if ((*(a1 + 48) | 4) == 4 && v39 || !*(v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    return;
  }

  GroupSession.state.getter();
  (*(v23 + 104))(v25, enum case for GroupSession.State.joined<A>(_:), v22);
  v41 = type metadata accessor for GroupActivitiesManager.Activity(0);
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v156[0] = v41;
  v42 = static GroupSession.State.== infix(_:_:)();
  v43 = *(v23 + 8);
  v43(v25, v22);
  v43(v27, v22);
  if ((v42 & 1) == 0)
  {
LABEL_27:

    return;
  }

  v188 = String.rawIdentifier.getter(v185, v187);
  v160 = v44;
  v156[1] = v40;
  v45 = GroupSession.activeParticipants.getter();
  v46 = v45;
  v47 = v45 + 56;
  v48 = 1 << *(v45 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v45 + 56);
  v51 = (v48 + 63) >> 6;
  v158 = (v193 + 16);
  v159 = (v193 + 32);
  v157 = v184 + 1;
  v184 = (v193 + 8);

  v52 = 0;
  v53 = v192;
  if (!v50)
  {
LABEL_9:
    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v54 >= v51)
      {

        v66 = 1;
        v67 = v186;
        v68 = v182;
        goto LABEL_22;
      }

      v50 = *(v47 + 8 * v54);
      ++v52;
      if (v50)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  while (1)
  {
    v54 = v52;
LABEL_12:
    v55 = v46;
    v56 = v193;
    v57 = *(v46 + 48) + *(v193 + 72) * (__clz(__rbit64(v50)) | (v54 << 6));
    v58 = v189;
    (*(v193 + 16))(v189, v57, v53);
    v59 = v53;
    v60 = *(v56 + 32);
    v60(v194, v58, v59);
    v61 = v190;
    Participant.id.getter();
    v62 = UUID.uuidString.getter();
    v64 = v63;
    (*v157)(v61, v191);
    if (v62 == v188 && v64 == v160)
    {

      goto LABEL_21;
    }

    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v65)
    {
      break;
    }

    v50 &= v50 - 1;
    v53 = v192;
    (*v184)(v194, v192);
    v52 = v54;
    v46 = v55;
    if (!v50)
    {
      goto LABEL_9;
    }
  }

LABEL_21:

  v68 = v182;
  v69 = v192;
  v60(v182, v194, v192);
  v53 = v69;
  v66 = 0;
  v67 = v186;
LABEL_22:
  v70 = v193;
  (*(v193 + 56))(v68, v66, 1, v53);

  if ((*(v70 + 48))(v68, 1, v53) == 1)
  {
    outlined destroy of TaskPriority?(v68, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    if (one-time initialization token for groupActivities == -1)
    {
LABEL_24:
      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, static Logger.groupActivities);
      v72 = v187;

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v197[0] = v76;
        *v75 = 136446210;
        *(v75 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v185, v72, v197);
        _os_log_impl(&_mh_execute_header, v73, v74, "No active participant with identifier=%{public}s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v76);
      }

      goto LABEL_27;
    }

LABEL_82:
    swift_once();
    goto LABEL_24;
  }

  v77 = v53;
  (*v159)(v67, v68, v53);
  v78 = *v183;
  v79 = *(v183 + 8);
  v80 = *(v183 + 9) | ((*(v183 + 13) | (*(v183 + 15) << 16)) << 32);
  v82 = v183[2];
  v81 = v183[3];
  v83 = *(v183 + 48);
  v84 = v79 | (v80 << 8);
  if (v83 <= 2)
  {
    if (*(v183 + 48))
    {
      v85 = v53;
      v86 = v181;
      v87 = v183;
      if (v83 != 1)
      {
        if (v83 == 2)
        {
          v88 = v179;
          static GroupSessionEvent.Action.skip(item:)();
          goto LABEL_53;
        }

        goto LABEL_76;
      }

      v88 = v179;
      static GroupSessionEvent.Action.react(with:)();
LABEL_53:
      (*v158)(v172, v67, v85);
      (*(v180 + 16))(v173, v88, v86);
      v118 = *(v87 + 8);
      v119 = *(v87 + 48);
      if (v119 == 4)
      {
        v120 = v177;
      }

      else
      {
        v120 = v177;
        v121 = v174;
        if (v119 == 5)
        {
          v123 = *(v87 + 32);
          v122 = *(v87 + 40);
          v124 = *(v87 + 16);
          v125 = *(v87 + 24);
          if (!(v118 | *v87 | v122 | v123 | v125 | v124) || *v87 == 2 && !(v122 | v118 | v123 | v125 | v124))
          {
            v126 = type metadata accessor for URL();
            (*(*(v126 - 8) + 56))(v121, 1, 1, v126);
LABEL_61:
            v127 = v178;
            GroupSessionEvent.init(originator:action:url:)();
            GroupSession.showNotice(_:)();
            v128 = v176;
            v129 = v175;
            if (one-time initialization token for groupActivities != -1)
            {
              swift_once();
            }

            v130 = type metadata accessor for Logger();
            __swift_project_value_buffer(v130, static Logger.groupActivities);
            v131 = *(v128 + 16);
            v131(v129, v127, v120);
            v132 = Logger.logObject.getter();
            v133 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = swift_slowAlloc();
              v135 = v120;
              v136 = swift_slowAlloc();
              *&v197[0] = v136;
              *v134 = 136446210;
              v131(v171, v129, v135);
              v137 = String.init<A>(describing:)();
              v139 = v138;
              v140 = *(v128 + 8);
              v140(v129, v135);
              v141 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v137, v139, v197);

              *(v134 + 4) = v141;
              _os_log_impl(&_mh_execute_header, v132, v133, "Posting event=%{public}s", v134, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v136);

              v140(v178, v135);
              (*(v180 + 8))(v179, v181);
              (*v184)(v186, v192);
              return;
            }

            v142 = *(v128 + 8);
            v142(v129, v120);
            v142(v127, v120);
            (*(v180 + 8))(v88, v181);
            goto LABEL_66;
          }
        }
      }

      URL.init(string:)();
      goto LABEL_61;
    }

    v90 = (v162 + 8);
    v91 = (v161 + 8);
    v86 = v181;
    v92 = *v183;
    if (v79)
    {
      SharedListening.Event.Content.title.getter(v92, 1);
      v93 = v164;
      static GroupSessionEvent.Action.QueueChange.Item.container(_:)();
    }

    else
    {
      SharedListening.Event.Content.title.getter(v92, 0);
      v93 = v164;
      static GroupSessionEvent.Action.QueueChange.Item.song(_:)();
    }

    v117 = v163;
    static GroupSessionEvent.Action.QueueChange.added(_:)();
    (*v90)(v93, v166);
    v88 = v179;
    static GroupSessionEvent.Action.updatedQueue(_:)();
    (*v91)(v117, v165);
    v85 = v77;
LABEL_52:
    v87 = v183;
    goto LABEL_53;
  }

  if (v83 == 3)
  {
    static GroupSessionEvent.Action.start.getter();
    v94 = v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v95 = (*(*(v156[0] - 8) + 48))(v94, 1);
    v85 = v53;
    v86 = v181;
    v87 = v183;
    if (v95 || (v143 = *(v94 + 7)) == 0 || (v144 = [*(v143 + 16) identifiers], v145 = objc_msgSend(v78, "identifiers"), v146 = objc_msgSend(v144, "intersectsSet:", v145), v144, v145, v88 = v179, (v146 & 1) == 0))
    {
      if (one-time initialization token for groupActivities != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for Logger();
      __swift_project_value_buffer(v96, static Logger.groupActivities);
      v97 = v170;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      outlined destroy of SharedListening.Event(v87);
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v197[0] = v101;
        *v100 = 136446210;
        v102 = v97;
        v103 = [v78 description];
        v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v106 = v105;

        outlined destroy of SharedListening.Event(v87);
        v107 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v104, v106, v197);

        *(v100 + 4) = v107;
        _os_log_impl(&_mh_execute_header, v98, v99, "Dispatching event for=%{public}s", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v101);
      }

      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
      v108 = static OS_dispatch_queue.main.getter();
      v109 = swift_allocObject();
      *(v109 + 16) = v4;
      v110 = *(v87 + 16);
      *(v109 + 24) = *v87;
      *(v109 + 40) = v110;
      *(v109 + 56) = *(v87 + 32);
      *(v109 + 72) = *(v87 + 48);
      v111 = v187;
      *(v109 + 80) = v185;
      *(v109 + 88) = v111;
      outlined init with copy of SharedListening.Event(v87, v197);

      OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #2 in GroupActivitiesManager.postEvent(_:participantID:), v109, 1.0);

      (*(v180 + 8))(v179, v181);
LABEL_66:
      (*v184)(v186, v85);
      return;
    }

    goto LABEL_53;
  }

  if (v83 == 4)
  {
    v112 = v179;
    static GroupSessionEvent.Action.updatedQueue.getter();
    v113 = v4[8];
    v194 = v4[7];
    v193 = v113;
    v114 = v4[9];
    v115 = v4[10];
    v4[7] = v78;
    *(v4 + 64) = v79;
    *(v4 + 71) = BYTE6(v80);
    *(v4 + 69) = WORD2(v80);
    *(v4 + 65) = v80;
    v4[9] = v82;
    v4[10] = v81;
    v88 = v112;
    outlined copy of SharedListening.Event.Alert?(v170, v169, v168, v167);
    v116 = v114;
    v67 = v186;
    outlined consume of SharedListening.Event.Alert?(v194, v193, v116, v115);
    v85 = v77;
    v86 = v181;
    goto LABEL_52;
  }

  v85 = v53;
  v86 = v181;
  v87 = v183;
  if (v83 == 5)
  {
    v89 = v183[5] | v183[4] | v82 | v81 | v84;
    if (v78 == 1 && !v89)
    {
      v88 = v179;
      static GroupSessionEvent.Action.seek.getter();
      goto LABEL_53;
    }

    if (v78 == 3 && !v89)
    {
      v88 = v179;
      static GroupSessionEvent.Action.pause.getter();
      goto LABEL_53;
    }

    if (v78 == 4 && !v89)
    {
      v88 = v179;
      static GroupSessionEvent.Action.play.getter();
      goto LABEL_53;
    }
  }

LABEL_76:
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v147 = type metadata accessor for Logger();
  __swift_project_value_buffer(v147, static Logger.groupActivities);
  outlined init with copy of SharedListening.Event(v87, v197);
  v148 = Logger.logObject.getter();
  v149 = static os_log_type_t.default.getter();
  outlined destroy of SharedListening.Event(v87);
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v196 = v151;
    *v150 = 136446210;
    v152 = *(v87 + 16);
    v197[0] = *v87;
    v197[1] = v152;
    v197[2] = *(v87 + 32);
    v198 = *(v87 + 48);
    outlined init with copy of SharedListening.Event(v87, v195);
    v153 = String.init<A>(describing:)();
    v155 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v153, v154, &v196);

    *(v150 + 4) = v155;
    _os_log_impl(&_mh_execute_header, v148, v149, "Event case not handle for event=%{public}s", v150, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v151);
  }

  (*v184)(v67, v85);
}

int64x2_t GroupActivitiesManager.Activity.Metadata.init()@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = *(v2 + 28);
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = vdupq_n_s64(0x4072C00000000000uLL);
  *(a1 + *(v2 + 32)) = result;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.artworkSize.setter(double a1, double a2)
{
  result = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.init(modelObject:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  type metadata accessor for Locale();
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for String.LocalizationValue();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(GroupActivitiesManager.Activity.Metadata.init(modelObject:), 0, 0);
}

uint64_t GroupActivitiesManager.Activity.Metadata.init(modelObject:)()
{
  v1 = *(v0 + 152);
  *(v1 + 4) = 0;
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[*(v2 + 32)] = vdupq_n_s64(0x4072C00000000000uLL);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 title];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v19 = *(v0 + 176);
      v20 = *(v0 + 184);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v20 + 16))(v18, v17, v19);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 200);
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);
      v24 = static NSBundle.module;
      static Locale.current.getter();
      v9 = String.init(localized:table:bundle:locale:comment:)();
      v11 = v25;
      (*(v23 + 8))(v21, v22);
    }

    v26 = [v6 artist];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 name];

      if (v28)
      {
LABEL_12:
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

LABEL_15:
        v43 = *(v0 + 152);
        v44 = [v6 artworkCatalog];
        goto LABEL_27;
      }
    }

    v144 = v11;
    v32 = v9;
    v33 = v1;
    v35 = *(v0 + 192);
    v34 = *(v0 + 200);
    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v37 + 16))(v35, v34, v36);
    if (one-time initialization token for module == -1)
    {
LABEL_14:
      v38 = *(v0 + 200);
      v39 = *(v0 + 176);
      v40 = *(v0 + 184);
      v41 = static NSBundle.module;
      static Locale.current.getter();
      v29 = String.init(localized:table:bundle:locale:comment:)();
      v31 = v42;
      (*(v40 + 8))(v38, v39);
      v1 = v33;
      v9 = v32;
      v11 = v144;
      goto LABEL_15;
    }

LABEL_69:
    swift_once();
    goto LABEL_14;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      v6 = v45;
      v46 = [v45 name];
      if (v46)
      {
        v47 = v46;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v48;
      }

      else
      {
        v74 = *(v0 + 192);
        v73 = *(v0 + 200);
        v75 = *(v0 + 176);
        v76 = *(v0 + 184);
        String.LocalizationValue.init(stringLiteral:)();
        (*(v76 + 16))(v74, v73, v75);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 200);
        v78 = *(v0 + 176);
        v79 = *(v0 + 184);
        v80 = static NSBundle.module;
        static Locale.current.getter();
        v9 = String.init(localized:table:bundle:locale:comment:)();
        v11 = v81;
        (*(v79 + 8))(v77, v78);
      }

      v82 = [v6 providerName];
      if (v82)
      {
        v83 = v82;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v84;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      goto LABEL_15;
    }

    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (v69)
    {
      v6 = v69;
      v70 = [v69 title];
      if (v70)
      {
        v71 = v70;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v72;
      }

      else
      {
        v90 = *(v0 + 192);
        v89 = *(v0 + 200);
        v91 = *(v0 + 176);
        v92 = *(v0 + 184);
        String.LocalizationValue.init(stringLiteral:)();
        (*(v92 + 16))(v90, v89, v91);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v93 = *(v0 + 200);
        v94 = *(v0 + 176);
        v95 = *(v0 + 184);
        v96 = static NSBundle.module;
        static Locale.current.getter();
        v9 = String.init(localized:table:bundle:locale:comment:)();
        v11 = v97;
        (*(v95 + 8))(v93, v94);
      }

      v98 = [v6 artist];
      if (v98)
      {
        v99 = v98;
        v28 = [v98 name];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v144 = v11;
      v32 = v9;
      v33 = v1;
      v101 = *(v0 + 192);
      v100 = *(v0 + 200);
      v102 = *(v0 + 176);
      v103 = *(v0 + 184);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v103 + 16))(v101, v100, v102);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (!v85)
      {
        objc_opt_self();
        v104 = swift_dynamicCastObjCClass();
        if (!v104)
        {
          _StringGuts.grow(_:)(29);

          v126 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo13MPModelObjectC14MusicUtilitiesE16LoggingComponentO_Tt0gq5Tf4g_n(&outlined read-only object #0 of GroupActivitiesManager.Activity.Metadata.init(modelObject:));
          MPModelObject.humanDescription(including:)(v126);
          v128 = v127;
          v130 = v129;

          v131._countAndFlagsBits = v128;
          v131._object = v130;
          String.append(_:)(v131);

          return _assertionFailure(_:_:file:line:flags:)();
        }

        v105 = v104;
        v106 = [v104 title];
        if (v106)
        {
          v107 = v106;
          v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v110 = v109;
        }

        else
        {
          v133 = *(v0 + 192);
          v132 = *(v0 + 200);
          v134 = *(v0 + 176);
          v135 = *(v0 + 184);
          String.LocalizationValue.init(stringLiteral:)();
          (*(v135 + 16))(v133, v132, v134);
          if (one-time initialization token for module != -1)
          {
            swift_once();
          }

          v136 = *(v0 + 200);
          v137 = *(v0 + 176);
          v138 = *(v0 + 184);
          v139 = static NSBundle.module;
          static Locale.current.getter();
          v108 = String.init(localized:table:bundle:locale:comment:)();
          v110 = v140;
          (*(v138 + 8))(v136, v137);
        }

        v141 = *(v0 + 152);
        v44 = [v105 artworkCatalog];
        *v141 = v108;
        v141[1] = v110;
        *(v1 + 2) = 0;
        *(v1 + 3) = 0;
        if (v44)
        {
          goto LABEL_28;
        }

        goto LABEL_66;
      }

      v6 = v85;
      v86 = [v85 title];
      if (v86)
      {
        v87 = v86;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v88;
      }

      else
      {
        v112 = *(v0 + 192);
        v111 = *(v0 + 200);
        v113 = *(v0 + 176);
        v114 = *(v0 + 184);
        String.LocalizationValue.init(stringLiteral:)();
        (*(v114 + 16))(v112, v111, v113);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v115 = *(v0 + 200);
        v116 = *(v0 + 176);
        v117 = *(v0 + 184);
        v118 = static NSBundle.module;
        static Locale.current.getter();
        v9 = String.init(localized:table:bundle:locale:comment:)();
        v11 = v119;
        (*(v117 + 8))(v115, v116);
      }

      v120 = [v6 show];
      if (v120)
      {
        v121 = v120;
        v28 = [v120 title];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v144 = v11;
      v32 = v9;
      v33 = v1;
      v123 = *(v0 + 192);
      v122 = *(v0 + 200);
      v124 = *(v0 + 176);
      v125 = *(v0 + 184);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v125 + 16))(v123, v122, v124);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_69;
  }

  v13 = v12;
  v14 = [v12 name];
  if (v14)
  {
    v15 = v14;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v16;
  }

  else
  {
    v50 = *(v0 + 192);
    v49 = *(v0 + 200);
    v51 = *(v0 + 176);
    v52 = *(v0 + 184);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v52 + 16))(v50, v49, v51);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 200);
    v54 = *(v0 + 176);
    v55 = *(v0 + 184);
    v56 = static NSBundle.module;
    static Locale.current.getter();
    v9 = String.init(localized:table:bundle:locale:comment:)();
    v11 = v57;
    (*(v55 + 8))(v53, v54);
  }

  v58 = [v13 curator];
  if (v58 && (v59 = v58, v60 = [v58 name], v59, v60))
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v61;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v43 = *(v0 + 152);
  v44 = MPModelPlaylist.preferredArtworkCatalog.getter();
LABEL_27:
  *v43 = v9;
  v43[1] = v11;
  *(v1 + 2) = v29;
  v43[3] = v31;
  if (v44)
  {
LABEL_28:
    *(v0 + 208) = v44;
    v62 = v44;
    type metadata accessor for GroupActivitiesManager.ArtworkCachingReference();
    v63 = swift_allocObject();
    *(v0 + 216) = v63;
    *(v63 + 16) = 0xD00000000000001ELL;
    *(v63 + 24) = 0x80000001004CE180;
    v64 = v62;
    v65 = objc_opt_self();
    v66 = String._bridgeToObjectiveC()();
    [v65 setCacheLimit:0 forCacheIdentifier:v66 cacheReference:v63];

    v67 = String._bridgeToObjectiveC()();

    [v64 setCacheIdentifier:v67 forCacheReference:v63];

    [v64 setFittingSize:{300.0, 300.0}];
    [v64 setDestinationScale:0.0];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = GroupActivitiesManager.Activity.Metadata.init(modelObject:);
    v68 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCs5Error_pGMd, &_sSccySo7UIImageCs5Error_pGMR);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?, @unowned NSError?) -> () with result type UIImage;
    *(v0 + 104) = &block_descriptor_41;
    *(v0 + 112) = v68;
    [v64 requestImageWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

LABEL_66:

  v142 = *(v0 + 8);

  return v142();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = GroupActivitiesManager.Activity.Metadata.init(modelObject:);
  }

  else
  {
    v2 = GroupActivitiesManager.Activity.Metadata.init(modelObject:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = [v4 CGImage];

  *(v3 + 32) = v5;

  v6 = v0[1];

  return v6();
}

uint64_t GroupActivitiesManager.Activity.Metadata.init(modelObject:)(uint64_t a1)
{
  v2 = v1[26];
  v4 = v1[19];
  v3 = v1[20];
  swift_willThrow();

  *(v4 + 32) = 0;

  v5 = v1[1];

  return v5();
}

uint64_t GroupActivitiesManager.Activity.init(with:metadata:coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(GroupActivitiesManager.Activity.init(with:metadata:coordinator:), 0, 0);
}

uint64_t GroupActivitiesManager.Activity.init(with:metadata:coordinator:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v4 = *(v3 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2 + v4, 1, 1, v5);
  if (v1 && (v7 = v1, v8 = [v7 sharedListeningProperties], v0[24] = v8, v7, v8))
  {
    v9 = v0[22];
    v10 = v0[21];
    v26 = v0[20];
    v27 = v0[23];
    v11 = v0[19];
    outlined destroy of TaskPriority?(v11, &_s9MusicCore26GroupActivitiesCoordinator_pSgMd, &_s9MusicCore26GroupActivitiesCoordinator_pSgMR);
    outlined init with copy of ActionPerforming(v9, v11);
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v10, v2 + v4, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
    type metadata accessor for CodableListeningProperties();
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v2 + 40) = v26;
    *(v2 + 48) = v12;
    outlined init with copy of TaskPriority?(v2 + v4, v27, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
    v13 = (*(v6 + 48))(v27, 1, v5);
    v14 = v0[23];
    if (v13 == 1)
    {
      v15 = v7;
      v16 = v8;
      outlined destroy of TaskPriority?(v14, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
      if (one-time initialization token for startingItemProperties != -1)
      {
        swift_once();
      }

      v17 = static GroupActivitiesManager.Activity.startingItemProperties;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = GroupActivitiesManager.Activity.init(with:metadata:coordinator:);
      v18 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo20MPModelGenericObjectCs5Error_pGMd, &_sSccySo20MPModelGenericObjectCs5Error_pGMR);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?, @unowned NSError?) -> () with result type UIImage;
      v0[13] = &block_descriptor_138_0;
      v0[14] = v18;
      [v15 getRepresentativeObjectWithProperties:v17 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v24 = v0[21];
    __swift_destroy_boxed_opaque_existential_0Tm(v0[22]);
    outlined destroy of TaskPriority?(v24, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
    outlined destroy of TaskPriority?(v14, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);

    v23 = v0[1];
  }

  else
  {
    v19 = v0[22];
    v20 = v0[21];
    v21 = v0[19];
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_allocError();
    *v22 = 96;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    outlined destroy of TaskPriority?(v20, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
    outlined destroy of GroupActivitiesManager.PrepareResult(v21, type metadata accessor for GroupActivitiesManager.Activity);

    v23 = v0[1];
  }

  return v23();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = GroupActivitiesManager.Activity.init(with:metadata:coordinator:);
  }

  else
  {
    v2 = GroupActivitiesManager.Activity.init(with:metadata:coordinator:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v6 = [v4 innermostModelObject];

  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  outlined destroy of TaskPriority?(v2, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  type metadata accessor for CodableModelObjectIdentity();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v5 + 56) = v7;

  v8 = v0[1];

  return v8();
}

uint64_t GroupActivitiesManager.Activity.init(with:metadata:coordinator:)(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[21];
  v3 = v1[22];
  v5 = v1[19];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  outlined destroy of TaskPriority?(v4, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  *(v5 + 56) = 0;

  v6 = v1[1];

  return v6();
}

uint64_t GroupActivitiesManager.Activity.metadata.getter(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  type metadata accessor for GroupActivityMetadata.ActivityType();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(GroupActivitiesManager.Activity.metadata.getter, 0, 0);
}

uint64_t GroupActivitiesManager.Activity.metadata.getter()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = type metadata accessor for GroupActivityMetadata();
  v0[17] = v5;
  v6 = swift_allocBox();
  v8 = v7;
  v0[18] = v6;
  v0[19] = v7;
  GroupActivityMetadata.init()();
  GroupActivityMetadata.supportsContinuationOnTV.setter();
  static GroupActivityMetadata.ActivityType.listenTogether.getter();
  GroupActivityMetadata.type.setter();
  v9 = type metadata accessor for GroupActivitiesManager.Activity(0);
  outlined init with copy of TaskPriority?(v4 + *(v9 + 32), v3, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  v10 = *(v2 + 48);
  v0[20] = v10;
  v0[21] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v3, 1, v1) != 1)
  {
    v22 = v0[15];
    v23 = v0[12];
    v24 = v0[9];
    v58 = v0[7];
    outlined init with take of GroupActivitiesManager.PrepareResult(v0[11], v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    GroupActivityMetadata.title.setter();

    GroupActivityMetadata.subtitle.setter();
    v25 = *(v22 + 32);
    GroupActivityMetadata.previewImage.setter();
    outlined init with copy of TaskPriority?(v22 + *(v23 + 28), v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    GroupActivityMetadata.fallbackURL.setter();
    outlined destroy of GroupActivitiesManager.PrepareResult(v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v5 - 8) + 16))(v58, v8, v5);
    goto LABEL_30;
  }

  v11 = v0[8];
  outlined destroy of TaskPriority?(v0[11], &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  v12 = *(v11 + 56);
  if (!v12)
  {
    (*(*(v5 - 8) + 16))(v0[7], v8, v5);
    goto LABEL_30;
  }

  v13 = *(v12 + 16);
  v0[22] = v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = one-time initialization token for albumProperties;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = static GroupActivitiesManager.Activity.albumProperties;
    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = v16;
    v20 = [v18 kindWithVariants:3];
    v21 = [v17 kindWithSongKind:v20];

    goto LABEL_25;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v26 = objc_opt_self();
    v27 = v13;
    v28 = specialized static MPModelPlaylistEntry.defaultMusicKind.getter();
    v21 = [v26 kindWithPlaylistEntryKind:v28 options:0];

    if (one-time initialization token for playlistProperties != -1)
    {
      swift_once();
    }

    v29 = static GroupActivitiesManager.Activity.playlistProperties;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelRadioStationKind, MPModelRadioStationKind_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = v13;
      v21 = [ObjCClassFromMetadata identityKind];
      if (one-time initialization token for radioProperties != -1)
      {
        swift_once();
      }

      v29 = static GroupActivitiesManager.Activity.radioProperties;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v32 = objc_opt_self();
        v33 = v13;
        v34 = [v32 kindWithVariants:7];
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v51 = v13;
            _StringGuts.grow(_:)(29);

            v52 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo13MPModelObjectC14MusicUtilitiesE16LoggingComponentO_Tt0gq5Tf4g_n(&outlined read-only object #0 of GroupActivitiesManager.Activity.metadata.getter);
            MPModelObject.humanDescription(including:)(v52);
            v54 = v53;
            v56 = v55;

            v57._countAndFlagsBits = v54;
            v57._object = v56;
            String.append(_:)(v57);

            return _assertionFailure(_:_:file:line:flags:)();
          }

          v49 = objc_opt_self();
          v50 = v13;
          v21 = [v49 kindWithVariants:3];
          if (one-time initialization token for movieProperties != -1)
          {
            swift_once();
          }

          v29 = static GroupActivitiesManager.Activity.movieProperties;
          goto LABEL_24;
        }

        v35 = objc_opt_self();
        v36 = v13;
        v34 = [v35 kindWithVariants:3];
      }

      v21 = v34;
      if (one-time initialization token for songProperties != -1)
      {
        swift_once();
      }

      v29 = static GroupActivitiesManager.Activity.songProperties;
    }
  }

LABEL_24:
  v19 = v29;
LABEL_25:
  v0[23] = v19;
  v0[24] = v21;
  outlined init with copy of TaskPriority?(v0[8], (v0 + 2), &_s9MusicCore26GroupActivitiesCoordinator_pSgMd, &_s9MusicCore26GroupActivitiesCoordinator_pSgMR);
  v37 = v0[5];
  if (v37)
  {
    v38 = v0[6];
    __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v59 = (*(v38 + 8) + **(v38 + 8));
    v39 = swift_task_alloc();
    v0[25] = v39;
    *v39 = v0;
    v39[1] = GroupActivitiesManager.Activity.metadata.getter;
    v40 = v0[10];

    return v59(v40, v13, v21, v19, v37, v38);
  }

  v42 = v0[12];
  v43 = v0[13];
  v44 = v0[10];

  outlined destroy of TaskPriority?((v0 + 2), &_s9MusicCore26GroupActivitiesCoordinator_pSgMd, &_s9MusicCore26GroupActivitiesCoordinator_pSgMR);
  (*(v43 + 56))(v44, 1, 1, v42);
  v6 = v0[18];
  v45 = v0[19];
  v46 = v0[17];
  v47 = v0[7];
  outlined destroy of TaskPriority?(v0[10], &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  (*(*(v46 - 8) + 16))(v47, v45, v46);
LABEL_30:
  $defer #1 () in GroupActivitiesManager.Activity.metadata.getter(v6);

  v48 = v0[1];

  return v48();
}

{

  return _swift_task_switch(GroupActivitiesManager.Activity.metadata.getter, 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[10];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = v1(v3, 1, v2);
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  if (v4 == 1)
  {

    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[17];
    v11 = v0[7];
    outlined destroy of TaskPriority?(v0[10], &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
    (*(*(v10 - 8) + 16))(v11, v9, v10);
  }

  else
  {
    v8 = v0[18];
    v12 = v0[19];
    v13 = v0[14];
    v14 = v0[9];
    v19 = v0[17];
    v20 = v0[7];
    v18 = v0[12];
    outlined init with take of GroupActivitiesManager.PrepareResult(v0[10], v13, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    GroupActivityMetadata.title.setter();

    GroupActivityMetadata.subtitle.setter();
    v15 = *(v13 + 32);
    GroupActivityMetadata.previewImage.setter();
    outlined init with copy of TaskPriority?(v13 + *(v18 + 28), v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    GroupActivityMetadata.fallbackURL.setter();

    outlined destroy of GroupActivitiesManager.PrepareResult(v13, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v19 - 8) + 16))(v20, v12, v19);
  }

  $defer #1 () in GroupActivitiesManager.Activity.metadata.getter(v8);

  v16 = v0[1];

  return v16();
}

void $defer #1 () in GroupActivitiesManager.Activity.metadata.getter(uint64_t a1)
{
  v1 = type metadata accessor for GroupActivityMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.groupActivities);

  v15 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = swift_projectBox();
    swift_beginAccess();
    (*(v2 + 16))(v4, v9, v1);
    v10 = String.init<A>(reflecting:)();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v15, v6, "Sending activity metadata=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    v13 = v15;
  }
}

void one-time initialization function for songProperties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EF0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2400;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 propertySetWithProperties:isa];

  *(inited + 48) = v9;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;
  v12 = [v8 propertySetWithProperties:v11];

  *(inited + 72) = v12;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet, MPPropertySet_ptr);
  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithProperties:v14 relationships:v15];

  static GroupActivitiesManager.Activity.songProperties = v16;
}

void one-time initialization function for tvEpisodeProperties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EF0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2400;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet, MPPropertySet_ptr);
  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  static GroupActivitiesManager.Activity.tvEpisodeProperties = v12;
}

void one-time initialization function for playingProperties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  if (one-time initialization token for songProperties != -1)
  {
    swift_once();
  }

  v2 = static GroupActivitiesManager.Activity.songProperties;
  *(inited + 48) = static GroupActivitiesManager.Activity.songProperties;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v3;
  v4 = one-time initialization token for tvEpisodeProperties;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static GroupActivitiesManager.Activity.tvEpisodeProperties;
  *(inited + 72) = static GroupActivitiesManager.Activity.tvEpisodeProperties;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  v8 = one-time initialization token for movieProperties;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = static GroupActivitiesManager.Activity.movieProperties;
  *(inited + 96) = static GroupActivitiesManager.Activity.movieProperties;
  v11 = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet, MPPropertySet_ptr);
  v14 = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v12 initWithProperties:isa relationships:v14];

  static GroupActivitiesManager.Activity.playingProperties = v15;
}

uint64_t *GroupActivitiesManager.Activity.playingProperties.unsafeMutableAddressor()
{
  if (one-time initialization token for playingProperties != -1)
  {
    swift_once();
  }

  return &static GroupActivitiesManager.Activity.playingProperties;
}

id static GroupActivitiesManager.Activity.playingProperties.getter()
{
  if (one-time initialization token for playingProperties != -1)
  {
    swift_once();
  }

  v1 = static GroupActivitiesManager.Activity.playingProperties;

  return v1;
}

void one-time initialization function for albumProperties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EF0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2400;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet, MPPropertySet_ptr);
  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  static GroupActivitiesManager.Activity.albumProperties = v12;
}

void one-time initialization function for playlistProperties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EF0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2400;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet, MPPropertySet_ptr);
  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  static GroupActivitiesManager.Activity.playlistProperties = v12;
}

void one-time initialization function for movieProperties(uint64_t a1, void *a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2EF0;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  *(v5 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 56) = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [objc_opt_self() propertySetWithProperties:isa];

  *a4 = v9;
}

id one-time initialization function for startingItemProperties()
{
  result = closure #1 in variable initialization expression of static GroupActivitiesManager.Activity.startingItemProperties();
  static GroupActivitiesManager.Activity.startingItemProperties = result;
  return result;
}

id closure #1 in variable initialization expression of static GroupActivitiesManager.Activity.startingItemProperties()
{
  if (one-time initialization token for playingProperties != -1)
  {
    swift_once();
  }

  v0 = static GroupActivitiesManager.Activity.playingProperties;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  if (one-time initialization token for playlistProperties != -1)
  {
    swift_once();
  }

  v3 = static GroupActivitiesManager.Activity.playlistProperties;
  *(inited + 48) = static GroupActivitiesManager.Activity.playlistProperties;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v4;
  v5 = one-time initialization token for albumProperties;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = static GroupActivitiesManager.Activity.albumProperties;
  *(inited + 72) = static GroupActivitiesManager.Activity.albumProperties;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  v9 = one-time initialization token for radioProperties;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static GroupActivitiesManager.Activity.radioProperties;
  *(inited + 96) = static GroupActivitiesManager.Activity.radioProperties;
  v12 = v11;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet, MPPropertySet_ptr);
  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithProperties:isa relationships:v15];

  v17 = [v0 propertySetByCombiningWithPropertySet:v16];
  return v17;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GroupActivitiesManager.Activity.CodingKey()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance GroupActivitiesManager.Activity.CodingKey(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001BLL && 0x80000001004CE530 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004CE550 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GroupActivitiesManager.Activity.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GroupActivitiesManager.Activity.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupActivitiesManager.Activity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore22GroupActivitiesManagerC8ActivityV9CodingKeyOGMd, &_ss22KeyedDecodingContainerVy9MusicCore22GroupActivitiesManagerC8ActivityV9CodingKeyOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - v6;
  type metadata accessor for GroupActivitiesManager.Activity(0);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v11 = *(v10 + 40);
  v12 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v5;
    v14 = v17;
    type metadata accessor for CodableListeningProperties();
    v18 = 0;
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type CodableListeningProperties and conformance CodableListeningProperties, type metadata accessor for CodableListeningProperties, &protocol conformance descriptor for CodableListeningProperties);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v9 + 6) = v19;
    type metadata accessor for CodableModelObjectIdentity();
    v18 = 1;
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type CodableModelObjectIdentity and conformance CodableModelObjectIdentity, type metadata accessor for CodableModelObjectIdentity, &protocol conformance descriptor for CodableModelObjectIdentity);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v19;
    (*(v13 + 8))(v7, v4);
    *(v9 + 7) = v15;
    outlined init with copy of GroupActivitiesManager.PrepareResult(v9, v14, type metadata accessor for GroupActivitiesManager.Activity);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return outlined destroy of GroupActivitiesManager.PrepareResult(v9, type metadata accessor for GroupActivitiesManager.Activity);
}

uint64_t GroupActivitiesManager.Activity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore22GroupActivitiesManagerC8ActivityV9CodingKeyOGMd, &_ss22KeyedEncodingContainerVy9MusicCore22GroupActivitiesManagerC8ActivityV9CodingKeyOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 48);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMd, &_s9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMR);
  lazy protocol witness table accessor for type CodableListeningProperties? and conformance <A> A?();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 56);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMd, &_s9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMR);
    lazy protocol witness table accessor for type CodableModelObjectIdentity? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance GroupActivitiesManager.Activity(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return GroupActivitiesManager.Activity.metadata.getter(a1);
}

void key path getter for GroupActivitiesManager.State.isSharePlaySessionActive : GroupActivitiesManager.State(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t GroupActivitiesManager.State.isSharePlaySessionActive.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void GroupActivitiesManager.State.isSharePlaySessionActive.setter(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void key path getter for GroupActivitiesManager.State.isLoading : GroupActivitiesManager.State(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
}

uint64_t GroupActivitiesManager.State.isLoading.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

void GroupActivitiesManager.State.isLoading.setter(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t GroupActivitiesManager.State.deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t GroupActivitiesManager.State.__deallocating_deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t GroupActivitiesManager.coordinator.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  outlined init with take of ActionPerforming(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t GroupActivitiesManager.pendingNoticeAlert.getter()
{
  swift_beginAccess();
  v1 = v0[7];
  outlined copy of SharedListening.Event.Alert?(v1, v0[8], v0[9], v0[10]);
  return v1;
}

void GroupActivitiesManager.isSharePlaySessionActive.setter(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = a1 & 1;
  *(v1 + 96) = a1;
  if (v3 != v4)
  {
    v5 = *(v1 + 88);
    if (*(v5 + 16) == v4)
    {
      *(v5 + 16) = v4;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

void (*GroupActivitiesManager.isSharePlaySessionActive.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + 96);
  return GroupActivitiesManager.isSharePlaySessionActive.modify;
}

void GroupActivitiesManager.isSharePlaySessionActive.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = v2[4];
  if (a2)
  {
    GroupActivitiesManager.isSharePlaySessionActive.setter(v3);
  }

  else
  {
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;
    if (v3 != v5)
    {
      v6 = *(v2[4] + 88);
      if (v3 == *(v6 + 16))
      {
        *(v6 + 16) = v3;
      }

      else
      {
        swift_getKeyPath();
        __chkstk_darwin();
        v2[3] = v6;
        lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  free(v2);
}

uint64_t GroupActivitiesManager.participantsCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void key path getter for GroupActivitiesManager.participantsCount : GroupActivitiesManager(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

void key path setter for GroupActivitiesManager.participantsCount : GroupActivitiesManager(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  GroupActivitiesManager.participantsCount.didset(v2);
}

void GroupActivitiesManager.participantsCount.didset(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v10 != a1)
  {
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.groupActivities);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v7 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v5, v6, "👤 Participants count update=%{public}ld", v7, 0xCu);
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    if (*(v2 + v8) < v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v2 + v8) = v9;
    }
  }
}

uint64_t Logger.groupActivities.unsafeMutableAddressor()
{
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.groupActivities);
}

uint64_t key path setter for GroupActivitiesManager.$participantsCount : GroupActivitiesManager(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t GroupActivitiesManager.isLoading.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void key path getter for GroupActivitiesManager.isLoading : GroupActivitiesManager(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

void key path setter for GroupActivitiesManager.isLoading : GroupActivitiesManager(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  GroupActivitiesManager.isLoading.didset(v2);
}

void GroupActivitiesManager.isLoading.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9 != v3)
  {
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.groupActivities);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v7 + 4) = v9;

      _os_log_impl(&_mh_execute_header, v5, v6, "⏳ Session is loading=%{BOOL,public}d", v7, 8u);
    }

    else
    {
    }

    v8 = *(v2 + 88);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v9 == *(v8 + 17))
    {
      *(v8 + 17) = v9;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    GroupActivitiesManager.updateIsSharePlaySessionActive()();
  }
}

void GroupActivitiesManager.updateIsSharePlaySessionActive()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v56 = &v45[-v4];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMR);
  __chkstk_darwin();
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v45[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  __chkstk_darwin();
  v55 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v58 = &v45[-v10];
  __chkstk_darwin();
  v57 = &v45[-v11];
  __chkstk_darwin();
  v13 = &v45[-v12];
  __chkstk_darwin();
  v15 = &v45[-v14];
  __chkstk_darwin();
  v17 = &v45[-v16];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v60)
  {
    goto LABEL_2;
  }

  v49 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v19 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
  v53 = v1;
  v51 = v6;
  if (v19)
  {

    GroupSession.state.getter();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = v3[7];
  v21(v17, v20, 1, v2);
  v47 = v3[13];
  v48 = v3 + 13;
  v47(v15, enum case for GroupSession.State.waiting<A>(_:), v2);
  v50 = v21;
  v21(v15, 0, 1, v2);
  v22 = *(v59 + 48);
  outlined init with copy of TaskPriority?(v17, v8, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  outlined init with copy of TaskPriority?(v15, &v8[v22], &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  v54 = v3;
  v23 = v3[6];
  if (v23(v8, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v15, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
    outlined destroy of TaskPriority?(v17, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
    if (v23(&v8[v22], 1, v2) == 1)
    {
      outlined destroy of TaskPriority?(v8, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
      v18 = 1;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  outlined init with copy of TaskPriority?(v8, v13, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  if (v23(&v8[v22], 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v15, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
    outlined destroy of TaskPriority?(v17, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
    (v54[1])(v13, v2);
LABEL_11:
    outlined destroy of TaskPriority?(v8, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMR);
    v24 = v53;
    goto LABEL_12;
  }

  v28 = v54[4];
  v52 = v23;
  v29 = v56;
  v28(v56, &v8[v22], v2);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity>.State and conformance GroupSession<A>.State, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMR, &protocol conformance descriptor for GroupSession<A>.State);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = v54[1];
  v31 = v29;
  v23 = v52;
  v30(v31, v2);
  outlined destroy of TaskPriority?(v15, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  outlined destroy of TaskPriority?(v17, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  v30(v13, v2);
  outlined destroy of TaskPriority?(v8, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  v24 = v53;
  if ((v46 & 1) == 0)
  {
LABEL_12:
    v25 = *(v24 + v49);
    v52 = v23;
    if (v25)
    {

      v26 = v57;
      GroupSession.state.getter();

      v27 = 0;
    }

    else
    {
      v27 = 1;
      v26 = v57;
    }

    v32 = v58;
    v33 = v50;
    v50(v26, v27, 1, v2);
    v47(v32, enum case for GroupSession.State.joined<A>(_:), v2);
    v33(v32, 0, 1, v2);
    v34 = *(v59 + 48);
    v35 = v51;
    outlined init with copy of TaskPriority?(v26, v51, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
    outlined init with copy of TaskPriority?(v32, v35 + v34, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
    v36 = v52;
    if (v52(v35, 1, v2) == 1)
    {
      outlined destroy of TaskPriority?(v32, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
      outlined destroy of TaskPriority?(v26, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
      if (v36(v35 + v34, 1, v2) == 1)
      {
        outlined destroy of TaskPriority?(v35, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
        goto LABEL_2;
      }
    }

    else
    {
      v37 = v55;
      outlined init with copy of TaskPriority?(v35, v55, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
      if (v36(v35 + v34, 1, v2) != 1)
      {
        v41 = v54;
        v42 = v56;
        (v54[4])(v56, v35 + v34, v2);
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity>.State and conformance GroupSession<A>.State, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMR, &protocol conformance descriptor for GroupSession<A>.State);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = v41[1];
        v44(v42, v2);
        outlined destroy of TaskPriority?(v58, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
        outlined destroy of TaskPriority?(v26, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
        v44(v37, v2);
        outlined destroy of TaskPriority?(v35, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
        if (v43)
        {
          goto LABEL_2;
        }

LABEL_23:
        v38 = [objc_opt_self() standardUserDefaults];
        v39 = String._bridgeToObjectiveC()();
        v40 = [v38 BOOLForKey:v39];

        v18 = v40;
        goto LABEL_24;
      }

      outlined destroy of TaskPriority?(v32, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
      outlined destroy of TaskPriority?(v26, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
      (v54[1])(v37, v2);
    }

    outlined destroy of TaskPriority?(v35, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMR);
    goto LABEL_23;
  }

LABEL_2:
  v18 = 1;
LABEL_24:
  GroupActivitiesManager.isSharePlaySessionActive.setter(v18);
}

uint64_t key path setter for GroupActivitiesManager.$isLoading : GroupActivitiesManager(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}