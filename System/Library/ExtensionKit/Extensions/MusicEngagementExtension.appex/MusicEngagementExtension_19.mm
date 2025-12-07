uint64_t PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  type metadata accessor for Locale();
  v4[42] = swift_task_alloc();
  v5 = type metadata accessor for String.LocalizationValue();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[51] = swift_task_alloc();
  v4[52] = type metadata accessor for MainActor();
  v4[53] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[54] = v8;
  v4[55] = v7;

  return _swift_task_switch(PlaybackController.userPickedOptionsForShareListening(for:id:), v8, v7);
}

uint64_t PlaybackController.userPickedOptionsForShareListening(for:id:)()
{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  outlined init with copy of TaskPriority?(v1 + *(v2 + 28), v0 + 80, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
  outlined init with copy of TaskPriority?(v0 + 80, v0 + 200, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
  v3 = *(v0 + 224);
  if (v3)
  {
    v4 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_0Tm((v0 + 200), *(v0 + 224));
    MusicItem.innerItem.getter(v3, v4, (v0 + 160));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 200));
    if (*(v0 + 184))
    {
      outlined init with take of ActionPerforming((v0 + 160), v0 + 120);
      __swift_project_boxed_opaque_existential_0Tm((v0 + 120), *(v0 + 144));
      DynamicType = swift_getDynamicType();
      if (one-time initialization token for sharedListeningSupportedMusicItems != -1)
      {
        v42 = DynamicType;
        swift_once();
        DynamicType = v42;
      }

      v6 = (static SharedListening.sharedListeningSupportedMusicItems + 32);
      v7 = *(static SharedListening.sharedListeningSupportedMusicItems + 2) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 2;
        if (v8 == DynamicType)
        {
          __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
          goto LABEL_11;
        }
      }

      outlined init with copy of PlaybackIntentDescriptor(*(v0 + 304), *(v0 + 408), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = *(v0 + 408);
      if (EnumCaseMultiPayload == 1)
      {
        v34 = *(v0 + 384);
        v33 = *(v0 + 392);
        v35 = *(v0 + 376);
        (*(v34 + 32))(v33, v32, v35);
        v36 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v34 + 8))(v33, v35);
      }

      else
      {
        v36 = *v32;
      }

      *(v0 + 448) = v36;
      v37 = *(v0 + 304);
      v38 = *(v2 + 32);
      v39 = swift_task_alloc();
      *(v0 + 456) = v39;
      *v39 = v0;
      v39[1] = PlaybackController.userPickedOptionsForShareListening(for:id:);
      v40 = *(v0 + 320);
      v41 = *(v0 + 312);

      return PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:)(v36, v41, v40, v37 + v38);
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 200, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0;
  }

  outlined destroy of TaskPriority?(v0 + 160, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
LABEL_11:
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.sharedListening);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Offering SharePlay options (Play Now/Next/Last)", v12, 2u);
  }

  outlined init with copy of TaskPriority?(v0 + 80, v0 + 240, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
  v13 = *(v0 + 264);
  if (v13)
  {
    v14 = *(v0 + 272);
    __swift_project_boxed_opaque_existential_0Tm((v0 + 240), *(v0 + 264));
    v15 = MusicItem.sharePlayAlertMessage.getter(v13, v14);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 240));
  }

  else
  {
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    outlined destroy of TaskPriority?(v0 + 240, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v21 + 16))(v18, v19, v20);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    v24 = *(v0 + 352);
    v25 = static NSBundle.module;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    v17 = v26;
    (*(v24 + 8))(v22, v23);
  }

  *(v0 + 472) = v17;
  *(v0 + 480) = v15;
  v27 = static MainActor.shared.getter();
  *(v0 + 488) = v27;
  if (v27)
  {
    swift_getObjectType();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  return _swift_task_switch(PlaybackController.userPickedOptionsForShareListening(for:id:), v28, v30);
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  *(*v1 + 464) = v0;

  v4 = *(v2 + 440);
  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = PlaybackController.userPickedOptionsForShareListening(for:id:);
  }

  else
  {
    v6 = PlaybackController.userPickedOptionsForShareListening(for:id:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  outlined destroy of TaskPriority?(v0 + 80, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);

  v1 = *(v0 + 8);

  return v1(0, 0, 1);
}

{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[41];
  v4 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = PlaybackController.userPickedOptionsForShareListening(for:id:);
  v5 = swift_continuation_init();
  closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(v5, v4, v3, v1, v2);

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 496) = *(*v0 + 280);
  *(v2 + 297) = *(v2 + 296);
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);

  return _swift_task_switch(PlaybackController.userPickedOptionsForShareListening(for:id:), v4, v3);
}

{

  outlined destroy of TaskPriority?(v0 + 80, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
  v1 = *(v0 + 297);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);

  v4 = *(v0 + 8);

  return v4(v3, v2, v1);
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  outlined destroy of TaskPriority?(v0 + 80, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);

  v1 = *(v0 + 8);

  return v1();
}

void *PlaybackController.commands(for:options:replaceIntent:)(void *a1, char a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v42 = _swiftEmptyArrayStorage;
    v10 = a1;

    if ((a2 & 2) != 0 && specialized Player.canPerform(_:)(v10, a3, v8))
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
      }

      v40 = &type metadata for Player.ReplaceCommand;
      v41 = &protocol witness table for Player.ReplaceCommand;
      *&v39 = v10;
      *(&v39 + 1) = a3;
      v9[2] = v12 + 1;
      v13 = &v9[5 * v12];
      goto LABEL_34;
    }

    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd, &_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004F2EF0;
      *(inited + 56) = &type metadata for Player.InsertCommand;
      *(inited + 64) = &protocol witness table for Player.InsertCommand;
      *(inited + 32) = v10;
      *(inited + 40) = 0;
      *(inited + 96) = &type metadata for Player.ChangeCommand;
      *(inited + 104) = &protocol witness table for Player.ChangeCommand;
      *(inited + 72) = 1;
      v19 = v10;
      if (specialized Player.canPerform(_:)(v19, 0, v8) && specialized Player.canPerform(_:)(1, v8))
      {
        specialized Array.append<A>(contentsOf:)(inited);
        v40 = &type metadata for Player.ReplaceCommand;
        v41 = &protocol witness table for Player.ReplaceCommand;
        *&v39 = v19;
        *(&v39 + 1) = a3;
        v20 = v19;
      }

      else
      {

        v40 = &type metadata for Player.ReplaceCommand;
        v41 = &protocol witness table for Player.ReplaceCommand;
        *&v39 = v19;
        *(&v39 + 1) = a3;
        outlined init with copy of ActionPerforming(&v39, v38);
        v24 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
        }

        v26 = v9[2];
        v25 = v9[3];
        if (v26 >= v25 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v9);
        }

        __swift_mutable_project_boxed_opaque_existential_1(v38, v38[3]);
        v27 = __chkstk_darwin();
        v29 = (&v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v30 + 16))(v29, v27);
        v31 = *v29;
        v32 = v29[1];
        v36 = &type metadata for Player.ReplaceCommand;
        v37 = &protocol witness table for Player.ReplaceCommand;
        *&v35 = v31;
        *(&v35 + 1) = v32;
        v9[2] = v26 + 1;
        outlined init with take of ActionPerforming(&v35, &v9[5 * v26 + 4]);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        v42 = v9;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v39);
      if (!specialized Player.canPerform(_:)(0, v8))
      {

        return v42;
      }

      v9 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      }

      v17 = v9[2];
      v33 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v33 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v17 + 1, 1, v9);
      }

      v40 = &type metadata for Player.PlaybackCommand;
      v41 = &protocol witness table for Player.PlaybackCommand;
      LOBYTE(v39) = 0;
    }

    else
    {
      if ((a2 & 4) != 0)
      {
        v14 = v10;
        v15 = specialized Player.canPerform(_:)(v14, 0, v8);

        if (v15)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
          v17 = v9[2];
          v16 = v9[3];
          if (v17 >= v16 >> 1)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
          }

          v40 = &type metadata for Player.InsertCommand;
          v41 = &protocol witness table for Player.InsertCommand;
          v39 = v14;
          v9[2] = v17 + 1;
          goto LABEL_33;
        }
      }

      if ((a2 & 8) == 0 || (v10 = v10, v21 = specialized Player.canPerform(_:)(v10, 1, v8), v10, !v21))
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
      v17 = v9[2];
      v22 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v22 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v17 + 1, 1, v9);
      }

      v40 = &type metadata for Player.InsertCommand;
      v41 = &protocol witness table for Player.InsertCommand;
      *&v39 = v10;
      *(&v39 + 1) = 1;
    }

    v9[2] = v23;
LABEL_33:
    v13 = &v9[5 * v17];
LABEL_34:
    outlined init with take of ActionPerforming(&v39, (v13 + 4));
  }

  return v9;
}

uint64_t closure #1 in PlaybackController.userPickedReplaceIntent()(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v59 = a1;
  v61 = type metadata accessor for UUID();
  v2 = *(v61 - 8);
  __chkstk_darwin();
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v39 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v60 = *(v6 + 16);
  v53 = v6 + 16;
  v60(v8, v10, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  v12 = static NSBundle.module;
  v51 = v11;
  v13 = v12;
  static Locale.current.getter();
  v57 = v13;
  v49 = String.init(localized:table:bundle:locale:comment:)();
  v48 = v14;
  v40 = *(v6 + 8);
  v40(v10, v5);
  v47 = swift_allocObject();
  v15 = v59;
  *(v47 + 16) = v59;
  UUID.init()();
  v46 = UUID.uuidString.getter();
  v58 = v16;
  v52 = *(v2 + 8);
  v52(v4, v61);
  String.LocalizationValue.init(stringLiteral:)();
  v60(v8, v10, v5);
  static Locale.current.getter();
  v57 = v57;
  v39 = v6 + 8;
  v45 = String.init(localized:table:bundle:locale:comment:)();
  v55 = v17;
  v18 = v40;
  v40(v10, v5);
  v44 = swift_allocObject();
  *(v44 + 16) = v15;
  UUID.init()();
  v43 = UUID.uuidString.getter();
  v54 = v19;
  v52(v4, v61);
  String.LocalizationValue.init(stringLiteral:)();
  v20 = v60;
  v60(v8, v10, v5);
  static Locale.current.getter();
  v21 = v57;
  v42 = String.init(localized:table:bundle:locale:comment:)();
  v57 = v22;
  v18(v10, v5);
  v56 = swift_allocObject();
  *(v56 + 16) = v59;
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v41 = v23;
  v52(v4, v61);
  String.LocalizationValue.init(stringLiteral:)();
  v20(v8, v10, v5);
  static Locale.current.getter();
  v61 = String.init(localized:table:bundle:locale:comment:)();
  v25 = v24;
  v18(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1004F2EB0;
  v27 = v58;
  *(v26 + 32) = v46;
  *(v26 + 40) = v27;
  v28 = v48;
  *(v26 + 48) = v49;
  *(v26 + 56) = v28;
  *(v26 + 64) = 2;
  v29 = v47;
  *(v26 + 72) = &async function pointer to partial apply for closure #1 in closure #1 in PlaybackController.userPickedReplaceIntent();
  *(v26 + 80) = v29;
  v30 = v54;
  *(v26 + 88) = v43;
  *(v26 + 96) = v30;
  v31 = v55;
  *(v26 + 104) = v45;
  *(v26 + 112) = v31;
  *(v26 + 120) = 1;
  v32 = v44;
  *(v26 + 128) = &async function pointer to partial apply for closure #2 in closure #1 in PlaybackController.userPickedReplaceIntent();
  *(v26 + 136) = v32;
  v33 = v41;
  *(v26 + 144) = v59;
  *(v26 + 152) = v33;
  v34 = v57;
  *(v26 + 160) = v42;
  *(v26 + 168) = v34;
  *(v26 + 176) = 0;
  v35 = v56;
  *(v26 + 184) = &async function pointer to partial apply for closure #3 in closure #1 in PlaybackController.userPickedReplaceIntent();
  *(v26 + 192) = v35;
  LOBYTE(v63[0]) = 1;
  v66 = 0uLL;
  *&v67 = v61;
  *(&v67 + 1) = v25;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = 0;
  LOBYTE(v69) = 1;
  *(&v69 + 1) = v26;
  v70 = 0;
  v36 = *(v50 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v37 = *(v50 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  v61 = __swift_project_boxed_opaque_existential_0Tm((v50 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v36);
  v63[2] = v68;
  v63[3] = v69;
  v64 = v70;
  v63[0] = v66;
  v63[1] = v67;
  v65 = 0;
  v60 = *(v37 + 8);

  outlined init with copy of Alert(&v66, v62);
  v60(v63, v36, v37);
  outlined destroy of Alert(&v66);

  return outlined destroy of PresentationKind(v63);
}

uint64_t closure #1 in closure #1 in PlaybackController.userPickedReplaceIntent()(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = 2;
  *(v3 + 8) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t closure #2 in closure #1 in PlaybackController.userPickedReplaceIntent()(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = 1;
  *(v3 + 8) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t closure #3 in closure #1 in PlaybackController.userPickedReplaceIntent()(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = 0;
  *(v3 + 8) = 1;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t closure #1 in PlaybackController.userPickedPlayLocally()(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v54 = a1;
  v50 = type metadata accessor for UUID();
  v49 = *(v50 - 8);
  __chkstk_darwin();
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v36 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v53 = *(v5 + 16);
  v53(v7, v9, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v10 = static NSBundle.module;
  v11 = static NSBundle.module;
  v39 = v10;
  v12 = v11;
  static Locale.current.getter();
  v43 = v12;
  v48 = String.init(localized:table:bundle:locale:comment:)();
  v47 = v13;
  v52 = *(v5 + 8);
  v52(v9, v4);
  v46 = swift_allocObject();
  *(v46 + 16) = v54;
  UUID.init()();
  v45 = UUID.uuidString.getter();
  v44 = v14;
  v38 = v5 + 8;
  v37 = *(v49 + 8);
  v15 = v50;
  v37(v3, v50);
  String.LocalizationValue.init(stringLiteral:)();
  v53(v7, v9, v4);
  static Locale.current.getter();
  v40 = v43;
  v49 = String.init(localized:table:bundle:locale:comment:)();
  v43 = v16;
  v52(v9, v4);
  v42 = swift_allocObject();
  *(v42 + 16) = v54;
  UUID.init()();
  v41 = UUID.uuidString.getter();
  v54 = v17;
  v37(v3, v15);
  String.LocalizationValue.init(stringLiteral:)();
  v18 = v53;
  v53(v7, v9, v4);
  static Locale.current.getter();
  v19 = v40;
  v50 = String.init(localized:table:bundle:locale:comment:)();
  v40 = v20;
  v21 = v52;
  v52(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v18(v7, v9, v4);
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v23;
  v21(v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1004F2EF0;
  v26 = v44;
  *(v25 + 32) = v45;
  *(v25 + 40) = v26;
  v27 = v47;
  *(v25 + 48) = v48;
  *(v25 + 56) = v27;
  *(v25 + 64) = 2;
  v28 = v46;
  *(v25 + 72) = &async function pointer to partial apply for closure #1 in closure #1 in PlaybackController.userPickedPlayLocally();
  *(v25 + 80) = v28;
  v29 = v54;
  *(v25 + 88) = v41;
  *(v25 + 96) = v29;
  v30 = v43;
  *(v25 + 104) = v49;
  *(v25 + 112) = v30;
  *(v25 + 120) = 0;
  v31 = v42;
  *(v25 + 128) = &async function pointer to partial apply for closure #2 in closure #1 in PlaybackController.userPickedPlayLocally();
  *(v25 + 136) = v31;
  LOBYTE(v56[0]) = 1;
  *&v59 = v50;
  *(&v59 + 1) = v40;
  *&v60 = v22;
  *(&v60 + 1) = v24;
  LOBYTE(v61) = 0;
  *(&v61 + 1) = 0;
  LOBYTE(v62) = 1;
  *(&v62 + 1) = v25;
  v63 = 0;
  v32 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v33 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  v53 = __swift_project_boxed_opaque_existential_0Tm((v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v32);
  v56[2] = v61;
  v56[3] = v62;
  v57 = v63;
  v56[0] = v59;
  v56[1] = v60;
  v58 = 0;
  v34 = *(v33 + 8);

  outlined init with copy of Alert(&v59, v55);
  v34(v56, v32, v33);
  outlined destroy of Alert(&v59);

  return outlined destroy of PresentationKind(v56);
}

uint64_t closure #1 in closure #1 in PlaybackController.userPickedPlayLocally()(uint64_t a1, uint64_t a2)
{
  **(*(*(v2 + 16) + 64) + 40) = 1;
  swift_continuation_resume();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t closure #2 in closure #1 in PlaybackController.userPickedPlayLocally()(uint64_t a1, uint64_t a2)
{
  **(*(*(v2 + 16) + 64) + 40) = 0;
  swift_continuation_resume();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t MPCloudServiceStatusController.accountPlayabilityStatus(for:)(uint64_t result)
{
  if (result)
  {
    if (([result isDeviceRoute] & 1) == 0)
    {
      v2 = [v1 musicSubscriptionStatus];
      if (!v2)
      {
LABEL_8:
        v6 = [objc_opt_self() sharedController];
        v7 = [v6 isCloudLibraryEnabled];

        if (v7)
        {
          return 0;
        }

        else
        {
          return 2;
        }
      }

      v3 = v2;
      v4 = [v2 capabilities];
      v5 = [v3 capabilities];

      if ((v5 & 2) == 0)
      {
        if ((v4 & 1) == 0)
        {
          return 1;
        }

        goto LABEL_8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in closure #1 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_allocError();
    *v5 = a3;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v68 = a3;
  v70 = a1;
  v6 = type metadata accessor for UUID();
  v67 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v9 = type metadata accessor for String.LocalizationValue();
  v69 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v57 - v12;
  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 applicationState];

  if (!a2)
  {
LABEL_8:
    **(*(v70 + 64) + 40) = 0;

    return swift_continuation_throwingResume();
  }

  if (v15 == 2)
  {
    if (one-time initialization token for playbackController != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.playbackController);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Music is background so bypass the requires subscription alert and use buffered AirPlay", v19, 2u);
    }

    goto LABEL_8;
  }

  v66 = a4;
  if (v68)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v21 = v69;
    (*(v69 + 16))(v11, v13, v9);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v22 = static NSBundle.module;
    static Locale.current.getter();
    v65 = String.init(localized:table:bundle:locale:comment:)();
    v64 = v23;
    (*(v21 + 8))(v13, v9);
    v24 = swift_allocObject();
    *(v24 + 16) = v70;
    UUID.init()();
    v63 = UUID.uuidString.getter();
    v62 = v25;
    (*(v67 + 8))(v8, v6);
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v28 + 1;
    v29 = &v26[56 * v28];
    v30 = v62;
    *(v29 + 4) = v63;
    *(v29 + 5) = v30;
    v31 = v64;
    *(v29 + 6) = v65;
    *(v29 + 7) = v31;
    v29[64] = 2;
    *(v29 + 9) = &async function pointer to partial apply for closure #1 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:);
    *(v29 + 10) = v24;
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v32 = v69;
  v65 = v6;
  String.LocalizationValue.init(stringLiteral:)();
  v33 = *(v32 + 16);
  v64 = v32 + 16;
  v63 = v33;
  v33(v11, v13, v9);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v34 = static NSBundle.module;
  v35 = static NSBundle.module;
  static Locale.current.getter();
  v36 = v35;
  v62 = v34;
  v60 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v37;
  v61 = *(v32 + 8);
  v61(v13, v9);
  v39 = swift_allocObject();
  *(v39 + 16) = v70;
  UUID.init()();
  v58 = UUID.uuidString.getter();
  v41 = v40;
  (*(v67 + 8))(v8, v65);
  v70 = v41;

  v67 = v39;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v32 + 8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
  }

  v44 = *(v26 + 2);
  v43 = *(v26 + 3);
  if (v44 >= v43 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v26);
  }

  *(v26 + 2) = v44 + 1;
  v45 = &v26[56 * v44];
  v46 = v70;
  *(v45 + 4) = v58;
  *(v45 + 5) = v46;
  *(v45 + 6) = v60;
  *(v45 + 7) = v38;
  v59 = v38;
  v45[64] = 0;
  v47 = v67;
  *(v45 + 9) = &async function pointer to partial apply for closure #2 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:);
  *(v45 + 10) = v47;
  v48 = Optional<A>.sharedQueueUnsupportedTitle.getter(v68);
  v50 = v49;
  String.LocalizationValue.init(stringLiteral:)();
  v63(v11, v13, v9);
  static Locale.current.getter();
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v53 = v52;
  v61(v13, v9);
  LOBYTE(v72[0]) = 1;
  *&v75 = v48;
  *(&v75 + 1) = v50;
  *&v76 = v51;
  *(&v76 + 1) = v53;
  LOBYTE(v77) = 0;
  *(&v77 + 1) = 0;
  LOBYTE(v78) = 1;
  *(&v78 + 1) = v26;
  v79 = 0;
  v54 = *(v66 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v55 = *(v66 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_0Tm((v66 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v54);
  v72[2] = v77;
  v72[3] = v78;
  v73 = v79;
  v72[0] = v75;
  v72[1] = v76;
  v74 = 0;
  v56 = *(v55 + 8);
  outlined init with copy of Alert(&v75, v71);
  v56(v72, v54, v55);
  outlined destroy of Alert(&v75);

  return outlined destroy of PresentationKind(v72);
}

uint64_t closure #1 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)()
{
  **(*(*(v0 + 16) + 64) + 40) = 2;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Optional<A>.sharedQueueUnsupportedTitle.getter(void *a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v12[-v7];
  if (a1 && ![a1 isHomePodRoute])
  {
    [a1 isAppleTVRoute];
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v8, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v9 = static NSBundle.module;
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v8, v2);
  return v10;
}

uint64_t MusicItem.innerItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v36 = a2;
  v44 = type metadata accessor for GenericMusicItem();
  v37 = *(v44 - 8);
  __chkstk_darwin();
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v34 - v5;
  v6 = type metadata accessor for Playlist.Entry.InternalItem();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin();
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Playlist.Entry();
  v39 = *(v45 - 8);
  __chkstk_darwin();
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v34 - v9;
  v11 = type metadata accessor for Track();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v34 - v15;
  v17 = *(a1 - 8);
  v18 = __chkstk_darwin();
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v17 + 16);
  v21(v20, v47, a1, v18);
  if (swift_dynamicCast())
  {
    (*(v12 + 32))(v14, v16, v11);
    Track.musicItem.getter(v46);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v23 = v45;
    v22 = v46;
    if (swift_dynamicCast())
    {
      v25 = v38;
      v24 = v39;
      (*(v39 + 32))(v38, v10, v23);
      v26 = v40;
      Playlist.Entry.internalItem.getter();
      Playlist.Entry.InternalItem.musicItem.getter(v22);
      (*(v41 + 8))(v26, v42);
      (*(v24 + 8))(v25, v23);
    }

    else
    {
      v28 = v43;
      v27 = v44;
      if (swift_dynamicCast())
      {
        v29 = v37;
        v30 = v35;
        (*(v37 + 32))(v35, v28, v27);
        GenericMusicItem.innerMusicItem.getter(v22);
        (*(v29 + 8))(v30, v27);
      }

      else
      {
        v31 = v36;
        v22[3] = a1;
        v22[4] = v31;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
        (v21)(boxed_opaque_existential_1, v47, a1);
      }
    }
  }

  return (*(v17 + 8))(v20, a1);
}

uint64_t MusicItem.sharePlayAlertMessage.getter(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for Station();
  v38[0] = *(v40 - 8);
  __chkstk_darwin();
  v39 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for MusicMovie();
  v38[1] = *(v43 - 8);
  __chkstk_darwin();
  v42 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TVEpisode();
  v41 = *(v45 - 8);
  __chkstk_darwin();
  v44 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Playlist();
  v46 = *(v49 - 8);
  __chkstk_darwin();
  v48 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Album();
  v47 = *(v52 - 8);
  __chkstk_darwin();
  v51 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MusicVideo();
  v50 = *(v53 - 8);
  __chkstk_darwin();
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v54 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v38 - v16;
  v18 = type metadata accessor for Song();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicItem.innerItem.getter(a1, a2, v56);
  if (!v56[3])
  {
    goto LABEL_31;
  }

  outlined init with copy of TaskPriority?(v56, v55, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A4Item_pMd, &_s8MusicKit0A4Item_pMR);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v13 + 16))(v15, v17, v12);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v22 = static NSBundle.module;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    (*(v13 + 8))(v17, v12);
    (*(v19 + 8))(v21, v18);
    goto LABEL_20;
  }

  v24 = v53;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v13 + 16))(v15, v17, v12);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v25 = static NSBundle.module;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    (*(v13 + 8))(v17, v12);
    (*(v50 + 8))(v10, v24);
    goto LABEL_20;
  }

  v27 = v51;
  v26 = v52;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v13 + 16))(v15, v17, v12);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v28 = static NSBundle.module;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    (*(v13 + 8))(v17, v12);
    v29 = v47;
    goto LABEL_19;
  }

  v27 = v48;
  v26 = v49;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v13 + 16))(v15, v17, v12);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v30 = static NSBundle.module;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    (*(v13 + 8))(v17, v12);
    v31 = &v60;
