void *sub_1002A096C(unint64_t a1)
{
  v2 = *(type metadata accessor for EpisodeOffer() - 8);
  __chkstk_darwin();
  v16 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_25:
    v2 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

LABEL_24:
  v11 = v3;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3 = v11;
  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_3:
  v6 = 0;
  v13 = v2 + 4;
  v14 = v2;
  v2 = _swiftEmptyArrayStorage;
  v15 = v3;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      v8 = dispatch thunk of LegacyLockup.buttonAction.getter();

      if (!v8)
      {

        return 0;
      }

      type metadata accessor for EpisodeOfferAction();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v6 == v5)
      {
        goto LABEL_26;
      }
    }

    EpisodeOfferAction.episodeOffer.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100243D84(0, v2[2] + 1, 1, v2);
    }

    v10 = v2[2];
    v9 = v2[3];
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100243D84((v9 > 1), v10 + 1, 1, v2);
    }

    v2[2] = v10 + 1;
    v3 = (v14[4])(v2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + v14[9] * v10, v16, v15);
  }

  while (v6 != v5);
LABEL_26:
  if (!v2[2])
  {

    return 0;
  }

  return v2;
}

uint64_t sub_1002A0C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 96) = v15;
  *(v8 + 80) = v14;
  *(v8 + 64) = a5;
  *(v8 + 72) = a8;
  *(v8 + 233) = a7;
  *(v8 + 232) = a6;
  *(v8 + 56) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  v10 = type metadata accessor for PlaybackController.QueueCommand();
  *(v8 + 128) = v10;
  *(v8 + 136) = *(v10 - 8);
  *(v8 + 144) = swift_task_alloc();
  v11 = type metadata accessor for PlaybackIntent();
  *(v8 + 152) = v11;
  *(v8 + 160) = *(v11 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1002A0DB4, 0, 0);
}

uint64_t sub_1002A0DB4()
{
  v1 = *(v0 + 232);
  v2 = *(*(v0 + 160) + 16);
  v2(*(v0 + 176), *(v0 + 56), *(v0 + 152));
  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 160);
    v22 = *(v0 + 152);
    v23 = *(v0 + 176);
    v20 = *(v0 + 64);
    v21 = *(v0 + 168);
    sub_100168088(&qword_10057A0A8, &qword_100407190);
    v4 = type metadata accessor for PlaybackIntent.Option();
    v5 = *(v4 - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004007C0;
    v9 = v8 + v7;
    v10 = *(v5 + 104);
    v10(v9, enum case for PlaybackIntent.Option.startPlayback(_:), v4);
    *(v9 + v6) = v20;
    v10(v9 + v6, enum case for PlaybackIntent.Option.initialItemPlayheadOverride(_:), v4);
    sub_10016BA80(v8);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    PlaybackIntent.replacingOptions(_:)();

    (*(v3 + 8))(v23, v22);
    (*(v3 + 32))(v23, v21, v22);
  }

  if (*(v0 + 233) == 1)
  {
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    v13 = *(v0 + 136);
    v2(v11, *(v0 + 176), *(v0 + 152));
    (*(v13 + 104))(v11, enum case for PlaybackController.QueueCommand.replace(_:), v12);
    *(v0 + 40) = v12;
    *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
    v14 = sub_10000E680((v0 + 16));
    (*(v13 + 16))(v14, v11, v12);
    v24 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
    v15 = swift_task_alloc();
    *(v0 + 184) = v15;
    *v15 = v0;
    v15[1] = sub_1002A1134;
    v16.n128_u64[0] = 5.0;

    return (v24)(v0 + 16, 0, v16);
  }

  else
  {
    v18 = swift_task_alloc();
    *(v0 + 200) = v18;
    *v18 = v0;
    v18[1] = sub_1002A1324;
    v19 = *(v0 + 176);

    return PlaybackController.performIntent(_:whenPossible:)(v19, 0);
  }
}

uint64_t sub_1002A1134(void *a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_1002A15F0;
  }

  else
  {

    sub_100004590((v4 + 16));
    v5 = sub_1002A1264;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A1264()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002A1324(void *a1)
{
  *(*v2 + 208) = v1;

  if (v1)
  {
    v4 = sub_1002A1800;
  }

  else
  {

    v4 = sub_1002A1440;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002A1440()
{
  (*(v0[20] + 8))(v0[22], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002A14E0()
{
  v1 = *(v0 + 216);

  sub_100295BD4(v1);

  return _swift_task_switch(sub_1002A1560, 0, 0);
}

uint64_t sub_1002A1560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A15F0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  (*(v3 + 8))(v1, v2);
  sub_100004590((v0 + 16));
  *(v0 + 216) = *(v0 + 192);
  sub_1000044A0(*(v0 + 80), *(*(v0 + 80) + 24));
  dispatch thunk of PendingPlaybackControllerProtocol.reset()();
  static Logger.modernPlayback.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to play intent: %@", v6, 0xCu);
    sub_100009104(v7, &qword_100575B20, &qword_100401F90);
  }

  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 104);

  (*(v10 + 8))(v9, v11);
  type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A14E0, v13, v12);
}

uint64_t sub_1002A1800()
{
  (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
  *(v0 + 216) = *(v0 + 208);
  sub_1000044A0(*(v0 + 80), *(*(v0 + 80) + 24));
  dispatch thunk of PendingPlaybackControllerProtocol.reset()();
  static Logger.modernPlayback.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to play intent: %@", v3, 0xCu);
    sub_100009104(v4, &qword_100575B20, &qword_100401F90);
  }

  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 104);

  (*(v7 + 8))(v6, v8);
  type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A14E0, v10, v9);
}

void sub_1002A19E8(char a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntent();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a2;
    sub_100168088(&qword_10057A0A8, &qword_100407190);
    v8 = type metadata accessor for PlaybackIntent.Option();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100400790;
    (*(v9 + 104))(v11 + v10, enum case for PlaybackIntent.Option.forceLocalPlayback(_:), v8);
    sub_10016BA80(v11);
    swift_setDeallocating();
    (*(v9 + 8))(v11 + v10, v8);
    swift_deallocClassInstance();
    PlaybackIntent.addingOptions(_:)();

    type metadata accessor for EpisodeController();
    sub_1002A91E8(&qword_10057AC48, v12, type metadata accessor for EpisodeController, &unk_100408FB0);
    memset(v13, 0, sizeof(v13));
    EpisodeControllerProtocol.performIntent(_:sender:)();
    sub_100009104(v13, &unk_1005783D0, &qword_1004031E0);
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1002A1C50()
{
  sub_100184228(v0 + 16);

  sub_100004590((v0 + 40));
  sub_100004590((v0 + 80));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1002A1CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = *v4;
  static TaskPriority.userInitiated.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = *(v8 + 120);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v8;

  sub_100296DB0(0, 0, v7, a4, v11);

  return sub_100009104(v7, &qword_100578010, &qword_100401F60);
}

uint64_t sub_1002A1E2C(double a1)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = *v1;
  static TaskPriority.userInitiated.getter();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = *(v5 + 120);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 40) = a1;
  *(v8 + 48) = v5;

  sub_100296DB0(0, 0, v4, &unk_100409220, v8);

  return sub_100009104(v4, &qword_100578010, &qword_100401F60);
}

uint64_t sub_1002A2174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a3;
  v20[2] = a4;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v7 = v20 - v6;
  v8 = type metadata accessor for MediaIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PlaybackIntent();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin();
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v4;
  *v11 = a1;
  (*(v9 + 104))(v11, enum case for MediaIdentifier.podcast(_:), v8, v14);
  v18 = type metadata accessor for EpisodeListSettings();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  static Set<>.default.getter();
  PlaybackIntent.init(id:baseListSettings:options:)();
  v20[3] = v17;
  EpisodeControllerProtocol.performIntent(_:sender:)();
  return (*(v13 + 8))(v16, v12);
}

id sub_1002A244C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v19 = a5;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v18 - v13;
  result = [objc_opt_self() episodeUrlForPodcastStoreId:a3 episodeStoreId:a2];
  if (result)
  {
    v16 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17.n128_f64[0] = (*(v10 + 32))(v14, v12, v9);
    sub_10029A700(a1, v14, a4, v19, v17);
    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

uint64_t sub_1002A25D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v15 = a4;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowOffer.storeUrl.getter();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100009104(v7, &qword_100574040, &unk_100400AD0);
  }

  v13.n128_f64[0] = (*(v9 + 32))(v11, v7, v8);
  sub_10029A700(a1, v11, a3, v15, v13);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1002A2794(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v20 = a6;
  v21 = a2;
  v22 = a3;
  v9 = type metadata accessor for PreviewingPresentationHint();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreDataFetcher();
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v12, a5, v9);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = v14 + v11;
  v16 = swift_allocObject();
  *(v16 + 2) = v13;
  *(v16 + 3) = a1;
  *(v16 + 4) = a4;
  (*(v10 + 32))(&v16[v14], v12, v9);
  v16[v15] = v20;

  v17 = a4;
  static CoreDataFetcher.fetchPodcast(with:completion:)();
}

id sub_1002A2954(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v17 - v12;
  result = [objc_opt_self() podcastUrlForStoreId:a2];
  if (result)
  {
    v15 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16.n128_f64[0] = (*(v9 + 32))(v13, v11, v8);
    sub_10029A700(a1, v13, a3, a4, v16);
    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

uint64_t sub_1002A2ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  objc_allocWithZone(sub_100168088(&unk_10057BC30, &unk_1004091C0));

  return ModernPageViewController.init(asPartOf:with:)();
}

BOOL sub_1002A2B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PresentationSource();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PresentationSource.topmostPresentationSource.getter();
  static InteractionContext.none.getter();
  v12 = sub_10029DA58(a1, a2, _swiftEmptyArrayStorage, v11, v7);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
  }

  return v12 != 0;
}

BOOL sub_1002A2D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PresentationSource();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PresentationSource.topmostPresentationSource.getter();
  static InteractionContext.none.getter();
  v12 = sub_10029DA58(a1, a2, _swiftEmptyArrayStorage, v11, v7);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    Share = ContextActionsConfiguration.canCreateShareSheet()();
  }

  else
  {
    return 0;
  }

  return Share;
}

char *sub_1002A2EE0(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(void, void, void), uint64_t a5, char a6, uint64_t a7)
{
  v9 = sub_10029DA58(a1, a2, a3, a4, a5);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  type metadata accessor for ContextActionsMenuConfiguration();

  v11 = sub_1002A7674(v10, a7, (a6 & 1) == 0);

  return v11;
}

void *sub_1002A2F5C(uint64_t a1, uint64_t a2, double (*a3)(void, void, void), uint64_t a4)
{
  if (!sub_10029DA58(a1, a2, _swiftEmptyArrayStorage, a3, a4))
  {
    return _swiftEmptyArrayStorage;
  }

  isa = ContextActionsConfiguration.menu(extraContextMenuElements:)(_swiftEmptyArrayStorage).super.super.isa;
  v5 = [(objc_class *)isa children];

  sub_100009F1C(0, &qword_100575BC0, UIMenuElement_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

unint64_t sub_1002A3034(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(void, void, void), uint64_t a5)
{
  result = sub_10029DA58(a1, a2, a3, a4, a5);
  if (result)
  {
    v6 = ContextActionsConfiguration.shareSheet()();

    return v6;
  }

  return result;
}

Class sub_1002A30B0(uint64_t a1, unint64_t a2)
{
  sub_100168088(&unk_100574680, &qword_100401740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007B0;
  if (a2 >> 62)
  {
    sub_100009F1C(0, &qword_100575BC0, UIMenuElement_ptr);

    v7 = _bridgeCocoaArray<A>(_:)();

    a2 = v7;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100009F1C(0, &qword_100575BC0, UIMenuElement_ptr);
  }

  sub_100009F1C(0, &qword_100579A70, UIMenu_ptr);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  *(inited + 32) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v4, 0, v9, 1, 0xFFFFFFFFFFFFFFFFLL, a2, v8);
  isa = ContextActionsConfiguration.menu(extraContextMenuElements:)(inited).super.super.isa;
  swift_setDeallocating();
  swift_arrayDestroy();
  return isa;
}

id sub_1002A3268()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextActionsMenuConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002A32D4(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaybackIntent() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 17) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 9);
  v11 = *(v1 + v6);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10021A620;

  return sub_1002A0C10(a1, v15, v14, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_1002A345C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C51C;

  return sub_10001BC58(a1, v4);
}

id sub_1002A3514(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1002A3564(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100009F1C(0, &qword_100575BC0, UIMenuElement_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_1002A35F4(uint64_t a1, uint64_t a2, int a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v64 = a8;
  v59 = a7;
  v62 = a5;
  v61 = a4;
  LODWORD(v60) = a3;
  v63 = a1;
  v55 = *a9;
  sub_100168088(&qword_100576938, &qword_100403D48);
  __chkstk_darwin();
  v56 = &v50 - v11;
  v58 = type metadata accessor for URL();
  v54 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InteractionContext();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v52 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v50 - v16;
  __chkstk_darwin();
  v18 = &v50 - v17;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v50 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v50 - v20;
  __chkstk_darwin();
  v22 = &v50 - v21;
  v23 = type metadata accessor for AnyReferenceLink();
  v68[3] = v23;
  v68[4] = sub_1002A91E8(&qword_10057BC18, 255, &type metadata accessor for AnyReferenceLink, &protocol conformance descriptor for AnyReferenceLink);
  v24 = sub_10000E680(v68);
  v25 = *(*(v23 - 8) + 32);
  v26 = v23;
  v27 = v64;
  v25(v24, v59, v26);
  v28 = &a9[qword_1005932C8];
  *v28 = v60 & 1;
  v29 = v62;
  *(v28 + 1) = v61;
  *(v28 + 2) = v29;
  *(v28 + 3) = a6;
  v30 = a2;
  sub_100010430(a2, v22, &unk_10057BB90, &unk_100402D60);
  sub_100004428(v68, v67);
  v31 = *(v14 + 16);
  v32.n128_f64[0] = v31(v18, v27, v13);
  if (!sub_1002A465C(v24, v32))
  {

    v36 = *(v14 + 8);
    v36(v27, v13);
    sub_100009104(v30, &unk_10057BB90, &unk_100402D60);
    v36(v18, v13);
    sub_100004590(v67);
    sub_100009104(v22, &unk_10057BB90, &unk_100402D60);
    sub_100004590(v68);
    goto LABEL_5;
  }

  v61 = v22;
  v62 = v18;
  v60 = v30;

  v33 = v56;
  sub_1001EC5E0(v67, v56);
  v34 = sub_100168088(&qword_100576930, &unk_100409180);
  if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
  {

    v35 = *(v14 + 8);
    v35(v64, v13);
    sub_100009104(v60, &unk_10057BB90, &unk_100402D60);
    v35(v62, v13);
    sub_100004590(v67);
    sub_100009104(v61, &unk_10057BB90, &unk_100402D60);
    sub_100004590(v68);
    sub_100009104(v33, &qword_100576938, &qword_100403D48);
LABEL_5:
    type metadata accessor for OtherContextActionConfiguration(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v38 = (v33 + *(v34 + 48));
  v39 = *v38;
  v40 = v38[1];
  v41 = v54;
  v42 = v57;
  v43 = v33;
  v44 = v58;
  (*(v54 + 32))(v57, v43, v58);
  (*(v41 + 16))(&a9[qword_100593318], v42, v44);
  v45 = &a9[qword_100593320];
  *v45 = v39;
  *(v45 + 1) = v40;
  v46 = v51;
  sub_100010430(v61, v51, &unk_10057BB90, &unk_100402D60);
  sub_100004428(v67, v66);
  v47 = v53;
  v31(v53, v62, v13);
  sub_100010430(v46, v50, &unk_10057BB90, &unk_100402D60);
  sub_100010430(v66, v65, &qword_100576490, &qword_100403D40);
  v31(v52, v47, v13);
  v48 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v49 = *(v14 + 8);
  v49(v64, v13);
  sub_100009104(v60, &unk_10057BB90, &unk_100402D60);
  v49(v47, v13);
  sub_100009104(v66, &qword_100576490, &qword_100403D40);
  sub_100009104(v46, &unk_10057BB90, &unk_100402D60);
  (*(v41 + 8))(v57, v58);
  v49(v62, v13);
  sub_100004590(v67);
  sub_100009104(v61, &unk_10057BB90, &unk_100402D60);
  sub_100004590(v68);
  return v48;
}

uint64_t sub_1002A3E24(uint64_t a1, uint64_t a2, int a3, char *a4, char *a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t (*a10)(void, __n128), unint64_t *a11, uint64_t (*a12)(uint64_t), uint64_t a13)
{
  v72 = a8;
  v71 = a6;
  v68 = a5;
  v67 = a4;
  LODWORD(v66) = a3;
  v70 = a1;
  v62 = *a9;
  sub_100168088(&qword_100576938, &qword_100403D48);
  __chkstk_darwin();
  v61 = &v54 - v15;
  v64 = type metadata accessor for URL();
  v60 = *(v64 - 8);
  __chkstk_darwin();
  v63 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for InteractionContext();
  v17 = *(v65 - 8);
  __chkstk_darwin();
  v58 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = &v54 - v19;
  __chkstk_darwin();
  v21 = &v54 - v20;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v56 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v54 - v23;
  v24 = __chkstk_darwin();
  v26 = &v54 - v25;
  v76[3] = a10(0, v24);
  v76[4] = sub_1002A91E8(a11, 255, a12, a13);
  v76[0] = a7;
  v69 = a9;
  v27 = a9 + qword_1005932C8;
  *v27 = v66 & 1;
  v28 = v68;
  *(v27 + 1) = v67;
  *(v27 + 2) = v28;
  *(v27 + 3) = v71;
  v71 = a2;
  v29 = a2;
  v30 = v72;
  sub_100010430(v29, v26, &unk_10057BB90, &unk_100402D60);
  sub_100004428(v76, v75);
  v31 = v21;
  v32 = v21;
  v33 = v65;
  v66 = *(v17 + 16);
  v66(v32, v30);
  if (!sub_1002A4918(a7, a11, a12, a13))
  {

    v38 = *(v17 + 8);
    v38(v30, v33);
    sub_100009104(v71, &unk_10057BB90, &unk_100402D60);
    v38(v31, v33);
    sub_100004590(v75);
    sub_100009104(v26, &unk_10057BB90, &unk_100402D60);
    sub_100004590(v76);
    goto LABEL_5;
  }

  v55 = v17;
  v34 = v33;
  v67 = v26;
  v68 = v31;

  v35 = v61;
  sub_1001EC5E0(v75, v61);
  v36 = sub_100168088(&qword_100576930, &unk_100409180);
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {

    v37 = *(v55 + 8);
    v37(v72, v33);
    sub_100009104(v71, &unk_10057BB90, &unk_100402D60);
    v37(v68, v33);
    sub_100004590(v75);
    sub_100009104(v67, &unk_10057BB90, &unk_100402D60);
    sub_100004590(v76);
    sub_100009104(v35, &qword_100576938, &qword_100403D48);
LABEL_5:
    type metadata accessor for OtherContextActionConfiguration(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v40 = (v35 + *(v36 + 48));
  v42 = *v40;
  v41 = v40[1];
  v43 = v60;
  v44 = v63;
  v45 = v35;
  v46 = v64;
  (*(v60 + 32))(v63, v45, v64);
  v47 = v69;
  (*(v43 + 16))(v69 + qword_100593318, v44, v46);
  v48 = (v47 + qword_100593320);
  *v48 = v42;
  v48[1] = v41;
  v49 = v57;
  sub_100010430(v67, v57, &unk_10057BB90, &unk_100402D60);
  sub_100004428(v75, v74);
  v50 = v59;
  v51 = v66;
  (v66)(v59, v68, v34);
  sub_100010430(v49, v56, &unk_10057BB90, &unk_100402D60);
  sub_100010430(v74, v73, &qword_100576490, &qword_100403D40);
  v51(v58, v50, v34);
  v52 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v53 = *(v55 + 8);
  v53(v72, v34);
  sub_100009104(v71, &unk_10057BB90, &unk_100402D60);
  v53(v50, v34);
  sub_100009104(v74, &qword_100576490, &qword_100403D40);
  sub_100009104(v49, &unk_10057BB90, &unk_100402D60);
  (*(v43 + 8))(v63, v64);
  v53(v68, v34);
  sub_100004590(v75);
  sub_100009104(v67, &unk_10057BB90, &unk_100402D60);
  sub_100004590(v76);
  return v52;
}

uint64_t sub_1002A465C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for AnyReferenceLink();
  v13[3] = v3;
  v13[4] = sub_1002A91E8(&qword_10057BC18, 255, &type metadata accessor for AnyReferenceLink, &protocol conformance descriptor for AnyReferenceLink);
  v4 = sub_10000E680(v13);
  (*(*(v3 - 8) + 16))(v4, a1, v3);
  sub_100004428(v13, v11);
  sub_100168088(&qword_1005748C0, qword_1004060D0);
  type metadata accessor for FlowAction();
  if (!swift_dynamicCast())
  {
    sub_100004428(v13, v10);
    sub_100168088(&unk_10057BBF0, &unk_100403D50);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v7, v11);
      sub_1000044A0(v11, v12);
      v5 = dispatch thunk of CustomPreviewActionModel.previewAction.getter();
      sub_100004590(v11);
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_100009104(&v7, &qword_100576940, &unk_100409190);
    }

    sub_100004428(v13, v10);
    sub_100168088(&qword_10057BC00, &unk_100403D20);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v7, v11);
      sub_1000044A0(v11, v12);
      dispatch thunk of ClickableModel.clickAction.getter();
      if (v10[3])
      {
        sub_100168088(&unk_10057BB70, &qword_100401CB0);
        type metadata accessor for Action();
        if (swift_dynamicCast())
        {
          v5 = v7;
          sub_100004590(v11);
          goto LABEL_15;
        }
      }

      else
      {
        sub_100009104(v10, &qword_100578C20, &unk_100403D30);
      }

      sub_100004590(v11);
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_100009104(&v7, &qword_100576928, &unk_1004091A0);
    }

    v5 = 0;
    goto LABEL_15;
  }

  v5 = v10[0];
LABEL_15:
  sub_100004590(v13);
  return v5;
}

uint64_t sub_1002A4918(void *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v13[3] = *a1;
  v13[4] = sub_1002A91E8(a2, 255, a3, a4);
  v13[0] = a1;
  sub_100004428(v13, v11);

  sub_100168088(&qword_1005748C0, qword_1004060D0);
  type metadata accessor for FlowAction();
  if (!swift_dynamicCast())
  {
    sub_100004428(v13, v10);
    sub_100168088(&unk_10057BBF0, &unk_100403D50);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v7, v11);
      sub_1000044A0(v11, v12);
      v5 = dispatch thunk of CustomPreviewActionModel.previewAction.getter();
      sub_100004590(v11);
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_100009104(&v7, &qword_100576940, &unk_100409190);
    }

    sub_100004428(v13, v10);
    sub_100168088(&qword_10057BC00, &unk_100403D20);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v7, v11);
      sub_1000044A0(v11, v12);
      dispatch thunk of ClickableModel.clickAction.getter();
      if (v10[3])
      {
        sub_100168088(&unk_10057BB70, &qword_100401CB0);
        type metadata accessor for Action();
        if (swift_dynamicCast())
        {
          v5 = v7;
          sub_100004590(v11);
          goto LABEL_15;
        }
      }

      else
      {
        sub_100009104(v10, &qword_100578C20, &unk_100403D30);
      }

      sub_100004590(v11);
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_100009104(&v7, &qword_100576928, &unk_1004091A0);
    }

    v5 = 0;
    goto LABEL_15;
  }

  v5 = v10[0];
LABEL_15:
  sub_100004590(v13);
  return v5;
}

