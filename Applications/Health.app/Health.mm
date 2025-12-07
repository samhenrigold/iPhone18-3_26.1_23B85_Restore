int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

unint64_t sub_1000031FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003958(a5, a6);
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

uint64_t sub_100003308()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&aBlock = ObjectType;
    *v7 = 136446466;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_1000036D0(v8, v9, &v19);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000036D0(0xD00000000000002ELL, 0x80000001000A7A20, &v19);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s]: Lifecycle: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = (*(v2 + 8))(v4, v1);
  if (kTCCServiceMotion)
  {
    v12 = kTCCServiceMotion;
    v22 = nullsub_1;
    v23 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v21 = sub_100003E24;
    *(&v21 + 1) = &unk_1000CEF80;
    v13 = _Block_copy(&aBlock);
    TCCAccessRequest();
    _Block_release(v13);

    v14 = [objc_opt_self() sharedApplication];
    sub_1000041A0();
    sub_100003DDC(0, &qword_1000DB100, UIApplicationShortcutItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setShortcutItems:isa];

    v16 = [objc_opt_self() currentNotificationCenter];
    v17 = sub_100004814();
    [v16 setDelegate:v17];

    type metadata accessor for AppDependencyManager();
    static AppDependencyManager.shared.getter();
    sub_100003DDC(0, &qword_1000DC680, HKHealthStore_ptr);
    aBlock = 0u;
    v21 = 0u;
    v22 = 0;
    AppDependencyManager.add<A>(key:dependency:)();

    sub_100003EC4(&aBlock);
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000036D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000031FC(v11, 0, 0, 1, a1, a2);
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
    sub_100003B34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003B90(v11);
  return v7;
}

void *sub_10000379C(uint64_t a1, uint64_t a2)
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

  sub_1000039A4(0, &qword_1000DB148, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003828(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000379C(v5, 0);
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
        v7 = sub_10000379C(v10, 0);
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

char *sub_100003958(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003828(a1, a2);
  sub_100003A48(&off_1000CC168);
  return v3;
}

void sub_1000039A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000039F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100003A48(uint64_t result)
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

  result = sub_10002E244(result, v11, 1, v3);
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

uint64_t sub_100003B34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003B90(void *a1)
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

uint64_t sub_100003BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100003D8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100003DDC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003E24(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

uint64_t sub_100003E7C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100003EC4(uint64_t a1)
{
  sub_100003D8C(0, &qword_1000DC688, &type metadata for AnyHashable, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000414C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000041A0()
{
  v0 = type metadata accessor for DeepLinkActivityType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003D8C(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000AED70;
  v4 = *(v1 + 104);
  v4(v3, enum case for DeepLinkActivityType.summary(_:), v0);
  DeepLinkActivityType.userActivityType.getter();
  v42 = *(v1 + 8);
  v42(v3, v0);
  v39[1] = v1 + 8;
  v5 = String._bridgeToObjectiveC()();
  v40 = objc_opt_self();
  v6 = [v40 iconWithSystemImageName:v5];

  v7 = objc_allocWithZone(UIApplicationShortcutItem);
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithType:v8 localizedTitle:v9 localizedSubtitle:0 icon:v6 userInfo:0];

  *(v41 + 32) = v10;
  v4(v3, enum case for DeepLinkActivityType.sharingOverview(_:), v0);
  DeepLinkActivityType.userActivityType.getter();
  v42(v3, v0);
  v11 = String._bridgeToObjectiveC()();
  v12 = v40;
  v13 = [v40 iconWithSystemImageName:v11];

  v14 = objc_allocWithZone(UIApplicationShortcutItem);
  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 initWithType:v15 localizedTitle:v16 localizedSubtitle:0 icon:v13 userInfo:0];

  v18 = v4;
  v19 = v41;
  *(v41 + 40) = v17;
  v43 = v19;
  v4(v3, enum case for DeepLinkActivityType.browse(_:), v0);
  DeepLinkActivityType.userActivityType.getter();
  v41 = v0;
  v42(v3, v0);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v12 iconWithSystemImageName:v20];

  v22 = objc_allocWithZone(UIApplicationShortcutItem);
  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();
  v25 = [v22 initWithType:v23 localizedTitle:v24 localizedSubtitle:0 icon:v21 userInfo:0];

  v26 = v25;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = v43;
  v28 = [objc_opt_self() shared];
  v29 = [v28 isMedicalIDAvailable];

  if (v29)
  {
    v30 = v41;
    v18(v3, enum case for DeepLinkActivityType.medicalID(_:), v41);
    DeepLinkActivityType.userActivityType.getter();
    v42(v3, v30);
    v31 = String._bridgeToObjectiveC()();
    v32 = [v12 iconWithSystemImageName:v31];

    v33 = objc_allocWithZone(UIApplicationShortcutItem);
    v34 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();
    v36 = [v33 initWithType:v34 localizedTitle:v35 localizedSubtitle:0 icon:v32 userInfo:0];

    v37 = v36;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v43;
  }

  else
  {
  }

  return v27;
}

id sub_100004814()
{
  v1 = OBJC_IVAR____TtC6Health11AppDelegate____lazy_storage___pluginNotificationRouter;
  v2 = *&v0[OBJC_IVAR____TtC6Health11AppDelegate____lazy_storage___pluginNotificationRouter];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC6Health11AppDelegate____lazy_storage___pluginNotificationRouter];
  }

  else
  {
    v4 = v0;
    type metadata accessor for PluginNotificationRouter();
    v5 = PluginNotificationRouter.__allocating_init()();
    sub_100003E7C(&unk_1000DC660, v6, type metadata accessor for AppDelegate, &unk_1000AF7D0);
    v7 = v4;
    dispatch thunk of PluginNotificationRouter.sceneProvider.setter();
    v8 = *&v4[v1];
    *&v4[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_10000498C(void *a1, void *a2, void *a3)
{
  v158 = a3;
  v149 = a2;
  ObjectType = swift_getObjectType();
  sub_10000414C(0, &qword_1000DD0C8, &type metadata accessor for Published.Publisher);
  v153 = *(v5 - 8);
  v154 = v5;
  __chkstk_darwin(v5);
  v151 = &v141 - v6;
  sub_100005D04(0);
  v155 = *(v7 - 8);
  v156 = v7;
  __chkstk_darwin(v7);
  v152 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F90(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = &v141 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v148 = &v141 - v18;
  v19 = __chkstk_darwin(v17);
  v150 = &v141 - v20;
  v21 = __chkstk_darwin(v19);
  v157 = &v141 - v22;
  __chkstk_darwin(v21);
  v24 = &v141 - v23;
  static Logger.general.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v159 = v13;
    v147 = v28;
    v165 = v28;
    *v27 = 136446466;
    v164[0] = ObjectType;
    swift_getMetatypeMetadata();
    v29 = String.init<A>(describing:)();
    v31 = sub_1000036D0(v29, v30, &v165);
    LODWORD(v146) = v26;
    v32 = a1;
    v33 = v16;
    v34 = ObjectType;
    v35 = v12;
    v36 = v31;

    *(v27 + 4) = v36;
    v12 = v35;
    ObjectType = v34;
    v16 = v33;
    a1 = v32;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1000036D0(0xD00000000000001FLL, 0x80000001000A87C0, &v165);
    _os_log_impl(&_mh_execute_header, v25, v146, "[%{public}s]: Lifecycle: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    v13 = v159;
  }

  v37 = *(v13 + 8);
  v37(v24, v12);
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v39 = v38;
    v40 = a1;
    v41 = [v39 sizeRestrictions];
    if (v41)
    {
      v42 = v41;
      [v41 minimumSize];
      [v42 setMinimumSize:?];
    }

    v43 = [objc_opt_self() sharedApplication];
    v44 = [v43 isProtectedDataAvailable];

    if (v44)
    {
      v159 = v13;
      v142 = v12;
      sub_1000063A4();
      if (qword_1000DA5A8 != -1)
      {
        swift_once();
      }

      v45 = qword_1000E3F50;
      sub_100007F08();
      v147 = v45;
      sub_1000077A8();
      v46 = type metadata accessor for TaskPriority();
      (*(*(v46 - 8) + 56))(v11, 1, 1, v46);
      type metadata accessor for MainActor();
      v47 = static MainActor.shared.getter();
      v48 = swift_allocObject();
      v48[2] = v47;
      v48[3] = &protocol witness table for MainActor;
      v141 = ObjectType;
      v48[4] = ObjectType;
      sub_100084B64(0, 0, v11, &unk_1000B01B0, v48);

      v49 = [objc_allocWithZone(UIWindow) initWithWindowScene:v39];
      v50 = OBJC_IVAR____TtC6Health13SceneDelegate_window;
      v51 = v160;
      v52 = *&v160[OBJC_IVAR____TtC6Health13SceneDelegate_window];
      *&v160[OBJC_IVAR____TtC6Health13SceneDelegate_window] = v49;

      v53 = [objc_allocWithZone(type metadata accessor for TabBarController()) init];
      v54 = sub_100006A10(&unk_1000DC3E0, type metadata accessor for TabBarController, &unk_1000AF530);
      v55 = sub_100006A10(&qword_1000DD0F0, type metadata accessor for TabBarController, &unk_1000AF5C0);
      v56 = sub_100006A10(&qword_1000DD0F8, type metadata accessor for TabBarController, &unk_1000AF5E8);
      v57 = sub_100006A10(&qword_1000DC3A0, type metadata accessor for TabBarController, &unk_1000AF4DC);
      v58 = &v51[OBJC_IVAR____TtC6Health13SceneDelegate_rootViewController];
      v59 = *&v51[OBJC_IVAR____TtC6Health13SceneDelegate_rootViewController];
      *v58 = v53;
      *(v58 + 1) = v54;
      *(v58 + 2) = v55;
      *(v58 + 3) = v56;
      *(v58 + 4) = v57;

      v146 = v50;
      v60 = *&v51[v50];
      if (v60)
      {
        [v60 setRootViewController:*v58];
      }

      v145 = v40;
      v61 = *v58;
      if (!*v58)
      {
        __break(1u);
        goto LABEL_46;
      }

      v62 = type metadata accessor for AppDeepLinkHandler(0);
      v63 = swift_allocObject();
      v64 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
      v65 = type metadata accessor for DeepLinkContentKind(0);
      v66 = *(*(v65 - 8) + 56);
      v144 = *(v58 + 8);
      v143 = *(v58 + 24);
      v66(v63 + v64, 1, 1, v65);
      *(v63 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinksCancellable) = 0;
      sub_100003DDC(0, &qword_1000DD4E0, NSUserDefaults_ptr);
      v67 = v61;
      static NSUserDefaults.healthAppShared.getter();
      LOBYTE(v164[0]) = 0;
      UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
      v68 = v63 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController;
      *v68 = v67;
      *(v68 + 8) = v144;
      *(v68 + 24) = v143;
      *(v63 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinks) = 1;
      v69 = OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler;
      v70 = v160;
      *&v160[OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler] = v63;

      sub_10000C774();
      swift_beginAccess();
      sub_10000414C(0, &qword_1000DD100, &type metadata accessor for Published);
      v71 = v151;
      Published.projectedValue.getter();
      swift_endAccess();
      sub_100006330();
      v72 = v152;
      v73 = v154;
      Publisher.map<A>(_:)();
      (*(v153 + 8))(v71, v73);
      sub_100006A10(&qword_1000DD108, sub_100005D04, &protocol conformance descriptor for Publishers.Map<A, B>);
      v74 = v156;
      Publisher.eraseToAnyPublisher()();

      v75 = v72;
      v76 = v70;
      v77 = v58;
      (*(v155 + 8))(v75, v74);
      sub_10000C9DC();

      [*&v76[v146] makeKeyAndVisible];
      v78 = sub_10000C774();
      v79 = *v58;
      if (*&v76[v69])
      {
        v80 = &off_1000CD970;
        v81 = *&v76[v69];
      }

      else
      {
        v81 = 0;
        v62 = 0;
        v80 = 0;
        v164[1] = 0;
        v164[2] = 0;
      }

      v90 = v158;
      v164[0] = v81;
      v164[3] = v62;
      v164[4] = v80;
      if (v79)
      {

        v91 = v79;
        if (sub_10000D644())
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v165) = 1;

          static Published.subscript.setter();

          sub_100074E64(v91, v164, sub_100068DCC, v78);
        }

        else
        {
          sub_10000DAA0(v91);
        }
      }

      else
      {
      }

      v92 = v157;
      sub_10000EF54(v164, &unk_1000DD110, sub_10000F014, &type metadata accessor for Optional, sub_100005F90);
      v93 = [v90 shortcutItem];
      if (v93)
      {
        v94 = v93;
        static Logger.general.getter();
        v95 = v94;
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v165 = swift_slowAlloc();
          *v98 = 136446466;
          v164[0] = v141;
          swift_getMetatypeMetadata();
          v99 = String.init<A>(describing:)();
          v101 = sub_1000036D0(v99, v100, &v165);

          *(v98 + 4) = v101;
          *(v98 + 12) = 2082;
          v102 = v95;
          v103 = [v102 description];
          v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v106 = v105;

          v90 = v158;
          v107 = sub_1000036D0(v104, v106, &v165);

          *(v98 + 14) = v107;
          _os_log_impl(&_mh_execute_header, v96, v97, "[%{public}s]: performing shortcut item from connectionOptions: %{public}s", v98, 0x16u);
          swift_arrayDestroy();

          (*(v159 + 8))(v157, v142);
        }

        else
        {

          (*(v159 + 8))(v92, v142);
        }

        sub_100067440(v95);
      }

      else
      {
        v108 = [v90 userActivities];
        sub_100003DDC(0, &qword_1000DC650, NSUserActivity_ptr);
        sub_10000F078(&qword_1000DD120, &qword_1000DC650, NSUserActivity_ptr);
        v109 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v110 = sub_10000F1FC(v109);

        if (v110)
        {
          v111 = v150;
          static Logger.general.getter();
          v95 = v110;
          v112 = Logger.logObject.getter();
          v113 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            *v114 = 136446466;
            v164[0] = v141;
            swift_getMetatypeMetadata();
            v115 = String.init<A>(describing:)();
            v117 = sub_1000036D0(v115, v116, &v165);

            *(v114 + 4) = v117;
            *(v114 + 12) = 2080;
            v164[0] = v95;
            v118 = v95;
            v119 = String.init<A>(reflecting:)();
            v121 = sub_1000036D0(v119, v120, &v165);

            *(v114 + 14) = v121;
            _os_log_impl(&_mh_execute_header, v112, v113, "[%{public}s]: continuing userActivity from connectionOptions: %s", v114, 0x16u);
            swift_arrayDestroy();
            v90 = v158;

            (*(v159 + 8))(v150, v142);
          }

          else
          {

            (*(v159 + 8))(v111, v142);
          }

          v135 = v95;
          v136 = 2;
        }

        else
        {
          v122 = [v149 stateRestorationActivity];
          if (!v122)
          {
            goto LABEL_42;
          }

          v123 = v122;
          v124 = v148;
          static Logger.general.getter();
          v95 = v123;
          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v164[0] = swift_slowAlloc();
            *v127 = 136446466;
            v128 = sub_100066FE8(v141);
            v130 = sub_1000036D0(v128, v129, v164);

            *(v127 + 4) = v130;
            *(v127 + 12) = 2080;
            v165 = v95;
            v131 = v95;
            v132 = String.init<A>(reflecting:)();
            v134 = sub_1000036D0(v132, v133, v164);

            *(v127 + 14) = v134;
            _os_log_impl(&_mh_execute_header, v125, v126, "[%{public}s]: restoring app from state restoration activity: %s", v127, 0x16u);
            swift_arrayDestroy();
            v90 = v158;

            (*(v159 + 8))(v148, v142);
          }

          else
          {

            (*(v159 + 8))(v124, v142);
          }

          v135 = v95;
          v136 = 0;
        }

        sub_1000670D8(v135, v136);
      }

LABEL_42:
      v137 = [v90 URLContexts];
      sub_100003DDC(0, &qword_1000DD128, UIOpenURLContext_ptr);
      sub_10000F078(&unk_1000DD130, &qword_1000DD128, UIOpenURLContext_ptr);
      v138 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000F21C(v138);

      sub_10000F75C();
      v139 = *v77;
      if (*v77)
      {
        v161 = *v77;
        v162 = *(v77 + 8);
        v163 = *(v77 + 24);
        v140 = v139;
        dispatch thunk of HealthAppAnalyticsManager.submitLaunchInteraction(using:)();

        return;
      }

LABEL_46:
      __break(1u);
      return;
    }

    static Logger.general.getter();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      *v84 = 136446466;
      v164[0] = ObjectType;
      swift_getMetatypeMetadata();
      v85 = String.init<A>(describing:)();
      v87 = sub_1000036D0(v85, v86, &v165);
      v160 = v16;
      v88 = v87;

      *(v84 + 4) = v88;
      *(v84 + 12) = 2082;
      *(v84 + 14) = sub_1000036D0(0xD00000000000001FLL, 0x80000001000A87C0, &v165);
      _os_log_impl(&_mh_execute_header, v82, v83, "[%{public}s]: %{public}s isProtectedDataAvailable is false. Ending early!", v84, 0x16u);
      swift_arrayDestroy();

      v89 = v160;
    }

    else
    {

      v89 = v16;
    }

    v37(v89, v12);
  }
}

uint64_t sub_100005CC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100005D04(uint64_t a1)
{
  if (!qword_1000DD0D0)
  {
    sub_10000414C(255, &qword_1000DD0C8, &type metadata accessor for Published.Publisher);
    sub_100006330();
    v1 = type metadata accessor for Publishers.Map();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD0D0);
    }
  }
}

uint64_t sub_100005D8C()
{
  type metadata accessor for LifecycleManager(0);
  v0 = swift_allocObject();
  result = sub_100005E18();
  qword_1000E3F50 = v0;
  return result;
}

uint64_t type metadata accessor for LifecycleManager(uint64_t a1)
{
  result = qword_1000DDCA8;
  if (!qword_1000DDCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005E18()
{
  *(v0 + 16) = [objc_allocWithZone(HKHealthStore) init];
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 65) = 0u;
  v1 = [objc_opt_self() standardUserDefaults];
  UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:"applicationDidEnterBackgroundWithNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];

  return v0;
}

void sub_100005F2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100005F90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100005FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100006058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000060BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100006120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100006184()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    type metadata accessor for DiskHealthExperienceStore();
    v1 = static DiskHealthExperienceStore.shared.getter();
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t type metadata accessor for CloudSyncStartupManager(uint64_t a1)
{
  result = qword_1000DA9E8;
  if (!qword_1000DA9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006240()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for CloudSyncStartupManager(0);
    swift_allocObject();
    v3 = v2;
    v1 = sub_100006C40(v3);

    *(v0 + 40) = v1;
  }

  return v1;
}

void sub_1000062CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100006330()
{
  result = qword_1000DD0D8;
  if (!qword_1000DD0D8)
  {
    sub_10000414C(255, &qword_1000DD0C8, &type metadata accessor for Published.Publisher);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD0D8);
  }

  return result;
}

