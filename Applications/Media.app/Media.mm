uint64_t sub_1000025F0(uint64_t a1)
{
  qword_1000EF3C0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000028E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002904(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cameraIrisStateChangedWithToken:a2];
}

uint64_t variable initialization expression of TerrestrialRadioStation._matchedStation@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Station();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id variable initialization expression of NowPlayingObserver.callObserver()
{
  v0 = objc_allocWithZone(type metadata accessor for CallObserver(0));

  return [v0 init];
}

void *sub_100002AA4()
{
  if (!(_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
  {
    return &_swiftEmptySetSingleton;
  }

  return sub_100003210(_swiftEmptyArrayStorage);
}

uint64_t sub_100002B44@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_100002BD4(void *a1, uint64_t *a2)
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

void *sub_100002C04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100002C30@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100002D30()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100002D6C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100002DC0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100002E34(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002EAC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002F2C@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

void *sub_100002F70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002F84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100003A9C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100002FC4(void *a1, uint64_t *a2)
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

uint64_t sub_100003050(uint64_t a1)
{
  v2 = sub_1000036D4(&qword_1000EAEB8, type metadata accessor for Key, &unk_1000B39FC);
  v3 = sub_1000036D4(&unk_1000EAEC0, type metadata accessor for Key, &unk_1000B3908);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000310C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003154(uint64_t a1)
{
  v2 = sub_1000036D4(&qword_1000EF270, type metadata accessor for LaunchOptionsKey, &unk_1000B3A40);
  v3 = sub_1000036D4(&qword_1000EAED0, type metadata accessor for LaunchOptionsKey, &unk_1000B37E8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_100003210(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_10000368C(&qword_1000EAE50, &unk_1000B36B0);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_1000036D4(&qword_1000EAE58, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1000036D4(&qword_1000EAE60, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

__n128 sub_1000034A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000034C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100003518(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RoundedCornerShape(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RoundedCornerShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RoundedCornerShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_10000360C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003618(uint64_t a1, int a2)
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

uint64_t sub_100003638(uint64_t result, int a2, int a3)
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

uint64_t sub_10000368C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000036D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100003930(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100003A9C(uint64_t a1)
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

char *sub_100003B38(uint64_t a1)
{
  v2 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v2 - 8);
  v34 = &v28 - v3;
  v29 = sub_10000368C(&qword_1000EAF98, &unk_1000B3C90);
  __chkstk_darwin(v29);
  v4 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v6 = sub_10000368C(&qword_1000EAFA0, &qword_1000B3CA0);
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = sub_10000368C(&qword_1000EAFA8, &qword_1000B3CA8);
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v12 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC5Media18RadioSourcesButton_subscriptions] = v12;
  swift_weakInit();
  swift_weakAssign();
  v13 = type metadata accessor for RadioSourcesButton();
  v36.receiver = v1;
  v36.super_class = v13;
  v14 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15 = [v14 layer];
  v16 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  [v15 setCompositingFilter:v16];

  v17 = v14;
  v18 = String._bridgeToObjectiveC()();
  [v17 setAccessibilityIdentifier:v18];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = objc_opt_self();
  v20 = v17;
  v21 = [v19 labelColor];
  [v20 setTintColor:v21];

  swift_beginAccess();
  sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100005870(&unk_1000EBDF0, &unk_1000EC860, &qword_1000B50F0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100005870(&qword_1000EAFB8, &qword_1000EAF98, &unk_1000B3C90, &protocol conformance descriptor for Published<A>.Publisher);
  Publishers.CombineLatest3.init(_:_:_:)();
  v22 = [objc_opt_self() mainRunLoop];
  v35 = v22;
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v24 = v34;
  (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
  sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
  sub_100005870(&qword_1000EAFC0, &qword_1000EAFA0, &qword_1000B3CA0, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  sub_1000058D0(&qword_1000ED0D0, &unk_1000ED0C0, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v25 = v31;
  Publisher.receive<A>(on:options:)();
  sub_1000057C8(v24);

  (*(v30 + 8))(v8, v25);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100005870(&qword_1000EAFC8, &qword_1000EAFA8, &qword_1000B3CA8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v26 = v33;
  Publisher<>.sink(receiveValue:)();

  (*(v32 + 8))(v11, v26);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  [v20 updateConfiguration];

  return v20;
}

void sub_1000042B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setNeedsUpdateConfiguration];
  }
}

void sub_1000043D0(void *a1, uint64_t a2)
{
  v3 = v2;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for RadioSourcesButton();
  objc_msgSendSuper2(&v12, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v6 = [a1 nextFocusedView];
  if (v6)
  {
    v7 = v6;
    sub_100005A50(0, &qword_1000EEEA0, NSObject_ptr);
    v8 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 previouslyFocusedView];
  if (v9)
  {
    v10 = v9;
    sub_100005A50(0, &qword_1000EEEA0, NSObject_ptr);
    v11 = static NSObject.== infix(_:_:)();

    if (((v8 | v11) & 1) == 0)
    {
      return;
    }
  }

  else if ((v8 & 1) == 0)
  {
    return;
  }

  [v3 setNeedsUpdateConfiguration];
}

Swift::Int sub_100004574()
{
  v1 = sub_10000368C(&unk_1000EEEE0, &qword_1000B3CC0);
  __chkstk_darwin(v1 - 8);
  v86 = &v78 - v2;
  v3 = type metadata accessor for UIButton.Configuration.Indicator();
  v88 = *(v3 - 8);
  v89 = v3;
  __chkstk_darwin(v3);
  v87 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000368C(&qword_1000EAFD0, &qword_1000B3CC8);
  __chkstk_darwin(v5 - 8);
  v81 = &v78 - v6;
  v7 = sub_10000368C(&qword_1000EAFD8, &qword_1000B3CD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v78 - v8;
  v10 = type metadata accessor for UIConfigurationColorTransformer();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for UIButton.Configuration();
  v82 = *(v15 - 8);
  v83 = v15;
  __chkstk_darwin(v15);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.borderedTinted()();
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  v80 = objc_opt_self();
  v18 = [v80 clearColor];
  v19 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v19(&v93, 0);
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIConfigurationColorTransformer.init(_:)();
  v20 = *(v11 + 16);
  v20(v9, v13, v10);
  v85 = v11;
  v21 = *(v11 + 56);
  v21(v9, 0, 1, v10);
  UIButton.Configuration.indicatorColorTransformer.setter();
  v84 = v13;
  v22 = v13;
  v23 = v10;
  v20(v9, v22, v10);
  v21(v9, 0, 1, v10);
  UIButton.Configuration.imageColorTransformer.setter();
  v90 = v0;
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , (v24 = v93) == 0))
  {
    v44 = [objc_opt_self() mainBundle];
    v97._object = 0xE000000000000000;
    v45._countAndFlagsBits = 0x5F4E574F4E4B4E55;
    v45._object = 0xEE00454352554F53;
    v46.value._countAndFlagsBits = 0x6F69646152;
    v46.value._object = 0xE500000000000000;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v97._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v46, v44, v47, v97);

    String.init(format:_:)();

    UIButton.Configuration.title.setter();
    UIButton.Configuration.showsActivityIndicator.setter();
    (*(v88 + 104))(v87, enum case for UIButton.Configuration.Indicator.popup(_:), v89);
    UIButton.Configuration.indicator.setter();
    UIConfigurationColorTransformer.init(_:)();
    v21(v9, 0, 1, v23);
    UIButton.Configuration.indicatorColorTransformer.setter();
    [v90 setEnabled:1];
    goto LABEL_16;
  }

  v25 = v90;
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , (v26 = v93) == 0))
  {
    [v25 setEnabled:1];
    UIButton.Configuration.showsActivityIndicator.setter();
    v48 = objc_opt_self();
    v49 = [v48 configurationWithTextStyle:UIFontTextStyleCaption1];
    v50 = [v48 configurationWithWeight:5];
    v51 = [v49 configurationByApplyingConfiguration:v50];

    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
    sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr, &protocol conformance descriptor for CAFMediaSource);
    v52 = CAFObserved<>.observable.getter();
    v53 = dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
    sub_100083720(v53);

    UIButton.Configuration.image.setter();
    UIButton.Configuration.imagePlacement.setter();
    (*(v88 + 104))(v87, enum case for UIButton.Configuration.Indicator.popup(_:), v89);
    UIButton.Configuration.indicator.setter();
    UIConfigurationColorTransformer.init(_:)();
    v21(v9, 0, 1, v23);
    UIButton.Configuration.indicatorColorTransformer.setter();
    v54 = CAFObserved<>.observable.getter();
    v55 = sub_100083338(v54);
    v57 = v56;

    if (String.count.getter() >= 11)
    {
      v58 = sub_100084474(10, v55, v57);
      v60 = v59;
      v62 = v61;
      v64 = v63;

      v91 = 0;
      v92 = 0xE000000000000000;
      v65 = String.count.getter();
      v66 = Substring.distance(from:to:)();
      v40 = __OFADD__(v65, v66);
      result = v65 + v66;
      if (v40)
      {
        __break(1u);
        goto LABEL_18;
      }

      String.reserveCapacity(_:)(result);
      v93 = v58;
      v94 = v60;
      v95 = v62;
      v96 = v64;
      sub_100005954();
      String.append<A>(contentsOf:)();
      v93 = 10911970;
      v94 = 0xA300000000000000;
      String.append<A>(contentsOf:)();
    }

    UIButton.Configuration.title.setter();
    v67 = swift_allocObject();
    v68 = v90;
    *(v67 + 16) = v90;
    v69 = v68;
    v70 = v81;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v71 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    if ([v69 isFocused])
    {
      _UISolariumEnabled();
      v72 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.cornerRadius.setter();
      v72(&v93, 0);
      v73 = [v80 radio_carSystemFocusColor];
      v74 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v74(&v93, 0);
    }

    goto LABEL_16;
  }

  v80 = v24;
  sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
  sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr, &protocol conformance descriptor for CAFMediaSource);
  v79 = v26;
  v27 = CAFObserved<>.observable.getter();
  v28 = sub_100083338(v27);
  v30 = v29;

  if (String.count.getter() < 11)
  {
LABEL_8:
    UIButton.Configuration.title.setter();
    v42 = v81;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v43 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    (*(v88 + 104))(v87, enum case for UIButton.Configuration.Indicator.none(_:), v89);
    UIButton.Configuration.indicator.setter();
    UIButton.Configuration.showsActivityIndicator.setter();
    UIConfigurationColorTransformer.init(_:)();
    v21(v9, 0, 1, v23);
    UIButton.Configuration.activityIndicatorColorTransformer.setter();
    UIButton.Configuration.imagePlacement.setter();
    [v25 setEnabled:0];

LABEL_16:
    v76 = v82;
    v75 = v83;
    v77 = v86;
    (*(v82 + 16))(v86, v17, v83);
    (*(v76 + 56))(v77, 0, 1, v75);
    UIButton.configuration.setter();
    (*(v85 + 8))(v84, v23);
    return (*(v76 + 8))(v17, v75);
  }

  v31 = sub_100084474(10, v28, v30);
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v91 = 0;
  v92 = 0xE000000000000000;
  v38 = String.count.getter();
  v78 = v35;
  v39 = Substring.distance(from:to:)();
  v40 = __OFADD__(v38, v39);
  result = v38 + v39;
  if (!v40)
  {
    String.reserveCapacity(_:)(result);
    v93 = v31;
    v94 = v33;
    v95 = v78;
    v96 = v37;
    sub_100005954();
    String.append<A>(contentsOf:)();
    v93 = 10911970;
    v94 = 0xA300000000000000;
    String.append<A>(contentsOf:)();

    v25 = v90;
    goto LABEL_8;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100005314(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong isFocused];
    v5 = objc_opt_self();
    if (v4)
    {
      v6 = [v5 radio_carSystemFocusLabelColor];
    }

    else
    {
      v6 = [v5 labelColor];
    }

    v9 = v6;

    return v9;
  }

  else
  {
    v7 = [objc_opt_self() labelColor];

    return v7;
  }
}

id sub_1000053F0()
{
  v0 = [objc_opt_self() secondaryLabelColor];

  return v0;
}

uint64_t sub_100005430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = [objc_opt_self() secondaryLabelColor];
  sub_1000059A8();
  AttributeContainer.subscript.setter();
  [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  sub_1000059FC();
  return AttributeContainer.subscript.setter();
}

uint64_t sub_100005530@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  LODWORD(a2) = [a2 isFocused];
  v7 = objc_opt_self();
  v8 = &selRef_radio_carSystemFocusLabelColor;
  if (!a2)
  {
    v8 = &selRef_labelColor;
  }

  v9 = [v7 *v8];
  sub_1000059A8();
  AttributeContainer.subscript.setter();
  [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  sub_1000059FC();
  return AttributeContainer.subscript.setter();
}

id sub_1000056DC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RadioSourcesButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100005780(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000057C8(uint64_t a1)
{
  v2 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005830()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005870(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000058D0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005A50(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005914()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100005954()
{
  result = qword_1000EAFF0;
  if (!qword_1000EAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EAFF0);
  }

  return result;
}

unint64_t sub_1000059A8()
{
  result = qword_1000EAFF8;
  if (!qword_1000EAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EAFF8);
  }

  return result;
}

unint64_t sub_1000059FC()
{
  result = qword_1000EB000;
  if (!qword_1000EB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB000);
  }

  return result;
}

uint64_t sub_100005A50(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100005A9C()
{
  type metadata accessor for RadioSignpostManager();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptySetSingleton;
  qword_1000F3B28 = result;
  return result;
}

void sub_100005AD4(uint64_t a1, unsigned __int8 a2)
{
  if (qword_1000EACE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3B88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    if (a2 > 3u)
    {
      v15 = 0x80000001000BAE60;
      v16 = 0xD000000000000021;
      if (a2 != 6)
      {
        v16 = 0xD00000000000001ELL;
        v15 = 0x80000001000BAE90;
      }

      v17 = 0xD00000000000001FLL;
      if (a2 == 4)
      {
        v17 = 0x657A696C616E6966;
        v18 = 0xE900000000000064;
      }

      else
      {
        v18 = 0x80000001000BAE40;
      }

      if (a2 <= 5u)
      {
        v13 = v17;
      }

      else
      {
        v13 = v16;
      }

      if (a2 <= 5u)
      {
        v14 = v18;
      }

      else
      {
        v14 = v15;
      }
    }

    else
    {
      v9 = 0xE800000000000000;
      v10 = 0x646568636E75616CLL;
      v11 = 0xE500000000000000;
      v12 = 0x656E656373;
      if (a2 != 2)
      {
        v12 = 0x64657265646E6572;
        v11 = 0xE800000000000000;
      }

      if (a2)
      {
        v10 = 0x4F746E6174736E69;
        v9 = 0xE90000000000006ELL;
      }

      if (a2 <= 1u)
      {
        v13 = v10;
      }

      else
      {
        v13 = v12;
      }

      if (a2 <= 1u)
      {
        v14 = v9;
      }

      else
      {
        v14 = v11;
      }
    }

    v19 = sub_100043AF0(v13, v14, &v21);

    *(v7 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Firing signpost %s", v7, 0xCu);
    sub_100006960(v8);
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {

      _CAFSignpostEmit_Finalized(a1);
    }

    else
    {
      v20 = String._bridgeToObjectiveC()();
      CAFSignpostEmit_SceneWillEnterForeground();
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {

      _CAFSignpostEmit_Scene();
    }

    else
    {

      _CAFSignpostEmit_Rendered();
    }
  }

  else if (a2)
  {

    _CAFSignpostEmit_InstantOn();
  }

  else
  {

    _CAFSignpostEmit_Launched();
  }
}

unint64_t sub_100005ED4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000068DC(*a1);
  *a2 = result;
  return result;
}

void sub_100005F04(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001000BAE60;
    v9 = 0xD000000000000021;
    if (v2 != 6)
    {
      v9 = 0xD00000000000001ELL;
      v8 = 0x80000001000BAE90;
    }

    v10 = 0xD00000000000001FLL;
    if (v2 == 4)
    {
      v10 = 0x657A696C616E6966;
      v11 = 0xE900000000000064;
    }

    else
    {
      v11 = 0x80000001000BAE40;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x646568636E75616CLL;
    v5 = 0xE500000000000000;
    v6 = 0x656E656373;
    if (v2 != 2)
    {
      v6 = 0x64657265646E6572;
      v5 = 0xE800000000000000;
    }

    if (*v1)
    {
      v4 = 0x4F746E6174736E69;
      v3 = 0xE90000000000006ELL;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_100006020()
{
  v1 = v0;
  if (qword_1000EACE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Resetting all signposts", v5, 2u);
  }

  swift_beginAccess();
  *(v1 + 16) = &_swiftEmptySetSingleton;
}

void sub_10000612C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);

  v6 = sub_1000063F4(a1, v5);

  if (v6)
  {
    if (qword_1000EACE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006928(v7, qword_1000F3B88);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136315138;
      if (a1 > 3u)
      {
        v18 = 0x80000001000BAE60;
        v19 = 0xD000000000000021;
        if (a1 != 6)
        {
          v19 = 0xD00000000000001ELL;
          v18 = 0x80000001000BAE90;
        }

        v20 = 0xD00000000000001FLL;
        if (a1 == 4)
        {
          v20 = 0x657A696C616E6966;
          v21 = 0xE900000000000064;
        }

        else
        {
          v21 = 0x80000001000BAE40;
        }

        if (a1 <= 5u)
        {
          v16 = v20;
        }

        else
        {
          v16 = v19;
        }

        if (a1 <= 5u)
        {
          v17 = v21;
        }

        else
        {
          v17 = v18;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x646568636E75616CLL;
        v14 = 0xE500000000000000;
        v15 = 0x656E656373;
        if (a1 != 2)
        {
          v15 = 0x64657265646E6572;
          v14 = 0xE800000000000000;
        }

        if (a1)
        {
          v13 = 0x4F746E6174736E69;
          v12 = 0xE90000000000006ELL;
        }

        if (a1 <= 1u)
        {
          v16 = v13;
        }

        else
        {
          v16 = v15;
        }

        if (a1 <= 1u)
        {
          v17 = v12;
        }

        else
        {
          v17 = v14;
        }
      }

      v22 = sub_100043AF0(v16, v17, v23);

      *(v10 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v8, v9, "Already fired signpost %s", v10, 0xCu);
      sub_100006960(v11);
    }
  }

  else
  {
    swift_beginAccess();
    sub_10007B4B0(&v24, a1);
    swift_endAccess();
    sub_100005AD4(a2, a1);
  }
}

uint64_t sub_1000063F4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, v4 = sub_10002F414(*(a2 + 40), a1), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v29 = ~v5;
    v7 = 0x4F746E6174736E69;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 > 3)
      {
        if (*(*(a2 + 48) + v6) > 5u)
        {
          if (v8 == 6)
          {
            v13 = 0xD000000000000021;
            v14 = 0x80000001000BAE60;
          }

          else
          {
            v13 = 0xD00000000000001ELL;
            v14 = 0x80000001000BAE90;
          }
        }

        else
        {
          v13 = v8 == 4 ? 0x657A696C616E6966 : 0xD00000000000001FLL;
          v14 = v8 == 4 ? 0xE900000000000064 : 0x80000001000BAE40;
        }
      }

      else
      {
        if (v8 == 2)
        {
          v9 = 0x656E656373;
        }

        else
        {
          v9 = 0x64657265646E6572;
        }

        if (v8 == 2)
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xE800000000000000;
        }

        v11 = 0xE90000000000006ELL;
        if (*(*(a2 + 48) + v6))
        {
          v12 = v7;
        }

        else
        {
          v12 = 0x646568636E75616CLL;
        }

        if (!*(*(a2 + 48) + v6))
        {
          v11 = 0xE800000000000000;
        }

        v13 = *(*(a2 + 48) + v6) <= 1u ? v12 : v9;
        v14 = *(*(a2 + 48) + v6) <= 1u ? v11 : v10;
      }

      v15 = v3;
      v16 = 0xD000000000000021;
      if (v3 != 6)
      {
        v16 = 0xD00000000000001ELL;
      }

      v17 = 0x80000001000BAE90;
      if (v3 == 6)
      {
        v17 = 0x80000001000BAE60;
      }

      v18 = 0x657A696C616E6966;
      if (v3 != 4)
      {
        v18 = 0xD00000000000001FLL;
      }

      v19 = 0x80000001000BAE40;
      if (v3 == 4)
      {
        v19 = 0xE900000000000064;
      }

      if (v3 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (v3 == 2)
      {
        v20 = 0x656E656373;
      }

      else
      {
        v20 = 0x64657265646E6572;
      }

      if (v3 == 2)
      {
        v21 = 0xE500000000000000;
      }

      else
      {
        v21 = 0xE800000000000000;
      }

      v22 = 0xE90000000000006ELL;
      if (v3)
      {
        v23 = v7;
      }

      else
      {
        v23 = 0x646568636E75616CLL;
      }

      if (!v3)
      {
        v22 = 0xE800000000000000;
      }

      if (v3 <= 1u)
      {
        v20 = v23;
        v21 = v22;
      }

      v24 = v3 <= 3u ? v20 : v16;
      v25 = v3 <= 3u ? v21 : v17;
      if (v13 == v24 && v14 == v25)
      {
        break;
      }

      v26 = v7;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        v6 = (v6 + 1) & v29;
        v3 = v15;
        v7 = v26;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v27 & 1;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_1000066B8()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for RadioSignpostManager.Signpost(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RadioSignpostManager.Signpost(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100006888()
{
  result = qword_1000EB0D8;
  if (!qword_1000EB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB0D8);
  }

  return result;
}

unint64_t sub_1000068DC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DF0B0, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100006928(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006960(void *a1)
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

uint64_t sub_1000069B8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000069F8(uint64_t a1, char a2)
{
  v4 = sub_10000368C(&qword_1000EB0E0, &qword_1000B3F30);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = sub_10000368C(&qword_1000EB0E8, &qword_1000B3F38);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    v19 = v6;
    v15 = v14;
    os_log(_:dso:log:_:_:)();

    v6 = v19;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    a1 = v20;
  }

  swift_getKeyPath();
  v20 = a1;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(a1 + 44);

  if (v16 == 1)
  {
    *v9 = static HorizontalAlignment.leading.getter();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v17 = sub_10000368C(&qword_1000EB108, &qword_1000B3F90);
    sub_100006DA0(&v9[*(v17 + 44)]);
    sub_1000077CC(v9, v6, &qword_1000EB0E8, &qword_1000B3F38);
    swift_storeEnumTagMultiPayload();
    sub_100005870(&qword_1000EB0F8, &qword_1000EB0E8, &qword_1000B3F38, &protocol conformance descriptor for VStack<A>);
    sub_100007590();
    _ConditionalContent<>.init(storage:)();
    return sub_100007834(v9, &qword_1000EB0E8, &qword_1000B3F38);
  }

  else
  {
    *v6 = swift_getKeyPath();
    v6[8] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100005870(&qword_1000EB0F8, &qword_1000EB0E8, &qword_1000B3F38, &protocol conformance descriptor for VStack<A>);
    sub_100007590();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100006DA0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MediaProgressView(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000368C(&qword_1000EB110, &qword_1000B3F98);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v26 - v12;
  __chkstk_darwin(v11);
  v15 = v26 - v14;
  KeyPath = swift_getKeyPath();
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v17 = *(v3 + 28);
  *&v5[v17] = swift_getKeyPath();
  sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  swift_storeEnumTagMultiPayload();
  v18 = &v5[*(v3 + 32)];
  type metadata accessor for PlaybackTimeObserver(0);
  swift_allocObject();
  v26[1] = sub_100063724();
  State.init(wrappedValue:)();
  v19 = *(&v27 + 1);
  *v18 = v27;
  *(v18 + 1) = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000076F8(v5, v13);
  v20 = &v13[*(v7 + 44)];
  v21 = v32;
  *(v20 + 4) = v31;
  *(v20 + 5) = v21;
  *(v20 + 6) = v33;
  v22 = v28;
  *v20 = v27;
  *(v20 + 1) = v22;
  v23 = v30;
  *(v20 + 2) = v29;
  *(v20 + 3) = v23;
  sub_10000775C(v13, v15);
  sub_1000077CC(v15, v10, &qword_1000EB110, &qword_1000B3F98);
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v24 = sub_10000368C(&qword_1000EB120, &qword_1000B3FD8);
  sub_1000077CC(v10, a1 + *(v24 + 64), &qword_1000EB110, &qword_1000B3F98);

  sub_100007834(v15, &qword_1000EB110, &qword_1000B3F98);
  sub_100007834(v10, &qword_1000EB110, &qword_1000B3F98);
}

uint64_t sub_10000708C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();

  v10 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v26;
  }

  v23 = v7;
  v24 = v6;
  swift_getKeyPath();
  v26 = v10;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v10 + 43);

  if (v12 == 1)
  {
    v13 = static HorizontalAlignment.leading.getter();
    v14 = swift_getKeyPath();

    v15 = 0;
    v16 = 0x4028000000000000;
  }

  else
  {
    v16 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
  }

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v23 + 8))(v9, v24);
    a1 = v26;
  }

  swift_getKeyPath();
  v26 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(a1 + 41);

  if (v18 == 1)
  {
    v19 = swift_getKeyPath();

    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = -1;
  }

  v21 = KeyPath;
  swift_retain_n();
  sub_100007A20(v16, 0, v13, 0, 0, v14, v15);
  sub_100007A38(v19, v20);
  sub_100007A4C(v16, 0, v13, 0, 0, v14, v15);
  sub_100007A64(v19, v20);

  LOBYTE(v26) = 0;
  *a3 = v21;
  *(a3 + 8) = 0;
  *(a3 + 16) = v16;
  *(a3 + 24) = 0;
  *(a3 + 32) = v13;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = v14;
  *(a3 + 64) = v15;
  *(a3 + 72) = v19;
  *(a3 + 80) = v20;
  sub_100007A64(v19, v20);
  sub_100007A4C(v16, 0, v13, 0, 0, v14, v15);
}

__n128 sub_100007468@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = static VerticalAlignment.center.getter();
  sub_10000708C(v3, v4, v8);
  *&v7[71] = v8[4];
  *&v7[55] = v8[3];
  *&v7[39] = v8[2];
  *&v7[23] = v8[1];
  *&v7[7] = v8[0];
  *(a1 + 49) = *&v7[32];
  *(a1 + 65) = *&v7[48];
  *(a1 + 81) = *&v7[64];
  result = *v7;
  *(a1 + 17) = *v7;
  v7[87] = v9;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 97) = *&v7[80];
  *(a1 + 33) = *&v7[16];
  return result;
}

unint64_t sub_100007530()
{
  result = qword_1000EB0F0;
  if (!qword_1000EB0F0)
  {
    type metadata accessor for RadioNowPlayingViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB0F0);
  }

  return result;
}

unint64_t sub_100007590()
{
  result = qword_1000EB100;
  if (!qword_1000EB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB100);
  }

  return result;
}

uint64_t sub_10000762C(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1000076F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaProgressView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000775C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000368C(&qword_1000EB110, &qword_1000B3F98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000077CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000368C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007834(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000368C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007898(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000078E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_10000793C()
{
  result = qword_1000EB128;
  if (!qword_1000EB128)
  {
    sub_100005780(&qword_1000EB130, &qword_1000B3FF8);
    sub_100005870(&qword_1000EB0F8, &qword_1000EB0E8, &qword_1000B3F38, &protocol conformance descriptor for VStack<A>);
    sub_100007590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB128);
  }

  return result;
}

uint64_t sub_100007A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
  }

  return result;
}

uint64_t sub_100007A38(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t sub_100007A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
  }

  return result;
}

uint64_t sub_100007A64(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t sub_100007AD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x756964654D616364;
  v5 = 0xE90000000000006DLL;
  if (a1 != 5)
  {
    v4 = 0x6C6C6154616364;
    v5 = 0xE700000000000000;
  }

  v6 = 0x6D696E694D616364;
  v7 = 0xEA00000000006C61;
  if (a1 != 3)
  {
    v6 = 0x6D696E694D616364;
    v7 = 0xEE00656469576C61;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
  }

  else
  {
    v6 = v4;
  }

  v8 = 0x4D646E417370616DLL;
  v9 = 0xEC00000061696465;
  if (a1 != 1)
  {
    v8 = 0xD000000000000010;
    v9 = 0x80000001000BAEF0;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEC00000061696465;
        if (v10 != 0x4D646E417370616DLL)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0x80000001000BAEF0;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701736302)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE90000000000006DLL;
      if (v10 != 0x756964654D616364)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6C6C6154616364)
      {
LABEL_40:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEA00000000006C61;
    if (v10 != 0x6D696E694D616364)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xEE00656469576C61;
    if (v10 != 0x6D696E694D616364)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_100007D1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x636E657571657266;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE900000000000079;
    v14 = 0x614E656372756F73;
    v15 = 0xEA0000000000656DLL;
    if (a1 != 2)
    {
      v14 = 0x4E6E6F6974617473;
      v15 = 0xEB00000000656D61;
    }

    v16 = 0xD000000000000010;
    if (a1)
    {
      v13 = 0x80000001000BAF40;
    }

    else
    {
      v16 = 0x636E657571657266;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v15;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6E6769736C6C6163;
    v7 = 0x73616369746C756DLL;
    if (a1 == 7)
    {
      v8 = 0xE900000000000074;
    }

    else
    {
      v7 = 0xD000000000000011;
      v8 = 0x80000001000BAFB0;
    }

    if (a1 != 6)
    {
      v6 = v7;
      v5 = v8;
    }

    v9 = 0x7954656372756F73;
    v10 = 0xEA00000000006570;
    if (a1 != 4)
    {
      v9 = 0xD000000000000011;
      v10 = 0x80000001000BAF80;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v3 = 0x7954656372756F73;
        v2 = 0xEA00000000006570;
        goto LABEL_44;
      }

      v3 = 0xD000000000000011;
      v17 = "stationIdentifier";
    }

    else
    {
      if (a2 == 6)
      {
        v2 = 0xE800000000000000;
        v3 = 0x6E6769736C6C6163;
        goto LABEL_44;
      }

      if (a2 == 7)
      {
        v3 = 0x73616369746C756DLL;
        goto LABEL_44;
      }

      v3 = 0xD000000000000011;
      v17 = "artworkIdentifier";
    }

    v2 = (v17 - 32) | 0x8000000000000000;
    goto LABEL_44;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = 0x614E656372756F73;
      v2 = 0xEA0000000000656DLL;
    }

    else
    {
      v3 = 0x4E6E6F6974617473;
      v2 = 0xEB00000000656D61;
    }
  }

  else if (a2)
  {
    v2 = 0x80000001000BAF40;
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE900000000000079;
  }

LABEL_44:
  if (v11 == v3 && v12 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

uint64_t sub_100007FDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7374726F7053;
    }

    else
    {
      v4 = 0x636973754DLL;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1802264916;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1937204558;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x726568744FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7374726F7053;
    }

    else
    {
      v9 = 0x636973754DLL;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1937204558;
    if (a2 != 3)
    {
      v6 = 0x726568744FLL;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1802264916;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100008134(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x80000001000BAE60;
    v10 = 0xD000000000000021;
    if (a1 != 6)
    {
      v10 = 0xD00000000000001ELL;
      v9 = 0x80000001000BAE90;
    }

    v11 = 0xD00000000000001FLL;
    if (a1 == 4)
    {
      v11 = 0x657A696C616E6966;
      v12 = 0xE900000000000064;
    }

    else
    {
      v12 = 0x80000001000BAE40;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE500000000000000;
    v5 = 0x656E656373;
    if (a1 != 2)
    {
      v5 = 0x64657265646E6572;
      v4 = 0xE800000000000000;
    }

    v6 = 0x4F746E6174736E69;
    if (a1)
    {
      v3 = 0xE90000000000006ELL;
    }

    else
    {
      v6 = 0x646568636E75616CLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x80000001000BAE60;
        if (v7 != 0xD000000000000021)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0x80000001000BAE90;
        if (v7 != 0xD00000000000001ELL)
        {
LABEL_48:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000064;
      if (v7 != 0x657A696C616E6966)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0x80000001000BAE40;
      if (v7 != 0xD00000000000001FLL)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x656E656373)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x64657265646E6572)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE90000000000006ELL;
    if (v7 != 0x4F746E6174736E69)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x646568636E75616CLL)
    {
      goto LABEL_48;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_48;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_1000083E4()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_100008454@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1000084F4(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000085D4()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_100008644@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1000086E4(unsigned __int8 a1)
{
  result = sub_100007AD0(*(v1 + 17), a1);
  if (result)
  {
    *(v1 + 17) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_1000087C8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  sub_10000C964(v1, *(v3 + 32), *(v3 + 40));
  return v1;
}

id sub_100008858@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 40);
  *(a2 + 16) = v6;
  return sub_10000C964(v4, v5, v6);
}

void sub_1000088DC(id *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  sub_10000C964(*a1, v2, v3);
  sub_10000892C(v1, v2, v3);
}

void sub_10000892C(void *a1, void *a2, uint64_t a3)
{
  v4 = a3;
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  sub_10000C964(v7, v8, v9);
  v10 = sub_10000BE48(v7, v8, v9, a1, a2, v4);
  sub_10000C9C0(v7, v8, v9);
  if (v10)
  {
    v11 = *(v3 + 24);
    v12 = *(v3 + 32);
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    v13 = *(v3 + 40);
    *(v3 + 40) = v4;

    sub_10000C9C0(v11, v12, v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_10000C9C0(a1, a2, v4);
  }
}

uint64_t sub_100008AA4()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 41);
}

uint64_t sub_100008B14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_100008BB4(uint64_t result)
{
  if (*(v1 + 41) == (result & 1))
  {
    *(v1 + 41) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100008C94()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 42);
}

uint64_t sub_100008D04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 42);
  return result;
}

uint64_t sub_100008D7C(uint64_t result)
{
  if (*(v1 + 42) == (result & 1))
  {
    *(v1 + 42) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100008E5C()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 43);
}

uint64_t sub_100008ECC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 43);
  return result;
}

uint64_t sub_100008F6C(uint64_t result)
{
  if (*(v1 + 43) == (result & 1))
  {
    *(v1 + 43) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100009054()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 44);
}

uint64_t sub_1000090C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 44);
  return result;
}

