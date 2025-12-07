unint64_t PlayActivityFeatureIdentifier.rawValue.getter(char a1)
{
  result = 0x65645F6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x5F7972617262696CLL;
      break;
    case 3:
      result = 0x74616C69706D6F63;
      break;
    case 4:
      result = 0x7265736F706D6F63;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x726F665F6564616DLL;
      break;
    case 7:
      result = 0x736569766F6DLL;
      break;
    case 8:
      result = 0x69765F636973756DLL;
      break;
    case 9:
      result = 1936615792;
      break;
    case 10:
      result = 0x7473696C79616C70;
      break;
    case 11:
    case 12:
      result = 0x7473696C79616C70;
      break;
    case 13:
      result = 0x796C746E65636572;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x73676E6F73;
      break;
    case 16:
      result = 0x73776F6873;
      break;
    case 17:
      result = 0x7365646F73697065;
      break;
    case 18:
      result = 0x79616C705F776F6ELL;
      break;
    case 19:
      result = 0x616C705F696E696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PlayActivityFeatureIdentifier(char *a1, char *a2)
{
  v2 = *a2;
  v3 = PlayActivityFeatureIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlayActivityFeatureIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PlayActivityFeatureIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance PlayActivityFeatureIdentifier(uint64_t a1)
{
  PlayActivityFeatureIdentifier.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlayActivityFeatureIdentifier(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  PlayActivityFeatureIdentifier.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PlayActivityFeatureIdentifier@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PlayActivityFeatureIdentifier.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t _s9MusicCore29PlayActivityFeatureIdentifierOs12IdentifiableAAsADP2id2IDQzvgTW_0@<X0>(unint64_t *a1@<X8>)
{
  result = PlayActivityFeatureIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized PlayActivityFeatureIdentifier.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type PlayActivityFeatureIdentifier and conformance PlayActivityFeatureIdentifier()
{
  result = lazy protocol witness table cache variable for type PlayActivityFeatureIdentifier and conformance PlayActivityFeatureIdentifier;
  if (!lazy protocol witness table cache variable for type PlayActivityFeatureIdentifier and conformance PlayActivityFeatureIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayActivityFeatureIdentifier and conformance PlayActivityFeatureIdentifier);
  }

  return result;
}

uint64_t PlaylistSortingController.trackListSortDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t PlaylistSortingController.trackListSortDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6, v7);
}

uint64_t PlaylistSortingController.currentTrackListSort.didset(__int16 a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v5 = v4[1];
  result = specialized == infix<A>(_:_:)();
  if ((result & 1) == 0 || ((((a1 & 0x100) == 0) ^ v5) & 1) == 0)
  {
    v7 = v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange;
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 8);
      v10 = *v4;
      if (v4[1])
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }

      v8(v11 | v10);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v8, v9);
    }

    v12 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate;
    *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 1;
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = *v4;
    v15 = v4[1];
    v21[3] = &type metadata for Actions.SortPlaylist.TrackListSort;
    v21[4] = lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
    v21[5] = lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
    LOBYTE(v21[0]) = v14;
    BYTE1(v21[0]) = v15;
    Playlist.catalogID.getter();
    if (!v16)
    {
      Playlist.id.getter();
    }

    lazy protocol witness table accessor for type String and conformance String();
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    NSUserDefaults.encodeValue(_:forKey:)(v21);

    result = __swift_destroy_boxed_opaque_existential_0Tm(v21);
    *(v2 + v12) = 0;
  }

  return result;
}

uint64_t PlaylistSortingController.currentTrackListSort.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | *v1;
}

uint64_t PlaylistSortingController.currentTrackListSort.setter(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return PlaylistSortingController.currentTrackListSort.didset(v6 | v4);
}

void (*PlaylistSortingController.currentTrackListSort.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 40) = *v6;
  *(v4 + 41) = v7;
  return PlaylistSortingController.currentTrackListSort.modify;
}

void PlaylistSortingController.currentTrackListSort.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 41);
  v4 = *v2;
  v5 = v2[1];
  *v2 = *(*a1 + 40);
  v2[1] = v3;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  PlaylistSortingController.currentTrackListSort.didset(v6 | v4);

  free(v1);
}

void *PlaylistSortingController.init(_:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  __chkstk_darwin();
  v5 = &v41 - v4;
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort) = 256;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = 0;
  outlined init with copy of TaskPriority?(a1, v5, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
    outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
LABEL_15:
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.state<A>(for:)();

  v11 = dispatch thunk of MusicLibrary.ItemState.isAdded.getter();

  if ((v11 & 1) == 0)
  {
    outlined destroy of TaskPriority?(a1, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
    (*(v7 + 8))(v9, v6);
    goto LABEL_15;
  }

  (*(v7 + 16))(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist, v9, v6);
  v41 = objc_opt_self();
  v12 = [v41 standardUserDefaults];
  v45 = 0x2D74726F53;
  v46 = 0xE500000000000000;
  v13 = Playlist.catalogID.getter();
  v42 = a1;
  if (!v14)
  {
    v13 = Playlist.id.getter();
  }

  v51 = v13;
  v52 = v14;
  v49 = 46;
  v50 = 0xE100000000000000;
  v47 = 45;
  v48 = 0xE100000000000000;
  v15 = lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, &v47);

  if ((v47 & 0xFF00) == 0x200)
  {
    v20 = [v41 standardUserDefaults];
    v21 = Playlist.catalogID.getter();
    if (!v22)
    {
      v21 = Playlist.id.getter();
    }

    v45 = v21;
    v46 = v22;
    v51 = 46;
    v52 = 0xE100000000000000;
    v49 = 45;
    v50 = 0xE100000000000000;
    LOBYTE(v23) = 1;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v26 = v25;

    v27 = NSUserDefaults.sortType(for:keyDomain:)(194, v24, v26);

    v28 = 0;
    if (v27 <= 6u)
    {
      switch(v27)
      {
        case 1u:
          v28 = 0;
          LOBYTE(v23) = 0;
          break;
        case 2u:
          v28 = 1;
          break;
        case 6u:
          v28 = 2;
          break;
      }

      goto LABEL_25;
    }

    switch(v27)
    {
      case 7u:
        v28 = 3;
        break;
      case 0xBu:
        goto LABEL_21;
      case 0xCu:
        LOBYTE(v23) = 0;
LABEL_21:
        v28 = 4;
        break;
    }
  }

  else
  {
    v28 = v47;
    v23 = BYTE1(v47) & 1;
  }

LABEL_25:
  v29 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  *v29 = v28;
  v29[1] = v23;
  v51 = 0x2D74726F53;
  v52 = 0xE500000000000000;
  v30 = Playlist.catalogID.getter();
  if (!v31)
  {
    v30 = Playlist.id.getter();
  }

  v32 = v30;
  v33 = v31;
  v41 = type metadata accessor for NSUserDefaults();
  v49 = v32;
  v50 = v33;
  v47 = 46;
  v48 = 0xE100000000000000;
  v43 = 45;
  v44 = 0xE100000000000000;
  v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v36 = v35;

  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  v38 = swift_allocObject();
  swift_weakInit();

  v39 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v51, 0, 0, partial apply for closure #1 in PlaylistSortingController.init(_:), v38, &type metadata for String, v15);

  outlined destroy of TaskPriority?(v42, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);

  (*(v7 + 8))(v9, v6);

  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = v39;

  return v2;
}

unint64_t type metadata accessor for NSUserDefaults()
{
  result = lazy cache variable for type metadata for NSUserDefaults;
  if (!lazy cache variable for type metadata for NSUserDefaults)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserDefaults);
  }

  return result;
}

uint64_t sub_1002A1018()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double closure #1 in PlaylistSortingController.init(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v4 = v15 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) & 1) == 0)
    {
      v7 = Strong;
      outlined init with copy of TaskPriority?(a1, v16, &_sypSgMd_0, &_sypSgMR_0);
      if (!v17)
      {

        outlined destroy of TaskPriority?(v16, &_sypSgMd_0, &_sypSgMR_0);
        return result;
      }

      if (swift_dynamicCast())
      {
        v9 = v15[1];
        v8 = v15[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v10 = v16[0];
        v11 = v16[1];
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
        type metadata accessor for MainActor();

        v13 = static MainActor.shared.getter();
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = &protocol witness table for MainActor;
        *(v14 + 32) = v7;
        *(v14 + 40) = v10;
        *(v14 + 41) = v11;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in PlaylistSortingController.init(_:), v14);

        outlined consume of Data._Representation(v9, v8);
      }
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in PlaylistSortingController.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in PlaylistSortingController.init(_:), v7, v6);
}

uint64_t closure #1 in closure #1 in PlaylistSortingController.init(_:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = HIBYTE(v1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  PlaylistSortingController.currentTrackListSort.didset(v6 | v4);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t PlaylistSortingController.actionBuilder.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
  __chkstk_darwin();
  v66 = v52 - v1;
  v65 = type metadata accessor for Actions.SortPlaylist.Context(0);
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v62 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = v52 - v3;
  v63 = v4;
  __chkstk_darwin();
  v57 = v52 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  v59 = *(v60 - 8);
  __chkstk_darwin();
  v56 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v52 - v7;
  __chkstk_darwin();
  v54 = v52 - v8;
  v58 = v9;
  __chkstk_darwin();
  v11 = v52 - v10;
  v67 = v0;
  v52[1] = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v53 = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  swift_beginAccess();
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v71 = xmmword_1004F2400;
  do
  {
    v70 = v13;
    v69 = v12;
    v14 = *(&outlined read-only object #0 of PlaylistSortingController.actionBuilder.getter + v12 + 32);
    v15 = *v53;
    v16 = v53[1];
    v17 = v66;
    Playlist.variant.getter();
    v18 = v65;
    v19 = *(v65 + 24);
    v20 = type metadata accessor for Playlist.Variant();
    v21 = v57;
    (*(*(v20 - 8) + 56))(&v57[v19], 1, 1, v20);
    *v21 = v14;
    v21[1] = v15;
    v21[2] = v16;
    v22 = v67;

    outlined assign with take of Playlist.Variant?(v17, &v21[v19]);
    v23 = &v21[*(v18 + 28)];
    *v23 = partial apply for closure #1 in PlaylistSortingController.actionBuilder.getter;
    v23[1] = v22;
    v24 = v61;
    outlined init with copy of Actions.SortPlaylist.Context(v21, v61);
    v25 = v14 + 14;
    v68 = v14 + 14;
    v26 = v62;
    outlined init with copy of Actions.SortPlaylist.Context(v21, v62);
    v27 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v28 = swift_allocObject();
    outlined init with take of Actions.SortPlaylist.Context(v26, v28 + v27);
    outlined init with take of Actions.SortPlaylist.Context(v24, v11);
    v29 = v60;
    v11[*(v60 + 36)] = v25;
    *&v11[v29[11]] = 0x4014000000000000;
    v30 = &v11[v29[10]];
    *v30 = variable initialization expression of _NSRange.NSRangeIterator.current;
    v30[1] = 0;
    v31 = &v11[v29[12]];
    *v31 = &async function pointer to partial apply for closure #2 in static Actions.SortPlaylist.action(context:);
    *(v31 + 1) = v28;
    v32 = &v11[v29[13]];
    *v32 = &async function pointer to closure #3 in static Actions.SortPlaylist.action(context:);
    *(v32 + 1) = 0;
    outlined destroy of Actions.SortPlaylist.Context(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v71;
    v34 = v54;
    outlined init with copy of TaskPriority?(v11, v54, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    v35 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v36 = swift_allocObject();
    outlined init with take of Action<Actions.SortPlaylist.Context, ()>(v34, v36 + v35);
    v37 = v55;
    outlined init with copy of TaskPriority?(v11, v55, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    v38 = swift_allocObject();
    outlined init with take of Action<Actions.SortPlaylist.Context, ()>(v37, v38 + v35);
    v39 = v56;
    outlined init with copy of TaskPriority?(v11, v56, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    v40 = swift_allocObject();
    outlined init with take of Action<Actions.SortPlaylist.Context, ()>(v39, v40 + v35);
    *(inited + 32) = v68;
    *(inited + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
    *(inited + 48) = v36;
    *(inited + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(inited + 64) = v38;
    *(inited + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
    *(inited + 80) = v40;
    v13 = v70;
    outlined destroy of TaskPriority?(v11, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd, &_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMR);
    v41 = swift_initStackObject();
    *(v41 + 16) = v71;
    *(v41 + 32) = inited;
    v42 = v41 + 32;
    v43 = specialized static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v42, &_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    }

    v45 = v13[2];
    v44 = v13[3];
    v46 = v69;
    if (v45 >= v44 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v13);
    }

    v12 = v46 + 1;
    v13[2] = v45 + 1;
    v13[v45 + 4] = v43;
  }

  while (v12 != 5);
  v47 = specialized static ActionBuilder.buildBlock(_:)();

  v48 = swift_initStackObject();
  *(v48 + 16) = v71;
  *(v48 + 32) = v47;
  v49 = v48 + 32;
  v50 = specialized static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v49, &_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
  return v50;
}

uint64_t closure #1 in PlaylistSortingController.actionBuilder.getter(__int16 a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return PlaylistSortingController.currentTrackListSort.didset(v6 | v4);
}

double static PlaylistSortingController.apply(for:to:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  __chkstk_darwin();
  v4 = &v8 - v3;
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_allocObject();
  if (PlaylistSortingController.init(_:)(v4))
  {
    PlaylistSortingController.apply(to:)();
  }

  return result;
}

double PlaylistSortingController.apply(to:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v2 = *v1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMd, &_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMR);
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();

      swift_getKeyPath();
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
    }

    else
    {
      if (v2 != 3)
      {
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMd, &_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMR);
        MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
        goto LABEL_10;
      }

      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMd, &_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMR);
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
    }

    swift_getKeyPath();
    MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
LABEL_10:

LABEL_12:
    swift_getKeyPath();
    goto LABEL_13;
  }

  if (*v1)
  {
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMd, &_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMR);
    MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();

    goto LABEL_12;
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMd, &_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMR);
LABEL_13:
  MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();

  return result;
}

uint64_t PlaylistSortingController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = type metadata accessor for Playlist();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

  return v0;
}