uint64_t sub_1000063A4()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProfileGradientView();
  static ProfileGradientView.preloadRenderPipelineStateIfNeeded()();
  if (qword_1000DA5A8 != -1)
  {
    swift_once();
  }

  v9 = *(qword_1000E3F50 + 16);
  v10 = sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v19[0] = "SkipStateRestoration";
  v19[1] = v10;
  v11 = v9;
  static DispatchQoS.userInteractive.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006A10(&unk_1000DD150, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005F90(0, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
  sub_100007E40(&unk_1000DD160, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v20 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  aBlock[4] = sub_1000061EC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CF680;
  v14 = _Block_copy(aBlock);
  v15 = v11;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100006A10(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005F90(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100007E40(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
  v16 = v24;
  v17 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v25 + 8))(v16, v17);
  (*(v22 + 8))(v8, v23);
}

uint64_t sub_1000068C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006900()
{
  if (!qword_1000DAF58)
  {
    v0 = type metadata accessor for UserDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAF58);
    }
  }
}

void sub_100006950(uint64_t a1)
{
  sub_100006900();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100006A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100006A58(uint64_t a1)
{
  v1 = [objc_opt_self() sharedInstanceForHealthStore:a1];
  v2 = [objc_opt_self() sharedApplication];
  [v1 setApplicationProvider:v2];
}

void sub_100006AF8(uint64_t a1)
{
  sub_1000062CC(319, &unk_1000DA9F8, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for LegacyObservable);
  if (v1 <= 0x3F)
  {
    sub_1000062CC(319, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100006C40(void *a1)
{
  v2 = v1;
  sub_1000062CC(0, &unk_1000DA9F8, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for LegacyObservable);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = __chkstk_darwin(v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  v12 = OBJC_IVAR____TtC6Health23CloudSyncStartupManager_lastKnownFirstRestoreState;
  v13 = type metadata accessor for CloudSyncRestoreState();
  (*(*(v13 - 8) + 56))(v2 + v12, 1, 1, v13);
  *(v2 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_notificationCenterObserver) = 0;
  v14 = type metadata accessor for CloudSyncStateObserver();
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v15 = objc_allocWithZone(v14);
  v16 = a1;
  *(v2 + 16) = CloudSyncStateObserver.init(healthStore:store:)();
  v17 = [objc_allocWithZone(HKCloudSyncControl) initWithHealthStore:v16];
  *(v2 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_cloudSyncControl) = v17;
  static LegacyObservable.create()();
  (*(v6 + 16))(v2 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_observable, v11, v5);
  v18 = *(v2 + 16);

  dispatch thunk of CloudSyncStateObserver.firstRestoreStateChangeHandler.setter();

  v19 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_weakInit();
  sub_100006F30();
  ObservableConvertible.afterChange(on:_:)();

  v20 = *(v6 + 8);
  v20(v9, v5);
  v20(v11, v5);
  return v2;
}

unint64_t sub_100006F30()
{
  result = qword_1000DAAD8;
  if (!qword_1000DAAD8)
  {
    sub_1000062CC(255, &unk_1000DA9F8, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for LegacyObservable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAD8);
  }

  return result;
}

uint64_t sub_100006FB8()
{
  v1 = v0;
  if (qword_1000DA520 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_cloudSyncControl);
  v3 = qword_1000E3CD8;
  v4 = String._bridgeToObjectiveC()();
  v16 = sub_100009A58;
  v17 = v1;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000099BC;
  v15 = &unk_1000CD620;
  v5 = _Block_copy(&v12);

  [v2 syncWithRequest:v3 reason:v4 completion:v5];
  _Block_release(v5);

  dispatch thunk of CloudSyncStateObserver.startFirstRestoreIfNeeded()();
  v6 = [objc_opt_self() defaultCenter];
  v7 = [objc_opt_self() mainQueue];
  v8 = swift_allocObject();
  swift_weakInit();
  v16 = sub_10001D4E8;
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001D39C;
  v15 = &unk_1000CD648;
  v9 = _Block_copy(&v12);

  v10 = [v6 addObserverForName:UIApplicationDidBecomeActiveNotification object:0 queue:v7 usingBlock:v9];

  _Block_release(v9);
  *(v1 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_notificationCenterObserver) = v10;
  return swift_unknownObjectRelease();
}

uint64_t sub_10000723C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100007274()
{
  v0 = [objc_allocWithZone(HKChangesSyncRequest) initWithPush:0 pull:1 lite:1];
  v1 = [objc_allocWithZone(HKContextSyncRequest) initWithPush:1 pull:1];
  v2 = [objc_allocWithZone(HKStateSyncRequest) init];
  v3 = objc_allocWithZone(HKMedicalIDSyncRequest);
  v4 = v0;
  v5 = v1;
  v6 = v2;
  v7 = [v3 init];
  v8 = [objc_allocWithZone(HKSummarySharingSyncRequest) initWithPush:0 pull:1];
  v9 = [objc_allocWithZone(HKCloudSyncRequest) initWithChangesSyncRequest:v4 contextSyncRequest:v5 stateSyncRequest:v6 medicalIDSyncRequest:v7 summarySharingSyncRequest:v8];

  return v9;
}

id sub_1000073BC()
{
  result = sub_100007274();
  qword_1000E3CD8 = result;
  return result;
}

uint64_t sub_1000073E8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 BOOLForKey:v8];

  if (v9)
  {
    static Logger.general.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136446210;
      v14 = _typeName(_:qualified:)();
      v16 = sub_1000036D0(v14, v15, &v26);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] FeedItemFetchRequestNoFaults ENABLED", v12, 0xCu);
      sub_100003B90(v13);
    }

    return (*(v1 + 8))(v6, v0);
  }

  else
  {
    static Logger.general.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      v22 = _typeName(_:qualified:)();
      v24 = sub_1000036D0(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}s] FeedItemFetchRequestNoFaults DISABLED", v20, 0xCu);
      sub_100003B90(v21);
    }

    return (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_10000771C(uint64_t a1)
{
  sub_100006120(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000077A8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136446210;
    v16 = _typeName(_:qualified:)();
    v27 = v7;
    v18 = v1;
    v19 = sub_1000036D0(v16, v17, aBlock);

    *(v14 + 4) = v19;
    v1 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] enqueuing interactive generation", v14, 0xCu);
    sub_100003B90(v15);

    v3 = v28;

    (*(v8 + 8))(v10, v27);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  *(v21 + 24) = v2;
  aBlock[4] = sub_10001CE84;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000D0380;
  v22 = _Block_copy(aBlock);

  v23 = v29;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100007D04(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100006120(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100007EA4(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
  v24 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v33 + 8))(v24, v3);
  return (*(v30 + 8))(v23, v31);
}

uint64_t sub_100007C74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007D04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007D94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007DDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_100006058(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007E40(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_100005F90(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007EA4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_100006120(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007F08()
{
  v1 = v0;
  v2 = *v0;
  sub_100006120(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
  v10 = static NSOperationQueue.utility.getter();
  v11 = sub_100006184();
  v33[3] = type metadata accessor for DiskHealthExperienceStore();
  v33[4] = &protocol witness table for DiskHealthExperienceStore;
  v33[0] = v11;
  v12 = objc_allocWithZone(type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightOperation());
  v13 = HealthExperienceStoreIncrementalCoreSpotlightOperation.init(store:)();
  [v10 addOperation:v13];

  type metadata accessor for MedicalIDCache();
  v14 = static MedicalIDCache.primary.getter();
  dispatch thunk of MedicalIDCache.enqueueMedicalIDFetch()();

  sub_100006240();
  sub_100006FB8();

  static Logger.general.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v9;
    v33[0] = v18;
    v19 = v7;
    v20 = v18;
    *v17 = 136446210;
    v21 = _typeName(_:qualified:)();
    v23 = sub_1000036D0(v21, v22, v33);
    v31 = v6;
    v24 = v5;
    v25 = v2;
    v26 = v23;

    *(v17 + 4) = v26;
    v2 = v25;
    v5 = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "[[%{public}s]] enqueueStartupOperations finished", v17, 0xCu);
    sub_100003B90(v20);

    (*(v19 + 8))(v32, v31);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_1000073E8();
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v1;
  v28[5] = v2;

  sub_100084B64(0, 0, v5, &unk_1000B0E90, v28);
}

uint64_t sub_1000082D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008310(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100008354(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004BB0C;

  return sub_10000C040(a1, v4);
}

uint64_t sub_10000840C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100018D6C;

  return sub_1000084CC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000084CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_10000858C, 0, 0);
}

uint64_t sub_10000858C()
{
  v15 = v0;
  sub_100008714();

  static Logger.general.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = _typeName(_:qualified:)();
    v11 = sub_1000036D0(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "[[%{public}s]] Finished submiting entities to spotlight", v7, 0xCu);
    sub_100003B90(v8);
  }

  (*(v5 + 8))(v4, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100008714()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    type metadata accessor for AppIntentsManager();
    v1 = swift_allocObject();
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_100008884(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  if (a1)
  {
    static Logger.cloudSync.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = a3;
      v32 = v16;
      *v15 = 136315138;
      type metadata accessor for CloudSyncStartupManager(0);

      v17 = String.init<A>(describing:)();
      v19 = sub_1000036D0(v17, v18, &v32);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: Successfully requested lite sync pull, context sync and state sync.", v15, 0xCu);
      sub_100003B90(v16);
    }

    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    static Logger.cloudSync.getter();

    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = a3;
      v32 = v24;
      *v23 = 136315394;
      type metadata accessor for CloudSyncStartupManager(0);

      v25 = String.init<A>(describing:)();
      v27 = sub_1000036D0(v25, v26, &v32);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v31 = a2;
      swift_errorRetain();
      sub_1000062CC(0, &qword_1000DD580, sub_100008C14, &type metadata accessor for Optional);
      v28 = String.init<A>(describing:)();
      v30 = sub_1000036D0(v28, v29, &v32);

      *(v23 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s: Failed to request lite sync pull, context sync and state sync with error: %s.", v23, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v7 + 8))(v10, v6);
  }
}

unint64_t sub_100008C14()
{
  result = qword_1000DB730;
  if (!qword_1000DB730)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DB730);
  }

  return result;
}

uint64_t type metadata accessor for SummaryFeedViewController(uint64_t a1)
{
  result = qword_1000DCBD0;
  if (!qword_1000DCBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100008D68(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3 + qword_1000DCB60;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = xmmword_1000AFB70;
  *(v3 + qword_1000DCB68) = 0;
  v9 = (v3 + qword_1000DCB70);
  type metadata accessor for SidebarDataSourceItem();
  *v9 = static SidebarDataSourceItem.summarySidebarItemIdentifier.getter();
  v9[1] = v10;
  *(v3 + qword_1000DCB98) = 0;
  *(v3 + qword_1000DCBA0) = 0;
  *(v3 + qword_1000DCBA8) = 0;
  v11 = (v3 + qword_1000DCBB0);
  v12 = [objc_allocWithZone(type metadata accessor for ProfileGradientWithFadeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = ProfileGradientWithFadeView.gradientView.getter();
  dispatch thunk of ProfileGradientView.delayAnimation.setter();

  *v11 = v12;
  v11[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(v4 + qword_1000DCBB8) = 0;
  *(v4 + qword_1000DCBC8) = 0;
  sub_10000ACE8(a1, v4 + qword_1000DCB80);
  *(v4 + qword_1000DCB78) = a2;
  v14 = a2;
  dispatch thunk of PinnedContentManagerProvider.manager(for:)();
  sub_100014D24(&v33, v4 + qword_1000DCB88);
  *(v4 + qword_1000DCB90) = a3;
  v34 = type metadata accessor for EmptyGradientColorProvider();
  v35 = &protocol witness table for EmptyGradientColorProvider;
  sub_10000AD4C(&v33);

  EmptyGradientColorProvider.init()();
  sub_100014D24(&v33, v4 + qword_1000DCBC0);
  sub_10000ACE8(a1, &v33);
  v15 = swift_allocObject();
  sub_100014D24(&v33, v15 + 16);
  *(v15 + 56) = v14;
  *(v15 + 64) = a3;
  v16 = v14;

  v17 = PlatformTabCollectionViewController.init(makeDataSource:)();
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 mainBundle];
  v36._object = 0x80000001000A7710;
  v21._countAndFlagsBits = 0x7972616D6D7553;
  v21._object = 0xE700000000000000;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v36);

  v23 = String._bridgeToObjectiveC()();

  [v19 setTitle:v23];

  v24 = [v18 mainBundle];
  v37._object = 0x80000001000A7710;
  v25._countAndFlagsBits = 0x7972616D6D7553;
  v25._object = 0xE700000000000000;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v37);

  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() systemImageNamed:v27];

  v29 = objc_allocWithZone(UITabBarItem);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v29 initWithTitle:v30 image:v28 selectedImage:0];

  [v19 setTabBarItem:v31];
  sub_100003B90(a1);
  return v19;
}

uint64_t sub_100009174()
{
  sub_100003B90((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

void *sub_1000091C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000B210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000091E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100009238(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = HKDisplayCategoryIdentifierToString();
  if (!v6)
  {
    static Logger.dataSource.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = a1;
      v24 = v19;
      *v18 = 136315138;
      type metadata accessor for HKDisplayCategoryIdentifier(0);
      v20 = String.init<A>(describing:)();
      v22 = sub_1000036D0(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[Internal Settings] Could not get category name for %s", v18, 0xCu);
      sub_100003B90(v19);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._object = 0x80000001000AB220;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  if (!String.hasPrefix(_:)(v11))
  {
    return v8;
  }

  v12 = String.count.getter();
  v13 = String.count.getter();
  v14 = __OFSUB__(v12, v13);
  result = v12 - v13;
  if (!v14)
  {
    sub_1000094C0(result, v8, v10);

    v8 = static String._fromSubstring(_:)();

    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000094C0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

unint64_t sub_10000957C()
{
  result = qword_1000DC3B0;
  if (!qword_1000DC3B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC3B0);
  }

  return result;
}

id sub_1000095C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_100009630(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000968C(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100009704(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_10000968C(255, a3, a4, a5 & 1);
    v6 = type metadata accessor for _ContiguousArrayStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void *sub_100009764(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_100009704(0, a5, a6, a7, 1);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000968C(0, a6, a7, 1);
    swift_arrayInitWithCopy();
  }

  return v15;
}

uint64_t sub_1000098C0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10000C31C(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1000099BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

char *sub_100009A60(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TabIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168[3] = type metadata accessor for DiskHealthExperienceStore();
  v168[4] = &protocol witness table for DiskHealthExperienceStore;
  v168[0] = a2;
  v12 = OBJC_IVAR____TtC6Health16TabBarController_providedHealthStore;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_providedHealthStore) = a1;
  v13 = v12;
  v155 = v12;
  v14 = OBJC_IVAR____TtC6Health16TabBarController_providedHealthExperienceStore;
  v154 = OBJC_IVAR____TtC6Health16TabBarController_providedHealthExperienceStore;
  sub_10000ACE8(v168, a4 + OBJC_IVAR____TtC6Health16TabBarController_providedHealthExperienceStore);
  v15 = OBJC_IVAR____TtC6Health16TabBarController_pinnedContentManagerProvider;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_pinnedContentManagerProvider) = a3;
  v16 = a1;

  v136 = a3;
  dispatch thunk of PinnedContentManagerProvider.manager(for:)();
  sub_10000ACE8(&v167, a4 + OBJC_IVAR____TtC6Health16TabBarController_pinnedContentManager);
  sub_10000ACE8(a4 + v14, &aBlock);
  v17 = *&v13[a4];
  v18 = *(a4 + v15);
  v19 = objc_allocWithZone(type metadata accessor for SummaryFeedViewController(0));
  v20 = v17;

  v21 = sub_100008D68(&aBlock, v20, v18);

  v22 = objc_allocWithZone(HKNavigationController);
  v140 = v21;
  v23 = [v22 initWithRootViewController:v21];
  v24 = [v23 navigationBar];
  [v24 setPrefersLargeTitles:1];

  v150 = objc_opt_self();
  v25 = [v150 mainBundle];
  v169._object = 0x80000001000A7710;
  v26._countAndFlagsBits = 0x7972616D6D7553;
  v26._object = 0xE700000000000000;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v169._countAndFlagsBits = 0xD000000000000011;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v169)._countAndFlagsBits;

  v28 = String._bridgeToObjectiveC()();
  v149 = objc_opt_self();
  v29 = [v149 systemImageNamed:v28];

  v30 = enum case for TabIdentifier.TopLevelTabIdentifier.summary(_:);
  v148 = type metadata accessor for TabIdentifier.TopLevelTabIdentifier();
  v31 = *(v148 - 8);
  v147 = *(v31 + 104);
  v146 = v31 + 104;
  v147(v11, v30, v148);
  v144 = enum case for TabIdentifier.topLevel(_:);
  v32 = *(v9 + 104);
  v145 = v9 + 104;
  v143 = v32;
  v153 = v8;
  v32(v11);
  v151 = v11;
  TabIdentifier.identifier.getter();
  v33 = *(v9 + 8);
  v152 = v9 + 8;
  v142 = v33;
  v33(v11, v8);
  v34 = swift_allocObject();
  *(v34 + 16) = v23;
  v35 = objc_allocWithZone(UITab);
  v139 = v23;
  v36 = String._bridgeToObjectiveC()();

  v37 = String._bridgeToObjectiveC()();

  v165 = sub_1000099B8;
  v166 = v34;
  aBlock = _NSConcreteStackBlock;
  v162 = 1107296256;
  v163 = sub_1000095C8;
  v164 = &unk_1000CEEB8;
  v38 = _Block_copy(&aBlock);

  v39 = [v35 initWithTitle:v36 image:v29 identifier:v37 viewControllerProvider:v38];
  _Block_release(v38);

  v40 = OBJC_IVAR____TtC6Health16TabBarController_summaryTab;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_summaryTab) = v39;
  [v39 setPreferredPlacement:5];
  v41 = *(a4 + v40);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v43 = HKUIJoinStringsForAutomationIdentifier();

  [v41 setAccessibilityIdentifier:v43];
  sub_10000ACE8(v154 + a4, &aBlock);
  v44 = *&v155[a4];
  sub_10000ACE8(&v167, v160);
  v45 = objc_allocWithZone(type metadata accessor for SharingOverviewViewController());
  v46 = v44;
  v47 = SharingOverviewViewController.init(healthExperienceStore:healthStore:pinnedContentManager:)();
  v48 = objc_allocWithZone(HKNavigationController);
  v138 = v47;
  v49 = [v48 initWithRootViewController:v47];
  v50 = [v49 navigationBar];
  [v50 setPrefersLargeTitles:1];

  v51 = [v150 mainBundle];
  v170._object = 0x80000001000A7760;
  v52._countAndFlagsBits = 0x676E6972616853;
  v52._object = 0xE700000000000000;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v170._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v51, v53, v170);

  v54 = String._bridgeToObjectiveC()();
  v55 = [v149 systemImageNamed:v54];

  v56 = v151;
  v147(v151, enum case for TabIdentifier.TopLevelTabIdentifier.sharing(_:), v148);
  v57 = v153;
  v143(v56, v144, v153);
  TabIdentifier.identifier.getter();
  v142(v56, v57);
  v58 = swift_allocObject();
  *(v58 + 16) = v49;
  v59 = objc_allocWithZone(UITab);
  v137 = v49;
  v60 = String._bridgeToObjectiveC()();

  v61 = String._bridgeToObjectiveC()();

  v165 = sub_10000C3BC;
  v166 = v58;
  aBlock = _NSConcreteStackBlock;
  v162 = 1107296256;
  v163 = sub_1000095C8;
  v164 = &unk_1000CEF08;
  v62 = _Block_copy(&aBlock);

  v63 = [v59 initWithTitle:v60 image:v55 identifier:v61 viewControllerProvider:v62];
  v64 = v62;
  v65 = v154;
  _Block_release(v64);

  v66 = OBJC_IVAR____TtC6Health16TabBarController_sharingTab;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_sharingTab) = v63;
  [v63 setPreferredPlacement:5];
  v67 = *(a4 + v66);
  v68 = Array._bridgeToObjectiveC()().super.isa;
  v69 = HKUIJoinStringsForAutomationIdentifier();

  [v67 setAccessibilityIdentifier:v69];
  v70 = v155;
  type metadata accessor for SearchViewController();
  sub_10000ACE8(v65 + a4, &aBlock);
  v71 = *&v70[a4];
  sub_10000ACE8(&v167, v160);
  v159 = 0;
  v158 = 0u;
  v157 = 0u;
  v72 = v71;
  v73 = SearchViewController.__allocating_init(healthExperienceStore:healthStore:pinnedContentManager:enhancedSearchResultProvider:)();
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_searchViewController) = v73;
  v74 = objc_allocWithZone(UISearchTab);
  v75 = v73;
  v76 = [v74 initWithViewControllerProvider:0];
  v77 = OBJC_IVAR____TtC6Health16TabBarController_searchTab;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_searchTab) = v76;
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    goto LABEL_21;
  }

  v79 = result;
  v80 = [result isiPad];

  countAndFlagsBits = v75;
  if (v80)
  {
    sub_10000ACE8(v65 + a4, &aBlock);
    sub_10000ACE8(&v167, v160);
    v81 = objc_allocWithZone(_s15CategoriesGroupCMa());
    v82 = sub_10000C138(&aBlock, v160);
    v83 = *&v70[a4];
    sub_10000ACE8(&v167, &aBlock);
    sub_10000ACE8(v65 + a4, v160);
    type metadata accessor for ProvidedViewContext();
    swift_allocObject();

    v84 = v83;
    v85 = ProvidedViewContext.init(healthStore:pinnedContentManagerProvider:pinnedContentManager:healthExperienceStore:)();
    v86 = sub_10000B89C(v85);
    sub_100003D8C(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1000AED70;
    v88 = *(a4 + v77);
    *(v87 + 32) = v88;
    *(v87 + 40) = v82;
    aBlock = v87;
    v89 = v88;
    v90 = v82;
    sub_10000BDB0(v86);
  }

  else
  {
    sub_100003D8C(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1000AE610;
    v92 = *(a4 + v77);
    *(v91 + 32) = v92;
    v93 = v92;
  }

  v155 = [objc_allocWithZone(HKNavigationController) init];
  v94 = [v155 navigationBar];
  [v94 setPrefersLargeTitles:1];

  v95 = [v150 mainBundle];
  v171._object = 0xEC000000656C7469;
  v96._countAndFlagsBits = 0x686372616553;
  v171._countAndFlagsBits = 0x7420686372616553;
  v96._object = 0xE600000000000000;
  v97._countAndFlagsBits = 0;
  v97._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v96, 0, v95, v97, v171);

  v98 = String._bridgeToObjectiveC()();
  v99 = [v149 __systemImageNamedSwift:v98];

  v100 = v151;
  v147(v151, enum case for TabIdentifier.TopLevelTabIdentifier.search(_:), v148);
  v101 = v153;
  v143(v100, v144, v153);
  TabIdentifier.identifier.getter();
  v142(v100, v101);
  v102 = swift_allocObject();
  v103 = countAndFlagsBits;
  *(v102 + 16) = countAndFlagsBits;
  v104 = objc_allocWithZone(UITabGroup);
  v154 = v103;
  v105 = String._bridgeToObjectiveC()();

  v106 = String._bridgeToObjectiveC()();

  sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
  v107 = Array._bridgeToObjectiveC()().super.isa;

  v165 = sub_1000099B8;
  v166 = v102;
  aBlock = _NSConcreteStackBlock;
  v162 = 1107296256;
  v163 = sub_1000095C8;
  v164 = &unk_1000CEF58;
  v108 = _Block_copy(&aBlock);

  v109 = [v104 initWithTitle:v105 image:v99 identifier:v106 children:v107 viewControllerProvider:v108];
  _Block_release(v108);

  v110 = OBJC_IVAR____TtC6Health16TabBarController_searchTabGroup;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_searchTabGroup) = v109;
  v111 = v109;
  v112 = [v111 children];
  v113 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v113 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v114 = v155;
  if (!result)
  {
    v117 = 0;
    goto LABEL_14;
  }

  if ((v113 & 0xC000000000000001) == 0)
  {
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v115 = *(v113 + 32);
      goto LABEL_11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v116 = v115;

  v117 = [v116 identifier];

  if (!v117)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = String._bridgeToObjectiveC()();
LABEL_14:
  }

  [v111 setDefaultChildIdentifier:v117];

  v118 = *(a4 + v110);
  [v118 setManagingNavigationController:v114];

  v119 = [*(a4 + v110) managingNavigationController];
  if (v119)
  {
    v120 = v119;
    v121 = [objc_allocWithZone(UITabBarItem) initWithTabBarSystemItem:8 tag:2];
    [v120 setTabBarItem:v121];
  }

  v122 = *(a4 + v110);
  v123 = Array._bridgeToObjectiveC()().super.isa;
  v124 = HKUIJoinStringsForAutomationIdentifier();

  [v122 setAccessibilityIdentifier:v124];
  [*(a4 + v110) setSidebarAppearance:1];
  [*(a4 + v110) setPreferredPlacement:6];
  v125 = type metadata accessor for TabBarController();
  v156.receiver = a4;
  v156.super_class = v125;
  v126 = objc_msgSendSuper2(&v156, "initWithNibName:bundle:", 0, 0);
  v127 = [v126 sidebar];
  v128 = Array._bridgeToObjectiveC()().super.isa;
  v129 = HKUIJoinStringsForAutomationIdentifier();

  [v127 setAccessibilityIdentifier:v129];
  sub_100003D8C(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1000AE610;
  v131 = *&v126[OBJC_IVAR____TtC6Health16TabBarController_summaryTab];
  *(v130 + 32) = v131;
  v132 = v131;
  v133 = Array._bridgeToObjectiveC()().super.isa;

  [v126 setTabs:v133];

  sub_10005117C();
  v134 = Array._bridgeToObjectiveC()().super.isa;

  [v126 setTabs:v134];

  [v126 setDelegate:v126];
  v135 = [v126 sidebar];
  [v135 setDelegate:v126];

  sub_100003B90(&v167);
  sub_100003B90(v168);
  return v126;
}

uint64_t sub_10000ACA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000ACE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000AD4C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_10000ADDC()
{
  v2 = type metadata accessor for HKTypeGroup();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v35 = &v32 - v7;
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = static HKTypeGroup.allBrowseGroups.getter();
  v11 = v10;
  v12 = _swiftEmptyArrayStorage;
  v38 = *(v10 + 16);
  if (v38)
  {
    v13 = 0;
    v36 = v3 + 16;
    v33 = (v3 + 8);
    v34 = (v3 + 32);
    v39 = v2;
    v32 = v10;
    do
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v1 = ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v14 = *(v3 + 72);
      (*(v3 + 16))(v9, v1 + v11 + v14 * v13, v2);
      v0 = v9;
      v15 = HKTypeGroup.categoryIdentifier.getter();
      v16 = static HKDisplayCategoryIdentifier.healthRecordsCategories.getter();
      if (*(v16 + 16) && (v17 = v16, Hasher.init(_seed:)(), v0 = v40, Hasher._combine(_:)(v15), v18 = Hasher._finalize()(), v19 = v17, v2 = v39, v20 = -1 << *(v19 + 32), v21 = v18 & ~v20, ((*(v19 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
      {
        v22 = ~v20;
        while (*(*(v19 + 48) + 8 * v21) != v15)
        {
          v21 = (v21 + 1) & v22;
          if (((*(v19 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:

        if (v15 != 7)
        {
          v23 = *v34;
          (*v34)(v35, v9, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41[0] = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v0 = v41;
            sub_1000091C4(0, v12[2] + 1, 1);
            v12 = v41[0];
          }

          v26 = v12[2];
          v25 = v12[3];
          if (v26 >= v25 >> 1)
          {
            v0 = v41;
            sub_1000091C4((v25 > 1), v26 + 1, 1);
            v12 = v41[0];
          }

          v12[2] = v26 + 1;
          v27 = v1 + v12 + v26 * v14;
          v2 = v39;
          v23(v27, v35, v39);
          v11 = v32;
          goto LABEL_5;
        }
      }

      (*v33)(v9, v2);
LABEL_5:
      ++v13;
    }

    while (v13 != v38);
  }

  v28 = v12[2];
  if (v28)
  {
    v40[0] = _swiftEmptyArrayStorage;
    v0 = v40;
    specialized ContiguousArray.reserveCapacity(_:)();
    v29 = 0;
    v39 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v38 = v3 + 16;
    v1 = (v3 + 8);
    while (v29 < v12[2])
    {
      v30 = v37;
      (*(v3 + 16))(v37, &v39[*(v3 + 72) * v29], v2);
      sub_10000B424(v30, v41);
      ++v29;
      (*v1)(v30, v2);
      v0 = v40;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v28 == v29)
      {

        return v40[0];
      }
    }

LABEL_25:
    __break(1u);
    (*v1)(v0, v2);

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_10000B244(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000091E4(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_10000B424(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for HKTypeGroup();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = HKTypeGroup.displayCategory.getter();
  v8 = [v7 displayName];
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v30 = v8;
  v31 = [v7 systemImage];
  [v7 categoryID];
  v29[1] = HKDisplayCategoryIdentifier.sidebarFeedItemIdentifier.getter();
  (*(v4 + 16))(v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = v3;
  v11 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v9, v6, v10);
  *(v12 + v11) = v7;
  v13 = objc_allocWithZone(UITab);
  v14 = v7;
  v15 = String._bridgeToObjectiveC()();

  v37 = sub_10009F2B4;
  v38 = v12;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000095C8;
  v36 = &unk_1000D0BF8;
  v16 = _Block_copy(&aBlock);

  v17 = v13;
  v19 = v30;
  v18 = v31;
  v20 = [v17 initWithTitle:v30 image:v31 identifier:v15 viewControllerProvider:v16];
  _Block_release(v16);

  sub_10000B84C();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000AE110;
  *(v21 + 32) = 6447444;
  *(v21 + 40) = 0xE300000000000000;
  v22 = HKTypeGroup.categoryIdentifier.getter();
  v23 = sub_100009238(v22);
  if (!v24)
  {
    v25 = HKTypeGroup.categoryIdentifier.getter();
    aBlock = 0xD00000000000001CLL;
    v34 = 0x80000001000AB4B0;
    v39 = v25;
    v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v26);

    v23 = aBlock;
    v24 = v34;
  }

  *(v21 + 48) = v23;
  *(v21 + 56) = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = HKUIJoinStringsForAutomationIdentifier();

  [v20 setAccessibilityIdentifier:v28];
  [v20 setAllowsHiding:0];

  *v32 = v20;
}

uint64_t sub_10000B7B0()
{
  v1 = type metadata accessor for HKTypeGroup();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10000B84C()
{
  if (!qword_1000DB6B0)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB6B0);
    }
  }
}

uint64_t sub_10000B89C(uint64_t a1)
{
  type metadata accessor for FoundationPluginBundleProvider();
  static FoundationPluginBundleProvider.sharedInstance.getter();
  v1 = dispatch thunk of PluginBundleProvider.availableTabProvidingPlugins.getter();

  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      sub_100009630(0, &qword_1000DB6E0, &protocol descriptor for PluginTabProviding);
      NSBundle.getPluginAppDelegateObject<A>(as:)();

      if (v14)
      {
        sub_100014D24(&v13, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1000096E8(0, v4[2] + 1, 1, v4);
        }

        v9 = v4[2];
        v8 = v4[3];
        if (v9 >= v8 >> 1)
        {
          v4 = sub_1000096E8((v8 > 1), v9 + 1, 1, v4);
        }

        v4[2] = v9 + 1;
        sub_100014D24(v15, &v4[5 * v9 + 4]);
      }

      else
      {
        sub_10000D544(&v13, &unk_1000DC470, &qword_1000DB6E0, &protocol descriptor for PluginTabProviding, sub_100055124);
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_21:

  v10 = sub_10000BACC(v4, a1);

  return v10;
}

uint64_t sub_10000BACC(uint64_t a1, uint64_t a2)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v25 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10000BFFC((v25 + 40 * v2), *(v25 + 40 * v2 + 24));
    v5 = dispatch thunk of PluginTabProviding.createTabs(context:)();
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v3 >> 62;
    if (v3 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      v11 = v24 + v8;
      if (__OFADD__(v24, v8))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v9)
      {
        v12 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v8)
    {
      goto LABEL_36;
    }

    v28 = v3;
    v30 = v2;
    v16 = v12 + 8 * v13 + 32;
    v27 = v8;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      sub_1000550B4(0, &qword_1000DC478, &type metadata accessor for Array);
      sub_10005517C();
      for (i = 0; i != v15; ++i)
      {
        v18 = sub_100054724(v29, i, v6);
        v20 = *v19;
        (v18)(v29, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
      swift_arrayInitWithCopy();
    }

    v3 = v28;
    v2 = v30;
    if (v27 >= 1)
    {
      v21 = *(v12 + 16);
      v22 = __OFADD__(v21, v27);
      v23 = v21 + v27;
      if (v22)
      {
        goto LABEL_37;
      }

      *(v12 + 16) = v23;
    }

LABEL_4:
    if (++v2 == v26)
    {
      return v3;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v8 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_10000BDC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007AE94(0, &qword_1000DC478, &qword_1000DC3B0, UITab_ptr);
          sub_10007AF9C(&qword_1000DC480, &qword_1000DC478, &qword_1000DC3B0, UITab_ptr);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_100054724(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10000BF7C()
{
  result = qword_1000DB660;
  if (!qword_1000DB660)
  {
    sub_10000968C(255, &qword_1000DB668, &protocol descriptor for UITraitDefinition, 1);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1000DB660);
  }

  return result;
}

void *sub_10000BFFC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000C040(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100018ED0;

  return v6(a1);
}

void *sub_10000C138(void *a1, void *a2)
{
  v5 = [objc_opt_self() mainBundle];
  v17._object = 0x80000001000AB460;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  v6._object = 0x80000001000AB440;
  v17._countAndFlagsBits = 0xD000000000000023;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v17);

  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();
  sub_10000ADDC();
  sub_10000957C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16.receiver = v2;
  v16.super_class = _s15CategoriesGroupCMa();
  v11 = objc_msgSendSuper2(&v16, "initWithTitle:image:identifier:children:viewControllerProvider:", v8, 0, v9, isa, 0);

  v12 = v11;
  [v12 setPreferredPlacement:6];
  [v12 setAllowsReordering:1];
  v13 = Array._bridgeToObjectiveC()().super.isa;
  v14 = HKUIJoinStringsForAutomationIdentifier();

  [v12 setAccessibilityIdentifier:v14];
  sub_100003B90(a2);
  sub_100003B90(a1);
  return v12;
}

uint64_t sub_10000C31C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_10000C3F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C44C(uint64_t a1)
{
  sub_100005F2C(319, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000039A4(319, &qword_1000DAF58, &type metadata for Bool, &type metadata accessor for UserDefault);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000C584(uint64_t a1)
{
  sub_100003DDC(319, &qword_1000DB100, UIApplicationShortcutItem_ptr);
  if (v1 <= 0x3F)
  {
    sub_10000C61C(319);
    if (v2 <= 0x3F)
    {
      sub_10000C6F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10000C61C(uint64_t a1)
{
  if (!qword_1000DD090)
  {
    type metadata accessor for URL();
    sub_10000C690(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DD090);
    }
  }
}

void sub_10000C690(uint64_t a1)
{
  if (!qword_1000DB108)
  {
    sub_100003DDC(255, &unk_1000DD0A0, UISceneOpenURLOptions_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB108);
    }
  }
}

void sub_10000C6F8(uint64_t a1)
{
  if (!qword_1000DB110)
  {
    sub_100003DDC(255, &qword_1000DC650, NSUserActivity_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DB110);
    }
  }
}

uint64_t sub_10000C774()
{
  v1 = OBJC_IVAR____TtC6Health13SceneDelegate____lazy_storage___introFlowManager;
  if (*(v0 + OBJC_IVAR____TtC6Health13SceneDelegate____lazy_storage___introFlowManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC6Health13SceneDelegate____lazy_storage___introFlowManager);
  }

  else
  {
    v3 = v0;
    type metadata accessor for HealthWelcomeFlowSignalProvider();
    swift_allocObject();
    v4 = HealthWelcomeFlowSignalProvider.init()();
    type metadata accessor for IntroFlowManager(0);
    v2 = swift_allocObject();
    Published.init(initialValue:)();
    v5 = (v2 + OBJC_IVAR____TtC6Health16IntroFlowManager_healthWelcomeFlowSignalProvider);
    *v5 = v4;
    v5[1] = &protocol witness table for HealthWelcomeFlowSignalProvider;
    type metadata accessor for HealthAppNotificationManager();
    *(v2 + OBJC_IVAR____TtC6Health16IntroFlowManager_healthAppNotificationManager) = HealthAppNotificationManager.__allocating_init()();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t type metadata accessor for IntroFlowManager(uint64_t a1)
{
  result = qword_1000DBE38;
  if (!qword_1000DBE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C8B4(uint64_t a1)
{
  sub_10000C98C(319, &qword_1000DD100, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000C98C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10000C9DC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinksCancellable;
  if (*(v0 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinksCancellable))
  {

    AnyCancellable.cancel()();
  }

  swift_allocObject();
  swift_weakInit();
  sub_10000CB1C();
  sub_10000CB7C(&qword_1000DB190, sub_10000CB1C, &protocol conformance descriptor for AnyPublisher<A, B>);
  v3 = Publisher<>.sink(receiveValue:)();

  *(v1 + v2) = v3;
}

uint64_t sub_10000CAE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000CB1C()
{
  if (!qword_1000DB188)
  {
    v0 = type metadata accessor for AnyPublisher();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB188);
    }
  }
}

uint64_t sub_10000CB7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000CBD8(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinks) = v2;
    sub_10000CC50();
  }

  return result;
}

uint64_t sub_10000CC50()
{
  v1 = v0;
  v71 = *v0;
  v2 = type metadata accessor for Logger();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v69 = &v65[-v7];
  __chkstk_darwin(v6);
  v70 = &v65[-v8];
  sub_100005F2C(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  v10 = __chkstk_darwin(v9 - 8);
  v68 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v65[-v12];
  v14 = type metadata accessor for DeepLinkContentKind(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v65[-v20];
  v22 = __chkstk_darwin(v19);
  v24 = &v65[-v23];
  __chkstk_darwin(v22);
  v26 = &v65[-v25];
  v27 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
  swift_beginAccess();
  sub_10000D450(&v1[v27], v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000D4E4(v13, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional, sub_100005F2C);
    static Logger.view.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v75 = v31;
      *v30 = 136446210;
      v74 = v71;
      swift_getMetatypeMetadata();
      v32 = String.init<A>(describing:)();
      v34 = sub_1000036D0(v32, v33, &v75);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s]: No pending deep link to execute", v30, 0xCu);
      sub_100003B90(v31);
    }

    (*(v72 + 8))(v5, v73);
    goto LABEL_5;
  }

  sub_10002E350(v13, v26);
  if (v1[OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinks] != 1)
  {
    v50 = v69;
    static Logger.view.getter();
    sub_10002E3B4(v26, v18);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v70 = v26;
      v54 = v53;
      v75 = swift_slowAlloc();
      *v54 = 136446466;
      v74 = v71;
      swift_getMetatypeMetadata();
      v55 = String.init<A>(describing:)();
      v57 = sub_1000036D0(v55, v56, &v75);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2082;
      sub_10002E3B4(v18, v21);
      v58 = String.init<A>(describingSensitive:)();
      v60 = v59;
      sub_10002E418(v18);
      v61 = sub_1000036D0(v58, v60, &v75);

      *(v54 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v51, v52, "[%{public}s]: deep link is not eligible for presentation %{public}s", v54, 0x16u);
      swift_arrayDestroy();

      (*(v72 + 8))(v50, v73);
      sub_10002E418(v70);
    }

    else
    {

      sub_10002E418(v18);
      (*(v72 + 8))(v50, v73);
      sub_10002E418(v26);
    }

LABEL_5:
    v35 = 0;
    return v35 & 1;
  }

  v69 = v1;
  v36 = v70;
  static Logger.view.getter();
  sub_10002E3B4(v26, v24);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v66 = v38;
    v40 = v39;
    v67 = swift_slowAlloc();
    v75 = v67;
    *v40 = 136446466;
    v74 = v71;
    swift_getMetatypeMetadata();
    v41 = String.init<A>(describing:)();
    v43 = v26;
    v44 = sub_1000036D0(v41, v42, &v75);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2082;
    sub_10002E3B4(v24, v21);
    v45 = String.init<A>(describingSensitive:)();
    v47 = v46;
    sub_10002E418(v24);
    v48 = v45;
    v26 = v43;
    v49 = sub_1000036D0(v48, v47, &v75);

    *(v40 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v37, v66, "[%{public}s]: executing pending deep link: %{public}s", v40, 0x16u);
    swift_arrayDestroy();

    (*(v72 + 8))(v70, v73);
  }

  else
  {

    sub_10002E418(v24);
    (*(v72 + 8))(v36, v73);
  }

  v62 = v68;
  v63 = v69;
  (*(v15 + 56))(v68, 1, 1, v14);
  swift_beginAccess();
  sub_10002E474(v62, &v63[v27]);
  swift_endAccess();
  v35 = sub_10002C54C(v26);
  sub_10002E418(v26);
  return v35 & 1;
}

uint64_t sub_10000D450(uint64_t a1, uint64_t a2)
{
  sub_100005F2C(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_10000D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_10000D644()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - v6;
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = objc_opt_self();
  if ([v10 isBuddyDisabled])
  {
    static Logger.advertisableFeatures.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315138;
      v15 = _typeName(_:qualified:)();
      v17 = sub_1000036D0(v15, v16, &v35);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Buddy explicitly disabled or in store demo mode.", v13, 0xCu);
      sub_100003B90(v14);
    }

    (*(v1 + 8))(v9, v0);
    return 0;
  }

  if ([v10 shouldShowBuddy])
  {
    static Logger.advertisableFeatures.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = sub_1000036D0(v23, v24, &v35);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%s] Should show due to version check or force state", v21, 0xCu);
      sub_100003B90(v22);
    }

    (*(v1 + 8))(v7, v0);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v26 = dispatch thunk of HealthWelcomeFlowSignalProviding.shouldShowHealthWelcomeFlowOnNextLaunch.getter();
    swift_unknownObjectRelease();
    if ((v26 & 1) == 0)
    {
      return 0;
    }

    static Logger.advertisableFeatures.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;
      v31 = _typeName(_:qualified:)();
      v33 = sub_1000036D0(v31, v32, &v35);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%s] Should show due to advertisable feature signal check", v29, 0xCu);
      sub_100003B90(v30);
    }

    (*(v1 + 8))(v4, v0);
  }

  return 1;
}

void sub_10000DAA0(void *a1)
{
  v72 = a1;
  v2 = *v1;
  v3 = type metadata accessor for Date();
  v71 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v69 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = &v63 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v63 - v13;
  v15 = __chkstk_darwin(v12);
  v68 = &v63 - v16;
  __chkstk_darwin(v15);
  v18 = &v63 - v17;
  if (qword_1000DA548 != -1)
  {
    swift_once();
  }

  v19 = qword_1000E3E28;
  if (sub_10000E740())
  {
    v65 = v14;
    v67 = v1;
    static Logger.general.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v66 = v2;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446210;
      v25 = _typeName(_:qualified:)();
      v64 = v8;
      v27 = sub_1000036D0(v25, v26, aBlock);
      v8 = v64;

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s]: Should check IH&A intro flow step", v23, 0xCu);
      sub_100003B90(v24);
    }

    v28 = *(v8 + 8);
    (v28)(v18, v7);
    v29 = *(v19 + 24);
    aBlock[6] = *(v19 + 16);
    aBlock[7] = v29;
    swift_beginAccess();
    sub_10000C98C(0, &qword_1000DBF70, &type metadata for String, &type metadata accessor for UserDefault);

    UserDefault.wrappedValue.setter();
    swift_endAccess();
    v30 = v70;
    Date.init()();
    v31 = v71;
    v71[2](v69, v30, v3);
    swift_beginAccess();
    sub_10004BA8C(0, &qword_1000DBF78, &type metadata accessor for Date, &type metadata accessor for UserDefault);
    UserDefault.wrappedValue.setter();
    swift_endAccess();
    (v31[1])(v30, v3);
    v32 = objc_opt_self();
    if ([v32 needsRequestedPermission])
    {
      v33 = v68;
      static Logger.general.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v71 = v28;
        v38 = v37;
        aBlock[0] = v37;
        *v36 = 136446210;
        v39 = _typeName(_:qualified:)();
        v41 = sub_1000036D0(v39, v40, aBlock);

        *(v36 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v34, v35, "[%{public}s]: IH&A needs requested permission, presenting flow", v36, 0xCu);
        sub_100003B90(v38);

        (v71)(v68, v7);
      }

      else
      {

        (v28)(v33, v7);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = 1;

      static Published.subscript.setter();
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = swift_allocObject();
      v60 = v72;
      *(v59 + 16) = v58;
      *(v59 + 24) = v60;
      aBlock[4] = sub_10004BAF0;
      aBlock[5] = v59;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100049C44;
      aBlock[3] = &unk_1000CE968;
      v61 = _Block_copy(aBlock);
      v62 = v60;

      [v32 presentInViewController:v62 completion:v61];
      _Block_release(v61);
    }

    else
    {
      v49 = v65;
      static Logger.general.getter();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock[0] = v53;
        *v52 = 136446210;
        v54 = _typeName(_:qualified:)();
        v56 = sub_1000036D0(v54, v55, aBlock);

        *(v52 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v50, v51, "[%{public}s]: IH&A prompting is not needed, continuing to IHR", v52, 0xCu);
        sub_100003B90(v53);
      }

      (v28)(v49, v7);
      v57 = [objc_allocWithZone(HKHealthStore) init];
      sub_100049C98(v72, v57);
    }
  }

  else
  {
    static Logger.general.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136446210;
      v46 = _typeName(_:qualified:)();
      v48 = sub_1000036D0(v46, v47, aBlock);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%{public}s]: IH&A dialog is throttled, moving on to notification authorization if necessary", v44, 0xCu);
      sub_100003B90(v45);
    }

    (*(v8 + 8))(v11, v7);
    sub_10000EAC4();
  }
}

uint64_t sub_10000E398()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10000E3D8()
{
  v0 = type metadata accessor for Date();
  __chkstk_darwin(v0);
  result = [objc_opt_self() currentOSBuild];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = [objc_opt_self() standardUserDefaults];
    type metadata accessor for IntroFlowThrottledCheck(0);
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;
    v8 = v6;
    UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
    static Date.distantPast.getter();
    result = UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
    qword_1000E3E28 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for IntroFlowThrottledCheck(uint64_t a1)
{
  result = qword_1000DC190;
  if (!qword_1000DC190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E5C0()
{
  if (!qword_1000DBF70)
  {
    v0 = type metadata accessor for UserDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBF70);
    }
  }
}

void sub_10000E610(uint64_t a1)
{
  sub_10000E5C0();
  if (v1 <= 0x3F)
  {
    sub_10000E6E8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000E6E8(uint64_t a1)
{
  if (!qword_1000DBF78)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for UserDefault();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBF78);
    }
  }
}

uint64_t sub_10000E740()
{
  sub_10000E5C0();
  v2 = v1;
  v3 = *(v1 - 8);
  __chkstk_darwin(v1);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E6E8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  if ([objc_opt_self() isRunningStoreDemoMode])
  {
    goto LABEL_2;
  }

  Date.init()();
  v29 = v2;
  v18 = OBJC_IVAR____TtC6Health23IntroFlowThrottledCheck__lastCheckDate;
  swift_beginAccess();
  (*(v7 + 16))(v9, v0 + v18, v6);
  v19 = v0;
  UserDefault.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  v22 = *(v11 + 8);
  v22(v14, v10);
  v22(v16, v10);
  v23 = OBJC_IVAR____TtC6Health23IntroFlowThrottledCheck__lastCheckVersion;
  swift_beginAccess();
  v24 = v19 + v23;
  v26 = v29;
  v25 = v30;
  (*(v3 + 16))(v30, v24, v29);
  UserDefault.wrappedValue.getter();
  (*(v3 + 8))(v25, v26);
  if (v31 != *(v19 + 16) || v32 != *(v19 + 24))
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21 <= 86400.0)
    {
      v17 = v27 ^ 1;
      return v17 & 1;
    }

    goto LABEL_8;
  }

  if (v21 > 86400.0)
  {
LABEL_8:
    v17 = 1;
    return v17 & 1;
  }

LABEL_2:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10000EAC4()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC6Health16IntroFlowManager_healthAppNotificationManager);
  v10 = dispatch thunk of HealthAppNotificationManager.getNotificationSettings()();
  v11 = [v10 authorizationStatus];

  if (v11)
  {
    static Logger.general.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v33 = v15;
      *v14 = 136446210;
      v16 = _typeName(_:qualified:)();
      v18 = sub_1000036D0(v16, v17, &v33);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s]: Not showing notification authorization, ending presentation", v14, 0xCu);
      sub_100003B90(v15);
    }

    (*(v3 + 8))(v6, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v33) = 0;

    return static Published.subscript.setter();
  }

  else
  {
    v20 = sub_100048594();
    static Logger.notifications.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v2;
      v33 = v30;
      *v23 = 136446210;
      v24 = _typeName(_:qualified:)();
      v32 = v20;
      v26 = v1;
      v27 = sub_1000036D0(v24, v25, &v33);

      *(v23 + 4) = v27;
      v1 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s]: Requesting notification authorization because not already determined", v23, 0xCu);
      sub_100003B90(v30);

      (*(v3 + 8))(v8, v31);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v9;
    v29[3] = v28;
    v29[4] = v1;

    dispatch thunk of HealthAppNotificationManager.requestAuthorization(addCriticalAlerts:completionHandler:)();
  }
}

uint64_t sub_10000EEDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EF14()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000EF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_10000EFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_10000F014()
{
  result = qword_1000DD4C0;
  if (!qword_1000DD4C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DD4C0);
  }

  return result;
}

uint64_t sub_10000F078(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003DDC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F0C8(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10000F210(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_10000F210(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_100056754(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_10000F210(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_10000F210(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void *sub_10000F21C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for URL();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v50 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100003DDC(0, &qword_1000DD128, UIOpenURLContext_ptr);
    sub_10000F078(&unk_1000DD130, &qword_1000DD128, UIOpenURLContext_ptr);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v51[1];
    v12 = v51[2];
    v13 = v51[3];
    v14 = v51[4];
    v15 = v51[5];
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v37[1] = v13;
  v19 = (v13 + 64) >> 6;
  v45 = (v49 + 8);
  v46 = (v8 + 8);
  *&v11 = 136446466;
  v38 = v11;
  v47 = v19;
  v48 = v12;
  v42 = v2;
  v39 = v7;
  v40 = v4;
  while (a1 < 0)
  {
    v26 = __CocoaSet.Iterator.next()();
    if (!v26)
    {
      return sub_10000F754(a1);
    }

    v51[0] = v26;
    sub_100003DDC(0, &qword_1000DD128, UIOpenURLContext_ptr);
    swift_dynamicCast();
    v25 = v52;
    v24 = v14;
    v49 = v15;
    if (!v52)
    {
      return sub_10000F754(a1);
    }

LABEL_18:
    static Logger.general.getter();
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51[0] = v44;
      *v30 = v38;
      v52 = ObjectType;
      swift_getMetatypeMetadata();
      v31 = String.init<A>(describing:)();
      v33 = v6;
      v34 = sub_1000036D0(v31, v32, v51);

      *(v30 + 4) = v34;
      v6 = v33;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v27;
      v35 = v43;
      *v43 = v25;
      v36 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s]: Opening URL: %@", v30, 0x16u);
      sub_10000EF54(v35, &qword_1000DAC20, &qword_1000DD140, NSObject_ptr, sub_1000686E4);

      sub_100003B90(v44);
      v4 = v40;

      v7 = v39;
    }

    (*v46)(v50, v7);
    v20 = [v27 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = [v27 options];
    sub_100067E04(v6, v21);

    result = (*v45)(v6, v4);
    v14 = v24;
    v12 = v48;
    v15 = v49;
    v19 = v47;
  }

  v22 = v14;
  v23 = v15;
  v24 = v14;
  if (v15)
  {
LABEL_14:
    v49 = (v23 - 1) & v23;
    v25 = *(*(a1 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v25)
    {
      return sub_10000F754(a1);
    }

    goto LABEL_18;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      return sub_10000F754(a1);
    }

    v23 = *(v12 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F75C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_10000F810();
    type metadata accessor for PinnedContentManager();
    type metadata accessor for HealthAppAnalyticsManager();
    swift_allocObject();
    v1 = HealthAppAnalyticsManager.init(healthStore:pinnedContentManager:)();
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_10000F810()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    type metadata accessor for PinnedContentManager();
    v2 = *(v0 + 16);
    v1 = PinnedContentManager.__allocating_init(healthStore:domain:)();
    *(v0 + 48) = v1;
  }

  return v1;
}

id sub_10000F888()
{
  v5 = *v0;
  v1 = sub_100051D68();
  if (v1)
  {
    v2 = v1;
    v3 = UINavigationController.rootViewController()();

    if (v3)
    {
      return v3;
    }
  }

  return v5;
}

uint64_t sub_10000F95C()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    v12[1] = ObjectType;
    *v7 = 136446466;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_1000036D0(v8, v9, v12);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000036D0(0xD00000000000001CLL, 0x80000001000A8850, v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s]: Lifecycle: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v4, v1);
  if (qword_1000DA5A8 != -1)
  {
    swift_once();
  }

  return sub_10000FB8C();
}

uint64_t sub_10000FB8C()
{
  v0 = type metadata accessor for OSSignpostID();
  v18 = *(v0 - 8);
  v19 = v0;
  __chkstk_darwin(v0);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LogCategory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = type metadata accessor for OSSignposter();
  v7 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.healthSubsystem.getter();
  (*(v4 + 104))(v6, enum case for LogCategory.general(_:), v3);
  LogCategory.rawValue.getter();
  (*(v4 + 8))(v6, v3);
  OSSignposter.init(subsystem:category:)();
  static OSSignpostID.exclusive.getter();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  v13 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "sceneWillEnterForeground_HKCountryMonitorControl", "", v10, 2u);
  [objc_opt_self() checkCurrentCountryWithHealthStore:*(v17[1] + 16)];
  v14 = static os_signpost_type_t.end.getter();
  v15 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v14, v15, "sceneWillEnterForeground_HKCountryMonitorControl", "", v10, 2u);

  (*(v18 + 8))(v2, v19);
  return (*(v7 + 8))(v9, v17[0]);
}

void sub_10000FEB0(void *a1)
{
  v1 = a1;
  sub_10000FEF8();
}

void sub_10000FEF8()
{
  v1 = type metadata accessor for DeepLinkActivityType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SummaryFeedViewController(0);
  v36.receiver = v0;
  v36.super_class = v5;
  objc_msgSendSuper2(&v36, "viewDidLoad");
  sub_100018B30();
  v6 = [objc_opt_self() mainBundle];
  v37._object = 0x80000001000A7710;
  v7._countAndFlagsBits = 0x7972616D6D7553;
  v7._object = 0xE700000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v37);

  (*(v2 + 104))(v4, enum case for DeepLinkActivityType.summary(_:), v1);
  v9 = static HAUserActivity.createActivity(title:restorationType:profileIdentifier:eligibleForSearch:eligibleForHandoff:eligibleForPrediction:)();
  (*(v2 + 8))(v4, v1);
  [v0 setUserActivity:v9];

  v10 = objc_opt_self();
  if ([v10 isAppleInternalInstall])
  {
    v11 = TapToRadarButtonDisplaying.makeTapToRadarButtonIfNeeded()();
    if (v11)
    {
      v12 = v11;
      v13 = [v0 navigationItem];
      [v13 setRightBarButtonItem:v12];
    }
  }

  v14 = [v10 sharedBehavior];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 features];

  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = [v16 summaryGradient];

  if (v17)
  {
    dispatch thunk of CompoundDataSourceCollectionViewController.dataSource.getter();
    type metadata accessor for SummaryFeedDataSource(0);
    v18 = *(swift_dynamicCastClassUnconditional() + qword_1000E3F20);

    v19 = type metadata accessor for SummaryPinnedContentDataSource(0);
    v34 = v19;
    v35 = &off_1000CDCF0;
    *&v33 = v18;
    v20 = type metadata accessor for SummaryPinnedContentGradientColorProvider();
    v21 = swift_allocObject();
    v22 = sub_1000190A0(&v33, v19);
    __chkstk_darwin(v22);
    v24 = &v32[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v25 + 16))(v24);
    v26 = sub_100019130(*v24, v21);
    sub_100003B90(&v33);
    v34 = v20;
    v35 = sub_100007D4C(&qword_1000DCD20, type metadata accessor for SummaryPinnedContentGradientColorProvider, &unk_1000AE9AC);
    *&v33 = v26;
    v27 = qword_1000DCBC0;
    swift_beginAccess();
    sub_100003B90(&v0[v27]);
    sub_100014D24(&v33, &v0[v27]);
    swift_endAccess();
    sub_100007D4C(&qword_1000DCD10, type metadata accessor for SummaryFeedViewController, &unk_1000AFCF8);
    GradientBackgroundPresenting.configureGradientBackground()();
  }

  v28 = [v0 collectionView];
  if (v28)
  {
    v29 = v28;

    isa = Array._bridgeToObjectiveC()().super.isa;
    v31 = HKUIJoinStringsForAutomationIdentifier();

    [v29 setAccessibilityIdentifier:v31];
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1000103F0()
{
  v1 = v0;
  type metadata accessor for PlatformTabCollectionViewController();
  v2 = method lookup function for CompoundDataSourceCollectionViewController();
  v2();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  type metadata accessor for HostViewCell();
  UICollectionView.registerCell<A>(_:)();

  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  type metadata accessor for EmptyStateCollectionViewCell();
  UICollectionView.registerCell<A>(_:)();

  v7 = [v1 collectionView];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  type metadata accessor for TitleEmptyStateCollectionViewCell();
  UICollectionView.registerCell<A>(_:)();
}

char *sub_100010514(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    sub_10000ACE8(v1 + 16, &v19);
    v6 = *(v1 + 56);
    v5 = *(v1 + 64);
    v7 = a1;
    v8 = v6;

    v9 = [v4 collectionView];
    type metadata accessor for SummaryFeedDataSource(0);
    swift_allocObject();
    v10 = sub_100010970(&v19, v8, v5, v9);

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(62);
    v12._object = 0x80000001000A8390;
    v12._countAndFlagsBits = 0xD00000000000003CLL;
    String.append(_:)(v12);
    v13 = a1;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1000106FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100010760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000107C4(uint64_t a1)
{
  sub_100010760(319, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100010760(319, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

char *sub_100010970(char *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v189 = a4;
  sub_10001093C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = __chkstk_darwin(v9);
  v165 = v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v164 = v154 - v14;
  sub_100010760(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  v16 = __chkstk_darwin(v15 - 8);
  v159 = v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v170 = v154 - v18;
  v19 = type metadata accessor for CloudSyncRestoreState();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v160 = v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012248(0, &qword_1000DDC00, sub_1000128CC, sub_1000129D0, &type metadata accessor for HideableDataSource.Visibility);
  v184 = v22;
  v188 = *(v22 - 8);
  __chkstk_darwin(v22);
  v183 = v154 - v23;
  v24 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v24 - 8);
  v182 = v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012248(0, &qword_1000DDBC8, sub_1000122C8, sub_10001277C, &type metadata accessor for HideableDataSource.Visibility);
  v176 = v26;
  v185 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v169 = v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v175 = v154 - v29;
  sub_100010760(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  v31 = __chkstk_darwin(v30 - 8);
  v187 = v154 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v168 = v154 - v33;
  v34 = type metadata accessor for Date();
  v180 = *(v34 - 8);
  v181 = v34;
  __chkstk_darwin(v34);
  v179 = v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012248(0, &qword_1000DDBB8, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource.Visibility);
  v174 = v36;
  v177 = *(v36 - 8);
  v37 = __chkstk_darwin(v36);
  v158 = v154 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v173 = v154 - v39;
  v166 = v11;
  v40 = *(v11 + 56);
  v167 = v10;
  v40(v5 + qword_1000DDA90, 1, 1, v10);
  v171 = v20;
  v42 = *(v20 + 56);
  v41 = v20 + 56;
  v172 = v19;
  v157 = v42;
  v42(v5 + qword_1000DDA98, 1, 1, v19);
  sub_10000ACE8(a1, v5 + qword_1000DDAD8);
  *(v5 + qword_1000DDAE0) = a2;
  *(v5 + qword_1000DDAE8) = a3;
  v43 = objc_opt_self();
  v44 = a2;

  v45 = [v43 standardUserDefaults];
  v191[3] = type metadata accessor for DefaultCloudSyncStateStore();
  v191[4] = &protocol witness table for DefaultCloudSyncStateStore;
  sub_10000AD4C(v191);
  DefaultCloudSyncStateStore.init(userDefaults:)();
  v46 = objc_allocWithZone(type metadata accessor for CloudSyncStateObserver());
  v47 = v44;
  *(v5 + qword_1000DDAA0) = CloudSyncStateObserver.init(healthStore:store:)();
  v48 = sub_100012A04(v47, a1, v189);
  v50 = v49;
  v51 = (v5 + qword_1000DDAA8);
  *v51 = v48;
  v51[1] = v49;
  swift_unknownObjectRetain();
  v52 = sub_100012F74(0, 1, 1, _swiftEmptyArrayStorage);
  v54 = v52[2];
  v53 = v52[3];
  if (v54 >= v53 >> 1)
  {
    v52 = sub_100012F74((v53 > 1), v54 + 1, 1, v52);
  }

  v52[2] = v54 + 1;
  v55 = &v52[2 * v54];
  v55[4] = v48;
  v55[5] = v50;
  sub_10000ACE8(a1, v191);
  v56 = v47;
  dispatch thunk of PinnedContentManagerProvider.manager(for:)();
  type metadata accessor for SummaryPinnedContentDataSource(0);
  swift_allocObject();
  v178 = v56;
  sub_100013180(v191, v56, &v190);
  v57 = qword_1000E3F20;
  *(v5 + qword_1000E3F20) = v58;
  v59 = objc_opt_self();
  v60 = [v59 sharedBehavior];
  if (!v60)
  {
    __break(1u);
    goto LABEL_42;
  }

  v61 = v60;
  v62 = [v60 features];

  if (!v62)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v63 = [v62 simplifiedLogging];

  if (v63)
  {
    v64 = v59;
    sub_10000ACE8(a1, v191);
    v65 = v178;
    dispatch thunk of PinnedContentManagerProvider.manager(for:)();
    type metadata accessor for DataLoggingSectionDataSource(0);
    swift_allocObject();
    v66 = sub_10008A664(v191, v65, &v190);

    v68 = v52[2];
    v67 = v52[3];
    if (v68 >= v67 >> 1)
    {
      v52 = sub_100012F74((v67 > 1), v68 + 1, 1, v52);
    }

    v69 = sub_100012734(&qword_1000DDC40, type metadata accessor for DataLoggingSectionDataSource, &protocol conformance descriptor for HideableDataSource<A>);
    v52[2] = v68 + 1;
    v70 = &v52[2 * v68];
    v70[4] = v66;
    v70[5] = v69;
    v59 = v64;
  }

  v71 = [v59 sharedBehavior];
  if (!v71)
  {
    goto LABEL_43;
  }

  v72 = v71;
  v73 = [v71 features];

  if (!v73)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v155 = v59;
  v74 = [v73 isPinnedInBrowse];

  if ((v74 & 1) == 0)
  {
    v75 = *&v57[v5];
    v76 = v52[2];
    v77 = v52[3];

    if (v76 >= v77 >> 1)
    {
      v52 = sub_100012F74((v77 > 1), v76 + 1, 1, v52);
    }

    v52[2] = v76 + 1;
    v78 = &v52[2 * v76];
    v78[4] = v75;
    v78[5] = &protocol witness table for CompoundSectionedDataSource;
  }

  sub_10000BFFC(a1, *(a1 + 3));
  dispatch thunk of HealthExperienceStore.viewContext.getter();
  static SourceProfile.primary.getter();
  type metadata accessor for SummaryFeedTrendsSectionDataSource();
  swift_allocObject();
  SummaryFeedTrendsSectionDataSource.init(context:sourceProfile:additionalPredicates:significantTrendsDataSourceLoadingCompletion:)();
  v79 = *(v177 + 104);
  v186 = enum case for HideableDataSource.Visibility.visible<A>(_:);
  v154[1] = v177 + 104;
  v154[0] = v79;
  v79(v173);
  sub_100012248(0, &qword_1000DDC08, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource);
  swift_allocObject();
  v80 = HideableDataSource.init(source:visibility:)();
  *(v5 + qword_1000DDAB0) = v80;
  v81 = v52[2];
  v82 = v52[3];

  if (v81 >= v82 >> 1)
  {
    v52 = sub_100012F74((v82 > 1), v81 + 1, 1, v52);
  }

  v156 = v41;
  v163 = v5;
  v83 = sub_100012F10(&qword_1000DDC10, &qword_1000DDC08, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0);
  v52[2] = v81 + 1;
  v84 = &v52[2 * v81];
  v84[4] = v80;
  v84[5] = v83;
  v85 = v178;
  v86 = [v178 profileIdentifier];
  sub_10000BFFC(a1, *(a1 + 3));
  v87 = dispatch thunk of HealthExperienceStore.viewContext.getter();
  v57 = v168;
  Feed.Kind.earliestDisplayDateUpdated.getter();
  v89 = v180;
  v88 = v181;
  if (v180[6](v57, 1, v181) == 1)
  {
    goto LABEL_47;
  }

  v90 = a1;
  v91 = v179;
  v89[4](v179, v57, v88);
  v92 = v187;
  v89[2](v187, v91, v88);
  (v89[7])(v92, 0, 1, v88);
  v93 = objc_allocWithZone(type metadata accessor for FeedObjectDataSource(0));
  v94 = v86;
  v162 = v94;
  v168 = v87;
  v95 = sub_100015230(2, v86, v92, v168);

  sub_100012458(0);
  type metadata accessor for LoadingPersonalizedHighlightsDataSource(0);
  swift_allocObject();
  v96 = v95;
  sub_100015A04();
  PrimarySecondaryDataSource.__allocating_init(primaryDataSource:secondaryDataSource:activeDataSourceResolver:)();
  v187 = v90;
  sub_10000ACE8(v90, v191);
  type metadata accessor for HighlightsFeedWithShowAllHighlightsDataSource(0);
  swift_allocObject();
  v97 = v189;
  v98 = v189;
  v99 = v85;
  sub_100015FBC(v191, v99, v97);

  v178 = v98;
  sub_1000122C8(0);

  PrimarySecondaryDataSource.__allocating_init(primaryDataSource:secondaryDataSource:activeDataSourceResolver:)();
  v101 = v185 + 104;
  v100 = *(v185 + 104);
  v102 = v186;
  v103 = v176;
  (v100)(v175, v186, v176);
  sub_100012248(0, &qword_1000DDC18, sub_1000122C8, sub_10001277C, &type metadata accessor for HideableDataSource);
  swift_allocObject();
  v104 = HideableDataSource.init(source:visibility:)();

  (v180[1])(v179, v181);
  dispatch thunk of HideableDataSource.wrappedSource.getter();
  LOBYTE(v95) = dispatch thunk of PrimarySecondaryDataSource.shouldUsePrimaryDataSource.getter();

  LODWORD(v181) = enum case for HideableDataSource.Visibility.hidden<A>(_:);
  if (v95)
  {
    v105 = v102;
  }

  else
  {
    v105 = enum case for HideableDataSource.Visibility.hidden<A>(_:);
  }

  v185 = v101;
  v180 = v100;
  (v100)(v169, v105, v103);
  dispatch thunk of HideableDataSource.visibility.setter();
  v106 = v163;
  *(v163 + qword_1000E3F28) = v104;
  v107 = v52[2];
  v108 = v52[3];
  swift_retain_n();
  if (v107 >= v108 >> 1)
  {
    v52 = sub_100012F74((v108 > 1), v107 + 1, 1, v52);
  }

  v109 = sub_100012F10(&qword_1000DDC20, &qword_1000DDC18, sub_1000122C8, sub_10001277C);
  v52[2] = v107 + 1;
  v110 = &v52[2 * v107];
  v110[4] = v104;
  v110[5] = v109;
  v111 = v187;
  sub_10000ACE8(v187, v191);
  type metadata accessor for GetMoreFromHealthDataSource(0);
  swift_allocObject();
  v112 = v178;
  v113 = sub_100016D90(v191, v189);

  *(v106 + qword_1000DDAB8) = v113;
  v114 = v52[2];
  v115 = v52[3];

  v161 = v104;
  if (v114 >= v115 >> 1)
  {
    v52 = sub_100012F74((v115 > 1), v114 + 1, 1, v52);
  }

  v116 = sub_100012734(&qword_1000DDC28, type metadata accessor for GetMoreFromHealthDataSource, &protocol conformance descriptor for HideableDataSource<A>);
  v52[2] = v114 + 1;
  v117 = &v52[2 * v114];
  v117[4] = v113;
  v117[5] = v116;
  sub_1000128CC(0);
  sub_10000ACE8(v111, v191);
  v118 = swift_allocObject();
  sub_1000091BC(v191, v118 + 16);
  *(v118 + 56) = v189;
  v119 = v112;
  static DispatchTime.now()();
  DelayedDataSource.__allocating_init(delay:dataSource:)();
  v120 = *(v188 + 104);
  v188 += 104;
  v120(v183, v186, v184);
  sub_100012248(0, &qword_1000DDC30, sub_1000128CC, sub_1000129D0, &type metadata accessor for HideableDataSource);
  swift_allocObject();
  v121 = HideableDataSource.init(source:visibility:)();
  *(v106 + qword_1000DDAC0) = v121;
  v123 = v52[2];
  v122 = v52[3];

  if (v123 >= v122 >> 1)
  {
    v52 = sub_100012F74((v122 > 1), v123 + 1, 1, v52);
  }

  v124 = sub_100012F10(&qword_1000DDC38, &qword_1000DDC30, sub_1000128CC, sub_1000129D0);
  v52[2] = v123 + 1;
  v125 = &v52[2 * v123];
  v125[4] = v121;
  v125[5] = v124;
  sub_10000ACE8(v187, v191);
  v126 = swift_allocObject();
  sub_1000091BC(v191, v126 + 16);
  *(v126 + 56) = v189;
  v127 = v119;
  static DispatchTime.now()();
  DelayedDataSource.__allocating_init(delay:dataSource:)();
  v120(v183, v186, v184);
  swift_allocObject();
  v128 = HideableDataSource.init(source:visibility:)();
  *(v106 + qword_1000DDAC8) = v128;
  v129 = v52[2];
  v130 = v52[3];

  if (v129 >= v130 >> 1)
  {
    v52 = sub_100012F74((v130 > 1), v129 + 1, 1, v52);
  }

  v52[2] = v129 + 1;
  v131 = &v52[2 * v129];
  v131[4] = v128;
  v131[5] = v124;
  *(v106 + qword_1000DDAD0) = v189;
  v132 = v127;

  v57 = CompoundSectionedDataSource.init(_:)();

  sub_1000181D0();
  v133 = *&v57[qword_1000DDAA0];
  v134 = v170;
  dispatch thunk of CloudSyncStateObserver.cachedFirstRestoreState.getter();

  v135 = v171;
  v136 = v172;
  v137 = (*(v171 + 48))(v134, 1, v172);
  v138 = v187;
  if (v137 == 1)
  {

    sub_10001870C(v134, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
LABEL_40:
    v148 = v165;
    sub_100018410(v165);
    v149 = [objc_opt_self() mainQueue];
    swift_allocObject();
    swift_weakInit();
    sub_100012734(&qword_1000DAAD8, sub_10001093C, &protocol conformance descriptor for LegacyObservable<A>);
    v150 = v164;
    v151 = v167;
    ObservableConvertible.afterChange(on:_:)();

    v152 = *(v166 + 8);
    v152(v148, v151);
    v152(v150, v151);
    sub_100003B90(v138);
    return v57;
  }

  v139 = v160;
  (*(v135 + 32))(v160, v134, v136);
  if ((CloudSyncRestoreState.isOngoing.getter() & 1) == 0)
  {
    (*(v135 + 8))(v139, v136);

    goto LABEL_40;
  }

  v140 = v159;
  (*(v135 + 16))(v159, v139, v136);
  v157(v140, 0, 1, v136);
  v141 = qword_1000DDA98;
  swift_beginAccess();
  sub_10001877C(v140, &v57[v141], &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  swift_endAccess();
  v142 = v158;
  v143 = v174;
  (v154[0])(v158, v181, v174);
  if (HAFeatureFlagShowTrendsInSummary())
  {
    (*(v177 + 16))(v173, v142, v143);
    dispatch thunk of HideableDataSource.visibility.setter();
  }

  (*(v177 + 8))(v142, v143);
  (v180)(v175, v181, v176);

  dispatch thunk of HideableDataSource.visibility.setter();

  v144 = [v155 sharedBehavior];
  if (v144)
  {
    v145 = v144;
    v146 = [v144 features];

    if (v146)
    {

      v147 = [v146 isPinnedInBrowse];

      if ((v147 & 1) == 0)
      {

        dispatch thunk of PrimarySecondaryDataSource.primaryDataSource.getter();

        dispatch thunk of DownloadingPinningDataSource.showDownloadingItem()();
      }

      (*(v135 + 8))(v139, v136);
      goto LABEL_40;
    }

    goto LABEL_46;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  sub_10001870C(v57, &qword_1000DB158, &type metadata accessor for Date);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10001220C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100012248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1000122C8(uint64_t a1)
{
  if (!qword_1000DDBD0)
  {
    type metadata accessor for HighlightsFeedWithShowAllHighlightsDataSource(255);
    sub_100012458(255);
    sub_100012734(&qword_1000DDBE8, sub_100012458, &protocol conformance descriptor for PrimarySecondaryDataSource<A, B>);
    v1 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DDBD0);
    }
  }
}

uint64_t type metadata accessor for FeedObjectDataSource(uint64_t a1)
{
  result = qword_1000DB368;
  if (!qword_1000DB368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012458(uint64_t a1)
{
  if (!qword_1000DDBD8)
  {
    type metadata accessor for FeedObjectDataSource(255);
    type metadata accessor for LoadingPersonalizedHighlightsDataSource(255);
    sub_100012734(&qword_1000DDBE0, type metadata accessor for FeedObjectDataSource, &protocol conformance descriptor for JustObservingFetchedResultsControllerDataSource<A>);
    v1 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DDBD8);
    }
  }
}

void sub_100012514(uint64_t a1)
{
  sub_1000125F0(319, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1000125F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100012654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for LoadingPersonalizedHighlightsDataSource(uint64_t a1)
{
  result = qword_1000DD9D0;
  if (!qword_1000DD9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000127E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PersonalizedFeedDataSource(255);
    v7 = sub_100012940(&qword_1000DC080, type metadata accessor for PersonalizedFeedDataSource, &protocol conformance descriptor for FetchedResultsControllerDataSource<A>);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for PersonalizedFeedDataSource(uint64_t a1)
{
  result = qword_1000DC5A0;
  if (!qword_1000DC5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100012988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100012A04(void *a1, void *a2, void *a3)
{
  sub_100012248(0, &qword_1000DDC48, &type metadata accessor for NoticesDataSource, sub_100012EDC, &type metadata accessor for HideableDataSource.Visibility);
  v7 = v6;
  v8 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = v30 - v9 + 88;
  sub_10000ACE8(a2, v30);
  v11 = [a1 profileIdentifier];
  v12 = objc_allocWithZone(type metadata accessor for NoticesDataSource());
  NoticesDataSource.init(healthExperienceStore:associatedProfileIdentifier:)();
  (*(v8 + 104))(v10, enum case for HideableDataSource.Visibility.visible<A>(_:), v7);
  sub_100012248(0, &qword_1000DDC50, &type metadata accessor for NoticesDataSource, sub_100012EDC, &type metadata accessor for HideableDataSource);
  swift_allocObject();
  v13 = HideableDataSource.init(source:visibility:)();
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v15 = result;
    v16 = [result isiPad];

    if (v16)
    {
      sub_10000BFFC(a2, a2[3]);
      dispatch thunk of HealthExperienceStore.viewContext.getter();
      v17 = [a1 profileIdentifier];
      type metadata accessor for SummaryHeaderProfileNameCell();
      type metadata accessor for HealthKitProfileInformationDataSource();
      swift_allocObject();
      HealthKitProfileInformationDataSource.init(context:profileIdentifier:viewClass:layoutConstructor:)();
      if (a3)
      {

        v18 = [a3 viewController];
        if (v18)
        {
          v19 = v18;
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {
          }
        }
      }

      else
      {
      }

      dispatch thunk of SingleUserDataDataSource.cardStackChangeDelegate.setter();

      v20 = dispatch thunk of SingleUserDataDataSource.asProfileHeader(healthStore:healthExperienceStore:)();
      v22 = v21;
      v24 = v23;
      sub_100010760(0, &qword_1000DDC60, sub_1000845D8, &type metadata accessor for _ContiguousArrayStorage);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000AE110;
      *(inited + 32) = 1;
      v26 = sub_100084648();
      v27 = sub_100012F10(&qword_1000DDC58, &qword_1000DDC50, &type metadata accessor for NoticesDataSource, sub_100012EDC);
      *(inited + 40) = v13;
      *(inited + 48) = v26;
      *(inited + 56) = v27;
      *(inited + 64) = 2;
      *(inited + 72) = v20;
      *(inited + 80) = v22;
      *(inited + 88) = v24;
      sub_100068AF8(inited);
      swift_setDeallocating();
      sub_1000845D8(0);

      swift_unknownObjectRetain();
      swift_arrayDestroy();
      type metadata accessor for SizeClassResponsiveDataSource();
      swift_allocObject();
      swift_unknownObjectRetain();
      v28 = SizeClassResponsiveDataSource.init(dataSources:defaultDataSource:)();

      swift_unknownObjectRelease();

      return v28;
    }

    else
    {
      sub_100012F10(&qword_1000DDC58, &qword_1000DDC50, &type metadata accessor for NoticesDataSource, sub_100012EDC);
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100012F10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100012248(255, a2, a3, a4, &type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100012F90(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_100009704(0, a5, a6, a7, 0);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 17;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 4);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[2 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 16 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000968C(0, a6, a7, 0);
    swift_arrayInitWithCopy();
  }

  return v15;
}

uint64_t type metadata accessor for SummaryPinnedContentDataSource(uint64_t a1)
{
  result = qword_1000DB9F0;
  if (!qword_1000DB9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013180(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = qword_1000DB9E0;
  v42[0] = _swiftEmptyArrayStorage;
  sub_100013898(0);
  swift_allocObject();
  *(v3 + v7) = CurrentValueSubject.init(_:)();
  *(v3 + qword_1000DB9E8) = 0;
  v8 = a1;
  v9 = sub_100013994(a1, a3);
  type metadata accessor for ListLayoutConfiguration();
  swift_allocBox();
  static ListLayoutConfiguration.withHeader.getter();
  ListLayoutConfiguration.interGroupSpacing.setter();
  v10 = ListLayoutConfiguration.additionalContentInsets.modify();
  *(v11 + 16) = 0;
  v10(v42, 0);
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_100013C90(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000AE100;
  *(v12 + 32) = _swiftEmptyArrayStorage;

  MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)();
  v42[3] = type metadata accessor for HeaderItem();
  v42[4] = sub_100013D04(&qword_1000DAE78, &type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  v42[0] = v9;

  v13 = SnapshotDataSource.withSupplementaryItem(_:)();

  sub_100003B90(v42);
  if (qword_1000DA538 != -1)
  {
    swift_once();
  }

  type metadata accessor for DownloadingPinningDataSource();
  swift_allocObject();

  DownloadingPinningDataSource.init(title:showDownloadingDataItem:)();
  sub_100013E70(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000AE100;
  v15 = sub_100013ED8(&qword_1000DBA48, &qword_1000DBA50, &type metadata accessor for Supplementary, &protocol conformance descriptor for Supplementary<A>);
  *(v14 + 32) = v13;
  *(v14 + 40) = v15;
  v39 = a3;
  sub_10000ACE8(a3, v42);
  sub_10000BFFC(a1, a1[3]);

  dispatch thunk of HealthExperienceStore.viewContext.getter();
  v16 = objc_allocWithZone(type metadata accessor for PinnedContentDataSource());
  v17 = PinnedContentDataSource.init(pinnedContentManager:context:)();
  sub_100013F84(0);
  swift_allocObject();

  v38 = v17;
  *(v4 + qword_1000DB9D0) = PrimarySecondaryDataSource.init(primaryDataSource:secondaryDataSource:)();
  sub_100014040();
  sub_100014384(0);
  swift_allocObject();

  v18 = PrimarySecondaryDataSource.init(primaryDataSource:secondaryDataSource:)();
  v19 = qword_1000DB9D8;
  v20 = v4;
  *(v4 + qword_1000DB9D8) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000AE100;
  sub_100013C1C(0, &qword_1000DAC00, &type metadata accessor for _ContiguousArrayStorage);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000AE100;
  *(v22 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v22 + 64) = sub_100013D04(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v23 = sub_10000AD4C((v22 + 32));
  sub_100014440(v8, a2, v23);
  *(v21 + 32) = v22;
  MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)();
  v24 = SnapshotDataSource.withCellRegistration(_:)();

  v25 = [objc_opt_self() sharedBehavior];
  if (!v25)
  {
    __break(1u);
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 features];

  if (!v27)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v41 = v8;
  v28 = [v27 isPinnedInBrowse];

  if ((v28 & 1) == 0)
  {
    v29 = *(v20 + v19);
    v30 = *(v14 + 16);
    v31 = *(v14 + 24);
    v32 = v30 + 1;

    if (v30 >= v31 >> 1)
    {
      v14 = sub_100012F74((v31 > 1), v30 + 1, 1, v14);
    }

    v33 = sub_100013D04(&qword_1000DBA78, sub_100014384, &protocol conformance descriptor for PrimarySecondaryDataSource<A, B>);
    *(v14 + 16) = v32;
    v34 = v14 + 16 * v30;
    *(v34 + 32) = v29;
    *(v34 + 40) = v33;
    v35 = *(v14 + 24);

    if ((v30 + 2) > (v35 >> 1))
    {
      v14 = sub_100012F74((v35 > 1), v30 + 2, 1, v14);
    }

    v36 = sub_100013ED8(&qword_1000DBA80, &qword_1000DBA88, &type metadata accessor for CellRegistering, &protocol conformance descriptor for CellRegistering<A>);
    *(v14 + 16) = v30 + 2;
    v37 = v14 + 16 * v32;
    *(v37 + 32) = v24;
    *(v37 + 40) = v36;
  }

  CompoundSectionedDataSource.init(_:)();

  v42[0] = sub_100014D3C();
  CurrentValueSubject.send(_:)();

  sub_100003B90(v39);

  sub_100003B90(v41);
}

void sub_100013898(uint64_t a1)
{
  if (!qword_1000DCD40)
  {
    sub_100013930(255, &qword_1000DBA40, &type metadata accessor for FeedItem, &type metadata accessor for Array);
    v1 = type metadata accessor for CurrentValueSubject();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCD40);
    }
  }
}

void sub_100013930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100013994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for EditFavoritesCollectionViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass:ObjCClassFromMetadata];
  v17._object = 0x80000001000A66C0;
  v8._countAndFlagsBits = 0x44454E4E4950;
  v9._countAndFlagsBits = 0x64656E6E6950;
  v17._countAndFlagsBits = 0xD000000000000019;
  v8._object = 0xE600000000000000;
  v9._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v17);

  v10 = [v6 bundleForClass:ObjCClassFromMetadata];
  v18._object = 0x80000001000A66E0;
  v11._countAndFlagsBits = 1414087749;
  v11._object = 0xE400000000000000;
  v12._countAndFlagsBits = 1953064005;
  v12._object = 0xE400000000000000;
  v18._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v18);

  sub_10000ACE8(a2, v16);
  sub_10000ACE8(a1, v15);
  v13 = swift_allocObject();
  sub_100014D24(v16, v13 + 16);
  sub_100014D24(v15, v13 + 56);
  static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  type metadata accessor for HeaderItem();
  swift_allocObject();
  return HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
}

uint64_t sub_100013BDC()
{
  sub_100003B90((v0 + 16));
  sub_100003B90((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

void sub_100013C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10000968C(255, &qword_1000DAC08, &protocol descriptor for SnapshotDataSourceItem, 1);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100013C90(uint64_t a1)
{
  if (!qword_1000DB550)
  {
    sub_100013C1C(255, &qword_1000DB558, &type metadata accessor for Array);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB550);
    }
  }
}

uint64_t sub_100013D04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100013D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100013D94()
{
  type metadata accessor for SummaryPinnedContentDataSource(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5._object = 0x80000001000A6680;
  v2._object = 0x80000001000A6640;
  v3._object = 0x80000001000A6660;
  v5._countAndFlagsBits = 0xD00000000000003DLL;
  v2._countAndFlagsBits = 0xD000000000000017;
  v3._countAndFlagsBits = 0x100000000000001ALL;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  xmmword_1000E3DD0 = v4;
}

void sub_100013E70(uint64_t a1)
{
  if (!qword_1000DAE88)
  {
    sub_10002C420(255, &qword_1000DAE90, &protocol descriptor for SnapshotDataSource);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAE88);
    }
  }
}

uint64_t sub_100013ED8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100013F1C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100013F1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MutableArrayDataSourceWithLayout();
    v7 = a3(a1, v6, &protocol witness table for MutableArrayDataSource);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100013F84(uint64_t a1)
{
  if (!qword_1000DBA58)
  {
    type metadata accessor for DownloadingPinningDataSource();
    type metadata accessor for PinnedContentDataSource();
    sub_100013D04(&qword_1000DBA60, &type metadata accessor for PinnedContentDataSource, &protocol conformance descriptor for FetchedResultsControllerDataSource<A>);
    v1 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBA58);
    }
  }
}

uint64_t sub_100014040()
{
  v0 = type metadata accessor for LayoutConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  type metadata accessor for ListLayoutConfiguration();
  swift_allocBox();
  static ListLayoutConfiguration.withoutHeader.getter();
  static LayoutConfiguration.shared.getter();
  LayoutConfiguration.interItemInset.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  v6 = ListLayoutConfiguration.additionalContentInsets.modify();
  *(v7 + 16) = v5;
  v6(v12, 0);
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_100013C90(0);
  v8 = swift_allocObject();
  v11 = xmmword_1000AE100;
  *(v8 + 16) = xmmword_1000AE100;
  sub_100013C1C(0, &qword_1000DAC00, &type metadata accessor for _ContiguousArrayStorage);
  v9 = swift_allocObject();
  *(v9 + 16) = v11;
  if (qword_1000DA530 != -1)
  {
    swift_once();
  }

  *(v9 + 56) = type metadata accessor for TitleEmptyStateCollectionViewCellItem();
  *(v9 + 64) = sub_100013D04(&qword_1000DBA90, &type metadata accessor for TitleEmptyStateCollectionViewCellItem, &protocol conformance descriptor for TitleEmptyStateCollectionViewCellItem);
  sub_10000AD4C((v9 + 32));

  TitleEmptyStateCollectionViewCellItem.init(title:)();
  *(v8 + 32) = v9;
  return MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)();
}

void sub_1000142A8()
{
  type metadata accessor for SummaryPinnedContentDataSource(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5._object = 0x80000001000A6600;
  v2._countAndFlagsBits = 0xD000000000000017;
  v2._object = 0x80000001000A65C0;
  v3._object = 0x80000001000A65E0;
  v5._countAndFlagsBits = 0xD000000000000035;
  v3._countAndFlagsBits = 0xD000000000000010;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  xmmword_1000E3DC0 = v4;
}

void sub_100014384(uint64_t a1)
{
  if (!qword_1000DBA68)
  {
    sub_100013F84(255);
    type metadata accessor for MutableArrayDataSourceWithLayout();
    sub_100013D04(&qword_1000DBA70, sub_100013F84, &protocol conformance descriptor for PrimarySecondaryDataSource<A, B>);
    v1 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBA68);
    }
  }
}

uint64_t sub_100014440@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v51 = a1;
  v59 = a3;
  v3 = type metadata accessor for SectionedDataSourceContainerViewType();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CellDeselectionBehavior();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100013930(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v50 = &v42 - v8;
  sub_100013930(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v46 = &v42 - v10;
  v49 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory.DisplayedState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for UIListContentConfiguration();
  v43 = *(v60 - 8);
  v17 = v43;
  __chkstk_darwin(v60);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentConfigurationCollectionViewListCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v44 = v21;
  static UIListContentConfiguration.cell()();
  v22 = [objc_opt_self() configurationPreferringMulticolor];
  v23 = String._bridgeToObjectiveC()();
  v24 = objc_opt_self();
  v45 = v22;
  v25 = [v24 _systemImageNamed:v23 withConfiguration:v22];

  UIListContentConfiguration.image.setter();
  v68._object = 0x80000001000A6580;
  v26._object = 0x80000001000A6540;
  v27._object = 0x80000001000A6560;
  v68._countAndFlagsBits = 0xD00000000000001FLL;
  v26._countAndFlagsBits = 0xD000000000000014;
  v27._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v21, v27, v68);
  UIListContentConfiguration.text.setter();
  v64 = _typeName(_:qualified:)();
  v65 = v28;
  v29._countAndFlagsBits = 0x6C6C41776F68735FLL;
  v29._object = 0xEC00000061746144;
  String.append(_:)(v29);
  v47 = v64;
  v42 = v65;
  v30 = v60;
  v66 = v60;
  v67 = &protocol witness table for UIListContentConfiguration;
  v31 = sub_10000AD4C(&v64);
  (*(v17 + 16))(v31, v19, v30);
  sub_100013930(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  (*(v14 + 104))(v16, enum case for UICellAccessory.DisplayedState.always(_:), v13);
  v32 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v48 + 8))(v12, v49);
  (*(v14 + 8))(v16, v13);
  sub_10000ACE8(v51, v63);
  v33 = swift_allocObject();
  v34 = v52;
  *(v33 + 16) = v52;
  sub_100014D24(v63, v33 + 24);
  v35 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
  v61 = 0;
  v62 = 0xE000000000000000;
  v36 = v34;
  _StringGuts.grow(_:)(20);
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v61 = v37;
  v62 = v39;
  v40._countAndFlagsBits = 0xD000000000000012;
  v40._object = 0x80000001000A65A0;
  String.append(_:)(v40);
  (*(v54 + 104))(v53, enum case for CellDeselectionBehavior.default(_:), v55);
  (*(v57 + 104))(v56, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v58);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();

  return (*(v43 + 8))(v19, v60);
}

uint64_t sub_100014CE4()
{
  sub_100003B90((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100014D24(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100014D3C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArrayDataSourceSection();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of PrimarySecondaryDataSource.currentDataSource.getter();
  swift_getObjectType();
  v7 = SnapshotDataSource.numberOfSections.getter();
  swift_unknownObjectRelease();
  if (v7 == 1)
  {
    dispatch thunk of PrimarySecondaryDataSource.currentDataSource.getter();
    swift_getObjectType();
    v8 = SnapshotDataSource.contentsAsArray()();
    swift_unknownObjectRelease();
    if (*(v8 + 16))
    {
      v9 = v26;
      (*(v26 + 16))(v6, v8 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v4);

      v10 = ArrayDataSourceSection.arrangedItems.getter();
      v29 = _swiftEmptyArrayStorage;
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 32;
        v13 = _swiftEmptyArrayStorage;
        do
        {
          sub_10000ACE8(v12, v28);
          sub_100014D24(v28, v27);
          sub_10000968C(0, &qword_1000DAC08, &protocol descriptor for SnapshotDataSourceItem, 1);
          type metadata accessor for FeedItem();
          if ((swift_dynamicCast() & 1) != 0 && v27[5])
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v9 = v26;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v13 = v29;
          }

          v12 += 40;
          --v11;
        }

        while (v11);
      }

      else
      {

        v13 = _swiftEmptyArrayStorage;
      }

      (*(v9 + 8))(v6, v4);
      return v13;
    }
  }

  static Logger.pinnedContent.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *&v28[0] = swift_slowAlloc();
    *v16 = 136315394;
    v17 = _typeName(_:qualified:)();
    v19 = sub_1000036D0(v17, v18, v28);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    dispatch thunk of PrimarySecondaryDataSource.currentDataSource.getter();
    swift_getObjectType();
    v20 = SnapshotDataSource.numberOfSections.getter();
    swift_unknownObjectRelease();
    v27[0] = v20;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = sub_1000036D0(v21, v22, v28);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s]: Unexpected number of sections when resolving gradient content: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  (*(v1 + 8))(v3, v0);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_100015230(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v32 = a4;
  v8 = a1;
  sub_1000125F0(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + qword_1000DB358) = v8;
  *(v5 + qword_1000DB360) = a2;
  sub_100015764(a3, v5 + qword_1000E3D50);
  sub_1000157F8();
  v31 = v16;
  v17 = swift_allocObject();
  v30 = xmmword_1000AE610;
  *(v17 + 16) = xmmword_1000AE610;
  type metadata accessor for Feed();
  v18 = a2;
  *(v17 + 32) = static Feed.predicate(kind:associatedProfileIdentifier:feedPrefixKeyPath:)();
  v33 = v17;
  sub_100015764(a3, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100015978(v11);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_100003DDC(0, &qword_1000DB3C0, NSPredicate_ptr);
    sub_1000125F0(0, &qword_1000DB3D0, sub_10001584C, &type metadata accessor for _ContiguousArrayStorage);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000AE110;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_1000158B0();
    *(v19 + 32) = 0x6164705565746164;
    *(v19 + 40) = 0xEB00000000646574;
    isa = Date._bridgeToObjectiveC()().super.isa;
    *(v19 + 96) = sub_100003DDC(0, &qword_1000DB3E8, NSDate_ptr);
    *(v19 + 104) = sub_100015904();
    *(v19 + 72) = isa;
    NSPredicate.init(format:_:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v13 + 8))(v15, v12);
  }

  v21 = static Feed.fetchRequest()();
  sub_100003DDC(0, &qword_1000DB3C0, NSPredicate_ptr);
  v22 = Array._bridgeToObjectiveC()().super.isa;

  v23 = [objc_opt_self() andPredicateWithSubpredicates:v22];

  [v21 setPredicate:v23];
  v24 = swift_allocObject();
  *(v24 + 16) = v30;
  sub_100003DDC(0, &qword_1000DB3C8, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v24 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v25 = Array._bridgeToObjectiveC()().super.isa;

  [v21 setSortDescriptors:v25];

  v26 = objc_allocWithZone(NSFetchedResultsController);
  v27 = v32;
  [v26 initWithFetchRequest:v21 managedObjectContext:v32 sectionNameKeyPath:0 cacheName:0];
  v28 = JustObservingFetchedResultsControllerDataSource.init(frc:)();

  sub_100015978(a3);
  return v28;
}

void sub_100015708(uint64_t a1, void **a2)
{
  v2 = *a2;
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v2 setDateUpdated:isa];
}

uint64_t sub_100015764(uint64_t a1, uint64_t a2)
{
  sub_1000125F0(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000157F8()
{
  if (!qword_1000DBB00)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBB00);
    }
  }
}

unint64_t sub_10001584C()
{
  result = qword_1000DB3D8;
  if (!qword_1000DB3D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DB3D8);
  }

  return result;
}

unint64_t sub_1000158B0()
{
  result = qword_1000DB3E0;
  if (!qword_1000DB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB3E0);
  }

  return result;
}

unint64_t sub_100015904()
{
  result = qword_1000DB3F0;
  if (!qword_1000DB3F0)
  {
    sub_100003DDC(255, &qword_1000DB3E8, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB3F0);
  }

  return result;
}

uint64_t sub_100015978(uint64_t a1)
{
  sub_1000125F0(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015A04()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EmptyStateCollectionViewCellItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoadingPersonalizedHighlightsDataSource(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v25._object = 0x80000001000A9660;
  v10._object = 0x80000001000A9620;
  v11._object = 0x80000001000A9640;
  v25._countAndFlagsBits = 0xD00000000000001DLL;
  v10._countAndFlagsBits = 0xD000000000000012;
  v11._countAndFlagsBits = 0x1000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v25);

  EmptyStateCollectionViewCellItem.init(title:showSpinner:)();
  sub_100015F68(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection);
  type metadata accessor for ArrayDataSourceSection();
  v12 = swift_allocObject();
  v22 = xmmword_1000AE100;
  *(v12 + 16) = xmmword_1000AE100;
  sub_100015F68(0, &qword_1000DAC00, sub_1000199DC);
  v13 = swift_allocObject();
  *(v13 + 16) = v22;
  *(v13 + 56) = v4;
  *(v13 + 64) = sub_100013D4C(&qword_1000DB560, &type metadata accessor for EmptyStateCollectionViewCellItem, &protocol conformance descriptor for EmptyStateCollectionViewCellItem);
  v14 = sub_10000AD4C((v13 + 32));
  (*(v5 + 16))(v14, v7, v4);
  ArrayDataSourceSection.init(arrayLiteral:)();
  v23 = 0x3C53447961727241;
  v24 = 0xE800000000000000;
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v1 + 8))(v3, v0);
  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = ArrayDataSource.init(arrangedSections:identifier:)();
  (*(v5 + 8))(v7, v4);
  return v20;
}

void sub_100015DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100015E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100015EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100015F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100015F68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100015FBC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  sub_10000ACE8(a1, v4 + qword_1000DDB50);
  *(v4 + qword_1000DDB58) = a2;
  sub_10000ACE8(a1, v33);
  v8 = objc_opt_self();
  v9 = a3;
  v10 = a2;
  v11 = [v8 primaryProfile];
  v12 = objc_allocWithZone(type metadata accessor for PersonalizedFeedDataSource(0));
  v12[qword_1000DC598] = 1;
  sub_10000BFFC(v33, v33[3]);
  v13 = dispatch thunk of HealthExperienceStore.viewContext.getter();
  v14 = NSManagedObjectContext.makeFeedItemsFetchedResultsController(for:associatedProfileIdentifier:)();

  isa = [v14 fetchRequest];
  v16 = [(objc_class *)isa relationshipKeyPathsForPrefetching];
  if (v16)
  {
    v17 = v16;
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061574(&off_1000CCDD0);
    if (v18)
    {
      v19.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v19.super.isa = 0;
    }

    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:v19.super.isa];

    isa = v19.super.isa;
  }

  else
  {
    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:0];
  }

  *&v12[qword_1000DC590] = a3;
  v20 = FetchedResultsControllerDataSource.init(_:)();

  sub_100003B90(v33);
  v21 = qword_1000DDB40;
  *(v4 + qword_1000DDB40) = v20;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_100010760(0, &qword_1000DB550, sub_1000313A0, &type metadata accessor for _ContiguousArrayStorage);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000AE100;
  sub_100009704(0, &qword_1000DAC00, &qword_1000DAC08, &protocol descriptor for SnapshotDataSourceItem, 1);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000AE100;
  *(v23 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v23 + 64) = sub_100012734(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v24 = sub_10000AD4C((v23 + 32));
  sub_100016414(a1, v10, v24);
  *(v22 + 32) = v23;
  MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)();
  v25 = SnapshotDataSource.withCellRegistration(_:)();

  *(v4 + qword_1000DDB48) = v25;
  sub_100009704(0, &qword_1000DAE88, &qword_1000DAE90, &protocol descriptor for SnapshotDataSource, 0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000AE110;
  v27 = *(v4 + v21);
  v28 = sub_1000151FC();
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  v29 = sub_100012734(&qword_1000DBA80, sub_10008452C, &protocol conformance descriptor for CellRegistering<A>);
  *(v26 + 48) = v25;
  *(v26 + 56) = v29;
  v30 = v27;

  v31 = CompoundSectionedDataSource.init(_:)();
  sub_100003B90(a1);
  return v31;
}

uint64_t sub_100016414@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v57 = a3;
  v56 = type metadata accessor for SectionedDataSourceContainerViewType();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CellDeselectionBehavior();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v53 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010760(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v50 = &v40 - v7;
  sub_100010760(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v8 - 8);
  v48 = &v40 - v9;
  v49 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for UICellAccessory.DisplayedState();
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UIListContentConfiguration();
  v45 = *(v41 - 8);
  __chkstk_darwin(v41);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentConfigurationCollectionViewListCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19 = v16;
  static UIListContentConfiguration.cell()();
  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() systemImageNamed:v20];

  if (v21)
  {
    v22 = [objc_opt_self() systemBlueColor];
    v23 = [v21 imageWithTintColor:v22];
  }

  UIListContentConfiguration.image.setter();
  v62._object = 0x80000001000A99C0;
  v24._object = 0x80000001000A9980;
  v25._object = 0x80000001000A99A0;
  v62._countAndFlagsBits = 0xD00000000000001ELL;
  v24._countAndFlagsBits = 0xD000000000000013;
  v42 = v18;
  v25._countAndFlagsBits = 0xD000000000000013;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v18, v25, v62);
  v40 = v16;
  UIListContentConfiguration.text.setter();
  sub_10000ACE8(v43, &v58);
  v26 = swift_allocObject();
  sub_1000091BC(&v58, v26 + 16);
  v27 = v44;
  *(v26 + 56) = v44;
  v58 = 0;
  v59 = 0xE000000000000000;
  v28 = v27;
  _StringGuts.grow(_:)(20);
  v29 = _typeName(_:qualified:)();
  v31 = v30;

  v58 = v29;
  v59 = v31;
  v32._countAndFlagsBits = 0xD000000000000012;
  v32._object = 0x80000001000A99E0;
  String.append(_:)(v32);
  v43 = v59;
  v44 = v58;
  v33 = v41;
  v60 = v41;
  v61 = &protocol witness table for UIListContentConfiguration;
  v34 = sub_10000AD4C(&v58);
  v35 = v45;
  (*(v45 + 16))(v34, v19, v33);
  sub_100010760(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  v36 = v46;
  (*(v12 + 104))(v14, enum case for UICellAccessory.DisplayedState.always(_:), v46);
  v37 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v37 - 8) + 56))(v48, 1, 1, v37);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v47 + 8))(v11, v49);
  (*(v12 + 8))(v14, v36);
  v38 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
  (*(v51 + 104))(v53, enum case for CellDeselectionBehavior.default(_:), v52);
  (*(v54 + 104))(v55, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v56);

  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();

  return (*(v35 + 8))(v40, v33);
}

