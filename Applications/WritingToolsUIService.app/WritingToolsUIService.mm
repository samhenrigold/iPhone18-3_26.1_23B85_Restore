void sub_100002B34()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  v3 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_suggestionView + 16];
  v4 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_suggestionView + 24];
  v48 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_suggestionView];
  v49 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_suggestionView + 8];
  objc_allocWithZone(sub_10000341C(&unk_10025ACF0, &unk_1001CE9B0));

  v5 = v3;
  v6 = v4;
  v7 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  v10 = v7;
  v11 = [v10 view];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  [v9 addSubview:v11];

  v13 = [v10 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (!_UISolariumEnabled())
  {
    goto LABEL_7;
  }

  v15 = [v10 view];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor:v17];

LABEL_7:
    [v1 addChildViewController:v10];
    sub_10000341C(&qword_10025F470, &qword_1001D1020);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1001CE090;
    v19 = [v10 view];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 leadingAnchor];

      v22 = [v1 view];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 leadingAnchor];

        v25 = [v21 constraintEqualToAnchor:v24];
        *(v18 + 32) = v25;
        v26 = [v10 view];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 trailingAnchor];

          v29 = [v1 view];
          if (v29)
          {
            v30 = v29;
            v31 = [v29 trailingAnchor];

            v32 = [v28 constraintEqualToAnchor:v31];
            *(v18 + 40) = v32;
            v33 = [v10 view];
            if (v33)
            {
              v34 = v33;
              v35 = [v33 topAnchor];

              v36 = [v1 view];
              if (v36)
              {
                v37 = v36;
                v38 = [v36 topAnchor];

                v39 = [v35 constraintEqualToAnchor:v38];
                *(v18 + 48) = v39;
                v40 = [v10 view];

                if (v40)
                {
                  v41 = [v40 bottomAnchor];

                  v42 = [v1 view];
                  if (v42)
                  {
                    v43 = v42;
                    v44 = objc_opt_self();
                    v45 = [v43 bottomAnchor];

                    v46 = [v41 constraintEqualToAnchor:v45];
                    *(v18 + 56) = v46;
                    sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v44 activateConstraints:isa];

                    return;
                  }

                  goto LABEL_26;
                }

LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
}

id sub_100003144()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of WritingToolsView._commonUIManager()
{
  type metadata accessor for CommonUIManager(0);
  sub_1000032CC(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  return Environment.init<A>(_:)();
}

uint64_t variable initialization expression of WritingToolsView._presentationModel()
{
  type metadata accessor for PresentationModel(0);
  sub_1000032CC(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  return Environment.init<A>(_:)();
}

uint64_t sub_1000032CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003354(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_10000341C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double variable initialization expression of WritingToolsView._analyticsInstance@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000034E0(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025AD60, &qword_1001CEA18);
  __chkstk_darwin(v2 - 8);
  sub_1000081F8(a1, &v5 - v3, &qword_10025AD60, &qword_1001CEA18);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_10000358C(uint64_t *a1)
{
  if (sub_1001C7274(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_1000035F4(uint64_t *a1)
{
  if (sub_1001C7274(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_1000036E8();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_1000032CC(&qword_10025A930, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_1000036E8()
{
  result = qword_10025A928;
  if (!qword_10025A928)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025A928);
  }

  return result;
}

uint64_t sub_10000385C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t variable initialization expression of WritingToolsModel.networkQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_1000032CC(&unk_10025A9D0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000341C(&qword_10025FEC0, &qword_1001CE1A8);
  sub_100007120(&qword_10025A9E0, &qword_10025FEC0, &qword_1001CE1A8, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100003BA4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_10000341C(a1, a2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of RewritingView._writingToolsModel()
{
  type metadata accessor for WritingToolsModel(0);
  sub_1000032CC(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  return Environment.init<A>(_:)();
}

uint64_t sub_100003C9C()
{
  v0 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  return FBKEvaluationController.init(subject:)();
}

uint64_t sub_100003DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100003E34(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_100003EB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_100003EF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100003F20@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

BOOL sub_100003FEC(void *a1, uint64_t *a2)
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

Swift::Int sub_100004064()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000040D8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100004124(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000419C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000421C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100004260(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int sub_100004370(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000043D8(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AF08, type metadata accessor for IAPayloadValue, &unk_1001CF400);
  v3 = sub_1000032CC(&qword_10025AF10, type metadata accessor for IAPayloadValue, &unk_1001CF3A0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100008160(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000044E8(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError, &unk_1001CF228);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004554(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError, &unk_1001CF228);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000045C0(void *a1, uint64_t a2)
{
  v4 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError, &unk_1001CF228);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError, &unk_1001CF228);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000046F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100004754@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004780(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AF18, type metadata accessor for IAPayloadKey, &unk_1001CF8D0);
  v3 = sub_1000032CC(&qword_10025AF20, type metadata accessor for IAPayloadKey, &unk_1001CF048);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000483C(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AEF8, type metadata accessor for MarkerFormat, &unk_1001CF5B0);
  v3 = sub_1000032CC(&qword_10025AF00, type metadata accessor for MarkerFormat, &unk_1001CF558);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000048F8(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025D590, type metadata accessor for Key, &unk_1001CF84C);
  v3 = sub_1000032CC(&unk_10025AEE0, type metadata accessor for Key, &unk_1001CF7A0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000049B4(uint64_t a1)
{
  v2 = sub_1000032CC(&unk_10025F4C0, type metadata accessor for TCFormatFeature, &unk_1001CF890);
  v3 = sub_1000032CC(&qword_10025AEF0, type metadata accessor for TCFormatFeature, &unk_1001CF698);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004A70(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AF38, type metadata accessor for OptionKey, &unk_1001CF914);
  v3 = sub_1000032CC(&qword_10025AF40, type metadata accessor for OptionKey, &unk_1001CEDF0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004B2C(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AF28, type metadata accessor for ActivityType, &unk_1001CEF48);
  v3 = sub_1000032CC(&qword_10025AF30, type metadata accessor for ActivityType, &unk_1001CEEF0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004BE8(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AE28, type metadata accessor for SummarizationClientError, &unk_1001CF1E4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004C54(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AE28, type metadata accessor for SummarizationClientError, &unk_1001CF1E4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004CC4(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError, &unk_1001CF228);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError, &unk_1001CF228);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100004DB4@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100004DFC(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AF48, type metadata accessor for URLResourceKey, &unk_1001CED00);
  v3 = sub_1000032CC(&qword_10025AF50, type metadata accessor for URLResourceKey, &unk_1001CECA0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004EB8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004EF4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004F48(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100004FBC(void *a1, uint64_t *a2)
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

unint64_t sub_100005044(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1000032CC(&unk_10025AC80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000055D0(a1, v2, &type metadata accessor for UUID, &unk_10025F360, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10000511C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000536C(a1, a2, v4);
}

unint64_t sub_100005194(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100005424(a1, v2);
}

unint64_t sub_100005224(double a1, double a2)
{
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100005528(v4, a1, a2);
}

unint64_t sub_100005298(uint64_t a1)
{
  type metadata accessor for FBKSForm.Question();
  sub_1000032CC(&qword_10025AC50, &type metadata accessor for FBKSForm.Question, &protocol conformance descriptor for FBKSForm.Question);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000055D0(a1, v2, &type metadata accessor for FBKSForm.Question, &qword_10025AC58, &type metadata accessor for FBKSForm.Question, &protocol conformance descriptor for FBKSForm.Question);
}

unint64_t sub_10000536C(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100005424(uint64_t a1, uint64_t a2)
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

unint64_t sub_100005528(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a1 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      if (static UnitPoint.== infix(_:_:)())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000055D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1000032CC(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1000057A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&unk_10025AC10, &unk_1001CE8F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000081F8(v4, &v13, &qword_10025D5A0, &qword_1001D45E0);
      v5 = v13;
      v6 = v14;
      result = sub_10000511C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100008150(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000058FC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_10000341C(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_10000341C(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_1000081F8(v16, v12, a2, v27);
      result = sub_100005044(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

unint64_t sub_100005B00(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025AD48, &qword_1001CEA00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000341C(&qword_10025AD50, &qword_1001CEA08);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000081F8(v9, v5, &qword_10025AD48, &qword_1001CEA00);
      result = sub_100005044(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_100005D0C(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025AD28, &unk_1001CE9E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000341C(&qword_10025AD30, &qword_1001D8740);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000081F8(v9, v5, &qword_10025AD28, &unk_1001CE9E0);
      result = sub_100005044(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_100005F18(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025AD08, &unk_1001CE9C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000341C(&qword_10025AD10, &unk_1001D8720);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000081F8(v9, v5, &qword_10025AD08, &unk_1001CE9C0);
      result = sub_100005044(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_100006100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025ACD8, &qword_1001CE998);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000081F8(v4, &v13, &qword_10025ACE0, &qword_1001CE9A0);
      v5 = v13;
      v6 = v14;
      result = sub_10000511C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100008198(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_100006248(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000341C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);
      v9 = v7;
      result = sub_100005194(v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v9;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_10000635C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025ACA0, &qword_1001CE960);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000511C(v5, v6);
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

unint64_t sub_100006470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025AC28, &qword_1001CE908);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000081F8(v4, &v11, &unk_10025AC30, &unk_1001CE910);
      v5 = v11;
      result = sub_100005194(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100008150(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100006598(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025AC70, &qword_1001CE940);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000341C(&qword_10025AC78, &qword_1001CE948);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000081F8(v9, v5, &qword_10025AC70, &qword_1001CE940);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100005224(*v5, v12);
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
      v18 = type metadata accessor for LayoutSubview();
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

unint64_t sub_100006790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025AC68, &qword_1001CE938);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_100005224(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10000688C(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025AC40, &qword_1001CE920);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000341C(&qword_10025AC48, &qword_1001CE928);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000081F8(v9, v5, &qword_10025AC40, &qword_1001CE920);
      result = sub_100005298(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for FBKSForm.Question();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

Swift::Int sub_100006A74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025AD58, &qword_1001CEA10);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100006CD4()
{
  result = qword_10025AA10;
  if (!qword_10025AA10)
  {
    sub_100003E34(&unk_100265110, &unk_1001DD960);
    sub_100007120(&unk_10025AA20, &unk_100265120, &unk_1001CE200, &protocol conformance descriptor for Button<A>);
    sub_100006D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA10);
  }

  return result;
}

unint64_t sub_100006D8C()
{
  result = qword_10025AA30;
  if (!qword_10025AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA30);
  }

  return result;
}

unint64_t sub_100006DE0()
{
  result = qword_100265140;
  if (!qword_100265140)
  {
    sub_100003E34(&unk_10025AA40, &unk_1001CE210);
    sub_100006E9C();
    sub_1000032CC(&qword_100265170, type metadata accessor for InputDashboardNavigationModifier, &unk_1001DD6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265140);
  }

  return result;
}

unint64_t sub_100006E9C()
{
  result = qword_10025AA50;
  if (!qword_10025AA50)
  {
    sub_100003E34(&unk_100265150, &unk_1001DD980);
    sub_100007120(&unk_10025AA60, &unk_100265160, &qword_1001CE220, &protocol conformance descriptor for ScrollView<A>);
    sub_100006F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA50);
  }

  return result;
}

unint64_t sub_100006F54()
{
  result = qword_10025AA70;
  if (!qword_10025AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA70);
  }

  return result;
}

unint64_t sub_100006FA8()
{
  result = qword_10025AA98;
  if (!qword_10025AA98)
  {
    sub_100003E34(&qword_10025AAA0, &unk_1001E0E40);
    sub_100003E34(&qword_10025AAA8, &unk_1001CE240);
    type metadata accessor for IconOnlyLabelStyle();
    sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240, &protocol conformance descriptor for Button<A>);
    sub_1000032CC(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA98);
  }

  return result;
}

uint64_t sub_100007120(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000071C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000724C()
{
  result = qword_10025AB08;
  if (!qword_10025AB08)
  {
    sub_100003E34(&qword_10025AB10, &qword_1001CE270);
    sub_1000072D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AB08);
  }

  return result;
}

unint64_t sub_1000072D8()
{
  result = qword_10025AB18;
  if (!qword_10025AB18)
  {
    sub_100003E34(&qword_10025AB20, &qword_1001CE278);
    sub_100007364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AB18);
  }

  return result;
}

unint64_t sub_100007364()
{
  result = qword_10025AB28;
  if (!qword_10025AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AB28);
  }

  return result;
}

uint64_t sub_1000073B8(uint64_t *a1)
{
  if (sub_1001C7274(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_10000751C(uint64_t *a1)
{
  if (sub_1001C7274(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_10000771C(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000341C(&qword_10025ABF8, &qword_1001CE8E8);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1000032CC(&qword_10025AC00, &type metadata accessor for PresentationDetent, &protocol conformance descriptor for PresentationDetent);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1000032CC(&qword_10025AC08, &type metadata accessor for PresentationDetent, &protocol conformance descriptor for PresentationDetent);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_100007A3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025F370, &qword_1001D41D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_100007BA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025AC20, &qword_1001CE900);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100007D98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_100007E0C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100007E18(uint64_t a1, int a2)
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

uint64_t sub_100007E38(uint64_t result, int a2, int a3)
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

__n128 sub_100007E8C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007ED4(uint64_t a1, int a2)
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

uint64_t sub_100007EF4(uint64_t result, int a2, int a3)
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

_OWORD *sub_100008150(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100008160(uint64_t a1)
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

uint64_t sub_100008198(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000081B0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000081F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000341C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1000087E4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_10000887C()
{
  result = qword_10025AE50;
  if (!qword_10025AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AE50);
  }

  return result;
}

NSString sub_100008DD4()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D00 = result;
  return result;
}

NSString sub_100008E0C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D08 = result;
  return result;
}

NSString sub_100008E44()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D10 = result;
  return result;
}

NSString sub_100008E7C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D18 = result;
  return result;
}

NSString sub_100008EBC()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D20 = result;
  return result;
}

NSString sub_100008EF4()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D28 = result;
  return result;
}

NSString sub_100008F2C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D30 = result;
  return result;
}

NSString sub_100008F6C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D38 = result;
  return result;
}

NSString sub_100008FA8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D40 = result;
  return result;
}

NSString sub_100008FDC()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D48 = result;
  return result;
}

NSString sub_100009014()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D50 = result;
  return result;
}

NSString sub_100009054()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D58 = result;
  return result;
}

NSString sub_100009084()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D60 = result;
  return result;
}

NSString sub_1000090C0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D68 = result;
  return result;
}

NSString sub_1000090FC()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D70 = result;
  return result;
}

NSString sub_100009134()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D78 = result;
  return result;
}

NSString sub_10000916C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D80 = result;
  return result;
}

NSString sub_1000091A4()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D88 = result;
  return result;
}

NSString sub_1000091E4()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D90 = result;
  return result;
}

NSString sub_100009214()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D98 = result;
  return result;
}

NSString sub_100009248()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DA0 = result;
  return result;
}

NSString sub_100009284()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DA8 = result;
  return result;
}

NSString sub_1000092BC()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DB0 = result;
  return result;
}

NSString sub_1000092E8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DB8 = result;
  return result;
}

NSString sub_10000931C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DC0 = result;
  return result;
}

NSString sub_100009350()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DC8 = result;
  return result;
}

NSString sub_100009388()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DD0 = result;
  return result;
}

NSString sub_1000093C0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DD8 = result;
  return result;
}

NSString sub_1000093F8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DE0 = result;
  return result;
}

NSString sub_100009430()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DE8 = result;
  return result;
}

NSString sub_100009468()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DF0 = result;
  return result;
}

NSString sub_100009498()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DF8 = result;
  return result;
}

NSString sub_1000094D0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E00 = result;
  return result;
}

NSString sub_100009504()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E08 = result;
  return result;
}

NSString sub_100009538()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E10 = result;
  return result;
}

NSString sub_100009574()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E18 = result;
  return result;
}

NSString sub_1000095B0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E20 = result;
  return result;
}

NSString sub_1000095E8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E28 = result;
  return result;
}

NSString sub_100009628()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E30 = result;
  return result;
}

NSString sub_100009668()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E38 = result;
  return result;
}

NSString sub_1000096A4()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E40 = result;
  return result;
}

NSString sub_1000096D8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E48 = result;
  return result;
}

NSString sub_100009710()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E50 = result;
  return result;
}

NSString sub_100009748()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E58 = result;
  return result;
}

NSString sub_100009780()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E60 = result;
  return result;
}

NSString sub_1000097B8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E68 = result;
  return result;
}

NSString sub_1000097F0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E70 = result;
  return result;
}

NSString sub_100009828()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E78 = result;
  return result;
}

NSString sub_100009860()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E80 = result;
  return result;
}

NSString sub_100009898()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E88 = result;
  return result;
}

NSString sub_1000098D0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E90 = result;
  return result;
}

NSString sub_100009908()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E98 = result;
  return result;
}

NSString sub_100009940()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EA0 = result;
  return result;
}

NSString sub_100009978()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EA8 = result;
  return result;
}

NSString sub_1000099B0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EB0 = result;
  return result;
}

NSString sub_1000099E8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EB8 = result;
  return result;
}

NSString sub_100009A20()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EC0 = result;
  return result;
}

NSString sub_100009A5C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EC8 = result;
  return result;
}

NSString sub_100009A90()
{
  result = String._bridgeToObjectiveC()();
  qword_100276ED0 = result;
  return result;
}

NSString sub_100009AC8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276ED8 = result;
  return result;
}

NSString sub_100009AFC()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EE0 = result;
  return result;
}

uint64_t sub_100009B2C(uint64_t a1)
{
  v2 = v1;
  ObservationRegistrar.init()();
  sub_10000F384(a1, v1 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID);
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F50);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "WritingToolsAnalytics init", v7, 2u);
  }

  sub_10000F500(a1, &unk_100262450, &qword_1001CFAA0);
  return v2;
}

void sub_100009C54(void *a1)
{
  v2 = v1;
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F34C(v7, qword_100276F50);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136380675;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = sub_10002510C(v13, v14, &v28);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "reportButtonTapped: interactionType: %{private}s", v11, 0xCu);
    sub_10000F4B4(v12);
  }

  v16 = IASignalWritingToolsButtonTapped;
  v17 = IAChannelWritingTools;
  sub_10000F384(v2 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v6);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    sub_10000F500(v6, &unk_100262450, &qword_1001CFAA0);
    v20 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v19 + 8))(v6, v18);
    v20 = String._bridgeToObjectiveC()();
  }

  v21 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  v23 = IAPayloadKeyWritingToolsInteractionType;
  *(inited + 32) = IAPayloadKeyWritingToolsInteractionType;
  *(inited + 40) = v8;
  v24 = v8;
  v25 = v23;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v21 sendSignal:v16 toChannel:v17 withNullableUniqueStringID:v20 withPayload:isa];
}

void sub_100009FE8(char a1)
{
  v2 = v1;
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  if (a1)
  {
    v7 = 0x64657463656C6573;
  }

  else
  {
    v7 = 0x747865546C6C61;
  }

  if (a1)
  {
    v8 = 0xEC00000074786554;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F34C(v9, qword_100276F50);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136380675;
    v14 = sub_10002510C(v7, v8, &v30);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "reportInclusionPolicyChanged: inclusionPolicy: %{private}s", v12, 0xCu);
    sub_10000F4B4(v13);

    if ((a1 & 1) == 0)
    {
LABEL_11:
      if (qword_10025A6B8 != -1)
      {
        swift_once();
      }

      v15 = &qword_100276EC8;
      goto LABEL_18;
    }
  }

  else
  {

    if ((a1 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (qword_10025A6B0 != -1)
  {
    swift_once();
  }

  v15 = &qword_100276EC0;
LABEL_18:
  v16 = qword_10025A4F0;
  v17 = *v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_100276D00;
  v19 = IAChannelWritingTools;
  sub_10000F384(v2 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v6);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v6, 1, v20) == 1)
  {
    sub_10000F500(v6, &unk_100262450, &qword_1001CFAA0);
    v22 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v21 + 8))(v6, v20);
    v22 = String._bridgeToObjectiveC()();
  }

  v23 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  if (qword_10025A540 != -1)
  {
    swift_once();
  }

  v25 = qword_100276D50;
  *(inited + 32) = qword_100276D50;
  *(inited + 40) = v17;
  v26 = v17;
  v27 = v25;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v23 sendSignal:v18 toChannel:v19 withNullableUniqueStringID:v22 withPayload:isa];
}

void sub_10000A4AC(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000F34C(v11, qword_100276F50);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v37 = v4;
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v14 = 136643075;
    v36 = v10;
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      a1 = 7104878;
      v15 = 0xE300000000000000;
    }

    v16 = sub_10002510C(a1, v15, &v38);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2085;

    v17 = Array.description.getter();
    v19 = v18;

    v10 = v36;
    v20 = sub_10002510C(v17, v19, &v38);
    v4 = v37;

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "reportSuggestionChosen: suggestionPrompt: %{sensitive}s suggestions: %{sensitive}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v21 = sub_100005794(_swiftEmptyArrayStorage);
  if (a2)
  {
    if (qword_10025A548 != -1)
    {
      swift_once();
    }

    v22 = qword_100276D58;
    v23 = String._bridgeToObjectiveC()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v21;
    sub_1001A9924(v23, v22, isUniquelyReferenced_nonNull_native);

    v21 = v38;
  }

  if (a3)
  {
    if (qword_10025A558 != -1)
    {
      swift_once();
    }

    v25 = qword_100276D68;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v21;
    sub_1001A9924(isa, v25, v27);
  }

  if (qword_10025A500 != -1)
  {
    swift_once();
  }

  v28 = qword_100276D10;
  v29 = IAChannelWritingTools;
  sub_10000F384(v4 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v10);
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v10, 1, v30) == 1)
  {
    sub_10000F500(v10, &unk_100262450, &qword_1001CFAA0);
    v32 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v31 + 8))(v10, v30);
    v32 = String._bridgeToObjectiveC()();
  }

  v33 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v33 sendSignal:v28 toChannel:v29 withNullableUniqueStringID:v32 withPayload:v34];
}

