void sub_100001C78(uint64_t result, uint64_t a2)
{
  if (qword_1000556B0 != -1)
  {
    sub_10003B5A0();
  }
}

void sub_100001CA4(id a1)
{
  if (gp_isInternalBuild())
  {
    sub_10003B5B4();
  }

  sub_100001CCC();
}

id sub_100001CCC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000556B8;
  v7 = qword_1000556B8;
  if (!qword_1000556B8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000034F8;
    v3[3] = &unk_10004D5C8;
    v3[4] = &v4;
    sub_1000034F8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100001D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001DAC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = [objc_alloc(sub_100001CCC()) initWithBundleIdentifier:v8 enabled:a3 actionSymbols:v7];

  [v9 showGameModeBannerWithConfig:v10];
}

uint64_t sub_100001E4C()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  else
  {
    return MGIsDeviceOneOfType();
  }
}

uint64_t sub_100002C90()
{
  if (sub_100003394())
  {
    return 1;
  }

  else
  {
    return MGIsDeviceOneOfType();
  }
}

Class sub_1000034F8(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1000556C0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100003624;
    v3[4] = &unk_10004D600;
    v3[5] = v3;
    v4 = off_10004D5E8;
    v5 = 0;
    qword_1000556C0 = _sl_dlopen();
  }

  if (!qword_1000556C0)
  {
    sub_10003B698(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("GKGameModeBannerConfig");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10003B61C();
  }

  qword_1000556B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003624(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1000556C0 = result;
  return result;
}

void sub_1000036FC(unsigned int a1)
{
  v4 = 0;
  v3 = 8;
  v2 = a1;
  if (sysctlbyname("kern.console_mode", &v4, &v3, &v2, 8uLL) == -1)
  {
    v1 = __error();
    NSLog(@"kern.console_mode failed with error: %d", *v1);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GamePolicyDaemon();
  swift_allocObject();
  qword_100056570 = sub_100004274();
  sub_100003800(qword_100056570 + 16, v5);
  v3 = v6;
  if (!v6)
  {
    sub_1000038B8(v5);
    dispatch_main();
  }

  v4 = v7;
  sub_100003920(v5, v6);
  (*(v4 + 8))(v3, v4);
  sub_100003964(v5);
  dispatch_main();
}

uint64_t sub_100003800(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003870(&qword_100053490, &qword_10003DF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003870(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000038B8(uint64_t a1)
{
  v2 = sub_100003870(&qword_100053490, &qword_10003DF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100003920(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003964(void *a1)
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

id variable initialization expression of GamePolicyMobileAssetRetriever.lock()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

__n128 sub_1000039F8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003A04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003A24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_100003A78(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

BOOL sub_100003AD0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100003B30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100003B5C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100003C5C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003C8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100003DE0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100003D34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPCSustainableModeOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100003E18(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100003EA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Version();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GamePolicyMobileAsset.description.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_maAsset) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t GamePolicyMobileAsset.deinit()
{
  v1 = OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_compatibilityVersion;
  v2 = type metadata accessor for Version();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_contentVersion, v2);

  return v0;
}

uint64_t GamePolicyMobileAsset.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_compatibilityVersion;
  v2 = type metadata accessor for Version();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_contentVersion, v2);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_100004110()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC11gamepolicyd21GamePolicyMobileAsset_maAsset) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t type metadata accessor for GamePolicyMobileAsset(uint64_t a1)
{
  result = qword_100053678;
  if (!qword_100053678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000041C8(uint64_t a1)
{
  result = type metadata accessor for Version();
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

void *sub_100004274()
{
  if (_set_user_dir_suffix())
  {
    v1 = type metadata accessor for GamePolicyDaemon_iOS();
    swift_allocObject();
    v0[2] = sub_100022BAC();
    v0[5] = v1;
    v0[6] = &off_10004E0E0;
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100004334()
{
  sub_1000038B8(v0 + 16);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100004390()
{
  sub_100003800(*v0 + 16, v4);
  v1 = v5;
  if (!v5)
  {
    return sub_1000038B8(v4);
  }

  v2 = v6;
  sub_100003920(v4, v5);
  (*(v2 + 8))(v1, v2);
  return sub_100003964(v4);
}

Swift::Int sub_100004418()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10000448C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000044E0@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10004D698, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100004554()
{
  v1 = OBJC_IVAR____TtC11gamepolicyd19ConfigurationBundle_version;
  v2 = type metadata accessor for Version();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11gamepolicyd19ConfigurationBundle_compatibilityVersion, v2);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for ConfigurationBundle(uint64_t a1)
{
  result = qword_1000537F0;
  if (!qword_1000537F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004698(uint64_t a1)
{
  result = type metadata accessor for Version();
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

uint64_t getEnumTagSinglePayload for ConfigurationBundleType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ConfigurationBundleType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100004840()
{
  result = qword_100053898;
  if (!qword_100053898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053898);
  }

  return result;
}

uint64_t sub_100004894()
{
  type metadata accessor for GameStore(0);
  swift_allocObject();
  result = sub_100007CF4();
  qword_1000538A0 = result;
  return result;
}

uint64_t sub_1000048D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100004948(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata);
  *(v2 + OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata) = a1;
  v9 = a1;

  static Logger.gameStore.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updated gaming metadata. Refreshing games.", v12, 2u);
  }

  (*(v5 + 8))(v7, v4);
  return sub_100006910();
}

void sub_100004AAC(void *a1)
{
  v26 = a1;
  v25 = type metadata accessor for URL();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata);
  v6 = dispatch thunk of GamingMetadataBlob.processPartialPathAllowList.getter();

  v7 = 0;
  v9 = v6 + 56;
  v8 = *(v6 + 56);
  v27 = v6;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v14 = (v2 + 8);
  while (v12)
  {
    v15 = v7;
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = (*(v27 + 48) + ((v15 << 10) | (16 * v16)));
    v18 = *v17;
    v19 = v17[1];

    v20 = [v26 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = URL.absoluteString.getter();
    v23 = v22;
    (*v14)(v4, v25);
    v30 = v21;
    v31 = v23;
    v28 = v18;
    v29 = v19;
    sub_100009790();
    LOBYTE(v21) = StringProtocol.contains<A>(_:)();

    if (v21)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_11;
    }

    v12 = *(v9 + 8 * v15);
    ++v7;
    if (v12)
    {
      v7 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

BOOL sub_100004CD4(void *a1)
{
  v2 = [a1 bundleIdentifier];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata);
  v8 = dispatch thunk of GamingMetadataBlob.launchers.getter();

  if (v8 >> 62)
  {
LABEL_21:
    v17 = v8 & 0xFFFFFFFFFFFFFF8;
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = v8 & 0xFFFFFFFFFFFFFF8;
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  do
  {
    v12 = v9 != v10;
    if (v9 == v10)
    {
      break;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v17 + 16))
      {
        goto LABEL_20;
      }

      v13 = *(v8 + 8 * v10 + 32);
    }

    v14 = v13;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (GamingMetadataModel.Launcher.bundleIdentifier.getter() == v4 && v15 == v6)
    {

      goto LABEL_17;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v10;
  }

  while ((v11 & 1) == 0);

LABEL_17:

  return v12;
}

void *sub_100004E70(uint64_t a1)
{
  v56 = 0;
  v55 = type metadata accessor for GameLibraryGame.Config();
  v2 = *(v55 - 8);
  v3 = __chkstk_darwin(v55);
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v61 = &v53 - v5;
  v67 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 40;
    v64 = _swiftEmptyArrayStorage;
    do
    {
      v9 = objc_allocWithZone(LSApplicationRecord);

      v10 = String._bridgeToObjectiveC()();

      v65[0] = 0;
      v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:0 error:v65];

      if (v11)
      {
        v12 = v65[0];
        v13 = v11;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v64 = v67;
      }

      else
      {
        v8 = v65[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v56 = 0;
      }

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  else
  {
    v64 = _swiftEmptyArrayStorage;
  }

  v14 = v64;
  if (v64 >> 62)
  {
    v52 = v64;
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v52;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_12:
      v16 = v14;
      v66 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v15 < 0)
      {
        __break(1u);
      }

      v17 = 0;
      v54 = OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata;
      v18 = v16;
      v58 = (v2 + 16);
      v59 = v16 & 0xC000000000000001;
      v57 = (v2 + 8);
      p_name = (&stru_100051FF8 + 8);
      v20 = v55;
      v60 = v15;
      while (1)
      {
        if (v59)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v23 = *(v18 + 8 * v17 + 32);
        }

        v24 = v23;
        v25 = [v23 persistentIdentifier];
        v26 = [v24 bundleIdentifier];
        if (v26)
        {
          v27 = v26;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v28 = [v24 iTunesMetadata];
        v29 = [v28 p_name[196]];

        if (v29)
        {
          v30 = [v24 iTunesMetadata];
          [v30 p_name[196]];

          UInt64._bridgeToObjectiveC()();
        }

        if (sub_100004CD4(v24))
        {
          goto LABEL_14;
        }

        v31 = [v24 applicationState];
        v32 = [v31 isInstalled];

        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }

        if ([v24 isGameCenterEnabled] & 1) != 0 || (sub_100008744(v24))
        {
          goto LABEL_31;
        }

        v33 = [v24 bundleIdentifier];
        if (v33)
        {
          v34 = v33;
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = *(v63 + v54);
          v39 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierAllowList.getter();

          LOBYTE(v38) = sub_1000263E8(v35, v37, v39);

          if (v38)
          {

            swift_arrayDestroy();
            v20 = v55;
LABEL_31:
            v44 = [v24 bundleIdentifier];
            if (v44)
            {
              v45 = v44;
              v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v48 = v47;

              v49 = *(v63 + v54);
              v50 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierBlockList.getter();

              sub_1000263E8(v46, v48, v50);
              v20 = v55;
            }

            goto LABEL_14;
          }

          v53 = &v53;
          v65[0] = v35;
          v65[1] = v37;
          __chkstk_darwin(v40);
          *(&v53 - 2) = v65;
          v41 = v56;
          v42 = sub_10001EACC(sub_1000097E4, (&v53 - 4), &off_10004D738);
          v56 = v41;
          swift_arrayDestroy();

          v20 = v55;
          if (v42)
          {
            goto LABEL_31;
          }
        }

        sub_100004AAC(v24);
        if (v43)
        {
          goto LABEL_31;
        }

LABEL_14:
        ++v17;
        v21 = v61;
        GameLibraryGame.Config.init(persistentIdentifier:bundleID:adamID:isGame:)();
        (*v58)(v62, v21, v20);
        v22 = objc_allocWithZone(type metadata accessor for GameLibraryGame());
        GameLibraryGame.init(config:)();

        (*v57)(v21, v20);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v18 = v64;
        p_name = &stru_100051FF8.name;
        if (v60 == v17)
        {

          return v66;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100005530(unint64_t a1)
{
  v3 = type metadata accessor for GameLibraryGame.Config();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v71 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v70 = &v60 - v8;
  v75 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v59 = v7;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v59;
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v7;
  v61 = v1;
  v72 = v4;
  if (v9)
  {
    sub_100009748(0, &qword_100053BF0, NSNumber_ptr);
    if (v9 < 1)
    {
      __break(1u);
      goto LABEL_48;
    }

    v10 = 0;
    v63 = 0;
    v11 = _swiftEmptyArrayStorage;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      v15 = [v13 isEqualToNumber:isa];

      if (v15)
      {
      }

      else
      {
        v16 = UInt64.init(truncating:)();
        v17 = objc_allocWithZone(LSApplicationRecord);
        v73[0] = 0;
        v18 = [v17 initWithStoreItemIdentifier:v16 error:v73];
        if (v18)
        {
          v19 = v18;
          v20 = v73[0];
          v21 = v19;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v11 = v75;
        }

        else
        {
          v22 = v73[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();

          v63 = 0;
        }
      }

      ++v10;
    }

    while (v9 != v10);
  }

  else
  {
    v63 = 0;
    v11 = _swiftEmptyArrayStorage;
  }

  if (v11 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v64;
  v25 = v61;
  if (v23)
  {
    v74 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v23 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v62 = OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata;
      v66 = (v72 + 16);
      v67 = v11 & 0xC000000000000001;
      v65 = (v72 + 8);
      p_name = (&stru_100051FF8 + 8);
      v68 = v23;
      v69 = v11;
      while (1)
      {
        if (v67)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v30 = *(v11 + 8 * v26 + 32);
        }

        v31 = v30;
        v72 = [v30 persistentIdentifier];
        v32 = [v31 bundleIdentifier];
        if (v32)
        {
          v33 = v32;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v34 = [v31 p_name[195]];
        v35 = [v34 storeItemIdentifier];

        if (v35)
        {
          v36 = [v31 p_name[195]];
          [v36 storeItemIdentifier];

          UInt64._bridgeToObjectiveC()();
        }

        if (sub_100004CD4(v31))
        {
          goto LABEL_23;
        }

        v37 = [v31 applicationState];
        v38 = [v37 isInstalled];

        if ((v38 & 1) == 0)
        {
          goto LABEL_23;
        }

        if ([v31 isGameCenterEnabled] & 1) != 0 || (sub_100008744(v31))
        {
          goto LABEL_40;
        }

        v39 = [v31 bundleIdentifier];
        if (v39)
        {
          v40 = v39;
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;

          v44 = *(v25 + v62);
          v45 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierAllowList.getter();

          LOBYTE(v44) = sub_1000263E8(v41, v43, v45);

          if (v44)
          {

            swift_arrayDestroy();
            v24 = v64;
LABEL_40:
            v50 = [v31 bundleIdentifier];
            if (v50)
            {
              v51 = v50;
              v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v54 = v53;

              v55 = *(v25 + v62);
              v56 = v25;
              v57 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierBlockList.getter();

              sub_1000263E8(v52, v54, v57);
              v24 = v64;

              v25 = v56;
            }

            goto LABEL_23;
          }

          v60 = &v60;
          v73[0] = v41;
          v73[1] = v43;
          __chkstk_darwin(v46);
          *(&v60 - 2) = v73;
          v47 = v63;
          v48 = sub_10001EACC(sub_1000097E4, (&v60 - 4), &off_10004D738);
          v63 = v47;
          swift_arrayDestroy();

          v24 = v64;
          if (v48)
          {
            goto LABEL_40;
          }
        }

        sub_100004AAC(v31);
        if (v49)
        {
          goto LABEL_40;
        }

LABEL_23:
        ++v26;
        v28 = v70;
        GameLibraryGame.Config.init(persistentIdentifier:bundleID:adamID:isGame:)();
        (*v66)(v71, v28, v24);
        v29 = objc_allocWithZone(type metadata accessor for GameLibraryGame());
        GameLibraryGame.init(config:)();

        (*v65)(v28, v24);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 = v69;
        p_name = &stru_100051FF8.name;
        if (v68 == v26)
        {

          return v74;
        }
      }
    }

LABEL_48:
    __break(1u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100005C8C()
{
  v1 = type metadata accessor for Logger();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = __chkstk_darwin(v1);
  v3 = __chkstk_darwin(v2);
  v5 = v44 - v4;
  v6 = __chkstk_darwin(v3);
  v8 = v44 - v7;
  __chkstk_darwin(v6);
  v10 = v44 - v9;
  v47 = type metadata accessor for Date();
  v11 = *(v47 - 8);
  v12 = __chkstk_darwin(v47);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v44 - v15;
  static Date.now.getter();
  v17 = *(v0 + OBJC_IVAR____TtC11gamepolicyd9GameStore_userDefaults);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 objectForKey:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54 = v52;
  v55 = v53;
  if (!*(&v53 + 1))
  {
    sub_1000096E8(&v54, &qword_1000553D0, &unk_10003E3F0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v24 = v48;
    v23 = v49;
    goto LABEL_19;
  }

  v44[0] = v10;
  v44[1] = v0;
  v21 = v50;
  v20 = v51;
  sub_100009748(0, &qword_100053B20, NSKeyedUnarchiver_ptr);
  sub_100003870(&qword_100053B28, &unk_10003E3A0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10003E2E0;
  *(v22 + 32) = sub_100009748(0, &qword_100053B30, NSArray_ptr);
  *(v22 + 40) = type metadata accessor for GameLibraryGame();
  v45 = v21;
  v46 = v20;
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (*(&v55 + 1))
  {
    if (swift_dynamicCast())
    {
      v25 = v52;
      v26 = v44[0];
      static Logger.gameStore.getter();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        if (v25 >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v30 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v29 + 4) = v30;

        _os_log_impl(&_mh_execute_header, v27, v28, "Got %ld library games from disk.", v29, 0xCu);
      }

      else
      {
      }

      v24 = v48;
      v23 = v49;
      (*(v48 + 8))(v26, v49);
      swift_getKeyPath();
      swift_getKeyPath();
      *&v54 = v25;

      static Published.subscript.setter();
      sub_100003E18(v45, v46);
      goto LABEL_19;
    }
  }

  else
  {
    sub_1000096E8(&v54, &qword_1000553D0, &unk_10003E3F0);
  }

  static Logger.gameStore.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v23 = v49;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Unable to cast decoded object to [GameLibraryGame].", v34, 2u);
  }

  sub_100003E18(v45, v46);

  v35 = v8;
  v24 = v48;
  (*(v48 + 8))(v35, v23);
LABEL_19:
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v37 = v36;
  static Logger.gameStore.getter();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "Cold loaded library in %f seconds.", v40, 0xCu);
  }

  (*(v24 + 8))(v5, v23);
  v41 = *(v11 + 8);
  v42 = v47;
  v41(v14, v47);
  return (v41)(v16, v42);
}

uint64_t sub_100006410()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v40 - v6;
  v40 = type metadata accessor for Date();
  v8 = *(v40 - 8);
  v9 = __chkstk_darwin(v40);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  static Date.now.getter();
  v14 = *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_userDefaults);
  v15 = objc_opt_self();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  type metadata accessor for GameLibraryGame();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v43 = 0;
  v17 = [v15 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v43];

  v18 = v43;
  if (v17)
  {
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = Data._bridgeToObjectiveC()().super.isa;
    sub_100003E18(v19, v21);
    v23 = String._bridgeToObjectiveC()();
    [v14 setObject:v22 forKey:v23];

    v25 = v41;
    v24 = v42;
  }

  else
  {
    v26 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.gameStore.getter();
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error saving installed games cache to disk: %@", v29, 0xCu);
      sub_1000096E8(v30, &unk_100053C00, &qword_10003E810);
    }

    else
    {
    }

    v25 = v41;
    v24 = v42;
    (*(v41 + 8))(v5, v42);
  }

  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v33 = v32;
  static Logger.gameStore.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "Library saved to disk. Operation took %f seconds.", v36, 0xCu);
  }

  (*(v25 + 8))(v7, v24);
  v37 = *(v8 + 8);
  v38 = v40;
  v37(v11, v40);
  return (v37)(v13, v38);
}

uint64_t sub_100006910()
{
  v1 = v0;
  v159 = type metadata accessor for GameLibraryGame.Config();
  v140 = *(v159 - 8);
  v2 = __chkstk_darwin(v159);
  v158 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v157 = &v134 - v4;
  v153 = type metadata accessor for NSFastEnumerationIterator();
  v143 = *(v153 - 1);
  __chkstk_darwin(v153);
  v156 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for Logger();
  v151 = *(v150 - 8);
  v6 = __chkstk_darwin(v150);
  v152 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v155 = &v134 - v9;
  v10 = __chkstk_darwin(v8);
  v154 = (&v134 - v11);
  __chkstk_darwin(v10);
  v13 = &v134 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v144 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v134 - v19;
  __chkstk_darwin(v18);
  v22 = &v134 - v21;
  v23 = *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_lock);
  [v23 lock];
  v24 = OBJC_IVAR____TtC11gamepolicyd9GameStore_isRefreshingInstalledGames;
  v25 = *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_isRefreshingInstalledGames);
  static Date.now.getter();
  v26 = OBJC_IVAR____TtC11gamepolicyd9GameStore_lastLibraryRefreshDate;
  swift_beginAccess();
  v27 = *(v15 + 16);
  v141 = v26;
  v27(v20, v1 + v26, v14);
  v148 = v22;
  Date.timeIntervalSince(_:)();
  v29 = v28;
  v142 = v15;
  v30 = *(v15 + 8);
  v149 = v14;
  v147 = v15 + 8;
  v146 = v30;
  v30(v20, v14);
  if (v29 < 1.0)
  {
    static Logger.gameStore.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Ignoring library refresh request. Last refresh was less than 1 second ago.", v33, 2u);
    }

    (*(v151 + 8))(v13, v150);
    [v23 unlock];
    return v146(v148, v149);
  }

  *(v1 + v24) = 1;
  [v23 unlock];
  if (v25)
  {
    v34 = v154;
    static Logger.gameStore.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Received request to refresh, but already refreshing. Ignoring.", v37, 2u);
    }

    (*(v151 + 8))(v34, v150);
    return v146(v148, v149);
  }

  v39 = v1;
  v137 = v24;
  v138 = v23;
  v40 = v155;
  static Logger.gameStore.getter();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Refreshing installed games", v43, 2u);
  }

  v44 = *(v151 + 8);
  v151 += 8;
  v135 = v44;
  v44(v40, v150);
  v45 = [objc_opt_self() enumeratorWithOptions:0];
  v164 = _swiftEmptyArrayStorage;
  v46 = v156;
  v136 = v45;
  NSEnumerator.makeIterator()();
  v154 = OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata;
  NSFastEnumerationIterator.next()();
  v145 = v1;
  v47 = v152;
  if (v163)
  {
    v134 = 0;
    v139 = _swiftEmptyArrayStorage;
    v48 = &unk_100053B18;
    while (1)
    {
      sub_1000096B8(&v162, v160);
      sub_100009748(0, v48, LSApplicationRecord_ptr);
      if (!swift_dynamicCast())
      {
        goto LABEL_15;
      }

      v49 = v161;
      v50 = [v161 bundleIdentifier];
      if (v50)
      {
        v155 = v49;
        v51 = v50;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v55 = *(v154 + v39);
        v56 = dispatch thunk of GamingMetadataBlob.launchers.getter();

        if (v56 >> 62)
        {
          v57 = _CocoaArrayWrapper.endIndex.getter();
          v39 = v57;
        }

        else
        {
          v39 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v58 = 0;
        while (1)
        {
          if (v39 == v58)
          {

            v39 = v145;
            v47 = v152;
            v46 = v156;
            v48 = &unk_100053B18;
            v49 = v155;
            goto LABEL_32;
          }

          if ((v56 & 0xC000000000000001) != 0)
          {
            v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_88;
            }

            v57 = *(v56 + 8 * v58 + 32);
          }

          v60 = v57;
          if (__OFADD__(v58, 1))
          {
            break;
          }

          v61 = GamingMetadataModel.Launcher.bundleIdentifier.getter();
          v47 = v62;
          if (v61 == v52 && v62 == v54)
          {

LABEL_39:

            v39 = v145;
            v47 = v152;
            v46 = v156;
            v48 = &unk_100053B18;
            goto LABEL_15;
          }

          v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v58;
          if (v59)
          {

            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

LABEL_32:
      v63 = [v49 applicationState];
      v64 = [v63 isInstalled];

      if (!v64)
      {
        goto LABEL_14;
      }

      if ([v49 isGameCenterEnabled] & 1) != 0 || (sub_100008744(v49))
      {
        goto LABEL_42;
      }

      v65 = [v49 bundleIdentifier];
      if (v65)
      {
        v66 = v39;
        v67 = v47;
        v68 = v49;
        v69 = v65;
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v71;

        v73 = *(v154 + v66);
        v74 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierAllowList.getter();

        LOBYTE(v73) = sub_1000263E8(v70, v72, v74);

        if (v73)
        {

          swift_arrayDestroy();
          v49 = v68;
          v47 = v67;
          v39 = v66;
          v48 = &unk_100053B18;
          goto LABEL_42;
        }

        *&v160[0] = v70;
        *(&v160[0] + 1) = v72;
        __chkstk_darwin(v75);
        *(&v134 - 2) = v160;
        v76 = v134;
        v77 = sub_10001EACC(sub_1000096C8, (&v134 - 4), &off_10004D6F8);
        v134 = v76;
        swift_arrayDestroy();

        v49 = v68;
        v47 = v67;
        v39 = v66;
        v48 = &unk_100053B18;
        if (v77)
        {
          goto LABEL_42;
        }
      }

      sub_100004AAC(v49);
      if (v78)
      {
LABEL_42:
        v79 = [v49 bundleIdentifier];
        if (v79)
        {
          v80 = v79;
          v81 = v48;
          v82 = v47;
          v83 = v49;
          v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v86 = v85;

          v87 = *(v154 + v39);
          v88 = dispatch thunk of GamingMetadataBlob.processBundleIdentifierBlockList.getter();

          if (*(v88 + 16))
          {
            Hasher.init(_seed:)();
            String.hash(into:)();
            v89 = Hasher._finalize()();
            v90 = -1 << *(v88 + 32);
            v91 = v89 & ~v90;
            if ((*(v88 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91))
            {
              v92 = ~v90;
              while (1)
              {
                v93 = (*(v88 + 48) + 16 * v91);
                v94 = *v93 == v84 && v93[1] == v86;
                if (v94 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v91 = (v91 + 1) & v92;
                if (((*(v88 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
                {
                  goto LABEL_52;
                }
              }

              v47 = v82;
              v48 = v81;
              v46 = v156;
              goto LABEL_15;
            }
          }

LABEL_52:

          v49 = v83;
          v47 = v82;
          v48 = v81;
          v46 = v156;
        }

        v95 = v49;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v139 = v164;
        NSFastEnumerationIterator.next()();
        if (!v163)
        {
          goto LABEL_60;
        }
      }

      else
      {
LABEL_14:

LABEL_15:
        NSFastEnumerationIterator.next()();
        if (!v163)
        {
          goto LABEL_60;
        }
      }
    }
  }

  v139 = _swiftEmptyArrayStorage;
LABEL_60:
  (*(v143 + 8))(v46, v153);
  v96 = OBJC_IVAR____TtC11gamepolicyd9GameStore_installedGameRecords;
  *(v39 + OBJC_IVAR____TtC11gamepolicyd9GameStore_installedGameRecords) = v139;

  v57 = *(v39 + v96);
  if (v57 >> 62)
  {
LABEL_89:
    v133 = v57;
    v97 = _CocoaArrayWrapper.endIndex.getter();
    v57 = v133;
  }

  else
  {
    v97 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v97)
  {
    *&v160[0] = _swiftEmptyArrayStorage;
    v98 = v57;

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v97 < 0)
    {
      __break(1u);
LABEL_91:
      v115 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_79;
    }

    v99 = 0;
    v100 = v98;
    v155 = (v98 & 0xC000000000000001);
    v154 = (v140 + 16);
    v153 = (v140 + 8);
    p_name = (&stru_100051FF8 + 8);
    v156 = v98;
    do
    {
      if (v155)
      {
        v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v106 = *&v100[8 * v99 + 32];
      }

      v107 = v106;
      v108 = [v106 persistentIdentifier];
      v109 = [v107 bundleIdentifier];
      if (v109)
      {
        v110 = v109;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v111 = [v107 p_name[195]];
      v112 = p_name;
      v113 = [v111 storeItemIdentifier];

      if (v113)
      {
        v102 = [v107 v112[195]];
        [v102 storeItemIdentifier];

        UInt64._bridgeToObjectiveC()();
      }

      ++v99;
      v103 = v157;
      GameLibraryGame.Config.init(persistentIdentifier:bundleID:adamID:isGame:)();
      v104 = v159;
      (*v154)(v158, v103, v159);
      v105 = objc_allocWithZone(type metadata accessor for GameLibraryGame());
      GameLibraryGame.init(config:)();

      (*v153)(v103, v104);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v100 = v156;
      p_name = &stru_100051FF8.name;
    }

    while (v97 != v99);

    v114 = *&v160[0];
    v39 = v145;
    v47 = v152;
  }

  else
  {

    v114 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v98) = sub_100008A7C(*&v160[0], v114);

  if ((v98 & 1) == 0)
  {

    v119 = 0;
    v118 = 0xE000000000000000;
    goto LABEL_81;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v160[0] = v114;

  static Published.subscript.setter();
  *&v160[0] = 0;
  *(&v160[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v160[0] = 0xD000000000000021;
  *(&v160[0] + 1) = 0x8000000100040D00;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v162 >> 62)
  {
    goto LABEL_91;
  }

  v115 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_79:

  *&v162 = v115;
  v116._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v116);

  v117._countAndFlagsBits = 0x202E73656D616720;
  v117._object = 0xE800000000000000;
  String.append(_:)(v117);
  v118 = *(&v160[0] + 1);
  v119 = *&v160[0];
LABEL_81:
  v120 = v144;
  static Date.now.getter();
  v121 = v141;
  swift_beginAccess();
  (*(v142 + 24))(v39 + v121, v120, v149);
  swift_endAccess();
  Date.timeIntervalSince(_:)();
  v123 = v122;
  static Logger.gameStore.getter();

  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = v39;
    v128 = swift_slowAlloc();
    *&v160[0] = v128;
    *v126 = 136315394;
    v129 = sub_100034C38(v119, v118, v160);

    *(v126 + 4) = v129;
    *(v126 + 12) = 2048;
    *(v126 + 14) = v123;
    _os_log_impl(&_mh_execute_header, v124, v125, "Library refresh complete. %sOperation took %f seconds.", v126, 0x16u);
    sub_100003964(v128);
    v39 = v127;
  }

  else
  {
  }

  v135(v47, v150);
  if (v98)
  {
    sub_100006410();
  }

  v130 = v138;
  [v138 lock];
  *(v39 + v137) = 0;
  [v130 unlock];

  v131 = v149;
  v132 = v146;
  v146(v144, v149);
  return v132(v148, v131);
}

uint64_t sub_100007CF4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003870(&qword_100053AF8, &qword_10003E350);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC11gamepolicyd9GameStore__installedGames;
  aBlock[0] = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  (*(v9 + 32))(v1 + v12, v11, v8);
  v13 = (v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_gameStoreCacheKey);
  *v13 = 0x726F7453656D6167;
  v13[1] = 0xE900000000000065;
  v14 = OBJC_IVAR____TtC11gamepolicyd9GameStore_userDefaults;
  *(v1 + v14) = [objc_allocWithZone(NSUserDefaults) init];
  v15 = OBJC_IVAR____TtC11gamepolicyd9GameStore_lock;
  *(v1 + v15) = [objc_allocWithZone(NSLock) init];
  *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_installedGameRecords) = _swiftEmptyArrayStorage;
  v16 = OBJC_IVAR____TtC11gamepolicyd9GameStore_gamingMetadata;
  *(v1 + v16) = [objc_allocWithZone(type metadata accessor for GamingMetadataBlob()) init];
  static Date.distantPast.getter();
  *(v1 + OBJC_IVAR____TtC11gamepolicyd9GameStore_isRefreshingInstalledGames) = 0;
  sub_100005C8C();
  v17 = [objc_opt_self() defaultCenter];

  v18 = GamingMetadataBlobDidChangeNotification.getter();
  [v17 addObserver:v1 selector:"gamingMetadataBlobDidChange:" name:v18 object:0];

  sub_100009748(0, &qword_100053B00, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100008660;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024520;
  aBlock[3] = &unk_10004D9A0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100008680();
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_1000086D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v23 + 8))(v4, v2);
  (*(v5 + 8))(v7, v24);
  return v1;
}

uint64_t sub_100008188(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100006910();
  }

  return result;
}

void sub_1000081E0(void *a1)
{
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    type metadata accessor for GamingMetadataBlob();
    if (swift_dynamicCast())
    {
      sub_100004948(v1);
    }
  }

  else
  {
    sub_1000096E8(v4, &qword_1000553D0, &unk_10003E3F0);
  }
}

uint64_t sub_1000082F4()
{
  v1 = OBJC_IVAR____TtC11gamepolicyd9GameStore__installedGames;
  v2 = sub_100003870(&qword_100053AF8, &qword_10003E350);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11gamepolicyd9GameStore_lastLibraryRefreshDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for GameStore(uint64_t a1)
{
  result = qword_100053910;
  if (!qword_100053910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008484(uint64_t a1)
{
  sub_10000857C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000857C(uint64_t a1)
{
  if (!qword_100053920)
  {
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100053920);
    }
  }
}

uint64_t sub_1000085E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008628()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100008680()
{
  result = qword_100053B08;
  if (!qword_100053B08)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053B08);
  }

  return result;
}

unint64_t sub_1000086D8()
{
  result = qword_100053B10;
  if (!qword_100053B10)
  {
    sub_1000085E0(&unk_1000551B0, &unk_10003E7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053B10);
  }

  return result;
}

uint64_t sub_100008744(void *a1)
{
  v2 = type metadata accessor for UTType();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 iTunesMetadata];
  v6 = [v5 genreIdentifier];

  if (v6 == 6014)
  {
    v7 = 1;
    return v7 & 1;
  }

  v35 = 0;
  v8 = [a1 categoryTypesWithError:&v35];
  v9 = v35;
  if (!v8)
  {
    v26 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();

LABEL_22:
    v7 = 0;
    return v7 & 1;
  }

  v10 = v8;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v9;

  v33 = *(v11 + 16);
  if (!v33)
  {

    goto LABEL_22;
  }

  HIDWORD(v28) = 0;
  v13 = 0;
  v32 = v11 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v30 = v11;
  v31 = v34 + 16;
  v29 = (v34 + 8);
  do
  {
    if (v13 >= *(v11 + 16))
    {
      goto LABEL_25;
    }

    v14 = v13++;
    v15 = v2;
    (*(v34 + 16))(v4, v32 + *(v34 + 72) * v14, v2);
    v16 = gpf_gameCategories();
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = (v17 + 40);
    v19 = -*(v17 + 16);
    v20 = -1;
    while (1)
    {
      if (v19 + v20 == -1)
      {
        goto LABEL_8;
      }

      if (++v20 >= *(v17 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v22 = *(v18 - 1);
      v21 = *v18;

      if (UTType.identifier.getter() == v22 && v23 == v21)
      {
        break;
      }

      v18 += 2;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_7;
      }
    }

LABEL_7:
    HIDWORD(v28) = 1;
LABEL_8:
    v2 = v15;
    v11 = v30;
    (*v29)(v4, v15);
  }

  while (v13 != v33);

  v7 = BYTE4(v28);
  return v7 & 1;
}

uint64_t sub_100008A7C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_183;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = a2 >> 62;
  if (a2 >> 62)
  {
    if (v5 != _CocoaArrayWrapper.endIndex.getter())
    {
      return 1;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 1;
  }

  if (v4)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = v3 & 0xC000000000000001;
  v10 = v3 & 0xFFFFFFFFFFFFFF8;
  v11 = v3 + 32;
  v130 = a2 & 0xFFFFFFFFFFFFFF8;
  v131 = a2 & 0xC000000000000001;
  v133 = a2;
  v113 = v7;
  v114 = a2 >> 62;
  v111 = v3 & 0xFFFFFFFFFFFFFF8;
  v112 = v3 & 0xC000000000000001;
  v110 = v3 + 32;
LABEL_8:
  if (v9)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v8 >= *(v10 + 16))
    {
      goto LABEL_187;
    }

    v12 = *(v11 + 8 * v8);
  }

  v132 = v12;
  v13 = __OFADD__(v8, 1);
  v4 = v8 + 1;
  if (v13)
  {
    goto LABEL_188;
  }

  v119 = v4;
  if (v6)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *(v130 + 16);
  }

  v3 = v131;
  v15 = v132;
  if (!v14)
  {
LABEL_177:

    return 1;
  }

  v16 = 0;
  v134 = v14;
  while (1)
  {
    if (v3)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v130 + 16))
      {
        goto LABEL_182;
      }

      v17 = *(a2 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_3;
    }

    v20 = GameLibraryGame.persistentIdentifier.getter();
    v4 = v18;
    v21 = GameLibraryGame.persistentIdentifier.getter();
    v22 = v21;
    if (!v20)
    {

      if (!v22)
      {
        goto LABEL_170;
      }

      goto LABEL_18;
    }

    if (!v21)
    {

      v22 = v20;
      goto LABEL_18;
    }

    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v26;
    v4 = v27;
    v29 = v25;
    v30 = v25 >> 62;
    v31 = v27 >> 62;
    if (v30 == 3)
    {
      v32 = 0;
      v33 = v23;
      if (!v23)
      {
        a2 = v133;
        if (v29 == 0xC000000000000000 && v27 >> 62 == 3)
        {
          v32 = 0;
          if (!v26 && v27 == 0xC000000000000000)
          {

            sub_100003E18(0, 0xC000000000000000);
            v106 = 0;
            v107 = 0xC000000000000000;
LABEL_173:
            sub_100003E18(v106, v107);

LABEL_174:
            v6 = v114;
            v8 = v119;
            v10 = v111;
            v9 = v112;
            v11 = v110;

            result = 0;
            if (v119 == v113)
            {
              return result;
            }

            goto LABEL_8;
          }
        }

LABEL_44:
        if (v31 > 1)
        {
          goto LABEL_38;
        }

        goto LABEL_45;
      }

      a2 = v133;
      if (v31 > 1)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }

    if (v30 <= 1)
    {
      v33 = v23;
      a2 = v133;
      if (!v30)
      {
        v32 = BYTE6(v29);
        if (v31 > 1)
        {
          goto LABEL_38;
        }

        goto LABEL_45;
      }

      LODWORD(v32) = HIDWORD(v33) - v33;
      if (__OFSUB__(HIDWORD(v33), v33))
      {
        goto LABEL_189;
      }

      v32 = v32;
      if (v31 <= 1)
      {
        goto LABEL_45;
      }

LABEL_38:
      if (v31 == 2)
      {
        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        v13 = __OFSUB__(v34, v35);
        v36 = v34 - v35;
        if (v13)
        {
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
        }

LABEL_47:
        if (v32 != v36)
        {
          goto LABEL_66;
        }

        goto LABEL_53;
      }

      if (!v32)
      {
        goto LABEL_171;
      }

LABEL_66:
      v48 = v33;

      sub_100003E18(v28, v4);
      sub_100003E18(v48, v29);

      v3 = v131;
      v15 = v132;
LABEL_18:

      goto LABEL_19;
    }

    v33 = v23;
    a2 = v133;
    if (v30 == 2)
    {
      v38 = *(v33 + 16);
      v37 = *(v33 + 24);
      v13 = __OFSUB__(v37, v38);
      v32 = v37 - v38;
      if (v13)
      {
        goto LABEL_190;
      }

      goto LABEL_44;
    }

    v32 = 0;
    if (v31 > 1)
    {
      goto LABEL_38;
    }

LABEL_45:
    if (!v31)
    {
      v36 = BYTE6(v27);
      goto LABEL_47;
    }

    if (__OFSUB__(HIDWORD(v26), v26))
    {
      goto LABEL_186;
    }

    if (v32 != HIDWORD(v26) - v26)
    {
      goto LABEL_66;
    }

LABEL_53:
    if (v32 < 1)
    {
LABEL_171:
      v105 = v33;

      sub_100003E18(v28, v4);
      v106 = v105;
      v107 = v29;
      goto LABEL_173;
    }

    v129 = v26;
    if (v30 <= 1)
    {
      if (!v30)
      {
        __s1[0] = v33;
        LOWORD(__s1[1]) = v29;
        BYTE2(__s1[1]) = BYTE2(v29);
        BYTE3(__s1[1]) = BYTE3(v29);
        BYTE4(__s1[1]) = BYTE4(v29);
        BYTE5(__s1[1]) = BYTE5(v29);
        if (!v31)
        {
          goto LABEL_89;
        }

        v124 = v33;
        if (v31 == 1)
        {
          v39 = v26;
          v120 = (v26 >> 32) - v26;
          if (v26 >> 32 < v26)
          {
            goto LABEL_195;
          }

          v40 = v27;
          v41 = __DataStorage._bytes.getter();
          if (!v41)
          {
            goto LABEL_221;
          }

          v42 = v41;
          v43 = __DataStorage._offset.getter();
          if (__OFSUB__(v39, v43))
          {
            goto LABEL_200;
          }

          v44 = (v39 - v43 + v42);
          v4 = v40 & 0x3FFFFFFFFFFFFFFFLL;
          result = __DataStorage._length.getter();
          if (!v44)
          {
            goto LABEL_222;
          }

          if (result >= v120)
          {
            v46 = v120;
          }

          else
          {
            v46 = result;
          }

          v47 = v44;
          goto LABEL_151;
        }

        v73 = *(v26 + 24);
        v123 = *(v26 + 16);
        v40 = v27;
        v74 = __DataStorage._bytes.getter();
        if (v74)
        {
          v75 = v74;
          v76 = __DataStorage._offset.getter();
          if (__OFSUB__(v123, v76))
          {
            goto LABEL_205;
          }

          v118 = (v123 - v76 + v75);
          v13 = __OFSUB__(v73, v123);
          v61 = v73 - v123;
          if (v13)
          {
            goto LABEL_196;
          }
        }

        else
        {
          v118 = 0;
          v13 = __OFSUB__(v73, v123);
          v61 = v73 - v123;
          if (v13)
          {
            goto LABEL_196;
          }
        }

        v4 = v40 & 0x3FFFFFFFFFFFFFFFLL;
        v102 = __DataStorage._length.getter();
        v47 = v118;
        if (!v118)
        {
          goto LABEL_213;
        }

LABEL_148:
        if (v102 >= v61)
        {
          v46 = v61;
        }

        else
        {
          v46 = v102;
        }

LABEL_151:
        v85 = memcmp(__s1, v47, v46);

        v86 = v124;
        v87 = v29;
LABEL_152:
        sub_100003E18(v86, v87);

        sub_100003E18(v129, v40);
        v3 = v131;
        v15 = v132;
        a2 = v133;
        if (!v85)
        {
          goto LABEL_170;
        }

        goto LABEL_19;
      }

      v53 = v33;
      if (v33 > v33 >> 32)
      {
        goto LABEL_191;
      }

      v121 = v27;
      v125 = v33;
      v54 = __DataStorage._bytes.getter();
      v127 = v29;
      if (v54)
      {
        v55 = v54;
        v56 = __DataStorage._offset.getter();
        if (__OFSUB__(v53, v56))
        {
          goto LABEL_193;
        }

        v116 = (v53 - v56 + v55);
      }

      else
      {
        v116 = 0;
      }

      a2 = v133;
      __DataStorage._length.getter();
      if (v31 == 2)
      {
        v96 = *(v129 + 16);
        v109 = *(v129 + 24);
        v69 = __DataStorage._bytes.getter();
        if (v69)
        {
          v97 = __DataStorage._offset.getter();
          if (__OFSUB__(v96, v97))
          {
            goto LABEL_208;
          }

          v69 += v96 - v97;
        }

        v13 = __OFSUB__(v109, v96);
        v98 = v109 - v96;
        if (v13)
        {
          goto LABEL_203;
        }

        v99 = __DataStorage._length.getter();
        if (v99 >= v98)
        {
          v92 = v98;
        }

        else
        {
          v92 = v99;
        }

        result = v116;
        if (!v116)
        {
          goto LABEL_224;
        }

        a2 = v133;
        v93 = v29;
        if (!v69)
        {
          goto LABEL_223;
        }

        goto LABEL_167;
      }

      v4 = v121;
      if (v31 == 1)
      {
        if (v129 >> 32 < v129)
        {
          goto LABEL_202;
        }

        v70 = __DataStorage._bytes.getter();
        if (v70)
        {
          v71 = v70;
          v72 = __DataStorage._offset.getter();
          if (__OFSUB__(v129, v72))
          {
            goto LABEL_209;
          }

          v69 = (v129 - v72 + v71);
        }

        else
        {
          v69 = 0;
        }

        a2 = v133;
        v104 = __DataStorage._length.getter();
        if (v104 >= (v129 >> 32) - v129)
        {
          v92 = (v129 >> 32) - v129;
        }

        else
        {
          v92 = v104;
        }

        result = v116;
        if (!v116)
        {
          goto LABEL_220;
        }

        v93 = v127;
        if (!v69)
        {
          goto LABEL_219;
        }

        goto LABEL_167;
      }

      v94 = v116;
      __s1[0] = v129;
      LODWORD(__s1[1]) = v121;
      WORD2(__s1[1]) = WORD2(v121);
      if (!v116)
      {
        goto LABEL_214;
      }

      v95 = v129;
      goto LABEL_142;
    }

    if (v30 != 2)
    {
      memset(__s1, 0, 14);
      if (!v31)
      {
LABEL_89:
        __s2 = v26;
        v136 = v27;
        v137 = BYTE2(v27);
        v138 = BYTE3(v27);
        v139 = BYTE4(v27);
        v140 = BYTE5(v27);
        v62 = v33;
        v63 = v26;
        v64 = memcmp(__s1, &__s2, BYTE6(v27));

        v65 = v62;
        a2 = v133;
        sub_100003E18(v65, v29);

        sub_100003E18(v63, v4);
        v3 = v131;
        v15 = v132;
        if (!v64)
        {
          goto LABEL_170;
        }

        goto LABEL_19;
      }

      v124 = v33;
      if (v31 != 2)
      {
        v128 = v29;
        v77 = v26;
        v78 = (v26 >> 32) - v26;
        if (v26 >> 32 < v26)
        {
          goto LABEL_194;
        }

        v40 = v27;
        v79 = __DataStorage._bytes.getter();
        if (!v79)
        {
          goto LABEL_211;
        }

        v80 = v79;
        v81 = __DataStorage._offset.getter();
        if (__OFSUB__(v77, v81))
        {
          goto LABEL_199;
        }

        v82 = (v77 - v81 + v80);
        v4 = v40 & 0x3FFFFFFFFFFFFFFFLL;
        v83 = __DataStorage._length.getter();
        if (!v82)
        {
          goto LABEL_212;
        }

        if (v83 >= v78)
        {
          v84 = v78;
        }

        else
        {
          v84 = v83;
        }

        v85 = memcmp(__s1, v82, v84);

        v86 = v124;
        v87 = v128;
        goto LABEL_152;
      }

      v57 = *(v26 + 24);
      v122 = *(v26 + 16);
      v40 = v27;
      v58 = __DataStorage._bytes.getter();
      if (v58)
      {
        v59 = v58;
        v60 = __DataStorage._offset.getter();
        if (__OFSUB__(v122, v60))
        {
          goto LABEL_204;
        }

        v117 = (v122 - v60 + v59);
        v13 = __OFSUB__(v57, v122);
        v61 = v57 - v122;
        if (v13)
        {
          goto LABEL_197;
        }
      }

      else
      {
        v117 = 0;
        v13 = __OFSUB__(v57, v122);
        v61 = v57 - v122;
        if (v13)
        {
          goto LABEL_197;
        }
      }

      v4 = v40 & 0x3FFFFFFFFFFFFFFFLL;
      v102 = __DataStorage._length.getter();
      v47 = v117;
      if (!v117)
      {
        goto LABEL_215;
      }

      goto LABEL_148;
    }

    v121 = v27;
    v125 = v33;
    v49 = *(v33 + 16);
    v50 = __DataStorage._bytes.getter();
    v126 = v29;
    if (v50)
    {
      v51 = v50;
      v52 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v52))
      {
        goto LABEL_192;
      }

      v115 = (v49 - v52 + v51);
    }

    else
    {
      v115 = 0;
    }

    a2 = v133;
    __DataStorage._length.getter();
    if (v31 == 2)
    {
      break;
    }

    v4 = v121;
    if (v31 == 1)
    {
      if (v129 >> 32 < v129)
      {
        goto LABEL_198;
      }

      v66 = __DataStorage._bytes.getter();
      if (v66)
      {
        v67 = v66;
        v68 = __DataStorage._offset.getter();
        if (__OFSUB__(v129, v68))
        {
          goto LABEL_207;
        }

        v69 = (v129 - v68 + v67);
      }

      else
      {
        v69 = 0;
      }

      a2 = v133;
      v103 = __DataStorage._length.getter();
      if (v103 >= (v129 >> 32) - v129)
      {
        v92 = (v129 >> 32) - v129;
      }

      else
      {
        v92 = v103;
      }

      result = v115;
      if (!v115)
      {
        goto LABEL_218;
      }

      v93 = v126;
      if (!v69)
      {
        goto LABEL_217;
      }

LABEL_167:
      v4 = v121;
      if (result == v69)
      {

        sub_100003E18(v125, v93);
        v106 = v129;
        v107 = v121;
        goto LABEL_173;
      }

      v100 = memcmp(result, v69, v92);

      sub_100003E18(v125, v93);
      v101 = v129;
      goto LABEL_169;
    }

    v94 = v115;
    __s1[0] = v129;
    LODWORD(__s1[1]) = v121;
    WORD2(__s1[1]) = WORD2(v121);
    if (!v115)
    {
      goto LABEL_216;
    }

    v95 = v129;
LABEL_142:
    v100 = memcmp(v94, __s1, BYTE6(v4));

    sub_100003E18(v125, v29);
    v101 = v95;
LABEL_169:
    sub_100003E18(v101, v4);

    v3 = v131;
    v15 = v132;
    if (!v100)
    {
LABEL_170:
      v22 = v15;
      goto LABEL_174;
    }

LABEL_19:
    ++v16;
    if (v19 == v134)
    {
      goto LABEL_177;
    }
  }

  v88 = *(v129 + 16);
  v108 = *(v129 + 24);
  v69 = __DataStorage._bytes.getter();
  if (v69)
  {
    v89 = __DataStorage._offset.getter();
    if (__OFSUB__(v88, v89))
    {
      goto LABEL_206;
    }

    v69 += v88 - v89;
  }

  v13 = __OFSUB__(v108, v88);
  v90 = v108 - v88;
  if (v13)
  {
    goto LABEL_201;
  }

  v91 = __DataStorage._length.getter();
  if (v91 >= v90)
  {
    v92 = v90;
  }

  else
  {
    v92 = v91;
  }

  result = v115;
  if (!v115)
  {
    goto LABEL_210;
  }

  a2 = v133;
  v93 = v29;
  if (v69)
  {
    goto LABEL_167;
  }

  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __DataStorage._length.getter();
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  result = __DataStorage._length.getter();
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
  return result;
}

_OWORD *sub_1000096B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000096E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003870(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009748(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100009790()
{
  result = qword_100053B38;
  if (!qword_100053B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053B38);
  }

  return result;
}

uint64_t sub_100009800(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &aBlock - v8;
  kGamePolicyToolEntitlement.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [a1 valueForEntitlement:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  aBlock = v42;
  v38 = v43;
  if (!*(&v43 + 1))
  {
    sub_1000096E8(&aBlock, &qword_1000553D0, &unk_10003E3F0);
    goto LABEL_11;
  }

  sub_100009748(0, &qword_100053BF0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    static Logger.toolCoordinator.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Unable to accept incoming tool connection for unentitled process.", v33, 2u);
    }

    (*(v4 + 8))(v7, v3);
    return 0;
  }

  v12 = v41;
  if (([v41 BOOLValue] & 1) == 0)
  {
    static Logger.toolCoordinator.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to accept incoming tool connection for unentitled process.", v36, 2u);
    }

    (*(v4 + 8))(v9, v3);
    return 0;
  }

  v13 = *(v1 + OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_queue);
  type metadata accessor for GamePolicyToolProxy();
  v14 = swift_allocObject();
  v14[5] = 0;
  swift_unknownObjectWeakInit();
  v14[2] = a1;
  v14[3] = v13;
  v14[5] = &off_10004D9D0;
  swift_unknownObjectWeakAssign();
  v15 = objc_opt_self();
  v16 = v13;
  v17 = a1;
  v18 = [v15 interfaceWithProtocol:&OBJC_PROTOCOL____TtP10GamePolicy20GamePolicyToolClient_];
  [v17 setRemoteObjectInterface:v18];

  v19 = [v15 interfaceWithProtocol:&OBJC_PROTOCOL____TtP10GamePolicy20GamePolicyToolServer_];
  [v17 setExportedInterface:v19];

  [v17 setExportedObject:v14];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v17;
  v39 = sub_10000AD40;
  v40 = v21;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v38 = sub_100024520;
  *(&v38 + 1) = &unk_10004DAC8;
  v22 = _Block_copy(&aBlock);
  v23 = v17;

  [v23 setInvalidationHandler:v22];
  _Block_release(v22);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  v39 = sub_10000ADD4;
  v40 = v25;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v38 = sub_100024520;
  *(&v38 + 1) = &unk_10004DB18;
  v26 = _Block_copy(&aBlock);
  v27 = v23;

  [v27 setInterruptionHandler:v26];
  _Block_release(v26);
  v28 = *(v1 + OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock);
  [v28 lock];
  v29 = OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_toolProxies;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v28 unlock];
  [v27 resume];

  return 1;
}

uint64_t sub_100009E40(void *a1)
{
  kGamePolicyPrivilegedToolEntitlement.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [a1 valueForEntitlement:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v23 = v28;
  v24 = v29;
  if (!*(&v29 + 1))
  {
    sub_1000096E8(&v23, &qword_1000553D0, &unk_10003E3F0);
    return 0;
  }

  sub_100009748(0, &qword_100053BF0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v27;
  if (([v27 BOOLValue] & 1) == 0)
  {

    return 0;
  }

  v6 = *(v1 + OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_queue);
  type metadata accessor for GamePolicyPrivilegedToolProxy();
  v7 = swift_allocObject();
  v7[5] = 0;
  swift_unknownObjectWeakInit();
  v7[2] = a1;
  v7[3] = v6;
  v7[5] = &off_10004D9C8;
  v7[6] = 0;
  swift_unknownObjectWeakAssign();
  v8 = v6;
  v9 = a1;
  isa = GamePolicyPrivilegedToolClientInterface()().super.isa;
  [v9 setRemoteObjectInterface:isa];

  v11 = GamePolicyPrivilegedToolServerInterface()().super.isa;
  [v9 setExportedInterface:v11];

  [v9 setExportedObject:v7];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  v25 = sub_10000A8B4;
  v26 = v13;
  *&v23 = _NSConcreteStackBlock;
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_100024520;
  *(&v24 + 1) = &unk_10004DA28;
  v14 = _Block_copy(&v23);
  v15 = v9;

  [v15 setInvalidationHandler:v14];
  _Block_release(v14);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v25 = sub_10000A920;
  v26 = v17;
  *&v23 = _NSConcreteStackBlock;
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_100024520;
  *(&v24 + 1) = &unk_10004DA78;
  v18 = _Block_copy(&v23);
  v19 = v15;

  [v19 setInterruptionHandler:v18];
  _Block_release(v18);
  v20 = *(v1 + OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock);
  [v20 lock];
  v21 = OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_privilegedToolProxies;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v20 unlock];
  [v19 resume];

  return 1;
}

void sub_10000A290(uint64_t a1, void *a2, const char *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v27 = a5;
    v28 = a6;
    static Logger.toolCoordinator.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, a3, v19, 2u);
    }

    (*(v12 + 8))(v14, v11);
    v20 = OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock;
    [*&v16[OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock] lock];
    v21 = *a4;
    swift_beginAccess();
    v22 = a2;
    v23 = sub_10000AA90(&v16[v21], v22, v27);

    v24 = *&v16[v21];
    if (v24 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25 < v23)
    {
      __break(1u);
    }

    else
    {
      v28(v23);
      swift_endAccess();
      [*&v16[v20] unlock];
    }
  }
}

void sub_10000A4D0(uint64_t a1, void *a2, const char *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v26 = a6;
    v27 = a5;
    static Logger.toolCoordinator.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, a3, v19, 2u);
    }

    (*(v12 + 8))(v14, v11);
    v20 = OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock;
    [*&v16[OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock] lock];
    v21 = *a4;
    swift_beginAccess();
    v22 = a2;
    v23 = sub_10000AA90(&v16[v21], v22, v27);

    v24 = *&v16[v21];
    if (v24 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= v23)
      {
        goto LABEL_6;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v23)
    {
LABEL_6:
      v26(v23);
      swift_endAccess();
      [*&v16[v20] unlock];
      [v22 invalidate];

      return;
    }

    __break(1u);
  }
}