uint64_t sub_100009164(uint64_t result)
{
  if (*(v1 + 44) == (result & 1))
  {
    *(v1 + 44) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10000924C()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000092C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);
}

uint64_t sub_100009368(unint64_t a1)
{

  v4 = sub_10000B724(v3, a1);

  if (v4)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10000948C()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

uint64_t sub_100009500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 64);
  *a2 = *(v3 + 56);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1000095B4(uint64_t result, char a2)
{
  if ((*(v2 + 64) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 56) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 56) = result;
    *(v2 + 64) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100007530();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000096B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000972C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v2 == v4)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t sub_100009814()
{

  v1 = OBJC_IVAR____TtCC5Media24RadioNowPlayingViewModel12ButtonConfig__focused;
  v2 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1000098F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RadioNowPlayingViewModel.ButtonConfig(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

id sub_100009930(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      result = v7;
      if (!v7)
      {
        v4 = [objc_opt_self() currentTraitCollection];
        v5 = CPUIImageForPlaceholderTypeWithTraitCollection();

        return v5;
      }
    }

    else
    {
      v6 = objc_allocWithZone(UIImage);

      return [v6 init];
    }
  }

  else
  {

    return a2;
  }

  return result;
}

uint64_t sub_100009A7C(char a1, char a2, char a3, unint64_t a4)
{
  v5 = v4;
  *(v5 + 42) = 0;
  *(v5 + 44) = 0;
  *(v5 + 48) = _swiftEmptyArrayStorage;
  *(v5 + 56) = 0;
  *(v5 + 64) = 1;
  ObservationRegistrar.init()();
  *(v5 + 17) = a1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 2;
  if (a4 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v5 + 41) = v10 != 0;
  *(v5 + 42) = 0;
  *(v5 + 16) = a2 & 1;
  v11 = a3 & 1;
  if (*(v5 + 43) == v11)
  {
    *(v5 + 43) = v11;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_100009368(a4);
  if (*(v5 + 44))
  {
    v13 = swift_getKeyPath();
    __chkstk_darwin(v13);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v5 + 44) = 0;
  }

  return v5;
}