void sub_10000A9C0(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, unint64_t a10)
{
  v11 = v10;
  v67 = a6;
  v64 = a3;
  v65 = a5;
  LODWORD(v15) = a2;
  v17 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v17 - 8);
  v19 = &v59 - v18;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v66 = a9;
  v20 = type metadata accessor for Logger();
  sub_10000F34C(v20, qword_100276F50);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v63 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v61 = v11;
    v25 = v24;
    v26 = swift_slowAlloc();
    v62 = v15;
    v15 = v26;
    v68 = v26;
    *v25 = 134284547;
    if (v62)
    {
      v27 = 0;
    }

    else
    {
      v27 = a1;
    }

    *(v25 + 4) = v27;
    *(v25 + 12) = 2049;
    v28 = v64;
    if (a4)
    {
      v28 = 0;
    }

    *(v25 + 14) = v28;
    *(v25 + 22) = 2049;
    v29 = v65;
    if (v67)
    {
      v29 = 0;
    }

    *(v25 + 24) = v29;
    *(v25 + 32) = 2049;
    if (a8)
    {
      v30 = 0;
    }

    else
    {
      v30 = a7;
    }

    *(v25 + 34) = v30;
    *(v25 + 42) = 2085;
    v60 = a8;
    if (a10)
    {
      v31 = v66;
    }

    else
    {
      v31 = 7104878;
    }

    v32 = a4;
    if (a10)
    {
      v33 = a10;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v34 = sub_10002510C(v31, v33, &v68);
    a4 = v32;

    *(v25 + 44) = v34;
    LOBYTE(a8) = v60;
    _os_log_impl(&_mh_execute_header, v21, v22, "reportAttachmentsModified: numSelectedPhotos: %{private}ld numSelectedFiles: %{private}ld numRemovedPhotos: %{private}ld numRemovedFiles: %{private}ld slotID: %{sensitive}s", v25, 0x34u);
    sub_10000F4B4(v15);
    LOBYTE(v15) = v62;

    v11 = v61;
  }

  v35 = sub_100005794(_swiftEmptyArrayStorage);
  if (v15)
  {
    if (a4)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v36 = a4;
    if (qword_10025A560 != -1)
    {
      swift_once();
    }

    v37 = qword_100276D70;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v35;
    sub_1001A9924(isa, v37, isUniquelyReferenced_nonNull_native);

    v35 = v68;
    if (v36)
    {
LABEL_23:
      if (v67)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }
  }

  if (qword_10025A568 != -1)
  {
    swift_once();
  }

  v40 = qword_100276D78;
  v41 = Int._bridgeToObjectiveC()().super.super.isa;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v35;
  sub_1001A9924(v41, v40, v42);

  v35 = v68;
  if (v67)
  {
LABEL_24:
    if (a8)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_33:
  if (qword_10025A570 != -1)
  {
    swift_once();
  }

  v43 = qword_100276D80;
  v44 = Int._bridgeToObjectiveC()().super.super.isa;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v35;
  sub_1001A9924(v44, v43, v45);

  v35 = v68;
  if (a8)
  {
LABEL_25:
    if (!a10)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_36:
  if (qword_10025A578 != -1)
  {
    swift_once();
  }

  v46 = qword_100276D88;
  v47 = Int._bridgeToObjectiveC()().super.super.isa;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v35;
  sub_1001A9924(v47, v46, v48);

  v35 = v68;
  if (a10)
  {
LABEL_39:
    if (qword_10025A580 != -1)
    {
      swift_once();
    }

    v49 = qword_100276D90;
    v50 = String._bridgeToObjectiveC()();
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v35;
    sub_1001A9924(v50, v49, v51);
  }

LABEL_42:
  if (qword_10025A4F8 != -1)
  {
    swift_once();
  }

  v52 = qword_100276D08;
  v53 = IAChannelWritingTools;
  sub_10000F384(v11 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v19);
  v54 = type metadata accessor for UUID();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v19, 1, v54) == 1)
  {
    sub_10000F500(v19, &unk_100262450, &qword_1001CFAA0);
    v56 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v55 + 8))(v19, v54);
    v56 = String._bridgeToObjectiveC()();
  }

  v57 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  v58 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v57 sendSignal:v52 toChannel:v53 withNullableUniqueStringID:v56 withPayload:v58];
}

void sub_10000B06C(void *a1)
{
  v2 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  if (qword_10025A6F8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    v58 = sub_10000F34C(v5, qword_100276F50);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "reportSlotFormShown", v8, 2u);
    }

    v53 = v4;

    v4 = a1[2];
    if (!v4)
    {
      break;
    }

    v9 = sub_10000341C(&qword_10025AC60, &qword_1001CE930);
    v10 = a1 + 6;
    v63 = _swiftEmptyArrayStorage;
    *&v11 = 136643331;
    v54 = v11;
    v12 = &unk_10025A000;
    v55 = v9;
    while (1)
    {
      v14 = *(v10 - 2);
      v13 = *(v10 - 1);
      v15 = v10[1];
      v16 = v10[3];
      v17 = v10[4];
      v59 = *v10;
      v60 = v16;
      v18 = v10[5];

      v61 = v18;

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      v21 = os_log_type_enabled(v19, v20);
      v62 = v14;
      if (v21)
      {
        v22 = swift_slowAlloc();
        v57 = v4;
        v23 = v22;
        v56 = swift_slowAlloc();
        v64 = v56;
        *v23 = v54;

        v24 = v12;
        v25 = sub_10002510C(v14, v13, &v64);

        *(v23 + 4) = v25;
        *(v23 + 12) = 2085;

        v26 = sub_10002510C(v59, v15, &v64);

        *(v23 + 14) = v26;
        *(v23 + 22) = 2085;
        v12 = v24;

        v27 = sub_10002510C(v60, v17, &v64);

        *(v23 + 24) = v27;
        _os_log_impl(&_mh_execute_header, v19, v20, "reportSlotFormShown: slot: %{sensitive}s query: %{sensitive}s response: %{sensitive}s", v23, 0x20u);
        swift_arrayDestroy();

        v4 = v57;
      }

      if (v12[180] != -1)
      {
        swift_once();
      }

      v65 = qword_100276DB0;
      v28 = qword_100276DB0;
      v66 = String._bridgeToObjectiveC()();

      v29 = static _DictionaryStorage.allocate(capacity:)();

      v30 = v66;
      a1 = v65;
      v31 = v30;
      v32 = sub_100005118();
      if (v33)
      {
        break;
      }

      v29[(v32 >> 6) + 8] |= 1 << v32;
      *(v29[6] + 8 * v32) = a1;
      *(v29[7] + 8 * v32) = v31;
      v34 = v29[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_28;
      }

      v29[2] = v36;

      sub_10000F500(&v65, &qword_10025B1A0, &unk_1001D45A0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_10017D590(0, v63[2] + 1, 1, v63);
      }

      v38 = v63[2];
      v37 = v63[3];
      if (v38 >= v37 >> 1)
      {
        v63 = sub_10017D590((v37 > 1), v38 + 1, 1, v63);
      }

      v39 = v63;
      v63[2] = v38 + 1;
      v39[v38 + 4] = v29;
      v10 += 8;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v63 = _swiftEmptyArrayStorage;
LABEL_19:
  if (qword_10025A508 != -1)
  {
    swift_once();
  }

  v40 = qword_100276D18;
  v41 = IAChannelWritingTools;
  v42 = v53;
  sub_10000F384(v52 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v53);
  v43 = type metadata accessor for UUID();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_10000F500(v42, &unk_100262450, &qword_1001CFAA0);
    v45 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v44 + 8))(v42, v43);
    v45 = String._bridgeToObjectiveC()();
  }

  v46 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  if (qword_10025A588 != -1)
  {
    swift_once();
  }

  v48 = qword_100276D98;
  *(inited + 32) = qword_100276D98;
  v49 = v48;
  sub_10000341C(&unk_10025B1B0, &qword_1001CFA68);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(inited + 40) = isa;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  v51 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v46 sendSignal:v40 toChannel:v41 withNullableUniqueStringID:v45 withPayload:v51];
}

void sub_10000B7B0(int a1, void *a2)
{
  LODWORD(v3) = a1;
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v4 - 8);
  v6 = v74 - v5;
  if (qword_10025A6F8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    v80 = sub_10000F34C(v7, qword_100276F50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67174657;
      *(v10 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v8, v9, "reportSlotFormCompleted: slotsUpdated: %{BOOL,private}d", v10, 8u);
    }

    v75 = v6;
    v76 = v3;

    v6 = a2[2];
    if (!v6)
    {
      break;
    }

    v79 = sub_10000341C(&qword_10025AC60, &qword_1001CE930);
    v85 = _swiftEmptyArrayStorage;
    v11 = a2 + 6;
    *&v12 = 136643331;
    v77 = v12;
    while (1)
    {
      v14 = *(v11 - 2);
      v13 = *(v11 - 1);
      v15 = v11[1];
      v81 = *v11;
      v82 = *(v11 + 16);
      v16 = v11[3];
      v17 = v11[4];
      v18 = v11[5];

      v84 = v18;

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      v21 = os_log_type_enabled(v19, v20);
      v83 = v14;
      if (v21)
      {
        v22 = swift_slowAlloc();
        v78 = v6;
        v23 = v22;
        v86 = swift_slowAlloc();
        *v23 = v77;

        v24 = sub_10002510C(v14, v13, &v86);
        v25 = v16;
        v26 = v24;

        *(v23 + 4) = v26;
        *(v23 + 12) = 2085;

        v27 = sub_10002510C(v81, v15, &v86);

        *(v23 + 14) = v27;
        *(v23 + 22) = 2085;

        v28 = sub_10002510C(v25, v17, &v86);

        *(v23 + 24) = v28;
        _os_log_impl(&_mh_execute_header, v19, v20, "reportSlotFormCompleted: slot: %{sensitive}s query: %{sensitive}s response: %{sensitive}s", v23, 0x20u);
        swift_arrayDestroy();

        v6 = v78;
      }

      if (v82)
      {
        if (v82 == 1)
        {
          v29 = &qword_100276ED8;
          if (qword_10025A6C8 != -1)
          {
            swift_once();
            v29 = &qword_100276ED8;
          }
        }

        else
        {
          v29 = &qword_100276EE0;
          if (qword_10025A6D0 != -1)
          {
            swift_once();
            v29 = &qword_100276EE0;
          }
        }
      }

      else
      {
        v29 = &qword_100276ED0;
        if (qword_10025A6C0 != -1)
        {
          swift_once();
          v29 = &qword_100276ED0;
        }
      }

      v30 = qword_10025A5A0;
      v31 = *v29;
      if (v30 != -1)
      {
        swift_once();
      }

      v87 = qword_100276DB0;
      v32 = qword_100276DB0;
      v88 = String._bridgeToObjectiveC()();
      if (qword_10025A5B0 != -1)
      {
        swift_once();
      }

      v89 = qword_100276DC0;
      v33 = qword_100276DC0;
      v90 = String._bridgeToObjectiveC()();
      if (qword_10025A5A8 != -1)
      {
        swift_once();
      }

      v34 = qword_100276DB8;
      v91 = qword_100276DB8;
      v92 = v31;
      v3 = v31;
      v35 = v34;

      v36 = static _DictionaryStorage.allocate(capacity:)();

      v37 = v88;
      a2 = v87;
      v38 = v37;
      v39 = sub_100005118();
      if (v40)
      {
        break;
      }

      v41 = v36 + 8;
      *(v36 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v39;
      *(v36[6] + 8 * v39) = a2;
      *(v36[7] + 8 * v39) = v38;
      v42 = v36[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_46;
      }

      v36[2] = v44;
      v45 = v90;
      a2 = v89;
      v46 = v45;
      v47 = sub_100005118();
      if (v48)
      {
        break;
      }

      *(v41 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      *(v36[6] + 8 * v47) = a2;
      *(v36[7] + 8 * v47) = v46;
      v49 = v36[2];
      v43 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v43)
      {
        goto LABEL_46;
      }

      v36[2] = v50;
      v51 = v92;
      a2 = v91;
      v52 = v51;
      v53 = sub_100005118();
      if (v54)
      {
        break;
      }

      *(v41 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      *(v36[6] + 8 * v53) = a2;
      *(v36[7] + 8 * v53) = v52;
      v55 = v36[2];
      v43 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v43)
      {
        goto LABEL_46;
      }

      v36[2] = v56;

      sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_10017D590(0, v85[2] + 1, 1, v85);
      }

      v58 = v85[2];
      v57 = v85[3];
      if (v58 >= v57 >> 1)
      {
        v85 = sub_10017D590((v57 > 1), v58 + 1, 1, v85);
      }

      v59 = v85;
      v85[2] = v58 + 1;
      v59[v58 + 4] = v36;
      v11 += 8;
      if (!--v6)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

  v85 = _swiftEmptyArrayStorage;
LABEL_35:
  if (qword_10025A510 != -1)
  {
    swift_once();
  }

  v60 = qword_100276D20;
  v61 = v75;
  sub_10000F384(v74[1] + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v75);
  v62 = type metadata accessor for UUID();
  v63 = *(v62 - 8);
  if ((*(v63 + 48))(v61, 1, v62) == 1)
  {
    sub_10000F500(v61, &unk_100262450, &qword_1001CFAA0);
    v64 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v63 + 8))(v61, v62);
    v64 = String._bridgeToObjectiveC()();
  }

  v65 = IAChannelWritingTools;
  v66 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  if (qword_10025A590 != -1)
  {
    swift_once();
  }

  v68 = qword_100276DA0;
  *(inited + 32) = qword_100276DA0;
  v69 = v68;
  *(inited + 40) = Bool._bridgeToObjectiveC()();
  if (qword_10025A598 != -1)
  {
    swift_once();
  }

  v70 = qword_100276DA8;
  *(inited + 48) = qword_100276DA8;
  v71 = v70;
  sub_10000341C(&unk_10025B1B0, &qword_1001CFA68);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(inited + 56) = isa;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  v73 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v66 sendSignal:v60 toChannel:v65 withNullableUniqueStringID:v64 withPayload:v73];
}

void sub_10000C1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  v63 = a7;
  v64 = a8;
  v62 = a5;
  v12 = a4;
  v16 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000F34C(v19, qword_100276F50);
  sub_10000F3F4(a1, a2, a3, v12);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  sub_10000F428(a1, a2, a3, v12);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v61 = v18;
    v23 = v22;
    v58 = swift_slowAlloc();
    v59 = a6;
    v65 = v58;
    *v23 = 136380675;
    sub_100106A3C(a1, a2, a3, v12);
    v60 = v10;
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 key];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = a1;
    v28 = a2;
    v29 = a3;
    v30 = v12;
    v32 = v31;

    v10 = v60;
    v33 = sub_10002510C(v26, v32, &v65);
    v12 = v30;
    a3 = v29;
    a2 = v28;
    a1 = v27;

    *(v23 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v20, v21, "reportResultsRequested: mode: %{private}s", v23, 0xCu);
    sub_10000F4B4(v58);
    a6 = v59;

    v18 = v61;
  }

  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  v35 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  v36 = v35;
  v37 = sub_10000F174(a1, a2, a3, v12);
  *(inited + 40) = v37;
  v38 = v37;
  v39 = sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  if (a6)
  {
    if (qword_10025A548 != -1)
    {
      swift_once();
    }

    v40 = qword_100276D58;
    v41 = String._bridgeToObjectiveC()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v39;
    sub_1001A9924(v41, v40, isUniquelyReferenced_nonNull_native);

    v39 = v65;
  }

  if (v64)
  {
    if (qword_10025A550 != -1)
    {
      swift_once();
    }

    v43 = qword_100276D60;
    v44 = String._bridgeToObjectiveC()();
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v39;
    sub_1001A9924(v44, v43, v45);

    v39 = v65;
  }

  if (a9 != 2)
  {
    if (a9)
    {
      if (qword_10025A6B0 != -1)
      {
        swift_once();
      }

      v46 = &qword_100276EC0;
    }

    else
    {
      if (qword_10025A6B8 != -1)
      {
        swift_once();
      }

      v46 = &qword_100276EC8;
    }

    v47 = qword_10025A540;
    v48 = *v46;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = qword_100276D50;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v39;
    sub_1001A9924(v48, v49, v50);
  }

  v51 = IASignalWritingToolsResultsRequested;
  v52 = IAChannelWritingTools;
  sub_10000F384(v10 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v18);
  v53 = type metadata accessor for UUID();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v18, 1, v53) == 1)
  {
    sub_10000F500(v18, &unk_100262450, &qword_1001CFAA0);
    v55 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v54 + 8))(v18, v53);
    v55 = String._bridgeToObjectiveC()();
  }

  v56 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v56 sendSignal:v51 toChannel:v52 withNullableUniqueStringID:v55 withPayload:isa];
}

void sub_10000C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v7 = v6;
  v89 = a5;
  v9 = a4;
  v13 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v13 - 8);
  v78 = &v77 - v14;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000F34C(v15, qword_100276F50);
  sub_10000F3F4(a1, a2, a3, v9);
  v86 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  sub_10000F428(a1, a2, a3, v9);
  v19 = os_log_type_enabled(v17, v18);
  v80 = a2;
  v79 = a1;
  v77 = v7;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v94[0] = v21;
    *v20 = 136380675;
    sub_100106A3C(a1, a2, a3, v9);
    v22 = String._bridgeToObjectiveC()();

    v23 = [v22 key];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_10002510C(v24, v26, v94);

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "reportActionSelected: mode: %{private}s", v20, 0xCu);
    sub_10000F4B4(v21);
  }

  v83 = a6;
  v82 = v9;
  v81 = a3;
  if (!v89)
  {
    goto LABEL_20;
  }

  if (v89 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29)
    {
      goto LABEL_8;
    }

LABEL_20:
    v91 = 0xE000000000000000;
    goto LABEL_21;
  }

  v29 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v29 < 1)
  {
    __break(1u);
    return;
  }

  v30 = 0;
  v31 = 0;
  v87 = v89 & 0xC000000000000001;
  v91 = 0xE000000000000000;
  p_name = (&stru_100256FF8 + 8);
  v33 = (&stru_100256FF8 + 8);
  *&v28 = 134218496;
  v84 = v28;
  v88 = v29;
  do
  {
    v90 = v30;
    if (v87)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v40 = *(v89 + 8 * v31 + 32);
    }

    v41 = v40;
    [v40 range];
    v42 = [v41 p_name[368]];
    v43 = [v42 v33[369]];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Range<>.init(_:in:)();
    LOBYTE(v42) = v44;

    if (v42)
    {
      v45 = p_name;
      v46 = [v41 p_name[368]];
      v47 = [v46 v33[369]];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v48;

      v49 = v41;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = v84;
        v85 = v51;
        *(v52 + 4) = [v49 range];
        *(v52 + 12) = 2048;
        [v49 range];
        *(v52 + 14) = v53;
        *(v52 + 22) = 2048;
        v54 = [v49 v45[368]];
        v55 = [v54 string];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = String.count.getter();

        *(v52 + 24) = v56;

        _os_log_impl(&_mh_execute_header, v50, v85, "context.range (%ld, %ld out of bounds (%ld!", v52, 0x20u);
      }

      else
      {
      }
    }

    else
    {
      v34 = [v41 p_name[368]];
      v35 = [v34 v33[369]];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.subscript.getter();

      v36 = static String._fromSubstring(_:)();
      v38 = v37;
    }

    ++v31;
    v94[0] = v36;
    v94[1] = v38;
    v92 = v90;
    v93 = v91;
    v92 = String.init<A>(_:)();
    v93 = v39;
    String.append<A>(contentsOf:)();

    v30 = v92;
    v91 = v93;
    p_name = &stru_100256FF8.name;
    v33 = &stru_100256FF8.name;
  }

  while (v88 != v31);
LABEL_21:
  v57 = IASignalWritingToolsActionSelected;
  v58 = IAChannelWritingTools;
  v59 = v78;
  sub_10000F384(v77 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v78);
  v60 = type metadata accessor for UUID();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    sub_10000F500(v59, &unk_100262450, &qword_1001CFAA0);
    v62 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v61 + 8))(v59, v60);
    v62 = String._bridgeToObjectiveC()();
  }

  v63 = v82;
  v64 = v81;
  v65 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9F0;
  v67 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  v68 = v67;
  v69 = sub_10000F174(v79, v80, v64, v63);
  v70 = IAPayloadKeyWritingToolsInputText;
  *(inited + 40) = v69;
  *(inited + 48) = v70;
  v71 = v69;
  v72 = v70;
  v73 = String._bridgeToObjectiveC()();

  *(inited + 56) = v73;
  if (qword_10025A538 != -1)
  {
    swift_once();
  }

  v74 = qword_100276D48;
  *(inited + 64) = qword_100276D48;
  v75 = v74;
  *(inited + 72) = Bool._bridgeToObjectiveC()();
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v65 sendSignal:v57 toChannel:v58 withNullableUniqueStringID:v62 withPayload:isa];
}

void sub_10000D118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v98 = a6;
  v6 = a5;
  v11 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v89 - v12;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000F34C(v14, qword_100276F50);

  sub_10000F3F4(a2, a3, a4, v6);
  v97 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  sub_10000F428(a2, a3, a4, v6);
  v18 = os_log_type_enabled(v16, v17);
  v99 = a3;
  v95 = v13;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v101 = v100;
    *v19 = 136643075;
    v20 = Dictionary.description.getter();
    v21 = a4;
    v22 = v6;
    v24 = sub_10002510C(v20, v23, &v101);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2081;
    sub_100106A3C(a2, v99, v21, v6);
    v25 = String._bridgeToObjectiveC()();

    v26 = [v25 key];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = v27;
    a3 = v99;
    v31 = sub_10002510C(v30, v29, &v101);

    *(v19 + 14) = v31;
    v6 = v22;
    a4 = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "reportResultsGenerated: resultOptions: %{sensitive}s mode: %{private}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  v32 = sub_10009D1E0(a1);
  v34 = v33;
  v91 = sub_10009D508(a1);
  v93 = v35;
  v100 = sub_10009D5C4(a1);
  v36 = sub_10009D5D0(a1);
  sub_10000F3F4(a2, a3, a4, v6);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();

  sub_10000F428(a2, a3, a4, v6);
  v39 = os_log_type_enabled(v37, v38);
  v96 = v34;
  v97 = v36;
  v92 = v32;
  if (!v39)
  {

    v50 = v95;
    v49 = v36;
    if (v98)
    {
      goto LABEL_7;
    }

LABEL_13:
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v40 = swift_slowAlloc();
  v101 = swift_slowAlloc();
  *v40 = 136643075;
  *(v40 + 4) = sub_10002510C(v32, v34, &v101);
  *(v40 + 12) = 2081;
  sub_100106A3C(a2, a3, a4, v6);
  v90 = a2;
  v41 = a4;
  v42 = v6;
  v43 = String._bridgeToObjectiveC()();

  v44 = [v43 key];

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v48 = sub_10002510C(v45, v47, &v101);
  v49 = v97;

  *(v40 + 14) = v48;
  v6 = v42;
  a4 = v41;
  a2 = v90;
  _os_log_impl(&_mh_execute_header, v37, v38, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v40, 0x16u);
  swift_arrayDestroy();

  v50 = v95;
  if ((v98 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_10025A5D0 != -1)
  {
    swift_once();
  }

  v51 = qword_100276DE0;
  v52 = sub_10017D6C4(0, 1, 1, _swiftEmptyArrayStorage);
  v54 = v52[2];
  v53 = v52[3];
  if (v54 >= v53 >> 1)
  {
    v52 = sub_10017D6C4((v53 > 1), v54 + 1, 1, v52);
  }

  v52[2] = v54 + 1;
  v52[v54 + 4] = v51;
LABEL_14:
  if ((v98 & 2) != 0)
  {
    if (qword_10025A5D8 != -1)
    {
      swift_once();
    }

    v55 = qword_100276DE8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_10017D6C4(0, v52[2] + 1, 1, v52);
    }

    v57 = v52[2];
    v56 = v52[3];
    if (v57 >= v56 >> 1)
    {
      v52 = sub_10017D6C4((v56 > 1), v57 + 1, 1, v52);
    }

    v52[2] = v57 + 1;
    v52[v57 + 4] = v55;
  }

  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9F0;
  if (qword_10025A528 != -1)
  {
    swift_once();
  }

  v59 = qword_100276D38;
  *(inited + 32) = qword_100276D38;
  v60 = v59;
  v61 = String._bridgeToObjectiveC()();

  v62 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 40) = v61;
  *(inited + 48) = v62;
  v63 = v62;
  v64 = sub_10000F174(a2, v99, a4, v6);
  *(inited + 56) = v64;
  v65 = qword_10025A530;
  v66 = v64;
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = qword_100276D40;
  *(inited + 64) = qword_100276D40;
  type metadata accessor for IAPayloadValue(0);
  v68 = v67;
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(inited + 72) = isa;
  v70 = sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  if (v93)
  {
    v71 = IAPayloadKeyWritingToolsInputLanguage;
    v72 = String._bridgeToObjectiveC()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v70;
    sub_1001A9924(v72, v71, isUniquelyReferenced_nonNull_native);

    v70 = v101;
  }

  if (v100)
  {
    v74 = qword_10025A5B8;
    v75 = v100;
    if (v74 != -1)
    {
      swift_once();
    }

    v76 = qword_100276DC8;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v70;
    sub_1001A9924(v75, v76, v77);

    v70 = v101;
  }

  if (v49)
  {
    v78 = qword_10025A5C0;
    v79 = v49;
    if (v78 != -1)
    {
      swift_once();
    }

    v80 = qword_100276DD0;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v70;
    sub_1001A9924(v79, v80, v81);
  }

  v82 = IASignalWritingToolsResultsGenerated;
  v83 = IAChannelWritingTools;
  sub_10000F384(v94 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v50);
  v84 = type metadata accessor for UUID();
  v85 = *(v84 - 8);
  if ((*(v85 + 48))(v50, 1, v84) == 1)
  {
    sub_10000F500(v50, &unk_100262450, &qword_1001CFAA0);
    v86 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v85 + 8))(v50, v84);
    v86 = String._bridgeToObjectiveC()();
  }

  v87 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  v88 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v87 sendSignal:v82 toChannel:v83 withNullableUniqueStringID:v86 withPayload:v88];
}