id sub_10000A7B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamePolicyToolCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000A878()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A908(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000A974(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    sub_100009748(0, &qword_100055020, NSObject_ptr);
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_10000AA90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a1;
  result = sub_10000A974(*a1, a2);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = a3;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v11 = &qword_100055020;
  v21 = a1;
  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v9;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v9;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    sub_100009748(0, v11, NSObject_ptr);
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      if (v9 != v10)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v16)
          {
            goto LABEL_45;
          }

          if (v10 >= v16)
          {
            goto LABEL_46;
          }

          v14 = *(v6 + 32 + 8 * v9);
          v15 = *(v6 + 32 + 8 * v10);
        }

        v17 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = v20(v6);
          v18 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v6 & 0xFFFFFFFFFFFFFF8;
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v15;

        if ((v6 & 0x8000000000000000) != 0 || v18)
        {
          v6 = v20(v6);
          v19 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v9;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v10 >= *(v19 + 16))
        {
          goto LABEL_43;
        }

        v11 = v17;
        *(v19 + 8 * v10 + 32) = v14;

        *v21 = v6;
      }

      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10000AD94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AE28(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = [a1 serviceName];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0xD00000000000001ALL && 0x8000000100040E00 == v13)
  {

LABEL_15:
    if ((sub_100009800(a1) & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_15;
  }

LABEL_7:
  v16 = [a1 serviceName];
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v18 == 0xD000000000000025 && 0x8000000100040DD0 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ((sub_100009E40(a1) & 1) == 0)
  {
LABEL_21:
    static Logger.toolCoordinator.getter();
    v30 = a1;
    v24 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v24, v31))
    {
      v29 = 0;
      v8 = v6;
      goto LABEL_25;
    }

    v32 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v30;
    *v27 = v30;
    v33 = v30;
    _os_log_impl(&_mh_execute_header, v24, v31, "GamePolicyToolCoordinator: rejecting incoming connection %@", v32, 0xCu);
    v29 = 0;
    v8 = v6;
    goto LABEL_23;
  }

