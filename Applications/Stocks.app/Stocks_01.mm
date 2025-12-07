char *sub_10001DB64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001DFD0(0, &qword_1000503C0, &type metadata for String);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001DC74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001DFD0(0, &qword_10004F7B8, &type metadata for Any + 8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001DD8C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100011E90(0, &qword_10004F7D0, &type metadata accessor for Stock);
  v10 = *(type metadata accessor for Stock() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Stock() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

_OWORD *sub_10001DF74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10001DF84()
{
  result = qword_10004F7B0;
  if (!qword_10004F7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004F7B0);
  }

  return result;
}

void sub_10001DFD0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001E01C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugAssembly();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001E05C()
{
  result = qword_10004F7C8;
  if (!qword_10004F7C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F7C8);
  }

  return result;
}

uint64_t sub_10001E0C0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for AppIntentType.unknown(_:);
  v3 = type metadata accessor for AppIntentType();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  type metadata accessor for OpenArticleIntent();
  sub_10001E3E4(&qword_10004F8F8, &type metadata accessor for OpenArticleIntent, &protocol conformance descriptor for OpenArticleIntent);
  _AppIntentExecution.callAsFunction<A>(for:handler:)();
  type metadata accessor for OpenBusinessNewsIntent();
  sub_10001E3E4(&qword_10004F900, &type metadata accessor for OpenBusinessNewsIntent, &protocol conformance descriptor for OpenBusinessNewsIntent);
  _AppIntentExecution.callAsFunction<A>(for:handler:)();
  type metadata accessor for OpenSymbolIntent();
  sub_10001E3E4(&qword_10004F288, &type metadata accessor for OpenSymbolIntent, &protocol conformance descriptor for OpenSymbolIntent);
  _AppIntentExecution.callAsFunction<A>(for:handler:)();
  type metadata accessor for OpenWatchlistIntent();
  sub_10001E3E4(&qword_10004F908, &type metadata accessor for OpenWatchlistIntent, &protocol conformance descriptor for OpenWatchlistIntent);
  return _AppIntentExecution.callAsFunction<A>(for:handler:)();
}

uint64_t sub_10001E31C(uint64_t a1, unsigned int *a2)
{
  v4 = *(v2 + 16);
  v5 = type metadata accessor for AppIntentType();
  v9 = *(v5 - 8);
  (*(v9 + 8))(v4, v5);
  v6 = *a2;
  v7 = *(v9 + 104);

  return v7(v4, v6, v5);
}

uint64_t sub_10001E3E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10001E430(void *a1)
{
  v2 = type metadata accessor for AppConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_10004FB60, &protocol descriptor for AppConfigurationManagerType, 1);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    sub_1000061A0(&v8, v10);
    type metadata accessor for StateRestoreController();
    sub_1000045D8(v10, v10[3]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.stateRestorationAllowedTimeWindow.getter();
    (*(v3 + 8))(v5, v2);
    v7 = StateRestoreController.__allocating_init(timeWindow:isStateRestorationEnabled:shouldAlwaysAllowStateRestoration:)();
    sub_10000461C(v10);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001E5C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v34 = a2;
  v2 = type metadata accessor for Logger();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 connectedScenes];

  v7 = sub_10000557C(0, &qword_10004FAE0, UIScene_ptr);
  sub_100008354(&qword_10004FAE8, &qword_10004FAE0, UIScene_ptr, &protocol conformance descriptor for NSObject);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v4;
  v35 = v7;
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v10 = v38;
    v9 = v39;
    v12 = v40;
    v11 = v41;
    v13 = v42;
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);

    v11 = 0;
    v10 = v8;
  }

  v32 = v12;
  v17 = (v12 + 64) >> 6;
  if (v10 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v18 = v11;
  v19 = v13;
  v20 = v11;
  if (v13)
  {
LABEL_12:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (v22)
    {
      while ([v22 activationState])
      {

        v11 = v20;
        v13 = v21;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v23 = __CocoaSet.Iterator.next()();
        if (v23)
        {
          v36 = v23;
          swift_dynamicCast();
          v22 = v37;
          v20 = v11;
          v21 = v13;
          if (v37)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_100010430(v10);

      v24 = v33;
    }

    else
    {
LABEL_19:
      sub_100010430(v10);
      v22 = sub_10000CC40(v8, &qword_10004FAE0, UIScene_ptr);

      v24 = v33;
      if (!v22)
      {
LABEL_27:
        static Logger.appIntents.getter();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "Couldn't find valid active scene to retrieve container from, defaulting to the initial one", v28, 2u);
        }

        (*(v29 + 8))(v24, v30);
        sub_100006580(v31, v34);
        return;
      }
    }

    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25 && [v25 delegate])
    {
      type metadata accessor for SceneDelegate(0);
      if (swift_dynamicCastClass())
      {
        sub_10000B558();
        Container.resolver.getter();

        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    goto LABEL_27;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_19;
    }

    v19 = *(v9 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10001EA20()
{
  type metadata accessor for AppActivationURLHandler();
  swift_allocObject();
  return AppActivationURLHandler.init()();
}

void *sub_10001EA58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_10004F9A8, &protocol descriptor for WatchlistManagerType, 1);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8[3])
  {
    sub_1000045D8(a1, a1[3]);
    sub_1000036DC(0, &qword_10004FAD0, &protocol descriptor for StockMetadataManagerType, 1);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v7[3])
    {
      v5 = objc_allocWithZone(type metadata accessor for GizmoSyncManager());
      v6 = sub_1000255D4(v8, v7);
      result = sub_100006820(&qword_10004FAD8, type metadata accessor for GizmoSyncManager, &unk_10003F9E4);
      *a2 = v6;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10001EB88()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FCURLForTodayDropbox();
  if (result)
  {
    v5 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = objc_allocWithZone(FCFileCoordinatedTodayDropbox);
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    v10 = [v6 initWithFileURL:v8];

    (*(v1 + 8))(v3, v0);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001ECA4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000557C(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000557C(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_10001EEE4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v5, Strong + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_logger, v2);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Attempting widget update for today dropbox changes", v9, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000F298(1);
  }

  return result;
}

uint64_t sub_10001F0A8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v5, Strong + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_logger, v2);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Attempting widget update for currency display changes", v9, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000F298(0);
  }

  return result;
}

uint64_t sub_10001F290(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_hasCompletedColdLaunch) = 1;
    sub_100010438();
  }

  return result;
}

