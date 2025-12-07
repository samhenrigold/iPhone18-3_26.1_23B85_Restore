id sub_100001240(uint64_t a1)
{
  if (qword_100008260 != -1)
  {
    sub_100001C1C();
  }

  v2 = qword_100008258;

  return v2;
}

void sub_100001284(id a1)
{
  qword_100008258 = os_log_create("com.apple.webinspectord", "default");

  _objc_release_x1();
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100001240(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Launched (Device)", v6, 2u);
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100004208);
  v2 = objc_alloc_init(RWIWebinspectordRelayDelegateIOS);
  v3 = objc_alloc_init(RWIRelay);
  [v3 setDelegate:v2];
  [v3 setup];
  objc_autoreleasePoolPop(v0);
  v4 = +[NSRunLoop mainRunLoop];
  [v4 run];

  return 0;
}

void sub_1000013DC(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    v4 = sub_100001240(string);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "webinspectord launched in response to %s", &v5, 0xCu);
    }
  }
}

id RWIRemotePairingDeviceAuxiliaryMetadataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RWIRemotePairingDeviceAuxiliaryMetadataProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RWIRemotePairingDeviceAuxiliaryMetadataProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id RWIRemotePairingDeviceAuxiliaryMetadataProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RWIRemotePairingDeviceAuxiliaryMetadataProvider();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1000015E4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000165C(a1, a2, v4);
}

unint64_t sub_10000165C(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100001714(uint64_t a1)
{
  v2 = sub_100001AEC(&qword_100008248, &qword_1000020D8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001AEC(&qword_100008250, &qword_1000020E0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100001BAC(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1000015E4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for AuxiliaryMetadataItem();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t _s13webinspectord47RWIRemotePairingDeviceAuxiliaryMetadataProviderC012registerBoolF06domain3key5valueySo8NSStringC_AISbtFZ_0(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for AuxiliaryMetadataProvider();
  static AuxiliaryMetadataProvider.shared.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100001AEC(&qword_100008240, &qword_1000020D0);
  v4 = (sub_100001AEC(&qword_100008248, &qword_1000020D8) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100002080;
  v7 = (v6 + v5);
  v8 = v4[14];
  *v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7[1] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v7 + v8) = v10;
  v11 = enum case for AuxiliaryMetadataItem.BOOLean(_:);
  v12 = type metadata accessor for AuxiliaryMetadataItem();
  (*(*(v12 - 8) + 104))(v7 + v8, v11, v12);
  sub_100001714(v6);
  swift_setDeallocating();
  sub_100001B44(v7);
  swift_deallocClassInstance();
  dispatch thunk of AuxiliaryMetadataProvider.registerMetadata(forDomain:metadata:)();
}

uint64_t sub_100001AEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001B44(uint64_t a1)
{
  v2 = sub_100001AEC(&qword_100008248, &qword_1000020D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AEC(&qword_100008248, &qword_1000020D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}