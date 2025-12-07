uint64_t variable initialization expression of BrandServiceImplementation.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100001D78();
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_1000024E0(&qword_10002DCE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001DC4(&qword_10002DCE8, &qword_100020520);
  sub_100001E0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_100001D78()
{
  result = qword_10002DCD8;
  if (!qword_10002DCD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002DCD8);
  }

  return result;
}

uint64_t sub_100001DC4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001E0C()
{
  result = qword_10002DCF0;
  if (!qword_10002DCF0)
  {
    sub_100001E70(&qword_10002DCE8, &qword_100020520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DCF0);
  }

  return result;
}

uint64_t sub_100001E70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_100001F18@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001F4C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001F78(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001FF0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002070@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000020B4(uint64_t a1)
{
  v2 = sub_1000024E0(&qword_10002DDA8, type metadata accessor for BSBrandServiceType, &unk_1000207A0);
  v3 = sub_1000024E0(&qword_10002DDB0, type metadata accessor for BSBrandServiceType, &unk_100020748);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002170@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000021B8(uint64_t a1)
{
  v2 = sub_1000024E0(&qword_10002DDB8, type metadata accessor for FileAttributeKey, &unk_100020860);
  v3 = sub_1000024E0(&unk_10002DDC0, type metadata accessor for FileAttributeKey, &unk_10002063C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002278()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000022B8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100002310(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100002388(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

void sub_10000244C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000024E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000026B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100001DC4(&qword_10002E120, &qword_100020FC0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v16 - v8;
  v10 = OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___rcsChatbotAssetDataSource;
  swift_beginAccess();
  sub_10000364C(v2 + v10, v9, &qword_10002E120, &qword_100020FC0);
  v11 = type metadata accessor for BrandAssetNetworkFetcher();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000035A0(v9, &qword_10002E120, &qword_100020FC0);
  v13 = type metadata accessor for RCSChatBotNetworkProvider();
  swift_allocObject();
  v14 = RCSChatBotNetworkProvider.init(customURLCache:waitsForConnectivity:)();
  v16[3] = v13;
  v16[4] = &protocol witness table for RCSChatBotNetworkProvider;
  v16[0] = v14;
  BrandAssetNetworkFetcher.init(networkProvider:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000036B4(v7, v2 + v10);
  return swift_endAccess();
}

id sub_1000028E4()
{
  v1 = type metadata accessor for BrandAssetNetworkFetcher();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19[-1] - v6;
  v8 = OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___brandService;
  v9 = *(v0 + OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___brandService);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___brandService);
LABEL_5:
    v17 = v9;
    return v10;
  }

  sub_100017CC8(&v19[-1] - v6);
  v19[3] = v1;
  v19[4] = &protocol witness table for BrandAssetNetworkFetcher;
  v11 = sub_10000306C(v19);
  sub_1000026B8(v11);
  v12 = sub_100017EE4();
  result = sub_100017A3C();
  if (result)
  {
    v14 = result;
    (*(v2 + 16))(v5, v7, v1);
    v15 = sub_1000030D0(v5, v19, v12, v14);

    (*(v2 + 8))(v7, v1);
    v16 = *(v0 + v8);
    *(v0 + v8) = v15;
    v10 = v15;

    v9 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_100002A88()
{
  String.utf8CString.getter();
  v0 = _set_user_dir_suffix();

  if (v0)
  {
    v1 = NSTemporaryDirectory();
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003034(v2, qword_10002F838);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to set private sandox for com.apple.businessservicesd", v5, 2u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100002C00()
{
  v1 = v0;
  sub_100017964();
  sub_10001CD04();

  sub_100017974();
  sub_10001CD04();

  sub_100017984();
  sub_10001CD04();

  sub_100017994();
  sub_10001CD04();

  sub_100001DC4(&qword_10002E650, &unk_100020900);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000208B0;
  v3 = sub_100017A3C();
  if (v3)
  {
    v4 = v3;
    *(v2 + 56) = sub_10000349C(0, &qword_10002E128, BCSBusinessQueryController_ptr);
    *(v2 + 32) = v4;
    v5 = sub_1000028E4();
    *(v2 + 88) = type metadata accessor for BrandServiceImplementation();
    *(v2 + 64) = v5;
    v6 = objc_allocWithZone(BSXPCDaemonServer);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v6 initWithServices:isa];

    v9 = *(v1 + OBJC_IVAR____TtC17businessservicesd6Daemon_XPCServer);
    *(v1 + OBJC_IVAR____TtC17businessservicesd6Daemon_XPCServer) = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_100002E0C()
{
  sub_1000035A0(v0 + OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___rcsChatbotAssetDataSource, &qword_10002E120, &qword_100020FC0);
  v1 = *(v0 + OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___brandService);
}

id sub_100002E5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iOSDaemon(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for iOSDaemon(uint64_t a1)
{
  result = qword_10002E108;
  if (!qword_10002E108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100002F44(uint64_t a1)
{
  sub_100002FDC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100002FDC(uint64_t a1)
{
  if (!qword_10002E118)
  {
    type metadata accessor for BrandAssetNetworkFetcher();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10002E118);
    }
  }
}

uint64_t sub_100003034(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000306C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_1000030D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for BrandAssetNetworkFetcher();
  v30[3] = v10;
  v30[4] = &protocol witness table for BrandAssetNetworkFetcher;
  v11 = sub_10000306C(v30);
  (*(*(v10 - 8) + 32))(v11, a1, v10);
  v24 = type metadata accessor for BrandServiceImplementation();
  v12 = objc_allocWithZone(v24);
  v22 = OBJC_IVAR___BSBrandServiceImplementation_queue;
  sub_10000349C(0, &qword_10002DCD8, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1000034E4();
  sub_100001DC4(&qword_10002DCE8, &qword_100020520);
  sub_100001E0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *&v12[v22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v12[OBJC_IVAR___BSBrandServiceImplementation_kBlastDoorDefaultMaxPixelDimension] = 1141309440;
  *&v12[OBJC_IVAR___BSBrandServiceImplementation_kBlastDoorDefaultScale] = 1065353216;
  v13 = &v12[OBJC_IVAR___BSBrandServiceImplementation_OnDeviceNetworkSimulationDelayUserDefaultsKey];
  *v13 = 0xD00000000000001ELL;
  *(v13 + 1) = 0x800000010001EF90;
  v14 = &v12[OBJC_IVAR___BSBrandServiceImplementation_ProxyClientBundleID];
  *v14 = 0xD000000000000035;
  *(v14 + 1) = 0x800000010001EFB0;
  sub_10000353C(v30, &v12[OBJC_IVAR___BSBrandServiceImplementation_businessConnectAssetDataSource]);
  v15 = v25;
  sub_10000364C(v25, &v12[OBJC_IVAR___BSBrandServiceImplementation_rcsChatbotAssetDataSource], &qword_10002E140, &qword_100020910);
  v16 = v27;
  *&v12[OBJC_IVAR___BSBrandServiceImplementation_cachedLogoDataSource] = v26;
  *&v12[OBJC_IVAR___BSBrandServiceImplementation_queryController] = v16;
  v17 = objc_allocWithZone(BCSEntitlementVerifier);
  v18 = v16;

  v19 = [v17 init];
  *&v12[OBJC_IVAR___BSBrandServiceImplementation_entitlementVerifier] = v19;
  v28.receiver = v12;
  v28.super_class = v24;
  v20 = objc_msgSendSuper2(&v28, "init");
  sub_1000035A0(v15, &qword_10002E140, &qword_100020910);
  sub_100003600(v30);
  return v20;
}

uint64_t sub_10000349C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1000034E4()
{
  result = qword_10002DCE0;
  if (!qword_10002DCE0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DCE0);
  }

  return result;
}

uint64_t sub_10000353C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000035A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DC4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003600(void *a1)
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

uint64_t sub_10000364C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DC4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000036B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DC4(&qword_10002E120, &qword_100020FC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100003738()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000037AC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t BrandServiceImplementation.assetData(for:url:type:usingSim:cachingEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 272) = a6;
  *(v8 + 280) = v7;
  *(v8 + 457) = a7;
  *(v8 + 256) = a4;
  *(v8 + 264) = a5;
  *(v8 + 240) = a2;
  *(v8 + 248) = a3;
  *(v8 + 232) = a1;
  v9 = type metadata accessor for StyleSheet();
  *(v8 + 288) = v9;
  *(v8 + 296) = *(v9 - 8);
  *(v8 + 304) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v8 + 312) = v10;
  *(v8 + 320) = *(v10 - 8);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();

  return _swift_task_switch(sub_100003944, 0, 0);
}

uint64_t sub_100003944()
{
  v66 = v0;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 248);
  v5 = type metadata accessor for Logger();
  *(v0 + 352) = sub_100003034(v5, qword_10002F838);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 344);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  if (v9)
  {
    v62 = *(v0 + 256);
    v63 = v6;
    v14 = *(v0 + 232);
    v13 = *(v0 + 240);
    v15 = swift_slowAlloc();
    *&v64 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_10000E3FC(v14, v13, &v64);
    *(v15 + 12) = 2080;
    v16 = URL.absoluteString.getter();
    v18 = v17;
    v19 = *(v11 + 8);
    v19(v10, v12);
    v20 = sub_10000E3FC(v16, v18, &v64);
    v6 = v63;

    *(v15 + 14) = v20;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v62;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetching assetData for brandURI %s with URL %s of type %ld", v15, 0x20u);
    swift_arrayDestroy();

    v21 = v19;
  }

  else
  {

    v21 = *(v11 + 8);
    v21(v10, v12);
  }

  *(v0 + 360) = v21;
  if (*(v0 + 256) == 3 && _BSIsInternalInstall())
  {
    v22 = [objc_opt_self() sharedDefaults];
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 valueForKey:v23];

    if (v24)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    v25 = v65;
    *(v0 + 176) = v64;
    *(v0 + 192) = v25;
    if (*(v0 + 200))
    {
      if (swift_dynamicCast())
      {
        StyleSheet.init(css:)();
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        sub_10001345C(&qword_10002E170, &type metadata accessor for StyleSheet, &protocol conformance descriptor for StyleSheet);
        v26 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v28 = v27;
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

LABEL_31:

        v60 = *(v0 + 8);

        return v60(v26, v28);
      }
    }

    else
    {
      sub_1000035A0(v0 + 176, &qword_10002E168, &qword_1000209A8);
    }
  }

  if (URL.hasSecureScheme.getter())
  {
    v29 = *(v0 + 457);
    v30 = sub_100010288();
    v32 = v31;
    *(v0 + 368) = v30;
    *(v0 + 376) = v31;
    if (v29 == 1)
    {
      v33 = v30;
      v34 = *(v0 + 232);
      v35 = *(v0 + 240);
      *(v0 + 384) = *(*(v0 + 280) + OBJC_IVAR___BSBrandServiceImplementation_cachedLogoDataSource);
      v36 = sub_100019B00(v34, v35, v33, v32);
      v28 = v59;
      v26 = v36;

      goto LABEL_31;
    }

    v49 = String._bridgeToObjectiveC()();
    IsBusinessID = IMStringIsBusinessID();

    v51 = *(v0 + 280);
    if (IsBusinessID)
    {
      sub_10000353C(v51 + OBJC_IVAR___BSBrandServiceImplementation_businessConnectAssetDataSource, v0 + 56);
LABEL_28:
      sub_100013584((v0 + 56), v0 + 16);
      v55 = *(v0 + 40);
      v56 = *(v0 + 48);
      sub_10001335C((v0 + 16), v55);
      v57 = swift_task_alloc();
      *(v0 + 392) = v57;
      *v57 = v0;
      v57[1] = sub_1000043AC;
      v58 = *(v0 + 248);

      return dispatch thunk of BrandAssetDataSource.assetData(for:)(v58, v55, v56);
    }

    sub_10000364C(v51 + OBJC_IVAR___BSBrandServiceImplementation_rcsChatbotAssetDataSource, v0 + 56, &qword_10002E140, &qword_100020910);
    if (*(v0 + 80))
    {
      goto LABEL_28;
    }

    sub_1000035A0(v0 + 56, &qword_10002E140, &qword_100020910);
    sub_10000E3A8();
    swift_allocError();
    *v61 = 0;
  }

  else
  {
    v6(*(v0 + 336), *(v0 + 248), *(v0 + 312));

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 336);
    v41 = *(v0 + 312);
    if (v39)
    {
      v43 = *(v0 + 232);
      v42 = *(v0 + 240);
      v44 = swift_slowAlloc();
      *&v64 = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_10000E3FC(v43, v42, &v64);
      *(v44 + 12) = 2080;
      v45 = URL.absoluteString.getter();
      v47 = v46;
      v21(v40, v41);
      v48 = sub_10000E3FC(v45, v47, &v64);

      *(v44 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v37, v38, "assetData() The brand %s is using the URL scheme which is not supported. URL: %s", v44, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v21(v40, v41);
    }

    sub_10000E3A8();
    swift_allocError();
    *v52 = 4;
  }

  swift_willThrow();

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1000043AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 400) = v2;

  if (v2)
  {
    v7 = sub_100004B30;
  }

  else
  {
    *(v6 + 408) = a2;
    *(v6 + 416) = a1;
    v7 = sub_1000044E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000044E0()
{
  sub_100003600(v0 + 2);
  v1 = v0[51];
  v2 = v0[52];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_100004588(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = v2;

  if (v2)
  {

    v5 = sub_100004A94;
  }

  else
  {
    v5 = sub_1000046A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

void *sub_1000046A8()
{
  v42 = v0;
  v1 = *(v0 + 272);
  sub_1000106A4(*(v0 + 432), *(v0 + 440));

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 440);
  if (!v4)
  {
    sub_1000106F8(*(v0 + 432), *(v0 + 440));
    goto LABEL_20;
  }

  v6 = *(v0 + 256);
  v7 = swift_slowAlloc();
  result = swift_slowAlloc();
  v9 = result;
  v41 = result;
  *v7 = 134218498;
  *(v7 + 4) = v6;
  *(v7 + 12) = 2048;
  v10 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v12 = *(*(v0 + 432) + 16);
    v13 = *(*(v0 + 432) + 24);
    v14 = __OFSUB__(v13, v12);
    v11 = v13 - v12;
    if (!v14)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    v15 = *(v0 + 432);
    v16 = *(v0 + 436);
    v14 = __OFSUB__(v16, v15);
    LODWORD(v11) = v16 - v15;
    if (v14)
    {
      __break(1u);
      return result;
    }

    v11 = v11;
    goto LABEL_13;
  }

  if (v10)
  {
    goto LABEL_10;
  }

  v11 = *(v0 + 446);
LABEL_13:
  v17 = *(v0 + 432);
  v18 = *(v0 + 440);
  v20 = *(v0 + 264);
  v19 = *(v0 + 272);
  *(v7 + 14) = v11;
  sub_1000106F8(v17, v18);
  *(v7 + 22) = 2080;
  v21 = v19 == 0;
  if (v19)
  {
    v22 = v20;
  }

  else
  {
    v22 = 7104878;
  }

  if (v21)
  {
    v23 = 0xE300000000000000;
  }

  else
  {
    v23 = v1;
  }

  v24 = sub_10000E3FC(v22, v23, &v41);

  *(v7 + 24) = v24;
  _os_log_impl(&_mh_execute_header, v2, v3, "Successfully fetched asset of type %ld from remote source of size %ld using SIM %s", v7, 0x20u);
  sub_100003600(v9);

LABEL_20:

  v25 = *(v0 + 256);
  if (v25 >= 3)
  {
    if (v25 == 3)
    {
      v29 = *(v0 + 448);
      v27 = sub_1000109F0();
      if (!v29)
      {
        goto LABEL_27;
      }

      v30 = *(v0 + 432);
      v35 = *(v0 + 440);

      v38 = v30;
    }

    else
    {
      v36 = *(v0 + 432);
      v35 = *(v0 + 440);

      sub_10001074C();
      swift_allocError();
      *v37 = 1;
      swift_willThrow();
      v38 = v36;
    }

    sub_1000106F8(v38, v35);
    goto LABEL_29;
  }

  v26 = *(v0 + 448);
  v27 = sub_1000108C8();
  if (v26)
  {
    sub_1000106F8(*(v0 + 432), *(v0 + 440));

LABEL_29:
    sub_100003600((v0 + 96));

    v39 = *(v0 + 8);

    return v39();
  }

LABEL_27:
  v31 = v27;
  v32 = v28;
  sub_10001A08C(*(v0 + 232), *(v0 + 240), v27, v28, *(v0 + 368), *(v0 + 376), *(v0 + 328));
  v34 = *(v0 + 432);
  v33 = *(v0 + 440);
  (*(v0 + 360))(*(v0 + 328), *(v0 + 312));
  sub_1000106F8(v34, v33);

  sub_100003600((v0 + 96));

  v40 = *(v0 + 8);

  return v40(v31, v32);
}

uint64_t sub_100004A94()
{
  sub_100003600((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004B30()
{
  sub_100003600((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, const void *a6, void *a7)
{
  v7[2] = a7;
  v13 = type metadata accessor for URL();
  v7[3] = v13;
  v7[4] = *(v13 - 8);
  v14 = swift_task_alloc();
  v7[5] = v14;
  v7[6] = _Block_copy(a6);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v7[7] = v16;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v7[8] = v19;
  a7;
  v20 = swift_task_alloc();
  v7[9] = v20;
  *v20 = v7;
  v20[1] = sub_100004F20;

  return BrandServiceImplementation.assetData(for:url:type:usingSim:cachingEnabled:)(v15, v17, v14, a3, a4, v19, a5 & 1);
}

uint64_t sub_100004F20(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *v3;

  v10 = v7[2];
  (*(v7[4] + 8))(v7[5], v7[3]);

  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v12 = isa;
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000106F8(a1, a2);
    v13 = isa;
    v12 = 0;
  }

  v14 = isa;
  v15 = v8[6];
  v15[2](v15, v13, v12);

  _Block_release(v15);

  v16 = v9[1];

  return v16();
}

id BrandServiceImplementation.logoFileURL(for:remoteUrl:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v110 = a5;
  v111 = a4;
  v109 = a1;
  v7 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v7 - 8);
  v99 = &v93 - v8;
  v9 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v10 = __chkstk_darwin(v9 - 8);
  v98 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v93 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v100 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v97 = &v93 - v19;
  v20 = __chkstk_darwin(v18);
  v96 = &v93 - v21;
  v22 = __chkstk_darwin(v20);
  *&v102 = &v93 - v23;
  __chkstk_darwin(v22);
  v25 = &v93 - v24;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_100003034(v26, qword_10002F838);
  v28 = *(v15 + 16);
  v106 = v15 + 16;
  v105 = v28;
  v28(v25, a3, v14);

  v104 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v108 = a2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v95 = v13;
    v33 = v32;
    v34 = swift_slowAlloc();
    *&v101 = a3;
    *&v118[0] = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_10000E3FC(v109, a2, v118);
    *(v33 + 12) = 2080;
    v35 = URL.absoluteString.getter();
    v37 = v36;
    v107 = *(v15 + 8);
    v107(v25, v14);
    v38 = sub_10000E3FC(v35, v37, v118);

    *(v33 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Fetching logoData for brandURI %s with URL %s", v33, 0x16u);
    swift_arrayDestroy();
    a3 = v101;

    v13 = v95;
  }

  else
  {

    v107 = *(v15 + 8);
    v107(v25, v14);
  }

  if ((URL.hasSecureScheme.getter() & 1) == 0)
  {
    v59 = v102;
    v105(v102, a3, v14);
    v60 = v108;

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = v59;
      v64 = swift_slowAlloc();
      *&v118[0] = swift_slowAlloc();
      *v64 = 136315394;
      *(v64 + 4) = sub_10000E3FC(v109, v60, v118);
      *(v64 + 12) = 2080;
      v65 = URL.absoluteString.getter();
      v67 = v66;
      v107(v63, v14);
      v68 = sub_10000E3FC(v65, v67, v118);

      *(v64 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v61, v62, "logoFileURL() The brand %s is using the URL scheme which is not supported. URL: %s", v64, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v107(v59, v14);
    }

    (*(v15 + 56))(v13, 1, 1, v14);
    sub_10000E3A8();
    v69 = swift_allocError();
    *v70 = 4;
    v111(v13, 0, 0, v69);
    goto LABEL_16;
  }

  result = [objc_opt_self() currentConnection];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v40 = result;
  [result auditToken];
  v102 = v112;
  v101 = v113;

  v118[0] = v102;
  v118[1] = v101;
  v119 = 0;
  v41 = v103;
  v42 = [*&v103[OBJC_IVAR___BSBrandServiceImplementation_entitlementVerifier] auditToken:v118 hasEntitlement:BSBrandLogoEntitlement];
  v43 = v111;
  if (!v42)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    sub_10001074C();
    v71 = swift_allocError();
    *v72 = 3;
    v43(v13, 0, 0, v71);
LABEL_16:

    return sub_1000035A0(v13, &qword_10002E180, &unk_100020D20);
  }

  *&v101 = a3;
  v44 = sub_100010288();
  v46 = v45;
  v47 = swift_allocObject();
  v48 = v110;
  *&v102 = v47;
  *(v47 + 16) = v43;
  *(v47 + 24) = v48;
  v49 = v14;
  v50 = *&v41[OBJC_IVAR___BSBrandServiceImplementation_cachedLogoDataSource];
  *&v112 = v109;
  *(&v112 + 1) = v108;
  v116 = 0x3A7A69623A6E7275;
  v117 = 0xE800000000000000;
  v114 = 0;
  v115 = 0xE000000000000000;
  sub_100010B4C();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v51 = v100;
  URL.appendingPathComponent(_:isDirectory:)();

  v52 = v97;
  v94 = v44;
  v95 = v46;
  URL.appendingPathComponent(_:)();
  v53 = v51;
  v54 = v107;
  v107(v53, v49);
  v55 = *(v50 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  URL.path.getter();
  v56 = String._bridgeToObjectiveC()();

  LODWORD(v55) = [v55 fileExistsAtPath:v56];

  if (v55)
  {
    v57 = v98;
    (*(v15 + 32))(v98, v52, v49);
    v58 = 0;
  }

  else
  {
    v54(v52, v49);
    v58 = 1;
    v57 = v98;
  }

  (*(v15 + 56))(v57, v58, 1, v49);
  if ((*(v15 + 48))(v57, 1, v49) == 1)
  {
    sub_1000035A0(v57, &qword_10002E180, &unk_100020D20);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Brand logo not found in cache. Will attempt to fetch from server.", v75, 2u);
    }

    v76 = type metadata accessor for TaskPriority();
    (*(*(v76 - 8) + 56))(v99, 1, 1, v76);
    v77 = v100;
    v105(v100, v101, v49);
    v78 = (*(v15 + 80) + 56) & ~*(v15 + 80);
    v79 = (v16 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    *(v81 + 2) = 0;
    *(v81 + 3) = 0;
    v82 = v103;
    v84 = v108;
    v83 = v109;
    *(v81 + 4) = v103;
    *(v81 + 5) = v83;
    *(v81 + 6) = v84;
    (*(v15 + 32))(&v81[v78], v77, v49);
    v85 = &v81[v79];
    v86 = v95;
    *v85 = v94;
    v85[1] = v86;
    v87 = &v81[v80];
    v88 = v102;
    *v87 = sub_100010B44;
    v87[1] = v88;
    v89 = &v81[(v80 + 23) & 0xFFFFFFFFFFFFFFF8];
    v90 = v110;
    *v89 = v111;
    *(v89 + 1) = v90;

    v91 = v82;
    sub_100006C08(0, 0, v99, &unk_1000209C8, v81);
  }

  else
  {

    v92 = v96;
    (*(v15 + 32))(v96, v57, v49);
    sub_100005D64(v92, v111);

    return (v54)(v92, v49);
  }
}

uint64_t sub_100005D64(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = URL.path.getter();
  v29[1] = v11;
  static String.Encoding.utf8.getter();
  sub_100010B4C();
  StringProtocol.cString(using:)();
  (*(v8 + 8))(v10, v7);

  v12 = sandbox_extension_issue_file();

  if (v12)
  {
    v13 = String.init(utf8String:)();
    v15 = v14;
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    v18 = v17;
    if (v15)
    {
      (*(v17 + 16))(v6, a1, v16);
      (*(v18 + 56))(v6, 0, 1, v16);
      a2(v6, v13, v15, 0);
    }

    else
    {
      (*(v17 + 56))(v6, 1, 1, v16);
      sub_10001074C();
      v27 = swift_allocError();
      *v28 = 2;
      a2(v6, v13, 0, v27);
    }

    sub_1000035A0(v6, &qword_10002E180, &unk_100020D20);
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003034(v19, qword_10002F838);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v20, v21, "Could not obtain sandbox access token. Error: %d", v22, 8u);
    }

    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    sub_10001074C();
    v24 = swift_allocError();
    *v25 = 2;
    a2(v6, 0, 0, v24);

    return sub_1000035A0(v6, &qword_10002E180, &unk_100020D20);
  }
}

uint64_t sub_1000061B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v14;
  *(v8 + 152) = v13;
  *(v8 + 136) = v12;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  sub_100001DC4(&qword_10002E180, &unk_100020D20);
  *(v8 + 176) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1000062D0, 0, 0);
}

uint64_t sub_1000062D0()
{
  v1 = String._bridgeToObjectiveC()();
  IsBusinessID = IMStringIsBusinessID();

  v3 = *(v0 + 96);
  if (IsBusinessID)
  {
    sub_10000353C(v3 + OBJC_IVAR___BSBrandServiceImplementation_businessConnectAssetDataSource, v0 + 56);
LABEL_4:
    sub_100013584((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    sub_10001335C((v0 + 16), v4);
    v6 = swift_task_alloc();
    *(v0 + 208) = v6;
    *v6 = v0;
    v6[1] = sub_100006630;
    v7 = *(v0 + 120);

    return dispatch thunk of BrandAssetDataSource.assetData(for:)(v7, v4, v5);
  }

  sub_10000364C(v3 + OBJC_IVAR___BSBrandServiceImplementation_rcsChatbotAssetDataSource, v0 + 56, &qword_10002E140, &qword_100020910);
  if (*(v0 + 80))
  {
    goto LABEL_4;
  }

  sub_1000035A0(v0 + 56, &qword_10002E140, &qword_100020910);
  sub_10000E3A8();
  v8 = swift_allocError();
  *v9 = 0;
  swift_willThrow();
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003034(v10, qword_10002F838);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching of brand logo failed with error %@", v13, 0xCu);
    sub_1000035A0(v14, &qword_10002E240, &qword_100020FB0);
  }

  v16 = *(v0 + 184);
  v17 = *(v0 + 192);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);

  (*(v17 + 56))(v18, 1, 1, v16);
  swift_errorRetain();
  v19(v18, 0, 0, v8);

  sub_1000035A0(v18, &qword_10002E180, &unk_100020D20);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100006630(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v5 = sub_1000069E8;
  }

  else
  {
    v5 = sub_100006748;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100006748()
{
  v1 = *(v0 + 232);
  sub_10001A08C(*(v0 + 104), *(v0 + 112), *(v0 + 216), *(v0 + 224), *(v0 + 128), *(v0 + 136), *(v0 + 200));
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  if (v1)
  {
    sub_1000106F8(*(v0 + 216), *(v0 + 224));
    sub_100003600((v0 + 16));
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003034(v4, qword_10002F838);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Fetching of brand logo failed with error %@", v7, 0xCu);
      sub_1000035A0(v8, &qword_10002E240, &qword_100020FB0);
    }

    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);

    (*(v11 + 56))(v12, 1, 1, v10);
    swift_errorRetain();
    v13(v12, 0, 0, v1);

    sub_1000035A0(v12, &qword_10002E180, &unk_100020D20);
  }

  else
  {
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);
    (*(v0 + 144))(v14);
    sub_1000106F8(v3, v2);
    (*(v15 + 8))(v14, v16);
    sub_100003600((v0 + 16));
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000069E8()
{
  sub_100003600(v0 + 2);
  v1 = v0[29];
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003034(v2, qword_10002F838);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching of brand logo failed with error %@", v5, 0xCu);
    sub_1000035A0(v6, &qword_10002E240, &qword_100020FB0);
  }

  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[22];
  v11 = v0[20];

  (*(v9 + 56))(v10, 1, 1, v8);
  swift_errorRetain();
  v11(v10, 0, 0, v1);

  sub_1000035A0(v10, &qword_10002E180, &unk_100020D20);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100006C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000364C(a3, v25 - v10, &qword_10002E178, &unk_1000209B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000035A0(v11, &qword_10002E178, &unk_1000209B0);
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

      sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);

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

  sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);
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

void sub_10000704C(uint64_t a1, uint64_t a2, NSString a3, void *a4, uint64_t a5)
{
  v9 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  sub_10000364C(a1, &v17 - v10, &qword_10002E180, &unk_100020D20);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(v13 + 8))(v11, v12);
  }

  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  if (a4)
  {
    a4 = _convertErrorToNSError(_:)();
  }

  (*(a5 + 16))(a5, v15, a3, a4);
}

uint64_t BrandServiceImplementation.fetchAsset(withURL:assetType:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for URL();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000072A0, 0, 0);
}

uint64_t sub_1000072A0()
{
  v43 = v0;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  v5 = type metadata accessor for Logger();
  sub_100003034(v5, qword_10002F838);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 144);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42[0] = v14;
    *v13 = 136315138;
    v40 = v6;
    v15 = URL.absoluteString.getter();
    v17 = v16;
    v41 = *(v11 + 8);
    v41(v10, v12);
    v18 = v15;
    v6 = v40;
    v19 = sub_10000E3FC(v18, v17, v42);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetchAsset for URL %s", v13, 0xCu);
    sub_100003600(v14);
  }

  else
  {

    v41 = *(v11 + 8);
    v41(v10, v12);
  }

  if ((URL.hasSecureScheme.getter() & 1) == 0)
  {
    v6(*(v0 + 136), *(v0 + 96), *(v0 + 120));
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 136);
    v26 = *(v0 + 120);
    if (v24)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42[0] = v28;
      *v27 = 136315138;
      v29 = URL.absoluteString.getter();
      v31 = v30;
      v41(v25, v26);
      v32 = sub_10000E3FC(v29, v31, v42);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "fetchAsset() URL scheme is not supported. URL: %s", v27, 0xCu);
      sub_100003600(v28);
    }

    else
    {

      v41(v25, v26);
    }

    v21 = 4;
    goto LABEL_18;
  }

  v20 = *(v0 + 112);
  if ((*(v0 + 104) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    sub_10000364C(v20 + OBJC_IVAR___BSBrandServiceImplementation_rcsChatbotAssetDataSource, v0 + 56, &qword_10002E140, &qword_100020910);
    if (!*(v0 + 80))
    {
      sub_1000035A0(v0 + 56, &qword_10002E140, &qword_100020910);
      v21 = 0;
LABEL_18:
      sub_10000E3A8();
      swift_allocError();
      *v37 = v21;
      swift_willThrow();

      v38 = *(v0 + 8);

      return v38();
    }
  }

  else
  {
    sub_10000353C(v20 + OBJC_IVAR___BSBrandServiceImplementation_businessConnectAssetDataSource, v0 + 56);
  }

  sub_100013584((v0 + 56), v0 + 16);
  v33 = *(v0 + 40);
  v34 = *(v0 + 48);
  sub_10001335C((v0 + 16), v33);
  v35 = swift_task_alloc();
  *(v0 + 152) = v35;
  *v35 = v0;
  v35[1] = sub_10000774C;
  v36 = *(v0 + 96);

  return dispatch thunk of BrandAssetDataSource.assetData(for:)(v36, v33, v34);
}

uint64_t sub_10000774C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = v2;

  if (v2)
  {
    v5 = sub_1000079D0;
  }

  else
  {
    v5 = sub_100007864;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100007864(uint64_t a1)
{
  v2 = v1[13];
  if (v2 >= 3)
  {
    if (v2 != 3)
    {
      v14 = v1[20];
      v13 = v1[21];
      sub_10000E3A8();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
      v6 = v14;
      v7 = v13;
      goto LABEL_10;
    }

    v8 = v1[22];
    v4 = sub_1000109F0();
    if (v8)
    {
LABEL_3:
      v6 = v1[20];
      v7 = v1[21];
LABEL_10:
      sub_1000106F8(v6, v7);
      sub_100003600(v1 + 2);

      v16 = v1[1];

      return v16();
    }
  }

  else
  {
    v3 = v1[22];
    v4 = sub_1000108C8();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v9 = v5;
  v10 = v4;
  sub_1000106F8(v1[20], v1[21]);
  sub_100003600(v1 + 2);

  v11 = v1[1];

  return v11(v10, v9);
}

uint64_t sub_1000079D0()
{
  sub_100003600((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100007BD0(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v8 = type metadata accessor for URL();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v4[6] = _Block_copy(a3);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  a4;
  v10 = swift_task_alloc();
  v4[7] = v10;
  *v10 = v4;
  v10[1] = sub_100007D10;

  return BrandServiceImplementation.fetchAsset(withURL:assetType:)(v9, a2);
}

uint64_t sub_100007D10(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *v3;

  v10 = v7[2];
  (*(v7[4] + 8))(v7[5], v7[3]);

  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v12 = isa;
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000106F8(a1, a2);
    v13 = isa;
    v12 = 0;
  }

  v14 = isa;
  v15 = v8[6];
  v15[2](v15, v13, v12);

  _Block_release(v15);

  v16 = v9[1];

  return v16();
}

uint64_t BrandServiceImplementation.clearCachedAssets(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100007F1C, 0, 0);
}

uint64_t sub_100007F1C()
{
  v11 = v0;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003034(v1, qword_10002F838);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000E3FC(v5, v4, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "clearCachedAssets for brand %s", v6, 0xCu);
    sub_100003600(v7);
  }

  sub_10001A910(*(v0 + 16), *(v0 + 24));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100008254(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100008328;

  return BrandServiceImplementation.clearCachedAssets(for:)(v5, v7);
}

uint64_t sub_100008328()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1000084E8()
{
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003034(v1, qword_10002F838);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "clearUnusedCachedLogos", v4, 2u);
  }

  sub_10001AC40();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000879C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100008844;

  return BrandServiceImplementation.clearUnusedCachedLogos()();
}

uint64_t sub_100008844()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1000089C8(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_100001DC4(&qword_10002E270, &qword_100020CC0);
  if (swift_dynamicCast())
  {
    sub_100013584(__src, &v43);
    sub_10001335C(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    sub_100003600(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1000035A0(__src, &qword_10002E278, qword_100020CC8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10000E9A4(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1000100E8(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_10000EA6C(sub_100013508, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10000FC08(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_10000FC08(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100013570(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_100013570(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000106A4(*&__src[0], *(&__src[0] + 1));

  sub_1000106F8(v32, *(&v32 + 1));
  return v32;
}

uint64_t BrandServiceImplementation.isBrandRegistered(withIdentifier:forService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_100008F7C;

  return sub_10000D3B4();
}

uint64_t sub_100008F7C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3(0);
  }

  else
  {

    return _swift_task_switch(sub_1000090B0, 0, 0);
  }
}

uint64_t sub_1000090B0()
{
  v22 = v0;
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 normalizedPhoneNumberForPhoneNumber:v2];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (qword_10002DCC0 != -1)
  {
    swift_once();
  }

  v7 = sub_1000146A0(v4, v6);

  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v8 = v0[4];
  v9 = type metadata accessor for Logger();
  sub_100003034(v9, qword_10002F838);

  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[3];
    v14 = v0[2];
    v15 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_10000E3FC(v14, v13, &v21);
    *(v15 + 12) = 2080;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = sub_10000E3FC(v16, v17, &v21);

    *(v15 + 14) = v18;
    *(v15 + 22) = 1024;
    *(v15 + 24) = v7 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "isBrandRegistered(withIdentifier: %s forService: %s) returned %{BOOL}d", v15, 0x1Cu);
    swift_arrayDestroy();
  }

  v19 = v0[1];

  return v19(v7 & 1);
}

uint64_t sub_1000094DC(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100013630;

  return BrandServiceImplementation.isBrandRegistered(withIdentifier:forService:)(v7, v9, v10);
}

uint64_t BrandServiceImplementation.isBrandRegistered(withIdentifier:forService:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 40) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100009670, 0, 0);
}

uint64_t sub_100009670()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v4;
  v9 = v2;

  v10 = sub_10000A120(0, 0, v1, &unk_100020A08, v8, &type metadata for Bool);
  v0[8] = v10;
  v7(v1, 1, 1, v6);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = v10;

  v0[9] = sub_10000A120(0, 0, v1, &unk_100020A18, v11, &type metadata for () + 8);
  v12 = swift_task_alloc();
  v0[10] = v12;
  v13 = sub_100001DC4(&qword_10002E158, &qword_1000209A0);
  v0[11] = v13;
  *v12 = v0;
  v12[1] = sub_100009890;

  return Task.value.getter(v0 + 13, v10, &type metadata for Bool, v13, &protocol self-conformance witness table for Error);
}

uint64_t sub_100009890()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100009BF0;
  }

  else
  {
    v2 = sub_1000099A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000099A4()
{
  v18 = v0;
  v1 = *(v0 + 104);
  Task.cancel()();
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v3 = type metadata accessor for Logger();
  sub_100003034(v3, qword_10002F838);

  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 40);
    v16 = v1;
    v8 = *(v0 + 24);
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136315906;
    *(v10 + 4) = sub_10000E3FC(v9, v8, &v17);
    *(v10 + 12) = 2080;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = sub_10000E3FC(v11, v12, &v17);

    *(v10 + 14) = v13;
    v1 = v16;
    *(v10 + 22) = 2048;
    *(v10 + 24) = v7;
    *(v10 + 32) = 1024;
    *(v10 + 34) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "isBrandRegistered(withIdentifier: %s forService: %s timeout: %f) returned %{BOOL}d", v10, 0x26u);
    swift_arrayDestroy();
  }

  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t sub_100009BF0()
{
  v17 = v0;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  sub_100003034(v2, qword_10002F838);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = v0[3];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_10000E3FC(v8, v7, v16);
    *(v9 + 12) = 2080;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = sub_10000E3FC(v10, v11, v16);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Timeout when calling isBrandRegistered(withIdentifier: %s forService: %s timeout: %f", v9, 0x20u);
    swift_arrayDestroy();
  }

  sub_10000E3A8();
  swift_allocError();
  *v13 = 6;
  swift_willThrow();

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_100009E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_100009ED4;

  return sub_10000D3B4();
}

uint64_t sub_100009ED4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10000A004, 0, 0);
  }
}

uint64_t sub_10000A004()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 normalizedPhoneNumberForPhoneNumber:v2];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (qword_10002DCC0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 16);
  v8 = sub_1000146A0(v4, v6);

  *v7 = v8 & 1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10000A120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000364C(a3, v23 - v10, &qword_10002E178, &unk_1000209B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000035A0(v11, &qword_10002E178, &unk_1000209B0);
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
      v23[0] = a2;
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);

      return v21;
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

  sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000A3CC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return _swift_task_switch(sub_10000A3F0, 0, 0);
}