void sub_10000DB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v12 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - v13;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000F34C(v15, qword_100276F50);
  swift_errorRetain();
  sub_10000F3F4(a2, a3, a4, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  sub_10000F428(a2, a3, a4, v7);
  v18 = os_log_type_enabled(v16, v17);
  v51 = v7;
  v50 = a1;
  if (v18)
  {
    v49 = v5;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    v22 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v22 = 136643075;
    if (a1)
    {
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = v24;
    }

    else
    {
      v25 = 0xE400000000000000;
      v23 = 1701736270;
    }

    v26 = sub_10002510C(v23, v25, &v52);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2081;
    sub_100106A3C(v19, v20, v21, v7);
    v27 = String._bridgeToObjectiveC()();

    v28 = [v27 key];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10002510C(v29, v31, &v52);

    *(v22 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v16, v17, "reportResultsFailed: error: %{sensitive}s mode: %{private}s", v22, 0x16u);
    swift_arrayDestroy();

    a4 = v21;
    a3 = v20;
    a2 = v19;

    v6 = v49;
  }

  else
  {
  }

  v33 = IASignalWritingToolsResultsFailed;
  v34 = IAChannelWritingTools;
  sub_10000F384(v6 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v14);
  v35 = type metadata accessor for UUID();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v14, 1, v35) == 1)
  {
    sub_10000F500(v14, &unk_100262450, &qword_1001CFAA0);
    v37 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v36 + 8))(v14, v35);
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  v40 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  v41 = v40;
  v42 = sub_10000F174(a2, a3, a4, v51);
  v43 = IAPayloadKeyWritingToolsFailureReason;
  *(inited + 40) = v42;
  *(inited + 48) = v43;
  v44 = v42;
  v45 = v43;
  *(inited + 56) = sub_10000F560(v50);
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v38 sendSignal:v33 toChannel:v34 withNullableUniqueStringID:v37 withPayload:isa];
}

void sub_10000E064(void *a1)
{
  v2 = v1;
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-v5];
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F34C(v7, qword_100276F50);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138477827;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "reportResultsAccepted: interactionType: %{private}@", v11, 0xCu);
    sub_10000F500(v12, &unk_10025D580, &qword_1001CFA60);
  }

  v14 = IASignalWritingToolsResultsAccepted;
  v15 = IAChannelWritingTools;
  sub_10000F384(v2 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v6);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    sub_10000F500(v6, &unk_100262450, &qword_1001CFAA0);
    v18 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v17 + 8))(v6, v16);
    v18 = String._bridgeToObjectiveC()();
  }

  v19 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  v21 = IAPayloadKeyWritingToolsInteractionType;
  *(inited + 32) = IAPayloadKeyWritingToolsInteractionType;
  *(inited + 40) = v8;
  v22 = v8;
  v23 = v21;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v19 sendSignal:v14 toChannel:v15 withNullableUniqueStringID:v18 withPayload:isa];
}

void sub_10000E3E4(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F34C(v9, qword_100276F50);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138478083;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 1025;
    *(v13 + 14) = a2 & 1;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "reportPanelAppeared: interactionType: %{private}@ editable: %{BOOL,private}d", v13, 0x12u);
    sub_10000F500(v14, &unk_10025D580, &qword_1001CFA60);
  }

  v33 = IASignalWritingToolsPanelAppeared;
  v32 = IAChannelWritingTools;
  sub_10000F384(v3 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v8);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_10000F500(v8, &unk_100262450, &qword_1001CFAA0);
    v18 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v17 + 8))(v8, v16);
    v18 = String._bridgeToObjectiveC()();
  }

  v19 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  v21 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 16) = xmmword_1001CF9F0;
  v22 = IAPayloadKeyWritingToolsUI;
  *(inited + 40) = v10;
  *(inited + 48) = v22;
  v23 = IAPayloadValueWritingToolsUIPanel;
  *(inited + 56) = IAPayloadValueWritingToolsUIPanel;
  v24 = qword_10025A538;
  v25 = v10;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  if (v24 != -1)
  {
    swift_once();
  }

  v29 = qword_100276D48;
  *(inited + 64) = qword_100276D48;
  v30 = v29;
  *(inited + 72) = Bool._bridgeToObjectiveC()();
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v19 sendSignal:v33 toChannel:v32 withNullableUniqueStringID:v18 withPayload:isa];
}

void sub_10000E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a6;
  v43[1] = a1;
  v43[2] = a2;
  v12 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v12 - 8);
  v14 = v43 - v13;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000F34C(v15, qword_100276F50);
  sub_10000F3F4(a3, a4, a5, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  sub_10000F428(a3, a4, a5, v8);
  v18 = os_log_type_enabled(v16, v17);
  v45 = v8;
  v44 = a5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v43[0] = v7;
    v21 = v20;
    v46 = v20;
    *v19 = 136380675;
    sub_100106A3C(a3, a4, a5, v8);
    v22 = String._bridgeToObjectiveC()();

    v23 = [v22 key];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_10002510C(v24, v26, &v46);

    *(v19 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "reportHandoffRequested: mode: %{private}s", v19, 0xCu);
    sub_10000F4B4(v21);
    v7 = v43[0];
  }

  if (qword_10025A518 != -1)
  {
    swift_once();
  }

  v28 = qword_100276D28;
  v29 = IAChannelWritingTools;
  sub_10000F384(v7 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v14);
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_10000F500(v14, &unk_100262450, &qword_1001CFAA0);
    v32 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v31 + 8))(v14, v30);
    v32 = String._bridgeToObjectiveC()();
  }

  v33 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  if (qword_10025A528 != -1)
  {
    swift_once();
  }

  v35 = qword_100276D38;
  *(inited + 32) = qword_100276D38;
  v36 = v35;
  v37 = String._bridgeToObjectiveC()();
  v38 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 40) = v37;
  *(inited + 48) = v38;
  v39 = v38;
  v40 = sub_10000F174(a3, a4, v44, v45);
  *(inited + 56) = v40;
  v41 = v40;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v33 sendSignal:v28 toChannel:v29 withNullableUniqueStringID:v32 withPayload:isa];
}

void sub_10000ECC4()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F34C(v5, qword_100276F50);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "reportHandoffStarted", v8, 2u);
  }

  if (qword_10025A520 != -1)
  {
    swift_once();
  }

  v9 = qword_100276D30;
  v10 = IAChannelWritingTools;
  sub_10000F384(v1 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v4);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v4, 1, v11) == 1)
  {
    sub_10000F500(v4, &unk_100262450, &qword_1001CFAA0);
    v13 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v12 + 8))(v4, v11);
    v13 = String._bridgeToObjectiveC()();
  }

  [objc_opt_self() sendSignal:v9 toChannel:v10 withNullableUniqueStringID:v13 withPayload:0];
}

uint64_t sub_10000EF40()
{
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, &unk_100262450, &qword_1001CFAA0);
  v1 = OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WritingToolsAnalytics(uint64_t a1)
{
  result = qword_10025B050;
  if (!qword_10025B050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F050(uint64_t a1)
{
  sub_10000F11C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000F11C(uint64_t a1)
{
  if (!qword_10025B060)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10025B060);
    }
  }
}

uint64_t sub_10000F174(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (qword_10025A5F0 != -1)
      {
        swift_once();
      }

      v4 = &qword_100276E00;
    }

    else if (a3 | a2 | a1)
    {
      if (a1 != 1 || a3 | a2)
      {
        if (qword_10025A5E8 != -1)
        {
          swift_once();
        }

        v4 = &qword_100276DF8;
      }

      else
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsProofreadingReview;
      }
    }

    else
    {
      if (qword_10025A5E0 != -1)
      {
        swift_once();
      }

      v4 = &qword_100276DF0;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsOpenEndedTone;
      }

      else
      {
        if (qword_10025A5C8 != -1)
        {
          swift_once();
        }

        v4 = &qword_100276DD8;
      }
    }

    else
    {
      v8 = &IAPayloadValueWritingToolsFeatureDetailsBulletsTransform;
      if (a1 != 8)
      {
        v8 = &IAPayloadValueWritingToolsFeatureDetailsTablesTransform;
      }

      if (a1 == 7)
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsTakeawaysTransform;
      }

      else
      {
        v4 = v8;
      }
    }
  }

  else
  {
    v5 = &IAPayloadValueWritingToolsFeatureDetailsMagicRewrite;
    v6 = &IAPayloadValueWritingToolsFeatureDetailsConciseTone;
    v7 = &IAPayloadValueWritingToolsFeatureDetailsFriendlyTone;
    if (a1 != 3)
    {
      v7 = &IAPayloadValueWritingToolsFeatureDetailsProfessionalTone;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = &IAPayloadValueWritingToolsFeatureDetailsProofreadingReview;
    }

    if (a1 <= 1u)
    {
      v4 = v5;
    }

    else
    {
      v4 = v6;
    }
  }

  return *v4;
}

uint64_t sub_10000F34C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000F384(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F3F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    return sub_10000F414(a1, a2);
  }

  if (!a4)
  {
  }

  return a1;
}

uint64_t sub_10000F414(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10000F428(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    return sub_10000F448(a1, a2);
  }

  if (!a4)
  {
  }

  return a1;
}

uint64_t sub_10000F448(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10000F45C()
{
  result = qword_10025AF18;
  if (!qword_10025AF18)
  {
    type metadata accessor for IAPayloadKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AF18);
  }

  return result;
}

uint64_t sub_10000F4B4(void *a1)
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

uint64_t sub_10000F500(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000341C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_10000F560(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_10000341C(&qword_10025F410, &qword_1001D4370);
    sub_1000081B0(0, &qword_10025B1A8, NSError_ptr);
    if (swift_dynamicCast())
    {
      v1 = [v12 domain];
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v3;

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v5 == v4)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {
          if (qword_10025A628 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E38;
LABEL_11:
          v9 = v8;

          return v9;
        }
      }

      switch([v12 code])
      {
        case 1uLL:
          if (qword_10025A638 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E48;
          break;
        case 2uLL:
          if (qword_10025A640 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E50;
          break;
        case 3uLL:
          if (qword_10025A648 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E58;
          break;
        case 4uLL:
          if (qword_10025A650 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E60;
          break;
        case 5uLL:
          if (qword_10025A658 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E68;
          break;
        case 6uLL:
          if (qword_10025A660 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E70;
          break;
        case 7uLL:
          if (qword_10025A668 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E78;
          break;
        case 8uLL:
          if (qword_10025A670 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E80;
          break;
        case 9uLL:
          if (qword_10025A678 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E88;
          break;
        case 0xAuLL:
          if (qword_10025A680 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E90;
          break;
        case 0xBuLL:
          if (qword_10025A688 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E98;
          break;
        case 0xCuLL:
          if (qword_10025A690 != -1)
          {
            swift_once();
          }

          v8 = qword_100276EA0;
          break;
        case 0xDuLL:
          if (qword_10025A698 != -1)
          {
            swift_once();
          }

          v8 = qword_100276EA8;
          break;
        case 0xEuLL:
          if (qword_10025A6A0 != -1)
          {
            swift_once();
          }

          v8 = qword_100276EB0;
          break;
        case 0xFuLL:
          if (qword_10025A6A8 != -1)
          {
            swift_once();
          }

          v8 = qword_100276EB8;
          break;
        default:
          if (qword_10025A630 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E40;
          break;
      }

      goto LABEL_11;
    }
  }

  if (qword_10025A628 != -1)
  {
    swift_once();
  }

  v11 = qword_100276E38;

  return v11;
}

uint64_t property wrapper backing initializer of WritingToolsView.navigationPath(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(a1, v2);
}

uint64_t property wrapper backing initializer of WritingToolsView.analyticsInstance(uint64_t a1)
{
  sub_1000081F8(a1, v3, &unk_10025B1C0, &unk_1001CFA90);
  sub_10000341C(&unk_10025B1C0, &unk_1001CFA90);
  State.init(wrappedValue:)();
  return sub_10000F500(a1, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t property wrapper backing initializer of WritingToolsView.writingToolsModel(uint64_t a1)
{
  type metadata accessor for WritingToolsModel(0);
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);

  return Bindable<A>.init(wrappedValue:)();
}

uint64_t property wrapper backing initializer of WritingToolsView.proofreadingModel(uint64_t a1)
{
  type metadata accessor for ProofreadingModel(0);
  State.init(wrappedValue:)();
  return v2;
}

uint64_t property wrapper backing initializer of WritingToolsView.unifiedIconWidth(uint64_t a1, char a2)
{
  sub_10000341C(&unk_10025B1D0, &qword_1001D31D0);
  State.init(wrappedValue:)();
  return v3;
}

uint64_t sub_10000FE5C()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v6, 0);
    (*(v3 + 8))(v5, v2);
    v6 = v16;
  }

  if (v6)
  {
    v9 = sub_10016FEDC();

    v10 = (v1 + *(type metadata accessor for WritingToolsView(0) + 100));
    v11 = *v10;
    v12 = *(v10 + 1);
    LOBYTE(v10) = v10[16];
    LOBYTE(v16) = v11;
    v17 = v12;
    v18 = v10;
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    v13 = v15[7] & v9;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t WritingToolsView.init(writingToolsDelegate:writingToolsModel:hostAppAuditToken:prompt:smartReplyConfiguration:isForEditableContent:wantsInlineEditing:allowedResultOptions:includesTextListMarkers:rewritingModel:proofreadingModel:analyticsUUID:bundleID:sceneID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  LODWORD(v18) = a8;
  v100 = a7;
  v95 = a5;
  v96 = a6;
  v94 = a4;
  v93 = a3;
  v101 = a2;
  v102 = a14;
  v104 = a12;
  v98 = a10;
  v21 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v21 - 8);
  v97 = &v85[-v22];
  v23 = type metadata accessor for NavigationPath();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v85[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v29 = &v85[-v28];
  type metadata accessor for CommonUIManager(0);
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  *a9 = Environment.init<A>(_:)();
  *(a9 + 8) = v30 & 1;
  type metadata accessor for PresentationModel(0);
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *(a9 + 16) = Environment.init<A>(_:)();
  *(a9 + 24) = v31 & 1;
  v32 = type metadata accessor for WritingToolsView(0);
  v33 = v32[6];
  *(a9 + v33) = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectWeakInit();
  NavigationPath.init()();
  (*(v24 + 16))(v27, v29, v23);
  State.init(wrappedValue:)();
  (*(v24 + 8))(v29, v23);
  v34 = a9 + v32[18];
  v105 = 0;
  v106 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v35 = v108;
  *v34 = v107;
  *(v34 + 16) = v35;
  v36 = v32[19];
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  sub_1000081F8(&v107, &v105, &unk_10025B1C0, &unk_1001CFA90);
  v37 = sub_10000341C(&unk_10025B1C0, &unk_1001CFA90);
  v92 = v36;
  v91 = v37;
  State.init(wrappedValue:)();
  sub_10000F500(&v107, &unk_10025B1C0, &unk_1001CFA90);
  v38 = a9 + v32[22];
  v105 = 0;
  LOBYTE(v106) = 1;
  sub_10000341C(&unk_10025B1D0, &qword_1001D31D0);
  State.init(wrappedValue:)();
  v39 = BYTE8(v107);
  v40 = v108;
  *v38 = v107;
  *(v38 + 8) = v39;
  *(v38 + 16) = v40;
  v41 = a9 + v32[23];
  LOBYTE(v105) = 0;
  State.init(wrappedValue:)();
  v42 = *(&v107 + 1);
  *v41 = v107;
  *(v41 + 8) = v42;
  v43 = v32[24];
  *(a9 + v43) = swift_getKeyPath();
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
  swift_storeEnumTagMultiPayload();
  v44 = a9 + v32[25];
  *v44 = FocusState.init<>()() & 1;
  *(v44 + 8) = v45;
  *(v44 + 16) = v46 & 1;
  v103 = a1;
  if (a1)
  {
    v47 = 7562617;
  }

  else
  {
    v47 = 28526;
  }

  if (a1)
  {
    v48 = 0xE300000000000000;
  }

  else
  {
    v48 = 0xE200000000000000;
  }

  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v89 = a17;
  v88 = a16;
  v87 = a15;
  v99 = a13;
  v49 = a11;
  v50 = type metadata accessor for Logger();
  sub_10000F34C(v50, qword_100276F20);
  v51 = static os_log_type_t.debug.getter();

  v52 = Logger.logObject.getter();

  v53 = os_log_type_enabled(v52, v51);
  v90 = v18;
  if (v53)
  {
    v18 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v86 = a11;
    v55 = v54;
    *&v107 = v54;
    *v18 = 136315138;
    v56 = sub_10002510C(v47, v48, &v107);

    *(v18 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v52, v51, "Initializing WritingToolsView initializing QuestionnaireView with delegate: %s", v18, 0xCu);
    sub_10000F4B4(v55);
    v49 = v86;

    LOBYTE(v18) = v90;
  }

  else
  {
  }

  swift_unknownObjectWeakAssign();
  type metadata accessor for WritingToolsModel(0);
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);

  Bindable<A>.init(wrappedValue:)();
  *(a9 + v32[8]) = v93;
  v57 = (a9 + v32[9]);
  v59 = v95;
  v58 = v96;
  *v57 = v94;
  v57[1] = v59;
  *(a9 + v32[10]) = v58;
  v60 = v32[11];
  LODWORD(v96) = v100 & 1;
  *(a9 + v60) = v100 & 1;
  v61 = v32[12];
  LODWORD(v95) = v18 & 1;
  *(a9 + v61) = v18 & 1;
  v62 = v98;
  *(a9 + v32[13]) = v98;
  *(a9 + v32[14]) = v49 & 1;
  v63 = (a9 + v32[21]);
  v105 = v99;
  type metadata accessor for ProofreadingModel(0);

  State.init(wrappedValue:)();
  v64 = *(&v107 + 1);
  *v63 = v107;
  v63[1] = v64;
  v65 = v97;
  sub_1000081F8(v102, v97, &unk_100262450, &qword_1001CFAA0);
  v66 = type metadata accessor for WritingToolsAnalytics(0);
  swift_allocObject();
  v67 = sub_100009B2C(v65);
  *(&v108 + 1) = v66;
  v109 = &off_10024B270;
  *&v107 = v67;
  sub_10000F500(a9 + v92, &unk_10025B200, &qword_1001CFB18);
  sub_1000081F8(&v107, &v105, &unk_10025B1C0, &unk_1001CFA90);
  State.init(wrappedValue:)();
  sub_10000F500(&v107, &unk_10025B1C0, &unk_1001CFA90);
  v68 = (a9 + v32[15]);
  v69 = v88;
  *v68 = v87;
  v68[1] = v69;
  v70 = (a9 + v32[16]);
  *v70 = v89;
  v70[1] = a18;
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();

  sub_1000A73A0(v71, v72);

  Bindable.wrappedValue.getter();
  v73 = v107;
  swift_getKeyPath();
  *&v107 = v73;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = *(v73 + 32);

  if (*(v74 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions) == v62)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v85[-16] = v74;
    *&v85[-8] = v76;
    *&v107 = v74;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    LOBYTE(v18) = v90;
  }

  Bindable.wrappedValue.getter();
  v77 = v107;
  swift_getKeyPath();
  *&v107 = v77;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v78 = *(v77 + 32);

  if (*(v78 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) == (v18 & 1))
  {
    *(v78 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) = v95;
  }

  else
  {
    v79 = swift_getKeyPath();
    __chkstk_darwin(v79);
    *&v85[-16] = v78;
    v85[-8] = v95;
    *&v107 = v78;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  Bindable.wrappedValue.getter();
  v80 = v107;
  swift_getKeyPath();
  *&v107 = v80;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v81 = *(v80 + 32);

  v82 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent;
  if (*(v81 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) == (v100 & 1))
  {
    sub_10000F500(v102, &unk_100262450, &qword_1001CFAA0);

    swift_unknownObjectRelease();
    *(v81 + v82) = v96;
  }

  else
  {
    v83 = swift_getKeyPath();
    __chkstk_darwin(v83);
    *&v85[-16] = v81;
    v85[-8] = v96;
    *&v107 = v81;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();

    sub_10000F500(v102, &unk_100262450, &qword_1001CFAA0);
  }
}

uint64_t sub_100010CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v70 = sub_10000341C(&qword_10025B2A8, &qword_1001CFC38);
  __chkstk_darwin(v70);
  v71 = &v57 - v3;
  v4 = sub_10000341C(&qword_10025B650, &qword_1001D0080);
  v66 = *(v4 - 8);
  v67 = v4;
  __chkstk_darwin(v4);
  v65 = &v57 - v5;
  v6 = type metadata accessor for ProofreadingView(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WritingToolsView(0);
  v11 = (v1 + *(v10 + 84));
  v13 = *v11;
  v12 = v11[1];
  v73 = v13;
  v74 = v12;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v68 = v72;
  v14 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - v15;
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v17 = State.projectedValue.getter();
  v18 = *(v10 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002631C(v2, &v57 - v20);
  v21 = *(v18 + 80);
  v22 = swift_allocObject();
  v61 = type metadata accessor for WritingToolsView;
  v63 = (v21 + 16) & ~v21;
  sub_100029074(&v57 - v20, v22 + v63, type metadata accessor for WritingToolsView);
  type metadata accessor for CommonUIManager(0);
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  *v9 = Environment.init<A>(_:)();
  v9[8] = v23 & 1;
  v24 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
  __chkstk_darwin(v24 - 8);
  v26 = &v57 - v25;
  v27 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v28 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  v72 = FBKEvaluationController.init(subject:)();
  State.init(wrappedValue:)();
  v29 = v74;
  *(v9 + 4) = v73;
  *(v9 + 5) = v29;
  AccessibilityFocusState.init<>()();
  sub_1000081F8(v16, &v9[*(v7 + 36)], &qword_1002632E0, &qword_1001D11A0);
  v72 = v68;
  type metadata accessor for ProofreadingModel(0);
  State.init(wrappedValue:)();
  v30 = sub_10000F500(v16, &qword_1002632E0, &qword_1001D11A0);
  v31 = v74;
  *(v9 + 2) = v73;
  *(v9 + 3) = v31;
  v32 = &v9[*(v7 + 44)];
  *v32 = sub_1000285A4;
  *(v32 + 1) = v22;
  __chkstk_darwin(v30);
  v33 = &v57 - v20;
  v68 = v2;
  sub_10002631C(v2, v33);
  type metadata accessor for MainActor();
  v34 = static MainActor.shared.getter();
  v64 = v19;
  v62 = v21;
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = &protocol witness table for MainActor;
  sub_100029074(v33, v35 + ((v21 + 32) & ~v21), v61);
  v36 = type metadata accessor for TaskPriority();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v57 - v39;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v60 = type metadata accessor for _TaskModifier2();
    v61 = &v57;
    v59 = *(v60 - 8);
    __chkstk_darwin(v60);
    v58 = &v57 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = 0;
    v74 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v73 = 0xD000000000000039;
    v74 = 0x80000001001E38C0;
    v72 = 106;
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    __chkstk_darwin(v43);
    (*(v37 + 16))(&v57 - v39, &v57 - v39, v36);
    v44 = v58;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v37 + 8))(v40, v36);
    v45 = v65;
    sub_100029074(v9, v65, type metadata accessor for ProofreadingView);
    v46 = sub_10000341C(&qword_10025A938, &qword_1001CE118);
    (*(v59 + 32))(v45 + *(v46 + 36), v44, v60);
  }

  else
  {
    v47 = sub_10000341C(&qword_10025A940, &unk_1001CE120);
    v48 = v36;
    v45 = v65;
    v49 = (v65 + *(v47 + 36));
    v50 = type metadata accessor for _TaskModifier();
    (*(v37 + 32))(&v49[*(v50 + 20)], &v57 - v39, v48);
    *v49 = &unk_1001D0090;
    *(v49 + 1) = v35;
    sub_100029074(v9, v45, type metadata accessor for ProofreadingView);
  }

  v51 = v71;
  v52 = (*(v66 + 32))(v71, v45, v67);
  v53 = v64;
  __chkstk_darwin(v52);
  sub_10002631C(v68, &v57 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = v63;
  v55 = swift_allocObject();
  sub_100029074(&v57 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), v55 + v54, type metadata accessor for WritingToolsView);
  sub_10000341C(&qword_10025B2B0, &qword_1001CFC40);
  sub_100025928();
  sub_100025A68();
  sub_100025ABC();
  View.navigationDestination<A, B>(for:destination:)();

  return sub_10000F500(v51, &qword_10025B2A8, &qword_1001CFC38);
}

void sub_10001160C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v54 = a4;
  v55 = a5;
  v53 = a3;
  v56 = a6;
  v9 = a6;
  v10 = type metadata accessor for WritingToolsView(0);
  v50 = *(v10 - 8);
  __chkstk_darwin(v10);
  v51 = v11;
  v52 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v12 - 8);
  v57 = v47 - v13;
  v14 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v14 - 8);
  v49 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v9)
  {
    qword_100277028 = a1;
    qword_100277030 = a2;

    qword_10025E340 = 2;
    byte_10025E348 = 0;
  }

  v58 = a1;
  v59 = a2;
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v16 = v61[0];
  swift_getKeyPath();
  v61[0] = v16;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v16 + 32);

  swift_getKeyPath();
  v61[0] = v17;
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);

  if (v18 != 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v23 = Strong;
    if ([Strong respondsToSelector:"enrollmentBegan"])
    {
      [v23 enrollmentBegan];
    }

    goto LABEL_9;
  }

  v47[1] = v10;
  v48 = v6;
  Bindable.wrappedValue.getter();
  v19 = v61[0];
  swift_getKeyPath();
  v61[0] = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v19 + 32);

  swift_getKeyPath();
  v61[0] = v20;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v20 + v21, v61, &unk_10025B1C0, &unk_1001CFA90);

  if (v62)
  {
    sub_100028458(v61, v60);
    sub_10000F500(v61, &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v60, v60[3]);
    sub_10000ECC4();
    sub_10000F4B4(v60);
  }

  else
  {
    sub_10000F500(v61, &unk_10025B1C0, &unk_1001CFA90);
  }

  v24 = v48;
  Bindable.wrappedValue.getter();
  v25 = v61[0];
  swift_getKeyPath();
  v61[0] = v25;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(v25 + 32);

  swift_getKeyPath();
  v61[0] = v26;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100170300();

  v27 = [objc_opt_self() currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if (v28 != 1)
  {
    v61[0] = v58;
    v61[1] = v59;
    v61[2] = 1;
    LOBYTE(v62) = 1;

    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.wrappedValue.getter();
    sub_100025A68();
    NavigationPath.append<A>(_:)();

    State.wrappedValue.setter();
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v57, 1, 1, v32);
    v33 = v24;
    v34 = v52;
    sub_10002631C(v33, v52);
    type metadata accessor for MainActor();

    v35 = v53;
    v36 = v54;
    v37 = v55;
    v38 = v56;
    sub_10002879C(v53, v54, v55, v56);
    v39 = static MainActor.shared.getter();
    v40 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v41 = (v40 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v40 + v51 + 39) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v39;
    *(v43 + 24) = &protocol witness table for MainActor;
    sub_100029074(v34, v43 + v40, type metadata accessor for WritingToolsView);
    v44 = v43 + v41;
    *v44 = v35;
    *(v44 + 8) = v36;
    *(v44 + 16) = v37;
    *(v44 + 24) = v38;
    v45 = (v43 + v42);
    v46 = v59;
    *v45 = v58;
    v45[1] = v46;
    sub_10015C9C8(0, 0, v57, &unk_1001D0120, v43);

    return;
  }

  v29 = swift_unknownObjectWeakLoadStrong();
  v30 = v59;
  if (!v29)
  {
    return;
  }

  v31 = v29;
  if (([v29 respondsToSelector:"handoffFromUCBFromTool:withPrompt:"] & 1) == 0)
  {
LABEL_9:
    swift_unknownObjectRelease();
    return;
  }

  if (v30)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  [v31 handoffFromUCBFromTool:2 withPrompt:v30];
  swift_unknownObjectRelease();
}