uint64_t sub_1002A4B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v12 = v11;
  v62 = a8;
  v67 = a6;
  LODWORD(v76) = a5;
  v74 = a4;
  v59 = a3;
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v81 = &v59 - v15;
  sub_100168088(&qword_10057BB30, &qword_100409140);
  __chkstk_darwin();
  v17 = &v59 - v16;
  sub_100168088(&qword_10057A0A0, &qword_100407188);
  __chkstk_darwin();
  v72 = &v59 - v18;
  v69 = type metadata accessor for PlaybackIntent.Origin();
  v66 = *(v69 - 8);
  __chkstk_darwin();
  v70 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntent.Context();
  __chkstk_darwin();
  v71 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for MediaIdentifier();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v68 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for PlaybackIntent();
  v77 = *(v80 - 8);
  __chkstk_darwin();
  v75 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v22;
  __chkstk_darwin();
  v79 = &v59 - v23;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v63 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v59 - v25;
  sub_100168088(&qword_10057BC50, &qword_1004062D8);
  __chkstk_darwin();
  v28 = &v59 - v27;
  v29 = type metadata accessor for PendingPlaybackMetadata();
  v30 = *(v29 - 8);
  __chkstk_darwin();
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);

  PendingPlaybackMetadata.init(adamId:uuid:)();
  v33 = (*(v30 + 48))(v28, 1, v29);
  v78 = v26;
  if (v33 == 1)
  {
    sub_100009104(v28, &qword_10057BC50, &qword_1004062D8);
  }

  else
  {
    (*(v30 + 32))(v32, v28, v29);
    sub_1000044A0(v12 + 10, v12[13]);
    v26 = v78;
    dispatch thunk of PendingPlaybackControllerProtocol.preflight(_:)();
    (*(v30 + 8))(v32, v29);
  }

  v62 = a11;
  v61 = a10;
  v60 = a9;
  if (v67)
  {
    v34 = type metadata accessor for EpisodeListSettings();
    (*(*(v34 - 8) + 56))(v26, 1, 1, v34);
  }

  else
  {
    sub_100010430(v59, v26, &unk_100573A80, &unk_100401160);
  }

  sub_100168088(&qword_100574690, &unk_100401BA0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100400790;
  *(v35 + 32) = a1;
  *(v35 + 40) = a2;
  v36 = v68;
  *v68 = v35;
  v37 = v64;
  v38 = v65;
  (*(v64 + 104))(v36, enum case for MediaIdentifier.localEpisodes(_:), v65);
  v39 = &enum case for PlaybackIntent.Origin.smartPlay(_:);
  if ((v76 & 1) == 0)
  {
    v39 = &enum case for PlaybackIntent.Origin.default(_:);
  }

  (*(v66 + 104))(v70, *v39, v69);
  (*(v37 + 56))(v72, 1, 1, v38);
  sub_100010430(v26, v63, &unk_100573A80, &unk_100401160);

  PlaybackIntent.Context.init(origin:seed:baseListSettings:)();
  v40 = type metadata accessor for PodcastsMediaLibrary.MediaItem();
  (*(*(v40 - 8) + 56))(v17, 1, 1, v40);
  static Set<>.default.getter();
  v41 = v79;
  PlaybackIntent.init(id:context:initialItem:options:)();
  v42 = v81;
  static TaskPriority.userInitiated.getter();
  v43 = type metadata accessor for TaskPriority();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v76 = v12[15];
  v44 = v77;
  v45 = v75;
  (*(v77 + 16))(v75, v41, v80);
  sub_100004428((v12 + 10), v83);
  sub_100010430(v74, v82, &unk_1005783D0, &qword_1004031E0);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = (v73 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 17) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 47) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  v52 = v51 + v46;
  v53 = v80;
  (*(v44 + 32))(v52, v45, v80);
  v54 = v51 + v47;
  *v54 = v60;
  *(v54 + 8) = v61 & 1;
  *(v54 + 9) = v62 & 1;
  *(v51 + v48) = v76;
  sub_1000109E4(v83, v51 + v49);
  *(v51 + v50) = v12;
  v55 = (v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8));
  v56 = v82[1];
  *v55 = v82[0];
  v55[1] = v56;

  v57 = v81;
  sub_100296DB0(0, 0, v81, &unk_1004091E0, v51);

  sub_100009104(v57, &qword_100578010, &qword_100401F60);
  (*(v44 + 8))(v79, v53);
  return sub_100009104(v78, &unk_100573A80, &unk_100401160);
}

void sub_1002A5520(char a1)
{
  type metadata accessor for PlaybackIntent();
  v3 = *(v1 + 16);

  sub_1002A19E8(a1, v3);
}

void sub_1002A55A0(uint64_t a1)
{
  v1 = a1;
  if (os_feature_enabled_red_sun())
  {
    if (qword_100593598 && *(qword_100593598 + OBJC_IVAR____TtC8Podcasts11AppDelegate_nowPlayingBootstrap))
    {

      sub_1001CDBF0(v1 & 1, 0, 0);
    }
  }

  else
  {
    v2 = [objc_opt_self() defaultInstance];
    [v2 presentNowPlayingAnimated:v1 & 1];
  }
}

uint64_t sub_1002A5684(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = a1;
  result = os_feature_enabled_red_sun();
  if (result)
  {
    if (qword_100593598 && *(qword_100593598 + OBJC_IVAR____TtC8Podcasts11AppDelegate_nowPlayingBootstrap))
    {

      sub_1001CDE5C(v5 & 1, a2, a3);
    }
  }

  else if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1002A5728(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v103 = a4;
  v115 = a3;
  v107 = a1;
  v98 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v97 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for PreviewingPresentationHint();
  v94 = *(v95 - 8);
  __chkstk_darwin();
  v93 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for PresentationSource();
  v111 = *(v112 - 8);
  __chkstk_darwin();
  v108 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for InteractionContext();
  v105 = *(v106 - 8);
  __chkstk_darwin();
  v101 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v91 - v10;
  __chkstk_darwin();
  v114 = &v91 - v11;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v13 = (&v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v100 = &v91 - v14;
  __chkstk_darwin();
  v113 = &v91 - v15;
  v16 = type metadata accessor for PodcastsReferenceLink();
  v96 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100577EA0, qword_1004051E8);
  __chkstk_darwin();
  v20 = &v91 - v19;
  v110 = type metadata accessor for ShowOffer();
  v109 = *(v110 - 1);
  __chkstk_darwin();
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BBB0, &qword_100403860);
  __chkstk_darwin();
  v24 = &v91 - v23;
  v25 = type metadata accessor for EpisodeContextActionDataType(0);
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v92 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v91 - v28;
  v29 = type metadata accessor for AnyReferenceLink();
  v119[3] = v29;
  v119[4] = sub_1002A91E8(&qword_10057BC18, 255, &type metadata accessor for AnyReferenceLink, &protocol conformance descriptor for AnyReferenceLink);
  v30 = sub_10000E680(v119);
  (*(*(v29 - 8) + 16))(v30, v115, v29);
  v31 = PodcastsReferenceLink.content.getter();
  sub_1001CEA68(v32, v33, v34);
  if (v31 == 3)
  {
    v43 = v22;
    v115 = v13;
    v44 = v97;
    (*(v96 + 16))(v18, a2, v16);
    ShowOffer.init(from:)();
    if ((*(v109 + 48))(v20, 1, v110) != 1)
    {
      v60 = v109;
      v61 = *(v109 + 32);
      v62 = v43;
      v91 = v43;
      v63 = v20;
      v64 = v110;
      v61(v43, v63, v110);
      v65 = v111;
      v66 = v113;
      v67 = v112;
      (*(v111 + 16))(v113, v103, v112);
      (*(v65 + 56))(v66, 0, 1, v67);
      (*(v60 + 16))(v44, v62, v64);
      type metadata accessor for PodcastContextActionDataType.Kind(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PodcastContextActionData(0);
      v68 = swift_allocObject();
      *(v68 + 16) = [objc_opt_self() sharedInstance];
      sub_1002A8F58(v44, v68 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type, type metadata accessor for PodcastContextActionDataType);
      v69 = v68 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType;
      *v69 = 0u;
      *(v69 + 16) = 0u;
      *(v69 + 32) = 0u;
      *(v69 + 48) = 0u;
      *(v69 + 64) = -1;
      sub_100216334();
      sub_1002A9028(v44, type metadata accessor for PodcastContextActionDataType);
      sub_100004428(v119, v118);
      v70 = v105;
      v71 = *(v105 + 16);
      v72 = v114;
      v73 = v106;
      v71(v114, v104, v106);
      type metadata accessor for PodcastContextActionConfiguration(0);
      *(swift_allocObject() + qword_100576738) = v68;
      v74 = v100;
      sub_100010430(v113, v100, &unk_10057BB90, &unk_100402D60);
      sub_100010430(v118, v117, &qword_100576490, &qword_100403D40);
      v75 = v102;
      v71(v102, v72, v73);
      sub_100010430(v74, v115, &unk_10057BB90, &unk_100402D60);
      sub_100010430(v117, v116, &qword_100576490, &qword_100403D40);
      v71(v101, v75, v73);

      v35 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v76 = *(v70 + 8);
      v76(v75, v73);
      sub_100009104(v117, &qword_100576490, &qword_100403D40);
      sub_100009104(v74, &unk_10057BB90, &unk_100402D60);
      v76(v114, v73);
      sub_100009104(v118, &qword_100576490, &qword_100403D40);
      sub_100009104(v113, &unk_10057BB90, &unk_100402D60);
      (*(v109 + 8))(v91, v110);
      goto LABEL_15;
    }

    v40 = &qword_100577EA0;
    v41 = qword_1004051E8;
    v42 = v20;
LABEL_10:
    sub_100009104(v42, v40, v41);
LABEL_11:
    v35 = 0;
    goto LABEL_15;
  }

  if (v31 == 2)
  {
    sub_100399650(v24);
    if ((*(v26 + 48))(v24, 1, v25) != 1)
    {
      v45 = v99;
      sub_1002A8FC0(v24, v99, type metadata accessor for EpisodeContextActionDataType);
      v110 = *(v111 + 16);
      (v110)(v108, v103, v112);
      v46 = v92;
      sub_1002A8F58(v45, v92, type metadata accessor for EpisodeContextActionDataType);
      v47 = v94;
      v48 = v93;
      v49 = v95;
      (*(v94 + 104))(v93, enum case for PreviewingPresentationHint.push(_:), v95);
      type metadata accessor for EpisodeContextActionData(0);
      v50 = swift_allocObject();
      v51 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
      *(v50 + v51) = [objc_opt_self() sharedInstance];
      sub_1002A8F58(v46, v50 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, type metadata accessor for EpisodeContextActionDataType);
      (*(v47 + 16))(v50 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v48, v49);
      *(v50 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
      sub_100399908();
      (*(v47 + 8))(v48, v49);
      v115 = type metadata accessor for EpisodeContextActionDataType;
      sub_1002A9028(v46, type metadata accessor for EpisodeContextActionDataType);
      sub_100004428(v119, v118);
      v52 = v105;
      v53 = *(v105 + 16);
      v54 = v114;
      v55 = v106;
      v53(v114, v104, v106);
      type metadata accessor for EpisodeContextActionConfiguration(0);
      *(swift_allocObject() + qword_100576670) = v50;
      v56 = v113;
      v57 = v112;
      (v110)(v113, v108, v112);
      (*(v111 + 56))(v56, 0, 1, v57);
      sub_100010430(v118, v117, &qword_100576490, &qword_100403D40);
      v58 = v102;
      v53(v102, v54, v55);
      sub_100010430(v56, v100, &unk_10057BB90, &unk_100402D60);
      sub_100010430(v117, v116, &qword_100576490, &qword_100403D40);
      v53(v101, v58, v55);

      v35 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v59 = *(v52 + 8);
      v59(v58, v55);
      sub_100009104(v117, &qword_100576490, &qword_100403D40);
      sub_100009104(v56, &unk_10057BB90, &unk_100402D60);
      v59(v114, v55);
      sub_100009104(v118, &qword_100576490, &qword_100403D40);
      (*(v111 + 8))(v108, v112);
      sub_1002A9028(v99, v115);
      goto LABEL_15;
    }

    v40 = &unk_10057BBB0;
    v41 = &qword_100403860;
    v42 = v24;
    goto LABEL_10;
  }

  v35 = 0;
  if (v31 == 1)
  {
    PodcastsReferenceLink.content.getter();
    v39 = v36;
    if (!v38)
    {
      v77 = v111;
      v78 = v113;
      v79 = v112;
      (*(v111 + 16))(v113, v103, v112);
      (*(v77 + 56))(v78, 0, 1, v79);
      v80 = PodcastsReferenceLink.title.getter();
      v82 = v81;
      sub_100004428(v119, v118);
      v83 = v114;
      (*(v105 + 16))(v114, v104, v106);
      type metadata accessor for ChannelContextActionConfiguration(0);
      v84 = swift_allocObject();
      sub_100010C38(v118, v118[3]);
      v85 = __chkstk_darwin();
      v87 = &v91 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v88 + 16))(v87, v85);

      v35 = sub_1002A35F4(v89, v78, 1, v39, v80, v82, v87, v83, v84);
      sub_100004590(v118);
      goto LABEL_15;
    }

    sub_1001CEA68(v36, v37, v38);
    goto LABEL_11;
  }

LABEL_15:
  sub_100004590(v119);
  return v35;
}

uint64_t sub_1002A6790(uint64_t a1, uint64_t (*a2)(uint64_t a1), double (*a3)(void, void, void), uint64_t a4)
{
  v116 = a4;
  v115 = a3;
  v114 = a1;
  v100 = type metadata accessor for URLReferenceLink();
  v99 = *(v100 - 8);
  __chkstk_darwin();
  v98 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v92 - v6;
  v106 = type metadata accessor for InteractionContext();
  v113 = *(v106 - 8);
  __chkstk_darwin();
  v103 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v92 - v8;
  __chkstk_darwin();
  v105 = &v92 - v9;
  __chkstk_darwin();
  v112 = &v92 - v10;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v101 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v92 - v12;
  __chkstk_darwin();
  v108 = &v92 - v13;
  __chkstk_darwin();
  v109 = &v92 - v14;
  v111 = type metadata accessor for URL();
  v110 = *(v111 - 8);
  __chkstk_darwin();
  v107 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v92 - v16;
  v17 = type metadata accessor for AppReferenceLink();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v92 - v21;
  v23 = type metadata accessor for PodcastsReferenceLink();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v92 - v27;
  AnyReferenceLink.base.getter();
  sub_100168088(&qword_10057BC10, &qword_1004091B0);
  if (!swift_dynamicCast())
  {
    v30 = v115;
    v31 = v116;
    v96 = a2;
    if (swift_dynamicCast())
    {
      v95 = v18;
      v32 = *(v18 + 32);
      v93 = v20;
      v94 = v17;
      v32(v20, v22, v17);
      v33 = AppReferenceLink.bundleID.getter();
      v35 = v34;
      AppReferenceLink.shareURL.getter();
      v100 = AppReferenceLink.title.getter();
      v99 = v36;
      v37 = type metadata accessor for PresentationSource();
      v38 = *(v37 - 8);
      v39 = v109;
      (*(v38 + 16))(v109, v30, v37);
      (*(v38 + 56))(v39, 0, 1, v37);
      v115 = *(v113 + 16);
      v40 = v112;
      v41 = v106;
      v115(v112, v31, v106);
      v42 = type metadata accessor for AnyReferenceLink();
      v122 = v42;
      v123 = sub_1002A91E8(&qword_10057BC18, 255, &type metadata accessor for AnyReferenceLink, &protocol conformance descriptor for AnyReferenceLink);
      v43 = sub_10000E680(&v121);
      (*(*(v42 - 8) + 16))(v43, v96, v42);
      type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
      v44 = swift_allocObject();
      v45 = (v44 + qword_1005932E0);
      *v45 = v33;
      v45[1] = v35;
      v46 = *(v110 + 16);
      v47 = v107;
      v48 = v111;
      v46(v107, v117, v111);
      sub_100004428(&v121, &v120);
      v49 = v39;
      v50 = v108;
      sub_100010430(v49, v108, &unk_10057BB90, &unk_100402D60);
      v51 = v105;
      v52 = v40;
      v53 = v115;
      v115(v105, v52, v41);
      v46((v44 + qword_100593318), v47, v48);
      v54 = (v44 + qword_100593320);
      v55 = v99;
      *v54 = v100;
      v54[1] = v55;
      v56 = v102;
      sub_100010430(v50, v102, &unk_10057BB90, &unk_100402D60);
      sub_100004428(&v120, v119);
      v57 = v104;
      v53(v104, v51, v41);
      sub_100010430(v56, v101, &unk_10057BB90, &unk_100402D60);
      sub_100010430(v119, v118, &qword_100576490, &qword_100403D40);
      v53(v103, v57, v41);

      v29 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v58 = *(v113 + 8);
      v58(v57, v41);
      sub_100009104(v119, &qword_100576490, &qword_100403D40);
      sub_100009104(v56, &unk_10057BB90, &unk_100402D60);
      v58(v51, v41);
      sub_100009104(v108, &unk_10057BB90, &unk_100402D60);
      sub_100004590(&v120);
      v59 = *(v110 + 8);
      v60 = v111;
      v59(v107, v111);
      v58(v112, v41);
      sub_100009104(v109, &unk_10057BB90, &unk_100402D60);
      v59(v117, v60);
      (*(v95 + 8))(v93, v94);
    }

    else
    {
      v61 = v97;
      v62 = v100;
      v63 = swift_dynamicCast();
      v29 = 0;
      v64 = v96;
      if (!v63)
      {
        goto LABEL_8;
      }

      (*(v99 + 32))(v98, v61, v62);
      v65 = URLReferenceLink.bundleID.getter();
      v67 = v66;
      URLReferenceLink.url.getter();
      v68 = type metadata accessor for PresentationSource();
      v69 = *(v68 - 8);
      v70 = v109;
      (*(v69 + 16))(v109, v30, v68);
      (*(v69 + 56))(v70, 0, 1, v68);
      v115 = *(v113 + 16);
      v71 = v112;
      v72 = v106;
      v115(v112, v31, v106);
      v73 = type metadata accessor for AnyReferenceLink();
      v122 = v73;
      v123 = sub_1002A91E8(&qword_10057BC18, 255, &type metadata accessor for AnyReferenceLink, &protocol conformance descriptor for AnyReferenceLink);
      v74 = sub_10000E680(&v121);
      (*(*(v73 - 8) + 16))(v74, v64, v73);
      type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
      v75 = swift_allocObject();
      v76 = (v75 + qword_1005932E0);
      *v76 = v65;
      v76[1] = v67;
      v77 = *(v110 + 16);
      v78 = v107;
      v79 = v111;
      v77(v107, v117, v111);
      sub_100004428(&v121, &v120);
      v80 = v70;
      v81 = v108;
      sub_100010430(v80, v108, &unk_10057BB90, &unk_100402D60);
      v82 = v105;
      v83 = v71;
      v84 = v115;
      v115(v105, v83, v72);
      v77((v75 + qword_100593318), v78, v79);
      v85 = (v75 + qword_100593320);
      *v85 = 0;
      v85[1] = 0;
      v86 = v102;
      sub_100010430(v81, v102, &unk_10057BB90, &unk_100402D60);
      sub_100004428(&v120, v119);
      v87 = v104;
      v84(v104, v82, v72);
      sub_100010430(v86, v101, &unk_10057BB90, &unk_100402D60);
      sub_100010430(v119, v118, &qword_100576490, &qword_100403D40);
      v84(v103, v87, v72);

      v29 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v88 = *(v113 + 8);
      v88(v87, v72);
      sub_100009104(v119, &qword_100576490, &qword_100403D40);
      sub_100009104(v86, &unk_10057BB90, &unk_100402D60);
      v88(v82, v72);
      sub_100009104(v108, &unk_10057BB90, &unk_100402D60);
      sub_100004590(&v120);
      v89 = *(v110 + 8);
      v90 = v111;
      v89(v107, v111);
      v88(v112, v72);
      sub_100009104(v109, &unk_10057BB90, &unk_100402D60);
      v89(v117, v90);
      (*(v99 + 8))(v98, v100);
    }

    sub_100004590(&v121);
    goto LABEL_8;
  }

  (*(v24 + 32))(v26, v28, v23);
  v29 = sub_1002A5728(v114, v26, a2, v115, v116);
  (*(v24 + 8))(v26, v23);
LABEL_8:
  sub_100004590(&v124);
  return v29;
}

char *sub_1002A7674(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = sub_1002A9088;
  v19 = v6;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1002A3514;
  v17 = &unk_1004E9598;
  v9 = _Block_copy(&v14);
  swift_retain_n();

  v18 = sub_1002A90C0;
  v19 = v7;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1002A3564;
  v17 = &unk_1004E95C0;
  v10 = _Block_copy(&v14);

  v11 = [ObjCClassFromMetadata configurationWithIdentifier:0 previewProvider:v9 actionProvider:v10];

  _Block_release(v10);
  _Block_release(v9);
  *&v11[OBJC_IVAR____TtC8PodcastsP33_1E0FAAAEE761D84EC15F0A371F0F292131ContextActionsMenuConfiguration_config] = a1;
  v12 = v11;

  [v12 setPreferredMenuElementOrder:2];

  return v12;
}

uint64_t sub_1002A7888(void *a1, void *a2)
{
  type metadata accessor for ContextActionsMenuConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC8PodcastsP33_1E0FAAAEE761D84EC15F0A371F0F292131ContextActionsMenuConfiguration_config);
    if (v5)
    {
      v6 = a1;

      [a2 setPreferredCommitStyle:dispatch thunk of ContextActionsConfiguration.preferredPreviewActionCommitStyle.getter()];
      v8[4] = j___s8ShelfKit27ContextActionsConfigurationC20performPreviewActionyyFTj;
      v8[5] = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10000F038;
      v8[3] = &unk_1004E9520;
      v7 = _Block_copy(v8);

      [a2 addCompletion:v7];
      _Block_release(v7);
    }
  }

  return result;
}

id sub_1002A79B4(__n128 a1, uint64_t a2, void *a3)
{
  v35 = a3;
  v3 = type metadata accessor for PresentationSource();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EpisodeOffer();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ShareSheetContentSource();
  __chkstk_darwin();
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  ShareSheetAction.shareSheetContentSource.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v12;
    v13 = COERCE_DOUBLE(ShareSheetAction.referenceTime.getter());
    v15 = 0.0;
    if (v14)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v13;
    }

    v17 = COERCE_DOUBLE(ShareSheetAction.playerTime.getter());
    if ((v18 & 1) == 0)
    {
      v15 = v17;
    }

    v19 = objc_opt_self();
    [v12 playhead];
    v21 = [v19 shareViewControllerWithEpisode:v12 selectedReferenceTime:v16 selectedPlayerTime:v15 currentPlayerTime:v20];

    if (v21)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  (*(v8 + 32))(v10, v12, v7);
  v22 = sub_100294534();
  if (!v22)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v12 = v22;
  v23 = COERCE_DOUBLE(ShareSheetAction.referenceTime.getter());
  v25 = 0.0;
  if (v24)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v23;
  }

  v27 = COERCE_DOUBLE(ShareSheetAction.playerTime.getter());
  if ((v28 & 1) == 0)
  {
    v25 = v27;
  }

  v29 = objc_opt_self();
  [v12 playhead];
  result = [v29 shareViewControllerWithPlayerItem:v12 selectedReferenceTime:v26 selectedPlayerTime:v25 currentPlayerTime:v30];
  if (result)
  {
    v21 = result;
    (*(v8 + 8))(v10, v7);
LABEL_17:

    v32 = v21;
    v33 = v35;
    PresentationSource.init(view:)();
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();

    return (*(v4 + 8))(v6, v3);
  }

  __break(1u);
  return result;
}