uint64_t sub_100009C8C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + 17);
  if (sub_100007AD0(v2[17], v4))
  {
    v2[17] = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_10000C964(v6, v7, *(a1 + 40));
  sub_10000892C(v6, v7, v8);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(a1 + 41);
  if (v9 == v2[41])
  {
    v2[41] = v9;
  }

  else
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(a1 + 42);
  if (v11 == v2[42])
  {
    v2[42] = v11;
  }

  else
  {
    v12 = swift_getKeyPath();
    __chkstk_darwin(v12);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(a1 + 16);
  if (v13 == v2[16])
  {
    v2[16] = v13;
  }

  else
  {
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(a1 + 43);
  if (v15 == v2[43])
  {
    v2[43] = v15;
  }

  else
  {
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(a1 + 44);
  if (v17 == v2[44])
  {
    v2[44] = v17;
  }

  else
  {
    v18 = swift_getKeyPath();
    __chkstk_darwin(v18);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return sub_100009368(v19);
}

uint64_t sub_10000A22C()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (!v0)
  {
    goto LABEL_8;
  }

  v3 = [v0 mediaSourceType];
  if (v3 == 4 || v3 == 5 || v3 == 7)
  {

LABEL_8:
    sub_10000C9C0(v2, v1, 1);
    return 0;
  }

  v5 = 1701736302;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v0 + 17);
  if (v6 <= 2)
  {
    if (*(v0 + 17))
    {
      if (v6 == 1)
      {
        v7 = 0x4D646E417370616DLL;
        v8 = 0xEC00000061696465;
      }

      else
      {
        v7 = 0xD000000000000010;
        v8 = 0x80000001000BAEF0;
      }
    }

    else
    {
      v8 = 0xE400000000000000;
      v7 = 1701736302;
    }
  }

  else if (*(v0 + 17) > 4u)
  {
    if (v6 == 5)
    {
      v7 = 0x756964654D616364;
      v8 = 0xE90000000000006DLL;
    }

    else
    {
      v8 = 0xE700000000000000;
      v7 = 0x6C6C6154616364;
    }
  }

  else
  {
    v7 = 0x6D696E694D616364;
    if (v6 == 3)
    {
      v8 = 0xEA00000000006C61;
    }

    else
    {
      v8 = 0xEE00656469576C61;
    }
  }

  if (v7 == 0x6D696E694D616364 && v8 == 0xEA00000000006C61)
  {
    goto LABEL_25;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_27;
  }

  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v5 = 0x4D646E417370616DLL;
        v10 = 0xEC00000061696465;
      }

      else
      {
        v5 = 0xD000000000000010;
        v10 = 0x80000001000BAEF0;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
    }
  }

  else if (v6 > 4)
  {
    if (v6 == 5)
    {
      v5 = 0x756964654D616364;
      v10 = 0xE90000000000006DLL;
    }

    else
    {
      v10 = 0xE700000000000000;
      v5 = 0x6C6C6154616364;
    }
  }

  else
  {
    v5 = 0x6D696E694D616364;
    v10 = v6 == 3 ? 0xEA00000000006C61 : 0xEE00656469576C61;
  }

  if (v5 == 0x6D696E694D616364 && v10 == 0xEE00656469576C61)
  {
LABEL_25:

LABEL_27:
    sub_10000C9C0(v2, v1, 1);

    return 0;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_27;
  }

  sub_10000C9C0(v2, v1, 1);

  return 1;
}

uint64_t sub_10000A7D0()
{
  v1 = v0;
  swift_getKeyPath();
  v28 = v0;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 24);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      v3 = *(v0 + 32);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v1)
      {
        v4 = [v28 titles];

        if (v4)
        {
          v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v5 + 16))
          {
            v6 = *(v5 + 32);

LABEL_17:

            sub_10000C9C0(v2, v3, 1);
            return v6;
          }
        }
      }

      v22 = [objc_opt_self() mainBundle];
      v30._object = 0xE000000000000000;
      v23._object = 0xEB00000000474E49;
      v24.value._countAndFlagsBits = 0x6F69646152;
      v23._countAndFlagsBits = 0x59414C505F574F4ELL;
      v24.value._object = 0xE500000000000000;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v30._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v30);

      v6 = String.init(format:_:)();
      goto LABEL_17;
    }

    v11 = [objc_opt_self() mainBundle];
    v29._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0x59414C505F544F4ELL;
    v12._object = 0xEB00000000474E49;
    v13.value._countAndFlagsBits = 0x6F69646152;
    v13.value._object = 0xE500000000000000;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v29);

    v6 = String.init(format:_:)();
    goto LABEL_14;
  }

  v7 = v2;
  v8 = [v7 song];
  if (!v8)
  {
    v15 = [objc_opt_self() mainBundle];
    v27 = 0xE000000000000000;
    v16 = 0x59414C505F544F4ELL;
    v17 = 0xEB00000000474E49;
    v18 = 0x6F69646152;
LABEL_13:
    v19 = 0xE500000000000000;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v21 = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, *&v18, v15, v20, *(&v27 - 1));

    v6 = String.init(format:_:)();
LABEL_14:

    return v6;
  }

  v9 = [v7 title];
  if (!v9)
  {
    v15 = [objc_opt_self() mainBundle];
    v27 = 0xE000000000000000;
    v17 = 0xEB00000000474E49;
    v18 = 0x6F69646152;
    v16 = 0x59414C505F574F4ELL;
    goto LABEL_13;
  }

  v10 = v9;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_10000ABB4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 24);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      v3 = *(v0 + 32);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v1)
      {
        v4 = [v1 titles];

        if (v4)
        {
          v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v5 + 16) >= 2uLL)
          {
            v6 = *(v5 + 48);

            sub_10000C9C0(v2, v3, 1);

            return v6;
          }
        }
      }

      sub_10000C9C0(v2, v3, 1);
    }
  }

  else
  {
    v8 = v2;
    v9 = [v8 artist];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v11;
    }
  }

  return 0;
}

uint64_t sub_10000AD74()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 24);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      v3 = *(v0 + 32);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v1)
      {
        v4 = [v1 titles];

        if (v4)
        {
          v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v5 + 16) >= 3uLL)
          {
            v6 = *(v5 + 64);

            sub_10000C9C0(v2, v3, 1);

            return v6;
          }
        }
      }

      sub_10000C9C0(v2, v3, 1);
    }
  }

  else
  {
    v8 = v2;
    v9 = [v8 album];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v11;
    }
  }

  return 0;
}

uint64_t sub_10000AF54()
{
  v1 = [objc_opt_self() defaultManager];
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000B094;
  v2 = swift_continuation_init();
  v0[17] = sub_10000368C(&unk_1000EB5D0, &qword_1000B44E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000B2A8;
  v0[13] = &unk_1000DFD40;
  v0[14] = v2;
  [v1 getAgeVerificationStateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000B094()
{

  return _swift_task_switch(sub_10000B174, 0, 0);
}

uint64_t sub_10000B174()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = [v1 treatment];

  v4 = *(v0 + 152);
  if ((*(v2 + 64) & 1) != 0 || *(v4 + 56) != v3)
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = 0;
    *(v0 + 80) = v4;
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + 64) = 0;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000B2A8(uint64_t a1, void *a2)
{
  v3 = sub_10000CBDC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10000B30C()
{
  sub_10000C9C0(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtC5Media24RadioNowPlayingViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10000B3E4(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10000B4DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B514(uint64_t a1)
{
  sub_10000B5F0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000B5F0()
{
  if (!qword_1000EE220)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000EE220);
    }
  }
}

uint64_t sub_10000B640(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10000B65C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000B670(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10000B6B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000B6FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10000B724(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v14 = *(v3 + 8 * v12);

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v15 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        LOBYTE(v4) = sub_10000BCB0(v14, v15);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v16 = (v3 + 32);
    v17 = (a2 + 32);
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_40;
      }

      if (!v19)
      {
        break;
      }

      v21 = *v16++;
      a2 = v21;
      v22 = *v17++;
      v3 = v22;

      v4 = sub_10000BCB0(a2, v22);

      v24 = v20-- != 0;
      if (v4)
      {
        --v19;
        --v18;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_10000B964(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for WidgetFocusableView(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10000BBBC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10000BC3C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10000BCB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    type metadata accessor for WidgetFocusableView(0);
    v7 = v6;
    v8 = v5;
    v9 = static NSObject.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v6)
  {
    goto LABEL_15;
  }

  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49) && *(a1 + 72) == *(a2 + 72))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = v13 ^ v12 ^ 1;
    return v10 & 1;
  }

LABEL_15:
  v10 = 0;
  return v10 & 1;
}

id sub_10000BE48(void *a1, void *a2, char a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return (a3 != 1 && a6 == 2 && !(a5 | a4));
  }

  if (a6)
  {
    return 0;
  }

  v11 = [a1 title];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [a4 title];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v15)
    {
      if (!v20)
      {
        goto LABEL_48;
      }

      if (v13 == v18 && v15 == v20)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v20)
    {
      goto LABEL_48;
    }
  }

  else if (v15)
  {
    goto LABEL_48;
  }

  v22 = [a1 artist];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = [a4 artist];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v26)
    {
      if (!v31)
      {
        goto LABEL_48;
      }

      if (v24 == v29 && v26 == v31)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v31)
    {
      goto LABEL_48;
    }
  }

  else if (v26)
  {
    goto LABEL_48;
  }

  v33 = [a1 album];
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

  v38 = [a4 album];
  if (v38)
  {
    v39 = v38;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (v37)
    {
      if (!v42)
      {
        goto LABEL_48;
      }

      if (v35 == v40 && v37 == v42)
      {
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v43 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v42)
    {
      goto LABEL_48;
    }
  }

  else if (v37)
  {
    goto LABEL_48;
  }

  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  v44 = [a1 bundleIdentifier];
  if (v44)
  {
    v45 = v44;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v49 = [a4 bundleIdentifier];
  if (!v49)
  {
    if (!v48)
    {
      goto LABEL_65;
    }

    goto LABEL_48;
  }

  v50 = v49;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  if (!v48)
  {
    if (!v53)
    {
      goto LABEL_65;
    }

    goto LABEL_48;
  }

  if (!v53)
  {
LABEL_48:

    return 0;
  }

  if (v46 == v51 && v48 == v53)
  {

    goto LABEL_65;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v55 = [a1 state];
  if (v55 != [a4 state])
  {
    return 0;
  }

  return [a2 isEqual:a5];
}

uint64_t sub_10000C430(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + 16);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v4 == *(a2 + 16) && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v5 = *(a1 + 17), swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , (sub_100007AD0(v5, *(a2 + 17)) & 1) != 0) && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v6 = *(a1 + 24), v7 = *(a1 + 32), v8 = *(a1 + 40), swift_getKeyPath(), sub_10000C964(v6, v7, v8), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v9 = *(a2 + 24), v10 = *(a2 + 32), v11 = *(a2 + 40), sub_10000C964(v9, v10, v11), v12 = sub_10000BE48(v6, v7, v8, v9, v10, v11), sub_10000C9C0(v9, v10, v11), sub_10000C9C0(v6, v7, v8), (v12 & 1) != 0) && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v13 = *(a1 + 41), swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v13 == *(a2 + 41)) && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v14 = *(a1 + 42), swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v14 == *(a2 + 42)) && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v15 = *(a1 + 43), swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v15 == *(a2 + 43)) && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v16 = *(a1 + 44), swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v16 == *(a2 + 44)))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(a1 + 48);
    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(a2 + 48);

    v17 = sub_10000B724(v19, v20);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_10000C914(id *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  sub_10000C964(*a1, v2, v3);
  sub_10000892C(v1, v2, v3);
}

id sub_10000C964(id result, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    v4 = result;

    return a2;
  }

  return result;
}

void sub_10000C9C0(void *a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_10000CB2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000CBC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 56) = *(v0 + 24);
  *(v1 + 64) = v2;
}

void *sub_10000CBDC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000CC68()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

void sub_10000CCA4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v0 + 40);
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  v7 = *(v2 + 40);
  *(v2 + 40) = v6;
  sub_10000C964(v1, v3, v6);
  sub_10000C9C0(v4, v5, v7);
}