LABEL_16:
  static Logger.toolCoordinator.getter();
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "GamePolicyToolCoordinator: accepting incoming connection %@", v26, 0xCu);
    v29 = 1;
LABEL_23:
    sub_1000096E8(v27, &unk_100053C00, &qword_10003E810);

    goto LABEL_25;
  }

  v29 = 1;
LABEL_25:

  (*(v3 + 8))(v8, v2);
  return v29;
}

NSString sub_10000B204()
{
  result = String._bridgeToObjectiveC()();
  qword_1000565B8 = result;
  return result;
}

uint64_t sub_10000B23C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.toolCoordinator.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "GamePolicyToolProxy: ping!", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [*(v1 + 16) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003870(&qword_100053CE8, &unk_10003E450);
  result = swift_dynamicCast();
  if (result)
  {
    [v11[1] pong];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000B43C()
{
  sub_10000B4A8(v0 + 32);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10000B4D0()
{
  _StringGuts.grow(_:)(29);

  type metadata accessor for GamingMetadataDBBundle(0);
  sub_100003870(&qword_100053DC8, &qword_10003E4B8);
  v1._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 30240;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  type metadata accessor for Version();
  sub_10000B838();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._object = 0x8000000100040F20;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  if (*(v0 + OBJC_IVAR____TtC11gamepolicyd22GamingMetadataDBBundle_descriptors) >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 60;
}

uint64_t sub_10000B648()
{
  v1 = OBJC_IVAR____TtC11gamepolicyd22GamingMetadataDBBundle_version;
  v2 = type metadata accessor for Version();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for GamingMetadataDBBundle(uint64_t a1)
{
  result = qword_100053D18;
  if (!qword_100053D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B76C(uint64_t a1)
{
  result = type metadata accessor for Version();
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

unint64_t sub_10000B838()
{
  result = qword_100053DD0;
  if (!qword_100053DD0)
  {
    type metadata accessor for Version();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053DD0);
  }

  return result;
}

int *sub_10000B890()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 8) = 0;
  v42 = v0 + 16;
  *(v0 + 3) = 0u;
  v41 = v0 + 12;
  *(v0 + 2) = 0u;
  v39 = v0 + 8;
  *(v0 + 1) = 0u;
  v6 = v0 + 4;
  v43 = 0xD000000000000025;
  v44 = 0x8000000100041140;
  static String.Encoding.utf8.getter();
  sub_100009790();
  v7 = StringProtocol.cString(using:)();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    v9 = (v7 + 32);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  notify_register_check(v9, v6);
  swift_endAccess();

  v43 = 0xD00000000000002FLL;
  v44 = 0x8000000100041170;
  static String.Encoding.utf8.getter();
  v10 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v10)
  {
    v11 = (v10 + 32);
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();
  notify_register_check(v11, v1 + 5);
  swift_endAccess();

  v40 = 0xD000000000000029;
  v43 = 0xD000000000000029;
  v44 = 0x80000001000411A0;
  static String.Encoding.utf8.getter();
  v12 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v12)
  {
    v13 = (v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  swift_beginAccess();
  notify_register_check(v13, v1 + 6);
  swift_endAccess();

  v43 = 0xD000000000000039;
  v44 = 0x80000001000411D0;
  static String.Encoding.utf8.getter();
  v14 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v14)
  {
    v15 = (v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  swift_beginAccess();
  notify_register_check(v15, v1 + 7);
  swift_endAccess();

  v43 = 0xD000000000000025;
  v44 = 0x8000000100041210;
  static String.Encoding.utf8.getter();
  v16 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v16)
  {
    v17 = (v16 + 32);
  }

  else
  {
    v17 = 0;
  }

  v18 = v39;
  swift_beginAccess();
  notify_register_check(v17, v18);
  swift_endAccess();

  v43 = 0xD000000000000032;
  v44 = 0x8000000100041240;
  static String.Encoding.utf8.getter();
  v19 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v19)
  {
    v20 = (v19 + 32);
  }

  else
  {
    v20 = 0;
  }

  swift_beginAccess();
  notify_register_check(v20, v1 + 9);
  swift_endAccess();

  v43 = 0xD000000000000034;
  v44 = 0x8000000100041280;
  static String.Encoding.utf8.getter();
  v21 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v21)
  {
    v22 = (v21 + 32);
  }

  else
  {
    v22 = 0;
  }

  swift_beginAccess();
  notify_register_check(v22, v1 + 10);
  swift_endAccess();

  v43 = 0xD000000000000032;
  v44 = 0x80000001000412C0;
  static String.Encoding.utf8.getter();
  v23 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v23)
  {
    v24 = (v23 + 32);
  }

  else
  {
    v24 = 0;
  }

  swift_beginAccess();
  notify_register_check(v24, v1 + 11);
  swift_endAccess();

  v43 = 0xD000000000000027;
  v44 = 0x8000000100041300;
  static String.Encoding.utf8.getter();
  v25 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v25)
  {
    v26 = (v25 + 32);
  }

  else
  {
    v26 = 0;
  }

  v27 = v41;
  swift_beginAccess();
  notify_register_check(v26, v27);
  swift_endAccess();

  v43 = v40;
  v44 = 0x8000000100041330;
  static String.Encoding.utf8.getter();
  v28 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v28)
  {
    v29 = (v28 + 32);
  }

  else
  {
    v29 = 0;
  }

  swift_beginAccess();
  notify_register_check(v29, v1 + 13);
  swift_endAccess();

  v43 = 0xD000000000000027;
  v44 = 0x8000000100041360;
  static String.Encoding.utf8.getter();
  v30 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v30)
  {
    v31 = (v30 + 32);
  }

  else
  {
    v31 = 0;
  }

  swift_beginAccess();
  notify_register_check(v31, v1 + 14);
  swift_endAccess();

  v43 = 0xD000000000000031;
  v44 = 0x8000000100041390;
  static String.Encoding.utf8.getter();
  v32 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v32)
  {
    v33 = (v32 + 32);
  }

  else
  {
    v33 = 0;
  }

  swift_beginAccess();
  notify_register_check(v33, v1 + 15);
  swift_endAccess();

  v43 = 0xD000000000000030;
  v44 = 0x80000001000413D0;
  static String.Encoding.utf8.getter();
  v34 = StringProtocol.cString(using:)();
  v8(v5, v2);
  if (v34)
  {
    v35 = (v34 + 32);
  }

  else
  {
    v35 = 0;
  }

  v36 = v42;
  swift_beginAccess();
  notify_register_check(v35, v36);
  swift_endAccess();

  return v1;
}