uint64_t sub_10000A3F0(unint64_t a1)
{
  v3 = *(v1 + 16);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0xF4240uLL))
  {
LABEL_11:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = 1000000 * v3;
  v5 = swift_task_alloc();
  *(v1 + 32) = v5;
  *v5 = v1;
  v5[1] = sub_10000A4E4;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_10000A4E4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10000A614, 0, 0);
  }
}

uint64_t sub_10000A614()
{
  sub_100001DC4(&qword_10002E158, &qword_1000209A0);
  Task.cancel()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000A844(uint64_t a1, void *a2, void *aBlock, void *a4, double a5)
{
  v5[2] = a2;
  v5[3] = a4;
  v5[4] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[5] = v10;
  v12 = a2;
  a4;
  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_10000A938;

  return BrandServiceImplementation.isBrandRegistered(withIdentifier:forService:timeout:)(v9, v11, v12, a5);
}

uint64_t sub_10000A938(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t BrandServiceImplementation.brandData(withIdentifier:forService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[49] = a3;
  v4[50] = v3;
  v4[47] = a1;
  v4[48] = a2;
  v4[51] = type metadata accessor for OnDeviceSupportBrandDetails(0);
  v4[52] = swift_task_alloc();
  sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v5 = type metadata accessor for BrandType();
  v4[57] = v5;
  v4[58] = *(v5 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v6 = type metadata accessor for GenericBrand();
  v4[61] = v6;
  v4[62] = *(v6 - 8);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();

  return _swift_task_switch(sub_10000ACC8, 0, 0);
}

uint64_t sub_10000ACC8()
{
  v28 = v0;
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      v7 = swift_task_alloc();
      v0[69] = v7;
      *v7 = v0;
      v7[1] = sub_10000B988;

      return sub_10000D3B4();
    }
  }

  v9 = *(v0[50] + OBJC_IVAR___BSBrandServiceImplementation_queryController);
  v0[65] = v9;
  if (v9)
  {
    v10 = v9;
    v11 = String._bridgeToObjectiveC()();
    v0[66] = v11;
    v12 = String._bridgeToObjectiveC()();
    v0[67] = v12;
    v0[2] = v0;
    v0[7] = v0 + 46;
    v0[3] = sub_10000B168;
    v13 = swift_continuation_init();
    v0[45] = sub_100001DC4(&qword_10002E1C0, &qword_100020A38);
    v0[38] = _NSConcreteStackBlock;
    v0[39] = 1107296256;
    v0[40] = sub_10000C33C;
    v0[41] = &unk_100028FE0;
    v0[42] = v13;
    [v10 fetchBrandWithIdentifier:v11 forClientBundleID:v12 serviceType:5 completion:v0 + 38];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v14 = v0[49];
    v15 = type metadata accessor for Logger();
    sub_100003034(v15, qword_10002F838);

    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[47];
      v19 = v0[48];
      v21 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v21 = 136315394;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = sub_10000E3FC(v22, v23, v27);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_10000E3FC(v20, v19, v27);
      _os_log_impl(&_mh_execute_header, v17, v18, "Error fetching brand data for Service %s Key %s Error: No query controller available", v21, 0x16u);
      swift_arrayDestroy();
    }

    sub_10000E3A8();
    swift_allocError();
    *v25 = 9;
    swift_willThrow();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_10000B168()
{
  v1 = *(*v0 + 48);
  *(*v0 + 544) = v1;
  if (v1)
  {
    v2 = sub_10000C248;
  }

  else
  {
    v2 = sub_10000B278;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000B278()
{
  v57 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 368);

  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 392);
  v4 = type metadata accessor for Logger();
  sub_100003034(v4, qword_10002F838);

  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 384);
    v9 = *(v0 + 376);
    v10 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10000E3FC(v9, v8, v56);
    *(v10 + 12) = 2080;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = sub_10000E3FC(v11, v12, v56);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Found Brand for identifier %s for service %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = [v2 localizedNames];
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000C414(v15);
  v17 = v16;

  if (v17)
  {
    v18 = *(v0 + 480);
    v20 = *(v0 + 456);
    v19 = *(v0 + 464);

    sub_100001DC4(&qword_10002E198, &qword_100020A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000208B0;
    *(inited + 32) = static WebPresentmentBrandDetailsKeys.companyID.getter();
    *(inited + 40) = v22;
    v23 = [v2 companyId];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(inited + 48) = v24;
    *(inited + 56) = v26;
    *(inited + 64) = static WebPresentmentBrandDetailsKeys.businessID.getter();
    *(inited + 72) = v27;
    v28 = [v2 businessId];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *(inited + 80) = v29;
    *(inited + 88) = v31;
    sub_1000123AC(inited);
    swift_setDeallocating();
    sub_100001DC4(&qword_10002E1A0, &qword_100020A30);
    swift_arrayDestroy();
    (*(v19 + 104))(v18, enum case for BrandType.webPresentment(_:), v20);
    v32 = [v2 logoURL];
    if (v32)
    {
      v33 = v32;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v47 = *(v0 + 448);
    v48 = type metadata accessor for URL();
    (*(*(v48 - 8) + 56))(v47, v34, 1, v48);

    GenericBrand.init(brandURI:type:name:isVerified:logoURL:brandInfo:)();
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_10001345C(&qword_10002E1A8, &type metadata accessor for GenericBrand, &protocol conformance descriptor for GenericBrand);
    v49 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v51 = v50;
    v52 = *(v0 + 520);
    (*(*(v0 + 496) + 8))(*(v0 + 512), *(v0 + 488));

    v55 = *(v0 + 8);

    return v55(v49, v51);
  }

  else
  {
    v35 = *(v0 + 392);

    v36 = v35;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 384);
      v40 = *(v0 + 376);
      v41 = swift_slowAlloc();
      v56[0] = swift_slowAlloc();
      *v41 = 136315394;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = sub_10000E3FC(v42, v43, v56);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_10000E3FC(v40, v39, v56);
      _os_log_impl(&_mh_execute_header, v37, v38, "Error fetching brand data for Service %s Key %s Error: Malformed data: No name found", v41, 0x16u);
      swift_arrayDestroy();
    }

    v45 = *(v0 + 520);
    sub_10000E3A8();
    swift_allocError();
    *v46 = 7;
    swift_willThrow();

    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_10000B988()
{
  v2 = *v1;
  *(v2 + 560) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10000BB44, 0, 0);
  }
}

uint64_t sub_10000BB44()
{
  v61 = v0;
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 normalizedPhoneNumberForPhoneNumber:v2];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (qword_10002DCC0 != -1)
  {
    swift_once();
  }

  v7 = v0[70];
  sub_100014844(v4, v6, v0[52]);

  if (v7)
  {

    v55 = v0[1];

    return v55();
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v8 = v0[49];
    v9 = type metadata accessor for Logger();
    sub_100003034(v9, qword_10002F838);

    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[48];
      v14 = v0[47];
      v15 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_10000E3FC(v14, v13, v60);
      *(v15 + 12) = 2080;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = sub_10000E3FC(v16, v17, v60);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Found Brand for identifier %s for service %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    v19 = v0[55];
    v21 = v0[51];
    v20 = v0[52];
    sub_100001DC4(&qword_10002E198, &qword_100020A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100020960;
    *(inited + 32) = static OnDeviceSupportBrandDetailsKeys.appBundleID.getter();
    *(inited + 40) = v23;
    v24 = (v20 + *(v21 + 32));
    v25 = v24[1];
    *(inited + 48) = *v24;
    *(inited + 56) = v25;

    *(inited + 64) = static OnDeviceSupportBrandDetailsKeys.deepLinkURL.getter();
    *(inited + 72) = v26;
    sub_10000364C(v20 + *(v21 + 36), v19, &qword_10002E180, &unk_100020D20);
    v27 = type metadata accessor for URL();
    v28 = *(v27 - 8);
    v59 = *(v28 + 48);
    v29 = v59(v19, 1, v27);
    v30 = v0[55];
    if (v29 == 1)
    {
      sub_1000035A0(v0[55], &qword_10002E180, &unk_100020D20);
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    else
    {
      v31 = URL.absoluteString.getter();
      v32 = v33;
      (*(v28 + 8))(v30, v27);
    }

    v34 = v0[54];
    v35 = v0[51];
    v36 = v0[52];
    *(inited + 80) = v31;
    *(inited + 88) = v32;
    *(inited + 96) = static OnDeviceSupportBrandDetailsKeys.fallBackURL.getter();
    *(inited + 104) = v37;
    sub_10000364C(v36 + *(v35 + 40), v34, &qword_10002E180, &unk_100020D20);
    v38 = v59(v34, 1, v27);
    v39 = v0[54];
    if (v38 == 1)
    {
      sub_1000035A0(v0[54], &qword_10002E180, &unk_100020D20);
      v40 = 0;
      v41 = 0xE000000000000000;
    }

    else
    {
      v40 = URL.absoluteString.getter();
      v41 = v42;
      (*(v28 + 8))(v39, v27);
    }

    v43 = v0[58];
    v44 = v0[59];
    v45 = v0[57];
    v46 = v0[52];
    v47 = v0[53];
    v58 = v0[51];
    *(inited + 112) = v40;
    *(inited + 120) = v41;
    sub_1000123AC(inited);
    swift_setDeallocating();
    sub_100001DC4(&qword_10002E1A0, &qword_100020A30);
    swift_arrayDestroy();
    (*(v43 + 104))(v44, enum case for BrandType.onDeviceSupport(_:), v45);

    sub_100013638();
    sub_10000364C(v46 + *(v58 + 28), v47, &qword_10002E180, &unk_100020D20);
    GenericBrand.init(brandURI:type:name:isVerified:logoURL:brandInfo:)();
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_10001345C(&qword_10002E1A8, &type metadata accessor for GenericBrand, &protocol conformance descriptor for GenericBrand);
    v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v50 = v49;
    v52 = v0[62];
    v51 = v0[63];
    v53 = v0[61];
    v54 = v0[52];

    (*(v52 + 8))(v51, v53);
    sub_1000124C0(v54);

    v57 = v0[1];

    return v57(v48, v50);
  }
}

uint64_t sub_10000C248()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000C33C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10001335C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100001DC4(&qword_10002E158, &qword_1000209A0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void *sub_10000C414(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10000FF94(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_10000C628(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1000135C0;

  return BrandServiceImplementation.brandData(withIdentifier:forService:)(v7, v9, v10);
}

uint64_t BrandServiceImplementation.brandAsset(withIdentifier:forService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  return _swift_task_switch(sub_10000C738, 0, 0);
}

uint64_t sub_10000C738()
{
  v39 = v0;
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      if (qword_10002DCD0 != -1)
      {
        swift_once();
      }

      v7 = v0[22];
      v8 = type metadata accessor for Logger();
      sub_100003034(v8, qword_10002F838);
      v9 = v7;

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v13 = v0[20];
        v12 = v0[21];
        v14 = swift_slowAlloc();
        v38[0] = swift_slowAlloc();
        *v14 = 136315394;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = sub_10000E3FC(v15, v16, v38);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_10000E3FC(v13, v12, v38);
        _os_log_impl(&_mh_execute_header, v10, v11, "Error fetching brand asset for Service %s Key %s Error: unsupported service type", v14, 0x16u);
        swift_arrayDestroy();
      }

      v18 = 8;
LABEL_21:
      sub_10000E3A8();
      swift_allocError();
      *v35 = v18;
      swift_willThrow();
      v36 = v0[1];

      return v36();
    }
  }

  v19 = *(v0[23] + OBJC_IVAR___BSBrandServiceImplementation_queryController);
  v0[24] = v19;
  if (!v19)
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v24 = v0[22];
    v25 = type metadata accessor for Logger();
    sub_100003034(v25, qword_10002F838);
    v26 = v24;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v30 = v0[20];
      v29 = v0[21];
      v31 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v31 = 136315394;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = sub_10000E3FC(v32, v33, v38);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_10000E3FC(v30, v29, v38);
      _os_log_impl(&_mh_execute_header, v27, v28, "Error fetching brand data for Service %s Key %s Error: No query controller available", v31, 0x16u);
      swift_arrayDestroy();
    }

    v18 = 9;
    goto LABEL_21;
  }

  v20 = v19;
  v21 = String._bridgeToObjectiveC()();
  v0[25] = v21;
  v22 = String._bridgeToObjectiveC()();
  v0[26] = v22;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000CC68;
  v23 = swift_continuation_init();
  v0[17] = sub_100001DC4(&qword_10002E1C8, &qword_100020A48);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000CE80;
  v0[13] = &unk_100029008;
  v0[14] = v23;
  [v20 fetchWebPresentmentPermissionsWithIdentifier:v21 forClientBundleID:v22 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000CC68()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_10000CDFC;
  }

  else
  {
    v2 = sub_10000CD78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000CD78()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);

  v4 = *(v0 + 144);
  v3 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5(v4, v3);
}