uint64_t sub_10001F2F8()
{
  v1 = OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10001F3DC()
{

  asyncMain(block:)();
}

char *sub_10001F430(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000106B0();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_10001F548(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  SceneStateMonitor.sceneWillResignActive()();
}

void sub_10001F584(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = a1;
  v5 = a2;

  SceneStateMonitor.sceneWillResignActive(with:)(*&v4);
}

void sub_10001F5DC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = a1;
  v5 = a2;

  SceneStateMonitor.sceneDidEnterBackground(with:)(*&v4);
}

void sub_10001F634(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  SceneStateMonitor.sceneDidDisconnect()();
}

uint64_t sub_10001F670()
{

  sub_10000461C((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_10001F6D4(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v50 = type metadata accessor for Date();
  v53 = *(v50 - 8);
  v3 = __chkstk_darwin(v50);
  v58 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v59 = &v42 - v5;
  sub_100020284(0, &qword_10004FD40, &type metadata accessor for BannerAdTraits, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v51 = &v42 - v7;
  v8 = type metadata accessor for BannerAdData();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v54 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdSizeData();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BannerAdState();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for AdState();
  __chkstk_darwin(v15 - 8);
  v65 = type metadata accessor for AdStateData();
  v55 = *(v65 - 8);
  __chkstk_darwin(v65);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for AdPlacementData();
  v52 = *(v64 - 8);
  __chkstk_darwin(v64);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  BannerAdImpressionInfo.placementIdentifier.getter();
  v61 = v19;
  AdPlacementData.init(placementID:)();
  BannerAdImpressionInfo.bannerAdState.getter();
  AdState.init(bannerState:)();
  v63 = v17;
  AdStateData.init(state:)();
  v66 = a2;
  BannerAdImpressionInfo.frame.getter();
  Width = CGRectGetWidth(v67);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (Width <= -2147483650.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (Width >= 2147483650.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  BannerAdImpressionInfo.frame.getter();
  Height = CGRectGetHeight(v68);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (Height <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (Height < 2147483650.0)
  {
    AdSizeData.init(width:height:)();
    v49 = "trackerConfiguration";
    sub_1000202E8(&qword_10004FD48, &type metadata accessor for AdSizeData, &protocol conformance descriptor for AdSizeData);
    AccessTracker.push<A>(data:traits:file:line:)();
    (*(v11 + 8))(v13, v10);
    sub_100020284(0, &qword_10004FD50, &type metadata accessor for DataEventTrait, &type metadata accessor for _ContiguousArrayStorage);
    v23 = v22;
    v24 = type metadata accessor for DataEventTrait();
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v44 = *(v25 + 80);
    v27 = (v44 + 32) & ~v44;
    v46 = v26;
    v47 = v23;
    v28 = swift_allocObject();
    v60 = xmmword_10003EDF0;
    *(v28 + 16) = xmmword_10003EDF0;
    v29 = enum case for DataEventTrait.onlyOnce(_:);
    v43 = *(v25 + 104);
    v45 = enum case for DataEventTrait.onlyOnce(_:);
    v48 = v24;
    v43(v28 + v27, enum case for DataEventTrait.onlyOnce(_:), v24);
    sub_1000202E8(&qword_10004FD58, &type metadata accessor for AdPlacementData, &protocol conformance descriptor for AdPlacementData);
    AccessTracker.push<A>(data:traits:file:line:)();

    v30 = swift_allocObject();
    *(v30 + 16) = v60;
    v31 = v29;
    v32 = v43;
    v43(v30 + v27, v31, v24);
    sub_1000202E8(&qword_10004FD60, &type metadata accessor for AdStateData, &protocol conformance descriptor for AdStateData);
    AccessTracker.push<A>(data:traits:file:line:)();

    v33 = v51;
    BannerAdImpressionInfo.traits.getter();
    v34 = type metadata accessor for BannerAdTraits();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    v35 = v54;
    BannerAdData.init(traits:)();
    v36 = swift_allocObject();
    *(v36 + 16) = v60;
    v32(v36 + v27, v45, v48);
    sub_1000202E8(&qword_10004FD68, &type metadata accessor for BannerAdData, &protocol conformance descriptor for BannerAdData);
    v37 = v57;
    AccessTracker.push<A>(data:traits:file:line:)();

    (*(v56 + 8))(v35, v37);
    type metadata accessor for BannerAdImpressionEvent();
    v38 = v58;
    BannerAdImpressionInfo.date.getter();
    BannerAdImpressionInfo.duration.getter();
    v39 = v59;
    static Date.- infix(_:_:)();
    v40 = *(v53 + 8);
    v41 = v50;
    v40(v38, v50);
    sub_1000202E8(&unk_10004FD70, &type metadata accessor for BannerAdImpressionEvent, &protocol conformance descriptor for BannerAdImpressionEvent);
    AccessTracker.explicitTime<A>(_:startTime:)();
    v40(v39, v41);
    BannerAdImpressionInfo.date.getter();
    AccessTracker.explicitSubmit<A>(_:submitTime:completion:)();
    v40(v39, v41);
    (*(v55 + 8))(v63, v65);
    (*(v52 + 8))(v61, v64);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1000200A8(uint64_t a1)
{
  v3 = type metadata accessor for BannerAdImpressionInfo();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_1000045D8((*v1 + 24), *(*v1 + 48));
  result = dispatch thunk of TrackerConfigurationType.adInstrumentationEnabled.getter();
  if (result)
  {
    (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v8 = swift_allocObject();
    (*(v4 + 32))(v8 + v7, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    Tracker.transaction(block:)();
  }

  return result;
}

void sub_100020214(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionInfo() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10001F6D4(a1, v4);
}

void sub_100020284(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000202E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100020448(uint64_t a1)
{
  sub_1000204A4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000204A4(uint64_t a1)
{
  if (!qword_10004F0A0)
  {
    sub_1000204FC();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10004F0A0);
    }
  }
}

unint64_t sub_1000204FC()
{
  result = qword_10004FE20;
  if (!qword_10004FE20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004FE20);
  }

  return result;
}

uint64_t sub_100020560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  sub_10000A4BC(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000F018(a1, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional, sub_10000A458);
    sub_1000245E0(a2, a3, v9);

    return sub_10000F018(v9, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional, sub_10000A458);
  }

  else
  {
    sub_100024738(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100024988(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_100020790(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
LABEL_5:

    return v5;
  }

  sub_10000B3B4(v8);
  sub_1000045D8(v8, v8[3]);
  a2(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    sub_10000461C(v8);
    *(v2 + v3) = v5;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020850()
{
  v1 = qword_10004FE58;
  if (*(v0 + qword_10004FE58))
  {
    v2 = *(v0 + qword_10004FE58);
LABEL_5:
    swift_unknownObjectRetain();
    return v2;
  }

  sub_10000B3B4(v4);
  sub_1000045D8(v4, v4[3]);
  sub_100024240();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    sub_10000461C(v4);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_10002090C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10004FE60;
  swift_beginAccess();
  sub_10000B4D4(v1 + v3, &v7, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);
  if (v8)
  {
    return sub_1000061A0(&v7, a1);
  }

  sub_1000062B8(&v7, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);
  sub_10000B3B4(&v7);
  sub_1000045D8(&v7, v8);
  sub_1000036DC(0, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider, 1);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_1000061A0(&v5, a1);
    sub_10000461C(&v7);
    sub_100006580(a1, &v7);
    swift_beginAccess();
    sub_1000064FC(&v7, v1 + v3, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100020A80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_10004FE78);
  *(a1 + qword_10004FE78) = a3;
  v3 = a3;
}

void *sub_100020AC8()
{
  v1 = v0 + qword_10004FEB0;
  v2 = *(v0 + qword_10004FEB0);
  if (v2)
  {
    v3 = *(v0 + qword_10004FEB0);
LABEL_5:
    v6 = v2;
    return v3;
  }

  sub_10000B3B4(v9);
  sub_1000045D8(v9, v9[3]);
  sub_1000036DC(0, &unk_10004F010, &protocol descriptor for MenuManagerType, 0);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v7)
  {
    sub_10000461C(v9);
    v5 = *v1;
    *v1 = v7;
    *(v1 + 8) = v8;
    v3 = v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_100020BA8()
{
  v1 = (v0 + qword_10004FEC8);
  if (*(v0 + qword_10004FEC8))
  {
    v2 = *(v0 + qword_10004FEC8);
LABEL_5:
    swift_unknownObjectRetain();
    return v2;
  }

  sub_10000B3B4(v6);
  sub_1000045D8(v6, v6[3]);
  sub_1000036DC(0, &qword_10004F440, &protocol descriptor for CommandCenterType, 0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v2 = v4;
  if (v4)
  {
    sub_10000461C(v6);
    *v1 = v4;
    v1[1] = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020C80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for URLHandlerRoute();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B3B4(v11);
  sub_1000045D8(v11, v11[3]);
  sub_10000A458(0, &qword_100050020, &type metadata accessor for AppURLContext, &type metadata accessor for URLHandlerManager);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v11);
    v9 = [a3 options];
    (*(v5 + 104))(v7, enum case for URLHandlerRoute.sceneConnect(_:), v4);
    URLHandlerManager<A>.handle(url:options:route:)();

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100020E30(uint64_t a1, UIApplicationShortcutItem a2)
{
  sub_10000B3B4(v4);
  sub_1000045D8(v4, v4[3]);
  type metadata accessor for ShortcutItemHandlerManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v4);
    ShortcutItemHandlerManager.handle(shortcutItem:)(a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100020EBC(void *a1)
{
  v1 = a1;
  sub_10000B720(v3);
  sub_1000045D8(v3, v3[3]);
  dispatch thunk of SceneStateManagerType.sceneDidDisconnect()();

  return sub_10000461C(v3);
}

uint64_t sub_100020F28(void *a1)
{
  sub_10000B3B4(v4);
  sub_1000045D8(v4, v5);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v4);
    SessionManager.tracker.getter();
    Tracker.ifSession(block:)();

    if ([a1 activationState] == -1)
    {
      v3 = [a1 session];
      [v3 setStateRestorationActivity:0];
    }

    sub_10000B720(v4);
    sub_1000045D8(v4, v5);
    dispatch thunk of SceneStateManagerType.willResignActive()();

    return sub_10000461C(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100021060()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  AccessTracker.enterGroup(groupName:)(v7);

  type metadata accessor for AppSessionResignEvent();
  sub_10000EDC4(&qword_100050070, &type metadata accessor for AppSessionResignEvent, &protocol conformance descriptor for AppSessionResignEvent);
  memset(v8, 0, sizeof(v8));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  sub_10000F018(v8, &qword_100050370, &type metadata for Any + 8, &type metadata accessor for Optional, sub_10000A554);
  AccessTracker.leaveGroup()();
}

void sub_100021208(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100020F28(v4);
}

uint64_t sub_100021270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  Date.init()();
  SessionManager.end(endDate:completion:)();

  return (*(v5 + 8))(v7, v4);
}

void sub_100021398(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100024F00();
}

uint64_t sub_1000213F8()
{

  sub_1000062B8(v0 + qword_10004FE38, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);

  swift_unknownObjectRelease();
  sub_1000062B8(v0 + qword_10004FE60, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);

  sub_1000062B8(v0 + qword_10004FE70, &qword_1000500E8, &qword_1000500F0, &protocol descriptor for WelcomeFlowProviderType);

  sub_10000F018(v0 + qword_10004FE98, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional, sub_10000A458);

  sub_1000062B8(v0 + qword_10004FEB8, &unk_100050060, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_100021610(uint64_t a1)
{

  sub_1000062B8(a1 + qword_10004FE38, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);

  swift_unknownObjectRelease();
  sub_1000062B8(a1 + qword_10004FE60, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);

  sub_1000062B8(a1 + qword_10004FE70, &qword_1000500E8, &qword_1000500F0, &protocol descriptor for WelcomeFlowProviderType);

  sub_10000F018(a1 + qword_10004FE98, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional, sub_10000A458);

  sub_1000062B8(a1 + qword_10004FEB8, &unk_100050060, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void *sub_10002183C(uint64_t a1, NSUserActivity a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_10000B3B4(v5);

    sub_1000045D8(v5, v5[3]);
    type metadata accessor for UserActivityHandlerManager();
    if (dispatch thunk of ResolverType.resolve<A>(_:)())
    {
      UserActivityHandlerManager.handle(userActivity:)(a2);
    }

    return sub_10000461C(v5);
  }

  return result;
}

uint64_t sub_1000218EC(uint64_t a1, void *a2, void *a3)
{
  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10003EDF0;
  v6 = [a2 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000056B0();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v10 = static OS_os_log.default.getter();
  v11 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("State restoration will extend snapshot for activity: %{public}@", 63, 2, &_mh_execute_header, v10, v11, v5);

  sub_10000557C(0, &qword_100050148, UIDevice_ptr);
  result = static UIDevice.isSlow.getter();
  if ((result & 1) == 0)
  {

    return [a3 _extendStateRestoration];
  }

  return result;
}

uint64_t sub_100021A64(uint64_t a1, void *a2)
{
  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10003EDF0;
  v4 = Double.millisecondsUntilCurrentMediaTime()();
  *(v3 + 56) = &type metadata for Double;
  *(v3 + 64) = &protocol witness table for Double;
  *(v3 + 32) = v4;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v5 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("State restoration finished extending snapshot with duration: %0.1fms", v7);

  sub_10000557C(0, &qword_100050148, UIDevice_ptr);
  result = static UIDevice.isSlow.getter();
  if ((result & 1) == 0)
  {
    return [a2 _completeStateRestoration];
  }

  return result;
}

uint64_t sub_100021BA0(uint64_t a1, uint64_t a2)
{
  sub_10000A458(0, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-v4];
  v6 = StocksActivity.identifier.getter();
  v8 = v7;
  sub_100025240(a2, v5, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional, sub_10000A458);
  v9 = type metadata accessor for StocksActivity();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_10000F018(v5, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional, sub_10000A458);

LABEL_3:
    result = StocksActivity.affectsNavigationStack.getter();
    if (result)
    {
      sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
      v12 = static OS_os_log.default.getter();
      v13 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("State restoration extension interrupted due to conflicting navigation", 69, 2, &_mh_execute_header, v12, v13, &_swiftEmptyArrayStorage);

      v19[15] = 2;
      return StateMachine.fire(event:)();
    }

    return result;
  }

  v14 = StocksActivity.identifier.getter();
  v16 = v15;
  (*(v10 + 8))(v5, v9);
  if (v6 == v14 && v8 == v16)
  {
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_100021E64(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);

  v5 = static OS_os_log.default.getter();
  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("State restoration will wait for bootstrapping", 45, 2, &_mh_execute_header, v5, v6, &_swiftEmptyArrayStorage);

  v7 = sub_10000EE84();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000254AC;
  *(v8 + 24) = v4;
  v9 = zalgoIfMain.getter();
  Bootstrapper.afterBootstrap(on:run:)();
}

uint64_t sub_100021F98(uint64_t a1, void *a2, void *a3)
{
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v5 = static OS_os_log.default.getter();
  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("State restoration will route to activity", 40, 2, &_mh_execute_header, v5, v6, &_swiftEmptyArrayStorage);

  v16 = 0;
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = &v16;
  v8[3] = a2;
  v8[4] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100025478;
  *(v9 + 24) = v8;
  aBlock[4] = sub_100025484;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100022208;
  aBlock[3] = &unk_10004B390;
  v10 = _Block_copy(aBlock);
  v11 = a2;
  v12 = a3;

  [v7 performWithoutAnimation:v10];
  _Block_release(v10);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else
  {
    v14 = v16;
    if (v16)
    {

      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100022188(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_100020790(&qword_10004FE68, &type metadata accessor for UserActivityHandlerManager);
  v4 = UserActivityHandlerManager.handleAsync(userActivity:)();

  *a1 = v4;
}

uint64_t sub_100022230()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  static DispatchTime.now()();
  + infix(_:_:)();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = zalgo.getter();
  v9 = Promise.timeout(after:on:message:)();

  v7(v6, v0);
  return v9;
}

uint64_t sub_100022378()
{
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v1 = static OS_os_log.default.getter();
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("State restoration succeeded", 27, 2, &_mh_execute_header, v1, v2, &_swiftEmptyArrayStorage);

  StateMachine.fire(event:)();
  if (v0)
  {
  }

  sub_10000A554(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_100022478(uint64_t a1)
{
  sub_10000A458(0, &unk_100050138, &type metadata accessor for PromiseError, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v20 = a1;
  swift_errorRetain();
  sub_1000036DC(0, &unk_10004F050, &protocol descriptor for Error, 1);
  v5 = type metadata accessor for PromiseError();
  v6 = swift_dynamicCast();
  v7 = *(*(v5 - 8) + 56);
  if (!v6)
  {
    v7(v4, 1, 1, v5);
    sub_10000F018(v4, &unk_100050138, &type metadata accessor for PromiseError, &type metadata accessor for Optional, sub_10000A458);
    goto LABEL_5;
  }

  v8 = *(v5 - 8);
  v7(v4, 0, 1, v5);
  v9 = (*(v8 + 88))(v4, v5);
  v10 = enum case for PromiseError.timedOut(_:);
  (*(v8 + 8))(v4, v5);
  if (v9 != v10)
  {
LABEL_5:
    v13 = static os_log_type_t.error.getter();
    sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10003EDF0;
    v20 = a1;
    swift_errorRetain();
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1000056B0();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("State restoration extension aborted due to error=%{public}@", 59, 2, &_mh_execute_header, v12, v13, v14);

    goto LABEL_6;
  }

  v11 = static os_log_type_t.error.getter();
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("State restoration extension timed out", 37, 2, &_mh_execute_header, v12, v11, &_swiftEmptyArrayStorage);
LABEL_6:

  LOBYTE(v20) = 2;
  return StateMachine.fire(event:)();
}

uint64_t sub_100022800(void *a1, uint64_t a2)
{
  v81 = a1;
  sub_10000A4BC(0);
  v80 = v3;
  v77 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v84 = &v70 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000557C(0, &qword_100050040, UIOpenURLContext_ptr);
    sub_10000CBDC(&qword_100050048, &qword_100050040, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a2 = v87;
    v12 = v88;
    v14 = v89;
    v13 = v90;
    v15 = v91;
  }

  else
  {
    v16 = -1 << *(a2 + 32);
    v12 = a2 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a2 + 56);

    v13 = 0;
  }

  v70 = v14;
  v19 = (v14 + 64) >> 6;
  v79 = (v9 + 16);
  v71 = (v9 + 8);
  v78 = xmmword_10003EDF0;
  v75 = v8;
  v76 = a2;
  v74 = v11;
  v72 = v19;
  v73 = v12;
  while (a2 < 0)
  {
    v33 = __CocoaSet.Iterator.next()();
    if (!v33)
    {
      return sub_100010430(a2);
    }

    v85 = v33;
    sub_10000557C(0, &qword_100050040, UIOpenURLContext_ptr);
    swift_dynamicCast();
    v32 = v86;
    v30 = v13;
    v31 = v15;
    if (!v86)
    {
      return sub_100010430(a2);
    }

LABEL_19:
    v82 = v31;
    v34 = [v32 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = [v81 session];
    v36 = [v35 persistentIdentifier];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v40 = swift_allocObject();
    *(v40 + 16) = v78;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_1000056B0();
    *(v40 + 32) = v37;
    *(v40 + 40) = v39;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);

    v41 = static OS_os_log.default.getter();
    v42 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Assigning scene activation URL context due to openURL, sceneSession=%{public}@", 78, 2, &_mh_execute_header, v41, v42, v40);

    (*v79)(v84, v11, v8);
    v43 = [v32 options];
    v44 = [v43 sourceApplication];

    if (v44)
    {
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v49 = v83;
    v48 = v84;
    v50 = &v84[*(v80 + 48)];
    *v50 = v45;
    v50[1] = v47;
    v51 = qword_10004FED8;
    swift_beginAccess();
    v52 = v48;
    v53 = v6;
    sub_100024738(v52, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = *&v49[v51];
    v55 = v85;
    *&v49[v51] = 0x8000000000000000;
    v57 = sub_100029810(v37, v39);
    v58 = v55[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_35;
    }

    v61 = v56;
    if (v55[3] >= v60)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v56)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_100024B84();
        if (v61)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1000242B0(v60, isUniquelyReferenced_nonNull_native);
      v62 = sub_100029810(v37, v39);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_37;
      }

      v57 = v62;
      if (v61)
      {
LABEL_8:

        v20 = v85;
        v21 = v85[7] + *(v77 + 72) * v57;
        v6 = v53;
        sub_100024DA4(v53, v21);
        goto LABEL_9;
      }
    }

    v20 = v85;
    v85[(v57 >> 6) + 8] |= 1 << v57;
    v64 = (v20[6] + 16 * v57);
    *v64 = v37;
    v64[1] = v39;
    v65 = v20[7] + *(v77 + 72) * v57;
    v6 = v53;
    sub_100024738(v53, v65);
    v66 = v20[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_36;
    }

    v20[2] = v68;
LABEL_9:
    v22 = v83;
    *&v83[v51] = v20;

    swift_endAccess();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v32;
    v24 = v22;
    v25 = v32;
    v26 = sub_10000EE84();
    v27 = zalgoIfMain.getter();
    Bootstrapper.afterBootstrap(on:run:)();

    v11 = v74;
    v8 = v75;
    (*v71)(v74, v75);
    v13 = v30;
    v15 = v82;
    a2 = v76;
    v12 = v73;
    v19 = v72;
  }

  v28 = v13;
  v29 = v15;
  v30 = v13;
  if (v15)
  {
LABEL_15:
    v31 = (v29 - 1) & v29;
    v32 = *(*(a2 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
    if (!v32)
    {
      return sub_100010430(a2);
    }

    goto LABEL_19;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v19)
    {
      return sub_100010430(a2);
    }

    v29 = *(v12 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100022F3C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for URLHandlerRoute();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B3B4(v15);
  sub_1000045D8(v15, v15[3]);
  sub_10000A458(0, &qword_100050020, &type metadata accessor for AppURLContext, &type metadata accessor for URLHandlerManager);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v15);
    v12 = [a2 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = [a2 options];
    (*(v4 + 104))(v6, enum case for URLHandlerRoute.openURL(_:), v3);
    URLHandlerManager<A>.handle(url:options:route:)();

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000231A8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_10000557C(0, &qword_100050040, UIOpenURLContext_ptr);
  sub_10000CBDC(&qword_100050048, &qword_100050040, UIOpenURLContext_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = a1;
  sub_100022800(v7, v6);
}

uint64_t sub_100023264(uint64_t a1, void (*a2)(Swift::Bool), uint64_t a3, UIApplicationShortcutItem a4)
{
  sub_10000B3B4(v8);
  sub_1000045D8(v8, v8[3]);
  type metadata accessor for ShortcutItemHandlerManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v8);
    v7 = ShortcutItemHandlerManager.handle(shortcutItem:)(a4);
    a2(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100023314(void *a1, int a2, int a3, void *a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = sub_100024ED4;
  v9[4] = v8;
  v9[5] = a4;
  v10 = a4;
  v14 = a1;
  v11 = v10;

  v12 = sub_10000EE84();
  v13 = zalgoIfMain.getter();
  Bootstrapper.afterBootstrap(on:run:)();
}

void sub_10002342C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10003EDF0;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1000056B0();
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Will continue user activity of type %@", 38, 2, &_mh_execute_header, v9, v8, v7);
}

void sub_10002353C(void *a1, uint64_t a2, void *a3)
{
  v39 = a3;
  v4 = type metadata accessor for URLHandlerRoute();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v40 = [a1 activityType];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v19 == v18)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {

      sub_100020790(&qword_10004FE68, &type metadata accessor for UserActivityHandlerManager);
      UserActivityHandlerManager.handle(userActivity:)(a1);

      return;
    }
  }

  v22 = [a1 webpageURL];
  if (v22)
  {
    v23 = v22;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 32))(v15, v13, v9);
    v24 = [v39 session];
    v25 = [v24 persistentIdentifier];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    sub_10000A4BC(0);
    v30 = v29;
    v31 = &v8[*(v29 + 48)];
    (*(v10 + 16))(v8, v15, v9);
    *v31 = 0;
    *(v31 + 1) = 0;
    (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
    swift_beginAccess();
    sub_100020560(v8, v26, v28);
    swift_endAccess();
    sub_10000B3B4(v41);
    sub_1000045D8(v41, v41[3]);
    sub_10000A458(0, &qword_100050020, &type metadata accessor for AppURLContext, &type metadata accessor for URLHandlerManager);
    if (dispatch thunk of ResolverType.resolve<A>(_:)())
    {

      sub_10000461C(v41);
      v33 = v36;
      v32 = v37;
      v34 = v38;
      (*(v37 + 104))(v36, enum case for URLHandlerRoute.userActivity(_:), v38);
      URLHandlerManager<A>.handle(url:options:route:)();

      (*(v32 + 8))(v33, v34);
      (*(v10 + 8))(v15, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v35 = v40;
  }
}

void sub_100023A74(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a1;
  v7[4] = a3;
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = v9;
  v15 = v10;
  v12 = v8;
  v13 = sub_10000EE84();
  v14 = zalgoIfMain.getter();
  Bootstrapper.afterBootstrap(on:run:)();
}

id sub_100023B60(void *a1)
{
  v1 = a1;
  v2 = [sub_100020850() isStateRestorationAllowed];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_10002090C(v6);
    sub_1000045D8(v6, v6[3]);
    v3 = dispatch thunk of StateRestorationActivityProvider.stateRestorationActivity.getter();

    sub_10000461C(v6);
    v4 = v3;
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

uint64_t sub_100023C48(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v7 = sub_100020AC8();
  v9 = v8;
  ObjectType = swift_getObjectType();
  a4(v12, ObjectType, v9);

  return sub_10000461C(v12);
}

uint64_t sub_100023CDC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_100020AC8();
  swift_getObjectType();
  sub_100020BA8();
  v7 = sub_100020790(&qword_10004FED0, &type metadata accessor for Tracker);
  v9[3] = type metadata accessor for Tracker();
  v9[4] = sub_10000EDC4(&qword_10004F030, &type metadata accessor for Tracker, &protocol conformance descriptor for Tracker);
  v9[0] = v7;
  dispatch thunk of MenuManagerType.validate(_:with:tracker:)();

  swift_unknownObjectRelease();
  return sub_10000461C(v9);
}

uint64_t sub_100023DFC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100020AC8();
  sub_100025240(a2, v24, &qword_100050370, &type metadata for Any + 8, &type metadata accessor for Optional, sub_10000A554);
  v6 = v25;
  if (v25)
  {
    v7 = sub_1000045D8(v24, v25);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    sub_10000461C(v24);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 canPerformAction:a1 withSender:v11];

  swift_unknownObjectRelease();
  if (v12)
  {
    return 1;
  }

  sub_100025240(a2, v24, &qword_100050370, &type metadata for Any + 8, &type metadata accessor for Optional, sub_10000A554);
  v14 = v25;
  if (v25)
  {
    v15 = sub_1000045D8(v24, v25);
    v16 = *(v14 - 8);
    __chkstk_darwin(v15);
    v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v14);
    sub_10000461C(v24);
  }

  else
  {
    v19 = 0;
  }

  v23.receiver = v2;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, "canPerformAction:withSender:", a1, v19);
  swift_unknownObjectRelease();
  return v20;
}

uint64_t sub_100024104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = sub_100023DFC(a3, v10);

  sub_10000F018(v10, &qword_100050370, &type metadata for Any + 8, &type metadata accessor for Optional, sub_10000A554);
  return v8 & 1;
}

uint64_t sub_1000241C8()
{
  sub_10000B3B4(v2);
  sub_1000045D8(v2, v2[3]);
  type metadata accessor for DebugNavigationController();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v1 = result;
    sub_10000461C(v2);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100024240()
{
  result = qword_10004F9D8;
  if (!qword_10004F9D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F9D8);
  }

  return result;
}

Swift::Int sub_1000242B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  sub_10000A4BC(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100024E08(0);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_100024738(v28, v41);
      }

      else
      {
        sub_100024E70(v28, v41);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_100024738(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1000245E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100029810(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100024B84();
      v10 = v21;
    }

    v11 = *(v10 + 56);
    sub_10000A4BC(0);
    v13 = v12;
    v20 = *(v12 - 8);
    sub_100024738(v11 + *(v20 + 72) * v8, a3);
    sub_10002479C(v8, v10);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    sub_10000A4BC(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_100024738(uint64_t a1, uint64_t a2)
{
  sub_10000A4BC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002479C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      sub_10000A4BC(0);
      v16 = *(*(v15 - 8) + 72);
      v17 = v16 * v3;
      result = v14 + v16 * v3;
      v18 = v16 * v6;
      v19 = v14 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100024988(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100029810(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100024B84();
      goto LABEL_7;
    }

    sub_1000242B0(v15, a4 & 1);
    v23 = sub_100029810(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    sub_10000A4BC(0);
    v21 = v19 + *(*(v20 - 8) + 72) * v12;

    return sub_100024DA4(a1, v21);
  }

LABEL_13:
  sub_100024AEC(v12, a2, a3, a1, v18);
}

uint64_t sub_100024AEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  sub_10000A4BC(0);
  result = sub_100024738(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_100024B84()
{
  v1 = v0;
  sub_10000A4BC(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024E08(0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
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
LABEL_17:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_100024E70(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100024738(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_21;
      }

      v19 = *(v4 + 64 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100024DA4(uint64_t a1, uint64_t a2)
{
  sub_10000A4BC(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100024E08(uint64_t a1)
{
  if (!qword_100050028)
  {
    sub_10000A4BC(255);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_100050028);
    }
  }
}

uint64_t sub_100024E70(uint64_t a1, uint64_t a2)
{
  sub_10000A4BC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024F00()
{
  sub_10000B720(v1);
  sub_1000045D8(v1, v2);
  dispatch thunk of SceneStateManagerType.didEnterBackground()();
  sub_10000461C(v1);
  sub_10000B3B4(v1);
  sub_1000045D8(v1, v2);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v1);
    backgroundTask(withName:timeout:work:)();
    [sub_100020850() sceneDidEnterBackground];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100025014(uint64_t a1, uint64_t a2)
{
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000250B8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100020C80(v3, v0 + v2, v4);
}

void sub_100025148(uint64_t a1)
{
  if (!qword_100050120)
  {
    sub_1000251C4();
    sub_10000A7C4();
    v1 = type metadata accessor for StateMachineTransition();
    if (!v2)
    {
      atomic_store(v1, &qword_100050120);
    }
  }
}

unint64_t sub_1000251C4()
{
  result = qword_100050128;
  if (!qword_100050128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050128);
  }

  return result;
}

uint64_t sub_100025240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1000252B4(uint64_t a1, uint64_t a2)
{
  sub_10000A458(0, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025348(uint64_t a1)
{
  sub_10000A458(0, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_100021BA0(a1, v4);
}

uint64_t sub_1000254D4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100025528(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_1000255D4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for PromiseDeduperFlags();
  __chkstk_darwin(v6);
  v7 = OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_sharedUserDefaults;
  sub_10000557C(0, &qword_100050310, NSUserDefaults_ptr);
  *&v2[v7] = static NSUserDefaults.stocksShared.getter();
  v8 = OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_syncDeduper;
  v21 = &_swiftEmptyArrayStorage;
  sub_100006868(&qword_100050318, 255, &type metadata accessor for PromiseDeduperFlags, &protocol conformance descriptor for PromiseDeduperFlags);
  sub_10002B438(0, &qword_100050320, &type metadata accessor for PromiseDeduperFlags, &type metadata accessor for Array);
  sub_10002965C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10002B5D4(0, &unk_100050330, &type metadata for () + 8, &type metadata accessor for PromiseDeduper);
  swift_allocObject();
  *&v2[v8] = PromiseDeduper.init(options:)();
  v2[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_pendingWatchNotification] = 0;
  sub_100006580(a1, &v2[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager]);
  sub_100006580(a2, &v2[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_stockMetadataManager]);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v20, "init");
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10004EA78 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v10, v9, sub_10002944C, qword_100051C10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10004EA80 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v11, v9, sub_1000294A8, qword_100051C18, 0, CFNotificationSuspensionBehaviorCoalesce);

  v12 = objc_opt_self();
  if ([v12 isSupported])
  {
    if (qword_10004EA90 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000296E4(v13, qword_100051C20);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "activating watch connectivity session", v16, 2u);
    }

    v17 = [v12 defaultSession];
    [v17 setDelegate:v9];

    v18 = [v12 defaultSession];
    [v18 activateSession];
  }

  sub_10000461C(a2);
  sub_10000461C(a1);
  return v9;
}

id sub_100025A10(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10004EA78 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v4, v2, qword_100051C10, 0);

  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10004EA80 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v5, v2, qword_100051C18, 0);

  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100025C8C(char a1, void *a2)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000296E4(v4, qword_100051C20);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "will sync forced=%{BOOL}d", v7, 8u);
  }

  __chkstk_darwin(v8);
  firstly<A>(closure:)();
  *(swift_allocObject() + 16) = a2;
  v9 = a2;
  v10 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  *(swift_allocObject() + 16) = v9;
  v11 = v9;
  v12 = zalgo.getter();
  sub_10002B438(0, &qword_100050348, &type metadata accessor for Stock, &type metadata accessor for Array);
  Promise.then<A>(on:closure:)();

  sub_10000557C(0, &qword_10004F0B0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = a1 & 1;
  v15 = v11;
  Promise.then<A>(on:closure:)();

  v16 = zalgo.getter();
  v17 = Promise.error(on:closure:)();

  return v17;
}

uint64_t sub_100025FB0(uint64_t a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "prewarming watchlist manager", v5, 2u);
  }

  sub_1000045D8((a1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager), *(a1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager + 24));
  return dispatch thunk of WatchlistManagerType.prewarm()();
}

uint64_t sub_1000260C4()
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000296E4(v0, qword_100051C20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "adopting changes from watch", v3, 2u);
  }

  return sub_1000261B8();
}

uint64_t sub_1000261B8()
{
  v0 = type metadata accessor for CachePolicy();
  v130 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v119 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Watchlist();
  v128 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000557C(0, &qword_100050310, NSUserDefaults_ptr);
  v6 = static NSUserDefaults.stocksShared.getter();
  v7 = String._bridgeToObjectiveC()();
  [v6 doubleForKey:v7];
  v9 = v8;

  v10 = objc_opt_self();
  v11 = [v10 standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  [v11 doubleForKey:v12];
  v14 = v13;

  if (v14 == 0.0)
  {
    if (qword_10004EA90 != -1)
    {
LABEL_82:
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000296E4(v15, qword_100051C20);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = v14;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v9;
    v19 = "not checking for changes from watch since this device has never written to it (localLastModified=%f), sharedLastModified=%f)";
    goto LABEL_10;
  }

  v129 = v5;
  v120 = v2;
  v121 = v0;
  if (v9 == 0.0)
  {
    if (qword_10004EA90 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000296E4(v20, qword_100051C20);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = v14;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v9;
    v19 = "not checking for changes from watch since shared defaults have never been modified (localLastModified=%f), sharedLastModified=%f)";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 0x16u);

LABEL_11:

    sub_10002B82C(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
    swift_allocObject();
    return Promise.init(value:)();
  }

  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v131 = sub_1000296E4(v22, qword_100051C20);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = v3;
  if (os_log_type_enabled(v23, v24))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    *(v26 + 4) = v14;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v23, v24, "checking for changes from watch (localLastModified=%f), sharedLastModified=%f)", v26, 0x16u);
  }

  v140 = &_swiftEmptyArrayStorage;
  v27 = *&v132[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_sharedUserDefaults];
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 objectForKey:v28];

  if (v29)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v136 = 0u;
    v137 = 0u;
  }

  v138 = v136;
  v139 = v137;
  if (*(&v137 + 1))
  {
    sub_10002B634(0, &qword_100050380, &type metadata accessor for Array);
    if (swift_dynamicCast())
    {
      v125 = v135;
      goto LABEL_24;
    }
  }

  else
  {
    sub_100015138(&v138);
  }

  sub_10002B634(0, &qword_100050388, &type metadata accessor for _ContiguousArrayStorage);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10003EDF0;
  v31 = sub_10002A67C(&_swiftEmptyArrayStorage);
  v125 = v30;
  *(v30 + 32) = v31;
LABEL_24:
  v32 = [v10 standardUserDefaults];
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 objectForKey:v33];

  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v136 = 0u;
    v137 = 0u;
  }

  v35 = v125;
  v138 = v136;
  v139 = v137;
  if (*(&v137 + 1))
  {
    sub_10002B634(0, &qword_100050380, &type metadata accessor for Array);
    if (swift_dynamicCast())
    {
      v36 = v135;
      goto LABEL_32;
    }
  }

  else
  {
    sub_100015138(&v138);
  }

  sub_10002B634(0, &qword_100050388, &type metadata accessor for _ContiguousArrayStorage);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10003EDF0;
  *(v36 + 32) = sub_10002A67C(&_swiftEmptyArrayStorage);
LABEL_32:
  v37 = sub_10002A7BC(v35);
  v38 = sub_10002A7BC(v36);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v41 = os_log_type_enabled(v39, v40);
  v127 = v37;
  v124 = v38;
  if (v41)
  {
    v42 = swift_slowAlloc();
    *&v138 = swift_slowAlloc();
    *v42 = 136315394;
    v43 = Array.description.getter();
    v45 = sub_1000105E4(v43, v44, &v138);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2080;
    v46 = Array.description.getter();
    v48 = sub_1000105E4(v46, v47, &v138);

    *(v42 + 14) = v48;
    v37 = v127;
    _os_log_impl(&_mh_execute_header, v39, v40, "shared watchlist has symbols=%s, and this device last saved symbols=%s", v42, 0x16u);
    swift_arrayDestroy();
  }

  v126 = v3;
  if (v14 < v9)
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v128;
    v53 = v132;
    if (v51)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "shared watchlist has been modified since this device last wrote to it", v54, 2u);
    }

    v57 = *(v124 + 16);
    if (v57)
    {
      v58 = 0;
      v123 = &v53[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager];
      v122 = (v52 + 8);
      v59 = (v124 + 40);
      *&v56 = 136315138;
      v119 = v56;
      do
      {
        v60 = *(v59 - 1);
        v61 = *v59;
        *&v138 = v60;
        *(&v138 + 1) = v61;
        __chkstk_darwin(v55);
        *(&v119 - 2) = &v138;

        if (sub_100025528(sub_10002B898, (&v119 - 2), v37))
        {
        }

        else
        {

          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.default.getter();

          v64 = os_log_type_enabled(v62, v63);
          v134 = v58;
          if (v64)
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            *&v138 = v66;
            *v65 = v119;
            *(v65 + 4) = sub_1000105E4(v60, v61, &v138);
            _os_log_impl(&_mh_execute_header, v62, v63, "found deleted symbol: %s", v65, 0xCu);
            sub_10000461C(v66);
          }

          v67 = v123;
          v68 = *(v123 + 3);
          v133 = *(v123 + 4);
          sub_1000045D8(v123, v68);
          sub_1000045D8(v67, *(v67 + 3));
          v69 = v129;
          dispatch thunk of WatchlistManagerType.defaultAllSymbolsWatchlist.getter();
          dispatch thunk of WatchlistManagerType.removeSymbol(_:from:)();

          v25 = v126;
          (*v122)(v69, v126);
          v70 = zalgo.getter();
          Promise.then<A>(on:closure:)();

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v55 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v37 = v127;
          v58 = v134;
        }

        v59 += 2;
        --v57;
      }

      while (v57);
    }
  }

  v71 = v125;
  v72 = *(v125 + 16);
  if (v72)
  {
    v73 = 0;
    v74 = v125 + 32;
    v133 = v72 - 1;
    v134 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v75 = v73;
      while (1)
      {
        if (v75 >= *(v71 + 16))
        {
          __break(1u);
          goto LABEL_82;
        }

        v76 = *(v74 + 8 * v75);
        if (*(v76 + 16))
        {
          break;
        }

LABEL_51:
        if (v72 == ++v75)
        {
          v25 = v126;
          goto LABEL_67;
        }
      }

      v77 = sub_100029810(0x6C6F626D7973, 0xE600000000000000);
      if ((v78 & 1) == 0)
      {
        break;
      }

      sub_100010AE0(*(v76 + 56) + 32 * v77, &v138);
      v79 = swift_dynamicCast();
      if ((v79 & 1) == 0)
      {
        break;
      }

      v80 = v136;
      v138 = v136;
      __chkstk_darwin(v79);
      *(&v119 - 2) = &v138;
      v81 = sub_100025528(sub_10002B6BC, (&v119 - 2), v124);

      if (v81)
      {

        v71 = v125;
        goto LABEL_51;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = sub_10001DB64(0, *(v134 + 2) + 1, 1, v134);
      }

      v83 = *(v134 + 2);
      v82 = *(v134 + 3);
      if (v83 >= v82 >> 1)
      {
        v134 = sub_10001DB64((v82 > 1), v83 + 1, 1, v134);
      }

      v73 = v75 + 1;
      v84 = v134;
      *(v134 + 2) = v83 + 1;
      *&v84[16 * v83 + 32] = v80;
      v85 = v133 == v75;
      v25 = v126;
      v71 = v125;
      if (v85)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_51;
  }

  v134 = &_swiftEmptyArrayStorage;
LABEL_67:
  v86 = v134;

  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v138 = v90;
    *v89 = 136315138;
    v91 = Array.description.getter();
    v93 = sub_1000105E4(v91, v92, &v138);

    *(v89 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v87, v88, "adding symbols %s", v89, 0xCu);
    sub_10000461C(v90);
  }

  v94 = v121;
  v95 = v130;
  v96 = v120;
  v97 = v132;
  sub_1000045D8(&v132[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_stockMetadataManager], *&v132[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_stockMetadataManager + 24]);
  (*(v95 + 104))(v96, enum case for CachePolicy.preferCache(_:), v94);
  StockMetadataManagerType.fetchStocks(for:cachePolicy:)();
  (*(v95 + 8))(v96, v94);
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  *(v98 + 24) = v86;
  v99 = v97;
  v100 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (*(v124 + 16) == *(v127 + 16) && (sub_100029780(v124, v127) & 1) == 0)
  {

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *&v138 = swift_slowAlloc();
      *v103 = 136315394;
      v104 = Array.description.getter();
      v106 = sub_1000105E4(v104, v105, &v138);

      *(v103 + 4) = v106;
      *(v103 + 12) = 2080;
      v107 = Array.description.getter();
      v109 = v108;

      v110 = sub_1000105E4(v107, v109, &v138);

      *(v103 + 14) = v110;
      _os_log_impl(&_mh_execute_header, v101, v102, "reordering symbols - watch:%s phone:%s", v103, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v111 = &v99[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager];
    sub_1000045D8(&v99[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager], *&v99[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager + 24]);
    sub_1000045D8(v111, *(v111 + 3));
    v112 = v129;
    dispatch thunk of WatchlistManagerType.defaultAllSymbolsWatchlist.getter();
    dispatch thunk of WatchlistManagerType.reorder(symbols:in:)();

    (*(v128 + 8))(v112, v25);
    v113 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v71 = v125;
  }

  else
  {
  }

  v114 = zalgo.getter();
  when<A>(on:_:)();

  v115 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  v116 = swift_allocObject();
  *(v116 + 16) = v9;
  *(v116 + 24) = v71;
  v117 = zalgo.getter();
  v118 = Promise.always(on:closure:)();

  return v118;
}

uint64_t sub_100027550(uint64_t a1, uint64_t a2)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000296E4(v3, qword_100051C20);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "will fetch stocks from My Symbols watchlist", v6, 2u);
  }

  sub_1000045D8((a2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager), *(a2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager + 24));
  return dispatch thunk of WatchlistManagerType.fetchStocksFromDefaultWatchlist()();
}

uint64_t sub_100027664(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000296E4(v5, qword_100051C20);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v6, v7, "did fetch stocks from My Symbols watchlist with %ld stocks", v8, 0xCu);
  }

  else
  {
  }

  if (sub_10002798C(v4, a3 & 1))
  {
    v9 = [objc_allocWithZone(NPSManager) init];
    type metadata accessor for AppGroup();
    static AppGroup.stocks.getter();
    AppGroup.identifier.getter();

    v10 = String._bridgeToObjectiveC()();

    sub_10002A954(&off_10004AAF8);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v12 = String._bridgeToObjectiveC()();
    static AppGroup.stocks.getter();
    AppGroup.identifier.getter();

    v13 = String._bridgeToObjectiveC()();

    [v9 synchronizeUserDefaultsDomain:v10 keys:isa container:v12 appGroupContainer:v13];

    sub_1000283DC();
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "watchlist contains no changes for watch", v16, 2u);
    }
  }

  sub_10002B82C(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_10002798C(uint64_t a1, int a2)
{
  v74 = a2;
  v4 = type metadata accessor for Date();
  v78 = *(v4 - 8);
  __chkstk_darwin(v4);
  v77 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Stock();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v84 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  v75 = v9;
  v76 = a1;
  if (v9)
  {
    v72 = v2;
    v73 = v4;
    *&v86 = &_swiftEmptyArrayStorage;
    sub_100029960(0, v9, 0);
    v4 = v86;
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    sub_10002B5D4(0, &qword_100050360, &type metadata for Any + 8, &type metadata accessor for _DictionaryStorage);
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v82 = v13;
    v83 = v14;
    v15 = *(v12 + 56);
    v79 = (v12 - 8);
    v80 = v15;
    v16 = v9;
    v81 = v12;
    while (1)
    {
      v17 = v6;
      v82(v84, v11, v6);
      v90[0] = 0x6C6F626D7973;
      v90[1] = 0xE600000000000000;
      v90[2] = Stock.symbol.getter();
      v90[3] = v18;
      v90[5] = &type metadata for String;
      v91[0] = 0x4E796E61706D6F63;
      v91[1] = 0xEB00000000656D61;
      v91[2] = Stock.name.getter();
      v91[3] = v19;
      v91[5] = &type metadata for String;
      v92[0] = 0x65676E6168637865;
      v92[1] = 0xE800000000000000;
      v20 = Stock.exchange.getter();
      v92[5] = &type metadata for String;
      v92[2] = v20;
      v92[3] = v21;
      v22 = static _DictionaryStorage.allocate(capacity:)();

      sub_10002B7C4(v90, &v88, sub_10002B4BC);
      v23 = v88;
      v24 = sub_100029810(v88, *(&v88 + 1));
      if (v25)
      {
        break;
      }

      v6 = v22 + 8;
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v24;
      *(v22[6] + 16 * v24) = v23;
      sub_10001DF74(v89, (v22[7] + 32 * v24));
      v26 = v22[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_40;
      }

      v22[2] = v28;
      sub_10002B7C4(v91, &v88, sub_10002B4BC);
      v29 = v88;
      v30 = sub_100029810(v88, *(&v88 + 1));
      if (v31)
      {
        break;
      }

      *(v6 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      *(v22[6] + 16 * v30) = v29;
      sub_10001DF74(v89, (v22[7] + 32 * v30));
      v32 = v22[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        goto LABEL_40;
      }

      v22[2] = v33;
      sub_10002B7C4(v92, &v88, sub_10002B4BC);
      v34 = v88;
      v35 = sub_100029810(v88, *(&v88 + 1));
      if (v36)
      {
        break;
      }

      *(v6 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      *(v22[6] + 16 * v35) = v34;
      sub_10001DF74(v89, (v22[7] + 32 * v35));
      v37 = v22[2];
      v27 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v27)
      {
        goto LABEL_40;
      }

      v22[2] = v38;

      sub_10002B4BC();
      swift_arrayDestroy();
      v6 = v17;
      (*v79)(v84, v17);
      *&v86 = v4;
      v40 = *(v4 + 16);
      v39 = *(v4 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_100029960((v39 > 1), v40 + 1, 1);
        v4 = v86;
      }

      *(v4 + 16) = v40 + 1;
      *(v4 + 8 * v40 + 32) = v22;
      v11 += v80;
      if (!--v16)
      {
        v10 = v4;
        v2 = v72;
        v4 = v73;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_35;
  }

LABEL_13:
  v6 = *(v2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_sharedUserDefaults);
  v41 = String._bridgeToObjectiveC()();
  v42 = [v6 objectForKey:v41];

  if (v42)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  v88 = v86;
  v89[0] = v87;
  if (*(&v87 + 1))
  {
    sub_10002B634(0, &qword_100050380, &type metadata accessor for Array);
    if (swift_dynamicCast())
    {
      v43 = v85;
      goto LABEL_21;
    }
  }

  else
  {
    sub_100015138(&v88);
  }

  v43 = &_swiftEmptyArrayStorage;
LABEL_21:
  v44 = sub_10002A7BC(v43);

  v45 = String._bridgeToObjectiveC()();
  v46 = [v6 objectForKey:v45];

  if (v46)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  v88 = v86;
  v89[0] = v87;
  if (*(&v87 + 1))
  {
    sub_10002B634(0, &qword_100050380, &type metadata accessor for Array);
    if (swift_dynamicCast())
    {
      v47 = v85;
      goto LABEL_29;
    }
  }

  else
  {
    sub_100015138(&v88);
  }

  v47 = &_swiftEmptyArrayStorage;
LABEL_29:
  v48 = sub_10002A7BC(v47);

  v49 = sub_10002A7BC(v10);
  v50 = sub_100029780(v49, v44);

  if (v50)
  {
    v51 = sub_100029780(v49, v48);

    if ((v51 & 1) != 0 && (v74 & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
  }

  if (qword_10004EA90 != -1)
  {
    goto LABEL_41;
  }

LABEL_35:
  v53 = type metadata accessor for Logger();
  sub_1000296E4(v53, qword_100051C20);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = v75;

    _os_log_impl(&_mh_execute_header, v54, v55, "saving %ld stocks to group user defaults", v56, 0xCu);
  }

  else
  {
  }

  v57 = v77;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v59 = v58;
  (*(v78 + 8))(v57, v4);
  v60 = String._bridgeToObjectiveC()();
  [v6 setDouble:v60 forKey:v59];

  sub_10002B5D4(0, &qword_100050378, &type metadata for Any + 8, &type metadata accessor for Dictionary);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v62 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v62];

  v63 = String._bridgeToObjectiveC()();
  [v6 setDouble:v63 forKey:v59];

  v64 = Array._bridgeToObjectiveC()().super.isa;
  v65 = String._bridgeToObjectiveC()();
  [v6 setObject:v64 forKey:v65];

  v66 = objc_opt_self();
  v67 = [v66 standardUserDefaults];
  v68 = String._bridgeToObjectiveC()();
  [v67 setDouble:v68 forKey:v59];

  v69 = [v66 standardUserDefaults];
  v70 = Array._bridgeToObjectiveC()().super.isa;

  v71 = String._bridgeToObjectiveC()();
  [v69 setObject:v70 forKey:v71];

  return 1;
}

void sub_1000283DC()
{
  v16 = [objc_opt_self() defaultSession];
  if ([v16 isPaired] && objc_msgSend(v16, "isWatchAppInstalled"))
  {
    v1 = v0;
    if ([v16 activationState] == 2)
    {
      if (qword_10004EA90 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_1000296E4(v2, qword_100051C20);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "issuing watch notification", v5, 2u);
      }

      sub_10002B438(0, &qword_100050350, sub_10002B4BC, &type metadata accessor for _ContiguousArrayStorage);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10003EDF0;
      *(inited + 32) = 0x6D617473656D6974;
      *(inited + 40) = 0xE900000000000070;
      *(inited + 72) = type metadata accessor for Date();
      sub_10000EE0C((inited + 48));
      Date.init()();
      sub_10002A67C(inited);
      swift_setDeallocating();
      sub_10002B520(inited + 32);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_pendingWatchNotification) = 0;
    }

    else
    {
      if (qword_10004EA90 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000296E4(v12, qword_100051C20);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "deferring watch notification because session is not active", v15, 2u);
      }

      *(v1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_pendingWatchNotification) = 1;
    }
  }

  else
  {
    if (qword_10004EA90 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000296E4(v8, qword_100051C20);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "skipping watch notification because no watch is paired or the watch app isn't installed", v11, 2u);
    }
  }
}

void sub_1000287D8(uint64_t a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000296E4(v1, qword_100051C20);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000105E4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "failed to fetch latest watchlist with error: %s", v3, 0xCu);
    sub_10000461C(v4);
  }

  else
  {
  }
}

uint64_t sub_100028970(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Watchlist();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Stock();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v43 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v34 - v12;
  v13 = *a1;
  v35 = (a2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager);
  sub_100006580(a2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager, v46);
  v36 = v48;
  v37 = v47;
  v34 = sub_1000045D8(v46, v47);
  v14 = *(a3 + 16);
  if (v14)
  {
    v41 = v9 + 16;
    v44 = v9 + 32;
    v15 = (a3 + 40);
    v49 = &_swiftEmptyArrayStorage;
    v42 = v8;
    do
    {
      if (*(v13 + 16))
      {
        v16 = *(v15 - 1);
        v17 = *v15;

        v18 = sub_100029810(v16, v17);
        if (v19)
        {
          v20 = *(v9 + 72);
          v21 = *(v9 + 16);
          v22 = v9;
          v23 = v43;
          v21(v43, *(v13 + 56) + v20 * v18, v8);

          v24 = v22;
          v25 = *(v22 + 32);
          v25(v45, v23, v8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10001DD8C(0, v49[2] + 1, 1, v49);
          }

          v27 = v49[2];
          v26 = v49[3];
          v9 = v24;
          if (v27 >= v26 >> 1)
          {
            v49 = sub_10001DD8C((v26 > 1), v27 + 1, 1, v49);
          }

          v28 = v49;
          v49[2] = v27 + 1;
          v29 = v28 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + v27 * v20;
          v8 = v42;
          v25(v29, v45, v42);
        }

        else
        {
        }
      }

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  else
  {
    v49 = &_swiftEmptyArrayStorage;
  }

  sub_1000045D8(v35, v35[3]);
  v30 = v38;
  dispatch thunk of WatchlistManagerType.defaultAllSymbolsWatchlist.getter();
  WatchlistManagerType.addStocks(_:watchlist:)();

  (*(v39 + 8))(v30, v40);
  v31 = zalgo.getter();
  v32 = Promise.then<A>(on:closure:)();

  sub_10000461C(v46);
  return v32;
}

uint64_t sub_100028D28()
{
  sub_10002B82C(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
  swift_allocObject();
  return Promise.init(value:)();
}

void sub_100028D90(double a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "finished watch sync", v5, 2u);
  }

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  [v7 setDouble:v8 forKey:a1];

  v9 = [v6 standardUserDefaults];
  sub_10002B5D4(0, &qword_100050378, &type metadata for Any + 8, &type metadata accessor for Dictionary);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = String._bridgeToObjectiveC()();
  [v9 setObject:isa forKey:v11];
}

uint64_t sub_100028FF8()
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000296E4(v0, qword_100051C20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "triggering sync in response to watchlist observer callback", v3, 2u);
  }

  __chkstk_darwin(v4);
  PromiseDeduper.promise(key:createBlock:)();
}

uint64_t sub_100029148(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return WatchlistManagerObserver.watchlistManagerWatchlistsDidChange(_:)(a1, ObjectType);
}

void sub_1000291F0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_pendingWatchNotification) == 1)
  {
    if (qword_10004EA90 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000296E4(v1, qword_100051C20);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "notifying watch in response to session activation because we have a pending notification", v4, 2u);
    }

    sub_1000283DC();
  }
}

uint64_t sub_1000293F8()
{
  sub_10000557C(0, &qword_100050340, NSString_ptr);
  result = NSString.init(stringLiteral:)();
  qword_100051C10 = result;
  return result;
}

uint64_t sub_100029454()
{
  sub_10000557C(0, &qword_100050340, NSString_ptr);
  result = NSString.init(stringLiteral:)();
  qword_100051C18 = result;
  return result;
}

void sub_1000294B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    qword_1000501B0 = OS_os_log.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100029578()
{
  v0 = type metadata accessor for Logger();
  sub_10002971C(v0, qword_100051C20);
  sub_1000296E4(v0, qword_100051C20);
  if (qword_10004EA88 != -1)
  {
    swift_once();
  }

  v1 = qword_1000501B0;
  return Logger.init(_:)();
}

uint64_t sub_100029604(uint64_t a1, uint64_t a2)
{
  result = sub_100006868(&qword_100050308, a2, type metadata accessor for GizmoSyncManager, &unk_10003F9B4);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002965C()
{
  result = qword_100050328;
  if (!qword_100050328)
  {
    sub_10002B438(255, &qword_100050320, &type metadata accessor for PromiseDeduperFlags, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050328);
  }

  return result;
}

uint64_t sub_1000296E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10002971C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100029780(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_100029810(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100029888(a1, a2, v4);
}

unint64_t sub_100029888(uint64_t a1, uint64_t a2, uint64_t a3)
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

char *sub_100029940(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000299A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100029960(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100029AC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100029980(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100029C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000299A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002B82C(0, &qword_1000503C0, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100029AC4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10002B634(0, &qword_100050388, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_10002B5D4(0, &qword_100050378, &type metadata for Any + 8, &type metadata accessor for Dictionary);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100029C24(void *result, int64_t a2, char a3, void *a4)
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
    sub_10002B438(0, &qword_100050390, sub_10002B758, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002B758();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100029D84(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_10002A128(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_100029ED4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002B57C();
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

Swift::Int sub_10002A128(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100029ED4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10002A2A8();
      goto LABEL_16;
    }

    sub_10002A3F8(v8 + 1);
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

void *sub_10002A2A8()
{
  v1 = v0;
  sub_10002B57C();
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

Swift::Int sub_10002A3F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002B57C();
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

uint64_t sub_10002A624(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_10002A67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002B5D4(0, &qword_100050360, &type metadata for Any + 8, &type metadata accessor for _DictionaryStorage);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002B7C4(v4, &v13, sub_10002B4BC);
      v5 = v13;
      v6 = v14;
      result = sub_100029810(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001DF74(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10002A7BC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = &_swiftEmptyArrayStorage;
    v4 = result + 32;
    while (1)
    {
      for (i = v2; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return result;
        }

        v2 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }

        v6 = *(v4 + 8 * i);
        if (*(v6 + 16))
        {
          break;
        }

LABEL_5:
        if (v2 == v1)
        {
          return v3;
        }
      }

      v7 = sub_100029810(0x6C6F626D7973, 0xE600000000000000);
      if ((v8 & 1) == 0)
      {
        break;
      }

      sub_100010AE0(*(v6 + 56) + 32 * v7, v14);

      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_5;
      }

      v9 = v16;
      if (!v16)
      {
        goto LABEL_5;
      }

      v10 = v15;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10001DB64(0, *(v3 + 2) + 1, 1, v3);
        v3 = result;
      }

      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      if (v12 >= v11 >> 1)
      {
        result = sub_10001DB64((v11 > 1), v12 + 1, 1, v3);
        v3 = result;
      }

      *(v3 + 2) = v12 + 1;
      v13 = &v3[16 * v12];
      *(v13 + 4) = v10;
      *(v13 + 5) = v9;
      if (v2 == v1)
      {
        return v3;
      }
    }

    goto LABEL_5;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10002A954(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100029D84(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_10002A9EC(void *a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "session did deactivate, so reactivating", v5, 2u);
  }

  return [a1 activateSession];
}

void sub_10002AAE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    swift_errorRetain();
    if (qword_10004EA90 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000296E4(v5, qword_100051C20);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_1000105E4(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "session activation did fail with error: %s", v8, 0xCu);
      sub_10000461C(v9);

      if (a1 != 2)
      {
        return;
      }
    }

    else
    {

      if (a1 != 2)
      {
        return;
      }
    }

    goto LABEL_12;
  }

  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000296E4(v13, qword_100051C20);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v14, v15, "session activation did complete with state: %ld", v16, 0xCu);
  }

  if (a1 == 2)
  {
LABEL_12:
    *(swift_allocObject() + 16) = v3;
    v17 = v3;
    asyncMain(block:)();
  }
}

uint64_t sub_10002ADA8(uint64_t a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v17[0] = v6;
    *v5 = 136315138;
    v7 = Dictionary.description.getter();
    v9 = sub_1000105E4(v7, v8, v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "session did receive message: %s", v5, 0xCu);
    sub_10000461C(v6);
  }

  if (*(a1 + 16) && (v10 = sub_100029810(0xD000000000000021, 0x800000010003D950), (v11 & 1) != 0))
  {
    sub_100010AE0(*(a1 + 56) + 32 * v10, v17);
    sub_100015138(v17);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "forcing sync in response to message", v14, 2u);
    }

    *&v17[0] = 1668184435;
    *(&v17[0] + 1) = 0xE400000000000000;
    __chkstk_darwin(v15);
    PromiseDeduper.promise(key:createBlock:)();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    return sub_100015138(v17);
  }
}

void sub_10002B150(void *a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "did receive watch-wake notification", v5, 2u);
  }

  if (a1)
  {
    v6 = a1;
    sub_1000283DC();
  }
}

void sub_10002B270(void *a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "did receive preferences-changed notification", v5, 2u);
  }

  if (a1)
  {
    v6 = a1;
    __chkstk_darwin(v6);
    PromiseDeduper.promise(key:createBlock:)();
  }
}

void sub_10002B438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10002B4BC()
{
  if (!qword_100050358)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100050358);
    }
  }
}

uint64_t sub_10002B520(uint64_t a1)
{
  sub_10002B4BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002B57C()
{
  if (!qword_100050368)
  {
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_100050368);
    }
  }
}

void sub_10002B5D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void *, uint64_t, void *))
{
  if (!*a2)
  {
    v5 = a4(0, &type metadata for String, a3, &protocol witness table for String);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002B634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_10002B5D4(255, &qword_100050378, &type metadata for Any + 8, &type metadata accessor for Dictionary);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10002B700(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_10002B758()
{
  result = qword_100050398;
  if (!qword_100050398)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100050398);
  }

  return result;
}

uint64_t sub_10002B7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10002B82C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_10002B8B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100036538(0);
  v1006 = v4;
  v1005 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v965 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000365CC(0);
  v1000 = v7;
  v999 = *(v7 - 8);
  __chkstk_darwin(v7);
  v1001 = &v965 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036AFC(0, &qword_100050490, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Item.RangeControlType);
  v1004 = v9;
  v1003 = *(v9 - 8);
  __chkstk_darwin(v9);
  v1017 = (&v965 - v10);
  sub_100036660(0);
  v997 = v11;
  v996 = *(v11 - 8);
  __chkstk_darwin(v11);
  v998 = &v965 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1015 = type metadata accessor for SettingsBundle();
  v995 = *(v1015 - 8);
  __chkstk_darwin(v1015);
  v994 = &v965 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036AFC(0, &qword_1000504A8, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for Item.RangeControlType);
  v1059 = v14;
  v1057 = *(v14 - 1);
  __chkstk_darwin(v14);
  v993 = (&v965 - v15);
  sub_1000366F4(0);
  v1014 = v16;
  v1055 = *(v16 - 8);
  __chkstk_darwin(v16);
  v1013 = &v965 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003710C(0, &qword_1000504C0, &type metadata accessor for Item.ResetBehavior);
  v992 = v18;
  v990 = *(v18 - 8);
  __chkstk_darwin(v18);
  v991 = &v965 - v19;
  sub_100036788(0);
  v989 = v20;
  v988 = *(v20 - 1);
  __chkstk_darwin(v20);
  v1019 = &v965 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003681C(0);
  v986 = v22;
  v985 = *(v22 - 8);
  __chkstk_darwin(v22);
  v987 = &v965 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000368B0(0);
  v983 = v24;
  v982 = *(v24 - 8);
  __chkstk_darwin(v24);
  v984 = &v965 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1083 = type metadata accessor for DebugItem();
  v1020 = *(v1083 - 1);
  v26 = __chkstk_darwin(v1083);
  v981 = &v965 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v980 = &v965 - v29;
  __chkstk_darwin(v28);
  v965 = &v965 - v30;
  v1056 = type metadata accessor for PrivacyValidation();
  v979 = *(v1056 - 8);
  __chkstk_darwin(v1056);
  v978 = &v965 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1022 = type metadata accessor for DebugModel();
  v1050 = *(v1022 - 8);
  __chkstk_darwin(v1022);
  v1021 = &v965 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036944(0);
  v1042 = v33;
  v1041 = *(v33 - 8);
  __chkstk_darwin(v33);
  v1023 = &v965 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036AFC(0, &qword_100050508, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for Item.ResetBehavior);
  v1068 = v35;
  v1066 = *(v35 - 8);
  __chkstk_darwin(v35);
  v1049 = &v965 - v36;
  sub_100036AFC(0, &qword_100050510, &type metadata for String, &protocol witness table for String, &type metadata accessor for Item.ResetBehavior);
  v1040 = v37;
  v1047 = *(v37 - 8);
  __chkstk_darwin(v37);
  v1039 = &v965 - v38;
  sub_100036AFC(0, &qword_100050518, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Item.ResetBehavior);
  v1044 = v39;
  v1043 = *(v39 - 8);
  __chkstk_darwin(v39);
  v1048 = &v965 - v40;
  sub_100036AFC(0, &qword_100050520, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for Item.ResetBehavior);
  v1074 = v41;
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v965 - v43;
  v1078 = type metadata accessor for ChangeBehavior();
  v45 = *(v1078 - 8);
  __chkstk_darwin(v1078);
  v1061 = &v965 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for AppConfiguration();
  v1002 = *(v47 - 8);
  __chkstk_darwin(v47);
  v1024 = &v965 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_100050528, &protocol descriptor for PrivacyValidationProviderType, 0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v1016 = v1089[0];
  if (!v1089[0])
  {
    __break(1u);
    goto LABEL_25;
  }

  v977 = v1089[1];
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_10004FB60, &protocol descriptor for AppConfigurationManagerType, 1);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v1087)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v976 = v47;
  v1079 = v44;
  v50 = v42;
  sub_1000061A0(&v1086, v1089);
  sub_1000045D8(v1089, v1089[3]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  sub_1000045D8(a1, a1[3]);
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v1012 = result;
  if (!result)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v974 = v6;
  v975 = a2;
  sub_100005650(0, &qword_100050530, &type metadata accessor for _ContiguousArrayStorage);
  v1063 = v51;
  v52 = *(type metadata accessor for Group() - 8);
  v1054 = *(v52 + 72);
  v1060 = *(v52 + 80);
  v53 = (v1060 + 32) & ~v1060;
  v1058 = v53;
  v1046 = 2 * v1054;
  v1038 = 3 * v1054;
  v1009 = 6 * v1054;
  v54 = swift_allocObject();
  v1010 = xmmword_10003FA00;
  *(v54 + 16) = xmmword_10003FA00;
  v973 = v54;
  v1064 = (v54 + v53);
  sub_1000369D8(0);
  v1076 = v55;
  v56 = swift_allocObject();
  v1073 = xmmword_10003EDF0;
  *(v56 + 16) = xmmword_10003EDF0;
  v1065 = &type metadata accessor for Item;
  sub_100036AFC(0, &qword_100050538, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for Item);
  v1081 = v57;
  static Settings.AccessChecks.simulateAccessToEverything.getter();
  sub_100036A44();
  v1067 = v58;
  v59 = swift_allocObject();
  v1082 = xmmword_10003FA10;
  *(v59 + 16) = xmmword_10003FA10;
  v1069 = type metadata accessor for SettingAction();
  *(v59 + 32) = static SettingActions.restart.getter();
  v1080 = enum case for ChangeBehavior.default(_:);
  v1075 = *(v45 + 104);
  v1077 = v45 + 104;
  v60 = v1061;
  v61 = v1078;
  v1075(v1061);
  v62 = enum case for Item.ResetBehavior.reset<A>(_:);
  v63 = *(v50 + 104);
  v1072 = v50 + 104;
  v1071 = v63;
  v64 = v1079;
  v1084 = enum case for Item.ResetBehavior.reset<A>(_:);
  v63(v1079, enum case for Item.ResetBehavior.reset<A>(_:), v1074);
  v65 = v60;
  v66 = v1081;
  v67 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v56 + 56) = v66;
  v1070 = sub_100036A98(&qword_100050548, &qword_100050538, &type metadata for Bool, &protocol witness table for Bool);
  *(v56 + 64) = v1070;
  *(v56 + 32) = v67;
  Group.init(title:footer:_:)();
  v68 = swift_allocObject();
  *(v68 + 16) = v1073;
  v1062 = static Settings.PurchaseFlow.simulatePurchaseFlow.getter();
  v1053 = "Simulate Access to Everything";
  v69 = swift_allocObject();
  *(v69 + 16) = v1082;
  *(v69 + 32) = static SettingActions.restart.getter();
  v70 = v60;
  v71 = v1075;
  (v1075)(v70, v1080, v61);
  v72 = v64;
  v73 = v1074;
  v74 = v1071;
  v1071(v72, v62, v1074);
  v75 = v1081;
  v76 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v77 = v1070;
  *(v68 + 56) = v75;
  *(v68 + 64) = v77;
  *(v68 + 32) = v76;
  Group.init(title:footer:_:)();
  v1062 = "Simulate Purchase Flow";
  v78 = swift_allocObject();
  v971 = xmmword_10003FA20;
  *(v78 + 16) = xmmword_10003FA20;
  v1053 = static Settings.Entitlements.simulateEntitlementCacheExpired.getter();
  *&v1052 = "entitlements call is set";
  v79 = v1080;
  v71(v65, v1080, v61);
  v80 = v1084;
  v74(v1079, v1084, v73);
  v81 = v1081;
  v82 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v78 + 56) = v81;
  *(v78 + 64) = v77;
  *(v78 + 32) = v82;
  sub_100036AFC(0, &qword_100050550, &type metadata for Int, &protocol witness table for Int, v1065);
  v1051 = v83;
  v1053 = static Settings.Entitlements.cacheRecoveryAttemptDuration.getter();
  v84 = v79;
  v85 = v1078;
  v86 = v1075;
  (v1075)(v65, v79, v1078);
  v87 = v1043 + 104;
  v1034 = *(v1043 + 104);
  v1034(v1048, v80, v1044);
  v1043 = v87;
  v88 = v1051;
  v89 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v78 + 96) = v88;
  v1030 = sub_100036A98(&qword_100050558, &qword_100050550, &type metadata for Int, &protocol witness table for Int);
  *(v78 + 104) = v1030;
  *(v78 + 72) = v89;
  static Settings.BundleSubscriptions.entitlementsGracePeriod.getter();
  v86(v65, v84, v85);
  v90 = v80;
  v91 = v1044;
  v92 = v1034;
  v1034(v1048, v90, v1044);
  v93 = v92;
  v94 = v65;
  v95 = v1051;
  v96 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v97 = v1030;
  *(v78 + 136) = v95;
  *(v78 + 144) = v97;
  *(v78 + 112) = v96;
  v1053 = static Settings.Entitlements.entitlementsResultOverride.getter();
  v98 = swift_allocObject();
  *(v98 + 16) = v1082;
  *(v98 + 32) = static SettingActions.resetOverrideEntitlement.getter();
  (v1075)(v94, v1080, v85);
  v99 = v1084;
  v93(v1048, v1084, v91);
  v100 = v1051;
  v101 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v78 + 176) = v100;
  *(v78 + 184) = v97;
  *(v78 + 152) = v101;
  sub_100036AFC(0, &qword_100050560, &type metadata for String, &protocol witness table for String, v1065);
  v103 = v102;
  static Settings.Entitlements.entitlementsOverride.getter();
  v1029 = *(v1047 + 104);
  v1047 += 104;
  v1029(v1039, v99, v1040);
  v1045 = v103;
  v104 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v78 + 216) = v103;
  v1033 = sub_100036A98(&qword_100050568, &qword_100050560, &type metadata for String, &protocol witness table for String);
  *(v78 + 224) = v1033;
  *(v78 + 192) = v104;
  static Settings.Entitlements.trialPeriodOverride.getter();
  v105 = v1080;
  v106 = v1078;
  v107 = v1075;
  (v1075)(v94, v1080, v1078);
  v108 = v1079;
  v1071(v1079, v1084, v1074);
  v109 = v1081;
  v110 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v111 = v1070;
  *(v78 + 256) = v109;
  *(v78 + 264) = v111;
  *(v78 + 232) = v110;
  v1053 = static Settings.Entitlements.simulateFamilyMember.getter();
  v107(v94, v105, v106);
  v112 = v1084;
  v113 = v1074;
  v114 = v1071;
  v1071(v108, v1084, v1074);
  v115 = v1081;
  v116 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v78 + 296) = v115;
  *(v78 + 304) = v111;
  *(v78 + 272) = v116;
  v1053 = static Settings.Entitlements.simulateAmplifyUser.getter();
  v117 = v1075;
  (v1075)(v94, v105, v1078);
  v114(v1079, v112, v113);
  v118 = v1081;
  v119 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v120 = v1070;
  *(v78 + 336) = v118;
  *(v78 + 344) = v120;
  *(v78 + 312) = v119;
  static Settings.Entitlements.simulateServicesBundle.getter();
  v117(v94, v1080, v1078);
  v114(v1079, v1084, v113);
  v121 = v1081;
  v122 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v78 + 376) = v121;
  *(v78 + 384) = v120;
  *(v78 + 352) = v122;
  Group.init(title:footer:_:)();
  v1062 = "Simulate Services Bundle";
  v123 = swift_allocObject();
  v1031 = xmmword_10003FA30;
  *(v123 + 16) = xmmword_10003FA30;
  static Presets.BundleSubscriptions.none.getter();
  v124 = swift_allocObject();
  *(v124 + 16) = v1082;
  *(v124 + 32) = static SettingActions.restart.getter();
  v125 = type metadata accessor for PresetItem();
  swift_allocObject();
  v126 = PresetItem.init(_:label:actions:)();
  *(v123 + 56) = v125;
  *(v123 + 64) = &protocol witness table for PresetItem;
  *(v123 + 32) = v126;
  static Presets.BundleSubscriptions.iTMS5.getter();
  v127 = swift_allocObject();
  *(v127 + 16) = v1082;
  *(v127 + 32) = static SettingActions.restart.getter();
  swift_allocObject();
  v128 = PresetItem.init(_:label:actions:)();
  *(v123 + 96) = v125;
  *(v123 + 104) = &protocol witness table for PresetItem;
  *(v123 + 72) = v128;
  static Presets.BundleSubscriptions.iTMS6.getter();
  v129 = swift_allocObject();
  *(v129 + 16) = v1082;
  *(v129 + 32) = static SettingActions.restart.getter();
  swift_allocObject();
  v130 = PresetItem.init(_:label:actions:)();
  *(v123 + 136) = v125;
  *(v123 + 144) = &protocol witness table for PresetItem;
  *(v123 + 112) = v130;
  static Presets.BundleSubscriptions.iTMS7.getter();
  v131 = swift_allocObject();
  *(v131 + 16) = v1082;
  *(v131 + 32) = static SettingActions.restart.getter();
  swift_allocObject();
  v132 = PresetItem.init(_:label:actions:)();
  *(v123 + 176) = v125;
  *(v123 + 184) = &protocol witness table for PresetItem;
  *(v123 + 152) = v132;
  static Presets.BundleSubscriptions.iTMS11.getter();
  v133 = swift_allocObject();
  *(v133 + 16) = v1082;
  *(v133 + 32) = static SettingActions.restart.getter();
  swift_allocObject();
  v134 = PresetItem.init(_:label:actions:)();
  *(v123 + 216) = v125;
  *(v123 + 224) = &protocol witness table for PresetItem;
  *(v123 + 192) = v134;
  Group.init(title:footer:_:)();
  v135 = v1054;
  v136 = 4 * v1054;
  v137 = swift_allocObject();
  *(v137 + 16) = v1073;
  static Settings.WebAccess.localServerIP.getter();
  v138 = v1039;
  v139 = v1040;
  v140 = v1029;
  v1029(v1039, v1084, v1040);
  v141 = v1045;
  v142 = Item<>.init(_:label:resetBehavior:actions:)();
  v143 = v1033;
  *(v137 + 56) = v141;
  *(v137 + 64) = v143;
  *(v137 + 32) = v142;
  v1025 = v136;
  Group.init(title:footer:_:)();
  v144 = swift_allocObject();
  *(v144 + 16) = v1073;
  *(v144 + 56) = v1015;
  *(v144 + 64) = &protocol witness table for SettingsBundle;
  sub_10000EE0C((v144 + 32));
  static SettingsBundle.appLaunchUpsell.getter();
  Group.init(title:footer:_:)();
  v1007 = 5 * v135;
  v145 = v1058;
  v970 = v1058 + 5 * v135;
  v1011 = swift_allocObject();
  *(v1011 + 16) = v1031;
  v146 = swift_allocObject();
  v1026 = xmmword_10003EDE0;
  v1018 = v146;
  *(v146 + 1) = xmmword_10003EDE0;
  v1008 = 8 * v135;
  v972 = 7 * v135;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_10003FA40;
  v969 = v147;
  v1035 = (v147 + v145);
  v1064 = "Bundle IAP presets";
  v148 = swift_allocObject();
  *(v148 + 16) = v1031;
  static Settings.Analytics2.Debugging.sessionName.getter();
  v149 = v1084;
  v140(v138, v1084, v139);
  v150 = v1045;
  v151 = Item<>.init(_:label:resetBehavior:actions:)();
  v152 = v1033;
  *(v148 + 56) = v150;
  *(v148 + 64) = v152;
  *(v148 + 32) = v151;
  static Settings.Analytics2.Debugging.batchDebugging.getter();
  v153 = v1061;
  v154 = v1080;
  v155 = v1078;
  v156 = v1075;
  (v1075)(v1061, v1080, v1078);
  v1071(v1079, v149, v1074);
  v157 = v1081;
  v158 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v159 = v1070;
  *(v148 + 96) = v157;
  *(v148 + 104) = v159;
  *(v148 + 72) = v158;
  static Settings.Analytics2.Debugging.batchSize.getter();
  v160 = v153;
  v161 = v153;
  v162 = v154;
  v156(v160, v154, v155);
  v163 = v1048;
  v164 = v1084;
  v1034(v1048, v1084, v1044);
  v165 = v1051;
  v166 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v167 = v1030;
  *(v148 + 136) = v165;
  *(v148 + 144) = v167;
  *(v148 + 112) = v166;
  v1062 = static Settings.Analytics2.Debugging.maxUploadRetryCount.getter();
  v1053 = "se settings to take effect";
  v168 = swift_allocObject();
  *(v168 + 16) = v1082;
  *(v168 + 32) = static SettingActions.restart.getter();
  v169 = v161;
  v170 = v161;
  v171 = v1075;
  (v1075)(v170, v162, v155);
  v1034(v163, v164, v1044);
  v172 = v169;
  v173 = v1051;
  v174 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v148 + 176) = v173;
  *(v148 + 184) = v167;
  *(v148 + 152) = v174;
  static Settings.Analytics2.Debugging.disableAnalytics.getter();
  v175 = v1078;
  v171(v172, v162, v1078);
  v1071(v1079, v164, v1074);
  v176 = v1081;
  v177 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v178 = v1070;
  *(v148 + 216) = v176;
  *(v148 + 224) = v178;
  *(v148 + 192) = v177;
  Group.init(title:footer:_:)();
  v179 = swift_allocObject();
  *(v179 + 16) = v1073;
  sub_100036AFC(0, &qword_100050570, &type metadata for Double, &protocol witness table for Double, v1065);
  v181 = v180;
  static Settings.Identification.adIdentifierRotation.getter();
  v171(v172, v1080, v175);
  v1064 = *(v1066 + 104);
  v1066 += 104;
  (v1064)(v1049, v164, v1068);
  v1065 = v181;
  v182 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v179 + 56) = v181;
  v1062 = sub_100036A98(&qword_100050578, &qword_100050570, &type metadata for Double, &protocol witness table for Double);
  *(v179 + 64) = v1062;
  *(v179 + 32) = v182;
  Group.init(title:footer:_:)();
  v183 = swift_allocObject();
  *(v183 + 16) = v1073;
  sub_100036B50(0);
  v185 = v184;
  static Settings.Analytics2.Instrumentation.ads.getter();
  v186 = *(v1041 + 104);
  v1041 += 104;
  v1027 = v186;
  v186(v1023, v164, v1042);
  v1028 = sub_100037434(&qword_100050588, &type metadata accessor for FeatureState, &protocol conformance descriptor for FeatureState);
  v187 = Item<>.init(_:label:resetBehavior:actions:)();
  v1053 = v185;
  *(v183 + 56) = v185;
  v1037 = sub_100037434(&qword_100050590, sub_100036B50, &protocol conformance descriptor for Item<A>);
  *(v183 + 64) = v1037;
  *(v183 + 32) = v187;
  Group.init(title:footer:_:)();
  v188 = swift_allocObject();
  *(v188 + 16) = v1073;
  static Settings.Blueprint.Impressions.scrollDelta.getter();
  v189 = swift_allocObject();
  *(v189 + 16) = v1082;
  *(v189 + 32) = static SettingActions.restart.getter();
  v190 = v1080;
  (v1075)(v172, v1080, v1078);
  (v1064)(v1049, v1084, v1068);
  v191 = v1065;
  v192 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v193 = v1062;
  *(v188 + 56) = v191;
  *(v188 + 64) = v193;
  *(v188 + 32) = v192;
  Group.init(title:footer:_:)();
  *&v1052 = "Blueprint Scroll Delta";
  v968 = static Settings.Analytics2.Debugging.jitterOverrides.getter();
  v194 = swift_allocObject();
  v1032 = xmmword_10003EE10;
  *(v194 + 16) = xmmword_10003EE10;
  v1036 = type metadata accessor for Settings.Analytics2.Debugging.Jitter();
  v967 = static Settings.Analytics2.Debugging.Jitter.enablement.getter();
  v195 = swift_allocObject();
  *(v195 + 16) = v1082;
  *(v195 + 32) = static SettingActions.restart.getter();
  v196 = v190;
  v197 = v1075;
  (v1075)(v172, v196, v1078);
  v198 = v1084;
  v1071(v1079, v1084, v1074);
  v199 = v1081;
  v200 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v201 = v1070;
  *(v194 + 56) = v199;
  *(v194 + 64) = v201;
  *(v194 + 32) = v200;
  v967 = static Settings.Analytics2.Debugging.Jitter.lowerBound.getter();
  v202 = swift_allocObject();
  *(v202 + 16) = v1082;
  *(v202 + 32) = static SettingActions.restart.getter();
  v197(v172, v1080, v1078);
  v203 = v1049;
  v204 = v1068;
  v205 = v1064;
  (v1064)(v1049, v198, v1068);
  v206 = v1065;
  v207 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v208 = v1062;
  *(v194 + 96) = v206;
  *(v194 + 104) = v208;
  *(v194 + 72) = v207;
  v1036 = static Settings.Analytics2.Debugging.Jitter.upperBound.getter();
  v209 = swift_allocObject();
  *(v209 + 16) = v1082;
  *(v209 + 32) = static SettingActions.restart.getter();
  (v1075)(v172, v1080, v1078);
  (v205)(v203, v1084, v204);
  v210 = v1065;
  v211 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v194 + 136) = v210;
  *(v194 + 144) = v208;
  *(v194 + 112) = v211;
  v1036 = 0xD000000000000010;
  Group.init(title:footer:group:_:)();
  v212 = swift_allocObject();
  v1052 = xmmword_10003EE00;
  *(v212 + 16) = xmmword_10003EE00;
  v966 = "Upper Bound (sec)";
  swift_getObjectType();
  v213 = v978;
  dispatch thunk of PrivacyValidationProviderType.privacyValidation.getter();
  LOBYTE(v210) = PrivacyValidation.isEnabled.getter();
  v214 = *(v979 + 8);
  v215 = v1056;
  v214(v213, v1056);
  v216 = v210 & 1;
  v217 = v1021;
  *v1021 = v216;
  v218 = *(v1050 + 104);
  LODWORD(v968) = enum case for DebugModel.BOOL(_:);
  v1050 += 104;
  v967 = v218;
  v218(v217);
  *(v212 + 56) = v1083;
  v219 = sub_100037434(&qword_100050598, &type metadata accessor for DebugItem, &protocol conformance descriptor for DebugItem);
  *(v212 + 64) = v219;
  v979 = v212;
  sub_10000EE0C((v212 + 32));
  DebugItem.init(title:model:)();
  v220 = v1058;
  v221 = swift_allocObject();
  *(v221 + 16) = v1026;
  v966 = v221;
  v222 = v221 + v220;
  dispatch thunk of PrivacyValidationProviderType.privacyValidation.getter();
  v223 = PrivacyValidation.denylistDescriptors.getter();
  v214(v213, v215);
  KeyPath = swift_getKeyPath();

  sub_100036BEC(v223, sub_100036BE4, KeyPath);

  v1056 = v222;
  Group.init(title:footer:_:)();
  v225 = AppConfiguration.analyticsDenylistDescriptorsPublic.getter();
  v226 = *(v225 + 16);
  if (v226)
  {
    v1085 = &_swiftEmptyArrayStorage;
    sub_100029980(0, v226, 0);
    v227 = v1085;
    v228 = (v1020 + 16);
    v229 = (v1020 + 8);
    v978 = v225;
    v230 = v225 + 40;
    v231 = v965;
    do
    {
      String.denylistDescriptorValueDebugItem.getter();
      v1085 = v227;
      v233 = v227[2];
      v232 = v227[3];
      if (v233 >= v232 >> 1)
      {
        sub_100029980((v232 > 1), v233 + 1, 1);
      }

      v234 = v1083;
      v1087 = v1083;
      v1088 = v219;
      v235 = sub_10000EE0C(&v1086);
      (*v228)(v235, v231, v234);
      v227 = v1085;
      v1085[2] = v233 + 1;
      sub_1000061A0(&v1086, &v227[5 * v233 + 4]);
      (*v229)(v231, v234);
      v230 += 16;
      --v226;
    }

    while (v226);
  }

  Group.init(title:footer:_:)();
  v236 = AppConfiguration.analyticsDenylistDescriptorsSeed.getter();
  v237 = *(v236 + 16);
  v238 = v980;
  if (v237)
  {
    v1085 = &_swiftEmptyArrayStorage;
    sub_100029980(0, v237, 0);
    v239 = v1085;
    v240 = (v1020 + 16);
    v241 = (v1020 + 8);
    v978 = v236;
    v242 = v236 + 40;
    do
    {
      String.denylistDescriptorValueDebugItem.getter();
      v1085 = v239;
      v244 = v239[2];
      v243 = v239[3];
      if (v244 >= v243 >> 1)
      {
        sub_100029980((v243 > 1), v244 + 1, 1);
      }

      v245 = v1083;
      v1087 = v1083;
      v1088 = v219;
      v246 = sub_10000EE0C(&v1086);
      (*v240)(v246, v238, v245);
      v239 = v1085;
      v1085[2] = v244 + 1;
      sub_1000061A0(&v1086, &v239[5 * v244 + 4]);
      (*v241)(v238, v245);
      v242 += 16;
      --v237;
    }

    while (v237);
  }

  Group.init(title:footer:_:)();
  v247 = AppConfiguration.analyticsDenylistDescriptorsInternal.getter();
  v248 = *(v247 + 16);
  v249 = v981;
  if (v248)
  {
    v1085 = &_swiftEmptyArrayStorage;
    sub_100029980(0, v248, 0);
    v250 = v1085;
    v251 = (v1020 + 16);
    v252 = (v1020 + 8);
    v1020 = v247;
    v253 = v247 + 40;
    do
    {
      String.denylistDescriptorValueDebugItem.getter();
      v1085 = v250;
      v255 = v250[2];
      v254 = v250[3];
      if (v255 >= v254 >> 1)
      {
        sub_100029980((v254 > 1), v255 + 1, 1);
      }

      v256 = v1083;
      v1087 = v1083;
      v1088 = v219;
      v257 = sub_10000EE0C(&v1086);
      (*v251)(v257, v249, v256);
      v250 = v1085;
      v1085[2] = v255 + 1;
      sub_1000061A0(&v1086, &v250[5 * v255 + 4]);
      (*v252)(v249, v256);
      v253 += 16;
      --v248;
    }

    while (v248);
  }

  Group.init(title:footer:_:)();
  v258 = type metadata accessor for Page();
  v259 = v979;
  *(v979 + 96) = v258;
  *(v259 + 104) = &protocol witness table for Page;
  v260 = v258;
  v1056 = v258;
  sub_10000EE0C((v259 + 72));
  Page.init(title:_:)();
  Group.init(title:footer:_:)();
  v261 = swift_allocObject();
  *(v261 + 16) = v1073;
  v262 = AppSessionManager.wasPriorSessionCrashDetected.getter();
  v263 = v1021;
  *v1021 = v262 & 1;
  v967(v263, v968, v1022);
  *(v261 + 56) = v1083;
  *(v261 + 64) = v219;
  sub_10000EE0C((v261 + 32));
  DebugItem.init(title:model:)();
  Group.init(title:footer:_:)();
  v264 = v1018;
  v1018[7] = v260;
  v264[8] = &protocol witness table for Page;
  sub_10000EE0C(v264 + 4);
  Page.init(title:_:)();
  v265 = v1058;
  v1050 = v1058 + v1054;
  *(swift_allocObject() + 16) = v1073;
  v266 = swift_allocObject();
  *(v266 + 16) = v1073;
  sub_100036F50(0);
  v268 = v267;
  v1083 = static Settings.Container.testSuite.getter();
  v269 = swift_allocObject();
  *(v269 + 16) = v1082;
  *(v269 + 32) = static SettingActions.restart.getter();
  v270 = v1084;
  (*(v982 + 104))(v984, v1084, v983);
  sub_100037434(&qword_1000505A8, &type metadata accessor for Settings.Container.TestSuite, &protocol conformance descriptor for Settings.Container.TestSuite);
  v271 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v266 + 56) = v268;
  v1035 = &protocol conformance descriptor for Item<A>;
  *(v266 + 64) = sub_100037434(&qword_1000505B0, sub_100036F50, &protocol conformance descriptor for Item<A>);
  *(v266 + 32) = v271;
  Group.init(title:footer:_:)();
  v264[12] = v1056;
  v264[13] = &protocol witness table for Page;
  sub_10000EE0C(v264 + 9);
  Page.init(title:_:)();
  v1020 = v265 + v1046;
  v272 = swift_allocObject();
  *(v272 + 16) = v1052;
  v1083 = v272;
  v273 = (v272 + v265);
  v274 = swift_allocObject();
  *(v274 + 16) = v1073;
  sub_100036FE4(0);
  v276 = v275;
  static Settings.News.newsProvider.getter();
  v277 = swift_allocObject();
  *(v277 + 16) = v1082;
  *(v277 + 32) = static SettingActions.restart.getter();
  (*(v985 + 104))(v987, v270, v986);
  sub_100037434(&qword_1000505C0, &type metadata accessor for NewsProvider, &protocol conformance descriptor for NewsProvider);
  v278 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v274 + 56) = v276;
  *(v274 + 64) = sub_100037434(&qword_1000505C8, sub_100036FE4, v1035);
  *(v274 + 32) = v278;
  v1035 = v273;
  Group.init(title:footer:_:)();
  v279 = swift_allocObject();
  *(v279 + 16) = v1032;
  sub_100037078(0);
  v281 = v280;
  static Settings.News.appleNewsEnvironment.getter();
  v282 = swift_allocObject();
  *(v282 + 16) = v1082;
  if (qword_10004EA60 != -1)
  {
    swift_once();
  }

  v283 = qword_100051BE0;
  *(v282 + 32) = qword_100051BE0;
  v284 = v1084;
  (*(v988 + 104))(v1019, v1084, v989);
  sub_100037434(&qword_1000505D8, &type metadata accessor for NewsEnvironment, &protocol conformance descriptor for NewsEnvironment);
  swift_retain_n();
  v285 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v279 + 56) = v281;
  *(v279 + 64) = sub_100037434(&qword_1000505E0, sub_100037078, &protocol conformance descriptor for Item<A>);
  *(v279 + 32) = v285;
  v1021 = static Settings.News.disableEdgeCachedFeeds.getter();
  v1019 = "Container Environment";
  v286 = swift_allocObject();
  *(v286 + 16) = v1082;
  v287 = v283;
  *(v286 + 32) = v283;
  v288 = v1061;
  v289 = v1078;
  v290 = v1075;
  (v1075)(v1061, v1080, v1078);
  v291 = v1079;
  v1071(v1079, v284, v1074);

  v292 = v288;
  v293 = v1081;
  v294 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v295 = v1070;
  *(v279 + 96) = v293;
  *(v279 + 104) = v295;
  *(v279 + 72) = v294;
  v1021 = static Settings.News.disableEdgeCachedTopStories.getter();
  v1019 = "Disable Edge-Cached Feeds";
  v296 = swift_allocObject();
  *(v296 + 16) = v1082;
  *(v296 + 32) = v287;
  v290(v292, v1080, v289);
  v297 = v1084;
  v1071(v291, v1084, v1074);
  v1022 = v287;

  v298 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v279 + 136) = v293;
  *(v279 + 144) = v295;
  *(v279 + 112) = v298;
  Group.init(title:footer:_:)();
  v299 = v1018;
  v1018[17] = v1056;
  v299[18] = &protocol witness table for Page;
  sub_10000EE0C(v299 + 14);
  Page.init(title:_:)();
  sub_10003710C(0, &qword_1000505E8, &type metadata accessor for Item);
  v301 = v300;
  v302 = v297;
  if (qword_10004EA70 != -1)
  {
    swift_once();
  }

  v1019 = (v1011 + v1058);
  v303 = swift_allocObject();
  *(v303 + 16) = v1082;

  *(v303 + 32) = static SettingActions.restart.getter();
  (*(v990 + 104))(v991, v297, v992);
  sub_10001CD18();
  v304 = Item<>.init(_:label:resetBehavior:actions:)();
  v299[22] = v301;
  v299[23] = sub_100037170();
  v299[19] = v304;
  Group.init(title:footer:_:)();
  v305 = swift_allocObject();
  *(v305 + 16) = xmmword_10003FA50;
  static Settings.Features.enableAIAttribution.getter();
  v306 = swift_allocObject();
  *(v306 + 16) = v1082;
  *(v306 + 32) = static SettingActions.restart.getter();
  v307 = v1023;
  v308 = v297;
  v309 = v1042;
  v1027(v1023, v308, v1042);
  v310 = v1053;
  v311 = Item<>.init(_:label:resetBehavior:actions:)();
  v312 = v1037;
  *(v305 + 56) = v310;
  *(v305 + 64) = v312;
  *(v305 + 32) = v311;
  v1083 = static Settings.Features.appReviewPrompt.getter();
  v313 = swift_allocObject();
  *(v313 + 16) = v1082;
  *(v313 + 32) = static SettingActions.restart.getter();
  v314 = v309;
  v315 = v1027;
  v1027(v307, v302, v314);
  v316 = v1053;
  v317 = Item<>.init(_:label:resetBehavior:actions:)();
  v318 = v1037;
  *(v305 + 96) = v316;
  *(v305 + 104) = v318;
  *(v305 + 72) = v317;
  v1083 = static Settings.Features.narrativeAudio.getter();
  v319 = swift_allocObject();
  *(v319 + 16) = v1082;
  *(v319 + 32) = static SettingActions.restart.getter();
  v320 = v1084;
  v321 = v1042;
  v315(v307, v1084, v1042);
  v322 = v1053;
  v323 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v305 + 136) = v322;
  *(v305 + 144) = v318;
  *(v305 + 112) = v323;
  v1083 = static Settings.Features.configurableOffers.getter();
  v324 = swift_allocObject();
  *(v324 + 16) = v1082;
  *(v324 + 32) = static SettingActions.restart.getter();
  v325 = v320;
  v326 = v1027;
  v1027(v307, v325, v321);
  v327 = v1053;
  v328 = Item<>.init(_:label:resetBehavior:actions:)();
  v329 = v1037;
  *(v305 + 176) = v327;
  *(v305 + 184) = v329;
  *(v305 + 152) = v328;
  v1083 = static Settings.Features.cipActivation.getter();
  v330 = swift_allocObject();
  *(v330 + 16) = v1082;
  *(v330 + 32) = static SettingActions.restart.getter();
  v326(v307, v1084, v321);
  v331 = v326;
  v332 = v1053;
  v333 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v305 + 216) = v332;
  *(v305 + 224) = v329;
  *(v305 + 192) = v333;
  v1083 = static Settings.NewsFeedModule.Features.useFeedDifferentiationMode.getter();
  v1035 = "Configurable Offers";
  v334 = swift_allocObject();
  *(v334 + 16) = v1082;
  *(v334 + 32) = static SettingActions.restart.getter();
  v335 = v1084;
  v336 = v1042;
  v331(v307, v1084, v1042);
  v337 = v1053;
  v338 = Item<>.init(_:label:resetBehavior:actions:)();
  v339 = v1037;
  *(v305 + 256) = v337;
  *(v305 + 264) = v339;
  *(v305 + 232) = v338;
  v1083 = static Settings.Features.symbolsInArticles.getter();
  v1035 = "Feed 3.1: Differentiation Mode";
  v340 = swift_allocObject();
  *(v340 + 16) = v1082;
  *(v340 + 32) = static SettingActions.restart.getter();
  v341 = v335;
  v342 = v1027;
  v1027(v307, v341, v336);
  v343 = v1053;
  v344 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v305 + 296) = v343;
  *(v305 + 304) = v339;
  *(v305 + 272) = v344;
  v1083 = static Settings.Features.forYouFeedConfigRequests.getter();
  v1035 = "Follow Symbols in Articles";
  v345 = swift_allocObject();
  *(v345 + 16) = v1082;
  *(v345 + 32) = static SettingActions.restart.getter();
  v346 = v1084;
  v347 = v1042;
  v342(v307, v1084, v1042);
  v348 = v1053;
  v349 = Item<>.init(_:label:resetBehavior:actions:)();
  v350 = v1037;
  *(v305 + 336) = v348;
  *(v305 + 344) = v350;
  *(v305 + 312) = v349;
  v1083 = static Settings.Features.newsFreeExperience.getter();
  v351 = swift_allocObject();
  *(v351 + 16) = v1082;
  *(v351 + 32) = static SettingActions.restart.getter();
  v352 = v1027;
  v1027(v307, v346, v347);
  v353 = v1053;
  v354 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v305 + 376) = v353;
  *(v305 + 384) = v350;
  *(v305 + 352) = v354;
  v1083 = static Settings.Features.nffFeeds.getter();
  v355 = swift_allocObject();
  *(v355 + 16) = v1082;
  *(v355 + 32) = static SettingActions.restart.getter();
  v356 = v1042;
  v352(v307, v1084, v1042);
  v357 = v1053;
  v358 = Item<>.init(_:label:resetBehavior:actions:)();
  v359 = v1037;
  *(v305 + 416) = v357;
  *(v305 + 424) = v359;
  *(v305 + 392) = v358;
  v1083 = static Settings.Features.paidBundleViaOffer.getter();
  v1035 = "News-Free Experience";
  v360 = swift_allocObject();
  *(v360 + 16) = v1082;
  *(v360 + 32) = static SettingActions.restart.getter();
  v361 = v1023;
  v362 = v1084;
  v363 = v352;
  v352(v1023, v1084, v356);
  v364 = v1053;
  v365 = Item<>.init(_:label:resetBehavior:actions:)();
  v366 = v1037;
  *(v305 + 456) = v364;
  *(v305 + 464) = v366;
  *(v305 + 432) = v365;
  static Settings.Features.showYahooNewsAttribution.getter();
  v367 = v1042;
  v352(v361, v362, v1042);
  v368 = v1053;
  v369 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v305 + 496) = v368;
  *(v305 + 504) = v366;
  *(v305 + 472) = v369;
  static Settings.Features.widgetNewsCuration.getter();
  v363(v361, v362, v367);
  v370 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v305 + 536) = v368;
  v371 = v1037;
  *(v305 + 544) = v1037;
  *(v305 + 512) = v370;
  static Settings.Features.displayPreMarketQuote.getter();
  v372 = v1084;
  v363(v361, v1084, v367);
  v373 = v1053;
  v374 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v305 + 576) = v373;
  *(v305 + 584) = v371;
  *(v305 + 552) = v374;
  v1083 = static Settings.Features.userEventHistoryCollection.getter();
  v375 = swift_allocObject();
  *(v375 + 16) = v1082;
  *(v375 + 32) = static SettingActions.restart.getter();
  v363(v361, v372, v1042);
  v376 = v1053;
  v377 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v305 + 616) = v376;
  *(v305 + 624) = v371;
  *(v305 + 592) = v377;
  Group.init(title:footer:_:)();
  v1021 = swift_allocObject();
  *(v1021 + 1) = v1026;
  v378 = v1058;
  v379 = swift_allocObject();
  v1035 = v379;
  *(v379 + 1) = v1032;
  v992 = &v379[v378];
  v1083 = "Collect User Event History";
  v1018 = static Settings.ForYou.configOverrides.getter();
  v380 = swift_allocObject();
  *(v380 + 16) = v1073;
  type metadata accessor for Settings.ForYou.ConfigOverrides();
  static Settings.ForYou.ConfigOverrides.url.getter();
  v381 = swift_allocObject();
  *(v381 + 16) = v1082;
  *(v381 + 32) = static SettingActions.restart.getter();
  v1029(v1039, v372, v1040);
  v382 = v1045;
  v383 = Item<>.init(_:label:resetBehavior:actions:)();
  v384 = v1033;
  *(v380 + 56) = v382;
  *(v380 + 64) = v384;
  *(v380 + 32) = v383;
  Group.init(title:footer:group:_:)();
  v385 = swift_allocObject();
  *(v385 + 16) = v1026;
  static Settings.News.disableTopStories.getter();
  v386 = swift_allocObject();
  *(v386 + 16) = v1082;
  *(v386 + 32) = static SettingActions.restart.getter();
  v387 = v1061;
  v388 = v1078;
  (v1075)(v1061, v1080, v1078);
  v1071(v1079, v1084, v1074);
  v389 = v1081;
  v390 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v391 = v1070;
  *(v385 + 56) = v389;
  *(v385 + 64) = v391;
  *(v385 + 32) = v390;
  v1018 = static Settings.News.enableForYouGroupSizeOverride.getter();
  v991 = "Top Stories Disabled";
  v392 = swift_allocObject();
  *(v392 + 16) = v1082;
  v393 = v1022;
  *(v392 + 32) = v1022;
  v394 = v1080;
  v395 = v1075;
  (v1075)(v387, v1080, v388);
  v1071(v1079, v1084, v1074);

  v396 = v1081;
  v397 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v398 = v1070;
  *(v385 + 96) = v396;
  *(v385 + 104) = v398;
  *(v385 + 72) = v397;
  v1018 = static Settings.News.forYouGroupSizeOverride.getter();
  v991 = "Override For You Group Size";
  v399 = swift_allocObject();
  *(v399 + 16) = v1082;
  *(v399 + 32) = v393;
  v395(v387, v394, v388);
  v400 = v1084;
  v1034(v1048, v1084, v1044);

  v401 = v1051;
  v402 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v403 = v1030;
  *(v385 + 136) = v401;
  *(v385 + 144) = v403;
  *(v385 + 112) = v402;
  static Settings.ForYou.Ticker.tapToDismiss.getter();
  v395(v387, v1080, v388);
  v404 = v1074;
  v1071(v1079, v400, v1074);
  v405 = v1081;
  v406 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v407 = v1070;
  *(v385 + 176) = v405;
  *(v385 + 184) = v407;
  *(v385 + 152) = v406;
  Group.init(title:footer:_:)();
  v408 = swift_allocObject();
  *(v408 + 16) = v1073;
  sub_1000371E4(0);
  v410 = v409;
  static Settings.ForYou.Feed.autoRefreshStrategy.getter();
  v989 = "Tap To Dismiss Card";
  v411 = *(v1055 + 13);
  v1055 += 104;
  v991 = v411;
  (v411)(v1013, v400, v1014);
  v990 = sub_100037434(&qword_100050600, &type metadata accessor for FeedAutoRefreshStrategy, &protocol conformance descriptor for FeedAutoRefreshStrategy);
  v988 = v410;
  v412 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v408 + 56) = v410;
  v1018 = &protocol conformance descriptor for Item<A>;
  v987 = sub_100037434(&qword_100050608, sub_1000371E4, &protocol conformance descriptor for Item<A>);
  *(v408 + 64) = v987;
  *(v408 + 32) = v412;
  Group.init(title:footer:_:)();
  v413 = v1021;
  *(v1021 + 7) = v1056;
  *(v413 + 8) = &protocol witness table for Page;
  sub_10000EE0C(v413 + 4);
  Page.init(title:_:)();
  v414 = swift_allocObject();
  v992 = v414;
  *(v414 + 16) = v1031;
  v1035 = (v414 + v1058);
  static Settings.StockFeed.configOverrides.getter();
  v415 = swift_allocObject();
  *(v415 + 16) = v1073;
  type metadata accessor for Settings.StockFeed.ConfigOverrides();
  static Settings.StockFeed.ConfigOverrides.url.getter();
  v416 = v404;
  v417 = swift_allocObject();
  *(v417 + 16) = v1082;
  *(v417 + 32) = static SettingActions.restart.getter();
  v418 = v1084;
  v1029(v1039, v1084, v1040);
  v419 = v1045;
  v420 = Item<>.init(_:label:resetBehavior:actions:)();
  v421 = v1033;
  *(v415 + 56) = v419;
  *(v415 + 64) = v421;
  *(v415 + 32) = v420;
  Group.init(title:footer:group:_:)();
  v422 = swift_allocObject();
  *(v422 + 16) = v1073;
  static Settings.ChartOptions.showYTD.getter();
  v423 = v1061;
  (v1075)(v1061, v1080, v1078);
  v424 = v1071;
  v1071(v1079, v418, v416);
  v425 = v1081;
  v426 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v427 = v1070;
  *(v422 + 56) = v425;
  *(v422 + 64) = v427;
  *(v422 + 32) = v426;
  Group.init(title:footer:_:)();
  v428 = swift_allocObject();
  *(v428 + 16) = v1032;
  v986 = static Settings.StockFeed.Layout.Chunking.overrideEnabled.getter();
  v429 = v1078;
  v430 = v1075;
  (v1075)(v423, v1080, v1078);
  v424(v1079, v1084, v416);
  v431 = v1081;
  v432 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v433 = v1070;
  *(v428 + 56) = v431;
  *(v428 + 64) = v433;
  *(v428 + 32) = v432;
  static Settings.StockFeed.Layout.Chunking.overrideChunkSize.getter();
  v434 = v1080;
  v435 = v429;
  v430(v423, v1080, v429);
  v436 = v1084;
  v1034(v1048, v1084, v1044);
  v437 = v1051;
  v438 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v439 = v1030;
  *(v428 + 96) = v437;
  *(v428 + 104) = v439;
  *(v428 + 72) = v438;
  static Settings.StockFeed.Layout.overrideVerticalQuoteDetailLayout.getter();
  v430(v423, v434, v435);
  v1071(v1079, v436, v1074);
  v440 = v1081;
  v441 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v442 = v1070;
  *(v428 + 136) = v440;
  *(v428 + 144) = v442;
  *(v428 + 112) = v441;
  Group.init(title:footer:_:)();
  v443 = swift_allocObject();
  *(v443 + 16) = v1073;
  static Settings.StockFeed.Feed.autoRefreshStrategy.getter();
  (v991)(v1013, v436, v1014);
  v444 = v988;
  v445 = Item<>.init(_:label:resetBehavior:actions:)();
  v446 = v987;
  *(v443 + 56) = v444;
  *(v443 + 64) = v446;
  *(v443 + 32) = v445;
  Group.init(title:footer:_:)();
  v447 = swift_allocObject();
  *(v447 + 16) = v1073;
  static Settings.StockFeed.Toolbar.overrideAlwaysShowUpdatedLabelEnabled.getter();
  (v1075)(v423, v1080, v1078);
  v1071(v1079, v436, v1074);
  v448 = v1081;
  v449 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v447 + 56) = v448;
  *(v447 + 64) = v442;
  *(v447 + 32) = v449;
  Group.init(title:footer:_:)();
  v450 = v1056;
  v451 = v1021;
  *(v1021 + 12) = v1056;
  *(v451 + 13) = &protocol witness table for Page;
  sub_10000EE0C(v451 + 9);
  Page.init(title:_:)();
  v1055 = "Always show Updated label";
  *(swift_allocObject() + 16) = v1073;
  v1035 = static Settings.NewsArticlesModules.EndOfArticleFeed.configOverrides.getter();
  v452 = swift_allocObject();
  *(v452 + 16) = v1073;
  type metadata accessor for Settings.NewsArticlesModules.EndOfArticleFeed.ConfigOverrides();
  static Settings.NewsArticlesModules.EndOfArticleFeed.ConfigOverrides.url.getter();
  v453 = swift_allocObject();
  *(v453 + 16) = v1082;
  *(v453 + 32) = static SettingActions.restart.getter();
  v1029(v1039, v1084, v1040);
  v454 = v1045;
  v455 = Item<>.init(_:label:resetBehavior:actions:)();
  v456 = v1033;
  *(v452 + 56) = v454;
  *(v452 + 64) = v456;
  *(v452 + 32) = v455;
  v457 = v1058;
  Group.init(title:footer:group:_:)();
  v458 = v1021;
  *(v1021 + 17) = v450;
  *(v458 + 18) = &protocol witness table for Page;
  sub_10000EE0C(v458 + 14);
  Page.init(title:_:)();
  v459 = swift_allocObject();
  v1014 = v459;
  *(v459 + 16) = v971;
  v1035 = (v459 + v457);
  v460 = swift_allocObject();
  *(v460 + 16) = v1052;
  v1083 = static Settings.Welcome.Version.latestCompleted.getter();
  v1055 = "End of Article Feed";
  v461 = swift_allocObject();
  *(v461 + 16) = v1082;
  *(v461 + 32) = static SettingActions.restart.getter();
  v462 = v1075;
  (v1075)(v423, v1080, v1078);
  v463 = v1044;
  v464 = v1034;
  v1034(v1048, v1084, v1044);
  v465 = v1051;
  v466 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v467 = v1030;
  *(v460 + 56) = v465;
  *(v460 + 64) = v467;
  *(v460 + 32) = v466;
  v1083 = static Settings.Welcome.Version.debugLatestCompleted.getter();
  v1055 = "Latest Completed";
  v468 = swift_allocObject();
  *(v468 + 16) = v1082;
  *(v468 + 32) = static SettingActions.restart.getter();
  v462(v1061, v1080, v1078);
  v464(v1048, v1084, v463);
  v469 = v1051;
  v470 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v460 + 96) = v469;
  *(v460 + 104) = v467;
  *(v460 + 72) = v470;
  Group.init(title:footer:_:)();
  v1013 = "Debug Latest Completed";
  v471 = swift_allocObject();
  *(v471 + 16) = v1026;
  static Settings.Welcome.Animations.WelcomeToStocksScaleUp.initialScale.getter();
  v472 = v993;
  *v993 = 1008981770;
  LODWORD(v1083) = enum case for Item.RangeControlType.stepper<A>(_:);
  v473 = *(v1057 + 13);
  v1057 += 104;
  v1055 = v473;
  v474 = v1059;
  (v473)(v472);
  v475 = v1049;
  v476 = v1084;
  v477 = v1064;
  (v1064)(v1049, v1084, v1068);
  v478 = v1065;
  v479 = Item<>.init(_:label:resetBehavior:type:)();
  v480 = v1062;
  *(v471 + 56) = v478;
  *(v471 + 64) = v480;
  v481 = v480;
  *(v471 + 32) = v479;
  v992 = static Settings.Welcome.Animations.WelcomeToStocksScaleUp.mass.getter();
  *v472 = 1036831949;
  (v1055)(v472, v1083, v474);
  (v477)(v475, v476, v1068);
  v482 = Item<>.init(_:label:resetBehavior:type:)();
  *(v471 + 96) = v478;
  *(v471 + 104) = v481;
  *(v471 + 72) = v482;
  v992 = static Settings.Welcome.Animations.WelcomeToStocksScaleUp.damping.getter();
  v483 = v1061;
  v484 = v1080;
  v485 = v1075;
  (v1075)(v1061, v1080, v1078);
  v486 = v1068;
  (v1064)(v475, v476, v1068);
  v487 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v488 = v1062;
  *(v471 + 136) = v478;
  *(v471 + 144) = v488;
  *(v471 + 112) = v487;
  v992 = static Settings.Welcome.Animations.WelcomeToStocksScaleUp.stiffness.getter();
  v485(v483, v484, v1078);
  v489 = v1084;
  (v1064)(v475, v1084, v486);
  v490 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v471 + 176) = v478;
  *(v471 + 184) = v488;
  *(v471 + 152) = v490;
  Group.init(title:footer:_:)();
  v1013 = "Welcome to Stocks Scale Up";
  v491 = swift_allocObject();
  *(v491 + 16) = v1031;
  static Settings.Welcome.Animations.WelcomeToStocksFadeIn.duration.getter();
  *v472 = 1036831949;
  v492 = v1083;
  v493 = v1059;
  v494 = v1055;
  (v1055)(v472, v1083, v1059);
  (v1064)(v475, v489, v1068);
  v495 = Item<>.init(_:label:resetBehavior:type:)();
  v496 = v1062;
  *(v491 + 56) = v478;
  *(v491 + 64) = v496;
  *(v491 + 32) = v495;
  static Settings.Welcome.Animations.WelcomeToStocksFadeIn.controlOneX.getter();
  *v472 = 1008981770;
  (v494)(v472, v492, v493);
  v497 = v1084;
  v498 = v1068;
  (v1064)(v475, v1084, v1068);
  v499 = v475;
  v500 = v1065;
  v501 = Item<>.init(_:label:resetBehavior:type:)();
  *(v491 + 96) = v500;
  *(v491 + 104) = v496;
  *(v491 + 72) = v501;
  static Settings.Welcome.Animations.WelcomeToStocksFadeIn.controlOneY.getter();
  *v472 = 1008981770;
  v502 = v1083;
  v503 = v1055;
  (v1055)(v472, v1083, v1059);
  v504 = v1064;
  (v1064)(v499, v497, v498);
  v505 = v1065;
  v506 = Item<>.init(_:label:resetBehavior:type:)();
  v507 = v1062;
  *(v491 + 136) = v505;
  *(v491 + 144) = v507;
  *(v491 + 112) = v506;
  static Settings.Welcome.Animations.WelcomeToStocksFadeIn.controlTwoX.getter();
  *v472 = 1008981770;
  v508 = v1059;
  (v503)(v472, v502, v1059);
  v509 = v1049;
  v510 = v1084;
  (v504)(v1049, v1084, v1068);
  v511 = v504;
  v512 = v509;
  v513 = v1065;
  v514 = Item<>.init(_:label:resetBehavior:type:)();
  *(v491 + 176) = v513;
  *(v491 + 184) = v507;
  v515 = v507;
  *(v491 + 152) = v514;
  static Settings.Welcome.Animations.WelcomeToStocksFadeIn.controlTwoY.getter();
  *v472 = 1008981770;
  (v1055)(v472, v1083, v508);
  v516 = v1068;
  (v511)(v512, v510, v1068);
  v517 = v512;
  v518 = v1065;
  v519 = Item<>.init(_:label:resetBehavior:type:)();
  *(v491 + 216) = v518;
  *(v491 + 224) = v515;
  *(v491 + 192) = v519;
  Group.init(title:footer:_:)();
  v1013 = "Welcome to Stocks Fade In";
  v520 = swift_allocObject();
  *(v520 + 16) = v1010;
  v992 = static Settings.Welcome.Animations.ActivityIndicatorFadeIn.delay.getter();
  *v472 = 1008981770;
  v521 = v1083;
  v522 = v1055;
  (v1055)(v472, v1083, v508);
  v523 = v517;
  v524 = v1084;
  (v511)(v523, v1084, v516);
  v525 = v1065;
  v526 = Item<>.init(_:label:resetBehavior:type:)();
  v527 = v1062;
  *(v520 + 56) = v525;
  *(v520 + 64) = v527;
  *(v520 + 32) = v526;
  v992 = static Settings.Welcome.Animations.ActivityIndicatorFadeIn.duration.getter();
  *v472 = 1008981770;
  (v522)(v472, v521, v508);
  v528 = v1049;
  v529 = v524;
  v530 = v1068;
  (v511)(v1049, v529, v1068);
  v531 = v528;
  v532 = v1065;
  v533 = Item<>.init(_:label:resetBehavior:type:)();
  *(v520 + 96) = v532;
  *(v520 + 104) = v527;
  *(v520 + 72) = v533;
  static Settings.Welcome.Animations.ActivityIndicatorFadeIn.controlOneX.getter();
  *v472 = 1008981770;
  v534 = v1083;
  (v522)(v472, v1083, v508);
  v535 = v1084;
  (v1064)(v531, v1084, v530);
  v536 = v1065;
  v537 = Item<>.init(_:label:resetBehavior:type:)();
  v538 = v1062;
  *(v520 + 136) = v536;
  *(v520 + 144) = v538;
  *(v520 + 112) = v537;
  v992 = static Settings.Welcome.Animations.ActivityIndicatorFadeIn.controlOneY.getter();
  *v472 = 1008981770;
  (v522)(v472, v534, v1059);
  v539 = v1068;
  (v1064)(v531, v535, v1068);
  v540 = Item<>.init(_:label:resetBehavior:type:)();
  *(v520 + 176) = v536;
  *(v520 + 184) = v538;
  *(v520 + 152) = v540;
  v992 = static Settings.Welcome.Animations.ActivityIndicatorFadeIn.controlTwoX.getter();
  *v472 = 1008981770;
  v541 = v1083;
  v542 = v1059;
  (v522)(v472, v1083, v1059);
  v543 = v1084;
  (v1064)(v531, v1084, v539);
  v544 = Item<>.init(_:label:resetBehavior:type:)();
  v545 = v1062;
  *(v520 + 216) = v536;
  *(v520 + 224) = v545;
  *(v520 + 192) = v544;
  v992 = static Settings.Welcome.Animations.ActivityIndicatorFadeIn.controlTwoY.getter();
  *v472 = 1008981770;
  v546 = v542;
  v547 = v1055;
  (v1055)(v472, v541, v546);
  v548 = v539;
  v549 = v1064;
  (v1064)(v531, v543, v548);
  v550 = Item<>.init(_:label:resetBehavior:type:)();
  *(v520 + 256) = v536;
  *(v520 + 264) = v545;
  *(v520 + 232) = v550;
  Group.init(title:footer:_:)();
  v1013 = "Activity Indicator Fade In";
  v551 = swift_allocObject();
  *(v551 + 16) = v1031;
  v992 = static Settings.Welcome.Animations.SpinnerFadeOut.duration.getter();
  *v472 = 1036831949;
  v552 = v541;
  v553 = v1059;
  (v547)(v472, v552, v1059);
  v554 = v1068;
  (v549)(v531, v1084, v1068);
  v555 = Item<>.init(_:label:resetBehavior:type:)();
  v556 = v1062;
  *(v551 + 56) = v536;
  *(v551 + 64) = v556;
  *(v551 + 32) = v555;
  v992 = static Settings.Welcome.Animations.SpinnerFadeOut.controlOneX.getter();
  *v472 = 1008981770;
  v557 = v1083;
  (v547)(v472, v1083, v553);
  v558 = v1084;
  v559 = v554;
  v560 = v1064;
  (v1064)(v531, v1084, v559);
  v561 = Item<>.init(_:label:resetBehavior:type:)();
  *(v551 + 96) = v536;
  *(v551 + 104) = v556;
  *(v551 + 72) = v561;
  v992 = static Settings.Welcome.Animations.SpinnerFadeOut.controlOneY.getter();
  *v472 = 1008981770;
  v562 = v557;
  v563 = v1059;
  (v1055)(v472, v562, v1059);
  v564 = v558;
  v565 = v1068;
  (v560)(v531, v564, v1068);
  v566 = Item<>.init(_:label:resetBehavior:type:)();
  *(v551 + 136) = v536;
  *(v551 + 144) = v556;
  *(v551 + 112) = v566;
  v992 = static Settings.Welcome.Animations.SpinnerFadeOut.controlTwoX.getter();
  *v472 = 1008981770;
  v567 = v1083;
  (v1055)(v472, v1083, v563);
  v568 = v1064;
  (v1064)(v531, v1084, v565);
  v569 = Item<>.init(_:label:resetBehavior:type:)();
  *(v551 + 176) = v536;
  *(v551 + 184) = v556;
  *(v551 + 152) = v569;
  static Settings.Welcome.Animations.SpinnerFadeOut.controlTwoY.getter();
  *v472 = 1008981770;
  (v1055)(v472, v567, v1059);
  v570 = v531;
  v571 = v531;
  v572 = v1084;
  v573 = v1068;
  (v568)(v571, v1084, v1068);
  v574 = Item<>.init(_:label:resetBehavior:type:)();
  *(v551 + 216) = v536;
  *(v551 + 224) = v556;
  *(v551 + 192) = v574;
  Group.init(title:footer:_:)();
  v1013 = "Spinner Fade Out";
  v575 = swift_allocObject();
  *(v575 + 16) = v1031;
  v992 = static Settings.Welcome.Animations.AppIconFadeOut.duration.getter();
  *v472 = 1036831949;
  v576 = v1055;
  (v1055)(v472, v1083, v1059);
  (v568)(v570, v572, v573);
  v577 = Item<>.init(_:label:resetBehavior:type:)();
  v578 = v1062;
  *(v575 + 56) = v536;
  *(v575 + 64) = v578;
  *(v575 + 32) = v577;
  static Settings.Welcome.Animations.AppIconFadeOut.controlOneX.getter();
  *v472 = 1008981770;
  (v576)(v472, v1083, v1059);
  v579 = v1084;
  (v568)(v570, v1084, v573);
  v580 = v570;
  v581 = v1065;
  v582 = Item<>.init(_:label:resetBehavior:type:)();
  *(v575 + 96) = v581;
  *(v575 + 104) = v578;
  *(v575 + 72) = v582;
  static Settings.Welcome.Animations.AppIconFadeOut.controlOneY.getter();
  *v472 = 1008981770;
  v583 = v1059;
  (v576)(v472, v1083, v1059);
  (v568)(v580, v579, v1068);
  v584 = v1065;
  v585 = Item<>.init(_:label:resetBehavior:type:)();
  v586 = v1062;
  *(v575 + 136) = v584;
  *(v575 + 144) = v586;
  *(v575 + 112) = v585;
  static Settings.Welcome.Animations.AppIconFadeOut.controlTwoX.getter();
  *v472 = 1008981770;
  (v576)(v472, v1083, v583);
  v587 = v1068;
  v588 = v1064;
  (v1064)(v580, v1084, v1068);
  v589 = v1065;
  v590 = Item<>.init(_:label:resetBehavior:type:)();
  *(v575 + 176) = v589;
  *(v575 + 184) = v586;
  *(v575 + 152) = v590;
  static Settings.Welcome.Animations.AppIconFadeOut.controlTwoY.getter();
  *v472 = 1008981770;
  (v576)(v472, v1083, v1059);
  (v588)(v580, v1084, v587);
  v591 = v1065;
  v592 = Item<>.init(_:label:resetBehavior:type:)();
  *(v575 + 216) = v591;
  *(v575 + 224) = v586;
  *(v575 + 192) = v592;
  Group.init(title:footer:_:)();
  v1013 = "App Icon Fade Out";
  v593 = swift_allocObject();
  *(v593 + 16) = v1026;
  static Settings.Welcome.Animations.Page2Moves.delay.getter();
  *v472 = 1008981770;
  v594 = v1059;
  (v576)(v472, v1083, v1059);
  v595 = v580;
  v596 = v1084;
  v597 = v1068;
  v598 = v1064;
  (v1064)(v595, v1084, v1068);
  v599 = v1065;
  v600 = Item<>.init(_:label:resetBehavior:type:)();
  v601 = v1062;
  *(v593 + 56) = v599;
  *(v593 + 64) = v601;
  *(v593 + 32) = v600;
  static Settings.Welcome.Animations.Page2Moves.mass.getter();
  *v472 = 1036831949;
  (v1055)(v472, v1083, v594);
  (v598)(v595, v596, v597);
  v602 = Item<>.init(_:label:resetBehavior:type:)();
  *(v593 + 96) = v599;
  *(v593 + 104) = v601;
  *(v593 + 72) = v602;
  v1007 = static Settings.Welcome.Animations.Page2Moves.damping.getter();
  v603 = v1061;
  v604 = v1080;
  v605 = v1078;
  v606 = v1075;
  (v1075)(v1061, v1080, v1078);
  (v1064)(v595, v1084, v1068);
  v607 = v603;
  v608 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v609 = v1062;
  *(v593 + 136) = v599;
  *(v593 + 144) = v609;
  *(v593 + 112) = v608;
  static Settings.Welcome.Animations.Page2Moves.stiffness.getter();
  v606(v607, v604, v605);
  v610 = v595;
  v611 = v1068;
  (v1064)(v595, v1084, v1068);
  v612 = v1065;
  v613 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v593 + 176) = v612;
  *(v593 + 184) = v609;
  *(v593 + 152) = v613;
  Group.init(title:footer:_:)();
  v1013 = "Delay Between Animations";
  v614 = swift_allocObject();
  *(v614 + 16) = v1031;
  static Settings.Welcome.Animations.Page2FadeIns.duration.getter();
  *v472 = 1036831949;
  v615 = v1083;
  v616 = v1059;
  v617 = v1055;
  (v1055)(v472, v1083, v1059);
  (v1064)(v610, v1084, v611);
  v618 = Item<>.init(_:label:resetBehavior:type:)();
  v619 = v1062;
  *(v614 + 56) = v612;
  *(v614 + 64) = v619;
  *(v614 + 32) = v618;
  static Settings.Welcome.Animations.Page2FadeIns.controlOneX.getter();
  *v472 = 1008981770;
  (v617)(v472, v615, v616);
  v620 = v1084;
  v621 = v1068;
  v622 = v1064;
  (v1064)(v610, v1084, v1068);
  v623 = v1065;
  v624 = Item<>.init(_:label:resetBehavior:type:)();
  *(v614 + 96) = v623;
  *(v614 + 104) = v619;
  *(v614 + 72) = v624;
  static Settings.Welcome.Animations.Page2FadeIns.controlOneY.getter();
  *v472 = 1008981770;
  v625 = v1083;
  (v1055)(v472, v1083, v1059);
  (v622)(v610, v620, v621);
  v626 = v610;
  v627 = v1065;
  v628 = Item<>.init(_:label:resetBehavior:type:)();
  v629 = v1062;
  *(v614 + 136) = v627;
  *(v614 + 144) = v629;
  *(v614 + 112) = v628;
  v1009 = static Settings.Welcome.Animations.Page2FadeIns.controlTwoX.getter();
  *v472 = 1008981770;
  v630 = v625;
  v631 = v1059;
  v632 = v1055;
  (v1055)(v472, v630, v1059);
  (v622)(v626, v1084, v1068);
  v633 = Item<>.init(_:label:resetBehavior:type:)();
  *(v614 + 176) = v627;
  *(v614 + 184) = v629;
  *(v614 + 152) = v633;
  v1009 = static Settings.Welcome.Animations.Page2FadeIns.controlTwoY.getter();
  *v472 = 1008981770;
  (v632)(v472, v1083, v631);
  v634 = v1084;
  v635 = v1068;
  (v622)(v626, v1084, v1068);
  v636 = v626;
  v637 = Item<>.init(_:label:resetBehavior:type:)();
  v638 = v1062;
  *(v614 + 216) = v627;
  *(v614 + 224) = v638;
  *(v614 + 192) = v637;
  Group.init(title:footer:_:)();
  v639 = swift_allocObject();
  *(v639 + 16) = v1031;
  *&v1031 = static Settings.Welcome.Animations.DismissFade.duration.getter();
  *v472 = 1036831949;
  v640 = v1083;
  v641 = v1055;
  (v1055)(v472, v1083, v631);
  v642 = v636;
  v643 = v634;
  (v1064)(v642, v634, v635);
  v644 = v1065;
  v645 = Item<>.init(_:label:resetBehavior:type:)();
  v646 = v1062;
  *(v639 + 56) = v644;
  *(v639 + 64) = v646;
  *(v639 + 32) = v645;
  static Settings.Welcome.Animations.DismissFade.controlOneX.getter();
  *v472 = 1008981770;
  v647 = v631;
  v648 = v641;
  (v641)(v472, v640, v647);
  v649 = v1049;
  v650 = v1064;
  (v1064)(v1049, v643, v635);
  v651 = v1065;
  v652 = Item<>.init(_:label:resetBehavior:type:)();
  *(v639 + 96) = v651;
  *(v639 + 104) = v646;
  *(v639 + 72) = v652;
  static Settings.Welcome.Animations.DismissFade.controlOneY.getter();
  *v472 = 1008981770;
  v653 = v640;
  v654 = v1059;
  (v648)(v472, v653, v1059);
  v655 = v1084;
  (v650)(v649, v1084, v1068);
  v656 = v1065;
  v657 = Item<>.init(_:label:resetBehavior:type:)();
  *(v639 + 136) = v656;
  *(v639 + 144) = v646;
  *(v639 + 112) = v657;
  static Settings.Welcome.Animations.DismissFade.controlTwoX.getter();
  *v472 = 1008981770;
  (v1055)(v472, v1083, v654);
  v658 = v655;
  v659 = v655;
  v660 = v1068;
  (v650)(v649, v658, v1068);
  v661 = v1065;
  v662 = Item<>.init(_:label:resetBehavior:type:)();
  *(v639 + 176) = v661;
  *(v639 + 184) = v646;
  *(v639 + 152) = v662;
  static Settings.Welcome.Animations.DismissFade.controlTwoY.getter();
  *v472 = 1008981770;
  (v1055)(v472, v1083, v1059);
  (v650)(v649, v659, v660);
  v663 = v1065;
  v664 = Item<>.init(_:label:resetBehavior:type:)();
  *(v639 + 216) = v663;
  *(v639 + 224) = v646;
  *(v639 + 192) = v664;
  Group.init(title:footer:_:)();
  v665 = v1021;
  *(v1021 + 22) = v1056;
  *(v665 + 23) = &protocol witness table for Page;
  sub_10000EE0C(v665 + 19);
  Page.init(title:_:)();
  Group.init(title:footer:_:)();
  v666 = swift_allocObject();
  *(v666 + 16) = xmmword_10003FA60;
  v667 = v994;
  static SettingsBundle.ads.getter();
  v668 = v1015;
  v1059 = v666;
  *(v666 + 56) = v1015;
  *(v666 + 64) = &protocol witness table for SettingsBundle;
  sub_10000EE0C((v666 + 32));
  SettingsBundle.callAsFunction(title:additionalGroups:)();
  (*(v995 + 8))(v667, v668);
  v1055 = "Page 2 Item Fade Ins";
  v669 = swift_allocObject();
  v1035 = v669;
  *(v669 + 1) = v1052;
  v1057 = &v669[v1058];
  v670 = swift_allocObject();
  *(v670 + 16) = v1032;
  sub_100037278(0);
  v672 = v671;
  static Settings.AppConfiguration.source.getter();
  v673 = swift_allocObject();
  *(v673 + 16) = v1082;
  *(v673 + 32) = v1022;
  v674 = v1084;
  (*(v996 + 104))(v998, v1084, v997);
  sub_100037434(&qword_100050618, &type metadata accessor for AppConfigurationSource, &protocol conformance descriptor for AppConfigurationSource);

  v675 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v670 + 56) = v672;
  *(v670 + 64) = sub_100037434(&qword_100050620, sub_100037278, v1018);
  *(v670 + 32) = v675;
  static Settings.AppConfiguration.ignoreCache.getter();
  v676 = v1080;
  v677 = v1075;
  (v1075)(v1061, v1080, v1078);
  v678 = v1074;
  v679 = v1071;
  v1071(v1079, v674, v1074);
  v680 = v1081;
  v681 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v682 = v1070;
  *(v670 + 96) = v680;
  *(v670 + 104) = v682;
  *(v670 + 72) = v681;
  *&v1031 = static Settings.AppConfiguration.disableABTesting.getter();
  v1021 = "App Configuration";
  v683 = swift_allocObject();
  *(v683 + 16) = v1082;
  v684 = v1022;
  *(v683 + 32) = v1022;
  v677(v1061, v676, v1078);
  v685 = v1084;
  v679(v1079, v1084, v678);
  v686 = v684;

  v687 = v1081;
  v688 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v689 = v1070;
  *(v670 + 136) = v687;
  *(v670 + 144) = v689;
  *(v670 + 112) = v688;
  Group.init(title:footer:_:)();
  *&v1031 = "Disable A/B Testing";
  v1021 = static Settings.AppConfiguration.enableSegmentationOverrides.getter();
  v690 = swift_allocObject();
  *(v690 + 16) = v1032;
  static Settings.AppConfiguration.overrideUserID.getter();
  v691 = swift_allocObject();
  *(v691 + 16) = v1082;
  *(v691 + 32) = v684;
  v692 = v1040;
  v693 = v1029;
  v1029(v1039, v685, v1040);

  v694 = v1045;
  v695 = Item<>.init(_:label:resetBehavior:actions:)();
  v696 = v1033;
  *(v690 + 56) = v694;
  *(v690 + 64) = v696;
  *(v690 + 32) = v695;
  static Settings.AppConfiguration.overrideSegmentSetIDs.getter();
  v697 = swift_allocObject();
  *(v697 + 16) = v1082;
  *(v697 + 32) = v686;
  v698 = v1039;
  v699 = v1084;
  v693(v1039, v1084, v692);
  v700 = v1045;
  v701 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v690 + 96) = v700;
  *(v690 + 104) = v696;
  *(v690 + 72) = v701;
  static Settings.AppConfiguration.additionalSegmentSetIDs.getter();
  v702 = swift_allocObject();
  *(v702 + 16) = v1082;
  *(v702 + 32) = v1022;
  v693(v698, v699, v1040);
  v703 = v1045;
  v704 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v690 + 136) = v703;
  *(v690 + 144) = v696;
  *(v690 + 112) = v704;
  Group.init(title:footer:group:_:)();
  v705 = v1059;
  v1059[12] = v1056;
  v705[13] = &protocol witness table for Page;
  sub_10000EE0C(v705 + 9);
  Page.init(title:_:)();
  v1057 = swift_allocObject();
  *(v1057 + 1) = v1073;
  v706 = swift_allocObject();
  *(v706 + 16) = v1052;
  static Settings.ForYou.Card.systemDetents.getter();
  v707 = v1061;
  v708 = v1078;
  (v1075)(v1061, v1080, v1078);
  v709 = v1071;
  v1071(v1079, v1084, v1074);
  v710 = v1081;
  v711 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v712 = v1070;
  *(v706 + 56) = v710;
  *(v706 + 64) = v712;
  *(v706 + 32) = v711;
  v1055 = static Settings.StockFeed.Card.swipeToDismiss.getter();
  v713 = swift_allocObject();
  *(v713 + 16) = v1082;
  *(v713 + 32) = static SettingActions.restart.getter();
  (v1075)(v707, v1080, v708);
  v709(v1079, v1084, v1074);
  v714 = v1081;
  v715 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v706 + 96) = v714;
  *(v706 + 104) = v712;
  *(v706 + 72) = v715;
  Group.init(title:footer:_:)();
  v716 = v1059;
  v1059[17] = v1056;
  v716[18] = &protocol witness table for Page;
  sub_10000EE0C(v716 + 14);
  Page.init(title:_:)();
  v1057 = "Swipe to Dismiss";
  *(swift_allocObject() + 16) = v1073;
  v1055 = "Compositional List";
  v717 = swift_allocObject();
  *(v717 + 16) = v1073;
  static Settings.CompositionalList.useDiffableDataSource.getter();
  v718 = swift_allocObject();
  *(v718 + 16) = v1082;
  *(v718 + 32) = static SettingActions.restart.getter();
  v719 = v1080;
  v720 = v1075;
  (v1075)(v707, v1080, v1078);
  v1071(v1079, v1084, v1074);
  v721 = v1081;
  v722 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v723 = v1070;
  *(v717 + 56) = v721;
  *(v717 + 64) = v723;
  *(v717 + 32) = v722;
  Group.init(title:footer:_:)();
  v724 = v1059;
  v1059[22] = v1056;
  v724[23] = &protocol witness table for Page;
  sub_10000EE0C(v724 + 19);
  Page.init(title:_:)();
  v1057 = "Use diffable data source";
  *(swift_allocObject() + 16) = v1073;
  v725 = swift_allocObject();
  *(v725 + 16) = v1073;
  static Settings.ComputationalGraph.supplyConfigurationFromUserDefaults.getter();
  v720(v707, v719, v1078);
  v1071(v1079, v1084, v1074);
  v726 = v1081;
  v727 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v728 = v1070;
  *(v725 + 56) = v726;
  *(v725 + 64) = v728;
  *(v725 + 32) = v727;
  Group.init(title:footer:_:)();
  v729 = v1059;
  v1059[27] = v1056;
  v729[28] = &protocol witness table for Page;
  sub_10000EE0C(v729 + 24);
  Page.init(title:_:)();
  v1055 = swift_allocObject();
  *(v1055 + 1) = v1073;
  v1057 = "om User Defaults";
  v1035 = static Settings.Earnings.configOverrides.getter();
  v730 = swift_allocObject();
  *(v730 + 16) = v1052;
  type metadata accessor for Settings.Earnings.ConfigOverrides();
  static Settings.Earnings.ConfigOverrides.earningsStartDate.getter();
  static Item.RangeControlType.slider.getter();
  v731 = v1048;
  v732 = v1084;
  v733 = v1044;
  v734 = v1034;
  v1034(v1048, v1084, v1044);
  v735 = v1051;
  v736 = Item<>.init(_:label:resetBehavior:type:)();
  v737 = v1030;
  *(v730 + 56) = v735;
  *(v730 + 64) = v737;
  *(v730 + 32) = v736;
  static Settings.Earnings.ConfigOverrides.earningsEndDate.getter();
  static Item.RangeControlType.slider.getter();
  v734(v731, v732, v733);
  v738 = v1051;
  v739 = Item<>.init(_:label:resetBehavior:type:)();
  *(v730 + 96) = v738;
  *(v730 + 104) = v737;
  *(v730 + 72) = v739;
  v740 = v1058;
  Group.init(title:footer:group:_:)();
  v741 = v1059;
  v1059[32] = v1056;
  v741[33] = &protocol witness table for Page;
  sub_10000EE0C(v741 + 29);
  Page.init(title:_:)();
  v742 = swift_allocObject();
  v1055 = v742;
  *(v742 + 16) = v1052;
  v1057 = (v742 + v740);
  v743 = swift_allocObject();
  *(v743 + 16) = v1052;
  static Settings.NewsFeedModule.Layout.enableVisualDebugging.getter();
  v744 = v1061;
  v745 = v1080;
  v746 = v1078;
  v747 = v1075;
  (v1075)(v1061, v1080, v1078);
  v748 = v732;
  v749 = v1074;
  v1071(v1079, v748, v1074);
  v750 = v744;
  v751 = v1081;
  v752 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v753 = v1070;
  *(v743 + 56) = v751;
  *(v743 + 64) = v753;
  *(v743 + 32) = v752;
  v1035 = static Settings.NewsFeedModule.Layout.enableLogDebugging.getter();
  v754 = swift_allocObject();
  *(v754 + 16) = v1082;
  *(v754 + 32) = static SettingActions.restart.getter();
  v747(v750, v745, v746);
  v755 = v749;
  v756 = v1071;
  v1071(v1079, v1084, v755);
  v757 = v1081;
  v758 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v743 + 96) = v757;
  *(v743 + 104) = v753;
  *(v743 + 72) = v758;
  Group.init(title:footer:_:)();
  v759 = swift_allocObject();
  *(v759 + 16) = v1010;
  static Settings.NewsFeedModule.Format.ignorePackageCache.getter();
  v760 = swift_allocObject();
  *(v760 + 16) = v1082;
  *(v760 + 32) = static SettingActions.restart.getter();
  (v1075)(v750, v1080, v1078);
  v761 = v1084;
  v756(v1079, v1084, v1074);
  v762 = v1081;
  v763 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v764 = v1070;
  *(v759 + 56) = v762;
  *(v759 + 64) = v764;
  *(v759 + 32) = v763;
  static Settings.NewsFeedModule.Debug.Format.host.getter();
  v765 = v1039;
  v766 = v1040;
  v767 = v1029;
  v1029(v1039, v761, v1040);
  v768 = v1045;
  v769 = Item<>.init(_:label:resetBehavior:actions:)();
  v770 = v1033;
  *(v759 + 96) = v768;
  *(v759 + 104) = v770;
  *(v759 + 72) = v769;
  static Settings.NewsFeedModule.Debug.Format.port.getter();
  v767(v765, v761, v766);
  v771 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v759 + 136) = v768;
  *(v759 + 144) = v770;
  *(v759 + 112) = v771;
  static Settings.NewsFeedModule.Format.loadPackagesFromDebugServerDropbox.getter();
  v1035 = "Debug Server Port";
  v772 = swift_allocObject();
  *(v772 + 16) = v1082;
  *(v772 + 32) = static SettingActions.restart.getter();
  v773 = v1061;
  v774 = v1080;
  v775 = v1075;
  (v1075)(v1061, v1080, v1078);
  v776 = v1071;
  v1071(v1079, v1084, v1074);
  v777 = v1081;
  v778 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v779 = v1070;
  *(v759 + 176) = v777;
  *(v759 + 184) = v779;
  *(v759 + 152) = v778;
  v1035 = static Settings.NewsFeedModule.Format.prefetchWebArchives.getter();
  *&v1031 = "om Debug Server Dropbox";
  v780 = swift_allocObject();
  *(v780 + 16) = v1082;
  *(v780 + 32) = static SettingActions.restart.getter();
  v781 = v1078;
  v775(v773, v774, v1078);
  v776(v1079, v1084, v1074);
  v782 = v1081;
  v783 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v759 + 216) = v782;
  *(v759 + 224) = v779;
  *(v759 + 192) = v783;
  v1035 = static Settings.NewsFeedModule.Format.prefetchDataResources.getter();
  *&v1031 = "ed Archive Resources";
  v784 = swift_allocObject();
  *(v784 + 16) = v1082;
  *(v784 + 32) = static SettingActions.restart.getter();
  v785 = v781;
  v786 = v1075;
  (v1075)(v773, v774, v785);
  v787 = v1084;
  v776(v1079, v1084, v1074);
  v788 = v773;
  v789 = v1081;
  v790 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v759 + 256) = v789;
  *(v759 + 264) = v779;
  v791 = v779;
  *(v759 + 232) = v790;
  Group.init(title:footer:_:)();
  v792 = v1059;
  v1059[37] = v1056;
  v792[38] = &protocol witness table for Page;
  sub_10000EE0C(v792 + 34);
  Page.init(title:_:)();
  v793 = v1058;
  v794 = swift_allocObject();
  v1055 = v794;
  *(v794 + 16) = v1032;
  v1057 = (v794 + v793);
  v795 = swift_allocObject();
  *(v795 + 16) = v1026;
  static Settings.MarketData.freezeQuotes.getter();
  v796 = v1080;
  v797 = v1078;
  v786(v773, v1080, v1078);
  v798 = v1079;
  v799 = v1074;
  v800 = v1071;
  v1071(v1079, v787, v1074);
  v801 = v1081;
  v802 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v795 + 56) = v801;
  *(v795 + 64) = v791;
  *(v795 + 32) = v802;
  v1035 = static Settings.MarketData.freezeQuoteDetails.getter();
  (v1075)(v788, v796, v797);
  v800(v798, v1084, v799);
  v803 = v1081;
  v804 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v795 + 96) = v803;
  *(v795 + 104) = v791;
  *(v795 + 72) = v804;
  v1035 = static Settings.MarketData.freezeSparklines.getter();
  v805 = v1078;
  v806 = v1075;
  (v1075)(v788, v796, v1078);
  v807 = v1084;
  v808 = v1074;
  v1071(v798, v1084, v1074);
  v809 = v788;
  v810 = v1081;
  v811 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v812 = v1070;
  *(v795 + 136) = v810;
  *(v795 + 144) = v812;
  *(v795 + 112) = v811;
  v1035 = static Settings.MarketData.freezeCharts.getter();
  v806(v809, v1080, v805);
  v813 = v808;
  v814 = v1071;
  v1071(v798, v807, v813);
  v815 = v1081;
  v816 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v795 + 176) = v815;
  *(v795 + 184) = v812;
  v817 = v812;
  *(v795 + 152) = v816;
  Group.init(title:footer:_:)();
  v818 = swift_allocObject();
  *(v818 + 16) = v1052;
  static Settings.Refreshing.MarketData.overrideEnabled.getter();
  v819 = v1080;
  v820 = v1078;
  v821 = v1075;
  (v1075)(v809, v1080, v1078);
  v814(v1079, v1084, v1074);
  v822 = v1081;
  v823 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v818 + 56) = v822;
  *(v818 + 64) = v817;
  *(v818 + 32) = v823;
  static Settings.Refreshing.MarketData.overrideInterval.getter();
  v824 = v809;
  v821(v809, v819, v820);
  v825 = v1084;
  (v1064)(v1049, v1084, v1068);
  v826 = v1065;
  v827 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v828 = v1062;
  *(v818 + 96) = v826;
  *(v818 + 104) = v828;
  *(v818 + 72) = v827;
  Group.init(title:footer:_:)();
  v1035 = "Override Interval";
  v829 = swift_allocObject();
  *(v829 + 16) = v1073;
  static Settings.MarketData.simulatePremarketData.getter();
  v821(v809, v1080, v820);
  v830 = v1079;
  v1071(v1079, v825, v1074);
  v831 = v824;
  v832 = v830;
  v833 = v1081;
  v834 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v835 = v1070;
  *(v829 + 56) = v833;
  *(v829 + 64) = v835;
  *(v829 + 32) = v834;
  Group.init(title:footer:_:)();
  v836 = v1059;
  v1059[42] = v1056;
  v836[43] = &protocol witness table for Page;
  sub_10000EE0C(v836 + 39);
  Page.init(title:_:)();
  v836[47] = type metadata accessor for If();
  v836[48] = &protocol witness table for If;
  sub_10000EE0C(v836 + 44);
  If.init(_:_:)();
  v1057 = swift_allocObject();
  *(v1057 + 1) = v1073;
  v837 = swift_allocObject();
  *(v837 + 16) = v1052;
  static Settings.AppLaunch.disableAppLaunchOnboarding.getter();
  v838 = v1080;
  v839 = v1078;
  v840 = v1075;
  (v1075)(v831, v1080, v1078);
  v841 = v825;
  v842 = v1071;
  v1071(v832, v841, v1074);
  v843 = v1081;
  v844 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v845 = v1070;
  *(v837 + 56) = v843;
  *(v837 + 64) = v845;
  *(v837 + 32) = v844;
  v1055 = static Settings.AppLaunch.showPersonalizedAdsOnNextLaunch.getter();
  v840(v831, v838, v839);
  v846 = v1084;
  v842(v1079, v1084, v1074);
  v847 = v1081;
  v848 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v837 + 96) = v847;
  *(v837 + 104) = v845;
  *(v837 + 72) = v848;
  Group.init(title:footer:_:)();
  v849 = v1059;
  v850 = v1056;
  v1059[52] = v1056;
  v849[53] = &protocol witness table for Page;
  sub_10000EE0C(v849 + 49);
  Page.init(title:_:)();
  *(swift_allocObject() + 16) = v1073;
  v851 = swift_allocObject();
  *(v851 + 16) = v1073;
  static Settings.ArticleScoring.useOnlyComputationalGraphScore.getter();
  (v1075)(v831, v1080, v1078);
  v1071(v1079, v846, v1074);
  v852 = v1081;
  v853 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v854 = v1070;
  *(v851 + 56) = v852;
  *(v851 + 64) = v854;
  *(v851 + 32) = v853;
  Group.init(title:footer:_:)();
  v855 = v1059;
  v1059[57] = v850;
  v855[58] = &protocol witness table for Page;
  sub_10000EE0C(v855 + 54);
  Page.init(title:_:)();
  *(swift_allocObject() + 16) = v1073;
  v856 = swift_allocObject();
  *(v856 + 16) = v1073;
  static Settings.ForYouFeedMasthead.premiumSealEnabled.getter();
  v857 = swift_allocObject();
  *(v857 + 16) = v1082;
  *(v857 + 32) = static SettingActions.restart.getter();
  (v1075)(v1061, v1080, v1078);
  v1071(v1079, v1084, v1074);
  v858 = v1081;
  v859 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v860 = v1070;
  *(v856 + 56) = v858;
  *(v856 + 64) = v860;
  *(v856 + 32) = v859;
  Group.init(title:footer:_:)();
  v855[62] = v1056;
  v855[63] = &protocol witness table for Page;
  sub_10000EE0C(v855 + 59);
  Page.init(title:_:)();
  v1057 = "Show Premium Seal";
  *(swift_allocObject() + 16) = v1073;
  v861 = swift_allocObject();
  *(v861 + 16) = v1073;
  static Settings.Engagement.Presentation.disableAllPresentations.getter();
  v862 = swift_allocObject();
  *(v862 + 16) = v1082;
  *(v862 + 32) = static SettingActions.restart.getter();
  (v1075)(v1061, v1080, v1078);
  v863 = v1079;
  v1071(v1079, v1084, v1074);
  v864 = v863;
  v865 = v1081;
  v866 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v867 = v1070;
  *(v861 + 56) = v865;
  *(v861 + 64) = v867;
  *(v861 + 32) = v866;
  Group.init(title:footer:_:)();
  v868 = v855;
  v869 = v1056;
  v868[67] = v1056;
  v868[68] = &protocol witness table for Page;
  sub_10000EE0C(v868 + 64);
  Page.init(title:_:)();
  *(swift_allocObject() + 16) = v1073;
  v870 = swift_allocObject();
  *(v870 + 16) = v1073;
  static Settings.PrivateData.simulateNewsSyncingEnabled.getter();
  v871 = swift_allocObject();
  *(v871 + 16) = v1082;
  *(v871 + 32) = static SettingActions.restart.getter();
  (v1075)(v1061, v1080, v1078);
  v872 = v864;
  v873 = v1084;
  v1071(v872, v1084, v1074);
  v874 = v1081;
  v875 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v870 + 56) = v874;
  *(v870 + 64) = v867;
  *(v870 + 32) = v875;
  v876 = v1058;
  Group.init(title:footer:_:)();
  v877 = v1059;
  v1059[72] = v869;
  v877[73] = &protocol witness table for Page;
  sub_10000EE0C(v877 + 69);
  Page.init(title:_:)();
  sub_10003730C(0);
  v879 = v878;
  static Settings.DataSource.stocksDataServiceEnabled.getter();
  v880 = swift_allocObject();
  *(v880 + 16) = v1082;
  *(v880 + 32) = static SettingActions.restart.getter();
  v881 = v873;
  (*(v999 + 104))(v1001, v873, v1000);
  sub_100037434(&qword_100050630, &type metadata accessor for StocksDataServiceEnablement, &protocol conformance descriptor for StocksDataServiceEnablement);
  v882 = Item<>.init(_:label:resetBehavior:actions:)();
  v877[77] = v879;
  v877[78] = sub_100037434(&qword_100050638, sub_10003730C, v1018);
  v877[74] = v882;
  v883 = swift_allocObject();
  *&v1082 = v883;
  *(v883 + 16) = v1052;
  v1069 = v883 + v876;
  v884 = swift_allocObject();
  *(v884 + 16) = v1032;
  v1067 = static Settings.Widget.demoMode.getter();
  v1057 = "Stocks Data Service";
  v885 = v1061;
  v886 = v1080;
  v887 = v1078;
  v888 = v1075;
  (v1075)(v1061, v1080, v1078);
  v889 = v1074;
  v890 = v1071;
  v1071(v1079, v881, v1074);
  v891 = v885;
  v892 = v1081;
  v893 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v894 = v1070;
  *(v884 + 56) = v892;
  *(v884 + 64) = v894;
  *(v884 + 32) = v893;
  static Settings.Widget.dumpEntries.getter();
  v888(v891, v886, v887);
  v895 = v1084;
  v890(v1079, v1084, v889);
  v896 = v1081;
  v897 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v884 + 96) = v896;
  *(v884 + 104) = v894;
  *(v884 + 72) = v897;
  static Settings.Widget.entryInterval.getter();
  v888(v891, v1080, v1078);
  (v1064)(v1049, v895, v1068);
  v898 = v1065;
  v899 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v900 = v1062;
  *(v884 + 136) = v898;
  *(v884 + 144) = v900;
  *(v884 + 112) = v899;
  Group.init(title:footer:_:)();
  v1067 = " between entries";
  v901 = swift_allocObject();
  *(v901 + 16) = v1052;
  static Settings.Features.widgetSpecificConfig.getter();
  v1027(v1023, v895, v1042);
  v902 = v1053;
  v903 = Item<>.init(_:label:resetBehavior:actions:)();
  v904 = v1037;
  *(v901 + 56) = v902;
  *(v901 + 64) = v904;
  *(v901 + 32) = v903;
  static Settings.News.overrideWidgetSectionConfigID.getter();
  v1029(v1039, v895, v1040);
  v905 = v1045;
  v906 = Item<>.init(_:label:resetBehavior:actions:)();
  v907 = v1033;
  *(v901 + 96) = v905;
  *(v901 + 104) = v907;
  *(v901 + 72) = v906;
  Group.init(title:footer:_:)();
  v908 = v1056;
  v909 = v1059;
  v1059[82] = v1056;
  v909[83] = &protocol witness table for Page;
  sub_10000EE0C(v909 + 79);
  Page.init(title:_:)();
  v909[87] = v908;
  v909[88] = &protocol witness table for Page;
  sub_10000EE0C(v909 + 84);
  Page.init(title:_:)();
  v910 = v1058;
  v911 = swift_allocObject();
  v1069 = v911;
  *(v911 + 16) = v1032;
  *&v1082 = v911 + v910;
  v912 = swift_allocObject();
  *(v912 + 16) = v1052;
  v1067 = static Settings.Tips.savedViaFeed.getter();
  v913 = v1061;
  v914 = v1080;
  v915 = v1078;
  v916 = v1075;
  (v1075)(v1061, v1080, v1078);
  v917 = v895;
  v918 = v1074;
  v919 = v1071;
  v1071(v1079, v917, v1074);
  v920 = v1081;
  v921 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v922 = v1070;
  *(v912 + 56) = v920;
  *(v912 + 64) = v922;
  *(v912 + 32) = v921;
  static Settings.Tips.savedViaArticleViewer.getter();
  v916(v913, v914, v915);
  v923 = v1084;
  v919(v1079, v1084, v918);
  v924 = v1081;
  v925 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v926 = v1070;
  *(v912 + 96) = v924;
  *(v912 + 104) = v926;
  *(v912 + 72) = v925;
  Group.init(title:footer:_:)();
  v1067 = "Widget config ID";
  v1057 = "Play Later In News";
  v927 = swift_allocObject();
  *(v927 + 16) = v1052;
  v1055 = static Settings.Tips.audioQueuedViaFeed.getter();
  v928 = v1075;
  (v1075)(v913, v914, v915);
  v929 = v918;
  v930 = v1071;
  v1071(v1079, v923, v929);
  v931 = v1081;
  v932 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v927 + 56) = v931;
  *(v927 + 64) = v926;
  *(v927 + 32) = v932;
  v1055 = static Settings.Tips.audioQueuedViaArticleViewer.getter();
  v928(v913, v914, v915);
  v933 = v1084;
  v930(v1079, v1084, v1074);
  v934 = v1081;
  v935 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v927 + 96) = v934;
  *(v927 + 104) = v926;
  *(v927 + 72) = v935;
  Group.init(title:footer:_:)();
  v1067 = "ore, and won't be shown again.";
  v1057 = static Settings.Tips.Earnings.configOverrides.getter();
  v936 = swift_allocObject();
  *(v936 + 16) = v1052;
  type metadata accessor for Settings.Tips.Earnings.ConfigOverrides();
  static Settings.Tips.Earnings.ConfigOverrides.tipMaxPresentedCount.getter();
  v937 = v1017;
  *v1017 = 1065353216;
  (*(v1003 + 104))(v937, v1083, v1004);
  v1034(v1048, v933, v1044);
  v938 = v1051;
  v939 = Item<>.init(_:label:resetBehavior:type:)();
  v940 = v1030;
  *(v936 + 56) = v938;
  *(v936 + 64) = v940;
  *(v936 + 32) = v939;
  static Settings.Tips.Earnings.ConfigOverrides.tipFrequencyInterval.getter();
  v941 = v1080;
  v942 = v1078;
  v943 = v1075;
  (v1075)(v913, v1080, v1078);
  (v1064)(v1049, v933, v1068);
  v944 = v1065;
  v945 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v946 = v1062;
  *(v936 + 96) = v944;
  *(v936 + 104) = v946;
  *(v936 + 72) = v945;
  Group.init(title:footer:group:_:)();
  v947 = v1056;
  v948 = v1059;
  v1059[92] = v1056;
  v948[93] = &protocol witness table for Page;
  sub_10000EE0C(v948 + 89);
  Page.init(title:_:)();
  v1083 = "Tip Frequency Interval";
  *(swift_allocObject() + 16) = v1073;
  v949 = swift_allocObject();
  *(v949 + 16) = v1073;
  static Settings.UserEventHistory.verboseLoggingEnabled.getter();
  v943(v1061, v941, v942);
  v950 = v1084;
  v1071(v1079, v1084, v1074);
  v951 = v1081;
  v952 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v953 = v1070;
  *(v949 + 56) = v951;
  *(v949 + 64) = v953;
  *(v949 + 32) = v952;
  Group.init(title:footer:_:)();
  v954 = v1059;
  v1059[97] = v947;
  v955 = v947;
  v954[98] = &protocol witness table for Page;
  v956 = v954;
  sub_10000EE0C(v954 + 94);
  Page.init(title:_:)();
  *(swift_allocObject() + 16) = v1073;
  v957 = swift_allocObject();
  *(v957 + 16) = v1073;
  sub_1000373A0(0);
  v959 = v958;
  static Settings.Watchlist.kvsCleanupPermission.getter();
  (*(v1005 + 104))(v974, v950, v1006);
  sub_100037434(&qword_100050648, &type metadata accessor for KVSCleanupPermission, &protocol conformance descriptor for KVSCleanupPermission);
  v960 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v957 + 56) = v959;
  *(v957 + 64) = sub_100037434(&unk_100050650, sub_1000373A0, v1018);
  *(v957 + 32) = v960;
  Group.init(title:footer:_:)();
  v956[102] = v955;
  v956[103] = &protocol witness table for Page;
  sub_10000EE0C(v956 + 99);
  Page.init(title:_:)();
  Group.init(title:footer:_:)();
  v961 = swift_allocObject();
  *(v961 + 16) = v1073;
  static Settings.Radars.radar50783266.getter();
  (v1075)(v1061, v1080, v1078);
  v1071(v1079, v950, v1074);
  v962 = v1081;
  v963 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v964 = v1070;
  *(v961 + 56) = v962;
  *(v961 + 64) = v964;
  *(v961 + 32) = v963;
  Group.init(title:footer:_:)();
  swift_unknownObjectRelease();

  (*(v1002 + 8))(v1024, v976);
  *v975 = v1011;
  return sub_10000461C(v1089);
}

