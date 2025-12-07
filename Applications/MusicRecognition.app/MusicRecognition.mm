uint64_t sub_100002688(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100141F30, &qword_1000F4E38);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v17[-v4];
  v6 = sub_100002D44(&qword_100141F38, &qword_1000F4E40);
  __chkstk_darwin(v6);
  v8 = &v17[-v7];
  v18 = a1;
  Label.init(title:icon:)();
  v9 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v11 = &v5[*(sub_100002D44(&qword_100141F40, &qword_1000F4E78) + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  *&v5[*(v3 + 44)] = static HierarchicalShapeStyle.secondary.getter();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100004274(v5, v8);
  v12 = &v8[*(v6 + 36)];
  v13 = v24;
  v12[4] = v23;
  v12[5] = v13;
  v12[6] = v25;
  v14 = v20;
  *v12 = v19;
  v12[1] = v14;
  v15 = v22;
  v12[2] = v21;
  v12[3] = v15;
  sub_1000042E4();
  View.accessibilityIdentifier(_:)();
  return sub_100004554(v8);
}

uint64_t sub_1000028D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100141F90, &qword_1000F4E98);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v21 - v13;
  v21[1] = a1;
  v15 = static Locale.autoupdatingCurrent.getter();
  sub_1000045BC(v15, v16, v17);
  IntegerFormatStyle.init(locale:)();
  static Locale.current.getter();
  IntegerFormatStyle.locale(_:)();
  (*(v5 + 8))(v7, v4);
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_100004610(&qword_100141FA0, &qword_100141F90, &qword_1000F4E98, &protocol conformance descriptor for IntegerFormatStyle<A>);
  BinaryInteger.formatted<A>(_:)();
  result = (v18)(v14, v8);
  v20 = v21[3];
  *a2 = v21[2];
  *(a2 + 8) = v20;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100002B30@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100002B9C(uint64_t *a1)
{
  if (sub_1000EEF04(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100002C04(uint64_t *a1)
{
  if (sub_1000EEF04(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_100002CF8();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_100003B98(&qword_100141DD8, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_100002CF8()
{
  result = qword_100141DD0;
  if (!qword_100141DD0)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141DD0);
  }

  return result;
}

uint64_t sub_100002D44(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D8C(uint64_t *a1)
{
  if (sub_1000EEF04(2, 26, 0, 0))
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

uint64_t sub_100002EF0(uint64_t *a1)
{
  if (sub_1000EEF04(2, 26, 0, 0))
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

uint64_t sub_1000030FC(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141EC0, type metadata accessor for SHError, &unk_1000F4AA8);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003168(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141EC0, type metadata accessor for SHError, &unk_1000F4AA8);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000031D8(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError, &unk_1000F4C44);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003264@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000329C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003314(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003394@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000033EC(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError, &unk_1000F4C44);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003458(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError, &unk_1000F4C44);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000034C4(void *a1, uint64_t a2)
{
  v4 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError, &unk_1000F4C44);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003578(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError, &unk_1000F4C44);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000035F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100003654@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError, &unk_1000F4C44);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000036FC(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141E48, type metadata accessor for ASCAppState, &unk_1000F46DC);
  v3 = sub_100003B98(&qword_100141E50, type metadata accessor for ASCAppState, &unk_1000F467C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000037B8(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141F00, type metadata accessor for NSKeyValueChangeKey, &unk_1000F4C00);
  v3 = sub_100003B98(&qword_100141F08, type metadata accessor for NSKeyValueChangeKey, &unk_1000F4B54);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003874@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000038BC(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141F10, type metadata accessor for Key, &unk_1000F4924);
  v3 = sub_100003B98(&qword_100141F18, type metadata accessor for Key, &unk_1000F48C4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003978()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000039B4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003A08()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100003A7C(void *a1, uint64_t *a2)
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

uint64_t sub_100003B04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100003B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003CD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003CF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1000040EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100141EE8;
  if (!qword_100141EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141EE8);
  }

  return result;
}

__n128 sub_1000041D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000041DC(uint64_t a1, int a2)
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

uint64_t sub_1000041FC(uint64_t result, int a2, int a3)
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

uint64_t sub_100004274(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100141F30, &qword_1000F4E38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000042E4()
{
  result = qword_100141F48;
  if (!qword_100141F48)
  {
    sub_100004370(&qword_100141F38, &qword_1000F4E40);
    sub_1000043B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141F48);
  }

  return result;
}

uint64_t sub_100004370(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000043B8()
{
  result = qword_100141F50;
  if (!qword_100141F50)
  {
    sub_100004370(&qword_100141F30, &qword_1000F4E38);
    sub_100004470();
    sub_100004610(&qword_100141F80, &qword_100141F88, &qword_1000F4E90, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141F50);
  }

  return result;
}

unint64_t sub_100004470()
{
  result = qword_100141F58;
  if (!qword_100141F58)
  {
    sub_100004370(&qword_100141F40, &qword_1000F4E78);
    sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141F58);
  }

  return result;
}

uint64_t sub_100004554(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100141F38, &qword_1000F4E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000045BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100141F98;
  if (!qword_100141F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141F98);
  }

  return result;
}

uint64_t sub_100004610(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100004658(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004664(uint64_t a1, int a2)
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

uint64_t sub_100004684(uint64_t result, int a2, int a3)
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

unint64_t sub_1000046C8()
{
  result = qword_100141FB0;
  if (!qword_100141FB0)
  {
    sub_100004370(&qword_100141FB8, &qword_1000F4EC0);
    sub_1000042E4();
    sub_100003B98(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141FB0);
  }

  return result;
}

void sub_1000047AC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100004834@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_100002D44(&qword_100141DE0, &qword_1000F4508);
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v46 = &v39 - v6;
  v7 = sub_100002D44(&qword_100141FF0, &qword_1000F5070);
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  __chkstk_darwin(v7);
  v10 = &v39 - v9;
  KeyPath = swift_getKeyPath();
  v40 = KeyPath;
  type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel(0);
  v12 = swift_allocObject();
  v13 = sub_1000B9C14(v12);
  v14 = swift_getKeyPath();
  v47 = a1;
  v48 = a2;
  sub_100002D44(&qword_100142028, &qword_1000F50B0);
  State.wrappedValue.getter();
  v47 = KeyPath;
  LOBYTE(v48) = 0;
  v49 = v13;
  v50 = v14;
  v51 = v52;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v16 = sub_100002D44(&qword_100141FF8, &qword_1000F5078);
  v17 = sub_1000075EC();
  View.onContinueUserActivity(_:perform:)();

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;

  v47 = v16;
  v48 = v17;
  swift_getOpaqueTypeConformance2();
  v19 = v41;
  View.onContinueUserActivity(_:perform:)();

  (v42[1])(v10, v19);
  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  v22 = type metadata accessor for TaskPriority();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v39 - v25;
  static TaskPriority.userInitiated.getter();
  if (sub_1000EEF04(2, 26, 4, 0))
  {
    v41 = type metadata accessor for _TaskModifier2();
    v42 = &v39;
    v40 = *(v41 - 8);
    __chkstk_darwin(v41);
    v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v47 = 0xD000000000000034;
    v48 = 0x80000001000FF260;
    v52 = 38;
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v31 = __chkstk_darwin(v30);
    (*(v23 + 16))(&v39 - v25, v26, v22, v31);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v23 + 8))(v26, v22);
    v32 = v45;
    (*(v43 + 32))(v45, v46, v44);
    v33 = sub_100002D44(&qword_100141DE8, &unk_1000F4510);
    return (*(v40 + 32))(v32 + *(v33 + 36), v28, v41);
  }

  else
  {
    v35 = sub_100002D44(&qword_100141DF0, &qword_1000F50D0);
    v36 = v45;
    v37 = (v45 + *(v35 + 36));
    v38 = type metadata accessor for _TaskModifier();
    (*(v23 + 32))(&v37[*(v38 + 20)], &v39 - v25, v22);
    *v37 = &unk_1000F50C0;
    *(v37 + 1) = v21;
    return (*(v43 + 32))(v36, v46, v44);
  }
}

void *sub_100004E9C@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_100007990(a2, a3, a4);
  result = EnvironmentValues.subscript.getter();
  *a1 = v6;
  return result;
}

uint64_t sub_100004EEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_100007990(a1, a2, a3);

  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100004F4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D44(&qword_100142028, &qword_1000F50B0);
  State.wrappedValue.getter();
  sub_1000B70AC(a4, a1);
}

uint64_t sub_100004FBC()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100005050, v2, v1);
}

uint64_t sub_100005050()
{
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100005114;

  return sub_1000C8618();
}

uint64_t sub_100005114()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_100005234, v3, v2);
}

uint64_t sub_100005234()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005294()
{
  v1 = sub_100002D44(&qword_100141FE0, &qword_1000F5058);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_100002D44(&qword_100141FE8, &unk_1000F5060);
  v8 = sub_100004370(&qword_100141DE0, &qword_1000F4508);
  v9 = sub_100004370(&qword_100141FF0, &qword_1000F5070);
  v10 = sub_100004370(&qword_100141FF8, &qword_1000F5078);
  v11 = sub_1000075EC();
  v15 = v10;
  v16 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v9;
  v16 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v15 = v8;
  v16 = v13;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  sub_100004610(&qword_100142020, &qword_100141FE0, &qword_1000F5058, &protocol conformance descriptor for WindowGroup<A>);
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1000054EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007568();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005514@<X0>(char *a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v42 = a4;
  v43 = sub_100002D44(&qword_100142038, &qword_1000F50D8);
  __chkstk_darwin(v43);
  v7 = &v35 - v6;
  v37 = sub_100002D44(&qword_100142040, &qword_1000F50E0);
  __chkstk_darwin(v37);
  v9 = (&v35 - v8);
  v39 = sub_100002D44(&qword_100142048, &qword_1000F50E8);
  __chkstk_darwin(v39);
  v41 = &v35 - v10;
  v36 = sub_100002D44(&qword_100142050, &qword_1000F50F0);
  __chkstk_darwin(v36);
  v12 = (&v35 - v11);
  v40 = sub_100002D44(&qword_100142058, &qword_1000F50F8);
  __chkstk_darwin(v40);
  v35 = &v35 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = a1;
  v19 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v15 + 8))(v17, v14);
    v18 = v44;
  }

  swift_getKeyPath();
  v44 = v18;
  sub_100007B78(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v18[16];

  if (v21)
  {
    if (v21 == 1)
    {
      type metadata accessor for HistoryListProvider(0);
      v23 = swift_allocObject();
      type metadata accessor for SHLibrary();
      *(v23 + 16) = static SHLibrary.default.getter();
      ObservationRegistrar.init()();
      sub_100002D44(&qword_1001420B8, &qword_1000F5138);
      v24 = swift_allocObject();
      ObservationRegistrar.init()();
      *(v24 + 16) = v23;
      sub_100002D44(&qword_1001420C0, &qword_1000F5140);
      swift_allocObject();

      *(v24 + 24) = sub_100006C08(v25);
      *v9 = v24;
      v26 = *(sub_100002D44(&qword_100142090, &qword_1000F5128) + 36);
      *(v9 + v26) = swift_getKeyPath();
      sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel(0);
      sub_100007B78(&qword_100142070, type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel, &unk_1000FC948);

      Bindable<A>.init(wrappedValue:)();
      sub_100007FDC(v9, v12, &qword_100142040, &qword_1000F50E0);
      swift_storeEnumTagMultiPayload();
      sub_100007A90();
      v27 = v35;
      _ConditionalContent<>.init(storage:)();
      sub_100007FDC(v27, v41, &qword_100142058, &qword_1000F50F8);
      swift_storeEnumTagMultiPayload();
      sub_100007A04();
      sub_100007BC0();
      _ConditionalContent<>.init(storage:)();
      sub_100007E14(v27, &qword_100142058, &qword_1000F50F8);
      v28 = v9;
      v29 = &qword_100142040;
      v30 = &qword_1000F50E0;
    }

    else
    {
      __chkstk_darwin(v22);
      *(&v35 - 4) = a1;
      *(&v35 - 24) = v19 & 1;
      *(&v35 - 2) = v38;
      type metadata accessor for TrackPageView(0);
      sub_100007B78(&qword_100142068, type metadata accessor for TrackPageView, &unk_1000F7A60);
      NavigationStack.init<>(root:)();
      type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel(0);
      sub_100007B78(&qword_100142070, type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel, &unk_1000FC948);

      Bindable<A>.init(wrappedValue:)();
      sub_100007FDC(v7, v41, &qword_100142038, &qword_1000F50D8);
      swift_storeEnumTagMultiPayload();
      sub_100007A04();
      sub_100007BC0();
      _ConditionalContent<>.init(storage:)();
      v28 = v7;
      v29 = &qword_100142038;
      v30 = &qword_1000F50D8;
    }
  }

  else
  {
    v44 = static Color.clear.getter();
    sub_100007D0C(v44, v31, v32);
    *v12 = Color.init<A>(_:)();
    swift_storeEnumTagMultiPayload();
    sub_100007A90();

    v33 = v35;
    _ConditionalContent<>.init(storage:)();
    sub_100007FDC(v33, v41, &qword_100142058, &qword_1000F50F8);
    swift_storeEnumTagMultiPayload();
    sub_100007A04();
    sub_100007BC0();
    _ConditionalContent<>.init(storage:)();

    v28 = v33;
    v29 = &qword_100142058;
    v30 = &qword_1000F50F8;
  }

  return sub_100007E14(v28, v29, v30);
}

uint64_t sub_100005D48@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v6 - 8);
  v82 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v73 - v9;
  __chkstk_darwin(v10);
  v81 = &v73 - v11;
  __chkstk_darwin(v12);
  v74 = &v73 - v13;
  __chkstk_darwin(v14);
  v80 = &v73 - v15;
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  v20 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v20 = v85[0];
  }

  swift_getKeyPath();
  v85[0] = v20;
  sub_100007B78(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v79 = *(v20 + 24);
  v73 = v79;

  v22 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v22 = v85[0];
  }

  swift_getKeyPath();
  v85[0] = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v22 + 40);
  v77 = *(v22 + 32);
  v78 = v24;

  v25 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v25 = v85[0];
  }

  swift_getKeyPath();
  v85[0] = v25;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v75 = *(v25 + 48);

  v27 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v27 = v85[0];
  }

  swift_getKeyPath();
  v85[0] = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v27 + 16);

  if (a2)
  {
    v86 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    a1 = v86;
  }

  v31 = 0x2000Bu >> (8 * v29);
  swift_getKeyPath();
  v85[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v76 = *(a1 + 49);

  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v32 = qword_10014FF90;
  v33 = type metadata accessor for MusicSubscriptionStatusController(0);
  v85[3] = v33;
  v85[4] = &off_100139B30;
  v85[0] = v32;
  type metadata accessor for TrackPageViewModel(0);
  v34 = swift_allocObject();
  v35 = sub_100007D60(v85, v33);
  v36 = __chkstk_darwin(v35);
  v38 = (&v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38, v36);
  v40 = *v38;
  v84[3] = v33;
  v84[4] = &off_100139B30;
  v84[0] = v40;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0u;
  *(v34 + 64) = 0u;
  *(v34 + 80) = 0u;
  *(v34 + 96) = 0u;
  *(v34 + 112) = 0u;
  *(v34 + 128) = 0;
  *(v34 + 136) = 2;
  *(v34 + 144) = 0x3FE6666666666666;
  *(v34 + 200) = 0;
  *(v34 + 152) = 0u;
  *(v34 + 168) = 0u;
  *(v34 + 177) = 0u;
  *(v34 + 248) = 0;
  *(v34 + 232) = 0u;
  *(v34 + 216) = 0u;
  *(v34 + 392) = 0u;
  *(v34 + 408) = 0u;
  *(v34 + 360) = 0u;
  *(v34 + 376) = 0u;
  *(v34 + 328) = 0u;
  *(v34 + 344) = 0u;
  *(v34 + 296) = 0u;
  *(v34 + 312) = 0u;
  *(v34 + 264) = 0u;
  *(v34 + 280) = 0u;
  *(v34 + 424) = 0;
  *(v34 + 432) = 1;
  *(v34 + 440) = 0u;
  *(v34 + 456) = 0u;
  *(v34 + 472) = 0u;
  v41 = objc_opt_self();

  *(v34 + 488) = [v41 sharedInstance];
  *(v34 + 496) = LocalizedStringKey.init(stringLiteral:)();
  *(v34 + 504) = v42;
  *(v34 + 512) = v43 & 1;
  *(v34 + 520) = v44;
  *(v34 + 528) = LocalizedStringKey.init(stringLiteral:)();
  *(v34 + 536) = v45;
  *(v34 + 544) = v46 & 1;
  *(v34 + 552) = v47;
  ObservationRegistrar.init()();
  v48 = v79;
  *(v34 + 560) = v79;
  v49 = v78;
  *(v34 + 568) = v77;
  *(v34 + 576) = v49;
  *(v34 + 584) = v75;
  sub_100007DB0(v84, v34 + 592);
  *(v34 + 256) = v31;
  if (v48)
  {
    v50 = [v73 artworkURL];
    v51 = v80;
    if (v50)
    {
      v52 = v74;
      v53 = v50;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = 0;
    }

    else
    {
      v54 = 1;
      v52 = v74;
    }

    v56 = type metadata accessor for URL();
    (*(*(v56 - 8) + 56))(v52, v54, 1, v56);
    sub_100007F6C(v52, v51);
  }

  else
  {
    v55 = type metadata accessor for URL();
    v51 = v80;
    (*(*(v55 - 8) + 56))(v80, 1, 1, v55);
  }

  v57 = type metadata accessor for URL();
  v58 = *(*(v57 - 8) + 56);
  v59 = v81;
  v58(v81, 1, 1, v57);
  type metadata accessor for SongArtworkViewModel(0);
  v60 = swift_allocObject();
  v58((v60 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL), 1, 1, v57);
  v58((v60 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL), 1, 1, v57);
  ObservationRegistrar.init()();
  v61 = v83;
  sub_100007FDC(v51, v83, &unk_100144630, &qword_1000F5180);
  sub_1000D88D8(v61);
  sub_100007FDC(v59, v61, &unk_100144630, &qword_1000F5180);
  v62 = v51;
  v63 = v82;
  sub_100007FDC(v61, v82, &unk_100144630, &qword_1000F5180);
  sub_1000D8B98(v63);
  sub_100007E14(v59, &unk_100144630, &qword_1000F5180);
  sub_100007E14(v62, &unk_100144630, &qword_1000F5180);
  sub_100007E14(v61, &unk_100144630, &qword_1000F5180);
  sub_100007E74(v84);
  *(v34 + 208) = v60;
  *(v34 + 632) = v76;
  sub_100007E74(v85);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v64 = type metadata accessor for TrackPageView(0);
  v65 = v64[5];
  *(a3 + v65) = swift_getKeyPath();
  sub_100002D44(&qword_1001420D8, &qword_1000F75E0);
  swift_storeEnumTagMultiPayload();
  v66 = v64[6];
  *(a3 + v66) = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  swift_storeEnumTagMultiPayload();
  v67 = v64[7];
  *(a3 + v67) = swift_getKeyPath();
  sub_100002D44(&qword_1001420E0, &unk_1000F5290);
  swift_storeEnumTagMultiPayload();
  v68 = (a3 + v64[9]);
  *v68 = [objc_allocWithZone(CLLocationManager) init];
  type metadata accessor for LocationManager(0);
  Logger.init(subsystem:category:)();
  v69 = (a3 + v64[10]);
  sub_100002D44(&qword_1001420E8, &qword_1000F7620);
  *(swift_allocObject() + 16) = 0;
  sub_100004610(&qword_1001420F0, &qword_1001420E8, &qword_1000F7620, &unk_1000FC274);
  result = ObservedObject.init(wrappedValue:)();
  *v69 = result;
  v69[1] = v71;
  *(a3 + v64[8]) = v34;
  v72 = (a3 + v64[11]);
  *v72 = 0;
  v72[1] = 0;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006A30(*&argc, argv, envp);
  static App.main()();
  return 0;
}