uint64_t sub_10000CDFC(uint64_t a1)
{
  v2 = v1[26];
  v4 = v1[24];
  v3 = v1[25];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_10000CE80(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10001335C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001DC4(&qword_10002E158, &qword_1000209A0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000D0F8(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_10000D1E4;

  return BrandServiceImplementation.brandAsset(withIdentifier:forService:)(v7, v9, v10);
}

uint64_t sub_10000D1E4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = _convertErrorToNSError(_:)();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000106F8(a1, a2);
    v13 = isa;
    v12 = 0;
    v11 = isa;
  }

  v15 = *(v7 + 32);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_10000D3D4()
{
  v36 = v0;
  if (!_BSIsInternalInstall())
  {
    goto LABEL_28;
  }

  v1 = [objc_allocWithZone(NSUserDefaults) init];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v4 = v34;
  *(v0 + 16) = v33;
  *(v0 + 32) = v4;
  if (!*(v0 + 40))
  {
    sub_1000035A0(v0 + 16, &qword_10002E168, &qword_1000209A8);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v16 = *(v0 + 8);

    return v16();
  }

  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    __break(1u);
LABEL_80:
    v31 = v5;

    v12 = sub_10000F28C(v6, v31, 10);
    v30 = v29;

    v5 = v31;
    if (v30)
    {
      goto LABEL_81;
    }

    goto LABEL_75;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    goto LABEL_80;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_83;
    }

    v7 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      v10 = *v7;
      if (v10 == 43)
      {
        if (v8 < 1)
        {
          goto LABEL_86;
        }

        v20 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (!v7)
          {
            goto LABEL_74;
          }

          v21 = (v7 + 1);
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            if (!is_mul_ok(v12, 0xAuLL))
            {
              break;
            }

            v15 = __CFADD__(10 * v12, v22);
            v12 = 10 * v12 + v22;
            if (v15)
            {
              break;
            }

            ++v21;
            if (!--v20)
            {
LABEL_65:
              LOBYTE(v7) = 0;
              goto LABEL_74;
            }
          }
        }
      }

      else if (v10 == 45)
      {
        if (v8 < 1)
        {
          __break(1u);
          goto LABEL_85;
        }

        v11 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (!v7)
          {
            goto LABEL_74;
          }

          v13 = (v7 + 1);
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            if (!is_mul_ok(v12, 0xAuLL))
            {
              break;
            }

            v15 = 10 * v12 >= v14;
            v12 = 10 * v12 - v14;
            if (!v15)
            {
              break;
            }

            ++v13;
            if (!--v11)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v8)
      {
        v12 = 0;
        if (!v7)
        {
          goto LABEL_74;
        }

        while (1)
        {
          v25 = *v7 - 48;
          if (v25 > 9)
          {
            break;
          }

          if (!is_mul_ok(v12, 0xAuLL))
          {
            break;
          }

          v15 = __CFADD__(10 * v12, v25);
          v12 = 10 * v12 + v25;
          if (v15)
          {
            break;
          }

          ++v7;
          if (!--v8)
          {
            goto LABEL_65;
          }
        }
      }