LABEL_18:
    v29 = *(v31 - 32);
LABEL_19:
    (*(v29 + 8))(v27, v26);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    outlined destroy of TaskPriority?(v56, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
    return v23;
  }

  v32 = v44;
  v33 = v45;
  if (!swift_dynamicCast())
  {
    v32 = v42;
    v33 = v43;
    if (swift_dynamicCast())
    {
      v34 = &v58;
      goto LABEL_25;
    }

    v27 = v39;
    v26 = v40;
    if (swift_dynamicCast())
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v13 + 16))(v15, v17, v12);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v35 = static NSBundle.module;
      static Locale.current.getter();
      v23 = String.init(localized:table:bundle:locale:comment:)();
      (*(v13 + 8))(v17, v12);
      v31 = &v57;
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v55);
LABEL_31:
    outlined destroy of TaskPriority?(v56, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
    goto LABEL_32;
  }

  v34 = &v59;
LABEL_25:
  (*(*(v34 - 32) + 8))(v32, v33);
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  outlined destroy of TaskPriority?(v56, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
LABEL_32:
  String.LocalizationValue.init(stringLiteral:)();
  (*(v13 + 16))(v15, v17, v12);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v36 = static NSBundle.module;
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  (*(v13 + 8))(v17, v12);
  return v23;
}

uint64_t closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v104 = a4;
  *(&v104 + 1) = a5;
  v122 = a1;
  v123 = a3;
  v105 = a2;
  v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin();
  v101 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v100 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v109 = &v99 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v99 - v19;
  String.LocalizationValue.init(stringLiteral:)();
  v111 = *(v16 + 16);
  v112 = v16 + 16;
  v111(v18, v20, v15);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v21 = static NSBundle.module;
  v106 = static NSBundle.module;
  static Locale.current.getter();
  v113 = v18;
  v110 = v21;
  v116 = v14;
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v23;
  v25 = *(v16 + 8);
  v114 = v20;
  v115 = v16 + 8;
  v117 = v15;
  v108 = v25;
  v25(v20, v15);
  v26 = swift_allocObject();
  *(v26 + 16) = v122;
  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  v30 = *(v10 + 8);
  v118 = v12;
  v119 = v10 + 8;
  v120 = v9;
  v107 = v30;
  v30(v12, v9);
  v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
  }

  v34 = v105;
  *(v31 + 2) = v33 + 1;
  v35 = &v31[56 * v33];
  *(v35 + 4) = v27;
  *(v35 + 5) = v29;
  *(v35 + 6) = v22;
  *(v35 + 7) = v24;
  v35[64] = 2;
  *(v35 + 9) = &async function pointer to partial apply for closure #1 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:);
  *(v35 + 10) = v26;
  v36 = v109;
  outlined init with copy of PlaybackIntentDescriptor(v34, v109, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v101;
    v38 = v102;
    v39 = v36;
    v40 = v103;
    (*(v102 + 32))(v101, v39, v103);
    v109 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v38 + 8))(v37, v40);
  }

  else
  {
    v109 = *v36;
  }

  v41 = v118;
  v42 = v114;
  v43 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  v44 = v123;
  swift_beginAccess();
  v45 = *(v44 + v43);
  if (v45)
  {

    v46 = v109;
    v47 = specialized Player.canPerform(_:)(v46, 0, v45);

    if (v47)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v48 = v117;
      v111(v113, v42, v117);
      v49 = v106;
      static Locale.current.getter();
      v50 = String.init(localized:table:bundle:locale:comment:)();
      v52 = v51;
      v108(v42, v48);
      v53 = swift_allocObject();
      *(v53 + 16) = v122;
      UUID.init()();
      v54 = UUID.uuidString.getter();
      v56 = v55;
      v107(v41, v120);
      v58 = *(v31 + 2);
      v57 = *(v31 + 3);
      if (v58 >= v57 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v31);
      }

      *(v31 + 2) = v58 + 1;
      v59 = &v31[56 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      *(v59 + 6) = v50;
      *(v59 + 7) = v52;
      v59[64] = 2;
      *(v59 + 9) = &async function pointer to partial apply for closure #2 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:);
      *(v59 + 10) = v53;
      v41 = v118;
      v42 = v114;
      v34 = v105;
    }
  }

  v60 = v100;
  outlined init with copy of PlaybackIntentDescriptor(v34, v100, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = v101;
    v62 = v102;
    v63 = v60;
    v64 = v103;
    (*(v102 + 32))(v101, v63, v103);
    v65 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v62 + 8))(v61, v64);
  }

  else
  {
    v65 = *v60;
  }

  v66 = *(v123 + v43);
  v121 = v65;
  if (v66 && (, v67 = v65, v68 = specialized Player.canPerform(_:)(v67, 1, v66), v67, , v68))
  {
    String.LocalizationValue.init(stringLiteral:)();
    v69 = v117;
    v111(v113, v42, v117);
    v70 = v106;
    static Locale.current.getter();
    v71 = String.init(localized:table:bundle:locale:comment:)();
    v72 = v42;
    v74 = v73;
    v108(v72, v69);
    v75 = swift_allocObject();
    *(v75 + 16) = v122;
    UUID.init()();
    v76 = UUID.uuidString.getter();
    v78 = v77;
    v107(v41, v120);
    v80 = *(v31 + 2);
    v79 = *(v31 + 3);
    if (v80 >= v79 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v31);
    }

    *(v31 + 2) = v80 + 1;
    v81 = &v31[56 * v80];
    *(v81 + 4) = v76;
    *(v81 + 5) = v78;
    *(v81 + 6) = v71;
    *(v81 + 7) = v74;
    v81[64] = 2;
    *(v81 + 9) = &async function pointer to partial apply for closure #3 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:);
    *(v81 + 10) = v75;
    v82 = v122;
    v41 = v118;
    v42 = v114;
  }

  else
  {
    v82 = v122;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v83 = v117;
  v111(v113, v42, v117);
  v84 = v106;
  static Locale.current.getter();
  v85 = String.init(localized:table:bundle:locale:comment:)();
  v87 = v86;
  v108(v42, v83);
  v88 = swift_allocObject();
  *(v88 + 16) = v82;
  UUID.init()();
  v89 = UUID.uuidString.getter();
  v91 = v90;
  v107(v41, v120);
  v93 = *(v31 + 2);
  v92 = *(v31 + 3);
  if (v93 >= v92 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v31);
  }

  *(v31 + 2) = v93 + 1;
  v94 = &v31[56 * v93];
  *(v94 + 4) = v89;
  *(v94 + 5) = v91;
  *(v94 + 6) = v85;
  *(v94 + 7) = v87;
  v94[64] = 0;
  *(v94 + 9) = &async function pointer to partial apply for closure #4 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:);
  *(v94 + 10) = v88;
  LOBYTE(v125[0]) = 1;
  v128 = 0uLL;
  v129 = v104;
  LOBYTE(v130) = 0;
  *(&v130 + 1) = 0;
  LOBYTE(v131) = 1;
  *(&v131 + 1) = v31;
  v132 = 0;
  v95 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v96 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_0Tm((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v95);
  v125[2] = v130;
  v125[3] = v131;
  v126 = v132;
  v125[0] = v128;
  v125[1] = v129;
  v127 = 0;
  v97 = *(v96 + 8);

  outlined init with copy of Alert(&v128, &v124);
  v97(v125, v95, v96);
  outlined destroy of Alert(&v128);

  return outlined destroy of PresentationKind(v125);
}

uint64_t closure #1 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = vdupq_n_s64(2uLL);
  v3[1].i8[0] = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t closure #2 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = xmmword_1004F3010;
  *(v3 + 16) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t closure #3 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = xmmword_1004F3020;
  *(v3 + 16) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t closure #4 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

id PlaybackController.requestedPropertySet(for:)()
{
  if (one-time initialization token for properties != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:), v6, v5);
}

uint64_t closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:)()
{
  v1 = (v0[2] + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v0[6] = (*(v3 + 40))(v2, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:);

  return GroupActivitiesManager.leave(performLeaveCommand:)(0);
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:), v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(uint64_t a1)
{
  v34 = a1;
  v33 = type metadata accessor for UUID();
  v32 = *(v33 - 8);
  __chkstk_darwin();
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v26 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v9 = static NSBundle.module;
  static Locale.current.getter();
  v10 = v9;
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v11;
  v12 = *(v3 + 8);
  v12(v7, v2);
  String.LocalizationValue.init(stringLiteral:)();
  v8(v5, v7, v2);
  static Locale.current.getter();
  v28 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v13;
  v12(v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004F2400;
  String.LocalizationValue.init(stringLiteral:)();
  v8(v5, v7, v2);
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  v12(v7, v2);
  v18 = v31;
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v32 + 8))(v18, v33);
  *(v14 + 32) = v19;
  *(v14 + 40) = v21;
  *(v14 + 48) = v15;
  *(v14 + 56) = v17;
  *(v14 + 64) = 2;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  LOBYTE(v36[0]) = 1;
  *&v39 = v30;
  *(&v39 + 1) = v29;
  *&v40 = v28;
  *(&v40 + 1) = v27;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = 0;
  LOBYTE(v42) = 1;
  *(&v42 + 1) = v14;
  v43 = 0;
  v22 = *(v34 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v23 = *(v34 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_0Tm((v34 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v22);
  v36[2] = v41;
  v36[3] = v42;
  v37 = v43;
  v36[0] = v39;
  v36[1] = v40;
  v38 = 0;
  v24 = *(v23 + 8);
  outlined init with copy of Alert(&v39, v35);
  v24(v36, v22, v23);
  outlined destroy of Alert(&v39);
  return outlined destroy of PresentationKind(v36);
}

void closure #1 in presentAlert #1 (dialog:metrics:metricsOptions:) in PlaybackController.engine(_:didPauseForLeaseEndWithError:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = &type metadata for String;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = a3 + 16 * a1;
  v6 = *(v5 + 40);
  *&v14 = *(v5 + 32);
  *(&v14 + 1) = v6;
  outlined init with take of Any(&v14, v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v8 = v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    outlined init with copy of ActionPerforming(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v14);

    v11 = v15;
    v12 = v16;
    __swift_project_boxed_opaque_existential_0Tm(&v14, v15);
    (*(v12 + 24))(v8, v11, v12);

    __swift_destroy_boxed_opaque_existential_0Tm(&v14);
  }

  else
  {
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v13[OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented] = 0;
  }
}

void ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v54 = a1;
  v55 = a2;
  v53 = type metadata accessor for UUID();
  v6 = *(v53 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v4 buttons];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for ICStoreDialogResponseButton, ICStoreDialogResponseButton_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_20;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v4;
  for (i = a3; v12; i = a3)
  {
    v13 = 0;
    v50 = v11 & 0xFFFFFFFFFFFFFF8;
    v51 = v11 & 0xC000000000000001;
    v14 = _swiftEmptyArrayStorage;
    v47 = (v6 + 8);
    v48 = v12;
    v49 = v11;
    while (1)
    {
      if (v51)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v50 + 16))
        {
          goto LABEL_19;
        }

        v11 = *(v11 + 8 * v13 + 32);
      }

      v15 = v11;
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v58 = [v11 type] != 2;
      v16 = [v15 title];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v19;
        v57 = v18;
      }

      else
      {
        v56 = 0xE000000000000000;
        v57 = 0;
      }

      v20 = swift_allocObject();
      v22 = v54;
      v21 = v55;
      v20[2] = v15;
      v20[3] = v22;
      v20[4] = v21;
      v20[5] = v13;
      v23 = v15;
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v22, v21);
      v24 = v52;
      UUID.init()();
      v25 = UUID.uuidString.getter();
      v4 = v26;
      (*v47)(v24, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      }

      a3 = *(v14 + 2);
      v27 = *(v14 + 3);
      if (a3 >= v27 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), a3 + 1, 1, v14);
      }

      v28 = 2 * v58;

      *(v14 + 2) = a3 + 1;
      v29 = &v14[56 * a3];
      *(v29 + 4) = v25;
      *(v29 + 5) = v4;
      v30 = v56;
      *(v29 + 6) = v57;
      *(v29 + 7) = v30;
      v29[64] = v28;
      *(v29 + 9) = &async function pointer to partial apply for closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:);
      *(v29 + 10) = v20;
      ++v13;
      v11 = v49;
      if (v6 == v48)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v31 = v11;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v31;
    v45 = v4;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_22:

  v32 = v45;
  v33 = [v45 message];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = i;
  v39 = [v32 explanation];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  *v38 = v35;
  *(v38 + 8) = v37;
  *(v38 + 16) = v41;
  *(v38 + 24) = v43;
  *(v38 + 32) = 0;
  *(v38 + 40) = 0;
  *(v38 + 48) = 1;
  *(v38 + 56) = v14;
  *(v38 + 64) = 0;
}