BOOL sub_100016C98()
{
  type metadata accessor for PersonalizedFeedDataSource(0);
  sub_1000151FC();
  return (SnapshotDataSource.isEmpty.getter() & 1) == 0;
}

uint64_t type metadata accessor for GetMoreFromHealthDataSource(uint64_t a1)
{
  result = qword_1000DC018;
  if (!qword_1000DC018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016D90(void *a1, void *a2)
{
  v3 = v2;
  sub_100017380(0, &qword_1000DC068, &type metadata accessor for HeaderFooterDataSourceWithLayout, &protocol witness table for CompoundSectionedDataSource, &type metadata accessor for HideableDataSource.Visibility);
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v25 = &v24 - v7;
  sub_100017380(0, &qword_1000DC070, &type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, &type metadata accessor for HideableDataSource.Visibility);
  v9 = v8;
  v10 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v13 - 8);
  *(v3 + qword_1000DC010) = &_swiftEmptySetSingleton;
  sub_1000128CC(0);
  v28 = a1;
  sub_10000ACE8(a1, v29);
  v14 = swift_allocObject();
  sub_1000091BC(v29, v14 + 16);
  *(v14 + 56) = a2;
  v15 = a2;
  static DispatchTime.now()();
  *(v3 + qword_1000DC000) = DelayedDataSource.__allocating_init(delay:dataSource:)();
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_1000173EC(0, &qword_1000DB550, sub_1000313A0, &type metadata accessor for _ContiguousArrayStorage);
  v16 = swift_allocObject();
  v24 = xmmword_1000AE100;
  *(v16 + 16) = xmmword_1000AE100;
  sub_1000173EC(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v17 = swift_allocObject();
  *(v17 + 16) = v24;
  *(v17 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v17 + 64) = sub_100012940(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v18 = sub_10000AD4C((v17 + 32));
  sub_100017450(v18);
  *(v16 + 32) = v17;
  MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)();
  v19 = static FeatureStatusSupport.isHealthChecklistAvailable()();
  v20 = *(v10 + 104);
  if (v19)
  {
    v20(v12, enum case for HideableDataSource.Visibility.visible<A>(_:), v9);
    v21 = enum case for HideableDataSource.Visibility.hidden<A>(_:);
  }

  else
  {
    v21 = enum case for HideableDataSource.Visibility.hidden<A>(_:);
    v20(v12, enum case for HideableDataSource.Visibility.hidden<A>(_:), v9);
  }

  sub_100017380(0, &qword_1000DC088, &type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, &type metadata accessor for HideableDataSource);
  swift_allocObject();

  *(v3 + qword_1000DC008) = HideableDataSource.init(source:visibility:)();
  sub_100017C48();
  sub_100012940(&qword_1000DC0A0, sub_1000128CC, &protocol conformance descriptor for DelayedDataSource<A>);
  sub_100017CF0();
  sub_100017D98();
  type metadata accessor for HeaderFooterDataSourceWithLayout();
  swift_allocObject();

  HeaderFooterDataSourceWithLayout.init(headerDataSource:mainDataSource:footerDataSource:)();
  (*(v26 + 104))(v25, v21, v27);

  v22 = HideableDataSource.init(source:visibility:)();

  sub_100017E28();

  sub_100003B90(v28);
  return v22;
}

uint64_t sub_100017340()
{
  sub_100003B90((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100017380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1000173EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100017450@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = type metadata accessor for SectionedDataSourceContainerViewType();
  v48 = *(v1 - 8);
  v49 = v1;
  __chkstk_darwin(v1);
  v47 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CellDeselectionBehavior();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000173EC(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v43 = &v36 - v6;
  sub_1000173EC(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v40 = &v36 - v8;
  v9 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for UICellAccessory.DisplayedState();
  v12 = *(v38 - 8);
  __chkstk_darwin(v38);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for UIListContentConfiguration();
  v15 = *(v51 - 8);
  __chkstk_darwin(v51);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.cell()();
  v18 = [objc_opt_self() configurationPreferringMulticolor];
  sub_10004FC00();
  v19 = static NSBundle.healthExperienceUI.getter();
  v20 = v18;
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() imageNamed:v21 inBundle:v19 withConfiguration:v20];

  UIListContentConfiguration.image.setter();
  type metadata accessor for GetMoreFromHealthDataSource(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37.super.isa = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v24._countAndFlagsBits = 0xD000000000000010;
  v56._object = 0x80000001000A72A0;
  v25._object = 0x80000001000A7260;
  v24._object = 0x80000001000A7280;
  v56._countAndFlagsBits = 0xD000000000000033;
  v25._countAndFlagsBits = 0xD000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v37, v24, v56);
  UIListContentConfiguration.text.setter();
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v26 = _typeName(_:qualified:)();
  v28 = v27;

  v52 = v26;
  v53 = v28;
  v29._countAndFlagsBits = 0xD000000000000014;
  v29._object = 0x80000001000A72E0;
  String.append(_:)(v29);
  v39 = v52;
  v36 = v53;
  v30 = v51;
  v54 = v51;
  v55 = &protocol witness table for UIListContentConfiguration;
  v31 = sub_10000AD4C(&v52);
  (*(v15 + 16))(v31, v17, v30);
  sub_1000173EC(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  v32 = v38;
  (*(v12 + 104))(v14, enum case for UICellAccessory.DisplayedState.always(_:), v38);
  v33 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v33 - 8) + 56))(v40, 1, 1, v33);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v41 + 8))(v11, v42);
  (*(v12 + 8))(v14, v32);
  v34 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
  (*(v45 + 104))(v44, enum case for CellDeselectionBehavior.default(_:), v46);
  (*(v48 + 104))(v47, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v49);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();

  return (*(v15 + 8))(v17, v51);
}

unint64_t sub_100017C48()
{
  result = qword_1000DC090;
  if (!qword_1000DC090)
  {
    sub_1000128CC(255);
    sub_100012940(&qword_1000DC098, type metadata accessor for PersonalizedFeedDataSource, &unk_1000AF768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC090);
  }

  return result;
}

unint64_t sub_100017CF0()
{
  result = qword_1000DC0A8;
  if (!qword_1000DC0A8)
  {
    sub_100017380(255, &qword_1000DC088, &type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, &type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0A8);
  }

  return result;
}

unint64_t sub_100017D98()
{
  result = qword_1000DC0B0;
  if (!qword_1000DC0B0)
  {
    sub_100017380(255, &qword_1000DC088, &type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, &type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0B0);
  }

  return result;
}

uint64_t sub_100017E28()
{
  sub_10001802C(0);
  v1 = v0;
  v2 = *(v0 - 8);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  DelayedDataSource.$dataSourceState.getter();

  swift_allocObject();
  swift_weakInit();
  sub_100012940(&qword_1000DC0E8, sub_10001802C, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100017FD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018060(uint64_t a1, uint64_t a2)
{
  sub_10001800C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) != enum case for DelayedDataSource.DataSourceState.initialized<A>(_:))
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004F67C();
  }

  return result;
}