void *sub_1002A7D30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v55 = a8;
  v51 = a7;
  v53 = a6;
  v52 = a5;
  v67 = a4;
  v59 = a1;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v58 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = &v47 - v13;
  v49 = type metadata accessor for InteractionContext();
  v65 = *(v49 - 8);
  __chkstk_darwin();
  v57 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v47 - v15;
  __chkstk_darwin();
  v66 = &v47 - v16;
  sub_100168088(&qword_100576948, &unk_100403D60);
  __chkstk_darwin();
  v64 = &v47 - v17;
  v18 = type metadata accessor for PresentationSource();
  v60 = v18;
  v63 = *(v18 - 8);
  __chkstk_darwin();
  v62 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PreviewingPresentationHint();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = (&v47 - v26);
  sub_100168088(&qword_100574690, &unk_100401BA0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100400790;
  *(v28 + 32) = a2;
  *(v28 + 40) = a3;
  *v27 = v28;
  v27[1] = 0;
  v50 = v27;
  swift_storeEnumTagMultiPayload();
  sub_1002A8F58(v27, v25, type metadata accessor for EpisodeContextActionDataType);
  (*(v21 + 104))(v23, enum case for PreviewingPresentationHint.push(_:), v20);
  type metadata accessor for EpisodeContextActionData(0);
  v29 = swift_allocObject();
  v30 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
  v31 = objc_opt_self();

  *(v29 + v30) = [v31 sharedInstance];
  sub_1002A8F58(v25, v29 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, type metadata accessor for EpisodeContextActionDataType);
  (*(v21 + 16))(v29 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v23, v20);
  v61 = v29;
  *(v29 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
  sub_100399908();
  (*(v21 + 8))(v23, v20);
  v48 = type metadata accessor for EpisodeContextActionDataType;
  sub_1002A9028(v25, type metadata accessor for EpisodeContextActionDataType);
  v32 = v63;
  v47 = *(v63 + 16);
  v33 = v62;
  v47(v62, v51, v18);
  v34 = v64;
  sub_100010430(v52, v64, &qword_100576948, &unk_100403D60);
  sub_100004428(v53, &v71);
  v35 = v66;
  v36 = *(v65 + 16);
  v37 = v49;
  v36(v66, v55, v49);
  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v38 = swift_allocObject();
  *(v38 + qword_1005766C8) = v61;
  *(v38 + qword_1005766D0) = v67;
  *(v38 + qword_1005766D8) = a9;
  sub_100010430(v34, v38 + qword_100593298, &qword_100576948, &unk_100403D60);
  sub_100004428(&v71, v38 + qword_1005932A0);
  v39 = v56;
  v40 = v33;
  v41 = v60;
  v47(v56, v40, v60);
  (*(v32 + 56))(v39, 0, 1, v41);
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v42 = v54;
  v36(v54, v35, v37);
  sub_100010430(v39, v58, &unk_10057BB90, &unk_100402D60);
  sub_100010430(v69, v68, &qword_100576490, &qword_100403D40);
  v36(v57, v42, v37);

  v43 = v67;

  ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v44 = *(v65 + 8);
  v44(v42, v37);
  sub_100009104(v69, &qword_100576490, &qword_100403D40);
  sub_100009104(v39, &unk_10057BB90, &unk_100402D60);
  v44(v66, v37);
  sub_100004590(&v71);
  sub_100009104(v64, &qword_100576948, &unk_100403D60);
  (*(v63 + 8))(v62, v60);
  rawValue = ContextActionsConfiguration.transcriptSelectionActions()()._0._rawValue;

  sub_1002A9028(v50, v48);
  return rawValue;
}

void *sub_1002A858C(uint64_t a1, uint64_t (*a2)(uint64_t a1), void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v55 = a7;
  v52 = a6;
  v54 = a5;
  v53 = a4;
  v66 = a3;
  v50 = a2;
  v60 = a1;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v48 - v10;
  v65 = type metadata accessor for InteractionContext();
  v67 = *(v65 - 8);
  __chkstk_darwin();
  v58 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = &v48 - v12;
  __chkstk_darwin();
  v64 = &v48 - v13;
  sub_100168088(&qword_100576948, &unk_100403D60);
  __chkstk_darwin();
  v63 = &v48 - v14;
  v68 = type metadata accessor for PresentationSource();
  v62 = *(v68 - 8);
  __chkstk_darwin();
  v61 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PreviewingPresentationHint();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = (&v48 - v22);
  sub_100168088(&qword_10057BBA0, qword_100404540);
  v24 = type metadata accessor for EpisodeOffer();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100400790;
  (*(v25 + 16))(v27 + v26, v50, v24);
  *v23 = v27;
  v51 = v23;
  swift_storeEnumTagMultiPayload();
  sub_1002A8F58(v23, v21, type metadata accessor for EpisodeContextActionDataType);
  (*(v17 + 104))(v19, enum case for PreviewingPresentationHint.push(_:), v16);
  type metadata accessor for EpisodeContextActionData(0);
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
  *(v28 + v29) = [objc_opt_self() sharedInstance];
  sub_1002A8F58(v21, v28 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, type metadata accessor for EpisodeContextActionDataType);
  (*(v17 + 16))(v28 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v19, v16);
  *(v28 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
  sub_100399908();
  (*(v17 + 8))(v19, v16);
  v50 = type metadata accessor for EpisodeContextActionDataType;
  sub_1002A9028(v21, type metadata accessor for EpisodeContextActionDataType);
  v30 = v62;
  v49 = *(v62 + 16);
  v31 = v61;
  v49(v61, v52, v68);
  v32 = v63;
  sub_100010430(v53, v63, &qword_100576948, &unk_100403D60);
  sub_100004428(v54, &v72);
  v33 = *(v67 + 16);
  v34 = v64;
  v33(v64, v55, v65);
  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v35 = swift_allocObject();
  *(v35 + qword_1005766C8) = v28;
  *(v35 + qword_1005766D0) = v66;
  *(v35 + qword_1005766D8) = a8;
  sub_100010430(v32, v35 + qword_100593298, &qword_100576948, &unk_100403D60);
  sub_100004428(&v72, v35 + qword_1005932A0);
  v36 = v57;
  v37 = v31;
  v38 = v68;
  v49(v57, v37, v68);
  (*(v30 + 56))(v36, 0, 1, v38);
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v39 = v56;
  v40 = v65;
  v33(v56, v34, v65);
  sub_100010430(v36, v59, &unk_10057BB90, &unk_100402D60);
  sub_100010430(v70, v69, &qword_100576490, &qword_100403D40);
  v41 = v39;
  v42 = v39;
  v43 = v40;
  v33(v58, v41, v40);

  v44 = v66;

  ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v45 = *(v67 + 8);
  v45(v42, v43);
  sub_100009104(v70, &qword_100576490, &qword_100403D40);
  sub_100009104(v36, &unk_10057BB90, &unk_100402D60);
  v45(v64, v43);
  sub_100004590(&v72);
  sub_100009104(v63, &qword_100576948, &unk_100403D60);
  (*(v62 + 8))(v61, v68);
  rawValue = ContextActionsConfiguration.transcriptSelectionActions()()._0._rawValue;

  sub_1002A9028(v51, v50);
  return rawValue;
}

void sub_1002A8E4C(char a1)
{
  if (qword_100593598 && *(qword_100593598 + OBJC_IVAR____TtC8Podcasts11AppDelegate_nowPlayingBootstrap))
  {

    RepublishingValueSubject.value.getter();
    if (v3)
    {
      v2 = [v3 view];

      if (!v2)
      {
        __break(1u);
        return;
      }

      [v2 setHidden:a1 & 1];
    }
  }
}

unint64_t sub_1002A8F04()
{
  result = qword_10057BBC0;
  if (!qword_10057BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057BBC0);
  }

  return result;
}

uint64_t sub_1002A8F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A8FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A9028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002A9088()
{
  if (*(v0 + 16) == 1)
  {
    return ContextActionsConfiguration.previewViewController()();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A90C8(void *a1)
{
  v3 = *(type metadata accessor for PreviewingPresentationHint() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));
  v8 = *(v7 + *(v3 + 64));

  return sub_10029C8EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002A9160()
{
  v1 = *(type metadata accessor for PreviewingPresentationHint() - 8);
  v2 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));
  return sub_10029CD4C(*(v0 + 24), *(v0 + 32), *(v0 + 40), v2, *(v2 + *(v1 + 64)), v3);
}

uint64_t sub_1002A91E8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1002A9240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10021A620;

  return sub_1002980B0(a1, v4, v5, v7, v6);
}

uint64_t sub_1002A9300(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10021A620;

  return sub_100297F88(a1, v4, v5, v7, v6);
}

uint64_t sub_1002A93C0(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackController.TransportCommand() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10021A620;

  return sub_100297BCC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1002A94F0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10021A620;

  return sub_100297428(v7, a1, v4, v5, v6, v8);
}

uint64_t sub_1002A95BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10021A620;

  return sub_100297070(a1, v4, v5, v7, v6);
}

uint64_t sub_1002A967C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002A96C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001C51C;

  return sub_1002957BC(a1, v4, v5, v7, v6);
}

void sub_1002A97A4()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v1 = [objc_opt_self() topLevelPlaylistsExcludingFoldersPredicate];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = objc_allocWithZone(MTUuidQueryObserver);
  v3 = v1;
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 initWithEntityName:v4 predicate:v3];

  if (v5)
  {
    *(v0 + 16) = v5;
    [v5 startObserving];
    v6 = [*(v0 + 16) uuids];
    if (v6)
    {
      v7 = v6;
      v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = *(v8 + 16);

      *(v0 + 24) = v9;
      v10 = *(v0 + 16);
      v11 = swift_allocObject();
      swift_weakInit();
      v15[4] = sub_1002A9EC0;
      v15[5] = v11;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_100043B8C;
      v15[3] = &unk_1004E98B8;
      v12 = _Block_copy(v15);
      v13 = v10;

      v14 = [v13 addResultsChangedHandler:v12];

      _Block_release(v12);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1002A99B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (v5)
    {
      v6 = *(v5 + 16);

      v7 = [v6 uuids];

      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = *(v8 + 16);
    }

    else
    {
      v9 = 0;
    }

    v4[3] = v9;
    swift_beginAccess();
    v10 = v4[4];
    if (v10)
    {
      v11 = v4[5];

      v10(v9);

      sub_1000112B4(v10, v11);
    }

    else
    {
    }
  }
}

uint64_t sub_1002A9AF4()
{
  [*(v0 + 16) stop];

  sub_1000112B4(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t (*sub_1002A9B78())()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1002A9EC8;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2, v3);
  return v5;
}

uint64_t sub_1002A9C40(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1001A3248;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  return sub_1000112B4(v8, v9);
}

void (*sub_1002A9D10(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  *(v3 + 40) = *v1;
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1002A9E94;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *(v4 + 24) = v9;
  *(v4 + 32) = v8;
  return sub_1002A9DDC;
}

void sub_1002A9DDC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1001A3100;
    }

    else
    {
      v4 = sub_1001A3248;
    }

    v5 = v2[4];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v2[5];
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  swift_endAccess();

  free(v2);
}

void sub_1002A9ECC(__n128 a1)
{
  type metadata accessor for ScalarDictionary();
  __chkstk_darwin();
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricsFieldInclusionRequest();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v37 = &v24 - v8;
  v9 = type metadata accessor for MetricsData();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v38 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v39 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16)
  {
    v36 = type metadata accessor for FlowAction();
    sub_100168088(&unk_10057DC50, &unk_10040A590);
    v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100400790;

    static MetricsTargetID.manageFavoriteCategories.getter();
    v32 = v3;
    static MetricsTargetType.button.getter();
    v30 = v10;
    v26 = v5;
    v25 = v7;
    v35 = v12;
    static MetricsActionType.navigate.getter();
    v27 = v4;
    v28 = v9;
    static MetricsActionContext.contextual.getter();
    v33 = v13;
    v17 = type metadata accessor for URL();
    v18 = v37;
    (*(*(v17 - 8) + 56))(v37, 1, 1, v17);
    v34 = v16;
    static MetricsDataConfiguration.default.getter();
    v19 = v38;
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();
    v48 = v41;
    sub_100009104(&v48, &unk_100574650, &unk_1004023C0);
    v47 = v42;
    sub_100009104(&v47, &unk_100573A90, &unk_100401170);
    v46 = v43;
    sub_100009104(&v46, &unk_100574660, &unk_1004023D0);
    sub_100037470(v44, v45);

    sub_100009104(v18, &qword_100574040, &unk_100400AD0);
    v20 = v25;
    static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
    MetricsData.removingIncludedField(_:)();
    (*(v26 + 8))(v20, v27);
    (*(v30 + 8))(v19, v28);
    ScalarDictionary.init()();
    v21 = v39;
    ActionMetrics.init(data:custom:)();
    v22 = v36;
    v23 = static FlowAction.manageCategoriesPage(actionMetrics:pushPresentationContext:)();
    (*(v33 + 8))(v21, v35);
    v40[3] = v22;
    v40[4] = sub_1002AAA30(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    v40[0] = v23;

    ContextActionsConfiguration.perform(_:)();

    sub_100004590(v40);
  }
}

uint64_t sub_1002AA4A4()
{

  v1 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_contextActionType, &qword_100575870, &unk_100402BE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageFavoriteCategoriesContextAction(uint64_t a1)
{
  result = qword_10057BD78;
  if (!qword_10057BD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AA5CC(uint64_t a1)
{
  type metadata accessor for MetricsLabel();
  if (v1 <= 0x3F)
  {
    sub_1001C25E8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002AA6B8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x80000001004682E0;
  v1._object = 0x80000001004682B0;
  v1._countAndFlagsBits = 0xD000000000000029;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x100000000000001DLL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002AA770@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002AA800(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1002AA8AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL sub_1002AA96C()
{
  v1 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  result = 0;
  if (*(v0 + v1))
  {
    type metadata accessor for CategoryContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1002AA9D8(uint64_t a1)
{
  result = sub_1002AAA30(&unk_1005822E0, type metadata accessor for ManageFavoriteCategoriesContextAction, &unk_100409368);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002AAA30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1002AAA78()
{
  sub_100168088(&qword_100579468, &qword_100406650);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004007A0;
  sub_100004428(v0 + 24, v42);
  v2 = *(v0 + 64);
  type metadata accessor for PlayTranscriptSelectionContextAction(0);
  swift_allocObject();

  v3 = sub_100236A64(v42, v2);
  v4 = sub_1002AB1BC(&qword_100578FD0, type metadata accessor for PlayTranscriptSelectionContextAction, &unk_100406230);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  type metadata accessor for CopyTranscriptSelectionContextAction(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = [objc_opt_self() mainBundle];
  v43._object = 0xE000000000000000;
  v7._countAndFlagsBits = 2037411651;
  v7._object = 0xE400000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v43);

  *(v5 + 32) = v9;
  *(v5 + 48) = xmmword_1004093E0;
  *(v5 + 64) = 0xEA0000000000636FLL;
  v10 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_metricsLabel;
  v11 = enum case for MetricsLabel.copyTranscriptSelection(_:);
  v12 = type metadata accessor for MetricsLabel();
  v13 = *(*(v12 - 8) + 104);
  v41 = v11;
  v13(v5 + v10, v11, v12);
  v14 = v5 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v5 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_shareURL;
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  *(v5 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_selectedText) = 0;
  v18 = sub_1002AB1BC(&qword_10057AA90, type metadata accessor for CopyTranscriptSelectionContextAction, &unk_100407FC8);
  *(v1 + 48) = v5;
  *(v1 + 56) = v18;
  type metadata accessor for ShareEpisodeContextAction(0);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 16) = 0;
  *(v19 + 40) = 1;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  v13(v19 + OBJC_IVAR____TtC8Podcasts25ShareEpisodeContextAction_metricsLabel, enum case for MetricsLabel.share(_:), v12);
  v20 = sub_1002AB1BC(&qword_10057BED0, type metadata accessor for ShareEpisodeContextAction, &unk_10040EFD0);
  *(v1 + 64) = v19;
  *(v1 + 72) = v20;
  type metadata accessor for ViewTranscriptContextAction(0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_episodeOffer;
  v23 = type metadata accessor for EpisodeOffer();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration) = 0;
  v24 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_transcriptInfo;
  v25 = type metadata accessor for TranscriptRequestInformation();
  (*(*(v25 - 8) + 56))(v21 + v24, 1, 1, v25);
  v26 = sub_1002AB1BC(&qword_10057BED8, type metadata accessor for ViewTranscriptContextAction, &unk_10040B9F8);
  *(v1 + 80) = v21;
  *(v1 + 88) = v26;
  type metadata accessor for ReportConcernContextAction(0);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = -1;
  *(v27 + 48) = 0;
  *(v27 + 56) = 0;
  *(v27 + 64) = 0xD000000000000016;
  *(v27 + 72) = 0x800000010046D090;
  v13(v27 + OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_metricsLabel, enum case for MetricsLabel.reportPodcast(_:), v12);
  v28 = OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_contextActionType;
  v29 = enum case for ContextActionType.report(_:);
  v30 = type metadata accessor for ContextActionType();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v27 + v28, v29, v30);
  (*(v31 + 56))(v27 + v28, 0, 1, v30);
  v32 = sub_1002AB1BC(&qword_100582290, type metadata accessor for ReportConcernContextAction, &unk_1004099B8);
  *(v1 + 96) = v27;
  *(v1 + 104) = v32;
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    type metadata accessor for TranscriptionErrorTTRContextAction(0);
    v33 = swift_allocObject();
    *(v33 + 24) = 0;
    *(v33 + 32) = 0;
    *(v33 + 16) = 0;
    *(v33 + 40) = xmmword_1004093F0;
    v13(v33 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_metricsLabel, v41, v12);
    v34 = (v33 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction____lazy_storage___title);
    *v34 = 0;
    v34[1] = 0;
    v35 = (v33 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_selectedText);
    *v35 = 0;
    v35[1] = 0;
    v36 = v33 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_timestamp;
    *v36 = 0;
    *(v36 + 8) = 1;
    v37 = OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_reportContent;
    v38 = type metadata accessor for KCURadar.ReportContent();
    (*(*(v38 - 8) + 56))(v33 + v37, 1, 1, v38);
    v1 = sub_100243DAC(1, 6, 1, v1);
    v39 = sub_1002AB1BC(&qword_10057BEE0, type metadata accessor for TranscriptionErrorTTRContextAction, &unk_10040CAB0);
    *(v1 + 16) = 6;
    *(v1 + 112) = v33;
    *(v1 + 120) = v39;
  }

  return v1;
}

uint64_t sub_1002AB12C()
{

  sub_100004590((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1002AB1BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002AB204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v45 = a4;
  v43 = a1;
  v5 = type metadata accessor for EpisodeOffer();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v14 = &v43 - v13;
  type metadata accessor for EpisodeContextActionDataType(0);
  v15 = __chkstk_darwin();
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001EAFE4(a3, v17, v15);
  LODWORD(v18) = swift_getEnumCaseMultiPayload();
  if (v18 <= 1)
  {
LABEL_9:
    if (!v18)
    {
      v20 = v10;
      v21 = *v17;

      if (v21[2])
      {
        v22 = v21[4];
        v23 = v21[5];

        v24 = [objc_opt_self() sharedInstance];
        v25 = [v24 mainQueueContext];

        v26 = String._bridgeToObjectiveC()();
        v27 = [v25 episodeForUuid:v26];

        if (v27)
        {

          v28 = [v27 title];
          if (v28)
          {
            v29 = v28;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          v39 = [v27 podcast];
          if (v39)
          {
            v40 = v39;
            v41 = [v39 title];

            if (v41)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }
          }

          [v27 pubDate];
          Date.init(timeIntervalSinceReferenceDate:)();
          v42 = type metadata accessor for Date();
          (*(*(v42 - 8) + 56))(v14, 0, 1, v42);
          v33 = static TranscriptCopyUtility.prepare(_:episodeTitle:podcastTitle:releaseDate:shareURL:)();

          sub_1001A4748(v14);
          return v33;
        }

        static Logger.transcripts.getter();

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v46 = v37;
          *v36 = 136315138;
          v38 = sub_1000153E0(v22, v23, &v46);

          *(v36 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v34, v35, "Failed to fetch local episode with uuid %s to copy selection from transcript", v36, 0xCu);
          sub_100004590(v37);
        }

        else
        {
        }

        (*(v20 + 8))(v12, v9);
        return 0;
      }

      goto LABEL_38;
    }

    if (*(*v17 + 16))
    {
      (*(v6 + 16))(v8, *v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      v33 = sub_1002AB888(v43, v44, v8, v45);
      (*(v6 + 8))(v8, v5);
      return v33;
    }

LABEL_38:

    return 0;
  }

  if (v18 != 2)
  {
    if (v18 != 3)
    {
      sub_1001EDA30(v17, v19);
      return 0;
    }

    v14 = sub_10039779C(*v17);

    if (v14 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_38;
      }
    }

    if ((v14 & 0xC000000000000001) == 0)
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_34:
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  v14 = *v17;
  if (*v17 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_38;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_38;
    }
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v31 = *(v14 + 32);
LABEL_19:
    v32 = v31;

    v33 = sub_1002ABA84(v43, v44, v32, v45);

    return v33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002AB888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = a2;
  v13[3] = a4;
  v13[1] = a1;
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v5 = v13 - v4;
  v6 = type metadata accessor for ShowOffer();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  EpisodeOffer.title.getter();
  EpisodeOffer.showOffer.getter();
  ShowOffer.title.getter();
  (*(v7 + 8))(v9, v6);
  if (EpisodeOffer.releaseDate.getter())
  {
    LazyDate.value.getter();
  }

  else
  {
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  v11 = static TranscriptCopyUtility.prepare(_:episodeTitle:podcastTitle:releaseDate:shareURL:)();

  sub_1001A4748(v5);
  return v11;
}

uint64_t sub_1002ABA84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v18 - v6;
  v8 = [a3 title];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = [a3 author];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = [a3 pubDate];
  if (v12)
  {
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  }

  v16 = static TranscriptCopyUtility.prepare(_:episodeTitle:podcastTitle:releaseDate:shareURL:)();

  sub_1001A4748(v7);
  return v16;
}

uint64_t (*sub_1002ABC80())()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1002ABF4C;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2, v3);
  return v5;
}

uint64_t sub_1002ABD1C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1002ABF48;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  return sub_1000112B4(v8, v9);
}

void (*sub_1002ABDB4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  *(v3 + 40) = *v1;
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1002ABF40;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *(v4 + 24) = v9;
  *(v4 + 32) = v8;
  return sub_1002ABE80;
}

void sub_1002ABE80(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1002ABF38;
    }

    else
    {
      v4 = sub_1002ABF48;
    }

    v5 = v2[4];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v2[5];
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  swift_endAccess();

  free(v2);
}

void sub_1002ABF50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    type metadata accessor for CoreDataFetcher();
    v17 = objc_opt_self();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 predicateForPodcastUUID:v18];

    __chkstk_darwin();
    *(&v24 - 6) = a1;
    *(&v24 - 5) = a2;
    *(&v24 - 4) = a3;
    *(&v24 - 3) = a4;
    *(&v24 - 2) = a5;
    static CoreDataFetcher.performAndWaitOnPodcast<A>(with:block:)();

    v20 = v29;
    v34 = v29;
    v21 = v28;
    v32 = v27;
    v33 = v28;
    v22 = v25;
    v23 = v26;
    v30 = v25;
    v31 = v26;
    *(a6 + 32) = v27;
    *(a6 + 48) = v21;
    *(a6 + 64) = v20;
    *a6 = v22;
    *(a6 + 16) = v23;
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1002AC178@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v40 - v15;
  if (!a1)
  {
    goto LABEL_17;
  }

  v41 = v14;
  v42 = v13;
  v17 = *(a2 + 18);
  if (v17 == 1)
  {
    swift_getObjectType();
    v40 = a5;
    v18 = a1;
    dispatch thunk of MTNotificationManagerProtocol.requestNotificationPermissionsIfNeeded()();
  }

  else
  {
    v19 = a1;
  }

  [a1 setNotifications:v17];
  [a1 setShowTypeSetting:*(a2 + 24)];
  [a1 setHidesPlayedEpisodes:*(a2 + 32)];
  [a1 setEpisodeLimit:*(a2 + 40)];
  [a1 setDeletePlayedEpisodes:*(a2 + 48)];
  v20 = [a1 advancedPlaybackSettings];
  if (v20)
  {
    v21 = v20;
    static Logger.settings.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = a3;
      v26 = v25;
      *&v43[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000153E0(0xD000000000000016, 0x8000000100409550, v43);
      _os_log_impl(&_mh_execute_header, v22, v23, "[%s] advancedPlaybackSettings already existed, modifying existing record", v24, 0xCu);
      sub_100004590(v26);
    }

    (*(v41 + 8))(v16, v42);
    v27 = *(a2 + 60);
    v28 = *(a2 + 64);
    [v21 setHasCustomSettings:*(a2 + 56) & 1];
    [v21 setPlaybackRate:v27];
    [v21 setEnhanceDialogueEnabled:v28 & 1];
LABEL_13:

    goto LABEL_14;
  }

  v29 = *(a2 + 56);
  v30 = *(a2 + 60);
  v45 = *(a2 + 64);
  if (v29)
  {
    static Logger.settings.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v43[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1000153E0(0xD000000000000016, 0x8000000100409550, v43);
      _os_log_impl(&_mh_execute_header, v31, v32, "[%s] advancedPlaybackSettings did not already exist, inserting new record", v33, 0xCu);
      sub_100004590(v34);
    }

    (*(v41 + 8))(v12, v42);
    v21 = [objc_opt_self() insertNewAdvancedPlaybackSettingsOnPodcast:a1 hasCustomSettings:1 playbackRate:v45 enhanceDialogueEnabled:v30];
    goto LABEL_13;
  }

LABEL_14:
  v35 = [a1 subscribed];
  v36 = *(a2 + 17);
  if (v35 != v36)
  {
    sub_1002ACF0C(a1, v36);
  }

  v37 = [a1 managedObjectContext];
  [v37 saveInCurrentBlock];

  type metadata accessor for PlayerPerShowSettingsHelper();
  static PlayerPerShowSettingsHelper.postPerShowSettingsChangedNotification(podcast:)();

LABEL_17:
  sub_1002AC8B4(a1, 1, v43);
  v38 = v43[3];
  *(a6 + 32) = v43[2];
  *(a6 + 48) = v38;
  *(a6 + 64) = v44;
  result = v43[1];
  *a6 = v43[0];
  *(a6 + 16) = result;
  return result;
}

__n128 sub_1002AC67C@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for CoreDataFetcher();
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 predicateForPodcastUUID:v3];

  static CoreDataFetcher.performAndWaitOnPodcast<A>(with:block:)();
  result = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *a1 = v6;
  *(a1 + 16) = v7;
  return result;
}