uint64_t closure #1 in PlaybackController.engine(_:didPauseForLeaseEndWithError:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented) & 1) == 0)
  {
    *(result + OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented) = 1;
    v6 = result;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = v7;

    ICStoreDialogResponse.alert(buttonsAdditionalAction:)(partial apply for closure #1 in presentAlert #1 (dialog:metrics:metricsOptions:) in PlaybackController.engine(_:didPauseForLeaseEndWithError:), v8, v16);

    v9 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v10 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    __swift_project_boxed_opaque_existential_0Tm((v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v9);
    v13[2] = v16[2];
    v13[3] = v16[3];
    v14 = v17;
    v13[0] = v16[0];
    v13[1] = v16[1];
    v15 = 0;
    v11 = *(v10 + 8);
    outlined init with copy of Alert(v16, v12);
    v11(v13, v9, v10);
    outlined destroy of Alert(v16);
    return outlined destroy of PresentationKind(v13);
  }

  return result;
}

double PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = v3;
  v6[4] = a2;
  swift_errorRetain();
  v7 = a2;
  v8 = v3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:), v6);

  return result;
}

void closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2, void *a3)
{
  v163 = a3;
  v166 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal07GenericA4ItemOSgMd, &_s16MusicKitInternal07GenericA4ItemOSgMR);
  __chkstk_darwin();
  v5 = &v151 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationVSgMd, &_s8MusicKit7StationVSgMR);
  __chkstk_darwin();
  v7 = &v151 - v6;
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.playbackController);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v170 = v5;
  v172 = v7;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v174 = v13;
    *v12 = 136446210;
    *&v199 = a1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(describing:)();
    v16 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v15, &v174);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "didFailToPlayFirstItem with error=%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  if ((*(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented) & 1) == 0)
  {
    v156 = OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented;
    v17 = _convertErrorToNSError(_:)();
    v18 = [v17 userInfo];
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = *(v19 + 16);
    v160 = v17;
    if (v20 && (v21 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0x676F6C616964, 0xE600000000000000), (v22 & 1) != 0))
    {
      outlined init with copy of Any(*(v19 + 56) + 32 * v21, &v174);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      if (swift_dynamicCast())
      {

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          *&v174 = v171;
          *v25 = 136446210;
          v26 = Dictionary.description.getter();
          v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v27, &v174);

          *(v25 + 4) = v28;
          v17 = v160;
          _os_log_impl(&_mh_execute_header, v23, v24, "Found an error dialog=%{public}s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v171);
        }

        v29 = objc_allocWithZone(ICStoreDialogResponse);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v31 = [v29 initWithResponseDictionary:isa];

        ICStoreDialogResponse.alert(buttonsAdditionalAction:)(0, 0, &v174);
        v196 = v176;
        v197 = v177;
        v198 = v178;
        v194 = v174;
        v195 = v175;
LABEL_14:
        v32 = [v17 userInfo];
        v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v33 + 16))
        {
          v36 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v34, v35);
          v38 = v37;

          if (v38)
          {
            outlined init with copy of Any(*(v33 + 56) + 32 * v36, &v174);

            type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
            if (swift_dynamicCast())
            {
              v39 = v199;
              goto LABEL_21;
            }

LABEL_20:
            v39 = 0;
LABEL_21:
            v40 = swift_allocObject();
            *(v40 + 16) = 0;
            v171 = (v40 + 16);
            v41 = swift_allocObject();
            *(v41 + 16) = 0;
            v169 = (v41 + 16);
            v42 = swift_allocObject();
            *(v42 + 16) = 0;
            v168 = (v42 + 16);
            detectRadioErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(a1, v41, v42, v40);
            if (v39)
            {
              v43 = v39;
              detectRadioErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(v43, v41, v42, v40);
            }

            v158 = v41;
            v159 = v42;
            v161 = v39;
            v157 = v40;
            if (!v163)
            {
              v50 = 0;
              goto LABEL_47;
            }

            v44 = v163;
            v45 = [v44 stationStringID];
            if (v45)
            {
              v46 = v45;
              v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v49 = v48;
            }

            else
            {
              v47 = 0;
              v49 = 0;
            }

            v51 = [v44 stationID];
            v52 = [v44 stationHash];
            if (v52)
            {
              v53 = v52;
              v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v56 = v55;

              v17 = v160;
              if (v49)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v54 = 0;
              v56 = 0;
              if (v49)
              {
LABEL_30:
                v57 = HIBYTE(v49) & 0xF;
                if ((v49 & 0x2000000000000000) == 0)
                {
                  v57 = v47 & 0xFFFFFFFFFFFFLL;
                }

                if (v57 | v51)
                {
LABEL_40:
                  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelRadioStationKind, MPModelRadioStationKind_ptr);
                  v59 = [swift_getObjCClassFromMetadata() identityKind];
                  v167 = &v151;
                  __chkstk_darwin();
                  *(&v151 - 6) = v47;
                  *(&v151 - 5) = v49;
                  *(&v151 - 4) = v51;
                  *(&v151 - 3) = v54;
                  *(&v151 - 2) = v56;
                  v60 = objc_allocWithZone(MPIdentifierSet);
                  v61 = swift_allocObject();
                  *(v61 + 16) = partial apply for closure #1 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:);
                  *(v61 + 24) = &v151 - 8;
                  *&v176 = _sSo22MPMutableIdentifierSet_So012MPIdentifierC0CXcIgg_SoAA_ACXcIegg_TRTA_0;
                  *(&v176 + 1) = v61;
                  *&v174 = _NSConcreteStackBlock;
                  *(&v174 + 1) = 1107296256;
                  *&v175 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
                  *(&v175 + 1) = &block_descriptor_111_0;
                  v62 = _Block_copy(&v174);

                  v63 = [v60 initWithModelKind:v59 block:v62];

                  _Block_release(v62);

                  LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

                  if (v59)
                  {
                    __break(1u);
                  }

                  else
                  {
                    __chkstk_darwin();
                    *(&v151 - 2) = v44;
                    v64 = objc_allocWithZone(MPModelRadioStation);
                    v65 = swift_allocObject();
                    *(v65 + 16) = partial apply for closure #2 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:);
                    *(v65 + 24) = &v151 - 4;
                    *&v176 = _sSo22MPMutableIdentifierSet_So012MPIdentifierC0CXcIgg_SoAA_ACXcIegg_TRTA_0;
                    *(&v176 + 1) = v65;
                    *&v174 = _NSConcreteStackBlock;
                    *(&v174 + 1) = 1107296256;
                    *&v175 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
                    *(&v175 + 1) = &block_descriptor_117;
                    v66 = _Block_copy(&v174);

                    v50 = [v64 initWithIdentifiers:v63 block:v66];

                    _Block_release(v66);

                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    v40 = v157;
                    if ((isEscapingClosureAtFileLocation & 1) == 0)
                    {
                      v17 = v160;
LABEL_46:
                      v39 = v161;
LABEL_47:
                      v68 = v171;
                      swift_beginAccess();
                      v69 = *v68;
                      v70 = v50;
                      v162 = v50;
                      if (v69 == 1)
                      {
                        if (v50)
                        {
                          outlined init with copy of ActionPerforming(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v199);
                          v71 = *(&v200 + 1);
                          v72 = v201;
                          __swift_project_boxed_opaque_existential_0Tm(&v199, *(&v200 + 1));
                          v73 = type metadata accessor for Station();
                          v74 = v50;
                          v75 = v172;
                          dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                          v76 = *(v73 - 8);
                          if ((*(v76 + 48))(v75, 1, v73) == 1)
                          {
                            outlined destroy of TaskPriority?(v75, &_s8MusicKit7StationVSgMd, &_s8MusicKit7StationVSgMR);
                            v174 = 0u;
                            v175 = 0u;
                            *&v176 = 0;
                          }

                          else
                          {
                            *(&v175 + 1) = v73;
                            *&v176 = &protocol witness table for Station;
                            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v174);
                            (*(v76 + 32))(boxed_opaque_existential_1, v75, v73);
                          }

                          v39 = v161;
                          v179 = 2;
                          (*(v72 + 8))(&v174, v71, v72);
                          outlined destroy of PresentationKind(&v174);
                          __swift_destroy_boxed_opaque_existential_0Tm(&v199);
                          v92 = v194;
                          v91 = v195;
                          v84 = v196;
                          v191[0] = *(&v196 + 1);
                          *(v191 + 3) = DWORD1(v196);
                          v83 = *(&v196 + 1);
                          v85 = v197;
                          v190[0] = *(&v197 + 1);
                          *(v190 + 3) = DWORD1(v197);
                          v82 = *(&v197 + 1);
                          v93 = v198;
                          v94 = v162;
                          v17 = v160;
                          goto LABEL_62;
                        }

                        v70 = 0;
                      }

                      v77 = v169;
                      swift_beginAccess();
                      if (*v77)
                      {
                        v78 = v50;
                        specialized static Alert.cellularRestrictedAlert(model:)(v70, &v199);
LABEL_56:
                        outlined destroy of TaskPriority?(&v194, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);

                        v82 = v204;
                        v81 = v205;
                        v83 = v202;
                        v84 = v201;
                        v85 = v203;
                        v164 = v199;
                        v165 = v200;
                        v174 = v199;
                        v175 = v200;
                        LOBYTE(v176) = v201;
                        *(&v176 + 1) = v202;
                        LOBYTE(v177) = v203;
                        *(&v177 + 1) = v204;
                        v178 = v205;
                        v86 = &v185;
LABEL_57:
                        outlined init with copy of Alert(&v174, v86);
                        v154 = v84;
                        goto LABEL_64;
                      }

                      v79 = v168;
                      swift_beginAccess();
                      if (*v79)
                      {
                        v80 = v50;
                        specialized static Alert.networkUnavailableAlert(model:traitCollection:)(v70, 0, &v199);
                        goto LABEL_56;
                      }

                      v87 = v50;

                      v88 = _convertErrorToNSError(_:)();
                      v89 = [objc_opt_self() playbackAlertControllerForItem:v163 contentType:0 error:v88 dismissalBlock:0];

                      if (v89)
                      {
                        MPUPlaybackAlertController.alert.getter(&v174);
                        outlined destroy of TaskPriority?(&v194, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);

                        v187 = v176;
                        v188 = v177;
                        v189 = v178;
                        v185 = v174;
                        v186 = v175;
                      }

                      else
                      {
                        outlined destroy of TaskPriority?(&v194, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);
                        v185 = 0u;
                        v186 = 0u;
                        v187 = 0u;
                        v188 = 0u;
                        v189 = 0;
                      }

                      v132 = v158;
                      v131 = v159;
                      detectStoreErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(a1, v40, v159, v158);
                      if (v39)
                      {
                        v133 = v39;
                        detectStoreErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(v133, v40, v131, v132);
                      }

                      if (!v163)
                      {
                        goto LABEL_117;
                      }

                      v134 = v163;
                      v135 = [v134 modelGenericObject];
                      v94 = v162;
                      if (v135)
                      {
                        v136 = v135;
                        v137 = [v135 innermostModelObject];
                      }

                      else
                      {
                        v137 = 0;
                      }

                      if (*v171 == 1)
                      {
                        v138 = [v134 modelPlayEvent];
                        if (v138)
                        {
                          v139 = v138;
                          v140 = [v138 itemType];
                          if (v140 == 3)
                          {
                            v141 = [v139 playlist];
LABEL_115:
                            v142 = v141;

                            if (!v142)
                            {

LABEL_117:
                              v92 = v185;
                              v91 = v186;
                              v84 = v187;
                              v191[0] = *(&v187 + 1);
                              *(v191 + 3) = DWORD1(v187);
                              v83 = *(&v187 + 1);
                              v85 = v188;
                              v190[0] = *(&v188 + 1);
                              *(v190 + 3) = DWORD1(v188);
                              v82 = *(&v188 + 1);
                              v93 = v189;
                              v94 = v162;
LABEL_62:
                              if (!v82)
                              {
                                v174 = v92;
                                v175 = v91;
                                LOBYTE(v176) = v84;
                                *(&v176 + 1) = v191[0];
                                DWORD1(v176) = *(v191 + 3);
                                *(&v176 + 1) = v83;
                                LOBYTE(v177) = v85;
                                *(&v177 + 1) = v190[0];
                                DWORD1(v177) = *(v190 + 3);
                                *(&v177 + 1) = 0;
                                v178 = v93;
                                if (v39)
                                {
LABEL_74:
                                  v118 = [v39 domain];
                                  v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                  v121 = v120;

                                  v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                  if (v121)
                                  {
                                    if (v119 == v122 && v121 == v123)
                                    {

LABEL_80:
                                      if ([v39 code] != 40)
                                      {

                                        outlined destroy of TaskPriority?(&v174, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);

LABEL_107:

                                        v17 = v162;
                                        goto LABEL_108;
                                      }

                                      if (!v163)
                                      {
                                        v128 = 0;
                                        v130 = 0;
                                        v127 = 0;
LABEL_106:
                                        PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(v128, v130, 0, 0);

                                        outlined destroy of TaskPriority?(&v174, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);

                                        goto LABEL_107;
                                      }

                                      v125 = [v163 modelGenericObject];
                                      if (v125)
                                      {
                                        v126 = v125;
                                        v127 = [v125 flattenedGenericObject];

                                        if (v127)
                                        {
                                          v128 = MPModelObject.bestIdentifier(for:)(2, 1u);
                                          v130 = v129;
                                        }

                                        else
                                        {
                                          v128 = 0;
                                          v130 = 0;
                                        }

                                        goto LABEL_106;
                                      }

LABEL_129:
                                      __break(1u);
                                      return;
                                    }

                                    v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                    if (v124)
                                    {
                                      goto LABEL_80;
                                    }

                                    outlined destroy of TaskPriority?(&v174, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);

LABEL_108:

                                    return;
                                  }

                                  v94 = v162;
LABEL_87:

                                  outlined destroy of TaskPriority?(&v174, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);

                                  goto LABEL_108;
                                }

LABEL_86:
                                static String._unconditionallyBridgeFromObjectiveC(_:)();
                                goto LABEL_87;
                              }

                              v174 = v92;
                              v175 = v91;
                              LOBYTE(v176) = v84;
                              *(&v176 + 1) = v191[0];
                              DWORD1(v176) = *(v191 + 3);
                              *(&v176 + 1) = v83;
                              LOBYTE(v177) = v85;
                              *(&v177 + 1) = v190[0];
                              DWORD1(v177) = *(v190 + 3);
                              *(&v177 + 1) = v82;
                              v178 = v93;
                              v81 = v93;
                              v164 = v92;
                              v165 = v91;
                              outlined init with copy of Alert(&v174, &v199);
                              v193[0] = v191[0];
                              *(v193 + 3) = *(v191 + 3);
                              v192[0] = v190[0];
                              *(v192 + 3) = *(v190 + 3);
                              v154 = v84;
                              LOBYTE(v84) = v84 & 1;
LABEL_64:
                              v96 = v164;
                              v95 = v165;
                              v185 = v164;
                              v186 = v165;
                              LOBYTE(v187) = v84;
                              v155 = v83;
                              *(&v187 + 1) = v83;
                              v153 = v85;
                              LOBYTE(v188) = v85 & 1;
                              *(&v188 + 1) = v82;
                              v189 = v81;
                              v152 = v81;
                              v97 = *(v82 + 16);
                              if (v97)
                              {

                                v98 = _swiftEmptyArrayStorage;
                                v151 = v82;
                                v99 = (v82 + 80);
                                do
                                {
                                  v169 = v98;
                                  v172 = v97;
                                  v100 = *(v99 - 6);
                                  v101 = *(v99 - 5);
                                  v102 = *(v99 - 4);
                                  v103 = *(v99 - 3);
                                  LODWORD(v167) = *(v99 - 16);
                                  v105 = *(v99 - 1);
                                  v104 = *v99;
                                  v106 = swift_allocObject();
                                  swift_unknownObjectWeakInit();
                                  v107 = swift_allocObject();
                                  v170 = v102;
                                  v171 = v100;
                                  *(v107 + 16) = v100;
                                  *(v107 + 24) = v101;
                                  v98 = v169;
                                  v108 = v167;
                                  *(v107 + 32) = v102;
                                  *(v107 + 40) = v103;
                                  v109 = v108;
                                  *(v107 + 48) = v108;
                                  *(v107 + 49) = v206[0];
                                  *(v107 + 52) = *(v206 + 3);
                                  *(v107 + 56) = v105;
                                  *(v107 + 64) = v104;
                                  *(v107 + 72) = v106;
                                  swift_bridgeObjectRetain_n();
                                  swift_bridgeObjectRetain_n();
                                  outlined copy of (@escaping @callee_guaranteed () -> ())?(v105, v104);

                                  v168 = v104;
                                  outlined copy of (@escaping @callee_guaranteed () -> ())?(v105, v104);
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 2) + 1, 1, v98);
                                  }

                                  v111 = *(v98 + 2);
                                  v110 = *(v98 + 3);
                                  if (v111 >= v110 >> 1)
                                  {
                                    v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v98);
                                  }

                                  v99 += 7;

                                  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v105, v168);
                                  *(v98 + 2) = v111 + 1;
                                  v112 = &v98[56 * v111];
                                  v113 = v170;
                                  *(v112 + 4) = v171;
                                  *(v112 + 5) = v101;
                                  *(v112 + 6) = v113;
                                  *(v112 + 7) = v103;
                                  v112[64] = v109;
                                  *(v112 + 9) = &async function pointer to partial apply for closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:);
                                  *(v112 + 10) = v107;
                                  v97 = v172 - 1;
                                }

                                while (v172 != 1);
                                v82 = v151;

                                v17 = v160;
                                v96 = v164;
                                v95 = v165;
                              }

                              else
                              {
                                v98 = _swiftEmptyArrayStorage;
                              }

                              v164 = v96;
                              v165 = v95;
                              LOBYTE(v174) = 1;
                              v180 = v96;
                              v181 = v95;
                              LOBYTE(v182) = 0;
                              *(&v182 + 1) = 0;
                              LOBYTE(v183) = 1;
                              *(&v183 + 1) = v98;
                              v184 = 0;
                              v114 = v166;
                              *(v166 + v156) = 1;
                              v115 = *(v114 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
                              v116 = *(v114 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
                              __swift_project_boxed_opaque_existential_0Tm((v114 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v115);
                              v176 = v182;
                              v177 = v183;
                              v178 = v184;
                              v174 = v180;
                              v175 = v181;
                              v179 = 0;
                              v117 = *(v116 + 8);

                              outlined init with copy of Alert(&v180, &v173);
                              v117(&v174, v115, v116);
                              outlined destroy of Alert(&v185);
                              outlined destroy of Alert(&v180);
                              outlined destroy of PresentationKind(&v174);
                              v174 = v164;
                              v175 = v165;
                              LOBYTE(v176) = v154;
                              *(&v176 + 1) = v193[0];
                              DWORD1(v176) = *(v193 + 3);
                              *(&v176 + 1) = v155;
                              LOBYTE(v177) = v153;
                              *(&v177 + 1) = v192[0];
                              DWORD1(v177) = *(v192 + 3);
                              *(&v177 + 1) = v82;
                              v178 = v152;
                              v39 = v161;
                              v94 = v162;
                              if (v161)
                              {
                                goto LABEL_74;
                              }

                              goto LABEL_86;
                            }

LABEL_121:
                            v143 = v142;
                            outlined init with copy of ActionPerforming(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v199);
                            v144 = *(&v200 + 1);
                            v145 = v201;
                            __swift_project_boxed_opaque_existential_0Tm(&v199, *(&v200 + 1));
                            v146 = v143;
                            v147 = v170;
                            GenericMusicItem.init(_:)();
                            v148 = type metadata accessor for GenericMusicItem();
                            v149 = *(v148 - 8);
                            if ((*(v149 + 48))(v147, 1, v148) == 1)
                            {
                              outlined destroy of TaskPriority?(v147, &_s16MusicKitInternal07GenericA4ItemOSgMd, &_s16MusicKitInternal07GenericA4ItemOSgMR);
                              v174 = 0u;
                              v175 = 0u;
                              *&v176 = 0;
                            }

                            else
                            {
                              *(&v175 + 1) = v148;
                              *&v176 = lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type GenericMusicItem and conformance GenericMusicItem, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
                              v150 = __swift_allocate_boxed_opaque_existential_1(&v174);
                              (*(v149 + 32))(v150, v147, v148);
                            }

                            v179 = 2;
                            (*(v145 + 8))(&v174, v144, v145);

                            outlined destroy of PresentationKind(&v174);
                            __swift_destroy_boxed_opaque_existential_0Tm(&v199);
                            v92 = v185;
                            v91 = v186;
                            v84 = v187;
                            v191[0] = *(&v187 + 1);
                            *(v191 + 3) = DWORD1(v187);
                            v83 = *(&v187 + 1);
                            v85 = v188;
                            v190[0] = *(&v188 + 1);
                            *(v190 + 3) = DWORD1(v188);
                            v82 = *(&v188 + 1);
                            v93 = v189;
                            v17 = v160;
                            v39 = v161;
                            v94 = v162;
                            goto LABEL_62;
                          }

                          if (v140 == 1)
                          {
                            v141 = [v139 album];
                            goto LABEL_115;
                          }
                        }

                        if (v137)
                        {
                          v142 = v137;
                          goto LABEL_121;
                        }

LABEL_126:
                        v92 = v185;
                        v91 = v186;
                        v84 = v187;
                        v191[0] = *(&v187 + 1);
                        *(v191 + 3) = DWORD1(v187);
                        v83 = *(&v187 + 1);
                        v85 = v188;
                        v190[0] = *(&v188 + 1);
                        *(v190 + 3) = DWORD1(v188);
                        v82 = *(&v188 + 1);
                        v93 = v189;
                        goto LABEL_62;
                      }

                      if (*v169)
                      {
                        specialized static Alert.cellularRestrictedAlert(model:)(v137, &v199);
                      }

                      else
                      {
                        if ((*v168 & 1) == 0)
                        {

                          goto LABEL_126;
                        }

                        specialized static Alert.networkUnavailableAlert(model:traitCollection:)(v137, 0, &v199);
                      }

                      outlined destroy of TaskPriority?(&v185, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);

                      v82 = v204;
                      v81 = v205;
                      v83 = v202;
                      v84 = v201;
                      v85 = v203;
                      v164 = v199;
                      v165 = v200;
                      v174 = v199;
                      v175 = v200;
                      LOBYTE(v176) = v201;
                      *(&v176 + 1) = v202;
                      LOBYTE(v177) = v203;
                      *(&v177 + 1) = v204;
                      v178 = v205;
                      v86 = &v180;
                      goto LABEL_57;
                    }
                  }

                  __break(1u);
                  goto LABEL_129;
                }