void sub_10000CDB0()
{
  v1 = v0;
  v2 = sub_10000368C(&qword_1000EB878, &qword_1000B4728);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - v4;
  v6 = sub_10000368C(&qword_1000EB880, &qword_1000B4730);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v44 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v45 = &v44 - v11;
  v12 = __chkstk_darwin(v10);
  v46 = &v44 - v13;
  __chkstk_darwin(v12);
  v15 = &v44 - v14;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_navigationController] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_rootViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_clusterViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_passengerViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_dashboardViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v16 = &_swiftEmptySetSingleton;
  }

  v49 = v3;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_cancelSet] = v16;
  if (qword_1000EACD0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006928(v17, qword_1000F3B40);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Media is creating a car manager!", v20, 2u);
  }

  if (qword_1000EAD58 != -1)
  {
    swift_once();
  }

  v21 = qword_1000F3D08;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_carManager] = qword_1000F3D08;
  v22 = objc_allocWithZone(CARSessionStatus);
  v23 = v21;
  v24 = [v22 initWithOptions:4];
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus] = v24;
  v25 = type metadata accessor for RadioCarManager();
  v55.receiver = v1;
  v55.super_class = v25;
  v26 = objc_msgSendSuper2(&v55, "init");
  v27 = *&v26[OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus];
  v28 = v26;
  [v27 addSessionObserver:v28];
  v29 = *&v28[OBJC_IVAR____TtC5Media15RadioCarManager_carManager];
  [v29 registerObserver:v28];

  v54 = objc_opt_self();
  v30 = [v54 sharedApplication];
  v31 = [v30 delegate];

  if (!v31)
  {
    __break(1u);
    goto LABEL_17;
  }

  v53 = type metadata accessor for AppDelegate(0);
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  v52 = sub_10000368C(&qword_1000EB888, &qword_1000B4738);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_unknownObjectRelease();
  v32 = sub_100005A50(0, &qword_1000EB890, UIWindow_ptr);
  v50 = sub_100005870(&qword_1000EB898, &qword_1000EB878, &qword_1000B4728, &protocol conformance descriptor for Published<A>.Publisher);
  v51 = v32;
  Publisher.compactMap<A>(_:)();
  v49 = *(v49 + 8);
  (v49)(v5, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = sub_100005870(&unk_1000EB8A0, &qword_1000EB880, &qword_1000B4730, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v34 = v28;
  v48 = v33;
  Publisher<>.sink(receiveValue:)();

  v47 = *(v7 + 8);
  v47(v15, v6);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v35 = [v54 sharedApplication];
  v36 = [v35 delegate];

  if (!v36)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_unknownObjectRelease();
  v37 = v46;
  Publisher.compactMap<A>(_:)();
  (v49)(v5, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v47(v37, v6);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v38 = [v54 sharedApplication];
  v39 = [v38 delegate];

  if (!v39)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_unknownObjectRelease();
  v40 = v45;
  Publisher.compactMap<A>(_:)();
  (v49)(v5, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v47(v40, v6);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v41 = [v54 sharedApplication];
  v42 = [v41 delegate];

  if (v42)
  {
    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    Published.projectedValue.getter();
    swift_endAccess();
    swift_unknownObjectRelease();
    v43 = v44;
    Publisher.compactMap<A>(_:)();
    (v49)(v5, v2);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    Publisher<>.sink(receiveValue:)();

    v47(v43, v6);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_10000F318();
    sub_10000ED64();
    sub_10000E5C0();
    sub_10000E074();

    return;
  }

LABEL_19:
  __break(1u);
}

id sub_10000D878@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_10000D884(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_10000D904()
{
  if (qword_1000EACD0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006928(v1, qword_1000F3B40);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Media is invalidating car manager %@", v5, 0xCu);
    sub_1000113D0(v6);
  }

  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_weakAssign();
  sub_100092458();
  v8 = objc_opt_self();
  v9 = [v8 sharedApplication];
  v10 = [v9 delegate];

  if (!v10)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  type metadata accessor for AppDelegate(0);
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v47)
  {
    [v47 setRootViewController:0];
  }

  v11 = [v8 sharedApplication];
  v12 = [v11 delegate];

  if (!v12)
  {
    goto LABEL_38;
  }

  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v47)
  {
    [v47 setRootViewController:0];
  }

  v13 = [v8 sharedApplication];
  v14 = [v13 delegate];

  if (!v14)
  {
    goto LABEL_39;
  }

  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v47)
  {
    [v47 setRootViewController:0];
  }

  v15 = [v8 sharedApplication];
  v16 = [v15 delegate];

  if (!v16)
  {
    goto LABEL_40;
  }

  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v47)
  {
    [v47 setRootViewController:0];
  }

  v17 = [*&v2[OBJC_IVAR____TtC5Media15RadioCarManager_carManager] currentCar];
  if (v17)
  {
    v18 = v17;
    [v17 unregisterObserver:v2];
  }

  v19 = OBJC_IVAR____TtC5Media15RadioCarManager_rootViewController;
  v20 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_rootViewController];
  if (v20)
  {
    v21 = v20;
    sub_1000957C0();

    v20 = *&v2[v19];
  }

  *&v2[v19] = 0;

  v22 = OBJC_IVAR____TtC5Media15RadioCarManager_clusterViewController;
  v23 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_clusterViewController];
  if (v23)
  {
    v24 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_cancelSet;
    swift_beginAccess();
    *&v23[v24] = &_swiftEmptySetSingleton;
    v25 = v23;

    v25[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady] = 0;

    v26 = *&v2[v22];
  }

  else
  {
    v26 = 0;
  }

  *&v2[v22] = 0;

  v27 = OBJC_IVAR____TtC5Media15RadioCarManager_passengerViewController;
  v28 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_passengerViewController];
  if (v28)
  {
    v29 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_cancelSet;
    swift_beginAccess();
    *&v28[v29] = &_swiftEmptySetSingleton;
    v30 = v28;

    v30[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady] = 0;

    v31 = *&v2[v27];
  }

  else
  {
    v31 = 0;
  }

  *&v2[v27] = 0;

  v32 = OBJC_IVAR____TtC5Media15RadioCarManager_dashboardViewController;
  v33 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_dashboardViewController];
  if (v33)
  {
    v34 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_cancelSet;
    swift_beginAccess();
    *&v33[v34] = &_swiftEmptySetSingleton;
    v35 = v33;

    v35[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady] = 0;

    v36 = *&v2[v32];
  }

  else
  {
    v36 = 0;
  }

  *&v2[v32] = 0;

  v37 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController;
  v38 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController];
  if (v38)
  {
    v39 = v38;
    sub_10009C354();
    v40 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers;
    swift_beginAccess();
    *&v39[v40] = &_swiftEmptySetSingleton;

    v38 = *&v2[v37];
  }

  *&v2[v37] = 0;

  v41 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager;
  v42 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager];
  if (v42)
  {
    v43 = OBJC_IVAR____TtC5Media18NowPlayingObserver_cancelSet;
    swift_beginAccess();
    *(v42 + v43) = &_swiftEmptySetSingleton;

    v44 = *(v42 + OBJC_IVAR____TtC5Media18NowPlayingObserver_nowPlayingManager);
    [v44 invalidate];
  }

  *&v2[v41] = 0;

  v45 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_navigationController];
  *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_navigationController] = 0;

  v46 = OBJC_IVAR____TtC5Media15RadioCarManager_cancelSet;
  swift_beginAccess();
  *&v2[v46] = &_swiftEmptySetSingleton;
}

void sub_10000E09C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for AppDelegate(0);
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    if (!v32)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006928(v15, qword_1000F3B58);
      v5 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v5, v16, "We have no dashboard window!", v17, 2u);
      }

      goto LABEL_23;
    }

    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3B58);
    v5 = v32;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v32;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Trying to connect to dashboard scene in %@...", v8, 0xCu);
      sub_1000113D0(v9);
    }

    v11 = [v5 rootViewController];
    if (v11)
    {

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "We've already connected to the dashboard window. Ignoring.", v14, 2u);
      }

      goto LABEL_23;
    }

    v18 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager;
    if (!*(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager))
    {
      v19 = [*(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
      v20 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus);
      type metadata accessor for NowPlayingObserver(0);
      swift_allocObject();
      *(a1 + v18) = sub_100067334(v19, v20);
    }

    if (qword_1000EACC0 != -1)
    {
      swift_once();
    }

    sub_10000612C(1, 0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Setting up widget now playing", v23, 2u);
    }

    v24 = *(a1 + v18);
    if (v24)
    {
      v25 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus);
      v26 = objc_allocWithZone(type metadata accessor for RadioClusterNowPlayingViewController());

      v27 = v25;
      sub_10003B0AC(v24, v27, 0, 0, 1);
      v29 = v28;

      v30 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_dashboardViewController);
      *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_dashboardViewController) = v29;
      v31 = v29;

      [v5 setRootViewController:v31];
      sub_10000612C(3, 0);

      v5 = v31;
LABEL_23:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10000E5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100011378();
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_100005870(&qword_1000EB850, &unk_1000EC7D0, &qword_1000B5D50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_10000E89C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for AppDelegate(0);
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    if (!v29)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006928(v15, qword_1000F3B58);
      v5 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v5, v16, "We have no passenger window!", v17, 2u);
      }

      goto LABEL_22;
    }

    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3B58);
    v5 = v29;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v29;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Trying to connect to passenger scene in %@...", v8, 0xCu);
      sub_1000113D0(v9);
    }

    v11 = [v5 rootViewController];
    if (v11)
    {

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "We've already connected to the passenger window. Ignoring.", v14, 2u);
      }

      goto LABEL_22;
    }

    if ((sub_10000F868(1, 1) & 1) == 0)
    {
LABEL_22:

      return;
    }

    if (qword_1000EACC0 != -1)
    {
      swift_once();
    }

    sub_10000612C(1, 0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Setting up passenger now playing", v20, 2u);
    }

    v21 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    if (v21)
    {
      v22 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus);
      v23 = objc_allocWithZone(type metadata accessor for RadioClusterNowPlayingViewController());

      v24 = v22;
      sub_10003B0AC(v21, v24, 1, 0, 0);
      v26 = v25;

      v27 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_passengerViewController);
      *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_passengerViewController) = v26;
      v28 = v26;

      [v5 setRootViewController:v28];
      sub_10000612C(3, 0);

      v5 = v28;
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10000ED8C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for AppDelegate(0);
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (!v32)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006928(v16, qword_1000F3B58);
    v6 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v6, v17, "We have no cluster window!", v18, 2u);
    }

    goto LABEL_23;
  }

  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006928(v5, qword_1000F3B58);
  v6 = v32;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v32;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Trying to connect to cluster scene in %@...", v9, 0xCu);
    sub_1000113D0(v10);
  }

  v12 = [v6 rootViewController];
  if (v12)
  {

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "We've already connected to the cluster window. Ignoring.", v15, 2u);
    }

    goto LABEL_23;
  }

  if ((sub_10000F868(1, 1) & 1) == 0)
  {
LABEL_23:

    return;
  }

  if (qword_1000EACC0 != -1)
  {
    swift_once();
  }

  sub_10000612C(1, 0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Setting up cluster now playing", v21, 2u);
  }

  v22 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus);

  v24 = [v2 sharedApplication];
  v25 = [v24 delegate];

  if (v25)
  {
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    v26 = objc_allocWithZone(type metadata accessor for RadioClusterNowPlayingViewController());
    sub_10003B0AC(v22, v23, 0, v31, 0);
    v28 = v27;

    [v6 setRootViewController:v28];
    v29 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_clusterViewController);
    *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_clusterViewController) = v28;
    v30 = v28;

    sub_10000612C(3, 0);
    v6 = v30;
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
}

void sub_10000F340(void *a1)
{
  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B58);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Trying to connect to main scene...", v5, 2u);
  }

  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    type metadata accessor for AppDelegate(0);
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    if (v29)
    {
      v8 = [v29 rootViewController];
      if (v8)
      {

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Received a car, but we've already connected to the car screen. Ignoring.", v11, 2u);
        }

        v12 = v29;
      }

      else
      {
        v12 = v29;
        if (sub_10000F868(1, 1))
        {
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v15, v16, "Connecting to main screen", v17, 2u);
          }

          if (qword_1000EACC0 != -1)
          {
            swift_once();
          }

          sub_10000612C(1, 0);
          v18 = objc_allocWithZone(type metadata accessor for RadioRootViewController());
          v19 = a1;
          sub_100098EF0(v19);
          v21 = v20;

          v22 = *&v19[OBJC_IVAR____TtC5Media15RadioCarManager_rootViewController];
          *&v19[OBJC_IVAR____TtC5Media15RadioCarManager_rootViewController] = v21;
          v12 = v21;

          v23 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v12];
          [v23 setDelegate:v19];
          v24 = *&v19[OBJC_IVAR____TtC5Media15RadioCarManager_navigationController];
          *&v19[OBJC_IVAR____TtC5Media15RadioCarManager_navigationController] = v23;
          v25 = v23;

          [v29 setRootViewController:v25];
          sub_10000612C(3, 0);
          if (*&v19[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager])
          {

            NowPlayingObserver.emitFinalizedIfNeeded()();
          }

          else
          {
            if (qword_1000EAD00 != -1)
            {
              swift_once();
            }

            sub_100006928(v2, qword_1000F3BD0);
            v26 = Logger.logObject.getter();
            v27 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&_mh_execute_header, v26, v27, "Missing now playing manager!", v28, 2u);
            }
          }
        }
      }
    }

    else
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Received a car, but we have no main window!", v14, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000F868(char a1, char a2)
{
  if (a1)
  {
    v4 = [*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus) currentSession];
    if (!v4)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006928(v16, qword_1000F3B58);
      v6 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v6, v17))
      {
        goto LABEL_43;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Waiting for a car session...";
      goto LABEL_26;
    }
  }

  if (a2)
  {
    v5 = [*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
    if (v5)
    {
      v6 = v5;
      if (![v5 isConfigured])
      {
        if (qword_1000EACD8 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100006928(v21, qword_1000F3B58);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v22, v23))
        {
          goto LABEL_42;
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = "Received a car, but it is not yet configured.";
        goto LABEL_31;
      }

      v7 = [v6 media];
      if (v7)
      {

        v8 = [v6 nowPlayingInformation];
        if (v8)
        {
          v9 = v2;

          if (qword_1000EAD50 != -1)
          {
            swift_once();
          }

          v10 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();
          if (v10)
          {

            if (*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager))
            {
              v11 = qword_1000EACD8;

              if (v11 != -1)
              {
                swift_once();
              }

              v12 = type metadata accessor for Logger();
              sub_100006928(v12, qword_1000F3B58);
              v13 = Logger.logObject.getter();
              v14 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v13, v14))
              {
                v15 = swift_slowAlloc();
                *v15 = 0;
                _os_log_impl(&_mh_execute_header, v13, v14, "Assigning car to now playing", v15, 2u);
              }

              swift_beginAccess();
              swift_unknownObjectWeakAssign();
              v6 = v6;
              sub_10006A4AC();
            }

            else
            {
              if (qword_1000EACD8 != -1)
              {
                swift_once();
              }

              v35 = type metadata accessor for Logger();
              sub_100006928(v35, qword_1000F3B58);
              v36 = Logger.logObject.getter();
              v37 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v36, v37))
              {
                v38 = swift_slowAlloc();
                *v38 = 0;
                _os_log_impl(&_mh_execute_header, v36, v37, "Not assigning to car to now playing; already assigned", v38, 2u);
              }
            }

            v2 = v9;
            goto LABEL_56;
          }

          if (qword_1000EACD8 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_100006928(v34, qword_1000F3B58);
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v22, v23))
          {
            goto LABEL_42;
          }

          v24 = swift_slowAlloc();
          *v24 = 0;
          v25 = "Unable to retrieve asset library";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v22, v23, v25, v24, 2u);
LABEL_41:

LABEL_42:

          goto LABEL_43;
        }

        if (qword_1000EACD8 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_100006928(v32, qword_1000F3B58);
        v27 = v6;
        v22 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v22, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v27;
          *v30 = v6;
          v6 = v27;
          v31 = "Received a car, but it has no now playing. Waiting on car: %@";
          goto LABEL_40;
        }
      }

      else
      {
        if (qword_1000EACD8 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100006928(v26, qword_1000F3B58);
        v27 = v6;
        v22 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v22, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v27;
          *v30 = v6;
          v6 = v27;
          v31 = "Received a car, but it has no media. Waiting on car: %@";
LABEL_40:
          _os_log_impl(&_mh_execute_header, v22, v28, v31, v29, 0xCu);
          sub_1000113D0(v30);

          goto LABEL_41;
        }
      }

      return 0;
    }

    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006928(v20, qword_1000F3B58);
    v6 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v6, v17))
    {
      goto LABEL_43;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Waiting for a car...";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v6, v17, v19, v18, 2u);

LABEL_43:

    return 0;
  }

LABEL_56:
  v39 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager;
  if (!*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager))
  {
    v40 = [*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
    v41 = *(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus);
    type metadata accessor for NowPlayingObserver(0);
    swift_allocObject();
    *(v2 + v39) = sub_100067334(v40, v41);
  }

  return 1;
}

void sub_100010040()
{
  v1 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController;
  if (*(v0 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController))
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006928(v2, qword_1000F3BD0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Now playing already visible; not pushing.", v4, 2u);
    }
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v6 = [v5 bundleIdentifier];

    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = [objc_allocWithZone(type metadata accessor for RadioNowPlayingViewController()) initWithBundleIdentifier:v6 dataSource:0 delegate:0];

    swift_unknownObjectWeakAssign();
    v8 = v0;
    sub_10009A458();
    v9 = *(v0 + v1);
    *(v8 + v1) = v7;
    oslog = v7;

    v10 = *(v8 + OBJC_IVAR____TtC5Media15RadioCarManager_navigationController);
    if (v10)
    {
      v11 = v10;
      [v11 pushViewController:oslog animated:1];
    }
  }
}