_DWORD *sub_10000C0C0()
{
  swift_beginAccess();
  v1 = v0[4];
  if (v1)
  {
    notify_cancel(v1);
  }

  swift_beginAccess();
  v2 = v0[5];
  if (v2)
  {
    notify_cancel(v2);
  }

  swift_beginAccess();
  v3 = v0[6];
  if (v3)
  {
    notify_cancel(v3);
  }

  swift_beginAccess();
  v4 = v0[7];
  if (v4)
  {
    notify_cancel(v4);
  }

  swift_beginAccess();
  v5 = v0[8];
  if (v5)
  {
    notify_cancel(v5);
  }

  swift_beginAccess();
  v6 = v0[9];
  if (v6)
  {
    notify_cancel(v6);
  }

  swift_beginAccess();
  v7 = v0[10];
  if (v7)
  {
    notify_cancel(v7);
  }

  swift_beginAccess();
  v8 = v0[11];
  if (v8)
  {
    notify_cancel(v8);
  }

  swift_beginAccess();
  v9 = v0[12];
  if (v9)
  {
    notify_cancel(v9);
  }

  swift_beginAccess();
  v10 = v0[13];
  if (v10)
  {
    notify_cancel(v10);
  }

  swift_beginAccess();
  v11 = v0[14];
  if (v11)
  {
    notify_cancel(v11);
  }

  swift_beginAccess();
  v12 = v0[15];
  if (v12)
  {
    notify_cancel(v12);
  }

  swift_beginAccess();
  v13 = v0[16];
  if (v13)
  {
    notify_cancel(v13);
  }

  return v0;
}

uint64_t sub_10000C288()
{
  sub_10000C0C0();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10000C2E0()
{
  _StringGuts.grow(_:)(41);

  _s14descr10004D339V10DescriptorCMa();
  sub_100003870(&qword_1000540E0, &qword_10003E598);
  v1._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6669746E65646920;
  v2._object = 0xEC0000003D726569;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._object = 0x8000000100041470;
  v3._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v3);
  if (v0[2]._countAndFlagsBits >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 60;
}

uint64_t sub_10000C430()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10000C4B8()
{
  v0 = sub_100003870(&qword_1000541E0, "d_");
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.appCoordinator.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "GamePolicyPrivilegedAppProxy: ping", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  sub_100003870(&qword_100053AF8, &qword_10003E350);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000CB48();

  Publisher<>.sink(receiveValue:)();

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return sub_100006910();
}

uint64_t sub_10000C75C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 16) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003870(&qword_1000541F0, &qword_10003E5F8);
  result = swift_dynamicCast();
  if (result)
  {
    type metadata accessor for GameLibraryGame();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 installedGamesDidChange:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000CACC()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_10000CB48()
{
  result = qword_1000541E8;
  if (!qword_1000541E8)
  {
    sub_1000085E0(&qword_1000541E0, "d_");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000541E8);
  }

  return result;
}

uint64_t sub_10000CBAC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10000CC2C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_10000CCA8()
{
  result = qword_100053BF0;
  if (!qword_100053BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100053BF0);
  }

  return result;
}

Swift::Int sub_10000CCFC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000CD68(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000CDD0()
{
  sub_10000B4A8(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

NSString sub_10000CE2C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000565E0 = result;
  return result;
}

NSString sub_10000CE64()
{
  result = String._bridgeToObjectiveC()();
  qword_1000565E8 = result;
  return result;
}

NSString sub_10000CE9C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000565F0 = result;
  return result;
}

NSString sub_10000CED4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000565F8 = result;
  return result;
}

NSString sub_10000CF0C()
{
  result = String._bridgeToObjectiveC()();
  qword_100056600 = result;
  return result;
}

double sub_10000CF48@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v92 = a2;
  v3 = type metadata accessor for Notification();
  v96 = *(v3 - 8);
  __chkstk_darwin(v3);
  v93 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v94 = *(v5 - 8);
  v95 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = (&v87 - v10);
  v12 = __chkstk_darwin(v9);
  v14 = &v87 - v13;
  __chkstk_darwin(v12);
  v16 = &v87 - v15;
  v17 = *(a1 + 16);
  [v17 lock];
  swift_beginAccess();
  v18 = *(a1 + 72);
  v110[0] = *(a1 + 56);
  v110[1] = v18;
  v19 = *(a1 + 104);
  v111 = *(a1 + 88);
  v112 = v19;
  v113[0] = v110[0];
  v113[1] = v18;
  v113[2] = v111;
  v113[3] = v19;
  v100 = v111;
  v101 = v19;
  v98 = v110[0];
  v99 = v18;
  v114[0] = v110[0];
  v114[1] = v18;
  v114[2] = v111;
  v114[3] = v19;
  v20 = *(a1 + 104);
  v104 = *(a1 + 88);
  v105 = v20;
  v21 = *(a1 + 72);
  v102 = *(a1 + 56);
  v103 = v21;
  v106 = v102;
  v107 = v21;
  v108 = v104;
  v109 = v20;
  sub_10001B118(v110, &v119);
  sub_10001B118(v113, &v119);
  sub_10001B118(v114, &v119);
  [v17 unlock];
  v115[0] = v102;
  v115[1] = v103;
  v115[2] = v104;
  v115[3] = v105;
  v116[0] = v106;
  v116[1] = v107;
  v117 = v108;
  v118 = v109;
  v121 = v100;
  v122 = v101;
  v119 = v98;
  v120 = v99;
  v22 = v108;
  v23 = ModeEnablementStrategy.rawValue.getter();
  if (v23 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v87 = v16;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v90 = v14;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v89 = v3;
      v28 = v27;
      v29 = swift_slowAlloc();
      *&v98 = v29;
      *v28 = 136446210;
      v97 = v22;
      v30 = String.init<A>(describing:)();
      v88 = v11;
      v32 = v8;
      v33 = sub_100034C38(v30, v31, &v98);
      v11 = v88;

      *(v28 + 4) = v33;
      v8 = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "Updating game mode enablement strategy to %{public}s", v28, 0xCu);
      sub_100003964(v29);

      v3 = v89;
    }

    (*(v94 + 8))(v87, v95);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModeEnablementStrategy;
    *&v98 = v22;
    v34 = qword_1000565E0;
    v35 = v93;
    Notification.init(name:object:userInfo:)();
    v36 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v36 postNotification:isa];

    (*(v96 + 8))(v35, v3);
    v14 = v90;
  }

  v38 = *(&v117 + 1);
  v39 = ModeEnablementStrategy.rawValue.getter();
  v40 = ModeEnablementStrategy.rawValue.getter();
  v91 = v8;
  if (v39 != v40)
  {
    static Logger.policyCoordinator.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v98 = v88;
      *v43 = 136446210;
      v97 = v38;
      v44 = String.init<A>(describing:)();
      v89 = v3;
      v46 = sub_100034C38(v44, v45, &v98);
      v90 = v14;
      v47 = v11;
      v48 = v46;
      v3 = v89;

      *(v43 + 4) = v48;
      v11 = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "Updating sustained execution mode enablement strategy to %{public}s", v43, 0xCu);
      sub_100003964(v88);

      (*(v94 + 8))(v90, v95);
    }

    else
    {

      (*(v94 + 8))(v14, v95);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModeEnablementStrategy;
    *&v98 = v38;
    v49 = qword_1000565F0;
    v50 = v93;
    Notification.init(name:object:userInfo:)();
    v51 = [objc_opt_self() defaultCenter];
    v52 = Notification._bridgeToObjectiveC()().super.isa;
    [v51 postNotification:v52];

    (*(v96 + 8))(v50, v3);
  }

  v53 = v118;
  v54 = ModeEnablementStrategy.rawValue.getter();
  if (v54 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v88 = v11;
      v59 = v3;
      v60 = v58;
      *&v98 = v58;
      *v57 = 136446210;
      v97 = v53;
      v61 = String.init<A>(describing:)();
      v63 = sub_100034C38(v61, v62, &v98);

      *(v57 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v55, v56, "Updating dynamic splitter enablement strategy to %{public}s", v57, 0xCu);
      sub_100003964(v60);
      v3 = v59;

      (*(v94 + 8))(v88, v95);
    }

    else
    {

      (*(v94 + 8))(v11, v95);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModeEnablementStrategy;
    *&v98 = v53;
    v64 = qword_1000565F8;
    v65 = v93;
    Notification.init(name:object:userInfo:)();
    v66 = [objc_opt_self() defaultCenter];
    v67 = Notification._bridgeToObjectiveC()().super.isa;
    [v66 postNotification:v67];

    (*(v96 + 8))(v65, v3);
  }

  v68 = *(&v118 + 1);
  v69 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v69 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v116);
    sub_10001B150(v115);
  }

  else
  {
    v70 = v91;
    static Logger.policyCoordinator.getter();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = v3;
      v75 = swift_slowAlloc();
      *&v98 = v75;
      *v73 = 136446210;
      v97 = v68;
      v76 = String.init<A>(describing:)();
      v78 = sub_100034C38(v76, v77, &v98);

      *(v73 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v71, v72, "Updating game mode ModelManager policy strategy to %{public}s", v73, 0xCu);
      sub_100003964(v75);
      v3 = v74;
    }

    (*(v94 + 8))(v70, v95);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModelManagerPolicyStrategy;
    *&v98 = v68;
    v79 = qword_1000565E8;
    v80 = v93;
    Notification.init(name:object:userInfo:)();
    v81 = [objc_opt_self() defaultCenter];
    v82 = Notification._bridgeToObjectiveC()().super.isa;
    [v81 postNotification:v82];

    sub_10001B150(v116);
    sub_10001B150(v115);
    (*(v96 + 8))(v80, v3);
  }

  v83 = v120;
  v84 = v92;
  *v92 = v119;
  v84[1] = v83;
  result = *&v121;
  v86 = v122;
  v84[2] = v121;
  v84[3] = v86;
  return result;
}

id sub_10000DA84(uint64_t a1)
{
  v77 = type metadata accessor for Notification();
  v81 = *(v77 - 8);
  __chkstk_darwin(v77 - 8);
  v80 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = __chkstk_darwin(v3);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v74 = &v73 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v73 - v9;
  __chkstk_darwin(v8);
  v12 = &v73 - v11;
  v13 = *(a1 + 16);
  [v13 lock];
  swift_beginAccess();
  v92 = *(a1 + 56);
  v93 = *(a1 + 72);
  v94 = *(a1 + 88);
  v95 = *(a1 + 104);
  v14 = v92;
  v96[0] = v92;
  v96[1] = v93;
  v96[2] = v94;
  v96[3] = v95;
  v86 = v94;
  v87 = v95;
  v84 = v92;
  v85 = v93;
  v90 = v94;
  v88 = v92;
  v89 = v93;
  v91 = v95;
  sub_10001B118(&v92, v98);
  v76 = v14;
  sub_10001B118(v96, v98);
  [v13 unlock];
  v97[0] = v84;
  v97[1] = v85;
  v97[2] = v86;
  v97[3] = v87;
  v98[0] = v88;
  v98[1] = v89;
  v99 = v90;
  v100 = v91;
  v15 = v90;
  v16 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  if (v16 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v83 = v21;
      *v20 = 136446210;
      v82 = v15;
      v22 = String.init<A>(describing:)();
      v24 = sub_100034C38(v22, v23, &v83);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Updating game mode enablement strategy to %{public}s", v20, 0xCu);
      sub_100003964(v21);
    }

    (*(v78 + 8))(v12, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v15;
    v25 = qword_1000565E0;
    v26 = v80;
    Notification.init(name:object:userInfo:)();
    v27 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v27 postNotification:isa];

    (*(v81 + 8))(v26, v77);
  }

  v29 = *(&v99 + 1);
  v30 = ModeEnablementStrategy.rawValue.getter();
  if (v30 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v83 = v34;
      *v33 = 136446210;
      v82 = v29;
      v35 = String.init<A>(describing:)();
      v37 = sub_100034C38(v35, v36, &v83);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Updating sustained execution mode enablement strategy to %{public}s", v33, 0xCu);
      sub_100003964(v34);
    }

    (*(v78 + 8))(v10, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v29;
    v38 = qword_1000565F0;
    v39 = v80;
    Notification.init(name:object:userInfo:)();
    v40 = [objc_opt_self() p_name[186]];
    v41 = Notification._bridgeToObjectiveC()().super.isa;
    [v40 postNotification:v41];

    (*(v81 + 8))(v39, v77);
  }

  v42 = v100;
  v43 = ModeEnablementStrategy.rawValue.getter();
  if (v43 != ModeEnablementStrategy.rawValue.getter())
  {
    v44 = v74;
    static Logger.policyCoordinator.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = p_name;
      v49 = swift_slowAlloc();
      v83 = v49;
      *v47 = 136446210;
      v82 = v42;
      v50 = String.init<A>(describing:)();
      v52 = sub_100034C38(v50, v51, &v83);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Updating dynamic splitter enablement strategy to %{public}s", v47, 0xCu);
      sub_100003964(v49);
      p_name = v48;

      (*(v78 + 8))(v74, v79);
    }

    else
    {

      (*(v78 + 8))(v44, v79);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v42;
    v53 = qword_1000565F8;
    v54 = v80;
    Notification.init(name:object:userInfo:)();
    v55 = [objc_opt_self() p_name[186]];
    v56 = Notification._bridgeToObjectiveC()().super.isa;
    [v55 postNotification:v56];

    (*(v81 + 8))(v54, v77);
  }

  v57 = *(&v100 + 1);
  v58 = ModelManagerPolicyStrategy.rawValue.getter();
  v59 = ModelManagerPolicyStrategy.rawValue.getter();
  v60 = v75;
  if (v58 == v59)
  {
    sub_10001B150(v98);
    sub_10001B150(v97);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v83 = v64;
      *v63 = 136446210;
      v82 = v57;
      v65 = String.init<A>(describing:)();
      v67 = sub_100034C38(v65, v66, &v83);

      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "Updating game mode ModelManager policy strategy to %{public}s", v63, 0xCu);
      sub_100003964(v64);
      p_name = &stru_100051FF8.name;
    }

    (*(v78 + 8))(v60, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModelManagerPolicyStrategy;
    v83 = v57;
    v68 = qword_1000565E8;
    v69 = v80;
    Notification.init(name:object:userInfo:)();
    v70 = [objc_opt_self() p_name[186]];
    v71 = Notification._bridgeToObjectiveC()().super.isa;
    [v70 postNotification:v71];

    sub_10001B150(v98);
    sub_10001B150(v97);
    (*(v81 + 8))(v69, v77);
  }

  return v76;
}

