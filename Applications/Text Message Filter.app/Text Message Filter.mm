Swift::Void __swiftcall ViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ViewController();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100003080;
  *(v3 + 56) = &type metadata for String;
  strcpy((v3 + 32), "VIEW APPEARED");
  *(v3 + 46) = -4864;
  print(_:separator:terminator:)();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id ViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id ViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ViewController.viewDidLoad()(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIApplicationOpenExternalURLOptionsKey@<X0>(void *a3@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  *a3 = v4;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIApplicationOpenExternalURLOptionsKey(void *a1, uint64_t *a2)
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

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UIApplicationOpenExternalURLOptionsKey@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UIApplicationOpenExternalURLOptionsKey@<X0>(uint64_t *a2@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);
  v3 = lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMd, &_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (UIApplicationOpenExternalURLOptionsKey, Any)(v4, &v12);
      v5 = v12;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v13, (v3[7] + 32 * result));
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void specialized ViewController.goToSettings(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v1 = &v9 - v0;
  v2 = [objc_opt_self() sharedApplication];
  URL.init(string:)();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    __break(1u);
  }

  else
  {
    URL._bridgeToObjectiveC()(v5);
    v7 = v6;
    (*(v4 + 8))(v1, v3);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    type metadata accessor for UIApplicationOpenExternalURLOptionsKey();
    lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 openURL:v7 options:isa completionHandler:0];
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void type metadata accessor for UIApplicationOpenExternalURLOptionsKey()
{
  if (!lazy cache variable for type metadata for UIApplicationOpenExternalURLOptionsKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for UIApplicationOpenExternalURLOptionsKey);
    }
  }
}

uint64_t outlined init with copy of (UIApplicationOpenExternalURLOptionsKey, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMd, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIApplicationOpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UISceneConfiguration __swiftcall AppDelegate.application(_:configurationForConnecting:options:)(UIApplication _, UISceneSession configurationForConnecting, UISceneConnectionOptions options)
{
  v3 = [(objc_class *)configurationForConnecting.super.isa role];
  v4 = objc_allocWithZone(UISceneConfiguration);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithName:v5 sessionRole:v3];

  return v6;
}

id SceneDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id AppDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

void *SceneDelegate.window.getter()
{
  v1 = OBJC_IVAR____TtC19Text_Message_Filter13SceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SceneDelegate.window.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19Text_Message_Filter13SceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SceneDelegate.init()()
{
  *&v0[OBJC_IVAR____TtC19Text_Message_Filter13SceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id SceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002700@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_10000275C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x60);
  v4 = *a1;
  return v3(v2);
}