uint64_t sub_100010290()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 audioSettings];
    v4 = v3 != 0;
    if (v3)
    {
      v5 = v3;
      v6 = [v3 equalizers];
      if (v6 && ((v7 = v6, sub_100005A50(0, &unk_1000EEC00, CAFEqualizer_ptr), v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v7, v8 >> 62) ? (v9 = _CocoaArrayWrapper.endIndex.getter()) : (v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v9))
      {
      }

      else
      {
        v10 = [v5 soundDistribution];

        v2 = v10;
        if (!v10)
        {
          return 0;
        }
      }
    }

    return v4;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100010424(char a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = [v4 audioSettings];
  if (!v6)
  {
    if (qword_1000EACD0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006928(v15, qword_1000F3B40);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing AutoSettings", v18, 2u);
    }

    v27 = v5;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = [*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus) currentSession];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 configuration];

    v11 = [v10 screens];
    sub_100005A50(0, &unk_1000EB860, CARScreenInfo_ptr);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }

      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v12 + 32);
LABEL_9:
        v14 = v13;

        [v14 availableInteractionModels];

        goto LABEL_17;
      }

      __break(1u);
LABEL_29:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }
  }

LABEL_17:
  v19 = qword_1000EAD50;
  v27 = v7;
  if (v19 != -1)
  {
    swift_once();
  }

  CAUAssetLibraryManager.createAudioLogoBarButton()();
  v20 = objc_allocWithZone(type metadata accessor for CAFUISoundSettingsViewController());
  v16 = CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)();
  v21 = [v16 navigationItem];
  v22 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v2 action:"dismissSettingsModal"];
  [v21 setLeftBarButtonItem:v22];

  v23 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v16];
  v24 = v23;
  if (a1)
  {
    [v23 setOverrideUserInterfaceStyle:2];
    [v16 setOverrideUserInterfaceStyle:2];
  }

  v25 = *(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_navigationController);
  if (v25)
  {
    v26 = v25;
    [v26 presentViewController:v24 animated:1 completion:0];
  }

LABEL_24:
}

uint64_t sub_100010900(void *a1)
{
  if (qword_1000EACD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B40);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@ is configured", v6, 0xCu);
    sub_1000113D0(v7);
  }

  sub_10000F318();
  sub_10000ED64();
  sub_10000E5C0();

  return sub_10000E074();
}

uint64_t sub_100010BB0(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_100011358;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = &unk_1000DFDB8;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100011378();
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_100005870(&qword_1000EB850, &unk_1000EC7D0, &qword_1000B5D50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

void sub_100010E9C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
    if (v5)
    {
      v6 = v5;
      if (qword_1000EACD0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006928(v7, qword_1000F3B40);
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v8;
        *v12 = v6;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, v10, "Car session did connect to %@", v11, 0xCu);
        sub_1000113D0(v12);

        v9 = v13;
      }

      else
      {
      }
    }

    else
    {
      if (qword_1000EACD0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006928(v14, qword_1000F3B40);
      v9 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v9, v15, "Car session connected, but no car available!", v16, 2u);
      }
    }

    [a2 addObserver:v4];
    sub_10000F318();
    sub_10000ED64();
    sub_10000E5C0();
    sub_10000E074();
  }
}

id sub_1000111BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioCarManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000112E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011318()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100011378()
{
  result = qword_1000EB840;
  if (!qword_1000EB840)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB840);
  }

  return result;
}

uint64_t sub_1000113D0(uint64_t a1)
{
  v2 = sub_10000368C(&unk_1000EE230, &qword_1000BA550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011438()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000114B8(void *a1)
{
  if (qword_1000EACD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B40);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%@ has updated accessories", v5, 0xCu);
    sub_1000113D0(v6);
  }
}

void sub_1000115F4(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = qword_1000EACD0;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006928(v6, qword_1000F3B40);
    v12 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v12;
      *v10 = a1;
      v11 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Received a new current car %@", v9, 0xCu);
      sub_1000113D0(v10);
    }

    [v12 registerObserver:v2];
    sub_10000F318();
    sub_10000ED64();
    sub_10000E5C0();
    sub_10000E074();
  }
}

void sub_100011798(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController;
  v4 = *(v1 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController);
  if (v4)
  {
    sub_100005A50(0, &qword_1000EB870, UIViewController_ptr);
    v6 = a1;
    v7 = v4;
    LOBYTE(a1) = static NSObject.== infix(_:_:)();

    if (a1)
    {
      return;
    }

    v8 = *(v2 + v3);
    if (v8)
    {
      v9 = v8;
      sub_10009C354();
      v10 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers;
      swift_beginAccess();
      *&v9[v10] = &_swiftEmptySetSingleton;

      v8 = *(v2 + v3);
    }
  }

  else
  {
    v8 = 0;
  }

  *(v2 + v3) = 0;
}

uint64_t sub_100011980(uint64_t a1)
{
  type metadata accessor for RadioDialerViewModel(0);
  swift_allocObject();

  v2 = sub_10004A420(v1);

  return v2;
}

uint64_t sub_1000119D4()
{
  v1 = sub_10000368C(&qword_1000EB970, &qword_1000B4870);
  __chkstk_darwin(v1);
  v3 = &v17 - v2;
  *v3 = static Alignment.center.getter();
  *(v3 + 1) = v4;
  v5 = sub_10000368C(&qword_1000EB978, &qword_1000B4878);
  sub_100011CF0(v0, &v3[*(v5 + 44)]);
  v23 = *(v0 + 64);
  v24 = *(v0 + 80);
  v17 = *(v0 + 64);
  v18 = *(v0 + 80);
  sub_10000368C(&qword_1000EB980, &qword_1000B4880);
  State.wrappedValue.getter();
  v17 = v23;
  v18 = v24;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = &v3[*(sub_10000368C(&qword_1000EB988, &qword_1000B4888) + 36)];
  v7 = v21;
  *v6 = v20;
  *(v6 + 1) = v7;
  *(v6 + 2) = v22;
  type metadata accessor for RadioDialerViewModel(0);
  sub_1000146C0(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
  v8 = StateObject.wrappedValue.getter();
  v9 = static ObservableObject.environmentStore.getter();
  v10 = &v3[*(v1 + 36)];
  *v10 = v9;
  v10[1] = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v17;
  v19 = v17;
  v12 = swift_allocObject();
  v13 = *(v0 + 80);
  *(v12 + 80) = *(v0 + 64);
  *(v12 + 96) = v13;
  *(v12 + 112) = *(v0 + 96);
  v14 = *(v0 + 16);
  *(v12 + 16) = *v0;
  *(v12 + 32) = v14;
  v15 = *(v0 + 48);
  *(v12 + 48) = *(v0 + 32);
  *(v12 + 64) = v15;
  sub_100013BE0(v0, &v17);
  sub_10000368C(&qword_1000EB998, &qword_1000B7C40);
  sub_100013C18();
  sub_100013D88();
  View.onChange<A>(of:initial:_:)();

  return sub_100013E88(v3);
}

uint64_t sub_100011CF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v52 = sub_10000368C(&qword_1000EB9E8, &qword_1000B48F8);
  v3 = *(v52 - 8);
  v4 = __chkstk_darwin(v52);
  v51 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v38 - v6;
  *&v82[0] = static Color.clear.getter();
  BYTE8(v82[0]) = 0;
  v8 = swift_allocObject();
  v9 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(a1 + 96);
  v10 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  v11 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v11;
  sub_100013BE0(a1, &v83);
  sub_10000368C(&qword_1000EB9F0, &qword_1000B4900);
  sub_100013FB4();
  v40 = v7;
  View.onTapGesture(count:perform:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v49 = v55;
  v48 = v56;
  v47 = v57;
  v46 = v58;
  v44 = v60;
  v45 = v59;
  v43 = static VerticalAlignment.center.getter();
  LOBYTE(v61) = 0;
  sub_1000123F0(a1, &v83);
  v76 = *&v84[176];
  v77 = *&v84[192];
  v78 = *&v84[208];
  v72 = *&v84[112];
  v73 = *&v84[128];
  v74 = *&v84[144];
  v75 = *&v84[160];
  v68 = *&v84[48];
  v69 = *&v84[64];
  v70 = *&v84[80];
  v71 = *&v84[96];
  v64 = v83;
  v65 = *v84;
  v66 = *&v84[16];
  v67 = *&v84[32];
  v80[12] = *&v84[176];
  v80[13] = *&v84[192];
  v80[14] = *&v84[208];
  v80[8] = *&v84[112];
  v80[9] = *&v84[128];
  v80[10] = *&v84[144];
  v80[11] = *&v84[160];
  v80[4] = *&v84[48];
  v80[5] = *&v84[64];
  v80[6] = *&v84[80];
  v80[7] = *&v84[96];
  v80[0] = v83;
  v80[1] = *v84;
  v79 = v84[224];
  v81 = v84[224];
  v80[2] = *&v84[16];
  v80[3] = *&v84[32];
  sub_1000077CC(&v64, v82, &qword_1000EBA38, &qword_1000B4920);
  sub_100007834(v80, &qword_1000EBA38, &qword_1000B4920);
  *&v53[199] = v76;
  *&v53[215] = v77;
  *&v53[231] = v78;
  *&v53[135] = v72;
  *&v53[151] = v73;
  *&v53[167] = v74;
  *&v53[183] = v75;
  *&v53[71] = v68;
  *&v53[87] = v69;
  *&v53[103] = v70;
  *&v53[119] = v71;
  *&v53[7] = v64;
  *&v53[23] = v65;
  *&v53[39] = v66;
  v53[247] = v79;
  *&v53[55] = v67;
  v12 = v61;
  v41 = v61;
  v42 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v83) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v54[7] = v61;
  *&v54[23] = v62;
  *&v54[39] = v63;
  v21 = [objc_opt_self() blackColor];
  v22 = [v21 colorWithAlphaComponent:0.08];

  v39 = Color.init(uiColor:)();
  v23 = *(v3 + 16);
  v24 = v51;
  v25 = v7;
  v26 = v52;
  v23(v51, v25, v52);
  v27 = v50;
  v23(v50, v24, v26);
  v28 = sub_10000368C(&qword_1000EBA40, &qword_1000B4928);
  v29 = &v27[*(v28 + 48)];
  *v29 = v49;
  v29[8] = v48;
  *(v29 + 2) = v47;
  v29[24] = v46;
  v30 = v44;
  *(v29 + 4) = v45;
  *(v29 + 5) = v30;
  v31 = *(v28 + 64);
  v32 = v43;
  v82[0] = v43;
  LOBYTE(v82[1]) = v12;
  *(&v82[16] + 1) = *&v53[240];
  *(&v82[2] + 1) = *&v53[16];
  *(&v82[1] + 1) = *v53;
  *(&v82[13] + 1) = *&v53[192];
  *(&v82[14] + 1) = *&v53[208];
  *(&v82[15] + 1) = *&v53[224];
  *(&v82[9] + 1) = *&v53[128];
  *(&v82[10] + 1) = *&v53[144];
  *(&v82[11] + 1) = *&v53[160];
  *(&v82[12] + 1) = *&v53[176];
  *(&v82[5] + 1) = *&v53[64];
  *(&v82[6] + 1) = *&v53[80];
  *(&v82[7] + 1) = *&v53[96];
  *(&v82[8] + 1) = *&v53[112];
  *(&v82[3] + 1) = *&v53[32];
  *(&v82[4] + 1) = *&v53[48];
  v33 = v42;
  LOBYTE(v82[17]) = v42;
  *(&v82[17] + 1) = v14;
  *&v82[18] = v16;
  *(&v82[18] + 1) = v18;
  *&v82[19] = v20;
  BYTE8(v82[19]) = 0;
  *(&v82[19] + 9) = *v54;
  *(&v82[20] + 9) = *&v54[16];
  *(&v82[21] + 9) = *&v54[32];
  *(&v82[22] + 1) = *&v54[47];
  v34 = v39;
  *&v82[23] = v39;
  *(&v82[23] + 1) = 0x4030000000000000;
  v49 = xmmword_1000B4750;
  v82[24] = xmmword_1000B4750;
  memcpy(&v27[v31], v82, 0x190uLL);
  sub_1000077CC(v82, &v83, &qword_1000EBA48, &qword_1000B4930);
  v35 = *(v3 + 8);
  v36 = v52;
  v35(v40, v52);
  *&v84[193] = *&v53[192];
  *&v84[209] = *&v53[208];
  *&v84[225] = *&v53[224];
  *&v84[129] = *&v53[128];
  *&v84[145] = *&v53[144];
  *&v84[161] = *&v53[160];
  *&v84[177] = *&v53[176];
  *&v84[65] = *&v53[64];
  *&v84[81] = *&v53[80];
  *&v84[97] = *&v53[96];
  *&v84[113] = *&v53[112];
  *&v84[1] = *v53;
  *&v84[17] = *&v53[16];
  *&v84[33] = *&v53[32];
  v83 = v32;
  v84[0] = v41;
  v85 = *&v53[240];
  *&v84[49] = *&v53[48];
  v86 = v33;
  v87 = v14;
  v88 = v16;
  v89 = v18;
  v90 = v20;
  v91 = 0;
  v92 = *v54;
  v93 = *&v54[16];
  *v94 = *&v54[32];
  *&v94[15] = *&v54[47];
  v95 = v34;
  v96 = 0x4030000000000000;
  v97 = v49;
  sub_100007834(&v83, &qword_1000EBA48, &qword_1000B4930);
  return (v35)(v51, v36);
}