uint64_t sub_1000181D0()
{
  sub_100012248(0, &qword_1000DDBB8, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource.Visibility);
  v1 = v0;
  v2 = *(v0 - 8);
  __chkstk_darwin(v0);
  v4 = &v13 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = HAFeatureFlagShowTrendsInSummary();
  if ((result & 1) == 0)
  {
    static Logger.dataSource.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Show Trends in Summary feature flag is disabled. Hiding Trends.", v12, 2u);
    }

    (*(v6 + 8))(v8, v5);
    (*(v2 + 104))(v4, enum case for HideableDataSource.Visibility.hidden<A>(_:), v1);
    return dispatch thunk of HideableDataSource.visibility.setter();
  }

  return result;
}

uint64_t sub_100018410@<X0>(uint64_t a1@<X8>)
{
  sub_100010760(0, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  v9 = qword_1000DDA90;
  swift_beginAccess();
  sub_10001868C(v1 + v9, v8, qword_1000DB4A0, sub_10001093C);
  sub_10001093C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v8, 1, v10) != 1)
  {
    return (*(v12 + 32))(a1, v8, v11);
  }

  sub_10001870C(v8, qword_1000DB4A0, sub_10001093C);
  type metadata accessor for CloudSyncRestoreState();
  static LegacyObservable.create()();

  dispatch thunk of CloudSyncStateObserver.firstRestoreStateChangeHandler.setter();
  dispatch thunk of CloudSyncStateObserver.startFirstRestoreIfNeeded()();

  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10001877C(v6, v1 + v9, qword_1000DB4A0, sub_10001093C);
  return swift_endAccess();
}