__n128 sub_1002AC78C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002AC8B4(a1, 0, v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

void sub_1002AC7E0(uint64_t a1)
{
  sub_100009F1C(0, &unk_100573E20, off_1004D1B80);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_10025810C(a1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 reportWithType:4 userInfo:isa location:@"psst" reason:0];
}

void sub_1002AC8B4(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v44[-v10];
  if (a1)
  {
    v12 = a1;
    v13 = [v12 notifications];
    if (a2)
    {
      v47 = v13;
    }

    else
    {
      v26 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
      v27 = [v26 BOOLForKey:kMTDidPromptForNotificationsPermissionsKey];

      v47 = [v12 notifications] & v27;
    }

    v28 = [v12 advancedPlaybackSettings];
    if (v28)
    {
      v29 = v28;
      static Logger.settings.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v48 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_1000153E0(0xD000000000000016, 0x8000000100409550, &v48);
        _os_log_impl(&_mh_execute_header, v30, v31, "[%s] Found advancedPlaybackSettings record on show", v32, 0xCu);
        sub_100004590(v33);
      }

      (*(v7 + 8))(v11, v6);
      v46 = [v29 hasCustomSettings];
      if ([v29 hasCustomSettings])
      {
        [v29 playbackRate];
        v22 = v34;
      }

      else
      {
        type metadata accessor for PlaybackRateHelper();
        static PlaybackRateHelper.standardRate.getter();
        v22 = v39;
      }

      if ([v29 hasCustomSettings])
      {
        v40 = [v29 enhanceDialogueEnabled];
      }

      else
      {
        v40 = [objc_opt_self() defaultEnhanceDialogueEnabled];
      }

      v45 = v40;
    }

    else
    {
      static Logger.settings.getter();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v48 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_1000153E0(0xD000000000000016, 0x8000000100409550, &v48);
        _os_log_impl(&_mh_execute_header, v35, v36, "[%s] advancedPlaybackSettings not found on show, will use default settings", v37, 0xCu);
        sub_100004590(v38);
      }

      (*(v7 + 8))(v9, v6);
      if (qword_100572818 != -1)
      {
        swift_once();
      }

      v22 = *&dword_10059353C;
      v45 = byte_100593540;
      v46 = byte_100593538;
    }

    v41 = [v12 title];
    if (v41)
    {
      v42 = v41;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v43;
    }

    else
    {
      v15 = 0;
      v20 = 0xE000000000000000;
    }

    v16 = [v12 isSerialShowTypeInFeed];
    v17 = [v12 subscribed];
    v25 = [v12 showTypeSetting];
    v19 = [v12 hidesPlayedEpisodes];
    v14 = [v12 episodeLimit];
    v24 = [v12 deletePlayedEpisodes];

    v21 = v46;
    v18 = v47;
    v23 = v45;
  }

  else
  {
    v14 = MTPodcastEpisodeLimit.intValue.getter();
    if (qword_100572818 != -1)
    {
      swift_once();
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0xE000000000000000;
    v21 = byte_100593538;
    v22 = *&dword_10059353C;
    v23 = byte_100593540;
    v24 = 0xFFFFFFFFLL;
    v25 = 1;
  }

  *a3 = v15;
  *(a3 + 8) = v20;
  *(a3 + 16) = v16;
  *(a3 + 17) = v17;
  *(a3 + 18) = v18;
  *(a3 + 19) = v48;
  *(a3 + 23) = BYTE4(v48);
  *(a3 + 24) = v25;
  *(a3 + 32) = v19;
  *(a3 + 40) = v14;
  *(a3 + 48) = v24;
  *(a3 + 56) = v21;
  *(a3 + 57) = v49;
  *(a3 + 59) = v50;
  *(a3 + 60) = v22;
  *(a3 + 64) = v23;
}

uint64_t sub_1002ACE64(uint64_t a1, int a2)
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

uint64_t sub_1002ACEAC(uint64_t result, int a2, int a3)
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

void sub_1002ACF0C(void *a1, char a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 managedObjectContext];
  if (v12)
  {
    v13 = v12;
    if (a2)
    {
      if (qword_100572820 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v14 = static PodcastsStateCoordinator.shared;
      v15 = String._bridgeToObjectiveC()();
      [v14 unsafeEnableSubscriptionOnPodcastUUID:v15 from:3 context:v13];

      [a1 markPlaylistsForUpdate];
      v16 = [a1 dictionaryRepresentation];
      v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
      v18 = static OS_dispatch_queue.main.getter();
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      aBlock[4] = sub_1002AD338;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004E9B30;
      v20 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1001D293C();
      sub_100168088(&unk_100575CD0, &unk_100400B50);
      sub_100182E30();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v20);

      (*(v23 + 8))(v6, v4);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      if (qword_100572820 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v21 = static PodcastsStateCoordinator.shared;
      v22 = String._bridgeToObjectiveC()();
      [v21 disableSubscriptionOnPodcastUUID:v22 from:3 context:v13];
    }
  }
}

BOOL sub_1002AD340()
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v2 = &v8[-v1 - 8];
  if (!*(v0 + 16))
  {
    return 0;
  }

  sub_1002AE7A8(v8);
  if (v9 == 3)
  {
    sub_1002ADAC4(v2);
    v3 = type metadata accessor for URL();
    v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
    sub_100009104(v2, &qword_100574040, &unk_100400AD0);
    return v4;
  }

  if (v9 >= 3)
  {
    v6 = v8[0];
    sub_100009104(v8, &qword_100574578, &qword_100401AB0);
    return (v6 & 1) == 0;
  }

  sub_100009104(v8, &qword_100574578, &qword_100401AB0);
  return 1;
}

void sub_1002AD484()
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v2 = &v7[-v1 - 8];
  sub_1002AE7A8(v7);
  if (v8 != 3)
  {
    if (v8 < 3 || (v7[0] & 1) != 0)
    {
      sub_1002AE34C();
      sub_1000044A0((v0 + 32), *(v0 + 56));
      sub_1002ADAC4(v2);
      sub_1002AE0DC();
      sub_1002AD850();
      sub_1002AD634();
      dispatch thunk of LibraryActionControllerProtocol.subscribe(feedUrl:adamId:location:explicit:displaySuccessHUD:)();

      sub_100009104(v7, &qword_100574578, &qword_100401AB0);
      v3 = &qword_100574040;
      v4 = &unk_100400AD0;
      v5 = v2;
    }

    else
    {
      sub_1000044A0((v0 + 32), *(v0 + 56));
      sub_1002AD634();
      dispatch thunk of LibraryActionControllerProtocol.subscribe(podcast:displaySuccessHUD:)();

      v3 = &qword_100574578;
      v4 = &qword_100401AB0;
      v5 = v7;
    }

    sub_100009104(v5, v3, v4);
  }
}

BOOL sub_1002AD634()
{
  v1 = type metadata accessor for InteractionContext();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 24))
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v2 + 8))(v4, v1);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v7 = *v6;
      v8 = v6[8];

      v9 = sub_100168088(&qword_10057C150, &qword_1004096C8);
      sub_100009104(&v6[*(v9 + 64)], &unk_100573A80, &unk_100401160);
      v10 = *(v0 + 16);
      v11 = v10 == 0;
      if (v10)
      {

        v13 = sub_1002160A8(v12);

        if ((v8 & 1) == 0)
        {
LABEL_5:
          if (v10)
          {
            v14 = v7 == v13;
          }

          else
          {
            v14 = 0;
          }

          v11 = v14;
        }
      }

      else
      {
        v13 = 0;
        if ((v8 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      return !v11;
    }

    sub_1002AF030(v6, &type metadata accessor for InteractionContext.Page);
  }

  return 1;
}

uint64_t sub_1002AD850()
{
  v1 = type metadata accessor for ShowOffer();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v18 - v7;
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = *(v0 + 16);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v11 + v12, v8, v13);
    sub_1001A15C4(v8, v10, v14);
    sub_1001A1560(v10, v6, v15);
    swift_getEnumCaseMultiPayload();
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v2 + 32))(v4, v6, v1);
      v16 = ShowOffer.dzcPageLocation.getter();
      (*(v2 + 8))(v4, v1);
      sub_1002AF030(v10, type metadata accessor for PodcastContextActionDataType);
      return v16;
    }

    sub_1002AF030(v10, type metadata accessor for PodcastContextActionDataType);
    sub_1002AF030(v6, type metadata accessor for PodcastContextActionDataType.Kind);
  }

  return 0;
}

uint64_t sub_1002ADAC4@<X0>(uint64_t a1@<X8>)
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v4 = &aBlock[-1] - v3;
  v5 = type metadata accessor for ShowOffer();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &aBlock[-1] - v11;
  __chkstk_darwin();
  v14 = &aBlock[-1] - v13;
  v15 = *(v1 + 16);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v15 + v16, v12, v17);
    sub_1001A15C4(v12, v14, v18);
    sub_1001A1560(v14, v10, v19);
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v6 + 32))(v8, v10, v5);
      ShowOffer.feedUrl.getter();
      (*(v6 + 8))(v8, v5);
      return sub_1002AF030(v14, type metadata accessor for PodcastContextActionDataType);
    }

    else
    {
      sub_1002AF030(v10, type metadata accessor for PodcastContextActionDataType.Kind);
      v24 = sub_100215D14(v23);
      if (v24)
      {
        v25 = v24;
        v26 = type metadata accessor for URL();
        (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
        v27 = [v25 managedObjectContext];
        if (v27)
        {
          v28 = v27;
          v29 = swift_allocObject();
          *(v29 + 16) = v25;
          *(v29 + 24) = v4;
          v30 = swift_allocObject();
          *(v30 + 16) = sub_1002AF028;
          *(v30 + 24) = v29;
          aBlock[4] = sub_10002D950;
          aBlock[5] = v30;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10002D904;
          aBlock[3] = &unk_1004E9CB8;
          v31 = _Block_copy(aBlock);
          v32 = v28;
          v33 = v25;

          [v32 performBlockAndWait:v31];
          _Block_release(v31);

          sub_1002AF030(v14, type metadata accessor for PodcastContextActionDataType);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
          }

          else
          {
            sub_1001B8A3C(v4, a1);
          }
        }

        else
        {
          sub_1002AF030(v14, type metadata accessor for PodcastContextActionDataType);

          return sub_1001B8A3C(v4, a1);
        }
      }

      else
      {
        sub_1002AF030(v14, type metadata accessor for PodcastContextActionDataType);
        v35 = type metadata accessor for URL();
        return (*(*(v35 - 8) + 56))(a1, 1, 1, v35);
      }
    }
  }

  else
  {
    v21 = type metadata accessor for URL();
    v22 = *(*(v21 - 8) + 56);

    return v22(a1, 1, 1, v21);
  }

  return result;
}

id sub_1002AE004(void *a1, uint64_t a2)
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v9 - v5;
  result = [a1 feedURL];
  if (result)
  {
    v8 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();

    return sub_1001FDDA8(v6, a2);
  }

  return result;
}

uint64_t sub_1002AE0DC()
{
  v1 = type metadata accessor for ShowOffer();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v18 - v7;
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = *(v0 + 16);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v11 + v12, v8, v13);
    sub_1001A15C4(v8, v10, v14);
    sub_1001A1560(v10, v6, v15);
    swift_getEnumCaseMultiPayload();
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v2 + 32))(v4, v6, v1);
      v16 = ShowOffer.adamId.getter();
      (*(v2 + 8))(v4, v1);
      sub_1002AF030(v10, type metadata accessor for PodcastContextActionDataType);
      return v16;
    }

    sub_1002AF030(v10, type metadata accessor for PodcastContextActionDataType);
    sub_1002AF030(v6, type metadata accessor for PodcastContextActionDataType.Kind);
  }

  return 0;
}

uint64_t sub_1002AE34C()
{
  v1 = type metadata accessor for ShowOffer();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = aBlock - v7;
  __chkstk_darwin();
  v10 = aBlock - v9;
  v11 = *(v0 + 16);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1001A1560(v11 + v12, v8, v13);
  sub_1001A15C4(v8, v10, v14);
  sub_1001A1560(v10, v6, v15);
  type metadata accessor for PodcastContextActionDataType.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v6, v1);
    if (ShowOffer.contentRating.getter() == 2)
    {
      v16 = 0;
    }

    else
    {
      v29 = ContentRating.rawValue.getter();
      v31 = v30;
      v16 = 1;
      if (v29 != ContentRating.rawValue.getter() || v31 != v32)
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    (*(v2 + 8))(v4, v1);
    sub_1002AF030(v10, type metadata accessor for PodcastContextActionDataType);
    return v16 & 1;
  }

  sub_1002AF030(v6, type metadata accessor for PodcastContextActionDataType.Kind);
  v18 = sub_100215D14(v17);
  if (!v18)
  {
    sub_1002AF030(v10, type metadata accessor for PodcastContextActionDataType);
LABEL_18:
    v16 = 0;
    return v16 & 1;
  }

  v19 = v18;
  v35 = 0;
  v20 = [v18 managedObjectContext];
  if (!v20)
  {
    sub_1002AF030(v10, type metadata accessor for PodcastContextActionDataType);

    goto LABEL_18;
  }

  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = &v35;
  *(v22 + 24) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1002AEFF8;
  *(v23 + 24) = v22;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E9C40;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v19;

  [v25 performBlockAndWait:v24];
  _Block_release(v24);

  sub_1002AF030(v10, type metadata accessor for PodcastContextActionDataType);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v16 = v35;

    return v16 & 1;
  }

  __break(1u);
  return result;
}

void sub_1002AE7A8(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ShowOffer();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v21 - v9;
  __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = *(v1 + 16);
  if (v13)
  {
    v14 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v13 + v14, v10, v15);
    sub_1001A15C4(v10, v12, v16);
    sub_1001A1560(v12, v8, v17);
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v4 + 32))(v6, v8, v3);
      ShowOffer.adamId.getter();
      (*(v4 + 8))(v6, v3);
      v26 = 0;
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 2;
      dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 2;
      dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
    }

    dispatch thunk of PodcastStateMachine.currentState.getter();
    v21 = v24;
    v22 = v23;
    v18 = v25;

    sub_1002AF030(v12, type metadata accessor for PodcastContextActionDataType);
    v19 = v21;
    v20 = v22;
  }

  else
  {
    v18 = 0;
    v19 = xmmword_100401980;
    v20 = 0uLL;
  }

  *a1 = v20;
  *(a1 + 16) = v19;
  *(a1 + 32) = v18;
}