uint64_t sub_1000123F0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = type metadata accessor for GridItem.Size();
  v41 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for GridItem();
  v47 = *(v6 - 8);
  v7 = v47;
  __chkstk_darwin(v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(a1 + 88);
  v76 = *(a1 + 88);
  v42 = sub_10000368C(&qword_1000EBA50, &qword_1000B4938);
  State.wrappedValue.getter();
  v43 = v72;
  v83 = *a1;
  v84 = *(a1 + 16);
  v76 = *a1;
  v40[1] = a1;
  LOBYTE(v77) = *(a1 + 16);
  v44 = sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
  Binding.projectedValue.getter();
  v46 = *(&v72 + 1);
  v49 = v72;
  v45 = LOBYTE(v73[0]);
  *v5 = 0x4044000000000000;
  (*(v41 + 104))(v5, enum case for GridItem.Size.fixed(_:), v48);
  GridItem.init(_:spacing:alignment:)();
  v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v10 + 16) = 3;
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v48 = v10;
  v12 = v10 + v11;
  v13 = *(v7 + 16);
  v13(v10 + v11, v9, v6);
  v14 = *(v47 + 72);
  v13(v12 + v14, v9, v6);
  (*(v7 + 32))(v12 + 2 * v14, v9, v6);
  LODWORD(v47) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v76 = v83;
  LOBYTE(v77) = v84;
  Binding.projectedValue.getter();
  v23 = *(&v72 + 1);
  v44 = v72;
  v24 = v73[0];
  v76 = v85;
  State.wrappedValue.getter();
  if (v72 == 1)
  {
    v25 = static HorizontalAlignment.center.getter();
    LOBYTE(v61) = 1;
    sub_100012B1C(&v76);
    v55 = v80;
    v56 = v81;
    v57 = v82[0];
    v51 = v76;
    v52 = v77;
    v53 = v78;
    v54 = v79;
    v65 = v76;
    v66 = v77;
    v67 = v78;
    v68 = v79;
    v69 = v80;
    v70 = v81;
    LOBYTE(v71[0]) = v82[0];
    sub_1000077CC(&v51, &v72, &qword_1000EBA68, &qword_1000B4950);
    sub_100007834(&v65, &qword_1000EBA68, &qword_1000B4950);
    *&v50[55] = v54;
    *&v50[71] = v55;
    *&v50[87] = v56;
    v50[103] = v57;
    *&v50[7] = v51;
    *&v50[23] = v52;
    *&v50[39] = v53;
    v72 = v25;
    LOBYTE(v73[0]) = v61;
    *(&v73[2] + 1) = *&v50[32];
    *(&v73[1] + 1) = *&v50[16];
    *(v73 + 1) = *v50;
    *(&v73[6] + 1) = *&v50[96];
    *(&v73[5] + 1) = *&v50[80];
    *(&v73[4] + 1) = *&v50[64];
    *(&v73[3] + 1) = *&v50[48];
    nullsub_1();
    v80 = v73[3];
    v81 = v73[4];
    v82[0] = v73[5];
    *(v82 + 9) = *(&v73[5] + 9);
    v76 = v72;
    v77 = v73[0];
    v78 = v73[1];
    v79 = v73[2];
  }

  else
  {
    sub_100014178(&v76);
  }

  v26 = v43;
  v27 = 0x4034000000000000;
  if (!v43)
  {
    v27 = 0;
  }

  v73[3] = v80;
  v73[4] = v81;
  v73[5] = v82[0];
  *(&v73[5] + 9) = *(v82 + 9);
  v72 = v76;
  v73[0] = v77;
  v73[1] = v78;
  v73[2] = v79;
  v60 = v43 ^ 1;
  *&v61 = v49;
  v28 = v46;
  *(&v61 + 1) = v46;
  v29 = v45;
  LOBYTE(v62) = v45;
  *(&v62 + 1) = *v75;
  DWORD1(v62) = *&v75[3];
  *(&v62 + 1) = v48;
  LOBYTE(v63) = v47;
  *(&v63 + 1) = *v74;
  DWORD1(v63) = *&v74[3];
  *(&v63 + 1) = v16;
  *&v64[0] = v18;
  *(&v64[0] + 1) = v20;
  *&v64[1] = v22;
  BYTE8(v64[1]) = 0;
  *&v59[6] = v61;
  *&v59[54] = v64[0];
  *&v59[63] = *(v64 + 9);
  *&v59[38] = v63;
  *&v59[22] = v62;
  v67 = v78;
  v68 = v79;
  v65 = v76;
  v66 = v77;
  *(v71 + 9) = *(v82 + 9);
  v70 = v81;
  v71[0] = v82[0];
  v69 = v80;
  *(&v58[3] + 7) = v79;
  *(&v58[2] + 7) = v78;
  *(&v58[1] + 7) = v77;
  *(v58 + 7) = v76;
  v58[7] = *(v82 + 9);
  *(&v58[6] + 7) = v82[0];
  *(&v58[5] + 7) = v81;
  *(&v58[4] + 7) = v80;
  *a2 = v27;
  *(a2 + 8) = 0;
  *(a2 + 9) = v26 ^ 1;
  v30 = *&v59[16];
  *(a2 + 10) = *v59;
  v31 = *&v59[32];
  v32 = *&v59[48];
  *(a2 + 73) = *&v59[63];
  *(a2 + 58) = v32;
  *(a2 + 42) = v31;
  *(a2 + 26) = v30;
  *(a2 + 96) = v44;
  *(a2 + 104) = v23;
  *(a2 + 112) = v24;
  v33 = v58[0];
  v34 = v58[1];
  v35 = v58[2];
  *(a2 + 161) = v58[3];
  *(a2 + 145) = v35;
  *(a2 + 129) = v34;
  *(a2 + 113) = v33;
  v36 = v58[4];
  v37 = v58[5];
  v38 = v58[6];
  *(a2 + 225) = v58[7];
  *(a2 + 209) = v38;
  *(a2 + 193) = v37;
  *(a2 + 177) = v36;
  sub_1000077CC(&v61, &v51, &qword_1000EBA58, &qword_1000B4940);

  sub_1000077CC(&v65, &v51, &qword_1000EBA60, &qword_1000B4948);
  sub_100007834(&v72, &qword_1000EBA60, &qword_1000B4948);

  *&v51 = v49;
  *(&v51 + 1) = v28;
  LOBYTE(v52) = v29;
  *(&v52 + 1) = *v75;
  DWORD1(v52) = *&v75[3];
  *(&v52 + 1) = v48;
  LOBYTE(v53) = v47;
  *(&v53 + 1) = *v74;
  DWORD1(v53) = *&v74[3];
  *(&v53 + 1) = v16;
  *&v54 = v18;
  *(&v54 + 1) = v20;
  *&v55 = v22;
  BYTE8(v55) = 0;
  return sub_100007834(&v51, &qword_1000EBA58, &qword_1000B4940);
}

uint64_t sub_100012B1C@<X0>(uint64_t a1@<X8>)
{
  sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
  Binding.projectedValue.getter();
  v2 = v27;
  v3 = v28;
  KeyPath = swift_getKeyPath();
  v5 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  *&v16[0] = KeyPath;
  BYTE8(v16[0]) = 0;
  v16[1] = v27;
  LOBYTE(v17) = v28;
  BYTE8(v17) = v5;
  *&v18 = v6;
  *(&v18 + 1) = v7;
  *&v19 = v8;
  *(&v19 + 1) = v9;
  v20 = 0;
  v21 = v16[0];
  v22 = v27;
  LOBYTE(v26) = 0;
  v24 = v18;
  v25 = v19;
  v23 = v17;
  v15[88] = 1;
  v10 = v27;
  *a1 = v16[0];
  *(a1 + 16) = v10;
  v11 = v23;
  v12 = v25;
  v13 = v26;
  *(a1 + 48) = v24;
  *(a1 + 64) = v12;
  *(a1 + 32) = v11;
  *(a1 + 80) = v13;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *&v27 = KeyPath;
  BYTE8(v27) = 0;
  v28 = v2;
  v29 = v3;
  v30 = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = 0;
  sub_1000077CC(v16, v15, &qword_1000EBA70, &qword_1000B4988);
  return sub_100007834(&v27, &qword_1000EBA70, &qword_1000B4988);
}

uint64_t sub_100012CD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a1 + 8);
  v25 = a1;
  v8 = *a1;
  v32 = *a1;
  if (v33 != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007834(&v32, &qword_1000EBA80, &qword_1000B4AF0);
    (*(v5 + 8))(v7, v4);
    if (v26 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = [objc_opt_self() radio_carSystemFocusColor];
    goto LABEL_6;
  }

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [objc_opt_self() whiteColor];
  [v9 colorWithAlphaComponent:0.15];

LABEL_6:
  v24 = Color.init(uiColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = v26;
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v17 = v31;
  v18 = static Alignment.center.getter();
  v20 = v19;
  v21 = a2 + *(sub_10000368C(&qword_1000EBA88, &qword_1000B4AF8) + 36);
  sub_100012F74(v25, v21);
  result = sub_10000368C(&qword_1000EBAC8, &unk_1000B4B10);
  v23 = (v21 + *(result + 36));
  *v23 = v18;
  v23[1] = v20;
  *a2 = v24;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
  return result;
}

uint64_t sub_100012F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000368C(&qword_1000EBAE0, &qword_1000B7000);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v26 = sub_10000368C(&qword_1000EBAE8, &qword_1000B4B20);
  __chkstk_darwin(v26);
  v10 = &v24 - v9;
  v11 = Image.init(systemName:)();
  v12 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v31 = v11;
  v32 = KeyPath;
  v33 = v12;
  static Font.Weight.medium.getter();
  sub_10000368C(&qword_1000EBAF0, &unk_1000B7050);
  sub_100014710();
  View.fontWeight(_:)();

  LOBYTE(v32) = *(a1 + 8);
  v14 = *a1;
  v31 = *a1;
  if (v32 != 1)
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007834(&v31, &qword_1000EBA80, &qword_1000B4AF0);
    (*(v24 + 8))(v5, v25);
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = &selRef_labelColor;
    goto LABEL_6;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = &selRef_radio_carSystemFocusLabelColor;
LABEL_6:
  v17 = [objc_opt_self() *v15];
  v18 = Color.init(uiColor:)();
  (*(v27 + 32))(v10, v8, v28);
  *&v10[*(v26 + 36)] = v18;
  v19 = *(sub_10000368C(&qword_1000EBB10, &qword_1000B4B68) + 36);
  v20 = enum case for BlendMode.plusLighter(_:);
  v21 = type metadata accessor for BlendMode();
  v22 = v29;
  (*(*(v21 - 8) + 104))(v29 + v19, v20, v21);
  return sub_1000147C8(v10, v22);
}

uint64_t sub_10001331C()
{
  v1 = type metadata accessor for PlainButtonStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10000368C(&qword_1000EBA78, &qword_1000B4AE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  v9 = *(v0 + 1);
  v16[0] = *v0;
  v16[1] = v9;
  v17 = *(v0 + 32);
  v18 = *v0;
  v19 = *(v0 + 8);
  v20 = v9;
  v10 = swift_allocObject();
  v11 = *(v0 + 1);
  *(v10 + 16) = *v0;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v0 + 32);
  v14 = v16;
  sub_1000077CC(&v18, v15, &qword_1000EBA80, &qword_1000B4AF0);
  sub_100014414(&v20, v15);

  sub_10000368C(&qword_1000EBA88, &qword_1000B4AF8);
  sub_100014470();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100005870(&qword_1000EBAD0, &qword_1000EBA78, &qword_1000B4AE8, &protocol conformance descriptor for Button<A>);
  sub_1000146C0(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100013600@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ShapeSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Material._GlassVariant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Material();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Material._GlassVariant.regular.getter();
  static Material._glass(_:)();
  (*(v7 + 8))(v9, v6);
  sub_10000368C(&qword_1000EBB18, &qword_1000B4B70);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000B4760;
  sub_100014838();
  *(v14 + 32) = AnyShape.init<A>(_:)();
  _ShapeSet.init(shapes:smoothness:)();
  sub_10001488C();
  View.materialEffect(_:in:)();
  (*(v3 + 8))(v5, v2);
  (*(v11 + 8))(v13, v10);
  v15 = (a1 + *(sub_10000368C(&qword_1000EBB30, &qword_1000B4B78) + 36));
  v16 = *(type metadata accessor for RoundedRectangle() + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #30.0 }

  *v15 = _Q0;
  result = sub_10000368C(&qword_1000EBB38, &qword_1000B4B80);
  *&v15[*(result + 36)] = 256;
  return result;
}

id sub_100013918()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

uint64_t sub_1000139A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100014AC8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100013A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100014AC8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100013A6C(uint64_t a1)
{
  sub_100014AC8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100013A98@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_100013AD4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100013B00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100013B48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100013C18()
{
  result = qword_1000EB9A0;
  if (!qword_1000EB9A0)
  {
    sub_100005780(&qword_1000EB970, &qword_1000B4870);
    sub_100013CD0();
    sub_100005870(&qword_1000EB9C0, &qword_1000EB9C8, &qword_1000B48E8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB9A0);
  }

  return result;
}

unint64_t sub_100013CD0()
{
  result = qword_1000EB9A8;
  if (!qword_1000EB9A8)
  {
    sub_100005780(&qword_1000EB988, &qword_1000B4888);
    sub_100005870(&qword_1000EB9B0, &qword_1000EB9B8, &qword_1000B48E0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB9A8);
  }

  return result;
}

unint64_t sub_100013D88()
{
  result = qword_1000EB9D0;
  if (!qword_1000EB9D0)
  {
    sub_100005780(&qword_1000EB998, &qword_1000B7C40);
    sub_1000146C0(&qword_1000EB9D8, sub_100013E3C, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB9D0);
  }

  return result;
}

unint64_t sub_100013E3C()
{
  result = qword_1000EAFE0;
  if (!qword_1000EAFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EAFE0);
  }

  return result;
}

uint64_t sub_100013E88(uint64_t a1)
{
  v2 = sub_10000368C(&qword_1000EB970, &qword_1000B4870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013EF0()
{

  sub_100013BD8(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_100013FB4()
{
  result = qword_1000EB9F8;
  if (!qword_1000EB9F8)
  {
    sub_100005780(&qword_1000EB9F0, &qword_1000B4900);
    sub_10001406C();
    sub_100005870(&qword_1000EBA28, &qword_1000EBA30, &qword_1000B4918, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB9F8);
  }

  return result;
}

unint64_t sub_10001406C()
{
  result = qword_1000EBA00;
  if (!qword_1000EBA00)
  {
    sub_100005780(&qword_1000EBA08, &qword_1000B4908);
    sub_100014124();
    sub_100005870(&qword_1000EBA18, &qword_1000EBA20, &qword_1000B4910, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBA00);
  }

  return result;
}

unint64_t sub_100014124()
{
  result = qword_1000EBA10;
  if (!qword_1000EBA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBA10);
  }

  return result;
}

double sub_100014178(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100014194@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_1000141D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000141E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10001422C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100014290()
{
  sub_100005780(&qword_1000EB970, &qword_1000B4870);
  sub_100005780(&qword_1000EB998, &qword_1000B7C40);
  sub_100013C18();
  sub_100013D88();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100014358()
{
  sub_1000143A4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000143A4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_100014470()
{
  result = qword_1000EBA90;
  if (!qword_1000EBA90)
  {
    sub_100005780(&qword_1000EBA88, &qword_1000B4AF8);
    sub_100014528();
    sub_100005870(&qword_1000EBAC0, &qword_1000EBAC8, &unk_1000B4B10, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBA90);
  }

  return result;
}

unint64_t sub_100014528()
{
  result = qword_1000EBA98;
  if (!qword_1000EBA98)
  {
    sub_100005780(&qword_1000EBAA0, &qword_1000B4B00);
    sub_1000145B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBA98);
  }

  return result;
}

unint64_t sub_1000145B4()
{
  result = qword_1000EBAA8;
  if (!qword_1000EBAA8)
  {
    sub_100005780(&qword_1000EBAB0, &qword_1000B4B08);
    sub_10001466C();
    sub_100005870(&qword_1000EBA18, &qword_1000EBA20, &qword_1000B4910, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBAA8);
  }

  return result;
}

unint64_t sub_10001466C()
{
  result = qword_1000EBAB8;
  if (!qword_1000EBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBAB8);
  }

  return result;
}

uint64_t sub_1000146C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100014710()
{
  result = qword_1000EBAF8;
  if (!qword_1000EBAF8)
  {
    sub_100005780(&qword_1000EBAF0, &unk_1000B7050);
    sub_100005870(&qword_1000EBB00, &qword_1000EBB08, &qword_1000B4B60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBAF8);
  }

  return result;
}

uint64_t sub_1000147C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000368C(&qword_1000EBAE8, &qword_1000B4B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100014838()
{
  result = qword_1000EBB20;
  if (!qword_1000EBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBB20);
  }

  return result;
}

unint64_t sub_10001488C()
{
  result = qword_1000EBB28;
  if (!qword_1000EBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBB28);
  }

  return result;
}

uint64_t sub_1000148F0()
{
  sub_100005780(&qword_1000EBA78, &qword_1000B4AE8);
  type metadata accessor for PlainButtonStyle();
  sub_100005870(&qword_1000EBAD0, &qword_1000EBA78, &qword_1000B4AE8, &protocol conformance descriptor for Button<A>);
  sub_1000146C0(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000149D4()
{
  result = qword_1000EBB40;
  if (!qword_1000EBB40)
  {
    sub_100005780(&qword_1000EBB30, &qword_1000B4B78);
    sub_10001488C();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EBB48, &qword_1000EBB38, &qword_1000B4B80, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBB40);
  }

  return result;
}

unint64_t sub_100014AC8()
{
  result = qword_1000EBB50;
  if (!qword_1000EBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBB50);
  }

  return result;
}

void sub_100014B24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    qword_1000F3B30 = v2;
    *algn_1000F3B38 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100014CC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100014D80(v5, a2);
  sub_100006928(v5, a2);
  if (qword_1000EACC8 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100014D80(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100014E20@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000368C(&qword_1000EBBF0, &qword_1000B6840);
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin(v6);
  v8 = &v69 - v7;
  v69 = type metadata accessor for MediaProgressView(0);
  __chkstk_darwin(v69);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10000368C(&qword_1000EB110, &qword_1000B3F98);
  v11 = __chkstk_darwin(v70);
  v73 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v71 = &v69 - v14;
  __chkstk_darwin(v13);
  v72 = &v69 - v15;
  v16 = type metadata accessor for EnvironmentValues();
  v81 = *(v16 - 8);
  v82 = v16;
  __chkstk_darwin(v16);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000368C(&qword_1000EBBF8, &qword_1000B4F70);
  v20 = __chkstk_darwin(v19 - 8);
  v80 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v78 = &v69 - v22;
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v121[55] = v126;
  *&v121[71] = v127;
  *&v121[87] = v128;
  *&v121[103] = v129;
  *&v121[7] = v123;
  *&v121[23] = v124;
  v122 = 0;
  *&v121[39] = v125;
  v77 = swift_getKeyPath();

  v23 = a1;
  v76 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v81 + 8))(v18, v82);
    v23 = *&v117[0];
  }

  swift_getKeyPath();
  *&v117[0] = v23;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v23 + 44);

  if (v25 == 1)
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v83[55] = v133;
    *&v83[71] = v134;
    *&v83[87] = v135;
    *&v83[103] = v136;
    *&v83[7] = v130;
    *&v83[23] = v131;
    LOBYTE(v97) = 0;
    *&v83[39] = v132;
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    v26 = v69;
    v27 = *(v69 + 20);
    *&v10[v27] = swift_getKeyPath();
    sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
    swift_storeEnumTagMultiPayload();
    v28 = &v10[*(v26 + 24)];
    type metadata accessor for PlaybackTimeObserver(0);
    swift_allocObject();
    *&v107 = sub_100063724();
    State.init(wrappedValue:)();
    v29 = *(&v117[0] + 1);
    *v28 = *&v117[0];
    *(v28 + 1) = v29;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v30 = v71;
    sub_1000076F8(v10, v71);
    v31 = (v30 + *(v70 + 36));
    v32 = v142;
    v31[4] = v141;
    v31[5] = v32;
    v31[6] = v143;
    v33 = v138;
    *v31 = v137;
    v31[1] = v33;
    v34 = v140;
    v31[2] = v139;
    v31[3] = v34;
    v35 = v72;
    sub_10001721C(v30, v72, &qword_1000EB110, &qword_1000B3F98);
    v36 = v73;
    sub_1000077CC(v35, v73, &qword_1000EB110, &qword_1000B3F98);
    v37 = *&v83[80];
    *(v8 + 73) = *&v83[64];
    *(v8 + 89) = v37;
    *(v8 + 105) = *&v83[96];
    v38 = *&v83[16];
    *(v8 + 9) = *v83;
    *(v8 + 25) = v38;
    v39 = *&v83[48];
    *(v8 + 41) = *&v83[32];
    *v8 = 0x4020000000000000;
    v8[8] = 0;
    *(v8 + 15) = *&v83[111];
    *(v8 + 57) = v39;
    v40 = sub_10000368C(&qword_1000EBC10, &qword_1000B68B0);
    sub_1000077CC(v36, &v8[*(v40 + 48)], &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v35, &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v36, &qword_1000EB110, &qword_1000B3F98);
    v41 = v78;
    sub_10001721C(v8, v78, &qword_1000EBBF0, &qword_1000B6840);
    (*(v74 + 56))(v41, 0, 1, v75);
  }

  else
  {
    v41 = v78;
    (*(v74 + 56))(v78, 1, 1, v75);
  }

  v42 = v76;
  if (v76)
  {
    v120 = a1;

    v43 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v81 + 8))(v18, v82);
    v43 = v120;
  }

  swift_getKeyPath();
  *&v117[0] = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = *(v43 + 41);

  if (v45 == 1)
  {
    if (v42)
    {
      v86 = a1;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v46 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v81 + 8))(v18, v82);
      a1 = v86;
    }

    swift_getKeyPath();
    *&v117[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v47 = *(a1 + 24);
    v48 = *(a1 + 32);
    v49 = *(a1 + 40);
    sub_10000C964(v47, v48, *(a1 + 40));

    if (v49 != 2 || v48 | v47)
    {
      sub_10000C9C0(v47, v48, v49);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      LOBYTE(v97) = 0;
      *&v85[55] = v147;
      *&v85[71] = v148;
      *&v85[87] = v149;
      *&v85[103] = v150;
      *&v85[7] = v144;
      *&v85[23] = v145;
      *&v85[39] = v146;
      *&v117[0] = 0x4018000000000000;
      BYTE8(v117[0]) = 0;
      *(&v117[3] + 9) = *&v85[48];
      *(&v117[2] + 9) = *&v85[32];
      *(&v117[1] + 9) = *&v85[16];
      *(v117 + 9) = *v85;
      *(&v117[7] + 1) = *(&v150 + 1);
      *(&v117[6] + 9) = *&v85[96];
      *(&v117[5] + 9) = *&v85[80];
      *(&v117[4] + 9) = *&v85[64];
      sub_10001714C(v117);
    }

    else
    {
      *&v117[0] = 0;
      BYTE8(v117[0]) = 1;
      sub_1000171E4(v117);
    }

    v113 = v117[6];
    v114 = v117[7];
    LOBYTE(v115) = v118;
    v109 = v117[2];
    v110 = v117[3];
    v111 = v117[4];
    v112 = v117[5];
    v107 = v117[0];
    v108 = v117[1];
    sub_10000368C(&qword_1000EBBB8, &qword_1000B4F00);
    sub_100017158();
    _ConditionalContent<>.init(storage:)();
    v50 = swift_getKeyPath();
    v103 = v93;
    v104 = v94;
    v99 = v89;
    v100 = v90;
    v101 = v91;
    v102 = v92;
    v97 = v87;
    v98 = v88;
    v113 = v93;
    v114 = v94;
    v109 = v89;
    v110 = v90;
    LOBYTE(v105) = v95;
    v84 = 0;
    v111 = v91;
    v112 = v92;
    v107 = v87;
    v108 = v88;
    *&v115 = v105;
    *(&v115 + 1) = v50;
    v116 = 0;
    nullsub_1();
    v117[6] = v113;
    v117[7] = v114;
    v118 = v115;
    v119 = v116;
    v117[2] = v109;
    v117[3] = v110;
    v117[4] = v111;
    v117[5] = v112;
    v117[0] = v107;
    v117[1] = v108;
  }

  else
  {
    sub_1000171F4(v117);
  }

  v51 = v80;
  sub_1000077CC(v41, v80, &qword_1000EBBF8, &qword_1000B4F70);
  v93 = v117[6];
  v94 = v117[7];
  v95 = v118;
  v89 = v117[2];
  v90 = v117[3];
  v91 = v117[4];
  v92 = v117[5];
  v87 = v117[0];
  v88 = v117[1];
  v52 = *&v121[80];
  *(a3 + 89) = *&v121[64];
  *(a3 + 105) = v52;
  *(a3 + 121) = *&v121[96];
  v53 = *&v121[16];
  *(a3 + 25) = *v121;
  *(a3 + 41) = v53;
  v54 = *&v121[48];
  *(a3 + 57) = *&v121[32];
  v96 = v119;
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0x4018000000000000;
  *(a3 + 24) = 0;
  v55 = *&v121[111];
  *(a3 + 73) = v54;
  v56 = v77;
  *(a3 + 136) = v55;
  *(a3 + 144) = v56;
  *(a3 + 152) = 0;
  v57 = sub_10000368C(&qword_1000EBC00, &qword_1000B4F78);
  sub_1000077CC(v51, a3 + *(v57 + 80), &qword_1000EBBF8, &qword_1000B4F70);
  v58 = *(v57 + 96);
  v59 = v94;
  v103 = v93;
  v104 = v94;
  v60 = v95;
  v105 = v95;
  v61 = v89;
  v62 = v90;
  v99 = v89;
  v100 = v90;
  v63 = v91;
  v64 = v92;
  v101 = v91;
  v102 = v92;
  v65 = v87;
  v66 = v88;
  v97 = v87;
  v98 = v88;
  v67 = a3 + v58;
  *(v67 + 96) = v93;
  *(v67 + 112) = v59;
  *(v67 + 128) = v60;
  *(v67 + 32) = v61;
  *(v67 + 48) = v62;
  *(v67 + 64) = v63;
  *(v67 + 80) = v64;
  v106 = v96;
  *(v67 + 144) = v96;
  *v67 = v65;
  *(v67 + 16) = v66;

  sub_1000077CC(&v97, &v107, &qword_1000EBC08, &unk_1000B4F80);
  sub_100007834(v41, &qword_1000EBBF8, &qword_1000B4F70);
  v113 = v93;
  v114 = v94;
  v115 = v95;
  v116 = v96;
  v109 = v89;
  v110 = v90;
  v111 = v91;
  v112 = v92;
  v107 = v87;
  v108 = v88;
  sub_100007834(&v107, &qword_1000EBC08, &unk_1000B4F80);
  sub_100007834(v51, &qword_1000EBBF8, &qword_1000B4F70);
}