uint64_t sub_10000E54C(uint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for Notification();
  v95 = *(v91 - 8);
  __chkstk_darwin(v91);
  v94 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v88 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v88 - v13;
  __chkstk_darwin(v12);
  v16 = &v88 - v15;
  v17 = *(a1 + 16);
  [v17 lock];
  swift_beginAccess();
  v19 = *(a1 + 72);
  v105[0] = *(a1 + 56);
  v18 = v105[0];
  v105[1] = v19;
  v21 = *(a1 + 104);
  v106 = *(a1 + 88);
  v20 = v106;
  v107 = v21;
  *(a1 + 88) = a2;
  v108[0] = v18;
  v108[1] = v19;
  v108[2] = *(a1 + 88);
  v108[3] = v21;
  v99 = v20;
  v100 = v21;
  v97 = v18;
  v98 = v19;
  v22 = *(a1 + 56);
  v23 = *(a1 + 72);
  v24 = *(a1 + 104);
  v103 = *(a1 + 88);
  v104 = v24;
  v101 = v22;
  v102 = v23;
  sub_10001B118(v105, v110);
  sub_10001B118(v108, v110);
  [v17 unlock];
  v109[0] = v97;
  v109[1] = v98;
  v109[2] = v99;
  v109[3] = v100;
  v110[0] = v101;
  v110[1] = v102;
  v111 = v103;
  v112 = v104;
  v25 = v103;
  v26 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  v28 = (&stru_100051FF8 + 8);
  if (v26 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v97 = v88;
      *v31 = 136446210;
      v96 = v25;
      v32 = String.init<A>(describing:)();
      v89 = v11;
      v34 = v14;
      v35 = v8;
      v36 = sub_100034C38(v32, v33, &v97);
      v11 = v89;

      *(v31 + 4) = v36;
      v8 = v35;
      v14 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "Updating game mode enablement strategy to %{public}s", v31, 0xCu);
      sub_100003964(v88);
      p_name = &stru_100051FF8.name;
    }

    (*(v92 + 8))(v16, v93);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    v28 = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *(&v98 + 1) = &type metadata for ModeEnablementStrategy;
    *&v97 = v25;
    v37 = qword_1000565E0;
    v38 = v94;
    Notification.init(name:object:userInfo:)();
    v39 = [objc_opt_self() p_name[186]];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v39 postNotification:isa];

    (*(v95 + 8))(v38, v91);
  }

  v41 = *(&v111 + 1);
  v42 = ModeEnablementStrategy.rawValue.getter();
  v43 = ModeEnablementStrategy.rawValue.getter();
  v90 = v8;
  if (v42 != v43)
  {
    static Logger.policyCoordinator.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v97 = v47;
      *v46 = 136446210;
      v96 = v41;
      v48 = String.init<A>(describing:)();
      v89 = v14;
      v50 = v11;
      v51 = sub_100034C38(v48, v49, &v97);

      *(v46 + 4) = v51;
      v11 = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "Updating sustained execution mode enablement strategy to %{public}s", v46, 0xCu);
      sub_100003964(v47);
      p_name = (&stru_100051FF8 + 8);

      (*(v92 + 8))(v89, v93);
    }

    else
    {

      (*(v92 + 8))(v14, v93);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *(&v98 + 1) = &type metadata for ModeEnablementStrategy;
    *&v97 = v41;
    v52 = qword_1000565F0;
    v53 = v94;
    Notification.init(name:object:userInfo:)();
    v54 = [objc_opt_self() p_name[186]];
    v55 = Notification._bridgeToObjectiveC()().super.isa;
    [v54 v28[223]];

    (*(v95 + 8))(v53, v91);
  }

  v56 = v112;
  v57 = ModeEnablementStrategy.rawValue.getter();
  if (v57 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v97 = v61;
      *v60 = 136446210;
      v96 = v56;
      v62 = String.init<A>(describing:)();
      v64 = sub_100034C38(v62, v63, &v97);
      v89 = v11;
      v65 = p_name;
      v66 = v64;

      *(v60 + 4) = v66;
      p_name = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "Updating dynamic splitter enablement strategy to %{public}s", v60, 0xCu);
      sub_100003964(v61);

      (*(v92 + 8))(v89, v93);
    }

    else
    {

      (*(v92 + 8))(v11, v93);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *(&v98 + 1) = &type metadata for ModeEnablementStrategy;
    *&v97 = v56;
    v67 = qword_1000565F8;
    v68 = v94;
    Notification.init(name:object:userInfo:)();
    v69 = [objc_opt_self() p_name[186]];
    v70 = Notification._bridgeToObjectiveC()().super.isa;
    [v69 v28[223]];

    (*(v95 + 8))(v68, v91);
  }

  v71 = *(&v112 + 1);
  v72 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v72 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v110);
    return sub_10001B150(v109);
  }

  else
  {
    v74 = v90;
    static Logger.policyCoordinator.getter();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v97 = v78;
      *v77 = 136446210;
      v96 = v71;
      v79 = String.init<A>(describing:)();
      v81 = p_name;
      v82 = v28;
      v83 = sub_100034C38(v79, v80, &v97);

      *(v77 + 4) = v83;
      v28 = v82;
      p_name = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "Updating game mode ModelManager policy strategy to %{public}s", v77, 0xCu);
      sub_100003964(v78);

      (*(v92 + 8))(v90, v93);
    }

    else
    {

      (*(v92 + 8))(v74, v93);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *(&v98 + 1) = &type metadata for ModelManagerPolicyStrategy;
    *&v97 = v71;
    v84 = qword_1000565E8;
    v85 = v94;
    Notification.init(name:object:userInfo:)();
    v86 = [objc_opt_self() p_name[186]];
    v87 = Notification._bridgeToObjectiveC()().super.isa;
    [v86 v28[223]];

    sub_10001B150(v110);
    sub_10001B150(v109);
    return (*(v95 + 8))(v85, v91);
  }
}

uint64_t sub_10000F05C(uint64_t a1, uint64_t a2)
{
  v92 = type metadata accessor for Notification();
  v96 = *(v92 - 8);
  __chkstk_darwin(v92);
  v95 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v89 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v89 - v13;
  __chkstk_darwin(v12);
  v16 = &v89 - v15;
  v17 = *(a1 + 16);
  [v17 lock];
  swift_beginAccess();
  v19 = *(a1 + 72);
  v106[0] = *(a1 + 56);
  v18 = v106[0];
  v106[1] = v19;
  v21 = *(a1 + 104);
  v107 = *(a1 + 88);
  v20 = v107;
  v108 = v21;
  *(a1 + 104) = a2;
  v109[0] = v18;
  v109[1] = v19;
  v22 = *(a1 + 104);
  v109[2] = v20;
  v109[3] = v22;
  v100 = v20;
  v101 = v21;
  v98 = v18;
  v99 = v19;
  v23 = *(a1 + 56);
  v24 = *(a1 + 72);
  v25 = *(a1 + 104);
  v104 = *(a1 + 88);
  v105 = v25;
  v102 = v23;
  v103 = v24;
  sub_10001B118(v106, v111);
  sub_10001B118(v109, v111);
  [v17 unlock];
  v110[0] = v98;
  v110[1] = v99;
  v110[2] = v100;
  v110[3] = v101;
  v111[0] = v102;
  v111[1] = v103;
  v112 = v104;
  v113 = v105;
  v26 = v104;
  v27 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  v29 = (&stru_100051FF8 + 8);
  if (v27 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v98 = v89;
      *v32 = 136446210;
      v97 = v26;
      v33 = String.init<A>(describing:)();
      v90 = v11;
      v35 = v14;
      v36 = v8;
      v37 = sub_100034C38(v33, v34, &v98);
      v11 = v90;

      *(v32 + 4) = v37;
      v8 = v36;
      v14 = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "Updating game mode enablement strategy to %{public}s", v32, 0xCu);
      sub_100003964(v89);
      p_name = &stru_100051FF8.name;
    }

    (*(v93 + 8))(v16, v94);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    v29 = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModeEnablementStrategy;
    *&v98 = v26;
    v38 = qword_1000565E0;
    v39 = v95;
    Notification.init(name:object:userInfo:)();
    v40 = [objc_opt_self() p_name[186]];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v40 postNotification:isa];

    (*(v96 + 8))(v39, v92);
  }

  v42 = *(&v112 + 1);
  v43 = ModeEnablementStrategy.rawValue.getter();
  v44 = ModeEnablementStrategy.rawValue.getter();
  v91 = v8;
  if (v43 != v44)
  {
    static Logger.policyCoordinator.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v98 = v48;
      *v47 = 136446210;
      v97 = v42;
      v49 = String.init<A>(describing:)();
      v90 = v14;
      v51 = v11;
      v52 = sub_100034C38(v49, v50, &v98);

      *(v47 + 4) = v52;
      v11 = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "Updating sustained execution mode enablement strategy to %{public}s", v47, 0xCu);
      sub_100003964(v48);
      p_name = (&stru_100051FF8 + 8);

      (*(v93 + 8))(v90, v94);
    }

    else
    {

      (*(v93 + 8))(v14, v94);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModeEnablementStrategy;
    *&v98 = v42;
    v53 = qword_1000565F0;
    v54 = v95;
    Notification.init(name:object:userInfo:)();
    v55 = [objc_opt_self() p_name[186]];
    v56 = Notification._bridgeToObjectiveC()().super.isa;
    [v55 v29[223]];

    (*(v96 + 8))(v54, v92);
  }

  v57 = v113;
  v58 = ModeEnablementStrategy.rawValue.getter();
  if (v58 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v98 = v62;
      *v61 = 136446210;
      v97 = v57;
      v63 = String.init<A>(describing:)();
      v65 = sub_100034C38(v63, v64, &v98);
      v90 = v11;
      v66 = p_name;
      v67 = v65;

      *(v61 + 4) = v67;
      p_name = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "Updating dynamic splitter enablement strategy to %{public}s", v61, 0xCu);
      sub_100003964(v62);

      (*(v93 + 8))(v90, v94);
    }

    else
    {

      (*(v93 + 8))(v11, v94);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModeEnablementStrategy;
    *&v98 = v57;
    v68 = qword_1000565F8;
    v69 = v95;
    Notification.init(name:object:userInfo:)();
    v70 = [objc_opt_self() p_name[186]];
    v71 = Notification._bridgeToObjectiveC()().super.isa;
    [v70 v29[223]];

    (*(v96 + 8))(v69, v92);
  }

  v72 = *(&v113 + 1);
  v73 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v73 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v111);
    return sub_10001B150(v110);
  }

  else
  {
    v75 = v91;
    static Logger.policyCoordinator.getter();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v98 = v79;
      *v78 = 136446210;
      v97 = v72;
      v80 = String.init<A>(describing:)();
      v82 = p_name;
      v83 = v29;
      v84 = sub_100034C38(v80, v81, &v98);

      *(v78 + 4) = v84;
      v29 = v83;
      p_name = v82;
      _os_log_impl(&_mh_execute_header, v76, v77, "Updating game mode ModelManager policy strategy to %{public}s", v78, 0xCu);
      sub_100003964(v79);

      (*(v93 + 8))(v91, v94);
    }

    else
    {

      (*(v93 + 8))(v75, v94);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModelManagerPolicyStrategy;
    *&v98 = v72;
    v85 = qword_1000565E8;
    v86 = v95;
    Notification.init(name:object:userInfo:)();
    v87 = [objc_opt_self() p_name[186]];
    v88 = Notification._bridgeToObjectiveC()().super.isa;
    [v87 v29[223]];

    sub_10001B150(v111);
    sub_10001B150(v110);
    return (*(v96 + 8))(v86, v92);
  }
}

uint64_t sub_10000FB6C(uint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for Notification();
  v95 = *(v91 - 8);
  __chkstk_darwin(v91);
  v94 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v88 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v88 - v13;
  __chkstk_darwin(v12);
  v16 = &v88 - v15;
  v17 = *(a1 + 16);
  [v17 lock];
  swift_beginAccess();
  v19 = *(a1 + 72);
  v105[0] = *(a1 + 56);
  v18 = v105[0];
  v105[1] = v19;
  v21 = *(a1 + 104);
  v106 = *(a1 + 88);
  v20 = v106;
  v107 = v21;
  *(a1 + 96) = a2;
  v108[0] = v18;
  v108[1] = v19;
  v108[2] = *(a1 + 88);
  v108[3] = v21;
  v99 = v20;
  v100 = v21;
  v97 = v18;
  v98 = v19;
  v22 = *(a1 + 56);
  v23 = *(a1 + 72);
  v24 = *(a1 + 104);
  v103 = *(a1 + 88);
  v104 = v24;
  v101 = v22;
  v102 = v23;
  sub_10001B118(v105, v110);
  sub_10001B118(v108, v110);
  [v17 unlock];
  v109[0] = v97;
  v109[1] = v98;
  v109[2] = v99;
  v109[3] = v100;
  v110[0] = v101;
  v110[1] = v102;
  v111 = v103;
  v112 = v104;
  v25 = v103;
  v26 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  v28 = (&stru_100051FF8 + 8);
  if (v26 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v97 = v88;
      *v31 = 136446210;
      v96 = v25;
      v32 = String.init<A>(describing:)();
      v89 = v11;
      v34 = v14;
      v35 = v8;
      v36 = sub_100034C38(v32, v33, &v97);
      v11 = v89;

      *(v31 + 4) = v36;
      v8 = v35;
      v14 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "Updating game mode enablement strategy to %{public}s", v31, 0xCu);
      sub_100003964(v88);
      p_name = &stru_100051FF8.name;
    }

    (*(v92 + 8))(v16, v93);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    v28 = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *(&v98 + 1) = &type metadata for ModeEnablementStrategy;
    *&v97 = v25;
    v37 = qword_1000565E0;
    v38 = v94;
    Notification.init(name:object:userInfo:)();
    v39 = [objc_opt_self() p_name[186]];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v39 postNotification:isa];

    (*(v95 + 8))(v38, v91);
  }

  v41 = *(&v111 + 1);
  v42 = ModeEnablementStrategy.rawValue.getter();
  v43 = ModeEnablementStrategy.rawValue.getter();
  v90 = v8;
  if (v42 != v43)
  {
    static Logger.policyCoordinator.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v97 = v47;
      *v46 = 136446210;
      v96 = v41;
      v48 = String.init<A>(describing:)();
      v89 = v14;
      v50 = v11;
      v51 = sub_100034C38(v48, v49, &v97);

      *(v46 + 4) = v51;
      v11 = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "Updating sustained execution mode enablement strategy to %{public}s", v46, 0xCu);
      sub_100003964(v47);
      p_name = (&stru_100051FF8 + 8);

      (*(v92 + 8))(v89, v93);
    }

    else
    {

      (*(v92 + 8))(v14, v93);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *(&v98 + 1) = &type metadata for ModeEnablementStrategy;
    *&v97 = v41;
    v52 = qword_1000565F0;
    v53 = v94;
    Notification.init(name:object:userInfo:)();
    v54 = [objc_opt_self() p_name[186]];
    v55 = Notification._bridgeToObjectiveC()().super.isa;
    [v54 v28[223]];

    (*(v95 + 8))(v53, v91);
  }

  v56 = v112;
  v57 = ModeEnablementStrategy.rawValue.getter();
  if (v57 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v97 = v61;
      *v60 = 136446210;
      v96 = v56;
      v62 = String.init<A>(describing:)();
      v64 = sub_100034C38(v62, v63, &v97);
      v89 = v11;
      v65 = p_name;
      v66 = v64;

      *(v60 + 4) = v66;
      p_name = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "Updating dynamic splitter enablement strategy to %{public}s", v60, 0xCu);
      sub_100003964(v61);

      (*(v92 + 8))(v89, v93);
    }

    else
    {

      (*(v92 + 8))(v11, v93);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *(&v98 + 1) = &type metadata for ModeEnablementStrategy;
    *&v97 = v56;
    v67 = qword_1000565F8;
    v68 = v94;
    Notification.init(name:object:userInfo:)();
    v69 = [objc_opt_self() p_name[186]];
    v70 = Notification._bridgeToObjectiveC()().super.isa;
    [v69 v28[223]];

    (*(v95 + 8))(v68, v91);
  }

  v71 = *(&v112 + 1);
  v72 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v72 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v110);
    return sub_10001B150(v109);
  }

  else
  {
    v74 = v90;
    static Logger.policyCoordinator.getter();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v97 = v78;
      *v77 = 136446210;
      v96 = v71;
      v79 = String.init<A>(describing:)();
      v81 = p_name;
      v82 = v28;
      v83 = sub_100034C38(v79, v80, &v97);

      *(v77 + 4) = v83;
      v28 = v82;
      p_name = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "Updating game mode ModelManager policy strategy to %{public}s", v77, 0xCu);
      sub_100003964(v78);

      (*(v92 + 8))(v90, v93);
    }

    else
    {

      (*(v92 + 8))(v74, v93);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *(&v98 + 1) = &type metadata for ModelManagerPolicyStrategy;
    *&v97 = v71;
    v84 = qword_1000565E8;
    v85 = v94;
    Notification.init(name:object:userInfo:)();
    v86 = [objc_opt_self() p_name[186]];
    v87 = Notification._bridgeToObjectiveC()().super.isa;
    [v86 v28[223]];

    sub_10001B150(v110);
    sub_10001B150(v109);
    return (*(v95 + 8))(v85, v91);
  }
}

uint64_t sub_10001067C(uint64_t a1, uint64_t a2)
{
  v92 = type metadata accessor for Notification();
  v96 = *(v92 - 8);
  __chkstk_darwin(v92);
  v95 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v89 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v89 - v13;
  __chkstk_darwin(v12);
  v16 = &v89 - v15;
  v17 = *(a1 + 16);
  [v17 lock];
  swift_beginAccess();
  v19 = *(a1 + 72);
  v106[0] = *(a1 + 56);
  v18 = v106[0];
  v106[1] = v19;
  v21 = *(a1 + 104);
  v107 = *(a1 + 88);
  v20 = v107;
  v108 = v21;
  *(a1 + 112) = a2;
  v109[0] = v18;
  v109[1] = v19;
  v22 = *(a1 + 104);
  v109[2] = v20;
  v109[3] = v22;
  v100 = v20;
  v101 = v21;
  v98 = v18;
  v99 = v19;
  v23 = *(a1 + 56);
  v24 = *(a1 + 72);
  v25 = *(a1 + 104);
  v104 = *(a1 + 88);
  v105 = v25;
  v102 = v23;
  v103 = v24;
  sub_10001B118(v106, v111);
  sub_10001B118(v109, v111);
  [v17 unlock];
  v110[0] = v98;
  v110[1] = v99;
  v110[2] = v100;
  v110[3] = v101;
  v111[0] = v102;
  v111[1] = v103;
  v112 = v104;
  v113 = v105;
  v26 = v104;
  v27 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  v29 = (&stru_100051FF8 + 8);
  if (v27 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v98 = v89;
      *v32 = 136446210;
      v97 = v26;
      v33 = String.init<A>(describing:)();
      v90 = v11;
      v35 = v14;
      v36 = v8;
      v37 = sub_100034C38(v33, v34, &v98);
      v11 = v90;

      *(v32 + 4) = v37;
      v8 = v36;
      v14 = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "Updating game mode enablement strategy to %{public}s", v32, 0xCu);
      sub_100003964(v89);
      p_name = &stru_100051FF8.name;
    }

    (*(v93 + 8))(v16, v94);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    v29 = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModeEnablementStrategy;
    *&v98 = v26;
    v38 = qword_1000565E0;
    v39 = v95;
    Notification.init(name:object:userInfo:)();
    v40 = [objc_opt_self() p_name[186]];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v40 postNotification:isa];

    (*(v96 + 8))(v39, v92);
  }

  v42 = *(&v112 + 1);
  v43 = ModeEnablementStrategy.rawValue.getter();
  v44 = ModeEnablementStrategy.rawValue.getter();
  v91 = v8;
  if (v43 != v44)
  {
    static Logger.policyCoordinator.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v98 = v48;
      *v47 = 136446210;
      v97 = v42;
      v49 = String.init<A>(describing:)();
      v90 = v14;
      v51 = v11;
      v52 = sub_100034C38(v49, v50, &v98);

      *(v47 + 4) = v52;
      v11 = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "Updating sustained execution mode enablement strategy to %{public}s", v47, 0xCu);
      sub_100003964(v48);
      p_name = (&stru_100051FF8 + 8);

      (*(v93 + 8))(v90, v94);
    }

    else
    {

      (*(v93 + 8))(v14, v94);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModeEnablementStrategy;
    *&v98 = v42;
    v53 = qword_1000565F0;
    v54 = v95;
    Notification.init(name:object:userInfo:)();
    v55 = [objc_opt_self() p_name[186]];
    v56 = Notification._bridgeToObjectiveC()().super.isa;
    [v55 v29[223]];

    (*(v96 + 8))(v54, v92);
  }

  v57 = v113;
  v58 = ModeEnablementStrategy.rawValue.getter();
  if (v58 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v98 = v62;
      *v61 = 136446210;
      v97 = v57;
      v63 = String.init<A>(describing:)();
      v65 = sub_100034C38(v63, v64, &v98);
      v90 = v11;
      v66 = p_name;
      v67 = v65;

      *(v61 + 4) = v67;
      p_name = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "Updating dynamic splitter enablement strategy to %{public}s", v61, 0xCu);
      sub_100003964(v62);

      (*(v93 + 8))(v90, v94);
    }

    else
    {

      (*(v93 + 8))(v11, v94);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModeEnablementStrategy;
    *&v98 = v57;
    v68 = qword_1000565F8;
    v69 = v95;
    Notification.init(name:object:userInfo:)();
    v70 = [objc_opt_self() p_name[186]];
    v71 = Notification._bridgeToObjectiveC()().super.isa;
    [v70 v29[223]];

    (*(v96 + 8))(v69, v92);
  }

  v72 = *(&v113 + 1);
  v73 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v73 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v111);
    return sub_10001B150(v110);
  }

  else
  {
    v75 = v91;
    static Logger.policyCoordinator.getter();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v98 = v79;
      *v78 = 136446210;
      v97 = v72;
      v80 = String.init<A>(describing:)();
      v82 = p_name;
      v83 = v29;
      v84 = sub_100034C38(v80, v81, &v98);

      *(v78 + 4) = v84;
      v29 = v83;
      p_name = v82;
      _os_log_impl(&_mh_execute_header, v76, v77, "Updating game mode ModelManager policy strategy to %{public}s", v78, 0xCu);
      sub_100003964(v79);

      (*(v93 + 8))(v91, v94);
    }

    else
    {

      (*(v93 + 8))(v75, v94);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *(&v99 + 1) = &type metadata for ModelManagerPolicyStrategy;
    *&v98 = v72;
    v85 = qword_1000565E8;
    v86 = v95;
    Notification.init(name:object:userInfo:)();
    v87 = [objc_opt_self() p_name[186]];
    v88 = Notification._bridgeToObjectiveC()().super.isa;
    [v87 v29[223]];

    sub_10001B150(v111);
    sub_10001B150(v110);
    return (*(v96 + 8))(v86, v92);
  }
}