uint64_t PlaylistSortingController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = type metadata accessor for Playlist();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for playlistSorting()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.playlistSorting);
  __swift_project_value_buffer(v0, static Logger.playlistSorting);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002A22F4()
{
  v1 = type metadata accessor for Actions.SortPlaylist.Context(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 24);
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t _s9MusicCore7ActionsO12SortPlaylistO6action7contextAA6ActionVyAE7ContextVytGAK_tFZyALYaYbcfU0_TA_0(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Actions.SortPlaylist.Context(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in static Actions.SortPlaylist.action(context:)(a1, a2, v2 + v7);
}

uint64_t outlined destroy of Actions.SortPlaylist.Context(uint64_t a1)
{
  v2 = type metadata accessor for Actions.SortPlaylist.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Action<Actions.SortPlaylist.Context, ()>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A281C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistEntryInternalSortProperties.trackNumber.getter();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t keypath_get_16Tm@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1002A28DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistEntryInternalSortProperties.position.getter();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for PlaylistSortingController(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlaylistSortingController;
  if (!type metadata singleton initialization cache for PlaylistSortingController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PlaylistSortingController(uint64_t a1)
{
  result = type metadata accessor for Playlist();
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

uint64_t sub_1002A2A30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PlaylistSortingController.init(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in PlaylistSortingController.init(_:)(a1, v4, v5, v6, v8 | v7);
}

double QRCode.init(data:errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  specialized QRCode.init(data:errorCorrectionLevel:)(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t QRCode.data.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

void closure #1 in QRCode.init(data:errorCorrectionLevel:)(void *a1, void *a2, CGImage *a3, uint64_t a4, CGContext *a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11)
{
  [a1 beginPage];
  v69 = a1;
  v19 = [a1 CGContext];
  if (one-time initialization token for multiplier != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v20 = *&static QRCode.multiplier;
    CGContextSetLineWidth(v19, *&static QRCode.multiplier);

    v21 = objc_opt_self();
    v22 = [v21 whiteColor];
    [v22 setStroke];

    v23 = [v21 whiteColor];
    [v23 setFill];

    v24 = v20 * a6;
    v72.origin.x = a7;
    v72.origin.y = a8;
    v72.size.width = a9;
    v72.size.height = a10;
    v25 = CGRectGetWidth(v72) - v20 * a6;
    v73.origin.x = a7;
    v73.origin.y = a8;
    v73.size.width = a9;
    a9 = v20;
    v73.size.height = a10;
    v26 = CGRectGetHeight(v73) - v20 * a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EB0;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v24;
    *(inited + 56) = v24;
    v65 = v25;
    *(inited + 64) = v25;
    *(inited + 72) = 0;
    *(inited + 80) = v24;
    *(inited + 88) = v24;
    *(inited + 96) = 0;
    v67 = v26;
    *(inited + 104) = v26;
    *(inited + 112) = v24;
    *(inited + 120) = v24;
    v28 = objc_opt_self();
    v29 = *(inited + 32);
    v30 = *(inited + 40);
    a10 = *(inited + 48);
    v31 = *(inited + 56);
    v74.origin.x = v29;
    v74.origin.y = v30;
    v74.size.width = a10;
    v74.size.height = v31;
    v66 = a9 * 0.5;
    v75 = CGRectInset(v74, a9 * 0.5, a9 * 0.5);
    v32 = [v28 _bezierPathWithPillRect:v75.origin.x cornerRadius:{v75.origin.y, v75.size.width, v75.size.height, 10.0}];
    if (v32)
    {
      v33 = v32;
      [v32 setLineWidth:a9];
      [v33 stroke];
      v64 = a9;
      v34 = a9 * a11;
      v76.origin.x = v29;
      v76.origin.y = v30;
      v76.size.width = a10;
      v76.size.height = v31;
      v35 = v34 * 0.5;
      v63 = CGRectGetMidX(v76) - v34 * 0.5;
      v77.origin.x = v29;
      v77.origin.y = v30;
      v77.size.width = a10;
      v77.size.height = v31;
      MidY = CGRectGetMidY(v77);
      v37 = v34;
      v38 = v34;
      a9 = v64;
      v39 = [v28 _bezierPathWithPillRect:v63 cornerRadius:{MidY - v35, v37, v38, 2.0}];
      [v39 fill];
    }

    v78.origin.y = 0.0;
    a8 = v66;
    v78.origin.x = v65;
    v78.size.width = v24;
    v78.size.height = v24;
    v79 = CGRectInset(v78, v66, v66);
    v40 = [v28 _bezierPathWithPillRect:v79.origin.x cornerRadius:{v79.origin.y, v79.size.width, v79.size.height, 10.0}];
    if (v40)
    {
      v41 = v40;
      [v40 setLineWidth:a9];
      [v41 stroke];
      v80.origin.y = 0.0;
      v80.origin.x = v65;
      v80.size.width = v24;
      v80.size.height = v24;
      a10 = CGRectGetMidX(v80) - a9 * a11 * 0.5;
      v81.origin.y = 0.0;
      v81.origin.x = v65;
      v81.size.width = v24;
      v81.size.height = v24;
      v42 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v81) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v42 fill];
    }

    else
    {
    }

    v82.origin.x = 0.0;
    v82.origin.y = v67;
    v82.size.width = v24;
    v82.size.height = v24;
    v83 = CGRectInset(v82, v66, v66);
    v43 = [v28 _bezierPathWithPillRect:v83.origin.x cornerRadius:{v83.origin.y, v83.size.width, v83.size.height, 10.0}];
    if (v43)
    {
      v44 = v43;
      [v43 setLineWidth:a9];
      [v44 stroke];
      v84.origin.x = 0.0;
      v84.origin.y = v67;
      v84.size.width = v24;
      v84.size.height = v24;
      a10 = CGRectGetMidX(v84) - a9 * a11 * 0.5;
      v85.origin.x = 0.0;
      v85.origin.y = v67;
      v85.size.width = v24;
      v85.size.height = v24;
      v45 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v85) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v45 fill];
    }

    [a2 extent];
    Height = CGRectGetHeight(v86);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (Height <= -9.22337204e18)
    {
      goto LABEL_69;
    }

    if (Height >= 9.22337204e18)
    {
      goto LABEL_70;
    }

    v47 = Height;
    if (Height < 1)
    {
      goto LABEL_71;
    }

    v19 = a5;
    if (Height == 1)
    {
      return;
    }

    v48 = a6;
    a7 = a9 + -1.0;
    v49 = 1;
    *&a11 = Height;
    while (1)
    {
      if (v49 == v47)
      {
        goto LABEL_62;
      }

      [a2 extent];
      Width = CGRectGetWidth(v87);
      if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (Width <= -9.22337204e18)
      {
        goto LABEL_64;
      }

      if (Width >= 9.22337204e18)
      {
        goto LABEL_65;
      }

      v51 = Width;
      if (Width < 1)
      {
        goto LABEL_66;
      }

      if (Width != 1)
      {
        for (i = 1; v51 != i; ++i)
        {
          BytesPerRow = CGImageGetBytesPerRow(a3);
          v55 = BytesPerRow * v49;
          if ((BytesPerRow * v49) >> 64 != (BytesPerRow * v49) >> 63)
          {
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
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v56 = i * a4;
          if ((i * a4) >> 64 != (i * a4) >> 63)
          {
            goto LABEL_49;
          }

          v57 = __OFADD__(v55, v56);
          v58 = v55 + v56;
          if (v57)
          {
            goto LABEL_50;
          }

          if (!*(v19 + v58))
          {
            if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_51;
            }

            if (a6 <= -9.22337204e18)
            {
              goto LABEL_52;
            }

            if (a6 >= 9.22337204e18)
            {
              goto LABEL_53;
            }

            [a2 extent];
            v59 = CGRectGetWidth(v89);
            if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_54;
            }

            if (v59 <= -9.22337204e18)
            {
              goto LABEL_55;
            }

            if (v59 >= 9.22337204e18)
            {
              goto LABEL_56;
            }

            v60 = v59;
            if (v49 <= v48)
            {
              if (i <= v48)
              {
                continue;
              }

              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_60;
              }

              if (__OFSUB__(v61, 1))
              {
                goto LABEL_61;
              }

              if (i >= v61 - 1)
              {
                continue;
              }
            }

            else
            {
              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_57;
              }
            }

            v57 = __OFSUB__(v61, 1);
            v62 = v61 - 1;
            if (v57)
            {
              goto LABEL_58;
            }

            if (v49 < v62 || i > v48)
            {
              if (__OFSUB__(i, 1))
              {
                goto LABEL_59;
              }

              a10 = a9 * (i - 1);
              v53 = [v69 CGContext];
              v88.origin.x = a10;
              v88.origin.y = a9 * (v49 - 1);
              v88.size.width = a9 + -1.0;
              v88.size.height = a9 + -1.0;
              CGContextFillEllipseInRect(v53, v88);

              v19 = a5;
            }
          }
        }
      }

      ++v49;
      v47 = *&a11;
      if (v49 == *&a11)
      {
        return;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

double QRCode.with(errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  outlined copy of Data._Representation(v6, v5);
  specialized QRCode.init(data:errorCorrectionLevel:)(v6, v5, a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

double QRCode.dotAdjustedWidth(with:scale:)(double a1, double a2)
{
  v3 = *v2;
  UIRoundToScale();
  return v4 * v3;
}

CGMutablePathRef QRCode.dotAlignedPath(with:in:imageBounds:)(char *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v20.origin.x = a6;
  v20.origin.y = a7;
  v20.size.width = a8;
  v20.size.height = a9;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);

  result = CGPathCreateMutable();
  v15 = *(a1 + 2);
  if (v15)
  {
    v16 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > *(a1 + 3) >> 1)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    CGMutablePathRef.move(to:transform:)();
    v18 = *(a1 + 2);
    if (v18)
    {
      v19 = a1 + 40;
      do
      {
        CGMutablePathRef.addLine(to:transform:)();
        v19 += 16;
        --v18;
      }

      while (v18);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized QRCode.init(data:errorCorrectionLevel:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = objc_opt_self();
  outlined copy of Data._Representation(a1, a2);
  v9 = [v8 QRCodeGenerator];
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(a1, a2);
  v11 = String._bridgeToObjectiveC()();
  [v9 setValue:isa forKey:v11];

  v12 = v9;
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();
  [v12 setValue:v13 forKey:v14];

  v15 = [v12 outputImage];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v55 = a3;
  v17 = [objc_allocWithZone(CIContext) init];
  [v16 extent];
  v18 = [v17 createCGImage:v16 fromRect:?];

  if (!v18)
  {

LABEL_18:
LABEL_19:
    v21 = 0;
LABEL_20:
    v31 = 0;
    goto LABEL_21;
  }

  v19 = CGImageGetDataProvider(v18);
  if (!v19)
  {

    goto LABEL_19;
  }

  v20 = v19;
  v21 = CGDataProviderCopyData(v19);

  if (!v21)
  {

    goto LABEL_20;
  }

  v53 = v21;
  BytePtr = CFDataGetBytePtr(v21);
  if (BytePtr)
  {
    v23 = BytePtr;
    v24 = CGImageGetBitsPerPixel(v18) / 8;
    v25 = Int.seconds.getter(7);
    v26 = Int.seconds.getter(3);
    [v16 extent];
    v27 = CGRectGetWidth(v57) + -2.0;
    if (one-time initialization token for multiplier != -1)
    {
      swift_once();
    }

    v28 = *&static QRCode.multiplier;
    v29 = v27 * *&static QRCode.multiplier;
    [v16 extent];
    v30 = v28 * (CGRectGetHeight(v58) + -2.0);
    v54 = [objc_allocWithZone(UIGraphicsPDFRenderer) initWithBounds:{0.0, 0.0, v29, v30}];
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = v29;
    *(v31 + 48) = v30;
    *(v31 + 56) = v26;
    *(v31 + 64) = v16;
    *(v31 + 72) = v18;
    *(v31 + 80) = v24;
    *(v31 + 88) = v23;
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for closure #1 in QRCode.init(data:errorCorrectionLevel:);
    *(v32 + 24) = v31;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    aBlock[3] = &block_descriptor_46;
    v33 = _Block_copy(aBlock);

    v52 = v16;
    v51 = v18;

    v34 = [v54 PDFDataWithActions:v33];
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
      goto LABEL_31;
    }

    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = Data._bridgeToObjectiveC()().super.isa;
    v39 = CGDataProviderCreateWithCFData(v38);

    if (v39)
    {
      v40 = CGPDFDocumentCreateWithProvider(v39);
      if (v40)
      {
        v41 = v40;
        v42 = CGPDFDocumentGetPage(v40, 1uLL);
        if (v42)
        {
          v50 = v42;
          v43 = [objc_opt_self() _imageWithCGPDFPage:v42];
          if (v43)
          {
            v44 = v43;
            [v52 extent];
            Width = CGRectGetWidth(v59);

            outlined consume of Data._Representation(v35, v37);
            v46 = Width + -2.0;
            if (COERCE__INT64(fabs(Width + -2.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v47 = v55;
              if (v46 > -9.22337204e18)
              {
                if (v46 < 9.22337204e18)
                {
                  v48 = v46;
                  outlined copy of Data._Representation(a1, a2);
                  v49 = v44;
                  outlined consume of Data._Representation(a1, a2);

LABEL_22:
                  *a4 = v48;
                  a4[1] = a1;
                  a4[2] = a2;
                  a4[3] = v44;
                  a4[4] = v47;
                  return;
                }

                goto LABEL_33;
              }

LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          outlined consume of Data._Representation(v35, v37);
        }

        else
        {

          outlined consume of Data._Representation(v35, v37);
        }
      }

      else
      {

        outlined consume of Data._Representation(v35, v37);
      }
    }

    else
    {

      outlined consume of Data._Representation(v35, v37);
    }

    v21 = partial apply for closure #1 in QRCode.init(data:errorCorrectionLevel:);
LABEL_21:
    outlined consume of Data._Representation(a1, a2);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v21, v31);
    v48 = 0;
    a1 = 0;
    a2 = 0;
    v44 = 0;
    v47 = 0;
    goto LABEL_22;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1002A3CAC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *OS_os_log.sharePlay.unsafeMutableAddressor()
{
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sharePlay;
}

uint64_t static OSSignposter.music(_:)(uint64_t a1, uint64_t a2)
{

  return OSSignposter.init(subsystem:category:)();
}

uint64_t static OSSignposter.music(_:)(void *a1)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v2 = a1;
  Logger.init(_:)();
  return OSSignposter.init(logger:)();
}

uint64_t one-time initialization function for launch()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static OSSignposter.launch);
  __swift_project_value_buffer(v0, static OSSignposter.launch);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t OSSignposter.sharePlay.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();

  return __swift_project_value_buffer(v4, a2);
}

void one-time initialization function for sharePlay()
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static OSSignposter.sharePlay);
  __swift_project_value_buffer(v0, static OSSignposter.sharePlay);
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;
  Logger.init(_:)();
  OSSignposter.init(logger:)();
}

uint64_t static OSSignposter.launch.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSSignposter();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t one-time initialization function for sharePlay()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.sharePlay = result;
  return result;
}

id static OS_os_log.sharePlay.getter()
{
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;

  return v1;
}

uint64_t SubscriptionUpsellPresenter.Placement.Source.kind.getter()
{
  outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(v0, v8);
  if (v9 == 1)
  {
    v1 = *&v8[0];
    v2 = MPModelObject.mediaKitPlayableKind.getter();

    return *&aSongs_4[8 * v2];
  }

  else
  {
    outlined init with take of CatalogIDProviding(v8, v6);
    v4 = v7;
    __swift_project_boxed_opaque_existential_0Tm(v6, v7);
    v5 = MusicItem.mediaKind.getter(v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    return v5;
  }
}

uint64_t MusicItem.mediaKind.getter(uint64_t a1)
{
  v97 = type metadata accessor for Playlist.Entry();
  v96 = *(v97 - 8);
  __chkstk_darwin();
  v91 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v87 - v4;
  v101 = type metadata accessor for Track();
  v95 = *(v101 - 8);
  __chkstk_darwin();
  v94 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v87 - v6;
  v103 = type metadata accessor for GenericMusicItem();
  v100 = *(v103 - 8);
  __chkstk_darwin();
  v99 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v87 - v8;
  v106 = type metadata accessor for UploadedVideo();
  v102 = *(v106 - 8);
  __chkstk_darwin();
  v105 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for UploadedAudio();
  v104 = *(v109 - 8);
  __chkstk_darwin();
  v108 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for TVShow();
  v107 = *(v112 - 8);
  __chkstk_darwin();
  v111 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for TVEpisode();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v114 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Station();
  v113 = *(v118 - 8);
  __chkstk_darwin();
  v117 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Song();
  v116 = *(v120 - 8);
  __chkstk_darwin();
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for Playlist();
  v119 = *(v123 - 8);
  __chkstk_darwin();
  v122 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for MusicVideo();
  v121 = *(v125 - 8);
  __chkstk_darwin();
  v133 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for MusicMovie();
  v124 = *(v128 - 8);
  __chkstk_darwin();
  v127 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Album();
  v126 = *(v132 - 8);
  __chkstk_darwin();
  v131 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 - 8);
  __chkstk_darwin();
  v92 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v87 - v22;
  __chkstk_darwin();
  v130 = &v87 - v24;
  __chkstk_darwin();
  v26 = &v87 - v25;
  if (one-time initialization token for capabilityUpsell != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.capabilityUpsell);
  v30 = v20 + 16;
  v29 = *(v20 + 16);
  v135 = v1;
  v29(v26, v1, a1);
  v90 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v89 = v23;
    v34 = v33;
    v35 = swift_slowAlloc();
    v129 = v20;
    v87 = v35;
    v137 = v35;
    *v34 = 136315138;
    v29(v130, v26, a1);
    v36 = String.init<A>(describing:)();
    v88 = v15;
    v37 = a1;
    v39 = v38;
    v136 = *(v129 + 8);
    v136(v26, v37);
    v40 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v36, v39, &v137);
    a1 = v37;
    v15 = v88;

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "MusicItem - mediaKind =%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v87);

    v23 = v89;
  }

  else
  {

    v136 = *(v20 + 8);
    v136(v26, a1);
  }

  v41 = v132;
  v42 = v135;
  v132 = v30;
  v29(v23, v135, a1);
  v43 = v131;
  v44 = swift_dynamicCast();
  v46 = v133;
  v45 = v134;
  if (!v44)
  {
    v48 = v29;
    v49 = v127;
    v50 = v128;
    if (swift_dynamicCast())
    {
      (*(v124 + 8))(v49, v50);
      v47 = 0x6F6D2D636973756DLL;
      goto LABEL_36;
    }

    v51 = v125;
    if (swift_dynamicCast())
    {
      (*(v121 + 8))(v46, v51);
      v47 = 0x69762D636973756DLL;
      goto LABEL_36;
    }

    v53 = v122;
    v52 = v123;
    if (swift_dynamicCast())
    {
      (*(v119 + 8))(v53, v52);
      v47 = 0x7473696C79616C70;
      goto LABEL_36;
    }

    v54 = v15;
    v55 = v120;
    if (swift_dynamicCast())
    {
      (*(v116 + 8))(v54, v55);
      v47 = 0x73676E6F73;
      goto LABEL_36;
    }

    v56 = v117;
    v57 = v118;
    if (swift_dynamicCast())
    {
      (*(v113 + 8))(v56, v57);
      v47 = 0x736E6F6974617473;
      goto LABEL_36;
    }

    v58 = v114;
    v59 = v115;
    if (swift_dynamicCast())
    {
      (*(v110 + 8))(v58, v59);
      v47 = 0x6F736970652D7674;
      goto LABEL_36;
    }

    v60 = v111;
    v61 = v112;
    if (swift_dynamicCast())
    {
      (*(v107 + 8))(v60, v61);
      v47 = 0x73776F68732D7674;
      goto LABEL_36;
    }

    v62 = v108;
    v63 = v109;
    if (swift_dynamicCast())
    {
      v47 = 0x646564616F6C7075;
      (*(v104 + 8))(v62, v63);
      goto LABEL_36;
    }

    v64 = v105;
    v65 = v106;
    if (swift_dynamicCast())
    {
      v47 = 0x646564616F6C7075;
      (*(v102 + 8))(v64, v65);
      goto LABEL_36;
    }

    v66 = v45;
    v67 = v103;
    if (swift_dynamicCast())
    {
      v68 = v100;
      v69 = v99;
      (*(v100 + 32))(v99, v66, v67);
      GenericMusicItem.innerItem.getter(&v137);
    }

    else
    {
      v70 = v98;
      v67 = v101;
      if (!swift_dynamicCast())
      {
        v73 = v93;
        if (!swift_dynamicCast())
        {
          v76 = v48;
          v77 = v92;
          v76(v92, v42, a1);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            v137 = v135;
            *v80 = 136315138;
            v76(v130, v77, a1);
            v81 = String.init<A>(describing:)();
            v82 = v77;
            v83 = v81;
            v85 = v84;
            v136(v82, a1);
            v86 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v83, v85, &v137);

            *(v80 + 4) = v86;
            _os_log_impl(&_mh_execute_header, v78, v79, "Unsupported MusicItem kind=%s", v80, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v135);
          }

          else
          {

            v136(v77, a1);
          }

          goto LABEL_35;
        }

        v74 = v91;
        (*(v96 + 32))(v91, v73, v97);
        Playlist.Entry.innerItem.getter(&v137);
        v75 = v138;
        if (v138)
        {
          __swift_project_boxed_opaque_existential_0Tm(&v137, v138);
          v47 = MusicItem.mediaKind.getter(v75);
          (*(v96 + 8))(v74, v97);
          goto LABEL_32;
        }

        (*(v96 + 8))(v74, v97);
LABEL_34:
        outlined destroy of TaskPriority?(&v137, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
LABEL_35:
        v47 = 0;
        goto LABEL_36;
      }

      v68 = v95;
      v69 = v94;
      (*(v95 + 32))(v94, v70, v67);
      Track.musicItem.getter(&v137);
    }

    v71 = v138;
    if (v138)
    {
      __swift_project_boxed_opaque_existential_0Tm(&v137, v138);
      v47 = MusicItem.mediaKind.getter(v71);
      (*(v68 + 8))(v69, v67);
LABEL_32:
      __swift_destroy_boxed_opaque_existential_0Tm(&v137);
      goto LABEL_36;
    }

    (*(v68 + 8))(v69, v67);
    goto LABEL_34;
  }

  (*(v126 + 8))(v43, v41);
  v47 = 0x736D75626C61;
LABEL_36:
  v136(v23, a1);
  return v47;
}

uint64_t MusicItem.catalogID.getter(uint64_t a1)
{
  v107 = type metadata accessor for Playlist.Entry();
  v103 = *(v107 - 8);
  __chkstk_darwin();
  v102 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v98 - v3;
  v111 = type metadata accessor for Track();
  v106 = *(v111 - 8);
  __chkstk_darwin();
  v105 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v98 - v5;
  v115 = type metadata accessor for GenericMusicItem();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v109 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v98 - v7;
  v119 = type metadata accessor for UploadedVideo();
  v113 = *(v119 - 8);
  __chkstk_darwin();
  v112 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v98 - v9;
  v123 = type metadata accessor for UploadedAudio();
  v117 = *(v123 - 8);
  __chkstk_darwin();
  v116 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v98 - v11;
  v127 = type metadata accessor for TVShow();
  v121 = *(v127 - 8);
  __chkstk_darwin();
  v120 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v126 = &v98 - v13;
  v131 = type metadata accessor for TVEpisode();
  v125 = *(v131 - 8);
  __chkstk_darwin();
  v124 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v130 = &v98 - v15;
  v135 = type metadata accessor for Station();
  v129 = *(v135 - 8);
  __chkstk_darwin();
  v128 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v98 - v17;
  v139 = type metadata accessor for Song();
  v133 = *(v139 - 8);
  __chkstk_darwin();
  v132 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = &v98 - v19;
  v143 = type metadata accessor for Playlist();
  v137 = *(v143 - 8);
  __chkstk_darwin();
  v136 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v98 - v21;
  v145 = type metadata accessor for MusicVideo();
  v141 = *(v145 - 8);
  __chkstk_darwin();
  v140 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v98 - v23;
  v25 = type metadata accessor for MusicMovie();
  v144 = *(v25 - 8);
  __chkstk_darwin();
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v98 - v28;
  v30 = type metadata accessor for Album();
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v98 - v34;
  v36 = *(a1 - 8);
  __chkstk_darwin();
  v98 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v98 - v38;
  v39 = __chkstk_darwin();
  v41 = &v98 - v40;
  v146 = v36;
  v42 = v36 + 16;
  v43 = *(v36 + 16);
  v45 = v44;
  v100 = v42;
  v99 = v43;
  (v43)(&v98 - v40, v147, v44, v39);
  if (swift_dynamicCast())
  {
    (*(v31 + 32))(v33, v35, v30);
    v46 = Album.catalogID.getter();
    v48 = v47;
    (*(v31 + 8))(v33, v30);
    if (v48)
    {
      v49 = v46;
    }

    else
    {
      v49 = 0;
    }

    v50 = v45;
    v51 = v146;
    goto LABEL_20;
  }

  v50 = v45;
  if (swift_dynamicCast())
  {
    v52 = v144;
    (*(v144 + 32))(v27, v29, v25);
    v49 = MusicMovie.catalogID.getter();
    v54 = v53;
    (*(v52 + 8))(v27, v25);
LABEL_10:
    if (!v54)
    {
      v49 = 0;
    }

    v51 = v146;
    goto LABEL_20;
  }

  v55 = v145;
  if (swift_dynamicCast())
  {
    v57 = v140;
    v56 = v141;
    (*(v141 + 32))(v140, v24, v55);
    v49 = MusicVideo.catalogID.getter();
    v54 = v58;
    (*(v56 + 8))(v57, v55);
    goto LABEL_10;
  }

  v60 = v142;
  v59 = v143;
  v61 = swift_dynamicCast();
  v51 = v146;
  if (v61)
  {
    v63 = v136;
    v62 = v137;
    (*(v137 + 32))(v136, v60, v59);
    v64 = Playlist.catalogID.getter();
LABEL_17:
    v49 = v64;
    v67 = v65;
    (*(v62 + 8))(v63, v59);
    goto LABEL_18;
  }

  v66 = v138;
  v59 = v139;
  if (swift_dynamicCast())
  {
    v63 = v132;
    v62 = v133;
    (*(v133 + 32))(v132, v66, v59);
    v64 = Song.catalogID.getter();
    goto LABEL_17;
  }

  v70 = v134;
  v69 = v135;
  if (swift_dynamicCast())
  {
    v71 = v129;
    v72 = v128;
    (*(v129 + 32))(v128, v70, v69);
    v49 = Station.id.getter();
    (*(v71 + 8))(v72, v69);
    goto LABEL_20;
  }

  v73 = v130;
  v59 = v131;
  if (swift_dynamicCast())
  {
    v62 = v125;
    v63 = v124;
    (*(v125 + 32))(v124, v73, v59);
    v64 = TVEpisode.catalogID.getter();
    goto LABEL_17;
  }

  v74 = v126;
  v59 = v127;
  if (swift_dynamicCast())
  {
    v62 = v121;
    v63 = v120;
    (*(v121 + 32))(v120, v74, v59);
    v64 = TVShow.catalogID.getter();
    goto LABEL_17;
  }

  v75 = v122;
  v59 = v123;
  if (swift_dynamicCast())
  {
    v62 = v117;
    v63 = v116;
    (*(v117 + 32))(v116, v75, v59);
    v64 = UploadedAudio.catalogID.getter();
    goto LABEL_17;
  }

  v76 = v118;
  v77 = v119;
  if (!swift_dynamicCast())
  {
    v81 = v114;
    v82 = v115;
    if (swift_dynamicCast())
    {
      v83 = v110;
      v84 = v109;
      (*(v110 + 32))(v109, v81, v82);
      GenericMusicItem.innerItem.getter(&v148);
    }

    else
    {
      v85 = v108;
      v82 = v111;
      if (swift_dynamicCast())
      {
        v83 = v106;
        v84 = v105;
        (*(v106 + 32))(v105, v85, v82);
        Track.musicItem.getter(&v148);
      }

      else
      {
        v86 = v104;
        v82 = v107;
        if (!swift_dynamicCast())
        {
          if (one-time initialization token for capabilityUpsell != -1)
          {
            swift_once();
          }

          v88 = type metadata accessor for Logger();
          __swift_project_value_buffer(v88, static Logger.capabilityUpsell);
          v89 = v101;
          v90 = v99;
          v99(v101, v147, v50);
          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            v148 = v147;
            *v93 = 136315138;
            v90(v98, v89, v50);
            v94 = String.init<A>(describing:)();
            v96 = v95;
            (*(v51 + 8))(v89, v50);
            v97 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v94, v96, &v148);

            *(v93 + 4) = v97;
            _os_log_impl(&_mh_execute_header, v91, v92, "Unsupported MusicItem catalogID=%s", v93, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v147);
          }

          else
          {

            (*(v51 + 8))(v89, v50);
          }

          goto LABEL_40;
        }

        v83 = v103;
        v84 = v102;
        (*(v103 + 32))(v102, v86, v82);
        Playlist.Entry.innerItem.getter(&v148);
      }
    }

    v87 = v149;
    if (v149)
    {
      __swift_project_boxed_opaque_existential_0Tm(&v148, v149);
      v49 = MusicItem.catalogID.getter(v87);
      (*(v83 + 8))(v84, v82);
      __swift_destroy_boxed_opaque_existential_0Tm(&v148);
      goto LABEL_20;
    }

    (*(v83 + 8))(v84, v82);
    outlined destroy of TaskPriority?(&v148, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
LABEL_40:
    v49 = 0;
    goto LABEL_20;
  }

  v78 = v113;
  v79 = v112;
  (*(v113 + 32))(v112, v76, v77);
  v49 = UploadedVideo.catalogID.getter();
  v67 = v80;
  (*(v78 + 8))(v79, v77);
LABEL_18:
  if (!v67)
  {
    v49 = 0;
  }

LABEL_20:
  (*(v51 + 8))(v41, v50);
  return v49;
}

uint64_t Logger.capabilityUpsell.unsafeMutableAddressor()
{
  if (one-time initialization token for capabilityUpsell != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.capabilityUpsell);
}

uint64_t closure #1 in static SubscriptionUpsellPresenter.present(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in static SubscriptionUpsellPresenter.present(for:), v6, v5);
}

uint64_t closure #1 in static SubscriptionUpsellPresenter.present(for:)()
{

  v1 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t Playlist.Entry.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v2 = type metadata accessor for Playlist.Entry();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin();
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UploadedVideo();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin();
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UploadedAudio();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin();
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVEpisode();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin();
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Song();
  isa = v10[-1].isa;
  v73 = v10;
  __chkstk_darwin();
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicVideo();
  v74 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicMovie();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Playlist.Entry.InternalItem();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v59 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v59 - v23;
  Playlist.Entry.internalItem.getter();
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v21 + 96))(v24, v20);
    v26 = *(v17 + 32);
    v26(v19, v24, v16);
    v27 = v75;
    v75[3] = v16;
    v27[4] = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type MusicMovie and conformance MusicMovie, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    return (v26)(boxed_opaque_existential_1, v19, v16);
  }

  v30 = v75;
  if (v25 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v21 + 96))(v24, v20);
    v31 = v74[4];
    v31(v15, v24, v13);
    v30[3] = v13;
    v30[4] = &protocol witness table for MusicVideo;
    v32 = __swift_allocate_boxed_opaque_existential_1(v30);
    return (v31)(v32, v15, v13);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v21 + 96))(v24, v20);
    v33 = v73;
    v34 = *(isa + 4);
    v34(v12, v24, v73);
    v30[3] = v33;
    v30[4] = &protocol witness table for Song;
    v35 = __swift_allocate_boxed_opaque_existential_1(v30);
    return (v34)(v35, v12, v33);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v69;
    v37 = *(v70 + 32);
    v38 = v71;
    v37(v69, v24, v71);
    v30[3] = v38;
    v39 = &lazy protocol witness table cache variable for type TVEpisode and conformance TVEpisode;
    v40 = &type metadata accessor for TVEpisode;
    v41 = &protocol conformance descriptor for TVEpisode;