unint64_t sub_100006A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100141FD8;
  if (!qword_100141FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141FD8);
  }

  return result;
}

uint64_t sub_100006A84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100006ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100006B24(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100006B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100006B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100006C08(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v3 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v15 = type metadata accessor for NavigationPath();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringResource.init(stringLiteral:)();
  v19 = v2 + qword_10014FEE8;
  *v19 = LocalizedStringKey.init(stringLiteral:)();
  *(v19 + 8) = v20;
  *(v19 + 16) = v21 & 1;
  *(v19 + 24) = v22;
  v23 = v2 + qword_10014FEF0;
  *v23 = LocalizedStringKey.init(stringLiteral:)();
  *(v23 + 8) = v24;
  *(v23 + 16) = v25 & 1;
  *(v23 + 24) = v26;
  v27 = v2 + qword_10014FEF8;
  *v27 = LocalizedStringKey.init(stringLiteral:)();
  *(v27 + 8) = v28;
  *(v27 + 16) = v29 & 1;
  *(v27 + 24) = v30;
  v31 = v2 + qword_10014FF00;
  *v31 = LocalizedStringKey.init(stringLiteral:)();
  *(v31 + 8) = v32;
  *(v31 + 16) = v33 & 1;
  *(v31 + 24) = v34;
  v35 = (v2 + qword_100142EB8);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  *(v2 + qword_100142EC0) = 0;
  *(v2 + qword_100142EC8) = 0;
  NavigationPath.init()();
  (*(v16 + 32))(v2 + qword_100142ED0, v18, v15);
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v36 = qword_10014FF90;
  v37 = type metadata accessor for MusicSubscriptionStatusController(0);
  v59[3] = v37;
  v59[4] = &off_100139B30;
  v59[0] = v36;
  type metadata accessor for TrackPageViewModel(0);
  v38 = swift_allocObject();
  v39 = sub_100007D60(v59, v37);
  v56 = &v56;
  v40 = __chkstk_darwin(v39);
  v42 = (&v56 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = *v42;
  v58[3] = v37;
  v58[4] = &off_100139B30;
  v58[0] = v44;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = 0u;
  *(v38 + 48) = 0u;
  *(v38 + 64) = 0u;
  *(v38 + 80) = 0u;
  *(v38 + 96) = 0u;
  *(v38 + 112) = 0u;
  *(v38 + 128) = 0;
  *(v38 + 136) = 2;
  *(v38 + 144) = 0x3FE6666666666666;
  *(v38 + 200) = 0;
  *(v38 + 152) = 0u;
  *(v38 + 168) = 0u;
  *(v38 + 177) = 0u;
  *(v38 + 248) = 0;
  *(v38 + 232) = 0u;
  *(v38 + 216) = 0u;
  *(v38 + 392) = 0u;
  *(v38 + 408) = 0u;
  *(v38 + 360) = 0u;
  *(v38 + 376) = 0u;
  *(v38 + 328) = 0u;
  *(v38 + 344) = 0u;
  *(v38 + 296) = 0u;
  *(v38 + 312) = 0u;
  *(v38 + 264) = 0u;
  *(v38 + 280) = 0u;
  *(v38 + 424) = 0;
  *(v38 + 432) = 1;
  *(v38 + 440) = 0u;
  *(v38 + 456) = 0u;
  *(v38 + 472) = 0u;
  v45 = objc_opt_self();

  *(v38 + 488) = [v45 sharedInstance];
  *(v38 + 496) = LocalizedStringKey.init(stringLiteral:)();
  *(v38 + 504) = v46;
  *(v38 + 512) = v47 & 1;
  *(v38 + 520) = v48;
  *(v38 + 528) = LocalizedStringKey.init(stringLiteral:)();
  *(v38 + 536) = v49;
  *(v38 + 544) = v50 & 1;
  *(v38 + 552) = v51;
  ObservationRegistrar.init()();
  *(v38 + 584) = 0;
  *(v38 + 576) = 0;
  *(v38 + 560) = 0u;
  sub_100007DB0(v58, v38 + 592);
  *(v38 + 256) = 11;
  v52 = type metadata accessor for URL();
  v53 = *(*(v52 - 8) + 56);
  v53(v14, 1, 1, v52);
  v53(v11, 1, 1, v52);
  type metadata accessor for SongArtworkViewModel(0);
  v54 = swift_allocObject();
  v53((v54 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL), 1, 1, v52);
  v53((v54 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL), 1, 1, v52);
  ObservationRegistrar.init()();
  sub_100007FDC(v14, v8, &unk_100144630, &qword_1000F5180);
  sub_1000D88D8(v8);
  sub_100007FDC(v11, v8, &unk_100144630, &qword_1000F5180);
  sub_100007FDC(v8, v5, &unk_100144630, &qword_1000F5180);
  sub_1000D8B98(v5);
  sub_100007E14(v11, &unk_100144630, &qword_1000F5180);
  sub_100007E14(v14, &unk_100144630, &qword_1000F5180);
  sub_100007E14(v8, &unk_100144630, &qword_1000F5180);
  sub_100007E74(v58);
  *(v38 + 208) = v54;
  *(v38 + 632) = 0;
  sub_100007E74(v59);
  *(v2 + qword_100142ED8) = v38;
  *(v2 + qword_100142EE0[0]) = sub_10001AAA4();
  ObservationRegistrar.init()();
  *(v2 + *(*v2 + 184)) = v57;
  return v2;
}

uint64_t sub_1000073A0(uint64_t a1)
{
  v2 = sub_100002D44(&qword_1001420F8, &qword_1000F52A0);
  __chkstk_darwin(v2 - 8);
  sub_100007FDC(a1, &v5 - v3, &qword_1001420F8, &qword_1000F52A0);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_100007498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_100007568()
{
  type metadata accessor for ViewConfiguration(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 0;
  ObservationRegistrar.init()();
  State.init(wrappedValue:)();
  return v2;
}

unint64_t sub_1000075EC()
{
  result = qword_100142000;
  if (!qword_100142000)
  {
    v1 = sub_100004370(&qword_100141FF8, &qword_1000F5078);
    sub_1000076A4(v1, v2, v3);
    sub_100004610(&qword_100142010, &qword_100142018, &qword_1000F5080, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142000);
  }

  return result;
}

unint64_t sub_1000076A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142008;
  if (!qword_100142008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142008);
  }

  return result;
}

void *sub_1000076F8@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_100007990(a2, a3, a4);
  result = EnvironmentValues.subscript.getter();
  *a1 = v6;
  return result;
}

uint64_t sub_10000776C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000077CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007804()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000789C;

  return sub_100004FBC();
}

uint64_t sub_10000789C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100007990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142030;
  if (!qword_100142030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142030);
  }

  return result;
}

unint64_t sub_100007A04()
{
  result = qword_100142078;
  if (!qword_100142078)
  {
    sub_100004370(&qword_100142058, &qword_1000F50F8);
    sub_100007A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142078);
  }

  return result;
}

unint64_t sub_100007A90()
{
  result = qword_100142080;
  if (!qword_100142080)
  {
    sub_100004370(&qword_100142040, &qword_1000F50E0);
    sub_100004610(&qword_100142088, &qword_100142090, &qword_1000F5128, &unk_1000FBB80);
    sub_100007B78(&qword_100142098, type metadata accessor for PrivacySplashPresenter, &unk_1000FA698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142080);
  }

  return result;
}

uint64_t sub_100007B78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100007BC0()
{
  result = qword_1001420A0;
  if (!qword_1001420A0)
  {
    sub_100004370(&qword_100142038, &qword_1000F50D8);
    sub_100004610(&qword_1001420A8, &qword_1001420B0, &qword_1000F5130, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100007B78(&qword_100142098, type metadata accessor for PrivacySplashPresenter, &unk_1000FA698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001420A0);
  }

  return result;
}

unint64_t sub_100007D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001420D0;
  if (!qword_1001420D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001420D0);
  }

  return result;
}

uint64_t sub_100007D60(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100007DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007E14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D44(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007E74(void *a1)
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

uint64_t sub_100007F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007FDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002D44(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000808C()
{
  result = qword_100142100;
  if (!qword_100142100)
  {
    sub_100004370(&qword_100142108, qword_1000F52A8);
    sub_100007A04();
    sub_100007BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142100);
  }

  return result;
}

uint64_t sub_100008120@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  URL.init(string:)();
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v4, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v7, v4, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    *a1 = 0x495F545349545241;
    *(a1 + 8) = 0xE900000000000044;
    *(a1 + 16) = 0x747369747241;
    *(a1 + 24) = 0xE600000000000000;
    *(a1 + 32) = xmmword_1000F52E0;
    v11 = type metadata accessor for DesignTimeArtistMetadata(0);
    result = sub_100007F6C(v7, a1 + *(v11 + 28));
    v12 = (a1 + *(v11 + 32));
    *v12 = 0xD0000000000001BDLL;
    v12[1] = 0x80000001000FF3E0;
  }

  return result;
}

uint64_t type metadata accessor for DesignTimeArtistMetadata(uint64_t a1)
{
  result = qword_100142168;
  if (!qword_100142168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008368(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002D44(&unk_100144630, &qword_1000F5180);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100008438(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(&unk_100144630, &qword_1000F5180);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000084E8(uint64_t a1)
{
  sub_100008580();
  if (v1 <= 0x3F)
  {
    sub_1000085D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100008580()
{
  if (!qword_100142178)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100142178);
    }
  }
}

void sub_1000085D0(uint64_t a1)
{
  if (!qword_100142180)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100142180);
    }
  }
}