uint64_t sub_100011DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100011E78, v5, v4);
}

uint64_t sub_100011E78()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for WritingToolsView(0) + 84));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100011F4C;

  return sub_1001A2C88();
}

uint64_t sub_100011F4C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100012090, v3, v2);
}

uint64_t sub_100012090(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000120F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v77 = sub_10000341C(&qword_10025B348, &qword_1001CFC78);
  __chkstk_darwin(v77);
  v78 = &v66 - v3;
  v4 = sub_10000341C(&qword_10025B670, &qword_1001D0128);
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v73 = &v66 - v5;
  v6 = type metadata accessor for RewritingView(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v11 = v80;
  swift_getKeyPath();
  v80 = v11;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v76 = *(v11 + 24);

  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.projectedValue.getter();
  v12 = v1 + *(v10 + 92);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v83) = v13;
  v84 = v14;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  v15 = State.projectedValue.getter();
  v70 = v81;
  v71 = v80;
  LODWORD(v69) = v82;
  v16 = *(v10 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002631C(v2, &v66 - v18);
  v19 = *(v16 + 80);
  v20 = (v19 + 16) & ~v19;
  v67 = swift_allocObject();
  v68 = type metadata accessor for WritingToolsView;
  v21 = sub_100029074(&v66 - v18, v67 + v20, type metadata accessor for WritingToolsView);
  __chkstk_darwin(v21);
  sub_10002631C(v2, &v66 - v18);
  v22 = swift_allocObject();
  v72 = v20;
  v23 = v22 + v20;
  v24 = v22;
  sub_100029074(&v66 - v18, v23, type metadata accessor for WritingToolsView);
  type metadata accessor for CommonUIManager(0);
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  *v9 = Environment.init<A>(_:)();
  v9[8] = v25 & 1;
  type metadata accessor for WritingToolsModel(0);
  *(v9 + 2) = Environment.init<A>(_:)();
  v9[24] = v26 & 1;
  type metadata accessor for PresentationModel(0);
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *(v9 + 4) = Environment.init<A>(_:)();
  v9[40] = v27 & 1;
  LOBYTE(v83) = 0;
  State.init(wrappedValue:)();
  v28 = v81;
  v9[56] = v80;
  *(v9 + 8) = v28;
  v29 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
  __chkstk_darwin(v29 - 8);
  v31 = &v66 - v30;
  v32 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  v33 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  v83 = FBKEvaluationController.init(subject:)();
  State.init(wrappedValue:)();
  v34 = v81;
  *(v9 + 9) = v80;
  *(v9 + 10) = v34;
  v35 = &v9[v7[13]];
  v36 = FocusState.init<>()();
  *v35 = v36 & 1;
  *(v35 + 1) = v37;
  v35[16] = v38 & 1;
  *(v9 + 6) = v76;
  v39 = &v9[v7[14]];
  v40 = v70;
  *v39 = v71;
  *(v39 + 1) = v40;
  v39[16] = v69;
  v41 = &v9[v7[15]];
  v42 = v67;
  *v41 = sub_100028CD0;
  *(v41 + 1) = v42;
  v43 = &v9[v7[16]];
  *v43 = sub_10002B2AC;
  *(v43 + 1) = v24;
  __chkstk_darwin(v36);
  v44 = &v66 - v18;
  v76 = v2;
  sub_10002631C(v2, &v66 - v18);
  type metadata accessor for MainActor();
  v45 = static MainActor.shared.getter();
  v71 = v19;
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = &protocol witness table for MainActor;
  sub_100029074(v44, v46 + ((v19 + 32) & ~v19), v68);
  v47 = type metadata accessor for TaskPriority();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v51 = &v66 - v50;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v68 = type metadata accessor for _TaskModifier2();
    v69 = &v66;
    v67 = *(v68 - 1);
    __chkstk_darwin(v68);
    v66 = &v66 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    v80 = 0;
    v81 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v80 = 0xD000000000000039;
    v81 = 0x80000001001E38C0;
    v83 = 131;
    v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v17;
    String.append(_:)(v53);

    __chkstk_darwin(v54);
    (*(v48 + 16))(&v66 - v50, &v66 - v50, v47);
    v55 = v66;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    v17 = v70;
    (*(v48 + 8))(v51, v47);
    v56 = v73;
    sub_100029074(v9, v73, type metadata accessor for RewritingView);
    v57 = sub_10000341C(&qword_10025A948, &unk_1001D0140);
    (*(v67 + 32))(v56 + *(v57 + 36), v55, v68);
  }

  else
  {
    v58 = sub_10000341C(&unk_10025A950, &qword_1001CE130);
    v56 = v73;
    v59 = (v73 + *(v58 + 36));
    v60 = type metadata accessor for _TaskModifier();
    (*(v48 + 32))(&v59[*(v60 + 20)], &v66 - v50, v47);
    *v59 = &unk_1001D0138;
    *(v59 + 1) = v46;
    sub_100029074(v9, v56, type metadata accessor for RewritingView);
  }

  v61 = v78;
  v62 = (*(v74 + 32))(v78, v56, v75);
  __chkstk_darwin(v62);
  sub_10002631C(v76, &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = v72;
  v64 = swift_allocObject();
  sub_100029074(&v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v64 + v63, type metadata accessor for WritingToolsView);
  sub_10000341C(&qword_10025B2B0, &qword_1001CFC40);
  sub_100025F58();
  sub_100025A68();
  sub_100025ABC();
  View.navigationDestination<A, B>(for:destination:)();

  return sub_10000F500(v61, &qword_10025B348, &qword_1001CFC78);
}

uint64_t sub_100012B9C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WritingToolsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v12 = v19;
  swift_getKeyPath();
  v19 = v12;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100036534(5, a1, a2, 0);

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_10002631C(v2, v8);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_100029074(v8, v16 + v15, type metadata accessor for WritingToolsView);
  sub_10015C9C8(0, 0, v11, &unk_1001D0158, v16);
}

uint64_t sub_100012E54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v9 + 48);
  v5 = *(v9 + 56);
  v6 = *(v9 + 64);
  v7 = *(v9 + 72);
  sub_10000F3F4(v4, v5, v6, *(v9 + 72));

  sub_10001160C(a1, a2, v4, v5, v6, v7);
  return sub_10000F428(v4, v5, v6, v7);
}

uint64_t sub_100012F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100013034, v5, v4);
}

uint64_t sub_100013034()
{
  type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v1 = v0[2];
  swift_getKeyPath();
  v0[3] = v1;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[8] = *(v1 + 24);

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100013188;

  return sub_1000B6880(1);
}

uint64_t sub_100013188()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10002B2BC, v3, v2);
}

uint64_t sub_1000132CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_100013400(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2, a4);
  type metadata accessor for WritingToolsView(0);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  type metadata accessor for PresentationModel(0);
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  v5 = Environment.init<A>(_:)();
  v7 = v6;
  v8 = static Alignment.center.getter();
  v10 = v9;
  result = sub_10000341C(&qword_10025B2B0, &qword_1001CFC40);
  v12 = a4 + *(result + 36);
  *v12 = v5;
  *(v12 + 8) = v7 & 1;
  *(v12 + 9) = 0;
  *(v12 + 10) = v13;
  *(v12 + 16) = v8;
  *(v12 + 24) = v10;
  return result;
}

uint64_t sub_100013400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v58 = a7;
  v11 = a4;
  v56 = sub_10000341C(&qword_10025B668, &qword_1001D0098);
  __chkstk_darwin(v56);
  v57 = &v46 - v12;
  v13 = type metadata accessor for CompositionView(0);
  __chkstk_darwin(v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10000341C(&unk_10025B300, &qword_1001CFC58);
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = &v46 - v16;
  v55 = sub_10000341C(&qword_10025B5F8, &qword_1001CFFD0);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v46 - v17;
  if (v11 == 1)
  {
    v18 = type metadata accessor for WritingToolsView(0);
    sub_10000F414(a1, a2);
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.projectedValue.getter();
    v19 = (a5 + *(v18 + 92));
    v20 = *v19;
    v21 = *(v19 + 1);
    v63 = v20;
    v64 = v21;
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.projectedValue.getter();
    v46 = a5;
    v22 = a2;
    v24 = v59;
    v23 = v60;
    v47 = v61;
    v25 = type metadata accessor for CompositionModel(0);
    v26 = sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    v48 = v25;
    v49 = v26;
    *(v15 + 3) = Environment.init<A>(_:)();
    v15[32] = v27 & 1;
    type metadata accessor for CommonUIManager(0);
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
    *(v15 + 5) = Environment.init<A>(_:)();
    v15[48] = v28 & 1;
    v29 = &v15[*(v13 + 36)];
    *v29 = FocusState.init<>()() & 1;
    *(v29 + 1) = v30;
    v29[16] = v31 & 1;
    *v15 = a1;
    *(v15 + 1) = v22;
    v15[16] = a3;
    v32 = &v15[*(v13 + 32)];
    *v32 = v24;
    *(v32 + 1) = v23;
    v32[16] = v47;
    sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
    Bindable.wrappedValue.getter();
    v33 = type metadata accessor for WritingToolsModel(0);
    v34 = sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView, &unk_1001D93A8);
    v35 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    v36 = v50;
    View.environment<A>(_:)();

    sub_10002B070(v15, type metadata accessor for CompositionView);
    Bindable.wrappedValue.getter();
    v37 = v59;
    swift_getKeyPath();
    v59 = v37;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v59 = v13;
    v60 = v33;
    v61 = v34;
    v62 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v52;
    v40 = v54;
    v42 = v48;
    v41 = v49;
    View.environment<A>(_:)();

    (*(v51 + 8))(v36, v40);
    v43 = v53;
    v44 = v55;
    (*(v53 + 16))(v57, v39, v55);
    swift_storeEnumTagMultiPayload();
    v59 = v40;
    v60 = v42;
    v61 = OpaqueTypeConformance2;
    v62 = v41;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v43 + 8))(v39, v44);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100013A50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_10000341C(&qword_10025B678, &qword_1001D0160);
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v51 - v4;
  v5 = type metadata accessor for ModelResponseView(0);
  v6 = (v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v10 = v61;
  swift_getKeyPath();
  v61 = v10;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = *(v10 + 24);

  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v11 = State.projectedValue.getter();
  v12 = *(v9 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002631C(v2, &v51 - v14);
  v15 = *(v12 + 80);
  v16 = swift_allocObject();
  v54 = type metadata accessor for WritingToolsView;
  sub_100029074(&v51 - v14, v16 + ((v15 + 16) & ~v15), type metadata accessor for WritingToolsView);
  *v8 = swift_getKeyPath();
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  swift_storeEnumTagMultiPayload();
  v17 = v8 + v6[7];
  type metadata accessor for CommonUIManager(0);
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  *v17 = Environment.init<A>(_:)();
  v17[8] = v18 & 1;
  v19 = v8 + v6[8];
  type metadata accessor for PresentationModel(0);
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *v19 = Environment.init<A>(_:)();
  v19[8] = v20 & 1;
  v21 = v8 + v6[10];
  LOBYTE(v60) = 0;
  State.init(wrappedValue:)();
  v22 = v62;
  *v21 = v61;
  *(v21 + 1) = v22;
  v23 = (v8 + v6[11]);
  v24 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
  __chkstk_darwin(v24 - 8);
  v26 = &v51 - v25;
  v27 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v28 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  v60 = FBKEvaluationController.init(subject:)();
  State.init(wrappedValue:)();
  v29 = v62;
  *v23 = v61;
  v23[1] = v29;
  v30 = (v8 + v6[9]);
  v60 = v55;
  type metadata accessor for RewritingModel(0);
  v31 = State.init(wrappedValue:)();
  v32 = v62;
  *v30 = v61;
  v30[1] = v32;
  v33 = (v8 + v6[13]);
  *v33 = sub_10002B2AC;
  v33[1] = v16;
  __chkstk_darwin(v31);
  sub_10002631C(v2, &v51 - v14);
  type metadata accessor for MainActor();
  v34 = static MainActor.shared.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = &protocol witness table for MainActor;
  sub_100029074(&v51 - v14, v35 + ((v15 + 32) & ~v15), v54);
  v36 = type metadata accessor for TaskPriority();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v51 - v39;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v54 = type metadata accessor for _TaskModifier2();
    v55 = &v51;
    v53 = *(v54 - 1);
    __chkstk_darwin(v54);
    v52 = &v51 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v61 = 0xD000000000000039;
    v62 = 0x80000001001E38C0;
    v60 = 154;
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    __chkstk_darwin(v43);
    (*(v37 + 16))(&v51 - v39, &v51 - v39, v36);
    v44 = v52;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v37 + 8))(v40, v36);
    v45 = v56;
    sub_100029074(v8, v56, type metadata accessor for ModelResponseView);
    v46 = sub_10000341C(&unk_10025B680, &qword_1001CE138);
    (*(v53 + 32))(v45 + *(v46 + 36), v44, v54);
  }

  else
  {
    v47 = sub_10000341C(&qword_10025A960, &unk_1001CE140);
    v45 = v56;
    v48 = (v56 + *(v47 + 36));
    v49 = type metadata accessor for _TaskModifier();
    (*(v37 + 32))(&v48[*(v49 + 20)], &v51 - v39, v36);
    *v48 = &unk_1001D0170;
    *(v48 + 1) = v35;
    sub_100029074(v8, v45, type metadata accessor for ModelResponseView);
  }

  return (*(v57 + 32))(v59, v45, v58);
}

uint64_t sub_1000142DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100014374, v5, v4);
}

uint64_t sub_100014374()
{
  type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v1 = v0[2];
  swift_getKeyPath();
  v0[3] = v1;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[8] = *(v1 + 24);

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1000144C8;

  return sub_1000B6880(1);
}

uint64_t sub_1000144C8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10001460C, v3, v2);
}

uint64_t sub_10001460C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t WritingToolsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v104 = a1;
  v103 = type metadata accessor for NavigationPath();
  v107 = *(v103 - 8);
  __chkstk_darwin(v103);
  v94 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for WritingToolsBehavior();
  v93 = *(v105 - 8);
  __chkstk_darwin(v105);
  v89 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WritingToolsView(0);
  v114 = *(v5 - 8);
  __chkstk_darwin(v5);
  v108 = v6;
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for EnvironmentValues();
  v8 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  __chkstk_darwin(v10 - 8);
  v11 = sub_10000341C(&qword_10025B220, &qword_1001CFBD0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v79 - v13;
  v110 = sub_10000341C(&qword_10025B228, &qword_1001CFBD8);
  __chkstk_darwin(v110);
  v83 = &v79 - v15;
  v87 = sub_10000341C(&qword_10025B230, &qword_1001CFBE0);
  __chkstk_darwin(v87);
  v84 = &v79 - v16;
  v88 = sub_10000341C(&qword_10025B238, &qword_1001CFBE8);
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v79 - v17;
  v91 = sub_10000341C(&qword_10025B240, &qword_1001CFBF0);
  __chkstk_darwin(v91);
  v90 = &v79 - v18;
  v95 = sub_10000341C(&qword_10025B248, &qword_1001CFBF8);
  v92 = *(v95 - 8);
  __chkstk_darwin(v95);
  v109 = &v79 - v19;
  v99 = sub_10000341C(&qword_10025B250, &qword_1001CFC00);
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v79 - v20;
  v101 = sub_10000341C(&qword_10025B258, &qword_1001CFC08);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v79 - v21;
  v22 = (v1 + *(v5 + 68));
  v112 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v113 = v22;
  State.projectedValue.getter();
  v115 = v2;
  sub_10000341C(&qword_10025B268, &qword_1001CFC18);
  sub_100025648();
  NavigationStack.init<>(path:root:)();
  v102 = v5;
  v23 = v2 + *(v5 + 92);
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v120) = v24;
  *(&v120 + 1) = v25;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  LOBYTE(v5) = v116;
  type metadata accessor for PresentationModel(0);
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  v26 = Environment.init<A>(_:)();
  v28 = v27;
  v29 = static Alignment.center.getter();
  v30 = *(v12 + 44);
  v111 = v14;
  v31 = &v14[v30];
  *v31 = v26;
  v31[8] = v28 & 1;
  v31[9] = 0;
  v31[10] = v5;
  *(v31 + 2) = v29;
  *(v31 + 3) = v32;
  v33 = *(v2 + 16);
  LOBYTE(v26) = *(v2 + 24);

  if ((v26 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v80;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v33, 0);
    (*(v8 + 8))(v35, v81);
    v33 = v120;
  }

  if (v33)
  {
    swift_getKeyPath();
    *&v120 = v33;
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = v83;
  sub_10002A894(v111, v83, &qword_10025B220, &qword_1001CFBD0);
  v37 = (v36 + *(v110 + 36));
  v38 = v125;
  v37[4] = v124;
  v37[5] = v38;
  v37[6] = v126;
  v39 = v121;
  *v37 = v120;
  v37[1] = v39;
  v40 = v123;
  v37[2] = v122;
  v37[3] = v40;
  KeyPath = swift_getKeyPath();
  sub_10002631C(v2, v7);
  v111 = *(v114 + 80);
  v42 = (v111 + 16) & ~v111;
  v43 = swift_allocObject();
  v114 = type metadata accessor for WritingToolsView;
  sub_100029074(v7, v43 + v42, type metadata accessor for WritingToolsView);
  v44 = v84;
  sub_10002A894(v36, v84, &qword_10025B228, &qword_1001CFBD8);
  v45 = (v44 + *(v87 + 36));
  *v45 = KeyPath;
  v45[1] = sub_100026384;
  v45[2] = v43;
  v46 = v89;
  static WritingToolsBehavior.disabled.getter();
  sub_100026404();
  v47 = v85;
  View.writingToolsBehavior(_:)();
  (*(v93 + 8))(v46, v105);
  sub_10000F500(v44, &qword_10025B230, &qword_1001CFBE0);
  v48 = v90;
  (*(v86 + 32))(v90, v47, v88);
  v49 = v91;
  v50 = (v48 + *(v91 + 36));
  *v50 = sub_100021074;
  v50[1] = 0;
  v50[2] = 0;
  v50[3] = 0;
  v51 = v94;
  State.wrappedValue.getter();
  sub_10002631C(v2, v7);
  v110 = v42;
  v52 = swift_allocObject();
  sub_100029074(v7, v52 + v42, v114);
  v53 = sub_1000269BC();
  v105 = sub_10002B028(&qword_10025B3E0, &type metadata accessor for NavigationPath, &protocol conformance descriptor for NavigationPath);
  v54 = v103;
  View.onChange<A>(of:initial:_:)();

  v55 = v2;
  v106 = v2;
  v56 = v54;
  v107 = *(v107 + 8);
  (v107)(v51, v54);
  sub_10000F500(v48, &qword_10025B240, &qword_1001CFBF0);
  State.wrappedValue.getter();
  v82 = v7;
  sub_10002631C(v55, v7);
  v57 = v110;
  v58 = swift_allocObject();
  sub_100029074(v7, v58 + v57, v114);
  v116 = v49;
  v117 = v54;
  v118 = v53;
  v119 = v105;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v96;
  v61 = v95;
  v62 = v109;
  View.onChange<A>(of:initial:_:)();

  (v107)(v51, v54);
  (*(v92 + 8))(v62, v61);
  State.wrappedValue.getter();
  v63 = v82;
  sub_10002631C(v106, v82);
  v64 = v110;
  v65 = swift_allocObject();
  v66 = v63;
  sub_100029074(v63, v65 + v64, v114);
  v116 = v61;
  v117 = v56;
  v67 = v105;
  v118 = OpaqueTypeConformance2;
  v119 = v105;
  v113 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v112 = swift_getOpaqueTypeConformance2();
  v68 = v98;
  v69 = v99;
  v70 = v67;
  View.onChange<A>(of:initial:_:)();

  (v107)(v51, v56);
  (*(v97 + 8))(v60, v69);
  v71 = v106;
  v72 = (v106 + *(v102 + 100));
  v73 = *v72;
  v74 = *(v72 + 1);
  LOBYTE(v72) = v72[16];
  LOBYTE(v116) = v73;
  v117 = v74;
  LOBYTE(v118) = v72;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  sub_10002631C(v71, v66);
  v75 = v110;
  v76 = swift_allocObject();
  sub_100029074(v66, v76 + v75, v114);
  v116 = v69;
  v117 = v56;
  v118 = v112;
  v119 = v70;
  swift_getOpaqueTypeConformance2();
  v77 = v101;
  View.onChange<A>(of:initial:_:)();

  return (*(v100 + 8))(v68, v77);
}