BOOL sub_1000360C0()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 1;
  }

  v4 = [v0 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return v5 == 5;
}

uint64_t sub_100036168@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  sub_100036AFC(0, &qword_100050520, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for Item.ResetBehavior);
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v3 = &v17 - v2;
  v21 = type metadata accessor for ChangeBehavior();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005650(0, &qword_100050530, &type metadata accessor for _ContiguousArrayStorage);
  v7 = *(type metadata accessor for Group() - 8);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v8 = swift_allocObject();
  v17 = xmmword_10003EDF0;
  *(v8 + 16) = xmmword_10003EDF0;
  v18 = "Masthead in detail pane";
  v19 = "User Event History";
  sub_1000369D8(0);
  v9 = swift_allocObject();
  *(v9 + 16) = v17;
  sub_100036AFC(0, &qword_100050538, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for Item);
  v11 = v10;
  static Settings.ForYouFeedMasthead.mastheadEnabled.getter();
  sub_100036A44();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10003FA10;
  type metadata accessor for SettingAction();
  *(v12 + 32) = static SettingActions.restart.getter();
  (*(v4 + 104))(v6, enum case for ChangeBehavior.default(_:), v21);
  (*(v22 + 104))(v3, enum case for Item.ResetBehavior.reset<A>(_:), v23);
  v13 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v9 + 56) = v11;
  *(v9 + 64) = sub_100036A98(&qword_100050548, &qword_100050538, &type metadata for Bool, &protocol witness table for Bool);
  *(v9 + 32) = v13;
  Group.init(title:footer:_:)();
  v14 = type metadata accessor for Page();
  v15 = v24;
  v24[3] = v14;
  v15[4] = &protocol witness table for Page;
  sub_10000EE0C(v15);
  return Page.init(title:_:)();
}