uint64_t sub_100008628()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100008658()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100008698(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_100008724@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100008790(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000088E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ContextMenuForUnsubscribedUserView(uint64_t a1)
{
  result = qword_100142220;
  if (!qword_100142220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000089E0(uint64_t a1)
{
  sub_100008ADC(319);
  if (v1 <= 0x3F)
  {
    sub_100008B40(319, &qword_100142240, type metadata accessor for ContextMenuForUnsubscribedUserViewModel, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_100008B40(319, &qword_100142248, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100008ADC(uint64_t a1)
{
  if (!qword_100142230)
  {
    sub_100004370(&qword_100142238, &unk_1000FE070);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100142230);
    }
  }
}

void sub_100008B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100008BC0@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v52 = type metadata accessor for URL();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContextMenuForUnsubscribedUserView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v48 = sub_100002D44(&qword_100142280, &qword_1000F53C0);
  v51 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v46 - v6;
  v53 = sub_100002D44(&qword_100142288, &qword_1000F53C8);
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v61 = &v46 - v7;
  v8 = sub_100002D44(&qword_100142290, &qword_1000F53D0);
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  __chkstk_darwin(v8);
  v54 = &v46 - v10;
  v57 = sub_100002D44(&qword_100142298, &qword_1000F53D8);
  __chkstk_darwin(v57);
  v55 = &v46 - v11;
  sub_10000BA8C(v1, &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForUnsubscribedUserView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_10000BD04(&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ContextMenuForUnsubscribedUserView);
  v62 = v1;
  sub_100002D44(&qword_1001422A8, &unk_1000FCA20);
  sub_100002D44(&qword_1001422B0, &qword_1000F53F0);
  v14 = sub_100004370(&qword_1001422B8, &qword_1000F53F8);
  v63[0] = &type metadata for Image;
  v63[1] = &protocol witness table for Image;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63[0] = v14;
  v63[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100004610(&qword_1001422C0, &qword_1001422B0, &qword_1000F53F0, &protocol conformance descriptor for TupleView<A>);
  Menu.init(onPresentationChanged:content:label:)();
  v16 = *(v1 + 24);
  v73 = *(v1 + 16);
  v17 = v73;
  v74 = v16;
  sub_100002D44(&qword_1001422C8, &qword_1000F5400);
  State.projectedValue.getter();
  v18 = v63[0];
  v19 = v63[1];
  v20 = v64;
  swift_getKeyPath();
  v63[0] = v18;
  v63[1] = v19;
  v64 = v20;
  sub_100002D44(&qword_1001422D0, &qword_1000F5430);
  Binding.subscript.getter();

  v71 = v17;
  v72 = v16;
  State.wrappedValue.getter();
  v21 = v50;
  v22 = v49;
  v23 = v52;
  (*(v50 + 16))(v49, v70 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamURL, v52);

  v45 = sub_100004610(&qword_1001422D8, &qword_100142280, &qword_1000F53C0, &protocol conformance descriptor for Menu<A, B>);
  v24 = v48;
  v25 = v22;
  v26 = v47;
  View.sharingPicker(isPresented:item:subject:message:)();

  (*(v21 + 8))(v25, v23);
  (*(v51 + 8))(v26, v24);
  Solarium.init()();
  v27 = sub_100002D44(&qword_1001422E0, &qword_1000F5438);
  v28 = sub_100002D44(&qword_1001422E8, &qword_1000F5440);
  v63[0] = v24;
  v63[1] = v45;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = type metadata accessor for PlainButtonStyle();
  v31 = sub_10000BF5C(&qword_1001422F0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v32 = v53;
  v63[0] = v53;
  v63[1] = v30;
  v64 = v29;
  v65 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = type metadata accessor for NavigationBarButtonStyle(255);
  v35 = sub_10000BF5C(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle, &unk_1000F6A9C);
  v63[0] = v32;
  v63[1] = v34;
  v64 = v29;
  v65 = v35;
  v44 = swift_getOpaqueTypeConformance2();
  v36 = v54;
  v37 = v61;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v56 + 8))(v37, v32);
  v63[0] = v32;
  v63[1] = &type metadata for Solarium;
  v64 = v27;
  v65 = v28;
  v66 = v29;
  v67 = &protocol witness table for Solarium;
  v68 = v33;
  v69 = v44;
  swift_getOpaqueTypeConformance2();
  v38 = v55;
  v39 = v58;
  View.accessibilityIdentifier(_:)();
  v40 = (*(v59 + 8))(v36, v39);
  strcpy(v63, "Overflow Menu");
  HIWORD(v63[1]) = -4864;
  sub_10000B730(v40, v41, v42);
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  return sub_10000B784(v38);
}

uint64_t sub_1000094FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v3 = sub_100002D44(&qword_100142310, &qword_1000F54A8);
  v47 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = v41 - v4;
  v5 = sub_100002D44(&qword_100142318, &unk_1000F54B0);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v41 - v9;
  v11 = sub_100002D44(&qword_100142320, &qword_1000F9BA0);
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = v41 - v15;
  __chkstk_darwin(v16);
  v18 = v41 - v17;
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v51 = a1;
  sub_100002D44(&qword_100142328, &unk_1000F54C0);
  sub_10000B804();
  v48 = v21;
  Section<>.init(content:)();
  v50 = a1;
  v45 = v18;
  Section<>.init(content:)();
  v22 = *(a1 + 24);
  v53 = *(a1 + 16);
  v54 = v22;
  sub_100002D44(&qword_1001422C8, &qword_1000F5400);
  State.wrappedValue.getter();
  v23 = *(*(v52 + OBJC_IVAR____TtC16MusicRecognition39ContextMenuForUnsubscribedUserViewModel_streamingServices) + 16);

  if (v23)
  {
    v24 = LocalizedStringKey.init(stringLiteral:)();
    v41[0] = v25;
    v41[1] = v24;
    v42 = v10;
    __chkstk_darwin(v24);
    v41[-2] = a1;
    sub_100002D44(&qword_100142348, &qword_1000F54D0);
    sub_10000B918();
    v26 = v42;
    v27 = v43;
    Section<>.init(_:content:)();
    v28 = v47;
    v10 = v26;
    (*(v47 + 32))(v26, v27, v3);
    v29 = 0;
    v30 = v28;
  }

  else
  {
    v29 = 1;
    v30 = v47;
  }

  (*(v30 + 56))(v10, v29, 1, v3);
  v31 = v44;
  v32 = *(v44 + 16);
  v33 = v49;
  v32(v49, v48, v11);
  v34 = v13;
  v35 = v45;
  v32(v13, v45, v11);
  v36 = v7;
  sub_10000B99C(v10, v7);
  v37 = v46;
  v32(v46, v33, v11);
  v38 = sub_100002D44(&qword_100142358, &qword_1000F54D8);
  v32(&v37[*(v38 + 48)], v34, v11);
  sub_10000B99C(v36, &v37[*(v38 + 64)]);
  sub_100007E14(v10, &qword_100142318, &unk_1000F54B0);
  v39 = *(v31 + 8);
  v39(v35, v11);
  v39(v48, v11);
  sub_100007E14(v36, &qword_100142318, &unk_1000F54B0);
  v39(v34, v11);
  return (v39)(v49, v11);
}

uint64_t sub_100009A4C(uint64_t a1)
{
  v2 = type metadata accessor for ContextMenuForUnsubscribedUserView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000BA8C(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForUnsubscribedUserView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_10000BD04(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ContextMenuForUnsubscribedUserView);
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100009CDC@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v2 = type metadata accessor for ContextMenuForUnsubscribedUserView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  v9 = sub_100002D44(&qword_100142328, &unk_1000F54C0);
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  sub_10000BA8C(v1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForUnsubscribedUserView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_10000BD04(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ContextMenuForUnsubscribedUserView);
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();
  (*(v6 + 8))(v8, v5);
  LocalizedStringKey.init(stringLiteral:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  LOBYTE(v4) = v17;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000BFBC(v14, v16, v4 & 1);

  return sub_100007E14(v11, &qword_100142328, &unk_1000F54C0);
}

uint64_t sub_10000A05C(uint64_t a1)
{
  v2 = type metadata accessor for ContextMenuForUnsubscribedUserView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *(a1 + 24);
  v11 = *(a1 + 16);
  v12 = v5;
  sub_100002D44(&qword_1001422C8, &qword_1000F5400);
  State.wrappedValue.getter();
  v6 = *(v10[1] + OBJC_IVAR____TtC16MusicRecognition39ContextMenuForUnsubscribedUserViewModel_streamingServices);

  v11 = v6;
  sub_10000BA8C(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForUnsubscribedUserView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_10000BD04(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ContextMenuForUnsubscribedUserView);
  sub_100002D44(&qword_100142360, &unk_1000F54E0);
  sub_100002D44(&qword_100142328, &unk_1000F54C0);
  sub_100004610(&qword_100142368, &qword_100142360, &unk_1000F54E0, &protocol conformance descriptor for [A]);
  sub_10000B804();
  sub_10000BF5C(&qword_100142370, type metadata accessor for StreamingService, &unk_1000F885C);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10000A29C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = sub_100002D44(&qword_1001422B8, &qword_1000F53F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  v14 = Image.init(systemName:)();
  if (static Solarium.isEnabled.getter())
  {
    static SymbolVariants.none.getter();
  }

  else
  {
    static SymbolVariants.circle.getter();
    SymbolVariants.fill.getter();
    (*(v2 + 8))(v4, v1);
  }

  View.symbolVariant(_:)();
  (*(v2 + 8))(v7, v1);

  static Font.Weight.regular.getter();
  v14 = &type metadata for Image;
  v15 = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  View.fontWeight(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10000A504@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000BF5C(&qword_100142308, type metadata accessor for ContextMenuViewModel, &unk_1000FEB10);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow);
  return result;
}

uint64_t sub_10000A5B4()
{
  v0 = type metadata accessor for PlainButtonStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlainButtonStyle.init()();
  sub_100002D44(&qword_100142288, &qword_1000F53C8);
  v4 = sub_100004370(&qword_100142280, &qword_1000F53C0);
  v5 = sub_100004610(&qword_1001422D8, &qword_100142280, &qword_1000F53C0, &protocol conformance descriptor for Menu<A, B>);
  v7[0] = v4;
  v7[1] = v5;
  swift_getOpaqueTypeConformance2();
  sub_10000BF5C(&qword_1001422F0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10000A770()
{
  v0 = type metadata accessor for NavigationBarButtonStyle(0);
  __chkstk_darwin(v0);
  v2 = (v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  swift_storeEnumTagMultiPayload();
  sub_100002D44(&qword_100142288, &qword_1000F53C8);
  v3 = sub_100004370(&qword_100142280, &qword_1000F53C0);
  v4 = sub_100004610(&qword_1001422D8, &qword_100142280, &qword_1000F53C0, &protocol conformance descriptor for Menu<A, B>);
  v6[0] = v3;
  v6[1] = v4;
  swift_getOpaqueTypeConformance2();
  sub_10000BF5C(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle, &unk_1000F6A9C);
  View.buttonStyle<A>(_:)();
  return sub_10000BEFC(v2, type metadata accessor for NavigationBarButtonStyle);
}

uint64_t sub_10000A928(uint64_t a1)
{
  sub_100002D44(&qword_1001422C8, &qword_1000F5400);
  State.wrappedValue.getter();
  sub_1000E7B74(sub_10000C190);
}

uint64_t sub_10000A9A4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OpenURLAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ContextMenuForUnsubscribedUserView(0);
  sub_100041144(v9);
  v10 = *(a1 + 24);
  v12[2] = *(a1 + 16);
  v12[3] = v10;
  sub_100002D44(&qword_1001422C8, &qword_1000F5400);
  State.wrappedValue.getter();
  (*(v3 + 16))(v5, v12[1] + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamAppStoreURL, v2);

  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10000ABDC@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000AC54(uint64_t a1)
{
  sub_100002D44(&qword_1001422C8, &qword_1000F5400);
  State.wrappedValue.getter();
  sub_1000E7A1C();
}

uint64_t sub_10000AD04@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000AD7C@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10000ADBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v25 = a3;
  v5 = type metadata accessor for ContextMenuForUnsubscribedUserView(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for StreamingService(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v12 = *(v11 - 8);
  v23 = v11;
  v24 = v12;
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  sub_10000BA8C(a1, v10, type metadata accessor for StreamingService);
  sub_10000BA8C(a2, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForUnsubscribedUserView);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + *(v22 + 80) + v15) & ~*(v22 + 80);
  v17 = swift_allocObject();
  sub_10000BD04(v10, v17 + v15, type metadata accessor for StreamingService);
  sub_10000BD04(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ContextMenuForUnsubscribedUserView);
  v26 = v21;
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  v18 = v23;
  View.accessibilityIdentifier(_:)();
  return (*(v24 + 8))(v14, v18);
}

uint64_t sub_10000B11C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == 0x6C7070612E6D6F63 && a1[1] == 0xEF636973754D2E65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100002D44(&qword_1001422C8, &qword_1000F5400);
    State.wrappedValue.getter();
    sub_10000B280(a1, a2, "Opening Apple Music provider URL %s", v7);
    if (*(v8 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
    {
      v5 = 66305;
    }

    else
    {
      v5 = 769;
    }
  }

  else
  {
    sub_100002D44(&qword_1001422C8, &qword_1000F5400);
    State.wrappedValue.getter();
    sub_10000B280(a1, a2, "Opening third party provider URL %s", v7);
    if (*(v8 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
    {
      v5 = 66308;
    }

    else
    {
      v5 = 772;
    }
  }

  sub_1000C3900(v5, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_10000B280(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  v26 = a3;
  v5 = type metadata accessor for OpenURLAction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for StreamingService(0);
  __chkstk_darwin(v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000BEC4(v12, qword_10014FEA0);
  sub_10000BA8C(a1, v11, type metadata accessor for StreamingService);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24[1] = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24[2] = a1;
    v18 = v17;
    v27 = v17;
    *v16 = 136315138;
    type metadata accessor for URL();
    v25 = v5;
    sub_10000BF5C(&qword_100142378, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_10000BEFC(v11, type metadata accessor for StreamingService);
    v22 = sub_1000BA1EC(v19, v21, &v27);

    *(v16 + 4) = v22;
    v5 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, v26, v16, 0xCu);
    sub_100007E74(v18);
  }

  else
  {

    sub_10000BEFC(v11, type metadata accessor for StreamingService);
  }

  type metadata accessor for ContextMenuForUnsubscribedUserView(0);
  sub_100041144(v8);
  OpenURLAction.callAsFunction(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000B5A8@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for StreamingService(0);
  sub_10000B730(v3, v4, v5);

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_10000B628@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for StreamingService(0);

  result = Image.init(_internalSystemName:)();
  *a2 = result;
  return result;
}

uint64_t sub_10000B688(char a1)
{
  v3 = type metadata accessor for ContextMenuForUnsubscribedUserView(0);
  v6 = *(v3 - 8);
  result = v3 - 8;
  v5 = v6;
  if (a1)
  {
    v7 = (v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
    if (*v7)
    {
      return (*v7)();
    }
  }

  return result;
}

unint64_t sub_10000B730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142300;
  if (!qword_100142300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142300);
  }

  return result;
}

uint64_t sub_10000B784(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100142298, &qword_1000F53D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000B804()
{
  result = qword_100142330;
  if (!qword_100142330)
  {
    sub_100004370(&qword_100142328, &unk_1000F54C0);
    sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
    sub_10000BF5C(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142330);
  }

  return result;
}

unint64_t sub_10000B918()
{
  result = qword_100142350;
  if (!qword_100142350)
  {
    sub_100004370(&qword_100142348, &qword_1000F54D0);
    sub_10000B804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142350);
  }

  return result;
}

uint64_t sub_10000B99C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142318, &unk_1000F54B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContextMenuForUnsubscribedUserView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000ADBC(a1, v6, a2);
}

uint64_t sub_10000BA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000BAF4()
{
  v1 = (type metadata accessor for StreamingService(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for ContextMenuForUnsubscribedUserView(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = (v3 + v4 + v6) & ~v6;

  v9 = v1[7];
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  if (*(v0 + v8))
  {
  }

  v11 = *(v5 + 24);
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v8 + v7, v2 | v6 | 7);
}

uint64_t sub_10000BD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000BD6C()
{
  v1 = *(type metadata accessor for StreamingService(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ContextMenuForUnsubscribedUserView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10000B11C((v0 + v2), v5);
}

uint64_t sub_10000BEC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000BEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BF5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000BFBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000BFCC()
{
  v1 = type metadata accessor for ContextMenuForUnsubscribedUserView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  if (*(v0 + v3))
  {
  }

  v5 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C11C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContextMenuForUnsubscribedUserView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10000C19C()
{
  result = qword_100142380;
  if (!qword_100142380)
  {
    sub_100004370(&qword_100142298, &qword_1000F53D8);
    sub_100004370(&qword_100142288, &qword_1000F53C8);
    sub_100004370(&qword_1001422E0, &qword_1000F5438);
    sub_100004370(&qword_1001422E8, &qword_1000F5440);
    sub_100004370(&qword_100142280, &qword_1000F53C0);
    sub_100004610(&qword_1001422D8, &qword_100142280, &qword_1000F53C0, &protocol conformance descriptor for Menu<A, B>);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PlainButtonStyle();
    sub_10000BF5C(&qword_1001422F0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for NavigationBarButtonStyle(255);
    sub_10000BF5C(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle, &unk_1000F6A9C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000BF5C(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142380);
  }

  return result;
}

id sub_10000C460()
{
  v1 = [objc_opt_self() effectWithStyle:*v0];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];

  return v2;
}

void sub_10000C4D0(void *a1)
{
  v3 = [objc_opt_self() effectWithStyle:*v1];
  [a1 setEffect:v3];
}

uint64_t sub_10000C5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C6E8(a1, a2, a3);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000C604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C6E8(a1, a2, a3);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000C668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C6E8(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10000C694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142388;
  if (!qword_100142388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142388);
  }

  return result;
}

unint64_t sub_10000C6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142390;
  if (!qword_100142390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142390);
  }

  return result;
}

uint64_t sub_10000C750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000C7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ShazamCampaignWebView(uint64_t a1)
{
  result = qword_1001423F0;
  if (!qword_1001423F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C88C(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_10000C940()
{
  v0 = [objc_allocWithZone(WKWebViewConfiguration) init];
  v1 = [objc_allocWithZone(WKUserContentController) init];
  [v0 setUserContentController:v1];

  v2 = [objc_allocWithZone(WKPreferences) init];
  [v2 setTextInteractionEnabled:0];
  [v0 setPreferences:v2];
  v3 = [objc_allocWithZone(WKWebView) initWithFrame:v0 configuration:{0.0, 0.0, 0.0, 0.0}];
  [v3 setAllowsBackForwardNavigationGestures:0];

  return v3;
}

uint64_t sub_10000CA38(void *a1)
{
  v3 = type metadata accessor for ShazamCampaignWebView(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLRequest();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6, v12);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000BEC4(v15, qword_10014FEA0);
  sub_10000CF50(v1, v5);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    sub_10000D010(&qword_100142378, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_10000CFB4(v5);
    v24 = sub_1000BA1EC(v21, v23, &v28);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Opening %s", v19, 0xCu);
    sub_100007E74(v20);

    a1 = v27;
  }

  else
  {

    sub_10000CFB4(v5);
  }

  isa = URLRequest._bridgeToObjectiveC()().super.isa;

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10000CDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D010(&qword_100142430, type metadata accessor for ShazamCampaignWebView, &unk_1000F5618);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000CE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D010(&qword_100142430, type metadata accessor for ShazamCampaignWebView, &unk_1000F5618);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000CEF8(uint64_t a1)
{
  sub_10000D010(&qword_100142430, type metadata accessor for ShazamCampaignWebView, &unk_1000F5618);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10000CF50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamCampaignWebView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CFB4(uint64_t a1)
{
  v2 = type metadata accessor for ShazamCampaignWebView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D058()
{
  v0 = type metadata accessor for Logger();
  sub_10000D0C8(v0, qword_10014FEA0);
  sub_10000BEC4(v0, qword_10014FEA0);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10000D0C8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000D12C(char *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_10000D1AC()
{

  sub_100007E74((v0 + 24));

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10000D23C()
{
  v1 = *(v0 + 16);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_10000DCC4;

  return v6(v2, v3);
}

uint64_t sub_10000D388()
{
  v1 = *(v0 + 16);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_10000D4B0;

  return v6(v2, v3);
}

uint64_t sub_10000D4B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000D5C8()
{
  v1 = *(v0 + 16);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_10000D6F0;

  return v6(v2, v3);
}

uint64_t sub_10000D6F0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000D7EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10000D810, 0, 0);
}

uint64_t sub_10000D810()
{
  v1 = v0[3];
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_10000D940;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_10000D940()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000DA34(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return _swift_task_switch(sub_10000DA5C, 0, 0);
}

uint64_t sub_10000DA5C()
{
  v1 = v0[4];
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v8 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10000DB8C;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_10000DB8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_10000DC80(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000DCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  ObservationRegistrar.init()();
  *(v3 + OBJC_IVAR____TtC16MusicRecognition39ContextMenuForUnsubscribedUserViewModel_streamingServices) = a3;
  v14 = v8[2];
  v14(v13, a1, v7);
  v14(v10, a2, v7);
  *(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow) = 0;
  ObservationRegistrar.init()();
  v15 = v8[1];
  v15(a2, v7);
  v15(a1, v7);
  v16 = v8[4];
  v16(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamAppStoreURL, v13, v7);
  v16(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamURL, v10, v7);
  *(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member) = 0;
  return v3;
}

uint64_t sub_10000DEA8()
{

  v1 = OBJC_IVAR____TtC16MusicRecognition39ContextMenuForUnsubscribedUserViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_10000DF20()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamAppStoreURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamURL, v2);
  v4 = OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);

  v6(v0 + OBJC_IVAR____TtC16MusicRecognition39ContextMenuForUnsubscribedUserViewModel___observationRegistrar, v5);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for ContextMenuForUnsubscribedUserViewModel(uint64_t a1)
{
  result = qword_100142518;
  if (!qword_100142518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E0CC(uint64_t a1)
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

id sub_10000E224()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController____lazy_storage___customLayoutHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController____lazy_storage___customLayoutHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController____lazy_storage___customLayoutHeightConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView) heightAnchor];
    v5 = [v4 constraintEqualToConstant:84.0];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10000E32C()
{
  ObjectType = swift_getObjectType();
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  v3 = v0;
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Deinitializing %@", v6, 0xCu);
    sub_100007E14(v7, &unk_100142880, &unk_1000F5950);
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "dealloc");
}

id sub_10000E574()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  v30.receiver = v0;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "viewDidLoad", v4);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v11 = result;
  [result addSubview:*&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView]];

  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v12 = qword_10014FF28;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v26;
  v14 = v27;
  v15 = v28;
  sub_1000BFAF4(v26, v27, v28);
  sub_1000120D0(v13, v14, v15);
  sub_10000E9AC();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;

  sub_1000C8DF8(0, 0, v6, &unk_1000F58B8, v19);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v20 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_spectralOutputObservers;
  swift_beginAccess();
  v21 = *(v12 + v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + v20) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_100057DEC(0, v21[2] + 1, 1, v21);
    *(v12 + v20) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_100057DEC((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  sub_1000121E8(v29, &v21[v24 + 4]);
  *(v12 + v20) = v21;
  swift_endAccess();
  sub_100002D44(&qword_100142828, &qword_1000F58D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000F57C0;
  *(v25 + 32) = type metadata accessor for UITraitBacklightLuminance();
  *(v25 + 40) = &protocol witness table for UITraitBacklightLuminance;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

uint64_t sub_10000E9AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_retryHandler);
  *v3 = sub_100012738;
  v3[1] = v2;

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = (v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_cancellationHandler);
  *v5 = sub_100012788;
  v5[1] = v4;

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_appleMusicURLHandler);
  *v7 = sub_1000127D8;
  v7[1] = v6;

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = (v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_displayMatchedMediaItemHandler);
  *v9 = sub_1000127E0;
  v9[1] = v8;
}

void sub_10000EB68(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  if ((v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle] & 1) == 0)
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      if (qword_100141A78 != -1)
      {
        swift_once();
      }

      [v4 setBackgroundColor:qword_10014FEC0];

      v5 = objc_opt_self();
      v6 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeConstraints;
      sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 deactivateConstraints:isa];

      sub_10000ECFC(4);
      *&v1[v6] = v8;

      v9 = Array._bridgeToObjectiveC()().super.isa;

      [v5 activateConstraints:v9];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10000ECFC(uint64_t a1)
{
  if (a1 != 4)
  {
    if (a1 == 3)
    {
      sub_100002D44(&qword_100142810, &qword_1000F65A0);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1000F57E0;
      v8 = *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_listeningAccessoryView];
      v9 = [v8 centerXAnchor];
      v10 = [v1 view];
      if (!v10)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v11 = v10;
      v12 = [v10 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

      v13 = [v12 centerXAnchor];
      v14 = [v9 constraintEqualToAnchor:v13];

      *(v2 + 32) = v14;
      v15 = [v8 widthAnchor];
      v16 = [v15 constraintEqualToConstant:25.0];

      *(v2 + 40) = v16;
      v17 = *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_waveformAccessoryView];
      v18 = [v17 widthAnchor];
      v19 = [v18 constraintEqualToConstant:24.0];

      *(v2 + 48) = v19;
      v20 = [v17 centerXAnchor];
      v21 = [v1 view];
      if (!v21)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v22 = v21;
      v23 = [v21 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

      v24 = [v23 centerXAnchor];
      v25 = [v20 constraintEqualToAnchor:v24];

      *(v2 + 56) = v25;
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
      if (a1 == 2)
      {
        sub_100002D44(&qword_100142810, &qword_1000F65A0);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_1000F57F0;
        v3 = *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_minimalAccessoryView];
        v4 = [v3 heightAnchor];
        v5 = [v4 constraintEqualToConstant:20.0];

        *(v2 + 32) = v5;
        v6 = [v3 widthAnchor];
        v7 = [v6 constraintEqualToConstant:20.0];

        *(v2 + 40) = v7;
      }
    }

LABEL_21:
    if (v2 >> 62)
    {
      v70 = _CocoaArrayWrapper.endIndex.getter();
      if (v70)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v70 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70)
      {
LABEL_23:
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v70 & 0x8000000000000000) == 0)
        {
          v71 = 0;
          do
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v72 = *(v2 + 8 * v71 + 32);
            }

            ++v71;
            LODWORD(v73) = 1144750080;
            [v72 setPriority:v73];
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v70 != v71);
          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_33;
      }
    }

LABEL_31:

    return;
  }

  v26 = [v1 view];
  if (!v26)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v27 = v26;
  v28 = [v26 window];

  if (v28)
  {

    v29 = [v1 view];
    if (!v29)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v30 = v29;
    v31 = [v29 widthAnchor];

    v32 = [v1 view];
    if (!v32)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v33 = v32;
    v34 = [v32 window];

    if (!v34)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v35 = [v34 widthAnchor];

    v36 = [v31 constraintEqualToAnchor:v35];
    goto LABEL_16;
  }

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    v35 = [v37 widthAnchor];

    v39 = [objc_opt_self() mainScreen];
    [v39 nativeBounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v74.origin.x = v41;
    v74.origin.y = v43;
    v74.size.width = v45;
    v74.size.height = v47;
    v36 = [v35 constraintEqualToConstant:CGRectGetWidth(v74)];
LABEL_16:

    sub_100002D44(&qword_100142810, &qword_1000F65A0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1000F57D0;
    *(v2 + 32) = v36;
    v48 = v36;
    *(v2 + 40) = sub_10000E224();
    v49 = *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView];
    v50 = [v49 topAnchor];
    v51 = [v1 view];
    if (!v51)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v52 = v51;
    v53 = [v51 topAnchor];

    v54 = [v50 constraintEqualToAnchor:v53];
    *(v2 + 48) = v54;
    v55 = [v49 bottomAnchor];
    v56 = [v1 view];
    if (!v56)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v57 = v56;
    v58 = [v56 bottomAnchor];

    v59 = [v55 constraintEqualToAnchor:v58];
    *(v2 + 56) = v59;
    v60 = [v49 leadingAnchor];
    v61 = [v1 view];
    if (!v61)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v62 = v61;
    v63 = [v61 leadingAnchor];

    v64 = [v60 constraintEqualToAnchor:v63];
    *(v2 + 64) = v64;
    v65 = [v49 trailingAnchor];
    v66 = [v1 view];
    if (!v66)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v67 = v66;
    v68 = [v66 trailingAnchor];

    v69 = [v65 constraintEqualToAnchor:v68];
    *(v2 + 72) = v69;

    goto LABEL_21;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_10000F578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  sub_100002D44(&qword_100142830, &qword_1000F58D8);
  v4[14] = swift_task_alloc();
  v5 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_100002D44(&qword_100142838, &qword_1000F58E0);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_100002D44(&qword_100142840, &qword_1000F58E8);
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000F774, v9, v8);
}

uint64_t sub_10000F774()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_100141B48 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 184);
    v16 = *(v0 + 168);
    v17 = *(v0 + 176);
    v3 = *(v0 + 144);
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v13 = *(v0 + 160);
    v14 = *(v0 + 120);
    v15 = *(v0 + 152);
    swift_beginAccess();
    sub_100002D44(&qword_100142848, &qword_1000F58F0);
    Published.projectedValue.getter();
    swift_endAccess();
    NSRunLoop.SchedulerTimeType.Stride.init(_:)();
    v7 = [objc_opt_self() mainRunLoop];
    *(v0 + 88) = v7;
    v8 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_1000123E4(0, &qword_100142850, NSRunLoop_ptr);
    sub_100004610(&qword_100142858, &qword_100142838, &qword_1000F58E0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10001242C();
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_100007E14(v6, &qword_100142830, &qword_1000F58D8);

    (*(v4 + 8))(v5, v14);
    (*(v15 + 8))(v13, v3);
    swift_allocObject();
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_100004610(&qword_100142868, &qword_100142840, &qword_1000F58E8, &protocol conformance descriptor for Publishers.Debounce<A, B>);
    v10 = Publisher<>.sink(receiveValue:)();

    (*(v17 + 8))(v2, v16);
    *&Strong[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_musicRecognitionCancellable] = v10;
  }

  **(v0 + 96) = Strong == 0;

  v11 = *(v0 + 8);

  return v11();
}

void sub_10000FB28(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1000C0668(v2, v3, v4);
    sub_1000BFAF4(v2, v3, v4);
    sub_1000BFDEC(v2, v3, v4);
    sub_1000BFDEC(v2, v3, v4);
    sub_1000C029C(v2, v3, v4);
  }
}

void sub_10000FC14(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 _backlightLuminance];

  if (v3 == 2)
  {
    v4 = *(*&a1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView] + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
    sub_10008DA90();
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = *(*&a1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView] + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
    sub_10008D93C();
  }
}

void sub_10000FD04(void *a1)
{
  sub_10000ECFC(*(v1 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeLayoutMode));
  v4 = v3;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v8[4] = sub_1000120C0;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000FF38;
  v8[3] = &unk_100135B08;
  v7 = _Block_copy(v8);

  [a1 animateAlongsideTransition:v7 completion:0];
  _Block_release(v7);
}

void sub_10000FE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = objc_opt_self();
    v7 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeConstraints;
    sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 deactivateConstraints:isa];

    *&v5[v7] = a3;

    v9 = Array._bridgeToObjectiveC()().super.isa;

    [v6 activateConstraints:v9];
  }
}

uint64_t sub_10000FF38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_100010008(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_listeningAccessoryView;
  v8 = type metadata accessor for ListeningAccessoryView();
  *&v3[v7] = [objc_allocWithZone(v8) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_waveformAccessoryView;
  *&v3[v9] = [objc_allocWithZone(type metadata accessor for WaveformAccessoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_minimalAccessoryView;
  *&v3[v10] = [objc_allocWithZone(v8) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for MatchingFlowCustomView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle] = 1;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeLayoutMode] = 0;
  v12 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_keyColor;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() colorNamed:v13];

  *&v3[v12] = v14;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_preferredLayoutMode] = 3;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_musicRecognitionCancellable] = 0;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_assertionTimer] = 0;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController____lazy_storage___customLayoutHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_maximumLayoutMode] = 4;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeConstraints] = _swiftEmptyArrayStorage;
  if (a2)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", v15, a3);

  return v16;
}

id sub_1000102B0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_listeningAccessoryView;
  v5 = type metadata accessor for ListeningAccessoryView();
  *&v1[v4] = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_waveformAccessoryView;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for WaveformAccessoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_minimalAccessoryView;
  *&v1[v7] = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for MatchingFlowCustomView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle] = 1;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeLayoutMode] = 0;
  v9 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_keyColor;
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() colorNamed:v10];

  *&v1[v9] = v11;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_musicRecognitionCancellable] = 0;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_assertionTimer] = 0;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController____lazy_storage___customLayoutHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_maximumLayoutMode] = 4;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeConstraints] = _swiftEmptyArrayStorage;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