uint64_t sub_100015B30@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = sub_10000368C(&qword_1000EBBD0, &qword_1000B4F48);
  sub_100014E20(v4, v5, a2 + *(v6 + 44));
  LOBYTE(v5) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(sub_10000368C(&qword_1000EBBD8, &qword_1000B4F50) + 36);
  *v15 = v5;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  LOBYTE(v5) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a2 + *(sub_10000368C(&qword_1000EBBE0, &qword_1000B4F58) + 36);
  *v24 = v5;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  LOBYTE(v5) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  result = sub_10000368C(&qword_1000EBBE8, &unk_1000B4F60);
  v34 = a2 + *(result + 36);
  *v34 = v5;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_100015CA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000368C(&qword_1000EBB58, &qword_1000B4DE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v54 - v10;
  v12 = sub_10000368C(&qword_1000EBB60, &qword_1000B4DE8);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v54 = sub_10000368C(&qword_1000EBB68, &qword_1000B4DF0);
  __chkstk_darwin(v54);
  v16 = &v54 - v15;

  v17 = a1;
  v55 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v17 = v57;
  }

  swift_getKeyPath();
  v57 = v17;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v17 + 16);

  if (v19 == 1)
  {
    v20 = static HorizontalAlignment.leading.getter();
  }

  else
  {
    v20 = static HorizontalAlignment.center.getter();
  }

  *v11 = v20;
  *(v11 + 1) = 0;
  v11[16] = 0;
  v21 = sub_10000368C(&qword_1000EBB70, &qword_1000B4E20);
  sub_1000160A8(a1, v55 & 1, &v11[*(v21 + 44)]);
  v22 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10001721C(v11, v14, &qword_1000EBB58, &qword_1000B4DE0);
  v31 = &v14[*(v12 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10001721C(v14, v16, &qword_1000EBB60, &qword_1000B4DE8);
  v41 = &v16[*(v54 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v56;
  sub_10001721C(v16, v56, &qword_1000EBB68, &qword_1000B4DF0);
  result = sub_10000368C(&qword_1000EBB78, &qword_1000B4E28);
  v53 = v51 + *(result + 36);
  *v53 = v42;
  *(v53 + 8) = v44;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_1000160A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v75 = a3;
  v5 = sub_10000368C(&qword_1000EBB80, &unk_1000B4E30);
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin(v5);
  v74 = (&v70 - v6);
  v7 = type metadata accessor for MediaProgressView(0);
  __chkstk_darwin(v7);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10000368C(&qword_1000EB110, &qword_1000B3F98);
  v10 = __chkstk_darwin(v71);
  v73 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v70 - v13;
  __chkstk_darwin(v12);
  v72 = &v70 - v15;
  v16 = type metadata accessor for EnvironmentValues();
  v88 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000368C(&qword_1000EBB88, &qword_1000B4E40);
  v20 = __chkstk_darwin(v19 - 8);
  v90 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v91 = &v70 - v22;
  v82 = static VerticalAlignment.center.getter();
  sub_100016E44(a1, a2 & 1, v126);
  v83 = *&v126[0];
  v86 = *(&v126[1] + 1);
  v87 = *&v126[1];
  v89 = *(&v126[2] + 1);
  v85 = *&v126[2];
  v84 = LOBYTE(v126[3]);
  v145 = 0;
  v144 = BYTE8(v126[0]);
  v81 = BYTE8(v126[0]);

  v23 = a1;
  v80 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v88 + 8))(v18, v16);
    v23 = *&v126[0];
  }

  v79 = v16;
  swift_getKeyPath();
  *&v126[0] = v23;
  v76 = sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v23 + 44);

  v26 = 1;
  if (v25 == 1)
  {
    *v9 = swift_getKeyPath();
    v9[8] = 0;
    v27 = *(v7 + 20);
    *&v9[v27] = swift_getKeyPath();
    sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
    swift_storeEnumTagMultiPayload();
    v28 = &v9[*(v7 + 24)];
    type metadata accessor for PlaybackTimeObserver(0);
    swift_allocObject();
    *&v116 = sub_100063724();
    State.init(wrappedValue:)();
    v29 = *(&v126[0] + 1);
    *v28 = *&v126[0];
    *(v28 + 1) = v29;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000076F8(v9, v14);
    v30 = &v14[*(v71 + 36)];
    v31 = v135;
    *(v30 + 4) = v134;
    *(v30 + 5) = v31;
    *(v30 + 6) = v136;
    v32 = v131;
    *v30 = v130;
    *(v30 + 1) = v32;
    v33 = v133;
    *(v30 + 2) = v132;
    *(v30 + 3) = v33;
    v34 = v72;
    sub_10001721C(v14, v72, &qword_1000EB110, &qword_1000B3F98);
    v35 = v73;
    sub_1000077CC(v34, v73, &qword_1000EB110, &qword_1000B3F98);
    v36 = v74;
    *v74 = 0x4028000000000000;
    *(v36 + 8) = 0;
    v37 = sub_10000368C(&qword_1000EBBC8, &qword_1000B4F40);
    sub_1000077CC(v35, v36 + *(v37 + 48), &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v34, &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v35, &qword_1000EB110, &qword_1000B3F98);
    sub_10001721C(v36, v91, &qword_1000EBB80, &unk_1000B4E30);
    v26 = 0;
  }

  (*(v77 + 56))(v91, v26, 1, v78);
  v38 = v80;
  v39 = v79;
  if (v80)
  {
    v129 = a1;

    v40 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v88 + 8))(v18, v39);
    v40 = v129;
  }

  swift_getKeyPath();
  *&v126[0] = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v40 + 41);

  if (v42 == 1)
  {
    if (v38)
    {
      v95 = a1;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v43 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v88 + 8))(v18, v39);
      a1 = v95;
    }

    swift_getKeyPath();
    *&v126[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v44 = *(a1 + 24);
    v45 = *(a1 + 32);
    v46 = *(a1 + 40);
    sub_10000C964(v44, v45, *(a1 + 40));

    if (v46 != 2 || v45 | v44)
    {
      sub_10000C9C0(v44, v45, v46);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      LOBYTE(v106) = 0;
      *(&v93[6] + 7) = v140;
      *(&v93[8] + 7) = v141;
      *(&v93[10] + 7) = v142;
      *(&v93[12] + 7) = v143;
      *(v93 + 7) = v137;
      *(&v93[2] + 7) = v138;
      *(&v93[4] + 7) = v139;
      *&v126[0] = 0x4018000000000000;
      BYTE8(v126[0]) = 0;
      *(&v126[3] + 9) = *&v93[6];
      *(&v126[2] + 9) = *&v93[4];
      *(&v126[1] + 9) = *&v93[2];
      *(v126 + 9) = *v93;
      *(&v126[7] + 1) = *(&v143 + 1);
      *(&v126[6] + 9) = *&v93[12];
      *(&v126[5] + 9) = *&v93[10];
      *(&v126[4] + 9) = *&v93[8];
      sub_10001714C(v126);
    }

    else
    {
      *&v126[0] = 0x4018000000000000;
      BYTE8(v126[0]) = 0;
      sub_1000171E4(v126);
    }

    v122 = v126[6];
    v123 = v126[7];
    LOBYTE(v124) = v127;
    v118 = v126[2];
    v119 = v126[3];
    v120 = v126[4];
    v121 = v126[5];
    v116 = v126[0];
    v117 = v126[1];
    sub_10000368C(&qword_1000EBBB8, &qword_1000B4F00);
    sub_100017158();
    _ConditionalContent<>.init(storage:)();
    swift_getKeyPath();
    v102 = *&v93[27];
    v103 = *&v93[29];
    LOBYTE(v104) = v94;
    v98 = *&v93[19];
    v99 = *&v93[21];
    v100 = *&v93[23];
    v101 = *&v93[25];
    v96 = *&v93[15];
    v97 = *&v93[17];
    v92 = 0;

    v122 = v102;
    v123 = v103;
    v118 = v98;
    v119 = v99;
    v120 = v100;
    v121 = v101;
    v116 = v96;
    v117 = v97;
    *&v124 = v104;
    *(&v124 + 1) = v47;
    LOBYTE(v125) = 0;
    sub_1000171DC(&v116);
    v126[7] = v123;
    v127 = v124;
    v128 = v125;
    v126[2] = v118;
    v126[3] = v119;
    v126[4] = v120;
    v126[5] = v121;
    v126[6] = v122;
    v126[0] = v116;
    v126[1] = v117;
    sub_10000368C(&qword_1000EBB90, &qword_1000B4EC0);
    sub_100005870(&qword_1000EBB98, &qword_1000EBB90, &qword_1000B4EC0, &protocol conformance descriptor for TupleView<A>);
    sub_1000170C0();
    _ConditionalContent<>.init(storage:)();

    v126[7] = v113;
    v127 = v114;
    v128 = v115;
    v126[2] = v108;
    v126[3] = v109;
    v126[4] = v110;
    v126[5] = v111;
    v126[6] = v112;
    v126[0] = v106;
    v126[1] = v107;
  }

  else
  {
    *&v116 = swift_getKeyPath();
    BYTE8(v116) = 0;
    sub_1000170B4(&v116);
    v112 = v122;
    v113 = v123;
    v114 = v124;
    v115 = v125;
    v108 = v118;
    v109 = v119;
    v110 = v120;
    v111 = v121;
    v106 = v116;
    v107 = v117;
    sub_10000368C(&qword_1000EBB90, &qword_1000B4EC0);
    sub_100005870(&qword_1000EBB98, &qword_1000EBB90, &qword_1000B4EC0, &protocol conformance descriptor for TupleView<A>);
    sub_1000170C0();
    _ConditionalContent<>.init(storage:)();
  }

  v48 = v90;
  sub_1000077CC(v91, v90, &qword_1000EBB88, &qword_1000B4E40);
  v102 = v126[6];
  v103 = v126[7];
  v104 = v127;
  v105 = v128;
  v98 = v126[2];
  v99 = v126[3];
  v100 = v126[4];
  v101 = v126[5];
  v96 = v126[0];
  v97 = v126[1];
  v49 = v75;
  *v75 = 0x4028000000000000;
  *(v49 + 8) = 0;
  v50 = v83;
  v49[2] = v82;
  v49[3] = 0x4020000000000000;
  *(v49 + 32) = 0;
  v51 = v81;
  v49[5] = v50;
  v49[6] = v51;
  v53 = v86;
  v52 = v87;
  v49[7] = v87;
  v49[8] = v53;
  v54 = v85;
  v55 = v89;
  v49[9] = v85;
  v49[10] = v55;
  v56 = v84;
  *(v49 + 88) = v84;
  v57 = sub_10000368C(&qword_1000EBBA8, &qword_1000B4EC8);
  sub_1000077CC(v48, v49 + *(v57 + 64), &qword_1000EBB88, &qword_1000B4E40);
  v58 = *(v57 + 80);
  v59 = v103;
  v112 = v102;
  v113 = v103;
  v60 = v104;
  v114 = v104;
  v61 = v98;
  v62 = v99;
  v108 = v98;
  v109 = v99;
  v63 = v100;
  v64 = v101;
  v110 = v100;
  v111 = v101;
  v65 = v96;
  v66 = v97;
  v106 = v96;
  v107 = v97;
  v67 = v49 + v58;
  *(v67 + 6) = v102;
  *(v67 + 7) = v59;
  *(v67 + 8) = v60;
  *(v67 + 2) = v61;
  *(v67 + 3) = v62;
  *(v67 + 4) = v63;
  *(v67 + 5) = v64;
  v115 = v105;
  *(v67 + 72) = v105;
  *v67 = v65;
  *(v67 + 1) = v66;

  v68 = v89;
  sub_100017114(v52, v53, v54, v89, v56);
  sub_1000077CC(&v106, &v116, &qword_1000EBBB0, &qword_1000B4ED0);
  sub_100007834(v91, &qword_1000EBB88, &qword_1000B4E40);
  v122 = v102;
  v123 = v103;
  v124 = v104;
  v125 = v105;
  v118 = v98;
  v119 = v99;
  v120 = v100;
  v121 = v101;
  v116 = v96;
  v117 = v97;
  sub_100007834(&v116, &qword_1000EBBB0, &qword_1000B4ED0);
  sub_100007834(v90, &qword_1000EBB88, &qword_1000B4E40);

  return sub_10001712C(v52, v53, v54, v68, v56);
}