uint64_t sub_10001868C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_100010760(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001870C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100010760(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001877C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_100010760(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id sub_100018834()
{
  result = [v0 collectionView];
  if (result)
  {
    type metadata accessor for DiffableCollectionViewAdaptor();
    dispatch thunk of CompoundDataSourceCollectionViewController.dataSource.getter();
    return DiffableCollectionViewAdaptor.__allocating_init(collectionView:backingDataSource:prefetchCellsWhenPerformingReloadData:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000188B0()
{
  type metadata accessor for PlatformTabCollectionViewController();
  v0 = method lookup function for CompoundDataSourceCollectionViewController();
  v1 = v0();
  sub_100003DDC(0, &qword_1000DCD58, UITraitCollection_ptr);
  v2 = static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  sub_100018930(v2);
  return v1;
}

uint64_t sub_100018930(uint64_t result)
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

  result = sub_100018A1C(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

char *sub_100018A1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000091E4(0, &qword_1000DB658, sub_10000BF7C);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_100018B30()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      type metadata accessor for SummaryFeedViewController(0);
      sub_100007D4C(&qword_1000DCD60, type metadata accessor for SummaryFeedViewController, &unk_1000AFCC0);
      ProfileButtonDisplaying<>.updateProfileButtonForRegularSizeClass()();
      v10 = [v0 navigationItem];
      [v10 setTitle:0];
    }
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v12._object = 0x80000001000A7710;
    v4._countAndFlagsBits = 0x7972616D6D7553;
    v4._object = 0xE700000000000000;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0xD000000000000011;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v12);

    v6 = [v0 navigationItem];
    v7 = String._bridgeToObjectiveC()();

    [v6 setTitle:v7];

    v8 = type metadata accessor for SummaryFeedViewController(0);
    v9 = sub_100007D4C(&qword_1000DCD60, type metadata accessor for SummaryFeedViewController, &unk_1000AFCC0);

    ProfileButtonDisplaying<>.updateProfileButtonForCompactSizeClass()(v8, v9);
  }
}

uint64_t sub_100018D6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_100018E60()
{
  v1 = qword_1000DCB98;
  v2 = *(v0 + qword_1000DCB98);
  if (v2)
  {
    v3 = *(v0 + qword_1000DCB98);
  }

  else
  {
    v4 = v0;
    type metadata accessor for ProfileBarButton();
    v5 = ProfileBarButton.__allocating_init()();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_100018ED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100019008@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Presentation.summaryFeed(_:);
  v3 = type metadata accessor for Presentation();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000190A0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *sub_100019130(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v9 = type metadata accessor for SummaryPinnedContentDataSource(0);
  v10 = &off_1000CDCF0;
  v8[0] = a1;
  sub_100019950(0);
  swift_allocObject();
  a2[2] = CurrentValueSubject.init(_:)();
  a2[8] = &_swiftEmptySetSingleton;
  sub_10000ACE8(v8, (a2 + 3));
  sub_10000BFFC(v8, v9);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  sub_100013898(0);
  sub_100007D4C(&qword_1000DCD50, sub_100013898, &protocol conformance descriptor for CurrentValueSubject<A, B>);

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_100003B90(v8);
  return a2;
}

uint64_t sub_100019324()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001935C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100019394(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersonalizedFeedDataSource(0);
  sub_100012988(&qword_1000DC080, type metadata accessor for PersonalizedFeedDataSource, &protocol conformance descriptor for FetchedResultsControllerDataSource<A>);
  SnapshotDataSource.item(at:)();
  sub_1000199DC();
  type metadata accessor for FeedItem();
  if (swift_dynamicCast())
  {
    v10 = v37;
    v11 = [v37 feedSection];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (ForYouSectionKind.init(rawValue:)() != 4)
      {
        ForYouSectionKind.localizedTitle.getter();
        static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
        v30 = type metadata accessor for HeaderItem();
        swift_allocObject();
        v29 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
        a2[3] = v30;
        a2[4] = sub_100012988(&qword_1000DAE78, &type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);

LABEL_10:
        *a2 = v29;
        return;
      }
    }

    static Logger.view.getter();
    v12 = v10;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38[0] = v34;
      *v16 = 136315394;
      v17 = a2;
      v18 = [v12 uniqueIdentifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v3;
      v36 = v9;
      v20 = v4;
      v21 = v19;
      v23 = v22;

      a2 = v17;
      v24 = sub_1000036D0(v21, v23, v38);

      *(v16 + 4) = v24;
      *(v16 + 12) = 2080;
      v37 = [v12 feedSection];
      sub_100055650(0);
      v25 = String.init<A>(describing:)();
      v27 = sub_1000036D0(v25, v26, v38);

      *(v16 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not resolve feedSection from feedItem %s: %s. It should be deleted during the next picking operation", v16, 0x16u);
      swift_arrayDestroy();

      (*(v20 + 8))(v6, v35);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v28 = type metadata accessor for HeaderItem();
    static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
    v29 = HeaderItem.__allocating_init(hkType:title:showShowAll:configuration:automationIdentifier:)();
    a2[3] = v28;
    a2[4] = sub_100012988(&qword_1000DAE78, &type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
    goto LABEL_10;
  }

  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v31._object = 0x80000001000A78B0;
  v31._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v31);
  type metadata accessor for IndexPath();
  sub_100012988(&qword_1000DC5F0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100019950(uint64_t a1)
{
  if (!qword_1000DCD28)
  {
    sub_100061788(255);
    v1 = type metadata accessor for CurrentValueSubject();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCD28);
    }
  }
}

unint64_t sub_1000199DC()
{
  result = qword_1000DAC08;
  if (!qword_1000DAC08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DAC08);
  }

  return result;
}

uint64_t sub_100019A40(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100019D4C(v2);
    CurrentValueSubject.send(_:)();
  }

  return result;
}

void sub_100019ADC()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v2 window];

  if (!v4)
  {
LABEL_7:
    v10.receiver = v1;
    v10.super_class = type metadata accessor for SummaryFeedViewController(0);
    objc_msgSendSuper2(&v10, "viewWillLayoutSubviews");
    v8 = [v1 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 contentOffset];

      sub_100007D4C(&qword_1000DCD10, type metadata accessor for SummaryFeedViewController, &unk_1000AFCF8);
      GradientBackgroundPresenting.layoutGradient(yOffset:)();
      GradientBackgroundPresenting.configureGradientBackground()();
      return;
    }

    goto LABEL_10;
  }

  if (dispatch thunk of CompoundDataSourceCollectionViewController.dataSourceAdaptor.getter())
  {
    dispatch thunk of DiffableCollectionViewAdaptor.loadIfNeeded()();

    if ((*(v1 + qword_1000DCB68) & 1) == 0)
    {
      if (HAFeatureFlagPreloadSummaryCells())
      {
        sub_1000060BC(0, &qword_1000DCD18, type metadata accessor for Mode, &type metadata accessor for _ContiguousArrayStorage);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1000AE100;
        *(v5 + 32) = NSRunLoopCommonModes;
        type metadata accessor for Mode(0);
        v6 = NSRunLoopCommonModes;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v1 performSelector:"setVisibleRectEdgeInsetsIfNeeded" withObject:0 afterDelay:isa inModes:0.0];
      }
    }

    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
}

void sub_100019D04(void *a1)
{
  v1 = a1;
  sub_100019ADC();
}

void *sub_100019D4C(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_28:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_29:
    v4 = 0;
    v5 = &_swiftEmptyDictionarySingleton;
LABEL_30:
    v28 = v5[2];
    v18 = _swiftEmptyArrayStorage;
    if (v28)
    {
      v29 = sub_10001B3F0(v5[2], 0);
      v46 = sub_10001B5F8(v47, v29 + 4, v28, v5);
      v30 = v47[0];
      v1 = v47[4];

      sub_10000F754(v30);
      if (v46 == v28)
      {
LABEL_34:
        v47[0] = v29;
        sub_10001B854(v47);
        v31 = 0;
        v3 = v47[0];
        v47[0] = _swiftEmptyArrayStorage;
        v32 = *(v3 + 16);
LABEL_35:
        v33 = 16 * v31 + 32;
        while (v32 != v31)
        {
          if (v31 >= *(v3 + 16))
          {
            __break(1u);
LABEL_68:
            if (v18 < 0)
            {
              v37 = v18;
            }

            else
            {
              v37 = v33;
            }

            v2 = _CocoaArrayWrapper.endIndex.getter();
            if (_CocoaArrayWrapper.endIndex.getter() < 0)
            {
              __break(1u);
              goto LABEL_73;
            }

            goto LABEL_75;
          }

          ++v31;
          v1 = v33 + 16;
          v34 = [*(v3 + v33) color];
          v33 = v1;
          if (v34)
          {
            v1 = v34;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v18 = v47[0];
            goto LABEL_35;
          }
        }

        v33 = v18 & 0xFFFFFFFFFFFFFF8;
        v3 = v18 >> 62;
        if (v18 >> 62)
        {
          goto LABEL_68;
        }

        result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= 4)
        {
          v36 = 4;
        }

        else
        {
          v36 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result < v36)
        {
          goto LABEL_82;
        }

LABEL_47:
        if ((v18 & 0xC000000000000001) != 0 && v36)
        {
          sub_100003DDC(0, &qword_1000DB670, UIColor_ptr);

          _ArrayBuffer._typeCheckSlowPath(_:)(0);
          if (v36 != 1)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            if (v36 != 2)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(2);
              if (v36 != 3)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(3);
              }
            }
          }
        }

        else
        {
        }

        if (v3)
        {
          v37 = _CocoaArrayWrapper.subscript.getter();
          v1 = v38;
          v3 = v39;
          v2 = v40;

          if ((v2 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v37 = v18 & 0xFFFFFFFFFFFFFF8;
          v1 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
          v2 = (2 * v36) | 1;
          if ((v2 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v43 = swift_dynamicCastClass();
        if (!v43)
        {
          swift_unknownObjectRelease();
          v43 = _swiftEmptyArrayStorage;
        }

        v44 = v43[2];

        if (__OFSUB__(v2 >> 1, v3))
        {
LABEL_73:
          __break(1u);
        }

        else if (v44 == (v2 >> 1) - v3)
        {
          v42 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v42)
          {
LABEL_66:
            sub_10001A394(v4, 0);
            return v42;
          }

          v42 = _swiftEmptyArrayStorage;
LABEL_65:
          swift_unknownObjectRelease();
          goto LABEL_66;
        }

        swift_unknownObjectRelease_n();
LABEL_58:
        sub_100031DE0(v37, v1, v3, v2);
        v42 = v41;
        goto LABEL_65;
      }

      __break(1u);
    }

    v29 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_29;
  }

LABEL_3:
  v1 = 0;
  v4 = 0;
  v5 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v6 = *(v2 + 8 * v1 + 32);
    }

    v7 = v6;
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v9 = FeedItem.associatedDisplayCategory.getter();
    if (v9)
    {
      break;
    }