void sub_100010518(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(v1 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView) + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
  v5 = *&v4[OBJC_IVAR____TtC16MusicRecognition13ListeningView_waveformView];
  v6 = *(a1 + 16);
  if (v6)
  {
    v30 = _swiftEmptyArrayStorage;
    v7 = v4;
    sub_100063028(0, v6, 0);
    v8 = _swiftEmptyArrayStorage;
    v9 = (a1 + 32);
    v10 = _swiftEmptyArrayStorage[2];
    v11 = v6;
    do
    {
      v12 = *v9;
      v30 = v8;
      v13 = v8[3];
      if (v10 >= v13 >> 1)
      {
        sub_100063028((v13 > 1), v10 + 1, 1);
        v8 = v30;
      }

      v14 = powf(v12 * 0.6, 0.4);
      v8[2] = (v10 + 1);
      *(v8 + v10 + 8) = v14;
      ++v9;
      ++v10;
      --v11;
    }

    while (v11);
  }

  else
  {
    v15 = v4;
    v8 = _swiftEmptyArrayStorage;
  }

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = v8;
  v34 = sub_100011FE8;
  v35 = v17;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000C1C84;
  v33 = &unk_100135A40;
  v18 = _Block_copy(&v30);
  v19 = v5;

  [v16 animateWithDuration:0 delay:v18 usingSpringWithDamping:0 initialSpringVelocity:0.325 options:0.0 animations:0.8 completion:0.0];
  _Block_release(v18);

  v20 = *(*(v2 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_waveformAccessoryView) + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView);
  v21 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v30 = _swiftEmptyArrayStorage;
    sub_100063028(0, v6, 0);
    v21 = v30;
    v22 = (a1 + 32);
    v23 = v30[2];
    do
    {
      v24 = *v22;
      v30 = v21;
      v25 = v21[3];
      if (v23 >= v25 >> 1)
      {
        sub_100063028((v25 > 1), (v23 + 1), 1);
        v21 = v30;
      }

      v26 = powf(v24 * 0.6, 0.4);
      v21[2] = v23 + 1;
      *(v21 + v23 + 8) = v26;
      ++v22;
      ++v23;
      --v6;
    }

    while (v6);
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  *(v27 + 24) = v21;
  v34 = sub_100012ECC;
  v35 = v27;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000C1C84;
  v33 = &unk_100135A90;
  v28 = _Block_copy(&v30);
  v29 = v20;

  [v16 animateWithDuration:0 delay:v28 usingSpringWithDamping:0 initialSpringVelocity:0.325 options:0.0 animations:0.8 completion:0.0];
  _Block_release(v28);
}

uint64_t sub_100010928(uint64_t a1)
{
  v1[5] = a1;
  sub_100002D44(&qword_100142878, &qword_1000F68E0);
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_1000109FC, v3, v2);
}

uint64_t sub_1000109FC(uint64_t a1)
{
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v1[11] = qword_10014FF28;
  v1[12] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v3;
  v1[14] = v2;

  return _swift_task_switch(sub_100010AC4, v3, v2);
}

uint64_t sub_100010AC4()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  sub_100012CAC(v1 + v3, v2);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100010B98;
  v5 = v0[6];

  return sub_100054B0C(1, v5);
}

uint64_t sub_100010B98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 48);
  *(v5 + 128) = a1;
  *(v5 + 136) = a2;
  *(v5 + 144) = a3;

  sub_100007E14(v6, &qword_100142878, &qword_1000F68E0);
  v7 = *(v4 + 112);
  v8 = *(v4 + 104);

  return _swift_task_switch(sub_100010CF8, v8, v7);
}

uint64_t sub_100010CF8()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_100010D5C, v1, v2);
}

uint64_t sub_100010D5C()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 40);

  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;

  v5 = *(v0 + 8);

  return v5();
}

double sub_100010DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, uint64_t))
{
  v7 = a2;
  v8 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1000127E8(v7);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  a5(0, 0, v10, a4, v15);

  return result;
}

uint64_t sub_100010F3C()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100010FD0, v2, v1);
}

uint64_t sub_100010FD0()
{
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100005114;

  return sub_100052DC4();
}

void sub_100011094(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000127E8(1u);
  }

  sub_1000E9654(a1);
}

double sub_1000110F8(void *a1, uint64_t a2)
{
  v3 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1000127E8(0xBu);
  }

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = a1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1000C1D74(0, 0, v5, &unk_1000F5918, v11);

  return result;
}

uint64_t sub_100011258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_1000112F0, v6, v5);
}

uint64_t sub_1000112F0()
{
  v1 = v0[18];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_100011420;
  v3 = swift_continuation_init();
  v0[17] = sub_100002D44(&qword_100142870, &unk_1000F5920);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000C1CC8;
  v0[13] = &unk_100135C20;
  v0[14] = v3;
  [v2 presentMediaItem:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100011420()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_1000115B4;
  }

  else
  {
    v5 = sub_100011550;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100011550()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000115B4()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

id sub_100011628()
{
  result = [objc_opt_self() blackColor];
  qword_10014FEC0 = result;
  return result;
}

void sub_100011664(double a1)
{
  if (v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle] == 1)
  {
    v3 = sub_10000E224();
    [v3 setConstant:a1];

    if (*&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeLayoutMode] == 4)
    {
      v4 = [v1 systemApertureElementContext];
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7[4] = sub_100012730;
      v7[5] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1000C1C84;
      v7[3] = &unk_100135BD0;
      v6 = _Block_copy(v7);

      [v4 setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v6];
      _Block_release(v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000117B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10001184C, v6, v5);
}

uint64_t sub_10001184C()
{
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100011910;

  return sub_100052DC4();
}

uint64_t sub_100011910()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100011A30, v3, v2);
}

uint64_t sub_100011A30()
{
  v1 = *(v0 + 16);

  v2 = *(*(v1 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView) + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
  sub_10008DA90();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100011ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_100011BB0, v7, v6);
}

uint64_t sub_100011BB0()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_100011C8C;

  return sub_100057934(v1, v3, 0, 0, 1);
}

uint64_t sub_100011C8C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v3 = v2[11];
  v4 = v2[10];
  if (v0)
  {
    v5 = sub_100011EF4;
  }

  else
  {
    v5 = sub_100011E14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100011E14()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_maximumLayoutMode] = 1;
    *&Strong[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_preferredLayoutMode] = 1;
    v2 = Strong;
    [objc_msgSend(Strong "systemApertureElementContext")];
    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100011EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100011F60(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong view];

    if (v3)
    {
      [v3 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100011FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100012008()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012048()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012080()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000120D0(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1000120E4(a1, a2, a3);
  }
}

void sub_1000120E4(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_100012134(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_10000F578(a1, v4, v5, v6);
}

uint64_t sub_1000121E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142820, &qword_1000F85B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100012258(void *a1, id a2)
{
  v3 = [a2 _backlightLuminance] == 1;
  v4 = [a1 traitCollection];
  v5 = [v4 _backlightLuminance];

  if (((v3 ^ (v5 != 1)) & 1) == 0)
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v10[4] = sub_1000123DC;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1000C1C84;
    v10[3] = &unk_100135B80;
    v8 = _Block_copy(v10);
    v9 = a1;

    [v6 animateWithDuration:v8 animations:0.15];
    _Block_release(v8);
  }
}

uint64_t sub_1000123A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000123E4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_10001242C()
{
  result = qword_100142860;
  if (!qword_100142860)
  {
    sub_1000123E4(255, &qword_100142850, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142860);
  }

  return result;
}

double sub_10001249C()
{
  v1 = v0;
  v2 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  sub_100011664(128.0);
  v5 = *(*(v0 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView) + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
  sub_10008DA90();

  if (*(v1 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle) == 1)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;

    sub_1000C1D74(0, 0, v4, &unk_1000F5908, v10);
  }

  return result;
}

uint64_t sub_10001263C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001267C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_100011ABC(a1, v4, v5, v6);
}

uint64_t sub_1000127E8(unsigned __int8 a1)
{
  v2 = type metadata accessor for IntentSystemContext.Source();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142878, &qword_1000F68E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v9 = qword_10014FF28;
  v10 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  sub_100012CAC(v9 + v10, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_100007E14(v8, &qword_100142878, &qword_1000F68E0);
  }

  (*(v3 + 16))(v5, v8, v2);
  v12 = (*(v3 + 88))(v5, v2);
  if (v12 == enum case for IntentSystemContext.Source.app(_:) || v12 == enum case for IntentSystemContext.Source.CLI(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.siri(_:))
  {
LABEL_12:
    v14 = 256;
LABEL_15:
    (*(v3 + 8))(v8, v2);
    return sub_1000C3900(v14 | a1 | 0x20000u, 0xD000000000000028, 0x80000001000FF5D0);
  }

  if (v12 == enum case for IntentSystemContext.Source.shortcuts(_:))
  {
    v14 = 2560;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.testing(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.actionButton(_:))
  {
    v14 = 1792;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.spotlight(_:))
  {
    v14 = 2304;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.controlCenter(_:))
  {
    v14 = 1536;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.widget(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.assistant(_:))
  {
    goto LABEL_12;
  }

  v15 = *(v3 + 8);
  v15(v5, v2);
  return (v15)(v8, v2);
}

uint64_t sub_100012B44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012B84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012EC8;

  return sub_100011258(a1, v4, v5, v6);
}

uint64_t sub_100012C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100012CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142878, &qword_1000F68E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012D1C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012D54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100012EC8;

  return sub_100010F3C();
}

uint64_t sub_100012E00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100012EC8;

  return sub_100010928(a1);
}

uint64_t sub_100012EE0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100012EF8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100012F0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100012F54(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100012FD0()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_1001428F0 = result;
  *algn_1001428F8 = v1;
  byte_100142900 = v2 & 1;
  qword_100142908 = v3;
  return result;
}