LABEL_36:
                if (v56)
                {
                  v58 = HIBYTE(v56) & 0xF;
                  if ((v56 & 0x2000000000000000) == 0)
                  {
                    v58 = v54 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v58)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                }

                v50 = 0;
                v40 = v157;
                goto LABEL_46;
              }
            }

            if (v51)
            {
              goto LABEL_40;
            }

            goto LABEL_36;
          }
        }

        else
        {
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0;
    goto LABEL_14;
  }
}

void detectRadioErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = _convertErrorToNSError(_:)();
  v8 = _convertErrorToNSError(_:)();
  Category = MPCRadioPlaybackErrorGetCategory();

  switch(Category)
  {
    case 3:
      v10 = (a4 + 16);
      break;
    case 2:
      v10 = (a3 + 16);
      break;
    case 1:
      v10 = (a2 + 16);
      break;
    default:
      return;
  }

  swift_beginAccess();
  *v10 = 1;
}

void closure #1 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in closure #1 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:);
  *(v13 + 24) = v12;
  v15[4] = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPMutableLocalLibraryIdentifiers) -> ();
  v15[3] = &block_descriptor_144;
  v14 = _Block_copy(v15);

  [a1 setRadioIdentifiersWithBlock:v14];
  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void closure #1 in closure #1 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [a1 setStationStringID:v9];

  [a1 setStationID:a4];
  if (a6)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [a1 setStationHash:?];
}

void closure #2 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [a2 stationName];
  [v3 setName:v4];
}

void MPUPlaybackAlertController.alert.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = type metadata accessor for UUID();
  v4 = *(v48 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 actions];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIAlertAction, UIAlertAction_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_21:

    v11 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  v41 = v2;
  v42 = a1;
  v10 = 0;
  v43 = (v4 + 8);
  v44 = v8 & 0xC000000000000001;
  v11 = _swiftEmptyArrayStorage;
  v45 = v9;
  v46 = v8;
  do
  {
    if (v44)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = [v12 handler];
    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v14 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIAlertAction?) -> ();
    }

    else
    {
      v15 = 0;
    }

    v16 = [v13 title];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v19;
      v50 = v18;
    }

    else
    {
      v49 = 0xE000000000000000;
      v50 = 0;
    }

    v20 = swift_allocObject();
    v20[2] = v14;
    v20[3] = v15;
    v20[4] = v13;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v14, v15);
    v21 = v13;
    v22 = v47;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*v43)(v22, v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    }

    v27 = *(v11 + 2);
    v26 = *(v11 + 3);
    if (v27 >= v26 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v11);
    }

    ++v10;

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v14, v15);
    *(v11 + 2) = v27 + 1;
    v28 = &v11[56 * v27];
    *(v28 + 4) = v23;
    *(v28 + 5) = v25;
    v29 = v49;
    *(v28 + 6) = v50;
    *(v28 + 7) = v29;
    v28[64] = 2;
    *(v28 + 9) = &async function pointer to partial apply for closure #1 in MPUPlaybackAlertController.alert.getter;
    *(v28 + 10) = v20;
    v8 = v46;
  }

  while (v45 != v10);

  v2 = v41;
  a1 = v42;
LABEL_22:
  v30 = [v2 title];
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [v2 message];
  if (v35)
  {
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  *a1 = v32;
  *(a1 + 8) = v34;
  *(a1 + 16) = v37;
  *(a1 + 24) = v39;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
}

void detectStoreErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for MPCErrorCode(0);
  if (swift_dynamicCast())
  {
    lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode, &protocol conformance descriptor for related decl 'e' for MPCErrorCode);
    _BridgedStoredNSError.code.getter();

    switch(v7)
    {
      case 10:
        swift_beginAccess();
        *(a4 + 16) = 1;
        break;
      case 11:
        swift_beginAccess();
        *(a3 + 16) = 1;
        break;
      case 17:
        swift_beginAccess();
        *(a2 + 16) = 1;
        break;
    }
  }
}

uint64_t closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:), 0, 0);
}

uint64_t closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  *(v0 + 112) = *v3;
  *(v0 + 128) = v3[1];
  v5 = *(v3 + 5);
  v6 = *(v3 + 6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  *(v7 + 80) = *(v3 + 6);
  *(v7 + 48) = v9;
  *(v7 + 64) = v10;
  *(v7 + 32) = v8;
  v11 = *(v2 + 64);
  v12 = *(v2 + 48);
  v13 = *(v2 + 16);
  *(v7 + 120) = *(v2 + 32);
  *(v7 + 136) = v12;
  *(v7 + 152) = v11;
  *(v7 + 104) = v13;
  *(v7 + 88) = *v2;
  outlined init with copy of String(v0 + 112, v0 + 144);
  outlined init with copy of String(v0 + 128, v0 + 160);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  outlined init with copy of TaskPriority?(v2, v0 + 16, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:), v7);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t closure #1 in closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 40);
  if (v6)
  {
    v12 = (v6 + *v6);
    v9 = swift_task_alloc();
    *(v5 + 16) = v9;
    *v9 = v5;
    v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

    return v12(a4, a5);
  }

  else
  {
    v11 = *(v5 + 8);

    return v11();
  }
}

double PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a5;
  v11 = v5;
  v12 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:), v10);

  return result;
}

id closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, void *a2, void (*a3)(void, void), void (*a4)(void, void), uint64_t a5)
{
  v120 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v115 = v9;
  v116 = v10;
  __chkstk_darwin();
  v114 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v113 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for String.LocalizationValue();
  v13 = *(v119 - 8);
  __chkstk_darwin();
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v98 - v16;
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.playbackController);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  v21 = os_log_type_enabled(v19, v20);
  v118 = a3;
  v112 = v15;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v117 = v13;
    v23 = v22;
    v111 = swift_slowAlloc();
    *&v135[0] = v111;
    *v23 = 136446210;
    v24 = a1;
    *&v127 = a1;
    type metadata accessor for MPCExplicitContentAuthorizationReason(0);
    v25 = String.init<A>(describing:)();
    v27 = v17;
    v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v26, v135);
    v29 = a5;
    v30 = a4;

    *(v23 + 4) = v28;
    v17 = v27;
    a3 = v118;
    _os_log_impl(&_mh_execute_header, v19, v20, "requiresAuthorizationToPlay with reason=%{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v111);

    v13 = v117;

    if (v24 != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {

    v38 = a1;
    v29 = a5;
    v30 = a4;
    if (v38 != 2)
    {
LABEL_5:
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v137 = v131;
      v138 = v132;
      v139 = v133;
      v140 = v134;
      v135[0] = v127;
      v135[1] = v128;
      v135[2] = v129;
      v136 = v130;
      v31 = v131;
      if (!v131 || (v32 = v138) == 0)
      {
        v117 = v29;
        v118 = v30;
        String.LocalizationValue.init(stringLiteral:)();
        v45 = v112;
        v111 = *(v13 + 16);
        v111(v112, v17, v119);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v46 = static NSBundle.module;
        static Locale.current.getter();
        v47 = v46;
        v48 = String.init(localized:table:bundle:locale:comment:)();
        v109 = v49;
        v110 = v48;
        v50 = *(v13 + 8);
        v51 = v119;
        v50(v17, v119);
        v52 = v114;
        UUID.init()();
        v53 = UUID.uuidString.getter();
        v107 = v54;
        v108 = v53;
        (*(v116 + 8))(v52, v115);
        String.LocalizationValue.init(stringLiteral:)();
        v111(v45, v17, v51);
        static Locale.current.getter();
        v55 = String.init(localized:table:bundle:locale:comment:)();
        v57 = v56;
        v50(v17, v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1004F2400;
        v59 = v107;
        *(v58 + 32) = v108;
        *(v58 + 40) = v59;
        v60 = v109;
        *(v58 + 48) = v110;
        *(v58 + 56) = v60;
        *(v58 + 64) = 2;
        *(v58 + 72) = 0;
        *(v58 + 80) = 0;
        v122 = 0uLL;
        *&v123 = v55;
        *(&v123 + 1) = v57;
        LOBYTE(v124) = 0;
        *(&v124 + 1) = 0;
        LOBYTE(v125) = 1;
        *(&v125 + 1) = v58;
        v126 = 0;
        v61 = *(v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
        v62 = *(v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
        __swift_project_boxed_opaque_existential_0Tm((v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v61);
        v129 = v124;
        v130 = v125;
        *&v131 = v126;
        v127 = v122;
        v128 = v123;
        BYTE8(v131) = 0;
        v63 = *(v62 + 8);

        outlined init with copy of Alert(&v122, v121);
        v63(&v127, v61, v62);
        outlined destroy of PresentationKind(&v127);
        v118(0, 0);
        outlined destroy of Alert(&v122);

        return outlined destroy of ApplicationCapabilities(v135);
      }

      v106 = *(&v137 + 1);
      v107 = *(&v136 + 1);
      v33 = objc_opt_self();

      v108 = v32;

      v34 = [v33 standardUserDefaults];
      *&v122 = 0xD000000000000012;
      *(&v122 + 1) = 0x80000001004CC6A0;
      lazy protocol witness table accessor for type String and conformance String();
      NSUserDefaults.subscript.getter(&v127);

      v109 = v31;
      if (*(&v128 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        v35 = swift_dynamicCast();
        v36 = v118;
        if (v35)
        {
          v37 = v122;
LABEL_24:
          v64 = [v36 cloudUniversalLibraryID];
          if (!v64)
          {

LABEL_29:
            String.LocalizationValue.init(stringLiteral:)();
            v69 = v112;
            v102 = *(v13 + 16);
            v103 = v13 + 16;
            v102(v112, v17, v119);
            if (one-time initialization token for module != -1)
            {
              swift_once();
            }

            v70 = static NSBundle.module;
            v71 = static NSBundle.module;
            v100 = v70;
            v72 = v71;
            static Locale.current.getter();
            v73 = v72;
            v105 = String.init(localized:table:bundle:locale:comment:)();
            v111 = v74;
            v75 = *(v13 + 8);
            v117 = v13 + 8;
            v99 = v75;
            v76 = v119;
            v75(v17, v119);
            v77 = swift_allocObject();
            v104 = v77;
            v77[2] = v36;
            v77[3] = v30;
            v77[4] = v29;
            v78 = v36;

            v79 = v114;
            UUID.init()();
            v101 = UUID.uuidString.getter();
            v110 = v80;
            v118 = v30;
            v81 = v115;
            v82 = v17;
            v83 = *(v116 + 8);
            v83(v79, v115);
            String.LocalizationValue.init(stringLiteral:)();
            v102(v69, v82, v76);
            static Locale.current.getter();
            v116 = String.init(localized:table:bundle:locale:comment:)();
            v113 = v84;
            v99(v82, v76);
            v85 = v81;
            v86 = swift_allocObject();
            *(v86 + 16) = v118;
            *(v86 + 24) = v29;

            UUID.init()();
            v87 = UUID.uuidString.getter();
            v89 = v88;
            v119 = v88;
            v83(v79, v85);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
            v90 = swift_allocObject();
            *(v90 + 16) = xmmword_1004F2EF0;
            v92 = v110;
            v91 = v111;
            *(v90 + 32) = v101;
            *(v90 + 40) = v92;
            v93 = v104;
            *(v90 + 48) = v105;
            *(v90 + 56) = v91;
            *(v90 + 64) = 2;
            *(v90 + 72) = &async function pointer to partial apply for closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:);
            *(v90 + 80) = v93;
            *(v90 + 88) = v87;
            *(v90 + 96) = v89;
            v94 = v113;
            *(v90 + 104) = v116;
            *(v90 + 112) = v94;
            *(v90 + 120) = 0;
            *(v90 + 128) = &async function pointer to partial apply for closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:);
            *(v90 + 136) = v86;
            LOBYTE(v127) = 1;
            *&v122 = v107;
            *(&v122 + 1) = v109;
            *&v123 = v106;
            *(&v123 + 1) = v108;
            LOBYTE(v124) = 0;
            *(&v124 + 1) = 0;
            LOBYTE(v125) = 1;
            *(&v125 + 1) = v90;
            v126 = 0;
            v95 = *(v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
            v96 = *(v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
            v120 = __swift_project_boxed_opaque_existential_0Tm((v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v95);
            v129 = v124;
            v130 = v125;
            *&v131 = v126;
            v127 = v122;
            v128 = v123;
            BYTE8(v131) = 0;
            v97 = *(v96 + 8);

            outlined init with copy of Alert(&v122, v121);
            v97(&v127, v95, v96);
            outlined destroy of ApplicationCapabilities(v135);
            outlined destroy of Alert(&v122);

            return outlined destroy of PresentationKind(&v127);
          }

          v117 = v13;

          result = [v36 cloudUniversalLibraryID];
          if (result)
          {
            v65 = result;
            v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v67;

            *&v127 = v66;
            *(&v127 + 1) = v68;
            __chkstk_darwin();
            *(&v98 - 2) = &v127;
            LOBYTE(v65) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v98 - 4), v37);

            v13 = v117;
            v36 = v118;
            if (v65)
            {

              v30(1, 0);
              return outlined destroy of ApplicationCapabilities(v135);
            }

            goto LABEL_29;
          }

LABEL_33:
          __break(1u);
          return result;
        }
      }

      else
      {
        outlined destroy of TaskPriority?(&v127, &_sypSgMd_0, &_sypSgMR_0);
        v36 = v118;
      }

      v37 = _swiftEmptyArrayStorage;
      goto LABEL_24;
    }
  }

  result = [a3 modelGenericObject];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v40 = result;
  v41 = [result flattenedGenericObject];

  if (v41)
  {
    v42 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(v42, v44, v30, v29);
}

uint64_t closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:), 0, 0);
}

uint64_t closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)()
{
  v20 = v0;
  v1 = [*(v0 + 64) cloudUniversalLibraryID];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x80000001004CC6A0;
  v8 = lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter((v0 + 16));

  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v9 = *(v0 + 48);
      v10 = *(v9 + 2);
      if (v10 > 0x3E7)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v9;
        if (!isUniquelyReferenced_nonNull_native || *(v9 + 3) <= 0x7CDuLL)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v9);
          v18 = v9;
        }

        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v10 - 999, 0);
      }

      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_sypSgMd_0, &_sypSgMR_0);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_11:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v9);
  }

  *(v9 + 2) = v13 + 1;
  v14 = &v9[16 * v13];
  *(v14 + 4) = v3;
  *(v14 + 5) = v5;
  v15 = [v6 standardUserDefaults];
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v19[0] = v9;
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x80000001004CC6A0;
  NSUserDefaults.subscript.setter(v19, v0 + 16, &type metadata for String, v8);