uint64_t sub_1000156E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v210 = a2;
  v3 = type metadata accessor for WritingToolsView(0);
  v171 = *(v3 - 8);
  __chkstk_darwin(v3);
  v172 = v4;
  v173 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for CompositionView(0);
  __chkstk_darwin(v211);
  v184 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_10000341C(&unk_10025B300, &qword_1001CFC58);
  v186 = *(v197 - 8);
  __chkstk_darwin(v197);
  v185 = &v163 - v6;
  v199 = sub_10000341C(&qword_10025B5F8, &qword_1001CFFD0);
  v187 = *(v199 - 8);
  __chkstk_darwin(v199);
  v200 = &v163 - v7;
  v194 = sub_10000341C(&qword_10025B600, &qword_1001CFFD8);
  __chkstk_darwin(v194);
  v196 = &v163 - v8;
  v206 = sub_10000341C(&qword_10025B368, &qword_1001CFC80);
  __chkstk_darwin(v206);
  v198 = &v163 - v9;
  v10 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  __chkstk_darwin(v10 - 8);
  v177 = &v163 - v11;
  v175 = type metadata accessor for QuestionnaireView(0);
  v12 = __chkstk_darwin(v175);
  v176 = (&v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v166 = &v163 - v14;
  v195 = sub_10000341C(&qword_10025B378, &qword_1001CFC88);
  v15 = __chkstk_darwin(v195);
  v165 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v167 = &v163 - v17;
  v179 = sub_10000341C(&qword_10025B608, &qword_1001CFFE0);
  __chkstk_darwin(v179);
  v183 = &v163 - v18;
  v180 = sub_10000341C(&qword_10025B610, &qword_1001CFFE8);
  v174 = *(v180 - 8);
  __chkstk_darwin(v180);
  v182 = &v163 - v19;
  v193 = sub_10000341C(&qword_10025B340, &qword_1001CFC70);
  __chkstk_darwin(v193);
  v181 = &v163 - v20;
  v207 = sub_10000341C(&qword_10025B618, &qword_1001CFFF0);
  __chkstk_darwin(v207);
  v209 = (&v163 - v21);
  v202 = sub_10000341C(&qword_10025B620, &qword_1001CFFF8);
  __chkstk_darwin(v202);
  v204 = &v163 - v22;
  v190 = sub_10000341C(&qword_10025B628, &qword_1001D0000);
  __chkstk_darwin(v190);
  v191 = (&v163 - v23);
  v203 = sub_10000341C(&qword_10025B290, &qword_1001CFC28);
  __chkstk_darwin(v203);
  v192 = &v163 - v24;
  v208 = sub_10000341C(&qword_10025B280, &qword_1001CFC20);
  __chkstk_darwin(v208);
  v205 = &v163 - v25;
  v188 = sub_10000341C(&qword_10025B328, &qword_1001CFC68);
  __chkstk_darwin(v188);
  v178 = &v163 - v26;
  v27 = sub_10000341C(&qword_10025B630, &qword_1001D0008);
  __chkstk_darwin(v27);
  v168 = &v163 - v28;
  v169 = sub_10000341C(&qword_10025B638, &qword_1001D0010);
  v164 = *(v169 - 8);
  __chkstk_darwin(v169);
  v163 = &v163 - v29;
  v189 = sub_10000341C(&qword_10025B2A0, &qword_1001CFC30);
  __chkstk_darwin(v189);
  v170 = &v163 - v30;
  v31 = v3;
  v32 = a1;
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v33 = v212;
  swift_getKeyPath();
  v212 = v33;
  v201 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = *(v33 + 48);
  v35 = *(v33 + 56);
  v36 = *(v33 + 64);
  v37 = *(v33 + 72);
  sub_10000F3F4(v34, v35, v36, *(v33 + 72));

  if (!v37)
  {
    v68 = v182;
    v69 = v183;
    sub_10000F428(v34, v35, v36, 0);
    Bindable.wrappedValue.getter();
    v70 = v212;
    swift_getKeyPath();
    v212 = v70;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v70) = sub_1000B1594();

    if (v70)
    {
      v71 = v68;
      sub_1000120F0(v68);
      v72 = v174;
      v73 = v68;
      v74 = v180;
      (*(v174 + 16))(v69, v73, v180);
      swift_storeEnumTagMultiPayload();
      v75 = sub_100003E34(&qword_10025B348, &qword_1001CFC78);
      v76 = sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
      v77 = sub_100025F58();
      v78 = sub_100025A68();
      v79 = sub_100025ABC();
      v212 = v75;
      v213 = &type metadata for Mode;
      v214 = v76;
      v215 = v77;
      v216 = v78;
      v217 = v79;
      swift_getOpaqueTypeConformance2();
      sub_100025D5C();
      v80 = v181;
      _ConditionalContent<>.init(storage:)();
      (*(v72 + 8))(v71, v74);
    }

    else
    {
      v92 = v178;
      sub_100013A50(v178);
      sub_1000081F8(v92, v69, &qword_10025B328, &qword_1001CFC68);
      swift_storeEnumTagMultiPayload();
      v93 = sub_100003E34(&qword_10025B348, &qword_1001CFC78);
      v94 = sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
      v95 = sub_100025F58();
      v96 = sub_100025A68();
      v97 = sub_100025ABC();
      v212 = v93;
      v213 = &type metadata for Mode;
      v214 = v94;
      v215 = v95;
      v216 = v96;
      v217 = v97;
      swift_getOpaqueTypeConformance2();
      sub_100025D5C();
      v80 = v181;
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v92, &qword_10025B328, &qword_1001CFC68);
    }

    v98 = &qword_1001CFC70;
    sub_1000081F8(v80, v191, &qword_10025B340, &qword_1001CFC70);
    swift_storeEnumTagMultiPayload();
    sub_100025818();
    sub_100025E48();
    v99 = v192;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v99, v204, &qword_10025B290, &qword_1001CFC28);
    swift_storeEnumTagMultiPayload();
    sub_10002578C();
    sub_100026044();
    v100 = v205;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v99, &qword_10025B290, &qword_1001CFC28);
    sub_1000081F8(v100, v209, &qword_10025B280, &qword_1001CFC20);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&unk_10025B390, &unk_1001CFC90);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90, &protocol conformance descriptor for GeometryReader<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v100, &qword_10025B280, &qword_1001CFC20);
    v101 = v80;
    v102 = &qword_10025B340;
    return sub_10000F500(v101, v102, v98);
  }

  if (v37 == 1)
  {
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    v38 = v184;
    State.projectedValue.getter();
    v39 = v32 + v31[23];
    v40 = *v39;
    v41 = *(v39 + 8);
    LOBYTE(v218) = v40;
    v219 = v41;
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.projectedValue.getter();
    v42 = v212;
    v191 = v213;
    LODWORD(v190) = v214;
    v43 = type metadata accessor for CompositionModel(0);
    v193 = sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    v192 = v43;
    *(v38 + 24) = Environment.init<A>(_:)();
    *(v38 + 32) = v44 & 1;
    type metadata accessor for CommonUIManager(0);
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
    *(v38 + 40) = Environment.init<A>(_:)();
    *(v38 + 48) = v45 & 1;
    v46 = v211;
    v47 = v38 + *(v211 + 36);
    *v47 = FocusState.init<>()() & 1;
    *(v47 + 8) = v48;
    *(v47 + 16) = v49 & 1;
    *v38 = v34;
    *(v38 + 8) = v35;
    *(v38 + 16) = v36;
    v50 = v38 + *(v46 + 32);
    v51 = v191;
    *v50 = v42;
    *(v50 + 8) = v51;
    *(v50 + 16) = v190;
    Bindable.wrappedValue.getter();
    v52 = type metadata accessor for WritingToolsModel(0);
    v53 = sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView, &unk_1001D93A8);
    v54 = v185;
    v55 = v201;
    View.environment<A>(_:)();

    sub_10002B070(v38, type metadata accessor for CompositionView);
    Bindable.wrappedValue.getter();
    v56 = v212;
    swift_getKeyPath();
    v212 = v56;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v212 = v211;
    v213 = v52;
    v214 = v53;
    v215 = v55;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v58 = v200;
    v59 = v197;
    v60 = v192;
    v61 = v193;
    View.environment<A>(_:)();

    (*(v186 + 8))(v54, v59);
    v62 = v187;
    v63 = v58;
    v64 = v199;
    (*(v187 + 16))(v196, v63, v199);
    swift_storeEnumTagMultiPayload();
    sub_100026208();
    v212 = v59;
    v213 = v60;
    v214 = OpaqueTypeConformance2;
    v215 = v61;
    swift_getOpaqueTypeConformance2();
    v65 = v198;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v65, v204, &qword_10025B368, &qword_1001CFC80);
    swift_storeEnumTagMultiPayload();
    sub_10002578C();
    sub_100026044();
    v66 = v205;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v65, &qword_10025B368, &qword_1001CFC80);
    sub_1000081F8(v66, v209, &qword_10025B280, &qword_1001CFC20);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&unk_10025B390, &unk_1001CFC90);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90, &protocol conformance descriptor for GeometryReader<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v66, &qword_10025B280, &qword_1001CFC20);
    return (*(v62 + 8))(v200, v64);
  }

  v81 = v36 | v35;
  if (!(v36 | v35 | v34))
  {
    v103 = v173;
    sub_10002631C(v32, v173);
    v104 = (*(v171 + 80) + 16) & ~*(v171 + 80);
    v105 = swift_allocObject();
    sub_100029074(v103, v105 + v104, type metadata accessor for WritingToolsView);
    v106 = v209;
    *v209 = sub_100028518;
    v106[1] = v105;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&unk_10025B390, &unk_1001CFC90);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90, &protocol conformance descriptor for GeometryReader<A>);
    return _ConditionalContent<>.init(storage:)();
  }

  v82 = v32;
  if (v34 == 1 && !v81)
  {
    if (*(v32 + v31[11]) == 1 && *(v32 + v31[12]) == 1)
    {
      v83 = v163;
      sub_100010CC8(v163);
      v84 = v164;
      v85 = v169;
      (*(v164 + 16))(v168, v83, v169);
      swift_storeEnumTagMultiPayload();
      v86 = sub_100003E34(&qword_10025B2A8, &qword_1001CFC38);
      v87 = sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
      v88 = sub_100025928();
      v89 = sub_100025A68();
      v90 = sub_100025ABC();
      v212 = v86;
      v213 = &type metadata for Mode;
      v214 = v87;
      v215 = v88;
      v216 = v89;
      v217 = v90;
      swift_getOpaqueTypeConformance2();
      sub_100025D5C();
      v91 = v170;
      _ConditionalContent<>.init(storage:)();
      (*(v84 + 8))(v83, v85);
    }

    else
    {
      v155 = v178;
      sub_100013A50(v178);
      sub_1000081F8(v155, v168, &qword_10025B328, &qword_1001CFC68);
      swift_storeEnumTagMultiPayload();
      v156 = sub_100003E34(&qword_10025B2A8, &qword_1001CFC38);
      v157 = sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
      v158 = sub_100025928();
      v159 = sub_100025A68();
      v160 = sub_100025ABC();
      v212 = v156;
      v213 = &type metadata for Mode;
      v214 = v157;
      v215 = v158;
      v216 = v159;
      v217 = v160;
      swift_getOpaqueTypeConformance2();
      sub_100025D5C();
      v91 = v170;
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v155, &qword_10025B328, &qword_1001CFC68);
    }

    v98 = &qword_1001CFC30;
    sub_1000081F8(v91, v191, &qword_10025B2A0, &qword_1001CFC30);
    swift_storeEnumTagMultiPayload();
    sub_100025818();
    sub_100025E48();
    v161 = v192;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v161, v204, &qword_10025B290, &qword_1001CFC28);
    swift_storeEnumTagMultiPayload();
    sub_10002578C();
    sub_100026044();
    v162 = v205;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v161, &qword_10025B290, &qword_1001CFC28);
    sub_1000081F8(v162, v209, &qword_10025B280, &qword_1001CFC20);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&unk_10025B390, &unk_1001CFC90);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90, &protocol conformance descriptor for GeometryReader<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v162, &qword_10025B280, &qword_1001CFC20);
    v101 = v91;
    v102 = &qword_10025B2A0;
    return sub_10000F500(v101, v102, v98);
  }

  result = swift_unknownObjectWeakLoadStrong();
  v107 = *(v32 + v31[10]);
  if (v107)
  {
    v108 = result;
    v109 = *(v82 + v31[8]);
    v191 = v107;
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.projectedValue.getter();
    v110 = v31[16];
    v111 = (v82 + v31[15]);
    v112 = v111[1];
    v192 = *v111;
    v113 = *(v82 + v110 + 8);
    v200 = *(v82 + v110);
    v114 = v176;
    *v176 = 0x4024000000000000;
    v114[2] = 5;
    *(v114 + 3) = xmmword_1001CFA80;
    __asm { FMOV            V0.2D, #24.0 }

    *(v114 + 5) = _Q0;
    v120 = v175;
    v121 = *(v175 + 32);
    *(v114 + v121) = swift_getKeyPath();
    sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
    swift_storeEnumTagMultiPayload();
    v122 = v114 + *(v120 + 36);
    type metadata accessor for CommonUIManager(0);
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);

    v193 = v113;

    *v122 = Environment.init<A>(_:)();
    v122[8] = v123 & 1;
    v124 = v114 + *(v120 + 48);
    LOBYTE(v218) = 0;
    State.init(wrappedValue:)();
    v125 = v213;
    *v124 = v212;
    *(v124 + 1) = v125;
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v126 = type metadata accessor for Logger();
    sub_10000F34C(v126, qword_100276F20);
    v127 = static os_log_type_t.debug.getter();
    swift_unknownObjectRetain();
    v128 = Logger.logObject.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v128, v127))
    {
      v129 = swift_slowAlloc();
      v130 = v109;
      v131 = swift_slowAlloc();
      v212 = v131;
      *v129 = 136315138;
      if (v108)
      {
        v132 = 7562617;
      }

      else
      {
        v132 = 28526;
      }

      if (v108)
      {
        v133 = 0xE300000000000000;
      }

      else
      {
        v133 = 0xE200000000000000;
      }

      v134 = sub_10002510C(v132, v133, &v212);

      *(v129 + 4) = v134;
      _os_log_impl(&_mh_execute_header, v128, v127, "Initialize QuestionnaireView with delegate: %s", v129, 0xCu);
      sub_10000F4B4(v131);
      v109 = v130;
    }

    v135 = v191;
    v136 = v176;
    v176[1] = v107;
    type metadata accessor for QuestionnaireModel(0);
    swift_allocObject();
    v137 = v135;
    swift_unknownObjectRetain();
    sub_10004F8B0(v137, v108, v109);
    v138 = v175;
    v139 = (v136 + *(v175 + 44));
    v218 = v140;
    State.init(wrappedValue:)();
    v141 = v212;
    v142 = v213;
    *v139 = v212;
    v139[1] = v142;
    v143 = v136 + *(v138 + 40);
    v144 = v177;
    sub_1000081F8(v177, v143, &qword_1002632E0, &qword_1001D11A0);
    v212 = v141;
    v213 = v142;

    sub_10000341C(&qword_10025B648, &qword_1001D0050);
    State.wrappedValue.getter();
    sub_100036040(v192, v112);

    v212 = v141;
    v213 = v142;
    State.wrappedValue.getter();

    sub_100036200(v200, v193);
    swift_unknownObjectRelease();

    sub_10000F500(v144, &qword_1002632E0, &qword_1001D11A0);
    v145 = v166;
    sub_100029074(v136, v166, type metadata accessor for QuestionnaireView);
    v146 = v165;
    sub_100029074(v145, v165, type metadata accessor for QuestionnaireView);
    v147 = v167;
    sub_10002A894(v146, v167, &qword_10025B378, &qword_1001CFC88);
    sub_1000081F8(v147, v196, &qword_10025B378, &qword_1001CFC88);
    swift_storeEnumTagMultiPayload();
    sub_100026208();
    v148 = type metadata accessor for CompositionModel(255);
    v149 = type metadata accessor for WritingToolsModel(255);
    v150 = sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView, &unk_1001D93A8);
    v212 = v211;
    v213 = v149;
    v214 = v150;
    v215 = v201;
    v151 = swift_getOpaqueTypeConformance2();
    v152 = sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    v212 = v197;
    v213 = v148;
    v214 = v151;
    v215 = v152;
    swift_getOpaqueTypeConformance2();
    v153 = v198;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v153, v204, &qword_10025B368, &qword_1001CFC80);
    swift_storeEnumTagMultiPayload();
    sub_10002578C();
    sub_100026044();
    v154 = v205;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v153, &qword_10025B368, &qword_1001CFC80);
    sub_1000081F8(v154, v209, &qword_10025B280, &qword_1001CFC20);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&unk_10025B390, &unk_1001CFC90);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90, &protocol conformance descriptor for GeometryReader<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v154, &qword_10025B280, &qword_1001CFC20);
    return sub_10000F500(v147, &qword_10025B378, &qword_1001CFC88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = type metadata accessor for WritingToolsView(0);
  v59 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v60 = v6;
  v61 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for ContainerBackgroundPlacement();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ScrollBounceBehavior();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_10025B690, &qword_1001D0178);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  v46 = sub_10000341C(&qword_10025B698, &qword_1001D0180);
  v14 = *(v46 - 8);
  __chkstk_darwin(v46);
  v16 = &v46 - v15;
  v51 = sub_10000341C(&qword_10025B6A0, &qword_1001D0188);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v46 - v17;
  v52 = sub_10000341C(&qword_10025B6A8, &qword_1001D0190);
  __chkstk_darwin(v52);
  v19 = &v46 - v18;
  v55 = sub_10000341C(&qword_10025B6B0, &qword_1001D0198);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v46 - v20;
  v64 = a2;
  v65 = a1;
  static Axis.Set.vertical.getter();
  sub_10000341C(&qword_10025B6B8, &qword_1001D01A0);
  sub_1000290E4();
  ScrollView.init(_:showsIndicators:content:)();
  v62 = a2;
  sub_10000FE5C();
  v21 = sub_100007120(&qword_10025B720, &qword_10025B690, &qword_1001D0178, &protocol conformance descriptor for ScrollView<A>);
  View.scrollDisabled(_:)();
  (*(v11 + 8))(v13, v10);
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(v13) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v13)
  {
    Axis.Set.init(rawValue:)();
  }

  *&v70 = v10;
  *(&v70 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v49;
  v23 = v46;
  View.scrollBounceBehavior(_:axes:)();
  (*(v47 + 8))(v9, v48);
  (*(v14 + 8))(v16, v23);
  v24 = [objc_opt_self() mainScreen];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v77.origin.x = v26;
  v77.origin.y = v28;
  v77.size.width = v30;
  v77.size.height = v32;
  CGRectGetHeight(v77);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v50 + 32))(v19, v22, v51);
  v33 = v52;
  v34 = &v19[*(v52 + 36)];
  v35 = v75;
  *(v34 + 4) = v74;
  *(v34 + 5) = v35;
  *(v34 + 6) = v76;
  v36 = v71;
  *v34 = v70;
  *(v34 + 1) = v36;
  v37 = v73;
  *(v34 + 2) = v72;
  *(v34 + 3) = v37;
  v66 = static Color.clear.getter();
  v38 = v56;
  static ContainerBackgroundPlacement.navigation.getter();
  v39 = sub_100029478();
  v40 = v53;
  View.containerBackground<A>(_:for:)();
  (*(v57 + 8))(v38, v58);

  sub_10000F500(v19, &qword_10025B6A8, &qword_1001D0190);
  v41 = v61;
  sub_10002631C(v62, v61);
  v42 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v43 = swift_allocObject();
  sub_100029074(v41, v43 + v42, type metadata accessor for WritingToolsView);
  sub_10000341C(&qword_10025B730, &qword_1001D01D0);
  v66 = v33;
  v67 = &type metadata for Color;
  v68 = v39;
  v69 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  sub_100025A68();
  sub_100029638();
  v44 = v55;
  View.navigationDestination<A, B>(for:destination:)();

  return (*(v54 + 8))(v40, v44);
}