LABEL_4:

    ++v1;
    if (v8 == v3)
    {
      goto LABEL_30;
    }
  }

  v10 = v9;
  sub_10001A394(v4, 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v5;
  v12 = sub_10001A3A4(v10);
  v14 = v5[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    goto LABEL_24;
  }

  v4 = v13;
  if (v5[3] >= v17)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = v12;
      sub_1000338F4();
      v12 = v27;
      v5 = v47[0];
      if ((v4 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

LABEL_16:
    if ((v4 & 1) == 0)
    {
LABEL_17:
      v5[(v12 >> 6) + 8] |= 1 << v12;
      *(v5[6] + 8 * v12) = v10;
      *(v5[7] + 8 * v12) = 0;
      v20 = v5[2];
      v16 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v16)
      {
        goto LABEL_27;
      }

      v5[2] = v21;
      v22 = v12;
      v23 = v10;
      v12 = v22;
    }

LABEL_19:
    v24 = v5[7];
    v25 = *(v24 + 8 * v12);
    v16 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v16)
    {
      goto LABEL_25;
    }

    *(v24 + 8 * v12) = v26;

    v4 = sub_1000315D0;
    goto LABEL_4;
  }

  sub_10001A3EC(v17, isUniquelyReferenced_nonNull_native);
  sub_100003DDC(0, &qword_1000DB678, HKDisplayCategory_ptr);
  v5 = v47[0];
  v18 = v47[0];
  v12 = sub_10001A3A4(v10);
  if ((v4 & 1) == (v19 & 1))
  {
    goto LABEL_16;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
LABEL_75:
  if (v2 >= 4)
  {
    v45 = 4;
  }

  else
  {
    v45 = v2;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v36 = v45;
  }

  else
  {
    v36 = 4;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result >= v36)
  {
    goto LABEL_47;
  }

LABEL_82:
  __break(1u);
  return result;
}