LABEL_16:
  (*(v0 + 72))(1, 0);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:), 0, 0);
}

uint64_t closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)()
{
  (*(v0 + 16))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v73 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v69 = &v64 - v8;
  v72 = type metadata accessor for URL();
  v9 = *(v72 - 8);
  __chkstk_darwin();
  v67 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v64 - v11;
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Logger.playbackController);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v68 = a1;
  if (v15)
  {
    v16 = a2;
    v17 = v12;
    v18 = v9;
    v19 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v74[0] = v66;
    *v19 = 136446210;
    v20 = v5;
    v21 = v19;
    *&v79[0] = a1;
    *(&v79[0] + 1) = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v22 = String.init<A>(describing:)();
    v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v23, v74);
    v9 = v18;
    v12 = v17;
    a2 = v16;

    v25 = v21;
    *(v21 + 1) = v24;
    v26 = v72;
    v5 = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Presenting Age Verification with model identifier=%{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
  }

  else
  {

    v26 = v72;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v79[4] = v75;
  v79[5] = v76;
  v79[6] = v77;
  v79[7] = v78;
  v79[0] = v74[0];
  v79[1] = v74[1];
  v79[2] = v74[2];
  v79[3] = v74[3];
  outlined destroy of ApplicationCapabilities(v79);
  if (BYTE1(v79[0]) != 1)
  {
    v32 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v33 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v32);
    v34 = specialized static Alert.ageVerificationFallbackAlert()(v74);
    BYTE8(v75) = 0;
    (*(v33 + 8))(v74, v32, v33, v34);
    outlined destroy of PresentationKind(v74);
    if (one-time initialization token for ageVerification != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v71, static Logger.ageVerification);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Device is offline. Age Verification cannot proceed. Displaying fallback alert instead.";
    goto LABEL_20;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v27 = v69;
  ExplicitRestrictionsController.accountVerificationURL.getter(v69);
  if ((*(v9 + 48))(v27, 1, v26) == 1)
  {
    outlined destroy of TaskPriority?(v27, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for ageVerification != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v71, static Logger.ageVerification);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "accountVerificationURL is missing. Age Verification cannot proceed.";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);

LABEL_21:

    if (v73)
    {
      v73(0, 0);
    }

    return;
  }

  v35 = *(v9 + 32);
  v35(v12, v27, v26);
  v36 = one-time initialization token for ageVerification;
  v65 = v5;
  if (a2)
  {
    v69 = v12;

    if (v36 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v71, static Logger.ageVerification);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "modelObjectIdentifier parameters found for age verification context", v39, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = 0x64496D616461;
    v41 = inited + 32;
    v42 = v68;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v42;
    *(inited + 56) = a2;
    v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v41, &_sSS_SStMd, &_sSS_SStMR);
    v44 = v67;
    v12 = v69;
    URL.parametrize(_:)(v43, v67);

    (*(v9 + 8))(v12, v26);
    v35(v12, v44, v26);
    v45 = v9;
  }

  else
  {
    if (one-time initialization token for ageVerification != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v71, static Logger.ageVerification);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "modelObjectIdentifier parameters missing for age verification context", v48, 2u);
    }

    v45 = v9;
  }

  v49 = [objc_allocWithZone(type metadata accessor for ExplicitRestrictionsController.AgeVerificationWrapper()) init];
  v50 = swift_allocObject();
  v51 = v65;
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  v53 = v73;
  v54 = v70;
  *(v52 + 2) = v73;
  *(v52 + 3) = v54;
  *(v52 + 4) = v50;
  v55 = &v49[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v56 = *&v49[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v57 = *&v49[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion + 8];
  *v55 = partial apply for closure #1 in PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:);
  v55[1] = v52;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v53, v54);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v56, v57);

  v58 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
  *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper) = v49;
  v59 = v49;

  v60 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v61 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_0Tm((v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v60);
  v62 = *(v61 + 16);
  v63 = v59;
  v62(v12, v63, v60, v61);

  (*(v45 + 8))(v12, v72);
}

void closure #1 in PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(void *a1, char a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    a3(a2 & 1, 0);
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
      v8 = Strong;
      v9 = v7;

      if (v7)
      {

        if (v7 == a1)
        {
          swift_beginAccess();
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            v11 = *&v10[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper];
            *&v10[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
          }
        }
      }
    }
  }
}

uint64_t PlaybackController.displayAgeVerification(modelObject:completion:)(id a1, void (*a2)(void, void), uint64_t a3)
{
  if (a1)
  {
    a1 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(a1, v6, a2, a3);
}

uint64_t PlaybackController.displayAgeVerification(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(PlaybackController.displayAgeVerification(for:), v4, v3);
}

{
  v6 = v1[1];
  v2 = static MainActor.shared.getter();
  v1[4].i64[0] = v2;
  v3 = swift_task_alloc();
  v1[4].i64[1] = v3;
  v3[1] = vextq_s8(v6, v6, 8uLL);
  v4 = swift_task_alloc();
  v1[5].i64[0] = v4;
  *v4 = v1;
  v4[1] = PlaybackController.displayAgeVerification(for:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x80000001004CC4E0, partial apply for closure #1 in PlaybackController.displayAgeVerification(for:), v3, &type metadata for () + 1);
}

uint64_t PlaybackController.displayAgeVerification(for:)()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = PlaybackController.displayAgeVerification(for:);
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = PlaybackController.displayAgeVerification(for:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PlaybackController.displayAgeVerification(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0Tm(a3, a3[3]);
  v9 = dispatch thunk of MusicItem.id.getter();
  v11 = v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(v9, v11, partial apply for closure #1 in closure #1 in PlaybackController.displayAgeVerification(for:), v13);
}

uint64_t closure #1 in closure #1 in PlaybackController.displayAgeVerification(for:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

id ExplicitRestrictionsController.AgeVerificationWrapper.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion + 8];

    v3(0, 0);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v3, v4);
  }

  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

double closure #1 in ExplicitRestrictionsController.AgeVerificationWrapper.performCompletion()(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = a4;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in closure #1 in ExplicitRestrictionsController.AgeVerificationWrapper.performCompletion(), v8);

  return result;
}

char *closure #1 in ExplicitRestrictionsController.AgeVerificationWrapper.cloudServiceSetupViewControllerDidDismiss(_:)(char *result)
{
  v1 = &result[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v2 = *&result[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 1);
    *v1 = 0;
    *(v1 + 1) = 0;
    v5 = [objc_opt_self() defaultManager];
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v4;
    v6[4] = v3;
    v9[4] = partial apply for closure #1 in ExplicitRestrictionsController.AgeVerificationWrapper.performCompletion();
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v9[3] = &block_descriptor_30;
    v7 = _Block_copy(v9);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v2, v4);
    v8 = v3;

    [v5 getAgeVerificationStateWithCompletion:v7];
    _Block_release(v7);

    return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2, v4);
  }

  return result;
}

uint64_t one-time initialization function for playbackController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.playbackController);
  __swift_project_value_buffer(v0, static Logger.playbackController);
  return Logger.init(subsystem:category:)();
}

uint64_t closure #1 in MPUPlaybackAlertController.alert.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(closure #1 in MPUPlaybackAlertController.alert.getter, 0, 0);
}

uint64_t closure #1 in MPUPlaybackAlertController.alert.getter()
{
  v1 = v0[2];
  if (v1)
  {
    v1(v0[4]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[7] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), 0, 0);
}

uint64_t closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)()
{
  v1 = [*(v0 + 16) action];
  v2 = [v1 type];

  if (v2 != 2 || (v3 = [*(v0 + 16) action], v4 = objc_msgSend(v3, "URLString"), v3, !v4))
  {
LABEL_5:
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);
    v10 = [objc_allocWithZone(ICStoreDialogResponseHandler) init];
    v11 = [objc_opt_self() activeAccount];
    v12 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v11];

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v12;
    v15 = v9;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSbSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), v14);

    v16 = *(v0 + 24);
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(string:)();

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    goto LABEL_5;
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = *(v21 + 32);
  v24(v19, *(v0 + 56), v22);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  (*(v21 + 16))(v20, v19, v22);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v24(v27 + v26, v20, v22);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v23, &async function pointer to partial apply for closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), v27);

  (*(v21 + 8))(v19, v22);
  v16 = *(v0 + 24);
  if (v16)
  {
LABEL_6:
    v16(*(v0 + 40));
  }

LABEL_7:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), 0, 0);
}

uint64_t closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)()
{
  *(v0 + 160) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 168) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), v2, v1);
}

{
  v1 = *(v0 + 160);

  *(v0 + 176) = [v1 sharedApplication];

  return _swift_task_switch(closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), 0, 0);
}

{

  return _swift_task_switch(closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[22];
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v1[23] = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1[24] = isa;

  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:);
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd, &_sSccySbs5NeverOGMR);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v1[13] = &block_descriptor_132;
  v1[14] = v6;
  [v2 openURL:v4 options:isa completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  return _swift_task_switch(closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), 0, 0);
}

uint64_t closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = [*(v0 + 160) action];
  *(v0 + 176) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:);
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  *(v0 + 104) = &block_descriptor_135;
  *(v0 + 112) = v4;
  [v2 handleButtonAction:v3 usingRequestContext:v1 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:);
  }

  else
  {
    v2 = closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 192);

  **(v0 + 144) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  **(v1 + 144) = 2;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

void key path getter for Player.sharePlayTogetherSession : Player(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

void key path setter for Player.sharePlayTogetherSession : Player(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;

  static Published.subscript.setter();
  Player.sharePlayTogetherSession.didset(v5);
}

unint64_t lazy protocol witness table accessor for type Player.PlaybackError and conformance Player.PlaybackError()
{
  result = lazy protocol witness table cache variable for type Player.PlaybackError and conformance Player.PlaybackError;
  if (!lazy protocol witness table cache variable for type Player.PlaybackError and conformance Player.PlaybackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.PlaybackError and conformance Player.PlaybackError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackController.CommandError and conformance PlaybackController.CommandError()
{
  result = lazy protocol witness table cache variable for type PlaybackController.CommandError and conformance PlaybackController.CommandError;
  if (!lazy protocol witness table cache variable for type PlaybackController.CommandError and conformance PlaybackController.CommandError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackController.CommandError and conformance PlaybackController.CommandError);
  }

  return result;
}

void outlined consume of PlaybackController.NowPlayingPresentationDescriptor?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t outlined init with copy of PlaybackIntentDescriptor(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void outlined consume of PlaybackController.CommandError(id result, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    outlined consume of PlaybackController.CommandError.AlertKind(result);
    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_4;
  }
}

void outlined consume of PlaybackController.CommandError.AlertKind(id a1)
{
  if (a1 >= 5)
  {
  }
}

double outlined copy of PlaybackController.CommandError(id a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    outlined copy of PlaybackController.CommandError.AlertKind(a1);
    return result;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  return result;
}

id outlined copy of PlaybackController.CommandError.AlertKind(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

BOOL specialized Player.canPerform(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v8[3] = &type metadata for Player.ReplaceCommand;
  v8[4] = &protocol witness table for Player.ReplaceCommand;
  v8[0] = a1;
  v8[1] = a2;
  __swift_project_boxed_opaque_existential_0Tm(v8, &type metadata for Player.ReplaceCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  static Published.subscript.getter();

  if (v7)
  {
    v5 = MPCPlayerResponse.canPerform(_:)(v8);
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

BOOL specialized Player.canPerform(_:)(char a1, uint64_t a2)
{
  v5[3] = &type metadata for Player.PlaybackCommand;
  v5[4] = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v5[0]) = a1;
  __swift_project_boxed_opaque_existential_0Tm(v5, &type metadata for Player.PlaybackCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4)
  {
    v2 = MPCPlayerResponse.canPerform(_:)(v5);
  }

  else
  {
    v2 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v2;
}

BOOL specialized Player.canPerform(_:)(void *a1, void *a2, uint64_t a3)
{
  v9[3] = &type metadata for Player.InsertCommand;
  v9[4] = &protocol witness table for Player.InsertCommand;
  v9[0] = a1;
  v9[1] = a2;
  __swift_project_boxed_opaque_existential_0Tm(v9, &type metadata for Player.InsertCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  outlined copy of Player.InsertCommand.Location(a2);
  static Published.subscript.getter();

  if (v8)
  {
    v6 = MPCPlayerResponse.canPerform(_:)(v9);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return v6;
}

BOOL specialized Player.canPerform(_:)(void *a1, uint64_t a2)
{
  v6[3] = &type metadata for Player.ChangeCommand;
  v6[4] = &protocol witness table for Player.ChangeCommand;
  v6[0] = a1;
  __swift_project_boxed_opaque_existential_0Tm(v6, &type metadata for Player.ChangeCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  outlined copy of Player.ChangeCommand(a1);
  static Published.subscript.getter();

  if (v5)
  {
    v3 = MPCPlayerResponse.canPerform(_:)(v6);
  }

  else
  {
    v3 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  return v3;
}

BOOL specialized Player.canPerform(_:)(uint64_t a1, uint64_t a2)
{
  v5[3] = &type metadata for Player.VocalsCommand;
  v5[4] = &protocol witness table for Player.VocalsCommand;
  LODWORD(v5[0]) = a1;
  BYTE4(v5[0]) = BYTE4(a1);
  BYTE5(v5[0]) = BYTE5(a1) & 1;
  __swift_project_boxed_opaque_existential_0Tm(v5, &type metadata for Player.VocalsCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4)
  {
    v2 = MPCPlayerResponse.canPerform(_:)(v5);
  }

  else
  {
    v2 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v2;
}

uint64_t outlined destroy of PlaybackIntentDescriptor(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized PlaybackController.engine(_:didReceive:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.sharedListening);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v27[0] = v9;
    *v8 = 136446210;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v14, v27);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received MPCSharedListeningEvent=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v16 = v5;
  specialized SharedListening.Event.init(_:)(v16, v25);
  if (v26 != 255)
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    v17 = (v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v18 = *(v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v19 = v17[4];
    __swift_project_boxed_opaque_existential_0Tm(v17, v18);
    (*(v19 + 40))(v18, v19);
    v20 = [v16 participant];
    v21 = [v20 externalIdentifier];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    GroupActivitiesManager.postEvent(_:participantID:)(v27, v22, v24);

    outlined destroy of TaskPriority?(v25, &_s9MusicCore15SharedListeningO5EventOSgMd, &_s9MusicCore15SharedListeningO5EventOSgMR);
  }
}

double specialized PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v5 = &v21 - v4;
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.sharedListening);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = a1;
    v22 = v10;
    *v9 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v11 = String.init<A>(describing:)();
    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Receiving didEndSharedListeningSessionWithError=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = v2;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v5, &async function pointer to partial apply for closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:), v17);

  if (a1)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    v20 = v15;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #2 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:), v19);
  }

  return result;
}

void specialized PlaybackController.engine(_:didPauseForLeaseEndWithError:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.playbackController);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = a1;
    v35[0] = v8;
    *v7 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v9 = String.init<A>(describing:)();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, v35);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "didPauseForLeaseEndWithError with error=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  if (a1)
  {
    v12 = _convertErrorToNSError(_:)();
    v13 = [v12 userInfo];
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v14 + 16))
    {
      v17 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v15, v16);
      v19 = v18;

      if (v19)
      {
        outlined init with copy of Any(*(v14 + 56) + 32 * v17, v35);

        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for ICMusicSubscriptionLeaseStatus, ICMusicSubscriptionLeaseStatus_ptr);
        if (swift_dynamicCast())
        {
          v20 = [v34 stateReasonDialog];
          if (!v20)
          {

            return;
          }

          v21 = v20;
          v22 = [v12 userInfo];
          v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (*(v23 + 16))
          {
            v26 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v24, v25);
            v28 = v27;

            if (v28)
            {
              outlined init with copy of Any(*(v23 + 56) + 32 * v26, v35);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
              if (swift_dynamicCast())
              {
                if (!v34[2] || (v29 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0x736E6F6974706FLL, 0xE700000000000000), (v30 & 1) == 0))
                {

                  return;
                }

                outlined init with copy of Any(v34[7] + 32 * v29, v35);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                if (swift_dynamicCast())
                {
                  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
                  v31 = swift_allocObject();
                  v31[2] = v2;
                  v31[3] = v21;
                  v31[4] = v34;
                  v31[5] = v34;
                  v32 = v2;
                  v33 = v21;
                  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in PlaybackController.engine(_:didPauseForLeaseEndWithError:), v31);

                  return;
                }

                goto LABEL_19;
              }

              goto LABEL_24;
            }
          }

          else
          {
          }

LABEL_24:
        }

LABEL_19:

        return;
      }
    }

    else
    {
    }

    goto LABEL_19;
  }
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A4Item_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PresentationKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PresentationKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PresentationKind(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackController.NowPlayingPresentationDescriptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackController.NowPlayingPresentationDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore18PlaybackControllerC12CommandError33_49A4F392108DD8BCF77701E27C865714LLO9AlertKindO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PlaybackController.CommandError.AlertKind(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlaybackController.CommandError.AlertKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore18PlaybackControllerC12CommandError33_49A4F392108DD8BCF77701E27C865714LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for PlaybackController.CommandError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PlaybackController.CommandError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PlaybackController.CommandError(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1001F2C0C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F2C70()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

uint64_t sub_1001F2DAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.displayAgeVerification(for:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);

  return closure #1 in closure #1 in PlaybackController.displayAgeVerification(for:)(a1, a2);
}

uint64_t sub_1001F2F04()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001F2F3C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F2F90()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(a1, a2, v6, v7, v8);
}

uint64_t sub_1001F3090()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(a1, a2, v7, v6);
}