uint64_t sub_100017FE8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v80 = a3;
  v4 = type metadata accessor for ScrollDismissesKeyboardMode();
  v76 = *(v4 - 8);
  v77 = v4;
  __chkstk_darwin(v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_10025B700, &qword_1001D01C8);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  v72 = sub_10000341C(&qword_10025B6F8, &qword_1001D01C0);
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v11 = &v69 - v10;
  v75 = sub_10000341C(&qword_10025B828, &qword_1001D0270);
  v71 = *(v75 - 8);
  __chkstk_darwin(v75);
  v70 = &v69 - v12;
  v13 = sub_10000341C(&qword_10025B6F0, &qword_1001D01B8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  *&v81 = &v69 - v15;
  v16 = sub_10000341C(&qword_10025B6E0, &qword_1001D01B0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v82 = &v69 - v18;
  v79 = sub_10000341C(&qword_10025B6D0, &qword_1001D01A8) - 8;
  __chkstk_darwin(v79);
  v78 = &v69 - v19;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  v20 = sub_10000341C(&unk_10025B830, &qword_1001D0278);
  sub_1000187F8(a1, v73, &v9[*(v20 + 44)]);
  v21 = sub_100007120(&qword_10025B708, &qword_10025B700, &qword_1001D01C8, &protocol conformance descriptor for VStack<A>);
  View.scrollContentBackground(_:)();
  sub_10000F500(v9, &qword_10025B700, &qword_1001D01C8);
  static ScrollDismissesKeyboardMode.interactively.getter();
  *&v83 = v7;
  *(&v83 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v70;
  v23 = v72;
  View.scrollDismissesKeyboard(_:)();
  (*(v76 + 8))(v6, v77);
  (*(v74 + 8))(v11, v23);
  v24 = a1;
  if (sub_10000FE5C())
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x4030000000000000;
  }

  v26 = static Edge.Set.all.getter();
  v27 = v81;
  (*(v71 + 32))(v81, v22, v75);
  v28 = v27 + *(v14 + 44);
  *v28 = v26;
  *(v28 + 8) = v25;
  *(v28 + 16) = v25;
  *(v28 + 24) = 0;
  *(v28 + 32) = v25;
  *(v28 + 40) = 0;
  v29 = type metadata accessor for WritingToolsView(0);
  v30 = v24;
  swift_unknownObjectWeakLoadStrong();
  v31 = v82 + *(v17 + 44);
  v32 = type metadata accessor for PreferredContentSizeModifier(0);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.projectedValue.getter();
  LOBYTE(v83) = 0;
  static Binding.constant(_:)();
  v33 = v86;
  v34 = v87;
  v35 = v88;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v31 + 8) = 256;
  v36 = v31 + v32[8];
  *v36 = v33;
  *(v36 + 8) = v34;
  *(v36 + 16) = v35;
  v37 = (v31 + v32[9]);
  *v37 = 0xD000000000000010;
  v37[1] = 0x80000001001CFD50;
  v38 = v31 + v32[10];
  type metadata accessor for CGSize(0);
  v89 = 0;
  v90 = 0;
  State.init(wrappedValue:)();
  v39 = v84;
  *v38 = v83;
  *(v38 + 16) = v39;
  v40 = v31 + v32[11];
  LOBYTE(v89) = 0;
  State.init(wrappedValue:)();
  v41 = *(&v83 + 1);
  *v40 = v83;
  *(v40 + 8) = v41;
  v42 = v31 + v32[12];
  v89 = 0;
  LOBYTE(v90) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v43 = BYTE8(v83);
  v44 = v84;
  *v42 = v83;
  *(v42 + 8) = v43;
  *(v42 + 16) = v44;
  v45 = v31 + v32[13];
  LOBYTE(v89) = 0;
  State.init(wrappedValue:)();
  v46 = *(&v83 + 1);
  *v45 = v83;
  *(v45 + 8) = v46;
  v47 = v31 + v32[14];
  type metadata accessor for PresentationModel(0);
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *v47 = Environment.init<A>(_:)();
  *(v47 + 8) = v48 & 1;
  v49 = v82;
  sub_10002A894(v81, v82, &qword_10025B6F0, &qword_1001D01B8);
  v50 = &v30[*(v29 + 88)];
  v51 = *v50;
  v52 = v50[8];
  v53 = *(v50 + 2);
  v86 = v51;
  LOBYTE(v87) = v52;
  v88 = v53;
  sub_10000341C(&qword_10025B840, &unk_1001D7B00);
  State.projectedValue.getter();
  v81 = v83;
  v54 = v84;
  LOBYTE(v45) = v85;
  v55 = v78;
  sub_10002A894(v49, v78, &qword_10025B6E0, &qword_1001D01B0);
  v56 = v55 + *(v79 + 44);
  *v56 = v81;
  *(v56 + 16) = v54;
  *(v56 + 24) = v45;
  v57 = &v30[*(v29 + 92)];
  v58 = *v57;
  v59 = *(v57 + 1);
  LOBYTE(v83) = v58;
  *(&v83 + 1) = v59;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  LOBYTE(v49) = v86;
  v60 = Environment.init<A>(_:)();
  LOBYTE(v54) = v61;
  v62 = static Alignment.center.getter();
  v64 = v63;
  v65 = v55;
  v66 = v80;
  sub_10002A894(v65, v80, &qword_10025B6D0, &qword_1001D01A8);
  result = sub_10000341C(&qword_10025B6B8, &qword_1001D01A0);
  v68 = v66 + *(result + 36);
  *v68 = v60;
  *(v68 + 8) = v54 & 1;
  *(v68 + 9) = 1;
  *(v68 + 10) = v49;
  *(v68 + 16) = v62;
  *(v68 + 24) = v64;
  return result;
}

uint64_t sub_1000187F8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v295 = a2;
  v314 = a3;
  v4 = sub_10000341C(&qword_10025B848, &qword_1001D0290);
  v313 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = &v275 - v5;
  v7 = sub_10000FE5C();
  v8 = sub_10000341C(&qword_10025B850, &qword_1001D0298);
  v9 = v8;
  v10 = *(v8 - 8);
  if (v7)
  {
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  else
  {
    __chkstk_darwin(v8);
    v12 = &v275 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v12 = static VerticalAlignment.center.getter();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v13 = sub_10000341C(&qword_10025B858, &qword_1001D02A0);
    sub_10001B2FC(a1, &v12[*(v13 + 44)]);
    v14 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v15 = &v12[*(v9 + 36)];
    *v15 = v14;
    *(v15 + 1) = v16;
    *(v15 + 2) = v17;
    *(v15 + 3) = v18;
    *(v15 + 4) = v19;
    v15[40] = 0;
    sub_10002A894(v12, v6, &qword_10025B850, &qword_1001D0298);
    (*(v10 + 56))(v6, 0, 1, v9);
  }

  v20 = sub_10000FE5C();
  v324 = v6;
  if ((v20 & 1) != 0 || (type metadata accessor for WritingToolsView(0), sub_10000341C(&qword_1002624F0, &qword_1001CFB20), Bindable.wrappedValue.getter(), v21 = sub_1000A9218(), v23 = v22, v25 = v24, v27 = v26, , !v27))
  {
    v312 = 0;
    v23 = 0;
    v309 = 0;
    v310 = 0;
  }

  else
  {
    v309 = v25 & 1;
    v312 = v21;
    sub_100007D98(v21, v23, v25 & 1);
    v310 = v27;
  }

  v311 = v23;
  v28 = sub_10000341C(&qword_10025B860, &qword_1001D02A8);
  v308 = &v275;
  v306 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v323 = &v275 - v29;
  v30 = type metadata accessor for WritingToolsView(0);
  v31 = v30[20];
  v32 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();

  v33 = sub_10000341C(&qword_10025B868, &qword_1001D02B0);
  v307 = &v275;
  v322 = v33;
  v321 = *(v33 - 8);
  v34 = __chkstk_darwin(v33);
  v320 = &v275 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = &v275;
  v302 = v35;
  __chkstk_darwin(v34);
  v304 = &v275 - v36;
  v37 = &a1[v30[25]];
  v38 = *v37;
  v39 = *(v37 + 1);
  LOBYTE(v37) = v37[16];
  LOBYTE(v329) = v38;
  *(&v329 + 1) = v39;
  LOBYTE(v330) = v37;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  v315 = v337;
  v303 = v338;
  LODWORD(v300) = v339;
  Bindable.wrappedValue.getter();
  v298 = sub_1000A7C14();

  v40 = sub_10000FE5C();
  LODWORD(v296) = v40;
  v297 = &v275;
  v299 = v30;
  v41 = *(v30 - 1);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002631C(a1, &v275 - v43);
  v44 = *(v41 + 80);
  v45 = swift_allocObject();
  v316 = ((v44 + 16) & ~v44);
  sub_100029074(&v275 - v43, v316 + v45, type metadata accessor for WritingToolsView);
  v319 = v31;
  v318 = v32;
  Bindable.wrappedValue.getter();
  v46 = a1;
  v47 = v329;
  swift_getKeyPath();
  *&v329 = v47;
  v301 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(v47 + 24);

  swift_getKeyPath();
  *&v329 = v48;
  sub_10002B028(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v48 + v49, &v331 + 8, &unk_10025B1C0, &unk_1001CFA90);

  *&v329 = v315;
  *(&v329 + 1) = v303;
  LOBYTE(v330) = v300;
  BYTE1(v330) = (v298 & 2) != 0;
  BYTE2(v330) = v296 & 1;
  *(&v330 + 1) = sub_10002A520;
  *&v331 = v45;
  v303 = &v275;
  __chkstk_darwin(v50);
  v325 = v46;
  sub_10002631C(v46, &v275 - v43);
  type metadata accessor for MainActor();
  v51 = static MainActor.shared.getter();
  v317 = v42;
  v315 = v44;
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = &protocol witness table for MainActor;
  sub_100029074(&v275 - v43, v52 + ((v44 + 32) & ~v44), type metadata accessor for WritingToolsView);
  v53 = type metadata accessor for TaskPriority();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  __chkstk_darwin(v53);
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = &v275 - v56;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v298 = type metadata accessor for _TaskModifier2();
    v300 = &v275;
    v297 = *(v298 - 8);
    __chkstk_darwin(v298);
    v296 = &v275 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    v326 = 0;
    v327 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v326 = 0xD000000000000039;
    v327 = 0x80000001001E38C0;
    v336 = 221;
    v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v59);

    __chkstk_darwin(v60);
    (*(v54 + 16))(&v275 - v56, &v275 - v56, v53);
    v61 = v296;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v54 + 8))(v57, v53);
    v62 = v332;
    v63 = v304;
    *(v304 + 2) = v331;
    *(v63 + 3) = v62;
    *(v63 + 4) = v333;
    v64 = v330;
    *v63 = v329;
    *(v63 + 1) = v64;
    v65 = sub_10000341C(&qword_10025A968, &unk_1001D02F0);
    (*(v297 + 4))(&v63[*(v65 + 36)], v61, v298);
  }

  else
  {
    v66 = sub_10000341C(&unk_10025A970, &unk_1001CE150);
    v63 = v304;
    v67 = &v304[*(v66 + 36)];
    v68 = type metadata accessor for _TaskModifier();
    (*(v54 + 32))(&v67[*(v68 + 20)], &v275 - v56, v53);
    *v67 = &unk_1001D02E8;
    *(v67 + 1) = v52;
    v69 = v333;
    v70 = v331;
    *(v63 + 3) = v332;
    *(v63 + 4) = v69;
    v71 = v330;
    *v63 = v329;
    *(v63 + 1) = v71;
    *(v63 + 2) = v70;
  }

  (v321[4])(v320, v63, v322);
  v72 = sub_10000341C(&qword_10025B880, &qword_1001DCA20);
  v305 = &v275;
  v73 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72 - 8);
  v75 = &v275 - v74;
  v76 = sub_10000FE5C();
  v77 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  v78 = v77;
  v79 = *(v77 - 8);
  v80 = v79;
  v297 = v75;
  if (v76)
  {
    (*(v79 + 56))(v75, 1, 1, v77);
  }

  else
  {
    __chkstk_darwin(v77);
    v82 = &v275 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
    Divider.init()();
    v83 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v84 = &v82[*(v78 + 36)];
    *v84 = v83;
    *(v84 + 1) = v85;
    *(v84 + 2) = v86;
    *(v84 + 3) = v87;
    *(v84 + 4) = v88;
    v84[40] = 0;
    sub_10002A894(v82, v75, &qword_10025B888, &qword_1001D0300);
    (*(v80 + 56))(v75, 0, 1, v78);
  }

  v300 = sub_10000341C(&qword_10025B890, &qword_1001D0308);
  v304 = &v275;
  v298 = *(v300 - 1);
  v89 = __chkstk_darwin(v300);
  v91 = &v275 - v90;
  v303 = &v275;
  __chkstk_darwin(v89);
  v93 = &v275 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v321;
  v95 = v321[2];
  v96 = v320;
  v97 = v322;
  v98 = v95(v93, v320, v322);
  v302 = &v275;
  __chkstk_darwin(v98);
  v99 = &v275 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v297;
  sub_1000081F8(v297, v99, &qword_10025B880, &qword_1001DCA20);
  v95(v91, v93, v97);
  v101 = sub_10000341C(&qword_10025B898, &qword_1001D0310);
  sub_1000081F8(v99, &v91[*(v101 + 48)], &qword_10025B880, &qword_1001DCA20);
  sub_10000F500(v100, &qword_10025B880, &qword_1001DCA20);
  v102 = v94[1];
  v102(v96, v97);
  sub_10000F500(v99, &qword_10025B880, &qword_1001DCA20);
  v102(v93, v97);
  v103 = v323;
  sub_10002A894(v91, v323, &qword_10025B890, &qword_1001D0308);
  (*(v298 + 56))(v103, 0, 1, v300);
  v104 = sub_10000341C(&qword_10025B8A0, &qword_1001D0318);
  v321 = &v275;
  v105 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104 - 8);
  v107 = &v275 - v106;
  v108 = v325;
  v109 = sub_10000FE5C();
  v322 = v107;
  if (v109)
  {
    v110 = sub_10000341C(&qword_10025B8F8, &qword_1001D0358);
    v111 = (*(*(v110 - 8) + 56))(v107, 1, 1, v110);
  }

  else
  {
    v292 = v105;
    v112 = sub_10000341C(&qword_10025B8A8, &unk_1001D0320);
    v291 = &v275;
    v320 = v112;
    v298 = *(v112 - 8);
    v289 = *(v298 + 64);
    __chkstk_darwin(v112);
    v300 = &v275 - v113;
    v114 = v299;
    v115 = v299[12];
    LODWORD(v296) = *(v108 + v299[11]);
    LODWORD(v297) = *(v108 + v115);
    v293 = (v108 + v299[7]);
    Strong = swift_unknownObjectWeakLoadStrong();
    v116 = v317;
    __chkstk_darwin(Strong);
    v117 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_10002631C(v108, &v275 - v117);
    v118 = v316;
    v119 = swift_allocObject();
    v120 = sub_100029074(&v275 - v117, v118 + v119, type metadata accessor for WritingToolsView);
    __chkstk_darwin(v120);
    v121 = &v275 - v117;
    sub_10002631C(v108, &v275 - v117);
    v122 = swift_allocObject();
    sub_100029074(v121, v118 + v122, type metadata accessor for WritingToolsView);
    v123 = v108 + v114[22];
    v124 = *v123;
    v125 = *(v123 + 8);
    v126 = *(v123 + 16);
    *&v285 = v124;
    v326 = v124;
    LODWORD(v284) = v125;
    LOBYTE(v327) = v125;
    v283 = v126;
    v328 = v126;
    v282 = sub_10000341C(&qword_10025B840, &unk_1001D7B00);
    State.projectedValue.getter();
    v288 = v329;
    v127 = v330;
    v128 = BYTE8(v330);
    v129 = type metadata accessor for WritingToolsModel(0);
    v130 = Environment.init<A>(_:)();
    v132 = v131;
    LOBYTE(v329) = v296;
    BYTE1(v329) = v297;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    *&v330 = sub_10002A680;
    *(&v330 + 1) = v119;
    *&v331 = sub_10002A698;
    *(&v331 + 1) = v122;
    v332 = v288;
    *&v333 = v127;
    BYTE8(v333) = v128;
    v334 = v130;
    v335 = v132 & 1;
    Bindable.wrappedValue.getter();
    sub_10002A6B0();
    v294 = v129;
    View.environment<A>(_:)();

    sub_10002A704(&v329);
    v133 = sub_10000341C(&unk_100264220, &qword_1001D7E50);
    Strong = &v275;
    v287 = *(*(v133 - 8) + 64);
    __chkstk_darwin(v133 - 8);
    v135 = &v275 - v134;
    v136 = type metadata accessor for DynamicTypeSize();
    v137 = *(v136 - 8);
    __chkstk_darwin(v136);
    v139 = (&v275 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_10011F024(v139);
    LOBYTE(v122) = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v137 + 8))(v139, v136);
    v140 = type metadata accessor for Divider();
    v141 = v140;
    v142 = *(v140 - 8);
    v143 = v142;
    v297 = v135;
    if (v122)
    {
      __chkstk_darwin(v140);
      v145 = &v275 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
      Divider.init()();
      (*(v143 + 32))(v135, v145, v141);
      (*(v143 + 56))(v135, 0, 1, v141);
    }

    else
    {
      (*(v142 + 56))(v135, 1, 1, v140);
    }

    v146 = sub_10000341C(&qword_10025B8C0, &qword_1001D0330);
    *&v288 = &v275;
    v278 = v146 - 8;
    v147 = __chkstk_darwin(v146 - 8);
    v299 = (&v275 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0));
    v279 = &v275;
    v286 = v148;
    __chkstk_darwin(v147);
    v276 = &v275 - v149;
    v150 = sub_10000341C(&qword_10025B8C8, &qword_1001D0338);
    v277 = &v275;
    v151 = v150 - 8;
    v152 = __chkstk_darwin(v150);
    v154 = &v275 - v153;
    __chkstk_darwin(v152);
    v281 = ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
    v156 = (&v275 - v281);
    sub_10002631C(v325, &v275 - v281);
    v157 = v316;
    v158 = swift_allocObject();
    v280 = type metadata accessor for WritingToolsView;
    sub_100029074(v156, v157 + v158, type metadata accessor for WritingToolsView);
    v326 = v285;
    LOBYTE(v327) = v284;
    v328 = v283;
    State.projectedValue.getter();
    v285 = v329;
    v159 = v330;
    v160 = BYTE8(v330);
    swift_unknownObjectWeakLoadStrong();
    v161 = Environment.init<A>(_:)();
    v163 = v162;
    *&v329 = sub_10002B208;
    *(&v329 + 1) = v158;
    v330 = v285;
    *&v331 = v159;
    BYTE8(v331) = v160;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    *(&v332 + 1) = v161;
    LOBYTE(v333) = v163 & 1;
    v164 = v325;
    Bindable.wrappedValue.getter();
    sub_10002A758();
    View.environment<A>(_:)();

    sub_10002A7AC(&v329);
    LOBYTE(v156) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v165 = &v154[*(v151 + 44)];
    *v165 = v156;
    *(v165 + 1) = v166;
    *(v165 + 2) = v167;
    *(v165 + 3) = v168;
    *(v165 + 4) = v169;
    v165[40] = 0;
    LOBYTE(v156) = static Edge.Set.top.getter();
    static Solarium.isEnabled.getter();
    EdgeInsets.init(_all:)();
    v171 = v170;
    v173 = v172;
    v175 = v174;
    v177 = v176;
    v178 = v276;
    sub_10002A894(v154, v276, &qword_10025B8C8, &qword_1001D0338);
    v179 = v178 + *(v278 + 44);
    *v179 = v156;
    *(v179 + 8) = v171;
    *(v179 + 16) = v173;
    *(v179 + 24) = v175;
    *(v179 + 32) = v177;
    *(v179 + 40) = 0;
    sub_10002A894(v178, v299, &qword_10025B8C0, &qword_1001D0330);
    v180 = sub_10000341C(&qword_10025B8D8, &qword_1001D0340);
    *&v285 = &v275;
    v284 = v180;
    v283 = *(v180 - 8);
    v282 = *(v283 + 64);
    __chkstk_darwin(v180);
    v182 = &v275 - v181;
    v183 = type metadata accessor for TransformSection(0);
    v279 = &v275;
    v184 = __chkstk_darwin(v183);
    v186 = (&v275 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0));
    __chkstk_darwin(v184);
    v187 = (&v275 - v281);
    sub_10002631C(v164, &v275 - v281);
    v188 = v316;
    v189 = swift_allocObject();
    sub_100029074(v187, v188 + v189, v280);
    v190 = v183[5];
    v191 = type metadata accessor for GeometryProxy();
    (*(*(v191 - 8) + 16))(v186 + v190, v295, v191);
    swift_unknownObjectWeakLoadStrong();
    v192 = Environment.init<A>(_:)();
    v194 = v193;
    *v186 = sub_10002B208;
    v186[1] = v189;
    *(v186 + v183[6]) = v296;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v195 = v186 + v183[8];
    *v195 = v192;
    v195[8] = v194 & 1;
    v196 = v183[9];
    *(v186 + v196) = swift_getKeyPath();
    sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
    swift_storeEnumTagMultiPayload();
    v197 = v186 + v183[10];
    type metadata accessor for PresentationModel(0);
    sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
    *v197 = Environment.init<A>(_:)();
    v197[8] = v198 & 1;
    Bindable.wrappedValue.getter();
    sub_10002B028(&qword_10025B8E0, type metadata accessor for TransformSection, &unk_1001D2968);
    v317 = v182;
    View.environment<A>(_:)();

    sub_10002B070(v186, type metadata accessor for TransformSection);
    v199 = sub_10000341C(&qword_10025B8E8, &qword_1001D0348);
    v316 = &v275;
    v200 = *(*(v199 - 8) + 64);
    __chkstk_darwin(v199 - 8);
    v202 = &v275 - v201;
    if (sub_100138554() & 1) != 0 && (v203 = type metadata accessor for GenerativeAssistantRestrictionManager(), v204 = *(v203 - 8), __chkstk_darwin(v203), v315 = v200, v206 = &v275 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0), static GenerativeAssistantRestrictionManager.instance.getter(), v207 = GenerativeAssistantRestrictions.isMontaraAllowed.getter(), v208 = v206, v200 = v315, (*(v204 + 8))(v208, v203), (v207))
    {
      v209 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
      v301 = &v275;
      v210 = v209 - 8;
      v211 = *(*(v209 - 8) + 64);
      __chkstk_darwin(v209);
      v212 = &v275 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
      Divider.init()();
      v213 = static Edge.Set.vertical.getter();
      EdgeInsets.init(_all:)();
      v214 = &v212[*(v210 + 44)];
      *v214 = v213;
      *(v214 + 1) = v215;
      *(v214 + 2) = v216;
      *(v214 + 3) = v217;
      *(v214 + 4) = v218;
      v214[40] = 0;
      v219 = sub_10000341C(&qword_10025B910, &qword_1001D0370);
      v296 = &v275;
      v220 = v219 - 8;
      v221 = *(*(v219 - 8) + 64);
      v222 = __chkstk_darwin(v219);
      v294 = ((v221 + 15) & 0xFFFFFFFFFFFFFFF0);
      v295 = v202;
      v223 = (&v275 - v294);
      __chkstk_darwin(v222);
      *(&v275 - 2) = v325;
      sub_10000341C(&qword_10025B918, &qword_1001D0378);
      sub_10002A99C();
      Section<>.init(content:)();
      Bindable.wrappedValue.getter();
      v224 = sub_1000A7C14();

      KeyPath = swift_getKeyPath();
      v226 = swift_allocObject();
      *(v226 + 16) = (v224 & 2) == 0;
      v227 = &v223[*(v220 + 44)];
      *v227 = KeyPath;
      v227[1] = sub_10002AAC0;
      v227[2] = v226;
      v319 = sub_10000341C(&qword_10025B8F0, &qword_1001D0350);
      v325 = &v275;
      v228 = *(v319 - 1);
      v229 = __chkstk_darwin(v319);
      v231 = &v275 - v230;
      v318 = &v275;
      __chkstk_darwin(v229);
      v232 = sub_1000081F8(v212, v212, &qword_10025B888, &qword_1001D0300);
      v293 = &v275;
      __chkstk_darwin(v232);
      v233 = (&v275 - v294);
      sub_1000081F8(v223, &v275 - v294, &qword_10025B910, &qword_1001D0370);
      sub_1000081F8(v212, v231, &qword_10025B888, &qword_1001D0300);
      v234 = sub_10000341C(&unk_10025B940, &unk_1001D03B8);
      sub_1000081F8(v233, &v231[*(v234 + 48)], &qword_10025B910, &qword_1001D0370);
      sub_10000F500(v223, &qword_10025B910, &qword_1001D0370);
      sub_10000F500(v212, &qword_10025B888, &qword_1001D0300);
      sub_10000F500(v233, &qword_10025B910, &qword_1001D0370);
      sub_10000F500(v212, &qword_10025B888, &qword_1001D0300);
      v235 = v295;
      sub_10002A894(v231, v295, &qword_10025B8F0, &qword_1001D0350);
      v202 = v235;
      v200 = v315;
      (*(v228 + 56))(v235, 0, 1, v319);
    }

    else
    {
      v236 = sub_10000341C(&qword_10025B8F0, &qword_1001D0350);
      (*(*(v236 - 8) + 56))(v202, 1, 1, v236);
    }

    v315 = sub_10000341C(&qword_10025B8F8, &qword_1001D0358);
    v318 = &v275;
    v301 = *(v315 - 8);
    v237 = __chkstk_darwin(v315);
    v239 = &v275 - v238;
    v296 = &v275;
    __chkstk_darwin(v237);
    v325 = &v275 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0);
    v281 = *(v298 + 16);
    v241 = v281();
    v295 = &v275;
    __chkstk_darwin(v241);
    v319 = (&v275 - ((v242 + 15) & 0xFFFFFFFFFFFFFFF0));
    v243 = sub_1000081F8(v297, v319, &unk_100264220, &qword_1001D7E50);
    v294 = &v275;
    __chkstk_darwin(v243);
    v245 = &v275 - ((v244 + 15) & 0xFFFFFFFFFFFFFFF0);
    v287 = v245;
    v246 = sub_1000081F8(v299, v245, &qword_10025B8C0, &qword_1001D0330);
    v293 = &v275;
    __chkstk_darwin(v246);
    v248 = &v275 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0);
    v249 = v283;
    v250 = *(v283 + 16);
    v251 = v284;
    v252 = v250(v248, v317, v284);
    v289 = &v275;
    __chkstk_darwin(v252);
    v253 = &v275 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1000081F8(v202, v253, &qword_10025B8E8, &qword_1001D0348);
    (v281)(v239, v325, v320);
    v254 = sub_10000341C(&qword_10025B900, &qword_1001D0360);
    sub_1000081F8(v319, &v239[v254[12]], &unk_100264220, &qword_1001D7E50);
    sub_1000081F8(v245, &v239[v254[16]], &qword_10025B8C0, &qword_1001D0330);
    v250(&v239[v254[20]], v248, v251);
    sub_1000081F8(v253, &v239[v254[24]], &qword_10025B8E8, &qword_1001D0348);
    v255 = &v239[v254[28]];
    *v255 = 0;
    v255[8] = 1;
    sub_10000F500(v202, &qword_10025B8E8, &qword_1001D0348);
    v256 = *(v249 + 8);
    v256(v317, v251);
    sub_10000F500(v299, &qword_10025B8C0, &qword_1001D0330);
    sub_10000F500(v297, &unk_100264220, &qword_1001D7E50);
    v257 = *(v298 + 8);
    v258 = v320;
    v257(v300, v320);
    sub_10000F500(v253, &qword_10025B8E8, &qword_1001D0348);
    v256(v248, v251);
    sub_10000F500(v287, &qword_10025B8C0, &qword_1001D0330);
    sub_10000F500(v319, &unk_100264220, &qword_1001D7E50);
    v257(v325, v258);
    v107 = v322;
    sub_10002A894(v239, v322, &qword_10025B8F8, &qword_1001D0358);
    v111 = (v301[7])(v107, 0, 1, v315);
    v105 = v292;
  }

  v325 = &v275;
  __chkstk_darwin(v111);
  v260 = &v275 - ((v259 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_1000081F8(v324, v260, &qword_10025B848, &qword_1001D0290);
  v320 = &v275;
  __chkstk_darwin(v261);
  v263 = &v275 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = v323;
  v265 = sub_1000081F8(v323, v263, &qword_10025B860, &qword_1001D02A8);
  v319 = &v275;
  __chkstk_darwin(v265);
  v266 = &v275 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000081F8(v107, v266, &qword_10025B8A0, &qword_1001D0318);
  v267 = v314;
  sub_1000081F8(v260, v314, &qword_10025B848, &qword_1001D0290);
  v268 = sub_10000341C(&qword_10025B908, &qword_1001D0368);
  v269 = (v267 + v268[12]);
  v270 = v312;
  v271 = v311;
  *v269 = v312;
  v269[1] = v271;
  v272 = v309;
  v273 = v310;
  v269[2] = v309;
  v269[3] = v273;
  sub_1000081F8(v263, v267 + v268[16], &qword_10025B860, &qword_1001D02A8);
  sub_1000081F8(v266, v267 + v268[20], &qword_10025B8A0, &qword_1001D0318);
  sub_10002A8FC(v270, v271, v272, v273);
  sub_10002A940(v270, v271, v272, v273);
  sub_10000F500(v322, &qword_10025B8A0, &qword_1001D0318);
  sub_10000F500(v264, &qword_10025B860, &qword_1001D02A8);
  sub_10000F500(v324, &qword_10025B848, &qword_1001D0290);
  sub_10000F500(v266, &qword_10025B8A0, &qword_1001D0318);
  sub_10000F500(v263, &qword_10025B860, &qword_1001D02A8);
  sub_10002A940(v270, v271, v272, v273);
  return sub_10000F500(v260, &qword_10025B848, &qword_1001D0290);
}

uint64_t sub_10001B2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = type metadata accessor for HeaderButtonWithIconStyle(0);
  __chkstk_darwin(v59);
  v60 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for WritingToolsView(0);
  v52 = *(v5 - 8);
  __chkstk_darwin(v5);
  v53 = v6;
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_10025B9A0, &qword_1001D04F8);
  v57 = *(v7 - 8);
  v58 = v7;
  __chkstk_darwin(v7);
  v56 = &v51 - v8;
  v9 = sub_10000341C(&qword_10025B9A8, &qword_1001D0500);
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v55 = &v51 - v10;
  v11 = type metadata accessor for EnvironmentValues();
  v61 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000341C(&qword_10025B9B0, &qword_1001D0508);
  v15 = __chkstk_darwin(v14 - 8);
  v68 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v51 - v17;
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v81);
  v88 = 1;
  v87 = v82;
  v86 = v84;
  v89 = 1;
  *&v76 = 0;
  BYTE8(v76) = 1;
  *&v77 = v81;
  BYTE8(v77) = v82;
  *&v78 = v83;
  BYTE8(v78) = v84;
  v79 = v85;
  BYTE8(v80[1]) = 1;
  sub_10000341C(&qword_10025B9B8, &unk_1001D0510);
  sub_10000341C(&qword_10025B9C0, &qword_1001D6190);
  sub_100007120(&qword_10025B9C8, &qword_10025B9B8, &unk_1001D0510, &protocol conformance descriptor for TupleView<A>);
  sub_10002AF84();
  _ConditionalContent<>.init(storage:)();
  LocalizedStringKey.init(stringLiteral:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v64 = v20;
  v65 = v19;
  v62 = v21;
  v63 = v22;
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);

  if ((v24 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v23, 0);
    (*(v61 + 8))(v13, v11);
    v23 = v76;
  }

  if (!v23)
  {
    goto LABEL_8;
  }

  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if (v27 != 6 && !sub_10016FEDC())
  {

LABEL_8:
    v38 = 1;
    v37 = v66;
    v36 = v67;
    goto LABEL_9;
  }

  v28 = v54;
  sub_10002631C(a1, v54);
  v29 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v30 = swift_allocObject();
  sub_100029074(v28, v30 + v29, type metadata accessor for WritingToolsView);
  v31 = v56;
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v33 = v60;
  *v60 = KeyPath;
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025B9F0, &qword_10025B9A0, &qword_1001D04F8, &protocol conformance descriptor for Button<A>);
  sub_10002B028(&qword_10025B9F8, type metadata accessor for HeaderButtonWithIconStyle, &unk_1001DAB00);
  v34 = v55;
  v35 = v58;
  View.buttonStyle<A>(_:)();

  sub_10002B070(v33, type metadata accessor for HeaderButtonWithIconStyle);
  (*(v57 + 8))(v31, v35);
  v37 = v66;
  v36 = v67;
  (*(v66 + 32))(v18, v34, v67);
  v38 = 0;