LABEL_13:
    v30[4] = lazy protocol witness table accessor for type URL and conformance URL(v39, v40, v41);
    v42 = __swift_allocate_boxed_opaque_existential_1(v30);
    return (v37)(v42, v36, v38);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v66;
    v37 = *(v67 + 32);
    v38 = v68;
    v37(v66, v24, v68);
    v30[3] = v38;
    v39 = &lazy protocol witness table cache variable for type UploadedAudio and conformance UploadedAudio;
    v40 = &type metadata accessor for UploadedAudio;
    v41 = &protocol conformance descriptor for UploadedAudio;
    goto LABEL_13;
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v60;
    v37 = *(v61 + 32);
    v38 = v62;
    v37(v60, v24, v62);
    v30[3] = v38;
    v39 = &lazy protocol witness table cache variable for type UploadedVideo and conformance UploadedVideo;
    v40 = &type metadata accessor for UploadedVideo;
    v41 = &protocol conformance descriptor for UploadedVideo;
    goto LABEL_13;
  }

  v43 = v20;
  if (one-time initialization token for capabilityUpsell != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.capabilityUpsell);
  v46 = v63;
  v45 = v64;
  v47 = v65;
  (*(v63 + 16))(v65, v1, v64);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v71 = v50;
    v74 = swift_slowAlloc();
    v76 = v74;
    *v50 = 136315138;
    v73 = v48;
    v51 = v59;
    LODWORD(isa) = v49;
    Playlist.Entry.internalItem.getter();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v70 = *(v21 + 8);
    (v70)(v51, v43);
    (*(v46 + 8))(v65, v45);
    v55 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v52, v54, &v76);

    v56 = v71;
    *(v71 + 1) = v55;
    v57 = v73;
    _os_log_impl(&_mh_execute_header, v73, isa, "Unknown Entry internalItem=%s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v74);

    v58 = v70;
  }

  else
  {

    (*(v46 + 8))(v47, v45);
    v58 = *(v21 + 8);
  }

  v30[4] = 0;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  return v58(v24, v43);
}

uint64_t GenericMusicItem.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v98 = a1;
  v1 = type metadata accessor for Playlist.Folder();
  v87 = *(v1 - 8);
  v88 = v1;
  __chkstk_darwin();
  v86 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Playlist();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin();
  v89 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicVideo();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin();
  v92 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicMovie();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin();
  v95 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Station();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin();
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UploadedVideo();
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v70 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UploadedAudio();
  v74 = *(v75 - 8);
  __chkstk_darwin();
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TVShow();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TVEpisode();
  v80 = *(v14 - 8);
  v81 = v14;
  __chkstk_darwin();
  v79 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Song();
  v85 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Album();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v69 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin();
  v28 = &v68 - v27;
  v29 = *(v24 + 16);
  v29(&v68 - v27, v99, v23, v26);
  v30 = (*(v24 + 88))(v28, v23);
  if (v30 == enum case for GenericMusicItem.album(_:))
  {
    (*(v24 + 96))(v28, v23);
    v31 = *(v20 + 32);
    v31(v22, v28, v19);
    v32 = v98;
    v98[3] = v19;
    v32[4] = &protocol witness table for Album;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    return (v31)(boxed_opaque_existential_1, v22, v19);
  }

  v35 = v98;
  if (v30 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v95;
    v37 = *(v96 + 32);
    v38 = v28;
    v39 = v97;
    v37(v95, v38, v97);
    v35[3] = v39;
    v40 = &lazy protocol witness table cache variable for type MusicMovie and conformance MusicMovie;
    v41 = &type metadata accessor for MusicMovie;
    v42 = &protocol conformance descriptor for MusicMovie;
LABEL_5:
    v35[4] = lazy protocol witness table accessor for type URL and conformance URL(v40, v41, v42);
    v43 = __swift_allocate_boxed_opaque_existential_1(v35);
    v44 = v36;
    v45 = v39;
    return v37(v43, v44, v45);
  }

  if (v30 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v24 + 96))(v28, v23);
    v46 = v92;
    v37 = *(v93 + 32);
    v47 = v94;
    v37(v92, v28, v94);
    v48 = &protocol witness table for MusicVideo;
LABEL_10:
    v35[3] = v47;
    v35[4] = v48;
    v43 = __swift_allocate_boxed_opaque_existential_1(v35);
    v44 = v46;
    v45 = v47;
    return v37(v43, v44, v45);
  }

  if (v30 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v28, v23);
    v46 = v89;
    v37 = *(v90 + 32);
    v47 = v91;
    v37(v89, v28, v91);
    v48 = &protocol witness table for Playlist;
    goto LABEL_10;
  }

  if (v30 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v86;
    v37 = *(v87 + 32);
    v49 = v28;
    v39 = v88;
    v37(v86, v49, v88);
    v35[3] = v39;
    v40 = &lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder;
    v41 = &type metadata accessor for Playlist.Folder;
    v42 = &protocol conformance descriptor for Playlist.Folder;
    goto LABEL_5;
  }

  if (v30 == enum case for GenericMusicItem.song(_:))
  {
    (*(v24 + 96))(v28, v23);
    v50 = *(v85 + 32);
    v50(v18, v28, v16);
    v35[3] = v16;
    v35[4] = &protocol witness table for Song;
    v51 = __swift_allocate_boxed_opaque_existential_1(v35);
    return (v50)(v51, v18, v16);
  }

  else
  {
    if (v30 == enum case for GenericMusicItem.station(_:))
    {
      (*(v24 + 96))(v28, v23);
      v46 = v82;
      v37 = *(v83 + 32);
      v47 = v84;
      v37(v82, v28, v84);
      v48 = &protocol witness table for Station;
      goto LABEL_10;
    }

    if (v30 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v80 + 32);
      v36 = v79;
      v52 = v28;
      v39 = v81;
      v37(v79, v52, v81);
      v35[3] = v39;
      v40 = &lazy protocol witness table cache variable for type TVEpisode and conformance TVEpisode;
      v41 = &type metadata accessor for TVEpisode;
      v42 = &protocol conformance descriptor for TVEpisode;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v77 + 32);
      v36 = v76;
      v53 = v28;
      v39 = v78;
      v37(v76, v53, v78);
      v35[3] = v39;
      v40 = &lazy protocol witness table cache variable for type TVShow and conformance TVShow;
      v41 = &type metadata accessor for TVShow;
      v42 = &protocol conformance descriptor for TVShow;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v74 + 32);
      v36 = v73;
      v54 = v28;
      v39 = v75;
      v37(v73, v54, v75);
      v35[3] = v39;
      v40 = &lazy protocol witness table cache variable for type UploadedAudio and conformance UploadedAudio;
      v41 = &type metadata accessor for UploadedAudio;
      v42 = &protocol conformance descriptor for UploadedAudio;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v71 + 32);
      v36 = v70;
      v55 = v28;
      v39 = v72;
      v37(v70, v55, v72);
      v35[3] = v39;
      v40 = &lazy protocol witness table cache variable for type UploadedVideo and conformance UploadedVideo;
      v41 = &type metadata accessor for UploadedVideo;
      v42 = &protocol conformance descriptor for UploadedVideo;
      goto LABEL_5;
    }

    if (one-time initialization token for capabilityUpsell != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.capabilityUpsell);
    v57 = v69;
    (v29)(v69, v99, v23);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v97 = v60;
      v99 = swift_slowAlloc();
      v100 = v99;
      *v60 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type GenericMusicItem and conformance GenericMusicItem, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v57;
      v64 = v63;
      v65 = *(v24 + 8);
      v65(v62, v23);
      v66 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v61, v64, &v100);

      v67 = v97;
      *(v97 + 1) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unsupported GenericMusicItem kind=%s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
    }

    else
    {

      v65 = *(v24 + 8);
      v65(v57, v23);
    }

    v35[4] = 0;
    *v35 = 0u;
    *(v35 + 1) = 0u;
    return (v65)(v28, v23);
  }
}

uint64_t one-time initialization function for capabilityUpsell()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.capabilityUpsell);
  __swift_project_value_buffer(v0, static Logger.capabilityUpsell);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.capabilityUpsell.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for capabilityUpsell != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.capabilityUpsell);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void specialized static SubscriptionUpsellPresenter.present(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v3 = &v81 - v2;
  v4 = type metadata accessor for URLQueryItem();
  v89 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v81 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v10 = &v81 - v9;
  v11 = type metadata accessor for URL();
  v91 = *(v11 - 8);
  v12 = *(v91 + 64);
  __chkstk_darwin();
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v81 - v13;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v14 = v97;
  if (!v97)
  {
    goto LABEL_8;
  }

  v15 = [v97 stringForBagKey:ICURLBagKeyMarketingItemDynamicUIUrl];
  if (!v15)
  {

    goto LABEL_8;
  }

  v86 = v3;
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v11;
  v18 = v17;
  v20 = v19;

  *&v97 = 0x2F2F3A636973756DLL;
  *(&v97 + 1) = 0xE800000000000000;
  v21._countAndFlagsBits = v18;
  v22 = v87;
  v21._object = v20;
  String.append(_:)(v21);

  URL.init(string:)();

  v23 = v91;
  if ((*(v91 + 48))(v10, 1, v22) == 1)
  {

    outlined destroy of TaskPriority?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_8:
    if (one-time initialization token for capabilityUpsell != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.capabilityUpsell);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Could not build marketingURL", v27, 2u);
    }

    return;
  }

  v28 = *(v23 + 32);
  v84 = v23 + 32;
  v83 = v28;
  v28(v90, v10, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
  v29 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v85 = *(v89 + 72);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1004F2EF0;
  v31 = v30;
  v82 = v29;
  URLQueryItem.init(name:value:)();
  outlined init with copy of SubscriptionUpsellPresenter.Placement(a1, &v97);
  if (v98[24] != 253 && v98[24] != 255 && v98[24] != 254)
  {
    outlined destroy of SubscriptionUpsellPresenter.Placement(&v97);
  }

  URLQueryItem.init(name:value:)();

  outlined init with copy of SubscriptionUpsellPresenter.Placement(a1, &v95);
  if (v96[24] < 0xFDu)
  {
    v97 = v95;
    *v98 = *v96;
    *&v98[9] = *&v96[9];
    SubscriptionUpsellPresenter.Placement.Source.kind.getter();
    v34 = v31;
    if (v35)
    {
      URLQueryItem.init(name:value:)();

      v37 = *(v31 + 2);
      v36 = *(v31 + 3);
      if (v37 >= v36 >> 1)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v31);
      }

      v38 = v82;
      *(v34 + 2) = v37 + 1;
      (*(v89 + 32))(&v34[v38 + v37 * v85], v8, v4);
    }

    else
    {
      if (one-time initialization token for capabilityUpsell != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.capabilityUpsell);
      outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(&v97, &v95);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v94 = v81;
        *v42 = 136315138;
        outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(&v95, v92);
        v43 = String.init<A>(describing:)();
        v45 = v44;
        outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v95);
        v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v43, v45, &v94);
        v34 = v31;

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Missing kind for item=%s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v81);
      }

      else
      {

        outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v95);
      }

      v38 = v82;
    }

    outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(&v97, &v95);
    if (v96[24] == 1)
    {
      v47 = v95;
      MPModelObject.bestIdentifier(for:)(2, 1u);
      v49 = v48;

      if (v49)
      {
LABEL_34:
        URLQueryItem.init(name:value:)();

        v51 = *(v34 + 2);
        v50 = *(v34 + 3);
        if (v51 >= v50 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v34);
        }

        v33 = v90;
        outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v97);
        *(v34 + 2) = v51 + 1;
        (*(v89 + 32))(&v34[v38 + v51 * v85], v6, v4);
        v32 = v86;
        goto LABEL_44;
      }
    }

    else
    {
      outlined init with take of CatalogIDProviding(&v95, v92);
      v52 = v93;
      __swift_project_boxed_opaque_existential_0Tm(v92, v93);
      MusicItem.catalogID.getter(v52);
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      if (v54)
      {
        goto LABEL_34;
      }
    }

    if (one-time initialization token for capabilityUpsell != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.capabilityUpsell);
    outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(&v97, &v95);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v94 = v59;
      *v58 = 136315138;
      outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(&v95, v92);
      v60 = String.init<A>(describing:)();
      v62 = v61;
      outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v95);
      v63 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v60, v62, &v94);

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "Missing id for item=%s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
    }

    else
    {

      outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v95);
    }

    outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v97);
    v33 = v90;
    v32 = v86;
    goto LABEL_44;
  }

  outlined destroy of SubscriptionUpsellPresenter.Placement(&v95);
  v32 = v86;
  v33 = v90;
  v34 = v31;
LABEL_44:
  URL.append(queryItems:)(v34);

  if (one-time initialization token for capabilityUpsell != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Logger.capabilityUpsell);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v97 = v68;
    *v67 = 136446210;
    swift_beginAccess();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v69 = v87;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v33;
    v73 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v70, v71, &v97);

    *(v67 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v65, v66, "Will present upsell with URL=%{public}s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    v32 = v86;
  }

  else
  {

    v69 = v87;
    v72 = v33;
  }

  v74 = v91;
  v75 = type metadata accessor for TaskPriority();
  (*(*(v75 - 8) + 56))(v32, 1, 1, v75);
  swift_beginAccess();
  v76 = v88;
  (*(v74 + 16))(v88, v72, v69);
  type metadata accessor for MainActor();
  v77 = static MainActor.shared.getter();
  v78 = v74;
  v79 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v77;
  *(v80 + 24) = &protocol witness table for MainActor;
  v83(v80 + v79, v76, v69);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v32, &async function pointer to partial apply for closure #1 in static SubscriptionUpsellPresenter.present(for:), v80);

  (*(v78 + 8))(v72, v69);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore27SubscriptionUpsellPresenterV9PlacementO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for SubscriptionUpsellPresenter.Placement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SubscriptionUpsellPresenter.Placement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -3 - a2;
    }
  }

  return result;
}