uint64_t sub_100013018@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_100002D44(&qword_100142918, &qword_1000F5A38);
  __chkstk_darwin(v3 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = &v30 - v6;
  v32 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002D44(&qword_100142920, &qword_1000F5A40);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v33 = sub_100002D44(&qword_100142928, &qword_1000F5A48);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v14 = &v30 - v13;
  v15 = sub_100002D44(&qword_100142930, &qword_1000F5A50);
  __chkstk_darwin(v15 - 8);
  v30 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  v20 = sub_100002D44(&qword_100142938, &qword_1000F5A58);
  sub_1000134D0(&v12[*(v20 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v21 = sub_100004610(&qword_100142940, &qword_100142920, &qword_1000F5A40, &protocol conformance descriptor for VStack<A>);
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v32);
  sub_100007E14(v12, &qword_100142920, &qword_1000F5A40);
  v38 = *a1;
  v39 = v38;
  sub_100014804(&v39, v37);
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  String.append(_:)(a1[1]);
  *&v38 = v10;
  *(&v38 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v33;
  View.accessibilityLabel(_:)();

  (*(v31 + 8))(v14, v23);
  v24 = v34;
  sub_100013EE8(v34);
  v25 = v30;
  sub_100007FDC(v19, v30, &qword_100142930, &qword_1000F5A50);
  v26 = v35;
  sub_100007FDC(v24, v35, &qword_100142918, &qword_1000F5A38);
  v27 = v36;
  sub_100007FDC(v25, v36, &qword_100142930, &qword_1000F5A50);
  v28 = sub_100002D44(&qword_100142948, &unk_1000F5A60);
  sub_100007FDC(v26, v27 + *(v28 + 48), &qword_100142918, &qword_1000F5A38);
  sub_100007E14(v24, &qword_100142918, &qword_1000F5A38);
  sub_100007E14(v19, &qword_100142930, &qword_1000F5A50);
  sub_100007E14(v26, &qword_100142918, &qword_1000F5A38);
  return sub_100007E14(v25, &qword_100142930, &qword_1000F5A50);
}

uint64_t sub_1000134D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002D44(&qword_1001429F8, &qword_1000F5B50);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = sub_100002D44(&qword_100142A00, &qword_1000F5B58);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_1000136C0(&v16 - v12);
  sub_100013B58(v7);
  sub_100007FDC(v13, v10, &qword_100142A00, &qword_1000F5B58);
  sub_100007FDC(v7, v4, &qword_1001429F8, &qword_1000F5B50);
  sub_100007FDC(v10, a1, &qword_100142A00, &qword_1000F5B58);
  v14 = sub_100002D44(&qword_100142A08, &qword_1000F5B60);
  sub_100007FDC(v4, a1 + *(v14 + 48), &qword_1001429F8, &qword_1000F5B50);
  sub_100007E14(v7, &qword_1001429F8, &qword_1000F5B50);
  sub_100007E14(v13, &qword_100142A00, &qword_1000F5B58);
  sub_100007E14(v4, &qword_1001429F8, &qword_1000F5B50);
  return sub_100007E14(v10, &qword_100142A00, &qword_1000F5B58);
}

uint64_t sub_1000136C0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = sub_100002D44(&qword_100142950, &qword_1000F7340);
  __chkstk_darwin(v37);
  v3 = &v34 - v2;
  v4 = sub_100002D44(&qword_100142A28, &qword_1000F5BB0);
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  v36 = sub_100002D44(&qword_100142A30, &qword_1000F5BB8);
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v34 - v7;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  *&v46[0] = v9;
  *(&v46[0] + 1) = v10;
  sub_10000B730(v11, v12, v13);

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  KeyPath = swift_getKeyPath();
  v22 = static HierarchicalShapeStyle.secondary.getter();
  v45 = v18 & 1;
  v44 = 0;
  v23 = static Font.caption.getter();
  v24 = swift_getKeyPath();
  *&v39 = v14;
  *(&v39 + 1) = v16;
  LOBYTE(v40) = v45;
  *(&v40 + 1) = v20;
  *&v41 = KeyPath;
  *(&v41 + 1) = 1;
  LOBYTE(v42) = v44;
  DWORD1(v42) = v22;
  *(&v42 + 1) = v24;
  v43 = v23;
  static Font.Weight.semibold.getter();
  v25 = sub_100002D44(&qword_100142A38, &qword_1000F5BC0);
  v26 = sub_100014D58();
  View.fontWeight(_:)();
  v46[2] = v41;
  v46[3] = v42;
  v47 = v43;
  v46[0] = v39;
  v46[1] = v40;
  sub_100007E14(v46, &qword_100142A38, &qword_1000F5BC0);
  v27 = enum case for DynamicTypeSize.xxxLarge(_:);
  v28 = type metadata accessor for DynamicTypeSize();
  (*(*(v28 - 8) + 104))(v3, v27, v28);
  sub_100014B84(&qword_1001429E8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *&v39 = v25;
    *(&v39 + 1) = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
    v32 = v37;
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v3, &qword_100142950, &qword_1000F7340);
    (*(v34 + 8))(v6, v4);
    *&v39 = v4;
    *(&v39 + 1) = v32;
    *&v40 = OpaqueTypeConformance2;
    *(&v40 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    v33 = v36;
    View.accessibilityIdentifier(_:)();
    return (*(v35 + 8))(v8, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013B58@<X0>(uint64_t a1@<X8>)
{
  v32 = sub_100002D44(&qword_100142950, &qword_1000F7340);
  __chkstk_darwin(v32);
  v4 = &v31 - v3;
  v5 = sub_100002D44(&qword_100142A10, &qword_1000F5B68);
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = *v1;
  v9 = v1[1];
  *&v41[0] = v8;
  *(&v41[0] + 1) = v9;
  sub_10000B730(v10, v11, v12);

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = static Font.subheadline.getter();
  v22 = swift_getKeyPath();
  v40 = v17 & 1;
  v39 = 0;
  *&v34 = v13;
  *(&v34 + 1) = v15;
  LOBYTE(v35) = v17 & 1;
  *(&v35 + 1) = v19;
  *&v36 = KeyPath;
  *(&v36 + 1) = 1;
  LOBYTE(v37) = 0;
  *(&v37 + 1) = v22;
  v38 = v21;
  v23 = enum case for DynamicTypeSize.xxxLarge(_:);
  v24 = type metadata accessor for DynamicTypeSize();
  (*(*(v24 - 8) + 104))(v4, v23, v24);
  sub_100014B84(&qword_1001429E8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v26 = sub_100002D44(&qword_100142A18, &unk_1000F5BA0);
    v27 = sub_100014CA0();
    v31 = a1;
    v28 = v5;
    v29 = sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
    v30 = v32;
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v4, &qword_100142950, &qword_1000F7340);
    v41[2] = v36;
    v41[3] = v37;
    v42 = v38;
    v41[0] = v34;
    v41[1] = v35;
    sub_100007E14(v41, &qword_100142A18, &unk_1000F5BA0);
    *&v34 = v26;
    *(&v34 + 1) = v30;
    *&v35 = v27;
    *(&v35 + 1) = v29;
    swift_getOpaqueTypeConformance2();
    View.accessibilityIdentifier(_:)();
    return (*(v33 + 8))(v7, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013EE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002D44(&qword_100142950, &qword_1000F7340);
  __chkstk_darwin(v3);
  v5 = &v49 - v4;
  v63 = type metadata accessor for DefaultButtonStyle();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100142958, &qword_1000F5A70);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v60 = sub_100002D44(&qword_100142960, &qword_1000F5A78);
  v57 = *(v60 - 8);
  __chkstk_darwin(v60);
  v62 = &v49 - v11;
  v12 = sub_100002D44(&qword_100142968, &qword_1000F5A80);
  v59 = *(v12 - 8);
  __chkstk_darwin(v12);
  v56 = &v49 - v13;
  v14 = sub_100002D44(&qword_100142970, &qword_1000F5A88);
  __chkstk_darwin(v14);
  v58 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = __chkstk_darwin(v16);
  v21 = *(v1 + 40);
  if (v21)
  {
    v22 = *(v1 + 32);
    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      v50 = &v49 - v19;
      v51 = v12;
      v52 = v18;
      v53 = v17;
      v54 = v3;
      v55 = a1;
      v24 = swift_allocObject();
      v25 = *(v1 + 16);
      v24[1] = *v1;
      v24[2] = v25;
      v26 = *(v1 + 48);
      v24[3] = *(v1 + 32);
      v24[4] = v26;
      __chkstk_darwin(v24);
      *(&v49 - 2) = v22;
      *(&v49 - 1) = v21;
      sub_1000148F0(v1, &v64);
      sub_100002D44(&qword_100142978, &unk_1000F5A90);
      sub_100014928();
      Button.init(action:label:)();
      v27 = static Color.blue.getter();
      KeyPath = swift_getKeyPath();
      v29 = &v10[*(v8 + 36)];
      *v29 = KeyPath;
      v29[1] = v27;
      DefaultButtonStyle.init()();
      v30 = sub_100014AA0();
      v31 = sub_100014B84(&qword_1001429E0, &type metadata accessor for DefaultButtonStyle, &protocol conformance descriptor for DefaultButtonStyle);
      v33 = v62;
      v32 = v63;
      View.buttonStyle<A>(_:)();
      (*(v61 + 8))(v7, v32);
      sub_100007E14(v10, &qword_100142958, &qword_1000F5A70);
      v34 = enum case for DynamicTypeSize.xxxLarge(_:);
      v35 = type metadata accessor for DynamicTypeSize();
      (*(*(v35 - 8) + 104))(v5, v34, v35);
      sub_100014B84(&qword_1001429E8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v64 = v8;
        v65 = v32;
        v66 = v30;
        v67 = v31;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v37 = sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
        v38 = v56;
        v39 = v60;
        v40 = v33;
        v41 = v54;
        View.dynamicTypeSize<A>(_:)();
        sub_100007E14(v5, &qword_100142950, &qword_1000F7340);
        (*(v57 + 8))(v40, v39);
        v64 = v39;
        v65 = v41;
        v66 = OpaqueTypeConformance2;
        v67 = v37;
        swift_getOpaqueTypeConformance2();
        v5 = v58;
        v42 = v51;
        View.accessibilityIdentifier(_:)();
        (*(v59 + 8))(v38, v42);
        if (qword_100141A80 == -1)
        {
LABEL_7:
          v43 = v50;
          v44 = v53;
          ModifiedContent<>.accessibilityHint(_:)();
          sub_100007E14(v5, &qword_100142970, &qword_1000F5A88);
          v45 = v43;
          v46 = v55;
          sub_100014BCC(v45, v55);
          return (*(v52 + 56))(v46, 0, 1, v44);
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_7;
    }
  }

  v48 = *(v18 + 56);

  return v48(a1, 1, 1, v20);
}

uint64_t sub_10001467C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_10000B730(a1, a2, a3);

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.subheadline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10000BFBC(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v16;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  *(a4 + 56) = result;
  *(a4 + 64) = 0x3FE3333333333333;
  return result;
}

uint64_t sub_100014798@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v5 = v2[3];
  v8[2] = v2[2];
  v8[3] = v5;
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v6 = sub_100002D44(&qword_100142910, &qword_1000F5A30);
  return sub_100013018(v8, a2 + *(v6 + 44));
}

uint64_t sub_100014860()
{

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000148B8()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_100014928()
{
  result = qword_100142980;
  if (!qword_100142980)
  {
    sub_100004370(&qword_100142978, &unk_1000F5A90);
    sub_1000149E0();
    sub_100004610(&qword_1001429A8, &qword_1001429B0, &qword_1000F5AA8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142980);
  }

  return result;
}

unint64_t sub_1000149E0()
{
  result = qword_100142988;
  if (!qword_100142988)
  {
    sub_100004370(&qword_100142990, &qword_1000F6FD0);
    sub_100004610(&qword_100142998, &qword_1001429A0, &qword_1000F5AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142988);
  }

  return result;
}

unint64_t sub_100014AA0()
{
  result = qword_1001429B8;
  if (!qword_1001429B8)
  {
    sub_100004370(&qword_100142958, &qword_1000F5A70);
    sub_100004610(&qword_1001429C0, &qword_1001429C8, &qword_1000F5AE0, &protocol conformance descriptor for Button<A>);
    sub_100004610(&qword_1001429D0, &qword_1001429D8, &qword_1000F5AE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001429B8);
  }

  return result;
}

uint64_t sub_100014B84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100014BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142970, &qword_1000F5A88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100014CA0()
{
  result = qword_100142A20;
  if (!qword_100142A20)
  {
    sub_100004370(&qword_100142A18, &unk_1000F5BA0);
    sub_1000149E0();
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142A20);
  }

  return result;
}

unint64_t sub_100014D58()
{
  result = qword_100142A40;
  if (!qword_100142A40)
  {
    sub_100004370(&qword_100142A38, &qword_1000F5BC0);
    sub_100014E10();
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142A40);
  }

  return result;
}

unint64_t sub_100014E10()
{
  result = qword_100142A48;
  if (!qword_100142A48)
  {
    sub_100004370(&qword_100142A50, &unk_1000F5BC8);
    sub_1000149E0();
    sub_100004610(&qword_100141F80, &qword_100141F88, &qword_1000F4E90, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142A48);
  }

  return result;
}

double sub_100014F38()
{
  Image.init(systemName:)();
  swift_getKeyPath();

  static Font.Weight.bold.getter();
  sub_100002D44(&qword_100142A68, &qword_1000F5CA8);
  sub_10001502C();
  View.fontWeight(_:)();

  return result;
}

unint64_t sub_10001502C()
{
  result = qword_100142A70;
  if (!qword_100142A70)
  {
    sub_100004370(&qword_100142A68, &qword_1000F5CA8);
    sub_1000150E4();
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142A70);
  }

  return result;
}

unint64_t sub_1000150E4()
{
  result = qword_100142A78;
  if (!qword_100142A78)
  {
    sub_100004370(&qword_100142A80, &unk_1000F5CB0);
    sub_100004610(&qword_100142A88, &unk_100142A90, &qword_1000F9FB0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142A78);
  }

  return result;
}

uint64_t sub_10001519C()
{
  sub_100004370(&qword_100142A68, &qword_1000F5CA8);
  sub_10001502C();
  return swift_getOpaqueTypeConformance2();
}

void sub_100015200()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent:0.9];

  qword_100142AA0 = v1;
}

id sub_1000153AC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100015454(void *a1)
{
  v2 = v1;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Scene will connect %@", v8, 0xCu);
    sub_1000157BC(v9);
  }

  type metadata accessor for ActivityScene();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    type metadata accessor for MusicRecognitionPlatterViewController();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = v5;
    v15 = [v13 init];
    v16 = OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_musicRecognitionPlatterViewController;
    v17 = *(v2 + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_musicRecognitionPlatterViewController);
    *(v2 + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_musicRecognitionPlatterViewController) = v15;

    v30 = v14;
    if ([v12 SBUI_isHostedBySystemAperture])
    {
      v18 = *(v2 + v16);
      [v12 setSystemApertureElementViewControllerProvider:v18];
    }

    else
    {
      v21 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
      ActivitySceneMetrics.init(size:cornerRadius:)();
      dispatch thunk of ActivityScene.resolvedMetrics.setter();
      if (qword_100141A88 != -1)
      {
        swift_once();
      }

      v22 = qword_100142AA0;
      dispatch thunk of ActivityScene.backgroundTintColor.setter();
      v23 = *(v2 + v16);
      if (v23)
      {
        *(v23 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle) = 0;
      }

      v24 = [objc_allocWithZone(UIWindow) initWithWindowScene:v12];

      v25 = OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_window;
      v26 = *(v2 + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_window);
      *(v2 + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_window) = v24;

      v27 = *(v2 + v25);
      if (v27)
      {
        [v27 setRootViewController:*(v2 + v16)];
        v28 = *(v2 + v25);
        if (v28)
        {
          v29 = v28;
          [v29 makeKeyAndVisible];
        }
      }
    }
  }

  else
  {
    v30 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v30, v19, "Unable to connect to ActivityScene", v20, 2u);
    }
  }
}

uint64_t sub_1000157BC(uint64_t a1)
{
  v2 = sub_100002D44(&unk_100142880, &unk_1000F5950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100015918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&unk_100144630, &qword_1000F5180);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AnyAlbum(uint64_t a1)
{
  result = qword_100142BF8;
  if (!qword_100142BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015A2C(uint64_t a1)
{
  sub_1000085D0(319);
  if (v1 <= 0x3F)
  {
    sub_100015AB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100015AB0()
{
  result = qword_100142C08;
  if (!qword_100142C08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100142C08);
  }

  return result;
}

uint64_t sub_100015B14(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 8))(v3, v4);
}

uint64_t sub_100015B74(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 16))(v3, v4);
}

uint64_t sub_100015BCC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 24))(v3, v4);
}

uint64_t sub_100015C24(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 32))(v3, v4);
}

uint64_t sub_100015C7C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 40))(v3, v4);
}

uint64_t sub_100015CD4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 48))(v3, v4);
}

uint64_t sub_100015D34(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 56))(v3, v4);
}

uint64_t sub_100015D94(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 64))(v3, v4);
}

unint64_t sub_100015DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142C38;
  if (!qword_100142C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C38);
  }

  return result;
}

uint64_t sub_100015E44()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10000D0C8(v0, qword_10014FEC8);
  sub_10000BEC4(v0, qword_10014FEC8);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

uint64_t sub_100015EA8@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = sub_100002D44(&qword_100142CC0, &qword_1000F6028);
  __chkstk_darwin(v1 - 8);
  v20[0] = v20 - v2;
  v3 = sub_100002D44(&qword_100142CC8, &unk_1000F6030);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v20 - v11;
  __chkstk_darwin(v13);
  v15 = v20 - v14;
  EntityProperty.wrappedValue.getter();
  v16 = v21;
  LocalizedStringResource.init(stringLiteral:)();
  if (v16)
  {
    LocalizedStringResource.init(stringLiteral:)();
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    (*(v7 + 32))(v15, v12, v6);
  }

  EntityProperty.wrappedValue.getter();
  v17 = v21;
  LocalizedStringResource.init(stringLiteral:)();
  if (v17)
  {
    LocalizedStringResource.init(stringLiteral:)();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 32))(v5, v9, v6);
  }

  (*(v7 + 56))(v5, 0, 1, v6);
  v18 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v18 - 8) + 56))(v20[0], 1, 1, v18);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

__n128 sub_1000161BC@<Q0>(uint64_t a1@<X8>)
{
  sub_100016A00(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100016208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142C40;
  if (!qword_100142C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C40);
  }

  return result;
}

unint64_t sub_100016260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142C48;
  if (!qword_100142C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C48);
  }

  return result;
}

unint64_t sub_1000162B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142C50;
  if (!qword_100142C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C50);
  }

  return result;
}

uint64_t sub_10001635C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000168E4(a1, a2, a3);

  return static TransientAppEntity.defaultQuery.getter(a1, v4);
}

unint64_t sub_1000163AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142C68;
  if (!qword_100142C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C68);
  }

  return result;
}

unint64_t sub_100016404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142C70;
  if (!qword_100142C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C70);
  }

  return result;
}

unint64_t sub_10001645C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142C78;
  if (!qword_100142C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C78);
  }

  return result;
}

unint64_t sub_1000164B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142C80;
  if (!qword_100142C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C80);
  }

  return result;
}

void *sub_100016514@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = EntityProperty.wrappedValue.getter();
  v7 = v11;
  if (v11)
  {
    v8 = v10;
  }

  else
  {
    UUID.init()();
    v8 = UUID.uuidString.getter();
    v7 = v9;
    result = (*(v3 + 8))(v5, v2);
  }

  *a1 = v8;
  a1[1] = v7;
  return result;
}

uint64_t sub_100016618@<X0>(uint64_t a1@<X8>)
{
  if (qword_100141A90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10000BEC4(v2, qword_10014FEC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100016704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100015DF0(a1, a2, a3);

  return static AppEntity.defaultResolverSpecification.getter(a1, v4);
}

unint64_t sub_100016754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142C98;
  if (!qword_100142C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C98);
  }

  return result;
}

uint64_t sub_1000167AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000789C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100016870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000164B4(a1, a2, a3);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

unint64_t sub_1000168BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000168E4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000168E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142CA0;
  if (!qword_100142CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142CA0);
  }

  return result;
}

__n128 sub_100016938(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100016954(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10001699C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100016A00@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v2 - 8);
  sub_100002D44(&qword_100142CA8, &qword_1000F6010);
  LocalizedStringResource.init(stringLiteral:)();
  v12 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v11 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v10 = EntityProperty<>.init(title:)();
  sub_100002D44(&qword_100142CB0, &qword_1000F6018);
  LocalizedStringResource.init(stringLiteral:)();
  v9 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v3 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v4 = EntityProperty<>.init(title:)();
  sub_100002D44(&qword_100142CB8, &qword_1000F6020);
  LocalizedStringResource.init(stringLiteral:)();
  v5 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v6 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v7 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  result = EntityProperty<>.init(title:)();
  *a1 = v12;
  a1[1] = v11;
  a1[2] = v10;
  a1[3] = v9;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;
  a1[7] = v6;
  a1[8] = v7;
  a1[9] = result;
  return result;
}