LABEL_9:
  v39 = v18;
  (*(v37 + 56))(v18, v38, 1, v36);
  v71 = v92;
  v72 = v93;
  v73[0] = v94[0];
  *(v73 + 9) = *(v94 + 9);
  v69 = v90;
  v70 = v91;
  v40 = v68;
  sub_1000081F8(v18, v68, &qword_10025B9B0, &qword_1001D0508);
  v41 = v72;
  v74[2] = v71;
  v74[3] = v72;
  v42 = v73[0];
  v75[0] = v73[0];
  v43 = *(v73 + 9);
  *(v75 + 9) = *(v73 + 9);
  v44 = v69;
  v45 = v70;
  v74[0] = v69;
  v74[1] = v70;
  *(a2 + 32) = v71;
  *(a2 + 48) = v41;
  *(a2 + 64) = v42;
  *(a2 + 73) = v43;
  *a2 = v44;
  *(a2 + 16) = v45;
  v46 = v64;
  v47 = v65;
  *(a2 + 96) = v65;
  *(a2 + 104) = v46;
  v48 = v62 & 1;
  *(a2 + 112) = v62 & 1;
  *(a2 + 120) = v63;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v49 = sub_10000341C(&qword_10025B9D8, &qword_1001D0520);
  sub_1000081F8(v40, a2 + *(v49 + 80), &qword_10025B9B0, &qword_1001D0508);
  sub_1000081F8(v74, &v76, &unk_10025B9E0, &qword_1001D0528);
  sub_100007D98(v47, v46, v48);

  sub_10000F500(v39, &qword_10025B9B0, &qword_1001D0508);
  sub_10000F500(v40, &qword_10025B9B0, &qword_1001D0508);
  sub_10002A984(v47, v46, v48);

  v78 = v71;
  v79 = v72;
  v80[0] = v73[0];
  *(v80 + 9) = *(v73 + 9);
  v76 = v69;
  v77 = v70;
  return sub_10000F500(&v76, &unk_10025B9E0, &qword_1001D0528);
}