uint64_t sub_1001F31A8()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 72);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(a1, a2, v2 + 16, v6);
}

uint64_t lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F3330()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1001F343C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001F3554()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001F3734()
{

  return swift_deallocObject();
}

uint64_t sub_1001F37A4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MPUPlaybackAlertController.alert.getter(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in MPUPlaybackAlertController.alert.getter(a1, a2, v6, v7, v8);
}

uint64_t sub_1001F38AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1001F38F8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_1001F3A2C()
{

  return swift_deallocObject();
}

uint64_t sub_1001F3A88()
{

  return swift_deallocObject();
}

uint64_t sub_1001F3ADC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(a1, v4, v5, v6);
}

uint64_t sub_1001F3BD0()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t sub_1001F3C7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.player.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in PlaybackController.player.didset(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type UISceneSession and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UISceneSession and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UISceneSession and conformance NSObject)
  {
    type metadata accessor for UIAction(255, &lazy cache variable for type metadata for UISceneSession, UISceneSession_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UISceneSession and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(a1, a2, v6);
}

uint64_t partial apply for closure #4 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #4 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(a1, a2, v6);
}

uint64_t partial apply for closure #3 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.userPickedReplaceIntent()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in PlaybackController.userPickedReplaceIntent()(a1, a2, v6);
}

uint64_t partial apply for closure #2 in closure #1 in PlaybackController.userPickedReplaceIntent()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #1 in PlaybackController.userPickedReplaceIntent()(a1, a2, v6);
}

uint64_t partial apply for closure #3 in closure #1 in PlaybackController.userPickedReplaceIntent()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in closure #1 in PlaybackController.userPickedReplaceIntent()(a1, a2, v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id outlined copy of Player.ChangeCommand(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.userPickedPlayLocally()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in PlaybackController.userPickedPlayLocally()(a1, a2, v6);
}

uint64_t partial apply for closure #2 in closure #1 in PlaybackController.userPickedPlayLocally()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in closure #1 in PlaybackController.userPickedPlayLocally()(a1, a2, v6);
}

uint64_t outlined consume of Player.PlaybackError?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with copy of PlaybackIntentDescriptor.IntentType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MPCPlaybackIntent.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  specialized MPCPlaybackIntent.playActivityInformation.setter(a1, a2, a3, a4);

  outlined consume of MPCPlaybackIntent.PlayActivityInformation?(a1, a2, a3, a4);
}

uint64_t PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, void *a10, uint64_t a11)
{
  v44 = a7;
  v49 = a4;
  v50 = a11;
  v43 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v48 = *(v43 - 8);
  __chkstk_darwin();
  v47 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v46 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PlaybackIntentDescriptor(0);
  v21 = a9 + v20[7];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v22 = a9 + v20[8];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(a9 + v20[9]) = 0;
  *(a9 + v20[10]) = 0;
  *(a9 + v20[11]) = 0;
  v51 = a1;
  outlined init with copy of PlaybackIntentDescriptor.IntentType(a1, a9);
  if ((a6 & 1) == 0)
  {
    PlaybackIntentDescriptor.IntentType.shuffleMode.setter(a5, 0, &selRef_setShuffleMode_);
  }

  if ((a8 & 1) == 0)
  {
    PlaybackIntentDescriptor.IntentType.shuffleMode.setter(v44, 0, &selRef_setRepeatMode_);
  }

  v23 = a2;
  outlined assign with copy of MusicItem?(a2, v21);
  *(a9 + v20[5]) = a3;
  v24 = v50;
  *(a9 + v20[6]) = v49;
  outlined init with copy of TaskPriority?(v24, &v52, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  if (v53)
  {
    outlined init with take of ActionPerforming(&v52, v54);
  }

  else
  {
    if (a10)
    {
      v54[0] = a10;
      v25 = a10;
    }

    else
    {
      v54[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
    }

    v26 = String.init<A>(reflecting:)();
    v54[3] = &type metadata for Player.CommandIssuerIdentity;
    v54[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v54[0] = v26;
    v54[1] = v27;
    if (v53)
    {
      outlined destroy of TaskPriority?(&v52, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
    }
  }

  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v54, v22, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  if (!a10)
  {
    goto LABEL_22;
  }

  v28 = [a10 combinedPlayActivityFeatureName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v31 = v30;
  outlined consume of Data?(0, 0xF000000000000000);

  outlined copy of Data?(v29, v31);

  outlined consume of Data?(v29, v31);
  v32 = a9;
  v33 = v46;
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v32, v46);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v33;

    v40 = String._bridgeToObjectiveC()();

    [v39 setPlayActivityFeatureName:v40];

    if (v31 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      outlined copy of Data._Representation(v29, v31);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v29, v31);
    }

    [v39 setPlayActivityRecommendationData:{isa, v43}];

    outlined consume of Data?(v29, v31);
LABEL_22:
    outlined destroy of TaskPriority?(v24, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
    outlined destroy of TaskPriority?(v23, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
    return outlined destroy of PlaybackIntentDescriptor.IntentType(v51);
  }

  v34 = v33;
  v35 = v43;
  (*(v48 + 32))(v47, v34, v43);
  v36 = MusicPlaybackIntentDescriptor.playbackIntent.getter();

  v37 = String._bridgeToObjectiveC()();

  [v36 setPlayActivityFeatureName:v37];

  if (v31 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    outlined copy of Data._Representation(v29, v31);
    v38 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v29, v31);
  }

  [v36 setPlayActivityRecommendationData:{v38, v43}];

  outlined consume of Data?(v29, v31);
  outlined destroy of TaskPriority?(v24, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  outlined destroy of TaskPriority?(v23, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
  outlined destroy of PlaybackIntentDescriptor.IntentType(v51);
  return (*(v48 + 8))(v47, v35);
}

void PlaybackIntentDescriptor.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v5, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v15, v10);
    v16 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    specialized MPCPlaybackIntent.playActivityInformation.setter(a1, a2, a3, a4);
    outlined consume of MPCPlaybackIntent.PlayActivityInformation?(a1, a2, a3, a4);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = *v15;
    specialized MPCPlaybackIntent.playActivityInformation.setter(a1, a2, a3, a4);
    outlined consume of MPCPlaybackIntent.PlayActivityInformation?(a1, a2, a3, a4);
  }
}

uint64_t PlaybackIntentDescriptor.IntentType.underlyingIntent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v1, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v7;
  }

  (*(v3 + 32))(v5, v7, v2);
  v8 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  outlined consume of Data?(0, 0xF000000000000000);

  outlined copy of Data?(a3, a4);

  outlined consume of Data?(a3, a4);
  return a1;
}

uint64_t PlaybackIntentDescriptor.IntentType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6 = __chkstk_darwin();
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v8 = a1;
    v12 = v5;
    swift_storeEnumTagMultiPayload();
    outlined init with take of PlaybackIntentDescriptor.IntentType(v8, a2);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(v5 + 56);

    return v10(a2, 1, 1, v4, v6);
  }
}

{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v16 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v8 + 48))(a1, 1, v7, v9) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_s35_MusicKitInternal_MediaPlaybackCore0aE16IntentDescriptorVSgMd, &_s35_MusicKitInternal_MediaPlaybackCore0aE16IntentDescriptorVSgMR);
    v12 = *(v16 + 56);

    return v12(a2, 1, 1, v4);
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v11, a1, v7);
    v14(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    outlined init with take of PlaybackIntentDescriptor.IntentType(v6, a2);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }
}

id PlaybackIntentDescriptor.IntentType.shuffleMode.getter(SEL *a1)
{
  v3 = v1;
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v3, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v9, v4);
    v10 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    v11 = [v10 *a1];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v12 = *v9;
    v11 = [*v9 *a1];
  }

  return v11;
}

void PlaybackIntentDescriptor.IntentType.shuffleMode.setter(uint64_t a1, char a2, SEL *a3)
{
  v5 = v3;
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = (&v18 - v13);
  if (a2)
  {
    v15 = -1;
  }

  else
  {
    v15 = a1;
  }

  outlined init with copy of PlaybackIntentDescriptor.IntentType(v5, &v18 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v14, v8);
    v16 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    [v16 *a3];

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v17 = *v14;
    [*v14 *a3];
  }
}

uint64_t PlaybackIntentDescriptor.intentOptions.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.replaceIntent.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.autoSing.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.isSiriIntent.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.playActivityInformation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v7, v2);
    v8 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    v9 = MPCPlaybackIntent.playActivityInformation.getter();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = *v7;
    v9 = MPCPlaybackIntent.playActivityInformation.getter();
  }

  return v9;
}

uint64_t MPCPlaybackIntent.playActivityInformation.getter()
{
  v1 = [v0 playActivityFeatureName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v0 playActivityRecommendationData];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  outlined consume of Data?(0, 0xF000000000000000);

  outlined copy of Data?(v6, v8);

  outlined consume of Data?(v6, v8);
  return v3;
}

void (*PlaybackIntentDescriptor.playActivityInformation.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[6] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[7] = v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[8] = v10;
  v11 = *(*(v10 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[9] = swift_coroFrameAlloc();
    v4[10] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[9] = malloc(v11);
    v4[10] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[11] = v12;
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v13, v5);
    v14 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    (*(v7 + 8))(v9, v5);
  }

  else
  {
    v22 = *v13;
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v23;
    v19 = v24;
    v21 = v25;
  }

  *v4 = v15;
  v4[1] = v17;
  v4[2] = v19;
  v4[3] = v21;
  return PlaybackIntentDescriptor.playActivityInformation.modify;
}

void PlaybackIntentDescriptor.playActivityInformation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    outlined init with copy of PlaybackIntentDescriptor.IntentType(v7, v2[9]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v2[9];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v2[6];
      v10 = v2[7];
      v12 = v2[5];
      (*(v11 + 32))(v10, v9, v12);
      outlined copy of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);
      v13 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      specialized MPCPlaybackIntent.playActivityInformation.setter(v4, v3, v6, v5);
      outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v20 = *v9;
      outlined copy of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);
      specialized MPCPlaybackIntent.playActivityInformation.setter(v4, v3, v6, v5);
      outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
    outlined consume of MPCPlaybackIntent.PlayActivityInformation?(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    outlined init with copy of PlaybackIntentDescriptor.IntentType(v7, v2[10]);
    v14 = swift_getEnumCaseMultiPayload();
    v15 = v2[10];
    if (v14 == 1)
    {
      v17 = v2[6];
      v16 = v2[7];
      v18 = v2[5];
      (*(v17 + 32))(v16, v15, v18);
      v19 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      specialized MPCPlaybackIntent.playActivityInformation.setter(v4, v3, v6, v5);
      outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);

      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v25 = *v15;
      specialized MPCPlaybackIntent.playActivityInformation.setter(v4, v3, v6, v5);
      outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
  }

  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t PlaybackIntentDescriptor.forceSharePlayPrompt.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.recommendationData.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void (*MPCPlaybackIntent.playActivityInformation.modify(void *a1))(uint64_t **a1, char a2)
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
  v3[4] = v1;
  *v3 = MPCPlaybackIntent.playActivityInformation.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return MPCPlaybackIntent.playActivityInformation.modify;
}

void MPCPlaybackIntent.playActivityInformation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    outlined copy of MPCPlaybackIntent.PlayActivityInformation?(v3, v4, v5, v6);
    specialized MPCPlaybackIntent.playActivityInformation.setter(v3, v4, v5, v6);
    outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v3, v4, v5, v6);
    v7 = *v2;
    v8 = v2[1];
    v9 = v2[2];
    v10 = v2[3];
  }

  else
  {
    specialized MPCPlaybackIntent.playActivityInformation.setter(v3, v4, v5, v6);
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v7, v8, v9, v10);

  free(v2);
}

unint64_t PlaybackIntentDescriptor.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = 0xD000000000000019;
  v42 = 0x80000001004CCB90;
  v38._countAndFlagsBits = 0x3D746E65746E69;
  v38._object = 0xE700000000000000;
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v7, v2);
    v8 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v8 = *v7;
  }

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  String.append(_:)(v38);

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(&v38, "shuffleMode=");
  BYTE5(v38._object) = 0;
  HIWORD(v38._object) = -5120;
  v36._countAndFlagsBits = PlaybackIntentDescriptor.IntentType.shuffleMode.getter(&selRef_shuffleMode);
  LOBYTE(v36._object) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28MPCPlaybackIntentShuffleModeVSgMd, &_sSo28MPCPlaybackIntentShuffleModeVSgMR);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 8236;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  String.append(_:)(v38);

  v38._countAndFlagsBits = 0x6F4D746165706572;
  v38._object = 0xEB000000003D6564;
  v36._countAndFlagsBits = PlaybackIntentDescriptor.IntentType.shuffleMode.getter(&selRef_repeatMode);
  LOBYTE(v36._object) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27MPCPlaybackIntentRepeatModeVSgMd, &_sSo27MPCPlaybackIntentRepeatModeVSgMR);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  String.append(_:)(v38);

  v38._countAndFlagsBits = 0x3D736E6F6974706FLL;
  v38._object = 0xE800000000000000;
  v19 = type metadata accessor for PlaybackIntentDescriptor(0);
  v36._countAndFlagsBits = *(v1 + v19[5]);
  type metadata accessor for MPCPlaybackIntentOptions(0);
  v20._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  String.append(_:)(v38);

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v38._countAndFlagsBits = 0x206563616C706572;
  v38._object = 0xEF3D746E65746E69;
  v36._countAndFlagsBits = *(v1 + v19[6]);
  type metadata accessor for MPCPlayerTracklistReplaceIntent(0);
  v22._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  String.append(_:)(v38);

  v24._object = 0x80000001004CCBB0;
  v24._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v24);
  outlined init with copy of TaskPriority?(v1 + v19[7], &v36, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
  if (v37)
  {
    outlined init with take of ActionPerforming(&v36._countAndFlagsBits, &v38);
    outlined init with copy of ActionPerforming(&v38, &v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A4Item_pMd, &_s8MusicKit0A4Item_pMR);
    v36._countAndFlagsBits = String.init<A>(describing:)();
    v36._object = v25;
    v26._countAndFlagsBits = 8236;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    String.append(_:)(v36);

    __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  }

  else
  {
    outlined destroy of TaskPriority?(&v36, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
    v27._countAndFlagsBits = 0x202C656E6F6ELL;
    v27._object = 0xE600000000000000;
    String.append(_:)(v27);
  }

  v28._countAndFlagsBits = 0x3D726575737369;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  outlined init with copy of TaskPriority?(v1 + v19[8], &v36, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  if (v37)
  {
    outlined init with take of ActionPerforming(&v36._countAndFlagsBits, &v38);
    v29 = v39;
    v30 = v40;
    __swift_project_boxed_opaque_existential_0Tm(&v38, v39);
    v36._countAndFlagsBits = (*(v30 + 8))(v29, v30);
    v36._object = v31;
    v32._countAndFlagsBits = 8236;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    String.append(_:)(v36);

    __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  }

  else
  {
    outlined destroy of TaskPriority?(&v36, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
    v33._countAndFlagsBits = 0x6669636570736E75;
    v33._object = 0xEC0000003D646569;
    String.append(_:)(v33);
  }

  v34._countAndFlagsBits = 41;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  return v41;
}

uint64_t specialized static PlaybackIntentDescriptor.IntentType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v27 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v26 - v7;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v26 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeO_AEtMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeO_AEtMR);
  __chkstk_darwin();
  v14 = &v26 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of PlaybackIntentDescriptor.IntentType(a1, &v26 - v13);
  outlined init with copy of PlaybackIntentDescriptor.IntentType(a2, &v14[v16]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of PlaybackIntentDescriptor.IntentType(v14, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = v27;
      v18 = *(v27 + 32);
      v18(v8, v10, v4);
      v18(v6, &v14[v16], v4);
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
      v19 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      v20 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      v21 = static NSObject.== infix(_:_:)();

      v22 = *(v17 + 8);
      v22(v6, v4);
      v22(v8, v4);
LABEL_9:
      outlined destroy of PlaybackIntentDescriptor.IntentType(v14);
      return v21 & 1;
    }

    (*(v27 + 8))(v10, v4);
  }

  else
  {
    outlined init with copy of PlaybackIntentDescriptor.IntentType(v14, v12);
    v23 = *v12;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *&v14[v16];
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
      v21 = static NSObject.== infix(_:_:)();

      goto LABEL_9;
    }
  }

  outlined destroy of TaskPriority?(v14, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeO_AEtMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeO_AEtMR);
  v21 = 0;
  return v21 & 1;
}

void specialized MPCPlaybackIntent.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    v7 = String._bridgeToObjectiveC()();

    [v4 setPlayActivityFeatureName:v7];

    if (a4 >> 60 != 15)
    {
      outlined copy of Data._Representation(a3, a4);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(a3, a4);
      v8 = isa;
      goto LABEL_6;
    }
  }

  else
  {
    [v4 setPlayActivityFeatureName:{0, a4}];
  }

  v8 = 0;
LABEL_6:
  v10 = v8;
  [v4 setPlayActivityRecommendationData:?];
}

uint64_t outlined init with take of PlaybackIntentDescriptor.IntentType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F7058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001F7138(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = a2;
  }

  return result;
}