__n128 sub_100016C9C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v3 - 8);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v61 - v6;
  __chkstk_darwin(v7);
  v9 = &v61 - v8;
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v15 = &v61 - v14;
  sub_100016A00(v67);
  v16 = [a1 appleMusicID];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v65 = v18;
  v66 = v20;
  EntityProperty.wrappedValue.setter();
  v21 = [a1 artist];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v65 = v23;
  v66 = v25;
  EntityProperty.wrappedValue.setter();
  v26 = [a1 title];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v65 = v28;
  v66 = v30;
  EntityProperty.wrappedValue.setter();
  v31 = [a1 artworkURL];
  if (v31)
  {
    v32 = v31;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = type metadata accessor for URL();
  v35 = *(*(v34 - 8) + 56);
  v36 = 1;
  v35(v15, v33, 1, v34);
  sub_100008790(v15, v12);
  EntityProperty.wrappedValue.setter();
  sub_10001719C(v15);
  v37 = [a1 webURL];
  if (v37)
  {
    v38 = v37;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = 0;
  }

  v39 = 1;
  v35(v9, v36, 1, v34);
  sub_100008790(v9, v12);
  EntityProperty.wrappedValue.setter();
  sub_10001719C(v9);
  v40 = [a1 appleMusicURL];
  v41 = v62;
  if (v40)
  {
    v42 = v40;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 0;
  }

  v43 = 1;
  v35(v41, v39, 1, v34);
  sub_100008790(v41, v12);
  EntityProperty.wrappedValue.setter();
  sub_10001719C(v41);
  LOBYTE(v65) = [a1 explicitContent];
  EntityProperty.wrappedValue.setter();
  v44 = [a1 videoURL];
  v45 = v63;
  if (v44)
  {
    v46 = v44;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  v35(v45, v43, 1, v34);
  sub_100008790(v45, v12);
  EntityProperty.wrappedValue.setter();
  sub_10001719C(v45);
  v47 = [a1 lyricsSnippet];
  if (v47)
  {
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v65 = v49;
  v66 = v51;
  EntityProperty.wrappedValue.setter();
  objc_opt_self();
  v52 = swift_dynamicCastObjCClass();
  if (v52 && (v53 = [v52 syncedLyricsSnippet]) != 0)
  {
    v54 = v53;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v65 = v55;
  v66 = v57;
  EntityProperty.wrappedValue.setter();
  v58 = v67[3];
  v59 = v64;
  *(v64 + 32) = v67[2];
  *(v59 + 48) = v58;
  *(v59 + 64) = v67[4];
  result = v67[1];
  *v59 = v67[0];
  *(v59 + 16) = result;
  return result;
}

uint64_t sub_10001719C(uint64_t a1)
{
  v2 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artist();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000172A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artist();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MusicKitArtist(uint64_t a1)
{
  result = qword_100142D28;
  if (!qword_100142D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001735C(uint64_t a1)
{
  result = type metadata accessor for Artist();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000173C8()
{
  v0 = sub_100002D44(&qword_100142DB0, &qword_1000F60B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_100002D44(&qword_100142DB8, &qword_1000F60C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  Artist.genres.getter();
  v6 = sub_100002D44(&qword_100142DC0, &qword_1000F8AA0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    v8 = &qword_100142DB0;
    v9 = &qword_1000F60B8;
    v10 = v2;
LABEL_5:
    sub_100007E14(v10, v8, v9);
    return 0;
  }

  sub_100060398(v5);
  (*(v7 + 8))(v2, v6);
  v11 = type metadata accessor for Genre();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    v8 = &qword_100142DB8;
    v9 = &qword_1000F60C0;
    v10 = v5;
    goto LABEL_5;
  }

  v14 = Genre.name.getter();
  (*(v12 + 8))(v5, v11);
  return v14;
}

uint64_t sub_1000175EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v3 = type metadata accessor for Artwork.ImageFormat();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artwork.CropStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D44(&qword_100142D60, &qword_1000F6080);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  sub_100002D44(&qword_100142D68, &unk_1000F6088);
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();
  v19 = v8;

  v14 = type metadata accessor for Artwork();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100007E14(v13, &qword_100142D60, &qword_1000F6080);
    v16 = type metadata accessor for URL();
    return (*(*(v16 - 8) + 56))(v22, 1, 1, v16);
  }

  else
  {
    static Artwork.CropStyle.boundedBox.getter();
    (*(v4 + 104))(v6, enum case for Artwork.ImageFormat.heic(_:), v3);
    Artwork.url(width:height:cropStyle:format:)();
    (*(v4 + 8))(v6, v3);
    (*(v19 + 8))(v10, v7);
    return (*(v15 + 8))(v13, v14);
  }
}

void sub_100017998(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v24 = a2;
  v2 = type metadata accessor for ArtworkUnavailableView();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100002D44(&qword_100142D90, &unk_1000F92E0);
  __chkstk_darwin(v23);
  v6 = &v19 - v5;
  v22 = sub_100002D44(&qword_100142DA8, &qword_1000F60B0);
  __chkstk_darwin(v22);
  v8 = (&v19 - v7);
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AsyncImagePhase();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v21, v13, v15);
  if ((*(v14 + 88))(v17, v13) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v14 + 96))(v17, v13);
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    v18 = Image.resizable(capInsets:resizingMode:)();
    (*(v10 + 8))(v12, v9);
    *v8 = v18;
    swift_storeEnumTagMultiPayload();
    sub_100018034();
    swift_retain_n();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    ArtworkUnavailableView.init(placeholderImage:widthRatio:heightRatio:)();
    sub_100018120(&qword_100142D98, &type metadata accessor for ArtworkUnavailableView, &protocol conformance descriptor for ArtworkUnavailableView);
    View.accessibilityIdentifier(_:)();
    (*(v20 + 8))(v4, v2);
    sub_1000181CC(v6, v8);
    swift_storeEnumTagMultiPayload();
    sub_100018034();
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v6, &qword_100142D90, &unk_1000F92E0);
    (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_100017E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_100002D44(&qword_100142D70, &qword_1000F6098);
  __chkstk_darwin(v7);
  sub_1000175EC(a1, a2, v6);
  sub_100002D44(&qword_100142D78, &unk_1000F60A0);
  sub_100017FA8();
  AsyncImage.init(url:scale:transaction:content:)();
  sub_100018168();
  return AnyView.init<A>(_:)();
}

unint64_t sub_100017FA8()
{
  result = qword_100142D80;
  if (!qword_100142D80)
  {
    sub_100004370(&qword_100142D78, &unk_1000F60A0);
    sub_100018034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142D80);
  }

  return result;
}

unint64_t sub_100018034()
{
  result = qword_100142D88;
  if (!qword_100142D88)
  {
    sub_100004370(&qword_100142D90, &unk_1000F92E0);
    sub_100018120(&qword_100142D98, &type metadata accessor for ArtworkUnavailableView, &protocol conformance descriptor for ArtworkUnavailableView);
    sub_100018120(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142D88);
  }

  return result;
}

uint64_t sub_100018120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100018168()
{
  result = qword_100142DA0;
  if (!qword_100142DA0)
  {
    sub_100004370(&qword_100142D70, &qword_1000F6098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142DA0);
  }

  return result;
}

uint64_t sub_1000181CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142D90, &unk_1000F92E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10001823C()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.36];
  qword_100142DC8 = result;
  return result;
}

id sub_100018294()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.615686275 green:0.615686275 blue:0.615686275 alpha:1.0];
  qword_100142DD0 = result;
  return result;
}

id sub_1000182DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayerView;
  *&v4[v10] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayer;
  *&v4[v11] = [objc_allocWithZone(SHListeningLayer) initWithIntroAnimation:0 useCustomCompatibleBackground:1];
  v12 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLabel;
  *&v4[v12] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton;
  *&v4[v13] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_10001842C();

  return v14;
}

void sub_10001842C()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayerView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 layer];
  v54 = *&v0[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayer];
  [v2 addSublayer:?];

  [v0 addSubview:v1];
  v3 = *&v0[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v3];
  v4 = [objc_opt_self() systemFontOfSize:62.0 weight:UIFontWeightSemibold];
  [v3 setFont:v4];

  v5 = [objc_opt_self() whiteColor];
  [v3 setTextColor:v5];

  v6 = [objc_opt_self() mainBundle];
  v57._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x80000001000FFF60;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v57);

  v9 = String._bridgeToObjectiveC()();

  [v3 setText:v9];

  v10 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v10];

  v11 = *&v0[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v11];
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000F57F0;
  if (qword_100141AA0 != -1)
  {
    swift_once();
  }

  v13 = qword_100142DD0;
  *(v12 + 32) = qword_100142DD0;
  v14 = qword_100141A98;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_100142DC8;
  *(v12 + 40) = qword_100142DC8;
  sub_1000123E4(0, &qword_100142E20, UIColor_ptr);
  v17 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [objc_opt_self() configurationWithPaletteColors:isa];

  v53 = v19;
  v20 = String._bridgeToObjectiveC()();
  v55 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v53];

  [v11 setImage:v55 forState:0];
  [v11 setContentVerticalAlignment:3];
  [v11 setContentHorizontalAlignment:3];
  v21 = String._bridgeToObjectiveC()();
  [v11 setAccessibilityIdentifier:v21];

  v52 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000F60E0;
  v23 = [v1 leadingAnchor];
  v24 = [v0 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v22 + 32) = v25;
  v26 = [v1 centerYAnchor];
  v27 = [v0 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v22 + 40) = v28;
  v29 = [v1 heightAnchor];
  v30 = [v0 heightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 multiplier:0.65];

  *(v22 + 48) = v31;
  v32 = [v1 widthAnchor];
  v33 = [v0 heightAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 multiplier:0.65];

  *(v22 + 56) = v34;
  v35 = [v3 centerYAnchor];
  v36 = [v0 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v22 + 64) = v37;
  v38 = [v3 trailingAnchor];
  v39 = [v0 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-36.0];

  *(v22 + 72) = v40;
  v41 = [v11 heightAnchor];
  v42 = [v41 constraintEqualToConstant:54.0];

  *(v22 + 80) = v42;
  v43 = [v11 widthAnchor];
  v44 = [v43 constraintEqualToConstant:54.0];

  *(v22 + 88) = v44;
  v45 = [v11 topAnchor];
  v46 = [v0 topAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-26.0];

  *(v22 + 96) = v47;
  v48 = [v11 trailingAnchor];
  v49 = [v0 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v22 + 104) = v50;
  sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v52 activateConstraints:v51];

  [v54 startActiveListeningAnimation];
}

id sub_100018D08(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayerView;
  *&v1[v4] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayer;
  *&v1[v5] = [objc_allocWithZone(SHListeningLayer) initWithIntroAnimation:0 useCustomCompatibleBackground:1];
  v6 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton;
  *&v1[v7] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_10001842C();
  }

  return v9;
}

void sub_100019130(void *a1)
{
  v2 = v1;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Ambient scene will connect %@", v8, 0xCu);
    sub_1000157BC(v9);
  }

  type metadata accessor for ActivityScene();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    type metadata accessor for MusicRecognitionAmbientViewController();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    oslog = v5;
    v14 = [v13 init];
    v15 = OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_musicRecognitionAmbientViewController;
    v16 = *(v2 + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_musicRecognitionAmbientViewController);
    *(v2 + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_musicRecognitionAmbientViewController) = v14;

    v17 = [objc_allocWithZone(UIWindow) initWithWindowScene:v12];
    v18 = OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_window;
    v19 = *(v2 + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_window) = v17;

    v20 = *(v2 + v18);
    if (v20)
    {
      [v20 setRootViewController:*(v2 + v15)];
      v21 = *(v2 + v18);
      if (v21)
      {
        v22 = v21;
        [v22 makeKeyAndVisible];
      }
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v23, "Unable to connect to ActivityScene", v24, 2u);
    }
  }
}

uint64_t sub_100019454@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ShortcutTileColor.blue(_:);
  v3 = type metadata accessor for ShortcutTileColor();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000194D8()
{
  v0 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v0 - 8);
  v48 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for AppShortcutPhraseToken();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142E90, &qword_1000F61C0);
  __chkstk_darwin(v6);
  v44 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v39 = v35 - v9;
  __chkstk_darwin(v10);
  v11 = type metadata accessor for AppShortcut();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v45 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100022D7C();
  v51 = v13;
  sub_100002D44(&qword_100142E98, &qword_1000F61C8);
  v14 = *(sub_100002D44(&qword_100142EA0, &qword_1000F61D0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v41 = *(v14 + 72);
  v42 = 2 * v41;
  v16 = swift_allocObject();
  v43 = v16;
  *(v16 + 16) = xmmword_1000F6160;
  v40 = v16 + v15;
  v19 = sub_100019A88(v16, v17, v18);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x206E69676542;
  v20._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v20);
  v38 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v21 = *(v3 + 104);
  v35[0] = v2;
  v21(v5);
  v36 = v21;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v37 = *(v3 + 8);
  v49 = v3 + 8;
  v37(v5, v2);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v22);
  v35[1] = v19;
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x207472617453;
  v23._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v23);
  v24 = v38;
  v25 = v35[0];
  (v21)(v5, v38, v35[0]);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v26 = v37;
  v37(v5, v25);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v27);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v28);
  v36(v5, v24, v25);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v26(v5, v25);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v29);
  AppShortcutPhrase.init(stringInterpolation:)();
  LocalizedStringResource.init(stringLiteral:)();
  v30 = v45;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v31 = static AppShortcutsBuilder.buildExpression(_:)();
  (*(v46 + 8))(v30, v47);
  sub_100002D44(&qword_100142EB0, &qword_1000F61D8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000F57C0;
  *(v32 + 32) = v31;
  v33 = static AppShortcutsBuilder.buildBlock(_:)();

  return v33;
}

unint64_t sub_100019A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100142EA8;
  if (!qword_100142EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142EA8);
  }

  return result;
}

uint64_t sub_100019AE0(uint64_t a1)
{
  result = type metadata accessor for LocalizedStringResource();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NavigationPath();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ObservationRegistrar();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100019C60(char a1)
{
  v2 = 0xD000000000000015;
  v3 = [objc_opt_self() mainBundle];
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = "SHAZAM_SORT_TYPE_SUBTITLE";
    }

    else
    {
      v4 = "v20@?0B8@NSError12";
    }

    if (a1 == 1)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0xD000000000000019;
    }
  }

  else
  {
    v4 = "SHAZAM_SORT_TYPE_TITLE";
  }

  v9._object = 0xE000000000000000;
  v5._object = (v4 | 0x8000000000000000);
  v5._countAndFlagsBits = v2;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v3, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

Swift::Int sub_100019D50()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100019DC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100019E54()
{
  v0 = sub_10001E088();

  return v0;
}

uint64_t sub_100019E8C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + qword_100142EB8);
  v7 = *(v2 + qword_100142EB8 + 8);
  v16 = *(v2 + qword_100142EB8);
  v17 = v7;
  v14 = a1;
  v15 = a2;
  v13 = *(v5 + 80);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12[2] = v2;
    v12[3] = a1;
    v12[4] = a2;
    sub_10001A090(v11, sub_100020A68, v12, &type metadata for () + 8);
  }
}

uint64_t sub_10001A168()
{
  KeyPath = swift_getKeyPath();
  sub_100019FF0(KeyPath, v2, v3);

  return *(v0 + qword_100142EC8);
}

double sub_10001A1E4(char a1)
{
  v2 = *v1;
  v3 = qword_100142EC8;
  v13 = *(v1 + qword_100142EC8);
  v4 = a1 & 1;
  v12 = a1;
  v11 = *(v2 + 80);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    *(v1 + v3) = v4;
  }

  else
  {
    __chkstk_darwin(v5);
    v10 = *(&v11 + 1);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v9[2] = v1;
    LOBYTE(v10) = v4;
    sub_10001A090(v8, sub_10001E3F0, v9, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_10001A330@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100019FF0(KeyPath, v4, v5);

  v6 = qword_100142ED0;
  swift_beginAccess();
  v7 = type metadata accessor for NavigationPath();
  return (*(*(v7 - 8) + 16))(a1, v1 + v6, v7);
}

uint64_t sub_10001A404(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for NavigationPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_100142ED0;
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v15[0] = *(v4 + 80);
  sub_1000208CC(&qword_100142F68, &type metadata accessor for NavigationPath, &protocol conformance descriptor for NavigationPath);
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v6 + 8);
  v11 = v10(v8, v5);
  if (v4)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    v15[-1] = v15[0];
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v15[-1] = v2;
    *(&v15[-1] + 1) = a1;
    sub_10001A090(v13, sub_10001E128, &v15[-2], &type metadata for () + 8);
  }

  return v10(a1, v5);
}

uint64_t sub_10001A694(uint64_t a1, uint64_t a2)
{
  v4 = qword_100142ED0;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

double sub_10001A730(void *a1)
{
  swift_getKeyPath();
  swift_getWitnessTable();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

uint64_t sub_10001A7F8()
{
  sub_10001E16C(&unk_1000F6408, &qword_100142ED8);
}

double sub_10001A830(uint64_t a1)
{
  v3 = *(v1 + qword_100142ED8);
  v4 = type metadata accessor for TrackPageViewModel(0);
  if (v3 == a1)
  {
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    sub_10001A090(v6, sub_100020998, v8, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_10001A97C()
{
  v1 = (*(*(*v0 + 88) + 8))(*(*v0 + 80));
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

id sub_10001AAA4()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result primaryAccountAltDSID];

    if (!v2)
    {
      return 0;
    }

    v3 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionFlowContext) initWithAltDSID:v2];

    [v3 setDeviceToDeviceEncryptionUpgradeType:0];
    [v3 setDeviceToDeviceEncryptionUpgradeUIStyle:1];
    v4 = [objc_opt_self() mainBundle];
    v8._object = 0xE000000000000000;
    v5._object = 0x8000000100100170;
    v5._countAndFlagsBits = 0xD00000000000001ELL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v8._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v8);

    v7 = String._bridgeToObjectiveC()();

    [v3 setFeatureName:v7];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10001AC10()
{
  v0 = sub_10001E16C(&unk_1000F6398, qword_100142EE0);
  v1 = v0;
  return v0;
}

void sub_10001AC4C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = qword_100142EE0[0];
  v6 = *(v2 + qword_100142EE0[0]);
  v13 = a1;
  v14 = v6;
  sub_100002D44(&qword_100142F80, &unk_1000F63D0);
  v12 = *(v4 + 80);
  sub_10001E490();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    v8 = *(v2 + v5);
    *(v2 + v5) = a1;
  }

  else
  {
    __chkstk_darwin(v7);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[2] = v2;
    v11[3] = a1;
    sub_10001A090(v10, sub_10001E584, v11, &type metadata for () + 8);
  }
}