LABEL_73:
      v12 = 0;
      LOBYTE(v7) = 1;
LABEL_74:
      v35 = v7;
      if (v7)
      {
LABEL_81:
        __break(1u);
      }

      else
      {
LABEL_75:

        if (is_mul_ok(v12, 0xF4240uLL))
        {
          v28 = swift_task_alloc();
          *(v0 + 72) = v28;
          *v28 = v0;
          v28[1] = sub_10000D880;
          v5 = 1000000 * v12;

          return static Task<>.sleep(nanoseconds:)(v5);
        }
      }

      __break(1u);
LABEL_83:
      v32 = v5;
      v7 = _StringObject.sharedUTF8.getter();
      v5 = v32;
    }
  }

  *&v33 = *(v0 + 48);
  *(&v33 + 1) = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 == 43)
  {
    if (v7)
    {
      if (--v7)
      {
        v12 = 0;
        v23 = &v33 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          if (!is_mul_ok(v12, 0xAuLL))
          {
            break;
          }

          v15 = __CFADD__(10 * v12, v24);
          v12 = 10 * v12 + v24;
          if (v15)
          {
            break;
          }

          ++v23;
          if (!--v7)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }
  }

  else
  {
    if (v6 != 45)
    {
      if (v7)
      {
        v12 = 0;
        v26 = &v33;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          if (!is_mul_ok(v12, 0xAuLL))
          {
            break;
          }

          v15 = __CFADD__(10 * v12, v27);
          v12 = 10 * v12 + v27;
          if (v15)
          {
            break;
          }

          ++v26;
          if (!--v7)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v7)
    {
      if (--v7)
      {
        v12 = 0;
        v18 = &v33 + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          if (!is_mul_ok(v12, 0xAuLL))
          {
            break;
          }

          v15 = 10 * v12 >= v19;
          v12 = 10 * v12 - v19;
          if (!v15)
          {
            break;
          }

          ++v18;
          if (!--v7)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  __break(1u);
  return static Task<>.sleep(nanoseconds:)(v5);
}

uint64_t sub_10000D880()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id BrandServiceImplementation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BrandServiceImplementation.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BrandServiceImplementation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000DB00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100013628;

  return v6();
}

uint64_t sub_10000DBE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000DCD0;

  return v7();
}

uint64_t sub_10000DCD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000DDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000364C(a3, v23 - v10, &qword_10002E178, &unk_1000209B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000035A0(v11, &qword_10002E178, &unk_1000209B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);

    return v21;
  }

LABEL_8:
  sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10000E0C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001362C;

  return v6(a1);
}

uint64_t sub_10000E1B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000E2B0;

  return v6(a1);
}