void *sub_10001BBE4(uint64_t a1)
{
  type metadata accessor for WritingToolsView(0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result endWritingTools];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001BC4C@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(21);
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

const char *sub_10001BC7C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v78 = a4;
  v76 = a2;
  v77 = a3;
  v79 = 0;
  v7 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v7 - 8);
  v70[0] = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WritingToolsView(0);
  v71 = *(v9 - 1);
  __chkstk_darwin(v9);
  v73 = v10;
  v74 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v11 - 8);
  v72 = v70 - v12;
  v13 = v9[20];
  v14 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  type metadata accessor for RewritingModel(0);
  swift_allocObject();
  v15 = sub_1000C32AC();
  sub_1000A73A0(v15, v16);

  Bindable.wrappedValue.getter();
  v17 = v84[0];
  swift_getKeyPath();
  v84[0] = v17;
  v18 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = v76;
  v20 = v77;
  v21 = v78;
  sub_10000F3F4(a1, v76, v77, v78);
  v75 = a1;
  sub_100036534(a1, v19, v20, v21);

  Bindable.wrappedValue.getter();
  v22 = v84[0];
  swift_getKeyPath();
  v84[0] = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  Bindable.wrappedValue.getter();
  v23 = v84[0];
  swift_getKeyPath();
  v84[0] = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v4 + v9[8]);
  v25 = v24;
  sub_100035E70(v24);

  v81 = v13;
  Bindable.wrappedValue.getter();
  v26 = v84[0];
  swift_getKeyPath();
  v84[0] = v26;
  v82 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = *(v26 + 24);

  v80 = v9;
  v28 = *(v4 + v9[11]);
  if (v28 == *(v27 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent))
  {
    *(v27 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = v28;

    v30 = v79;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v70[-2] = v27;
    LOBYTE(v70[-1]) = v28;
    v84[0] = v27;
    sub_10002B028(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    v30 = v79;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  Bindable.wrappedValue.getter();
  v31 = v84[0];
  swift_getKeyPath();
  v84[0] = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v31 + 24);

  v33 = *(v5 + v80[13]);
  if (*(v32 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) != v33)
  {
    v34 = swift_getKeyPath();
    __chkstk_darwin(v34);
    v70[-2] = v32;
    v70[-1] = v33;
    v84[0] = v32;
    sub_10002B028(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  Bindable.wrappedValue.getter();
  v35 = v84[0];
  swift_getKeyPath();
  v84[0] = v35;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = *(v35 + 24);

  v37 = *(v5 + v80[12]);
  if (v37 == *(v36 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing))
  {
    *(v36 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = v37;
  }

  else
  {
    v38 = swift_getKeyPath();
    __chkstk_darwin(v38);
    v70[-2] = v36;
    LOBYTE(v70[-1]) = v37;
    v84[0] = v36;
    sub_10002B028(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  Bindable.wrappedValue.getter();
  v39 = v84[0];
  swift_getKeyPath();
  v84[0] = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = *(v39 + 24);

  v41 = *(v5 + v80[14]);
  if (v41 == *(v40 + 64))
  {
    *(v40 + 64) = v41;

    v79 = v30;
  }

  else
  {
    v42 = swift_getKeyPath();
    __chkstk_darwin(v42);
    v70[-2] = v40;
    LOBYTE(v70[-1]) = v41;
    v84[0] = v40;
    sub_10002B028(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v79 = v30;
  }

  Bindable.wrappedValue.getter();
  v43 = v84[0];
  swift_getKeyPath();
  v84[0] = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v43 + 24);

  v45 = v80;
  sub_10000341C(&unk_10025B200, &qword_1001CFB18);
  State.wrappedValue.getter();
  v46 = swift_getKeyPath();
  __chkstk_darwin(v46);
  v70[-2] = v44;
  v70[-1] = v84;
  v83 = v44;
  sub_10002B028(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000F500(v84, &unk_10025B1C0, &unk_1001CFA90);
  v70[1] = v14;
  Bindable.wrappedValue.getter();
  v47 = v84[0];
  swift_getKeyPath();
  v84[0] = v47;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = (v5 + v45[15]);
  v49 = *v48;
  v50 = v48[1];

  sub_100036040(v49, v50);

  Bindable.wrappedValue.getter();
  v51 = v84[0];
  swift_getKeyPath();
  v84[0] = v51;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = (v5 + v45[16]);
  v53 = *v52;
  v54 = v52[1];

  sub_100036200(v53, v54);

  v55 = type metadata accessor for TaskPriority();
  v56 = v72;
  (*(*(v55 - 8) + 56))(v72, 1, 1, v55);
  v57 = v74;
  sub_10002631C(v5, v74);
  type metadata accessor for MainActor();
  v58 = static MainActor.shared.getter();
  v59 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = v58;
  *(v60 + 24) = &protocol witness table for MainActor;
  sub_100029074(v57, v60 + v59, type metadata accessor for WritingToolsView);
  sub_10015C9C8(0, 0, v56, &unk_1001D0490, v60);

  Bindable.wrappedValue.getter();
  v61 = v84[0];
  swift_getKeyPath();
  v84[0] = v61;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = sub_1000B1594();

  v64 = v75;
  v63 = v76;
  v65 = v77;
  v66 = v78;
  if (sub_100023698(v75, v76, v77, v78) || (v62 & 1) == 0)
  {
    v84[0] = v64;
    v84[1] = v63;
    v84[2] = v65;
    v85 = v66;
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.wrappedValue.getter();
    sub_100025A68();
    NavigationPath.append<A>(_:)();
    State.wrappedValue.setter();
  }

  result = sub_10006CA84(v64, v63, v65, v66);
  if ((v69 & 0x100) == 0)
  {
    return sub_10006CF60(result, v68, v69);
  }

  return result;
}

uint64_t sub_10001C9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001CA90, v5, v4);
}

uint64_t sub_10001CA90(uint64_t a1, uint64_t a2)
{

  type metadata accessor for WritingToolsView(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector:"supressAssistantBarInUIService"])
    {
      [v4 supressAssistantBarInUIService];
    }

    swift_unknownObjectRelease();
  }

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_10001CB38(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v21 = a4;
  v19 = a2;
  v20 = a3;
  v6 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for WritingToolsView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_10002631C(v4, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_100029074(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for WritingToolsView);
  sub_10015C9C8(0, 0, v12, &unk_1001D04F0, v16);

  if (sub_100023698(0, 0, 0, 255))
  {
    v22 = a1;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.wrappedValue.getter();
    sub_100025A68();
    NavigationPath.append<A>(_:)();
    State.wrappedValue.setter();
  }

  return sub_10006CF60("ProofreadGeneration", 19, 2);
}

double sub_10001CE08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WritingToolsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10002631C(a1, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100029074(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for WritingToolsView);
  v15 = a1;
  sub_10000341C(&qword_10025B950, &qword_1001D03C8);
  sub_10002AAE8();
  Button.init(action:label:)();
  v16 = 0;
  v17 = 0;
  v18 = 1;
  sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v9 = v19;
  v10 = v20;
  v11 = v22;
  LOBYTE(v19) = v21;
  v12 = a2 + *(sub_10000341C(&qword_10025B918, &qword_1001D0378) + 36);
  *&result = 16842752;
  *v12 = 16842752;
  *(v12 + 8) = v9;
  *(v12 + 16) = v10;
  *(v12 + 24) = v19;
  *(v12 + 32) = v11;
  return result;
}

void *sub_10001CFDC(uint64_t a1)
{
  v1 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v7[0] + 32);

  swift_getKeyPath();
  v7[0] = v2;
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100170300();

  sub_10000341C(&unk_10025B200, &qword_1001CFB18);
  State.wrappedValue.getter();
  if (v8)
  {
    sub_100028458(v7, v6);
    sub_10000F500(v7, &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v6, v6[3]);
    if (qword_10025A600 != -1)
    {
      swift_once();
    }

    sub_100009C54(qword_100276E10);
    sub_10000F4B4(v6);
  }

  else
  {
    sub_10000F500(v7, &unk_10025B1C0, &unk_1001CFA90);
  }

  v8 = &type metadata for WritingTools;
  v9 = sub_10002AC88();
  LOBYTE(v7[0]) = 6;
  v3 = isFeatureEnabled(_:)();
  sub_10000F4B4(v7);
  if (v3)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = result;
      if ([result respondsToSelector:"updatePromptEntryState:"])
      {
        [v5 updatePromptEntryState:1];
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    LOBYTE(v8) = 1;
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.wrappedValue.getter();
    sub_100025A68();
    NavigationPath.append<A>(_:)();
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10001D350@<X0>(uint64_t a2@<X8>)
{
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  LabeledContent<>.init(content:label:)();
  v3 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = sub_10000341C(&qword_10025B950, &qword_1001D03C8);
  v13 = a2 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_10001D478@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10001D4C0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100125454(16);
  sub_10002AC34();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_10001D638@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10001D768(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2, a3);
  type metadata accessor for WritingToolsView(0);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  type metadata accessor for PresentationModel(0);
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  v4 = Environment.init<A>(_:)();
  v6 = v5;
  v7 = static Alignment.center.getter();
  v9 = v8;
  result = sub_10000341C(&qword_10025B730, &qword_1001D01D0);
  v11 = a3 + *(result + 36);
  *v11 = v4;
  *(v11 + 8) = v6 & 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = v12;
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  return result;
}

uint64_t sub_10001D768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v316 = a6;
  if (!a4)
  {
    v310 = a2;
    v314 = a3;
    v312 = sub_10000341C(&qword_10025B798, &qword_1001D0200);
    __chkstk_darwin(v312);
    v313 = &v294 - v52;
    v53 = type metadata accessor for WritingToolsView(0);
    sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
    Bindable.wrappedValue.getter();
    v54 = v319;
    swift_getKeyPath();
    v319 = v54;
    v55 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v54) = sub_1000B1594();

    v315 = a5;
    if (v54)
    {
      v309 = sub_10000341C(&qword_10025B7A8, &qword_1001D0208);
      v311 = &v294;
      __chkstk_darwin(v309);
      v56 = a5;
      v58 = &v294 - v57;
      Bindable.wrappedValue.getter();
      v59 = v319;
      swift_getKeyPath();
      v319 = v59;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v308 = *(v59 + 24);

      v303 = type metadata accessor for RewritingView(0);
      sub_10000341C(&qword_10025B260, &qword_1001CFC10);
      State.projectedValue.getter();
      v60 = v56 + *(v53 + 92);
      v61 = *v60;
      v62 = *(v60 + 1);
      LOBYTE(v317) = v61;
      v318 = v62;
      sub_10000341C(&unk_1002640F0, &qword_1001D3490);
      v63 = State.projectedValue.getter();
      v307 = &v294;
      v305 = v320;
      v306 = v319;
      LODWORD(v304) = v321;
      v64 = *(v53 - 8);
      v65 = *(v64 + 64);
      __chkstk_darwin(v63);
      v66 = &v294 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      v301 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
      sub_10002631C(v56, v66);
      v67 = ((*(v64 + 80) + 16) & ~*(v64 + 80));
      v300 = v65;
      v296 = v55;
      v302 = (v67 + v65);
      v297 = swift_allocObject();
      v299 = v67;
      v68 = sub_100029074(v66, v67 + v297, type metadata accessor for WritingToolsView);
      v298 = &v294;
      __chkstk_darwin(v68);
      sub_10002631C(v56, v66);
      v69 = swift_allocObject();
      sub_100029074(v66, v67 + v69, type metadata accessor for WritingToolsView);
      v70 = v69 + ((v67 + v65 + 7) & 0xFFFFFFFFFFFFFFF8);
      v71 = v310;
      *v70 = a1;
      *(v70 + 8) = v71;
      *(v70 + 16) = v314;
      *(v70 + 24) = 0;
      type metadata accessor for CommonUIManager(0);
      sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);

      *v58 = Environment.init<A>(_:)();
      v58[8] = v72 & 1;
      type metadata accessor for WritingToolsModel(0);
      *(v58 + 2) = Environment.init<A>(_:)();
      v58[24] = v73 & 1;
      type metadata accessor for PresentationModel(0);
      sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
      *(v58 + 4) = Environment.init<A>(_:)();
      v58[40] = v74 & 1;
      LOBYTE(v317) = 0;
      State.init(wrappedValue:)();
      v75 = v320;
      v58[56] = v319;
      *(v58 + 8) = v75;
      v76 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
      __chkstk_darwin(v76 - 8);
      v78 = &v294 - v77;
      v79 = type metadata accessor for FBKSEvaluation.Subject();
      (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
      v80 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
      v317 = FBKEvaluationController.init(subject:)();
      State.init(wrappedValue:)();
      v81 = v320;
      *(v58 + 9) = v319;
      *(v58 + 10) = v81;
      v82 = v303;
      v83 = &v58[v303[11]];
      v84 = FocusState.init<>()();
      *v83 = v84 & 1;
      *(v83 + 1) = v85;
      v83[16] = v86 & 1;
      *(v58 + 6) = v308;
      v87 = &v58[v82[12]];
      v88 = v305;
      *v87 = v306;
      *(v87 + 1) = v88;
      v87[16] = v304;
      v89 = &v58[v82[13]];
      v90 = v297;
      *v89 = sub_10002B2B0;
      *(v89 + 1) = v90;
      v91 = &v58[v82[14]];
      *v91 = sub_10002A390;
      *(v91 + 1) = v69;
      __chkstk_darwin(v84);
      v92 = &v294 - v301;
      sub_10002631C(v315, &v294 - v301);
      v93 = swift_allocObject();
      sub_100029074(v92, v299 + v93, type metadata accessor for WritingToolsView);
      v94 = &v58[*(v309 + 9)];
      *v94 = 0;
      *(v94 + 1) = 0;
      *(v94 + 2) = sub_10002B25C;
      *(v94 + 3) = v93;
      v95 = sub_10000341C(&qword_10025B818, &qword_1001D0250);
      __chkstk_darwin(v95);
      sub_1000081F8(v58, &v294 - v96, &qword_10025B7A8, &qword_1001D0208);
      swift_storeEnumTagMultiPayload();
      sub_10000341C(&qword_10025B7C8, &qword_1001D0218);
      sub_100029A54();
      sub_100029B9C();
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v58, &qword_10025B7A8, &qword_1001D0208);
    }

    else
    {
      v309 = sub_10000341C(&qword_10025B7C8, &qword_1001D0218);
      v311 = &v294;
      __chkstk_darwin(v309);
      v150 = (&v294 - v149);
      Bindable.wrappedValue.getter();
      v151 = v319;
      swift_getKeyPath();
      v319 = v151;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v308 = *(v151 + 24);

      v152 = type metadata accessor for ModelResponseView(0);
      sub_10000341C(&qword_10025B260, &qword_1001CFC10);
      v153 = State.projectedValue.getter();
      v307 = &v294;
      v154 = *(v53 - 8);
      v155 = *(v154 + 64);
      __chkstk_darwin(v153);
      v305 = (v155 + 15) & 0xFFFFFFFFFFFFFFF0;
      v156 = &v294 - v305;
      sub_10002631C(a5, &v294 - v305);
      v157 = (*(v154 + 80) + 16) & ~*(v154 + 80);
      v306 = (v157 + v155);
      v158 = swift_allocObject();
      v304 = type metadata accessor for WritingToolsView;
      sub_100029074(v156, v158 + v157, type metadata accessor for WritingToolsView);
      v159 = v158 + ((v157 + v155 + 7) & 0xFFFFFFFFFFFFFFF8);
      v160 = v310;
      *v159 = a1;
      *(v159 + 8) = v160;
      *(v159 + 16) = v314;
      *(v159 + 24) = 0;
      *v150 = swift_getKeyPath();
      sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
      swift_storeEnumTagMultiPayload();
      v161 = v150 + v152[5];
      type metadata accessor for CommonUIManager(0);
      sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);

      *v161 = Environment.init<A>(_:)();
      v161[8] = v162 & 1;
      v163 = v150 + v152[6];
      type metadata accessor for PresentationModel(0);
      sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
      *v163 = Environment.init<A>(_:)();
      v163[8] = v164 & 1;
      v165 = v150 + v152[8];
      LOBYTE(v317) = 0;
      State.init(wrappedValue:)();
      v166 = v320;
      *v165 = v319;
      *(v165 + 1) = v166;
      v167 = (v150 + v152[9]);
      v168 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
      __chkstk_darwin(v168 - 8);
      v170 = &v294 - v169;
      v171 = type metadata accessor for FBKSEvaluation.Subject();
      (*(*(v171 - 8) + 56))(v170, 1, 1, v171);
      v172 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
      v317 = FBKEvaluationController.init(subject:)();
      State.init(wrappedValue:)();
      v173 = v320;
      *v167 = v319;
      v167[1] = v173;
      v174 = (v150 + v152[7]);
      v317 = v308;
      type metadata accessor for RewritingModel(0);
      v175 = State.init(wrappedValue:)();
      v176 = v320;
      *v174 = v319;
      v174[1] = v176;
      v177 = (v150 + v152[11]);
      *v177 = sub_10002B2B4;
      v177[1] = v158;
      __chkstk_darwin(v175);
      v178 = &v294 - v305;
      sub_10002631C(v315, &v294 - v305);
      v179 = swift_allocObject();
      sub_100029074(v178, v179 + v157, v304);
      v180 = (v150 + *(v309 + 9));
      *v180 = 0;
      v180[1] = 0;
      v180[2] = sub_10002B25C;
      v180[3] = v179;
      v181 = sub_10000341C(&qword_10025B818, &qword_1001D0250);
      __chkstk_darwin(v181);
      sub_1000081F8(v150, &v294 - v182, &qword_10025B7C8, &qword_1001D0218);
      swift_storeEnumTagMultiPayload();
      sub_10000341C(&qword_10025B7A8, &qword_1001D0208);
      sub_100029A54();
      sub_100029B9C();
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v150, &qword_10025B7C8, &qword_1001D0218);
    }

    v311 = sub_10000341C(&qword_10025B768, &qword_1001D01E8);
    v315 = &v294;
    __chkstk_darwin(v311);
    v184 = &v294 - v183;
    v185 = sub_10000341C(&qword_10025B778, &qword_1001D01F0);
    v314 = &v294;
    __chkstk_darwin(v185);
    v187 = &v294 - v186;
    v188 = sub_10000341C(&qword_10025B820, &qword_1001D0258);
    __chkstk_darwin(v188);
    v189 = v313;
    sub_1000081F8(v313, &v294 - v190, &qword_10025B798, &qword_1001D0200);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B788, &qword_1001D01F8);
    sub_10002993C();
    sub_1000299C8();
    _ConditionalContent<>.init(storage:)();
    v191 = sub_10000341C(&qword_10025B808, &qword_1001D0240);
    __chkstk_darwin(v191);
    sub_1000081F8(v187, &v294 - v192, &qword_10025B778, &qword_1001D01F0);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B7E8, &qword_1001D0228);
    sub_1000298B0();
    sub_100029CE4();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v187, &qword_10025B778, &qword_1001D01F0);
    v193 = sub_10000341C(&qword_10025B810, &qword_1001D0248);
    __chkstk_darwin(v193);
    sub_1000081F8(v184, &v294 - v194, &qword_10025B768, &qword_1001D01E8);
    swift_storeEnumTagMultiPayload();
    sub_100029824();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v184, &qword_10025B768, &qword_1001D01E8);
    return sub_10000F500(v189, &qword_10025B798, &qword_1001D0200);
  }

  if (a4 == 1)
  {
    v314 = a3;
    v310 = sub_10000341C(&qword_10025B5F8, &qword_1001CFFD0);
    v313 = *(v310 - 1);
    __chkstk_darwin(v310);
    v312 = &v294 - v9;
    v311 = sub_10000341C(&unk_10025B300, &qword_1001CFC58);
    v309 = &v294;
    v308 = *(v311 - 1);
    __chkstk_darwin(v311);
    v306 = &v294 - v10;
    v11 = type metadata accessor for CompositionView(0);
    v307 = &v294;
    __chkstk_darwin(v11);
    v13 = &v294 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = type metadata accessor for WritingToolsView(0);
    sub_10000F414(a1, a2);
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.projectedValue.getter();
    v15 = a5 + *(v14 + 92);
    v16 = *v15;
    v17 = *(v15 + 1);
    LOBYTE(v317) = v16;
    v318 = v17;
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.projectedValue.getter();
    v18 = a2;
    v19 = v319;
    v20 = v320;
    v21 = v321;
    v22 = type metadata accessor for CompositionModel(0);
    v23 = sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    v304 = v22;
    v305 = v23;
    *(v13 + 3) = Environment.init<A>(_:)();
    v13[32] = v24 & 1;
    type metadata accessor for CommonUIManager(0);
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
    *(v13 + 5) = Environment.init<A>(_:)();
    v13[48] = v25 & 1;
    v26 = &v13[*(v11 + 36)];
    *v26 = FocusState.init<>()() & 1;
    *(v26 + 1) = v27;
    v26[16] = v28 & 1;
    *v13 = a1;
    *(v13 + 1) = v18;
    v13[16] = v314;
    v29 = &v13[*(v11 + 32)];
    *v29 = v19;
    *(v29 + 1) = v20;
    v29[16] = v21;
    sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
    Bindable.wrappedValue.getter();
    v314 = type metadata accessor for WritingToolsModel(0);
    v30 = sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView, &unk_1001D93A8);
    v31 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    v32 = v306;
    View.environment<A>(_:)();

    sub_10002B070(v13, type metadata accessor for CompositionView);
    Bindable.wrappedValue.getter();
    v33 = v319;
    swift_getKeyPath();
    v319 = v33;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v319 = v11;
    v320 = v314;
    v321 = v30;
    v322 = v31;
    v307 = &opaque type descriptor for <<opaque return type of View.environment<A>(_:)>>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = v311;
    v36 = v312;
    v38 = v304;
    v37 = v305;
    View.environment<A>(_:)();

    (v308[1])(v32, v35);
    v314 = sub_10000341C(&qword_10025B768, &qword_1001D01E8);
    v315 = &v294;
    __chkstk_darwin(v314);
    v40 = &v294 - v39;
    v308 = sub_10000341C(&qword_10025B7E8, &qword_1001D0228);
    v309 = &v294;
    __chkstk_darwin(v308);
    v42 = &v294 - v41;
    v43 = sub_10000341C(&qword_10025B800, &qword_1001D0238);
    __chkstk_darwin(v43);
    v45 = v36;
    v46 = v310;
    (*(v313 + 16))(&v294 - v44, v45, v310);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B7F8, &qword_1001D0230);
    v319 = v311;
    v320 = v38;
    v321 = OpaqueTypeConformance2;
    v322 = v37;
    swift_getOpaqueTypeConformance2();
    sub_100029EA0();
    _ConditionalContent<>.init(storage:)();
    v47 = sub_10000341C(&qword_10025B808, &qword_1001D0240);
    __chkstk_darwin(v47);
    sub_1000081F8(v42, &v294 - v48, &qword_10025B7E8, &qword_1001D0228);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B778, &qword_1001D01F0);
    sub_1000298B0();
    sub_100029CE4();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v42, &qword_10025B7E8, &qword_1001D0228);
    v49 = sub_10000341C(&qword_10025B810, &qword_1001D0248);
    __chkstk_darwin(v49);
    sub_1000081F8(v40, &v294 - v50, &qword_10025B768, &qword_1001D01E8);
    swift_storeEnumTagMultiPayload();
    sub_100029824();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v40, &qword_10025B768, &qword_1001D01E8);
    return (*(v313 + 8))(v312, v46);
  }

  if (!(a3 | a2 | a1))
  {
LABEL_28:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v315 = a5;
  if (a1 == 1 && !(a3 | a2))
  {
    v313 = sub_10000341C(&qword_10025B788, &qword_1001D01F8);
    v97 = __chkstk_darwin(v313);
    v314 = (&v294 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
    v312 = &v294;
    __chkstk_darwin(v97);
    v311 = &v294 - v99;
    v100 = sub_10000341C(&qword_10025B2A8, &qword_1001CFC38);
    v310 = &v294;
    __chkstk_darwin(v100 - 8);
    v309 = (&v294 - v101);
    v307 = sub_10000341C(&qword_10025B650, &qword_1001D0080);
    v308 = &v294;
    v306 = *(v307 - 1);
    __chkstk_darwin(v307);
    v305 = &v294 - v102;
    v103 = type metadata accessor for ProofreadingView(0);
    v304 = &v294;
    v104 = v103 - 8;
    __chkstk_darwin(v103);
    v106 = &v294 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
    v107 = type metadata accessor for WritingToolsView(0);
    v108 = (a5 + *(v107 + 84));
    v110 = *v108;
    v109 = v108[1];
    v319 = v110;
    v320 = v109;
    sub_10000341C(&unk_10025B658, &qword_1001D0830);
    State.wrappedValue.getter();
    v301 = v317;
    v111 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v302 = &v294;
    __chkstk_darwin(v111 - 8);
    v113 = &v294 - v112;
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    v114 = State.projectedValue.getter();
    v299 = &v294;
    v115 = *(v107 - 8);
    v116 = *(v115 + 64);
    __chkstk_darwin(v114);
    v117 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_10002631C(v315, &v294 - v117);
    v118 = *(v115 + 80);
    v119 = (v118 + 16) & ~v118;
    v300 = v119 + v116;
    v120 = swift_allocObject();
    v298 = type metadata accessor for WritingToolsView;
    v303 = v119;
    sub_100029074(&v294 - v117, v120 + v119, type metadata accessor for WritingToolsView);
    v121 = v120 + ((v119 + v116 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(v121 + 8) = 0;
    *(v121 + 16) = 0;
    *v121 = 1;
    *(v121 + 24) = 2;
    type metadata accessor for CommonUIManager(0);
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
    *v106 = Environment.init<A>(_:)();
    v106[8] = v122 & 1;
    v123 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
    __chkstk_darwin(v123 - 8);
    v125 = &v294 - v124;
    v126 = type metadata accessor for FBKSEvaluation.Subject();
    (*(*(v126 - 8) + 56))(v125, 1, 1, v126);
    v127 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
    v317 = FBKEvaluationController.init(subject:)();
    State.init(wrappedValue:)();
    v128 = v320;
    *(v106 + 4) = v319;
    *(v106 + 5) = v128;
    AccessibilityFocusState.init<>()();
    sub_1000081F8(v113, &v106[*(v104 + 36)], &qword_1002632E0, &qword_1001D11A0);
    v317 = v301;
    type metadata accessor for ProofreadingModel(0);
    State.init(wrappedValue:)();
    v129 = sub_10000F500(v113, &qword_1002632E0, &qword_1001D11A0);
    v130 = v320;
    *(v106 + 2) = v319;
    *(v106 + 3) = v130;
    v131 = &v106[*(v104 + 44)];
    *v131 = sub_10002B2B4;
    *(v131 + 1) = v120;
    v297 = &v294;
    __chkstk_darwin(v129);
    v132 = &v294 - v117;
    v133 = v315;
    sub_10002631C(v315, v132);
    type metadata accessor for MainActor();
    v134 = static MainActor.shared.getter();
    v302 = v116;
    v301 = v118;
    v135 = swift_allocObject();
    *(v135 + 16) = v134;
    *(v135 + 24) = &protocol witness table for MainActor;
    sub_100029074(v132, v135 + ((v118 + 32) & ~v118), v298);
    v299 = type metadata accessor for TaskPriority();
    v136 = *(v299 - 1);
    v137 = *(v136 + 64);
    __chkstk_darwin(v299);
    v138 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
    v139 = &v294 - v138;
    static TaskPriority.userInitiated.getter();
    if (sub_1001C7274(2, 26, 4, 0))
    {
      v295 = type metadata accessor for _TaskModifier2();
      v296 = &v294;
      v294 = *(v295 - 8);
      __chkstk_darwin(v295);
      v141 = &v294 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
      v319 = 0;
      v320 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v319 = 0xD000000000000039;
      v320 = 0x80000001001E38C0;
      v317 = 326;
      v142._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v142);

      v298 = &v294;
      __chkstk_darwin(v143);
      v144 = &v294 - v138;
      v145 = &v294 - v138;
      v146 = v299;
      (*(v136 + 16))(v144, v145, v299);
      v133 = v315;
      _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
      (*(v136 + 8))(v139, v146);
      v147 = v305;
      sub_100029074(v106, v305, type metadata accessor for ProofreadingView);
      v148 = sub_10000341C(&qword_10025A938, &qword_1001CE118);
      (*(v294 + 32))(v147 + *(v148 + 36), v141, v295);
    }

    else
    {
      v272 = sub_10000341C(&qword_10025A940, &unk_1001CE120);
      v147 = v305;
      v273 = (v305 + *(v272 + 36));
      v274 = type metadata accessor for _TaskModifier();
      (*(v136 + 32))(&v273[*(v274 + 20)], v139, v299);
      *v273 = &unk_1001D0268;
      *(v273 + 1) = v135;
      sub_100029074(v106, v147, type metadata accessor for ProofreadingView);
    }

    v275 = v309;
    v276 = (*(v306 + 4))(v309, v147, v307);
    __chkstk_darwin(v276);
    v278 = &v294 - ((v277 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_10002631C(v133, v278);
    v279 = swift_allocObject();
    sub_100029074(v278, v303 + v279, type metadata accessor for WritingToolsView);
    v280 = v311;
    sub_10002A894(v275, v311, &qword_10025B2A8, &qword_1001CFC38);
    v281 = v314;
    v282 = (v280 + *(v313 + 36));
    *v282 = 0;
    v282[1] = 0;
    v282[2] = sub_10002A51C;
    v282[3] = v279;
    sub_10002A894(v280, v281, &qword_10025B788, &qword_1001D01F8);
    v312 = sub_10000341C(&qword_10025B768, &qword_1001D01E8);
    v315 = &v294;
    __chkstk_darwin(v312);
    v284 = &v294 - v283;
    v285 = sub_10000341C(&qword_10025B778, &qword_1001D01F0);
    v311 = &v294;
    __chkstk_darwin(v285);
    v287 = &v294 - v286;
    v288 = sub_10000341C(&qword_10025B820, &qword_1001D0258);
    __chkstk_darwin(v288);
    sub_1000081F8(v281, &v294 - v289, &qword_10025B788, &qword_1001D01F8);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B798, &qword_1001D0200);
    sub_10002993C();
    sub_1000299C8();
    _ConditionalContent<>.init(storage:)();
    v290 = sub_10000341C(&qword_10025B808, &qword_1001D0240);
    __chkstk_darwin(v290);
    sub_1000081F8(v287, &v294 - v291, &qword_10025B778, &qword_1001D01F0);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B7E8, &qword_1001D0228);
    sub_1000298B0();
    sub_100029CE4();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v287, &qword_10025B778, &qword_1001D01F0);
    v292 = sub_10000341C(&qword_10025B810, &qword_1001D0248);
    __chkstk_darwin(v292);
    sub_1000081F8(v284, &v294 - v293, &qword_10025B768, &qword_1001D01E8);
    swift_storeEnumTagMultiPayload();
    sub_100029824();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v284, &qword_10025B768, &qword_1001D01E8);
    return sub_10000F500(v281, &qword_10025B788, &qword_1001D01F8);
  }

  v313 = sub_10000341C(&qword_10025B7F8, &qword_1001D0230);
  v195 = __chkstk_darwin(v313);
  v314 = (&v294 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0));
  v312 = &v294;
  __chkstk_darwin(v195);
  v311 = &v294 - v197;
  v198 = sub_10000341C(&qword_10025B378, &qword_1001CFC88);
  v310 = &v294;
  __chkstk_darwin(v198 - 8);
  v309 = (&v294 - v199);
  v200 = type metadata accessor for QuestionnaireView(0);
  v308 = &v294;
  v201 = *(*(v200 - 1) + 64);
  __chkstk_darwin(v200);
  v202 = (v201 + 15) & 0xFFFFFFFFFFFFFFF0;
  v307 = (&v294 - v202);
  v203 = type metadata accessor for WritingToolsView(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v205 = *(a5 + v203[10]);
  if (!v205)
  {
    __break(1u);
    goto LABEL_28;
  }

  v206 = a5;
  v207 = Strong;
  v299 = *(a5 + v203[8]);
  v208 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v306 = &v294;
  __chkstk_darwin(v208 - 8);
  v210 = &v294 - v209;
  v298 = v205;
  v297 = v205;
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v305 = v210;
  v211 = State.projectedValue.getter();
  v304 = &v294;
  v212 = v203[16];
  v213 = (v206 + v203[15]);
  v214 = v213[1];
  v301 = *v213;
  v215 = *(v206 + v212 + 8);
  v303 = *(v206 + v212);
  __chkstk_darwin(v211);
  v216 = &v294 - v202;
  *v216 = 0x4024000000000000;
  *(v216 + 2) = 5;
  *(v216 + 24) = xmmword_1001CFA80;
  __asm { FMOV            V0.2D, #24.0 }

  *(v216 + 40) = _Q0;
  v222 = v200[8];
  *&v216[v222] = swift_getKeyPath();
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  swift_storeEnumTagMultiPayload();
  v223 = &v216[v200[9]];
  type metadata accessor for CommonUIManager(0);
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  v300 = v214;

  v302 = v215;

  *v223 = Environment.init<A>(_:)();
  v223[8] = v224 & 1;
  v225 = &v216[v200[12]];
  LOBYTE(v317) = 0;
  State.init(wrappedValue:)();
  v226 = v320;
  *v225 = v319;
  *(v225 + 1) = v226;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v227 = type metadata accessor for Logger();
  sub_10000F34C(v227, qword_100276F20);
  v228 = static os_log_type_t.debug.getter();
  swift_unknownObjectRetain();
  v229 = Logger.logObject.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v229, v228))
  {
    v230 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    v319 = v231;
    *v230 = 136315138;
    if (v207)
    {
      v232 = 7562617;
    }

    else
    {
      v232 = 28526;
    }

    if (v207)
    {
      v233 = 0xE300000000000000;
    }

    else
    {
      v233 = 0xE200000000000000;
    }

    v234 = v200;
    v235 = sub_10002510C(v232, v233, &v319);

    *(v230 + 4) = v235;
    v200 = v234;
    _os_log_impl(&_mh_execute_header, v229, v228, "Initialize QuestionnaireView with delegate: %s", v230, 0xCu);
    sub_10000F4B4(v231);
  }

  *(v216 + 1) = v298;
  type metadata accessor for QuestionnaireModel(0);
  swift_allocObject();
  v236 = v297;
  swift_unknownObjectRetain();
  sub_10004F8B0(v236, v207, v299);
  v237 = &v216[v200[11]];
  v317 = v238;
  State.init(wrappedValue:)();
  v239 = v319;
  v240 = v320;
  *v237 = v319;
  *(v237 + 1) = v240;
  v241 = &v216[v200[10]];
  v242 = v305;
  sub_1000081F8(v305, v241, &qword_1002632E0, &qword_1001D11A0);
  v319 = v239;
  v320 = v240;

  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  sub_100036040(v301, v300);

  v319 = v239;
  v320 = v240;
  State.wrappedValue.getter();

  sub_100036200(v303, v302);
  swift_unknownObjectRelease();

  sub_10000F500(v242, &qword_1002632E0, &qword_1001D11A0);
  v243 = v307;
  sub_100029074(v216, v307, type metadata accessor for QuestionnaireView);
  v244 = v309;
  v245 = sub_100029074(v243, v309, type metadata accessor for QuestionnaireView);
  v246 = *(v203 - 1);
  v247 = *(v246 + 64);
  __chkstk_darwin(v245);
  sub_10002631C(v315, &v294 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0));
  v248 = (*(v246 + 80) + 16) & ~*(v246 + 80);
  v249 = swift_allocObject();
  sub_100029074(&v294 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0), v249 + v248, type metadata accessor for WritingToolsView);
  v250 = v311;
  sub_10002A894(v244, v311, &qword_10025B378, &qword_1001CFC88);
  v251 = v314;
  v252 = (v250 + *(v313 + 36));
  *v252 = 0;
  v252[1] = 0;
  v252[2] = sub_10002B25C;
  v252[3] = v249;
  sub_10002A894(v250, v251, &qword_10025B7F8, &qword_1001D0230);
  v312 = sub_10000341C(&qword_10025B768, &qword_1001D01E8);
  v315 = &v294;
  __chkstk_darwin(v312);
  v254 = &v294 - v253;
  v255 = sub_10000341C(&qword_10025B7E8, &qword_1001D0228);
  v311 = &v294;
  __chkstk_darwin(v255);
  v257 = &v294 - v256;
  v258 = sub_10000341C(&qword_10025B800, &qword_1001D0238);
  v310 = &v294;
  __chkstk_darwin(v258);
  sub_1000081F8(v251, &v294 - v259, &qword_10025B7F8, &qword_1001D0230);
  swift_storeEnumTagMultiPayload();
  sub_10000341C(&qword_10025B5F8, &qword_1001CFFD0);
  v260 = sub_100003E34(&unk_10025B300, &qword_1001CFC58);
  v261 = type metadata accessor for CompositionModel(255);
  v262 = type metadata accessor for CompositionView(255);
  v263 = type metadata accessor for WritingToolsModel(255);
  v264 = sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView, &unk_1001D93A8);
  v265 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  v319 = v262;
  v320 = v263;
  v321 = v264;
  v322 = v265;
  v266 = swift_getOpaqueTypeConformance2();
  v267 = sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  v319 = v260;
  v320 = v261;
  v321 = v266;
  v322 = v267;
  swift_getOpaqueTypeConformance2();
  sub_100029EA0();
  _ConditionalContent<>.init(storage:)();
  v268 = sub_10000341C(&qword_10025B808, &qword_1001D0240);
  __chkstk_darwin(v268);
  sub_1000081F8(v257, &v294 - v269, &qword_10025B7E8, &qword_1001D0228);
  swift_storeEnumTagMultiPayload();
  sub_10000341C(&qword_10025B778, &qword_1001D01F0);
  sub_1000298B0();
  sub_100029CE4();
  _ConditionalContent<>.init(storage:)();
  sub_10000F500(v257, &qword_10025B7E8, &qword_1001D0228);
  v270 = sub_10000341C(&qword_10025B810, &qword_1001D0248);
  __chkstk_darwin(v270);
  sub_1000081F8(v254, &v294 - v271, &qword_10025B768, &qword_1001D01E8);
  swift_storeEnumTagMultiPayload();
  sub_100029824();
  _ConditionalContent<>.init(storage:)();
  sub_10000F500(v254, &qword_10025B768, &qword_1001D01E8);
  return sub_10000F500(v314, &qword_10025B7F8, &qword_1001D0230);
}