void sub_10001AE2C(__int16 a1)
{
  v2 = a1;
  LODWORD(v52) = a1 & 0x100;
  v3 = *v1;
  v4 = type metadata accessor for String.StandardComparator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_100002D44(&qword_100142FC0, &unk_1000F6520);
  v50 = *(v14 - 8);
  v51 = v14;
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v49 - v19;
  v21 = (*(*(v3 + 88) + 8))(*(v3 + 80), v18);
  if (v2)
  {
    v53 = v21;
    swift_getKeyPath();
    static String.StandardComparator.localizedStandard.getter();
    if (v2 == 1)
    {
      (*(v5 + 16))(v10, v7, v4);
      SortDescriptor.init(_:comparator:order:)();
      (*(v5 + 8))(v7, v4);
      sub_100002D44(&qword_100142FC8, &qword_1000F8AB0);
      sub_100004610(&qword_100142FD0, &qword_100142FC8, &qword_1000F8AB0, &protocol conformance descriptor for [A]);
      sub_100004610(&qword_100142FD8, &qword_100142FC0, &unk_1000F6520, &protocol conformance descriptor for SortDescriptor<A>);
      v22 = v51;
      v23 = Sequence.sorted<A>(using:)();
      (*(v50 + 8))(v16, v22);

      v26 = sub_1000201FC(v23, &selRef_title);
    }

    else
    {
      (*(v5 + 16))(v10, v13, v4);
      SortDescriptor.init(_:comparator:order:)();
      (*(v5 + 8))(v13, v4);
      sub_100002D44(&qword_100142FC8, &qword_1000F8AB0);
      sub_100004610(&qword_100142FD0, &qword_100142FC8, &qword_1000F8AB0, &protocol conformance descriptor for [A]);
      sub_100004610(&qword_100142FD8, &qword_100142FC0, &unk_1000F6520, &protocol conformance descriptor for SortDescriptor<A>);
      v32 = v51;
      v33 = Sequence.sorted<A>(using:)();
      (*(v50 + 8))(v20, v32);

      v26 = sub_1000201FC(v33, &selRef_subtitle);
    }

    v29 = v24;
    v31 = v25;
    v49 = 0;
  }

  else
  {

    v53 = sub_10001DDB8(v27);
    sub_10001D7D0(&v53, v52);

    v26 = sub_10001D460(v53);
    v29 = v28;
    v31 = v30;
    v49 = 0;
  }

  v34 = *(v31 + 16);
  swift_retain_n();
  v52 = v26;

  v35 = 0;
  v36 = v29 + 40;
  v37 = _swiftEmptyArrayStorage;
  v50 = v34;
  v51 = v29 + 40;
LABEL_8:
  if (v35 <= v34)
  {
    v38 = v34;
  }

  else
  {
    v38 = v35;
  }

  v39 = (v36 + 16 * v35);
  while (1)
  {
    if (v38 == v35)
    {

      return;
    }

    if (v35 >= *(v29 + 16))
    {
      break;
    }

    if (v35 >= *(v31 + 16))
    {
      goto LABEL_27;
    }

    v40 = *(v39 - 1);
    v41 = *v39;
    v42 = *(v31 + 32 + 8 * v35);
    if (v42 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 += 2;
    ++v35;
    if (v43)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_100057F6C(0, *(v37 + 2) + 1, 1, v37);
      }

      v46 = *(v37 + 2);
      v45 = *(v37 + 3);
      v36 = v51;
      if (v46 >= v45 >> 1)
      {
        v48 = sub_100057F6C((v45 > 1), v46 + 1, 1, v37);
        v36 = v51;
        v37 = v48;
      }

      *(v37 + 2) = v46 + 1;
      v47 = &v37[24 * v46];
      *(v47 + 4) = v40;
      *(v47 + 5) = v41;
      *(v47 + 6) = v42;
      v34 = v50;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);

  __break(1u);
}

uint64_t sub_10001B4CC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v49 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v38 - v10;
  __chkstk_darwin(v11);
  v43 = &v38 - v12;
  v13 = sub_100002D44(&qword_100142FE0, &unk_1000F8EC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v38 - v22;
  v24 = [*a1 creationDate];
  v39 = v23;
  if (v24)
  {
    v25 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = v5;
    v27 = v4;
    v28 = *(v17 + 32);
    v28(v15, v19, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
    v28(v23, v15, v16);
    v4 = v27;
    v5 = v26;
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    static Date.now.getter();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_100007E14(v15, &qword_100142FE0, &unk_1000F8EC0);
    }
  }

  v29 = v41;
  static FormatStyle<>.dateTime.getter();
  v30 = v42;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  v31 = v40;
  Date.FormatStyle.month(_:)();
  (*(v5 + 8))(v30, v4);
  v32 = v46;
  v33 = *(v45 + 8);
  v33(v29, v46);
  v34 = v47;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v35 = v43;
  Date.FormatStyle.year(_:)();
  (*(v48 + 8))(v34, v49);
  v33(v31, v32);
  sub_1000208CC(&qword_100142FE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  v36 = v39;
  Date.formatted<A>(_:)();
  v33(v35, v32);
  return (*(v17 + 8))(v36, v16);
}

void sub_10001B9E8(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

double sub_10001BA4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v23 - v6;
  v8 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_10001E16C(&unk_1000F6398, qword_100142EE0);
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    (*(v5 + 16))(v7, v2 + *(*v2 + 184), v4);
    type metadata accessor for MainActor();
    v14 = v12;
    v15 = static MainActor.shared.getter();
    v16 = (*(v5 + 80) + 56) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = v15;
    *(v17 + 3) = &protocol witness table for MainActor;
    *(v17 + 4) = v4;
    *(v17 + 5) = *(v3 + 88);
    *(v17 + 6) = v14;
    (*(v5 + 32))(&v17[v16], v7, v4);
    sub_1000C1D74(0, 0, v10, &unk_1000F6348, v17);

    return sub_10001A1E4(0);
  }

  else
  {
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000BEC4(v19, qword_10014FEA0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to perform encryption repair, missing context", v22, 2u);
    }

    return sub_10001A1E4(0);
  }
}

uint64_t sub_10001BDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  type metadata accessor for MainActor();
  v7[22] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[23] = v9;
  v7[24] = v8;

  return _swift_task_switch(sub_10001BE54, v9, v8);
}

uint64_t sub_10001BE54()
{
  v1 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionHelper) initWithContext:v0[18]];
  v0[25] = v1;
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_10001BF94;
  v2 = swift_continuation_init();
  v0[17] = sub_100002D44(&qword_100142F70, &unk_1000F6350);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001C584;
  v0[13] = &unk_100136098;
  v0[14] = v2;
  [v1 performDeviceToDeviceEncryptionStateRepairWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001BF94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_10001C50C;
  }

  else
  {
    v5 = sub_10001C0C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001C0C4()
{
  v17 = v0;
  v1 = *(v0 + 224);
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    if (v1)
    {
      v7 = 0x6564656563637573;
    }

    else
    {
      v7 = 0x64656C696166;
    }

    if (v1)
    {
      v8 = 0xE900000000000064;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    v9 = sub_1000BA1EC(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Encryption repair %s", v5, 0xCu);
    sub_100007E74(v6);
  }

  if (v1)
  {
    v15 = (*(*(v0 + 168) + 48) + **(*(v0 + 168) + 48));
    v10 = swift_task_alloc();
    *(v0 + 216) = v10;
    *v10 = v0;
    v10[1] = sub_10001C37C;
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);

    return v15(v12, v11);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10001C37C()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_10001C49C, v3, v2);
}

uint64_t sub_10001C49C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001C50C()
{
  v1 = *(v0 + 200);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001C584(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000DC80((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002D44(&qword_100142F78, &unk_1000FACE0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10001C650()
{
  v0 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  NavigationPath.init()();
  return sub_10001A404(v2);
}

uint64_t sub_10001C6C4(char a1)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v6 = __chkstk_darwin(v3);
  if (a1)
  {
    (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + qword_10014FEE0, v6);
    v7 = String.init(localized:)();
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  return sub_100019E8C(v7, v8);
}

double sub_10001C7A4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v7 - 8);
  v62 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v54[-v10];
  __chkstk_darwin(v12);
  v61 = &v54[-v13];
  __chkstk_darwin(v14);
  v16 = &v54[-v15];
  __chkstk_darwin(v17);
  v59 = a1;
  v60 = &v54[-v18];
  v67[0] = a1;
  v65 = *(v6 + 80);
  v19 = v65;
  v66 = *(v6 + 88);
  v20 = v66;
  KeyPath = swift_getKeyPath();
  sub_100019FF0(KeyPath, v22, v23);

  v68[0] = v3;
  v63 = v19;
  v64 = v20;
  swift_getKeyPath();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000123E4(0, &qword_100142FB0, SHMediaItem_ptr);
  sub_10001E540(&qword_100142FB8, &qword_100142FB0, SHMediaItem_ptr, &protocol conformance descriptor for NSObject);
  NavigationPath.append<A>(_:)();
  swift_endAccess();
  sub_10001A730(v3);
  swift_getKeyPath();
  v68[0] = a2;
  sub_1000208CC(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(a2 + 40);
  v56 = *(a2 + 32);
  swift_getKeyPath();
  v68[0] = a2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = *(a2 + 48);
  swift_getKeyPath();
  v68[0] = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = 0x2000Bu >> (8 * *(a2 + 16));
  swift_getKeyPath();
  v68[0] = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = *(a2 + 49);
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v26 = qword_10014FF90;
  v27 = type metadata accessor for MusicSubscriptionStatusController(0);
  v68[3] = v27;
  v68[4] = &off_100139B30;
  v68[0] = v26;
  type metadata accessor for TrackPageViewModel(0);
  v28 = swift_allocObject();
  v29 = sub_100007D60(v68, v27);
  v57 = v54;
  v30 = __chkstk_darwin(v29);
  v32 = &v54[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v33 + 16))(v32, v30);
  v34 = *v32;
  v67[3] = v27;
  v67[4] = &off_100139B30;
  v67[0] = v34;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0u;
  *(v28 + 96) = 0u;
  *(v28 + 112) = 0u;
  *(v28 + 128) = 0;
  *(v28 + 136) = 2;
  *(v28 + 144) = 0x3FE6666666666666;
  *(v28 + 200) = 0;
  *(v28 + 152) = 0u;
  *(v28 + 168) = 0u;
  *(v28 + 177) = 0u;
  *(v28 + 248) = 0;
  *(v28 + 232) = 0u;
  *(v28 + 216) = 0u;
  *(v28 + 392) = 0u;
  *(v28 + 408) = 0u;
  *(v28 + 360) = 0u;
  *(v28 + 376) = 0u;
  *(v28 + 328) = 0u;
  *(v28 + 344) = 0u;
  *(v28 + 296) = 0u;
  *(v28 + 312) = 0u;
  *(v28 + 264) = 0u;
  *(v28 + 280) = 0u;
  v35 = 1;
  *(v28 + 424) = 0;
  *(v28 + 432) = 1;
  *(v28 + 440) = 0u;
  *(v28 + 456) = 0u;
  *(v28 + 472) = 0u;
  v36 = objc_opt_self();

  v37 = v59;
  v38 = v59;
  *(v28 + 488) = [v36 sharedInstance];
  *(v28 + 496) = LocalizedStringKey.init(stringLiteral:)();
  *(v28 + 504) = v39;
  *(v28 + 512) = v40 & 1;
  *(v28 + 520) = v41;
  *(v28 + 528) = LocalizedStringKey.init(stringLiteral:)();
  *(v28 + 536) = v42;
  *(v28 + 544) = v43 & 1;
  *(v28 + 552) = v44;
  ObservationRegistrar.init()();
  *(v28 + 560) = v37;
  *(v28 + 568) = v56;
  *(v28 + 576) = v24;
  *(v28 + 584) = v55;
  sub_100007DB0(v67, v28 + 592);
  *(v28 + 256) = v25;
  v45 = [v38 artworkURL];
  if (v45)
  {
    v46 = v45;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  v47 = type metadata accessor for URL();
  v48 = *(*(v47 - 8) + 56);
  v48(v16, v35, 1, v47);
  v49 = v60;
  sub_100007F6C(v16, v60);
  v50 = v61;
  v48(v61, 1, 1, v47);
  type metadata accessor for SongArtworkViewModel(0);
  v51 = swift_allocObject();
  v48((v51 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL), 1, 1, v47);
  v48((v51 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL), 1, 1, v47);
  ObservationRegistrar.init()();
  sub_100007FDC(v49, v11, &unk_100144630, &qword_1000F5180);
  sub_1000D88D8(v11);
  sub_100007FDC(v50, v11, &unk_100144630, &qword_1000F5180);
  v52 = v62;
  sub_100007FDC(v11, v62, &unk_100144630, &qword_1000F5180);
  sub_1000D8B98(v52);
  sub_100007E14(v50, &unk_100144630, &qword_1000F5180);
  sub_100007E14(v49, &unk_100144630, &qword_1000F5180);
  sub_100007E14(v11, &unk_100144630, &qword_1000F5180);
  sub_100007E74(v67);
  *(v28 + 208) = v51;
  *(v28 + 632) = v58;
  sub_100007E74(v68);
  return sub_10001A830(v28);
}

uint64_t *sub_10001CFC8()
{
  v1 = *v0;
  v2 = qword_10014FEE0;
  v3 = type metadata accessor for LocalizedStringResource();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = qword_100142ED0;
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 184));
  v6 = *(*v0 + 192);
  v7 = type metadata accessor for ObservationRegistrar();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_10001D1C8()
{
  sub_10001CFC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t getEnumTagSinglePayload for HistorySortSelection(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HistorySortSelection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_10001D3D8(uint64_t a1, uint64_t a2)
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

  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10001D460(unint64_t a1)
{
  v2 = v1;
  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v3)
  {
    v4 = 0;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1 & 0xC000000000000001;
    v24 = v3;
    v25 = a1 + 32;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v27)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v26 + 16))
        {
          goto LABEL_41;
        }

        a1 = *(v25 + 8 * v4);
      }

      v6 = a1;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v23 = a1;
        v3 = _CocoaArrayWrapper.endIndex.getter();
        a1 = v23;
        goto LABEL_3;
      }

      v29 = a1;
      sub_10001B4CC(&v29, v28);
      if (v2)
      {

        v21 = v31;

        return v21;
      }

      v8 = v28[0];
      v9 = v28[1];
      v11 = v30;
      v10 = v31;
      v12 = v31[2];
      if (v30)
      {

        v13 = sub_10001DC6C(v8, v9, (v10 + 4), v12, v11 + 2, (v11 + 4));
        v2 = v14;
        v12 = v15;

        if (v2)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (!v12)
        {
LABEL_28:
          sub_10001D854(v8, v9, v12);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100063048(0, v5[2] + 1, 1);
            v5 = v32;
          }

          v19 = v5[2];
          v18 = v5[3];
          if (v19 >= v18 >> 1)
          {
            sub_100063048((v18 > 1), v19 + 1, 1);
            v5 = v32;
          }

          v5[2] = v19 + 1;
          v20 = &v5[v19];
          v20[4] = _swiftEmptyArrayStorage;
          v6;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v20[4] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v20[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_5;
          }

LABEL_33:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          goto LABEL_5;
        }

        v13 = 0;
        v2 = v31 + 5;
        while (1)
        {
          v16 = *(v2 - 1) == v8 && *v2 == v9;
          if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v13;
          v2 += 2;
          if (v12 == v13)
          {
            v12 = 0;
            goto LABEL_28;
          }
        }
      }

      a1 = swift_isUniquelyReferenced_nonNull_native();
      if ((a1 & 1) == 0)
      {
        a1 = sub_10005CEF0(v5);
        v5 = a1;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (v13 >= v5[2])
      {
        goto LABEL_43;
      }

      v6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v5[v13 + 4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[v13 + 4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_33;
      }

LABEL_5:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v2 = 0;
      if (v4 == v24)
      {
        v21 = v30;
        goto LABEL_38;
      }
    }
  }

  v21 = 0;
LABEL_38:

  return v21;
}

uint64_t sub_10001D7D0(uint64_t *a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10005CEDC(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1000200DC(v8, v2 & 1);
  return specialized ContiguousArray._endMutation()();
}

void sub_10001D854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100063068(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_100063068((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  if (*v4)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v12)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v15 = *v4;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v16 = _HashTable.copy()();

        *v4 = v16;
        v15 = v16;
      }

      if (v15)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return;
  }

  sub_10001D9CC();
}

void sub_10001D9CC()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = static _HashTable.scale(forCapacity:)();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_10001DA6C(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
}