id sub_10001118C(uint64_t a1)
{
  v77 = type metadata accessor for Notification();
  v81 = *(v77 - 8);
  __chkstk_darwin(v77 - 8);
  v80 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = __chkstk_darwin(v3);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v74 = &v73 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v73 - v9;
  __chkstk_darwin(v8);
  v12 = &v73 - v11;
  v13 = *(a1 + 16);
  [v13 lock];
  swift_beginAccess();
  v93 = *(a1 + 72);
  v92 = *(a1 + 56);
  v94 = *(a1 + 88);
  v95 = *(a1 + 104);
  v14 = v93;
  v96[0] = v92;
  v96[1] = v93;
  v96[2] = v94;
  v96[3] = v95;
  v86 = v94;
  v87 = v95;
  v84 = v92;
  v85 = v93;
  v90 = v94;
  v88 = v92;
  v89 = v93;
  v91 = v95;
  sub_10001B118(&v92, v98);
  v76 = v14;
  sub_10001B118(v96, v98);
  [v13 unlock];
  v97[0] = v84;
  v97[1] = v85;
  v97[2] = v86;
  v97[3] = v87;
  v98[0] = v88;
  v98[1] = v89;
  v99 = v90;
  v100 = v91;
  v15 = v90;
  v16 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  if (v16 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v83 = v21;
      *v20 = 136446210;
      v82 = v15;
      v22 = String.init<A>(describing:)();
      v24 = sub_100034C38(v22, v23, &v83);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Updating game mode enablement strategy to %{public}s", v20, 0xCu);
      sub_100003964(v21);
    }

    (*(v78 + 8))(v12, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v15;
    v25 = qword_1000565E0;
    v26 = v80;
    Notification.init(name:object:userInfo:)();
    v27 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v27 postNotification:isa];

    (*(v81 + 8))(v26, v77);
  }

  v29 = *(&v99 + 1);
  v30 = ModeEnablementStrategy.rawValue.getter();
  if (v30 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v83 = v34;
      *v33 = 136446210;
      v82 = v29;
      v35 = String.init<A>(describing:)();
      v37 = sub_100034C38(v35, v36, &v83);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Updating sustained execution mode enablement strategy to %{public}s", v33, 0xCu);
      sub_100003964(v34);
    }

    (*(v78 + 8))(v10, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v29;
    v38 = qword_1000565F0;
    v39 = v80;
    Notification.init(name:object:userInfo:)();
    v40 = [objc_opt_self() p_name[186]];
    v41 = Notification._bridgeToObjectiveC()().super.isa;
    [v40 postNotification:v41];

    (*(v81 + 8))(v39, v77);
  }

  v42 = v100;
  v43 = ModeEnablementStrategy.rawValue.getter();
  if (v43 != ModeEnablementStrategy.rawValue.getter())
  {
    v44 = v74;
    static Logger.policyCoordinator.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = p_name;
      v49 = swift_slowAlloc();
      v83 = v49;
      *v47 = 136446210;
      v82 = v42;
      v50 = String.init<A>(describing:)();
      v52 = sub_100034C38(v50, v51, &v83);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Updating dynamic splitter enablement strategy to %{public}s", v47, 0xCu);
      sub_100003964(v49);
      p_name = v48;

      (*(v78 + 8))(v74, v79);
    }

    else
    {

      (*(v78 + 8))(v44, v79);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v42;
    v53 = qword_1000565F8;
    v54 = v80;
    Notification.init(name:object:userInfo:)();
    v55 = [objc_opt_self() p_name[186]];
    v56 = Notification._bridgeToObjectiveC()().super.isa;
    [v55 postNotification:v56];

    (*(v81 + 8))(v54, v77);
  }

  v57 = *(&v100 + 1);
  v58 = ModelManagerPolicyStrategy.rawValue.getter();
  v59 = ModelManagerPolicyStrategy.rawValue.getter();
  v60 = v75;
  if (v58 == v59)
  {
    sub_10001B150(v98);
    sub_10001B150(v97);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v83 = v64;
      *v63 = 136446210;
      v82 = v57;
      v65 = String.init<A>(describing:)();
      v67 = sub_100034C38(v65, v66, &v83);

      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "Updating game mode ModelManager policy strategy to %{public}s", v63, 0xCu);
      sub_100003964(v64);
      p_name = &stru_100051FF8.name;
    }

    (*(v78 + 8))(v60, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModelManagerPolicyStrategy;
    v83 = v57;
    v68 = qword_1000565E8;
    v69 = v80;
    Notification.init(name:object:userInfo:)();
    v70 = [objc_opt_self() p_name[186]];
    v71 = Notification._bridgeToObjectiveC()().super.isa;
    [v70 postNotification:v71];

    sub_10001B150(v98);
    sub_10001B150(v97);
    (*(v81 + 8))(v69, v77);
  }

  return v76;
}

id sub_100011C54(uint64_t a1)
{
  v77 = type metadata accessor for Notification();
  v81 = *(v77 - 8);
  __chkstk_darwin(v77 - 8);
  v80 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = __chkstk_darwin(v3);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v74 = &v73 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v73 - v9;
  __chkstk_darwin(v8);
  v12 = &v73 - v11;
  v13 = *(a1 + 16);
  [v13 lock];
  swift_beginAccess();
  v92 = *(a1 + 56);
  v93 = *(a1 + 72);
  v94 = *(a1 + 88);
  v95 = *(a1 + 104);
  v14 = *(&v92 + 1);
  v96[0] = v92;
  v96[1] = v93;
  v96[2] = v94;
  v96[3] = v95;
  v86 = v94;
  v87 = v95;
  v84 = v92;
  v85 = v93;
  v90 = v94;
  v88 = v92;
  v89 = v93;
  v91 = v95;
  sub_10001B118(&v92, v98);
  v76 = v14;
  sub_10001B118(v96, v98);
  [v13 unlock];
  v97[0] = v84;
  v97[1] = v85;
  v97[2] = v86;
  v97[3] = v87;
  v98[0] = v88;
  v98[1] = v89;
  v99 = v90;
  v100 = v91;
  v15 = v90;
  v16 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  if (v16 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v83 = v21;
      *v20 = 136446210;
      v82 = v15;
      v22 = String.init<A>(describing:)();
      v24 = sub_100034C38(v22, v23, &v83);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Updating game mode enablement strategy to %{public}s", v20, 0xCu);
      sub_100003964(v21);
    }

    (*(v78 + 8))(v12, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v15;
    v25 = qword_1000565E0;
    v26 = v80;
    Notification.init(name:object:userInfo:)();
    v27 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v27 postNotification:isa];

    (*(v81 + 8))(v26, v77);
  }

  v29 = *(&v99 + 1);
  v30 = ModeEnablementStrategy.rawValue.getter();
  if (v30 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v83 = v34;
      *v33 = 136446210;
      v82 = v29;
      v35 = String.init<A>(describing:)();
      v37 = sub_100034C38(v35, v36, &v83);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Updating sustained execution mode enablement strategy to %{public}s", v33, 0xCu);
      sub_100003964(v34);
    }

    (*(v78 + 8))(v10, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v29;
    v38 = qword_1000565F0;
    v39 = v80;
    Notification.init(name:object:userInfo:)();
    v40 = [objc_opt_self() p_name[186]];
    v41 = Notification._bridgeToObjectiveC()().super.isa;
    [v40 postNotification:v41];

    (*(v81 + 8))(v39, v77);
  }

  v42 = v100;
  v43 = ModeEnablementStrategy.rawValue.getter();
  if (v43 != ModeEnablementStrategy.rawValue.getter())
  {
    v44 = v74;
    static Logger.policyCoordinator.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = p_name;
      v49 = swift_slowAlloc();
      v83 = v49;
      *v47 = 136446210;
      v82 = v42;
      v50 = String.init<A>(describing:)();
      v52 = sub_100034C38(v50, v51, &v83);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Updating dynamic splitter enablement strategy to %{public}s", v47, 0xCu);
      sub_100003964(v49);
      p_name = v48;

      (*(v78 + 8))(v74, v79);
    }

    else
    {

      (*(v78 + 8))(v44, v79);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v42;
    v53 = qword_1000565F8;
    v54 = v80;
    Notification.init(name:object:userInfo:)();
    v55 = [objc_opt_self() p_name[186]];
    v56 = Notification._bridgeToObjectiveC()().super.isa;
    [v55 postNotification:v56];

    (*(v81 + 8))(v54, v77);
  }

  v57 = *(&v100 + 1);
  v58 = ModelManagerPolicyStrategy.rawValue.getter();
  v59 = ModelManagerPolicyStrategy.rawValue.getter();
  v60 = v75;
  if (v58 == v59)
  {
    sub_10001B150(v98);
    sub_10001B150(v97);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v83 = v64;
      *v63 = 136446210;
      v82 = v57;
      v65 = String.init<A>(describing:)();
      v67 = sub_100034C38(v65, v66, &v83);

      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "Updating game mode ModelManager policy strategy to %{public}s", v63, 0xCu);
      sub_100003964(v64);
      p_name = &stru_100051FF8.name;
    }

    (*(v78 + 8))(v60, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModelManagerPolicyStrategy;
    v83 = v57;
    v68 = qword_1000565E8;
    v69 = v80;
    Notification.init(name:object:userInfo:)();
    v70 = [objc_opt_self() p_name[186]];
    v71 = Notification._bridgeToObjectiveC()().super.isa;
    [v70 postNotification:v71];

    sub_10001B150(v98);
    sub_10001B150(v97);
    (*(v81 + 8))(v69, v77);
  }

  return v76;
}

id sub_10001271C(uint64_t a1)
{
  v77 = type metadata accessor for Notification();
  v81 = *(v77 - 8);
  __chkstk_darwin(v77 - 8);
  v80 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = __chkstk_darwin(v3);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v74 = &v73 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v73 - v9;
  __chkstk_darwin(v8);
  v12 = &v73 - v11;
  v13 = *(a1 + 16);
  [v13 lock];
  swift_beginAccess();
  v93 = *(a1 + 72);
  v92 = *(a1 + 56);
  v94 = *(a1 + 88);
  v95 = *(a1 + 104);
  v14 = *(&v93 + 1);
  v96[0] = v92;
  v96[1] = v93;
  v96[2] = v94;
  v96[3] = v95;
  v86 = v94;
  v87 = v95;
  v84 = v92;
  v85 = v93;
  v90 = v94;
  v88 = v92;
  v89 = v93;
  v91 = v95;
  sub_10001B118(&v92, v98);
  v76 = v14;
  sub_10001B118(v96, v98);
  [v13 unlock];
  v97[0] = v84;
  v97[1] = v85;
  v97[2] = v86;
  v97[3] = v87;
  v98[0] = v88;
  v98[1] = v89;
  v99 = v90;
  v100 = v91;
  v15 = v90;
  v16 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  if (v16 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v83 = v21;
      *v20 = 136446210;
      v82 = v15;
      v22 = String.init<A>(describing:)();
      v24 = sub_100034C38(v22, v23, &v83);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Updating game mode enablement strategy to %{public}s", v20, 0xCu);
      sub_100003964(v21);
    }

    (*(v78 + 8))(v12, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v15;
    v25 = qword_1000565E0;
    v26 = v80;
    Notification.init(name:object:userInfo:)();
    v27 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v27 postNotification:isa];

    (*(v81 + 8))(v26, v77);
  }

  v29 = *(&v99 + 1);
  v30 = ModeEnablementStrategy.rawValue.getter();
  if (v30 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v83 = v34;
      *v33 = 136446210;
      v82 = v29;
      v35 = String.init<A>(describing:)();
      v37 = sub_100034C38(v35, v36, &v83);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Updating sustained execution mode enablement strategy to %{public}s", v33, 0xCu);
      sub_100003964(v34);
    }

    (*(v78 + 8))(v10, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v29;
    v38 = qword_1000565F0;
    v39 = v80;
    Notification.init(name:object:userInfo:)();
    v40 = [objc_opt_self() p_name[186]];
    v41 = Notification._bridgeToObjectiveC()().super.isa;
    [v40 postNotification:v41];

    (*(v81 + 8))(v39, v77);
  }

  v42 = v100;
  v43 = ModeEnablementStrategy.rawValue.getter();
  if (v43 != ModeEnablementStrategy.rawValue.getter())
  {
    v44 = v74;
    static Logger.policyCoordinator.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = p_name;
      v49 = swift_slowAlloc();
      v83 = v49;
      *v47 = 136446210;
      v82 = v42;
      v50 = String.init<A>(describing:)();
      v52 = sub_100034C38(v50, v51, &v83);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Updating dynamic splitter enablement strategy to %{public}s", v47, 0xCu);
      sub_100003964(v49);
      p_name = v48;

      (*(v78 + 8))(v74, v79);
    }

    else
    {

      (*(v78 + 8))(v44, v79);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModeEnablementStrategy;
    v83 = v42;
    v53 = qword_1000565F8;
    v54 = v80;
    Notification.init(name:object:userInfo:)();
    v55 = [objc_opt_self() p_name[186]];
    v56 = Notification._bridgeToObjectiveC()().super.isa;
    [v55 postNotification:v56];

    (*(v81 + 8))(v54, v77);
  }

  v57 = *(&v100 + 1);
  v58 = ModelManagerPolicyStrategy.rawValue.getter();
  v59 = ModelManagerPolicyStrategy.rawValue.getter();
  v60 = v75;
  if (v58 == v59)
  {
    sub_10001B150(v98);
    sub_10001B150(v97);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v83 = v64;
      *v63 = 136446210;
      v82 = v57;
      v65 = String.init<A>(describing:)();
      v67 = sub_100034C38(v65, v66, &v83);

      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "Updating game mode ModelManager policy strategy to %{public}s", v63, 0xCu);
      sub_100003964(v64);
      p_name = &stru_100051FF8.name;
    }

    (*(v78 + 8))(v60, v79);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v85 = &type metadata for ModelManagerPolicyStrategy;
    v83 = v57;
    v68 = qword_1000565E8;
    v69 = v80;
    Notification.init(name:object:userInfo:)();
    v70 = [objc_opt_self() p_name[186]];
    v71 = Notification._bridgeToObjectiveC()().super.isa;
    [v70 postNotification:v71];

    sub_10001B150(v98);
    sub_10001B150(v97);
    (*(v81 + 8))(v69, v77);
  }

  return v76;
}

uint64_t sub_1000131E8(uint64_t a1)
{
  v76 = type metadata accessor for Notification();
  v80 = *(v76 - 8);
  __chkstk_darwin(v76 - 8);
  v79 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = __chkstk_darwin(v3);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v73 = &v72 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v72 - v9;
  __chkstk_darwin(v8);
  v12 = &v72 - v11;
  v13 = *(a1 + 16);
  [v13 lock];
  swift_beginAccess();
  v93 = *(a1 + 88);
  v91 = *(a1 + 56);
  v92 = *(a1 + 72);
  v94 = *(a1 + 104);
  v75 = v93;
  v95[0] = v91;
  v95[1] = v92;
  v95[2] = v93;
  v95[3] = v94;
  v85 = v93;
  v86 = v94;
  v83 = v91;
  v84 = v92;
  v90 = v94;
  v89 = v93;
  v87 = v91;
  v88 = v92;
  sub_10001B118(&v91, v97);
  sub_10001B118(v95, v97);
  [v13 unlock];
  v96[0] = v83;
  v96[1] = v84;
  v96[2] = v85;
  v96[3] = v86;
  v97[0] = v87;
  v97[1] = v88;
  v98 = v89;
  v99 = v90;
  v14 = v89;
  v15 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  if (v15 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v82 = v20;
      *v19 = 136446210;
      v81 = v14;
      v21 = String.init<A>(describing:)();
      v23 = sub_100034C38(v21, v22, &v82);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Updating game mode enablement strategy to %{public}s", v19, 0xCu);
      sub_100003964(v20);
    }

    (*(v77 + 8))(v12, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v14;
    v24 = qword_1000565E0;
    v25 = v79;
    Notification.init(name:object:userInfo:)();
    v26 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v26 postNotification:isa];

    (*(v80 + 8))(v25, v76);
  }

  v28 = *(&v98 + 1);
  v29 = ModeEnablementStrategy.rawValue.getter();
  if (v29 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v82 = v33;
      *v32 = 136446210;
      v81 = v28;
      v34 = String.init<A>(describing:)();
      v36 = sub_100034C38(v34, v35, &v82);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Updating sustained execution mode enablement strategy to %{public}s", v32, 0xCu);
      sub_100003964(v33);
    }

    (*(v77 + 8))(v10, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v28;
    v37 = qword_1000565F0;
    v38 = v79;
    Notification.init(name:object:userInfo:)();
    v39 = [objc_opt_self() p_name[186]];
    v40 = Notification._bridgeToObjectiveC()().super.isa;
    [v39 postNotification:v40];

    (*(v80 + 8))(v38, v76);
  }

  v41 = v99;
  v42 = ModeEnablementStrategy.rawValue.getter();
  if (v42 != ModeEnablementStrategy.rawValue.getter())
  {
    v43 = v73;
    static Logger.policyCoordinator.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = p_name;
      v48 = swift_slowAlloc();
      v82 = v48;
      *v46 = 136446210;
      v81 = v41;
      v49 = String.init<A>(describing:)();
      v51 = sub_100034C38(v49, v50, &v82);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "Updating dynamic splitter enablement strategy to %{public}s", v46, 0xCu);
      sub_100003964(v48);
      p_name = v47;

      (*(v77 + 8))(v73, v78);
    }

    else
    {

      (*(v77 + 8))(v43, v78);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v41;
    v52 = qword_1000565F8;
    v53 = v79;
    Notification.init(name:object:userInfo:)();
    v54 = [objc_opt_self() p_name[186]];
    v55 = Notification._bridgeToObjectiveC()().super.isa;
    [v54 postNotification:v55];

    (*(v80 + 8))(v53, v76);
  }

  v56 = *(&v99 + 1);
  v57 = ModelManagerPolicyStrategy.rawValue.getter();
  v58 = ModelManagerPolicyStrategy.rawValue.getter();
  v59 = v74;
  if (v57 == v58)
  {
    sub_10001B150(v97);
    sub_10001B150(v96);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v82 = v63;
      *v62 = 136446210;
      v81 = v56;
      v64 = String.init<A>(describing:)();
      v66 = sub_100034C38(v64, v65, &v82);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v61, "Updating game mode ModelManager policy strategy to %{public}s", v62, 0xCu);
      sub_100003964(v63);
      p_name = &stru_100051FF8.name;
    }

    (*(v77 + 8))(v59, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModelManagerPolicyStrategy;
    v82 = v56;
    v67 = qword_1000565E8;
    v68 = v79;
    Notification.init(name:object:userInfo:)();
    v69 = [objc_opt_self() p_name[186]];
    v70 = Notification._bridgeToObjectiveC()().super.isa;
    [v69 postNotification:v70];

    sub_10001B150(v97);
    sub_10001B150(v96);
    (*(v80 + 8))(v68, v76);
  }

  return v75;
}