double destructiveInjectEnumTag for SubscriptionUpsellPresenter.Placement(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionUpsellPresenter.Placement.Source(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SubscriptionUpsellPresenter.Placement.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002A9130()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static SubscriptionUpsellPresenter.present(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in static SubscriptionUpsellPresenter.present(for:)(a1, v6, v7, v1 + v5);
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

void variable initialization expression of Artwork.caching(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

id variable initialization expression of Artwork.decoration@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Artwork.Decoration(0);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v3 = v2[5];
  v4 = type metadata accessor for UIView.Corner();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  result = [objc_opt_self() blackColor];
  *&a1[v5] = result;
  *&a1[v2[7]] = 1;
  return result;
}

id variable initialization expression of Artwork.Decoration.fillColor()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.background()
{
  v0 = [objc_opt_self() secondarySystemFillColor];

  return v0;
}

uint64_t variable initialization expression of Artwork.Placeholder.tint()
{
  if (one-time initialization token for defaultTint != -1)
  {
    swift_once();
  }

  v0 = static Artwork.Placeholder.defaultTint;
  v1 = static Artwork.Placeholder.defaultTint;
  return v0;
}

id variable initialization expression of Artwork.Placeholder.symbolConfiguration()
{
  v0 = [objc_opt_self() configurationWithWeight:4];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.View.contentView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of LyricsLoader.operationQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

uint64_t variable initialization expression of Lyrics.StateManager.state@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  v3 = a1 + *(v2 + 20);
  v4 = enum case for ScenePhase.inactive(_:);
  v5 = type metadata accessor for ScenePhase();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v3 + *(v6 + 20)) = 0;
  *(v3 + *(v6 + 24)) = 0;
  v7 = *(v2 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

id variable initialization expression of Lyrics.StateManager.loader()
{
  v0 = objc_allocWithZone(type metadata accessor for LyricsLoader());

  return [v0 init];
}

id variable initialization expression of Lyrics.StateManager.lyricsReportingController()
{
  v0 = objc_allocWithZone(MPCLyricsReportingController);

  return [v0 init];
}

uint64_t variable initialization expression of Lyrics.StateManager.State.loading()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of Lyrics.StateManager.State.display@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = type metadata accessor for ScenePhase();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t variable initialization expression of Lyrics.StateManager.State.Display.scenePhase@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = type metadata accessor for ScenePhase();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 variable initialization expression of NoticePresenter.configuration()
{
  v1 = swift_unknownObjectWeakInit();
  *(v1 + 8) = 2;
  *(v1 + 16) = 0x4024000000000000;
  result = *&NSDirectionalEdgeInsetsZero.top;
  *(v1 + 40) = *&NSDirectionalEdgeInsetsZero.bottom;
  *(v1 + 24) = result;
  return result;
}

double variable initialization expression of CarouselView.pageIndicatorHeight()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  result = 8.0;
  if (v1 == 6)
  {
    return 10.0;
  }

  return result;
}

id variable initialization expression of CircularProgressView.trackLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

uint64_t variable initialization expression of Collaboration.Management.Model._hasNetworkConnectivity()
{
  static ApplicationCapabilities.shared.getter(v1);
  outlined destroy of ApplicationCapabilities(v1);
  return BYTE1(v1[0]);
}

uint64_t variable initialization expression of Collaboration.Management.Model.$__lazy_storage_$_artworkViewModel@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t key path setter for EnvironmentValues.horizontalSizeClass : EnvironmentValues(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  __chkstk_darwin();
  outlined init with copy of TaskPriority?(a1, &v4 - v2, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  return EnvironmentValues.horizontalSizeClass.setter();
}

double variable initialization expression of HitMyRectButton.hitRectAdjustment@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

double variable initialization expression of ImagePicker.DummyImagePickerViewController.$__lazy_storage_$_presentationSource@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

id variable initialization expression of LoadingView.label()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id variable initialization expression of LoadingView.activityIndicator()
{
  v0 = objc_allocWithZone(UIActivityIndicatorView);

  return [v0 initWithActivityIndicatorStyle:100];
}

uint64_t variable initialization expression of NowPlaying.TrackTitleStackView.metadata@<X0>(uint64_t a1@<X8>)
{
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();

  return outlined init with copy of NowPlaying.TrackMetadata(v2, a1);
}

double variable initialization expression of NowPlaying.TrackTitleStackView.titleAttributes@<D0>(void *a1@<X0>, SEL *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:*a1];
  v6 = [objc_opt_self() *a2];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v15 = v5;
  *(&v15 + 1) = v6;
  LOBYTE(v16) = 0;
  BYTE8(v16) = 0;
  *&v17 = 0x4040000000000000;
  *(&v17 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v18 = leading;
  *(&v18 + 1) = bottom;
  *&v19 = trailing;
  v20 = 0uLL;
  *(&v19 + 1) = 1;
  v21[0] = v5;
  v21[1] = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v26 = leading;
  v27 = bottom;
  v28 = trailing;
  v30 = 0;
  v31 = 0;
  v29 = 1;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v15, &v14);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v21);
  v10 = v18;
  a3[2] = v17;
  a3[3] = v10;
  v11 = v20;
  a3[4] = v19;
  a3[5] = v11;
  result = *&v15;
  v13 = v16;
  *a3 = v15;
  a3[1] = v13;
  return result;
}

__n128 variable initialization expression of Gliss.Transition<>.Output.transform3D@<Q0>(uint64_t a1@<X8>)
{
  v1 = *&CATransform3DIdentity.m33;
  *(a1 + 64) = *&CATransform3DIdentity.m31;
  *(a1 + 80) = v1;
  v2 = *&CATransform3DIdentity.m43;
  *(a1 + 96) = *&CATransform3DIdentity.m41;
  *(a1 + 112) = v2;
  v3 = *&CATransform3DIdentity.m13;
  *a1 = *&CATransform3DIdentity.m11;
  *(a1 + 16) = v3;
  result = *&CATransform3DIdentity.m21;
  v5 = *&CATransform3DIdentity.m23;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.symbol@<D0>(uint64_t a1@<X8>)
{
  specialized SymbolButton.Symbol.init()(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

UIFontTextStyle SymbolButton.Title.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = UIFontTextStyleSubheadline;
  *(a1 + 24) = UIFontWeightSemibold;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return UIFontTextStyleSubheadline;
}

double variable initialization expression of SymbolButton.Configuration.material@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.customView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id variable initialization expression of QRCodeOverlayViewController.backgroundView()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.qrCodeView()
{
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.logoView()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

id variable initialization expression of QRCodeOverlayViewController.titleLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.subtitleLabelEffectView()
{
  if (one-time initialization token for blurEffect != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() effectForBlurEffect:static QRCodeOverlayViewController.Specs.blurEffect];
  v1 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v0];

  return v1;
}

id variable initialization expression of QRCodeOverlayViewController.scrollView()
{
  v0 = objc_allocWithZone(UIScrollView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.ContainerView.overlayLayer()
{
  v0 = objc_allocWithZone(CALayer);

  return [v0 init];
}

uint64_t key path getter for EnvironmentValues.effectiveForegroundColor : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.effectiveForegroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t variable initialization expression of ArtworkImage.Placeholder.View._placeholderStyle@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

id variable initialization expression of QRCodeOverlayViewController.ContainerView.imageView(Class *a1)
{
  v1 = [objc_allocWithZone(*a1) init];
  v2 = UIView.forAutolayout.getter();

  return v2;
}

id variable initialization expression of SliderView.feedbackGenerator()
{
  v0 = objc_allocWithZone(UIImpactFeedbackGenerator);

  return [v0 initWithStyle:0];
}

id variable initialization expression of SliderView.trackLayoutGuide()
{
  v0 = objc_allocWithZone(UILayoutGuide);

  return [v0 init];
}

id variable initialization expression of SyncedLyricsViewController.Specs.glowColor()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id variable initialization expression of SliderView.remainingTrackColor()
{
  v0 = [objc_opt_self() systemFillColor];

  return v0;
}

id variable initialization expression of SliderView.trackingColor()
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v1 = static UIColor.MusicTint.normal;

  return v1;
}

id variable initialization expression of SyncedLyricsViewController.contentView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of SymbolButton.materialView()
{
  v4 = 1;
  v0 = type metadata accessor for SymbolButton.MaterialView();
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, "initWithEffect:", 0);
  SymbolButton.MaterialView.apply(_:)(&v4);

  return v1;
}

id variable initialization expression of SymbolButton.backgroundView()
{
  if (one-time initialization token for clear != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *&static SymbolButton.Background.clear;
  v1 = qword_10063F478;
  v2 = qword_10063F480;
  v3 = qword_10063F488;
  v4 = type metadata accessor for SymbolButton.BackgroundView();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v6 = 0;
  *(v6 + 1) = 0x3FF0000000000000;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v1;

  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  SymbolButton.BackgroundView.apply(_:)(v1, v0, v2, v3);
  SymbolButton.BackgroundView.updateBackgroundColor()();

  return v8;
}

uint64_t variable initialization expression of Artwork.Decoration.corner@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of VerticalToggleSlider.packageDefinition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of VerticalToggleSlider.blurEffect()
{
  v0 = [objc_opt_self() effectWithBlurRadius:10.0];

  return v0;
}

void variable initialization expression of VerticalToggleSlider.growTransform(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

id variable initialization expression of WaveformPlayIndicator.colorPalette()
{
  v0 = objc_opt_self();
  v1 = [v0 tintColor];
  v2 = [v0 labelColor];
  v3 = [v2 colorWithAlphaComponent:0.35];

  v4 = [v0 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6 = [v0 labelColor];
  v7 = [v6 colorWithAlphaComponent:0.6];

  return v1;
}

id variable initialization expression of WaveformPlayIndicator.waveform()
{
  v0 = [objc_opt_self() zero];

  return v0;
}

uint64_t variable initialization expression of WaveformPlayIndicator.cannedAnimationAsset()
{
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  return BouncyBarsAsset.init()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t outlined init with copy of NowPlaying.TrackMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double protocol witness for RawRepresentable.rawValue.getter in conformance UIFontWeight@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CGColorRef(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIContentSizeCategory(uint64_t a1)
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIContentSizeCategory and conformance UIContentSizeCategory, type metadata accessor for UIContentSizeCategory, &protocol conformance descriptor for UIContentSizeCategory);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIContentSizeCategory and conformance UIContentSizeCategory, type metadata accessor for UIContentSizeCategory, &protocol conformance descriptor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontTextStyle(uint64_t a1)
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontTextStyle and conformance UIFontTextStyle, type metadata accessor for UIFontTextStyle, &protocol conformance descriptor for UIFontTextStyle);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontTextStyle and conformance UIFontTextStyle, type metadata accessor for UIFontTextStyle, &protocol conformance descriptor for UIFontTextStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontWeight(uint64_t a1)
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight, &protocol conformance descriptor for UIFontWeight);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight, &protocol conformance descriptor for UIFontWeight);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorFeatureKey(uint64_t a1)
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey, &protocol conformance descriptor for UIFontDescriptorFeatureKey);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey, &protocol conformance descriptor for UIFontDescriptorFeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t _sSo29UIFontDescriptorAttributeNameas35_HasCustomAnyHashableRepresentationSCsACP03_tofgH0s0gH0VSgyFTW_0(uint64_t a1)
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&_sSo29UIFontDescriptorAttributeNameaABSHSCWL_0, _sSo29UIFontDescriptorAttributeNameaMa_0, &_sSo29UIFontDescriptorAttributeNameaSHSCMc_0);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&_sSo29UIFontDescriptorAttributeNameaABs20_SwiftNewtypeWrapperSCWL_0, _sSo29UIFontDescriptorAttributeNameaMa_0, &_sSo29UIFontDescriptorAttributeNameas20_SwiftNewtypeWrapperSCMc_0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t _sSo18NSNotificationNameas35_HasCustomAnyHashableRepresentationSCsACP03_todeF0s0eF0VSgyFTW_0(uint64_t a1)
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&_sSo18NSNotificationNameaABSHSCWL_0, _sSo18NSNotificationNameaMa_0, &_sSo18NSNotificationNameaSHSCMc_0);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&_sSo18NSNotificationNameaABs20_SwiftNewtypeWrapperSCWL_0, _sSo18NSNotificationNameaMa_0, &_sSo18NSNotificationNameas20_SwiftNewtypeWrapperSCMc_0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CAGradientLayerType(uint64_t a1)
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type CAGradientLayerType and conformance CAGradientLayerType, type metadata accessor for CAGradientLayerType, &protocol conformance descriptor for CAGradientLayerType);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type CAGradientLayerType and conformance CAGradientLayerType, type metadata accessor for CAGradientLayerType, &protocol conformance descriptor for CAGradientLayerType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIImagePickerControllerInfoKey(uint64_t a1)
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIImagePickerControllerInfoKey and conformance UIImagePickerControllerInfoKey, type metadata accessor for UIImagePickerControllerInfoKey, &protocol conformance descriptor for UIImagePickerControllerInfoKey);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIImagePickerControllerInfoKey and conformance UIImagePickerControllerInfoKey, type metadata accessor for UIImagePickerControllerInfoKey, &protocol conformance descriptor for UIImagePickerControllerInfoKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGColorRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

void protocol witness for Hashable.hash(into:) in conformance UIFontWeight()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

__n128 __swift_memcpy128_8_0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for CATransform3D(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CATransform3D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy32_8_0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_8_0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t _s10Foundation3URLVSgWOb_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation3URLVSgWOh_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Artwork.content.getter()
{
  v1 = *v0;
  outlined copy of Artwork.Content?(*v0, v0[1]);
  return v1;
}

id outlined copy of Artwork.Content?(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

void Artwork.content.setter(void *a1, void *a2)
{
  outlined consume of Artwork.Content?(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
}

void outlined consume of Artwork.Content?(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t Artwork.size.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = result;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t Artwork.decoration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Artwork(0) + 28);

  return outlined assign with take of Artwork.Decoration(a1, v3);
}

uint64_t outlined assign with take of Artwork.Decoration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Artwork.placeholderViewProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Artwork(0) + 36));
  result = swift_unknownObjectRelease();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double Artwork.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_1004F2ED0;
  *(a1 + 64) = 0;
  v2 = type metadata accessor for Artwork(0);
  v3 = (a1 + v2[7]);
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v5 = v4[5];
  v6 = type metadata accessor for UIView.Corner();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v7 = v4[6];
  *&v3[v7] = [objc_opt_self() blackColor];
  *&v3[v4[7]] = 1;
  v8 = (a1 + v2[8]);
  result = 0.0;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  v10 = (a1 + v2[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t static Artwork.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = xmmword_1004F2ED0;
  *(a2 + 64) = 0;
  v4 = type metadata accessor for Artwork(0);
  v5 = (a2 + v4[7]);
  v6 = type metadata accessor for Artwork.Decoration(0);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v7 = v6[5];
  v8 = type metadata accessor for UIView.Corner();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = v6[6];
  *&v5[v9] = [objc_opt_self() blackColor];
  *&v5[v6[7]] = 1;
  v10 = (a2 + v4[8]);
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  v11 = (a2 + v4[9]);
  *v11 = 0;
  v11[1] = 0;
  return a1(a2);
}

char *protocol witness for UIContentConfiguration.makeContentView() in conformance Artwork(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Artwork.Decoration(v2, v4, type metadata accessor for Artwork);
  v5 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v6 = Artwork.View.init(configuration:)(v4);
  lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork.View and conformance Artwork.View, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
  return v6;
}

char *Artwork.View.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  *v7 = 0;
  v7[8] = -1;
  outlined init with copy of Artwork.Decoration(a1, &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration], type metadata accessor for Artwork);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v8 setContentMode:4];
  v9 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  v10 = [*&v8[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] layer];
  [v10 setMinificationFilter:kCAFilterTrilinear];

  v11 = [*&v8[v9] layer];
  [v11 setMagnificationFilter:kCAFilterTrilinear];

  [*&v8[v9] setContentMode:2];
  [*&v8[v9] setClipsToBounds:1];
  [*&v8[v9] setAccessibilityIgnoresInvertColors:1];
  [v8 addSubview:*&v8[v9]];
  Artwork.View.configurePlaceholder()();
  Artwork.View.applyDecoration()();
  Artwork.View.reloadArtworkCatalogIfNeeded()();

  outlined destroy of Artwork(a1, type metadata accessor for Artwork);
  return v8;
}

void Artwork.View.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind;
  *v4 = 0;
  *(v4 + 8) = -1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void Artwork.View.typedConfiguration.didset(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v6, v5, type metadata accessor for Artwork);
  v7 = specialized static Artwork.== infix(_:_:)(v5, a1);
  outlined destroy of Artwork(v5, type metadata accessor for Artwork);
  if (!v7)
  {
    Artwork.View.configurePlaceholder()();
    Artwork.View.applyDecoration()();
    Artwork.View.reloadArtworkCatalogIfNeeded()();
    v8 = *(v3 + 36);
    v9 = *(a1 + v8);
    v10 = *&v6[v8];
    if (v9)
    {
      if (v9 == v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    v11 = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
    if (v11)
    {
    }

    else
    {
      v12 = [v1 artworkCatalog];
      if (v12)
      {

LABEL_12:
        Artwork.View.configurePlaceholder()();
        return;
      }
    }

    if (*v6)
    {
      return;
    }

    goto LABEL_12;
  }
}

Swift::Void __swiftcall Artwork.View.invalidatePlaceholderView()()
{
  v1 = [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v1)
  {

    goto LABEL_3;
  }

  v3 = [v0 artworkCatalog];
  if (!v3)
  {
LABEL_3:
    v2 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v2])
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_7:
  Artwork.View.configurePlaceholder()();
}

double Artwork.View.typedConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v1 + v3, a1, type metadata accessor for Artwork);
  return result;
}

uint64_t Artwork.View.typedConfiguration.setter(uint64_t a1)
{
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v1 + v5, v4, type metadata accessor for Artwork);
  swift_beginAccess();
  outlined assign with copy of Artwork(a1, v1 + v5);
  swift_endAccess();
  Artwork.View.typedConfiguration.didset(v4);
  outlined destroy of Artwork(a1, type metadata accessor for Artwork);
  return outlined destroy of Artwork(v4, type metadata accessor for Artwork);
}

void (*Artwork.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Artwork(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v1 + v8, v7, type metadata accessor for Artwork);
  return Artwork.View.typedConfiguration.modify;
}

void Artwork.View.typedConfiguration.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    outlined init with copy of Artwork.Decoration(*(*a1 + 12), v6, type metadata accessor for Artwork);
    outlined init with copy of Artwork.Decoration(v7 + v4, v5, type metadata accessor for Artwork);
    swift_beginAccess();
    outlined assign with copy of Artwork(v6, v7 + v4);
    swift_endAccess();
    Artwork.View.typedConfiguration.didset(v5);
    outlined destroy of Artwork(v5, type metadata accessor for Artwork);
  }

  else
  {
    outlined init with copy of Artwork.Decoration(v7 + v4, v6, type metadata accessor for Artwork);
    swift_beginAccess();
    outlined assign with copy of Artwork(v3, v7 + v4);
    swift_endAccess();
    Artwork.View.typedConfiguration.didset(v6);
  }

  outlined destroy of Artwork(v6, type metadata accessor for Artwork);
  outlined destroy of Artwork(v3, type metadata accessor for Artwork);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

id Artwork.View.currentImage.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView) image];

  return v1;
}

uint64_t Artwork.View.imageDidChangeHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t Artwork.View.imageDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6, v7);
}

void Artwork.View.configurePlaceholder()()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v3 = type metadata accessor for Artwork(0);
  v4 = &v2[*(v3 + 36)];
  if (*v4)
  {
    v5 = *(v4 + 1);
    v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v7 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
    if (v7 != 255 && (v7 & 1) != 0)
    {
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v5 + 8);
      swift_unknownObjectRetain();
      outlined copy of Artwork.View.PlaceholderKind?(v8, v7);
      v11 = v10(v8, ObjectType, v5);
      v12 = *v6;
      *v6 = v11;
      v13 = v6[8];
      v6[8] = 1;
      v14 = v11;
      Artwork.View.placeholderKind.didset(v12, v13);
      outlined consume of Artwork.View.PlaceholderKind?(v12, v13);
      swift_unknownObjectRelease();

      v15 = v8;
      v16 = v7;
LABEL_20:
      outlined consume of Artwork.View.PlaceholderKind?(v15, v16);
      goto LABEL_27;
    }

    v17 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    swift_unknownObjectRetain();
    v18 = [v17 image];
    if (v18)
    {
    }

    else
    {
      v34 = [v1 artworkCatalog];
      if (v34)
      {

        goto LABEL_18;
      }
    }

    if (*v2)
    {
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_18:
    v35 = swift_getObjectType();
    v36 = (*(v5 + 8))(0, v35, v5);
    v37 = *v6;
    *v6 = v36;
    v38 = v6[8];
    v6[8] = 1;
    v39 = v36;
    Artwork.View.placeholderKind.didset(v37, v38);
    outlined consume of Artwork.View.PlaceholderKind?(v37, v38);
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v19 = &v2[*(v3 + 32)];
  v20 = *(v19 + 3);
  if (!v20)
  {
    v40 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v41 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    *v40 = 0;
    v42 = v40[8];
    v40[8] = -1;
    Artwork.View.placeholderKind.didset(v41, v42);
    v15 = v41;
    v16 = v42;
    goto LABEL_20;
  }

  v22 = *v19;
  v21 = *(v19 + 1);
  v23 = *(v19 + 2);
  v24 = *(v19 + 4);
  v25 = *(v19 + 5);
  *&v82 = *v19;
  *(&v82 + 1) = v21;
  *&v83 = v23;
  *(&v83 + 1) = v20;
  *&v84 = v24;
  *(&v84 + 1) = v25;
  v26 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v27 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v27 == 255 || (v27 & 1) != 0)
  {
    v28 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v29 = v23;
    v30 = v20;
    v31 = v22;
    v32 = v21;
    v33 = [v28 image];
    if (v33)
    {
    }

    else
    {
      v52 = [v1 artworkCatalog];
      if (v52)
      {

        goto LABEL_26;
      }
    }

    if (*v2)
    {

      goto LABEL_27;
    }

LABEL_26:
    v53 = type metadata accessor for Artwork.Placeholder.View();
    v54 = objc_allocWithZone(v53);
    v55 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
    v56 = objc_allocWithZone(UIImageView);
    v57 = v31;
    v79 = v32;
    v58 = v29;
    v59 = v30;
    *&v54[v55] = [v56 init];
    v60 = &v54[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
    v61 = v84;
    *(v60 + 1) = v83;
    *(v60 + 2) = v61;
    *v60 = v82;
    v80.receiver = v54;
    v80.super_class = v53;
    v62 = v57;
    v63 = v79;
    v64 = v58;
    v65 = v59;
    v66 = objc_msgSendSuper2(&v80, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v66 addSubview:*&v66[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView]];
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    Artwork.Placeholder.View.configurationDidChange(_:)(&v85);

    v67 = v63;
    v68 = v62;
    v69 = *v26;
    *v26 = v66;
    v70 = v26[8];
    v26[8] = 0;
    v71 = v66;
    Artwork.View.placeholderKind.didset(v69, v70);
    outlined consume of Artwork.View.PlaceholderKind?(v69, v70);

    goto LABEL_27;
  }

  v43 = *v26;
  v44 = *v26 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v45 = *(v44 + 16);
  v85 = *v44;
  v86 = v45;
  v76 = *(v44 + 8);
  v77 = *v44;
  v74 = *(v44 + 24);
  v75 = *(v44 + 16);
  v72 = *(v44 + 40);
  v73 = *(v44 + 32);
  v89 = *(&v85 + 1);
  v90 = v85;
  v78 = *(&v45 + 1);
  v88 = v45;
  v87 = *(v44 + 32);
  v46 = v82;
  v47 = v84;
  *(v44 + 16) = v83;
  *(v44 + 32) = v47;
  *v44 = v46;
  outlined copy of Artwork.Placeholder?(v22, v21, v23, v20);
  outlined copy of Artwork.View.PlaceholderKind?(v43, v27);
  v48 = v23;
  v49 = v20;
  v50 = v22;
  v51 = v21;
  if (!specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)(&v82, &v85))
  {
    v81[0] = v77;
    v81[1] = v76;
    v81[2] = v75;
    v81[3] = v74;
    v81[4] = v73;
    v81[5] = v72;
    Artwork.Placeholder.View.configurationDidChange(_:)(v81);
  }

  outlined consume of Artwork.View.PlaceholderKind?(v43, v27);
  outlined destroy of TaskPriority?(&v90, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined destroy of TaskPriority?(&v89, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined destroy of TaskPriority?(&v88, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);

LABEL_27:
  Artwork.View.updateArtworkPlaceholderVisibility()();
}

Swift::Void __swiftcall Artwork.View.layoutSubviews()()
{
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  [v0 bounds];
  v6.n128_u64[0] = v5;
  v8.n128_u64[0] = v7;
  Artwork.View.fittingImageSize(in:)(v6, v8);
  v10 = v9;
  v12 = v11;
  v13 = [v0 contentMode];
  if (v13 > 5)
  {
    if (v13 == 6)
    {
      [v0 bounds];
      MaxY = CGRectGetMaxY(v33);
      v34.origin.x = v2;
      v34.origin.y = v4;
      v34.size.width = v10;
      v34.size.height = v12;
      v4 = MaxY - CGRectGetHeight(v34);
    }

    else if (v13 == 8)
    {
      [v0 bounds];
      MaxX = CGRectGetMaxX(v31);
      v32.origin.x = v2;
      v32.origin.y = v4;
      v32.size.width = v10;
      v32.size.height = v12;
      v2 = MaxX - CGRectGetWidth(v32);
    }
  }

  v16 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  CGRect.centeringAlong(axes:in:)(v2, v4, v10, v12);
  [v16 setFrame:?];
  if (v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8] != 255)
  {
    [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind] setFrame:{v2, v4, v10, v12}];
  }

  v17 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v18 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v19 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 8];
  v20 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 16];
  v21 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 24];
  [v0 bounds];
  v36.origin.x = v22;
  v36.origin.y = v23;
  v36.size.width = v24;
  v36.size.height = v25;
  v35.origin.x = v18;
  v35.origin.y = v19;
  v35.size.width = v20;
  v35.size.height = v21;
  if (!CGRectEqualToRect(v35, v36))
  {
    [v0 bounds];
    *v17 = v26;
    *(v17 + 1) = v27;
    *(v17 + 2) = v28;
    *(v17 + 3) = v29;
    Artwork.View.reloadArtworkCatalogIfNeeded()();
  }

  Artwork.View.applyDecoration()();
}