void type metadata completion function for PlaybackIntentDescriptor(uint64_t a1)
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MPCPlaybackIntentOptions(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MPCPlayerTracklistReplaceIntent(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [[String : Any]]?(319, &lazy cache variable for type metadata for MusicItem?, &_s8MusicKit0A4Item_pMd, &_s8MusicKit0A4Item_pMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [[String : Any]]?(319, &lazy cache variable for type metadata for Player.CommandIssuer?, &_s9MusicCore6PlayerC13CommandIssuer_pMd, &_s9MusicCore6PlayerC13CommandIssuer_pMR);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for PlaybackIntentDescriptor.IntentType(uint64_t a1)
{
  result = type metadata accessor for UIAction(319, &lazy cache variable for type metadata for MPCPlaybackIntent, MPCPlaybackIntent_ptr);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MusicPlaybackIntentDescriptor();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t PlaybackTimeObserver.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PlaybackTimeObserver.init(name:)(a1, a2);
  return v4;
}

uint64_t PlaybackTimeObserver.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = xmmword_1004F2F30;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  ObservationRegistrar.init()();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CADisplayLink, CADisplayLink_ptr);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = CADisplayLink.init(handler:)(partial apply for closure #1 in PlaybackTimeObserver.init(name:), v6);
  swift_unownedRelease();
  v8 = [objc_opt_self() mainRunLoop];
  [v7 addToRunLoop:v8 forMode:NSRunLoopCommonModes];

  [v7 setPaused:1];
  [v7 setPreferredFramesPerSecond:30];
  v9 = *(v3 + 128);
  *(v3 + 128) = v7;

  return v3;
}

uint64_t sub_1001F7590()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

double partial apply for closure #1 in PlaybackTimeObserver.init(name:)()
{
  swift_unownedRetainStrong();
  PlaybackTimeObserver.updateElapsedDuration()();

  return result;
}

void PlaybackTimeObserver.updateElapsedDuration()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  if (v2 == 2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static PlaybackTimeObserver.logger);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(*(v1 + 16), *(v1 + 24), v25);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
LABEL_19:
      swift_getKeyPath();
      __chkstk_darwin();
      v25[0] = v1;
      lazy protocol witness table accessor for type PlaybackTimeObserver and conformance PlaybackTimeObserver();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }

LABEL_14:
    *(v1 + 40) = 0;
    *(v1 + 48) = v8;
    return;
  }

  if (v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static PlaybackTimeObserver.logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(*(v1 + 16), *(v1 + 24), v25);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 96);
  if (v14 <= 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);
    static Date.timeIntervalSinceReferenceDate.getter();
    v19 = v16 + (v18 - v17) * v15;
    if (v19 >= v14)
    {
      v19 = v14;
    }

    v20 = fmax(v19, 0.0) / v14;
  }

  PlaybackTimeObserver.effectiveElapsedTime.setter(*&v20, 0);
  static Date.timeIntervalSinceReferenceDate.getter();
  v22 = v21;
  swift_beginAccess();
  v23 = vabdd_f64(v22, *(v0 + 152));
  v24 = fabsf(v15);
  if (v24 <= 1.0)
  {
    v24 = 1.0;
  }

  if (v23 >= (1.0 / v24))
  {
    *(v0 + 152) = v22;
  }
}

uint64_t PlaybackTimeObserver.deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t PlaybackTimeObserver.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void PlaybackTimeObserver.updateDisplayLink()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static PlaybackTimeObserver.logger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v42[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(*(v0 + 16), *(v0 + 24), v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "📺 %{public}s: Updating DisplayLink…", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = *(v0 + 120);

    _os_log_impl(&_mh_execute_header, v6, v7, "   — isBackgrounded: %{BOOL,public}d", v8, 8u);
  }

  else
  {
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    swift_beginAccess();
    *(v11 + 4) = *(v0 + 32);

    _os_log_impl(&_mh_execute_header, v9, v10, "   — automaticallyUpdates: %{BOOL,public}d", v11, 8u);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v0 + 32) != 1 || (*(v0 + 120) & 1) != 0 || (swift_beginAccess(), v12 = *(v0 + 104), v12 == 2))
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "   — Null Snapshot", v15, 2u);
    }

    v16 = 1;
  }

  else
  {
    v24 = *(v0 + 96);
    v25 = *(v0 + 88);
    v40 = *(v0 + 72);
    v41 = *(v0 + 56);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136446210;
      v42[1] = v40;
      v42[0] = v41;
      v43 = v25;
      v44 = v24;
      v45 = v12 & 0x101;
      v46 = BYTE2(v12) & 1;
      type metadata accessor for MPCPlayerItemDurationSnapshot(0);
      v30 = String.init<A>(describing:)();
      v32 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v31, &v47);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "   — Snapshot: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
    }

    v33 = v24 & 0x7FFFFFFF;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67240192;
      *(v36 + 4) = v12 & 1;
      _os_log_impl(&_mh_execute_header, v34, v35, "   — isLiveContent: %{BOOL,public}d", v36, 8u);
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67240192;
      *(v39 + 4) = v33 == 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "   — isRateNull: %{BOOL,public}d", v39, 8u);
    }

    v16 = v12 | (v33 == 0);
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = v16 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, " -> should pause: %{BOOL,public}d", v19, 8u);
  }

  v20 = *(v0 + 128);
  if (v20)
  {
    [v20 setPaused:v16 & 1];
  }

  swift_beginAccess();
  if (!*(v0 + 112))
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No window scene associated! This could lead to a major power regression when the app is backgrounded!", v23, 2u);
    }
  }
}

void PlaybackTimeObserver.automaticallyUpdates.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v4 != v3)
  {
    PlaybackTimeObserver.updateDisplayLink()();
  }
}

void (*PlaybackTimeObserver.automaticallyUpdates.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return PlaybackTimeObserver.automaticallyUpdates.modify;
}

void PlaybackTimeObserver.automaticallyUpdates.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  if (v3 != v4)
  {
    PlaybackTimeObserver.updateDisplayLink()();
  }

  free(v1);
}

uint64_t PlaybackTimeObserver.effectiveElapsedTime.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PlaybackTimeObserver and conformance PlaybackTimeObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

void key path getter for PlaybackTimeObserver.effectiveElapsedTime : PlaybackTimeObserver(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PlaybackTimeObserver and conformance PlaybackTimeObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v4;
}

unint64_t lazy protocol witness table accessor for type PlaybackTimeObserver and conformance PlaybackTimeObserver()
{
  result = lazy protocol witness table cache variable for type PlaybackTimeObserver and conformance PlaybackTimeObserver;
  if (!lazy protocol witness table cache variable for type PlaybackTimeObserver and conformance PlaybackTimeObserver)
  {
    type metadata accessor for PlaybackTimeObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackTimeObserver and conformance PlaybackTimeObserver);
  }

  return result;
}

uint64_t type metadata accessor for PlaybackTimeObserver(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlaybackTimeObserver;
  if (!type metadata singleton initialization cache for PlaybackTimeObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double PlaybackTimeObserver.effectiveElapsedTime.setter(uint64_t a1, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 40);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&a1;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  __chkstk_darwin();
  lazy protocol witness table accessor for type PlaybackTimeObserver and conformance PlaybackTimeObserver();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void PlaybackTimeObserver.durationSnapshot.didset()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static PlaybackTimeObserver.logger);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29MPCPlayerItemDurationSnapshotaSgMd, &_sSo29MPCPlayerItemDurationSnapshotaSgMR);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received new snapshot=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  static Date.timeIntervalSinceReferenceDate.getter();
  v11 = v10;
  swift_beginAccess();
  *(v1 + 152) = v11;
  PlaybackTimeObserver.updateElapsedDuration()();
  PlaybackTimeObserver.updateDisplayLink()();
}

__n128 PlaybackTimeObserver.durationSnapshot.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void PlaybackTimeObserver.durationSnapshot.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 88) = *(a1 + 32);
  *(v1 + 104) = *(a1 + 48);
  PlaybackTimeObserver.durationSnapshot.didset();
}

void (*PlaybackTimeObserver.durationSnapshot.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PlaybackTimeObserver.durationSnapshot.modify;
}

void PlaybackTimeObserver.durationSnapshot.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PlaybackTimeObserver.durationSnapshot.didset();
  }
}

double PlaybackTimeObserver.windowScene.didset(id a1)
{
  v2 = v1;
  swift_beginAccess();
  v5 = *(v1 + 112);
  if (!v5)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (a1)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIWindowScene, UIWindowScene_ptr);
    v6 = v5;
    a1 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return result;
    }

    v5 = *(v2 + 112);
    if (!v5)
    {
LABEL_13:
      v27 = one-time initialization token for logger;
      v28 = a1;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static PlaybackTimeObserver.logger);
      v30 = v28;

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v33 = 136446466;
        *(v33 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(*(v2 + 16), *(v2 + 24), &v41);
        *(v33 + 12) = 2082;
        v34 = v30;
        v35 = [v34 description];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v36, v38, &v41);

        *(v33 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s: Removed windowScene=%{public}s", v33, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v40 = *(v2 + 120);
      *(v2 + 120) = 0;
      if (v40 == 1)
      {
        PlaybackTimeObserver.updateDisplayLink()();
      }

      *(v2 + 136) = 0;

      v26 = 0;
      goto LABEL_21;
    }
  }

  v8 = one-time initialization token for logger;
  v9 = v5;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static PlaybackTimeObserver.logger);
  v11 = v9;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(*(v2 + 16), *(v2 + 24), &v41);
    *(v14 + 12) = 2082;
    v15 = v11;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v41);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: Received windowScene=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v21 = [v11 activationState] == 2;
  v22 = *(v2 + 120);
  *(v2 + 120) = v21;
  if (v21 != v22)
  {
    PlaybackTimeObserver.updateDisplayLink()();
  }

  v23 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v24 = v11;
  *(v2 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidEnterBackgroundNotification, v5, 1, 1, partial apply for closure #1 in PlaybackTimeObserver.windowScene.didset, v23);

  v25 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v26 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillEnterForegroundNotification, v5, 1, 1, partial apply for closure #2 in PlaybackTimeObserver.windowScene.didset, v25);
LABEL_21:
  *(v2 + 144) = v26;

  return result;
}

double closure #1 in PlaybackTimeObserver.windowScene.didset(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 120);
    *(Strong + 120) = 1;
    if ((v4 & 1) == 0)
    {
      PlaybackTimeObserver.updateDisplayLink()();
    }
  }

  return result;
}

double closure #2 in PlaybackTimeObserver.windowScene.didset(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 120);
    *(Strong + 120) = 0;
    if (v4 == 1)
    {
      PlaybackTimeObserver.updateDisplayLink()();
    }
  }

  return result;
}

void *PlaybackTimeObserver.windowScene.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void PlaybackTimeObserver.windowScene.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
  v4 = a1;
  PlaybackTimeObserver.windowScene.didset(v3);
}

void (*PlaybackTimeObserver.windowScene.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 112);
  *(v4 + 24) = v5;
  v6 = v5;
  return PlaybackTimeObserver.windowScene.modify;
}

void PlaybackTimeObserver.windowScene.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = *v5;
  v8 = v4;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    PlaybackTimeObserver.windowScene.didset(v7);

    v7 = *v5;
  }

  else
  {
    PlaybackTimeObserver.windowScene.didset(v7);
  }

  free(v3);
}

uint64_t type metadata completion function for PlaybackTimeObserver(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F9380()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void partial apply for closure #1 in PlaybackTimeObserver.effectiveElapsedTime.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

uint64_t static Player.CommandIssuer<>.reflection(of:)(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
  }

  return String.init<A>(reflecting:)();
}

uint64_t Player.CommandIssuerIdentity.init(_:)(uint64_t a1)
{
  v2 = URL.absoluteString.getter();
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

{
  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
  }

  return String.init<A>(reflecting:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMd, &_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMR);
  lazy protocol witness table accessor for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>();
  v1 = BidirectionalCollection<>.joined(separator:)();

  return v1;
}

uint64_t specialized implicit closure #1 in Player.CommandIssuerIdentity.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMd, &_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMR);
    lazy protocol witness table accessor for type [Player.CommandIssuer] and conformance [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Player.CommandIssuer] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Player.CommandIssuer] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Player.CommandIssuer] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MusicCore6PlayerC13CommandIssuer_pGMd, &_sSay9MusicCore6PlayerC13CommandIssuer_pGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Player.CommandIssuer] and conformance [A]);
  }

  return result;
}

uint64_t Player.CommandIssuerIdentity.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC13CommandIssuer_pGMd, &_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC13CommandIssuer_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004F2EF0;
  *(v6 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v6 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  outlined init with copy of ActionPerforming(a1, v6 + 72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMd, &_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMR);
  lazy protocol witness table accessor for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>();
  v7 = BidirectionalCollection<>.joined(separator:)();

  return v7;
}

uint64_t Player.CommandIssuer.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC13CommandIssuer_pGMd, &_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC13CommandIssuer_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004F2EF0;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v3, a2);
  outlined init with copy of ActionPerforming(a1, v7 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMd, &_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMR);
  lazy protocol witness table accessor for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>();
  v9 = BidirectionalCollection<>.joined(separator:)();

  return v9;
}

uint64_t static Player.CommandIssuer<>.url(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = URL.absoluteString.getter();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t static Player.CommandIssuer<>.combining(_:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMd, &_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMR);
  lazy protocol witness table accessor for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>();
  v1 = BidirectionalCollection<>.joined(separator:)();

  return v1;
}

uint64_t Player.CommandIssuer<>.commandIssuingIdentifier.getter()
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v1;
}

{
  dispatch thunk of Identifiable.id.getter();
  return v1;
}

unint64_t specialized Alert.Action.commandIssuingIdentifier.getter(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(29);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x3A656C746974202CLL;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = a3;
  v10._object = a4;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0xD000000000000010;
}

unint64_t specialized Alert.ActionCommandIssuingContext.init(action:in:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  _StringGuts.grow(_:)(29);

  v33 = 0xD000000000000010;
  v34 = 0x80000001004CCD00;
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x3A656C746974202CLL;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a3;
  v16._object = a4;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18 = 0xD000000000000010;
  if (a7[7])
  {
    v30 = a5;
    v31 = a6;
    v19 = a7[2];
    v20 = a7[3];
    v22 = *a7;
    v21 = a7[1];
    _StringGuts.grow(_:)(26);

    strcpy(&v32, "Alert(title:");
    BYTE5(v32._object) = 0;
    HIWORD(v32._object) = -5120;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    v24._countAndFlagsBits = v22;
    v24._object = v23;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0x67617373656D202CLL;
    v25._object = 0xEA00000000003A65;
    String.append(_:)(v25);
    if (v20)
    {
      v26 = v19;
    }

    else
    {
      v26 = 0;
    }

    if (v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    v28._countAndFlagsBits = v26;
    v28._object = v27;
    String.append(_:)(v28);

    String.append(_:)(v32);

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v30, v31);

    outlined destroy of Alert?(a7);
    return v33;
  }

  else
  {

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a5, a6);
  }

  return v18;
}

uint64_t outlined destroy of Alert?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9, &_sScPSgMd_0, &_sScPSgMR_0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd_0, &_sScPSgMR_0);
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
      v22[0] = a2;
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);

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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo22MPCPlayerCommandStatusCSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v9 = v21 - v8;
  outlined init with copy of TaskPriority?(a3, v21 - v8, &_sScPSgMd_0, &_sScPSgMR_0);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    outlined destroy of TaskPriority?(v9, &_sScPSgMd_0, &_sScPSgMR_0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22MPCPlayerCommandStatusCSgMd, &_sSo22MPCPlayerCommandStatusCSgMR);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0, &_sScPSgMR_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22MPCPlayerCommandStatusCSgMd, &_sSo22MPCPlayerCommandStatusCSgMR);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24OS_dispatch_source_timer_pMd, &_sSo24OS_dispatch_source_timer_pMR);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

char *Player.state<A>(for:)(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = MPCPlaybackEngine.state<A>(for:)();
  type metadata accessor for MusicItemState(0, a2, a3, v8);

  v10 = specialized MusicItemState.__allocating_init(item:musicKitItemState:player:)(a1, v7, v3, v9);

  return v10;
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t Player.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine);
  v2 = [v1 playerID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  specialized static Set<>.from(_:)(v1);
  v4 = [v1 fallbackPlaybackIntent];
  return v3;
}

id Player.audioAnalyzer.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine) audioAnalyzer];

  return v1;
}

void *Player.sampleReceiver.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for SampleReceiver();
    v1 = swift_allocObject();
    v1[3] = 0;
    v1[4] = 0;
    v1[2] = 0;
    *(v0 + 16) = v1;
  }

  return v1;
}

double Player.sampleReceiver.setter(uint64_t a1)
{
  *(v1 + 16) = a1;

  return result;
}

double (*Player.sampleReceiver.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Player.sampleReceiver.getter();
  return Player.sampleReceiver.modify;
}

double Player.sampleReceiver.modify(uint64_t *a1)
{
  *(a1[1] + 16) = *a1;

  return result;
}

uint64_t Player.__allocating_init()()
{
  v0 = swift_allocObject();
  Player.init()();
  return v0;
}