uint64_t sub_100013CB0(uint64_t a1)
{
  v76 = type metadata accessor for Notification();
  v80 = *(v76 - 8);
  __chkstk_darwin(v76 - 8);
  v79 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = __chkstk_darwin(v3);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v73 = &v72 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v72 - v9;
  __chkstk_darwin(v8);
  v12 = &v72 - v11;
  v13 = *(a1 + 16);
  [v13 lock];
  swift_beginAccess();
  v93 = *(a1 + 88);
  v91 = *(a1 + 56);
  v92 = *(a1 + 72);
  v94 = *(a1 + 104);
  v75 = *(&v93 + 1);
  v95[0] = v91;
  v95[1] = v92;
  v95[2] = v93;
  v95[3] = v94;
  v85 = v93;
  v86 = v94;
  v83 = v91;
  v84 = v92;
  v90 = v94;
  v89 = v93;
  v87 = v91;
  v88 = v92;
  sub_10001B118(&v91, v97);
  sub_10001B118(v95, v97);
  [v13 unlock];
  v96[0] = v83;
  v96[1] = v84;
  v96[2] = v85;
  v96[3] = v86;
  v97[0] = v87;
  v97[1] = v88;
  v98 = v89;
  v99 = v90;
  v14 = v89;
  v15 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  if (v15 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v82 = v20;
      *v19 = 136446210;
      v81 = v14;
      v21 = String.init<A>(describing:)();
      v23 = sub_100034C38(v21, v22, &v82);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Updating game mode enablement strategy to %{public}s", v19, 0xCu);
      sub_100003964(v20);
    }

    (*(v77 + 8))(v12, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v14;
    v24 = qword_1000565E0;
    v25 = v79;
    Notification.init(name:object:userInfo:)();
    v26 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v26 postNotification:isa];

    (*(v80 + 8))(v25, v76);
  }

  v28 = *(&v98 + 1);
  v29 = ModeEnablementStrategy.rawValue.getter();
  if (v29 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v82 = v33;
      *v32 = 136446210;
      v81 = v28;
      v34 = String.init<A>(describing:)();
      v36 = sub_100034C38(v34, v35, &v82);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Updating sustained execution mode enablement strategy to %{public}s", v32, 0xCu);
      sub_100003964(v33);
    }

    (*(v77 + 8))(v10, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v28;
    v37 = qword_1000565F0;
    v38 = v79;
    Notification.init(name:object:userInfo:)();
    v39 = [objc_opt_self() p_name[186]];
    v40 = Notification._bridgeToObjectiveC()().super.isa;
    [v39 postNotification:v40];

    (*(v80 + 8))(v38, v76);
  }

  v41 = v99;
  v42 = ModeEnablementStrategy.rawValue.getter();
  if (v42 != ModeEnablementStrategy.rawValue.getter())
  {
    v43 = v73;
    static Logger.policyCoordinator.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = p_name;
      v48 = swift_slowAlloc();
      v82 = v48;
      *v46 = 136446210;
      v81 = v41;
      v49 = String.init<A>(describing:)();
      v51 = sub_100034C38(v49, v50, &v82);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "Updating dynamic splitter enablement strategy to %{public}s", v46, 0xCu);
      sub_100003964(v48);
      p_name = v47;

      (*(v77 + 8))(v73, v78);
    }

    else
    {

      (*(v77 + 8))(v43, v78);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v41;
    v52 = qword_1000565F8;
    v53 = v79;
    Notification.init(name:object:userInfo:)();
    v54 = [objc_opt_self() p_name[186]];
    v55 = Notification._bridgeToObjectiveC()().super.isa;
    [v54 postNotification:v55];

    (*(v80 + 8))(v53, v76);
  }

  v56 = *(&v99 + 1);
  v57 = ModelManagerPolicyStrategy.rawValue.getter();
  v58 = ModelManagerPolicyStrategy.rawValue.getter();
  v59 = v74;
  if (v57 == v58)
  {
    sub_10001B150(v97);
    sub_10001B150(v96);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v82 = v63;
      *v62 = 136446210;
      v81 = v56;
      v64 = String.init<A>(describing:)();
      v66 = sub_100034C38(v64, v65, &v82);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v61, "Updating game mode ModelManager policy strategy to %{public}s", v62, 0xCu);
      sub_100003964(v63);
      p_name = &stru_100051FF8.name;
    }

    (*(v77 + 8))(v59, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModelManagerPolicyStrategy;
    v82 = v56;
    v67 = qword_1000565E8;
    v68 = v79;
    Notification.init(name:object:userInfo:)();
    v69 = [objc_opt_self() p_name[186]];
    v70 = Notification._bridgeToObjectiveC()().super.isa;
    [v69 postNotification:v70];

    sub_10001B150(v97);
    sub_10001B150(v96);
    (*(v80 + 8))(v68, v76);
  }

  return v75;
}

uint64_t sub_100014778(uint64_t a1)
{
  v76 = type metadata accessor for Notification();
  v80 = *(v76 - 8);
  __chkstk_darwin(v76 - 8);
  v79 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = __chkstk_darwin(v3);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v73 = &v72 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v72 - v9;
  __chkstk_darwin(v8);
  v12 = &v72 - v11;
  v13 = *(a1 + 16);
  [v13 lock];
  swift_beginAccess();
  v94 = *(a1 + 104);
  v91 = *(a1 + 56);
  v92 = *(a1 + 72);
  v93 = *(a1 + 88);
  v75 = v94;
  v95[0] = v91;
  v95[1] = v92;
  v95[2] = v93;
  v95[3] = v94;
  v85 = v93;
  v86 = v94;
  v83 = v91;
  v84 = v92;
  v87 = v91;
  v88 = v92;
  v90 = v94;
  v89 = v93;
  sub_10001B118(&v91, v97);
  sub_10001B118(v95, v97);
  [v13 unlock];
  v96[0] = v83;
  v96[1] = v84;
  v96[2] = v85;
  v96[3] = v86;
  v97[0] = v87;
  v97[1] = v88;
  v98 = v89;
  v99 = v90;
  v14 = v89;
  v15 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  if (v15 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v82 = v20;
      *v19 = 136446210;
      v81 = v14;
      v21 = String.init<A>(describing:)();
      v23 = sub_100034C38(v21, v22, &v82);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Updating game mode enablement strategy to %{public}s", v19, 0xCu);
      sub_100003964(v20);
    }

    (*(v77 + 8))(v12, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v14;
    v24 = qword_1000565E0;
    v25 = v79;
    Notification.init(name:object:userInfo:)();
    v26 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v26 postNotification:isa];

    (*(v80 + 8))(v25, v76);
  }

  v28 = *(&v98 + 1);
  v29 = ModeEnablementStrategy.rawValue.getter();
  if (v29 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v82 = v33;
      *v32 = 136446210;
      v81 = v28;
      v34 = String.init<A>(describing:)();
      v36 = sub_100034C38(v34, v35, &v82);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Updating sustained execution mode enablement strategy to %{public}s", v32, 0xCu);
      sub_100003964(v33);
    }

    (*(v77 + 8))(v10, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v28;
    v37 = qword_1000565F0;
    v38 = v79;
    Notification.init(name:object:userInfo:)();
    v39 = [objc_opt_self() p_name[186]];
    v40 = Notification._bridgeToObjectiveC()().super.isa;
    [v39 postNotification:v40];

    (*(v80 + 8))(v38, v76);
  }

  v41 = v99;
  v42 = ModeEnablementStrategy.rawValue.getter();
  if (v42 != ModeEnablementStrategy.rawValue.getter())
  {
    v43 = v73;
    static Logger.policyCoordinator.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = p_name;
      v48 = swift_slowAlloc();
      v82 = v48;
      *v46 = 136446210;
      v81 = v41;
      v49 = String.init<A>(describing:)();
      v51 = sub_100034C38(v49, v50, &v82);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "Updating dynamic splitter enablement strategy to %{public}s", v46, 0xCu);
      sub_100003964(v48);
      p_name = v47;

      (*(v77 + 8))(v73, v78);
    }

    else
    {

      (*(v77 + 8))(v43, v78);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v41;
    v52 = qword_1000565F8;
    v53 = v79;
    Notification.init(name:object:userInfo:)();
    v54 = [objc_opt_self() p_name[186]];
    v55 = Notification._bridgeToObjectiveC()().super.isa;
    [v54 postNotification:v55];

    (*(v80 + 8))(v53, v76);
  }

  v56 = *(&v99 + 1);
  v57 = ModelManagerPolicyStrategy.rawValue.getter();
  v58 = ModelManagerPolicyStrategy.rawValue.getter();
  v59 = v74;
  if (v57 == v58)
  {
    sub_10001B150(v97);
    sub_10001B150(v96);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v82 = v63;
      *v62 = 136446210;
      v81 = v56;
      v64 = String.init<A>(describing:)();
      v66 = sub_100034C38(v64, v65, &v82);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v61, "Updating game mode ModelManager policy strategy to %{public}s", v62, 0xCu);
      sub_100003964(v63);
      p_name = &stru_100051FF8.name;
    }

    (*(v77 + 8))(v59, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModelManagerPolicyStrategy;
    v82 = v56;
    v67 = qword_1000565E8;
    v68 = v79;
    Notification.init(name:object:userInfo:)();
    v69 = [objc_opt_self() p_name[186]];
    v70 = Notification._bridgeToObjectiveC()().super.isa;
    [v69 postNotification:v70];

    sub_10001B150(v97);
    sub_10001B150(v96);
    (*(v80 + 8))(v68, v76);
  }

  return v75;
}

uint64_t sub_100015240(uint64_t a1)
{
  v76 = type metadata accessor for Notification();
  v80 = *(v76 - 8);
  __chkstk_darwin(v76 - 8);
  v79 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = __chkstk_darwin(v3);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v73 = &v72 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v72 - v9;
  __chkstk_darwin(v8);
  v12 = &v72 - v11;
  v13 = *(a1 + 16);
  [v13 lock];
  swift_beginAccess();
  v94 = *(a1 + 104);
  v91 = *(a1 + 56);
  v92 = *(a1 + 72);
  v93 = *(a1 + 88);
  v75 = *(&v94 + 1);
  v95[0] = v91;
  v95[1] = v92;
  v95[2] = v93;
  v95[3] = v94;
  v85 = v93;
  v86 = v94;
  v83 = v91;
  v84 = v92;
  v87 = v91;
  v88 = v92;
  v90 = v94;
  v89 = v93;
  sub_10001B118(&v91, v97);
  sub_10001B118(v95, v97);
  [v13 unlock];
  v96[0] = v83;
  v96[1] = v84;
  v96[2] = v85;
  v96[3] = v86;
  v97[0] = v87;
  v97[1] = v88;
  v98 = v89;
  v99 = v90;
  v14 = v89;
  v15 = ModeEnablementStrategy.rawValue.getter();
  p_name = (&stru_100051FF8 + 8);
  if (v15 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v82 = v20;
      *v19 = 136446210;
      v81 = v14;
      v21 = String.init<A>(describing:)();
      v23 = sub_100034C38(v21, v22, &v82);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Updating game mode enablement strategy to %{public}s", v19, 0xCu);
      sub_100003964(v20);
    }

    (*(v77 + 8))(v12, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    p_name = &stru_100051FF8.name;
    if (qword_100053460 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v14;
    v24 = qword_1000565E0;
    v25 = v79;
    Notification.init(name:object:userInfo:)();
    v26 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v26 postNotification:isa];

    (*(v80 + 8))(v25, v76);
  }

  v28 = *(&v98 + 1);
  v29 = ModeEnablementStrategy.rawValue.getter();
  if (v29 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v82 = v33;
      *v32 = 136446210;
      v81 = v28;
      v34 = String.init<A>(describing:)();
      v36 = sub_100034C38(v34, v35, &v82);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Updating sustained execution mode enablement strategy to %{public}s", v32, 0xCu);
      sub_100003964(v33);
    }

    (*(v77 + 8))(v10, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v28;
    v37 = qword_1000565F0;
    v38 = v79;
    Notification.init(name:object:userInfo:)();
    v39 = [objc_opt_self() p_name[186]];
    v40 = Notification._bridgeToObjectiveC()().super.isa;
    [v39 postNotification:v40];

    (*(v80 + 8))(v38, v76);
  }

  v41 = v99;
  v42 = ModeEnablementStrategy.rawValue.getter();
  if (v42 != ModeEnablementStrategy.rawValue.getter())
  {
    v43 = v73;
    static Logger.policyCoordinator.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = p_name;
      v48 = swift_slowAlloc();
      v82 = v48;
      *v46 = 136446210;
      v81 = v41;
      v49 = String.init<A>(describing:)();
      v51 = sub_100034C38(v49, v50, &v82);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "Updating dynamic splitter enablement strategy to %{public}s", v46, 0xCu);
      sub_100003964(v48);
      p_name = v47;

      (*(v77 + 8))(v73, v78);
    }

    else
    {

      (*(v77 + 8))(v43, v78);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModeEnablementStrategy;
    v82 = v41;
    v52 = qword_1000565F8;
    v53 = v79;
    Notification.init(name:object:userInfo:)();
    v54 = [objc_opt_self() p_name[186]];
    v55 = Notification._bridgeToObjectiveC()().super.isa;
    [v54 postNotification:v55];

    (*(v80 + 8))(v53, v76);
  }

  v56 = *(&v99 + 1);
  v57 = ModelManagerPolicyStrategy.rawValue.getter();
  v58 = ModelManagerPolicyStrategy.rawValue.getter();
  v59 = v74;
  if (v57 == v58)
  {
    sub_10001B150(v97);
    sub_10001B150(v96);
  }

  else
  {
    static Logger.policyCoordinator.getter();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v82 = v63;
      *v62 = 136446210;
      v81 = v56;
      v64 = String.init<A>(describing:)();
      v66 = sub_100034C38(v64, v65, &v82);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v61, "Updating game mode ModelManager policy strategy to %{public}s", v62, 0xCu);
      sub_100003964(v63);
      p_name = &stru_100051FF8.name;
    }

    (*(v77 + 8))(v59, v78);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    *&v84 = &type metadata for ModelManagerPolicyStrategy;
    v82 = v56;
    v67 = qword_1000565E8;
    v68 = v79;
    Notification.init(name:object:userInfo:)();
    v69 = [objc_opt_self() p_name[186]];
    v70 = Notification._bridgeToObjectiveC()().super.isa;
    [v69 postNotification:v70];

    sub_10001B150(v97);
    sub_10001B150(v96);
    (*(v80 + 8))(v68, v76);
  }

  return v75;
}