uint64_t sub_1002AEA50()
{

  sub_100004590((v0 + 32));

  v1 = OBJC_IVAR____TtC8Podcasts29SubscribePodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubscribePodcastContextAction(uint64_t a1)
{
  result = qword_10057C008;
  if (!qword_10057C008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002AEB60(uint64_t a1)
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_1002AEC14()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x800000010046D120;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002AECB4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts29SubscribePodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002AED2C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.subscribe(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1002AEE08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1002AEE68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002AEEC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002AEF2C(uint64_t a1)
{
  result = sub_1002AEFB4(&qword_10057C140, &unk_100409630);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002AEF70(uint64_t a1)
{
  result = sub_1002AEFB4(&qword_10057C148, &unk_100409688);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002AEFB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SubscribePodcastContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002AEFF8()
{
  v1 = *(v0 + 16);
  result = [*(v0 + 24) isExplicit];
  *v1 = result;
  return result;
}

uint64_t sub_1002AF030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002AF098@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_10057C158, &qword_1004096D0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v51 - v6;
  sub_100168088(&qword_10057C160, &qword_1004096D8);
  __chkstk_darwin();
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = v51 - v10;
  v11 = sub_100168088(&qword_10057C168, &qword_1004096E0);
  v60 = *(v11 - 8);
  __chkstk_darwin();
  v58 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = v51 - v13;
  v14 = type metadata accessor for Podcasts();
  *(&v86 + 1) = v14;
  *&v87 = sub_1001A9324();
  v15 = sub_10000E680(&v85);
  (*(*(v14 - 8) + 104))(v15, enum case for Podcasts.advancedPlayback(_:), v14);
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_100004590(&v85);
  if ((v14 & 1) == 0)
  {
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v56 = v4;
  v57 = a2;
  v51[2] = v51;
  __chkstk_darwin();
  v51[1] = &v51[-4];
  v16 = [objc_opt_self() currentDevice];
  [v16 userInterfaceIdiom];

  v54 = v7;
  v55 = v5;
  v52 = v11;
  v53 = v9;
  LocalizedStringKey.init(stringLiteral:)();
  v91 = Text.init(_:tableName:bundle:comment:)();
  v92 = v18;
  v93 = v19 & 1;
  v94 = v20;
  sub_1002AFF64(a1, &v85);
  sub_100168088(&qword_10057C170, &qword_1004096E8);
  sub_100168088(&qword_10057C178, &qword_1004096F0);
  v21 = sub_100168310(&qword_10057C180, &qword_1004096F8);
  v22 = type metadata accessor for InlinePickerStyle();
  v23 = sub_100009FAC(&qword_10057C188, &qword_10057C180, &qword_1004096F8, &protocol conformance descriptor for Picker<A, B, C>);
  *&v79 = v21;
  *(&v79 + 1) = v22;
  *&v80 = v23;
  *(&v80 + 1) = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  sub_1002B0DB4(&qword_10057C190, &qword_10057C178, &qword_1004096F0, &protocol conformance descriptor for <A> A?);
  Section<>.init(header:footer:content:)();
  v24 = a1[5];
  v25 = a1[6];
  v26 = a1[3];
  v80 = a1[4];
  v81 = v24;
  v27 = a1[7];
  v82 = v25;
  v83 = v27;
  v79 = v26;
  sub_100168088(&qword_1005777B0, &qword_100407030);
  State.projectedValue.getter();
  swift_getKeyPath();
  v82 = v88;
  v83 = v89;
  v84 = v90;
  v79 = v85;
  v80 = v86;
  v81 = v87;
  sub_100168088(&qword_100577810, &qword_100404B40);
  Binding.subscript.getter();

  sub_100009104(&v85, &qword_100577810, &qword_100404B40);
  v28 = v74;
  v29 = v75;
  LOBYTE(v22) = v76;
  v30 = v77;
  v31 = v78;
  swift_getKeyPath();
  v69 = v28;
  v70 = v29;
  v71 = v22;
  v72 = v30;
  v73 = v31;
  sub_100168088(&qword_10057C198, &qword_100409748);
  Binding.subscript.getter();

  v32 = v66;
  v33 = v67;
  LOBYTE(v22) = v68;

  v63 = v32;
  v64 = v33;
  v65 = v22;
  sub_100168088(&qword_10057C1A0, &qword_100409750);
  Binding.wrappedValue.getter();
  v34 = v62;

  v35 = v34 == 1;
  v36 = 1;
  v37 = v59;
  if (v35)
  {
    __chkstk_darwin();
    sub_1002B0BC4(a1, &v79);
    sub_100168088(&qword_10057C1B8, &qword_100409768);
    sub_100009FAC(&qword_10057C1C0, &qword_10057C1B8, &qword_100409768, &protocol conformance descriptor for TupleView<A>);
    Section<>.init(header:footer:content:)();
    v36 = 0;
  }

  v38 = sub_100168088(&qword_10057C1A8, &qword_100409758);
  (*(*(v38 - 8) + 56))(v37, v36, 1, v38);
  v40 = v60;
  v39 = v61;
  v41 = *(v60 + 16);
  v42 = v58;
  v43 = v52;
  v41(v58, v61, v52);
  v44 = v37;
  v45 = v37;
  v46 = v53;
  sub_100010430(v44, v53, &qword_10057C160, &qword_1004096D8);
  v47 = v54;
  v41(v54, v42, v43);
  v48 = sub_100168088(&qword_10057C1B0, &qword_100409760);
  sub_100010430(v46, v47 + *(v48 + 48), &qword_10057C160, &qword_1004096D8);
  sub_100009104(v45, &qword_10057C160, &qword_1004096D8);
  v49 = *(v40 + 8);
  v49(v39, v43);
  sub_100009104(v46, &qword_10057C160, &qword_1004096D8);
  v49(v42, v43);
  v50 = v57;
  sub_100053364(v47, v57);
  return (*(v55 + 56))(v50, 0, 1, v56);
}

uint64_t sub_1002AF920@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100168088(&qword_10057C180, &qword_1004096F8);
  v7 = *(v23 - 8);
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = a1[6];
  v46 = a1[5];
  v47 = v10;
  v48 = a1[7];
  v11 = a1[4];
  v44 = a1[3];
  v45 = v11;
  sub_100168088(&qword_1005777B0, &qword_100407030);
  State.projectedValue.getter();
  swift_getKeyPath();
  v46 = v50[2];
  v47 = v50[3];
  v48 = v50[4];
  v49 = v51;
  v44 = v50[0];
  v45 = v50[1];
  sub_100168088(&qword_100577810, &qword_100404B40);
  Binding.subscript.getter();

  sub_100009104(v50, &qword_100577810, &qword_100404B40);
  v12 = v39;
  v13 = v40;
  v14 = v41;
  v15 = v42;
  v16 = v43;
  swift_getKeyPath();
  v34 = v12;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  sub_100168088(&qword_10057C198, &qword_100409748);
  Binding.subscript.getter();

  v17 = v31;
  v18 = v32;
  v19 = v33;

  v27 = a1;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  sub_100168088(&qword_10057C1F0, &unk_1004097D8);
  sub_1002B0D60();
  sub_1002B0DB4(&qword_10057C200, &qword_10057C1F0, &unk_1004097D8, &protocol conformance descriptor for <> ForEach<A, B, C>);
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  sub_100009FAC(&qword_10057C188, &qword_10057C180, &qword_1004096F8, &protocol conformance descriptor for Picker<A, B, C>);
  v21 = v23;
  v20 = v24;
  View.pickerStyle<A>(_:)();
  (*(v25 + 8))(v6, v20);
  return (*(v7 + 8))(v9, v21);
}

char *sub_1002AFCD8(char *result, uint64_t a2)
{
  v2 = *result;
  *a2 = *result;
  if ((v2 & 1) == 0)
  {
    type metadata accessor for PlaybackRateHelper();
    static PlaybackRateHelper.standardRate.getter();
    *(a2 + 4) = v4;
    result = [objc_opt_self() defaultEnhanceDialogueEnabled];
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t sub_1002AFD38(uint64_t a1)
{
  v2 = *(type metadata accessor for ShowSettingsView(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v7[1] = &off_1004DF0A8;
  swift_getKeyPath();
  sub_10020DCB0(a1, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_10020DD14(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_100168088(&qword_10057C208, &unk_100409800);
  sub_100009FAC(&unk_10057C210, &qword_10057C208, &unk_100409800, &protocol conformance descriptor for [A]);
  sub_1002B0D60();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1002AFED8@<X0>(uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1002AFF64@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[6];
  v32 = a1[5];
  v33 = v4;
  v34 = a1[7];
  v5 = a1[4];
  v30 = a1[3];
  v31 = v5;
  sub_100168088(&qword_1005777B0, &qword_100407030);
  State.wrappedValue.getter();
  v35[2] = v27;
  v36 = v28;
  v37 = v29;
  v35[0] = v25;
  v35[1] = v26;
  result = sub_10020DB40(v35);
  if (BYTE8(v36))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = a1[6];
    v32 = a1[5];
    v33 = v11;
    v34 = a1[7];
    v12 = a1[4];
    v30 = a1[3];
    v31 = v12;
    State.wrappedValue.getter();
    v14 = *(&v25 + 1);
    v13 = v25;
    v15 = a1[6];
    v32 = a1[5];
    v33 = v15;
    v34 = a1[7];
    v16 = a1[4];
    v30 = a1[3];
    v31 = v16;
    State.wrappedValue.getter();
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v25 = v20;
    v26 = v21;
    sub_10020DB40(&v25);
    v7 = sub_1002B00D4(v13, v14, SBYTE8(v28));
    v8 = v17;
    LOBYTE(v13) = v18;
    v10 = v19;

    v9 = v13 & 1;
  }

  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  return result;
}

uint64_t sub_1002B00D4(uint64_t a1, void *a2, char a3)
{
  type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  if (a3)
  {
    v6 = " on this device.";
    v7 = 0xD000000000000036;
  }

  else
  {
    v6 = "Speed & Audio Adjustments";
    v7 = 0xD000000000000037;
  }

  v8 = v6 | 0x8000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v7);
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v9);
  v10._object = 0x800000010046D1A0;
  v10._countAndFlagsBits = 0xD000000000000010;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringKey.init(stringInterpolation:)();
  return Text.init(_:tableName:bundle:comment:)();
}

void sub_1002B020C(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v61 = sub_100168088(&qword_10057C1C8, &qword_100409770);
  v59 = *(v61 - 8);
  __chkstk_darwin();
  v54 = v49 - v3;
  sub_100168088(&qword_10057C1D0, &qword_100409778);
  __chkstk_darwin();
  v62 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = v49 - v5;
  v60 = sub_100168088(&qword_10057C1D8, &qword_100409780);
  v58 = *(v60 - 8);
  __chkstk_darwin();
  v57 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v49 - v7;
  v9 = a1[6];
  v86 = a1[5];
  v87 = v9;
  v88 = a1[7];
  v10 = a1[4];
  v84 = a1[3];
  v85 = v10;
  v53 = sub_100168088(&qword_1005777B0, &qword_100407030);
  State.projectedValue.getter();
  swift_getKeyPath();
  v86 = v90[2];
  v87 = v90[3];
  v88 = v90[4];
  v89 = v91;
  v84 = v90[0];
  v85 = v90[1];
  sub_100168088(&qword_100577810, &qword_100404B40);
  Binding.subscript.getter();

  sub_100009104(v90, &qword_100577810, &qword_100404B40);
  v11 = v68;
  v12 = v69;
  v13 = DWORD1(v69);
  v14 = BYTE8(v69);
  swift_getKeyPath();
  v80 = v11;
  v81 = v12;
  v82 = v13;
  v83 = v14;
  sub_100168088(&qword_10057C198, &qword_100409748);
  Binding.subscript.getter();

  v17 = v64;
  v15 = v17 >> 64;
  v16 = v17;
  v18 = v65;

  type metadata accessor for PlaybackRateHelper();
  static PlaybackRateHelper.extendedSupportedRatesLowerBound.getter();
  v20 = v19;
  static PlaybackRateHelper.extendedSupportedRatesUpperBound.getter();
  if (v20 > v21)
  {
    __break(1u);
  }

  else
  {
    v22 = v21;
    static PlaybackRateHelper.extendedSupportedRatesStep.getter();
    v23 = __chkstk_darwin().n128_u32[0];
    v77 = v16;
    v78 = v15;
    v79 = v18;
    v74 = v23;
    v75 = v20;
    v76 = v22;
    Stepper.init<A>(value:in:step:onEditingChanged:label:)();
    if (static Podcasts.isSpeakEasyEnabled.getter())
    {
      v24 = LocalizedStringKey.init(stringLiteral:)();
      v51 = v25;
      v52 = v24;
      v49[3] = v26;
      v50 = v27;
      v28 = a1[6];
      v70 = a1[5];
      v71 = v28;
      v72 = a1[7];
      v29 = a1[4];
      v68 = a1[3];
      v69 = v29;
      State.projectedValue.getter();
      swift_getKeyPath();
      v70 = v86;
      v71 = v87;
      v72 = v88;
      v73 = v89;
      v68 = v84;
      v69 = v85;
      Binding.subscript.getter();

      sub_100009104(&v84, &qword_100577810, &qword_100404B40);
      v32 = v80;
      v31 = v32 >> 64;
      v30 = v32;
      v33 = v81;
      v34 = v82;
      v35 = v83;
      swift_getKeyPath();
      v64 = __PAIR128__(v31, v30);
      LOBYTE(v65) = v33;
      v66 = v34;
      v67 = v35;
      Binding.subscript.getter();

      v36 = v54;
      Toggle<>.init(_:isOn:)();
      v37 = v59;
      v38 = v56;
      v39 = v61;
      (*(v59 + 32))(v56, v36, v61);
      (*(v37 + 56))(v38, 0, 1, v39);
    }

    else
    {
      v38 = v56;
      (*(v59 + 56))(v56, 1, 1, v61);
    }

    v55 = v8;
    v41 = v57;
    v40 = v58;
    v42 = *(v58 + 16);
    v43 = v8;
    v44 = v60;
    v42(v57, v43, v60);
    v45 = v62;
    sub_100010430(v38, v62, &qword_10057C1D0, &qword_100409778);
    v46 = v63;
    v42(v63, v41, v44);
    v47 = sub_100168088(&qword_10057C1E0, &qword_1004097A8);
    sub_100010430(v45, v46 + *(v47 + 48), &qword_10057C1D0, &qword_100409778);
    sub_100009104(v38, &qword_10057C1D0, &qword_100409778);
    v48 = *(v40 + 8);
    v48(v55, v44);
    sub_100009104(v45, &qword_10057C1D0, &qword_100409778);
    v48(v41, v44);
  }
}

uint64_t sub_1002B08C8@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010046D220;
  v3._countAndFlagsBits = 0xD000000000000010;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  type metadata accessor for PlaybackRateHelper();
  sub_100168088(&qword_1005777B0, &qword_100407030);
  State.projectedValue.getter();
  swift_getKeyPath();
  sub_100168088(&qword_100577810, &qword_100404B40);
  Binding.subscript.getter();

  sub_100009104(&v19, &qword_100577810, &qword_100404B40);
  swift_getKeyPath();
  sub_100168088(&qword_10057C198, &qword_100409748);
  Binding.subscript.getter();

  sub_100168088(&qword_10057C1E8, &qword_1004097D0);
  Binding.wrappedValue.getter();

  v4._countAndFlagsBits = static PlaybackRateHelper.localizedWithX(_:alwaysShowTenthsDigit:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  v11 = Text.monospacedDigit()();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1002B0D48(v6, v8, v10 & 1);

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_1002B0BC4@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[6];
  v32 = a1[5];
  v33 = v4;
  v34 = a1[7];
  v5 = a1[4];
  v30 = a1[3];
  v31 = v5;
  sub_100168088(&qword_1005777B0, &qword_100407030);
  State.wrappedValue.getter();
  v35[2] = v27;
  v36 = v28;
  v37 = v29;
  v35[0] = v25;
  v35[1] = v26;
  result = sub_10020DB40(v35);
  if (BYTE8(v36) == 1)
  {
    v7 = a1[6];
    v32 = a1[5];
    v33 = v7;
    v34 = a1[7];
    v8 = a1[4];
    v30 = a1[3];
    v31 = v8;
    State.wrappedValue.getter();
    v10 = *(&v25 + 1);
    v9 = v25;
    v11 = a1[6];
    v32 = a1[5];
    v33 = v11;
    v34 = a1[7];
    v12 = a1[4];
    v30 = a1[3];
    v31 = v12;
    State.wrappedValue.getter();
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v25 = v20;
    v26 = v21;
    sub_10020DB40(&v25);
    v13 = sub_1002B00D4(v9, v10, SBYTE8(v28));
    v15 = v14;
    LOBYTE(v9) = v16;
    v18 = v17;

    v19 = v9 & 1;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v19 = 0;
    v18 = 0;
  }

  *a2 = v13;
  a2[1] = v15;
  a2[2] = v19;
  a2[3] = v18;
  return result;
}

uint64_t sub_1002B0D48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1002B0D60()
{
  result = qword_10057C1F8;
  if (!qword_10057C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057C1F8);
  }

  return result;
}

uint64_t sub_1002B0DB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100168310(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002B0E14@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for ShowSettingsView(0);

  return sub_1002AFED8(a2);
}

id sub_1002B0E94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5, int a6)
{
  v83 = a6;
  v86 = a3;
  v88 = a2;
  v8 = a5[3];
  v109 = a5[2];
  v110 = v8;
  v111 = *(a5 + 64);
  v10 = *a5;
  v9 = a5[1];
  v87 = a5;
  v107 = v10;
  v108 = v9;
  v84 = *(type metadata accessor for ArtworkModel() - 8);
  __chkstk_darwin();
  v95 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v82 = &v79 - v12;
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v81 = &v79 - v13;
  sub_100168088(&unk_10057C220, &unk_100409810);
  __chkstk_darwin();
  v15 = &v79 - v14;
  v98 = _s19EpisodeImageRowItemVMa_0(0);
  v91 = *(v98 - 8);
  __chkstk_darwin();
  v94 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v79 - v17;
  __chkstk_darwin();
  v97 = &v79 - v18;
  if (a4 >> 62)
  {
    goto LABEL_49;
  }

  v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v90 = a1;
  if (v19)
  {
    v20 = 0;
    v21 = a4 & 0xC000000000000001;
    v22 = a4 & 0xFFFFFFFFFFFFFF8;
    v23 = (v91 + 48);
    v96 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v21)
      {
        v25 = a4;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        a4 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v20 >= *(v22 + 16))
        {
          goto LABEL_48;
        }

        v25 = a4;

        a4 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          v19 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      sub_1002B1DE0(v15);
      if ((*v23)(v15, 1, v98) == 1)
      {
        sub_100009104(v15, &unk_10057C220, &unk_100409810);
      }

      else
      {
        sub_1002B3F34(v15, v97, _s19EpisodeImageRowItemVMa_0);
        v26 = v96;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1002434D0(0, v26[2] + 1, 1, v26);
        }

        v96 = v26;
        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27 >> 1)
        {
          v96 = sub_1002434D0((v27 > 1), v28 + 1, 1, v96);
        }

        v29 = v96;
        v96[2] = v28 + 1;
        sub_1002B3F34(v97, v29 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 9) * v28, _s19EpisodeImageRowItemVMa_0);
        a1 = v90;
      }

      ++v20;
      v24 = a4 == v19;
      a4 = v25;
      if (v24)
      {
        goto LABEL_20;
      }
    }
  }

  v96 = _swiftEmptyArrayStorage;
LABEL_20:

  v30 = v96[2];
  if (v30 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v96[2];
  }

  if (!v30)
  {

    sub_100018888(v87);

    return 0;
  }

  v32 = v91;
  v33 = v96 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
  v80 = (2 * v31) | 1;
  type metadata accessor for CarPlayPageLoadCoordinator(0);
  BaseObjectGraph.inject<A>(_:)();
  v92 = aBlock;
  aBlock = _swiftEmptyArrayStorage;
  v34 = v99 + *(v98 + 28);
  v93 = objc_opt_self();
  v97 = *(v32 + 9);
  v91 = "defaultCoverImage";
  v89 = "CarPlayLoadArtwork";
  v85 = v33;
  v35 = v31;
  do
  {
    sub_1002B2CD4(v33, v99, _s19EpisodeImageRowItemVMa_0);
    [v93 maximumImageSize];
    v37 = *(v34 + 64);
    if (v37 == 255)
    {
      v46 = String._bridgeToObjectiveC()();
      v45 = [objc_opt_self() imageNamed:v46];

      if (!v45)
      {
LABEL_25:
        sub_1002B54FC(v99, _s19EpisodeImageRowItemVMa_0);
        goto LABEL_26;
      }
    }

    else
    {
      v38 = *(v34 + 56);
      sub_1002448C4(v38, *(v34 + 64));
      static CGSize.* infix(_:_:)();
      v40 = v39;
      v42 = v41;
      v43 = Color.color.getter();
      v44 = objc_opt_self();
      v45 = [v44 imageWithSolidColor:v43 atSize:{v40, v42}];

      if (v45)
      {
        sub_1002448D8(v38, v37);
      }

      else
      {
        v47 = String._bridgeToObjectiveC()();
        v45 = [v44 imageNamed:v47];
        sub_1002448D8(v38, v37);

        if (!v45)
        {
          goto LABEL_25;
        }
      }
    }

    v48 = *(v99 + *(v98 + 32) + 8);
    v49 = String._bridgeToObjectiveC()();
    v50 = String._bridgeToObjectiveC()();
    if (v48)
    {
      v48 = String._bridgeToObjectiveC()();
    }

    [objc_allocWithZone(CPListImageRowItemCondensedElement) initWithImage:v45 imageShape:1 title:v49 subtitle:v50 accessorySymbolName:v48];

    sub_1002B54FC(v99, _s19EpisodeImageRowItemVMa_0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_26:
    v36 = v95;
    v33 += v97;
    --v35;
  }

  while (v35);
  v51 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v52 = v86;
  v53 = String._bridgeToObjectiveC()();
  sub_100009F1C(0, &qword_10057A498, CPListImageRowItemCondensedElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v55 = [v51 initWithText:v53 condensedElements:isa allowsMultipleLines:1];

  rawValue = _swiftEmptyArrayStorage;
  v56 = v55;
  sub_1001A7650(0, v31, 0);
  v57._rawValue = rawValue;
  v58 = v85;
  v59 = v90;
  v60 = v84;
  do
  {
    v61 = v94;
    sub_1002B2CD4(v58, v94, _s19EpisodeImageRowItemVMa_0);
    sub_1002B2CD4(v61 + *(v98 + 28), v36, &type metadata accessor for ArtworkModel);
    sub_1002B54FC(v61, _s19EpisodeImageRowItemVMa_0);
    rawValue = v57._rawValue;
    v63 = *(v57._rawValue + 2);
    v62 = *(v57._rawValue + 3);
    if (v63 >= v62 >> 1)
    {
      sub_1001A7650((v62 > 1), v63 + 1, 1);
      v60 = v84;
      v57._rawValue = rawValue;
    }

    *(v57._rawValue + 2) = v63 + 1;
    sub_1002B3F34(v36, v57._rawValue + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v63, &type metadata accessor for ArtworkModel);
    v58 += v97;
    --v31;
  }

  while (v31);
  CarPlayPageLoadCoordinator.loadImages(for:into:)(v57, v56);

  v64 = v110;
  v65 = v82;
  *(v82 + 2) = v109;
  *(v65 + 48) = v64;
  *(v65 + 64) = v111;
  v66 = v108;
  *v65 = v107;
  *(v65 + 16) = v66;
  v67 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v68 = *(*(v67 - 8) + 56);
  v68(v65, 0, 1, v67);
  v69 = v81;
  v68(v81, 1, 1, v67);
  v70 = type metadata accessor for CarPlayTemplateInfo(0);
  v71 = *(v70 + 20);
  v72 = v87;
  sub_10019BB44(v87, &aBlock);
  sub_1001FBB44(v65, v69);
  *(v69 + v71) = 0;
  (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
  sub_1001D2AD4(v69);
  v104 = sub_1002B2BB8;
  v105 = v59;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_100372F30;
  v103 = &unk_1004E9D08;
  v73 = _Block_copy(&aBlock);

  [v56 setHandler:v73];
  _Block_release(v73);
  v74 = swift_allocObject();
  v75 = v85;
  *(v74 + 16) = v96;
  *(v74 + 24) = v75;
  v76 = v80;
  *(v74 + 32) = 0;
  *(v74 + 40) = v76;
  *(v74 + 48) = v88;
  *(v74 + 56) = v52;
  *(v74 + 64) = v83;
  *(v74 + 72) = v59;
  v104 = sub_1002B2BC0;
  v105 = v74;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_1002B1CD0;
  v103 = &unk_1004E9D58;
  v77 = _Block_copy(&aBlock);

  [v56 setListImageRowHandler:v77];
  _Block_release(v77);

  sub_100018888(v72);

  return v56;
}

void sub_1002B1CD0(uint64_t a1, void *a2, int a3, void *aBlock)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

uint64_t _s19EpisodeImageRowItemVMa_0(uint64_t a1)
{
  result = qword_10057C298;
  if (!qword_10057C298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002B1DE0@<X0>(uint64_t a3@<X8>)
{
  v48 = a3;
  v43 = _s27CarPlayEpisodeSubtitleStyleOMa(0);
  __chkstk_darwin();
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodePlayState();
  __chkstk_darwin();
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v7 = &v41 - v6;
  v8 = type metadata accessor for ArtworkModel();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s19EpisodeImageRowItemVMa_0(0);
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin();
  v44 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = LegacyLockup.title.getter();
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v14;
  v17 = v15;
  v18 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (v19 = dispatch thunk of LegacyLockup.playAction.getter()) == 0)
  {

LABEL_9:

    goto LABEL_10;
  }

  v42 = v19;
  LegacyLockup.artwork.getter();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v41 = v11;
    sub_1002B3F34(v7, v11, &type metadata accessor for ArtworkModel);
    sub_100168088(&unk_100578420, &unk_100402000);
    BaseObjectGraph.inject<A>(_:)();
    sub_100168088(&unk_10057A4A0, &qword_100409850);
    BaseObjectGraph.inject<A>(_:)();
    LegacyLockup.adamId.getter();
    EpisodeStateController.stateMachine(for:)();
    v24 = v45;
    dispatch thunk of EpisodeStateMachine.currentState.getter();

    v25 = v44;
    *v44 = v16;
    v25[1] = v17;
    LegacyEpisodeLockup.showTypeIsSerial.getter();
    v26 = LegacyLockup.isExplicit.getter();
    v27 = &v4[*(sub_100168088(&qword_1005812A0, qword_100401BB0) + 64)];
    *v4 = LegacyEpisodeLockup.episodeNumber.getter();
    v4[8] = v28 & 1;
    LegacyEpisodeLockup.releaseDate.getter();
    *v27 = LegacyEpisodeLockup.duration.getter();
    v27[8] = v29 & 1;
    swift_storeEnumTagMultiPayload();
    v30 = sub_1001A3250(v49, v26 & 1, v4);
    v32 = v31;
    sub_1002B54FC(v4, _s27CarPlayEpisodeSubtitleStyleOMa);
    v25[2] = v30;
    v25[3] = v32;
    v33 = v47;
    v34 = v25 + *(v47 + 24);
    *(v34 + 3) = type metadata accessor for Action();
    *(v34 + 4) = sub_1002B5338(&qword_100578430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    *v34 = v42;
    v34[40] = 0;
    type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    v35 = v41;
    sub_1002B2CD4(v41, v25 + *(v33 + 28), &type metadata accessor for ArtworkModel);

    v36 = sub_1002B5380();
    v38 = v37;

    sub_1002B54FC(v24, &type metadata accessor for EpisodePlayState);
    sub_100004590(v49);
    sub_1002B54FC(v35, &type metadata accessor for ArtworkModel);
    v39 = (v25 + *(v33 + 32));
    *v39 = v36;
    v39[1] = v38;
    v40 = v48;
    sub_1002B3F34(v25, v48, _s19EpisodeImageRowItemVMa_0);
    v22 = v33;
    v21 = v40;
    v20 = 0;
    return (*(v46 + 56))(v21, v20, 1, v22);
  }

  sub_100009104(v7, &unk_100578C10, &qword_100400B60);
LABEL_10:
  v20 = 1;
  v22 = v47;
  v21 = v48;
  return (*(v46 + 56))(v21, v20, 1, v22);
}

uint64_t sub_1002B237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_100409848, v12);
}

void sub_1002B24D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v55 = a6;
  v59 = a3;
  v60 = a4;
  v15 = type metadata accessor for Logger();
  v56 = *(v15 - 8);
  v57 = v15;
  __chkstk_darwin();
  v17 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v58 = &v52[-v18];
  v19 = type metadata accessor for CarPlayTemplateInfo(0);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v54 = &v52[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v23 = &v52[-v22];
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v25 = &v52[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v27 = &v52[-v26];
  v28 = _s19EpisodeImageRowItemVMa_0(0);
  __chkstk_darwin();
  if ((a8 >> 1) < a7)
  {
    __break(1u);
  }

  else if (a2 < a7 || (a8 >> 1) <= a2)
  {
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    static OS_os_log.carPlay.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Attempted to select list image row item with invalid index!", v50, 2u);
    }

    v51 = (*(v56 + 8))(v17, v57);
    v59(v51);
  }

  else
  {
    v56 = a12;
    v53 = a11;
    v31 = &v52[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
    sub_1002B2CD4(v55 + *(v29 + 72) * a2, v31, _s19EpisodeImageRowItemVMa_0);
    v32 = objc_allocWithZone(CPListImageRowItem);
    v33 = String._bridgeToObjectiveC()();
    sub_100009F1C(0, &qword_10057A498, CPListImageRowItemCondensedElement_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v35 = [v32 initWithText:v33 condensedElements:isa allowsMultipleLines:1];

    v36 = *(v28 + 24);
    v57 = v31;
    sub_1002B2CD4(&v31[v36], v23, type metadata accessor for CarPlayTemplateInfo.TemplateType);
    v37 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v38 = *(*(v37 - 8) + 56);
    v38(v23, 0, 1, v37);
    v38(v27, 1, 1, v37);
    v39 = *(v19 + 20);
    sub_1001FBB44(v23, v27);
    v27[v39] = v53;
    (*(v20 + 56))(v27, 0, 1, v19);
    sub_100010430(v27, v25, &unk_100578410, &qword_100402DB0);
    v40 = 0;
    if ((*(v20 + 48))(v25, 1, v19) != 1)
    {
      sub_1002B2CD4(v25, v54, type metadata accessor for CarPlayTemplateInfo);
      v40 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_1002B54FC(v25, type metadata accessor for CarPlayTemplateInfo);
    }

    [v35 setUserInfo:v40];
    swift_unknownObjectRelease();
    sub_100009104(v27, &unk_100578410, &qword_100402DB0);
    v41 = v58;
    static TaskPriority.userInitiated.getter();
    v42 = type metadata accessor for TaskPriority();
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    type metadata accessor for MainActor();
    v43 = v56;

    v44 = v35;
    v45 = v60;

    v46 = static MainActor.shared.getter();
    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = &protocol witness table for MainActor;
    v47[4] = v43;
    v47[5] = v44;
    v47[6] = v59;
    v47[7] = v45;
    sub_10023EE80(0, 0, v41, &unk_100409828, v47);

    sub_1002B54FC(v57, _s19EpisodeImageRowItemVMa_0);
  }
}

uint64_t sub_1002B2C00(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_10022CDC0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002B2CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1002B2D3C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v146 = a2;
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v137 = &v125 - v7;
  v8 = type metadata accessor for Logger();
  v142 = *(v8 - 8);
  __chkstk_darwin();
  v145 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v135 = &v125 - v10;
  __chkstk_darwin();
  v134 = &v125 - v11;
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v138 = (&v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v125 - v13;
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v139 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v140 = &v125 - v16;
  __chkstk_darwin();
  v18 = &v125 - v17;
  v19 = type metadata accessor for CarPlayTemplateInfo(0);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v21;
  __chkstk_darwin();
  v24 = &v125 - v23;
  v143 = a1;
  sub_1003A7AF0();
  v141 = v20;
  v27 = *(v20 + 48);
  v26 = v20 + 48;
  v25 = v27;
  v144 = v19;
  if (v27(v18, 1, v19) == 1)
  {
    v28 = sub_100009104(v18, &unk_100578410, &qword_100402DB0);
    return v146(v28);
  }

  else
  {
    v127 = v25;
    v128 = v26;
    v126 = v22;
    v129 = v8;
    v130 = a3;
    v133 = v14;
    sub_1002B3F34(v18, v24, type metadata accessor for CarPlayTemplateInfo);
    v30 = OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingSubscriptions;
    swift_beginAccess();
    v31 = *(a4 + v30);
    v132 = v24;
    v131 = a4;
    if ((v31 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      sub_1002B5338(&unk_100575AF0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      result = Set.Iterator.init(_cocoa:)();
      v32 = v151;
      v33 = v152;
      v34 = v153;
      v35 = v154;
      v36 = v155;
    }

    else
    {
      v37 = -1 << *(v31 + 32);
      v33 = v31 + 56;
      v34 = ~v37;
      v38 = -v37;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v36 = v39 & *(v31 + 56);
      result = swift_bridgeObjectRetain_n();
      v35 = 0;
      v32 = v31;
    }

    if (v32 < 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v40 = v35;
      v41 = v36;
      v42 = v35;
      if (!v36)
      {
        break;
      }

LABEL_14:
      v43 = (v41 - 1) & v41;
      v44 = *(*(v32 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));

      if (!v44)
      {
LABEL_20:
        sub_1000319D8(v32);

        v46 = v132;
        v47 = v133;
        sub_100010430(v132, v133, &unk_100575AE0, &unk_100405E80);
        v48 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
        v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
        v50 = v144;
        v51 = v145;
        if (v49 == 1)
        {
          goto LABEL_33;
        }

        v52 = v138;
        sub_100010430(v47, v138, &unk_100575AE0, &unk_100405E80);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload == 13)
          {
            sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
            v54 = v134;
            static OS_os_log.carPlay.getter();
            v55 = v143;
            v56 = Logger.logObject.getter();
            v57 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v56, v57))
            {
              v58 = v46;
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              *&aBlock = v60;
              *v59 = 136315138;
              objc_opt_self();
              v61 = swift_dynamicCastObjCClass();
              if (v61 && (v62 = [v61 text]) != 0 || (v62 = objc_msgSend(v55, "text")) != 0)
              {
                v63 = v62;
                v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v66 = v65;
              }

              else
              {
                v66 = 0xE200000000000000;
                v64 = 16718;
              }

              v111 = sub_1000153E0(v64, v66, &aBlock);

              *(v59 + 4) = v111;
              _os_log_impl(&_mh_execute_header, v56, v57, "Did select item with title %s for template info type reload.", v59, 0xCu);
              sub_100004590(v60);

              v89 = (*(v142 + 8))(v54, v129);
              v46 = v58;
            }

            else
            {

              v89 = (*(v142 + 8))(v54, v129);
            }

            v146(v89);
            v112 = v131 + OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplateProvider;
            swift_beginAccess();
            if (*(v112 + 24))
            {
              sub_100004428(v112, &aBlock);
              swift_endAccess();
              v113 = *&v150[8];
              v114 = *&v150[16];
              sub_1000044A0(&aBlock, *&v150[8]);
              (*(v114 + 16))(v113, v114);
              sub_1002B54FC(v46, type metadata accessor for CarPlayTemplateInfo);
              sub_100004590(&aBlock);
            }

            else
            {
              sub_1002B54FC(v46, type metadata accessor for CarPlayTemplateInfo);
              swift_endAccess();
            }

            return sub_100009104(v47, &unk_100575AE0, &unk_100405E80);
          }

          sub_1002B54FC(v52, type metadata accessor for CarPlayTemplateInfo.TemplateType);
LABEL_33:
          sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
          static OS_os_log.carPlay.getter();
          v77 = v143;
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            *&aBlock = v81;
            *v80 = 136315138;
            objc_opt_self();
            v82 = swift_dynamicCastObjCClass();
            if (v82 && (v83 = [v82 text]) != 0 || (v83 = objc_msgSend(v77, "text")) != 0)
            {
              v84 = v83;
              v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v87 = v86;

              v50 = v144;
            }

            else
            {
              v87 = 0xE200000000000000;
              v85 = 16718;
            }

            v90 = sub_1000153E0(v85, v87, &aBlock);

            *(v80 + 4) = v90;
            _os_log_impl(&_mh_execute_header, v78, v79, "Did select item with title %s and will attempt to push to a new list template.", v80, 0xCu);
            sub_100004590(v81);

            v88 = (*(v142 + 8))(v145, v129);
          }

          else
          {

            v88 = (*(v142 + 8))(v51, v129);
          }

          v146(v88);
          objc_opt_self();
          v91 = swift_dynamicCastObjCClass();
          if (v91 && (v92 = [v91 text]) != 0 || (v92 = objc_msgSend(v77, "text")) != 0)
          {
            v93 = v92;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v94 = String._bridgeToObjectiveC()();
          }

          else
          {
            v94 = 0;
          }

          v95 = objc_allocWithZone(CPListTemplate);
          sub_100009F1C(0, &unk_100575B00, CPListSection_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;
          v97 = [v95 initWithTitle:v94 sections:isa];

          v98 = v140;
          sub_1002B2CD4(v46, v140, type metadata accessor for CarPlayTemplateInfo);
          (*(v141 + 56))(v98, 0, 1, v50);
          v99 = v139;
          sub_100010430(v98, v139, &unk_100578410, &qword_100402DB0);
          if (v127(v99, 1, v50) == 1)
          {
            v100 = v97;
            v101 = 0;
          }

          else
          {
            sub_1002B2CD4(v99, v126, type metadata accessor for CarPlayTemplateInfo);
            v102 = v97;
            v101 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            sub_1002B54FC(v99, type metadata accessor for CarPlayTemplateInfo);
          }

          [v97 setUserInfo:v101];

          swift_unknownObjectRelease();
          sub_100009104(v98, &unk_100578410, &qword_100402DB0);
          [v97 setShowsSpinnerWhileEmpty:1];
          v103 = *(v131 + OBJC_IVAR____TtC8Podcasts17CarPlayController_interfaceController);
          v104 = swift_allocObject();
          *(v104 + 16) = v97;
          *&v150[16] = sub_1001CC6CC;
          *&v150[24] = v104;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *v150 = sub_100185CE0;
          *&v150[8] = &unk_1004E9DF8;
          v105 = _Block_copy(&aBlock);
          v106 = v97;

          [v103 pushTemplate:v106 animated:1 completion:v105];
          _Block_release(v105);

LABEL_52:
          sub_1002B54FC(v46, type metadata accessor for CarPlayTemplateInfo);
          return sub_100009104(v47, &unk_100575AE0, &unk_100405E80);
        }

        v67 = v52[1];
        aBlock = *v52;
        *v150 = v67;
        *&v150[9] = *(v52 + 25);
        sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
        v68 = v135;
        static OS_os_log.carPlay.getter();
        v69 = v143;
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *&v147 = v73;
          *v72 = 136315138;
          objc_opt_self();
          v74 = swift_dynamicCastObjCClass();
          if (v74)
          {
            v75 = [v74 text];
            if (v75)
            {
              v76 = v46;
              goto LABEL_55;
            }
          }

          v75 = [v69 text];
          v76 = v46;
          if (v75)
          {
LABEL_55:
            v107 = v75;
            v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v110 = v109;
          }

          else
          {
            v110 = 0xE200000000000000;
            v108 = 16718;
          }

          v115 = sub_1000153E0(v108, v110, &v147);

          *(v72 + 4) = v115;
          _os_log_impl(&_mh_execute_header, v70, v71, "Did select item with title %s for template info type now playing.", v72, 0xCu);
          sub_100004590(v73);

          (*(v142 + 8))(v68, v129);
          v46 = v76;
        }

        else
        {

          (*(v142 + 8))(v68, v129);
        }

        v116 = v137;
        static TaskPriority.userInitiated.getter();
        v117 = type metadata accessor for TaskPriority();
        (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
        v118 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1001CC734(&aBlock, &v147);
        v119 = v126;
        sub_1002B2CD4(v46, v126, type metadata accessor for CarPlayTemplateInfo);
        type metadata accessor for MainActor();
        v120 = v130;

        v121 = static MainActor.shared.getter();
        v122 = (*(v141 + 80) + 97) & ~*(v141 + 80);
        v123 = swift_allocObject();
        *(v123 + 16) = v121;
        *(v123 + 24) = &protocol witness table for MainActor;
        *(v123 + 32) = v146;
        *(v123 + 40) = v120;
        *(v123 + 48) = v118;
        v124 = v148[0];
        *(v123 + 56) = v147;
        *(v123 + 72) = v124;
        *(v123 + 81) = *(v148 + 9);
        sub_1002B3F34(v119, v123 + v122, type metadata accessor for CarPlayTemplateInfo);

        sub_100217A04(0, 0, v116, &unk_100402DD0, v123);

        sub_1001CC8A0(&aBlock);
        goto LABEL_52;
      }

      while (1)
      {
        AnyCancellable.cancel()();

        v35 = v42;
        v36 = v43;
        if ((v32 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        v45 = __CocoaSet.Iterator.next()();
        if (v45)
        {
          *&v147 = v45;
          type metadata accessor for AnyCancellable();
          swift_dynamicCast();
          v42 = v35;
          v43 = v36;
          if (aBlock)
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v42 >= ((v34 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v41 = *(v33 + 8 * v42);
      ++v40;
      if (v41)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002B3F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B3F9C(uint64_t a1)
{
  v4 = *(type metadata accessor for CarPlayTemplateInfo(0) - 8);
  v5 = (*(v4 + 80) + 97) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10021A620;

  return sub_1001C945C(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
}

uint64_t sub_1002B40AC(uint64_t a1)
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
  v10[1] = sub_10021A620;

  return sub_10022C4CC(a1, v4, v5, v6, v7, v9, v8);
}

void *sub_1002B4180(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v148 = a2;
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v138 = &v127 - v7;
  v8 = type metadata accessor for Logger();
  v145 = *(v8 - 8);
  __chkstk_darwin();
  v147 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v127 - v10;
  __chkstk_darwin();
  v135 = &v127 - v11;
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v140 = (&v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v127 - v13;
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v141 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v127 - v16;
  __chkstk_darwin();
  v18 = &v127 - v17;
  v19 = type metadata accessor for CarPlayTemplateInfo(0);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v21;
  __chkstk_darwin();
  v24 = &v127 - v23;
  v146 = a1;
  sub_1003A7AF0();
  v144 = v20;
  v27 = *(v20 + 48);
  v26 = v20 + 48;
  v25 = v27;
  v143 = v19;
  if (v27(v18, 1, v19) == 1)
  {
    v28 = sub_100009104(v18, &unk_100578410, &qword_100402DB0);
    return v148(v28);
  }

  else
  {
    v129 = v25;
    v130 = v26;
    v128 = v22;
    v131 = v8;
    v132 = a3;
    v134 = v14;
    v139 = v24;
    sub_1002B3F34(v18, v24, type metadata accessor for CarPlayTemplateInfo);
    v30 = OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingSubscriptions;
    swift_beginAccess();
    v133 = a4;
    v31 = *(a4 + v30);
    if ((v31 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      sub_1002B5338(&unk_100575AF0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      result = Set.Iterator.init(_cocoa:)();
      v32 = v153;
      v33 = v154;
      v34 = v155;
      v35 = v156;
      v36 = v157;
    }

    else
    {
      v37 = -1 << *(v31 + 32);
      v33 = v31 + 56;
      v34 = ~v37;
      v38 = -v37;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v36 = v39 & *(v31 + 56);
      result = swift_bridgeObjectRetain_n();
      v35 = 0;
      v32 = v31;
    }

    if (v32 < 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v40 = v35;
      v41 = v36;
      v42 = v35;
      if (!v36)
      {
        break;
      }

LABEL_14:
      v43 = (v41 - 1) & v41;
      v44 = *(*(v32 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));

      if (!v44)
      {
LABEL_20:
        sub_1000319D8(v32);

        v46 = v139;
        v47 = v134;
        sub_100010430(v139, v134, &unk_100575AE0, &unk_100405E80);
        v48 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
        v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
        v50 = v147;
        if (v49 == 1)
        {
          goto LABEL_30;
        }

        v51 = v140;
        sub_100010430(v47, v140, &unk_100575AE0, &unk_100405E80);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 3)
        {
          v64 = v51[1];
          aBlock = *v51;
          *v152 = v64;
          *&v152[9] = *(v51 + 25);
          sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
          v65 = v136;
          static OS_os_log.carPlay.getter();
          v66 = v146;
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *&v149 = v70;
            *v69 = 136315138;
            v71 = [v66 text];
            if (v71 || (objc_opt_self(), (v115 = swift_dynamicCastObjCClass()) != 0) && (v71 = [v115 text]) != 0)
            {
              v72 = v71;
              v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v75 = v74;
            }

            else
            {
              v75 = 0xE200000000000000;
              v73 = 16718;
            }

            v116 = sub_1000153E0(v73, v75, &v149);

            *(v69 + 4) = v116;
            _os_log_impl(&_mh_execute_header, v67, v68, "Did select item with title %s for template info type now playing.", v69, 0xCu);
            sub_100004590(v70);
          }

          (*(v145 + 8))(v65, v131);
          v117 = v148;
          v118 = v138;
          static TaskPriority.userInitiated.getter();
          v119 = type metadata accessor for TaskPriority();
          (*(*(v119 - 8) + 56))(v118, 0, 1, v119);
          v120 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1001CC734(&aBlock, &v149);
          v121 = v128;
          sub_1002B2CD4(v46, v128, type metadata accessor for CarPlayTemplateInfo);
          type metadata accessor for MainActor();
          v122 = v132;

          v123 = static MainActor.shared.getter();
          v124 = (*(v144 + 80) + 97) & ~*(v144 + 80);
          v125 = swift_allocObject();
          *(v125 + 16) = v123;
          *(v125 + 24) = &protocol witness table for MainActor;
          *(v125 + 32) = v117;
          *(v125 + 40) = v122;
          *(v125 + 48) = v120;
          v126 = v150[0];
          *(v125 + 56) = v149;
          *(v125 + 72) = v126;
          *(v125 + 81) = *(v150 + 9);
          sub_1002B3F34(v121, v125 + v124, type metadata accessor for CarPlayTemplateInfo);

          sub_100217A04(0, 0, v118, &unk_100409858, v125);

          sub_1001CC8A0(&aBlock);
        }

        else
        {
          if (EnumCaseMultiPayload == 13)
          {
            sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
            v53 = v135;
            static OS_os_log.carPlay.getter();
            v54 = v146;
            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              *&aBlock = v58;
              *v57 = 136315138;
              v59 = [v54 text];
              if (v59 || (objc_opt_self(), (v109 = swift_dynamicCastObjCClass()) != 0) && (v59 = [v109 text]) != 0)
              {
                v60 = v59;
                v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v63 = v62;
              }

              else
              {
                v63 = 0xE200000000000000;
                v61 = 16718;
              }

              v110 = sub_1000153E0(v61, v63, &aBlock);

              *(v57 + 4) = v110;
              _os_log_impl(&_mh_execute_header, v55, v56, "Did select item with title %s for template info type reload.", v57, 0xCu);
              sub_100004590(v58);
            }

            v111 = (*(v145 + 8))(v53, v131);
            v148(v111);
            v112 = v133 + OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplateProvider;
            swift_beginAccess();
            if (*(v112 + 24))
            {
              sub_100004428(v112, &aBlock);
              swift_endAccess();
              v113 = *&v152[8];
              v114 = *&v152[16];
              sub_1000044A0(&aBlock, *&v152[8]);
              (*(v114 + 16))(v113, v114);
              sub_1002B54FC(v46, type metadata accessor for CarPlayTemplateInfo);
              sub_100004590(&aBlock);
            }

            else
            {
              sub_1002B54FC(v46, type metadata accessor for CarPlayTemplateInfo);
              swift_endAccess();
            }

            return sub_100009104(v47, &unk_100575AE0, &unk_100405E80);
          }

          sub_1002B54FC(v51, type metadata accessor for CarPlayTemplateInfo.TemplateType);
LABEL_30:
          sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
          static OS_os_log.carPlay.getter();
          v76 = v146;
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            *&aBlock = v80;
            *v79 = 136315138;
            v81 = [v76 text];
            if (v81 || (objc_opt_self(), (v88 = swift_dynamicCastObjCClass()) != 0) && (v81 = [v88 text]) != 0)
            {
              v82 = v148;
              v83 = v81;
              v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v86 = v85;

              v46 = v139;
            }

            else
            {
              v86 = 0xE200000000000000;
              v84 = 16718;
              v82 = v148;
            }

            v89 = sub_1000153E0(v84, v86, &aBlock);

            *(v79 + 4) = v89;
            _os_log_impl(&_mh_execute_header, v77, v78, "Did select item with title %s and will attempt to push to a new list template.", v79, 0xCu);
            sub_100004590(v80);

            v90 = (*(v145 + 8))(v147, v131);
            v82(v90);
          }

          else
          {

            v87 = (*(v145 + 8))(v50, v131);
            v148(v87);
          }

          v91 = [v76 text];
          if (v91)
          {
            v92 = v144;
            v93 = v142;
            v94 = v141;
            goto LABEL_40;
          }

          objc_opt_self();
          v97 = swift_dynamicCastObjCClass();
          v92 = v144;
          v93 = v142;
          v94 = v141;
          if (v97 && (v91 = [v97 text]) != 0)
          {
LABEL_40:
            v95 = v91;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v96 = String._bridgeToObjectiveC()();
          }

          else
          {
            v96 = 0;
          }

          v98 = objc_allocWithZone(CPListTemplate);
          sub_100009F1C(0, &unk_100575B00, CPListSection_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;
          v100 = [v98 initWithTitle:v96 sections:isa];

          sub_1002B2CD4(v46, v93, type metadata accessor for CarPlayTemplateInfo);
          v101 = v143;
          (*(v92 + 56))(v93, 0, 1, v143);
          sub_100010430(v93, v94, &unk_100578410, &qword_100402DB0);
          if (v129(v94, 1, v101) == 1)
          {
            v102 = v100;
            v103 = 0;
          }

          else
          {
            sub_1002B2CD4(v94, v128, type metadata accessor for CarPlayTemplateInfo);
            v104 = v100;
            v103 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            sub_1002B54FC(v94, type metadata accessor for CarPlayTemplateInfo);
          }

          [v100 setUserInfo:v103];

          swift_unknownObjectRelease();
          sub_100009104(v93, &unk_100578410, &qword_100402DB0);
          [v100 setShowsSpinnerWhileEmpty:1];
          v105 = *(v133 + OBJC_IVAR____TtC8Podcasts17CarPlayController_interfaceController);
          v106 = swift_allocObject();
          *(v106 + 16) = v100;
          *&v152[16] = sub_1002B58BC;
          *&v152[24] = v106;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *v152 = sub_100185CE0;
          *&v152[8] = &unk_1004E9EC0;
          v107 = _Block_copy(&aBlock);
          v108 = v100;

          [v105 pushTemplate:v108 animated:1 completion:v107];
          _Block_release(v107);
        }

        sub_1002B54FC(v46, type metadata accessor for CarPlayTemplateInfo);
        return sub_100009104(v47, &unk_100575AE0, &unk_100405E80);
      }

      while (1)
      {
        AnyCancellable.cancel()();

        v35 = v42;
        v36 = v43;
        if ((v32 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        v45 = __CocoaSet.Iterator.next()();
        if (v45)
        {
          *&v149 = v45;
          type metadata accessor for AnyCancellable();
          swift_dynamicCast();
          v42 = v35;
          v43 = v36;
          if (aBlock)
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v42 >= ((v34 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v41 = *(v33 + 8 * v42);
      ++v40;
      if (v41)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002B5338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002B5380()
{
  v0 = type metadata accessor for EpisodeDownloadState();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100573D90, &unk_100401380);
  BaseObjectGraph.inject<A>(_:)();
  LegacyLockup.adamId.getter();
  EpisodeStateController.stateMachine(for:)();
  dispatch thunk of EpisodeStateMachine.currentState.getter();
  if (EpisodeDownloadState.isDownloadedEpisode.getter())
  {

    (*(v1 + 8))(v3, v0);
    return 0xD000000000000016;
  }

  else
  {
    (*(v1 + 8))(v3, v0);

    return 0;
  }
}

uint64_t sub_1002B54FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002B555C()
{
  v1 = *(type metadata accessor for CarPlayTemplateInfo(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 97) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  else
  {
    sub_100004590((v0 + 56));
  }

  v5 = v0 + v3;
  v6 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  if ((*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    goto LABEL_5;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 8)
      {
        if (EnumCaseMultiPayload != 9)
        {
          goto LABEL_5;
        }

LABEL_17:

        goto LABEL_5;
      }

      v11 = type metadata accessor for URL();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v0 + v3, 1, v11))
      {
        (*(v12 + 8))(v0 + v3, v11);
      }

      sub_100168088(&unk_100575B10, &qword_100402DC8);
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10019C0A4(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64));
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (*(v5 + 40))
    {
    }

    else
    {
      sub_100004590((v0 + v3));
    }
  }

  else
  {

    v8 = *(sub_100168088(&unk_10057C230, &qword_100402DC0) + 48);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

LABEL_5:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1002B58C4()
{
  sub_100168088(&qword_100574690, &unk_100401BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  *(inited + 32) = static String.pageHighlightShelfID.getter();
  *(inited + 40) = v1;
  *(inited + 48) = static String.loadingShelfID.getter();
  *(inited + 56) = v2;
  v3 = sub_10016B918(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_10057C2F0 = v3;
  return result;
}

uint64_t sub_1002B5964()
{
  sub_100168088(&qword_100577470, &unk_100404860);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004007E0;
  v1 = type metadata accessor for LegacyEpisodeLockup();
  v2 = sub_1002B95F4(&qword_100577478, &type metadata accessor for LegacyEpisodeLockup, &protocol conformance descriptor for LegacyLockup);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for LegacyLockup();
  v4 = sub_1002B95F4(&qword_10057C3F0, &type metadata accessor for LegacyLockup, &protocol conformance descriptor for LegacyLockup);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for Showcase();
  result = sub_1002B95F4(&unk_10057C3F8, &type metadata accessor for Showcase, &protocol conformance descriptor for Showcase);
  *(v0 + 64) = v5;
  *(v0 + 72) = result;
  off_10057C2F8 = v0;
  return result;
}

void sub_1002B5A80(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = v2;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v7 = &v35 - v6;
  v8 = type metadata accessor for ModernShelf.ItemPresentation();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ModernShelf.itemPresentation.getter();
  ModernShelf.ItemPresentation.itemKind.getter();
  (*(v9 + 8))(v11, v8);
  v12 = ModernShelf.ItemKind.rawValue.getter();
  v14 = v13;
  if (v12 == ModernShelf.ItemKind.rawValue.getter() && v14 == v15)
  {
    goto LABEL_8;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
    ModernShelf.header.getter();
    v18 = type metadata accessor for Header();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_100009104(v7, &qword_100577490, &qword_1004017A0);
      goto LABEL_10;
    }

    v21 = Header.title.getter();
    v23 = v22;
    (*(v19 + 8))(v7, v18);
    if (!v23)
    {
      goto LABEL_10;
    }

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {
LABEL_9:

      goto LABEL_10;
    }

    v39 = v23;
    v25 = ModernShelf.items.getter();
    v43 = _swiftEmptyArrayStorage;
    v26 = *(v25 + 16);
    if (v26)
    {
      v36 = a1;
      v37 = v21;
      v38 = v2;
      v35 = v25;
      v27 = v25 + 32;
      v28 = _swiftEmptyArrayStorage;
      do
      {
        sub_100004428(v27, v42);
        sub_1000109E4(v42, v40);
        sub_100168088(&qword_1005748E0, &qword_100401D88);
        type metadata accessor for LegacyEpisodeLockup();
        if ((swift_dynamicCast() & 1) != 0 && v41)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v28 = v43;
        }

        v27 += 40;
        --v26;
      }

      while (v26);

      v21 = v37;
      v3 = v38;
    }

    else
    {

      v28 = _swiftEmptyArrayStorage;
    }

    if (v28 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_28;
      }
    }

    else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_28:
      sub_100009F1C(0, &qword_100574B50, CPListImageRowItem_ptr);

      v20 = sub_1002767D0(v29, v21, v39, v28, 10);
      goto LABEL_11;
    }

    v30 = ModernShelf.items.getter();
    v43 = _swiftEmptyArrayStorage;
    v31 = *(v30 + 16);
    if (v31)
    {
      v37 = v21;
      v38 = v3;
      v36 = v30;
      v32 = v30 + 32;
      v33 = _swiftEmptyArrayStorage;
      do
      {
        sub_100004428(v32, v42);
        sub_1000109E4(v42, v40);
        sub_100168088(&qword_1005748E0, &qword_100401D88);
        type metadata accessor for LegacyLockup();
        if ((swift_dynamicCast() & 1) != 0 && v41)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v33 = v43;
        }

        v32 += 40;
        --v31;
      }

      while (v31);

      v21 = v37;
    }

    else
    {

      v33 = _swiftEmptyArrayStorage;
    }

    if (v33 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_42;
      }
    }

    else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      sub_100009F1C(0, &qword_100574B50, CPListImageRowItem_ptr);

      sub_1003208B0(v34, v21, v39, v33);
      goto LABEL_11;
    }

LABEL_8:

    goto LABEL_9;
  }

LABEL_10:
  v20 = 0;
LABEL_11:
  *a2 = v20;
}

uint64_t sub_1002B6008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_100409908, v12);
}

uint64_t sub_1002B615C()
{

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_pageURL, &qword_100574040, &unk_100400AD0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CarPlayStoreProvider(uint64_t a1)
{
  result = qword_10057C340;
  if (!qword_10057C340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B624C(uint64_t a1)
{
  sub_100012E4C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002B62F0()
{
  v1 = v0;
  v27 = *v0;
  v2 = v27;
  v32 = *(sub_100168088(&qword_100574040, &unk_100400AD0) - 8);
  v31 = *(v32 + 64);
  __chkstk_darwin();
  v29 = &v27 - v3;
  v4 = sub_100168088(&unk_100578D90, &qword_1004047F0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v27 - v6;
  v8 = sub_100168088(&unk_100577400, &qword_1004047F8);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  __chkstk_darwin();
  v28 = &v27 - v10;
  v37 = sub_100168088(&unk_100578DA0, &qword_100404800);
  v39 = *(v37 - 8);
  __chkstk_darwin();
  v30 = &v27 - v11;
  v36 = sub_100168088(&unk_100577410, &qword_100404808);
  v38 = *(v36 - 8);
  __chkstk_darwin();
  v33 = &v27 - v12;
  v40 = StorePageProvider.pageContent.getter();
  *(swift_allocObject() + 16) = v2;
  sub_100168088(&unk_100578DB0, &unk_100404810);
  sub_100009FAC(&unk_100574B00, &unk_100578DB0, &unk_100404810, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher.removeDuplicates(by:)();

  v40 = *(v0 + OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_updatePlayStateSubject);
  sub_100168088(&qword_100574B10, &unk_100401F50);
  sub_100009FAC(&unk_100577420, &unk_100578D90, &qword_1004047F0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_100009FAC(&unk_100574B20, &qword_100574B10, &unk_100401F50, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v13 = v28;
  Publisher.combineLatest<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v14 = v0[2];
  v15 = v29;
  sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_pageURL, v29, &qword_100574040, &unk_100400AD0);
  v16 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v17 = (v31 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  sub_1001B8A3C(v15, v18 + v16);
  *(v18 + v17) = v27;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1002B6E64;
  *(v19 + 24) = v18;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100577430, &unk_100404820);
  sub_100009FAC(&unk_100578DC0, &unk_100577400, &qword_1004047F8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  sub_100009FAC(&unk_100577440, &unk_100577430, &unk_100404820, &protocol conformance descriptor for Future<A, B>);
  v20 = v30;
  v21 = v34;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v35 + 8))(v13, v21);
  sub_100009FAC(&unk_100578DD0, &unk_100578DA0, &qword_100404800, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v22 = v33;
  v23 = v37;
  Publisher.compactMap<A>(_:)();
  (*(v39 + 8))(v20, v23);
  sub_100009FAC(&unk_100577450, &unk_100577410, &qword_100404808, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v24 = v36;
  v25 = Publisher.eraseToAnyPublisher()();
  (*(v38 + 8))(v22, v24);
  return v25;
}

uint64_t sub_1002B69E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v6 = *(sub_100168088(&qword_100574040, &unk_100400AD0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = *(type metadata accessor for PageContent() - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v14 = &v21 - v13;
  sub_100168088(&unk_100577430, &unk_100404820);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1001AB84C(a1, v12);
  sub_100010430(v21, v9, &qword_100574040, &unk_100400AD0);
  v16 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v17 = (v11 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_1001AD194(v12, v18 + v16, &type metadata accessor for PageContent);
  sub_1001B8A3C(v9, v18 + v17);
  *(v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_1004098E8;
  *(v19 + 24) = v18;

  return Future<>.init(priority:unwrapping:)();
}

uint64_t sub_1002B6CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B6D5C, v5, v4);
}

uint64_t sub_1002B6D5C()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v4 = sub_1002B8EC0(v3, v2, v1);
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1002B6E64(uint64_t a1)
{
  v3 = *(sub_100168088(&qword_100574040, &unk_100400AD0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002B69E8(a1, v5, v1 + v4, v6);
}

uint64_t sub_1002B6F10()
{
  v2 = *(type metadata accessor for PageContent() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100168088(&qword_100574040, &unk_100400AD0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1001AB9B8;

  return sub_1002B6CC0(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1002B7088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v7 = &v10 - v6;
  v8 = OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_updatePlayStateSubject;
  sub_100168088(&qword_100574B10, &unk_100401F50);
  swift_allocObject();
  *(v3 + v8) = CurrentValueSubject.init(_:)();
  *(v3 + 16) = a1;
  sub_100010430(a2, v7, &qword_100574040, &unk_100400AD0);
  type metadata accessor for StorePageProvider();
  swift_allocObject();

  swift_retain_n();
  *(v3 + OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_provider) = StorePageProvider.init(asPartOf:pageURL:page:)();
  sub_100010430(a2, v3 + OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_pageURL, &qword_100574040, &unk_100400AD0);
  StorePageProvider.viewDidLoad()();
  sub_100009104(a2, &qword_100574040, &unk_100400AD0);
  return v3;
}

uint64_t sub_1002B71F4(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v141 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v139 = &v124 - v5;
  __chkstk_darwin();
  v140 = &v124 - v6;
  v148 = type metadata accessor for ModernShelf.ItemPresentation();
  v7 = *(v148 - 1);
  __chkstk_darwin();
  v9 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModernShelf();
  v144 = *(v10 - 8);
  v145 = v10;
  __chkstk_darwin();
  v143 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v124 - v12;
  __chkstk_darwin();
  v135 = &v124 - v13;
  __chkstk_darwin();
  v15 = &v124 - v14;
  __chkstk_darwin();
  v17 = &v124 - v16;
  __chkstk_darwin();
  v147 = &v124 - v18;
  v129 = type metadata accessor for ModernPage();
  __chkstk_darwin();
  v134 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v133 = &v124 - v20;
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v22 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_10057C408, &unk_100409910);
  __chkstk_darwin();
  v24 = &v124 - v23;
  v26 = *(v25 + 56);
  sub_1001AB84C(a1, &v124 - v23);
  sub_1001AB84C(a2, &v24[v26]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload && !swift_getEnumCaseMultiPayload())
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1001AD1FC(&v24[v26], &type metadata accessor for PageContent);
LABEL_8:
      sub_1001AD1FC(v24, &type metadata accessor for PageContent);
      v28 = 1;
      return v28 & 1;
    }

LABEL_43:
    sub_100009104(v24, &qword_10057C408, &unk_100409910);
    v28 = 0;
    return v28 & 1;
  }

  sub_1001AB84C(v24, v22);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1001AD1FC(v22, &type metadata accessor for ModernPage);
    goto LABEL_43;
  }

  v29 = v22;
  v30 = v133;
  sub_1001AD194(v29, v133, &type metadata accessor for ModernPage);
  v125 = v24;
  result = sub_1001AD194(&v24[v26], v134, &type metadata accessor for ModernPage);
  v32 = *(v129 + 24);
  v33 = *(v30 + v32);
  v34 = *(v33 + 16);
  v146 = v15;
  if (v34)
  {
    v127 = v17;
    v35 = 0;
    v136 = (v144 + 8);
    v124 = v7;
    v36 = (v7 + 8);
    v128 = _swiftEmptyArrayStorage;
    v126 = (v144 + 32);
    v37 = v145;
    v38 = v147;
    v132 = v33;
    v131 = v34;
    v130 = (v144 + 16);
    while (v35 < *(v33 + 16))
    {
      v138 = (*(v144 + 80) + 32) & ~*(v144 + 80);
      v137 = *(v144 + 72);
      (*(v144 + 16))(v38, v33 + v138 + v137 * v35, v37);
      if (ModernShelf.hideFromCarPlay.getter())
      {
        result = (*v136)(v38, v37);
      }

      else
      {
        if (qword_1005727F0 != -1)
        {
          swift_once();
        }

        v39 = off_10057C2F0;
        v40 = ModernShelf.id.getter();
        v42 = v41;
        if (!v39[2] || (v43 = v40, Hasher.init(_seed:)(), String.hash(into:)(), v44 = Hasher._finalize()(), v45 = -1 << *(v39 + 32), v46 = v44 & ~v45, ((*(v39 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v46) & 1) == 0))
        {
LABEL_27:

          if (qword_1005727F8 != -1)
          {
            result = swift_once();
          }

          v50 = off_10057C2F8;
          v51 = (off_10057C2F8 + 32);
          v52 = -*(off_10057C2F8 + 2);
          v53 = -1;
          v38 = v147;
          while (1)
          {
            if (v52 + v53 == -1)
            {
              v62 = *v136;
              goto LABEL_40;
            }

            if (++v53 >= v50[2])
            {
              break;
            }

            v54 = v51 + 2;
            v55 = *v51;
            ModernShelf.itemPresentation.getter();
            ModernShelf.ItemPresentation.itemKind.getter();
            (*v36)(v9, v148);
            v38 = v147;
            result = ModernShelf.ItemKind.modelType.getter();
            v51 = v54;
            if (v55 == result)
            {
              v56 = *v126;
              v37 = v145;
              (*v126)(v127, v38, v145);
              v57 = v128;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v150 = v57;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1001A7758(0, v57[2] + 1, 1);
                v57 = v150;
              }

              v60 = v57[2];
              v59 = v57[3];
              v61 = v57;
              if (v60 >= v59 >> 1)
              {
                sub_1001A7758((v59 > 1), v60 + 1, 1);
                v61 = v150;
              }

              v61[2] = v60 + 1;
              v128 = v61;
              result = v56(v61 + v138 + v60 * v137, v127, v37);
              v15 = v146;
              v38 = v147;
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_99:
          __break(1u);
          break;
        }

        v47 = ~v45;
        while (1)
        {
          v48 = (v39[6] + 16 * v46);
          v49 = *v48 == v43 && v48[1] == v42;
          if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v46 = (v46 + 1) & v47;
          if (((*(v39 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v46) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v62 = *v136;
        v38 = v147;
LABEL_40:
        v37 = v145;
        result = v62(v38, v145);
        v15 = v146;
LABEL_41:
        v33 = v132;
        v34 = v131;
      }

      if (++v35 == v34)
      {
        v32 = *(v129 + 24);
        v7 = v124;
        goto LABEL_47;
      }
    }

    __break(1u);
  }

  else
  {
    v128 = _swiftEmptyArrayStorage;
    v37 = v145;
LABEL_47:
    v63 = *(v134 + v32);
    v64 = *(v63 + 16);
    if (!v64)
    {
      v130 = _swiftEmptyArrayStorage;
LABEL_79:
      v90 = v128[2];
      if (v90)
      {
        v149 = _swiftEmptyArrayStorage;
        v91 = v128;
        sub_1001A7738(0, v90, 0);
        v92 = v149;
        v93 = *(v144 + 16);
        v94 = v91 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
        v147 = *(v144 + 72);
        v148 = v93;
        v95 = (v144 + 8);
        do
        {
          v148(v142, v94, v145);
          ModernShelf.header.getter();
          v96 = v140;
          v97 = type metadata accessor for Header();
          v98 = *(v97 - 8);
          v99 = 0;
          v100 = 0;
          if ((*(v98 + 48))(v96, 1, v97) != 1)
          {
            v101 = v96;
            v102 = v139;
            sub_100010430(v101, v139, &qword_100577490, &qword_1004017A0);
            v99 = Header.title.getter();
            v100 = v103;
            v104 = v102;
            v96 = v140;
            (*(v98 + 8))(v104, v97);
          }

          sub_100009104(v96, &qword_100577490, &qword_1004017A0);
          (*v95)(v142, v145);
          v149 = v92;
          v106 = v92[2];
          v105 = v92[3];
          if (v106 >= v105 >> 1)
          {
            sub_1001A7738((v105 > 1), v106 + 1, 1);
            v92 = v149;
          }

          v92[2] = v106 + 1;
          v107 = &v92[2 * v106];
          v107[4] = v99;
          v107[5] = v100;
          v94 += v147;
          --v90;
        }

        while (v90);
      }

      else
      {

        v92 = _swiftEmptyArrayStorage;
      }

      v108 = v130[2];
      if (v108)
      {
        v149 = _swiftEmptyArrayStorage;
        v109 = v130;
        sub_1001A7738(0, v108, 0);
        v110 = v149;
        v111 = *(v144 + 16);
        v112 = v109 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
        v147 = *(v144 + 72);
        v148 = v111;
        v144 += 16;
        v146 = (v144 - 8);
        do
        {
          v148(v143, v112, v145);
          ModernShelf.header.getter();
          v113 = v141;
          v114 = type metadata accessor for Header();
          v115 = *(v114 - 8);
          v116 = 0;
          v117 = 0;
          if ((*(v115 + 48))(v113, 1, v114) != 1)
          {
            v118 = v139;
            sub_100010430(v113, v139, &qword_100577490, &qword_1004017A0);
            v119 = Header.title.getter();
            v113 = v141;
            v116 = v119;
            v117 = v120;
            (*(v115 + 8))(v118, v114);
          }

          sub_100009104(v113, &qword_100577490, &qword_1004017A0);
          (*v146)(v143, v145);
          v149 = v110;
          v122 = v110[2];
          v121 = v110[3];
          if (v122 >= v121 >> 1)
          {
            sub_1001A7738((v121 > 1), v122 + 1, 1);
            v110 = v149;
          }

          v110[2] = v122 + 1;
          v123 = &v110[2 * v122];
          v123[4] = v116;
          v123[5] = v117;
          v112 += v147;
          --v108;
        }

        while (v108);
      }

      else
      {

        v110 = _swiftEmptyArrayStorage;
      }

      v28 = sub_100195FAC(v92, v110);

      sub_1001AD1FC(v134, &type metadata accessor for ModernPage);
      sub_1001AD1FC(v133, &type metadata accessor for ModernPage);
      sub_1001AD1FC(v125, &type metadata accessor for PageContent);
      return v28 & 1;
    }

    v65 = 0;
    v137 = v144 + 16;
    v136 = (v144 + 8);
    v66 = (v7 + 8);
    v130 = _swiftEmptyArrayStorage;
    v129 = v144 + 32;
    v132 = v63;
    v131 = v64;
    while (v65 < *(v63 + 16))
    {
      v147 = (*(v144 + 80) + 32) & ~*(v144 + 80);
      v138 = *(v144 + 72);
      (*(v144 + 16))(v15, v63 + v147 + v138 * v65, v37);
      if (ModernShelf.hideFromCarPlay.getter())
      {
        result = (*v136)(v15, v37);
      }

      else
      {
        if (qword_1005727F0 != -1)
        {
          swift_once();
        }

        v67 = off_10057C2F0;
        v68 = ModernShelf.id.getter();
        v70 = v69;
        if (v67[2] && (v71 = v68, Hasher.init(_seed:)(), String.hash(into:)(), v72 = Hasher._finalize()(), v73 = -1 << *(v67 + 32), v74 = v72 & ~v73, ((*(v67 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v74) & 1) != 0))
        {
          v75 = ~v73;
          while (1)
          {
            v76 = (v67[6] + 16 * v74);
            v77 = *v76 == v71 && v76[1] == v70;
            if (v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v74 = (v74 + 1) & v75;
            if (((*(v67 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v74) & 1) == 0)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
LABEL_64:

          if (qword_1005727F8 != -1)
          {
            result = swift_once();
          }

          v78 = off_10057C2F8;
          v79 = (off_10057C2F8 + 32);
          v80 = -*(off_10057C2F8 + 2);
          v81 = -1;
          while (v80 + v81 != -1)
          {
            if (++v81 >= v78[2])
            {
              goto LABEL_99;
            }

            v82 = v79 + 2;
            v83 = *v79;
            ModernShelf.itemPresentation.getter();
            ModernShelf.ItemPresentation.itemKind.getter();
            (*v66)(v9, v148);
            result = ModernShelf.ItemKind.modelType.getter();
            v79 = v82;
            if (v83 == result)
            {
              v84 = *v129;
              v37 = v145;
              (*v129)(v135, v146, v145);
              v85 = v130;
              v86 = swift_isUniquelyReferenced_nonNull_native();
              v150 = v85;
              if ((v86 & 1) == 0)
              {
                sub_1001A7758(0, v85[2] + 1, 1);
                v85 = v150;
              }

              v88 = v85[2];
              v87 = v85[3];
              v89 = v85;
              if (v88 >= v87 >> 1)
              {
                sub_1001A7758((v87 > 1), v88 + 1, 1);
                v89 = v150;
              }

              v89[2] = v88 + 1;
              v130 = v89;
              result = v84(v89 + v147 + v88 * v138, v135, v37);
              v15 = v146;
              goto LABEL_77;
            }
          }
        }

        v37 = v145;
        v15 = v146;
        result = (*v136)(v146, v145);
LABEL_77:
        v63 = v132;
        v64 = v131;
      }

      if (++v65 == v64)
      {
        goto LABEL_79;
      }
    }
  }

  __break(1u);
  return result;
}

Class sub_1002B82F4(void *a1, uint64_t a2, __n128 a3)
{
  v46 = type metadata accessor for ModernShelf.ItemPresentation();
  v5 = *(v46 - 8);
  __chkstk_darwin();
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModernShelf();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = __chkstk_darwin();
  v42 = &v39 - v14;
  v15 = *(a2 + 16);
  if (!v15)
  {
    return 0;
  }

  v39 = a1;
  v40 = v12;
  v41 = v9;
  v17 = *(v9 + 16);
  v16 = v9 + 16;
  v18 = (v5 + 8);
  v44 = v17;
  v45 = (v16 - 8);
  v19 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v43 = *(v16 + 56);
  while (1)
  {
    v20 = v8;
    v44(v11, v19, v8, v13);
    ModernShelf.itemPresentation.getter();
    ModernShelf.ItemPresentation.itemKind.getter();
    (*v18)(v7, v46);
    v21 = ModernShelf.ItemKind.rawValue.getter();
    v23 = v22;
    if (v21 == ModernShelf.ItemKind.rawValue.getter() && v23 == v24)
    {
      break;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_9;
    }

    v8 = v20;
    (*v45)(v11, v20);
    v19 += v43;
    if (!--v15)
    {
      return 0;
    }
  }

LABEL_9:
  v27 = v40;
  v28 = *(v41 + 32);
  v28(v40, v11, v20);
  v29 = v42;
  v28(v42, v27, v20);
  v30 = ModernShelf.items.getter();
  v31 = sub_1003801F8(v30);

  if (v31)
  {
    sub_100009F1C(0, &qword_100574B50, CPListImageRowItem_ptr);
    v32 = objc_opt_self();
    v33 = v39;

    v34 = [v32 mainBundle];
    v47._object = 0xE000000000000000;
    v35._countAndFlagsBits = 0x6465727574616546;
    v35._object = 0xE800000000000000;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0;
    v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v47);

    v38.super.isa = sub_10022B37C(v33, v37._countAndFlagsBits, v37._object, v31).super.isa;
  }

  else
  {
    v38.super.isa = 0;
  }

  (*v45)(v29, v20);
  return v38.super.isa;
}

void sub_1002B86DC(void *result, uint64_t a2)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    do
    {
      for (i = v4; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        type metadata accessor for ModernShelf();
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }

        sub_1002B5A80(result, &v6);
        if (v6)
        {
          break;
        }

        if (v4 == v2)
        {
          return;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v4 != v2);
  }
}

id sub_1002B8824(void *a1, uint64_t a2, __n128 a3)
{
  v53 = a1;
  v66 = type metadata accessor for ModernShelf.ItemPresentation();
  v4 = *(v66 - 8);
  __chkstk_darwin();
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModernShelf();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v55 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v52 - v10;
  v12 = *(a2 + *(type metadata accessor for ModernPage() + 24));
  v14 = *(v12 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v16 = 0;
    v63 = v8 + 16;
    v61 = (v8 + 8);
    v17 = (v4 + 8);
    v54 = (v8 + 32);
    v58 = v8;
    v59 = v7;
    v56 = v14;
    v57 = v12;
    while (v16 < *(v12 + 16))
    {
      v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v64 = *(v8 + 72);
      v65 = v16;
      (*(v8 + 16))(v11, v12 + v18 + v64 * v16, v7);
      if (ModernShelf.hideFromCarPlay.getter())
      {
        (*v61)(v11, v7);
      }

      else
      {
        v60 = v18;
        v62 = v15;
        if (qword_1005727F0 != -1)
        {
          swift_once();
        }

        v19 = off_10057C2F0;
        v20 = ModernShelf.id.getter();
        v22 = v21;
        if (v19[2] && (v23 = v20, Hasher.init(_seed:)(), String.hash(into:)(), v24 = Hasher._finalize()(), v25 = -1 << *(v19 + 32), v26 = v24 & ~v25, ((*(v19 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v26) & 1) != 0))
        {
          v27 = ~v25;
          while (1)
          {
            v28 = (v19[6] + 16 * v26);
            v29 = *v28 == v23 && v28[1] == v22;
            if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v19 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v26) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:

          if (qword_1005727F8 != -1)
          {
            swift_once();
          }

          v30 = off_10057C2F8;
          v31 = (off_10057C2F8 + 32);
          v32 = -*(off_10057C2F8 + 2);
          v33 = -1;
          while (v32 + v33 != -1)
          {
            if (++v33 >= v30[2])
            {
              __break(1u);
              goto LABEL_44;
            }

            v34 = v31 + 2;
            v35 = *v31;
            ModernShelf.itemPresentation.getter();
            ModernShelf.ItemPresentation.itemKind.getter();
            (*v17)(v6, v66);
            v36 = ModernShelf.ItemKind.modelType.getter();
            v31 = v34;
            if (v35 == v36)
            {
              v37 = *v54;
              v7 = v59;
              (*v54)(v55, v11, v59);
              v15 = v62;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v68 = v15;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1001A7758(0, v15[2] + 1, 1);
                v15 = v68;
              }

              v8 = v58;
              v40 = v15[2];
              v39 = v15[3];
              if (v40 >= v39 >> 1)
              {
                sub_1001A7758((v39 > 1), v40 + 1, 1);
                v15 = v68;
              }

              v15[2] = v40 + 1;
              v37(v15 + v60 + v40 * v64, v55, v7);
              goto LABEL_31;
            }
          }
        }

        v7 = v59;
        (*v61)(v11, v59);
        v15 = v62;
        v8 = v58;
LABEL_31:
        v14 = v56;
        v12 = v57;
      }

      v16 = v65 + 1;
      if (v65 + 1 == v14)
      {
        goto LABEL_32;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:

    sub_100168088(&unk_100574A00, &unk_100401EC0);
    v46 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_39;
  }

LABEL_32:
  if (!v15[2])
  {

    return 0;
  }

  v67 = _swiftEmptyArrayStorage;
  v41 = v53;
  v42 = sub_1002B82F4(v53, v15, v13);
  if (v42)
  {
    v43 = v42;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_1002B86DC(v41, v15);
  v45 = v44;

  if (v45 >> 62)
  {
    goto LABEL_45;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v46 = v45;
LABEL_39:

  sub_1001C3E8C(v46);
  v47 = v67;
  if (v67 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_41;
    }
  }

  else if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:
    v48 = objc_allocWithZone(CPListSection);
    sub_1001AA058(v47);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v50 = [v48 initWithItems:isa];

    return v50;
  }

  return 0;
}

uint64_t (*sub_1002B8EC0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ModernPage();
  __chkstk_darwin();
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v12 = v41 - v11;
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB84C(a2, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001AD1FC(v14, &type metadata accessor for PageContent);
    }

    else
    {
      sub_1001AD194(v14, v6, &type metadata accessor for ModernPage);
      type metadata accessor for CarPlayPageLoadCoordinator(0);
      swift_allocObject();

      v24 = sub_1002442DC(v23);

      v41[1] = v24;
      v25 = BaseObjectGraph.satisfying<A>(_:with:)();
      v27 = sub_1002B8824(v25, v6, v26);
      if (v27)
      {
        v28 = v27;
        v29 = [v28 items];
        sub_100168088(&unk_100574A00, &unk_100401EC0);
        v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v30 >> 62)
        {
          v31 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v31)
        {
          sub_100168088(&unk_100574680, &qword_100401740);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1004007B0;
          *(v32 + 32) = v28;

          sub_1001AD1FC(v6, &type metadata accessor for ModernPage);
          return v32;
        }

        sub_1001AD1FC(v6, &type metadata accessor for ModernPage);
      }

      else
      {
        sub_1001AD1FC(v6, &type metadata accessor for ModernPage);
      }
    }

    return 0;
  }

  else if (EnumCaseMultiPayload)
  {

    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to load store page: %@", v20, 0xCu);
      sub_100009104(v21, &qword_100575B20, &qword_100401F90);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);

    return sub_1002B9518;
  }

  else
  {
    sub_100010430(a3, v12, &qword_100574040, &unk_100400AD0);
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) == 1)
    {
      sub_100009104(v12, &qword_100574040, &unk_100400AD0);
      static ASKConstants.PodcastCatalogUrl.getter();
LABEL_21:

      return 0;
    }

    v34 = URL.absoluteString.getter();
    v36 = v35;
    (*(v17 + 8))(v12, v16);
    v37 = static ASKConstants.PodcastCatalogUrl.getter();
    if (!v36)
    {
      goto LABEL_21;
    }

    if (v34 == v37 && v36 == v38)
    {
    }

    else
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }

    return 0;
  }
}

uint64_t sub_1002B9520(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002B95F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002B963C(uint64_t a1, __n128 a2)
{
  sub_1002B9778(a2);
  v3 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  v4 = *(v2 + 48);
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = sub_10024E918;
  v5[4] = 0;
  aBlock[4] = sub_1001E9664;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002355D0;
  aBlock[3] = &unk_1004EA0B8;
  v6 = _Block_copy(aBlock);
  swift_retain_n();

  [v3 reportAConcernURLWithCompletion:v6];
  _Block_release(v6);
}

void sub_1002B9778(__n128 a1)
{
  type metadata accessor for ScalarDictionary();
  __chkstk_darwin();
  v2 = type metadata accessor for MetricsFieldInclusionRequest();
  v26 = *(v2 - 8);
  __chkstk_darwin();
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v6 = v18 - v5;
  v7 = type metadata accessor for MetricsData();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  swift_beginAccess();
  if (*(v1 + 48) && !*(v1 + 40))
  {
    v11 = *(v1 + 24);

    v23 = static MetricsTargetType.button.getter();
    v24 = v12;
    v22 = static MetricsActionContext.contextual.getter();
    v25 = v13;
    type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {

      v23 = static MetricsTargetType.transcriptText.getter();
      v24 = v14;
      v22 = static MetricsActionContext.selectionMenu.getter();
      v25 = v15;
    }

    sub_100168088(&unk_10057DC50, &unk_10040A590);
    v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100400790;
    *&v28 = v11;
    sub_1000366D8();
    v18[2] = BinaryInteger.description.getter();
    v18[3] = v16;
    v18[1] = static MetricsActionType.report.getter();
    v19 = v8;
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    static MetricsDataConfiguration.default.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();
    v35 = v28;
    sub_100009104(&v35, &unk_100574650, &unk_1004023C0);
    v34 = v29;
    sub_100009104(&v34, &unk_100573A90, &unk_100401170);
    v33 = v30;
    sub_100009104(&v33, &unk_100574660, &unk_1004023D0);
    sub_100037470(v31, v32);

    sub_100009104(v6, &qword_100574040, &unk_100400AD0);
    static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
    MetricsData.removingIncludedField(_:)();
    (*(v26 + 8))(v4, v2);
    (*(v19 + 8))(v10, v7);
    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    v27[3] = type metadata accessor for EmptyAction();
    v27[4] = &protocol witness table for EmptyAction;
    sub_10000E680(v27);
    EmptyAction.init(actionMetrics:)();
    ContextActionsConfiguration.perform(_:)();

    sub_100004590(v27);
  }
}

void sub_1002B9CCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  v4 = *(v0 + 40);
  *(v0 + 40) = -1;
  sub_1002BA46C(v1, v2, v3, v4);
  swift_beginAccess();
  if (*(v0 + 48))
  {
    type metadata accessor for CategoryContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v5 = static ContentReference.category(adamID:)();
LABEL_6:
      v9 = v5;
      v10 = *(v0 + 16);
      v11 = *(v0 + 24);
      v12 = *(v0 + 32);
      *(v0 + 16) = v9;
      *(v0 + 24) = v6;
      *(v0 + 32) = v7;
      LOBYTE(v9) = *(v0 + 40);
      *(v0 + 40) = v8;
      v13 = v11;
      v14 = v12;
      v15 = v9;
LABEL_7:
      sub_1002BA46C(v10, v13, v14, v15);
      return;
    }

    type metadata accessor for ChannelContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v5 = static ContentReference.channel(adamID:)();
      goto LABEL_6;
    }

    type metadata accessor for EpisodeContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v16 = v0;

      sub_100399278();

      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
LABEL_11:
        v17 = static ContentReference.episode(adamID:)();
LABEL_20:
        v23 = v17;
        v24 = v18;
        v25 = v19;
        v26 = v20;

        v10 = *(v16 + 16);
        v13 = *(v16 + 24);
        v14 = *(v16 + 32);
        *(v16 + 16) = v23;
        *(v16 + 24) = v24;
        *(v16 + 32) = v25;
        v15 = *(v16 + 40);
        *(v16 + 40) = v26;
        goto LABEL_7;
      }

LABEL_14:

      return;
    }

    type metadata accessor for PodcastContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v16 = v0;

      sub_1002160A8(v21);

      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        v17 = static ContentReference.show(adamID:)();
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
    v22 = swift_dynamicCastClass();
    if (v22 && *(v22 + qword_1005766C8))
    {
      v16 = v0;

      sub_100399278();
      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }
}

uint64_t sub_1002B9F18()
{
  sub_1002BA46C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_contextActionType, &qword_100575870, &unk_100402BE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReportConcernContextAction(uint64_t a1)
{
  result = qword_10057C438;
  if (!qword_10057C438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BA048(uint64_t a1)
{
  type metadata accessor for MetricsLabel();
  if (v1 <= 0x3F)
  {
    sub_1001C25E8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002BA13C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100468320;
  v1._object = 0x8000000100468300;
  v5._countAndFlagsBits = 0xD000000000000025;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002BA1F0()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1002BA220@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_1002BA2B4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  sub_1002B9CCC();
}

uint64_t sub_1002BA34C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

unint64_t sub_1002BA3EC(uint64_t a1)
{
  result = sub_1002BA414();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002BA414()
{
  result = qword_100582290;
  if (!qword_100582290)
  {
    type metadata accessor for ReportConcernContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100582290);
  }

  return result;
}

void sub_1002BA46C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1001CEA68(a2, a3, a4);
  }
}

void sub_1002BA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v4) + 0x198);
  v8 = type metadata accessor for OperationResult(0, *((swift_isaMask & *v4) + 0x170), a3, a4);
  (*(*(v8 - 8) + 8))(&v4[v7], v8);
  (*(*(*((v6 & v5) + 0x180) - 8) + 8))(&v4[*((swift_isaMask & *v4) + 0x1A0)]);

  v9 = *&v4[*((swift_isaMask & *v4) + 0x1B0)];
}

id sub_1002BA658()
{
  v1 = *((swift_isaMask & *v0) + 0x190);
  v2 = *((swift_isaMask & *v0) + 0x180);
  v5[0] = *((swift_isaMask & *v0) + 0x170);
  v5[1] = v2;
  v6 = v1;
  v3 = type metadata accessor for StorageOperation(0, v5);
  v7.receiver = v0;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1002BA71C()
{
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() mainBundle];
  if (v1)
  {
    v11 = 0x800000010046D420;
    v3 = 0xD00000000000001CLL;
    v4 = 0x800000010046D400;
    v5 = 0xD00000000000001CLL;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x800000010046D460;
    v4 = 0x800000010046D440;
    v3 = 0xD000000000000011;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
    v5 = 0xD000000000000011;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v6, *&v7, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002BA820()
{
  v1 = type metadata accessor for QueueModelSection();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v7 + v8, v6, v9);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1001EDA30(v6, v10);
LABEL_15:
    v17 = 0;
    return v17 & 1;
  }

  v11 = *v6;
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);
LABEL_8:
    v14 = v13;

    v15 = *(v0 + 32);

    dispatch thunk of PlaybackController.queueController.getter();

    v16 = *(v2 + 104);
    if (v15)
    {
      v16(v4, enum case for QueueModelSection.softQueue(_:), v1);
      v17 = dispatch thunk of PlaybackController.QueueController.queueSectionContainsItem(queueSection:item:)();
    }

    else
    {
      v16(v4, enum case for QueueModelSection.hardQueue(_:), v1);
      v17 = dispatch thunk of PlaybackController.QueueController.queueSectionContainsItem(queueSection:item:)();
    }

    (*(v2 + 8))(v4, v1);
    return v17 & 1;
  }

  __break(1u);
  return result;
}

void sub_1002BAAB4(__n128 a1)
{
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v4 + v5, v3, v6);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1001EDA30(v3, v7);
      return;
    }

    v8 = *v3;
    if (*v3 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      dispatch thunk of PlaybackController.queueController.getter();

      v11 = [v10 contentItemIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      dispatch thunk of PlaybackController.QueueController.removeItemFromQueue(identifier:)();
    }
  }
}

uint64_t sub_1002BAC64()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1002BACEC()
{
  result = qword_10057C708;
  if (!qword_10057C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057C708);
  }

  return result;
}

uint64_t sub_1002BAD4C()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1002BAD7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for MetricsLabel.removeFromSoftQueue(_:);
  if (!v3)
  {
    v6 = &enum case for MetricsLabel.removeFromHardQueue(_:);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_1002BAE00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = type metadata accessor for ContextActionType();
  v8 = *(v4 - 8);
  v5 = &enum case for ContextActionType.removeFromSoftQueue(_:);
  if (!v3)
  {
    v5 = &enum case for ContextActionType.removeFromHardQueue(_:);
  }

  (*(*(v4 - 8) + 104))(a1, *v5, v4);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v4);
}

uint64_t sub_1002BAEEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1002BAF4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002BAFAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002BB010(uint64_t a1)
{
  result = sub_1002BB098(&qword_10057C710, &unk_100409B9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BB054(uint64_t a1)
{
  result = sub_1002BB098(&qword_10057C718, &unk_100409BF4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BB098(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveFromQueueContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1002BB0D8()
{
  sub_100168088(&unk_100575CE0, &unk_100402E80);
  __chkstk_darwin();
  v2 = &v17 - v1;
  v3 = type metadata accessor for PodcastStateModel();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 96);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v9 + v10, v8, v11);
    v13 = sub_100215D14(v12);
    sub_1001C3734(v8, type metadata accessor for PodcastContextActionDataType);
    if (v13)
    {
      v14 = v13;
      PodcastStateModel.init(podcast:)();
      if ((*(v4 + 48))(v2, 1, v3) != 1)
      {
        (*(v4 + 32))(v6, v2, v3);
        v16 = PodcastStateModel.sanitizedState()();
        (*(v4 + 8))(v6, v3);

        return v16 == 1;
      }

      sub_100009104(v2, &unk_100575CE0, &unk_100402E80);
    }
  }

  return 0;
}

void sub_1002BB364()
{
  v1 = type metadata accessor for Logger();
  v36 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v30[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v5 = &v30[-v4];
  v6 = type metadata accessor for PresentationSource();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v0 + 96);
  if (v12)
  {
    v35 = v1;
    v13 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v12 + v13, v11, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = type metadata accessor for PodcastContextActionDataType;
LABEL_6:
      sub_1001C3734(v11, v15);
      return;
    }

    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = type metadata accessor for PodcastContextActionDataType.Kind;
      goto LABEL_6;
    }

    v17 = *v11;
    v16 = v11[1];
    swift_beginAccess();
    if (!*(v0 + 104))
    {

      (*(v7 + 56))(v5, 1, 1, v6);
      goto LABEL_12;
    }

    v34 = v0;

    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

    v18 = v7;
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

LABEL_12:
      sub_100009104(v5, &unk_10057BB90, &unk_100402D60);
      return;
    }

    (*(v7 + 32))(v9, v5, v6);
    static Logger.podcastsStatesCoordination.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v21 = 136315394;
      *(v21 + 4) = sub_1000153E0(v17, v16, &v37);
      *(v21 + 12) = 2080;
      v22 = [objc_opt_self() callStackSymbols];
      v32 = v19;
      v23 = v22;
      v31 = v20;
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_1000153E0(v24, v26, &v37);

      *(v21 + 14) = v27;
      v28 = v32;
      _os_log_impl(&_mh_execute_header, v32, v31, "RemovePodcastContextAction.handler() - removing podcast %s %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v36 + 8))(v3, v35);
    sub_1000044A0((v34 + 16), *(v34 + 40));
    v29 = dispatch thunk of LibraryRemovalControllerProtocol.removeShowFromLibraryAlertController(uuid:)();

    if (v29)
    {
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();
    }

    (*(v18 + 8))(v9, v6);
  }
}

uint64_t sub_1002BB8BC()
{
  sub_100004590((v0 + 16));
  sub_100004590((v0 + 56));

  v1 = OBJC_IVAR____TtC8Podcasts26RemovePodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts26RemovePodcastContextAction_contextActionType, &qword_100575870, &unk_100402BE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemovePodcastContextAction(uint64_t a1)
{
  result = qword_10057C748;
  if (!qword_10057C748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BB9F4(uint64_t a1)
{
  type metadata accessor for MetricsLabel();
  if (v1 <= 0x3F)
  {
    sub_1001C25E8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002BBB04()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xA9000000000000A6;
  v1._countAndFlagsBits = 0x455F45564F4D4552;
  v1._object = 0xEF53495350494C4CLL;
  v5._countAndFlagsBits = 0x80E265766F6D6552;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002BBBBC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts26RemovePodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002BBC4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1002BBCE4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

uint64_t sub_1002BBD7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002BBDDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002BBE40(uint64_t a1)
{
  result = sub_1002BBEC8(&qword_10057C850, &unk_100409CD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BBE84(uint64_t a1)
{
  result = sub_1002BBEC8(&qword_10057C858, &unk_100409D30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BBEC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemovePodcastContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002BBF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = ShowHeader.episodeToPlay.getter();
  if (v5)
  {
    v6 = sub_1002BBFC4(a1, v5, v3);
  }

  else
  {
    if (!ShowHeader.primaryButtonAction.getter())
    {
      return 0;
    }

    type metadata accessor for PlayAction();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      v7 = 0;
      goto LABEL_4;
    }

    v6 = sub_1002BC7C8(a1, v9, v3);
  }

  v7 = v6;
LABEL_4:

  return v7;
}

id sub_1002BBFC4(uint64_t a1, uint64_t a2, int a3)
{
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v6 = v54 - v5;
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v8 = v54 - v7;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v61 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v60 = v54 - v10;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v12 = v54 - v11;
  v59 = _s27CarPlayEpisodeSubtitleStyleOMa(0);
  __chkstk_darwin();
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodePlayState();
  __chkstk_darwin();
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Episode.title.getter();
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v54[1] = v17;
    v55 = v8;
    v56 = v6;
    v57 = a3;
    type metadata accessor for CarPlayPageLoadCoordinator(0);
    BaseObjectGraph.inject<A>(_:)();
    v62 = aBlock[0];
    sub_100168088(&unk_100578420, &unk_100402000);
    BaseObjectGraph.inject<A>(_:)();
    Episode.uuid.getter();
    sub_100168088(&unk_10057A4A0, &qword_100409850);
    v58 = a1;
    BaseObjectGraph.inject<A>(_:)();
    dispatch thunk of EpisodeStateController.stateMachine(for:)();

    v63 = v16;
    dispatch thunk of EpisodeStateMachine.currentState.getter();

    v20 = Episode.showTypeIsSerial.getter();
    v21 = Episode.isExplicit.getter();
    if (v20)
    {
      v22 = Episode.seasonNumber.getter();
      v24 = v23;
      v25 = Episode.episodeNumber.getter();
      v27 = v26;
      v28 = Episode.duration.getter();
      *v14 = v22;
      v14[8] = v24 & 1;
      *(v14 + 2) = v25;
      v14[24] = v27 & 1;
      *(v14 + 4) = v28;
      v14[40] = v29 & 1;
    }

    else
    {
      v31 = &v14[*(sub_100168088(&qword_1005812A0, qword_100401BB0) + 64)];
      *v14 = Episode.episodeNumber.getter();
      v14[8] = v32 & 1;
      Episode.releaseDate.getter();
      *v31 = Episode.duration.getter();
      v31[8] = v33 & 1;
    }

    swift_storeEnumTagMultiPayload();
    sub_1001A3250(v65, v21 & 1, v14);
    sub_1002BD448(v14, _s27CarPlayEpisodeSubtitleStyleOMa);
    v34 = Episode.uuid.getter();
    v35 = v58;
    v37 = sub_1002BD260(v58, v34, v36, 1);

    v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v39 = String._bridgeToObjectiveC()();

    v40 = String._bridgeToObjectiveC()();

    v30 = [v38 initWithText:v39 detailText:v40 image:0 accessoryImage:v37 accessoryType:0];

    Episode.artwork.getter();
    CarPlayPageLoadCoordinator.loadImage(for:into:)(v12, v30);
    sub_10021F030(v12);
    v41 = sub_1001A44D0();
    if ((v42 & 1) == 0)
    {
      [v30 setPlaybackProgress:*&v41];
    }

    Episode.uuid.getter();
    Episode.adamId.getter();
    v43 = type metadata accessor for EpisodeListSettings();
    (*(*(v43 - 8) + 56))(v60, 1, 1, v43);
    static ActionMetrics.notInstrumented.getter();
    v44 = type metadata accessor for LibraryPlayPauseAction();
    swift_allocObject();
    v45 = LibraryPlayPauseAction.init(episodeUuid:episodeAdamId:channelAdamId:settings:showPlayerIfPlaying:isSmartPlayButton:isWidgetPlayButton:timestamp:waitForEngine:shouldPreventQueueing:actionMetrics:)();
    v46 = v56;
    *(v56 + 3) = v44;
    *(v46 + 32) = sub_1002BD57C(&qword_10057C870, &type metadata accessor for LibraryPlayPauseAction);
    *v46 = v45;
    *(v46 + 40) = 0;
    v47 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    v48 = *(*(v47 - 8) + 56);
    v48(v46, 0, 1, v47);
    v49 = v55;
    v48(v55, 1, 1, v47);
    v50 = type metadata accessor for CarPlayTemplateInfo(0);
    v51 = *(v50 + 20);

    sub_1001FBB44(v46, v49);
    *(v49 + v51) = v57;
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    sub_1001D2AD4(v49);
    aBlock[4] = sub_1002BD410;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100372F30;
    aBlock[3] = &unk_1004EA3A8;
    v52 = _Block_copy(aBlock);

    [v30 setHandler:v52];
    _Block_release(v52);

    sub_1002BD448(v63, &type metadata accessor for EpisodePlayState);
    sub_100004590(v65);
  }

  else
  {

    return 0;
  }

  return v30;
}

id sub_1002BC7C8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v46 = v40 - v8;
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v45 = v40 - v9;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v44 = v40 - v10;
  type metadata accessor for EpisodePlayState();
  __chkstk_darwin();
  v47 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EpisodeOffer();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  PlayAction.episodeOffer.getter();
  v16 = EpisodeOffer.contentId.getter();
  v17 = *(v13 + 8);
  v17(v15, v12);
  v18 = 0;
  if ((AdamID.isEmpty.getter() & 1) == 0)
  {
    PlayAction.episodeOffer.getter();
    v19 = EpisodeOffer.title.getter();
    v21 = v20;
    v17(v15, v12);
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v41 = a3;
      type metadata accessor for CarPlayPageLoadCoordinator(0);
      v43 = v4;
      v40[0] = v19;
      BaseObjectGraph.inject<A>(_:)();
      v40[1] = aBlock[0];
      sub_100168088(&unk_100578420, &unk_100402000);
      BaseObjectGraph.inject<A>(_:)();
      sub_100168088(&unk_10057A4A0, &qword_100409850);
      BaseObjectGraph.inject<A>(_:)();
      dispatch thunk of EpisodeStateController.stateMachine(for:)();
      dispatch thunk of EpisodeStateMachine.currentState.getter();

      PlayAction.episodeOffer.getter();
      sub_1001A3F04(v50, v15, 1);
      v17(v15, v12);
      v42 = a1;
      v23 = sub_1002BD260(a1, v16, 0, 0);
      v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v25 = String._bridgeToObjectiveC()();

      v26 = String._bridgeToObjectiveC()();

      v18 = [v24 initWithText:v25 detailText:v26 image:0 accessoryImage:v23 accessoryType:0];

      v27 = v48;
      PlayAction.episodeOffer.getter();
      v28 = v44;
      EpisodeOffer.artwork.getter();
      v17(v15, v12);
      CarPlayPageLoadCoordinator.loadImage(for:into:)(v28, v18);
      sub_10021F030(v28);
      v29 = sub_1001A44D0();
      if ((v30 & 1) == 0)
      {
        [v18 setPlaybackProgress:*&v29];
      }

      v31 = type metadata accessor for PlayAction();
      v32 = v46;
      *(v46 + 3) = v31;
      *(v32 + 32) = sub_1002BD57C(&qword_10057C878, &type metadata accessor for PlayAction);
      *v32 = v27;
      *(v32 + 40) = 0;
      v33 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
      swift_storeEnumTagMultiPayload();
      v34 = *(*(v33 - 8) + 56);
      v34(v32, 0, 1, v33);
      v35 = v45;
      v34(v45, 1, 1, v33);
      v36 = type metadata accessor for CarPlayTemplateInfo(0);
      v37 = *(v36 + 20);

      sub_1001FBB44(v32, v35);
      *(v35 + v37) = v41;
      (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
      sub_1001D2AD4(v35);
      aBlock[4] = sub_1002BD5D0;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100372F30;
      aBlock[3] = &unk_1004EA3F8;
      v38 = _Block_copy(aBlock);

      [v18 setHandler:v38];
      _Block_release(v38);

      sub_1002BD448(v47, &type metadata accessor for EpisodePlayState);
      sub_100004590(v50);
    }

    else
    {

      return 0;
    }
  }

  return v18;
}

uint64_t sub_1002BCE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v8 = type metadata accessor for CarPlayController();
  v9 = swift_task_alloc();
  v7[8] = v9;
  *v9 = v7;
  v9[1] = sub_1002BCF04;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v8, v8);
}

uint64_t sub_1002BCF04()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10022D44C;
  }

  else
  {
    v4 = sub_1002BD6DC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1002BD060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v12 = &v17 - v11;
  static TaskPriority.userInitiated.getter();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = a4;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  sub_10023EE80(0, 0, v12, a6, v15);
}

void sub_1002BD1B0()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:16.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  qword_10057C860 = v2;
}

uint64_t sub_1002BD260(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = type metadata accessor for EpisodeDownloadState();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100573D90, &unk_100401380);
  BaseObjectGraph.inject<A>(_:)();
  dispatch thunk of EpisodeStateController.stateMachine(for:)();
  dispatch thunk of EpisodeStateMachine.currentState.getter();
  if (EpisodeDownloadState.isDownloadedEpisode.getter())
  {
    if (qword_100572800 != -1)
    {
      swift_once();
    }

    v8 = qword_10057C860;
    v9 = qword_10057C860;

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);

    return 0;
  }

  return v8;
}

uint64_t sub_1002BD448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002BD4A8(uint64_t a1)
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
  v10[1] = sub_10021A620;

  return sub_1002BCE30(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002BD57C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_1002BD608(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002BD6E0()
{

  v1 = OBJC_IVAR____TtC8Podcasts30AddToQueueEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AddToQueueEpisodeContextAction(uint64_t a1)
{
  result = qword_10057C8A8;
  if (!qword_10057C8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002BD7E8(uint64_t a1)
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_1002BD894@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts30AddToQueueEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002BD90C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.addEpisodeToQueue(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

void sub_1002BD9E4(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemOrangeColor];
  v3 = [objc_opt_self() mainBundle];
  v7._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x51206F7420646441;
  v4._object = 0xEC00000065756575;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v7);

  *a1 = v2;
  *(a1 + 8) = 0xD000000000000028;
  *(a1 + 16) = 0x8000000100469DF0;
  *(a1 + 24) = v6;
}

uint64_t sub_1002BDAD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1002BDB34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002BDB94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

BOOL sub_1002BDBF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C3310(a1, WitnessTable);
}

uint64_t sub_1002BDC48(uint64_t a1)
{
  result = sub_1002BDD14(&qword_1005821E0, &unk_100409DF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BDC8C(uint64_t a1)
{
  result = sub_1002BDD14(&qword_10057C9A8, &unk_100409E50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BDCD0(uint64_t a1)
{
  result = sub_1002BDD14(&unk_10057C9B0, &unk_100409E6C);
  *(a1 + 8) = result;
  return result;
}