void sub_100036538(uint64_t a1)
{
  if (!qword_100050470)
  {
    type metadata accessor for KVSCleanupPermission();
    sub_100037434(&qword_100050478, &type metadata accessor for KVSCleanupPermission, &protocol conformance descriptor for KVSCleanupPermission);
    v1 = type metadata accessor for Item.ResetBehavior();
    if (!v2)
    {
      atomic_store(v1, &qword_100050470);
    }
  }
}

void sub_1000365CC(uint64_t a1)
{
  if (!qword_100050480)
  {
    type metadata accessor for StocksDataServiceEnablement();
    sub_100037434(&qword_100050488, &type metadata accessor for StocksDataServiceEnablement, &protocol conformance descriptor for StocksDataServiceEnablement);
    v1 = type metadata accessor for Item.ResetBehavior();
    if (!v2)
    {
      atomic_store(v1, &qword_100050480);
    }
  }
}

void sub_100036660(uint64_t a1)
{
  if (!qword_100050498)
  {
    type metadata accessor for AppConfigurationSource();
    sub_100037434(&qword_1000504A0, &type metadata accessor for AppConfigurationSource, &protocol conformance descriptor for AppConfigurationSource);
    v1 = type metadata accessor for Item.ResetBehavior();
    if (!v2)
    {
      atomic_store(v1, &qword_100050498);
    }
  }
}