uint64_t sub_100016E44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v18;
  }

  swift_getKeyPath();
  v18 = a1;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(a1 + 41);

  if (v12 == 1)
  {
    v13 = static HorizontalAlignment.leading.getter();
    v14 = swift_getKeyPath();

    v15 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = -1;
  }

  sub_100017114(v13, 0, 0, v14, v15);
  sub_10001712C(v13, 0, 0, v14, v15);
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = v13;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = v14;
  *(a3 + 48) = v15;
  sub_10001712C(v13, 0, 0, v14, v15);
}

unint64_t sub_1000170C0()
{
  result = qword_1000EBBA0;
  if (!qword_1000EBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBBA0);
  }

  return result;
}

uint64_t sub_100017114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
  }

  return result;
}

uint64_t sub_10001712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
  }

  return result;
}

unint64_t sub_100017158()
{
  result = qword_1000EBBC0;
  if (!qword_1000EBBC0)
  {
    sub_100005780(&qword_1000EBBB8, &qword_1000B4F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBBC0);
  }

  return result;
}

double sub_1000171F4(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 128) = xmmword_1000B4C80;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_10001721C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000368C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000172F8()
{
  result = qword_1000EBC28;
  if (!qword_1000EBC28)
  {
    sub_100005780(&qword_1000EBB60, &qword_1000B4DE8);
    sub_100005870(&qword_1000EBC30, &qword_1000EBB58, &qword_1000B4DE0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBC28);
  }

  return result;
}

uint64_t sub_100017424(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000174A8()
{
  result = qword_1000EBC48;
  if (!qword_1000EBC48)
  {
    sub_100005780(&qword_1000EBBD8, &qword_1000B4F50);
    sub_100005870(&qword_1000EBC50, &qword_1000EBC58, &qword_1000B4F90, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBC48);
  }

  return result;
}

void sub_100017588(uint64_t result)
{
  v2 = OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy;
  if (v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy] != result)
  {
    v3 = v1;
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3B70);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 16908544;
      v8[4] = v3[v2];

      _os_log_impl(&_mh_execute_header, v6, v7, "Updating grouping strategy to %{public}hhu", v8, 5u);
    }

    else
    {

      v6 = v5;
    }

    v9 = *(&v5->isa + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
    if (v9)
    {
      v10 = *&v9[qword_1000EE3E8];
      v11 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy;
      *(v10 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) = v3[v2];
      v12 = v9;

      sub_1000220D4();
      if (qword_1000EAD48 != -1)
      {
        swift_once();
      }

      sub_1000922F8(*(v10 + v11));
    }

    sub_100018EE0(v3[v2] - 4 < 0xFFFFFFFD);
  }
}

void sub_10001775C()
{
  v1 = v0;
  v2 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v127 = &v109 - v4;
  v5 = sub_10000368C(&unk_1000EBDA0, &qword_1000BA850);
  v129 = *(v5 - 8);
  __chkstk_darwin(v5);
  v128 = &v109 - v6;
  v123 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v7 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v109 - v8;
  v9 = sub_10000368C(&unk_1000EBDB0, &qword_1000B50F8);
  v125 = *(v9 - 8);
  v126 = v9;
  __chkstk_darwin(v9);
  v124 = &v109 - v10;
  v11 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v11 - 8);
  v131 = &v109 - v12;
  v114 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v13 = __chkstk_darwin(v114);
  v113 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v112 = &v109 - v15;
  v117 = sub_10000368C(&qword_1000EBDC8, &qword_1000B5110);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v109 - v16;
  v17 = sub_10000368C(&qword_1000EBDD0, &qword_1000B5118);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v109 - v19;
  v21 = type metadata accessor for RadioStationListViewController();
  v134.receiver = v0;
  v134.super_class = v21;
  objc_msgSendSuper2(&v134, "viewDidLoad");
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  v130 = qword_1000F3CF0;
  v22 = *(qword_1000F3CF0 + OBJC_IVAR____TtC5Media16RadioPreferences_defaults);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 integerForKey:v23];

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v24 > 0xFF)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v119 = v3;
  v120 = v2;
  v121 = v5;
  v25 = (sub_10007752C(v24) - 4) < 0xFDu;
  sub_100018EE0(v25);
  v26 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v26 setAllowsFocus:1];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v28 = v27;
  v111 = v20;
  v118 = v7;
  [v27 addSubview:v26];

  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1000B4FB0;
  v30 = [v26 topAnchor];
  v31 = [v1 view];
  if (!v31)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v29 + 32) = v34;
  v35 = [v26 bottomAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v37 = v36;
  v109 = v18;
  v110 = v17;
  v38 = [v36 bottomAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  *(v29 + 40) = v39;
  v40 = [v26 leadingAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v42 = v41;
  v43 = [v41 safeAreaLayoutGuide];

  v44 = [v43 leadingAnchor];
  v45 = [v40 constraintEqualToAnchor:v44];

  *(v29 + 48) = v45;
  v46 = [v26 trailingAnchor];
  v47 = [v1 view];
  if (!v47)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v48 = v47;
  v49 = objc_opt_self();
  v50 = [v48 safeAreaLayoutGuide];

  v51 = [v50 trailingAnchor];
  v52 = [v46 constraintEqualToAnchor:v51];

  *(v29 + 56) = v52;
  sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints:isa];

  v132 = OBJC_IVAR____TtC5Media30RadioStationListViewController_carManager;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    v56 = objc_allocWithZone(type metadata accessor for RadioStationDataSource(0));
    v57 = v55;
    v58 = sub_10007FE10(v57, v26);
    v59 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
    *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource] = v58;
    v60 = v58;

    v61 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_initialActiveCategory + 8];
    v62 = (*&v60[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory);
    *v62 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_initialActiveCategory];
    v62[1] = v61;

    sub_1000220D4();
  }

  v63 = [v1 view];
  if (!v63)
  {
    goto LABEL_36;
  }

  v64 = v63;
  v65 = objc_opt_self();
  v66 = [v65 clearColor];
  [v64 setBackgroundColor:v66];

  v67 = [v65 clearColor];
  [v26 setBackgroundColor:v67];

  [v26 setDelegate:v1];
  v68 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
  if (v68 && *(*(v68 + qword_1000EE3E8) + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
  {

    v69 = String._bridgeToObjectiveC()();

    [v1 setTitle:v69];

    v70 = swift_unknownObjectWeakLoadStrong();
    if (v70)
    {
      v71 = *(v70 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
      v72 = v70;

      if (v71)
      {
        swift_beginAccess();
        sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
        Published.projectedValue.getter();
        swift_endAccess();
        swift_beginAccess();
        Published.projectedValue.getter();
        swift_endAccess();
        sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
        v73 = v115;
        Publishers.CombineLatest.init(_:_:)();
        v74 = [objc_opt_self() mainRunLoop];
        v133 = v74;
        v75 = type metadata accessor for NSRunLoop.SchedulerOptions();
        v76 = v131;
        (*(*(v75 - 8) + 56))(v131, 1, 1, v75);
        sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
        sub_100005870(&qword_1000EBE30, &qword_1000EBDC8, &qword_1000B5110, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
        sub_10001ADF4();
        v77 = v111;
        v78 = v117;
        Publisher.receive<A>(on:options:)();
        sub_1000057C8(v76);

        (*(v116 + 8))(v73, v78);
        *(swift_allocObject() + 16) = v1;
        sub_100005870(&qword_1000EBE38, &qword_1000EBDD0, &qword_1000B5118, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v79 = v1;
        v80 = v110;
        Publisher<>.sink(receiveValue:)();

        (*(v109 + 8))(v77, v80);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();
      }
    }
  }

  else
  {
    v81 = [objc_opt_self() mainBundle];
    v135._object = 0xE000000000000000;
    v82._countAndFlagsBits = 0x4553574F5242;
    v83.value._countAndFlagsBits = 0x6F69646152;
    v82._object = 0xE600000000000000;
    v83.value._object = 0xE500000000000000;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    v135._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v82, v83, v81, v84, v135);

    String.init(format:_:)();

    v85 = String._bridgeToObjectiveC()();

    [v1 setTitle:v85];
  }

  v86 = swift_unknownObjectWeakLoadStrong();
  if (v86)
  {
    v87 = *(v86 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v88 = v86;

    if (v87)
    {
      swift_beginAccess();
      sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
      v89 = v122;
      Published.projectedValue.getter();
      swift_endAccess();

      v90 = [objc_opt_self() mainRunLoop];
      v133 = v90;
      v91 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v92 = v131;
      (*(*(v91 - 8) + 56))(v131, 1, 1, v91);
      sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
      sub_100005870(&unk_1000EBDF0, &unk_1000EC860, &qword_1000B50F0, &protocol conformance descriptor for Published<A>.Publisher);
      sub_10001ADF4();
      v94 = v123;
      v93 = v124;
      Publisher.receive<A>(on:options:)();
      sub_1000057C8(v92);

      (*(v118 + 8))(v89, v94);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100005870(&unk_1000EBE00, &unk_1000EBDB0, &qword_1000B50F8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v95 = v126;
      Publisher<>.sink(receiveValue:)();

      (*(v125 + 8))(v93, v95);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  v96 = swift_unknownObjectWeakLoadStrong();
  if (v96)
  {
    v97 = *(v96 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v98 = v96;

    if (v97)
    {
      swift_beginAccess();
      sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
      v99 = v127;
      Published.projectedValue.getter();
      swift_endAccess();

      v100 = [objc_opt_self() mainRunLoop];
      v133 = v100;
      v101 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v102 = v131;
      (*(*(v101 - 8) + 56))(v131, 1, 1, v101);
      sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
      sub_100005870(&unk_1000EBE10, &unk_1000ED130, &unk_1000B50E0, &protocol conformance descriptor for Published<A>.Publisher);
      sub_10001ADF4();
      v103 = v128;
      v104 = v120;
      Publisher.receive<A>(on:options:)();
      sub_1000057C8(v102);

      (*(v119 + 8))(v99, v104);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100005870(&qword_1000EEFC0, &unk_1000EBDA0, &qword_1000BA850, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v105 = v121;
      Publisher<>.sink(receiveValue:)();

      (*(v129 + 8))(v103, v105);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  v106 = [objc_opt_self() sharedApplication];
  v107 = [v106 delegate];

  if (!v107)
  {
    goto LABEL_37;
  }

  v108 = sub_1000ACA04();
  swift_unknownObjectRelease();
  if ((v108 & 1) == 0)
  {
    sub_1000922F8(3u);
  }
}

void sub_100018AC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100019940();
  }
}

id sub_100018B60(char a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = type metadata accessor for RadioStationListViewController();
  v16.receiver = v1;
  v16.super_class = v10;
  objc_msgSendSuper2(&v16, "viewWillAppear:", a1 & 1);
  v11 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView];
  result = [v11 indexPathsForSelectedItems];
  if (result)
  {
    v13 = result;
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v14 + 16))
    {
      (*(v4 + 16))(v7, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

      (*(v4 + 32))(v9, v7, v3);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v11 deselectItemAtIndexPath:isa animated:a1 & 1];

      return (*(v4 + 8))(v9, v3);
    }

    else
    {
    }
  }

  return result;
}

void sub_100018D8C(uint64_t a1)
{
  v2 = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RadioStationListViewController();
  objc_msgSendSuper2(&v6, "viewDidAppear:", v2 & 1);
  v3 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
  if (v3)
  {
    if (*(*&v3[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation))
    {
      v4 = v3;

      sub_100026200(v5);
    }
  }
}

void sub_100018EE0(int a1)
{
  v20 = a1;
  v1 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for UICollectionLayoutListConfiguration();
  v21 = swift_allocBox();
  (*(v10 + 104))(v12, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v9);
  UICollectionLayoutListConfiguration.init(appearance:)();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  v13 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  if ((v20 & 1) == 0)
  {
    v13 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  }

  (*(v6 + 104))(v8, *v13, v5);
  UICollectionLayoutListConfiguration.headerMode.setter();
  (*(v2 + 104))(v4, enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:), v1);
  UICollectionLayoutListConfiguration.footerMode.setter();
  v14 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  swift_allocObject();
  v15 = v22;
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  v16 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_10001AC88;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001AA4C;
  aBlock[3] = &unk_1000E0210;
  v17 = _Block_copy(aBlock);

  v18 = [v16 initWithSectionProvider:v17];
  _Block_release(v17);

  [*(v15 + OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView) setCollectionViewLayout:v18 animated:0];
}

uint64_t sub_10001928C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v33 = a3;
  v34 = a1;
  v3 = type metadata accessor for IndexPath();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UIListSeparatorConfiguration();
  v15 = *(v32 - 8);
  __chkstk_darwin(v32);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v11);
  UIListSeparatorConfiguration.init(listAppearance:)();
  v18 = [objc_opt_self() separatorColor];
  UIListSeparatorConfiguration.color.setter();
  v19 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
  v20 = *(v6 + 104);
  v20(v10, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v5);
  UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v15 + 32))(v33, v17, v32);
  }

  v22 = Strong;
  if (sub_100019688(v34, Strong))
  {
    goto LABEL_7;
  }

  v23 = *&v22[OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView];
  v24 = [v23 numberOfItemsInSection:IndexPath.section.getter()];

  if (IndexPath.item.getter() >= v24)
  {
LABEL_6:
    v19 = enum case for UIListSeparatorConfiguration.Visibility.automatic(_:);
    goto LABEL_7;
  }

  result = IndexPath.item.getter();
  if (!__OFADD__(result, 1))
  {
    IndexPath.section.getter();
    v26 = v28;
    IndexPath.init(item:section:)();
    v27 = sub_100019688(v26, v22);
    (*(v29 + 8))(v26, v30);
    if (!v27)
    {
      goto LABEL_6;
    }

LABEL_7:
    v20(v31, v19, v5);
    UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();

    return (*(v15 + 32))(v33, v17, v32);
  }

  __break(1u);
  return result;
}