void *sub_10001A35C()
{
  v1 = *(v0 + qword_1000DCBB0);
  v2 = v1;
  return v1;
}

uint64_t sub_10001A394(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10001A3A4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001A724(a1, v4);
}

Swift::Int sub_10001A3EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001A6A8(0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_10001A644(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_10005EFA8(v3);
}

void sub_10001A6A8(uint64_t a1)
{
  if (!qword_1000DB680)
  {
    sub_100003DDC(255, &qword_1000DB678, HKDisplayCategory_ptr);
    sub_10001A7FC();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB680);
    }
  }
}

unint64_t sub_10001A724(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100003DDC(0, &qword_1000DB678, HKDisplayCategory_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001A7FC()
{
  result = qword_1000DB688;
  if (!qword_1000DB688)
  {
    sub_100003DDC(255, &qword_1000DB678, HKDisplayCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB688);
  }

  return result;
}

uint64_t sub_10001A864(void *a1)
{
  v2 = v1;
  v101 = type metadata accessor for CollectionViewLayoutContext();
  v97 = *(v101 - 8);
  v4 = __chkstk_darwin(v101);
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v94 = &v84 - v7;
  __chkstk_darwin(v6);
  v90 = &v84 - v8;
  v9 = type metadata accessor for Logger();
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v84 - v13;
  v89 = type metadata accessor for GridLayoutEngine();
  v88 = *(v89 - 8);
  v14 = __chkstk_darwin(v89);
  v87 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v84 - v16;
  v86 = type metadata accessor for ListLayoutConfiguration();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LayoutConfiguration();
  v102 = *(v18 - 8);
  v103 = v18;
  v19 = __chkstk_darwin(v18);
  v98 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v93 = &v84 - v21;
  v22 = type metadata accessor for IndexPath();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = CollectionViewLayoutContext.section.getter();
  v27 = type metadata accessor for PersonalizedFeedDataSource(0);
  v28 = sub_100012988(&qword_1000DC080, type metadata accessor for PersonalizedFeedDataSource, &protocol conformance descriptor for FetchedResultsControllerDataSource<A>);
  if (SnapshotDataSource.numberOfItems(in:)(v26) < 1)
  {
LABEL_11:
    static Logger.view.getter();
    v43 = v96;
    v42 = v97;
    v44 = a1;
    v45 = v101;
    (*(v97 + 16))(v96, v44, v101);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      v49 = CollectionViewLayoutContext.section.getter();
      (*(v42 + 8))(v43, v45);
      *(v48 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v46, v47, "PersonalizedFeedDataSource section %ld is empty but we've been asked for a layout; returning empty", v48, 0xCu);
    }

    else
    {
      (*(v42 + 8))(v43, v45);
    }

    (*(v99 + 8))(v12, v100);
    v50 = v98;
    static LayoutConfiguration.empty.getter();
    isa = LayoutConfiguration.layoutSection.getter();
    goto LABEL_15;
  }

  v95 = a1;
  CollectionViewLayoutContext.section.getter();
  IndexPath.init(item:section:)();
  SnapshotDataSource.item(at:)();
  (*(v23 + 8))(v25, v22);
  sub_1000199DC();
  type metadata accessor for FeedItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    a1 = v95;
    goto LABEL_11;
  }

  v29 = v105;
  v30 = [v105 feedSection];
  if (!v30)
  {
    v93 = v28;
    v96 = v27;
    v53 = v91;
    static Logger.view.getter();
    v54 = v97;
    v55 = *(v97 + 16);
    v56 = v90;
    v57 = v95;
    v58 = v101;
    v55(v90, v95, v101);
    v55(v94, v57, v58);
    v59 = v29;
    v60 = v2;
    v61 = v59;
    v62 = v60;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = v54;
      v66 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v106[0] = v95;
      *v66 = 136315906;
      v67 = [v61 uniqueIdentifier];
      LODWORD(v92) = v64;
      v68 = v67;
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = sub_1000036D0(v69, v71, v106);

      *(v66 + 4) = v72;
      *(v66 + 12) = 1024;
      LODWORD(v72) = [v61 isDeleted];

      *(v66 + 14) = v72;
      *(v66 + 18) = 2048;
      v73 = CollectionViewLayoutContext.section.getter();
      v74 = v56;
      v75 = SnapshotDataSource.numberOfItems(in:)(v73);

      v76 = *(v65 + 8);
      v77 = v101;
      v76(v74, v101);
      *(v66 + 20) = v75;

      *(v66 + 28) = 2048;
      v78 = v94;
      v79 = CollectionViewLayoutContext.section.getter();
      v76(v78, v77);
      *(v66 + 30) = v79;
      _os_log_impl(&_mh_execute_header, v63, v92, "feedItem %s is in the feed without a section! isDeleted=%{BOOL}d, %ld items in section %ld", v66, 0x26u);
      sub_100003B90(v95);

      (*(v99 + 8))(v91, v100);
    }

    else
    {
      v81 = *(v54 + 8);
      v81(v94, v58);

      v81(v56, v58);
      (*(v99 + 8))(v53, v100);
    }

    v50 = v98;
    static LayoutConfiguration.empty.getter();
    isa = LayoutConfiguration.layoutSection.getter();

    goto LABEL_15;
  }

  v31 = v30;
  v32 = v93;
  static LayoutConfiguration.card.getter();
  if (*(v2 + qword_1000DC598) == 1)
  {
    LayoutConfiguration.interItemInset.getter();
    v34 = v33;
    v35 = LayoutConfiguration.additionalContentInsets.modify();
    *(v36 + 16) = v34;
    v35(v106, 0);
  }

  v37 = [v31 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = ForYouSectionKind.init(rawValue:)();
  v39 = v92;
  if (v38 > 2)
  {
    if (v38 == 3)
    {
      v80 = v84;
      static ListLayoutConfiguration.apps.getter();
      CollectionViewLayoutContext.environment.getter();
      isa = ListLayoutConfiguration.layout(for:)();

      swift_unknownObjectRelease();
      (*(v85 + 8))(v80, v86);
      v50 = v32;
    }

    else
    {
      v50 = v32;
      isa = LayoutConfiguration.layoutSection.getter();
    }

    goto LABEL_15;
  }

  v40 = v104;
  if (v38 < 2)
  {
    static GridLayoutEngine.largeCard.getter();
    v41 = GridLayoutEngine.layout(for:)();
    if (!v40)
    {
      goto LABEL_26;
    }

LABEL_24:
    isa = v89;

    (*(v88 + 8))(v39, isa);
    (*(v102 + 8))(v32, v103);
    return isa;
  }

  v39 = v87;
  static GridLayoutEngine.articles.getter();
  v41 = GridLayoutEngine.layout(for:)();
  if (v40)
  {
    goto LABEL_24;
  }

LABEL_26:
  v82 = v41;
  (*(v88 + 8))(v39, v89);
  v83 = [objc_opt_self() estimatedDimension:100.0];
  isa = NSCollectionLayoutSection.withHeader(height:alignment:)(v83, NSRectAlignmentTopLeading).super.isa;

  v50 = v32;
LABEL_15:
  (*(v102 + 8))(v50, v103);
  return isa;
}

