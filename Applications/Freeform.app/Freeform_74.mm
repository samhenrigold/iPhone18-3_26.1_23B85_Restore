uint64_t sub_100A703A0()
{
  sub_10000630C(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate, v9);
  sub_1005B981C(&unk_101A0E8A0, &unk_101477BB0);
  type metadata accessor for CRLiOSMiniFormatterPresenter();
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *&v8[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController];
    if (v2)
    {
      v3 = v2;
      v4 = [v3 topViewController];

      if (v4)
      {
        type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
        v5 = swift_dynamicCastClass();
        if (v5)
        {
          v6 = *(v5 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
          v7 = v6;

          if (v6)
          {

            return 1;
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id sub_100A704E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLiOSMiniFormatterViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100A70634()
{
  v1 = *v0;
  if (*(*v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter) == 1)
  {
    *(v1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_needsRefreshWhenAppears) = 1;
  }

  else
  {
    sub_100020E58((v1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate), *(v1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24));
    sub_100721B14();
  }
}

void sub_100A7071C()
{
  v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter] = 0;
  if (v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_needsRefreshWhenAppears] == 1)
  {
    v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_needsRefreshWhenAppears] = 0;
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_100A715C0;
    *(v3 + 24) = v2;
    v7[4] = sub_10002AAE4;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = *"";
    v7[2] = sub_10002AAB8;
    v7[3] = &unk_101893398;
    v4 = _Block_copy(v7);
    v5 = v0;

    [v1 performWithoutAnimation:v4];
    _Block_release(v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_100A708A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_builders);
  if ((v1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLiOSMiniFormatterBuilder();
    sub_100A71534(&qword_101A0E898, type metadata accessor for CRLiOSMiniFormatterBuilder, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v15;
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v1 + 56);

    v4 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_100035F90(v1);
      return;
    }

    while (1)
    {

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for CRLiOSMiniFormatterBuilder();
        swift_dynamicCast();
        v13 = v14;
        v11 = v4;
        v12 = v5;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_100A70A98()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v24 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v24, "This method should never be called", 34, 2u);
  StaticString.description.getter("wantsToDismiss(for:changeSource:)", 33, 2);
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Formatters/CRLiOSMiniFormatterViewController.swift", 108, 2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v10;
  v11 = sub_1005CF04C();
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 587;
  v13 = v24;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "This method should never be called", 34, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter("wantsToDismiss(for:changeSource:)", 33, 2);
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Formatters/CRLiOSMiniFormatterViewController.swift", 108, 2);
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter("This method should never be called", 34, 2);
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:587 isFatal:0 format:v22 args:v19];

  return 0;
}

uint64_t sub_100A70E30()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v24 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v24, "This method should never be called", 34, 2u);
  StaticString.description.getter("wantsToDismissForSelectionPathChange(from:to:)", 46, 2);
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Formatters/CRLiOSMiniFormatterViewController.swift", 108, 2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v10;
  v11 = sub_1005CF04C();
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 582;
  v13 = v24;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "This method should never be called", 34, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter("wantsToDismissForSelectionPathChange(from:to:)", 46, 2);
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Formatters/CRLiOSMiniFormatterViewController.swift", 108, 2);
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter("This method should never be called", 34, 2);
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:582 isFatal:0 format:v22 args:v19];

  return 0;
}

void sub_100A711C8()
{
  v1 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_viewDidAppear) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingHide) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_needsRefreshWhenAppears) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100A712AC(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_viewDidAppear) == 1)
  {
    if (*(a1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter) == 1)
    {
      *(a1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_needsRefreshWhenAppears) = 1;
    }

    else
    {
      sub_100020E58((a1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate), *(a1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24));
      sub_100721B14();
    }
  }
}