uint64_t sub_10001DA6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = _HashTable.init(scale:reservedScale:)();
    sub_10001DAEC(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

Swift::Int sub_10001DB3C(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v7 = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        v7 = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int sub_10001DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

void *sub_10001DDB8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10001D3D8(v3, 0);
  sub_10001DE4C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10001DE4C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100004610(&qword_100142FF0, &qword_100142FC8, &qword_1000F8AB0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100002D44(&qword_100142FC8, &qword_1000F8AB0);
            v9 = sub_10001E000(v13, i, a3);
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
        sub_1000123E4(0, &qword_100142FB0, SHMediaItem_ptr);
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

void (*sub_10001E000(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10001E080;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E088()
{
  KeyPath = swift_getKeyPath();
  sub_100019FF0(KeyPath, v2, v3);

  return *(v0 + qword_100142EB8);
}

__n128 sub_10001E11C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10001E16C(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_100019FF0(KeyPath, v5, v6);

  return *(v2 + *a2);
}

uint64_t sub_10001E1E8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001E2AC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000789C;

  return sub_10001BDB8(a1, v7, v8, v9, v1 + v6, v4, v5);
}

id sub_10001E408@<X0>(void *a1@<X8>)
{
  v2 = sub_10001E16C(&unk_1000F6398, qword_100142EE0);
  *a1 = v2;

  return v2;
}

void sub_10001E454(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10001AC4C(v1);
}

unint64_t sub_10001E490()
{
  result = qword_100142F88;
  if (!qword_100142F88)
  {
    sub_100004370(&qword_100142F80, &unk_1000F63D0);
    sub_10001E540(&qword_100142F90, &qword_100142F98, CDPUIDeviceToDeviceEncryptionFlowContext_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142F88);
  }

  return result;
}

uint64_t sub_10001E540(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000123E4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001E584()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + qword_100142EE0[0]);
  *(v1 + qword_100142EE0[0]) = v2;
  v4 = v2;
}

uint64_t sub_10001E5C4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

BOOL sub_10001E660(void **a1, void **a2, int a3)
{
  v45 = a3;
  v5 = sub_100002D44(&qword_100142FE0, &unk_1000F8EC0);
  __chkstk_darwin(v5 - 8);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = *a1;
  v22 = *a2;
  p_align = &stru_10013EFE8.align;
  v24 = [v21 creationDate];
  v43 = v20;
  if (v24)
  {
    v25 = v20;
    v42 = v13;
    v26 = v22;
    v27 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v11 + 32);
    v28(v9, v16, v10);
    v29 = *(v11 + 56);
    v29(v9, 0, 1, v10);
    v30 = v25;
    p_align = (&stru_10013EFE8 + 24);
    v28(v30, v9, v10);
    v22 = v26;
    v13 = v42;
  }

  else
  {
    v29 = *(v11 + 56);
    v29(v9, 1, 1, v10);
    static Date.now.getter();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_100007E14(v9, &qword_100142FE0, &unk_1000F8EC0);
    }
  }

  v31 = [v22 *(p_align + 238)];
  if (v31)
  {
    v32 = v31;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *(v11 + 32);
    v34 = v44;
    v33(v44, v16, v10);
    v29(v34, 0, 1, v10);
    v33(v13, v34, v10);
    v35 = v43;
  }

  else
  {
    v36 = v44;
    v29(v44, 1, 1, v10);
    static Date.now.getter();
    v37 = (*(v11 + 48))(v36, 1, v10);
    v35 = v43;
    if (v37 != 1)
    {
      sub_100007E14(v36, &qword_100142FE0, &unk_1000F8EC0);
    }
  }

  v38 = Date.compare(_:)();
  v39 = *(v11 + 8);
  v39(v13, v10);
  v39(v35, v10);
  v40 = -1;
  if ((v45 & 1) == 0)
  {
    v40 = 1;
  }

  return v38 == v40;
}

uint64_t sub_10001EA4C(void **__dst, void **__src, void **a3, unint64_t a4, char a5)
{
  v6 = v5;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v17 = &v16[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v19 = v17;
      v20 = v8;
      v55 = *v8;
      v21 = v16;
      v54 = *v16;
      v22 = v54;
      v23 = v55;
      v24 = v22;
      v25 = sub_10001E660(&v55, &v54, a5 & 1);
      if (v6)
      {

        v45 = v19 - v21 + 7;
        if ((v19 - v21) >= 0)
        {
          v45 = v19 - v21;
        }

        v46 = v45 >> 3;
        if (v9 < v21 || v9 >= (v21 + (v45 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v9, v21, 8 * v46);
          return 1;
        }

        if (v9 == v21)
        {
          return 1;
        }

        v44 = 8 * v46;
        v42 = v9;
        v43 = v21;
        goto LABEL_57;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v18 = v21;
      v16 = v21 + 1;
      v8 = v20;
      if (v9 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      v17 = v19;
      v6 = 0;
      if (v16 >= v19)
      {
        goto LABEL_10;
      }
    }

    v18 = v20;
    v8 = v20 + 1;
    v16 = v21;
    if (v9 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v15);
    a4 = v27;
  }

  v52 = a4;
  v17 = (a4 + 8 * v15);
  if (v13 >= 8 && v8 > v9)
  {
    v28 = -a4;
    v49 = -a4;
    v50 = v9;
LABEL_25:
    v51 = v8;
    v29 = v8 - 1;
    v30 = v17 + v28;
    --v7;
    v31 = v17;
    while (1)
    {
      v32 = *--v31;
      v55 = v32;
      v33 = v29;
      v54 = *v29;
      v34 = v54;
      v35 = v32;
      v36 = v34;
      v37 = sub_10001E660(&v55, &v54, a5 & 1);
      if (v6)
      {
        break;
      }

      v38 = v37;

      v39 = v7 + 1;
      if (v38)
      {
        if (v39 != v51)
        {
          *v7 = *v33;
        }

        v16 = v52;
        v6 = 0;
        if (v17 <= v52 || (v8 = v33, v28 = v49, v33 <= v50))
        {
          v8 = v33;
          goto LABEL_51;
        }

        goto LABEL_25;
      }

      if (v39 != v17)
      {
        *v7 = *v31;
      }

      v30 -= 8;
      --v7;
      v17 = v31;
      v6 = 0;
      v29 = v33;
      if (v31 <= v52)
      {
        v17 = v31;
        v8 = v51;
        v16 = v52;
        goto LABEL_51;
      }
    }

    if (v30 >= 0)
    {
      v40 = v30;
    }

    else
    {
      v40 = v30 + 7;
    }

    v41 = v40 >> 3;
    v42 = v51;
    v43 = v52;
    if (v51 < v52 || v51 >= (v52 + (v40 & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v51, v52, 8 * v41);
      return 1;
    }

    if (v51 == v52)
    {
      return 1;
    }

    v44 = 8 * v41;
    goto LABEL_57;
  }

  v16 = a4;
LABEL_51:
  v47 = v17 - v16 + 7;
  if (v17 - v16 >= 0)
  {
    v47 = v17 - v16;
  }

  if (v8 < v16 || v8 >= (v16 + (v47 & 0xFFFFFFFFFFFFFFF8)) || v8 != v16)
  {
    v44 = 8 * (v47 >> 3);
    v42 = v8;
    v43 = v16;
LABEL_57:
    memmove(v42, v43, v44);
  }

  return 1;
}

uint64_t sub_10001EE10(uint64_t *a1, unint64_t a2, void *a3, char a4)
{
  v6 = a1;
  v7 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = sub_10005CDE4(v7);
    v7 = result;
  }

  v16 = v6;
  *v6 = v7;
  v9 = (v7 + 16);
  v10 = *(v7 + 16);
  if (v10 < 2)
  {
LABEL_9:
    *v16 = v7;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v6 = (v7 + 16 * v10);
      v11 = *v6;
      v12 = &v9[2 * v10];
      v13 = v12[1];
      sub_10001EA4C((*a3 + 8 * *v6), (*a3 + 8 * *v12), (*a3 + 8 * v13), a2, a4 & 1);
      if (v4)
      {
        goto LABEL_9;
      }

      if (v13 < v11)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v14 = *v9;
      if (v10 - 2 >= *v9)
      {
        goto LABEL_11;
      }

      *v6 = v11;
      v6[1] = v13;
      v15 = v14 - v10;
      if (v14 < v10)
      {
        goto LABEL_12;
      }

      v10 = v14 - 1;
      result = memmove(v12, v12 + 2, 16 * v15);
      *v9 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v16 = v7;
    __break(1u);
  }

  return result;
}

void sub_10001EF50(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v146 = a1;
  v8 = sub_100002D44(&qword_100142FE0, &unk_1000F8EC0);
  __chkstk_darwin(v8 - 8);
  v165 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v161 = &v144 - v11;
  __chkstk_darwin(v12);
  v154 = &v144 - v13;
  __chkstk_darwin(v14);
  v152 = &v144 - v15;
  v16 = type metadata accessor for Date();
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v169 = &v144 - v18;
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v167 = &v144 - v21;
  __chkstk_darwin(v22);
  v156 = &v144 - v26;
  v173 = _swiftEmptyArrayStorage;
  v155 = a3;
  v27 = a3[1];
  if (v27 >= 1)
  {
    v144 = a4;
    v28 = 0;
    v166 = (v23 + 32);
    v170 = (v23 + 56);
    v159 = (v23 + 48);
    v164 = (v23 + 8);
    v29 = -1;
    v30 = _swiftEmptyArrayStorage;
    if ((a5 & 1) == 0)
    {
      v29 = 1;
    }

    v163 = v29;
    v153 = a5;
    v160 = v24;
    v151 = v25;
    do
    {
      v147 = v28;
      if (v28 + 1 >= v27)
      {
        v27 = v28 + 1;
        v59 = v28;
      }

      else
      {
        v145 = v30;
        v31 = *v155;
        v32 = *(*v155 + 8 * (v28 + 1));
        v171 = *(*v155 + 8 * v28);
        v33 = v171;
        v172 = v32;
        v34 = v32;
        v35 = v33;
        v36 = v158;
        LODWORD(v162) = sub_10001E660(&v172, &v171, a5 & 1);
        v158 = v36;
        if (v36)
        {

          goto LABEL_108;
        }

        v37 = v28 + 2;
        v150 = 8 * v28;
        v38 = (v31 + 8 * v28 + 16);
        v157 = v27;
        while (v27 != v37)
        {
          v47 = *(v38 - 1);
          v48 = *v38;
          v49 = v47;
          v168 = v48;
          v50 = [v48 creationDate];
          if (v50)
          {
            v51 = v167;
            v52 = v50;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v53 = *v166;
            v54 = v152;
            (*v166)(v152, v51, v16);
            v55 = *v170;
            (*v170)(v54, 0, 1, v16);
            (v53)(v156, v54, v16);
          }

          else
          {
            v55 = *v170;
            v56 = v152;
            (*v170)(v152, 1, 1, v16);
            static Date.now.getter();
            if ((*v159)(v56, 1, v16) != 1)
            {
              sub_100007E14(v56, &qword_100142FE0, &unk_1000F8EC0);
            }
          }

          v57 = [v49 creationDate];
          if (v57)
          {
            v39 = v167;
            v40 = v57;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v41 = *v166;
            v42 = v154;
            (*v166)(v154, v39, v16);
            v55(v42, 0, 1, v16);
            v43 = v151;
            (v41)(v151, v42, v16);
          }

          else
          {
            v58 = v154;
            v55(v154, 1, 1, v16);
            v43 = v151;
            static Date.now.getter();
            if ((*v159)(v58, 1, v16) != 1)
            {
              sub_100007E14(v154, &qword_100142FE0, &unk_1000F8EC0);
            }
          }

          v44 = v156;
          v45 = Date.compare(_:)();
          v46 = *v164;
          (*v164)(v43, v16);
          v46(v44, v16);

          ++v37;
          ++v38;
          v27 = v157;
          if (((v162 ^ (v45 != v163)) & 1) == 0)
          {
            v27 = v37 - 1;
            break;
          }
        }

        v30 = v145;
        v59 = v147;
        v60 = v150;
        if (v162)
        {
          if (v27 < v147)
          {
            goto LABEL_129;
          }

          if (v147 < v27)
          {
            v61 = 8 * v27 - 8;
            v62 = v27;
            v63 = v147;
            do
            {
              if (v63 != --v62)
              {
                v64 = *v155;
                if (!*v155)
                {
                  goto LABEL_132;
                }

                v65 = *(v64 + v60);
                *(v64 + v60) = *(v64 + v61);
                *(v64 + v61) = v65;
              }

              ++v63;
              v61 -= 8;
              v60 += 8;
            }

            while (v63 < v62);
          }
        }
      }

      v66 = v155[1];
      if (v27 < v66)
      {
        if (__OFSUB__(v27, v59))
        {
          goto LABEL_126;
        }

        if (v27 - v59 < v144)
        {
          if (__OFADD__(v59, v144))
          {
            goto LABEL_127;
          }

          if (v59 + v144 < v66)
          {
            v66 = v59 + v144;
          }

          if (v66 < v59)
          {
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            return;
          }

          if (v27 != v66)
          {
            v148 = v66;
            v145 = v30;
            v162 = *v155;
            v67 = v162 + 8 * v27 - 8;
            v68 = v59 - v27;
            do
            {
              v157 = v27;
              v69 = *(v162 + 8 * v27);
              v149 = v68;
              v150 = v67;
              do
              {
                v70 = *v67;
                v71 = v69;
                v72 = v70;
                v168 = v71;
                v73 = [v71 creationDate];
                if (v73)
                {
                  v74 = v167;
                  v75 = v73;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v76 = *v166;
                  v77 = v161;
                  (*v166)(v161, v74, v16);
                  v78 = *v170;
                  (*v170)(v77, 0, 1, v16);
                  (v76)(v169, v77, v16);
                }

                else
                {
                  v78 = *v170;
                  v79 = v161;
                  (*v170)(v161, 1, 1, v16);
                  static Date.now.getter();
                  if ((*v159)(v79, 1, v16) != 1)
                  {
                    sub_100007E14(v79, &qword_100142FE0, &unk_1000F8EC0);
                  }
                }

                v80 = [v72 creationDate];
                if (v80)
                {
                  v81 = v167;
                  v82 = v80;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v83 = v165;
                  v84 = *v166;
                  (*v166)(v165, v81, v16);
                  v78(v83, 0, 1, v16);
                  v85 = v160;
                  v84();
                }

                else
                {
                  v86 = v165;
                  v78(v165, 1, 1, v16);
                  v85 = v160;
                  static Date.now.getter();
                  if ((*v159)(v86, 1, v16) != 1)
                  {
                    sub_100007E14(v165, &qword_100142FE0, &unk_1000F8EC0);
                  }
                }

                v87 = v169;
                v88 = Date.compare(_:)();
                v89 = *v164;
                (*v164)(v85, v16);
                v89(v87, v16);

                if (v88 != v163)
                {
                  break;
                }

                if (!v162)
                {
                  goto LABEL_130;
                }

                v90 = *v67;
                v69 = *(v67 + 8);
                *v67 = v69;
                *(v67 + 8) = v90;
                v67 -= 8;
              }

              while (!__CFADD__(v68++, 1));
              v27 = v157 + 1;
              v67 = v150 + 8;
              v68 = v149 - 1;
            }

            while (v157 + 1 != v148);
            v30 = v145;
            v59 = v147;
            v27 = v148;
          }
        }
      }

      if (v27 < v59)
      {
        goto LABEL_125;
      }

      v148 = v27;
      v92 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v30 = v92;
      }

      else
      {
        v30 = sub_10005808C(0, *(v92 + 2) + 1, 1, v92);
      }

      v94 = *(v30 + 2);
      v93 = *(v30 + 3);
      v95 = v94 + 1;
      if (v94 >= v93 >> 1)
      {
        v30 = sub_10005808C((v93 > 1), v94 + 1, 1, v30);
      }

      *(v30 + 2) = v95;
      v96 = v30 + 32;
      v97 = &v30[16 * v94 + 32];
      v98 = v148;
      *v97 = v147;
      *(v97 + 1) = v98;
      v173 = v30;
      v168 = *v146;
      if (!v168)
      {
        goto LABEL_133;
      }

      if (v94)
      {
        while (1)
        {
          v99 = v95 - 1;
          if (v95 >= 4)
          {
            break;
          }

          if (v95 == 3)
          {
            v100 = *(v30 + 4);
            v101 = *(v30 + 5);
            v110 = __OFSUB__(v101, v100);
            v102 = v101 - v100;
            v103 = v110;
LABEL_75:
            if (v103)
            {
              goto LABEL_116;
            }

            v116 = &v30[16 * v95];
            v118 = *v116;
            v117 = *(v116 + 1);
            v119 = __OFSUB__(v117, v118);
            v120 = v117 - v118;
            v121 = v119;
            if (v119)
            {
              goto LABEL_119;
            }

            v122 = &v96[16 * v99];
            v124 = *v122;
            v123 = *(v122 + 1);
            v110 = __OFSUB__(v123, v124);
            v125 = v123 - v124;
            if (v110)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v120, v125))
            {
              goto LABEL_123;
            }

            if (v120 + v125 >= v102)
            {
              if (v102 < v125)
              {
                v99 = v95 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          v126 = &v30[16 * v95];
          v128 = *v126;
          v127 = *(v126 + 1);
          v110 = __OFSUB__(v127, v128);
          v120 = v127 - v128;
          v121 = v110;
LABEL_89:
          if (v121)
          {
            goto LABEL_118;
          }

          v129 = &v96[16 * v99];
          v131 = *v129;
          v130 = *(v129 + 1);
          v110 = __OFSUB__(v130, v131);
          v132 = v130 - v131;
          if (v110)
          {
            goto LABEL_121;
          }

          if (v132 < v120)
          {
            goto LABEL_5;
          }

LABEL_96:
          if (v99 - 1 >= v95)
          {
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (!*v155)
          {
            goto LABEL_131;
          }

          v137 = v30;
          v138 = &v96[16 * v99 - 16];
          v139 = *v138;
          v140 = &v96[16 * v99];
          v141 = *(v140 + 1);
          v142 = v158;
          sub_10001EA4C((*v155 + 8 * *v138), (*v155 + 8 * *v140), (*v155 + 8 * v141), v168, v153 & 1);
          v158 = v142;
          if (v142)
          {
            v173 = v137;
            goto LABEL_108;
          }

          if (v141 < v139)
          {
            goto LABEL_111;
          }

          v143 = *(v137 + 2);
          if (v99 > v143)
          {
            goto LABEL_112;
          }

          *v138 = v139;
          *(v138 + 1) = v141;
          if (v99 >= v143)
          {
            goto LABEL_113;
          }

          v95 = v143 - 1;
          memmove(&v96[16 * v99], v140 + 16, 16 * (v143 - 1 - v99));
          v30 = v137;
          *(v137 + 2) = v143 - 1;
          if (v143 <= 2)
          {
LABEL_5:
            v173 = v30;
            goto LABEL_6;
          }
        }

        v104 = &v96[16 * v95];
        v105 = *(v104 - 8);
        v106 = *(v104 - 7);
        v110 = __OFSUB__(v106, v105);
        v107 = v106 - v105;
        if (v110)
        {
          goto LABEL_114;
        }

        v109 = *(v104 - 6);
        v108 = *(v104 - 5);
        v110 = __OFSUB__(v108, v109);
        v102 = v108 - v109;
        v103 = v110;
        if (v110)
        {
          goto LABEL_115;
        }

        v111 = &v30[16 * v95];
        v113 = *v111;
        v112 = *(v111 + 1);
        v110 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v110)
        {
          goto LABEL_117;
        }

        v110 = __OFADD__(v102, v114);
        v115 = v102 + v114;
        if (v110)
        {
          goto LABEL_120;
        }

        if (v115 >= v107)
        {
          v133 = &v96[16 * v99];
          v135 = *v133;
          v134 = *(v133 + 1);
          v110 = __OFSUB__(v134, v135);
          v136 = v134 - v135;
          if (v110)
          {
            goto LABEL_124;
          }

          if (v102 < v136)
          {
            v99 = v95 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

LABEL_6:
      v27 = v155[1];
      v28 = v148;
      LOBYTE(a5) = v153;
    }

    while (v148 < v27);
  }

  if (!*v146)
  {
    goto LABEL_134;
  }

  sub_10001EE10(&v173, *v146, v155, a5 & 1);
LABEL_108:
}