void *sub_10001B3F0(uint64_t a1, uint64_t a2)
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

  sub_1000091E4(0, &qword_1000DB6A8, sub_10001B4A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

void sub_10001B4A8(uint64_t a1)
{
  if (!qword_1000DB690)
  {
    sub_100003DDC(255, &qword_1000DB678, HKDisplayCategory_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DB690);
    }
  }
}

uint64_t sub_10001B524(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ListLayoutConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ListLayoutConfiguration.withoutHeader.getter();
  v6 = ListLayoutConfiguration.layout(for:)();
  (*(v3 + 8))(v5, v2);
  return v6;
}

void *sub_10001B5F8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_10001B758(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001B4A8(0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1000325EC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10001BAA0(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_10001B854(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100033BBC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10001B758(v5);
  *a1 = v2;
  return result;
}

void sub_10001B8C0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_10001B914(v3);
}

void sub_10001B914(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SummaryFeedViewController(0);
  v11.receiver = v2;
  v11.super_class = v8;
  objc_msgSendSuper2(&v11, "viewDidAppear:", a1 & 1);
  sub_10001BC98();
  Date.init()();
  dispatch thunk of PersonalizedFeedTrainer.feedDidBeginDisplay(at:)();

  (*(v5 + 8))(v7, v4);
  v9 = [v2 userActivity];
  if (v9)
  {
    v10 = v9;
    [v2 submitUserActivityForRestoration:v9];
  }

  if (qword_1000DA5A8 != -1)
  {
    swift_once();
  }

  sub_10001BDC8();
  sub_100018B30();
}

uint64_t sub_10001BAA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    v28 = *a4;
LABEL_6:
    v26 = v5;
    v27 = a3;
    v7 = v4 + 16 * a3;
    v8 = *v7;
    v9 = *(v7 + 8);
    v25 = v6;
    while (1)
    {
      v11 = *(v5 - 16);
      v10 = *(v5 - 8);
      if (v9 == v10)
      {
        v12 = v8;
        v13 = v11;
        v14 = [v12 categoryName];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = [v13 categoryName];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v29 == v18 && v16 == v20)
        {

          v4 = v28;
LABEL_5:
          a3 = v27 + 1;
          v5 = v26 + 16;
          v6 = v25 - 1;
          if (v27 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v4 = v28;
        if ((v22 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v10 >= v9)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v8 = *v5;
      v9 = *(v5 + 8);
      *v5 = *(v5 - 16);
      *(v5 - 8) = v9;
      *(v5 - 16) = v8;
      v5 -= 16;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001BC40@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1000DCBC0;
  swift_beginAccess();
  return sub_10000ACE8(v1 + v3, a1);
}

uint64_t sub_10001BC98()
{
  v1 = type metadata accessor for PersonalizedFeedTrainer.DwellPolicy();
  __chkstk_darwin(v1 - 8);
  v2 = qword_1000DCBA0;
  if (*&v0[qword_1000DCBA0])
  {
    v3 = *&v0[qword_1000DCBA0];
  }

  else
  {
    sub_100007D4C(&qword_1000DCD68, type metadata accessor for SummaryFeedViewController, &unk_1000AFDE8);
    static PersonalizedFeedTrainer.DwellPolicy.summary.getter();
    type metadata accessor for PersonalizedFeedTrainer();
    swift_allocObject();
    v4 = v0;
    v3 = PersonalizedFeedTrainer.init(delegate:dwellPolicy:)();
    *&v0[v2] = v3;
  }

  return v3;
}

uint64_t sub_10001BDC8()
{
  v1 = v0;
  v47 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v8 = (v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v49 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v44 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = v34 - v12;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin(v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v16);
  v17 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v17);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[10] & 1) == 0)
  {
    *(v0 + 80) = 1;
    v40 = v19;
    v41 = result;
    v34[2] = sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    v34[1] = "FeedItemFetchRequestNoFaults";
    static DispatchQoS.background.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100007D04(&unk_1000DD150, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    v39 = v3;
    v35 = v9;
    v38 = v5;
    v36 = &type metadata accessor for Array;
    sub_100006120(0, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
    v37 = v2;
    sub_100007EA4(&unk_1000DD160, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v42 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v43);
    v43 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v22 = v44;
    static DispatchTime.now()();
    *v8 = 100;
    v24 = v45;
    v23 = v46;
    (*(v45 + 104))(v8, enum case for DispatchTimeInterval.milliseconds(_:), v46);
    v25 = v48;
    + infix(_:_:)();
    (*(v24 + 8))(v8, v23);
    v26 = *(v49 + 8);
    v27 = v35;
    v26(v22, v35);
    v28 = swift_allocObject();
    v29 = v47;
    *(v28 + 16) = v1;
    *(v28 + 24) = v29;
    aBlock[4] = sub_100085604;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008310;
    aBlock[3] = &unk_1000D03D0;
    v30 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v50 = _swiftEmptyArrayStorage;
    sub_100007D04(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100006120(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, v36);
    sub_100007EA4(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
    v31 = v38;
    v32 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v43;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v30);

    (*(v39 + 8))(v31, v32);
    (*(v40 + 8))(v21, v41);
    v26(v25, v27);
  }

  return result;
}

uint64_t sub_10001C4B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C4F8(uint64_t a1)
{
  v3 = qword_1000DCBB8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10001C550()
{
  sub_1000091E4(0, &qword_1000DB658, sub_10000BF7C);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000AE100;
  *(v0 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  return v0;
}

uint64_t sub_10001C5C4(void *a1, uint64_t a2, void *a3, void *a4)
{
  type metadata accessor for PlatformTabCollectionViewController();
  v7 = method lookup function for CompoundDataSourceCollectionViewController();
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  v7(a3, v8);
  v10 = [a3 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (v11 != [v8 horizontalSizeClass])
  {
    sub_100018B30();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10001C6AC(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_10001BC98();
  Date.init()();
  dispatch thunk of PersonalizedFeedTrainer.visibleFeedItemsDidChange(at:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10001C800()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    v12[1] = ObjectType;
    *v7 = 136446466;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_1000036D0(v8, v9, v12);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000036D0(0xD000000000000018, 0x80000001000A8890, v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s]: Lifecycle: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10001C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_projectBox();
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = ListLayoutConfiguration.layout(for:)();
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_10001CB30(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ListLayoutConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ListLayoutConfiguration.withoutHeader.getter();
  v6 = ListLayoutConfiguration.layout(for:)();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_10001CC90()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    v12[1] = ObjectType;
    *v7 = 136446466;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_1000036D0(v8, v9, v12);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000036D0(0xD000000000000027, 0x80000001000A79D0, v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s]: Lifecycle: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_10001CE8C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = sub_1000036D0(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] starting interactive generation listener", v8, 0xCu);
    sub_100003B90(v9);
  }

  (*(v3 + 8))(v5, v2);
  v13 = sub_10001D04C();
  dispatch thunk of InteractiveGenerationListener.start()();
}

id sub_10001D04C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    v4 = [objc_allocWithZone(type metadata accessor for InteractiveGenerationListener()) init];
    v5 = [objc_opt_self() sharedApplication];
    sub_10001D0F4();
    dispatch thunk of InteractiveGenerationListener.applicationStateProvider.setter();
    v6 = *(v3 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

unint64_t sub_10001D0F4()
{
  result = qword_1000DDE88;
  if (!qword_1000DDE88)
  {
    sub_100003DDC(255, &qword_1000DDE90, UIApplication_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE88);
  }

  return result;
}

uint64_t sub_10001D16C(uint64_t a1, uint64_t a2)
{
  sub_1000062CC(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for CloudSyncRestoreState();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC6Health23CloudSyncStartupManager_lastKnownFirstRestoreState;
    swift_beginAccess();
    sub_10001D308(v5, v7 + v10);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10001D308(uint64_t a1, uint64_t a2)
{
  sub_1000062CC(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}