void sub_100015D04(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, _BYTE *a10, _BYTE *a11, char *a12)
{
  v185 = a4;
  v186 = a8;
  v183 = a5;
  v184 = a7;
  v172 = a3;
  v173 = a6;
  v170 = a9;
  v175 = a12;
  v158 = a11;
  v174 = a10;
  v14 = type metadata accessor for Notification();
  v181 = *(v14 - 8);
  v182 = v14;
  __chkstk_darwin(v14);
  v180 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v177 = *(v16 - 8);
  v178 = v16;
  v17 = __chkstk_darwin(v16);
  v19 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v158 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v158 - v24;
  __chkstk_darwin(v23);
  v161 = &v158 - v26;
  v27 = sub_100003870(&qword_100054428, &qword_10003E778);
  __chkstk_darwin(v27 - 8);
  v29 = &v158 - v28;
  v167 = sub_100003870(&qword_100054448, &unk_10003E790);
  __chkstk_darwin(v167);
  v168 = &v158 - v30;
  v162 = sub_100003870(&qword_1000552B0, &qword_10003F110);
  __chkstk_darwin(v162);
  v179 = &v158 - v31;
  v166 = *(a1 + 16);
  [v166 lock];
  swift_beginAccess();
  v32 = *(a1 + 88);
  v33 = *(a1 + 72);
  v195 = *(a1 + 56);
  v196 = v33;
  v34 = *(a1 + 104);
  v197 = v32;
  v198 = v34;
  v176 = v32;
  v164 = a1;
  swift_beginAccess();
  v35 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
  swift_beginAccess();
  v171 = a2;
  v36 = *&a2[v35];
  v159 = v25;
  v160 = v19;
  v169 = v22;
  v163 = v29;
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    sub_10001B118(&v195, v192);
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = -1 << *(v36 + 32);
    v38 = v36 + 64;
    v39 = ~v41;
    v42 = -v41;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v40 = v43 & *(v36 + 64);
    sub_10001B118(&v195, v192);
    v37 = v36;
  }

  v44 = 0;
  v165 = v39;
  v45 = (v39 + 64) >> 6;
  while ((v37 & 0x8000000000000000) != 0)
  {
    v51 = __CocoaDictionary.Iterator.next()();
    if (!v51)
    {
      goto LABEL_46;
    }

    v53 = v52;
    *&v190[0] = v51;
    sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
    swift_dynamicCast();
    v50 = *&v192[0];
    *&v190[0] = v53;
    type metadata accessor for EmbeddedGameProcess();
    swift_dynamicCast();
    v48 = v44;
    v49 = v40;
    if (!v50)
    {
      goto LABEL_46;
    }

LABEL_19:

    if ((dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter() & 1) == 0)
    {
      dispatch thunk of EmbeddedGameProcess.triggeringGameMode.setter();
      dispatch thunk of EmbeddedGameProcess.triggeringModelManagerAssertion.setter();

      goto LABEL_9;
    }

    if (dispatch thunk of EmbeddedGameProcess.isGame.getter())
    {

      v54 = v172;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v55 = v185;
    v56 = *v185;
    v57 = EmbeddedGameProcess.semPreference.getter();
    *v55 = sub_100039D3C(v56, v57);
    if (EmbeddedGameProcess.supportsDynamicPowerSplitter.getter())
    {
      *v183 = 1;
    }

    if (EmbeddedGameProcess.supportsGameMode.getter())
    {

      v58 = v173;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v59 = EmbeddedGameProcess.bundleIdentifier.getter();
      if (!*(v184 + 16))
      {

LABEL_34:
        type metadata accessor for GlobalPreferences();
        dispatch thunk of static GlobalPreferences.shared.getter();
        EmbeddedGameProcess.bundleIdentifier.getter();
        dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifier:)();

        dispatch thunk of EmbeddedGameProcess.triggeringGameMode.setter();
LABEL_35:

        v65 = v186;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_38;
      }

      v61 = sub_100035224(v59, v60);
      v63 = v62;

      if ((v63 & 1) == 0)
      {
        goto LABEL_34;
      }

      v64 = *(*(v184 + 56) + v61);
      dispatch thunk of EmbeddedGameProcess.triggeringGameMode.setter();
      if (v64 == 1)
      {
        goto LABEL_35;
      }
    }

LABEL_38:
    if (EmbeddedGameProcess.requiresModelManagerAssertion.getter())
    {
      dispatch thunk of EmbeddedGameProcess.triggeringModelManagerAssertion.setter();
      *v174 = 1;
    }

    if (EmbeddedGameProcess.supportsModelManagerAssertion.getter() & 1) != 0 && (dispatch thunk of EmbeddedGameProcess.triggeringGameMode.getter())
    {
      v66 = ModeEnablementStrategy.rawValue.getter();
      if (v66 != ModeEnablementStrategy.rawValue.getter())
      {
        dispatch thunk of EmbeddedGameProcess.triggeringModelManagerAssertion.setter();
        *v158 = 1;
      }
    }

    v67 = dispatch thunk of EmbeddedGameProcess.supportsCameraJettisonS2R.getter();

    v44 = v48;
    v40 = v49;
    if (v67)
    {
      *v175 = 1;
LABEL_9:
      v44 = v48;
      v40 = v49;
    }
  }

  v46 = v44;
  v47 = v40;
  v48 = v44;
  if (!v40)
  {
    while (1)
    {
      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v48 >= v45)
      {
        goto LABEL_46;
      }

      v47 = *(v38 + 8 * v48);
      ++v46;
      if (v47)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

LABEL_15:
  v49 = (v47 - 1) & v47;
  v50 = *(*(v37 + 48) + ((v48 << 9) | (8 * __clz(__rbit64(v47)))));

  if (v50)
  {
    goto LABEL_19;
  }

LABEL_46:
  sub_10001B370(v37);
  if (!(*v186 >> 62))
  {
    v68 = *((*v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_48;
  }

LABEL_104:
  v68 = _CocoaArrayWrapper.endIndex.getter();
LABEL_48:
  v70 = v163;
  v69 = v164;
  if (v68 > 0 || (v71 = ModeEnablementStrategy.rawValue.getter(), v71 == ModeEnablementStrategy.rawValue.getter()))
  {
    v72 = ModeEnablementStrategy.rawValue.getter();
    v73 = v72 != ModeEnablementStrategy.rawValue.getter();
  }

  else
  {
    v73 = 0;
  }

  v74 = *(v69 + 112);
  if (v74 > 1)
  {
    if (v74 == 2)
    {
      goto LABEL_57;
    }

    if (v74 == 3)
    {
      goto LABEL_61;
    }

LABEL_105:
    *&v192[0] = *(v69 + 112);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if (v74)
  {
    if (v74 == 1)
    {
      goto LABEL_59;
    }

    goto LABEL_105;
  }

  if (*v174)
  {
LABEL_61:
    v75 = &enum case for ModelManagerGameAssertionPolicy.aaaGameMode(_:);
    goto LABEL_62;
  }

  if ((*v158 & 1) == 0)
  {
LABEL_59:
    v76 = type metadata accessor for ModelManagerGameAssertionPolicy();
    (*(*(v76 - 8) + 56))(v70, 1, 1, v76);
    goto LABEL_63;
  }

LABEL_57:
  v75 = &enum case for ModelManagerGameAssertionPolicy.standardGameMode(_:);
LABEL_62:
  v77 = *v75;
  v78 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v79 = *(v78 - 8);
  (*(v79 + 104))(v70, v77, v78);
  (*(v79 + 56))(v70, 0, 1, v78);
LABEL_63:
  v80 = *(v69 + 96);
  if (v80 == 2)
  {
    v81 = 3;
  }

  else if (v80 == 1)
  {
    v81 = 2;
  }

  else
  {
    v81 = *v185;
  }

  if ((*v183 & 1) != 0 || (v82 = ModeEnablementStrategy.rawValue.getter(), v82 == ModeEnablementStrategy.rawValue.getter()))
  {
    v83 = ModeEnablementStrategy.rawValue.getter();
    v84 = v83 != ModeEnablementStrategy.rawValue.getter();
    if (v73)
    {
      v85 = v162;
      goto LABEL_74;
    }

    v86 = 0;
    v85 = v162;
  }

  else
  {
    v84 = 0;
    v86 = 0;
    v85 = v162;
    if (v73)
    {
LABEL_74:
      v86 = *v175;
    }
  }

  v87 = *(v85 + 80);
  v88 = *(v85 + 96);
  v89 = v168;
  *v168 = v73;
  *(v89 + 8) = v81;
  *(v89 + 16) = v84;
  sub_10001B378(v70, v89 + v87, &qword_100054428, &qword_10003E778);
  *(v89 + v88) = v86;
  swift_endAccess();
  v90 = *(v69 + 104);
  v91 = *(v69 + 72);
  v190[0] = *(v69 + 56);
  v190[1] = v91;
  v190[2] = *(v69 + 88);
  v190[3] = v90;
  v92 = (v89 + *(v167 + 48));
  v93 = (v89 + *(v167 + 64));
  v94 = v196;
  *v92 = v195;
  v92[1] = v94;
  v95 = v198;
  v92[2] = v197;
  v92[3] = v95;
  v96 = *(v69 + 72);
  *v93 = *(v69 + 56);
  v93[1] = v96;
  v97 = *(v69 + 104);
  v93[2] = *(v69 + 88);
  v93[3] = v97;
  sub_10001B118(v190, v192);
  [v166 unlock];
  v98 = v92[1];
  v191[0] = *v92;
  v191[1] = v98;
  v99 = v92[3];
  v191[2] = v92[2];
  v191[3] = v99;
  v100 = v93[1];
  v192[0] = *v93;
  v192[1] = v100;
  v101 = v93[3];
  v193 = v93[2];
  v194 = v101;
  sub_10001B378(v89, v179, &qword_1000552B0, &qword_10003F110);
  v102 = v193;
  v103 = ModeEnablementStrategy.rawValue.getter();
  p_name = &stru_100051FF8.name;
  if (v103 != ModeEnablementStrategy.rawValue.getter())
  {
    v105 = v161;
    static Logger.policyCoordinator.getter();
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v187 = v102;
      v188[0] = v109;
      *v108 = 136446210;
      v110 = String.init<A>(describing:)();
      v112 = sub_100034C38(v110, v111, v188);

      *(v108 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v106, v107, "Updating game mode enablement strategy to %{public}s", v108, 0xCu);
      sub_100003964(v109);
      p_name = (&stru_100051FF8 + 8);

      (*(v177 + 8))(v161, v178);
    }

    else
    {

      (*(v177 + 8))(v105, v178);
    }

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.setter();

    if (qword_100053460 != -1)
    {
      swift_once();
    }

    v189 = &type metadata for ModeEnablementStrategy;
    v188[0] = v102;
    v113 = qword_1000565E0;
    v114 = v180;
    Notification.init(name:object:userInfo:)();
    v115 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v115 p_name[223]];

    (*(v181 + 8))(v114, v182);
  }

  v117 = *(&v193 + 1);
  v118 = ModeEnablementStrategy.rawValue.getter();
  if (v118 != ModeEnablementStrategy.rawValue.getter())
  {
    v119 = v159;
    static Logger.policyCoordinator.getter();
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v187 = v117;
      v188[0] = v186;
      *v122 = 136446210;
      v123 = String.init<A>(describing:)();
      v125 = sub_100034C38(v123, v124, v188);

      *(v122 + 4) = v125;
      _os_log_impl(&_mh_execute_header, v120, v121, "Updating sustained execution mode enablement strategy to %{public}s", v122, 0xCu);
      sub_100003964(v186);
      p_name = &stru_100051FF8.name;
    }

    (*(v177 + 8))(v119, v178);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.semEnablementStrategy.setter();

    if (qword_100053470 != -1)
    {
      swift_once();
    }

    v189 = &type metadata for ModeEnablementStrategy;
    v188[0] = v117;
    v126 = qword_1000565F0;
    v127 = v180;
    Notification.init(name:object:userInfo:)();
    v128 = [objc_opt_self() defaultCenter];
    v129 = Notification._bridgeToObjectiveC()().super.isa;
    [v128 p_name[223]];

    (*(v181 + 8))(v127, v182);
  }

  v130 = v194;
  v131 = ModeEnablementStrategy.rawValue.getter();
  if (v131 != ModeEnablementStrategy.rawValue.getter())
  {
    static Logger.policyCoordinator.getter();
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v187 = v130;
      v188[0] = v135;
      *v134 = 136446210;
      v136 = String.init<A>(describing:)();
      v138 = sub_100034C38(v136, v137, v188);

      *(v134 + 4) = v138;
      _os_log_impl(&_mh_execute_header, v132, v133, "Updating dynamic splitter enablement strategy to %{public}s", v134, 0xCu);
      sub_100003964(v135);
      p_name = &stru_100051FF8.name;
    }

    (*(v177 + 8))(v169, v178);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.setter();

    if (qword_100053478 != -1)
    {
      swift_once();
    }

    v189 = &type metadata for ModeEnablementStrategy;
    v188[0] = v130;
    v139 = qword_1000565F8;
    v140 = v180;
    Notification.init(name:object:userInfo:)();
    v141 = [objc_opt_self() defaultCenter];
    v142 = Notification._bridgeToObjectiveC()().super.isa;
    [v141 p_name[223]];

    (*(v181 + 8))(v140, v182);
  }

  v143 = *(&v194 + 1);
  v144 = ModelManagerPolicyStrategy.rawValue.getter();
  if (v144 == ModelManagerPolicyStrategy.rawValue.getter())
  {
    sub_10001B150(v192);
    sub_10001B150(v191);
    v145 = v171;
  }

  else
  {
    v146 = v160;
    static Logger.policyCoordinator.getter();
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.default.getter();
    v149 = os_log_type_enabled(v147, v148);
    v145 = v171;
    if (v149)
    {
      v150 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v187 = v143;
      v188[0] = v186;
      *v150 = 136446210;
      v151 = String.init<A>(describing:)();
      v153 = sub_100034C38(v151, v152, v188);

      *(v150 + 4) = v153;
      _os_log_impl(&_mh_execute_header, v147, v148, "Updating game mode ModelManager policy strategy to %{public}s", v150, 0xCu);
      sub_100003964(v186);
      p_name = &stru_100051FF8.name;
    }

    (*(v177 + 8))(v146, v178);
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.setter();

    if (qword_100053468 != -1)
    {
      swift_once();
    }

    v189 = &type metadata for ModelManagerPolicyStrategy;
    v188[0] = v143;
    v154 = qword_1000565E8;
    v155 = v180;
    Notification.init(name:object:userInfo:)();
    v156 = [objc_opt_self() defaultCenter];
    v157 = Notification._bridgeToObjectiveC()().super.isa;
    [v156 p_name[223]];

    sub_10001B150(v192);
    sub_10001B150(v191);
    (*(v181 + 8))(v155, v182);
  }

  sub_10001B378(v179, v170, &qword_1000552B0, &qword_10003F110);
}

uint64_t sub_1000170B8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a1 + 32);
  v23 = v5;
  v24 = v2;
  v22 = v6;
  if (v9 >> 62)
  {
    goto LABEL_22;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v10)
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v11++, 1))
        {
          __break(1u);
          return result;
        }

        v21 = result;
        swift_unknownObjectRelease();
        if (v21 == a2)
        {
        }
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v10 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        if (*(v9 + 32 + 8 * v11) == a2)
        {
        }

        ++v11;
      }
    }

    while (v11 != v10);
  }

  static Logger.policyCoordinator.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25[0] = v17;
    *v16 = 136446210;
    v26 = a2;
    type metadata accessor for GamePolicyCoordinatorObserver();

    v18 = String.init<A>(describing:)();
    v20 = sub_100034C38(v18, v19, v25);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "registerObserver: %{public}s", v16, 0xCu);
    sub_100003964(v17);
  }

  (*(v22 + 8))(v8, v23);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_1000173E8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a1 + 32);
  v28 = v5;
  v29 = v2;
  v27 = v6;
  if (v9 >> 62)
  {
LABEL_24:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
  }

  v11 = 0;
  while ((v9 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    if (*(v9 + 32 + 8 * v11) == a2)
    {
      goto LABEL_14;
    }

    ++v11;
LABEL_10:
    if (v11 == v10)
    {
    }
  }

  result = specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (__OFADD__(v11++, 1))
  {
    goto LABEL_27;
  }

  v26 = result;
  swift_unknownObjectRelease();
  if (v26 != a2)
  {
    goto LABEL_10;
  }

LABEL_14:

  static Logger.policyCoordinator.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v28;
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30[0] = v19;
    *v18 = 136446210;
    v31 = a2;
    type metadata accessor for GamePolicyCoordinatorObserver();

    v20 = String.init<A>(describing:)();
    v22 = sub_100034C38(v20, v21, v30);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "unregisterObserver: %{public}s", v18, 0xCu);
    sub_100003964(v19);

    (*(v27 + 8))(v8, v28);
  }

  else
  {

    (*(v27 + 8))(v8, v17);
  }

  swift_beginAccess();

  v23 = sub_10001B4E4((a1 + 32), a2);

  v24 = *(a1 + 32);
  if (v24 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v25 = result;
    if (result >= v23)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25 >= v23)
    {
LABEL_20:
      sub_100025814(v23, v25);
      return swift_endAccess();
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_10001774C()
{
  type metadata accessor for GamePolicyCoordinator();
  swift_allocObject();
  result = sub_100017788();
  off_1000541F8 = result;
  return result;
}

void *sub_100017788()
{
  v1 = type metadata accessor for DynamicSplitterStatus.Config();
  v76 = *(v1 - 8);
  v77 = v1;
  v2 = __chkstk_darwin(v1);
  v75 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v68 = v59 - v4;
  v74 = type metadata accessor for SustainedExecutionStatus.Config();
  v72 = *(v74 - 8);
  v5 = __chkstk_darwin(v74);
  v70 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = v59 - v7;
  v8 = sub_100003870(&qword_100054428, &qword_10003E778);
  __chkstk_darwin(v8 - 8);
  v66 = v59 - v9;
  v73 = type metadata accessor for ModelManagerGameAssertionStatus.Config();
  v71 = *(v73 - 8);
  v10 = __chkstk_darwin(v73);
  v69 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = v59 - v12;
  v13 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v14 = __chkstk_darwin(v13 - 8);
  v65 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v64 = v59 - v16;
  v17 = type metadata accessor for GameModeStatus.Config();
  v81 = *(v17 - 8);
  v82 = v17;
  v18 = __chkstk_darwin(v17);
  v67 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v83 = v59 - v20;
  v63 = type metadata accessor for String.Encoding();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v22 = *(v60 - 8);
  __chkstk_darwin(v60);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v25);
  v26 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v26 - 8);
  *(v0 + 16) = [objc_allocWithZone(NSLock) init];
  v59[2] = sub_100009748(0, &qword_100053B00, OS_dispatch_queue_ptr);
  v59[1] = "AssertionChangedNotifyToken";
  static DispatchQoS.unspecified.getter();
  v84 = _swiftEmptyArrayStorage;
  sub_10001BF5C(&qword_100054430, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003870(&qword_100054438, &qword_10003E788);
  sub_10001B9A0(&qword_100054440, &qword_100054438, &qword_10003E788);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v22 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v60);
  v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v28 = v78;
  v78[3] = v27;
  v28[4] = _swiftEmptyArrayStorage;
  v28[6] = 0;
  swift_unknownObjectWeakInit();
  v28[15] = 0;
  v29 = v28;
  out_token = 0;
  v84 = 0xD00000000000003DLL;
  v85 = 0x80000001000416B0;
  v30 = v61;
  static String.Encoding.utf8.getter();
  sub_100009790();
  v31 = StringProtocol.cString(using:)();
  (*(v62 + 8))(v30, v63);
  if (v31)
  {
    v32 = (v31 + 32);
  }

  else
  {
    v32 = 0;
  }

  notify_register_check(v32, &out_token);

  *(v29 + 32) = out_token;
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v63 = dispatch thunk of GlobalPreferences.gameModeEnablementStrategy.getter();

  v33 = type metadata accessor for Date();
  v34 = *(*(v33 - 8) + 56);
  v35 = v64;
  v34(v64, 1, 1, v33);
  v36 = v65;
  v34(v65, 1, 1, v33);
  GameModeStatus.Config.init(enabled:enablementDate:disablementDate:deviceSupported:jettisonCameraS2R:gameBundleIdentifiers:previousGameBundleIdentifiers:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:allGameBundleIdentifiers:previousAllGameBundleIdentifiers:enablementStrategy:perfomanceGamingModeEnabled:)();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v62 = dispatch thunk of GlobalPreferences.modelManagerGameAssertionPolicyStrategy.getter();

  v37 = type metadata accessor for ModelManagerGameAssertionPolicy();
  (*(*(v37 - 8) + 56))(v66, 1, 1, v37);
  v34(v35, 1, 1, v33);
  v34(v36, 1, 1, v33);
  ModelManagerGameAssertionStatus.Config.init(policy:enablementDate:disablementDate:deviceSupported:aaaBundleIdentifiers:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:policyStrategy:)();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v66 = dispatch thunk of GlobalPreferences.semEnablementStrategy.getter();

  v34(v35, 1, 1, v33);
  v34(v36, 1, 1, v33);
  v38 = v79;
  SustainedExecutionStatus.Config.init(activePolicy:enablementDate:disablementDate:deviceSupported:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:enablementStrategy:)();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v61 = dispatch thunk of GlobalPreferences.dynamicSplitterEnablementStrategy.getter();

  v34(v35, 1, 1, v33);
  v34(v36, 1, 1, v33);
  v39 = v68;
  DynamicSplitterStatus.Config.init(enabled:enablementDate:disablementDate:deviceSupported:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:enablementStrategy:)();
  (*(v81 + 16))(v67, v83, v82);
  v40 = objc_allocWithZone(type metadata accessor for GameModeStatus());
  v67 = GameModeStatus.init(config:)();
  v41 = v72;
  v42 = v38;
  v43 = v74;
  (*(v72 + 16))(v70, v42, v74);
  v44 = objc_allocWithZone(type metadata accessor for SustainedExecutionStatus());
  v70 = SustainedExecutionStatus.init(config:)();
  v45 = v76;
  v46 = v39;
  v47 = v39;
  v48 = v77;
  (*(v76 + 16))(v75, v46, v77);
  v49 = objc_allocWithZone(type metadata accessor for DynamicSplitterStatus());
  v75 = DynamicSplitterStatus.init(config:)();
  v50 = v71;
  v51 = v80;
  v52 = v73;
  (*(v71 + 16))(v69, v80, v73);
  v53 = objc_allocWithZone(type metadata accessor for ModelManagerGameAssertionStatus());
  v54 = ModelManagerGameAssertionStatus.init(config:)();
  (*(v45 + 8))(v47, v48);
  (*(v41 + 8))(v79, v43);
  (*(v50 + 8))(v51, v52);
  (*(v81 + 8))(v83, v82);
  result = v78;
  v56 = v70;
  v78[7] = v67;
  result[8] = v56;
  result[9] = v75;
  result[10] = v54;
  v57 = v66;
  result[11] = v63;
  result[12] = v57;
  v58 = v62;
  result[13] = v61;
  result[14] = v58;
  return result;
}

uint64_t sub_10001836C()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = *(v1 + 120);
  if (v9)
  {
    *(v1 + 120) = 0;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;

    sub_100018680(0, 0, v8, &unk_10003E838, v11);

    v12 = *(v1 + 128);
    if (v12)
    {
      notify_set_state(v12, 0);
      v20[0] = 0xD00000000000003DLL;
      v20[1] = 0x80000001000416B0;
      static String.Encoding.utf8.getter();
      sub_100009790();
      v13 = StringProtocol.cString(using:)();
      (*(v3 + 8))(v5, v2);
      if (v13)
      {
        v14 = (v13 + 32);
      }

      else
      {
        v14 = 0;
      }

      notify_post(v14);
    }
  }

  v15 = *(v1 + 128);
  if (v15)
  {
    notify_cancel(v15);
  }

  sub_10000B4A8(v1 + 40);
  v16 = *(v1 + 56);
  v17 = *(v1 + 64);
  v18 = *(v1 + 72);

  return v1;
}

uint64_t sub_1000185EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C4B0;

  return Assertion.invalidate()();
}

uint64_t sub_100018680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001C10C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000096E8(v11, &qword_100054460, &qword_10003E7B8);
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

      sub_1000096E8(a3, &qword_100054460, &qword_10003E7B8);

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

  sub_1000096E8(a3, &qword_100054460, &qword_10003E7B8);
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

uint64_t sub_100018970()
{
  sub_10001836C();

  return _swift_deallocClassInstance(v0, 132, 7);
}

uint64_t sub_1000189C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = a3;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = GameModeStatus.enabled.getter() & 1;
  swift_beginAccess();
  v10 = *(a2 + 56);
  v11 = GameModeStatus.enabled.getter() & 1;

  v12 = *(a2 + 56);
  *(a2 + 56) = a1;
  v13 = a1;

  if (v9 != v11)
  {
    v14 = (v6 + 8);
    if (GameModeStatus.enabled.getter())
    {
      static os_signpost_type_t.begin.getter();
    }

    else
    {
      static os_signpost_type_t.end.getter();
    }

    v15 = static Logger.stateTracking.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    (*v14)(v8, v5);
  }

  swift_beginAccess();
  *v18 = *(a2 + 32);
}

uint64_t sub_100018B80(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[2];
  [v9 lock];
  swift_beginAccess();
  v10 = v1[10];
  v1[10] = a1;
  v22 = a1;

  swift_beginAccess();
  v11 = v1[4];

  [v9 unlock];
  aBlock[4] = sub_10001B984;
  v25 = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024520;
  aBlock[3] = &unk_10004DC00;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001BF5C(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10001B9A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);

  if (!(v11 >> 62))
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = [*(Strong + 16) remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100003870(&qword_100054458, &qword_10003E7B0);
        if (swift_dynamicCast())
        {
          [v23 updateStatus:0 :v22 :0 :0];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  __break(1u);
  return result;
}

__n128 sub_100018FCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100018FE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100019028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}