void sub_1000366F4(uint64_t a1)
{
  if (!qword_1000504B0)
  {
    type metadata accessor for FeedAutoRefreshStrategy();
    sub_100037434(&qword_1000504B8, &type metadata accessor for FeedAutoRefreshStrategy, &protocol conformance descriptor for FeedAutoRefreshStrategy);
    v1 = type metadata accessor for Item.ResetBehavior();
    if (!v2)
    {
      atomic_store(v1, &qword_1000504B0);
    }
  }
}

void sub_100036788(uint64_t a1)
{
  if (!qword_1000504C8)
  {
    type metadata accessor for NewsEnvironment();
    sub_100037434(&qword_1000504D0, &type metadata accessor for NewsEnvironment, &protocol conformance descriptor for NewsEnvironment);
    v1 = type metadata accessor for Item.ResetBehavior();
    if (!v2)
    {
      atomic_store(v1, &qword_1000504C8);
    }
  }
}

void sub_10003681C(uint64_t a1)
{
  if (!qword_1000504D8)
  {
    type metadata accessor for NewsProvider();
    sub_100037434(&qword_1000504E0, &type metadata accessor for NewsProvider, &protocol conformance descriptor for NewsProvider);
    v1 = type metadata accessor for Item.ResetBehavior();
    if (!v2)
    {
      atomic_store(v1, &qword_1000504D8);
    }
  }
}