uint64_t sub_10000E2B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000E3A8()
{
  result = qword_10002E130;
  if (!qword_10002E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E130);
  }

  return result;
}

unint64_t sub_10000E3FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000E4C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001252C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003600(v11);
  return v7;
}

unint64_t sub_10000E4C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000E5D4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10000E5D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000E620(a1, a2);
  sub_10000E750(&off_100028E88);
  return v3;
}

void *sub_10000E620(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000E83C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000E83C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000E750(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000E8B0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000E83C(uint64_t a1, uint64_t a2)
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

  sub_100001DC4(&qword_10002E238, &qword_100020C88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000E8B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DC4(&qword_10002E238, &qword_100020C88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t *sub_10000E9A4@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_100010030(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_10000EA6C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1000106F8(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000106F8(v7, v6);
    *v4 = xmmword_100020970;
    sub_1000106F8(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_10000EF10(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1000106F8(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_100020970;
    sub_1000106F8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10000EF10(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_10000EE10@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100010030(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100010188(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100010204(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10000EEA4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10000EF10(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_10000EFC4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10000F0D0(a1, v2);
}

unint64_t sub_10000F058(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000F1D4(a1, a2, v4);
}

unint64_t sub_10000F0D0(uint64_t a1, uint64_t a2)
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

unint64_t sub_10000F1D4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unsigned __int8 *sub_10000F28C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000F810(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10000F810(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10000F890(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10000F890(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000E83C(v9, 0), v12 = sub_10000F9E8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10000F9E8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000FC08(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000FC08(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10000FC08(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10000FC84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_10001345C(&qword_10002E248, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10000FE64(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10000FE64(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_10001345C(&qword_10002E248, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10000FE64(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_10001345C(&qword_10002E248, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000FF44@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
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

void *sub_10000FF94(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = (*(a5 + 56) + 16 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100010030(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000100E8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100010188(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100010204(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100010288()
{
  v0 = type metadata accessor for SHA256();
  *&v36 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SHA256Digest();
  v35 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = URL.absoluteString.getter();
  v11 = sub_1000089C8(v9, v10);
  v13 = v12;
  sub_10001345C(&qword_10002E248, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_1000106A4(v11, v13);
  sub_10000FC84(v11, v13, v2);
  v31 = v13;
  v32 = v11;
  sub_1000106F8(v11, v13);
  dispatch thunk of HashFunction.finalize()();
  (*(v36 + 8))(v2, v0);
  v14 = *(v35 + 16);
  v33 = v8;
  v14(v6, v8, v3);
  sub_10001345C(&qword_10002E250, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v34 = v3;
  result = dispatch thunk of Sequence.makeIterator()();
  v16 = v37;
  v17 = v38;
  v18 = *(v37 + 2);
  v19 = _swiftEmptyArrayStorage;
  if (v38 == v18)
  {
LABEL_2:

    v37 = v19;
    sub_100001DC4(&qword_10002E260, &qword_100020CB8);
    sub_1000134A4();
    v20 = BidirectionalCollection<>.joined(separator:)();
    sub_1000106F8(v32, v31);

    (*(v35 + 8))(v33, v34);
    return v20;
  }

  else
  {
    v36 = xmmword_100020980;
    v21 = v38;
    while ((v17 & 0x8000000000000000) == 0)
    {
      if (v21 >= *(v16 + 2))
      {
        goto LABEL_13;
      }

      v22 = v16[v21 + 32];
      sub_100001DC4(&qword_10002E258, &qword_100020CB0);
      v23 = swift_allocObject();
      *(v23 + 16) = v36;
      *(v23 + 56) = &type metadata for UInt8;
      *(v23 + 64) = &protocol witness table for UInt8;
      *(v23 + 32) = v22;
      v24 = String.init(format:_:)();
      v26 = v25;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10001C354(0, *(v19 + 2) + 1, 1, v19);
        v19 = result;
      }

      v28 = *(v19 + 2);
      v27 = *(v19 + 3);
      if (v28 >= v27 >> 1)
      {
        result = sub_10001C354((v27 > 1), v28 + 1, 1, v19);
        v19 = result;
      }

      ++v21;
      *(v19 + 2) = v28 + 1;
      v29 = &v19[16 * v28];
      *(v29 + 4) = v24;
      *(v29 + 5) = v26;
      if (v18 == v21)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000106A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000106F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10001074C()
{
  result = qword_10002E160;
  if (!qword_10002E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E160);
  }

  return result;
}

unint64_t sub_1000107A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001DC4(&qword_10002E220, &qword_100020B40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000364C(v4, &v11, &qword_10002E228, &qword_100020B48);
      v5 = v11;
      result = sub_10000EFC4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100012794(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void *sub_1000108C8()
{
  v0 = [objc_opt_self() defaultHelper];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = 0;
  LODWORD(v2) = 1141309440;
  LODWORD(v3) = 1.0;
  v4 = [v0 safeImageFromImage:isa maxPixelDimension:&v8 scale:v2 error:v3];

  v5 = v8;
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void *sub_1000109F0()
{
  v0 = [objc_opt_self() defaultHelper];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 safeCSSFromData:isa error:&v6];

  v3 = v6;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_100010B0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100010B4C()
{
  result = qword_10002E190;
  if (!qword_10002E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E190);
  }

  return result;
}

uint64_t sub_100010BA0(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v12 = v1[2];
  v11 = v1[3];
  v10 = v1[4];
  v5 = v1[6];
  v9 = v1[5];
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100013628;

  return sub_1000061B8(a1, v12, v11, v10, v9, v5, v1 + v4, v6);
}

uint64_t sub_100010D28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100010D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000DCD0;

  return sub_100009E3C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100010E38(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100013628;

  return sub_10000A3CC(v6, a1, v4, v5, v7);
}

uint64_t sub_100010EFC(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v54 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v54 - v11;
  v13 = __chkstk_darwin(v10);
  v55 = &v54 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v54 - v16;
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v20 = type metadata accessor for String.Encoding();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v58 = URL.path.getter();
  v59 = v24;
  static String.Encoding.utf8.getter();
  sub_100010B4C();
  StringProtocol.cString(using:)();
  (*(v21 + 8))(v23, v20);

  v25 = sandbox_extension_issue_file();

  if (v25)
  {
    String.init(utf8String:)();
    v27 = v26;
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    v30 = v29;
    if (v27)
    {
      (*(v29 + 16))(v19, v56, v28);
      (*(v30 + 56))(v19, 0, 1, v28);
      sub_10000364C(v19, v17, &qword_10002E180, &unk_100020D20);
      if ((*(v30 + 48))(v17, 1, v28) == 1)
      {
        v32 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v31);
        v32 = v52;
        (*(v30 + 8))(v17, v28);
      }

      v53 = String._bridgeToObjectiveC()();
      (*(v57 + 16))(v57, v32, v53, 0);

      v51 = v19;
    }

    else
    {
      v45 = v55;
      (*(v29 + 56))(v55, 1, 1, v28);
      sub_10001074C();
      swift_allocError();
      *v46 = 2;
      sub_10000364C(v45, v12, &qword_10002E180, &unk_100020D20);
      v48 = 0;
      if ((*(v30 + 48))(v12, 1, v28) != 1)
      {
        URL._bridgeToObjectiveC()(v47);
        v48 = v49;
        (*(v30 + 8))(v12, v28);
      }

      v50 = _convertErrorToNSError(_:)();
      (*(v57 + 16))(v57, v48, 0, v50);

      v51 = v45;
    }

    sub_1000035A0(v51, &qword_10002E180, &unk_100020D20);
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003034(v33, qword_10002F838);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67109120;
      *(v36 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v34, v35, "Could not obtain sandbox access token. Error: %d", v36, 8u);
    }

    v37 = type metadata accessor for URL();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v9, 1, 1, v37);
    sub_10001074C();
    swift_allocError();
    *v39 = 2;
    sub_10000364C(v9, v6, &qword_10002E180, &unk_100020D20);
    v41 = 0;
    if ((*(v38 + 48))(v6, 1, v37) != 1)
    {
      URL._bridgeToObjectiveC()(v40);
      v41 = v42;
      (*(v38 + 8))(v6, v37);
    }

    v43 = _convertErrorToNSError(_:)();
    (*(v57 + 16))(v57, v41, 0, v43);

    return sub_1000035A0(v9, &qword_10002E180, &unk_100020D20);
  }
}

void sub_1000115CC(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, const void *a5)
{
  v129 = a1;
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v9 - 8);
  v115 = &v110 - v10;
  v11 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v12 = __chkstk_darwin(v11 - 8);
  *&v118 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  *&v119 = &v110 - v15;
  v16 = __chkstk_darwin(v14);
  v112 = &v110 - v17;
  v18 = __chkstk_darwin(v16);
  v113 = &v110 - v19;
  __chkstk_darwin(v18);
  v114 = &v110 - v20;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = __chkstk_darwin(v21);
  v116 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v126 = &v110 - v26;
  v27 = __chkstk_darwin(v25);
  v111 = &v110 - v28;
  v29 = __chkstk_darwin(v27);
  v117 = &v110 - v30;
  __chkstk_darwin(v29);
  v32 = &v110 - v31;
  v33 = swift_allocObject();
  *(v33 + 16) = a5;
  _Block_copy(a5);
  v127 = a5;
  _Block_copy(a5);
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100003034(v34, qword_10002F838);
  v36 = v22[2];
  v130 = a3;
  v122 = v22 + 2;
  v121 = v36;
  v36(v32, a3, v21);

  v120 = v35;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v125 = v33;
  v124 = v22;
  v123 = a2;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v128 = a4;
    v41 = v40;
    *&v137[0] = swift_slowAlloc();
    *v41 = 136315394;
    *(v41 + 4) = sub_10000E3FC(v129, a2, v137);
    *(v41 + 12) = 2080;
    v42 = URL.absoluteString.getter();
    v44 = v43;
    v45 = v22[1];
    (v45)(v32, v21);
    v46 = sub_10000E3FC(v42, v44, v137);

    *(v41 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "Fetching logoData for brandURI %s with URL %s", v41, 0x16u);
    swift_arrayDestroy();
    v33 = v125;

    a4 = v128;
  }

  else
  {

    v45 = v22[1];
    (v45)(v32, v21);
  }

  v128 = v45;
  v47 = v130;
  v48 = URL.hasSecureScheme.getter();
  v49 = v126;
  if ((v48 & 1) == 0)
  {
    v67 = v117;
    v121(v117, v47, v21);
    v68 = v123;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *&v137[0] = swift_slowAlloc();
      *v71 = 136315394;
      *(v71 + 4) = sub_10000E3FC(v129, v68, v137);
      *(v71 + 12) = 2080;
      v72 = URL.absoluteString.getter();
      v74 = v73;
      v75 = v124;
      (v128)(v67, v21);
      v76 = sub_10000E3FC(v72, v74, v137);

      *(v71 + 14) = v76;
      v77 = v75;
      _os_log_impl(&_mh_execute_header, v69, v70, "logoFileURL() The brand %s is using the URL scheme which is not supported. URL: %s", v71, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v77 = v124;
      (v128)(v67, v21);
    }

    v78 = v118;
    v79 = v119;
    (v77[7])(v119, 1, 1, v21);
    sub_10000E3A8();
    swift_allocError();
    *v80 = 4;
    v81 = v79;
    goto LABEL_16;
  }

  v50 = [objc_opt_self() currentConnection];
  if (v50)
  {
    v51 = v50;
    [v50 auditToken];
    v119 = v131;
    v118 = v132;

    v137[0] = v119;
    v137[1] = v118;
    v138 = 0;
    if ([*&a4[OBJC_IVAR___BSBrandServiceImplementation_entitlementVerifier] auditToken:v137 hasEntitlement:BSBrandLogoEntitlement])
    {
      v52 = sub_100010288();
      v54 = v53;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_1000130C0;
      *(v55 + 24) = v33;
      *&v119 = v55;
      v56 = a4;
      v57 = *&a4[OBJC_IVAR___BSBrandServiceImplementation_cachedLogoDataSource];
      *&v131 = v129;
      *(&v131 + 1) = v123;
      v135 = 0x3A7A69623A6E7275;
      v136 = 0xE800000000000000;
      v133 = 0;
      v134 = 0xE000000000000000;
      sub_100010B4C();

      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v58 = v116;
      URL.appendingPathComponent(_:isDirectory:)();

      v117 = v52;
      *&v118 = v54;
      URL.appendingPathComponent(_:)();
      v59 = v124;
      v60 = v58;
      v61 = v128;
      (v128)(v60, v21);
      v62 = *(v57 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
      URL.path.getter();
      v63 = String._bridgeToObjectiveC()();

      v64 = [v62 fileExistsAtPath:v63];

      if (v64)
      {
        v65 = v114;
        (v59[4])(v114, v49, v21);
        v66 = 0;
      }

      else
      {
        (v61)(v49, v21);
        v66 = 1;
        v65 = v114;
      }

      (v59[7])(v65, v66, 1, v21);
      if ((v59[6])(v65, 1, v21) == 1)
      {
        sub_1000035A0(v65, &qword_10002E180, &unk_100020D20);
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&_mh_execute_header, v89, v90, "Brand logo not found in cache. Will attempt to fetch from server.", v91, 2u);
        }

        v92 = type metadata accessor for TaskPriority();
        (*(*(v92 - 8) + 56))(v115, 1, 1, v92);
        v93 = v116;
        v121(v116, v130, v21);
        v94 = (*(v59 + 80) + 56) & ~*(v59 + 80);
        v95 = (v23 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
        v96 = (v95 + 23) & 0xFFFFFFFFFFFFFFF8;
        v97 = swift_allocObject();
        *(v97 + 2) = 0;
        *(v97 + 3) = 0;
        v98 = v129;
        *(v97 + 4) = v56;
        *(v97 + 5) = v98;
        *(v97 + 6) = v123;
        (v59[4])(&v97[v94], v93, v21);
        v99 = &v97[v95];
        v100 = v118;
        *v99 = v117;
        *(v99 + 1) = v100;
        v101 = &v97[v96];
        v102 = v119;
        *v101 = sub_100013634;
        v101[1] = v102;
        v103 = &v97[(v96 + 23) & 0xFFFFFFFFFFFFFFF8];
        v104 = v125;
        *v103 = sub_1000130C0;
        v103[1] = v104;

        v105 = v56;
        sub_100006C08(0, 0, v115, &unk_100020C58, v97);

        v106 = v127;
      }

      else
      {

        v107 = v111;
        (v59[4])(v111, v65, v21);
        v108 = v61;
        v106 = v127;
        _Block_copy(v127);
        sub_100010EFC(v107, v106);
        _Block_release(v106);

        (v108)(v107, v21);
      }

      v88 = v106;
LABEL_26:
      _Block_release(v88);
      return;
    }

    v77 = v124;
    v79 = v113;
    (v124[7])(v113, 1, 1, v21);
    sub_10001074C();
    swift_allocError();
    *v82 = 3;
    v81 = v79;
    v78 = v112;
LABEL_16:
    sub_10000364C(v81, v78, &qword_10002E180, &unk_100020D20);
    v84 = 0;
    if ((v77[6])(v78, 1, v21) != 1)
    {
      URL._bridgeToObjectiveC()(v83);
      v84 = v85;
      (v128)(v78, v21);
    }

    v86 = _convertErrorToNSError(_:)();
    v87 = v127;
    (*(v127 + 2))(v127, v84, 0, v86);

    sub_1000035A0(v79, &qword_10002E180, &unk_100020D20);

    v88 = v87;
    goto LABEL_26;
  }

  v109 = v127;
  _Block_release(v127);
  _Block_release(v109);
  __break(1u);
}

unint64_t sub_1000123AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001DC4(&qword_10002E230, &qword_100020C80);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000F058(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_1000124C0(uint64_t a1)
{
  v2 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001252C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for BrandServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrandServiceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100012740()
{
  result = qword_10002E218;
  if (!qword_10002E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E218);
  }

  return result;
}

_OWORD *sub_100012794(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000127A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100013628;

  return sub_10000D0F8(v2, v3, v5, v4);
}

uint64_t sub_100012868()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100013628;

  return sub_10000DB00(v2, v3, v4);
}

uint64_t sub_100012928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100013628;

  return sub_10000DBE8(a1, v4, v5, v6);
}

uint64_t sub_1000129F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100013628;

  return sub_10000E0C0(a1, v4);
}

uint64_t sub_100012AAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100013628;

  return sub_10000C628(v2, v3, v5, v4);
}

uint64_t sub_100012B6C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100012BBC()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000DCD0;

  return sub_10000A844(v2, v3, v6, v5, v4);
}

uint64_t sub_100012C84()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012CD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100013628;

  return sub_1000094DC(v2, v3, v5, v4);
}

uint64_t sub_100012D98()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012DD8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100013628;

  return sub_10000879C(v2, v3);
}

uint64_t sub_100012E84()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012ECC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100013628;

  return sub_100008254(v2, v3, v4);
}

uint64_t sub_100012F80()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012FC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100013628;

  return sub_100007BD0(v2, v3, v5, v4);
}

uint64_t sub_100013088()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000130CC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000131E8()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100013240()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100013628;

  return sub_100004D7C(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_10001331C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10001335C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000133A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100013628;

  return sub_10000E1B8(a1, v4);
}

uint64_t sub_10001345C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000134A4()
{
  result = qword_10002E268;
  if (!qword_10002E268)
  {
    sub_100001E70(&qword_10002E260, &qword_100020CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E268);
  }

  return result;
}

void *sub_100013508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10000EEA4(sub_10001359C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_100013570(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000106F8(result, a2);
  }

  return result;
}

uint64_t sub_100013584(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100013638()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002DCC0 != -1)
  {
    swift_once();
  }

  v6 = sub_100014314();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  static Locale.current.getter();
  v8 = Locale.identifier.getter();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  if (!*(v7 + 16))
  {

    goto LABEL_8;
  }

  v11 = sub_10000F058(v8, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    v14 = *(v1 + 16);

    return v14;
  }

  v14 = *(*(v7 + 56) + 16 * v11);

  return v14;
}

uint64_t sub_1000137D8()
{
  v1 = *v0;
  v2 = 0x495255646E617262;
  v3 = 0x6B6E694C70656564;
  if (v1 != 5)
  {
    v3 = 0x6B6361426C6C6166;
  }

  v4 = 0x4C52556F676F6CLL;
  if (v1 != 3)
  {
    v4 = 0x6C646E7542707061;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D614E646E617262;
  if (v1 != 1)
  {
    v5 = 0x6966697265567369;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000138D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100017408(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100013914(uint64_t a1)
{
  v2 = sub_100014C50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100013950(uint64_t a1)
{
  v2 = sub_100014C50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001398C(void *a1)
{
  v3 = sub_100001DC4(&qword_10002E478, &qword_100020DA8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10001335C(a1, a1[3]);
  sub_100014C50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for OnDeviceSupportBrandDetails(0);
    v12 = 3;
    type metadata accessor for URL();
    sub_1000169FC(&qword_10002E480, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100013C54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v4 = __chkstk_darwin(v3 - 8);
  v36 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v34 - v7;
  __chkstk_darwin(v6);
  v10 = v34 - v9;
  v39 = sub_100001DC4(&qword_10002E460, &qword_100020DA0);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v12 = v34 - v11;
  v13 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  __chkstk_darwin(v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v41 = a1;
  sub_10001335C(a1, v16);
  sub_100014C50();
  v17 = v12;
  v18 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100003600(v41);
  }

  v19 = v10;
  v21 = v37;
  v20 = v38;
  v48 = 0;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 1) = v23;
  v35 = v23;
  v47 = 1;
  *(v15 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 3) = v24;
  v46 = 2;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = 0;
  v15[32] = v25 & 1;
  v26 = type metadata accessor for URL();
  v45 = 3;
  v34[2] = sub_1000169FC(&qword_10002E470, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v35 = v19;
  v28 = v39;
  v27 = v40;
  v34[1] = v26;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v27)
  {
    (*(v21 + 8))(v17, v28);
    sub_100003600(v41);
  }

  else
  {
    v29 = v13;
    sub_1000168D8(v35, &v15[v13[7]], &qword_10002E180, &unk_100020D20);
    v44 = 4;
    v40 = 0;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = &v15[v13[8]];
    *v31 = v30;
    v31[1] = v32;
    v43 = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000168D8(v8, &v15[v13[9]], &qword_10002E180, &unk_100020D20);
    v42 = 6;
    v33 = v36;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v21 + 8))(v17, v39);
    sub_1000168D8(v33, &v15[v29[10]], &qword_10002E180, &unk_100020D20);
    sub_100014CA4(v15, v20);
    sub_100003600(v41);
    return sub_1000124C0(v15);
  }
}

id sub_100014260()
{
  type metadata accessor for OnDeviceSupportBrandManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = [objc_allocWithZone(NSLock) init];
  *(v0 + 32) = result;
  *(v0 + 40) = 1;
  qword_10002F820 = v0;
  return result;
}

uint64_t sub_100014314()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_100016F44();
    v3 = *(v0 + 40);
    *(v0 + 40) = v2;

    sub_100017114(v3);
  }

  sub_100017124(v1);
  return v2;
}

uint64_t sub_100014370()
{
  v1 = *(v0 + 32);
  [v1 lock];
  if ((*(v0 + 24) & 1) == 0)
  {
    v3 = sub_100016A44(0xD000000000000015, 0x800000010001F570, &qword_10002E4B0, &qword_100020DE0, sub_100016940);
    swift_beginAccess();
    *(v0 + 16) = v3;

    v4 = sub_1000158AC();
    if (v4)
    {
      v6 = v4;
      v8 = sub_1000142C0(v12);
      if (*v7)
      {
        v9 = v7;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v9;
        *v9 = 0x8000000000000000;
        sub_1000164E4(v6, sub_100014D08, 0, isUniquelyReferenced_nonNull_native, &v11);

        *v9 = v11;

        (v8)(v12, 0);
      }

      else
      {

        (v8)(v12, 0);
      }
    }

    *(v0 + 24) = 1;
  }

  swift_beginAccess();
  v2 = *(v0 + 16);

  [v1 unlock];
  return v2;
}

uint64_t sub_1000146A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DC4(&qword_10002E4D8, &qword_100020DF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_100014370();
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  if (!*(v7 + 16) || (v9 = sub_10000F058(a1, a2), (v10 & 1) == 0))
  {

LABEL_6:
    v16 = type metadata accessor for OnDeviceSupportBrandDetails(0);
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v15 = 0;
    goto LABEL_7;
  }

  v11 = v9;
  v12 = *(v8 + 56);
  v13 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  v14 = *(v13 - 8);
  sub_100014CA4(v12 + *(v14 + 72) * v11, v6);

  v15 = 1;
  (*(v14 + 56))(v6, 0, 1, v13);
LABEL_7:
  sub_1000035A0(v6, &qword_10002E4D8, &qword_100020DF0);
  return v15;
}

uint64_t sub_100014844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100014370();
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16))
    {
      v8 = sub_10000F058(a1, a2);
      if (v9)
      {
        v10 = v8;
        v11 = *(v7 + 56);
        v12 = type metadata accessor for OnDeviceSupportBrandDetails(0);
        sub_100014CA4(v11 + *(*(v12 - 8) + 72) * v10, a3);
      }
    }
  }

  sub_10000E3A8();
  swift_allocError();
  *v14 = 5;
  return swift_willThrow();
}

uint64_t sub_10001491C()
{

  sub_100017114(*(v0 + 40));

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10001499C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100014A6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for OnDeviceSupportBrandDetails(uint64_t a1)
{
  result = qword_10002E408;
  if (!qword_10002E408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014B68(uint64_t a1)
{
  sub_100014BF8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100014BF8(uint64_t a1)
{
  if (!qword_10002E418)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10002E418);
    }
  }
}

unint64_t sub_100014C50()
{
  result = qword_10002E468;
  if (!qword_10002E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E468);
  }

  return result;
}

uint64_t sub_100014CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014D08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(sub_100001DC4(&qword_10002E4A0, &qword_100020DC8) + 48);
  v5 = sub_100001DC4(&qword_10002E490, &qword_100020DB8);
  v7 = *a1;
  v6 = a1[1];
  sub_100014CA4(a1 + v4, a2 + *(v5 + 48));
  *a2 = v7;
  a2[1] = v6;
}

Swift::Int sub_100014D94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100001DC4(&qword_10002E498, &qword_100020DC0);
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
        sub_100016810(v28, v41);
      }

      else
      {
        sub_100014CA4(v28, v41);
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
      result = sub_100016810(v41, *(v9 + 56) + v27 * v17);
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

void *sub_1000150D0()
{
  v1 = v0;
  v2 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001DC4(&qword_10002E498, &qword_100020DC0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
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
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_100014CA4(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100016810(v25, *(v27 + 56) + v26);
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
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100015300(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000F058(a2, a3);
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
      sub_1000150D0();
      goto LABEL_7;
    }

    sub_100014D94(v15, a4 & 1);
    v22 = sub_10000F058(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
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
    v20 = v19 + *(*(type metadata accessor for OnDeviceSupportBrandDetails(0) - 8) + 72) * v12;

    return sub_100016874(a1, v20);
  }

LABEL_13:
  sub_100015464(v12, a2, a3, a1, v18);
}

uint64_t sub_100015464(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  result = sub_100016810(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

uint64_t sub_1000154FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100001DC4(&qword_10002E4A0, &qword_100020DC8);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v40 - v4;
  v6 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  v42 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001DC4(&qword_10002E4A8, &unk_100020DD0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = (&v40 - v14);
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v40 = v5;
  v45 = v19;
  if (v20)
  {
    v41 = a1;
    v21 = v18;
LABEL_11:
    v25 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v21 << 6);
    v27 = (*(v16 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    sub_100014CA4(*(v16 + 56) + *(v42 + 72) * v26, v8);
    v30 = v44;
    v31 = *(v44 + 48);
    *v15 = v29;
    v15[1] = v28;
    v32 = v8;
    v33 = v30;
    sub_100016810(v32, v15 + v31);
    v34 = v43;
    (*(v43 + 56))(v15, 0, 1, v33);

    v24 = v21;
    v35 = v34;
    a1 = v41;
LABEL_12:
    *v1 = v16;
    v1[1] = v17;
    v1[2] = v45;
    v1[3] = v24;
    v1[4] = v25;
    v36 = v1[5];
    sub_1000168D8(v15, v12, &qword_10002E4A8, &unk_100020DD0);
    v37 = 1;
    if ((*(v35 + 48))(v12, 1, v33) != 1)
    {
      v38 = v40;
      sub_1000168D8(v12, v40, &qword_10002E4A0, &qword_100020DC8);
      v36(v38);
      sub_1000035A0(v38, &qword_10002E4A0, &qword_100020DC8);
      v37 = 0;
    }

    v39 = sub_100001DC4(&qword_10002E490, &qword_100020DB8);
    return (*(*(v39 - 8) + 56))(a1, v37, 1, v39);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v35 = v43;
        v33 = v44;
        (*(v43 + 56))(&v40 - v14, 1, 1, v44);
        v25 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1000158AC()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v58 - v10;
  if (!_BSIsInternalInstall())
  {
    return 0;
  }

  v78 = v3;
  v12 = [objc_allocWithZone(NSUserDefaults) init];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v76 = v74;
  v77 = v75;
  if (*(&v75 + 1))
  {
    if (swift_dynamicCast())
    {
      v69 = v72;
      v70 = v73;
      v71 = v0;
      v16 = [objc_allocWithZone(NSUserDefaults) init];
      v17 = String._bridgeToObjectiveC()();
      v18 = [v16 objectForKey:v17];

      if (v18)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      if (*(&v75 + 1))
      {
        if (swift_dynamicCast())
        {
          v19 = v73;
          v68 = v72;
          goto LABEL_18;
        }
      }

      else
      {
        sub_1000035A0(&v76, &qword_10002E168, &qword_1000209A8);
      }

      v68 = 0;
      v19 = 0xE000000000000000;
LABEL_18:
      v67 = v19;
      v20 = [objc_allocWithZone(NSUserDefaults) init];
      v21 = String._bridgeToObjectiveC()();
      v22 = [v20 objectForKey:v21];

      if (v22)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      if (*(&v75 + 1))
      {
        if (swift_dynamicCast())
        {
          v23 = v73;
          v66 = v72;
          goto LABEL_26;
        }
      }

      else
      {
        sub_1000035A0(&v76, &qword_10002E168, &qword_1000209A8);
      }

      v66 = 0;
      v23 = 0xE000000000000000;
LABEL_26:
      v65 = v23;
      v24 = [objc_allocWithZone(NSUserDefaults) init];
      v25 = String._bridgeToObjectiveC()();
      v26 = [v24 objectForKey:v25];

      if (v26)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      v64 = v2;
      if (*(&v75 + 1))
      {
        if (swift_dynamicCast())
        {
          v27 = v72;
          v28 = v73;
          goto LABEL_34;
        }
      }

      else
      {
        sub_1000035A0(&v76, &qword_10002E168, &qword_1000209A8);
      }

      v28 = 0xE500000000000000;
      v27 = 0x65736C6166;
LABEL_34:
      v63 = v27;
      v29 = [objc_allocWithZone(NSUserDefaults) init];
      v30 = String._bridgeToObjectiveC()();
      v31 = [v29 objectForKey:v30];

      if (v31)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      v62 = v5;
      if (*(&v75 + 1))
      {
        if (swift_dynamicCast())
        {
          v61 = v72;
          goto LABEL_42;
        }
      }

      else
      {
        sub_1000035A0(&v76, &qword_10002E168, &qword_1000209A8);
      }

      v61 = 0;
LABEL_42:
      v32 = [objc_allocWithZone(NSUserDefaults) init];
      v33 = String._bridgeToObjectiveC()();
      v34 = [v32 objectForKey:v33];

      if (v34)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      if (*(&v75 + 1))
      {
        if (swift_dynamicCast())
        {
          v35 = v73;
          v60 = v72;
          goto LABEL_50;
        }
      }

      else
      {
        sub_1000035A0(&v76, &qword_10002E168, &qword_1000209A8);
      }

      v60 = 0;
      v35 = 0xE000000000000000;
LABEL_50:
      v59 = v35;
      v36 = [objc_allocWithZone(NSUserDefaults) init];
      v37 = String._bridgeToObjectiveC()();
      v38 = [v36 objectForKey:v37];

      if (v38)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      if (*(&v75 + 1))
      {
        if (swift_dynamicCast())
        {
          v58 = v72;
LABEL_58:
          v39 = objc_allocWithZone(NSUserDefaults);
          v40 = [v39 init];
          v41 = String._bridgeToObjectiveC()();
          v42 = [v40 objectForKey:v41];

          if (v42)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v74 = 0u;
            v75 = 0u;
          }

          v76 = v74;
          v77 = v75;
          if (*(&v75 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_1000035A0(&v76, &qword_10002E168, &qword_1000209A8);
          }

          if (v63 == 1702195828 && v28 == 0xE400000000000000)
          {

            v43 = 1;
          }

          else
          {
            v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v2 = v64;
          URL.init(string:)();

          URL.init(string:)();

          URL.init(string:)();

          v44 = v67;
          *v11 = v68;
          *(v11 + 1) = v44;
          v45 = v65;
          *(v11 + 2) = v66;
          *(v11 + 3) = v45;
          v11[32] = v43 & 1;
          v46 = &v11[*(v6 + 32)];
          v47 = v59;
          *v46 = v60;
          *(v46 + 1) = v47;
          sub_100014CA4(v11, v9);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v76 = &_swiftEmptyDictionarySingleton;
          sub_100015300(v9, v69, v70, isUniquelyReferenced_nonNull_native);

          sub_1000124C0(v11);
          v15 = v76;
          v1 = v71;
          v5 = v62;
          goto LABEL_69;
        }
      }

      else
      {
        sub_1000035A0(&v76, &qword_10002E168, &qword_1000209A8);
      }

      v58 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    sub_1000035A0(&v76, &qword_10002E168, &qword_1000209A8);
  }

  v15 = &_swiftEmptyDictionarySingleton;
LABEL_69:
  v49 = [objc_allocWithZone(NSUserDefaults) init];
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 objectForKey:v50];

  if (v51)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v76 = v74;
  v77 = v75;
  if (*(&v75 + 1))
  {
    if (swift_dynamicCast())
    {
      static String.Encoding.utf8.getter();
      v52 = String.data(using:allowLossyConversion:)();
      v54 = v53;

      (*(v78 + 8))(v5, v2);
      if (v54 >> 60 != 15)
      {
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100001DC4(&qword_10002E4B0, &qword_100020DE0);
        sub_100016940();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        if (v1)
        {

          sub_100013570(v52, v54);
        }

        else
        {
          v56 = v76;
          v57 = swift_isUniquelyReferenced_nonNull_native();
          *&v76 = v15;
          sub_1000164E4(v56, sub_100014D08, 0, v57, &v76);

          sub_100013570(v52, v54);
          return v76;
        }
      }
    }
  }

  else
  {
    sub_1000035A0(&v76, &qword_10002E168, &qword_1000209A8);
  }

  return v15;
}

uint64_t sub_1000164E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  v47 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001DC4(&qword_10002E488, &qword_100020DB0);
  __chkstk_darwin(v13 - 8);
  v15 = (v39 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v40 = a1;
  v41 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v42 = v17;
  v43 = 0;
  v44 = v20 & v18;
  v45 = a2;
  v46 = a3;

  v39[1] = a3;

  while (1)
  {
    sub_1000154FC(v15);
    v21 = sub_100001DC4(&qword_10002E490, &qword_100020DB8);
    if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
    {
      sub_100016808(v40);
    }

    v23 = *v15;
    v22 = v15[1];
    sub_100016810(v15 + *(v21 + 48), v12);
    v24 = *a5;
    v26 = sub_10000F058(v23, v22);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1000150D0();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_100016874(v12, v33[7] + *(v47 + 72) * v26);
      a4 = 1;
    }

    else
    {
      sub_100014D94(v29, a4 & 1);
      v31 = sub_10000F058(v23, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v23;
      v34[1] = v22;
      sub_100016810(v12, v33[7] + *(v47 + 72) * v26);
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_20;
      }

      v33[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100016810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnDeviceSupportBrandDetails(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000168D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DC4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100016940()
{
  result = qword_10002E4B8;
  if (!qword_10002E4B8)
  {
    sub_100001E70(&qword_10002E4B0, &qword_100020DE0);
    sub_1000169FC(&qword_10002E4C0, type metadata accessor for OnDeviceSupportBrandDetails, &unk_100020D74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4B8);
  }

  return result;
}

uint64_t sub_1000169FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100016A44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v7 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() bundleWithIdentifier:v17];

  if (v18)
  {
    v40 = a1;
    v41 = a2;
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 URLForResource:v19 withExtension:v20];

    if (v21)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v14 + 56))(v10, 0, 1, v13);
    }

    else
    {
      (*(v14 + 56))(v10, 1, 1, v13);
    }

    v22 = v42;
    sub_1000168D8(v10, v12, &qword_10002E180, &unk_100020D20);
    v23 = (*(v14 + 48))(v12, 1, v13);
    a1 = v40;
    a2 = v41;
    if (v23 != 1)
    {
      (*(v14 + 32))(v16, v12, v13);
      v33 = Data.init(contentsOf:options:)();
      if (v22)
      {
        return (*(v14 + 8))(v16, v13);
      }

      v35 = v33;
      v36 = v34;
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_100001DC4(v37, v38);
      v39();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      (*(v14 + 8))(v16, v13);

      sub_1000106F8(v35, v36);
      return v43;
    }
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_1000035A0(v12, &qword_10002E180, &unk_100020D20);
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003034(v24, qword_10002F838);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = a2;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = a1;
    v31 = v29;
    v43 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_10000E3FC(v30, v27, &v43);
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to load plist file: %s.plist", v28, 0xCu);
    sub_100003600(v31);
  }

  return 0;
}

uint64_t sub_100017114(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100017124(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_100017134()
{
  result = qword_10002E4D0;
  if (!qword_10002E4D0)
  {
    sub_100001E70(&qword_10002E4C8, &qword_100020DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnDeviceSupportBrandDetails.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnDeviceSupportBrandDetails.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100017304()
{
  result = qword_10002E4E0;
  if (!qword_10002E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4E0);
  }

  return result;
}

unint64_t sub_10001735C()
{
  result = qword_10002E4E8;
  if (!qword_10002E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4E8);
  }

  return result;
}

unint64_t sub_1000173B4()
{
  result = qword_10002E4F0;
  if (!qword_10002E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4F0);
  }

  return result;
}

uint64_t sub_100017408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x495255646E617262 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646E617262 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966697265567369 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556F676F6CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B6E694C70656564 && a2 == 0xEB000000004C5255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B6361426C6C6166 && a2 == 0xEB000000004C5255)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

id sub_1000176AC()
{
  v1 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___userDefaults;
  v2 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___userDefaults);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___userDefaults);
  }

  else
  {
    v4 = [objc_opt_self() sharedDefaults];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100017728()
{
  v1 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___isInternalInstall;
  v2 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___isInternalInstall);
  if (v2 == 2)
  {
    LOBYTE(v2) = _BSIsInternalInstall();
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

id sub_10001777C()
{
  v1 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cacheManager;
  v2 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cacheManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cacheManager);
  }

  else
  {
    v4 = sub_100017670();
    v5 = sub_100017684();
    v6 = sub_100017698();
    v7 = [objc_allocWithZone(BCSCacheManager) initWithBloomFilterShardCache:v4 domainItemCache:v5 itemCache:v6];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_100017840()
{
  v1 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___metricFactory;
  v2 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___metricFactory);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___metricFactory);
  }

  else
  {
    v4 = sub_10001782C();
    v5 = [objc_allocWithZone(BCSMetricFactory) initWithMeasurementFactory:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1000178F8(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_1000179B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for ShardServiceDomain();
    swift_allocObject();
    v5 = sub_10001CE98(a2, v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

id sub_100017A3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___queryController);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = v0;
    v25 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___queryController;
    sub_100017964();
    v24 = sub_10001CB14();

    sub_100017974();
    v23 = sub_10001CB14();

    sub_100017984();
    v22 = sub_10001CB14();

    sub_100017994();
    v21 = sub_10001CB14();

    v4 = sub_10001777C();
    v5 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cacheManager);

    v6 = sub_10001C97C();

    v7 = sub_10001C97C();

    v16 = sub_10001C97C();

    v17 = sub_10001C97C();

    sub_1000179A4();
    v18 = sub_10001C97C();

    v19 = sub_1000176AC();
    v20 = sub_100017840();
    v15 = v7;
    v8 = v7;
    v14 = v6;
    v9 = v6;
    v10 = v5;
    v2 = [objc_allocWithZone(BCSBusinessQueryController) initWithChatSuggestMegashardFetcher:v24 businessLinkMegashardFetcher:v23 businessCallerMegashardFetcher:v22 businessEmailMegashardFetcher:v21 shardCache:v4 cacheManager:v5 chatSuggestRemoteFetcher:v14 businessLinkRemoteFetcher:v15 businessCallerRemoteFetcher:v16 businessEmailRemoteFetcher:v17 webPresentmentRemoteFetcher:v18 userDefaults:v19 metricFactory:v20];

    v11 = *(v3 + v25);
    *(v3 + v25) = v2;
    v12 = v2;
    sub_1000194C4(v11);
    v1 = 1;
  }

  sub_100019544(v1);
  return v2;
}

uint64_t sub_100017CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100001DC4(&qword_10002E120, &qword_100020FC0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v16 - v8;
  v10 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessConnectAssetDataSource;
  swift_beginAccess();
  sub_1000194D4(v2 + v10, v9);
  v11 = type metadata accessor for BrandAssetNetworkFetcher();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000035A0(v9, &qword_10002E120, &qword_100020FC0);
  v13 = type metadata accessor for NetworkProvider();
  swift_allocObject();
  v14 = NetworkProvider.init(customURLCache:waitsForConnectivity:)();
  v16[3] = v13;
  v16[4] = &protocol witness table for NetworkProvider;
  v16[0] = v14;
  BrandAssetNetworkFetcher.init(networkProvider:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000036B4(v7, v2 + v10);
  return swift_endAccess();
}

uint64_t sub_100017EE4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cachedLogoDataSource;
  if (*(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cachedLogoDataSource))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cachedLogoDataSource);
  }

  else
  {
    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 brandLogoCacheURL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    type metadata accessor for BrandLogoPersistentStore(0);
    v6 = swift_allocObject();
    v9 = OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager;
    *(v6 + v9) = [objc_opt_self() defaultManager];
    *(v6 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_maxNumberOfUnusedDays) = 0x403E000000000000;
    (*(v2 + 32))(v6 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_cacheURL, v4, v1);
    *(v0 + v5) = v6;
  }

  return v6;
}

id sub_100018098()
{
  v1 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___xpcListener;
  v2 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___xpcListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___xpcListener);
  }

  else
  {
    v4 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:kBCBusinessChatMachServiceName];
    [v4 setDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100018130()
{
  v1 = v0;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003034(v2, qword_10002F838);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting businessservicesd daemon", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17businessservicesd6Daemon_sandboxInitialized;
  if (*(v1 + OBJC_IVAR____TtC17businessservicesd6Daemon_sandboxInitialized) != 1)
  {
    (*((swift_isaMask & *v1) + 0x358))();
    *(v1 + v6) = 1;
  }

  (*((swift_isaMask & *v1) + 0x330))();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Listening for incoming connections", v9, 2u);
  }

  v10 = sub_100018098();
  [v10 resume];

  v11 = [objc_opt_self() mainRunLoop];
  [v11 run];

  sub_100018EB8();
}

id sub_100018388()
{
  result = [objc_allocWithZone(type metadata accessor for iOSDaemon(0)) init];
  qword_10002F828 = result;
  return result;
}

Swift::Int sub_1000183C0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptySetSingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_100001DC4(&unk_10002E6F0, &qword_100020FB8);
  v3 = static _SetStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  sub_10000349C(0, &qword_10002E678, NSObject_ptr);
  sub_100019404();
  result = Set.Iterator.init(_cocoa:)();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = (v3 + 7);
  while (v1 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_34:
      sub_100016808(v1);

      return v3;
    }

    *&v27 = v16;
    sub_10000349C(0, &qword_10002E678, NSObject_ptr);
    swift_dynamicCast();
LABEL_25:
    sub_10000349C(0, &qword_10002E678, NSObject_ptr);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v12[8 * (v21 >> 6)]) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*&v12[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v12[8 * v22];
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *&v12[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v14 = v3[6] + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++v3[2];
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_10001873C(void *a1)
{
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003034(v2, qword_10002F838);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Connection invalidated: %@", v5, 0xCu);
    sub_1000035A0(v6, &qword_10002E240, &qword_100020FB0);
  }
}

uint64_t sub_100018888(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100018988()
{
  v1 = &v0[OBJC_IVAR____TtC17businessservicesd6Daemon_bundleId];
  *v1 = 0xD00000000000001BLL;
  v1[1] = 0x800000010001FAE0;
  v0[OBJC_IVAR____TtC17businessservicesd6Daemon_sandboxInitialized] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___shardStore] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___domainShardStore] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___itemCache] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___userDefaults] = 0;
  v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___isInternalInstall] = 2;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___queryOperationFactory] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cacheManager] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___measurementFactory] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___metricFactory] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___bloomFilterExtractor] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___operationGroupFactory] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___chatSuggestShardServiceDomain] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessLinkShardServiceDomain] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessCallerShardServiceDomain] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessEmailShardServiceDomain] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___webPresentmentShardServiceDomain] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___queryController] = 1;
  v2 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessConnectAssetDataSource;
  v3 = type metadata accessor for BrandAssetNetworkFetcher();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cachedLogoDataSource] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon_XPCServer] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___xpcListener] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for Daemon(0);
  return objc_msgSendSuper2(&v5, "init");
}