void *sub_100A71320(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay);
  v6 = [v5 arrangedSubviews];
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      [v10 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [v11 convertPoint:v5 fromCoordinateSpace:{a1, a2}];
      v24.x = v21;
      v24.y = v22;
      v25.origin.x = v14;
      v25.origin.y = v16;
      v25.size.width = v18;
      v25.size.height = v20;
      if (CGRectContainsPoint(v25, v24))
      {

        return v11;
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_100A71534(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100A71690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100A716D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100A7176C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101491C40[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100A717F4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101491C40[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100A71840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009D438(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100A71884()
{
  v1 = *v0;
  v2 = 0x726F6C6F63;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x737569646172;
  if (v1 != 3)
  {
    v4 = 0x7974696361706FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C676E61;
  if (v1 != 1)
  {
    v5 = 0x74657366666FLL;
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

uint64_t sub_100A71958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100A731C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100A71998@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009D438(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100A719FC(uint64_t a1)
{
  v2 = sub_100A72340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A71A38(uint64_t a1)
{
  v2 = sub_100A72340();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100A71A78(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A0E930, &qword_101491750);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100A72340();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v32 = *(v2 + 32);
  v33 = v8;
  v10 = *(v2 + 48);
  v34 = *(v2 + 64);
  v11 = *(v2 + 16);
  v31[0] = *v2;
  v31[1] = v11;
  v12 = *(v2 + 64);
  v28 = v10;
  v29 = v12;
  v25 = v31[0];
  v35 = *(v2 + 80);
  v30 = *(v2 + 80);
  v26 = v9;
  v27 = v32;
  v24 = 0;
  sub_10074A990(v31, &v18);
  sub_1008B28D4();
  v13 = v36;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1008B2660(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1008B2660(&v18);
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v2 + 104);
    v16 = 5;
    sub_100A738E4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v17 = *(v2 + 120);
    v16 = 6;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100A71DB4(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_100A71E00(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return sub_100A71A74(v13, v14) & 1;
}

double sub_100A71E74@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100A73408(a2, v9);
  if (!v2)
  {
    v5 = v13;
    a1[4] = v12;
    a1[5] = v5;
    v6 = v15;
    a1[6] = v14;
    a1[7] = v6;
    v7 = v9[1];
    *a1 = v9[0];
    a1[1] = v7;
    result = *&v10;
    v8 = v11;
    a1[2] = v10;
    a1[3] = v8;
  }

  return result;
}

uint64_t sub_100A71EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A73938();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A71F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A73938();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A71F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10074933C();
  v7 = sub_100A7398C();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100A71FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A73938();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100A720DC(uint64_t a1)
{
  v2 = sub_100A72478();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100A7212C()
{
  result = qword_101A0E8B8;
  if (!qword_101A0E8B8)
  {
    result = swift_getWitnessTable(byte_101491400, &type metadata for CRLShadowData, v0, v1);
    atomic_store(result, &qword_101A0E8B8);
  }

  return result;
}

unint64_t sub_100A72188()
{
  result = qword_101A0E8C0;
  if (!qword_101A0E8C0)
  {
    result = swift_getWitnessTable("!$:", &type metadata for CRLShadowData, v0, v1);
    atomic_store(result, &qword_101A0E8C0);
  }

  return result;
}

unint64_t sub_100A721E0()
{
  result = qword_101A0E8C8;
  if (!qword_101A0E8C8)
  {
    result = swift_getWitnessTable("9$:", &type metadata for CRLShadowData, v0, v1);
    atomic_store(result, &qword_101A0E8C8);
  }

  return result;
}

unint64_t sub_100A72238()
{
  result = qword_101A0E8D0;
  if (!qword_101A0E8D0)
  {
    result = swift_getWitnessTable("I*:", &type metadata for CRLShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E8D0);
  }

  return result;
}

unint64_t sub_100A72290()
{
  result = qword_101A0E8D8;
  if (!qword_101A0E8D8)
  {
    result = swift_getWitnessTable("i):", &type metadata for CRLShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E8D8);
  }

  return result;
}

unint64_t sub_100A722E8()
{
  result = qword_101A0E8E0;
  if (!qword_101A0E8E0)
  {
    result = swift_getWitnessTable("9(:", &type metadata for CRLShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E8E0);
  }

  return result;
}

unint64_t sub_100A72340()
{
  result = qword_101A0E8E8;
  if (!qword_101A0E8E8)
  {
    result = swift_getWitnessTable(byte_101491598, &type metadata for CRLShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E8E8);
  }

  return result;
}

unint64_t sub_100A72398()
{
  result = qword_101A0E8F0;
  if (!qword_101A0E8F0)
  {
    result = swift_getWitnessTable(")#:", &type metadata for CRLShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E8F0);
  }

  return result;
}

unint64_t sub_100A723F0()
{
  result = qword_101A0E8F8;
  if (!qword_101A0E8F8)
  {
    result = swift_getWitnessTable("a#:", &type metadata for CRLShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E8F8);
  }

  return result;
}

unint64_t sub_100A72478()
{
  result = qword_101A0E910;
  if (!qword_101A0E910)
  {
    result = swift_getWitnessTable("a*:", &type metadata for CRLShadowData, v0, v1);
    atomic_store(result, &qword_101A0E910);
  }

  return result;
}

unint64_t sub_100A724D0()
{
  result = qword_101A0E918;
  if (!qword_101A0E918)
  {
    result = swift_getWitnessTable(byte_101491458, &type metadata for CRLShadowData, v0, v1);
    atomic_store(result, &qword_101A0E918);
  }

  return result;
}

uint64_t sub_100A72524(void *a1, uint64_t a2, float a3)
{
  v6 = sub_1005B981C(&qword_101A0E9C0, qword_101491B90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100020E58(a1, a1[3]);
  sub_100A73C64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11[1] = a2;
    v12 = 1;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100A726BC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6576727563;
  }
}

uint64_t sub_100A726F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6576727563 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100A72814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static CodingKey<>.intCases.getter(a1, a2, v7, v8);
}

uint64_t sub_100A72880(uint64_t a1)
{
  v2 = sub_100A73C64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A728BC(uint64_t a1)
{
  v2 = sub_100A73C64();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100A728F8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100A73E48(a2);
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_100A72948(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A74024();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A7299C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A74024();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A729F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100A73AFC();
  v7 = sub_100A74078();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100A72A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A74024();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100A72B44(uint64_t a1)
{
  v2 = sub_100A73D9C();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

void sub_100A72B90(uint64_t a1, uint64_t a2)
{
  if ((sub_1008AFE44() & 1) != 0 && *(a1 + 88) == *(a2 + 88) && *(a1 + 92) == *(a2 + 92) && *(a1 + 96) == *(a2 + 96) && *(a1 + 100) == *(a2 + 100))
  {
    v4 = *(a1 + 112);
    v5 = *(a2 + 112);
    if (v4)
    {
      if (!v5)
      {
        return;
      }

      if (COERCE_FLOAT(*(a1 + 104)) != COERCE_FLOAT(*(a2 + 104)))
      {
        return;
      }

      sub_100B3216C(v4, v5);
      v7 = v6;

      if ((v7 & 1) == 0)
      {
        return;
      }
    }

    else if (v5)
    {
      return;
    }

    v8 = *(a1 + 120);
    v9 = *(a2 + 120);

    sub_100B3216C(v8, v9);
  }
}

float sub_100A72CD4@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 angle];
  v5 = v4;
  [a1 offset];
  v7 = v6;
  [a1 radius];
  v9 = v8;
  [a1 opacity];
  v11 = v10;
  if (([a1 isEnabled] & 1) == 0)
  {
    v46 = objc_opt_self();
    v12 = [v46 _atomicIncrementAssertCount];
    v47 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v47, "If a shadow is not enabled, it should be nil", 44, 2u);
    StaticString.description.getter("init(archiving:)", 16, 2);
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShadowData.swift", 83, 2);
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_1005CF000();
    *(inited + 96) = v21;
    v22 = sub_100A739E0(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 48;
    v24 = v47;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "If a shadow is not enabled, it should be nil", 44, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(archiving:)", 16, 2);
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShadowData.swift", 83, 2);
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter("If a shadow is not enabled, it should be nil", 44, 2);
    v33 = String._bridgeToObjectiveC()();

    [v46 handleFailureInFunction:v31 file:v32 lineNumber:48 isFatal:0 format:v33 args:v30];
  }

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    [v34 curve];
    v36 = v35;

    *&v37 = v36;
    v38 = v37;
    v39 = _swiftEmptyDictionarySingleton;
  }

  else
  {

    v38 = 0;
    v39 = 0;
  }

  result = v11;
  v41 = v9;
  v42 = v7;
  v43 = v48[3];
  v44 = v5;
  *(a2 + 32) = v48[2];
  *(a2 + 48) = v43;
  *(a2 + 64) = v48[4];
  *(a2 + 80) = v49;
  v45 = v48[1];
  *a2 = v48[0];
  *(a2 + 16) = v45;
  *(a2 + 88) = v44;
  *(a2 + 92) = v42;
  *(a2 + 96) = v41;
  *(a2 + 100) = result;
  *(a2 + 104) = v38;
  *(a2 + 112) = v39;
  *(a2 + 120) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100A731C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001015850C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_100A73408@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A0E920, &unk_101491740);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v55 = a1;
  sub_100020E58(a1, v9);
  sub_100A72340();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v55);
  }

  v42 = 0;
  sub_1008B287C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = v45;
  v52 = v46;
  v53 = v47;
  v54 = v48;
  v49 = v43;
  v50 = v44;
  LOBYTE(v32[0]) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v32[0]) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v32[0]) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  LOBYTE(v32[0]) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  LOBYTE(v25) = 5;
  sub_100A73828();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v32[0];
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v40 = 6;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v19 = v41;
  v27 = v51;
  v28 = v52;
  v29 = v53;
  *&v30 = v54;
  v25 = v49;
  v26 = v50;
  *(&v30 + 1) = __PAIR64__(v13, v11);
  *v31 = __PAIR64__(v17, v15);
  *&v31[8] = v18;
  *&v31[24] = v41;
  sub_100A7387C(&v25, v32);
  sub_100005070(v55);
  v32[2] = v51;
  v32[3] = v52;
  v32[4] = v53;
  v33 = v54;
  v32[0] = v49;
  v32[1] = v50;
  v34 = v11;
  v35 = v13;
  v36 = v15;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  result = sub_100A738B4(v32);
  v21 = v30;
  a2[4] = v29;
  a2[5] = v21;
  v22 = *&v31[16];
  a2[6] = *v31;
  a2[7] = v22;
  v23 = v26;
  *a2 = v25;
  a2[1] = v23;
  v24 = v28;
  a2[2] = v27;
  a2[3] = v24;
  return result;
}

unint64_t sub_100A73828()
{
  result = qword_101A0E928;
  if (!qword_101A0E928)
  {
    result = swift_getWitnessTable(byte_101491B60, &type metadata for CRLCurvedShadowData, v0, v1);
    atomic_store(result, &qword_101A0E928);
  }

  return result;
}

unint64_t sub_100A738E4()
{
  result = qword_101A0E938;
  if (!qword_101A0E938)
  {
    result = swift_getWitnessTable(byte_101491B38, &type metadata for CRLCurvedShadowData, v0, v1);
    atomic_store(result, &qword_101A0E938);
  }

  return result;
}

unint64_t sub_100A73938()
{
  result = qword_101A0E940;
  if (!qword_101A0E940)
  {
    result = swift_getWitnessTable(")):", &type metadata for CRLShadowData, v0, v1);
    atomic_store(result, &qword_101A0E940);
  }

  return result;
}

unint64_t sub_100A7398C()
{
  result = qword_101A0E948;
  if (!qword_101A0E948)
  {
    result = swift_getWitnessTable(a9_30, &type metadata for CRLShadowData, v0, v1);
    atomic_store(result, &qword_101A0E948);
  }

  return result;
}

uint64_t sub_100A739E0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100A73A4C()
{
  result = qword_101A0E950;
  if (!qword_101A0E950)
  {
    result = swift_getWitnessTable("]:", &type metadata for CRLCurvedShadowData, v0, v1);
    atomic_store(result, &qword_101A0E950);
  }

  return result;
}

unint64_t sub_100A73AA4()
{
  result = qword_101A0E958;
  if (!qword_101A0E958)
  {
    result = swift_getWitnessTable("u:", &type metadata for CRLCurvedShadowData, v0, v1);
    atomic_store(result, &qword_101A0E958);
  }

  return result;
}

unint64_t sub_100A73AFC()
{
  result = qword_101A0E960;
  if (!qword_101A0E960)
  {
    result = swift_getWitnessTable(byte_10149186C, &type metadata for CRLCurvedShadowData, v0, v1);
    atomic_store(result, &qword_101A0E960);
  }

  return result;
}

unint64_t sub_100A73B5C()
{
  result = qword_101A0E968;
  if (!qword_101A0E968)
  {
    result = swift_getWitnessTable(byte_1014918EC, &type metadata for CRLCurvedShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E968);
  }

  return result;
}

unint64_t sub_100A73BB4()
{
  result = qword_101A0E970;
  if (!qword_101A0E970)
  {
    result = swift_getWitnessTable(byte_101491A08, &type metadata for CRLCurvedShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E970);
  }

  return result;
}

unint64_t sub_100A73C0C()
{
  result = qword_101A0E978;
  if (!qword_101A0E978)
  {
    result = swift_getWitnessTable(byte_1014919D0, &type metadata for CRLCurvedShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E978);
  }

  return result;
}

unint64_t sub_100A73C64()
{
  result = qword_101A0E980;
  if (!qword_101A0E980)
  {
    result = swift_getWitnessTable("5 :", &type metadata for CRLCurvedShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E980);
  }

  return result;
}

unint64_t sub_100A73CBC()
{
  result = qword_101A0E988;
  if (!qword_101A0E988)
  {
    result = swift_getWitnessTable(byte_10149199C, &type metadata for CRLCurvedShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E988);
  }

  return result;
}

unint64_t sub_100A73D14()
{
  result = qword_101A0E990;
  if (!qword_101A0E990)
  {
    result = swift_getWitnessTable(byte_101491974, &type metadata for CRLCurvedShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E990);
  }

  return result;
}

unint64_t sub_100A73D9C()
{
  result = qword_101A0E9A8;
  if (!qword_101A0E9A8)
  {
    result = swift_getWitnessTable(byte_1014918A4, &type metadata for CRLCurvedShadowData, v0, v1);
    atomic_store(result, &qword_101A0E9A8);
  }

  return result;
}

unint64_t sub_100A73DF4()
{
  result = qword_101A0E9B0;
  if (!qword_101A0E9B0)
  {
    result = swift_getWitnessTable(byte_101491B10, &type metadata for CRLShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E9B0);
  }

  return result;
}

void *sub_100A73E48(void *a1)
{
  v3 = sub_1005B981C(&qword_101A0E9B8, &qword_101491B88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100020E58(a1, a1[3]);
  sub_100A73C64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005070(a1);
  }

  else
  {
    v11 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    v10 = 1;
    sub_100600EA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100005070(a1);
  }

  return v7;
}

unint64_t sub_100A74024()
{
  result = qword_101A0E9C8;
  if (!qword_101A0E9C8)
  {
    result = swift_getWitnessTable(byte_101491A58, &type metadata for CRLCurvedShadowData, v0, v1);
    atomic_store(result, &qword_101A0E9C8);
  }

  return result;
}

unint64_t sub_100A74078()
{
  result = qword_101A0E9D0;
  if (!qword_101A0E9D0)
  {
    result = swift_getWitnessTable(byte_101491A30, &type metadata for CRLCurvedShadowData, v0, v1);
    atomic_store(result, &qword_101A0E9D0);
  }

  return result;
}

unint64_t sub_100A740E0()
{
  result = qword_101A0E9D8;
  if (!qword_101A0E9D8)
  {
    result = swift_getWitnessTable(byte_101491C10, &type metadata for CRLCurvedShadowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0E9D8);
  }

  return result;
}

void sub_100A74134(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 24);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v30 = *(v5 + 104);
  (v30)(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v29 = *(v5 + 8);
  v29(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(v1 + 16);
  v32 = 0;
  v33 = 0xE000000000000000;

  _StringGuts.grow(_:)(24);

  v32 = 0xD000000000000016;
  v33 = 0x8000000101585A20;
  v31 = a1;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = v32;
  v15 = v33;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();
  v16 = sub_10001CC04(v12, v14, v15);

  if (v2)
  {
    return;
  }

  v17 = *(*(v16 + 16) + 32);
  *v8 = v17;
  v30(v8, v10, v4);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v19 = v29;
  v29(v8, v4);
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  v20 = *(v16 + 16);

  LODWORD(v21) = sub_10001CEC4(v20, v16);

  if (v21 != 101)
  {
    goto LABEL_7;
  }

  v21 = *(*(v16 + 16) + 32);
  *v8 = v21;
  v30(v8, v10, v4);
  v22 = v21;
  v10 = _dispatchPreconditionTest(_:)();
  v19(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    sub_10089C7D0();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    swift_willThrow();
    v24 = *(*(v16 + 16) + 32);
    *v8 = v24;
    v30(v8, v10, v4);
    v25 = v24;
    v26 = _dispatchPreconditionTest(_:)();
    v19(v8, v4);
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v27 = *(v16 + 24);
  if (v27)
  {
    sqlite3_finalize(v27);
    *(v16 + 24) = 0;
  }
}

void sub_100A744DC(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v30 = *(v5 + 104);
  (v30)(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v29 = *(v5 + 8);
  v29(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  v32 = 0;
  v33 = 0xE000000000000000;

  _StringGuts.grow(_:)(24);

  v32 = 0xD000000000000016;
  v33 = 0x8000000101585A20;
  v31 = a1;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = v32;
  v15 = v33;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();
  v16 = sub_10001CC04(v12, v14, v15);

  if (v2)
  {
    return;
  }

  v17 = *(*(v16 + 16) + 32);
  *v8 = v17;
  v30(v8, v10, v4);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v19 = v29;
  v29(v8, v4);
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  v20 = *(v16 + 16);

  LODWORD(v21) = sub_10001CEC4(v20, v16);

  if (v21 != 101)
  {
    goto LABEL_7;
  }

  v21 = *(*(v16 + 16) + 32);
  *v8 = v21;
  v30(v8, v10, v4);
  v22 = v21;
  v10 = _dispatchPreconditionTest(_:)();
  v19(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    sub_10089C7D0();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    swift_willThrow();
    v24 = *(*(v16 + 16) + 32);
    *v8 = v24;
    v30(v8, v10, v4);
    v25 = v24;
    v26 = _dispatchPreconditionTest(_:)();
    v19(v8, v4);
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v27 = *(v16 + 24);
  if (v27)
  {
    sqlite3_finalize(v27);
    *(v16 + 24) = 0;
  }
}

uint64_t sub_100A7489C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v2;
  v10 = *(v2 + 24);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = *(v2 + 16);
    type metadata accessor for SQLTransaction();
    inited = swift_initStackObject();
    *(inited + 16) = v13;
    *(inited + 24) = 0;
    __chkstk_darwin(inited);
    *(&v17 - 4) = v15;
    *(&v17 - 3) = a1;
    *(&v17 - 2) = a2;
    *(&v17 - 1) = &v18;
    swift_retain_n();
    v16 = sub_10002FD6C(sub_100A7AE28, (&v17 - 6));

    swift_setDeallocating();

    return v16 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A74A68(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_10003080C();
  if (v4)
  {
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    if (swift_dynamicCast())
    {
      v9 = sub_10089A9BC(v20, v21, v22);
      v11 = v10;
    }

    else
    {
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = v12;
    }

    v13 = *(a4 + 32);
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v15 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v15, "Failed transactional database operation with error %@", 53, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    sub_10089C46C();
    swift_willThrow();
  }

  else
  {
    v8 = a2(v7);
    if (v8)
    {
      sub_100034410();
      v16 = 1;
    }

    else
    {
      v18 = *(a4 + 32);
      v19 = static os_log_type_t.default.getter();
      sub_100005404(v18, &_mh_execute_header, v19, "The block of SQL code returned false. This means we should roll back the transaction", 84, 2, _swiftEmptyArrayStorage);
      sub_10089C46C();
      v16 = 0;
    }
  }

  return v16 & 1;
}

uint64_t sub_100A74C6C(char a1, unint64_t a2, char *a3)
{
  v111 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 & 1;
  v114 = a1 & 1;
  v113 = v3;
  v13 = v3[3];
  *v11 = v13;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    v32 = v111;
    v110 = v15;
    v36 = objc_opt_self();

    v108 = v36;
    LODWORD(v31) = [v36 _atomicIncrementAssertCount];
    v112[0] = [objc_allocWithZone(NSString) init];
    *&v109 = v11;
    sub_100604538(v11, v112, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2u);
    StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
    v38 = String._bridgeToObjectiveC()();

    v39 = [v38 lastPathComponent];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v43 = static OS_os_log.crlAssert;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v31;
      v45 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v45;
      v46 = sub_1005CF04C();
      *(inited + 72) = v37;
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v32;
      *(inited + 104) = v46;
      *(inited + 112) = v40;
      *(inited + 120) = v42;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 152) = 211;
      v47 = v112[0];
      *(inited + 216) = v45;
      *(inited + 224) = v46;
      *(inited + 192) = v47;
      v48 = v37;
      v49 = v47;
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v51 = static os_log_type_t.error.getter();
      v52 = v43;
      v53 = v109;
      sub_100005404(v52, &_mh_execute_header, v51, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2, v109);

      sub_10063DF98(v53, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v54 = swift_allocObject();
      v54[2] = 8;
      v54[3] = 0;
      v32 = v54 + 3;
      v54[4] = 0;
      v54[5] = 0;
      v40 = *(v53 + 16);
      if (!v40)
      {
        goto LABEL_71;
      }

      v42 = 0;
      while (1)
      {
        v55 = &v110[40 * v42];
        v37 = *(v55 + 3);
        LODWORD(v31) = sub_100020E58(v55, v37);
        v56 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v57 = *v32;
        v58 = *(v56 + 16);
        v59 = __OFADD__(*v32, v58);
        v60 = *v32 + v58;
        if (v59)
        {
          goto LABEL_61;
        }

        v37 = v56;
        v31 = v54[4];
        if (v31 >= v60)
        {
          goto LABEL_27;
        }

        if (v31 + 0x4000000000000000 < 0)
        {
          goto LABEL_62;
        }

        v61 = v54[5];
        if (2 * v31 > v60)
        {
          v60 = 2 * v31;
        }

        v54[4] = v60;
        if ((v60 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_63;
        }

        v30 = swift_slowAlloc();
        v54[5] = v30;
        if (v61)
        {
          if (v30 != v61 || v30 >= v61 + 8 * v57)
          {
            memmove(v30, v61, 8 * v57);
          }

          v31 = v54;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_27:
          v30 = v54[5];
        }

        if (!v30)
        {
          __break(1u);
LABEL_69:
          swift_once();
          goto LABEL_36;
        }

        v63 = v37[2];
        if (v63)
        {
          break;
        }

LABEL_12:

        if (++v42 == v40)
        {
          goto LABEL_71;
        }
      }

      v64 = v37 + 4;
      v65 = *v32;
      while (1)
      {
        v66 = *v64++;
        *(v30 + 8 * v65) = v66;
        v65 = *v32 + 1;
        if (__OFADD__(*v32, 1))
        {
          break;
        }

        *v32 = v65;
        if (!--v63)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_35:
      v110 = v31;
      v67 = v30;
      v68 = objc_opt_self();

      v108 = v68;
      LODWORD(v31) = [v68 _atomicIncrementAssertCount];
      v112[0] = [objc_allocWithZone(NSString) init];
      *&v109 = v67;
      sub_100604538(v67, v112, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2u);
      StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
      v69 = String._bridgeToObjectiveC()();

      v70 = [v69 lastPathComponent];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v71;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_69;
      }

LABEL_36:
      v72 = static OS_os_log.crlAssert;
      v73 = swift_initStackObject();
      *(v73 + 16) = xmmword_10146CA70;
      *(v73 + 56) = &type metadata for Int32;
      *(v73 + 64) = &protocol witness table for Int32;
      *(v73 + 32) = v31;
      v74 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v73 + 96) = v74;
      v75 = sub_1005CF04C();
      *(v73 + 72) = v37;
      *(v73 + 136) = &type metadata for String;
      *(v73 + 144) = v32;
      *(v73 + 104) = v75;
      *(v73 + 112) = v40;
      *(v73 + 120) = v42;
      *(v73 + 176) = &type metadata for UInt;
      *(v73 + 184) = &protocol witness table for UInt;
      *(v73 + 152) = 230;
      v76 = v112[0];
      *(v73 + 216) = v74;
      *(v73 + 224) = v75;
      *(v73 + 192) = v76;
      v77 = v37;
      v78 = v76;
      v79 = static os_log_type_t.error.getter();
      sub_100005404(v72, &_mh_execute_header, v79, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v73);

      v80 = static os_log_type_t.error.getter();
      v81 = v72;
      v82 = v109;
      sub_100005404(v81, &_mh_execute_header, v80, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2, v109);

      sub_10063DF98(v82, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v83 = swift_allocObject();
      v83[2] = 8;
      v83[3] = 0;
      v32 = v83 + 3;
      v83[4] = 0;
      v83[5] = 0;
      v40 = *(v82 + 16);
      if (!v40)
      {
        while (1)
        {
LABEL_73:
          v102 = __VaListBuilder.va_list()();
          StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
          v97 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
          v98 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2);
          v99 = String._bridgeToObjectiveC()();

          [v108 handleFailureInFunction:v97 file:v98 lineNumber:230 isFatal:1 format:v99 args:v102];
LABEL_72:

          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v100, v101);
          v104 = 0;
          v103 = 348;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v42 = 0;
      while (2)
      {
        v84 = &v110[40 * v42];
        v37 = *(v84 + 3);
        LODWORD(v31) = sub_100020E58(v84, v37);
        v85 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v86 = *v32;
        v87 = *(v85 + 16);
        v59 = __OFADD__(*v32, v87);
        v88 = *v32 + v87;
        if (v59)
        {
          goto LABEL_64;
        }

        v37 = v85;
        v31 = v83[4];
        if (v31 >= v88)
        {
LABEL_53:
          v90 = v83[5];
        }

        else
        {
          if (v31 + 0x4000000000000000 < 0)
          {
            goto LABEL_65;
          }

          v89 = v83[5];
          if (2 * v31 > v88)
          {
            v88 = 2 * v31;
          }

          v83[4] = v88;
          if ((v88 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_66;
          }

          v90 = swift_slowAlloc();
          v83[5] = v90;
          if (v89)
          {
            if (v90 != v89 || v90 >= &v89[8 * v86])
            {
              memmove(v90, v89, 8 * v86);
            }

            LODWORD(v31) = v83;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
            goto LABEL_53;
          }
        }

        if (!v90)
        {
          __break(1u);
LABEL_71:
          v96 = __VaListBuilder.va_list()();
          StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
          v97 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
          v98 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2);
          v99 = String._bridgeToObjectiveC()();

          [v108 handleFailureInFunction:v97 file:v98 lineNumber:211 isFatal:1 format:v99 args:v96];
          goto LABEL_72;
        }

        v92 = v37[2];
        if (!v92)
        {
LABEL_38:

          if (++v42 == v40)
          {
            goto LABEL_73;
          }

          continue;
        }

        break;
      }

      v93 = v37 + 4;
      v94 = *v32;
      while (1)
      {
        v95 = *v93++;
        *&v90[8 * v94] = v95;
        v94 = *v32 + 1;
        if (__OFADD__(*v32, 1))
        {
          break;
        }

        *v32 = v94;
        if (!--v92)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
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
  }

  v110 = a3;
  v16 = v3[4];
  v17 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v18 = swift_initStackObject();
  v109 = xmmword_10146C6B0;
  *(v18 + 16) = xmmword_10146C6B0;
  *(v18 + 56) = &type metadata for Int;
  *(v18 + 64) = &protocol witness table for Int;
  *(v18 + 32) = v12;
  v19 = v16;
  v20 = static os_log_type_t.default.getter();
  sub_100005404(v19, &_mh_execute_header, v20, "Migrating database to schema version %{public}d", 47, 2, v18);

  swift_setDeallocating();
  sub_100005070((v18 + 32));
  result = sub_10001D824();
  if (v4)
  {
    return result;
  }

  v22 = result;
  v105 = v19;
  v107 = v17;
  v108 = 0;
  v11 = swift_initStackObject();
  *(v11 + 1) = xmmword_10146D2A0;
  *(v11 + 4) = v22 & 1;
  v15 = (v11 + 32);
  *(v11 + 7) = &type metadata for Int;
  *(v11 + 8) = &protocol witness table for Int;
  *(v11 + 12) = &type metadata for Int;
  *(v11 + 13) = &protocol witness table for Int;
  v23 = v111 & 1;
  *(v11 + 9) = v111 & 1;
  *(v11 + 17) = &type metadata for Int;
  *(v11 + 18) = &protocol witness table for Int;
  *(v11 + 14) = v12;
  v25 = v3[5];
  v24 = v3[6];
  *(v11 + 22) = &type metadata for String;
  v111 = sub_1000053B0();
  *(v11 + 23) = v111;
  v106 = v25;
  *(v11 + 19) = v25;
  *(v11 + 20) = v24;
  v26 = v24;
  if ((v22 & 1) != v23)
  {
    goto LABEL_9;
  }

  swift_setDeallocating();

  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  v27 = swift_arrayDestroy();
  __chkstk_darwin(v27);
  *(&v105 - 4) = v110;
  *(&v105 - 3) = &v113;
  v103 = &v114;
  v28 = v108;
  result = sub_100A7489C(sub_100A7B458, (&v105 - 6));
  if (!v28)
  {
    v29 = sub_10001D824();
    v108 = 0;
    v30 = swift_initStackObject();
    v110 = (v29 & 1);
    *(v30 + 32) = v110;
    v31 = v30 + 32;
    *(v30 + 16) = xmmword_10146C4D0;
    *(v30 + 56) = &type metadata for Int;
    *(v30 + 64) = &protocol witness table for Int;
    *(v30 + 72) = v12;
    *(v30 + 96) = &type metadata for Int;
    *(v30 + 104) = &protocol witness table for Int;
    v32 = v111;
    *(v30 + 136) = &type metadata for String;
    *(v30 + 144) = v32;
    *(v30 + 112) = v106;
    *(v30 + 120) = v26;
    if ((v29 & 1) != v12)
    {
      goto LABEL_35;
    }

    swift_setDeallocating();

    swift_arrayDestroy();
    v33 = swift_initStackObject();
    *(v33 + 16) = v109;
    *(v33 + 56) = &type metadata for Int;
    *(v33 + 64) = &protocol witness table for Int;
    *(v33 + 32) = v110;
    v34 = v105;
    v35 = static os_log_type_t.default.getter();
    sub_100005404(v34, &_mh_execute_header, v35, "Successfully migrated database to schema version %{public}d", 59, 2, v33);

    swift_setDeallocating();
    return sub_100005070((v33 + 32));
  }

  return result;
}

uint64_t sub_100A759A0(uint64_t a1, char *a2, char *a3)
{
  v111 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a1;
  v113 = v3;
  v12 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    v36 = v106;
    v111 = a3;
    v37 = objc_opt_self();

    *&v109 = v37;
    LODWORD(v30) = [v37 _atomicIncrementAssertCount];
    v112[0] = [objc_allocWithZone(NSString) init];
    v110 = v11;
    sub_100604538(v11, v112, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2u);
    StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v44 = static OS_os_log.crlAssert;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v30;
      v46 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v46;
      v47 = sub_1005CF04C();
      *(inited + 72) = v38;
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v36;
      *(inited + 104) = v47;
      *(inited + 112) = v41;
      *(inited + 120) = v43;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 152) = 211;
      v48 = v112[0];
      *(inited + 216) = v46;
      *(inited + 224) = v47;
      *(inited + 192) = v48;
      v49 = v38;
      v50 = v48;
      v51 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v52 = static os_log_type_t.error.getter();
      v53 = v110;
      sub_100005404(v44, &_mh_execute_header, v52, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2, v110);

      sub_10063DF98(v53, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v54 = swift_allocObject();
      v54[2] = 8;
      v54[3] = 0;
      v36 = v54 + 3;
      v54[4] = 0;
      v54[5] = 0;
      v41 = *(v53 + 2);
      if (!v41)
      {
        goto LABEL_71;
      }

      v43 = 0;
      while (1)
      {
        v55 = &v111[40 * v43];
        v38 = *(v55 + 3);
        LODWORD(v30) = sub_100020E58(v55, v38);
        v56 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v57 = *v36;
        v58 = *(v56 + 16);
        v59 = __OFADD__(*v36, v58);
        v60 = *v36 + v58;
        if (v59)
        {
          goto LABEL_61;
        }

        v38 = v56;
        v30 = v54[4];
        if (v30 >= v60)
        {
          goto LABEL_27;
        }

        if (v30 + 0x4000000000000000 < 0)
        {
          goto LABEL_62;
        }

        v61 = v54[5];
        if (2 * v30 > v60)
        {
          v60 = 2 * v30;
        }

        v54[4] = v60;
        if ((v60 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_63;
        }

        v29 = swift_slowAlloc();
        v54[5] = v29;
        if (v61)
        {
          if (v29 != v61 || v29 >= v61 + 8 * v57)
          {
            memmove(v29, v61, 8 * v57);
          }

          v30 = v54;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_27:
          v29 = v54[5];
        }

        if (!v29)
        {
          __break(1u);
LABEL_69:
          swift_once();
          goto LABEL_36;
        }

        v63 = v38[2];
        if (v63)
        {
          break;
        }

LABEL_12:

        if (++v43 == v41)
        {
          goto LABEL_71;
        }
      }

      v64 = v38 + 4;
      v31 = *v36;
      while (1)
      {
        v65 = *v64++;
        *(v29 + 8 * v31) = v65;
        v31 = *v36 + 1;
        if (__OFADD__(*v36, 1))
        {
          break;
        }

        *v36 = v31;
        if (!--v63)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_35:
      v111 = v30;
      v36 = v31;
      v66 = v29;
      v67 = objc_opt_self();

      *&v109 = v67;
      LODWORD(v30) = [v67 _atomicIncrementAssertCount];
      v112[0] = [objc_allocWithZone(NSString) init];
      v110 = v66;
      sub_100604538(v66, v112, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2u);
      StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
      v38 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
      v68 = String._bridgeToObjectiveC()();

      v69 = [v68 lastPathComponent];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v70;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_69;
      }

LABEL_36:
      v71 = static OS_os_log.crlAssert;
      v72 = swift_initStackObject();
      *(v72 + 16) = xmmword_10146CA70;
      *(v72 + 56) = &type metadata for Int32;
      *(v72 + 64) = &protocol witness table for Int32;
      *(v72 + 32) = v30;
      v73 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v72 + 96) = v73;
      v74 = sub_1005CF04C();
      *(v72 + 72) = v38;
      *(v72 + 136) = &type metadata for String;
      *(v72 + 144) = v36;
      *(v72 + 104) = v74;
      *(v72 + 112) = v41;
      *(v72 + 120) = v43;
      *(v72 + 176) = &type metadata for UInt;
      *(v72 + 184) = &protocol witness table for UInt;
      *(v72 + 152) = 230;
      v75 = v112[0];
      *(v72 + 216) = v73;
      *(v72 + 224) = v74;
      *(v72 + 192) = v75;
      v76 = v38;
      v77 = v75;
      v78 = static os_log_type_t.error.getter();
      sub_100005404(v71, &_mh_execute_header, v78, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v72);

      v79 = static os_log_type_t.error.getter();
      v80 = v110;
      sub_100005404(v71, &_mh_execute_header, v79, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2, v110);

      sub_10063DF98(v80, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v81 = swift_allocObject();
      v81[2] = 8;
      v81[3] = 0;
      v36 = v81 + 3;
      v81[4] = 0;
      v81[5] = 0;
      v41 = *(v80 + 2);
      if (!v41)
      {
        while (1)
        {
LABEL_73:
          v100 = __VaListBuilder.va_list()();
          StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
          v95 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
          v96 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2);
          v97 = String._bridgeToObjectiveC()();

          [v109 handleFailureInFunction:v95 file:v96 lineNumber:230 isFatal:1 format:v97 args:v100];
LABEL_72:

          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v98, v99);
          v102 = 0;
          v101 = 348;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v43 = 0;
      while (2)
      {
        v82 = &v111[40 * v43];
        v38 = *(v82 + 3);
        LODWORD(v30) = sub_100020E58(v82, v38);
        v83 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v84 = *v36;
        v85 = *(v83 + 16);
        v59 = __OFADD__(*v36, v85);
        v86 = *v36 + v85;
        if (v59)
        {
          goto LABEL_64;
        }

        v38 = v83;
        v30 = v81[4];
        if (v30 >= v86)
        {
LABEL_53:
          v88 = v81[5];
        }

        else
        {
          if (v30 + 0x4000000000000000 < 0)
          {
            goto LABEL_65;
          }

          v87 = v81[5];
          if (2 * v30 > v86)
          {
            v86 = 2 * v30;
          }

          v81[4] = v86;
          if ((v86 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_66;
          }

          v88 = swift_slowAlloc();
          v81[5] = v88;
          if (v87)
          {
            if (v88 != v87 || v88 >= &v87[8 * v84])
            {
              memmove(v88, v87, 8 * v84);
            }

            LODWORD(v30) = v81;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
            goto LABEL_53;
          }
        }

        if (!v88)
        {
          __break(1u);
LABEL_71:
          v94 = __VaListBuilder.va_list()();
          StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
          v95 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
          v96 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2);
          v97 = String._bridgeToObjectiveC()();

          [v109 handleFailureInFunction:v95 file:v96 lineNumber:211 isFatal:1 format:v97 args:v94];
          goto LABEL_72;
        }

        v90 = v38[2];
        if (!v90)
        {
LABEL_38:

          if (++v43 == v41)
          {
            goto LABEL_73;
          }

          continue;
        }

        break;
      }

      v91 = v38 + 4;
      v92 = *v36;
      while (1)
      {
        v93 = *v91++;
        *&v88[8 * v92] = v93;
        v92 = *v36 + 1;
        if (__OFADD__(*v36, 1))
        {
          break;
        }

        *v36 = v92;
        if (!--v90)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
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
  }

  v110 = a3;
  v14 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_logCategory);
  v15 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v16 = swift_initStackObject();
  v109 = xmmword_10146C6B0;
  *(v16 + 16) = xmmword_10146C6B0;
  *(v16 + 56) = &type metadata for Int;
  *(v16 + 64) = &protocol witness table for Int;
  v17 = a1;
  *(v16 + 32) = a1;
  v18 = v14;
  v19 = static os_log_type_t.default.getter();
  sub_100005404(v18, &_mh_execute_header, v19, "Migrating database to schema version %{public}d", 47, 2, v16);

  swift_setDeallocating();
  sub_100005070((v16 + 32));
  result = sub_100022484();
  if (v4)
  {
    return result;
  }

  v21 = result;
  v103 = v18;
  v105 = a1;
  v107 = v15;
  v108 = 0;
  v11 = swift_initStackObject();
  *(v11 + 1) = xmmword_10146D2A0;
  *(v11 + 4) = v21;
  a3 = v11 + 32;
  *(v11 + 7) = &type metadata for Int;
  v114 = v21;
  *(v11 + 12) = &type metadata for Int;
  *(v11 + 13) = &protocol witness table for Int;
  v22 = v111;
  v23 = v111;
  *(v11 + 8) = &protocol witness table for Int;
  *(v11 + 9) = v23;
  *(v11 + 17) = &type metadata for Int;
  *(v11 + 18) = &protocol witness table for Int;
  *(v11 + 14) = v17;
  v25 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_storeName);
  v24 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_storeName + 8);
  *(v11 + 22) = &type metadata for String;
  v106 = sub_1000053B0();
  *(v11 + 23) = v106;
  v104 = v25;
  *(v11 + 19) = v25;
  *(v11 + 20) = v24;
  if (v114 != v22)
  {
    goto LABEL_9;
  }

  swift_setDeallocating();

  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  v26 = swift_arrayDestroy();
  __chkstk_darwin(v26);
  *(&v103 - 4) = v110;
  *(&v103 - 3) = &v113;
  v101 = &v115;
  v27 = v108;
  result = sub_10002FA9C(sub_100A7B494, (&v103 - 6));
  if (!v27)
  {
    v28 = sub_100022484();
    v108 = 0;
    v29 = swift_initStackObject();
    *(v29 + 32) = v28;
    v30 = v29 + 32;
    *(v29 + 16) = xmmword_10146C4D0;
    *(v29 + 56) = &type metadata for Int;
    *(v29 + 64) = &protocol witness table for Int;
    *(v29 + 96) = &type metadata for Int;
    *(v29 + 104) = &protocol witness table for Int;
    *(v29 + 72) = v17;
    v31 = v106;
    *(v29 + 136) = &type metadata for String;
    *(v29 + 144) = v31;
    v32 = v105;
    *(v29 + 112) = v104;
    *(v29 + 120) = v24;
    if (v28 != v32)
    {
      goto LABEL_35;
    }

    swift_setDeallocating();

    swift_arrayDestroy();
    v33 = swift_initStackObject();
    *(v33 + 16) = v109;
    *(v33 + 56) = &type metadata for Int;
    *(v33 + 64) = &protocol witness table for Int;
    *(v33 + 32) = v28;
    v34 = v103;
    v35 = static os_log_type_t.default.getter();
    sub_100005404(v34, &_mh_execute_header, v35, "Successfully migrated database to schema version %{public}d", 59, 2, v33);

    swift_setDeallocating();
    return sub_100005070((v33 + 32));
  }

  return result;
}

uint64_t sub_100A76704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = type metadata accessor for DispatchPredicate();
  v8 = *(v49 - 8);
  v9 = __chkstk_darwin(v49);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  v48 = enum case for DispatchPredicate.onQueue(_:);
  if (!v12)
  {
    v31 = *(v8 + 104);
    goto LABEL_16;
  }

  v42 = v8;
  v43 = a3;
  v13 = v8 + 104;
  v47 = (v8 + 8);
  v44 = type metadata accessor for SQLiteStatement();
  v14 = (a1 + 40);
  v46 = v13;
  v41 = v13 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  while (1)
  {
    v16 = *(v14 - 1);
    v15 = *v14;
    swift_initStackObject();

    v18 = sub_10001CC04(v17, v16, v15);

    if (v4)
    {
      return 1;
    }

    v19 = a2;
    v20 = *(*(v18 + 16) + 32);
    *v11 = v20;
    v21 = v49;
    v45 = *v46;
    v45(v11, v48, v49);
    v22 = v20;
    v23 = _dispatchPreconditionTest(_:)();
    v24 = *v47;
    (*v47)(v11, v21);
    if ((v23 & 1) == 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v25 = *(v18 + 16);

    v26 = sub_10001CEC4(v25, v18);

    if (v26 != 101)
    {
      break;
    }

    v27 = *(*(v18 + 16) + 32);
    *v11 = v27;
    v28 = v49;
    v45(v11, v48, v49);
    v29 = v27;
    LOBYTE(v27) = _dispatchPreconditionTest(_:)();
    v24(v11, v28);
    if ((v27 & 1) == 0)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    v30 = *(v18 + 24);
    if (v30)
    {
      sqlite3_finalize(v30);
      *(v18 + 24) = 0;
    }

    v14 += 2;
    --v12;
    a2 = v19;
    if (!v12)
    {
      v8 = v42;
      LOBYTE(a3) = v43;
      v31 = v45;
LABEL_16:
      v37 = *(a2 + 24);
      *v11 = v37;
      v38 = v49;
      v31(v11, v48, v49, v9);
      v39 = v37;
      LOBYTE(v37) = _dispatchPreconditionTest(_:)();
      (*(v8 + 8))(v11, v38);
      if (v37)
      {
        sub_100A74134(a3 & 1);
        return 1;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }
  }

  sub_10089C7D0();
  swift_allocError();
  *v32 = v26;
  *(v32 + 8) = 0xD000000000000020;
  *(v32 + 16) = 0x80000001015859F0;
  swift_willThrow();
  v33 = *(*(v18 + 16) + 32);
  *v11 = v33;
  v34 = v49;
  v45(v11, v48, v49);
  v35 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  v24(v11, v34);
  if ((v33 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v36 = *(v18 + 24);
  if (v36)
  {
    sqlite3_finalize(v36);
    *(v18 + 24) = 0;
  }

  return 1;
}

uint64_t sub_100A76B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = type metadata accessor for DispatchPredicate();
  v8 = *(v50 - 8);
  v9 = __chkstk_darwin(v50);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  v49 = enum case for DispatchPredicate.onQueue(_:);
  if (!v12)
  {
    v31 = *(v8 + 104);
    goto LABEL_16;
  }

  v43 = a3;
  v45 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
  v13 = v8 + 104;
  v42 = v8;
  v48 = (v8 + 8);
  v44 = type metadata accessor for SQLiteStatement();
  v14 = (a1 + 40);
  v47 = v13;
  v41 = v13 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  while (1)
  {
    v16 = *(v14 - 1);
    v15 = *v14;
    swift_initStackObject();

    v18 = sub_10001CC04(v17, v16, v15);

    if (v4)
    {
      return 1;
    }

    v19 = a2;
    v20 = *(*(v18 + 16) + 32);
    *v11 = v20;
    v21 = v50;
    v46 = *v47;
    v46(v11, v49, v50);
    v22 = v20;
    v23 = _dispatchPreconditionTest(_:)();
    v24 = *v48;
    (*v48)(v11, v21);
    if ((v23 & 1) == 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v25 = *(v18 + 16);

    v26 = sub_10001CEC4(v25, v18);

    if (v26 != 101)
    {
      break;
    }

    v27 = *(*(v18 + 16) + 32);
    *v11 = v27;
    v28 = v50;
    v46(v11, v49, v50);
    v29 = v27;
    LOBYTE(v27) = _dispatchPreconditionTest(_:)();
    v24(v11, v28);
    if ((v27 & 1) == 0)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    v30 = *(v18 + 24);
    if (v30)
    {
      sqlite3_finalize(v30);
      *(v18 + 24) = 0;
    }

    v14 += 2;
    --v12;
    a2 = v19;
    if (!v12)
    {
      v8 = v42;
      LOBYTE(a3) = v43;
      v31 = v46;
LABEL_16:
      v37 = *(a2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
      *v11 = v37;
      v38 = v50;
      v31(v11, v49, v50, v9);
      v39 = v37;
      LOBYTE(v37) = _dispatchPreconditionTest(_:)();
      (*(v8 + 8))(v11, v38);
      if (v37)
      {
        sub_100A744DC(a3);
        return 1;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }
  }

  sub_10089C7D0();
  swift_allocError();
  *v32 = v26;
  *(v32 + 8) = 0xD000000000000020;
  *(v32 + 16) = 0x80000001015859F0;
  swift_willThrow();
  v33 = *(*(v18 + 16) + 32);
  *v11 = v33;
  v34 = v50;
  v46(v11, v49, v50);
  v35 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  v24(v11, v34);
  if ((v33 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v36 = *(v18 + 24);
  if (v36)
  {
    sqlite3_finalize(v36);
    *(v18 + 24) = 0;
  }

  return 1;
}

uint64_t sub_100A76F6C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 24);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = a1 & 1;
    if (a1)
    {
      if (v11 != 1)
      {
        v12 = *(v1 + 32);
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        *(inited + 56) = &type metadata for Int;
        *(inited + 64) = &protocol witness table for Int;
        *(inited + 32) = a1 & 1;
        v14 = static os_log_type_t.error.getter();
        sub_100005404(v12, &_mh_execute_header, v14, "Received invalid currentSchema during _migrateSchema: %{public}d", 64, 2, inited);
        swift_setDeallocating();
        sub_100005070((inited + 32));
        sub_100A7B404();
        swift_allocError();
        *v15 = a1 & 1;
        return swift_willThrow();
      }
    }

    else
    {
      v16 = sub_100A77200(1);
      v18 = v17;
      sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_10146C6B0;
      *(v19 + 32) = v16;
      v20 = v19 + 32;
      *(v19 + 40) = v18;
      sub_100A74C6C(1, v11, v19);
      swift_setDeallocating();
      return sub_100874FB4(v20);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100A77200(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0xD000000000000015;
  }

  _StringGuts.grow(_:)(112);
  v1._countAndFlagsBits = 0x5420455441455243;
  v1._object = 0xED000020454C4241;
  String.append(_:)(v1);
  v2._object = 0x8000000101585340;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 10272;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._object = 0x8000000101585360;
  v4._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  v5._object = 0x8000000101585A40;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x6E6F6973726576;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000020;
  v7._object = 0x8000000101585A60;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x7265746E756F63;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  v9._object = 0x8000000101585A90;
  String.append(_:)(v9);
  return 0;
}

Swift::Int sub_100A773DC()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001A844(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100A77484(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10001A844(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return String.hash(into:)();
}

Swift::Int sub_100A77528(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001A844(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100A775CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v6 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20))))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A77678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 24);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  swift_beginAccess();
  v13 = *(v3 + 56);
  if (!*(v13 + 16))
  {
    goto LABEL_7;
  }

  v14 = sub_1000486F0(a1);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  swift_endAccess();
  v17 = __OFADD__(v16, a2);
  a2 += v16;
  if (v17)
  {
    __break(1u);
LABEL_7:
    swift_endAccess();
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v3 + 56);
  *(v3 + 56) = 0x8000000000000000;
  sub_100A9FE48(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 56) = v28;
  swift_endAccess();
  if (qword_1019F22D8 != -1)
  {
LABEL_11:
    swift_once();
  }

  v19 = static OS_os_log.sideStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;

  sub_100A7A104(v21);

  type metadata accessor for CRLBoardIdentifier(0);
  sub_10001A844(&qword_101A01D20, 255, type metadata accessor for CRLBoardIdentifier, "%&;");
  v22 = Dictionary.description.getter();
  v24 = v23;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v22;
  *(inited + 40) = v24;
  v25 = static os_log_type_t.default.getter();
  sub_100005404(v19, &_mh_execute_header, v25, "In-memory boardLoadMarksCache: %{public}@", 41, 2, inited);
  swift_setDeallocating();
  return sub_100005070((inited + 32));
}

unint64_t sub_100A77988(uint64_t a1, int a2)
{
  v4 = v2;
  v77 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 24);
  *v10 = v11;
  v12 = *(v7 + 104);
  v80 = enum case for DispatchPredicate.onQueue(_:);
  v78 = v12;
  v12(v10, v8);
  v13 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v14 = *(v7 + 8);
  (v14)(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a2)
  {
    v79 = v7 + 104;
    v76 = v14;
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v15._countAndFlagsBits = 0x4144505520202020;
    v15._object = 0xEB00000000204554;
    String.append(_:)(v15);
    v16._object = 0x8000000101585340;
    v16._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0x5445532020202020;
    v17._object = 0xE900000000000020;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x7265746E756F63;
    v18._object = 0xE700000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 2112800;
    v19._object = 0xE300000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x7265746E756F63;
    v20._object = 0xE700000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x202020203F202B20;
    v21._object = 0xEF20455245485720;
    String.append(_:)(v21);
    v22._object = 0x8000000101585360;
    v22._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 0x3F203D3D20;
    v23._object = 0xE500000000000000;
    String.append(_:)(v23);
    LOBYTE(v14) = v3;
    v24 = v81;
    v25 = v82;
    v26 = *(v4 + 16);
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v4 = sub_10001CC04(v27, v24, v25);

    if (!v3)
    {
      v28 = *(*(v4 + 16) + 32);
      *v10 = v28;
      v14 = v78;
      (v78)(v10, v80, v6);
      v29 = v28;
      LOBYTE(v28) = _dispatchPreconditionTest(_:)();
      v76(v10, v6);
      if (v28)
      {
        swift_beginAccess();
        sqlite3_bind_int(*(v4 + 24), 1, a2);
        v30 = type metadata accessor for CRLBoardIdentifierStorage(0);
        v31 = sub_10084DAE4(v77, *(v77 + *(v30 + 20)), *(v77 + *(v30 + 20) + 8));
        v75 = 0;
        v74 = v32;
        v33 = v31;
        v34 = *(*(v4 + 16) + 32);
        *v10 = v34;
        (v14)(v10, v80, v6);
        v35 = v34;
        LOBYTE(v34) = _dispatchPreconditionTest(_:)();
        v36 = v76;
        v76(v10, v6);
        if (v34)
        {

          v37 = v33;
          v38 = v33;
          v39 = v74;
          v40 = v75;
          sub_100DCCAB4(v38, v74, v4, 2);
          v75 = v40;
          sub_10002640C(v37, v39);
          v41 = *(*(v4 + 16) + 32);
          *v10 = v41;
          (v14)(v10, v80, v6);
          v42 = v41;
          LOBYTE(v41) = _dispatchPreconditionTest(_:)();
          v36(v10, v6);
          if (v41)
          {
            v43 = *(v4 + 16);

            v44 = v43;
            v45 = v75;
            v46 = sub_10001CEC4(v44, v4);

            if (v46 != 101)
            {
              sub_10089C7D0();
              swift_allocError();
              *v59 = v46;
              *(v59 + 8) = 0;
              *(v59 + 16) = 0;
              swift_willThrow();
              v60 = *(*(v4 + 16) + 32);
              *v10 = v60;
              (v14)(v10, v80, v6);
              v61 = v60;
              LOBYTE(v60) = _dispatchPreconditionTest(_:)();
              v36(v10, v6);
              if (v60)
              {
                v62 = *(v4 + 24);
                if (v62)
                {
                  sqlite3_finalize(v62);
                  *(v4 + 24) = 0;
                }

                goto LABEL_19;
              }

              goto LABEL_35;
            }

            v47 = *(v26 + 32);
            *v10 = v47;
            v48 = v14;
            v14 = v80;
            v48(v10, v80, v6);
            v49 = v47;
            LOBYTE(v47) = _dispatchPreconditionTest(_:)();
            v36(v10, v6);
            if (v47)
            {
              swift_beginAccess();
              v50 = sqlite3_changes64(*(v26 + 16));
              if (v50 == 1)
              {
                v64 = *(*(v4 + 16) + 32);
                *v10 = v64;
                (v78)(v10, v14, v6);
                v65 = v64;
                LOBYTE(v64) = _dispatchPreconditionTest(_:)();
                v76(v10, v6);
                if (v64)
                {
                  v58 = *(v4 + 24);
                  LOBYTE(v14) = 1;
                  if (v58)
                  {
LABEL_28:
                    sqlite3_finalize(v58);
                    *(v4 + 24) = 0;
                  }

LABEL_19:

                  return v14 & 1;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v75 = v45;
              if (v50)
              {
                v14 = v78;
                if (qword_1019F22D8 == -1)
                {
LABEL_25:
                  v74 = static OS_os_log.sideStore;
                  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_10146C6B0;
                  v67 = sub_10084B8C8();
                  v69 = v68;
                  *(inited + 56) = &type metadata for String;
                  *(inited + 64) = sub_1000053B0();
                  *(inited + 32) = v67;
                  *(inited + 40) = v69;
                  v70 = static os_log_type_t.error.getter();
                  sub_100005404(v74, &_mh_execute_header, v70, "Update to board load mark completed, but touched many rows for board id: %{public}@", 83, 2, inited);
                  swift_setDeallocating();
                  sub_100005070((inited + 32));
                  v71 = *(*(v4 + 16) + 32);
                  *v10 = v71;
                  (v14)(v10, v80, v6);
                  v72 = v71;
                  LOBYTE(v71) = _dispatchPreconditionTest(_:)();
                  v76(v10, v6);
                  if ((v71 & 1) == 0)
                  {
                    __break(1u);
                  }

                  v58 = *(v4 + 24);
                  LOBYTE(v14) = 1;
LABEL_27:
                  if (v58)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_19;
                }

LABEL_39:
                swift_once();
                goto LABEL_25;
              }

              v14 = v78;
              if (qword_1019F22D8 == -1)
              {
LABEL_14:
                v74 = static OS_os_log.sideStore;
                sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                v51 = swift_initStackObject();
                *(v51 + 16) = xmmword_10146C6B0;
                v52 = sub_10084B8C8();
                v54 = v53;
                *(v51 + 56) = &type metadata for String;
                *(v51 + 64) = sub_1000053B0();
                *(v51 + 32) = v52;
                *(v51 + 40) = v54;
                v55 = static os_log_type_t.error.getter();
                sub_100005404(v74, &_mh_execute_header, v55, "Attempted to update board load mark, but row didn't exist for board with id: %{public}@", 87, 2, v51);
                swift_setDeallocating();
                sub_100005070((v51 + 32));
                v56 = *(*(v4 + 16) + 32);
                *v10 = v56;
                (v14)(v10, v80, v6);
                v57 = v56;
                LOBYTE(v56) = _dispatchPreconditionTest(_:)();
                v76(v10, v6);
                if (v56)
                {
                  LOBYTE(v14) = 0;
                  v58 = *(v4 + 24);
                  goto LABEL_27;
                }

                __break(1u);
                goto LABEL_38;
              }

LABEL_36:
              swift_once();
              goto LABEL_14;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

void sub_100A78348()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v6 = sub_10001CC04(v5, 0xD000000000000024, 0x8000000101585BF0);
  if (!v0)
  {
    v7 = v6;

    v8 = *(*(v7 + 16) + 32);
    *v4 = v8;
    v9 = enum case for DispatchPredicate.onQueue(_:);
    v10 = *(v2 + 104);
    v10(v4, enum case for DispatchPredicate.onQueue(_:), v1);
    v11 = v8;
    LOBYTE(v8) = _dispatchPreconditionTest(_:)();
    v30 = *(v2 + 8);
    v30(v4, v1);
    if ((v8 & 1) == 0)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
    }

    v12 = *(v7 + 16);

    v13 = sub_10001CEC4(v12, v7);

    if (v13 == 101)
    {
      v14 = *(*(v7 + 16) + 32);
      *v4 = v14;
      v10(v4, v9, v1);
      v15 = v14;
      v16 = _dispatchPreconditionTest(_:)();
      v30(v4, v1);
      if (v16)
      {
        swift_beginAccess();
        v17 = *(v7 + 24);
        if (v17)
        {
          sqlite3_finalize(v17);
          *(v7 + 24) = 0;
        }

        return;
      }

      goto LABEL_15;
    }

    sub_10089C7D0();
    swift_allocError();
    *v18 = v13;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    swift_willThrow();
    v19 = *(*(v7 + 16) + 32);
    *v4 = v19;
    v10(v4, v9, v1);
    v20 = v19;
    v21 = _dispatchPreconditionTest(_:)();
    v30(v4, v1);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }

    swift_beginAccess();
    v22 = *(v7 + 24);
    if (v22)
    {
      sqlite3_finalize(v22);
      *(v7 + 24) = 0;
    }
  }

  if (qword_1019F22D8 != -1)
  {
    swift_once();
  }

  v23 = static OS_os_log.sideStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v25 = Error.localizedDescription.getter();
  v27 = v26;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v25;
  *(inited + 40) = v27;
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v28, "Failed to _clearAllBoardLoadMarks with error %@", 47, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  swift_willThrow();
}

uint64_t sub_100A78764(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 24);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1019F22D8 != -1)
  {
LABEL_5:
    swift_once();
  }

  v13 = static OS_os_log.sideStore;
  v22[0] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v15 = UUID.uuidString.getter();
  v17 = v16;
  *(inited + 56) = &type metadata for String;
  v18 = sub_1000053B0();
  *(inited + 32) = v15;
  *(inited + 40) = v17;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 64) = v18;
  *(inited + 72) = a2;
  v19 = static os_log_type_t.default.getter();
  sub_100005404(v13, &_mh_execute_header, v19, "markBoardLoad for board %{public}@ by amount %{public}d", 55, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  v20 = swift_arrayDestroy();
  __chkstk_darwin(v20);
  v22[-4] = v3;
  v22[-3] = a1;
  v22[-2] = a2;
  sub_100A7489C(sub_100A7A068, &v22[-6]);
  return 0;
}

void sub_100A78AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001FF1C();
  sub_100A7AE88(a2);
  if (!v3)
  {
    if (a3 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a3 <= 0x7FFFFFFF)
    {
      sub_100A77988(a2, a3);
      sub_100A77678(a2, a3);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_100A78B64()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100A78BBC(uint64_t a1, uint64_t a2)
{
  result = sub_10001A844(&qword_101A0EAA0, a2, type metadata accessor for CRLSideStore, byte_101491CDC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A78C18()
{
  result = qword_101A0EAA8;
  if (!qword_101A0EAA8)
  {
    result = swift_getWitnessTable("!R:", &type metadata for CRLSideStore.SchemaVersion, v0, v1);
    atomic_store(result, &qword_101A0EAA8);
  }

  return result;
}

unint64_t sub_100A78C6C()
{
  result = qword_101A0EAB0;
  if (!qword_101A0EAB0)
  {
    result = swift_getWitnessTable(byte_101491CF8, &type metadata for CRLSideStore.Table, v0, v1);
    atomic_store(result, &qword_101A0EAB0);
  }

  return result;
}

unint64_t sub_100A78CC0(uint64_t a1)
{
  result = sub_100A78CE8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100A78CE8()
{
  result = qword_101A0EB00;
  if (!qword_101A0EB00)
  {
    result = swift_getWitnessTable("Y!:", &type metadata for CRLSideStore.Table, v0, v1);
    atomic_store(result, &qword_101A0EB00);
  }

  return result;
}

unint64_t sub_100A78D80(void *a1)
{
  a1[1] = sub_100A78DB8();
  a1[2] = sub_100A78E0C();
  result = sub_100A78E60();
  a1[3] = result;
  return result;
}

unint64_t sub_100A78DB8()
{
  result = qword_101A0EB18;
  if (!qword_101A0EB18)
  {
    result = swift_getWitnessTable("A :", &type metadata for CRLSideStore.SchemaVersion, v0, v1);
    atomic_store(result, &qword_101A0EB18);
  }

  return result;
}

unint64_t sub_100A78E0C()
{
  result = qword_101A0EB20;
  if (!qword_101A0EB20)
  {
    result = swift_getWitnessTable(byte_101491DBC, &type metadata for CRLSideStore.SchemaVersion, v0, v1);
    atomic_store(result, &qword_101A0EB20);
  }

  return result;
}

unint64_t sub_100A78E60()
{
  result = qword_101A0EB28;
  if (!qword_101A0EB28)
  {
    result = swift_getWitnessTable(aE_33, &type metadata for CRLSideStore.SchemaVersion, v0, v1);
    atomic_store(result, &qword_101A0EB28);
  }

  return result;
}

unint64_t sub_100A78EB4()
{
  result = qword_101A0EB30;
  if (!qword_101A0EB30)
  {
    result = swift_getWitnessTable(byte_101491E04, &type metadata for CRLSideStore.SchemaVersion, v0, v1);
    atomic_store(result, &qword_101A0EB30);
  }

  return result;
}

void sub_100A78F6C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 16);
  v8 = *(v7 + 32);
  *v6 = v8;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v8)
  {

    sub_10089CCDC(v10, v7);

    swift_beginAccess();
    *(v7 + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100A790B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_100A78764(a1, 1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

double sub_100A79100(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v17[1] = *(v1 + 24);
  sub_10000C69C(a1, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_1000253F8(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CRLBoardIdentifier);
  aBlock[4] = sub_100A79494;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101893698;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10001A844(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v18);

  return result;
}

uint64_t sub_100A79494()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = sub_100A78764(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)), -1);
  v4 = v3 & 1;

  return sub_1007987E8(v2, v4);
}

double sub_100A79530(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 24);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10001A844(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);

  return result;
}

uint64_t sub_100A797D8(uint64_t a1)
{
  if (qword_1019F22D8 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.sideStore;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "clearBoardLoadMarks", 19, 2, _swiftEmptyArrayStorage);
  sub_100A78348();
  swift_beginAccess();
  *(a1 + 56) = _swiftEmptyDictionarySingleton;
}

void sub_100A799BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100A7489C(sub_100A7B4C0, a1);
  if (v2)
  {
    if (qword_1019F22D8 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.sideStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v6 = Error.publicDescription.getter(v15, v16);
    v8 = v7;
    *(inited + 56) = &type metadata for String;
    v9 = sub_1000053B0();
    *(inited + 64) = v9;
    *(inited + 32) = v6;
    *(inited + 40) = v8;
    swift_getErrorValue();
    v10 = Error.fullDescription.getter(v14);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v9;
    *(inited + 72) = v10;
    *(inited + 80) = v11;
    v12 = static os_log_type_t.error.getter();
    sub_100005404(v4, &_mh_execute_header, v12, "cleanUpBoardLoadMarksForAppTermination failed with error %{public} %@", 69, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v13 = v2;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
  *(a2 + 8) = v2 != 0;
}

uint64_t sub_100A79B7C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v50 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v44 - v6;
  v7 = sub_1005B981C(&qword_101A0EB60, &qword_101491E88);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v44 - v11;
  if (qword_1019F22D8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v12 = static OS_os_log.sideStore;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v12, &_mh_execute_header, v13, "cleanUpBoardLoadMarksForAppTermination", 38, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  v14 = *(a1 + 56);
  v15 = *(v14 + 64);
  v45 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v44 = (v16 + 63) >> 6;
  v51 = v14;

  v19 = 0;
  v49 = v4;
  v46 = v9;
  v47 = a1;
  v20 = v9;
  while (1)
  {
    if (!v18)
    {
      if (v44 <= v19 + 1)
      {
        v23 = v19 + 1;
      }

      else
      {
        v23 = v44;
      }

      v24 = v23 - 1;
      while (1)
      {
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v22 >= v44)
        {
          v9 = v4;
          v42 = sub_1005B981C(&qword_101A0EB48, &qword_101491E78);
          v34 = v20;
          (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
          v18 = 0;
          v19 = v24;
          goto LABEL_16;
        }

        v18 = *(v45 + 8 * v22);
        ++v19;
        if (v18)
        {
          v21 = v53;
          v19 = v22;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v21 = v53;
    v22 = v19;
LABEL_15:
    v53 = v21;
    v25 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v26 = v25 | (v22 << 6);
    v27 = v51;
    v28 = v48;
    sub_10000C69C(*(v51 + 48) + *(v50 + 72) * v26, v48, type metadata accessor for CRLBoardIdentifier);
    v29 = *(*(v27 + 56) + 8 * v26);
    v30 = sub_1005B981C(&qword_101A0EB48, &qword_101491E78);
    v31 = *(v30 + 48);
    v32 = v28;
    v33 = v46;
    sub_1000253F8(v32, v46, type metadata accessor for CRLBoardIdentifier);
    *(v33 + v31) = v29;
    v34 = v33;
    (*(*(v30 - 8) + 56))(v33, 0, 1, v30);
    v9 = v49;
    a1 = v47;
LABEL_16:
    v20 = v34;
    v35 = v34;
    v36 = v52;
    sub_100A7B4E0(v35, v52);
    v37 = sub_1005B981C(&qword_101A0EB48, &qword_101491E78);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {
      break;
    }

    v38 = *(v36 + *(v37 + 48));
    v39 = v36;
    v4 = v9;
    sub_1000253F8(v39, v9, type metadata accessor for CRLBoardIdentifier);
    if (v38 == 0x8000000000000000)
    {
      goto LABEL_26;
    }

    v40 = -v38;
    if (-v38 < 0xFFFFFFFF80000000)
    {
      goto LABEL_27;
    }

    if (v40 > 0x7FFFFFFF)
    {
      goto LABEL_28;
    }

    v41 = v53;
    sub_100A77988(v9, v40);
    v9 = v41;
    sub_100025E48(v4, type metadata accessor for CRLBoardIdentifier);
    v53 = v41;
    if (v41)
    {

      return 1;
    }
  }

  *(a1 + 56) = _swiftEmptyDictionarySingleton;

  return 1;
}

void *sub_100A7A08C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_100A7A264(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_100A7A104(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_100A7A08C(v7, v4, v2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_100A7A264(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_100A7A264(unint64_t *a1, uint64_t a2, void *a3)
{
  v24 = a2;
  v25 = a1;
  v28 = sub_1005B981C(&qword_101A0EB48, &qword_101491E78);
  __chkstk_darwin(v28);
  v5 = &v24 - v4;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v27 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v9 = 0;
  v29 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v29;
    sub_10000C69C(v29[6] + *(v27 + 72) * v20, v8, type metadata accessor for CRLBoardIdentifier);
    v22 = *(v21[7] + 8 * v20);
    sub_10000C69C(v8, v5, type metadata accessor for CRLBoardIdentifier);
    *&v5[*(v28 + 48)] = v22;
    sub_10000CAAC(v5, &qword_101A0EB48, &qword_101491E78);
    sub_100025E48(v8, type metadata accessor for CRLBoardIdentifier);
    if (v22)
    {
      *(v25 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100A7A86C(v25, v24, v26, v29);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_15;
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100A7A4C8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v33 - v10;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1005B981C(&qword_101A0EB68, &qword_10149EAA0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_10001A844(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = v23;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100A7A86C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v36 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v35 = &v33 - v12;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1005B981C(&qword_101A0EB50, &qword_101491E80);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v34 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v37 = (v15 - 1) & v15;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[6];
    v23 = v35;
    v39 = *(v36 + 72);
    sub_10000C69C(v22 + v39 * v21, v35, type metadata accessor for CRLBoardIdentifier);
    v38 = *(a4[7] + 8 * v21);
    sub_1000253F8(v23, v10, type metadata accessor for CRLBoardIdentifier);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10001A844(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLBoardIdentifierStorage(0);
    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v14 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      a4 = v34;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v17 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    a4 = v34;
LABEL_26:
    *(v17 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = sub_1000253F8(v10, *(v14 + 48) + v27 * v39, type metadata accessor for CRLBoardIdentifier);
    *(*(v14 + 56) + 8 * v27) = v38;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v15 = v37;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100A7AC0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1005B981C(&qword_101A0EB70, &unk_101491E90);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    v20 = v17;

    result = NSObject._rawHashValue(seed:)(v19);
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    *(*(v9 + 56) + 8 * v24) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100A7AE54@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_100030478(a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

void sub_100A7AE88(uint64_t a1)
{
  v49 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 24);
  *v7 = v8;
  v9 = *(v4 + 104);
  v51 = enum case for DispatchPredicate.onQueue(_:);
  v9(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v50 = v9;
  v48 = v11;
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  v12._object = 0x8000000101585440;
  String.append(_:)(v12);
  v13._object = 0x8000000101585340;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x202020202820;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._object = 0x8000000101585360;
  v15._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x20202020202CLL;
  v16._object = 0xE600000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x6E6F6973726576;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x20202020202CLL;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x7265746E756F63;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD000000000000016;
  v20._object = 0x8000000101585460;
  String.append(_:)(v20);
  v21 = v52;
  v22 = v53;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v24 = sub_10001CC04(v23, v21, v22);

  if (v2)
  {
    return;
  }

  v25 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v26 = sub_10084DAE4(v49, *(v49 + *(v25 + 20)), *(v49 + *(v25 + 20) + 8));
  v49 = v27;
  v28 = v26;
  v29 = *(*(v24 + 16) + 32);
  *v7 = v29;
  v50(v7, v51, v3);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v31 = v48;
  v48(v7, v3);
  if ((v29 & 1) == 0)
  {
    goto LABEL_15;
  }

  v32 = v28;
  v33 = v28;
  v34 = v49;
  sub_100DCCAB4(v33, v49, v24, 1);
  sub_10002640C(v32, v34);
  v35 = sub_10001FF1C();
  sub_100034254(v35, 2);
  v36 = *(*(v24 + 16) + 32);
  *v7 = v36;
  v50(v7, v51, v3);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v31(v7, v3);
  if ((v36 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v38 = *(v24 + 16);

  v39 = sub_10001CEC4(v38, v24);

  if (v39 == 101)
  {
    v40 = *(*(v24 + 16) + 32);
    *v7 = v40;
    v50(v7, v51, v3);
    v41 = v40;
    v42 = _dispatchPreconditionTest(_:)();
    v31(v7, v3);
    if (v42)
    {
      swift_beginAccess();
      v43 = *(v24 + 24);
      if (v43)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  sub_10089C7D0();
  swift_allocError();
  *v44 = v39;
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  swift_willThrow();
  v45 = *(*(v24 + 16) + 32);
  *v7 = v45;
  v50(v7, v51, v3);
  v46 = v45;
  v47 = _dispatchPreconditionTest(_:)();
  v31(v7, v3);
  if ((v47 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v43 = *(v24 + 24);
  if (v43)
  {
LABEL_11:
    sqlite3_finalize(v43);
    *(v24 + 24) = 0;
  }

LABEL_12:
}

unint64_t sub_100A7B404()
{
  result = qword_101A0EB58;
  if (!qword_101A0EB58)
  {
    result = swift_getWitnessTable("]\\<", &type metadata for CRLSQLSchemaVersionError, v0, v1);
    atomic_store(result, &qword_101A0EB58);
  }

  return result;
}

uint64_t sub_100A7B4E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0EB60, &qword_101491E88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100A7B5AC()
{
  result = qword_101A0EC10;
  if (!qword_101A0EC10)
  {
    result = swift_getWitnessTable(aA_62, &type metadata for CRLSideStore.Table, v0, v1);
    atomic_store(result, &qword_101A0EC10);
  }

  return result;
}

unint64_t sub_100A7B690(uint64_t a1)
{
  result = sub_100A7B6B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100A7B6B8()
{
  result = qword_101A0EC60;
  if (!qword_101A0EC60)
  {
    result = swift_getWitnessTable(a9_31, &type metadata for CRLSideStore.BoardLoadMarksColumn, v0, v1);
    atomic_store(result, &qword_101A0EC60);
  }

  return result;
}

unint64_t sub_100A7B710()
{
  result = qword_101A0EC68;
  if (!qword_101A0EC68)
  {
    result = swift_getWitnessTable(byte_1014920D4, &type metadata for CRLSideStore.BoardLoadMarksColumn, v0, v1);
    atomic_store(result, &qword_101A0EC68);
  }

  return result;
}

void sub_100A7B780()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CRLUSDZPlayPauseKnobTracker();
  objc_msgSendSuper2(&v4, "beginMovingKnob");
  v1 = [v0 knob];
  type metadata accessor for CRLUSDZPlayPauseKnob();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isBeingTracked);
    *(v2 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isBeingTracked) = 1;
    if ((v3 & 1) == 0)
    {
      sub_10072A460();
    }
  }
}

void sub_100A7B860()
{
  v1 = type metadata accessor for CRLUSDZPlayPauseKnobTracker();
  v8.receiver = v0;
  v8.super_class = v1;
  objc_msgSendSuper2(&v8, "endMovingKnob");
  v2 = [v0 knob];
  type metadata accessor for CRLUSDZPlayPauseKnob();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    [v0 currentPosition];
    if ([v4 isHitByUnscaledPoint:0 inputType:?])
    {
      v5 = (v4[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying] & 1) == 0;
      v4[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying] = v5;
      sub_10072A460();
      sub_100020E58(&v0[OBJC_IVAR____TtC8Freeform27CRLUSDZPlayPauseKnobTracker_delegate], *&v0[OBJC_IVAR____TtC8Freeform27CRLUSDZPlayPauseKnobTracker_delegate + 24]);
      sub_100D145D4(v5);
    }

    v6 = v4[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isBeingTracked];
    v4[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isBeingTracked] = 0;
    if (v6 == 1)
    {
      sub_10072A460();
    }

    v7.receiver = v0;
    v7.super_class = v1;
    objc_msgSendSuper2(&v7, "endMovingKnob");
  }
}

id sub_100A7BA40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDZPlayPauseKnobTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100A7BAFC()
{

  return swift_deallocClassInstance();
}

void sub_100A7BB54()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60, &qword_101488168);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_100A7BC24(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  if ((sub_1011255D0() & 1) == 0)
  {
    sub_100A82188(a1, type metadata accessor for CRLURLItemAtomicDataStruct);
    return;
  }

  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A1C108)
  {
    __break(1u);
    return;
  }

  sub_100A82120(a1, v12, type metadata accessor for CRLURLItemAtomicDataStruct);
  sub_100A82120(v12, v9, type metadata accessor for CRLURLItemAtomicDataStruct);
  swift_beginAccess();
  sub_100A82120(v9, v6, type metadata accessor for CRLURLItemAtomicDataStruct);

  sub_1005B981C(&qword_101A08C60, &qword_101488168);
  CRRegister.wrappedValue.setter();
  sub_100A82188(v9, type metadata accessor for CRLURLItemAtomicDataStruct);
  swift_endAccess();

  sub_100A82188(v12, type metadata accessor for CRLURLItemAtomicDataStruct);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*((swift_isaMask & *Strong) + 0x388))();

    sub_100A82188(a1, type metadata accessor for CRLURLItemAtomicDataStruct);
    if (v15)
    {
      return;
    }
  }

  else
  {
    sub_100A82188(a1, type metadata accessor for CRLURLItemAtomicDataStruct);
  }

  v16 = *(v2 + OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload);
  *(v2 + OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload) = 0;
}

void sub_100A7BFE4(char *a1)
{
  v2 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&a1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A1C108)
  {
    swift_beginAccess();
    v9 = a1;

    sub_1005B981C(&qword_101A08C60, &qword_101488168);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    (*(v6 + 16))(v8, &v4[*(v2 + 20)], v5);
    sub_100A82188(v4, type metadata accessor for CRLURLItemAtomicDataStruct);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    (*(v6 + 8))(v8, v5);

    v13 = v12;
  }

  else
  {
    __break(1u);
  }
}

_UNKNOWN ****sub_100A7C258()
{
  v1 = v0;
  v2 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v65 - v17;
  v19 = OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload;
  v20 = *&v1[OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload];
  if (!v20)
  {
    if (**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A1C108)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A08C60, &qword_101488168);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_100A82120(v4, v7, type metadata accessor for CRLAssetData);
      sub_100A82188(v4, type metadata accessor for CRLURLItemAtomicDataStruct);
      v69 = v1;
      v29 = [v1 store];
      v30 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
      os_unfair_lock_lock(*(v30 + 16));
      v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
      v32 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      if (v32)
      {
        v33 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      }

      else
      {
        v68 = type metadata accessor for CRLAssetManager();
        v52 = objc_allocWithZone(v68);
        swift_unknownObjectWeakInit();
        v53 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
        type metadata accessor for CRLUnfairLock();
        v54 = swift_allocObject();
        v67 = v29;
        v55 = swift_slowAlloc();
        *v55 = 0;
        *(v54 + 16) = v55;
        atomic_thread_fence(memory_order_acq_rel);
        *&v52[v53] = v54;
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
        v56 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
        *&v52[v56] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
        v57 = v67;
        swift_unknownObjectWeakAssign();
        v70.receiver = v52;
        v70.super_class = v68;
        v58 = objc_msgSendSuper2(&v70, "init");

        v59 = *&v29[v31];
        *&v29[v31] = v58;
        v33 = v58;

        v32 = 0;
      }

      v60 = *(v30 + 16);
      v61 = v32;
      os_unfair_lock_unlock(v60);

      v62 = v69;
      v63 = sub_1011255E0();

      sub_100A82188(v7, type metadata accessor for CRLAssetData);
      v51 = *(v62 + v19);
      *(v62 + v19) = v63;
      v28 = v63;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v65 = v10;
  v66 = v16;
  v67 = v15;
  v68 = v4;
  v19 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v21 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  v10 = sub_100020E58((v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v19);
  v4 = v1;
  v22 = *(v21 + 24);
  v69 = v20;
  v22(v19, v21);
  v20 = *(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v20 != &off_101A1C108)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A08C60, &qword_101488168);
  v23 = v68;
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v24 = v65;
  sub_100A82120(v23, v65, type metadata accessor for CRLAssetData);
  sub_100A82188(v23, type metadata accessor for CRLURLItemAtomicDataStruct);
  v26 = v66;
  v25 = v67;
  (*(v66 + 16))(v13, v24, v67);
  sub_100A82188(v24, type metadata accessor for CRLAssetData);
  LOBYTE(v24) = static UUID.== infix(_:_:)();
  v27 = *(v26 + 8);
  v27(v13, v25);
  v27(v18, v25);
  if ((v24 & 1) == 0)
  {
    v20 = objc_opt_self();
    LODWORD(v4) = [v20 _atomicIncrementAssertCount];
    v71 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v71, "Cached CRLAsset instance has not been updated as expected.", 58, 2u);
    StaticString.description.getter("metadataPayload", 15, 2);
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLURLItem.swift", 81, 2);
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v36;

    if (qword_1019F20A0 == -1)
    {
LABEL_9:
      v37 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v39 = sub_1005CF000();
      *(inited + 96) = v39;
      v40 = sub_100A821E8(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v40;
      *(inited + 72) = v10;
      *(inited + 136) = &type metadata for String;
      v41 = sub_1000053B0();
      *(inited + 112) = v18;
      *(inited + 120) = v19;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v41;
      *(inited + 152) = 47;
      v42 = v71;
      *(inited + 216) = v39;
      *(inited + 224) = v40;
      *(inited + 192) = v42;
      v43 = v10;
      v44 = v42;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v46, "Cached CRLAsset instance has not been updated as expected.", 58, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v47 = swift_allocObject();
      v47[2] = 8;
      v47[3] = 0;
      v47[4] = 0;
      v47[5] = 0;
      v48 = __VaListBuilder.va_list()();
      StaticString.description.getter("metadataPayload", 15, 2);
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLURLItem.swift", 81, 2);
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Cached CRLAsset instance has not been updated as expected.", 58, 2);
      v51 = String._bridgeToObjectiveC()();

      [v20 handleFailureInFunction:v49 file:v50 lineNumber:47 isFatal:0 format:v51 args:v48];

      v28 = v69;
LABEL_12:

      return v28;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  return v69;
}

uint64_t sub_100A7CD48(uint64_t a1)
{
  v2 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.url.getter();
  v13 = static UTType.== infix(_:_:)();
  result = (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60, &qword_101488168);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    (*(v6 + 16))(v8, &v4[*(v2 + 20)], v5);
    sub_100A82188(v4, type metadata accessor for CRLURLItemAtomicDataStruct);
    v15 = URL.dataRepresentation.getter();
    (*(v6 + 8))(v8, v5);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100A7D164()
{
  v1 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60, &qword_101488168);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    (*(v5 + 16))(v7, &v3[*(v1 + 20)], v4);
    sub_100A82188(v3, type metadata accessor for CRLURLItemAtomicDataStruct);
    URL.absoluteString.getter();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_100A7D3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v52 = &v46 - v18;
  __chkstk_darwin(v19);
  v24 = &v46 - v23;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    v47 = v22;
    v48 = a2;
    v49 = v21;
    v50 = v20;
    v51 = v4;

    v25 = sub_100D1FBA8(1);
    v53 = a4;
    v26 = v25;

    v27 = v26 + *(*v26 + 736);
    swift_beginAccess();
    v57 = v24;
    sub_10000BE14(v27, v13, &unk_101A226A0, &unk_10146E610);

    v28 = sub_1005B981C(&qword_101A01F08, &unk_101498A50);
    CRRegister.wrappedValue.getter();
    v29 = v13;
    v30 = v57;
    sub_10000CAAC(v29, &unk_101A226A0, &unk_10146E610);
    sub_10000BE14(v10, v30, &qword_1019F6990, &qword_10146D2F0);
    sub_100A82188(v10, type metadata accessor for CRLBoardItemParentAffinity);
    sub_100D2004C(v53);
    if (v5)
    {

      sub_10000CAAC(v30, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v53 = v28;
      v54 = v11;
      v31 = v47;
      sub_10000BE14(v48, v47, &qword_1019F6990, &qword_10146D2F0);
      v32 = type metadata accessor for UUID();
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);
      if (v34(v31, 1, v32) == 1)
      {
        v35 = v52;
        sub_10000BE14(v57, v52, &qword_1019F6990, &qword_10146D2F0);
        if (v34(v31, 1, v32) != 1)
        {
          sub_10000CAAC(v31, &qword_1019F6990, &qword_10146D2F0);
        }
      }

      else
      {
        v35 = v52;
        (*(v33 + 32))(v52, v31, v32);
        (*(v33 + 56))(v35, 0, 1, v32);
      }

      v36 = v35;
      v37 = v35;
      v38 = v50;
      sub_10000BE14(v36, v50, &qword_1019F6990, &qword_10146D2F0);
      swift_beginAccess();
      v39 = v49;
      sub_10000BE14(v38, v49, &qword_1019F6990, &qword_10146D2F0);
      v40 = CRRegister.wrappedValue.modify();
      sub_10002C638(v39, v41, &qword_1019F6990, &qword_10146D2F0);
      v40(v56, 0);
      sub_10000CAAC(v38, &qword_1019F6990, &qword_10146D2F0);
      swift_endAccess();

      sub_10000CAAC(v37, &qword_1019F6990, &qword_10146D2F0);
      v42 = *(v51 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
      v43 = objc_allocWithZone(type metadata accessor for CRLURLItem(0));
      *&v43[OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload] = 0;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v42;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v26;
      v44 = type metadata accessor for CRLBoardItemBase(0);
      v55.receiver = v43;
      v55.super_class = v44;
      v45 = v42;
      objc_msgSendSuper2(&v55, "init");
      sub_10000CAAC(v57, &qword_1019F6990, &qword_10146D2F0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100A7DACC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_100A7DC30()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 504);

  v2 = v1(0);

  v3 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v4 = objc_allocWithZone(type metadata accessor for CRLURLItem(0));
  *&v4[OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v3;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v2;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for CRLBoardItemBase(0);
  v5 = v3;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100A7DD24(uint64_t a1)
{
  v3 = type metadata accessor for CRLURLItemCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = sub_1005B981C(&qword_101A0ED68, &qword_101492210);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  type metadata accessor for CRLURLItem(0);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v14 = sub_1011F0C64();
    v15 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v15 == &off_101A1C108)
    {
      v49 = v3;
      v50 = v14;
      v51 = a1;
      v16 = qword_101AD7BB8;
      swift_beginAccess();
      sub_100A82120(v15 + v16, v8, type metadata accessor for CRLURLItemCRDTData);
      v17 = *(v13 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v17 == &off_101A1C108)
      {
        v18 = qword_101AD7BB8;
        swift_beginAccess();
        sub_100A82120(v17 + v18, v5, type metadata accessor for CRLURLItemCRDTData);
        sub_100A821E8(&qword_101A0ED78, type metadata accessor for CRLURLItemCRDTData, "\t{8");
        CRStruct_1.actionUndoingDifference(from:)();
        sub_100A82188(v5, type metadata accessor for CRLURLItemCRDTData);
        sub_100A82188(v8, type metadata accessor for CRLURLItemCRDTData);
        v19 = sub_1005B981C(&qword_101A0ED70, &qword_101492218);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v11, 1, v19) == 1)
        {
          sub_10000CAAC(v11, &qword_101A0ED68, &qword_101492210);
          v52 = 0uLL;
          v53 = 0;
          v54 = 1;
        }

        else
        {
          v54 = v19;
          v21 = sub_10002C58C(&v52);
          (*(v20 + 32))(v21, v11, v19);
        }

        v22 = v50;
        swift_beginAccess();
        sub_100BC1DF4(&v52, 7);
        swift_endAccess();
        swift_unknownObjectRelease();
        return v22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v24 = objc_opt_self();
  v25 = [v24 _atomicIncrementAssertCount];
  v52.n128_u64[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v52, "Tried to generate undo from mismatched type", 43, 2u);
  StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLURLItem.swift", 81, 2);
  v27 = String._bridgeToObjectiveC()();

  v28 = [v27 lastPathComponent];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v32 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v25;
  v34 = sub_1005CF000();
  *(inited + 96) = v34;
  v35 = sub_100A821E8(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v35;
  *(inited + 72) = v26;
  *(inited + 136) = &type metadata for String;
  v36 = sub_1000053B0();
  *(inited + 112) = v29;
  *(inited + 120) = v31;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v36;
  *(inited + 152) = 112;
  v37 = v52.n128_u64[0];
  *(inited + 216) = v34;
  *(inited + 224) = v35;
  *(inited + 192) = v37;
  v38 = v26;
  v39 = v37;
  v40 = static os_log_type_t.error.getter();
  sub_100005404(v32, &_mh_execute_header, v40, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v41 = static os_log_type_t.error.getter();
  sub_100005404(v32, &_mh_execute_header, v41, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
  type metadata accessor for __VaListBuilder();
  v42 = swift_allocObject();
  v42[2] = 8;
  v42[3] = 0;
  v42[4] = 0;
  v42[5] = 0;
  v43 = __VaListBuilder.va_list()();
  StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
  v44 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLURLItem.swift", 81, 2);
  v45 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to generate undo from mismatched type", 43, 2);
  v46 = String._bridgeToObjectiveC()();

  [v24 handleFailureInFunction:v44 file:v45 lineNumber:112 isFatal:1 format:v46 args:v43];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v47, v48);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100A7E46C(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A0ED80, &qword_101492220);
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = (&v59 - v6);
  v63 = type metadata accessor for CRLURLItemCRDTData(0);
  __chkstk_darwin(v63);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  v12 = sub_1005B981C(&qword_101A0ED88, &unk_101492228);
  __chkstk_darwin(v12 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v59 - v16);
  type metadata accessor for CRLURLItem(0);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = &OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v20 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v21 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v22 = &off_101A1C108;
    if (*v21 == &off_101A1C108)
    {
      v23 = v18;
      v61 = v17;
      v62 = a1;
      v17 = &qword_101AD7BB8;
      a1 = qword_101AD7BB8;
      swift_beginAccess();
      sub_100A82120(&v21[a1], v11, type metadata accessor for CRLURLItemCRDTData);
      v20 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v21 = *(v23 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v21 == &off_101A1C108)
      {
        v24 = qword_101AD7BB8;
        swift_beginAccess();
        sub_100A82120(&v21[v24], v8, type metadata accessor for CRLURLItemCRDTData);
        sub_100A821E8(&qword_101A0ED90, type metadata accessor for CRLURLItemCRDTData, byte_1014ACE70);
        swift_unknownObjectRetain();
        a1 = v61;
        CRType.observableDifference(from:)();
        sub_100A82188(v8, type metadata accessor for CRLURLItemCRDTData);
        sub_100A82188(v11, type metadata accessor for CRLURLItemCRDTData);
        sub_10000BE14(a1, v14, &qword_101A0ED88, &unk_101492228);
        if ((*(v64 + 48))(v14, 1, v65) == 1)
        {
          v25 = &qword_101A0ED88;
          v26 = &unk_101492228;
          v27 = v14;
          goto LABEL_8;
        }

        v17 = v60;
        sub_100A82230(v14, v60);
        v28 = v59;
        sub_10000BE14(v17, v59, &qword_101A0ED80, &qword_101492220);
        v29 = type metadata accessor for CRValueObservableDifference();
        if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
        {
          sub_10000CAAC(v17, &qword_101A0ED80, &qword_101492220);
          v25 = &qword_101A01F00;
          v26 = &unk_101492AB0;
          v27 = v28;
LABEL_8:
          sub_10000CAAC(v27, v25, v26);
          v21 = _swiftEmptyArrayStorage;
          if (_swiftEmptyArrayStorage[2])
          {
LABEL_9:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v66 = _swiftEmptyDictionarySingleton;
            sub_100A9B080(v21, 7, isUniquelyReferenced_nonNull_native);
            swift_unknownObjectRelease();
            v31 = v66;
            sub_10000CAAC(a1, &qword_101A0ED88, &unk_101492228);
            return v31;
          }

LABEL_12:
          sub_10000CAAC(a1, &qword_101A0ED88, &unk_101492228);

          swift_unknownObjectRelease();
          return _swiftEmptyDictionarySingleton;
        }

        sub_10000CAAC(v28, &qword_101A01F00, &unk_101492AB0);
        v21 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v19 = *(v21 + 2);
        v20 = *(v21 + 3);
        v22 = (v19 + 1);
        if (v19 < v20 >> 1)
        {
LABEL_11:
          sub_10000CAAC(v17, &qword_101A0ED80, &qword_101492220);
          *(v21 + 2) = v22;
          v32 = &v21[16 * v19];
          *(v32 + 4) = 0x614463696D6F7461;
          *(v32 + 5) = 0xEA00000000006174;
          if (*(v21 + 2))
          {
            goto LABEL_9;
          }

          goto LABEL_12;
        }

LABEL_16:
        v21 = sub_100024CBC((v20 > 1), v22, 1, v21);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v34 = objc_opt_self();
  v35 = [v34 _atomicIncrementAssertCount];
  v67 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v67, "Tried to create observable deltas from mismatched type", 54, 2u);
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLURLItem.swift", 81, 2);
  v37 = String._bridgeToObjectiveC()();

  v38 = [v37 lastPathComponent];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v42 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v35;
  v44 = sub_1005CF000();
  *(inited + 96) = v44;
  v45 = sub_100A821E8(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v45;
  *(inited + 72) = v36;
  *(inited + 136) = &type metadata for String;
  v46 = sub_1000053B0();
  *(inited + 112) = v39;
  *(inited + 120) = v41;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v46;
  *(inited + 152) = 124;
  v47 = v67;
  *(inited + 216) = v44;
  *(inited + 224) = v45;
  *(inited + 192) = v47;
  v48 = v36;
  v49 = v47;
  v50 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v51 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v51, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v52 = swift_allocObject();
  v52[2] = 8;
  v52[3] = 0;
  v52[4] = 0;
  v52[5] = 0;
  v53 = __VaListBuilder.va_list()();
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLURLItem.swift", 81, 2);
  v55 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to create observable deltas from mismatched type", 54, 2);
  v56 = String._bridgeToObjectiveC()();

  [v34 handleFailureInFunction:v54 file:v55 lineNumber:124 isFatal:1 format:v56 args:v53];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v57, v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100A7EDB8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A0ED68, &qword_101492210);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1005B981C(&qword_101A0ED70, &qword_101492218);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  sub_1009B611C(a1);
  if (!v2)
  {
    v15 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v16 = *(a1 + v15);
    if (*(v16 + 16))
    {

      v17 = sub_1007C8124(7);
      if (v18)
      {
        sub_10000BE14(*(v16 + 56) + 32 * v17, &v22, &unk_1019F4D00, &unk_10146E7F0);

        v24[0] = v22;
        v24[1] = v23;
        if (*(&v23 + 1))
        {
          v19 = swift_dynamicCast();
          v20 = *(v12 + 56);
          v20(v10, v19 ^ 1u, 1, v11);
          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            (*(v12 + 32))(v14, v10, v11);
            if (**(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
            {
              (*(v12 + 16))(v7, v14, v11);
              v20(v7, 0, 1, v11);
              swift_beginAccess();
              type metadata accessor for CRLURLItemCRDTData(0);
              sub_100A821E8(&qword_101A0ED78, type metadata accessor for CRLURLItemCRDTData, "\t{8");

              CRStruct_1.apply(_:)();
              swift_endAccess();

              sub_10000CAAC(v7, &qword_101A0ED68, &qword_101492210);
              (*(v12 + 8))(v14, v11);
            }

            else
            {
              __break(1u);
            }

            return;
          }

LABEL_11:
          sub_10000CAAC(v10, &qword_101A0ED68, &qword_101492210);
          return;
        }

        sub_10000CAAC(v24, &unk_1019F4D00, &unk_10146E7F0);
      }

      else
      {
      }
    }

    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_11;
  }
}

void sub_100A7F1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3 == 7)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      swift_getObjectType();

      sub_1009BE298(a1, a2, a3, a4, v5);
      return;
    }
  }

  v11 = *(a2 + 16);
  if (!v11)
  {
    return;
  }

  v12 = 0;
  v80 = OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload;
  v81 = a2 + 32;
  v82 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v74 = a1;
  v75 = v5;
  v73 = *(a2 + 16);
  while (1)
  {
    v13 = (v81 + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *v13 == 0x614463696D6F7461 && v14 == 0xEA00000000006174;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v17 = *(v5 + v80);
      *(v5 + v80) = 0;

      v84[3] = &type metadata for Bool;
      LOBYTE(v84[0]) = 1;
      swift_beginAccess();
      sub_10000BE14(v84, v83, &unk_1019F4D00, &unk_10146E7F0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(a1 + v82);
      *(a1 + v82) = 0x8000000000000000;
      v20 = sub_1007CF108();
      v22 = v19[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_58;
      }

      v26 = v21;
      if (v19[3] >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = v20;
          sub_100AA3EA4();
          v20 = v72;
        }
      }

      else
      {
        sub_100A890C0(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_1007CF108();
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_61;
        }
      }

      if (v26)
      {
        sub_10002C638(v83, v19[7] + 32 * v20, &unk_1019F4D00, &unk_10146E7F0);
      }

      else
      {
        v19[(v20 >> 6) + 8] |= 1 << v20;
        *(v19[6] + 8 * v20) = 53;
        v28 = (v19[7] + 32 * v20);
        v29 = v83[1];
        *v28 = v83[0];
        v28[1] = v29;
        v30 = v19[2];
        v24 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v24)
        {
          goto LABEL_59;
        }

        v19[2] = v31;
      }

      *(a1 + v82) = v19;
      swift_endAccess();
      sub_10000CAAC(v84, &unk_1019F4D00, &unk_10146E7F0);
      goto LABEL_8;
    }

    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    v33 = sub_1000053B0();
    *(inited + 32) = v15;
    v34 = inited + 32;
    v78 = v33;
    *(inited + 64) = v33;
    *(inited + 40) = v14;
    v35 = objc_opt_self();

    v76 = v35;
    v77 = [v35 _atomicIncrementAssertCount];
    v84[0] = [objc_allocWithZone(NSString) init];
    v79 = inited;
    StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLURLItem.swift", 81, 2);
    v37 = String._bridgeToObjectiveC()();

    v38 = [v37 lastPathComponent];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v42 = static OS_os_log.crlAssert;
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_10146CA70;
    *(v43 + 56) = &type metadata for Int32;
    *(v43 + 64) = &protocol witness table for Int32;
    *(v43 + 32) = v77;
    v44 = sub_1005CF000();
    *(v43 + 96) = v44;
    v45 = sub_100A821E8(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(v43 + 72) = v36;
    *(v43 + 136) = &type metadata for String;
    *(v43 + 144) = v78;
    *(v43 + 104) = v45;
    *(v43 + 112) = v39;
    *(v43 + 120) = v41;
    *(v43 + 176) = &type metadata for UInt;
    *(v43 + 152) = 168;
    v46 = v84[0];
    *(v43 + 216) = v44;
    *(v43 + 224) = v45;
    *(v43 + 184) = &protocol witness table for UInt;
    *(v43 + 192) = v46;
    v47 = v36;
    v48 = v46;
    v49 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v43);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v50 = static os_log_type_t.error.getter();

    type metadata accessor for __VaListBuilder();
    v51 = swift_allocObject();
    v51[2] = 8;
    v51[3] = 0;
    v52 = v51 + 3;
    v51[4] = 0;
    v51[5] = 0;
    v53 = *(v79 + 16);
    if (v53)
    {
      break;
    }

LABEL_49:
    v68 = __VaListBuilder.va_list()();
    StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
    v69 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLURLItem.swift", 81, 2);
    v70 = String._bridgeToObjectiveC()();

    v71 = String._bridgeToObjectiveC()();

    [v76 handleFailureInFunction:v69 file:v70 lineNumber:168 isFatal:0 format:v71 args:v68];

    swift_setDeallocating();
    swift_arrayDestroy();
    a1 = v74;
    v5 = v75;
    v11 = v73;
LABEL_8:
    if (++v12 == v11)
    {
      return;
    }
  }

  v54 = 0;
  while (1)
  {
    sub_100020E58((v34 + 40 * v54), *(v34 + 40 * v54 + 24));
    v55 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v56 = *v52;
    v57 = *(v55 + 16);
    v24 = __OFADD__(*v52, v57);
    v58 = *v52 + v57;
    if (v24)
    {
      break;
    }

    v59 = v55;
    v60 = v51[4];
    if (v60 >= v58)
    {
      goto LABEL_42;
    }

    if (v60 + 0x4000000000000000 < 0)
    {
      goto LABEL_56;
    }

    v61 = v51[5];
    if (2 * v60 > v58)
    {
      v58 = 2 * v60;
    }

    v51[4] = v58;
    if ((v58 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_57;
    }

    v62 = swift_slowAlloc();
    v51[5] = v62;
    if (v61)
    {
      if (v62 != v61 || v62 >= &v61[8 * v56])
      {
        memmove(v62, v61, 8 * v56);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_42:
      v62 = v51[5];
    }

    if (!v62)
    {
      goto LABEL_60;
    }

    v64 = *(v59 + 16);
    if (v64)
    {
      v65 = (v59 + 32);
      v66 = *v52;
      while (1)
      {
        v67 = *v65++;
        *&v62[8 * v66] = v67;
        v66 = *v52 + 1;
        if (__OFADD__(*v52, 1))
        {
          break;
        }

        *v52 = v66;
        if (!--v64)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      break;
    }

LABEL_27:

    if (++v54 == v53)
    {
      goto LABEL_49;
    }
  }

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
  type metadata accessor for CRLChangeProperty(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

char *sub_100A7FC20()
{
  v2 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1009B4F54();
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    v1 = v9;
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60, &qword_101488168);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    (*(v6 + 16))(v8, &v4[*(v2 + 20)], v5);
    sub_100A82188(v4, type metadata accessor for CRLURLItemAtomicDataStruct);
    v0 = URL.absoluteString.getter();
    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v1 = sub_100024CBC(0, *(v1 + 2) + 1, 1, v1);
LABEL_3:
  v12 = *(v1 + 2);
  v11 = *(v1 + 3);
  if (v12 >= v11 >> 1)
  {
    v1 = sub_100024CBC((v11 > 1), v12 + 1, 1, v1);
  }

  (*(v6 + 8))(v8, v5);
  *(v1 + 2) = v12 + 1;
  v13 = &v1[16 * v12];
  *(v13 + 4) = v0;
  *(v13 + 5) = v4;
  return v1;
}

id sub_100A7FEAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLURLItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLURLItem(uint64_t a1)
{
  result = qword_101A0ED50;
  if (!qword_101A0ED50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100A7FF8C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60, &qword_101488168);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v6 = *(v3 + 20);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, &v5[v6], v7);
    sub_100A82188(v5, type metadata accessor for CRLURLItemAtomicDataStruct);
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    __break(1u);
  }
}

id sub_100A80148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v113 = a1;
  v124 = a3;
  v118 = a2;
  v111 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v111);
  v107 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v110 = v89 - v7;
  __chkstk_darwin(v8);
  v109 = v89 - v9;
  v103 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v103);
  v108 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v122 = *(v11 - 8);
  __chkstk_darwin(v11);
  v106 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v89 - v14;
  v102 = type metadata accessor for CRLURLItemCRDTData(0);
  __chkstk_darwin(v102);
  v112 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v126 = v89 - v18;
  v19 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  v98 = *(v19 - 8);
  v99 = v19;
  __chkstk_darwin(v19);
  v97 = v89 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v94 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v96 = v89 - v25;
  v95 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v95);
  v104 = v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v105 = v89 - v28;
  __chkstk_darwin(v29);
  v121 = v89 - v30;
  v31 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v31 - 8);
  v114 = v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v89 - v34;
  v36 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v36 - 8);
  v90 = v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = v89 - v39;
  v115 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v115);
  v92 = v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v93 = v89 - v43;
  v45 = __chkstk_darwin(v44);
  v123 = v11;
  v119 = v89 - v46;
  v120 = v15;
  if (a4)
  {
    v100 = a4;
  }

  else
  {
    v100 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  }

  v116 = *(v22 + 16);
  v117 = v22 + 16;
  v116(v40, v118, v21, v45);
  v125 = v22;
  v47 = *(v22 + 56);
  v47(v40, 0, 1, v21);
  v136 = 1;
  v48 = type metadata accessor for CRLTableAnchorHint(0);
  v49 = *(v48 - 8);
  v89[0] = *(v49 + 56);
  v89[1] = v49 + 56;
  (v89[0])(v35, 1, 1, v48);
  v101 = a4;
  v50 = v100;
  sub_101271CCC(v50, v145);
  v100 = v50;

  v51 = v90;
  sub_10000BE14(v40, v90, &qword_1019F6990, &qword_10146D2F0);
  v52 = v21;
  sub_10000BE14(v35, v114, &unk_101A09DD0, &unk_101478C10);
  v53 = v119;
  v47(v119, 1, 1, v21);
  v54 = v115;
  v55 = *(v115 + 28);
  v56 = v53 + *(v115 + 24);
  (v89[0])(v53 + v55, 1, 1, v48);
  *(v53 + *(v54 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v51, v53, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v35, &unk_101A09DD0, &unk_101478C10);
  sub_10000CAAC(v40, &qword_1019F6990, &qword_10146D2F0);
  v57 = (v53 + *(v54 + 20));
  v58 = v145[1];
  *v57 = v145[0];
  v57[1] = v58;
  *v56 = 0u;
  *(v56 + 16) = 0u;
  *(v56 + 32) = 0u;
  *(v56 + 48) = 0u;
  *(v56 + 64) = v136;
  v59 = v52;
  sub_10002C638(v114, v53 + v55, &unk_101A09DD0, &unk_101478C10);
  v60 = v93;
  sub_100A82120(v53, v93, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v137);
  v61 = v96;
  UUID.init()();
  v62 = v95;
  v114 = *(v95 + 52);
  v132 = v141;
  v133 = v142;
  v134 = v143;
  v135 = v144;
  v128 = v137;
  v129 = v138;
  v130 = v139;
  v131 = v140;
  v90 = sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
  sub_1007492B8();
  v63 = v121;
  CRRegister.init(wrappedValue:)();
  *(v63 + *(v62 + 56)) = _swiftEmptyDictionarySingleton;
  (v116)(v94, v61, v52);
  CRRegister.init(_:)();
  sub_100A82120(v60, v92, type metadata accessor for CRLBoardItemParentAffinity);
  sub_100A821E8(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity, aM_15);
  CRRegister.init(_:)();
  LOBYTE(v128) = 0;
  CRRegister.init(_:)();
  LOBYTE(v128) = 0;
  CRRegister.init(_:)();
  *&v128 = 0;
  *(&v128 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v132 = v141;
  v133 = v142;
  v134 = v143;
  v135 = v144;
  v128 = v137;
  v129 = v138;
  v130 = v139;
  v131 = v140;
  v64 = v97;
  CRRegister.init(_:)();
  v65 = *(v125 + 8);
  v125 += 8;
  v115 = v65;
  v65(v61, v59);
  sub_100A82188(v60, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v98 + 40))(v63 + v114, v64, v99);
  LOBYTE(v128) = 1;
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.setter();
  v66 = *(v122 + 2);
  v67 = v120;
  v68 = v123;
  v66(v120, v124);
  if (qword_1019F2878 != -1)
  {
    swift_once();
  }

  v69 = sub_1005EB3DC(v59, qword_101AD8F08);
  v70 = v59;
  v91 = v59;
  v71 = v108;
  (v116)(v108, v69, v70);
  v72 = v103;
  v73 = (v71 + *(v103 + 20));
  *v73 = 0;
  v73[1] = 0xE000000000000000;
  *(v71 + *(v72 + 24)) = _swiftEmptyDictionarySingleton;
  v74 = v106;
  (v66)(v106, v67, v68);
  v75 = v109;
  sub_100A82120(v71, v109, type metadata accessor for CRLAssetData);
  v76 = v111;
  (v66)(v75 + *(v111 + 20), v74, v68);
  *(v75 + *(v76 + 24)) = _swiftEmptyDictionarySingleton;
  v77 = v110;
  sub_100A82120(v75, v110, type metadata accessor for CRLURLItemAtomicDataStruct);
  *(v126 + *(v102 + 20)) = _swiftEmptyDictionarySingleton;
  sub_100A82120(v77, v107, type metadata accessor for CRLURLItemAtomicDataStruct);
  sub_100A821E8(&qword_101A0ED60, type metadata accessor for CRLURLItemAtomicDataStruct, byte_1014AD068);
  CRRegister.init(_:)();
  v78 = *(v122 + 1);
  v78(v120, v68);
  v122 = v78;
  sub_100A82188(v77, type metadata accessor for CRLURLItemAtomicDataStruct);
  sub_100A82188(v75, type metadata accessor for CRLURLItemAtomicDataStruct);
  v78(v74, v68);
  sub_100A82188(v71, type metadata accessor for CRLAssetData);
  v79 = v121;
  v80 = v105;
  sub_10000BE14(v121, v105, &unk_101A226A0, &unk_10146E610);
  v81 = v112;
  sub_100A82120(v126, v112, type metadata accessor for CRLURLItemCRDTData);
  *&v128 = 0x1000000000000;
  *(&v128 + 1) = 0x2000400000000;
  v129 = 0x1000000000000uLL;
  LOBYTE(v130) = 1;
  type metadata accessor for CRLURLItemData(0);
  v82 = swift_allocObject();
  sub_100A82120(v81, v82 + qword_101AD7BB8, type metadata accessor for CRLURLItemCRDTData);
  v83 = v104;
  sub_10000BE14(v80, v104, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v83, v82 + *(*v82 + 736), &unk_101A226A0, &unk_10146E610);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v83, &unk_101A226A0, &unk_10146E610);
  sub_100A82188(v81, type metadata accessor for CRLURLItemCRDTData);
  sub_10000CAAC(v80, &unk_101A226A0, &unk_10146E610);
  v84 = sub_100747AF0(&v128, 2);
  v85 = objc_allocWithZone(type metadata accessor for CRLURLItem(0));
  *&v85[OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload] = 0;
  *&v85[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v113;
  *&v85[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v84;
  v86 = type metadata accessor for CRLBoardItemBase(0);
  v127.receiver = v85;
  v127.super_class = v86;
  v87 = objc_msgSendSuper2(&v127, "init");

  v122(v124, v123);
  (v115)(v118, v91);
  sub_100A82188(v126, type metadata accessor for CRLURLItemCRDTData);
  sub_100A82188(v119, type metadata accessor for CRLBoardItemParentAffinity);
  sub_10000CAAC(v79, &unk_101A226A0, &unk_10146E610);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v87;
}

id sub_100A81180(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v131 = a4;
  v123 = a1;
  v119 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v119);
  v117 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v118 = &v94 - v10;
  __chkstk_darwin(v11);
  v116 = &v94 - v12;
  v130 = type metadata accessor for URL();
  v122 = *(v130 - 8);
  __chkstk_darwin(v130);
  v115 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v14 - 8);
  v111 = &v94 - v15;
  v110 = type metadata accessor for CRLAssetData(0);
  v16 = *(v110 - 8);
  __chkstk_darwin(v110);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for CRLURLItemCRDTData(0);
  __chkstk_darwin(v112);
  v120 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v121 = &v94 - v21;
  v22 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  v106 = *(v22 - 8);
  v107 = v22;
  __chkstk_darwin(v22);
  v105 = &v94 - v23;
  v135 = type metadata accessor for UUID();
  v24 = *(v135 - 8);
  __chkstk_darwin(v135);
  v102 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v104 = &v94 - v27;
  v103 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v103);
  v113 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v114 = &v94 - v30;
  __chkstk_darwin(v31);
  v133 = &v94 - v32;
  v33 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v33 - 8);
  v99 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v97 = &v94 - v36;
  v37 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v37 - 8);
  v98 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v94 - v40;
  v127 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v127);
  v100 = &v94 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v101 = &v94 - v44;
  v46 = __chkstk_darwin(v45);
  v128 = &v94 - v47;
  v129 = v18;
  v132 = a3;
  v109 = v16;
  if (a5)
  {
    v108 = a5;
  }

  else
  {
    v108 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  }

  v125 = *(v24 + 16);
  v126 = (v24 + 16);
  v124 = a2;
  v48 = v135;
  v125(v41, a2, v135, v46);
  v49 = *(v24 + 56);
  v49(v41, 0, 1, v48);
  v145 = 1;
  v50 = type metadata accessor for CRLTableAnchorHint(0);
  v134 = v24;
  v51 = v50;
  v52 = *(v50 - 8);
  v95 = *(v52 + 56);
  v96 = v52 + 56;
  v53 = v97;
  v95(v97, 1, 1, v50);
  v54 = a5;
  v55 = v108;
  sub_101271CCC(v55, v154);
  v108 = v55;

  v56 = v98;
  sub_10000BE14(v41, v98, &qword_1019F6990, &qword_10146D2F0);
  v57 = v99;
  sub_10000BE14(v53, v99, &unk_101A09DD0, &unk_101478C10);
  v58 = v128;
  v49(v128, 1, 1, v48);
  v59 = v127;
  v60 = *(v127 + 28);
  v61 = v58 + *(v127 + 24);
  v95((v58 + v60), 1, 1, v51);
  *(v58 + *(v59 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v56, v58, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v53, &unk_101A09DD0, &unk_101478C10);
  sub_10000CAAC(v41, &qword_1019F6990, &qword_10146D2F0);
  v62 = (v58 + *(v59 + 20));
  v63 = v154[1];
  *v62 = v154[0];
  v62[1] = v63;
  *v61 = 0u;
  *(v61 + 16) = 0u;
  *(v61 + 32) = 0u;
  *(v61 + 48) = 0u;
  *(v61 + 64) = v145;
  sub_10002C638(v57, v58 + v60, &unk_101A09DD0, &unk_101478C10);
  v64 = v101;
  sub_100A82120(v58, v101, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v146);
  v65 = v104;
  UUID.init()();
  v66 = v103;
  v99 = *(v103 + 52);
  v141 = v150;
  v142 = v151;
  v143 = v152;
  v144 = v153;
  v137 = v146;
  v138 = v147;
  v139 = v148;
  v140 = v149;
  sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
  sub_1007492B8();
  v67 = v133;
  CRRegister.init(wrappedValue:)();
  *(v67 + *(v66 + 56)) = _swiftEmptyDictionarySingleton;
  (v125)(v102, v65, v135);
  CRRegister.init(_:)();
  sub_100A82120(v64, v100, type metadata accessor for CRLBoardItemParentAffinity);
  sub_100A821E8(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity, aM_15);
  CRRegister.init(_:)();
  LOBYTE(v137) = 0;
  CRRegister.init(_:)();
  LOBYTE(v137) = 0;
  CRRegister.init(_:)();
  *&v137 = 0;
  *(&v137 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v141 = v150;
  v142 = v151;
  v143 = v152;
  v144 = v153;
  v137 = v146;
  v138 = v147;
  v139 = v148;
  v140 = v149;
  v68 = v105;
  CRRegister.init(_:)();
  v69 = *(v134 + 8);
  v134 += 8;
  v127 = v69;
  v69(v65, v135);
  sub_100A82188(v64, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v106 + 40))(v67 + v99, v68, v107);
  LOBYTE(v137) = 1;
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.setter();
  v70 = v111;
  sub_10000BE14(v132, v111, &unk_101A1B880, &unk_10147AB00);
  v71 = v110;
  v72 = *(v109 + 48);
  if (v72(v70, 1, v110) == 1)
  {
    v73 = v129;
    if (qword_1019F2878 != -1)
    {
      swift_once();
    }

    v74 = v135;
    v75 = sub_1005EB3DC(v135, qword_101AD8F08);
    (v125)(v73, v75, v74);
    v76 = (v73 + *(v71 + 20));
    *v76 = 0;
    v76[1] = 0xE000000000000000;
    *(v73 + *(v71 + 24)) = _swiftEmptyDictionarySingleton;
    if (v72(v70, 1, v71) != 1)
    {
      sub_10000CAAC(v70, &unk_101A1B880, &unk_10147AB00);
    }
  }

  else
  {
    v73 = v129;
    sub_1006008F0(v70, v129);
  }

  v77 = v122;
  v78 = *(v122 + 16);
  v79 = v115;
  v80 = v130;
  v78(v115, v131, v130);
  v81 = v116;
  sub_100A82120(v73, v116, type metadata accessor for CRLAssetData);
  v82 = v119;
  v78((v81 + *(v119 + 20)), v79, v80);
  *(v81 + *(v82 + 24)) = _swiftEmptyDictionarySingleton;
  v83 = v118;
  sub_100A82120(v81, v118, type metadata accessor for CRLURLItemAtomicDataStruct);
  v84 = v121;
  *&v121[*(v112 + 20)] = _swiftEmptyDictionarySingleton;
  sub_100A82120(v83, v117, type metadata accessor for CRLURLItemAtomicDataStruct);
  sub_100A821E8(&qword_101A0ED60, type metadata accessor for CRLURLItemAtomicDataStruct, byte_1014AD068);
  CRRegister.init(_:)();
  sub_100A82188(v83, type metadata accessor for CRLURLItemAtomicDataStruct);
  sub_100A82188(v81, type metadata accessor for CRLURLItemAtomicDataStruct);
  v126 = *(v77 + 8);
  v126(v79, v80);
  sub_100A82188(v129, type metadata accessor for CRLAssetData);
  v85 = v114;
  sub_10000BE14(v133, v114, &unk_101A226A0, &unk_10146E610);
  v86 = v120;
  sub_100A82120(v84, v120, type metadata accessor for CRLURLItemCRDTData);
  *&v137 = 0x1000000000000;
  *(&v137 + 1) = 0x2000400000000;
  v138 = 0x1000000000000uLL;
  LOBYTE(v139) = 1;
  type metadata accessor for CRLURLItemData(0);
  v87 = swift_allocObject();
  sub_100A82120(v86, v87 + qword_101AD7BB8, type metadata accessor for CRLURLItemCRDTData);
  v88 = v113;
  sub_10000BE14(v85, v113, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v88, v87 + *(*v87 + 736), &unk_101A226A0, &unk_10146E610);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v88, &unk_101A226A0, &unk_10146E610);
  sub_100A82188(v86, type metadata accessor for CRLURLItemCRDTData);
  sub_10000CAAC(v85, &unk_101A226A0, &unk_10146E610);
  v89 = sub_100747AF0(&v137, 2);
  v90 = objc_allocWithZone(type metadata accessor for CRLURLItem(0));
  *&v90[OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload] = 0;
  *&v90[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v123;
  *&v90[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v89;
  v91 = type metadata accessor for CRLBoardItemBase(0);
  v136.receiver = v90;
  v136.super_class = v91;
  v92 = objc_msgSendSuper2(&v136, "init");

  v126(v131, v130);
  sub_10000CAAC(v132, &unk_101A1B880, &unk_10147AB00);
  (v127)(v124, v135);
  sub_100A82188(v84, type metadata accessor for CRLURLItemCRDTData);
  sub_100A82188(v128, type metadata accessor for CRLBoardItemParentAffinity);
  sub_10000CAAC(v133, &unk_101A226A0, &unk_10146E610);
  return v92;
}

uint64_t sub_100A82120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A82188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100A821E8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100A82230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0ED80, &qword_101492220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100A822A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10113E194(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_100AAE438(v4);
  *a1 = v2;
}

uint64_t *CRLMathCalculationController.mathHintsModeChangedNotificationName.unsafeMutableAddressor()
{
  if (qword_1019F1B88 != -1)
  {
    swift_once();
  }

  return &static CRLMathCalculationController.mathHintsModeChangedNotificationName;
}

uint64_t CalculateResult.crl_nonTrivialFormattedResult.getter()
{
  if ([v0 isTrivial])
  {
    return 0;
  }

  v2 = [v0 formattedResult];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *sub_100A823DC()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F69B8, &unk_101492880);
  __chkstk_darwin(v2 - 8);
  v114 = v96 - v3;
  v110 = type metadata accessor for CalculateExpression.TokenType();
  v4 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v130 = _swiftEmptyArrayStorage;
  v123 = CalculateExpression.expression.getter();
  v8 = v7;
  CalculateExpression.plain.getter();
  v9 = dispatch thunk of CalculateExpression.PlainExpression.tokens.getter();

  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_65:

    v76 = _swiftEmptyArrayStorage;
    goto LABEL_66;
  }

LABEL_64:
  v82 = v10;
  v11 = _CocoaArrayWrapper.endIndex.getter();
  v10 = v82;
  if (!v11)
  {
    goto LABEL_65;
  }

LABEL_3:
  v96[1] = v1;
  v115 = 0;
  v12 = 0;
  v108 = v10 & 0xC000000000000001;
  v101 = v10;
  v98 = v10 + 32;
  v99 = v10 & 0xFFFFFFFFFFFFFF8;
  v107 = (v4 + 88);
  v106 = enum case for CalculateExpression.TokenType.literal(_:);
  v100 = enum case for CalculateExpression.TokenType.variable(_:);
  v97 = (v4 + 8);
  v13 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v13 = v123 & 0xFFFFFFFFFFFFLL;
  }

  v14 = 11;
  if (((v8 >> 60) & ((v123 & 0x800000000000000) == 0)) == 0)
  {
    v14 = 7;
  }

  v112 = v14 | (v13 << 16);
  v113 = v8;
  v104 = v11;
  v105 = 4 * v13;
  v15 = v6;
  v6 = 15;
  v102 = v15;
  v103 = v15;
  do
  {
    if (v108)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = v10;
      v17 = __OFADD__(v12, 1);
      v18 = v12 + 1;
      if (v17)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v12 >= *(v99 + 16))
      {
        goto LABEL_63;
      }

      v16 = *(v98 + 8 * v12);

      v17 = __OFADD__(v12, 1);
      v18 = v12 + 1;
      if (v17)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

    v19 = dispatch thunk of CalculateExpression.Token.text.getter();
    v21 = v20;
    if (String.count.getter() < 2)
    {
      v117 = 0;
      v118 = 0xE000000000000000;
    }

    else
    {
      v117 = sub_100A88068(v19, v21);
      v118 = v22;
    }

    v4 = [objc_allocWithZone(PKMathRecognitionToken) init];
    v1 = v109;
    CalculateExpression.Token.type.getter();
    v23 = (*v107)(v1, v110);
    if (v23 == v106)
    {
      v10 = [v4 setType:1];
    }

    else if (v23 == v100)
    {
      v10 = [v4 setType:2];
    }

    else
    {
      [v4 setType:0];
      v10 = (*v97)(v109, v110);
    }

    if (v105 < v6 >> 14)
    {
      goto LABEL_62;
    }

    v116 = v18;
    v120 = v4;
    v121 = v16;
    v111 = v6;
    v126 = String.subscript.getter();
    v127 = v24;
    v128 = v25;
    v129 = v26;
    v122 = v19;
    v124 = v19;
    v125 = v21;
    v27 = type metadata accessor for Locale();
    v28 = *(*(v27 - 8) + 56);
    v29 = v114;
    v28(v114, 1, 1, v27);
    sub_1007B01B8();
    v119 = sub_100017CD8();
    v30 = StringProtocol.range<A>(of:options:range:locale:)();
    v32 = v31;
    sub_10000CAAC(v29, &qword_1019F69B8, &unk_101492880);

    if (v32)
    {

      v33 = v117;
      v21 = v118;
      v34 = HIBYTE(v118) & 0xF;
      if ((v118 & 0x2000000000000000) == 0)
      {
        v34 = v117 & 0xFFFFFFFFFFFFLL;
      }

      if (!v34 || (v126 = String.subscript.getter(), v127 = v35, v128 = v36, v129 = v37, v124 = v33, v125 = v21, v38 = v114, v28(v114, 1, 1, v27), v39 = StringProtocol.range<A>(of:options:range:locale:)(), v41 = v40, v42 = v117, sub_10000CAAC(v38, &qword_1019F69B8, &unk_101492880), , (v41 & 1) != 0))
      {

        v58 = objc_opt_self();
        v59 = [v58 _atomicIncrementAssertCount];
        v126 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v126, "Error parsing calculate tokens", 30, 2u);
        StaticString.description.getter("pkTokens", 8, 2);
        v60 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
        v61 = String._bridgeToObjectiveC()();

        v62 = [v61 lastPathComponent];

        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v66 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v59;
        v68 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v68;
        v69 = sub_1005CF04C();
        *(inited + 104) = v69;
        *(inited + 72) = v60;
        *(inited + 136) = &type metadata for String;
        v70 = sub_1000053B0();
        *(inited + 112) = v63;
        *(inited + 120) = v65;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v70;
        *(inited + 152) = 469;
        v71 = v126;
        *(inited + 216) = v68;
        *(inited + 224) = v69;
        *(inited + 192) = v71;
        v72 = v60;
        v73 = v71;
        v74 = static os_log_type_t.error.getter();
        sub_100005404(v66, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v75 = static os_log_type_t.error.getter();
        v76 = _swiftEmptyArrayStorage;
        sub_100005404(v66, &_mh_execute_header, v75, "Error parsing calculate tokens", 30, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v77 = swift_allocObject();
        v77[2] = 8;
        v77[3] = 0;
        v77[4] = 0;
        v77[5] = 0;
        v78 = __VaListBuilder.va_list()();
        StaticString.description.getter("pkTokens", 8, 2);
        v79 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
        v80 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Error parsing calculate tokens", 30, 2);
        v81 = String._bridgeToObjectiveC()();

        [v58 handleFailureInFunction:v79 file:v80 lineNumber:469 isFatal:0 format:v81 args:v78];

        return v76;
      }
    }

    else
    {

      v42 = v122;
      v39 = v30;
    }

    v43 = v120;
    v1 = _swiftEmptyArrayStorage;
    if ((v21 & 0x1000000000000000) != 0)
    {
      v44 = String.UTF16View._foreignCount()();
    }

    else
    {
      v44 = String.UTF16View._nativeGetOffset(for:)();
    }

    v118 = v44;
    if ([v43 type] || (v4 = *(dispatch thunk of CalculateExpression.Token.errors.getter() + 16), , v4))
    {
      v117 = v39;
      v122 = v42;
      v124 = _swiftEmptyArrayStorage;
      v45 = dispatch thunk of CalculateExpression.Token.errors.getter();
      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = v45 + 32;
        do
        {
          swift_getErrorValue();
          swift_errorRetain();
          v48 = Error.localizedDescription.getter();
          v50 = HIBYTE(v49) & 0xF;
          if ((v49 & 0x2000000000000000) == 0)
          {
            v50 = v48 & 0xFFFFFFFFFFFFLL;
          }

          if (v50)
          {
            v51 = [objc_allocWithZone(PKMathRecognitionError) init];
            v52 = String._bridgeToObjectiveC()();

            [v51 setErrorString:v52];

            v53 = v51;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v1 = v124;
          }

          else
          {
          }

          v47 += 8;
          --v46;
        }

        while (v46);
      }

      v8 = v113;
      v126 = v123;
      v127 = v113;
      v54 = String.Index.utf16Offset<A>(in:)();
      v55 = String._bridgeToObjectiveC()();

      v43 = v120;
      [v120 setText:v55];

      [v43 setCharacterRange:{v54, v118}];
      sub_100006370(0, &qword_101A0F1F0, PKMathRecognitionError_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v43 setErrors:isa];

      v4 = v43;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v57 = v130;
      v12 = v116;
      v102 = v130;
      if (v115)
      {

        v115 = 1;
        v103 = v57;
      }

      else
      {
        if (v1 >> 62)
        {
          v4 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v115 = v4 != 0;
        v103 = v57;
      }
    }

    else
    {

      v8 = v113;
      v12 = v116;
    }

    v6 = String.index(_:offsetBy:)();
  }

  while (v12 != v104);

  if (v115)
  {

    return v102;
  }

  v76 = v102;
LABEL_66:
  if (!CalculateExpression.error.getter())
  {
LABEL_74:

    return v76;
  }

  swift_getErrorValue();
  v83 = Error.localizedDescription.getter();
  v85 = v84;

  v86 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v86 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (!v86)
  {

    goto LABEL_74;
  }

  v87 = [objc_allocWithZone(PKMathRecognitionError) init];
  v88 = String._bridgeToObjectiveC()();

  [v87 setErrorString:v88];

  v89 = [objc_allocWithZone(PKMathRecognitionToken) init];
  [v89 setType:5];
  [v89 setCharacterRange:{0, String.count.getter()}];
  v90 = String._bridgeToObjectiveC()();

  [v89 setText:v90];

  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_101465920;
  *(v91 + 32) = v87;
  sub_100006370(0, &qword_101A0F1F0, PKMathRecognitionError_ptr);
  v92 = v87;
  v93 = Array._bridgeToObjectiveC()().super.isa;

  [v89 setErrors:v93];

  v94 = v89;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v130;
}

id sub_100A83420(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

Class sub_100A834E8(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  swift_beginAccess();
  type metadata accessor for UUID();
  sub_100006370(0, a4, a5);
  sub_10003F158(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

uint64_t sub_100A835E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6)
{
  type metadata accessor for UUID();
  sub_100006370(0, a4, a5);
  sub_10003F158(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = *a6;
  swift_beginAccess();
  *(a1 + v11) = v10;
}

NSString sub_100A836D0()
{
  result = String._bridgeToObjectiveC()();
  static CRLMathCalculationController.mathHintsModeChangedNotificationName = result;
  return result;
}

NSString sub_100A83750()
{
  result = String._bridgeToObjectiveC()();
  static CRLMathCalculationController.mathHintsSuspensionStatusChangedNotificationName = result;
  return result;
}

uint64_t *CRLMathCalculationController.mathHintsSuspensionStatusChangedNotificationName.unsafeMutableAddressor()
{
  if (qword_1019F1B90 != -1)
  {
    swift_once();
  }

  return &static CRLMathCalculationController.mathHintsSuspensionStatusChangedNotificationName;
}

id sub_100A837FC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

char *sub_100A83880()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v37 = &v34 - v2;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  *&v0[v7] = sub_100BD8068(_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_pkExpressions;
  *&v0[v8] = sub_100BD82AC(_swiftEmptyArrayStorage);
  v9 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressionStrokeGroups;
  *&v0[v9] = sub_100BD82D0(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_mathHintsUserDefaultsObserver] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_suspendCount] = 0;
  sub_1005B981C(&unk_101A0A338, &qword_101489F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v11 = CalculateKeyAllowPartialExpressions;
  *(inited + 32) = CalculateKeyAllowPartialExpressions;
  v12 = objc_allocWithZone(NSNumber);
  v13 = v11;
  v14 = [v12 initWithBool:1];
  v15 = sub_100006370(0, &qword_1019FF3E0, NSNumber_ptr);
  *(inited + 40) = v14;
  v16 = CalculateKeyConvertTrivial;
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  v17 = objc_allocWithZone(NSNumber);
  v18 = v16;
  v19 = [v17 initWithBool:1];
  *(inited + 104) = v15;
  *(inited + 80) = v19;
  sub_100BD79F4(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0A348, &qword_101489F18);
  swift_arrayDestroy();
  type metadata accessor for CalculateDocument();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_calculateDocument] = CalculateDocument.init(expressions:options:synchronous:)();
  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v20 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v21 = v34;
  v22 = *(v35 + 104);
  v23 = v36;
  v22(v34, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
  *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_pkExpressionsQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v22(v21, v20, v23);
  *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressionStrokeGroupsQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = type metadata accessor for CRLMathCalculationController();
  v39.receiver = v0;
  v39.super_class = v24;
  v25 = objc_msgSendSuper2(&v39, "init");
  v26 = type metadata accessor for TaskPriority();
  v27 = v37;
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  v29 = v25;
  sub_10064191C(0, 0, v27, &unk_101492808, v28);

  v30 = [objc_opt_self() standardUserDefaults];
  v38 = v30;
  swift_getKeyPath();
  v31 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v32 = *&v29[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_mathHintsUserDefaultsObserver];
  *&v29[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_mathHintsUserDefaultsObserver] = v31;

  return v29;
}

uint64_t sub_100A83E00()
{
  *(v0 + 16) = type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A83E98, v2, v1);
}

uint64_t sub_100A83E98()
{

  if (qword_1019F2080 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_100A83F30, 0, 0);
}

uint64_t sub_100A83F30(uint64_t a1)
{
  *(v1 + 32) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100658F10, v3, v2);
}

id CRLMathCalculationController.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_mathHintsUserDefaultsObserver];
  if (v2)
  {
    v3 = v2;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for CRLMathCalculationController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void CRLMathCalculationController.beginTrackingResultsFor(expression:containingDrawingLayoutOriginProvider:withSingleDrawingSortIndex:onUpdate:)(void *a1, void (*a2)(void, void), void *a3, void *a4, void *a5, double a6)
{
  v7 = v6;
  v58 = a4;
  v59 = a2;
  v60 = type metadata accessor for UUID();
  v12 = *(v60 - 8);
  __chkstk_darwin(v60);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  CalculateExpression.id.getter();
  v18 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v19 = *(v6 + v18);
  if (!*(v19 + 16))
  {
    goto LABEL_7;
  }

  v20 = sub_10003E994(v17);
  if ((v21 & 1) == 0)
  {

LABEL_7:
    v57 = *(v12 + 8);
    v50 = v17;
    v51 = v60;
    v57(v50, v60);
    CalculateExpression.id.getter();
    *&v62 = v58;
    *(&v62 + 1) = a5;
    v63 = a1;
    v64 = 0;
    v65 = 0;
    v66 = v59;
    v67 = a3;
    v68 = a6;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v7 + v18);
    *(v7 + v18) = 0x8000000000000000;
    sub_100A9F084(&v62, v14, isUniquelyReferenced_nonNull_native);
    v53 = v57;
    v57(v14, v51);
    *(v7 + v18) = v61;
    swift_endAccess();
    v54 = CalculateExpression.id.getter();
    __chkstk_darwin(v54);
    *(&v56 - 4) = a1;
    *(&v56 - 3) = v7;
    *(&v56 - 2) = v14;
    __chkstk_darwin(v55);
    *(&v56 - 4) = v7;
    *(&v56 - 3) = v14;
    *(&v56 - 2) = a1;
    withObservationTracking<A>(_:onChange:)();
    v53(v14, v51);
    return;
  }

  v22 = *(v19 + 56) + (v20 << 6);
  v23 = *(v22 + 24);
  v24 = *(v22 + 32);
  v59 = *(v12 + 8);

  v25 = v23;
  v26 = v24;

  v59(v17, v60);

  v27 = objc_opt_self();
  v28 = [v27 _atomicIncrementAssertCount];
  *&v62 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v62, "Tried to track a CalculateExpression that is already being tracked.", 67, 2u);
  StaticString.description.getter("beginTrackingResultsFor(expression:containingDrawingLayoutOriginProvider:withSingleDrawingSortIndex:onUpdate:)", 110, 2);
  v29 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v30 lastPathComponent];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v35 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v28;
  v37 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v37;
  v38 = sub_1005CF04C();
  *(inited + 104) = v38;
  *(inited + 72) = v29;
  *(inited + 136) = &type metadata for String;
  v39 = sub_1000053B0();
  *(inited + 112) = v32;
  *(inited + 120) = v34;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v39;
  *(inited + 152) = 119;
  v40 = v62;
  *(inited + 216) = v37;
  *(inited + 224) = v38;
  *(inited + 192) = v40;
  v41 = v29;
  v42 = v40;
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v44 = static os_log_type_t.error.getter();
  sub_100005404(v35, &_mh_execute_header, v44, "Tried to track a CalculateExpression that is already being tracked.", 67, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v45 = swift_allocObject();
  v45[2] = 8;
  v45[3] = 0;
  v45[4] = 0;
  v45[5] = 0;
  v46 = __VaListBuilder.va_list()();
  StaticString.description.getter("beginTrackingResultsFor(expression:containingDrawingLayoutOriginProvider:withSingleDrawingSortIndex:onUpdate:)", 110, 2);
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
  v48 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to track a CalculateExpression that is already being tracked.", 67, 2);
  v49 = String._bridgeToObjectiveC()();

  [v27 handleFailureInFunction:v47 file:v48 lineNumber:119 isFatal:0 format:v49 args:v46];
}

uint64_t CRLMathCalculationController.stopTrackingResultsFor(expression:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  CalculateExpression.id.getter();
  swift_beginAccess();
  sub_1006F6F7C(v3, v9);
  v4 = *(v1 + 8);
  v4(v3, v0);
  swift_endAccess();
  sub_10000CAAC(v9, &qword_101A0A308, &qword_101489EE0);
  CalculateExpression.id.getter();
  v5 = sub_100A86F20(v3);
  (v4)(v3, v0, v5);
  CalculateExpression.id.getter();
  v6 = sub_100A87ADC(v3);
  return (v4)(v3, v0, v6);
}

void sub_100A84964(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_10003E994(a1);
    if (v9)
    {
      v10 = (*(v7 + 56) + (v8 << 6));
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v15 = v10[4];
      v43 = v10[5];
      v16 = v10[6];
      v45 = v15;

      v44 = v13;

      *&v47 = v12;
      *(&v47 + 1) = v11;
      v48 = v14;
      v49 = v13;
      v50 = v15;
      v51 = v43;
      v52 = v16;
      v53 = a2;
      swift_beginAccess();

      v17 = v44;
      v18 = v45;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v3 + v6);
      *(v3 + v6) = 0x8000000000000000;
      sub_100A9F084(&v47, a1, isUniquelyReferenced_nonNull_native);
      *(v3 + v6) = v46;
      swift_endAccess();

      return;
    }
  }

  v20 = objc_opt_self();
  v21 = [v20 _atomicIncrementAssertCount];
  *&v47 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v47, "Tried to update the sort index of an expression that is not being tracked.", 74, 2u);
  StaticString.description.getter("updateSingleDrawingSortIndexFor(for:to:)", 40, 2);
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
  v23 = String._bridgeToObjectiveC()();

  v24 = [v23 lastPathComponent];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v28 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v21;
  v30 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v30;
  v31 = sub_1005CF04C();
  *(inited + 104) = v31;
  *(inited + 72) = v22;
  *(inited + 136) = &type metadata for String;
  v32 = sub_1000053B0();
  *(inited + 112) = v25;
  *(inited + 120) = v27;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v32;
  *(inited + 152) = 143;
  v33 = v47;
  *(inited + 216) = v30;
  *(inited + 224) = v31;
  *(inited + 192) = v33;
  v34 = v22;
  v35 = v33;
  v36 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v37, "Tried to update the sort index of an expression that is not being tracked.", 74, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v38 = swift_allocObject();
  v38[2] = 8;
  v38[3] = 0;
  v38[4] = 0;
  v38[5] = 0;
  v39 = __VaListBuilder.va_list()();
  StaticString.description.getter("updateSingleDrawingSortIndexFor(for:to:)", 40, 2);
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to update the sort index of an expression that is not being tracked.", 74, 2);
  v42 = String._bridgeToObjectiveC()();

  [v20 handleFailureInFunction:v40 file:v41 lineNumber:143 isFatal:0 format:v42 args:v39];
}

uint64_t sub_100A84F54()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_100B39F54(*(v3 + 16), 0);
    v6 = sub_100B3B708(&v11, v5 + 4, v4, v3);
    v7 = v11;
    swift_bridgeObjectRetain_n();
    sub_100035F90(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v11 = v5;
  sub_100A822A8(&v11);

  v8 = *(v11 + 2);
  if (v8)
  {
    v11 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = 48;
    do
    {

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 64;
      --v8;
    }

    while (v8);
  }

  return dispatch thunk of CalculateDocument.expressions.setter();
}

uint64_t sub_100A8510C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = (*(a1 + 40))();
  v7 = v6;
  v9 = v3();
  if (vabdd_f64(v7, v8) <= 16.0 && v5 != v9)
  {
    goto LABEL_23;
  }

  if (v7 < v8)
  {
    return 1;
  }

  if (v8 >= v7)
  {
LABEL_23:
    if (sub_1004A48FC())
    {
      if (v9 < v5)
      {
        return 1;
      }

      if (v5 < v9)
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (v5 < v9)
    {
      return 1;
    }

    if (v9 >= v5)
    {
LABEL_14:
      if (v2 >= v4)
      {
        if (v4 >= v2)
        {
          v34 = objc_opt_self();
          v12 = [v34 _atomicIncrementAssertCount];
          v35 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v35, "Should not get a tie when sorting calculate expressions.", 56, 2u);
          StaticString.description.getter("updateCalculateDocument()", 25, 2);
          v13 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
          v14 = String._bridgeToObjectiveC()();

          v15 = [v14 lastPathComponent];

          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v19 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v12;
          v21 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(inited + 96) = v21;
          v22 = sub_1005CF04C();
          *(inited + 104) = v22;
          *(inited + 72) = v13;
          *(inited + 136) = &type metadata for String;
          v23 = sub_1000053B0();
          *(inited + 112) = v16;
          *(inited + 120) = v18;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v23;
          *(inited + 152) = 193;
          v24 = v35;
          *(inited + 216) = v21;
          *(inited + 224) = v22;
          *(inited + 192) = v24;
          v25 = v13;
          v26 = v24;
          v27 = static os_log_type_t.error.getter();
          sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v28 = static os_log_type_t.error.getter();
          sub_100005404(v19, &_mh_execute_header, v28, "Should not get a tie when sorting calculate expressions.", 56, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v29 = swift_allocObject();
          v29[2] = 8;
          v29[3] = 0;
          v29[4] = 0;
          v29[5] = 0;
          v30 = __VaListBuilder.va_list()();
          StaticString.description.getter("updateCalculateDocument()", 25, 2);
          v31 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
          v32 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Should not get a tie when sorting calculate expressions.", 56, 2);
          v33 = String._bridgeToObjectiveC()();

          [v34 handleFailureInFunction:v31 file:v32 lineNumber:193 isFatal:0 format:v33 args:v30];
        }

        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t CRLMathCalculationController.observedExpression(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v5 = sub_10003E994(a1);
  if ((v6 & 1) == 0)
  {

LABEL_5:
    v9 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  v7 = (*(v4 + 56) + (v5 << 6));
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = v7[4];
  v13 = v7[5];
  v14 = v7[6];
  v15 = v7[7];
  v16 = v12;

  swift_retain_n();
  v17 = v11;

LABEL_6:
  v19[0] = v9;
  v19[1] = v8;
  v19[2] = v10;
  v19[3] = v11;
  v19[4] = v12;
  v19[5] = v13;
  v19[6] = v14;
  v19[7] = v15;
  sub_10000CAAC(v19, &qword_101A0A308, &qword_101489EE0);
  return v10;
}

uint64_t CRLMathCalculationController.resultForExpressionWithUUID(_:locale:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_10003E994(a1);
  if ((v8 & 1) == 0)
  {

    return 0;
  }

  v9 = (*(v6 + 56) + (v7 << 6));
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = v9[4];
  v15 = v9[5];
  v16 = v9[6];
  v17 = v9[7];
  v18 = v13;

  v19 = v14;

  v30[0] = v11;
  v30[1] = v10;
  v30[2] = v12;
  v30[3] = v13;
  v30[4] = v14;
  v30[5] = v15;
  v30[6] = v16;
  v30[7] = v17;

  sub_10000CAAC(v30, &qword_101A0A308, &qword_101489EE0);
  v20 = CalculateExpression.result.getter();
  if (!v20)
  {
LABEL_6:

    return 0;
  }

  v21 = v20;
  sub_1005B981C(&qword_101A0EDA8, &qword_101492238);
  v22 = type metadata accessor for Locale();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10146C6B0;
  (*(v23 + 16))(v25 + v24, a2, v22);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setLocales:isa];

  if ([v21 isTrivial])
  {

    goto LABEL_6;
  }

  v28 = [v21 formattedResult];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v29;
}

void sub_100A85B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CalculateExpression.expression.getter();
  v8 = v7;
  v9 = CalculateExpression.result.getter();
  v10 = CalculateExpression.error.getter();
  if (v10)
  {
    *&v41 = v10;
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    sub_100006370(0, &qword_101A0F2B8, CalculateError_ptr);
    if (swift_dynamicCast())
    {
      v11 = v40;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v14 = *(a2 + v13);
  if (!*(v14 + 16))
  {
    goto LABEL_16;
  }

  v15 = sub_10003E994(a3);
  if ((v16 & 1) == 0)
  {

LABEL_16:

    goto LABEL_17;
  }

  v17 = (*(v14 + 56) + (v15 << 6));
  v34 = a3;
  v35 = *v17;
  v18 = v17[3];
  v32 = v17[4];
  v33 = v17[5];
  v19 = v17[6];
  v20 = v17[7];
  v37 = v17[1];
  v38 = v32;

  v36 = v19;

  v21 = v18;

  if (!v9)
  {
    v22 = v35;
    if (v18)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (v11)
    {
      if (!v32)
      {
        goto LABEL_24;
      }

      sub_100006370(0, &qword_101A0F2B8, CalculateError_ptr);
      v26 = v38;
      v27 = v11;
      v28 = static NSObject.== infix(_:_:)();

      if ((v28 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v32)
      {
        goto LABEL_24;
      }
    }

LABEL_17:

    return;
  }

  v22 = v35;
  if (v18)
  {
    sub_100006370(0, &qword_101A0F2C0, CalculateResult_ptr);
    v23 = v21;
    v24 = v9;
    v25 = static NSObject.== infix(_:_:)();

    if (v25)
    {
      goto LABEL_19;
    }
  }

LABEL_24:
  *&v41 = v22;
  *(&v41 + 1) = v37;
  v42 = a1;
  v43 = v9;
  v44 = v11;
  v45 = v33;
  v46 = v36;
  v47 = v20;
  swift_beginAccess();
  v29 = v11;

  v30 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(a2 + v13);
  *(a2 + v13) = 0x8000000000000000;
  sub_100A9F084(&v41, v34, isUniquelyReferenced_nonNull_native);
  *(a2 + v13) = v39;
  swift_endAccess();
  if (CalculateExpression.needsEvaluation.getter() & 1) != 0 || (CalculateExpression.isEvaluating.getter())
  {
  }

  else
  {
    v22(a1);
  }
}

uint64_t (*sub_100A85F44(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v6 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v6 + 32))(v10 + v9, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  return sub_100AB01CC;
}

void sub_100A860B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
    v11 = Strong;
    swift_beginAccess();
    v12 = *&v11[v10];

    if (*(v12 + 16))
    {
      sub_10003E994(a2);
      v14 = v13;

      if (v14)
      {
        v15 = type metadata accessor for TaskPriority();
        (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
        type metadata accessor for MainActor();

        v16 = static MainActor.shared.getter();
        v17 = swift_allocObject();
        v17[2] = v16;
        v17[3] = &protocol witness table for MainActor;
        v17[4] = a1;
        v17[5] = a3;
        sub_100641C1C(0, 0, v8, &unk_101492958, v17);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100A86278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A86370, v8, v7);
}

uint64_t sub_100A86370()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    CalculateExpression.id.getter();
    v6 = swift_task_alloc();
    v6[2] = v4;
    v6[3] = Strong;
    v6[4] = v2;
    v7 = swift_task_alloc();
    v7[2] = Strong;
    v7[3] = v2;
    v7[4] = v4;
    withObservationTracking<A>(_:onChange:)();

    (*(v3 + 8))(v2, v5);
  }

  **(v0 + 40) = Strong == 0;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t CRLMathCalculationController.pkMathRecognitionViewControllerSolvingStyle.getter(_TtC8Freeform28CRLMathCalculationController *a1, const char *a2)
{
  v2 = [CRLMathCalculationController mathHintsMode]_0();
  if (v2 < 4)
  {
    return qword_101492978[v2];
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_100A8664C(char a1)
{
  v2 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_suspendCount;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_suspendCount);
  v4 = 1;
  if ((a1 & 1) == 0)
  {
    v4 = -1;
  }

  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v7 = v3 > 0;
  *(v1 + OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_suspendCount) = v6;
  sub_100A86778();
  if ((v7 ^ (*&v2[v1] < 1)))
  {
    return;
  }

  v2 = objc_opt_self();
  [v2 begin];
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1019F1B90 != -1)
  {
    goto LABEL_10;
  }

LABEL_6:
  [v1 postNotificationName:static CRLMathCalculationController.mathHintsSuspensionStatusChangedNotificationName object:0 userInfo:0];

  [v2 commit];
}

void sub_100A86778()
{
  if ((*(v0 + OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_suspendCount) & 0x8000000000000000) != 0)
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v24, "Math solving suspend count should never go below zero. Did you call resumeSolving() without calling suspendSolving()?", 117, 2u);
    StaticString.description.getter("suspendCount", 12, 2);
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 343;
    v14 = v24;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Math solving suspend count should never go below zero. Did you call resumeSolving() without calling suspendSolving()?", 117, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter("suspendCount", 12, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Math solving suspend count should never go below zero. Did you call resumeSolving() without calling suspendSolving()?", 117, 2);
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:343 isFatal:0 format:v23 args:v20];
  }
}

double sub_100A86B1C(void *a1)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1009A0DE4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101893BD8;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);

  return result;
}

uint64_t sub_100A86D4C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_pkExpressions;
  swift_beginAccess();
  v11 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_100A9CB4C(v11, v8, isUniquelyReferenced_nonNull_native, &qword_101A0F1A0, &unk_1014927F0);
  (*(v5 + 8))(v8, v4);
  *(a1 + v10) = v14;
  return swift_endAccess();
}

void sub_100A86F88(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v16 = 0;
  v7 = *&v1[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_pkExpressionsQueue];
  (*(v4 + 16))(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = &v16;
  *(v9 + 24) = v1;
  (*(v4 + 32))(v9 + v8, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100AAFF2C;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10002AAE0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10002AAB8;
  aBlock[3] = &unk_101893B88;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  dispatch_sync(v7, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_100A871D0(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v16 = 0;
  v7 = *&v1[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressionStrokeGroupsQueue];
  (*(v4 + 16))(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = &v16;
  *(v9 + 24) = v1;
  (*(v4 + 32))(v9 + v8, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100AAFE5C;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10002AAE4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10002AAB8;
  aBlock[3] = &unk_101893B10;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  dispatch_sync(v7, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_100A8740C(void **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  swift_beginAccess();
  v8 = *(a2 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_10003E994(a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *a1;
  *a1 = v11;
}

id sub_100A874C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

double sub_100A875CC(uint64_t a1, void *a2)
{
  v23 = a2;
  v4 = type metadata accessor for DispatchQoS();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v2[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressionStrokeGroupsQueue];
  static DispatchWorkItemFlags.barrier.getter();
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  (*(v8 + 32))(v16 + v14, v10, v7);
  v17 = v23;
  *(v16 + v15) = v23;
  aBlock[4] = sub_100AAFE44;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101893A98;
  v18 = _Block_copy(aBlock);
  v19 = v17;
  v20 = v2;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v25 + 8))(v6, v26);
  (*(v11 + 8))(v13, v24);

  return result;
}

uint64_t sub_100A878D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2, v6);
  swift_beginAccess();
  v10 = a3;
  sub_100BC4148(a3, v8);
  return swift_endAccess();
}

double sub_100A87B0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v22[0] = a2;
  v22[1] = a3;
  v26 = type metadata accessor for DispatchQoS();
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v23 - 8);
  __chkstk_darwin(v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = *&v5[*v22[0]];
  static DispatchWorkItemFlags.barrier.getter();
  (*(v11 + 16))(v13, a1, v10);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  (*(v11 + 32))(v18 + v17, v13, v10);
  aBlock[4] = v24;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v25;
  v19 = _Block_copy(aBlock);
  v20 = v5;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v7 + 8))(v9, v26);
  (*(v14 + 8))(v16, v23);

  return result;
}

uint64_t sub_100A87E14(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, char *))
{
  v6 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a2, v7);
  swift_beginAccess();
  a4(0, v9);
  return swift_endAccess();
}

uint64_t sub_100A87F34(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100A88068(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = 4 * v2;
  while (1)
  {
    v4._countAndFlagsBits = String.subscript.getter();
    String.append(_:)(v4);

    if (v3 == String.index(_:offsetBy:)() >> 14)
    {
      break;
    }

    v5._countAndFlagsBits = 32;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
  }

  return 0;
}

void sub_100A8812C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1005B981C(&qword_101A0EF08, &qword_101492530);
  v39 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v44);
        v41 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v36)(v43, v25, v44);
        v41 = *(*(v9 + 56) + 16 * v23);
        swift_unknownObjectRetain();
      }

      sub_10003F158(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v42 * v19), v43, v44);
      *(*(v11 + 56) + 16 * v19) = v41;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_100A88504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = type metadata accessor for UUID();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1005B981C(&qword_101A0EF00, &qword_101492528);
  v41 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v2;
    v37 = v7;
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
    v38 = (v5 + 8);
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v42 = *(*(v7 + 56) + 16 * v21);
      if ((v41 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      v23 = *(v22 + 24);
      ObjectType = swift_getObjectType();
      v25 = v39;
      (*(v23 + 32))(ObjectType, v23);
      sub_10003F158(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = v40;
      dispatch thunk of Hashable.hash(into:)();
      (*v38)(v25, v26);
      v27 = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 16 * v17) = v42;
      ++*(v9 + 16);
      v7 = v37;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v3 = v9;
}

void sub_100A888BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1005B981C(&qword_101A0EFB8, &unk_1014925E0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_10000BF3C(v21, v31);
      }

      else
      {
        sub_100064288(v21, v31);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      sub_10000BF3C(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100A88CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1005B981C(&qword_101A0EFB0, &qword_1014925D8);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = (*(v5 + 56) + 32 * v21);
      if (v4)
      {
        v24 = v23[1];
        v34 = *v23;
        v35 = v24;
      }

      else
      {
        sub_10000BE14(v23, &v34, &unk_1019F4D00, &unk_10146E7F0);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = (*(v7 + 56) + 32 * v15);
      v17 = v35;
      *v16 = v34;
      v16[1] = v17;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100A890C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1005B981C(&qword_101A0EEF8, &qword_10149E9F0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 32 * v21);
      if (v4)
      {
        v24 = v23[1];
        v34 = *v23;
        v35 = v24;
      }

      else
      {
        sub_10000BE14(v23, &v34, &unk_1019F4D00, &unk_10146E7F0);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = (*(v7 + 56) + 32 * v15);
      v17 = v35;
      *v16 = v34;
      v16[1] = v17;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}