void sub_1000368B0(uint64_t a1)
{
  if (!qword_1000504E8)
  {
    type metadata accessor for Settings.Container.TestSuite();
    sub_100037434(&qword_1000504F0, &type metadata accessor for Settings.Container.TestSuite, &protocol conformance descriptor for Settings.Container.TestSuite);
    v1 = type metadata accessor for Item.ResetBehavior();
    if (!v2)
    {
      atomic_store(v1, &qword_1000504E8);
    }
  }
}

void sub_100036944(uint64_t a1)
{
  if (!qword_1000504F8)
  {
    type metadata accessor for FeatureState();
    sub_100037434(&qword_100050500, &type metadata accessor for FeatureState, &protocol conformance descriptor for FeatureState);
    v1 = type metadata accessor for Item.ResetBehavior();
    if (!v2)
    {
      atomic_store(v1, &qword_1000504F8);
    }
  }
}

void sub_1000369D8(uint64_t a1)
{
  if (!qword_100050390)
  {
    sub_1000036DC(255, &qword_100050398, &protocol descriptor for Groupable, 1);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_100050390);
    }
  }
}

void sub_100036A44()
{
  if (!qword_100050540)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_100050540);
    }
  }
}

uint64_t sub_100036A98(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100036AFC(255, a2, a3, a4, &type metadata accessor for Item);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100036AFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_100036B50(uint64_t a1)
{
  if (!qword_100050580)
  {
    type metadata accessor for FeatureState();
    sub_100037434(&qword_100050500, &type metadata accessor for FeatureState, &protocol conformance descriptor for FeatureState);
    v1 = type metadata accessor for Item();
    if (!v2)
    {
      atomic_store(v1, &qword_100050580);
    }
  }
}

void *sub_100036BEC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v33 = type metadata accessor for DenylistDescriptor();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v26 = v3;
    v42 = &_swiftEmptyArrayStorage;
    sub_100029980(0, v7, 0);
    v37 = a1 + 56;
    v38 = v42;
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v30 = v5 + 8;
    v31 = v5 + 16;
    v27 = a1 + 64;
    v28 = v7;
    v29 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v37 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v14 = v32;
      v15 = v33;
      (*(v5 + 16))(v32, *(a1 + 48) + *(v5 + 72) * v9, v33);
      v40 = type metadata accessor for DebugItem();
      v41 = sub_100037434(&qword_100050598, &type metadata accessor for DebugItem, &protocol conformance descriptor for DebugItem);
      sub_10000EE0C(&v39);
      v34(v14);
      (*(v5 + 8))(v14, v15);
      v16 = v38;
      v42 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        sub_100029980((v17 > 1), v18 + 1, 1);
        v16 = v42;
      }

      v16[2] = v18 + 1;
      v38 = v16;
      result = sub_1000061A0(&v39, &v16[5 * v18 + 4]);
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v19 = *(v37 + 8 * v13);
      if ((v19 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v9 & 0x3F));
      if (v20)
      {
        v11 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v28;
        v5 = v29;
      }

      else
      {
        v21 = v13 << 6;
        v22 = v13 + 1;
        v12 = v28;
        v23 = (v27 + 8 * v13);
        v5 = v29;
        while (v22 < (v11 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_10000CD74(v9, v36, 0);
            v11 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_10000CD74(v9, v36, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_100036F50(uint64_t a1)
{
  if (!qword_1000505A0)
  {
    type metadata accessor for Settings.Container.TestSuite();
    sub_100037434(&qword_1000504F0, &type metadata accessor for Settings.Container.TestSuite, &protocol conformance descriptor for Settings.Container.TestSuite);
    v1 = type metadata accessor for Item();
    if (!v2)
    {
      atomic_store(v1, &qword_1000505A0);
    }
  }
}

void sub_100036FE4(uint64_t a1)
{
  if (!qword_1000505B8)
  {
    type metadata accessor for NewsProvider();
    sub_100037434(&qword_1000504E0, &type metadata accessor for NewsProvider, &protocol conformance descriptor for NewsProvider);
    v1 = type metadata accessor for Item();
    if (!v2)
    {
      atomic_store(v1, &qword_1000505B8);
    }
  }
}

void sub_100037078(uint64_t a1)
{
  if (!qword_1000505D0)
  {
    type metadata accessor for NewsEnvironment();
    sub_100037434(&qword_1000504D0, &type metadata accessor for NewsEnvironment, &protocol conformance descriptor for NewsEnvironment);
    v1 = type metadata accessor for Item();
    if (!v2)
    {
      atomic_store(v1, &qword_1000505D0);
    }
  }
}

void sub_10003710C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_10001CDC8();
    v7 = a3(a1, &type metadata for Storefront, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_100037170()
{
  result = qword_1000505F0;
  if (!qword_1000505F0)
  {
    sub_10003710C(255, &qword_1000505E8, &type metadata accessor for Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000505F0);
  }

  return result;
}

void sub_1000371E4(uint64_t a1)
{
  if (!qword_1000505F8)
  {
    type metadata accessor for FeedAutoRefreshStrategy();
    sub_100037434(&qword_1000504B8, &type metadata accessor for FeedAutoRefreshStrategy, &protocol conformance descriptor for FeedAutoRefreshStrategy);
    v1 = type metadata accessor for Item();
    if (!v2)
    {
      atomic_store(v1, &qword_1000505F8);
    }
  }
}

void sub_100037278(uint64_t a1)
{
  if (!qword_100050610)
  {
    type metadata accessor for AppConfigurationSource();
    sub_100037434(&qword_1000504A0, &type metadata accessor for AppConfigurationSource, &protocol conformance descriptor for AppConfigurationSource);
    v1 = type metadata accessor for Item();
    if (!v2)
    {
      atomic_store(v1, &qword_100050610);
    }
  }
}

void sub_10003730C(uint64_t a1)
{
  if (!qword_100050628)
  {
    type metadata accessor for StocksDataServiceEnablement();
    sub_100037434(&qword_100050488, &type metadata accessor for StocksDataServiceEnablement, &protocol conformance descriptor for StocksDataServiceEnablement);
    v1 = type metadata accessor for Item();
    if (!v2)
    {
      atomic_store(v1, &qword_100050628);
    }
  }
}

void sub_1000373A0(uint64_t a1)
{
  if (!qword_100050640)
  {
    type metadata accessor for KVSCleanupPermission();
    sub_100037434(&qword_100050478, &type metadata accessor for KVSCleanupPermission, &protocol conformance descriptor for KVSCleanupPermission);
    v1 = type metadata accessor for Item();
    if (!v2)
    {
      atomic_store(v1, &qword_100050640);
    }
  }
}

uint64_t sub_100037434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10003747C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:v2];

  v6.receiver = v2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_100037658()
{
  v15 = v0;
  v1 = *(v0 + 112);

  v2 = *(v0 + 152);
  os_unfair_lock_lock((v1 + 20));
  v3 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v3)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEA00000000007365;
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = 0x6572756C696166;
    if (v2)
    {
      v7 = 0x73736563637573;
    }

    if (v3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x676E616863206F6ELL;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    v11 = sub_1000105E4(v8, v4, &v14);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished updating today data with result: %{public}s", v9, 0xCu);
    sub_10000461C(v10);
  }

  else
  {
  }

  if ((v2 & v3) == 1)
  {
    sub_100007184(0, &qword_10004FA28, &type metadata for () + 8, &type metadata accessor for PassthroughSubject);
    sub_100037F88();
    Subject<>.send()();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000378D4()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100037A10, v1, v0);
}

uint64_t sub_100037A10()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100037A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100011158(0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100037E6C(a3, v11);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100011230(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100011230(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100011230(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_100037D34(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler);
  if (result)
  {
    return [result tickleWithQualityOfService:9 data:1 completion:0];
  }

  __break(1u);
  return result;
}

uint64_t sub_100037DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  v9 = v4;
  return sub_100010BF8(a3, &v8, "StocksApp/StocksTodayAgent.swift", 32, 2u, a4);
}

uint64_t sub_100037E6C(uint64_t a1, uint64_t a2)
{
  sub_100011158(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037ED0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012308;

  return sub_100011344(a1, v4);
}

unint64_t sub_100037F88()
{
  result = qword_1000507A0;
  if (!qword_1000507A0)
  {
    sub_100007184(255, &qword_10004FA28, &type metadata for () + 8, &type metadata accessor for PassthroughSubject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000507A0);
  }

  return result;
}

__n128 sub_100038040(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10003806C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 120))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000380C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t AppDependencyManager.add<A>(key:dependency:)()
{
  return AppDependencyManager.add<A>(key:dependency:)();
}

{
  return AppDependencyManager.add<A>(key:dependency:)();
}

uint64_t Assembly.init()()
{
  return Assembly.init()();
}

{
  return Assembly.init()();
}

{
  return Assembly.init()();
}

{
  return Assembly.init()();
}

uint64_t type metadata accessor for Assembly()
{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

uint64_t Item<>.init(_:label:resetBehavior:actions:)()
{
  return Item<>.init(_:label:resetBehavior:actions:)();
}

{
  return Item<>.init(_:label:resetBehavior:actions:)();
}

uint64_t dispatch thunk of EventManager.trigger(on:behavior:block:)()
{
  return dispatch thunk of EventManager.trigger(on:behavior:block:)();
}

{
  return dispatch thunk of EventManager.trigger(on:behavior:block:)();
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:)()
{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

uint64_t type metadata accessor for FrameworkAssembly()
{
  return type metadata accessor for FrameworkAssembly();
}

{
  return type metadata accessor for FrameworkAssembly();
}

{
  return type metadata accessor for FrameworkAssembly();
}

uint64_t RegistrationContainer.register<A>(_:name:factory:)()
{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)()
{
  return dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
}

{
  return dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
}

uint64_t Promise.then<A>(on:closure:)()
{
  return Promise.then<A>(on:closure:)();
}

{
  return Promise.then<A>(on:closure:)();
}