char *Player.init()()
{
  v1 = v0;
  v102 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v113 = &v89 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  __chkstk_darwin();
  v112 = &v89 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMd, &_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMR);
  v104 = *(v4 - 8);
  v105 = v4;
  __chkstk_darwin();
  v103 = &v89 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAL13RatingWarningVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAL13RatingWarningVGMR);
  v108 = *(v6 - 8);
  v109 = v6;
  __chkstk_darwin();
  v106 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAN13RatingWarningVGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAN13RatingWarningVGSo17OS_dispatch_queueCGMR);
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin();
  v107 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v99 = *(v10 - 8);
  v100 = v10;
  __chkstk_darwin();
  v98 = &v89 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionCSgGMd, &_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionCSgGMR);
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v89 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo13MPCPlayerPathCSgGMd, &_s7Combine9PublishedVySo13MPCPlayerPathCSgGMR);
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v14 = &v89 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd, &_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMR);
  v15 = *(v97 - 8);
  __chkstk_darwin();
  v17 = &v89 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo13MPCPlayerPathCGMd, &_s7Combine9PublishedVySo13MPCPlayerPathCGMR);
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v89 - v20;
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  v101 = objc_opt_self();
  v22 = [v101 systemRoute];
  v23 = [v22 isDeviceRoute];
  v24 = objc_opt_self();
  v25 = v24;
  if (v23)
  {
    if (one-time initialization token for systemMusic != -1)
    {
      swift_once();
    }

    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 systemMusicPathWithRoute:v22 playerID:v26];
  }

  else
  {
    v27 = [v24 pathWithRoute:v22 bundleID:0 playerID:0];
  }

  v28 = OBJC_IVAR____TtC9MusicCore6Player__path;
  aBlock = v27;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerPath, MPCPlayerPath_ptr);
  Published.init(initialValue:)();
  (*(v19 + 32))(&v1[v28], v21, v18);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver] = 0;
  v29 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  aBlock = 0;
  v30 = v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MPCPlayerResponseCSgMd, &_sSo17MPCPlayerResponseCSgMR);
  Published.init(initialValue:)();
  v31 = *(v15 + 32);
  v32 = v97;
  v90 = v31;
  v31(&v1[v29], v17, v97);
  v33 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13MPCPlayerPathCSgMd, &_sSo13MPCPlayerPathCSgMR);
  Published.init(initialValue:)();
  (*(v92 + 32))(&v1[v33], v14, v93);
  v34 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionCSgMd, &_s9MusicCore24SharePlayTogetherSessionCSgMR);
  v35 = v94;
  Published.init(initialValue:)();
  (*(v95 + 32))(&v1[v34], v35, v96);
  v36 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  v37 = v98;
  Published.init(initialValue:)();
  v38 = v100;
  v39 = *(v99 + 32);
  v39(&v1[v36], v37, v100);
  v40 = OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v39(&v1[v40], v37, v38);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken] = 0;
  v41 = &v1[OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration];
  if (one-time initialization token for emptyNowPlayingItem != -1)
  {
    swift_once();
  }

  v42 = static MPPropertySet.emptyNowPlayingItem;
  *v41 = static MPPropertySet.emptyNowPlayingItem;
  *(v41 + 1) = v42;
  *(v41 + 2) = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_routingController] = 0;
  v1[OBJC_IVAR____TtC9MusicCore6Player_engineState] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady] = _swiftEmptyArrayStorage;
  v43 = OBJC_IVAR____TtC9MusicCore6Player__playerResponse;
  aBlock = 0;
  v44 = v42;
  Published.init(initialValue:)();
  v90(&v1[v43], v30, v32);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = 0;
  v45 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  *&v1[v45] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13MPCPlayerPathC_So24OS_dispatch_source_timer_pTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = 0;
  v46 = OBJC_IVAR____TtC9MusicCore6Player_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v1[v46] = UnfairLock.init()();
  if (one-time initialization token for systemMusic != -1)
  {
    swift_once();
  }

  v47 = qword_10063D648;
  v48 = unk_10063D650;
  v49 = objc_allocWithZone(MPCPlaybackEngine);
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 initWithPlayerID:v50];

  v52 = v51;
  specialized MPCPlaybackEngine.update(using:)(v47, v48);

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine] = v52;
  [v52 becomeActive];
  v53 = OBJC_IVAR____TtC9MusicCore6Player_engine;
  v54 = *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine];

  v55 = specialized static Set<>.from(_:)(v54);
  LOBYTE(v54) = specialized Set.contains(_:)(4u, v55);

  if (v54)
  {
    v56 = *&v1[v53];
    v118 = closure #1 in Player.init();
    v119 = 0;
    aBlock = _NSConcreteStackBlock;
    v115 = 1107296256;
    v116 = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
    v117 = &block_descriptor_15;
    v57 = _Block_copy(&aBlock);
    v58 = v56;
    [v58 restoreStateWithCompletion:v57];
    _Block_release(v57);
  }

  v59 = v101;
  v60 = [v101 systemRoute];
  v61 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v60 outputDeviceRoute:0];
  v62 = [objc_opt_self() sharedController];
  [v62 setActiveDataSource:v61];

  v63 = swift_allocObject();
  v64 = v102;
  *(v63 + 16) = v1;
  *(v63 + 24) = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = partial apply for closure #1 in Player.updatePlayerPath(with:);
  *(v65 + 24) = v63;
  v118 = partial apply for closure #2 in Player.updatePlayerPath(with:);
  v119 = v65;
  aBlock = _NSConcreteStackBlock;
  v115 = 1107296256;
  v116 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MPAVRoute?) -> ();
  v117 = &block_descriptor_31;
  v66 = _Block_copy(&aBlock);

  [v59 getActiveRouteWithTimeout:v66 completion:1.0];

  _Block_release(v66);
  v67 = MPAVRoutingControllerActiveSystemRouteDidChangeNotification;
  v68 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v67, 0, 1, 1, partial apply for closure #2 in Player.init(), v68);

  v69 = MRAVEndpointGroupSessionInfoDidChangeNotification;
  v70 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v69, 0, 1, 1, partial apply for closure #3 in Player.init(), v70);

  v71 = MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification;
  v72 = swift_allocObject();
  swift_weakInit();
  v73 = v71;

  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v73, 0, 1, 1, partial apply for closure #4 in Player.init(), v72);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMd, &_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMR);
  v74 = v103;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<ApplicationCapabilities>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMd, &_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  v75 = v105;
  v76 = v106;
  Publisher.map<A>(_:)();
  (*(v104 + 8))(v74, v75);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v77 = static OS_dispatch_queue.main.getter();
  aBlock = v77;
  v78 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v79 = v112;
  (*(*(v78 - 8) + 56))(v112, 1, 1, v78);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Map<Published<ApplicationCapabilities>.Publisher, ApplicationCapabilities.RatingWarning> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAL13RatingWarningVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAL13RatingWarningVGMR, &protocol conformance descriptor for Publishers.Map<A, B>);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v80 = v107;
  v81 = v109;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v79, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v108 + 8))(v76, v81);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Map<Published<ApplicationCapabilities>.Publisher, ApplicationCapabilities.RatingWarning>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAN13RatingWarningVGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAN13RatingWarningVGSo17OS_dispatch_queueCGMR, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v82 = v111;
  v83 = Publisher<>.sink(receiveValue:)();
  (*(v110 + 8))(v80, v82);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = v83;

  v84 = v113;
  static TaskPriority.userInitiated.getter();
  v85 = type metadata accessor for TaskPriority();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  type metadata accessor for MainActor();

  v86 = static MainActor.shared.getter();
  v87 = swift_allocObject();
  v87[2] = v86;
  v87[3] = &protocol witness table for MainActor;
  v87[4] = v1;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v84, &async function pointer to partial apply for closure #7 in Player.init(), v87);

  outlined destroy of TaskPriority?(v84, &_sScPSgMd_0, &_sScPSgMR_0);
  return v1;
}

void closure #1 in Player.init()(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Player.logger);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v6 = String.init<A>(describing:)();
      v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Restoration Failed with error=%{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
    }

    else
    {
    }
  }
}

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t closure #1 in closure #3 in Player.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #3 in Player.init(), v6, v5);
}

uint64_t closure #1 in closure #3 in Player.init()()
{

  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharePlayTogether);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionInfoDidChange notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    Player.updateSharePlayTogetherSession()();
  }

  v6 = *(v0 + 8);

  return v6();
}

double closure #3 in Player.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = Strong;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v6, a4, v10);

  return result;
}

uint64_t closure #1 in closure #4 in Player.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #4 in Player.init(), v6, v5);
}

uint64_t closure #1 in closure #4 in Player.init()()
{

  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharePlayTogether);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    Player.updateSharePlayTogetherSession()();
  }

  v6 = *(v0 + 8);

  return v6();
}

double closure #5 in Player.init()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v2;

  return result;
}

void closure #6 in Player.init()(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v2 sharedRestrictionsMonitor];
  [v3 setMaximumMovieRatingForAgeGate:v1];

  v4 = [v2 sharedRestrictionsMonitor];
  [v4 setMaximumTVShowRatingForAgeGate:v1];
}

uint64_t closure #7 in Player.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = closure #7 in Player.init();

  return Player.startEngineIfNeeded()();
}

uint64_t closure #7 in Player.init()()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #7 in Player.init(), v1, v0);
}

{

  Player.updateSharePlayTogetherSession()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.startEngineIfNeeded()()
{
  v1[16] = v0;
  v1[17] = type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(Player.startEngineIfNeeded(), v3, v2);
}

{
  v1 = v0[16];
  v2 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v1 + v2) == 2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (!*(v1 + v2))
    {
      *(v1 + v2) = 1;
      Player.engineState.didset(0);
    }

    v3 = static MainActor.shared.getter();
    v0[21] = v3;
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return _swift_task_switch(Player.startEngineIfNeeded(), v4, v6);
  }
}

{
  v1 = v0[16];
  v0[2] = v0;
  v0[3] = Player.startEngineIfNeeded();
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = partial apply for closure #1 in closure #1 in Player.startEngineIfNeeded();
  v9[5] = v3;
  *(v1 + v4) = v5;
  swift_endAccess();

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return _swift_task_switch(Player.startEngineIfNeeded(), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.engineDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [*(v1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:a1];
  return swift_unknownObjectRelease();
}

id (*Player.engineDelegate.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Player.engineDelegate.modify;
}

id Player.engineDelegate.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC9MusicCore6Player_engine);
    v7 = *(v5 + 24);

    return [v6 setDelegate:v7];
  }

  return result;
}

void key path getter for Player.path : Player(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

double key path setter for Player.path : Player(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  static Published.subscript.setter();
  return Player.path.didset();
}

double Player.path.didset()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = Player.playbackDataSource.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v18;
  v6 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
  v7 = *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
  *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v18;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerPath, MPCPlayerPath_ptr);
  v8 = v5;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v9 = *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v10 = [v9 request];
    if (v10)
    {
      v11 = *&v4[v6];
      v12 = v10;
      [v10 setPlayerPath:v11];
    }

    [v9 setNeedsReloadForSignificantRequestChange];
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v3, &async function pointer to partial apply for closure #1 in Player.path.didset, v15);

  return result;
}

uint64_t closure #1 in Player.path.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Player.path.didset, v6, v5);
}

uint64_t closure #1 in Player.path.didset()
{

  Player.updateSharePlayTogetherSession()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.path.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path setter for Player.$path : Player(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo13MPCPlayerPathC_GMd, &_s7Combine9PublishedV9PublisherVySo13MPCPlayerPathC_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo13MPCPlayerPathCGMd, &_s7Combine9PublishedVySo13MPCPlayerPathCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t Player.nowPlayingObserver.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver);
  }

  else
  {
    v3 = v0;
    type metadata accessor for Player.NowPlayingObserver(0);
    swift_allocObject();

    v2 = specialized Player.NowPlayingObserver.init(player:)(v4);

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t Player.NowPlayingObserver.__allocating_init(player:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized Player.NowPlayingObserver.init(player:)(a1);

  return v2;
}

uint64_t key path setter for Player.$nowPlaying : Player(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd, &_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

void key path getter for Player.nowPlayingPath : Player(void *a4@<X8>)
{
  key path getter for Player.nowPlayingPath : Player(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t key path setter for Player.nowPlayingPath : Player(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t key path setter for Player.$nowPlayingPath : Player(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo13MPCPlayerPathCSg_GMd, &_s7Combine9PublishedV9PublisherVySo13MPCPlayerPathCSg_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo13MPCPlayerPathCSgGMd, &_s7Combine9PublishedVySo13MPCPlayerPathCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t Player.sharePlayTogetherSession.didset(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  if (!a1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  static Published.subscript.getter();

  v7 = v16;
  if (v16)
  {
    type metadata accessor for SharePlayTogetherSession(0);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v6;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v2;
  v12[5] = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v5, &async function pointer to partial apply for closure #1 in Player.sharePlayTogetherSession.didset, v12);

LABEL_7:

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v16)
  {
    v13 = v16[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost];
  }

  else
  {
    v13 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v16) = v13;

  return static Published.subscript.setter();
}

uint64_t closure #1 in Player.sharePlayTogetherSession.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Player.sharePlayTogetherSession.didset, v7, v6);
}

uint64_t closure #1 in Player.sharePlayTogetherSession.didset()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[2];
  if (v1)
  {
    if (SharePlayTogetherSession.isEquivalent(to:)(v0[2]))
    {
      v2 = v0[9];
      v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
      swift_beginAccess();
      *(v2 + v3) = _swiftEmptyArrayStorage;

      v4 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
      swift_beginAccess();
      *(v2 + v4) = _swiftEmptyArrayStorage;

      goto LABEL_6;
    }
  }

  SharePlayTogetherSession.cleanup(notifyObservers:)(1);
LABEL_6:
  v5 = v0[1];

  return v5();
}

uint64_t key path setter for Player.$sharePlayTogetherSession : Player(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore24SharePlayTogetherSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVy9MusicCore24SharePlayTogetherSessionCSg_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionCSgGMd, &_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

void key path getter for Player.isHostingSharePlayTogetherSession : Player(_BYTE *a4@<X8>)
{
  key path getter for Player.isHostingSharePlayTogetherSession : Player(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t key path setter for Player.$isHostingSharePlayTogetherSession : Player(_BYTE *a1, uint64_t *a2)
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

uint64_t key path setter for Player.isHostingSharePlayTogetherSession : Player(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Player.isHostingSharePlayTogetherSession.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t key path getter for Player.$path : Player(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for Player.$isEligibleForHostingSharePlayTogetherSession : Player(_BYTE *a1, uint64_t *a2)
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

id Player.supportsDelegation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = [v8 route];

  if (!v0)
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_12;
  }

  result = [v1 endpointObject];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result externalDevice];

  if (!v4 || (v5 = [v4 deviceInfo], v4, !v5))
  {
LABEL_12:

    return 0;
  }

  v6 = [v5 deviceClass];

  return (v6 == 7 || v6 == 4);
}

uint64_t Player.isInAnySharePlaySession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2 || (v0 = [v2 isSharedListeningSession], v2, (v0 & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v2)
    {
      return 0;
    }

    result = *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
    if (!result)
    {
      __break(1u);
      return result;
    }

    if ([result isPlaceholder])
    {

      return 0;
    }

    if (v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      return v2 > 0;
    }
  }

  return 1;
}

void Player.sharePlayTogether(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
  *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken) = a1;
  v8 = a1;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a2;
  v10[5] = a3;
  v13[4] = partial apply for closure #1 in Player.sharePlayTogether(with:completion:);
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed Error?) -> ();
  v13[3] = &block_descriptor_63_1;
  v11 = _Block_copy(v13);
  v12 = v8;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a2, a3);

  MRGroupSessionJoinSessionWithToken();
  _Block_release(v11);
}

double closure #1 in Player.sharePlayTogether(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken;
    v13 = *(Strong + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
    if (v13)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRGroupSessionToken, MRGroupSessionToken_ptr);
      v14 = a5;
      v15 = v13;
      v16 = static NSObject.== infix(_:_:)();

      if (v16)
      {
        v17 = *(v11 + v12);
        *(v11 + v12) = 0;

        if (a6)
        {
          a6(a3);
        }
      }
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

void Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = [v12[0] route];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 endpointObject];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
      v8 = static OS_dispatch_queue.main.getter();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a1;
      v10[4] = a2;
      v12[4] = partial apply for closure #1 in Player.requestSharePlayTogether(completion:);
      v12[5] = v10;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ();
      v12[3] = &block_descriptor_70;
      v11 = _Block_copy(v12);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(a1, a2);

      [v7 requestGroupSessionWithQueue:v8 completion:v11];
      _Block_release(v11);

      v4 = v8;
    }
  }
}

double closure #1 in Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v12 = &v19 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    type metadata accessor for MainActor();

    outlined copy of (@escaping @callee_guaranteed () -> ())?(a5, a6);

    swift_errorRetain();
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;
    v18[5] = a5;
    v18[6] = a6;
    v18[7] = a1;
    v18[8] = a2;
    v18[9] = a3;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in Player.requestSharePlayTogether(completion:), v18);
  }

  return result;
}

uint64_t closure #1 in closure #1 in Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in Player.requestSharePlayTogether(completion:), v10, v9);
}

uint64_t closure #1 in closure #1 in Player.requestSharePlayTogether(completion:)()
{
  v1 = v0[3];

  Player.updateSharePlayTogetherSession()();
  if (v1)
  {
    (v0[3])(v0[5], v0[6], v0[7]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t Player.getNowPlaying()()
{
  v1[17] = v0;
  v1[18] = type metadata accessor for MainActor();
  v1[19] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(Player.getNowPlaying(), v3, v2);
}

{
  v1 = Player.nowPlayingDataSource.getter();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
  *(v0 + 176) = v2;
  v3 = v2;

  v4 = static MainActor.shared.getter();
  *(v0 + 184) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(Player.getNowPlaying(), v5, v7);
}

{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = Player.getNowPlaying();
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = partial apply for closure #1 in closure #1 in Player.getNowPlaying();
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
  v1[13] = &block_descriptor_76_0;
  v9 = _Block_copy(v4);

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

{
  v1 = *(v0 + 200);

  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = [v2 playerPath];
    v4 = [v3 isSystemMusicPath];

    if (v4 || (v5 = [v2 playerPath], v6 = objc_msgSend(v5, "representedBundleID"), v5, !v6))
    {
      v7 = *(v0 + 200);
    }

    else
    {

      v7 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v7;

    static Published.subscript.setter();
    v8 = [v2 playerPath];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = 0;

    static Published.subscript.setter();
    v8 = 0;
  }

  v9 = *(v0 + 176);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v8;
  v10 = v8;

  static Published.subscript.setter();

  v11 = *(v0 + 8);
  v12 = *(v0 + 200);

  return v11(v12);
}

{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t Player.getNowPlaying()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 192) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = v2[20];
    v5 = v2[21];
    v6 = Player.getNowPlaying();
  }

  else
  {

    v2[25] = v2[16];
    v4 = v2[20];
    v5 = v2[21];
    v6 = Player.getNowPlaying();
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t closure #1 in closure #1 in Player.getNowPlaying()(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_allocError();
    *v4 = a2;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;
    v6 = a1;

    return swift_continuation_throwingResume();
  }
}

void Player.nowPlayingConfiguration.didset()
{
  v1 = Player.nowPlayingDataSource.getter();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

  v3 = (v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v5 = *v3;
  v6 = v4;

  v8 = specialized Player.NowPlayingConfiguration.tracklistRange.getter(v7);
  v10 = v9;

  v11 = [v2 playingItemProperties];
  if (v11 && (v12 = v11, v13 = [v11 containsPropertySet:*v3], v12, v13) && (v14 = objc_msgSend(v2, "queueSectionProperties")) != 0)
  {
    v15 = v14;
    v16 = [v14 containsPropertySet:v3[1]];

    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  if ([v2 tracklistRange] != v8 || (v17 & 1) != 0 || v18 != v10)
  {
    [v2 setPlayingItemProperties:*v3];
    [v2 setQueueItemProperties:*v3];
    [v2 setQueueSectionProperties:v3[1]];
    [v2 setTracklistRange:{v8, v10}];
    v19 = Player.playbackDataSource.getter();
    v20 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

    [v20 setPlayingItemProperties:*v3];
    v21 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v0 + v21) == 2)
    {
      v22 = *(*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource) + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller);
      v23 = v22;
      v24 = &selRef_setNeedsReloadForSignificantRequestChange;
      if (!v17)
      {
        v24 = &selRef_setNeedsReload;
      }

      [v22 *v24];
    }
  }
}

id Player.nowPlayingConfiguration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = v3;

  return v2;
}

void Player.nowPlayingConfiguration.setter(void *a1, void *a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  v10 = a1;
  v11 = a2;

  Player.nowPlayingConfiguration.didset();
}

void (*Player.nowPlayingConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Player.nowPlayingConfiguration.modify;
}

void Player.nowPlayingConfiguration.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Player.nowPlayingConfiguration.didset();
  }
}

unint64_t specialized Player.NowPlayingConfiguration.BadCountedSet.insert(_:)(Swift::UInt a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if (!*(v6 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = 1;
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = v10;
LABEL_6:
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v13;
    return result;
  }

  __break(1u);
  return result;
}