void Artwork.View.fittingImageSize(in:)(__n128 a1, __n128 a2)
{
  if (a1.n128_f64[0] == 0.0 && a2.n128_f64[0] == 0.0)
  {
    v3 = [v2 artworkCatalog];
    if (v3)
    {
      v4 = v3;
      MPArtworkCatalog.originalSize.getter();
    }

    return;
  }

  CGSize.aspectRatio.getter();
  v6 = v5;
  v7 = [*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v7)
  {
    v8 = v7;
    [v7 size];
  }

  else
  {
    v10 = [v2 artworkCatalog];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    MPArtworkCatalog.originalSize.getter();
    v13 = v12;

    if (v13)
    {
      return;
    }
  }

  CGSize.aspectRatio.getter();
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    CGSize.aspectRatio.getter();
    if (vabdd_f64(v6, v9) > 0.1)
    {
      CGSize.aspectRatio.getter();
    }
  }
}

id Artwork.View.reloadArtworkCatalogIfNeeded()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 artworkCatalog];
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = v5;
  }

  v7 = Optional<A>.isArtworkVisuallyIdentical(to:)(v5, v3);

  if ((v7 & 1) == 0)
  {
    [v1 clearArtworkCatalogs];
    Artwork.View.apply(artworkImage:)(0);
  }

  [v1 bounds];
  if (v9 != 0.0 || v8 != 0.0)
  {
    v10 = *v4;
    if (*v4)
    {
      outlined init with copy of TaskPriority?((v4 + 16), v48, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
      outlined init with copy of TaskPriority?(v48, &v46, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
      if (v47)
      {
        v11 = v10;

        outlined destroy of Artwork.Caching(&v46);
      }

      else
      {
        v13 = v10;
        outlined destroy of TaskPriority?(&v46, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
      }

      v14 = String._bridgeToObjectiveC()();

      outlined init with copy of TaskPriority?(v48, &v46, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
      if (v47)
      {
        Strong = swift_weakLoadStrong();
        outlined destroy of Artwork.Caching(&v46);
      }

      else
      {
        outlined destroy of TaskPriority?(&v46, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
        Strong = 0;
      }

      [v10 setCacheIdentifier:v14 forCacheReference:Strong];

      swift_unknownObjectRelease();
      v16 = [v1 traitCollection];
      [v16 displayScale];
      v18 = v17;

      [v10 setDestinationScale:v18];
      v19 = v4[48];
      if (v19 == 255)
      {
        [v1 bounds];
        v21 = v20;
        v23 = v22;
      }

      else
      {
        v24 = *(v4 + 7);
        v25 = *(v4 + 5);
        v26 = v4[64];
        [v1 bounds];
        v28 = v27;
        v30 = v29;
        Artwork.Size.Dimension.value(in:)(v27, v29, v25, v19);
        v32 = v31;
        Artwork.Size.Dimension.value(in:)(v28, v30, v24, v26);
        v23 = v33;
        v21 = v32;
      }

      [v10 setFittingSize:{v21, v23}];
      [v10 setRenderHint:{objc_msgSend(v10, "renderHint") | 1}];
      v34 = [v1 artworkCatalog];
      if (v34)
      {
        v35 = v34;
        [v34 scaledFittingSize];
        v37 = v36;
        v39 = v38;

        [v10 scaledFittingSize];
        if (v37 == v41 && v39 == v40)
        {
          v42 = [v1 artworkCatalog];
          if (v42)
          {

            return outlined destroy of TaskPriority?(v48, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
          }
        }
      }

      else
      {
        [v10 scaledFittingSize];
      }

      MPArtworkCatalog.expectedRatio.getter();
      if ((v43 & 1) == 0)
      {
        [v1 setNeedsLayout];
      }

      v46 = v1;
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = ObjectType;
      MPArtworkCatalog.setDestination<A>(_:for:completion:)(&v46, 1, partial apply for closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded(), v45, ObjectType);

      return outlined destroy of TaskPriority?(v48, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
    }
  }

  result = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (result)
  {

    Artwork.View.apply(artworkImage:)(0);
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t Artwork.View.applyDecoration()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
  __chkstk_darwin();
  v91 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = (&v88 - v3);
  __chkstk_darwin();
  v101 = &v88 - v4;
  __chkstk_darwin();
  v97 = &v88 - v5;
  __chkstk_darwin();
  v94 = (&v88 - v6);
  __chkstk_darwin();
  v98 = &v88 - v7;
  __chkstk_darwin();
  v93 = &v88 - v8;
  __chkstk_darwin();
  v10 = (&v88 - v9);
  __chkstk_darwin();
  v12 = &v88 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  __chkstk_darwin();
  v90 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v88 - v14;
  __chkstk_darwin();
  v92 = &v88 - v16;
  __chkstk_darwin();
  v18 = &v88 - v17;
  v19 = type metadata accessor for Artwork.Decoration(0);
  v104 = *(v19 - 1);
  *&v20 = __chkstk_darwin().n128_u64[0];
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v95 frame];
  v24 = v23;
  v26 = v25;
  v27 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v99 = type metadata accessor for Artwork(0);
  v100 = v27;
  v28 = &v27[v99[7]];
  v105 = v22;
  outlined init with copy of Artwork.Decoration(v28, v22, type metadata accessor for Artwork.Decoration);
  v29 = *(v28 + v19[7]);
  [v1 bounds];
  if ((v29 & 1) != 0 && (v34 = v30, v35 = v31, v36 = v32, v37 = v33, Width = CGRectGetWidth(*&v30), v33 = v37, v32 = v36, v31 = v35, v39 = Width, v30 = v34, v24 < v39) || (v29 & 2) != 0 && v26 < CGRectGetHeight(*&v30))
  {
    v40 = v105;
    outlined init with copy of TaskPriority?(&v105[v19[5]], v18, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
    v41 = type metadata accessor for UIView.Corner();
    v42 = (*(*(v41 - 8) + 48))(v18, 1, v41) != 1;
    outlined destroy of TaskPriority?(v18, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
    v43 = v42;
    v44 = 1;
    [v1 setClipsToBounds:v43];
    v45 = *(v40 + v19[6]);
  }

  else
  {
    [v1 setClipsToBounds:0];
    v45 = [objc_opt_self() clearColor];
    v44 = 0;
  }

  [v1 setBackgroundColor:v45];

  v46 = v104;
  v96 = v15;
  v103 = v44;
  if (v44)
  {
    outlined init with copy of Artwork.Decoration(v105, v12, type metadata accessor for Artwork.Decoration);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v102 = v46[7];
  v102(v12, v47, 1, v19);
  outlined init with copy of TaskPriority?(v12, v10, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
  v104 = v46[6];
  if ((v104)(v10, 1, v19) == 1)
  {
    v48 = v1;
    outlined destroy of TaskPriority?(v10, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v49 = *v10;
    v50 = v10[1];
    v51 = v10[2];
    v52 = v51;
    v53 = v1;
    outlined destroy of Artwork(v10, type metadata accessor for Artwork.Decoration);
  }

  v54 = v98;
  UIView.border.setter(v49, v50, v51);
  v55 = v93;
  outlined init with copy of TaskPriority?(v12, v93, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
  v56 = v104;
  if ((v104)(v55, 1, v19) == 1)
  {
    outlined destroy of TaskPriority?(v55, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
    v57 = type metadata accessor for UIView.Corner();
    (*(*(v57 - 8) + 56))(v92, 1, 1, v57);
  }

  else
  {
    outlined init with copy of TaskPriority?(v55 + v19[5], v92, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
    outlined destroy of Artwork(v55, type metadata accessor for Artwork.Decoration);
  }

  v58 = v95;
  UIView.corner.setter();

  outlined destroy of TaskPriority?(v12, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
  if (v103)
  {
    v59 = 1;
  }

  else
  {
    outlined init with copy of Artwork.Decoration(v105, v54, type metadata accessor for Artwork.Decoration);
    v59 = 0;
  }

  v60 = v94;
  v102(v54, v59, 1, v19);
  outlined init with copy of TaskPriority?(v54, v60, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
  if (v56(v60, 1, v19) == 1)
  {
    v61 = v58;
    outlined destroy of TaskPriority?(v60, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
    v62 = 0;
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v62 = *v60;
    v63 = v60[1];
    v64 = v60[2];
    v65 = v64;
    v66 = v58;
    outlined destroy of Artwork(v60, type metadata accessor for Artwork.Decoration);
  }

  UIView.border.setter(v62, v63, v64);
  v67 = v97;
  outlined init with copy of TaskPriority?(v54, v97, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
  v68 = v104;
  if ((v104)(v67, 1, v19) == 1)
  {
    outlined destroy of TaskPriority?(v67, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
    v69 = type metadata accessor for UIView.Corner();
    (*(*(v69 - 8) + 56))(v96, 1, 1, v69);
  }

  else
  {
    outlined init with copy of TaskPriority?(v67 + v19[5], v96, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
    outlined destroy of Artwork(v67, type metadata accessor for Artwork.Decoration);
  }

  UIView.corner.setter();

  outlined destroy of TaskPriority?(v54, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
  v70 = &v100[v99[9]];
  v74 = *v70 && (v71 = *(v70 + 1), ObjectType = swift_getObjectType(), v73 = *(v71 + 16), swift_unknownObjectRetain(), LOBYTE(v71) = v73(ObjectType, v71), swift_unknownObjectRelease(), (v71 & 1) != 0) && *&v100[v99[8] + 24] == 0;
  v75 = v101;
  if ((v103 | v74))
  {
    v76 = 1;
  }

  else
  {
    outlined init with copy of Artwork.Decoration(v105, v101, type metadata accessor for Artwork.Decoration);
    v76 = 0;
  }

  v102(v75, v76, 1, v19);
  v77 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v77 != 255)
  {
    v78 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v79 = v89;
    outlined init with copy of TaskPriority?(v75, v89, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
    if (v68(v79, 1, v19) == 1)
    {
      v80 = v78;
      outlined destroy of TaskPriority?(v79, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
      v81 = 0;
      v82 = 0;
      v83 = 0;
    }

    else
    {
      v81 = *v79;
      v82 = v79[1];
      v83 = v79[2];
      outlined copy of Artwork.View.PlaceholderKind?(v78, v77);
      outlined copy of Artwork.View.PlaceholderKind?(v78, v77);
      v84 = v83;
      outlined destroy of Artwork(v79, type metadata accessor for Artwork.Decoration);
    }

    UIView.border.setter(v81, v82, v83);
    v75 = v101;
    v85 = v91;
    outlined init with copy of TaskPriority?(v101, v91, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
    if (v68(v85, 1, v19) == 1)
    {
      outlined destroy of TaskPriority?(v85, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
      v86 = type metadata accessor for UIView.Corner();
      (*(*(v86 - 8) + 56))(v90, 1, 1, v86);
    }

    else
    {
      outlined init with copy of TaskPriority?(v85 + v19[5], v90, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
      outlined destroy of Artwork(v85, type metadata accessor for Artwork.Decoration);
    }

    UIView.corner.setter();
    outlined consume of Artwork.View.PlaceholderKind?(v78, v77);
    outlined consume of Artwork.View.PlaceholderKind?(v78, v77);
  }

  outlined destroy of TaskPriority?(v75, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd, &_s11MusicCoreUI7ArtworkV10DecorationVSgMR);
  return outlined destroy of Artwork(v105, type metadata accessor for Artwork.Decoration);
}

void Artwork.View.intrinsicContentSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  if (*(v1 + 48) == 2 && *(v1 + 64) == 2)
  {
    v3.n128_u64[0] = *(v1 + 56);
    v2.n128_u64[0] = *(v1 + 40);
  }

  else
  {
    v2.n128_u64[0] = 0;
    v3.n128_u64[0] = 0;
  }

  Artwork.View.fittingImageSize(in:)(v2, v3);
}

void Artwork.View.sizeThatFits(_:)(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  v8 = *(v5 + 48);
  if (v8 == 255)
  {
    v6.n128_f64[0] = a1;
    v7.n128_f64[0] = a2;
    Artwork.View.fittingImageSize(in:)(v6, v7);
  }

  else
  {
    v9 = *(v5 + 56);
    v10 = *(v5 + 40);
    v11 = *(v5 + 64);
    Artwork.Size.Dimension.value(in:)(a1, a2, v10, v8);
    Artwork.Size.Dimension.value(in:)(a1, a2, v9, v11);
  }
}

double Artwork.Size.computedSize(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = a4;
  Artwork.Size.Dimension.value(in:)(a5, a6, a1, a2);
  v11 = v10;
  Artwork.Size.Dimension.value(in:)(a5, a6, a3, v6);
  return v11;
}

uint64_t Artwork.View.apply(artworkImage:)(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v2 setImage:a1];
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  if (*v3 && (v4 = *(v3 + 1)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  v6 = v5;
  [v2 setBackgroundColor:v5];

  v7 = [v2 image];
  if (v7)
  {

    goto LABEL_7;
  }

  v8 = [v1 artworkCatalog];
  if (!v8)
  {
LABEL_7:
    if (*v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_11:
  Artwork.View.configurePlaceholder()();
LABEL_12:
  Artwork.View.updateArtworkPlaceholderVisibility()();
  Artwork.View.applyDecoration()();
  v9 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 1);

    v11(v13);
    return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v11, v12);
  }

  return result;
}

void closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded()(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v19 = v6;
  v9 = [a2 imageRepresentation];
  if (v9)
  {
    v18 = v9;
    v10 = [v9 image];
    if (v10)
    {
      v11 = v10;
      if (([v18 isImagePrepared] & 1) == 0)
      {
        v14 = swift_allocObject();
        v14[2] = a3;
        v14[3] = v11;
        v14[4] = v8;
        aBlock[4] = partial apply for closure #1 in closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded();
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MPAVRoute?) -> ();
        aBlock[3] = &block_descriptor_47;
        v15 = _Block_copy(aBlock);
        v16 = v19;
        v17 = v11;

        [v17 prepareForDisplayWithCompletionHandler:v15];

        _Block_release(v15);
        return;
      }

      v12 = v11;
      Artwork.View.apply(artworkImage:)(v11);

      [v8 setNeedsLayout];
      v13 = v18;
      goto LABEL_8;
    }
  }

  Artwork.View.apply(artworkImage:)(0);
  [v8 setNeedsLayout];
  v13 = v19;
LABEL_8:
}

uint64_t closure #1 in closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded()(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded();
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_56_2;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a3;
  v18 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_0, &_sSay8Dispatch0A13WorkItemFlagsVGMR_0);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void closure #1 in closure #1 in closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded()(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = [a4 artworkCatalog];
  v9 = v8;
  if (!Strong)
  {
    if (v8)
    {

      return;
    }

LABEL_7:
    if (a2)
    {
      v11 = a2;
      Artwork.View.apply(artworkImage:)(a2);
    }

    else
    {
      if (one-time initialization token for artwork != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.artwork);
      v13 = a3;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to prepare image: %@", v16, 0xCu);
        outlined destroy of TaskPriority?(v17, &_sSo8NSObjectCSgMd_1, &_sSo8NSObjectCSgMR_1);
      }

      Artwork.View.apply(artworkImage:)(v13);
    }

    [a4 setNeedsLayout];
    return;
  }

  if (!v8)
  {

    return;
  }

  type metadata accessor for UIAction(0, &_sSo16MPArtworkCatalogCML_0, MPArtworkCatalog_ptr);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    goto LABEL_7;
  }
}

void Artwork.View.updateArtworkPlaceholderVisibility()()
{
  v1 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v2 = v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v2 != 255)
  {
    v3 = *v1;
    v4 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v5 = *v1;
    v6 = [v4 image];
    if (v6)
    {
    }

    else
    {
      v9 = [v0 artworkCatalog];
      if (v9)
      {

        goto LABEL_8;
      }
    }

    v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v7])
    {
      v8 = 1;
LABEL_11:
      [v5 setHidden:v8];
      outlined consume of Artwork.View.PlaceholderKind?(v3, v2);
      return;
    }

LABEL_8:
    v10 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
    swift_beginAccess();
    v11 = type metadata accessor for Artwork(0);
    if (*&v10[*(v11 + 32) + 24])
    {
      v8 = 0;
    }

    else
    {
      v8 = *&v10[*(v11 + 36)] == 0;
    }

    goto LABEL_11;
  }
}

void Artwork.View.placeholderKind.didset(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v6 = *&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v7 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v3 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  if (v7 == 255 || v6 == 0)
  {
    outlined copy of Artwork.View.PlaceholderKind?(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    outlined copy of Artwork.View.PlaceholderKind?(a1, v3);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    if (v8)
    {
      v10 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
      type metadata accessor for UIAction(0, &_sSo6UIViewCML_0, UIView_ptr);
      outlined copy of Artwork.View.PlaceholderKind?(v6, v10);
      outlined copy of Artwork.View.PlaceholderKind?(a1, v3);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        return;
      }

      goto LABEL_16;
    }

    outlined copy of Artwork.View.PlaceholderKind?(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    outlined copy of Artwork.View.PlaceholderKind?(a1, v3);
    v8 = v6;
  }

LABEL_16:
  if (v3 != -1)
  {
    [a1 removeFromSuperview];
  }

  v12 = v5[8];
  if (v12 != 255)
  {
    v13 = *v5;
    v14 = *v5;
    v15 = v14;
    if ((v12 & 1) == 0)
    {
      [v14 setClipsToBounds:1];
    }

    [v2 addSubview:v15];
    [v2 setNeedsLayout];

    outlined consume of Artwork.View.PlaceholderKind?(v13, v12);
  }
}

id CTRunRef.PartialRunView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

uint64_t (*protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Artwork.View.typedConfiguration.modify(v2);
  return protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View;
}

void protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double protocol witness for UIContentView.configuration.getter in conformance Artwork.View@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Artwork(0);
  a1[4] = lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v4 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v1 + v4, boxed_opaque_existential_1, type metadata accessor for Artwork);
  return result;
}

uint64_t specialized MusicUIContentView.configuration.setter(void *a1)
{
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin();
  v6 = v10 - v5 + 40;
  outlined init with copy of ActionPerforming(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd, &_s5UIKit22UIContentConfiguration_pMR);
  swift_dynamicCast();
  v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v1 + v7, v4, type metadata accessor for Artwork);
  swift_beginAccess();
  outlined assign with copy of Artwork(v6, v1 + v7);
  swift_endAccess();
  Artwork.View.typedConfiguration.didset(v4);
  outlined destroy of Artwork(v6, type metadata accessor for Artwork);
  outlined destroy of Artwork(v4, type metadata accessor for Artwork);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*protocol witness for UIContentView.configuration.modify in conformance Artwork.View(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  *(v3 + 24) = type metadata accessor for Artwork(0);
  v4[4] = lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v1 + v6, boxed_opaque_existential_1, type metadata accessor for Artwork);
  return protocol witness for UIContentView.configuration.modify in conformance Artwork.View;
}

void protocol witness for UIContentView.configuration.modify in conformance Artwork.View(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of ActionPerforming(*a1, (v2 + 5));
    specialized MusicUIContentView.configuration.setter(v2 + 5);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    specialized MusicUIContentView.configuration.setter(*a1);
  }

  free(v2);
}

uint64_t protocol witness for UIContentView.supports(_:) in conformance Artwork.View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return UIContentView.supports(_:)(a1, ObjectType, a3);
}

double Artwork.Caching.reference.setter(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t (*Artwork.Caching.reference.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return Artwork.Caching.reference.modify;
}

double Artwork.Caching.reference.modify(void *a1)
{
  swift_weakAssign();

  return result;
}

double Artwork.Caching.init(reference:identifier:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_weakInit();
  *a4 = a2;
  a4[1] = a3;
  swift_weakAssign();

  return result;
}

void Artwork.Caching.init(reference:)(void *a2@<X8>)
{
  swift_weakInit();
  swift_weakAssign();

  *a2 = 0xD00000000000001CLL;
  a2[1] = 0x80000001004D04D0;
}

uint64_t Artwork.Content.init(catalog:background:)(uint64_t result, void *a2)
{
  if (!result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t static Artwork.Content.__derived_struct_equals(_:_:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (a2)
    {
      if (a4)
      {
        type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);
        v6 = a4;
        v7 = a2;
        v8 = static NSObject.== infix(_:_:)();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Artwork.Content(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (v2)
    {
      if (v3)
      {
        type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);
        v4 = v3;
        v5 = v2;
        v6 = static NSObject.== infix(_:_:)();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Artwork.Decoration.border.getter()
{
  v1 = *v0;
  v2 = v0[2];
  return v1;
}

void Artwork.Decoration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

id Artwork.Decoration.fillColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Artwork.Decoration(0) + 24));

  return v1;
}

void Artwork.Decoration.fillColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Artwork.Decoration(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t Artwork.Decoration.fillAxes.setter(uint64_t a1)
{
  result = type metadata accessor for Artwork.Decoration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t static Artwork.Decoration.with(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = v4[5];
  v6 = type metadata accessor for UIView.Corner();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v4[6];
  *&a2[v7] = [objc_opt_self() blackColor];
  *&a2[v4[7]] = 1;
  return a1(a2);
}

uint64_t Artwork.Size.Dimension.value(in:)(double a1, double a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    if (a1 != 1.79769313e308)
    {
      return result;
    }

    _StringGuts.grow(_:)(67);
    v8._countAndFlagsBits = 0x6F69736E656D6944;
    v8._object = 0xE90000000000006ELL;
    String.append(_:)(v8);
    v9._object = 0x80000001004D06B0;
    v9._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v9);
    v10._countAndFlagsBits = CGSize.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x696C61766E49203ALL;
    v11._object = 0xEF68746469772064;
    String.append(_:)(v11);
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a4 == 1 && a2 == 1.79769313e308)
  {
    _StringGuts.grow(_:)(68);
    v4._countAndFlagsBits = 0x6F69736E656D6944;
    v4._object = 0xE90000000000006ELL;
    String.append(_:)(v4);
    v5._object = 0x80000001004D06B0;
    v5._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v5);
    v6._countAndFlagsBits = CGSize.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0xD000000000000010;
    v7._object = 0x80000001004D06F0;
    String.append(_:)(v7);
    goto LABEL_10;
  }

  return result;
}

BOOL static Artwork.Size.Dimension.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = *&a1 == *&a3;
    if (a4 != 1)
    {
      v4 = 0;
    }

    v5 = a4 == 2 && *&a1 == *&a3;
    if (a2 == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return !a4 && *&a1 == *&a3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Artwork.Size.Dimension(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return 1;
      }
    }

    else if (v4 == 2 && v2 == v3)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8) && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t one-time initialization function for grid(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = type metadata accessor for Artwork.Decoration(0);
  __swift_allocate_value_buffer(v10, a2);
  v11 = __swift_project_value_buffer(v10, a2);
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v12 = static UIView.Border.artwork;
  v13 = byte_10063EF68;
  v14 = *a3;
  v15 = qword_10063EF70;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for UIView.Corner();
  v17 = __swift_project_value_buffer(v16, a4);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v9, v17, v16);
  (*(v18 + 56))(v9, 0, 1, v16);
  v19 = [objc_opt_self() blackColor];
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v15;
  result = outlined init with take of UIView.Corner?(v9, v11 + v10[5]);
  *(v11 + v10[6]) = v19;
  *(v11 + v10[7]) = 1;
  return result;
}

uint64_t Artwork.Decoration.grid.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Artwork.Decoration(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t one-time initialization function for round()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = type metadata accessor for Artwork.Decoration(0);
  __swift_allocate_value_buffer(v2, static Artwork.Decoration.round);
  v3 = __swift_project_value_buffer(v2, static Artwork.Decoration.round);
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v4 = static UIView.Border.artwork;
  v5 = byte_10063EF68;
  v6 = qword_10063EF70;
  v7 = qword_10063EF70;
  static UIView.Corner.rounded.getter();
  v8 = type metadata accessor for UIView.Corner();
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  v9 = [objc_opt_self() blackColor];
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  result = outlined init with take of UIView.Corner?(v1, v3 + v2[5]);
  *(v3 + v2[6]) = v9;
  *(v3 + v2[7]) = 1;
  return result;
}

double static Artwork.Decoration.grid.getter@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Artwork.Decoration(0);
  v7 = __swift_project_value_buffer(v6, a2);
  outlined init with copy of Artwork.Decoration(v7, a4, type metadata accessor for Artwork.Decoration);
  return result;
}

uint64_t Artwork.Decoration.scaled(using:compatibleWith:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = type metadata accessor for UIView.Corner.Radius();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v28 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v27 - v13;
  outlined init with copy of Artwork.Decoration(v4, a3, type metadata accessor for Artwork.Decoration);
  if (*(v4 + 16) && *(a3 + 16))
  {
    v15 = *(v4 + 8);
    [a1 scaledValueForValue:a2 compatibleWithTraitCollection:*v4];
    *a3 = v16;
    *(a3 + 8) = v15 & 1;
  }

  v29 = a1;
  v30 = a2;
  v17 = type metadata accessor for Artwork.Decoration(0);
  outlined init with copy of TaskPriority?(v4 + *(v17 + 20), v9, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  v18 = type metadata accessor for UIView.Corner();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v9, 1, v18) == 1)
  {
    return outlined destroy of TaskPriority?(v9, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  }

  UIView.Corner.radius.getter();
  (*(v19 + 8))(v9, v18);
  v22 = (*(v11 + 88))(v14, v10);
  if (v22 != enum case for UIView.Corner.Radius.value(_:))
  {
    return (*(v11 + 8))(v14, v10);
  }

  v23 = v22;
  (*(v11 + 96))(v14, v10);
  result = (v20)(a3 + *(v17 + 20), 1, v18);
  if (!result)
  {
    v24 = v14[8];
    [v29 scaledValueForValue:v30 compatibleWithTraitCollection:*v14];
    v25 = v28;
    *v28 = v26;
    *(v25 + 8) = v24;
    (*(v11 + 104))(v25, v23, v10);
    return UIView.Corner.radius.setter();
  }

  return result;
}

BOOL specialized static Artwork.Caching.__derived_struct_equals(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v3 & 1) != 0))
  {
    Strong = swift_weakLoadStrong();
    v6 = swift_weakLoadStrong();
    if (Strong)
    {
      if (v6)
      {
        v7 = v6;

        return Strong == v7;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t specialized static Artwork.Size.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a2 == 1)
    {
      result = 0;
      if (a6 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (a6 != 2)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (a6)
    {
      return result;
    }
  }

  if (*&a1 == *&a5)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (a8 == 1 && *&a3 == *&a7)
        {
          return 1;
        }
      }

      else if (a8 == 2 && *&a3 == *&a7)
      {
        return 1;
      }
    }

    else if (!a8 && *&a3 == *&a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL specialized static Artwork.Decoration.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UIView.Corner();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  __chkstk_darwin();
  v35 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSg_AFtMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSg_AFtMR);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v12 = a1[2];
  v13 = a2[2];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v33 = v4;
    v34 = v7;
    v15 = *a1;
    v14 = a1[1];
    v32 = v5;
    v16 = a1;
    v18 = *a2;
    v17 = a2[1];
    v19 = v13;
    v37 = v14 & 1;
    v20 = v17 & 1;
    a1 = v16;
    v36 = v20;
    v21 = v18;
    v5 = v32;
    v4 = v33;
    v22 = static UIView.Border.__derived_struct_equals(_:_:)(v15, v14 & 1, v12, v21, v20, v19);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v34 = v7;
    if (v13)
    {
      return 0;
    }
  }

  v23 = type metadata accessor for Artwork.Decoration(0);
  v24 = *(v23 + 20);
  v25 = *(v9 + 48);
  outlined init with copy of TaskPriority?(a1 + v24, v11, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  outlined init with copy of TaskPriority?(a2 + v24, &v11[v25], &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  v26 = *(v5 + 48);
  if (v26(v11, 1, v4) != 1)
  {
    v27 = v35;
    outlined init with copy of TaskPriority?(v11, v35, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v28 = v34;
      (*(v5 + 32))(v34, &v11[v25], v4);
      lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type UIView.Corner and conformance UIView.Corner, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v5 + 8);
      v30(v28, v4);
      v30(v27, v4);
      outlined destroy of TaskPriority?(v11, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v27, v4);
LABEL_11:
    outlined destroy of TaskPriority?(v11, &_sSo6UIViewC11MediaCoreUIE6CornerVSg_AFtMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSg_AFtMR);
    return 0;
  }

  if (v26(&v11[v25], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  outlined destroy of TaskPriority?(v11, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
LABEL_13:
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    return *(a1 + *(v23 + 28)) == *(a2 + *(v23 + 28));
  }

  return 0;
}

BOOL specialized static Artwork.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = a1[1];
    v6 = *(a2 + 8);
    type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
    v7 = v6;
    v8 = v4;
    if (static NSObject.== infix(_:_:)())
    {
      if (v5)
      {
        if (v6)
        {
          type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);
          v9 = v7;
          v10 = v5;
          v11 = static NSObject.== infix(_:_:)();

          if ((v11 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_9;
        }

LABEL_20:

        return 0;
      }

      if (!v6)
      {

        goto LABEL_9;
      }
    }

    goto LABEL_20;
  }

  if (v4)
  {
    return 0;
  }

LABEL_9:
  outlined init with copy of TaskPriority?((a1 + 2), &v43, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
  outlined init with copy of TaskPriority?(a2 + 16, &v46, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
  if (!v44)
  {
    if (!v47)
    {
      outlined destroy of TaskPriority?(&v43, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
      goto LABEL_15;
    }

LABEL_22:
    outlined destroy of TaskPriority?(&v43, &_s11MusicCoreUI7ArtworkV7CachingVSg_AFtMd, &_s11MusicCoreUI7ArtworkV7CachingVSg_AFtMR);
    return 0;
  }

  outlined init with copy of TaskPriority?(&v43, v42, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
  if (!v47)
  {
    outlined destroy of Artwork.Caching(v42);
    goto LABEL_22;
  }

  outlined init with take of Artwork.Caching(&v46, v41);
  v12 = specialized static Artwork.Caching.__derived_struct_equals(_:_:)(v42, v41);
  outlined destroy of Artwork.Caching(v41);
  outlined destroy of Artwork.Caching(v42);
  outlined destroy of TaskPriority?(&v43, &_s11MusicCoreUI7ArtworkV7CachingVSgMd, &_s11MusicCoreUI7ArtworkV7CachingVSgMR);
  if (!v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == 255)
  {
    if (v14 != 255)
    {
      return 0;
    }
  }

  else if (v14 == 255 || (specialized static Artwork.Size.__derived_struct_equals(_:_:)(a1[5], v13, a1[7], *(a1 + 64), *(a2 + 40), v14, *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for Artwork(0);
  if (!specialized static Artwork.Decoration.__derived_struct_equals(_:_:)((a1 + v16[7]), (a2 + v16[7])))
  {
    return 0;
  }

  v17 = v16[8];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = *(a1 + v17 + 16);
  v21 = *(a1 + v17 + 24);
  v23 = *(a1 + v17 + 32);
  v22 = *(a1 + v17 + 40);
  v24 = a2 + v17;
  v26 = *v24;
  v25 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v30 = *(v24 + 32);
  v29 = *(v24 + 40);
  if (v21)
  {
    if (v28)
    {
      v43 = *v24;
      v44 = v25;
      v45 = v27;
      v46 = v28;
      v47 = v30;
      v48 = v29;
      v42[0] = v18;
      v42[1] = v19;
      v42[2] = v20;
      v42[3] = v21;
      v42[4] = v23;
      v42[5] = v22;
      v36 = v26;
      v31 = v26;
      v32 = v19;
      v37 = v25;
      v39 = v27;
      v33 = v20;
      outlined copy of Artwork.Placeholder?(v31, v25, v27, v28);
      outlined copy of Artwork.Placeholder?(v18, v32, v33, v21);
      v34 = specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)(v42, &v43);

      outlined consume of Artwork.Placeholder?(v18, v32, v33, v21);
      if (v34)
      {
        return *(a2 + v16[9]) == *(a1 + v16[9]);
      }

      return 0;
    }

LABEL_33:
    v38 = *(v24 + 8);
    v40 = *(v24 + 16);
    v35 = v20;
    outlined copy of Artwork.Placeholder?(*v24, v38, v27, v28);
    outlined copy of Artwork.Placeholder?(v18, v19, v35, v21);
    outlined consume of Artwork.Placeholder?(v18, v19, v35, v21);
    outlined consume of Artwork.Placeholder?(v26, v38, v40, v28);
    return 0;
  }

  if (v28)
  {
    goto LABEL_33;
  }

  return *(a2 + v16[9]) == *(a1 + v16[9]);
}

uint64_t outlined init with copy of Artwork.Decoration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with copy of Artwork(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for Artwork(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  result = lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for Artwork.View(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork.View and conformance Artwork.View, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002B2D88(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Artwork.Decoration(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1002B2E54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for Artwork.Decoration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Artwork(uint64_t a1)
{
  type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Artwork.Content?, &type metadata for Artwork.Content);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Artwork.Caching?, &type metadata for Artwork.Caching);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Artwork.Size?, &type metadata for Artwork.Size);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Artwork.Decoration(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Artwork.Placeholder?, &type metadata for Artwork.Placeholder);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Artwork.PlaceholderProvider?(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Artwork.PlaceholderProvider?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Artwork.PlaceholderProvider?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11MusicCoreUI7ArtworkV19PlaceholderProvider_pMd, &_s11MusicCoreUI7ArtworkV19PlaceholderProvider_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Artwork.PlaceholderProvider?);
    }
  }
}

uint64_t type metadata completion function for Artwork.View(uint64_t a1)
{
  result = type metadata accessor for Artwork(319);
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

uint64_t sub_1002B319C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1002B327C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for Artwork.Decoration(uint64_t a1)
{
  type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for UIView.Border?, &type metadata for UIView.Border);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIView.Corner?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIAction(319, &_sSo7UIColorCML_0, UIColor_ptr);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UIAxis(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for UIView.Corner?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIView.Corner?)
  {
    type metadata accessor for UIView.Corner();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIView.Corner?);
    }
  }
}

__n128 __swift_memcpy25_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Artwork.Size(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Artwork.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8_0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void outlined consume of Artwork.View.PlaceholderKind?(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t outlined init with take of UIView.Corner?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B35F8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002B3630()
{

  return swift_deallocObject();
}

uint64_t sub_1002B36A0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002B370C()
{

  return swift_deallocObject();
}

unint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_0()
{
  result = _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_0;
  if (!_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_0, &_sSay8Dispatch0A13WorkItemFlagsVGMR_0);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_0);
  }

  return result;
}

uint64_t outlined destroy of Artwork(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id outlined copy of Artwork.View.PlaceholderKind?(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

id outlined copy of Artwork.Placeholder?(id result, void *a2, void *a3, void *a4)
{
  if (a4)
  {
    v5 = result;
    v6 = a3;
    v7 = a4;
    v8 = v5;

    return a2;
  }

  return result;
}

void outlined consume of Artwork.Placeholder?(void *a1, void *a2, void *a3, void *a4)
{
  if (a4)
  {
  }
}

void Artwork.Placeholder.View.typedConfiguration.setter(uint64_t *a1)
{
  specialized Artwork.Placeholder.View.typedConfiguration.setter(a1);
  v4 = *a1;
  outlined destroy of TaskPriority?(&v4, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  v3 = a1[1];
  outlined destroy of TaskPriority?(&v3, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  v2 = a1[2];
  outlined destroy of TaskPriority?(&v2, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
}

void *Artwork.Placeholder.tint.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id one-time initialization function for defaultTint()
{
  result = [objc_opt_self() tertiaryLabelColor];
  static Artwork.Placeholder.defaultTint = result;
  return result;
}

__n128 static Artwork.Placeholder.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    swift_once();
  }

  v5 = static Artwork.Placeholder.defaultTint;
  v6 = objc_opt_self();
  v7 = v5;
  *&v11 = v4;
  *(&v11 + 1) = v5;
  v12 = 0;
  v13 = [v6 configurationWithWeight:4];
  v14 = xmmword_100507930;
  a1(&v11);
  v8 = v12;
  v9 = v13;
  result = v14;
  *a2 = v11;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  return result;
}

id Artwork.Placeholder.preferredSymbolConfiguration(in:)(double a1, double a2)
{
  if (a1 > a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 < a1)
  {
    a1 = a2;
  }

  if (v3 * *(v2 + 32) >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3 * *(v2 + 32);
  }

  v5 = *(v2 + 24);
  v6 = [objc_opt_self() configurationWithPointSize:v4];
  v7 = [v5 configurationByApplyingConfiguration:v6];

  return v7;
}

void Artwork.Placeholder.image(with:graphicsFormat:)(uint64_t a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a1 format:{a2, a3}];
  v5 = *v3;
  v18 = v3[1];
  v19 = v5;
  v6 = v3[2];
  v7 = v3[3];
  v16 = 0;
  v17 = v6;
  v8 = swift_allocObject();
  v9 = *(v3 + 1);
  *(v8 + 16) = *v3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v3 + 2);
  *(v8 + 64) = &v16;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in Artwork.Placeholder.image(with:graphicsFormat:);
  *(v10 + 24) = v8;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[3] = &block_descriptor_48;
  v11 = _Block_copy(aBlock);
  outlined init with copy of TaskPriority?(&v19, v14, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined init with copy of TaskPriority?(&v18, v14, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined init with copy of TaskPriority?(&v17, v14, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
  v12 = v7;

  v13 = [v4 imageWithActions:v11];

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
  }
}

void closure #1 in Artwork.Placeholder.image(with:graphicsFormat:)(void *a1, uint64_t a2, void **a3)
{
  v6 = [a1 format];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  [v15 setFill];

  v16 = objc_opt_self();
  v17 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
  [v17 fill];

  if (*a2)
  {
    v18 = *a2;
    [v18 setFill];
    v19 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
    [v19 fill];
  }

  if (v12 > v14)
  {
    v20 = v12;
  }

  else
  {
    v20 = v14;
  }

  if (v14 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v14;
  }

  v22 = v20 * *(a2 + 32);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(a2 + 24);
  v25 = [objc_opt_self() configurationWithPointSize:v23];
  v26 = [v24 configurationByApplyingConfiguration:v25];

  v27 = *(a2 + 16);
  if (v27)
  {
    v28 = [v27 imageWithSymbolConfiguration:v26];
    if (v28)
    {
      v29 = v28;
      if (*(a2 + 8))
      {
        v30 = [v28 imageWithTintColor:?];

        v29 = v30;
      }

      [v29 size];
      v32 = v31;
      v33 = [objc_opt_self() mainScreen];
      [v33 scale];

      CGRect.centeringAlong(axes:bounds:scale:)();
      [v29 drawInRect:v32];
    }
  }

  v34 = [a1 currentImage];

  v35 = *a3;
  *a3 = v34;
}

char *Artwork.Placeholder.View.init(configuration:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = *a1;
  v17 = a1[1];
  v18 = v5;
  v6 = a1[3];
  v16 = a1[2];
  v7 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  v8 = *(a1 + 2);
  v9 = *(a1 + 1);
  *v7 = *a1;
  *(v7 + 1) = v9;
  *(v7 + 2) = v8;
  outlined init with copy of TaskPriority?(&v18, v19, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined init with copy of TaskPriority?(&v17, v19, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined init with copy of TaskPriority?(&v16, v19, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = *(v11 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView);
  v13 = v11;
  [v13 addSubview:v12];
  memset(v19, 0, sizeof(v19));
  Artwork.Placeholder.View.configurationDidChange(_:)(v19);
  outlined destroy of TaskPriority?(&v18, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined destroy of TaskPriority?(&v17, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined destroy of TaskPriority?(&v16, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);

  return v13;
}

void Artwork.Placeholder.View.configurationDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v11 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (*v5)
  {
    v12 = v8;
    v13 = v9;
    v14 = v6;
    v15 = v7;
  }

  else
  {
    v16 = objc_opt_self();
    v12 = v8;
    v17 = v9;
    v14 = v6;
    v15 = [v16 clearColor];
    v7 = 0;
  }

  v18 = v7;
  [v2 setBackgroundColor:v15];

  v19 = *&v2[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  [v19 setHidden:v8 == 0];
  [v19 setImage:v12];
  [v19 setTintColor:v14];
  [v19 setAlpha:v10];
  v20 = [v2 superview];
  if (!v20)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  v21 = *(a1 + 16);
  v22 = v21;
  v23 = v22;
  if (!v8)
  {
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_15:
    [v2 setNeedsLayout];
    goto LABEL_16;
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIImage, UIImage_ptr);
  v24 = v12;
  v25 = static NSObject.== infix(_:_:)();

  if ((v25 & 1) == 0 || !*(a1 + 24))
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v11 != *(a1 + 32))
  {
    goto LABEL_15;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIImageSymbolConfiguration, UIImageSymbolConfiguration_ptr);
  v26 = v9;
  v27 = v4;
  v28 = static NSObject.== infix(_:_:)();

  if ((v28 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
}

void Artwork.Placeholder.View.init(coder:)()
{
  v1 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id Artwork.Placeholder.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v11 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v11;
  *(a1 + 32) = *(v3 + 32);
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

void (*Artwork.Placeholder.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  *(v3 + 464) = v1;
  *(v3 + 472) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  *(v4 + 48) = *v6;
  *(v4 + 56) = v8;
  v4 += 48;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  v15 = v8;
  return Artwork.Placeholder.View.typedConfiguration.modify;
}

void Artwork.Placeholder.View.typedConfiguration.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 58) + *(*a1 + 59));
  if (a2)
  {
    v4 = *(v2 + 4);
    v5 = *(v2 + 5);
    v6 = *(v2 + 3);
    v7 = v6;
    *(v2 + 19) = v4;
    *(v2 + 20) = v5;
    *(v2 + 18) = v6;
    *(v2 + 49) = *(v2 + 18);
    v8 = v2[39];
    v2[51] = v2[38];
    v10 = *(v3 + 1);
    v9 = *(v3 + 2);
    *v2 = *v3;
    *(v2 + 1) = v10;
    *(v2 + 2) = v9;
    v11 = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v35 = v3[4];
    v36 = v3[3];
    v34 = v3[5];
    v2[46] = *v2;
    v14 = *(v2 + 5);
    *(v3 + 1) = v4;
    *(v3 + 2) = v14;
    *v3 = v7;
    outlined init with copy of TaskPriority?((v2 + 49), (v2 + 57), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    outlined init with copy of TaskPriority?((v2 + 50), (v2 + 57), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    outlined init with copy of TaskPriority?((v2 + 51), (v2 + 57), &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
    v15 = v8;
    outlined init with copy of TaskPriority?((v2 + 49), (v2 + 57), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    outlined init with copy of TaskPriority?((v2 + 50), (v2 + 57), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    outlined init with copy of TaskPriority?((v2 + 51), (v2 + 57), &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
    v16 = v15;
    if (!specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)((v2 + 36), v2))
    {
      v2[30] = v11;
      v2[31] = v12;
      v2[32] = v13;
      v2[33] = v36;
      v2[34] = v35;
      v2[35] = v34;
      Artwork.Placeholder.View.configurationDidChange(_:)((v2 + 30));
    }

    outlined destroy of TaskPriority?((v2 + 46), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    v2[47] = v2[1];
    outlined destroy of TaskPriority?((v2 + 47), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    v17 = v2[3];
    v2[48] = v2[2];
    outlined destroy of TaskPriority?((v2 + 48), &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);

    outlined destroy of TaskPriority?((v2 + 49), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    outlined destroy of TaskPriority?((v2 + 50), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    outlined destroy of TaskPriority?((v2 + 51), &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);

    v18 = v2[6];
    v19 = v2[7];
    v20 = v2[8];
  }

  else
  {
    v21 = *(v2 + 4);
    *(v2 + 9) = *(v2 + 3);
    *(v2 + 10) = v21;
    v23 = *(v2 + 3);
    v22 = *(v2 + 4);
    *(v2 + 11) = *(v2 + 5);
    v24 = *v3;
    v25 = *(v3 + 2);
    *(v2 + 13) = *(v3 + 1);
    *(v2 + 14) = v25;
    *(v2 + 12) = v24;
    v26 = v3[1];
    v37 = *v3;
    v27 = v3[2];
    v28 = v3[3];
    v29 = v3[4];
    v30 = v3[5];
    v2[54] = v2[24];
    v31 = v2[21];
    v2[45] = v2[20];
    *(v2 + 55) = *(v2 + 9);
    v32 = *(v2 + 5);
    *(v3 + 1) = v22;
    *(v3 + 2) = v32;
    *v3 = v23;
    outlined init with copy of TaskPriority?((v2 + 55), (v2 + 57), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    outlined init with copy of TaskPriority?((v2 + 56), (v2 + 57), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    outlined init with copy of TaskPriority?((v2 + 45), (v2 + 57), &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
    v20 = v31;
    if (!specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)((v2 + 18), (v2 + 24)))
    {
      v2[12] = v37;
      v2[13] = v26;
      v2[14] = v27;
      v2[15] = v28;
      v2[16] = v29;
      v2[17] = v30;
      Artwork.Placeholder.View.configurationDidChange(_:)((v2 + 12));
    }

    outlined destroy of TaskPriority?((v2 + 54), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    v2[53] = v2[25];
    outlined destroy of TaskPriority?((v2 + 53), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    v33 = v2[27];
    v2[52] = v2[26];
    outlined destroy of TaskPriority?((v2 + 52), &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);

    outlined destroy of TaskPriority?((v2 + 55), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    outlined destroy of TaskPriority?((v2 + 56), &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    outlined destroy of TaskPriority?((v2 + 45), &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
  }

  free(v2);
}

Swift::Void __swiftcall Artwork.Placeholder.View.layoutSubviews()()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  v2 = &v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 2);
  v8 = v5;
  v9 = v3;
  v10 = v4;
  [v0 bounds];
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v12 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = v6 * v13;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [objc_opt_self() configurationWithPointSize:v16];
  v18 = [v8 configurationByApplyingConfiguration:v17];

  [v1 setPreferredSymbolConfiguration:v18];
  [v1 setContentMode:4];
  [v0 bounds];
  [v1 sizeThatFits:{v19, v20}];
  CGRect.centeringAlong(axes:in:)(0.0, 0.0, v21, v22);
  [v1 setFrame:?];
}

id protocol witness for MusicUIContentView.typedConfiguration.getter in conformance Artwork.Placeholder.View@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v11 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v11;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v3 + 32);
  v7 = v5;
  v8 = v6;
  v9 = v4;

  return v11;
}

void protocol witness for MusicUIContentView.typedConfiguration.setter in conformance Artwork.Placeholder.View(__int128 *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = v1;
  v4 = a1[2];
  specialized Artwork.Placeholder.View.typedConfiguration.setter(&v2);
  v5 = v2;
  outlined destroy of TaskPriority?(&v5, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  v6 = *(&v2 + 1);
  outlined destroy of TaskPriority?(&v6, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  v7 = v3;
  outlined destroy of TaskPriority?(&v7, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
}

void (*protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.Placeholder.View(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Artwork.Placeholder.View.typedConfiguration.modify(v2);
  return protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View;
}

id protocol witness for UIContentView.configuration.getter in conformance Artwork.Placeholder.View@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for Artwork.Placeholder;
  a1[4] = lazy protocol witness table accessor for type Artwork.Placeholder and conformance Artwork.Placeholder();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v12 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *(v3 + 16) = *v4;
  *(v3 + 24) = v12;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  *(v3 + 48) = *(v4 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v5;

  return v12;
}

uint64_t protocol witness for UIContentView.configuration.setter in conformance Artwork.Placeholder.View(void *a1)
{
  outlined init with copy of ActionPerforming(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd, &_s5UIKit22UIContentConfiguration_pMR);
  swift_dynamicCast();
  v7 = v3;
  v8 = v4;
  v9 = v5;
  specialized Artwork.Placeholder.View.typedConfiguration.setter(&v7);
  v10 = v7;
  outlined destroy of TaskPriority?(&v10, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  v11 = *(&v7 + 1);
  outlined destroy of TaskPriority?(&v11, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  v12 = v8;
  outlined destroy of TaskPriority?(&v12, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*protocol witness for UIContentView.configuration.modify in conformance Artwork.Placeholder.View(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x158uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[42] = v1;
  v3[21] = &type metadata for Artwork.Placeholder;
  v3[22] = lazy protocol witness table accessor for type Artwork.Placeholder and conformance Artwork.Placeholder();
  v5 = swift_allocObject();
  v4[18] = v5;
  v6 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *(v5 + 16) = *v6;
  *(v5 + 24) = v8;
  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  *(v5 + 48) = *(v6 + 32);
  v11 = v9;
  v12 = v10;
  v13 = v7;
  v14 = v8;
  return protocol witness for UIContentView.configuration.modify in conformance Artwork.Placeholder.View;
}

void protocol witness for UIContentView.configuration.modify in conformance Artwork.Placeholder.View(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of ActionPerforming(v2 + 144, v2 + 184);
    outlined init with copy of ActionPerforming(v2 + 184, v2 + 224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd, &_s5UIKit22UIContentConfiguration_pMR);
    swift_dynamicCast();
    v3 = *(v2 + 112);
    *v2 = *(v2 + 96);
    *(v2 + 16) = v3;
    *(v2 + 32) = *(v2 + 128);
    specialized Artwork.Placeholder.View.typedConfiguration.setter(v2);
    *(v2 + 328) = *v2;
    outlined destroy of TaskPriority?(v2 + 328, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    *(v2 + 320) = *(v2 + 8);
    outlined destroy of TaskPriority?(v2 + 320, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    *(v2 + 312) = *(v2 + 16);
    outlined destroy of TaskPriority?(v2 + 312, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 184));
  }

  else
  {
    outlined init with copy of ActionPerforming(v2 + 144, v2 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd, &_s5UIKit22UIContentConfiguration_pMR);
    swift_dynamicCast();
    v4 = *(v2 + 112);
    *(v2 + 48) = *(v2 + 96);
    *(v2 + 64) = v4;
    *(v2 + 80) = *(v2 + 128);
    specialized Artwork.Placeholder.View.typedConfiguration.setter((v2 + 48));
    *(v2 + 304) = *(v2 + 48);
    outlined destroy of TaskPriority?(v2 + 304, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    *(v2 + 296) = *(v2 + 56);
    outlined destroy of TaskPriority?(v2 + 296, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    *(v2 + 288) = *(v2 + 64);
    outlined destroy of TaskPriority?(v2 + 288, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 144));

  free(v2);
}

char *protocol witness for UIContentConfiguration.makeContentView() in conformance Artwork.Placeholder(uint64_t a1)
{
  v2 = v1[1];
  v10[0] = *v1;
  v10[1] = v2;
  v10[2] = v1[2];
  v11 = v10[0];
  v3 = *(&v2 + 1);
  v12 = v2;
  v4 = objc_allocWithZone(type metadata accessor for Artwork.Placeholder.View());
  outlined init with copy of TaskPriority?(&v11, v9, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined init with copy of TaskPriority?(&v11 + 8, v9, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined init with copy of TaskPriority?(&v12, v9, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
  v5 = v3;
  v6 = Artwork.Placeholder.View.init(configuration:)(v10);
  lazy protocol witness table accessor for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View(&lazy protocol witness table cache variable for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View, v7, type metadata accessor for Artwork.Placeholder.View, &protocol conformance descriptor for Artwork.Placeholder.View);
  return v6;
}

id protocol witness for UIContentConfiguration.updated(for:) in conformance Artwork.Placeholder@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v9 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v2;

  return v9;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Artwork.Placeholder(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)(v7, v8);
}

double one-time initialization function for nowPlaying()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 colorWithAlphaComponent:0.1];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.12];

  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.nowPlaying = v2;
  unk_10063ED30 = v4;
  qword_10063ED38 = v6;
  unk_10063ED40 = v7;
  result = 0.46;
  xmmword_10063ED48 = xmmword_100507940;
  return result;
}

uint64_t *Artwork.Placeholder.nowPlaying.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.nowPlaying;
}

id static Artwork.Placeholder.nowPlaying.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for nowPlaying != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.nowPlaying;
  v2 = unk_10063ED30;
  v4 = qword_10063ED38;
  v3 = unk_10063ED40;
  v10 = unk_10063ED40;
  *a1 = static Artwork.Placeholder.nowPlaying;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063ED48;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double one-time initialization function for miniPlayer()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemFillColor];
  v2 = [v0 secondaryLabelColor];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  v5 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.miniPlayer = v1;
  unk_10063ED60 = v2;
  qword_10063ED68 = v4;
  unk_10063ED70 = v5;
  result = 0.46;
  xmmword_10063ED78 = xmmword_100507940;
  return result;
}

uint64_t *Artwork.Placeholder.miniPlayer.unsafeMutableAddressor()
{
  if (one-time initialization token for miniPlayer != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.miniPlayer;
}

id static Artwork.Placeholder.miniPlayer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for miniPlayer != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.miniPlayer;
  v2 = unk_10063ED60;
  v4 = qword_10063ED68;
  v3 = unk_10063ED70;
  v10 = unk_10063ED70;
  *a1 = static Artwork.Placeholder.miniPlayer;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063ED78;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

void static Artwork.Placeholder.device(representing:basedOn:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = v6;
  v11 = [v8 _symbolImageForRoute:a1];
  v12 = v11;
  if (!v6)
  {
    v19 = one-time initialization token for defaultTint;
    v20 = v11;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = static Artwork.Placeholder.defaultTint;
    goto LABEL_12;
  }

  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 secondaryLabelColor];
  type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {

    v18 = [v13 labelColor];
LABEL_11:
    v21 = v18;
LABEL_12:
    v25 = v21;
    goto LABEL_13;
  }

  v22 = v14;
  v23 = [v13 tertiaryLabelColor];
  v24 = static NSObject.== infix(_:_:)();

  if (v24)
  {

    v18 = [v13 secondaryLabelColor];
    goto LABEL_11;
  }

  v25 = v22;
  v26 = [v13 quaternaryLabelColor];
  v27 = static NSObject.== infix(_:_:)();

  if (v27)
  {

    v18 = [v13 tertiaryLabelColor];
    goto LABEL_11;
  }

LABEL_13:
  v28 = *(a2 + 40);
  v29 = *(a2 + 24);
  v30 = [objc_opt_self() configurationWithHierarchicalColor:v25];
  v31 = [v29 configurationByApplyingConfiguration:v30];

  *a3 = v7;
  a3[1] = v6;
  a3[2] = v12;
  a3[3] = v31;
  a3[4] = 0x3FE0000000000000;
  a3[5] = v28;
}

uint64_t *Artwork.Placeholder.music.unsafeMutableAddressor()
{
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.music;
}

id static Artwork.Placeholder.music.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for music != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.music;
  v2 = unk_10063ED90;
  v4 = qword_10063ED98;
  v3 = unk_10063EDA0;
  v10 = unk_10063EDA0;
  *a1 = static Artwork.Placeholder.music;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EDA8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id one-time initialization function for musicVideo()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.musicVideo = v3;
  unk_10063EDC0 = static Artwork.Placeholder.defaultTint;
  qword_10063EDC8 = v1;
  unk_10063EDD0 = v2;
  xmmword_10063EDD8 = xmmword_100507930;

  return v4;
}

uint64_t *Artwork.Placeholder.musicVideo.unsafeMutableAddressor()
{
  if (one-time initialization token for musicVideo != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.musicVideo;
}

id static Artwork.Placeholder.musicVideo.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for musicVideo != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.musicVideo;
  v2 = unk_10063EDC0;
  v4 = qword_10063EDC8;
  v3 = unk_10063EDD0;
  v10 = unk_10063EDD0;
  *a1 = static Artwork.Placeholder.musicVideo;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EDD8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id one-time initialization function for tv()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.tv = v3;
  unk_10063EDF0 = static Artwork.Placeholder.defaultTint;
  qword_10063EDF8 = v1;
  unk_10063EE00 = v2;
  xmmword_10063EE08 = xmmword_100507930;

  return v4;
}

uint64_t *Artwork.Placeholder.tv.unsafeMutableAddressor()
{
  if (one-time initialization token for tv != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.tv;
}

id static Artwork.Placeholder.tv.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for tv != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.tv;
  v2 = unk_10063EDF0;
  v4 = qword_10063EDF8;
  v3 = unk_10063EE00;
  v10 = unk_10063EE00;
  *a1 = static Artwork.Placeholder.tv;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EE08;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id one-time initialization function for microphone()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.microphone = v3;
  unk_10063EE20 = static Artwork.Placeholder.defaultTint;
  qword_10063EE28 = v1;
  unk_10063EE30 = v2;
  xmmword_10063EE38 = xmmword_100507940;

  return v4;
}

uint64_t *Artwork.Placeholder.microphone.unsafeMutableAddressor()
{
  if (one-time initialization token for microphone != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.microphone;
}

id static Artwork.Placeholder.microphone.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for microphone != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.microphone;
  v2 = unk_10063EE20;
  v4 = qword_10063EE28;
  v3 = unk_10063EE30;
  v10 = unk_10063EE30;
  *a1 = static Artwork.Placeholder.microphone;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EE38;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id one-time initialization function for person()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.person = v3;
  unk_10063EE50 = static Artwork.Placeholder.defaultTint;
  qword_10063EE58 = v1;
  unk_10063EE60 = v2;
  xmmword_10063EE68 = xmmword_100507930;

  return v4;
}

uint64_t *Artwork.Placeholder.person.unsafeMutableAddressor()
{
  if (one-time initialization token for person != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.person;
}

id static Artwork.Placeholder.person.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for person != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.person;
  v2 = unk_10063EE50;
  v4 = qword_10063EE58;
  v3 = unk_10063EE60;
  v10 = unk_10063EE60;
  *a1 = static Artwork.Placeholder.person;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EE68;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double one-time initialization function for newPlaylist()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.newPlaylist = [objc_opt_self() secondarySystemFillColor];
  unk_10063EE80 = 0;
  qword_10063EE88 = v1;
  unk_10063EE90 = v2;
  result = 0.5;
  xmmword_10063EE98 = xmmword_100507930;
  return result;
}

uint64_t *Artwork.Placeholder.newPlaylist.unsafeMutableAddressor()
{
  if (one-time initialization token for newPlaylist != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.newPlaylist;
}

id static Artwork.Placeholder.newPlaylist.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for newPlaylist != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.newPlaylist;
  v2 = unk_10063EE80;
  v4 = qword_10063EE88;
  v3 = unk_10063EE90;
  v10 = unk_10063EE90;
  *a1 = static Artwork.Placeholder.newPlaylist;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EE98;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double static Artwork.Placeholder.playlist(ofType:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
  __chkstk_darwin();
  v5 = v14 - v4;
  v6 = type metadata accessor for Playlist.Variant();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MPModelPlaylistType.variant.getter(a1, v5);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v9, enum case for Playlist.Variant.regular(_:), v6);
    if (v10(v5, 1, v6) != 1)
    {
      outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  v11 = specialized static Artwork.Placeholder.playlist(withVariant:)(v9, v14);
  (*(v7 + 8))(v9, v6, v11);
  v12 = v14[1];
  *a2 = v14[0];
  a2[1] = v12;
  result = *&v15;
  a2[2] = v15;
  return result;
}

double static Artwork.Placeholder.playlist(withVariant:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  specialized static Artwork.Placeholder.playlist(withVariant:)(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

id one-time initialization function for radio()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.radio = v3;
  unk_10063EEB0 = static Artwork.Placeholder.defaultTint;
  qword_10063EEB8 = v1;
  unk_10063EEC0 = v2;
  xmmword_10063EEC8 = xmmword_100507950;

  return v4;
}

uint64_t *Artwork.Placeholder.radio.unsafeMutableAddressor()
{
  if (one-time initialization token for radio != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.radio;
}

id static Artwork.Placeholder.radio.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for radio != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.radio;
  v2 = unk_10063EEB0;
  v4 = qword_10063EEB8;
  v3 = unk_10063EEC0;
  v10 = unk_10063EEC0;
  *a1 = static Artwork.Placeholder.radio;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EEC8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

__n128 Artwork.Placeholder.withSolidBackgroundColor()@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v21 = *(v1 + 32);
  if (*v1)
  {
    v7 = objc_opt_self();
    v8 = v5;
    v9 = v6;
    v10 = v3;
    v11 = v4;
    v12 = [v7 secondarySystemFillColor];
    type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      if (one-time initialization token for solidSecondarySystemFill != -1)
      {
        swift_once();
      }

      v14 = static UIColor.solidSecondarySystemFill;
LABEL_11:
      v3 = v14;

      goto LABEL_12;
    }

    v18 = [v7 tertiarySystemFillColor];
    v19 = static NSObject.== infix(_:_:)();

    if (v19)
    {
      if (one-time initialization token for solidTertiarySystemFill != -1)
      {
        swift_once();
      }

      v14 = static UIColor.solidTertiarySystemFill;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = v4;
  }

LABEL_12:
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1].n128_u64[0] = v5;
  a1[1].n128_u64[1] = v6;
  result = v21;
  a1[2] = v21;
  return result;
}

id Artwork.Placeholder.withBackground(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 8);
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

id Artwork.Placeholder.withScaleFactor(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 40);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 8);
  v11 = *v2;
  *a1 = *v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = a2;
  *(a1 + 40) = v3;
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

id Artwork.Placeholder.withTint(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *v2;
  *a2 = *v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

void one-time initialization function for solidSecondarySystemFill(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v10[4] = a2;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v10[3] = a3;
  v8 = _Block_copy(v10);
  v9 = [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  *a4 = v9;
}

id closure #1 in variable initialization expression of static UIColor.solidSecondarySystemFill(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 userInterfaceStyle];
  type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);
  if (v9 == 2)
  {
    v10 = a2;
    v11 = a2;
    v12 = a3;
  }

  else
  {
    v10 = a4;
    v11 = a4;
    v12 = a5;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v10, v11, v12, 1.0);
}

double MPModelSong.preferredArtworkAspectRatio.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_0, &_ss23_ContiguousArrayStorageCySSGMR_0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2400;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = objc_opt_self();
  v5 = [v4 propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  v6 = 1.0;
  if (isa)
  {
    if ([v0 hasVideo])
    {
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1004F2400;
      *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v7 + 40) = v8;
      v9 = Array._bridgeToObjectiveC()().super.isa;

      v10 = [v4 propertySetWithProperties:v9];

      v11 = [v0 hasLoadedValuesForPropertySet:v10];
      if (!v11)
      {
        return 1.77777778;
      }

      v12 = [v0 artworkCatalog];
      if (!v12)
      {
        return 1.77777778;
      }

      v13 = v12;
      v14 = COERCE_DOUBLE(MPArtworkCatalog.expectedRatio.getter());
      v16 = v15;

      if (v16)
      {
        return 1.77777778;
      }

      v6 = 0.5625;
      if (v14 >= 1.0)
      {
        return 1.77777778;
      }
    }
  }

  return v6;
}

id MPModelPlaylist.artworkPlaceholderImage.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    [v0 type];

    return specialized static MPModelPlaylist.artworkPlaceholderImage(for:)();
  }

  else
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = [objc_opt_self() _systemImageNamed:v2];

    return v3;
  }
}

void MPModelObject.artworkPlaceholder.getter(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
  __chkstk_darwin();
  v3 = v26 - v2;
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      if ([v11 hasLoadedValueForKey:MPModelPropertyPlaylistType])
      {
        MPModelPlaylistType.variant.getter([v12 type], v3);
        v13 = *(v5 + 48);
        if (v13(v3, 1, v4) == 1)
        {
          (*(v5 + 104))(v7, enum case for Playlist.Variant.regular(_:), v4);
          if (v13(v3, 1, v4) != 1)
          {
            outlined destroy of TaskPriority?(v3, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
          }
        }

        else
        {
          (*(v5 + 32))(v7, v3, v4);
        }

        v15 = specialized static Artwork.Placeholder.playlist(withVariant:)(v7, v26);
        (*(v5 + 8))(v7, v4, v15);
        goto LABEL_17;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (one-time initialization token for microphone != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.microphone;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (one-time initialization token for person != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.person;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (one-time initialization token for tv != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.tv;
        goto LABEL_32;
      }
    }

LABEL_29:
    if (one-time initialization token for music != -1)
    {
      swift_once();
    }

    v14 = &static Artwork.Placeholder.music;
LABEL_32:
    v20 = *v14;
    v21 = v14[1];
    v19 = v14[2];
    v22 = v14[3];
    v16 = v14[4];
    v17 = v14[5];
    v23 = v19;
    v18 = v22;
    v24 = v20;
    v25 = v21;
    goto LABEL_33;
  }

  v9 = [v8 anyObject];
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v9;
  MPModelObject.artworkPlaceholder.getter(v26);

LABEL_17:
  v16 = v26[4];
  v17 = v26[5];
  v19 = v26[2];
  v18 = v26[3];
  v20 = v26[0];
  v21 = v26[1];
LABEL_33:
  *a1 = v20;
  a1[1] = v21;
  a1[2] = v19;
  a1[3] = v18;
  a1[4] = v16;
  a1[5] = v17;
}

id MusicItem.artworkPlaceholder.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v129 = a2;
  v92 = type metadata accessor for Station();
  v89 = *(v92 - 8);
  __chkstk_darwin();
  v91 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for MusicMovie();
  v90 = *(v95 - 8);
  __chkstk_darwin();
  v94 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for TVSeason();
  v93 = *(v98 - 8);
  __chkstk_darwin();
  v97 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TVEpisode();
  v96 = *(v101 - 8);
  __chkstk_darwin();
  v100 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for TVShow();
  v99 = *(v105 - 8);
  __chkstk_darwin();
  v104 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Playlist.Folder();
  v103 = *(v110 - 8);
  __chkstk_darwin();
  v109 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
  __chkstk_darwin();
  v108 = &v88 - v9;
  v116 = type metadata accessor for Playlist.Variant();
  v115 = *(v116 - 8);
  __chkstk_darwin();
  v102 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v88 - v11;
  v114 = type metadata accessor for Playlist();
  v106 = *(v114 - 8);
  __chkstk_darwin();
  v113 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v88 - v13;
  v119 = type metadata accessor for MusicVideo();
  v112 = *(v119 - 8);
  __chkstk_darwin();
  v118 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for SocialProfile();
  v117 = *(v122 - 8);
  __chkstk_darwin();
  v121 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for Curator();
  v120 = *(v125 - 8);
  __chkstk_darwin();
  v124 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Composer();
  v123 = *(v17 - 8);
  __chkstk_darwin();
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RecordLabel();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Artist();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin();
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v31;
  (*(v31 + 16))(v30, v126, a1, v28);
  if (swift_dynamicCast())
  {
    (*(v25 + 8))(v27, v24);
    v32 = a1;
LABEL_5:
    (*(v128 + 8))(v30, v32);
    if (one-time initialization token for microphone != -1)
    {
      swift_once();
    }

    v33 = &static Artwork.Placeholder.microphone;
    goto LABEL_18;
  }

  v32 = a1;
  if (swift_dynamicCast())
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    (*(v123 + 8))(v19, v17);
  }

  else
  {
    v35 = v124;
    v34 = v125;
    if (swift_dynamicCast())
    {
      v36 = v120;
    }

    else
    {
      v35 = v121;
      v34 = v122;
      if (!swift_dynamicCast())
      {
        v48 = v118;
        v47 = v119;
        if (swift_dynamicCast())
        {
          v49 = v30;
          if (one-time initialization token for musicVideo != -1)
          {
            swift_once();
          }

          v37 = static Artwork.Placeholder.musicVideo;
          v38 = unk_10063EDC0;
          v40 = qword_10063EDC8;
          v50 = unk_10063EDD0;
          v126 = xmmword_10063EDD8;
          v51 = *(v112 + 8);
          v52 = static Artwork.Placeholder.musicVideo;
          v53 = v38;
          v54 = v40;
          v42 = v50;
          v51(v48, v47);
          result = (*(v128 + 8))(v49, v32);
          goto LABEL_19;
        }

        v55 = v111;
        v56 = v114;
        if (swift_dynamicCast())
        {
          v57 = v106;
          (*(v106 + 32))(v113, v55, v56);
          v58 = v108;
          Playlist.variant.getter();
          v59 = v115;
          v60 = *(v115 + 48);
          v61 = v116;
          if (v60(v58, 1, v116) == 1)
          {
            v62 = v107;
            (*(v59 + 104))(v107, enum case for Playlist.Variant.regular(_:), v61);
            if (v60(v58, 1, v61) != 1)
            {
              outlined destroy of TaskPriority?(v58, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
            }
          }

          else
          {
            v62 = v107;
            (*(v59 + 32))(v107, v58, v61);
          }

          v70 = specialized static Artwork.Placeholder.playlist(withVariant:)(v62, v130);
          (*(v59 + 8))(v62, v61, v70);
          (*(v57 + 8))(v113, v56);
        }

        else
        {
          v63 = v109;
          v64 = v110;
          v65 = swift_dynamicCast();
          v66 = v116;
          v67 = v115;
          if (!v65)
          {
            v71 = v104;
            v72 = v105;
            if (swift_dynamicCast())
            {
              v73 = v130;
            }

            else
            {
              v71 = v100;
              v72 = v101;
              if (swift_dynamicCast())
              {
                v73 = &v127;
              }

              else
              {
                v71 = v97;
                v72 = v98;
                if (swift_dynamicCast())
                {
                  v73 = &v125;
                }

                else
                {
                  v71 = v94;
                  v72 = v95;
                  if (!swift_dynamicCast())
                  {
                    v74 = v91;
                    v75 = v92;
                    if (swift_dynamicCast())
                    {
                      v76 = v30;
                      if (one-time initialization token for radio != -1)
                      {
                        swift_once();
                      }

                      v37 = static Artwork.Placeholder.radio;
                      v38 = unk_10063EEB0;
                      v40 = qword_10063EEB8;
                      v77 = unk_10063EEC0;
                      v126 = xmmword_10063EEC8;
                      v78 = *(v89 + 8);
                      v79 = static Artwork.Placeholder.radio;
                      v80 = v38;
                      v81 = v40;
                      v42 = v77;
                      v78(v74, v75);
                      result = (*(v128 + 8))(v76, v32);
                    }

                    else
                    {
                      v82 = v30;
                      if (one-time initialization token for music != -1)
                      {
                        swift_once();
                      }

                      v37 = static Artwork.Placeholder.music;
                      v38 = unk_10063ED90;
                      v40 = qword_10063ED98;
                      v83 = unk_10063EDA0;
                      v126 = xmmword_10063EDA8;
                      v84 = *(v128 + 8);
                      v85 = static Artwork.Placeholder.music;
                      v86 = v38;
                      v87 = v40;
                      v42 = v83;
                      result = v84(v82, v32);
                    }

                    goto LABEL_19;
                  }

                  v73 = &v122;
                }
              }
            }

            (*(*(v73 - 32) + 8))(v71, v72);
            (*(v128 + 8))(v30, v32);
            if (one-time initialization token for tv != -1)
            {
              swift_once();
            }

            v33 = &static Artwork.Placeholder.tv;
            goto LABEL_18;
          }

          v68 = v102;
          (*(v115 + 104))(v102, enum case for Playlist.Variant.folder(_:), v116);
          v69 = specialized static Artwork.Placeholder.playlist(withVariant:)(v68, v130);
          (*(v67 + 8))(v68, v66, v69);
          (*(v103 + 8))(v63, v64);
        }

        result = (*(v128 + 8))(v30, v32);
        v45 = v131;
        v40 = v130[2];
        v42 = v130[3];
        v37 = v130[0];
        v38 = v130[1];
        goto LABEL_20;
      }

      v36 = v117;
    }

    (*(v36 + 8))(v35, v34);
  }

  (*(v128 + 8))(v30, v32);
  if (one-time initialization token for person != -1)
  {
    swift_once();
  }

  v33 = &static Artwork.Placeholder.person;
LABEL_18:
  v37 = *v33;
  v38 = v33[1];
  v40 = v33[2];
  v39 = v33[3];
  v126 = *(v33 + 2);
  v41 = v40;
  v42 = v39;
  v43 = v37;
  result = v38;
LABEL_19:
  v45 = v126;
LABEL_20:
  v46 = v129;
  *v129 = v37;
  v46[1] = v38;
  v46[2] = v40;
  v46[3] = v42;
  *(v46 + 2) = v45;
  return result;
}

BOOL specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);
    v11 = v10;
    v12 = v9;
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIImage, UIImage_ptr);
    v16 = v15;
    v17 = v14;
    v18 = static NSObject.== infix(_:_:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && *(a1 + 32) == *(a2 + 32))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  return 0;
}

void specialized Artwork.Placeholder.View.typedConfiguration.setter(uint64_t *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v20 = *v3;
  v21 = v4;
  v22 = v3[2];
  v5 = *(v3 + 1);
  v15 = *v3;
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v25 = v20;
  v8 = *a1;
  v17 = a1[1];
  v18 = v8;
  v9 = a1[3];
  v10 = *(v3 + 4);
  v11 = *(v3 + 5);
  v16 = a1[2];
  v12 = *(a1 + 1);
  *v3 = *a1;
  v3[1] = v12;
  v3[2] = *(a1 + 2);
  outlined init with copy of TaskPriority?(&v18, v19, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined init with copy of TaskPriority?(&v17, v19, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  outlined init with copy of TaskPriority?(&v16, v19, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
  v13 = v9;
  if (!specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)(a1, &v20))
  {
    v19[0] = v15;
    v19[1] = v5;
    v19[2] = v6;
    v19[3] = v7;
    v19[4] = v10;
    v19[5] = v11;
    Artwork.Placeholder.View.configurationDidChange(_:)(v19);
  }

  outlined destroy of TaskPriority?(&v25, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  v24 = *(&v20 + 1);
  outlined destroy of TaskPriority?(&v24, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  v14 = *(&v21 + 1);
  v23 = v21;
  outlined destroy of TaskPriority?(&v23, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double specialized static Artwork.Placeholder.playlist(withVariant:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = v20 - v9;
  v11 = enum case for Playlist.Variant.folder(_:);
  (*(v5 + 104))(v20 - v9, enum case for Playlist.Variant.folder(_:), v4, v8);
  lazy protocol witness table accessor for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View(&lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant, 255, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = *(v5 + 8);
  v12(v10, v4);
  v13 = 0;
  if (v20[1] != v20[0])
  {
    if (one-time initialization token for defaultTint != -1)
    {
      swift_once();
    }

    v13 = static Artwork.Placeholder.defaultTint;
    v14 = static Artwork.Placeholder.defaultTint;
  }

  (*(v5 + 16))(v7, a1, v4);
  v15 = (*(v5 + 88))(v7, v4);
  if (v15 != enum case for Playlist.Variant.smart(_:) && v15 != enum case for Playlist.Variant.genius(_:) && v15 != v11)
  {
    v12(v7, v4);
  }

  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() _systemImageNamed:v16];

  v18 = [objc_opt_self() configurationWithWeight:3];
  *a2 = [objc_opt_self() secondarySystemFillColor];
  *(a2 + 8) = v13;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  result = 0.4;
  *(a2 + 32) = xmmword_100507950;
  return result;
}

id specialized static MPModelPlaylist.artworkPlaceholderImage(for:)()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

unint64_t lazy protocol witness table accessor for type Artwork.Placeholder and conformance Artwork.Placeholder()
{
  result = lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder;
  if (!lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder;
  if (!lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder;
  if (!lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Artwork.Placeholder.View(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View(&lazy protocol witness table cache variable for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View, a2, type metadata accessor for Artwork.Placeholder.View, &protocol conformance descriptor for Artwork.Placeholder.View);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Artwork.Placeholder(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Artwork.Placeholder and conformance Artwork.Placeholder();
  result = lazy protocol witness table accessor for type Artwork.Placeholder and conformance Artwork.Placeholder();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Artwork.Placeholder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Artwork.Placeholder(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t lazy protocol witness table accessor for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

__n128 CAPackageDefinition.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  return result;
}

__n128 NowPlaying.TrackTitleStackView.Label.Attributes.marquee.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  return result;
}

uint64_t CAPackageDefinition.size.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 80) = result;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3 & 1;
  return result;
}

__n128 CAPackageDefinition.init(name:bundle:transform:states:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v6;
  result = *(a4 + 32);
  *(a6 + 56) = result;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 72) = a5;
  *(a6 + 96) = 1;
  return result;
}

double CAPackageDefinition.scaled(byX:y:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v21 = *v3;
  v22 = *(v3 + 16);
  v20[0] = *(v3 + 72);
  *(v20 + 9) = *(v3 + 81);
  v13 = *(v3 + 40);
  v15 = *(v3 + 24);
  CGAffineTransformMakeScale(&t1, a2, a3);
  v7 = *&t1.a;
  v8 = *&t1.c;
  v9 = *&t1.tx;
  *&t1.a = v15;
  *&t1.c = v13;
  t1.tx = v5;
  t1.ty = v6;
  *&t2.a = v7;
  *&t2.c = v8;
  *&t2.tx = v9;
  CGAffineTransformConcat(&v18, &t1, &t2);
  tx = v18.tx;
  ty = v18.ty;
  v14 = *&v18.c;
  v16 = *&v18.a;
  outlined init with copy of CAPackageDefinition(v3, &t1);
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 40) = v14;
  *(a1 + 24) = v16;
  *(a1 + 56) = tx;
  *(a1 + 64) = ty;
  *(a1 + 72) = v20[0];
  result = *(v20 + 9);
  *(a1 + 81) = *(v20 + 9);
  return result;
}

__n128 CAPackageDefinition.with(size:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X8>)
{
  v8 = v4[3];
  v16 = v4[2];
  v17 = v8;
  v18 = v4[4];
  v9 = v4[1];
  v14 = *v4;
  v15 = v9;
  v10 = a3 & 1;
  v13[0] = a3 & 1;
  outlined init with copy of CAPackageDefinition(v4, v13);
  v11 = v17;
  a4[2] = v16;
  a4[3] = v11;
  a4[4] = v18;
  result = v15;
  *a4 = v14;
  a4[1] = result;
  a4[5].n128_u64[0] = a1;
  a4[5].n128_u64[1] = a2;
  a4[6].n128_u8[0] = v10;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CAPackageDefinition(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return specialized static CAPackageDefinition.__derived_struct_equals(_:_:)(v11, v13) & 1;
}

double CAPackage.PackageDataCache.set(data:packageName:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 24);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v17[6] = a2;
  aBlock[4] = partial apply for closure #1 in CAPackage.PackageDataCache.set(data:packageName:);
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_49;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  outlined copy of Data._Representation(a1, a2);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_0, &_sSay8Dispatch0A13WorkItemFlagsVGMR_0);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_0, &_sSay8Dispatch0A13WorkItemFlagsVGMd_0, &_sSay8Dispatch0A13WorkItemFlagsVGMR_0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);

  return result;
}

uint64_t closure #1 in CAPackage.PackageDataCache.set(data:packageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();

  outlined copy of Data._Representation(a4, a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v12;
  return swift_endAccess();
}

void CAPackage.PackageDataCache.data(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13 = xmmword_100507960;
  v6 = *(v3 + 24);
  v7 = swift_allocObject();
  v7[2] = &v13;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in CAPackage.PackageDataCache.data(for:);
  *(v8 + 24) = v7;
  v12[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed () -> ();
  v12[3] = &block_descriptor_20_0;
  v9 = _Block_copy(v12);
  v10 = v6;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;
    outlined copy of Data?(v13, *(&v13 + 1));
    outlined consume of Data?(v11, *(&v11 + 1));
  }
}