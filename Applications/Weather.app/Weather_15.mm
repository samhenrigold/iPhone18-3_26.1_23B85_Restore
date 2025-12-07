uint64_t sub_10019F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10019F684();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10019F48C()
{
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  sub_10003A2D4();
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for LocationPreviewViewState(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_10001FDB8();
  sub_1000BCD08();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_10001FDB8();
    sub_1000BCD08();
    v13 = type metadata accessor for ModalViewState.MapViewModal(0);
    sub_1000038B4(v2, 1, v13);
    if (!v14)
    {
      goto LABEL_8;
    }

    sub_1000180EC(v2, &qword_100CA65E0, &unk_100A31400);
LABEL_7:
    type metadata accessor for PreviewLocation(0);
    v15 = sub_10000C834();
    sub_10001B350(v15, v16, 1, v17);
    sub_100006C40();
    return sub_1000E0358(v6, v18);
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  sub_10001FDB8();
  sub_1000BCD08();
LABEL_8:
  sub_10003CA50();
  sub_1000D3AB8();
  sub_100006C40();
  sub_1000E0358(v6, v20);
  sub_100004F50();
  sub_1000BCD08();
  sub_10001D35C();
  sub_1000E0358(v11, v21);
  type metadata accessor for PreviewLocation(0);
  sub_10000E7B0();
  return sub_10001B350(v22, v23, v24, v25);
}

unint64_t sub_10019F684()
{
  result = qword_100CA6068;
  if (!qword_100CA6068)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Alignment, &type metadata for Alignment, v0, v1);
    atomic_store(result, &qword_100CA6068);
  }

  return result;
}

uint64_t sub_10019F6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10019F754(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;
  v4 = sub_10022C350(&qword_100CEF350, &qword_100AA7E18);
  __chkstk_darwin(v4 - 8);
  v56 = &v44 - v5;
  v60 = sub_10022C350(&qword_100CEF358, &qword_100AA7E20);
  v45 = *(v60 - 8);
  __chkstk_darwin(v60);
  v44 = &v44 - v6;
  v7 = sub_10022C350(&qword_100CEF360, &qword_100AA7E28);
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v44 - v8;
  v9 = sub_10022C350(&qword_100CEF368, &qword_100AA7E30);
  __chkstk_darwin(v9 - 8);
  v55 = &v44 - v10;
  v54 = type metadata accessor for _RegexFactory();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CEF370, &qword_100AA7E38);
  __chkstk_darwin(v12 - 8);
  v50 = &v44 - v13;
  v51 = type metadata accessor for CharacterClass();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10022C350(&qword_100CEF378, &qword_100AA7E40);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v62 = &v44 - v15;
  v16 = type metadata accessor for Location();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v61 = &v44 - v21;
  v22 = a3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v23 = *(v22 + *(type metadata accessor for LocationsState(0) + 32));
  v24 = *(v23 + 16);

  for (i = 0; v24 != i; ++i)
  {
    if (i >= *(v23 + 16))
    {
      __break(1u);
      return;
    }

    (*(v17 + 16))(v19, v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * i, v16);
    if (Location.id.getter() == v63 && v26 == v64)
    {

LABEL_13:

      v40 = v61;
      (*(v17 + 32))(v61, v19, v16);
      Location.coordinate.getter();
      (*(v17 + 8))(v40, v16);
      return;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_13;
    }

    (*(v17 + 8))(v19, v16);
  }

  v29 = v48;
  static RegexComponent<>.digit.getter();
  v30 = type metadata accessor for RegexRepetitionBehavior();
  v31 = v50;
  sub_10001B350(v50, 1, 1, v30);
  v32 = v52;
  makeFactory()();
  sub_1000675F0(&qword_100CEF380, &type metadata accessor for CharacterClass, &protocol conformance descriptor for CharacterClass);
  v33 = v51;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  (*(v53 + 8))(v32, v54);
  sub_1000180EC(v31, &qword_100CEF370, &qword_100AA7E38);
  (*(v49 + 8))(v29, v33);
  v34 = v62;
  v35 = OneOrMore.init(_:)();
  __chkstk_darwin(v35);
  *(&v44 - 2) = v34;
  sub_10022C350(&qword_100CEF388, &qword_100AA7E48);
  sub_100006F64(&qword_100CEF390, &qword_100CEF360, &qword_100AA7E28, &protocol conformance descriptor for Regex<A>);
  v36 = v57;
  v37 = v59;
  Regex.init<A>(_:)();
  v38 = v56;
  sub_100A133E8(v36, v63, v64);
  v39 = v60;
  if (sub_100024D10(v38, 1, v60) == 1)
  {
    (*(v58 + 8))(v36, v37);
    sub_1000180EC(v38, &qword_100CEF350, &qword_100AA7E18);
  }

  else
  {
    v41 = v45;
    v42 = v44;
    (*(v45 + 32))(v44, v38, v39);
    Regex.Match.output.getter();

    Double.init(_:)();
    if (v43)
    {
    }

    else
    {
      Double.init(_:)();
    }

    (*(v41 + 8))(v42, v39);
    (*(v58 + 8))(v36, v37);
  }

  (*(v46 + 8))(v62, v47);
}

uint64_t sub_1001A00C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A0138@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for ObservableResolver();
  sub_100061A3C(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
  sub_100031D74();
  v4 = EnvironmentObject.init()();
  v6 = v5;
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = result;
  *(a2 + 96) = 0;
  *(a2 + 97) = a1;
  return result;
}

uint64_t sub_1001A026C()
{
  sub_10000FE4C();
  v0 = sub_1000F6148();
  return sub_100005F94(v0);
}

uint64_t sub_1001A02C0()
{
  sub_10000FE4C();
  v0 = sub_10014DD34();
  return sub_100005F94(v0);
}

uint64_t sub_1001A030C(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16[0] = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    asyncMain(block:)();
  }

  else
  {
    sub_100040690();
    (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.utility(_:), v9);
    v14 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v12, v9);
    aBlock[4] = sub_100485580;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    aBlock[3] = &unk_100C592E8;
    v15 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v16[1] = _swiftEmptyArrayStorage;
    sub_100074390();
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_1000743E8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v16[0] + 8))(v4, v2);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1001A068C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v15[0] = a4;
  v15[1] = a1;
  v17 = a2;
  v16 = type metadata accessor for PrivacyConfiguration();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.WeatherAnalytics.Debugging.sendAppSessionStartAndEventsForNonDnuUsers.getter();
  SettingReader.read<A>(_:)();

  v12 = v18;
  sub_1000161C0(a3, a3[3]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.privacy.getter();
  (*(v9 + 8))(v11, v8);
  v13 = PrivacyConfiguration.allowAppSessionEventForNonDNUUsers.getter();
  (*(v5 + 8))(v7, v16);
  result = 1;
  if ((v12 & 1) == 0 && (v13 & 1) == 0)
  {
    result = AccessTracker.isDiagnosticSubmissionAllowed.getter();
  }

  switch(v17)
  {
    case 0:
    case 3:
      return result;
    case 1:
      if (result)
      {
        type metadata accessor for AppSessionStartEvent();
        sub_100068374(&qword_100CB53D8, &type metadata accessor for AppSessionStartEvent, &protocol conformance descriptor for AppSessionStartEvent);
        v18 = 0u;
        v19 = 0u;
        AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
        sub_1000180EC(&v18, &qword_100CE2F40, &qword_100A2D880);
        type metadata accessor for AppSessionEndEvent();
        sub_100068374(&qword_100CB53D0, &type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
        AccessTracker.time<A>(_:submitAndRestartWithSession:)();
        result = sub_1001A1320();
      }

      break;
    case 2:
      if (result)
      {
        type metadata accessor for AppSessionEndEvent();
        v18 = 0u;
        v19 = 0u;
        sub_100068374(&qword_100CB53D0, &type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);

        AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();

        result = sub_1000180EC(&v18, &qword_100CE2F40, &qword_100A2D880);
      }

      else
      {
        type metadata accessor for ReferralData();
        sub_100068374(&qword_100CB53C8, &type metadata accessor for ReferralData, &protocol conformance descriptor for ReferralData);
        result = AccessTracker.clearStack<A>(of:includeParentTrackers:)();
      }

      break;
    default:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x1001A0B00);
  }

  return result;
}

uint64_t sub_1001A0B1C()
{
  sub_10000FE4C();
  v0 = sub_10014E064();
  return sub_100005F94(v0);
}

void *sub_1001A0B44()
{
  sub_1001A0B8C();

  return EnvironmentValues.subscript.getter();
}

unint64_t sub_1001A0B8C()
{
  result = qword_100CCE9D0;
  if (!qword_100CCE9D0)
  {
    result = swift_getWitnessTable(aE_27, &_s46__Key_locationComponentBackgroundConfigurationVN, v0, v1);
    atomic_store(result, &qword_100CCE9D0);
  }

  return result;
}

uint64_t sub_1001A0BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationsState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A0C44(uint64_t a1)
{
  v2 = type metadata accessor for LocationsState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A0CA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2400 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  v3 = sub_10000703C(v2, qword_100D90690);

  return sub_1001A0ED4(v3, a1);
}

uint64_t sub_1001A0D3C()
{
  v1 = v0;
  v2 = sub_10000C76C();
  type metadata accessor for LocationWeatherDataState(v2);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_100006610();
  sub_1001A0E7C(v1, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
      v12 = *(v11 + 48);
      v13 = *(v11 + 64);
      sub_100014D4C();
      v14 = sub_100003B2C();
      sub_1001A10BC(v14, v15);
      type metadata accessor for WeatherData(0);
      v16 = sub_1000164D8();
      sub_10001B350(v16, v17, 1, v18);
      sub_10001CB98();
      sub_1001A126C(v6 + v13, v19);
      sub_100008D68();
      result = sub_1001A126C(v6 + v12, v20);
      break;
    case 3u:
      goto LABEL_3;
    default:
      sub_1001A126C(v6, type metadata accessor for LocationWeatherDataState);
LABEL_3:
      type metadata accessor for WeatherData(0);
      v7 = sub_1000719C8();
      result = sub_10001B350(v7, v8, 1, v9);
      break;
  }

  return result;
}

uint64_t sub_1001A0E7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1001A0ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A0F38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001A0F98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001A0FF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001A1054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A10BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1001A1114(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001A1174(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1001A11CC(uint64_t a1)
{
  v2 = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  __chkstk_darwin(v2 - 8);
  sub_1001A0ED4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001A0B8C();
  EnvironmentValues.subscript.setter();
  return sub_1001A12C4(a1);
}

uint64_t sub_1001A126C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001A12C4(uint64_t a1)
{
  v2 = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A1320()
{
  v1 = type metadata accessor for FollowingLocationListData();
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CoarseLocationData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0[29];
  v10 = v0[30];
  sub_1000161C0(v0 + 26, v9);
  (*(v10 + 8))(v9, v10);
  v11 = v0[29];
  v12 = v0[30];
  sub_1000161C0(v0 + 26, v11);
  (*(v12 + 16))(v11, v12);
  sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v13 = type metadata accessor for DataEventTrait();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100A2C3F0;
  (*(v14 + 104))(v16 + v15, enum case for DataEventTrait.onlyOnce(_:), v13);
  sub_100068374(&qword_100CB53E0, &type metadata accessor for CoarseLocationData, &protocol conformance descriptor for CoarseLocationData);
  AccessTracker.push<A>(data:traits:file:line:)();

  sub_100068374(&qword_100CB53E8, &type metadata accessor for FollowingLocationListData, &protocol conformance descriptor for FollowingLocationListData);
  v17 = v19;
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for FollowingLocationListEvent();
  sub_100068374(&qword_100CB53F0, &type metadata accessor for FollowingLocationListEvent, &protocol conformance descriptor for FollowingLocationListEvent);
  memset(v21, 0, sizeof(v21));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  sub_1000180EC(v21, &qword_100CE2F40, &qword_100A2D880);
  (*(v20 + 8))(v4, v17);
  return (*(v6 + 8))(v8, v5);
}

void *sub_1001A1700()
{
  sub_1001A2B9C();

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_1001A1748()
{
  v1 = type metadata accessor for CoarseLocationStatus();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_1000161C0((v0 + 16), *(v0 + 40));
  v8 = dispatch thunk of LocationManagerType.limitsPrecision.getter();
  v9 = &enum case for CoarseLocationStatus.coarse(_:);
  if ((v8 & 1) == 0)
  {
    v9 = &enum case for CoarseLocationStatus.precise(_:);
  }

  (*(v3 + 104))(v7, *v9, v1);
  return CoarseLocationData.init(status:)();
}

uint64_t sub_1001A1848(uint64_t a1)
{
  countAndFlagsBits = Location.name.getter();
  Location.kind.getter();
  v2 = Location.Identifier.Kind.rawValue.getter();
  v4 = v3;
  if (v2 == Location.Identifier.Kind.rawValue.getter() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return countAndFlagsBits;
    }
  }

  v8 = [objc_opt_self() mainBundle];
  v12._object = 0x8000000100AD7020;
  v9._countAndFlagsBits = 0x7461636F4C20794DLL;
  v9._object = 0xEB000000006E6F69;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD00000000000003DLL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v12)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001A19B4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = sub_10022C350(&qword_100CC1C10, &qword_100A5A818) - 8;
  __chkstk_darwin(v40);
  v3 = &v34 - v2;
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_10022C350(&qword_100CC1C18, &qword_100A5A820);
  sub_1004F1AA8(v1, &v3[*(v4 + 44)]);
  v5 = static Alignment.center.getter();
  v38 = v6;
  v39 = v5;
  v7 = &v3[*(sub_10022C350(&qword_100CC1C20, &unk_100A5A828) + 36)];
  v8 = type metadata accessor for LocationComponentContainerBackgroundView(0);
  v9 = v8[11];
  v10 = type metadata accessor for Location.Identifier();
  (*(*(v10 - 8) + 16))(v7, v1 + v9, v10);
  v37 = v1;
  v11 = v1 + v8[14];
  v12 = *(v11 + 32);
  v36 = *(v1 + v8[10]);
  v13 = type metadata accessor for LocationComponentBackground(0);
  v14 = &v7[v13[5]];

  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  sub_10023FBF4(&qword_100CA4B68, &qword_100CA4B60, &qword_100A2EE20, asc_100AA1480);
  v15 = *v11;
  v34 = *(v11 + 16);
  v35 = v15;
  *v14 = ObservedObject.init(wrappedValue:)();
  v14[1] = v16;
  v7[v13[6]] = 0;
  v17 = &v7[v13[7]];
  v18 = v34;
  *v17 = v35;
  *(v17 + 1) = v18;
  v17[32] = v12;
  v7[v13[8]] = v36;
  v19 = &v7[v13[9]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v7[v13[10]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v7[v13[11]];
  type metadata accessor for WeatherVFXConditionBackground();
  sub_100061A3C(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground, &protocol conformance descriptor for WeatherVFXConditionBackground);
  *v21 = EnvironmentObject.init()();
  v21[1] = v22;
  v23 = v13[12];
  *&v7[v23] = swift_getKeyPath();
  sub_10022C350(&qword_100CB6EF8, &qword_100A4AA70);
  swift_storeEnumTagMultiPayload();
  v24 = v13[13];
  *&v7[v24] = swift_getKeyPath();
  sub_10022C350(&qword_100CABDD0, &qword_100A3AD08);
  swift_storeEnumTagMultiPayload();
  v25 = static Alignment.center.getter();
  v27 = v26;
  v28 = &v7[*(sub_10022C350(&qword_100CC1C28, &qword_100A5A838) + 36)];
  v29 = v37;
  sub_1004F2F38(v37, v28);
  v30 = (v28 + *(sub_10022C350(&qword_100CC1C30, &qword_100A5A840) + 36));
  *v30 = v25;
  v30[1] = v27;
  v31 = &v7[*(sub_10022C350(&qword_100CC1C38, &qword_100A5A848) + 36)];
  v32 = v38;
  *v31 = v39;
  v31[1] = v32;
  v3[*(v40 + 44)] = 1;
  sub_1004F3208(v29, v3, v41);
  return sub_100018198(v3, &qword_100CC1C10);
}

uint64_t sub_1001A1DF8@<X0>(void *a1@<X0>, _BYTE *a3@<X8>)
{
  v79 = a3;
  v65 = type metadata accessor for URL.WeatherSourcePar();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherMetadata();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin(v5);
  v71 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CurrentWeather();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v74);
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CC41A8, &qword_100A5D7B0);
  __chkstk_darwin(v10 - 8);
  v68 = &v62 - v11;
  v12 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v12 - 8);
  v64 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v75 = &v62 - v15;
  __chkstk_darwin(v16);
  v18 = &v62 - v17;
  v19 = type metadata accessor for ProviderAttributionConfiguration();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AppConfiguration();
  v77 = *(v23 - 8);
  v78 = v23;
  __chkstk_darwin(v23);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1 + 17, a1[20]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  Location.coordinate.getter();
  v27 = v26;
  v29 = v28;
  AppConfiguration.providerAttribution.getter();
  v30 = ProviderAttributionConfiguration.mapDataLearnMoreURL.getter();
  v32 = v31;
  v33 = *(v20 + 8);
  v33(v22, v19);
  v76 = sub_1001A25F0(v30, v32, v27, v29);

  v34 = sub_1001A2BF0(a1);
  AppConfiguration.providerAttribution.getter();
  LOBYTE(v30) = ProviderAttributionConfiguration.hideLocationViewDataProviderLogos.getter();
  v33(v22, v19);
  if ((v30 & 1) == 0)
  {
    v37 = OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastWeatherData;
    swift_beginAccess();
    if (!sub_100024D10(a1 + v37, 1, v74))
    {
      v38 = a1 + v37;
      v39 = v66;
      sub_10011145C(v38, v66, type metadata accessor for WeatherData);
      v40 = v67;
      WeatherDataModel.currentWeather.getter();
      sub_100105FE4(v39, type metadata accessor for WeatherData);
      v41 = v71;
      CurrentWeather.metadata.getter();
      (*(v69 + 8))(v40, v70);
      v42 = v68;
      WeatherMetadata.attribution.getter();
      (*(v72 + 8))(v41, v73);
      v43 = type metadata accessor for WeatherAttribution();
      if (sub_100024D10(v42, 1, v43) == 1)
      {
        v44 = &qword_100CC41A8;
        v45 = &qword_100A5D7B0;
        v46 = v42;
      }

      else
      {
        v47 = v64;
        WeatherAttribution.sourceURL.getter();
        (*(*(v43 - 8) + 8))(v42, v43);
        v48 = type metadata accessor for URL();
        if (sub_100024D10(v47, 1, v48) != 1)
        {
          v59 = v63;
          v60 = v47;
          v61 = v62;
          (*(v63 + 104))(v62, enum case for URL.WeatherSourcePar.app(_:), v65);
          URL.applyWeatherSourceQueryParams(for:)();
          (*(v59 + 8))(v61, v65);
          v36 = v75;
          (*(*(v48 - 8) + 8))(v60, v48);
          v50 = v36;
          v51 = 0;
          v49 = v48;
          goto LABEL_10;
        }

        v44 = &qword_100CB3AB0;
        v45 = &unk_100A2FB80;
        v46 = v47;
      }

      sub_1000180EC(v46, v44, v45);
    }

    v49 = type metadata accessor for URL();
    v36 = v75;
    v50 = v75;
    v51 = 1;
LABEL_10:
    sub_10001B350(v50, v51, 1, v49);
    goto LABEL_11;
  }

  v35 = type metadata accessor for URL();
  sub_10001B350(v18, 1, 1, v35);
  v34 = _swiftEmptyArrayStorage;
  v36 = v18;
LABEL_11:
  AppConfiguration.providerAttribution.getter();
  v52 = ProviderAttributionConfiguration.featureAvailabilityURL.getter();
  v54 = v53;
  v33(v22, v19);
  v55 = v79;
  *v79 = 2;
  *(v55 + 1) = v34;
  v56 = type metadata accessor for LearnMoreAttributorViewModel(0);
  sub_1000302D8(v36, &v55[v56[6]], &qword_100CB3AB0, &unk_100A2FB80);
  v57 = &v55[v56[7]];
  *v57 = v52;
  v57[1] = v54;
  sub_1000180EC(v36, &qword_100CB3AB0, &unk_100A2FB80);
  result = (*(v77 + 8))(v25, v78);
  *&v55[v56[8]] = v76;
  return result;
}

uint64_t sub_1001A25F0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for LazyOptions();
  __chkstk_darwin(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  sub_100034954();

  sub_10022C350(&qword_100CC4170, &qword_100A5D758);
  sub_10003EB4C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10022C350(&qword_100CC4180, &unk_100A5D760);
  swift_allocObject();
  return Lazy.init(options:loadBlock:)();
}

uint64_t sub_1001A2740()
{

  return swift_deallocObject();
}

uint64_t sub_1001A2778@<X0>(uint64_t a1@<X8>)
{
  v36[2] = a1;
  v42 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v39 = v2;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = sub_10022C350(&qword_100CA6AC8, &qword_100A31A18);
  __chkstk_darwin(v7 - 8);
  v9 = v36 - v8;
  v10 = type metadata accessor for LocationData();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v41 = (v15 - v14);
  v16 = type metadata accessor for SavedLocation();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = v1[10];
  v43 = v1;
  sub_1000161C0(v1 + 7, v21);
  v22 = dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v36[1] = v22;
    v25 = v22 + v24;
    v26 = *(v17 + 72);
    ++v39;
    v40 = v26;
    v37 = v12;
    v38 = (v12 + 32);
    v27 = _swiftEmptyArrayStorage;
    do
    {
      sub_1001A30C4(v25, v20);
      SavedLocation.identifier.getter();
      sub_1000161C0(v43 + 12, v43[15]);
      if (dispatch thunk of LocationPrivacySamplerType.canRecordLocation(_:)())
      {
        Location.Identifier.coordinate.getter();
        Location.Identifier.coordinate.getter();
        LocationData.init(latitudeDouble:longitudeDouble:)();
        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      (*v39)(v6, v42);
      sub_1002AB524(v20);
      sub_10001B350(v9, v28, 1, v10);
      if (sub_100024D10(v9, 1, v10) == 1)
      {
        sub_1002AB580(v9);
      }

      else
      {
        v29 = *v38;
        (*v38)(v41, v9, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10069E27C();
          v27 = v32;
        }

        v30 = v27[2];
        v31 = v37;
        if (v30 >= v27[3] >> 1)
        {
          sub_10069E27C();
          v31 = v37;
          v27 = v33;
        }

        v27[2] = v30 + 1;
        v29(v27 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, v41, v10);
      }

      v25 += v40;
      --v23;
    }

    while (v23);
  }

  sub_1000161C0(v43 + 7, v43[10]);
  v34 = *(dispatch thunk of SavedLocationsManagerType.savedLocations.getter() + 16);

  if (!(v34 >> 31))
  {
    return FollowingLocationListData.init(locations:locationCount:)();
  }

  __break(1u);
  return result;
}

unint64_t sub_1001A2B9C()
{
  result = qword_100CC0A70;
  if (!qword_100CC0A70)
  {
    result = swift_getWitnessTable(byte_100A59CAC, &_s48__Key_locationComponentCornerRadiusConfigurationVN, v0, v1);
    atomic_store(result, &qword_100CC0A70);
  }

  return result;
}

void *sub_1001A2BF0(void *a1)
{
  v54 = type metadata accessor for URL.WeatherSourcePar();
  v2 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for URL();
  v4 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v37 - v7;
  __chkstk_darwin(v8);
  v49 = &v37 - v9;
  v10 = type metadata accessor for WeatherProviderAttribution();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_1000161C0(a1 + 32, a1[35]);
  v16 = Location.clLocation.getter();
  v17 = dispatch thunk of WeatherProviderAttributionCacheManagerType.cachedAttributions(for:)();

  v18 = *(v17 + 16);
  if (v18)
  {
    v59 = _swiftEmptyArrayStorage;
    sub_1006A7FF4();
    v19 = v59;
    v21 = *(v11 + 16);
    v20 = v11 + 16;
    v46 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v37 = v17;
    v45 = v22;
    v23 = v17 + v22;
    v44 = *(v20 + 56);
    v43 = (v2 + 104);
    v42 = enum case for URL.WeatherSourcePar.app(_:);
    v40 = (v4 + 8);
    v41 = (v2 + 8);
    v39 = (v20 - 8);
    v38 = (v20 + 16);
    v47 = v20;
    do
    {
      v57 = v19;
      v58 = v18;
      v24 = v48;
      v46(v48, v23, v10);
      v25 = WeatherProviderAttribution.name.getter();
      v55 = v26;
      v56 = v25;
      WeatherProviderAttribution.logoURL.getter();
      v27 = v15;
      v28 = v51;
      WeatherProviderAttribution.source.getter();
      v29 = v53;
      v30 = v10;
      v31 = v54;
      (*v43)(v53, v42, v54);
      URL.applyWeatherSourceQueryParams(for:)();
      v19 = v57;
      v32 = v31;
      v10 = v30;
      (*v41)(v29, v32);
      v33 = v28;
      v15 = v27;
      (*v40)(v33, v52);
      WeatherProviderAttribution.init(name:logoURL:source:)();
      (*v39)(v24, v30);
      v59 = v19;
      v34 = v19[2];
      if (v34 >= v19[3] >> 1)
      {
        sub_1006A7FF4();
        v19 = v59;
      }

      v19[2] = v34 + 1;
      v35 = v44;
      (*v38)(v19 + v45 + v34 * v44, v15, v30);
      v23 += v35;
      v18 = v58 - 1;
    }

    while (v58 != 1);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v19;
}

uint64_t sub_1001A30C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A3128@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for LocationComponentCornerRadiusConfiguration(0) + 20);
  v3 = enum case for RoundedCornerStyle.continuous(_:);
  v4 = type metadata accessor for RoundedCornerStyle();
  result = (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  *a1 = 0x4030000000000000;
  return result;
}

uint64_t sub_1001A31C4()
{
  sub_100003A00();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for RoundedCornerStyle();

  return sub_100024D10(v1 + v3, v0, v4);
}

uint64_t sub_1001A3214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for LocationComponentHeaderView(0);
  KeyPath = swift_getKeyPath();
  sub_100023694(KeyPath);
  v12 = v10[6];
  *(a2 + v12) = swift_getKeyPath();
  v13 = sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  sub_100009488(v13);
  v14 = v10[7];
  *(a2 + v14) = swift_getKeyPath();
  v15 = sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  sub_100009488(v15);
  v16 = swift_getKeyPath();
  sub_100023694(v16);
  v17 = swift_getKeyPath();
  sub_100023694(v17);
  v18 = swift_getKeyPath();
  sub_100023694(v18);
  v19 = v10[11];
  *(a2 + v19) = swift_getKeyPath();
  v20 = sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  sub_100009488(v20);
  v21 = a2 + v10[12];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v10[13];
  *(a2 + v22) = swift_getKeyPath();
  v23 = sub_10022C350(&qword_100CEE110, &unk_100AA5920);
  sub_100009488(v23);
  v24 = *(v5 + 104);
  v24(v9, enum case for Font.TextStyle.caption(_:), v3);
  sub_10014AB54();
  sub_10001A420();
  v24(v9, enum case for Font.TextStyle.footnote(_:), v3);
  sub_10001A420();
  *(a2 + v10[16]) = 0x4059000000000000;
  return sub_1009F9B24(a1, a2, type metadata accessor for LocationComponentHeaderViewModel);
}

uint64_t sub_1001A34D0(uint64_t a1, uint64_t a2)
{
  sub_100017A94();
  v4 = v3;
  v48 = type metadata accessor for Location.Identifier();
  sub_100007FD0();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for SavedLocation();
  sub_100007FD0();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for LocationsState(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v22 = v21 - v20;
  v44 = v11;
  v45 = v4;
  v23 = sub_10001B350(v4, 1, 1, v11);
  v49 = v2;
  (*(v2 + 16))(&v50, v23);
  v24 = v50;
  sub_10001C644();
  sub_1000BC84C(v24 + v25, v22, v26);

  v27 = *(v22 + *(v19 + 28));

  sub_10001F158();
  sub_1000DFF38(v22, v28);
  v29 = *(v27 + 16);
  if (v29)
  {
    sub_1001A388C();
    v30 = v27 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v31 = *(v13 + 72);
    v46 = (v6 + 8);
    v47 = v31;
    v32 = INFINITY;
    v33 = &_s7SwiftUI23_LazyLayout_Subviews_V1V0E8IteratorVMa_ptr_0;
    do
    {
      sub_1000BC84C(v30, v17, &type metadata accessor for SavedLocation);
      SavedLocation.identifier.getter();
      v34 = CLLocation.init(_:)();
      v35 = objc_allocWithZone(v33[358]);
      v36 = sub_100017600();
      v39 = [v37 v38];
      [v34 distanceFromLocation:v39];
      v41 = v40;

      if (v41 >= v32)
      {
        sub_100074C0C();
        v41 = v32;
      }

      else
      {
        sub_1000161C0((v49 + 48), *(v49 + 72));
        SavedLocation.identifier.getter();
        Location.Identifier.name.getter();
        (*v46)(v10, v48);
        v42 = dispatch thunk of LocationMatchHelperType.isSameLocation(firstName:secondName:distance:)();

        if (v42)
        {
          sub_1000180EC(v45, &qword_100CA6890, &qword_100A31680);
          sub_1000D382C(v17, v45, &type metadata accessor for SavedLocation);
          sub_10001B350(v45, 0, 1, v44);
        }

        else
        {
          sub_100074C0C();
          v41 = v32;
        }

        v31 = v47;
        v33 = &_s7SwiftUI23_LazyLayout_Subviews_V1V0E8IteratorVMa_ptr_0;
      }

      v30 += v31;
      v32 = v41;
      --v29;
    }

    while (v29);
  }
}

unint64_t sub_1001A388C()
{
  result = qword_100CAD0F8;
  if (!qword_100CAD0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CAD0F8);
  }

  return result;
}

uint64_t sub_1001A38F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v280 = a1;
  v290 = a2;
  v3 = type metadata accessor for SavedLocation();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000037D8();
  v284 = v6 - v5;
  v7 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003848();
  v273 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  v274 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v278 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v281 = v16;
  sub_1000038CC();
  v289 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v287 = v17;
  __chkstk_darwin(v18);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_10000E70C();
  v265 = v23;
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  v291 = v25;
  v292 = v24;
  __chkstk_darwin(v24);
  sub_1000037D8();
  v285 = v27 - v26;
  v28 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  v31 = &v262 - v30;
  v32 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003848();
  v272 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  v275 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  sub_100003878();
  v283 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v277 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  v279 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  v276 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  v51 = &v262 - v50;
  __chkstk_darwin(v52);
  v54 = &v262 - v53;
  v55 = type metadata accessor for LocationModelData();
  sub_1000037C4();
  v57 = v56;
  __chkstk_darwin(v58);
  sub_100003848();
  v282 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100008C44();
  v61 = type metadata accessor for CurrentLocation();
  v62 = sub_100003810(v61);
  __chkstk_darwin(v62);
  sub_1000037D8();
  v65 = v64 - v63;
  v66 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v68 = v67;
  __chkstk_darwin(v69);
  sub_1000037D8();
  v72 = v71 - v70;
  (*(v68 + 16))(v71 - v70, v288, v66);
  v73 = sub_10000C924();
  v75 = v74(v73);
  v286 = v55;
  if (v75 != enum case for LocationModel.current(_:))
  {
    v288 = v57;
    if (v75 != enum case for LocationModel.saved(_:))
    {
      v94 = *(sub_10022C350(&qword_100CC4190, &qword_100A5D798) + 64);
      v95 = v290;
      *v290 = 0u;
      v95[1] = 0u;
      sub_100003934();
      sub_10001B350(v96, v97, v98, v99);
      *(v95 + v94) = 0;
      type metadata accessor for LocationCompositionState(0);
      swift_storeEnumTagMultiPayload();
      v100 = sub_10000C924();
      return v101(v100);
    }

    v81 = sub_10000C924();
    v82(v81);
    v83 = *(sub_10022C350(&qword_100CA38B8, &unk_100A66A90) + 48);
    sub_1000107B0();
    sub_10003D6A8(v72, v284, v84);
    v85 = v286;
    (*(v288 + 32))(v282, v72 + v83, v286);
    v86 = v283;
    LocationModelData.locationOfInterest.getter();
    v87 = v275;
    sub_100035AD0(v86, v275, &qword_100CA3588, &unk_100A4F350);
    v88 = v289;
    sub_1000038B4(v87, 1, v289);
    if (v121)
    {
      sub_1000180EC(v87, &qword_100CA3588, &unk_100A4F350);
      v89 = v288;
      v90 = v292;
    }

    else
    {
      v113 = v285;
      LocationOfInterest.location.getter();
      v114 = *(v287 + 8);
      v115 = sub_10000C924();
      v114(v115);
      v281 = Location.name.getter();
      v117 = v116;
      v118 = v292;
      v119 = *(v291 + 8);
      v119(v113, v292);
      v120 = v270;
      sub_100035AD0(v86, v270, &qword_100CA3588, &unk_100A4F350);
      sub_10000556C(v120);
      if (v121)
      {

        sub_1000180EC(v120, &qword_100CA3588, &unk_100A4F350);
        v89 = v288;
        v85 = v286;
        v90 = v118;
      }

      else
      {
        v128 = v117;
        LocationOfInterest.location.getter();
        v129 = sub_10000C924();
        v114(v129);
        v130 = Location.sanitizedSecondaryName.getter();
        v132 = v131;
        v119(v113, v118);
        v90 = v118;
        if (v132)
        {
          v133 = v264;
          sub_100035AD0(v283, v264, &qword_100CA3588, &unk_100A4F350);
          sub_10000556C(v133);
          if (!v121)
          {
            v252 = v287;
            v253 = v130;
            v254 = v88;
            v255 = v262;
            (*(v287 + 32))(v262, v133, v254);
            v256 = sub_10022C350(&qword_100CC4190, &qword_100A5D798);
            v257 = *(v256 + 48);
            v292 = *(v256 + 64);
            v258 = v290;
            *v290 = v253;
            *(v258 + 1) = v132;
            *(v258 + 2) = v281;
            *(v258 + 3) = v128;
            (*(v252 + 16))(&v258[v257], v255, v254);
            sub_10001B350(&v258[v257], 0, 1, v254);
            v259 = v282;
            v260 = LocationModelData.isPredictedLocation.getter();
            (v114)(v255, v254);
            (*(v288 + 8))(v259, v286);
            sub_10001F4B8();
            sub_100032908(v284, v261);
            sub_1000180EC(v283, &qword_100CA3588, &unk_100A4F350);
            v258[v292] = v260 & 1;
            type metadata accessor for LocationCompositionState(0);
            return swift_storeEnumTagMultiPayload();
          }

          sub_1000180EC(v133, &qword_100CA3588, &unk_100A4F350);
        }

        else
        {
        }

        v89 = v288;
        v85 = v286;
      }
    }

    v201 = v284;
    v202 = v274;
    SavedLocation.location.getter();
    sub_1000038B4(v202, 1, v90);
    if (!v121)
    {
      v292 = Location.name.getter();
      v204 = v203;
      v205 = *(v291 + 8);
      v205(v202, v90);
      v202 = v269;
      SavedLocation.location.getter();
      sub_1000038B4(v202, 1, v90);
      if (!v121)
      {
        v223 = Location.sanitizedSecondaryName.getter();
        v224 = v90;
        v226 = v225;
        v205(v202, v224);
        if (v226)
        {
          v227 = *(sub_10022C350(&qword_100CC4190, &qword_100A5D798) + 64);
          v228 = v290;
          *v290 = v223;
          v228[1] = v226;
          v228[2] = v292;
          v228[3] = v204;
          sub_100003934();
          sub_10001B350(v229, v230, v231, v88);
          v232 = LocationModelData.isPredictedLocation.getter();
          v233 = sub_10000ECC0();
          v234(v233);
          sub_10001F4B8();
          sub_100032908(v284, v235);
          sub_1000180EC(v283, &qword_100CA3588, &unk_100A4F350);
          *(v228 + v227) = v232 & 1;
          goto LABEL_72;
        }

        v90 = v224;
        v201 = v284;
LABEL_61:
        v206 = v283;
        v207 = v273;
        SavedLocation.location.getter();
        sub_1000038B4(v207, 1, v90);
        if (v121)
        {
          sub_1000180EC(v207, &qword_100CA65D8, &unk_100A3D9D0);
          v208 = v272;
        }

        else
        {
          v209 = Location.sanitizedSecondaryName.getter();
          v211 = v210;
          (*(v291 + 8))(v207, v90);
          v208 = v272;
          if (v211)
          {
            sub_10000556C(v206);
            if (v121)
            {
              v292 = *(sub_10022C350(&qword_100CC4190, &qword_100A5D798) + 64);
              v212 = SavedLocation.name.getter();
              v213 = v206;
              v214 = v290;
              *v290 = v209;
              v214[1] = v211;
              v214[2] = v212;
              v214[3] = v215;
              sub_100003934();
              sub_10001B350(v216, v217, v218, v88);
              v219 = LocationModelData.isPredictedLocation.getter();
              v220 = sub_10000ECC0();
              v221(v220);
              sub_10001F4B8();
              sub_100032908(v201, v222);
              sub_1000180EC(v213, &qword_100CA3588, &unk_100A4F350);
              *(v214 + v292) = v219 & 1;
              goto LABEL_72;
            }
          }
        }

        sub_100035AD0(v206, v208, &qword_100CA3588, &unk_100A4F350);
        sub_10000556C(v208);
        if (v121)
        {
          sub_1000180EC(v208, &qword_100CA3588, &unk_100A4F350);
          v236 = *(sub_10022C350(&qword_100CC4190, &qword_100A5D798) + 64);
          v237 = v290;
          *v290 = 0u;
          v237[1] = 0u;
          sub_100003934();
          sub_10001B350(v238, v239, v240, v88);
          v241 = v282;
          v242 = LocationModelData.isPredictedLocation.getter();
          (*(v89 + 8))(v241, v85);
          sub_10001F4B8();
          sub_100032908(v201, v243);
          sub_1000180EC(v206, &qword_100CA3588, &unk_100A4F350);
          *(v237 + v236) = v242 & 1;
        }

        else
        {
          v244 = v287;
          v245 = v268;
          (*(v287 + 32))(v268, v208, v88);
          v246 = sub_10022C350(&qword_100CC4190, &qword_100A5D798);
          v247 = *(v246 + 48);
          v292 = *(v246 + 64);
          v248 = v290;
          *v290 = 0u;
          *(v248 + 1) = 0u;
          (*(v244 + 16))(&v248[v247], v245, v88);
          sub_10001B350(&v248[v247], 0, 1, v88);
          LOBYTE(v247) = LocationModelData.isPredictedLocation.getter();
          (*(v244 + 8))(v245, v88);
          v249 = sub_10000ECC0();
          v250(v249);
          sub_10001F4B8();
          sub_100032908(v201, v251);
          sub_1000180EC(v206, &qword_100CA3588, &unk_100A4F350);
          v248[v292] = v247 & 1;
        }

        goto LABEL_72;
      }
    }

    sub_1000180EC(v202, &qword_100CA65D8, &unk_100A3D9D0);
    goto LABEL_61;
  }

  v76 = sub_10000C924();
  v77(v76);
  v78 = *(sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0) + 48);
  v284 = v65;
  sub_10003D6A8(v72, v65, &type metadata accessor for CurrentLocation);
  (*(v57 + 32))(v2, v72 + v78, v55);
  LocationModelData.locationOfInterest.getter();
  sub_100035AD0(v280, v31, &qword_100CA3898, &qword_100A314D0);
  v79 = type metadata accessor for WeatherData(0);
  sub_1000038B4(v31, 1, v79);
  v80 = v2;
  if (v121)
  {
    sub_1000180EC(v31, &qword_100CA3898, &qword_100A314D0);
    v280 = 0;
    v282 = 0;
    LODWORD(v283) = 0;
  }

  else
  {
    v280 = sub_1001A5104();
    v282 = v91;
    LODWORD(v283) = v92;
    sub_100032908(v31, type metadata accessor for WeatherData);
  }

  v93 = v289;
  sub_100035AD0(v54, v51, &qword_100CA3588, &unk_100A4F350);
  sub_10000556C(v51);
  if (v121)
  {
    sub_1000180EC(v51, &qword_100CA3588, &unk_100A4F350);
LABEL_29:
    v127 = v281;
LABEL_30:
    v134 = v279;
    sub_100035AD0(v54, v279, &qword_100CA3588, &unk_100A4F350);
    sub_10000556C(v134);
    if (v121)
    {
      sub_1000180EC(v134, &qword_100CA3588, &unk_100A4F350);
      v143 = v292;
      v135 = v278;
      v136 = v284;
LABEL_43:
      CurrentLocation.location.getter();
      sub_1000038B4(v135, 1, v143);
      if (v121)
      {
        v149 = sub_10001173C();
        v150(v149);
        sub_10001C9EC();
        sub_100032908(v136, v151);
        sub_1000180EC(v135, &qword_100CA65D8, &unk_100A3D9D0);
      }

      else
      {
        v152 = Location.sanitizedSecondaryName.getter();
        v154 = v153;
        (*(v291 + 8))(v135, v143);
        if (v154)
        {
          sub_10000556C(v54);
          if (v121)
          {
            v292 = *(sub_10022C350(&qword_100CC4198, &unk_100A5D7A0) + 48);
            v155 = v290;
            v156 = v284;
            v291 = CurrentLocation.name.getter();
            v289 = v157;
            v158 = sub_10002C990();
            v159(v158);
            sub_10001C9EC();
            sub_100032908(v156, v160);
            sub_1000180EC(v54, &qword_100CA3588, &unk_100A4F350);
            *v155 = v152;
            v155[1] = v154;
            v161 = v289;
            v155[2] = v291;
            v155[3] = v161;
            sub_100016D00(v155 + v292, 1);
            sub_10002FFBC(v162);
            return swift_storeEnumTagMultiPayload();
          }
        }

        v163 = sub_10002C990();
        v164(v163);
        sub_10001C9EC();
        sub_100032908(v284, v165);
      }

      v166 = v277;
      sub_1001A5050(v54, v277);
      sub_10000556C(v166);
      if (v121)
      {
        sub_1000180EC(v166, &qword_100CA3588, &unk_100A4F350);
        v167 = sub_10022C350(&qword_100CC4198, &unk_100A5D7A0);
        v168 = *(v167 + 48);
        v169 = v290;
        v170 = v290 + *(v167 + 64);
        *v290 = 0u;
        v169[1] = 0u;
        sub_100016D00(v169 + v168, 1);
        *v170 = v172;
        *(v170 + 1) = v171;
        v170[16] = v283;
      }

      else
      {
        v173 = *(v287 + 32);
        v174 = v271;
        v173(v271, v166, v93);
        v175 = sub_10022C350(&qword_100CC4198, &unk_100A5D7A0);
        v176 = *(v175 + 48);
        v177 = v290;
        v178 = v290 + *(v175 + 64);
        *v290 = 0u;
        v177[1] = 0u;
        v173(v177 + v176, v174, v93);
        sub_100016D00(v177 + v176, 0);
        *v178 = v180;
        *(v178 + 1) = v179;
        v178[16] = v283;
      }

LABEL_72:
      type metadata accessor for LocationCompositionState(0);
      return swift_storeEnumTagMultiPayload();
    }

    v137 = v54;
    v138 = v285;
    LocationOfInterest.location.getter();
    (*(v287 + 8))(v134, v93);
    v289 = Location.name.getter();
    v140 = v139;
    v141 = *(v291 + 8);
    v142 = v138;
    v143 = v292;
    v141(v142, v292);
    CurrentLocation.location.getter();
    sub_1000038B4(v127, 1, v143);
    if (v144)
    {

      sub_1000180EC(v127, &qword_100CA65D8, &unk_100A3D9D0);
    }

    else
    {
      v288 = Location.sanitizedSecondaryName.getter();
      v146 = v145;
      v141(v127, v143);
      if (v146)
      {
        v54 = v137;
        v147 = v137;
        v148 = v266;
        sub_100035AD0(v147, v266, &qword_100CA3588, &unk_100A4F350);
        sub_10000556C(v148);
        if (!v121)
        {
          v188 = sub_10002C990();
          v189(v188);
          sub_10001C9EC();
          sub_100032908(v284, v190);
          v191 = *(v287 + 32);
          v192 = v263;
          v191(v263, v148, v93);
          v193 = sub_10022C350(&qword_100CC4198, &unk_100A5D7A0);
          v194 = v54;
          v195 = *(v193 + 48);
          v196 = v290;
          v197 = v290 + *(v193 + 64);
          sub_1000180EC(v194, &qword_100CA3588, &unk_100A4F350);
          v198 = v289;
          *v196 = v288;
          v196[1] = v146;
          v196[2] = v198;
          v196[3] = v140;
          v191(v196 + v195, v192, v93);
          sub_100016D00(v196 + v195, 0);
          *v197 = v200;
          *(v197 + 1) = v199;
          v197[16] = v283;
          type metadata accessor for LocationCompositionState(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_1000180EC(v148, &qword_100CA3588, &unk_100A4F350);
        v143 = v292;
        v135 = v278;
        goto LABEL_42;
      }

      v143 = v292;
    }

    v135 = v278;
    v54 = v137;
LABEL_42:
    v136 = v284;
    goto LABEL_43;
  }

  v288 = v57;
  v103 = v285;
  LocationOfInterest.location.getter();
  v104 = *(v287 + 8);
  v104(v51, v93);
  v275 = Location.name.getter();
  v106 = v105;
  v107 = v292;
  v108 = v54;
  v109 = *(v291 + 8);
  v109(v103, v292);
  v289 = v108;
  v110 = v108;
  v111 = v276;
  sub_100035AD0(v110, v276, &qword_100CA3588, &unk_100A4F350);
  sub_10000556C(v111);
  if (v112)
  {

    sub_1000180EC(v111, &qword_100CA3588, &unk_100A4F350);
LABEL_28:
    v54 = v289;
    goto LABEL_29;
  }

  v274 = v106;
  LocationOfInterest.location.getter();
  v122 = sub_10000C924();
  (v104)(v122);
  v123 = Location.sanitizedSecondaryName.getter();
  v125 = v124;
  v109(v103, v107);
  if (!v125)
  {

    goto LABEL_28;
  }

  v54 = v289;
  v126 = v267;
  sub_100035AD0(v289, v267, &qword_100CA3588, &unk_100A4F350);
  sub_10000556C(v126);
  v127 = v281;
  if (v121)
  {

    sub_1000180EC(v126, &qword_100CA3588, &unk_100A4F350);
    goto LABEL_30;
  }

  (*(v288 + 8))(v80, v286);
  sub_10001C9EC();
  sub_100032908(v284, v181);
  v182 = *(v287 + 32);
  v183 = v265;
  v182(v265, v126, v93);
  v184 = *(sub_10022C350(&qword_100CC4198, &unk_100A5D7A0) + 48);
  v185 = v290;
  sub_1000180EC(v54, &qword_100CA3588, &unk_100A4F350);
  *v185 = v123;
  v185[1] = v125;
  v186 = v274;
  v185[2] = v275;
  v185[3] = v186;
  v182(v185 + v184, v183, v93);
  sub_100016D00(v185 + v184, 0);
  sub_10002FFBC(v187);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001A4F88()
{
  sub_100003A00();
  v2 = type metadata accessor for LocationComponentBackgroundConfiguration.HeaderConfiguration(0);

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_1001A5000()
{
  sub_100003A00();
  v2 = sub_10022C350(&qword_100CB7090, &unk_100A4C520);

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_1001A5050(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A5104()
{
  type metadata accessor for Date.RelativeFormatStyle.UnitsStyle();
  sub_1000037C4();
  v41 = v2;
  v42 = v1;
  __chkstk_darwin(v1);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for Date.RelativeFormatStyle.Presentation();
  sub_1000037C4();
  v39 = v7;
  v40 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for Date.RelativeFormatStyle();
  sub_1000037C4();
  v38 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = type metadata accessor for WeatherDataRelevancy(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = type metadata accessor for WeatherData.CachingState(0);
  __chkstk_darwin(v22 - 8);
  sub_1000037D8();
  v25 = v24 - v23;
  v26 = sub_10022C350(&qword_100CC8178, &qword_100A905E0);
  __chkstk_darwin(v26 - 8);
  v28 = &v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v37 - v30;
  v32 = type metadata accessor for WeatherData(0);
  sub_1001A56F4(v0 + *(v32 + 28), v25);
  v33 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  if (sub_100024D10(v25, 1, v33) == 1)
  {
    sub_1005BE020(v25, type metadata accessor for WeatherData.CachingState);
  }

  else
  {
    sub_1001A5758(v25 + *(v33 + 48), v31);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v34 + 8))(v25);
    sub_1001A57E0(v31, v28);
    if (sub_100024D10(v28, 1, v17) != 1)
    {
      sub_1005BDF64(v28, v21);
      static Date.RelativeFormatStyle.Presentation.numeric.getter();
      static Date.RelativeFormatStyle.UnitsStyle.wide.getter();
      static FormatStyle<>.relative(presentation:unitsStyle:)();
      (*(v41 + 8))(v5, v42);
      (*(v39 + 8))(v10, v40);
      sub_1005BDFC8();
      Date.formatted<A>(_:)();
      (*(v38 + 8))(v16, v11);
      sub_1005BDEFC(v31);
      v35 = v43;
      sub_1005BE020(v21, type metadata accessor for WeatherDataRelevancy);
      return v35;
    }

    sub_1005BDEFC(v31);
    sub_1005BDEFC(v28);
  }

  return 0;
}

uint64_t sub_1001A5510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = sub_10022C350(&qword_100CBA0F8, &qword_100A4F678);
  (*(*(v13 - 8) + 16))(a6, a1, v13);
  v14 = (a6 + *(sub_10022C350(&qword_100CBA100, &qword_100A4F680) + 36));
  *v14 = sub_1001981A8;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;

  sub_10022C350(&qword_100CBA108, &qword_100A4F688);
  v15 = State.wrappedValue.getter();
  LOBYTE(v12) = sub_100191B7C(v15, v16);

  *(a6 + *(sub_10022C350(&qword_100CBA110, &qword_100A4F690) + 36)) = (v12 & 1) == 0;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;

  v18 = static Alignment.center.getter();
  v20 = v19;
  result = sub_10022C350(&qword_100CBA118, &qword_100A4F698);
  v22 = (a6 + *(result + 36));
  *v22 = sub_1001A57D4;
  v22[1] = v17;
  v22[2] = v18;
  v22[3] = v20;
  return result;
}

uint64_t sub_1001A56F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherData.CachingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A5758(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC8178, &qword_100A905E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A57E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC8178, &qword_100A905E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A5864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

_BYTE *sub_1001A5920@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (*result == 1)
  {
    v11 = static Color.clear.getter();
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a4;
    v12[5] = a5;

    v13 = sub_1001919EC;
    v14 = sub_1001A5F28;
  }

  else
  {
    v11 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  *a6 = v11;
  a6[1] = v14;
  a6[2] = 0;
  a6[3] = v13;
  a6[4] = v12;
  return result;
}

uint64_t sub_1001A5A00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W6>, uint64_t a7@<X8>, uint64_t a8, unsigned __int8 a9)
{
  v51 = a4;
  v56 = a5;
  LODWORD(v57) = a6;
  v50 = a1;
  v55 = type metadata accessor for Locale.Language();
  v12 = *(v55 - 8);
  __chkstk_darwin(v55);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001A5D10(a9, a8);
  v53 = v20;
  v54 = v19;
  static Locale.current.getter();
  Locale.language.getter();
  (*(v16 + 8))(v18, v15);
  LOBYTE(v18) = Locale.Language.isUrdu.getter();
  (*(v12 + 8))(v14, v55);
  v21 = v18 & 1;
  v22 = v50;
  LODWORD(v55) = a9;
  v23 = sub_1001A69B4(a8, v21, a9, a3, v52, v57, v51);
  v51 = v24;
  v52 = v23;
  v49 = v25;
  v48 = v26;
  v57 = sub_10087291C(v22, a2);
  v28 = v27;
  if (!v27)
  {
    v57 = CurrentWeather.conditionDescription.getter();
  }

  v47 = v27;
  LODWORD(v50) = v28 != 0;
  v29 = *a2;
  v30 = a2[1];
  v31 = a2[2];
  v32 = a2[3];
  v33 = a2[7];
  v45 = a2[6];
  v46 = v31;
  v34 = a2[9];
  v44 = a2[8];

  v35 = static Settings.InternationalAuthenticity.verticalHeroEnabledForCurrentLocale.getter();
  v36 = a2[10];
  v37 = a2[11];

  v39 = v56 & 1;
  v40 = v55 & 1;
  *a7 = v54;
  *(a7 + 8) = v53;
  *(a7 + 16) = v52;
  *(a7 + 24) = v51;
  *(a7 + 32) = v49;
  *(a7 + 40) = v48;
  *(a7 + 48) = v57;
  *(a7 + 56) = v47;
  *(a7 + 64) = v29;
  v41 = v46;
  *(a7 + 72) = v30;
  *(a7 + 80) = v41;
  v42 = v45;
  *(a7 + 88) = v32;
  *(a7 + 96) = v42;
  v43 = v44;
  *(a7 + 104) = v33;
  *(a7 + 112) = v43;
  *(a7 + 120) = v34;
  *(a7 + 128) = v35 & 1;
  *(a7 + 129) = 1;
  *(a7 + 130) = v39;
  *(a7 + 136) = v36;
  *(a7 + 144) = v37;
  *(a7 + 152) = v40;
  *(a7 + 153) = v50;
  return result;
}

uint64_t sub_1001A5D10(char a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCompositionState(0);
  __chkstk_darwin(v4);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v13 - v6;
  if (a1)
  {
    sub_10011145C(a2, &v13 - v6, type metadata accessor for LocationCompositionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = *(v7 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CC4190, &qword_100A5D798) + 48);
      if (v9)
      {
        v11 = *(v7 + 2);
LABEL_7:

LABEL_9:
        sub_1000180EC(&v7[v10], &qword_100CA3588, &unk_100A4F350);
        return v11;
      }
    }

    else
    {
      v11 = *(v7 + 2);
      v10 = *(sub_10022C350(&qword_100CC4198, &unk_100A5D7A0) + 48);

      if (v9)
      {
        goto LABEL_7;
      }
    }

    v11 = LocationModel.name.getter();
    goto LABEL_9;
  }

  return LocationModel.name.getter();
}

double sub_1001A5E78(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001F680();
  v4 = sub_10014986C(v2, v3, asc_100A7EE60);
  sub_100023108(v4, v5);

  return result;
}

void sub_1001A5EFC()
{
  sub_100020AF8();
  sub_1001A5E78(v1, v2);
  *v0 = v3;
}

uint64_t sub_1001A5F28@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for CoordinateSpace();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for CoordinateSpace.global(_:), v2, v4);
  GeometryProxy.frameClippedToScrollViews(in:)();
  v7 = v10[3];
  v8 = v10[4];
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_1001A6038(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001A6078(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1001A608C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100020DF0();
  v10 = type metadata accessor for BackgroundModifier(0);
  sub_100003AE8(v10);
  v11 = type metadata accessor for RoundedCornerStyle();
  sub_100003810(v11);
  sub_1000053B8();
  sub_1000212EC();

  return sub_1001A748C(v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1001A6184(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001A61C8()
{
  v2 = sub_100003B38();
  v3 = type metadata accessor for PreviewLocation(v2);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v92 = v5;
  v6 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = v86 - v8;
  v10 = sub_10022C350(&qword_100CB8F90, &qword_100A4D570);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v91 = v86 - v12;
  v13 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v14);
  v16 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = v86 - v19;
  v21 = sub_10022C350(&qword_100CBC9B0, &unk_100A53590);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = v86 - v23;
  if (*v1 != *v0)
  {
    goto LABEL_54;
  }

  if (v1[1] != v0[1])
  {
    goto LABEL_54;
  }

  sub_100073B0C(*(v1 + 1), *(v0 + 1));
  if ((v25 & 1) == 0)
  {
    goto LABEL_54;
  }

  v90 = v9;
  v26 = type metadata accessor for LocationInput(0);
  sub_100003C48(v26[7]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v32)
  {
    goto LABEL_54;
  }

  if (!sub_1001AEF68(*&v1[v26[9]] | (v1[v26[9] + 2] << 16), *&v0[v26[9]] | (v0[v26[9] + 2] << 16)))
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v32)
  {
    goto LABEL_54;
  }

  v87 = v26;
  v27 = v26[11];
  v28 = v1[v27];
  LODWORD(v88) = v0[v27];
  v29 = LocationAuthorizationState.rawValue.getter(v28);
  v89 = v30;
  v32 = v29 == LocationAuthorizationState.rawValue.getter(v88) && v89 == v31;
  if (v32)
  {
  }

  else
  {
    LODWORD(v88) = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v88 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v33 = v87;
  if ((sub_1000BA238() & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v32)
  {
    goto LABEL_54;
  }

  sub_100003C48(v33[14]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v32)
  {
    goto LABEL_54;
  }

  v34 = v33[16];
  v35 = *&v1[v34];
  v36 = *&v1[v34 + 8];
  v37 = *&v1[v34 + 16];
  v38 = *&v1[v34 + 24];
  v39 = &v0[v34];
  v40 = *v39;
  v41 = *(v39 + 1);
  v89 = *(v39 + 3);
  if (v35 != v40 || v36 != v41)
  {
    v88 = v38;
    v86[1] = v37;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  sub_1000BCFBC();
  if ((v43 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_1000BD330();
  if ((v44 & 1) == 0)
  {
    goto LABEL_54;
  }

  v45 = v87[17];
  v46 = *(v21 + 48);
  sub_1000302D8(&v1[v45], v24, &unk_100CE49F0, &unk_100A3AFA0);
  sub_1000302D8(&v0[v45], &v24[v46], &unk_100CE49F0, &unk_100A3AFA0);
  sub_1000038B4(v24, 1, v13);
  if (v32)
  {
    sub_1000038B4(&v24[v46], 1, v13);
    if (v32)
    {
      sub_1000180EC(v24, &unk_100CE49F0, &unk_100A3AFA0);
      goto LABEL_41;
    }

LABEL_38:
    v49 = &qword_100CBC9B0;
    v50 = &unk_100A53590;
    v51 = v24;
LABEL_39:
    sub_1000180EC(v51, v49, v50);
    goto LABEL_54;
  }

  sub_1000302D8(v24, v20, &unk_100CE49F0, &unk_100A3AFA0);
  sub_1000038B4(&v24[v46], 1, v13);
  if (v47)
  {
    sub_100010D38();
    sub_100141B94(v20, v48);
    goto LABEL_38;
  }

  sub_1001876B0();
  v52 = static CurrentLocation.== infix(_:_:)();
  sub_100141B94(v16, &type metadata accessor for CurrentLocation);
  sub_100141B94(v20, &type metadata accessor for CurrentLocation);
  sub_1000180EC(v24, &unk_100CE49F0, &unk_100A3AFA0);
  if ((v52 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_41:
  if (*&v1[v87[18]] != *&v0[v87[18]])
  {
    goto LABEL_54;
  }

  v53 = v87[19];
  v54 = *&v1[v53 + 16];
  v93[0] = *&v1[v53];
  v93[1] = v54;
  v55 = *&v1[v53 + 32];
  v56 = &v0[v53];
  v57 = *v56;
  v58 = *(v56 + 1);
  v93[2] = v55;
  v94[0] = v57;
  v59 = *(v56 + 2);
  v94[1] = v58;
  v94[2] = v59;
  if ((sub_1000B8A2C(v93, v94) & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_10000CEB4(v87[20]);
  sub_1001CAA30();
  if ((v60 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003C48(v87[21]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_54;
  }

  v61 = v87[22];
  v62 = &v1[v61];
  v63 = v1[v61];
  v64 = &v0[v61];
  if (v63 != *v64)
  {
    goto LABEL_54;
  }

  v65 = *(v64 + 2);
  v66 = *(v62 + 2);
  sub_1000BDA70();
  if ((v67 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_1000BDD2C(v66, v65);
  if ((v68 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v32)
  {
    goto LABEL_54;
  }

  sub_10000CEB4(v87[24]);
  sub_1000B9F58();
  if ((v69 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003C48(v87[25]);
  if ((static AppConfiguration.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_54;
  }

  v70 = sub_10000CEB4(v87[26]);
  sub_1000BDD2C(v70, v71);
  if ((v72 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v32)
  {
    goto LABEL_54;
  }

  v75 = v87[28];
  v76 = *(v10 + 48);
  v77 = v91;
  sub_1000302D8(&v1[v75], v91, &qword_100CA65C8, &unk_100A31670);
  sub_1000302D8(&v0[v75], v77 + v76, &qword_100CA65C8, &unk_100A31670);
  sub_1000038B4(v77, 1, v3);
  if (!v32)
  {
    v78 = v91;
    sub_1000302D8(v91, v90, &qword_100CA65C8, &unk_100A31670);
    sub_1000038B4(v78 + v76, 1, v3);
    if (!v79)
    {
      v81 = v91;
      v80 = v92;
      sub_1001876B0();
      v82 = v90;
      sub_1006E6E98();
      v84 = v83;
      sub_100141B94(v80, type metadata accessor for PreviewLocation);
      sub_100141B94(v82, type metadata accessor for PreviewLocation);
      sub_1000180EC(v81, &qword_100CA65C8, &unk_100A31670);
      if ((v84 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_66;
    }

    sub_100141B94(v90, type metadata accessor for PreviewLocation);
    goto LABEL_64;
  }

  sub_1000038B4(v91 + v76, 1, v3);
  if (!v32)
  {
LABEL_64:
    v49 = &qword_100CB8F90;
    v50 = &qword_100A4D570;
    v51 = v91;
    goto LABEL_39;
  }

  sub_1000180EC(v91, &qword_100CA65C8, &unk_100A31670);
LABEL_66:
  sub_10000CEB4(v87[29]);
  sub_1000B9424();
  if (v85)
  {
    v73 = v1[v87[30]] ^ v0[v87[30]] ^ 1;
    return v73 & 1;
  }

LABEL_54:
  v73 = 0;
  return v73 & 1;
}

uint64_t sub_1001A69B4(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v77 = a7;
  v78 = a5;
  v90 = a2;
  v91 = a6;
  v89 = a4;
  v93 = a3;
  v8 = type metadata accessor for LocationOfInterestType();
  v85 = *(v8 - 8);
  v86 = v8;
  __chkstk_darwin(v8);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Location.Identifier();
  v87 = *(v10 - 8);
  v88 = v10;
  __chkstk_darwin(v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v75 = &v74 - v14;
  v92 = type metadata accessor for LocationOfInterest();
  v83 = *(v92 - 8);
  __chkstk_darwin(v92);
  v76 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v74 = &v74 - v17;
  v18 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v18 - 8);
  v80 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v82 = &v74 - v21;
  __chkstk_darwin(v22);
  v79 = &v74 - v23;
  __chkstk_darwin(v24);
  v81 = &v74 - v25;
  v26 = type metadata accessor for Locale();
  __chkstk_darwin(v26 - 8);
  v27 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v27 - 8);
  v28 = type metadata accessor for LocationCompositionState(0);
  __chkstk_darwin(v28);
  v30 = (&v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v33 = (&v74 - v32);
  __chkstk_darwin(v34);
  v36 = (&v74 - v35);
  v37 = a1;
  sub_10011145C(a1, &v74 - v35, type metadata accessor for LocationCompositionState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100105FE4(v36, type metadata accessor for LocationCompositionState);
  }

  else
  {
    sub_1001A6184(*v36, v36[1]);
    v38 = sub_10022C350(&qword_100CC4198, &unk_100A5D7A0);
    v39 = v36 + *(v38 + 64);
    v40 = *(v39 + 1);
    v41 = v39[16];
    sub_1000180EC(v36 + *(v38 + 48), &qword_100CA3588, &unk_100A4F350);
    if (v40)
    {

      if ((v41 & 1) == 0)
      {
        countAndFlagsBits = Image.init(systemName:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:defaultValue:table:bundle:locale:comment:)();
        return countAndFlagsBits;
      }
    }
  }

  if ((v93 & 1) == 0)
  {
    if ((v91 & 1) == 0)
    {
      sub_10011145C(v37, v30, type metadata accessor for LocationCompositionState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1001A6184(*v30, v30[1]);
        v64 = sub_10022C350(&qword_100CC4190, &qword_100A5D798);
        v65 = *(v30 + *(v64 + 64));
        sub_1000180EC(v30 + *(v64 + 48), &qword_100CA3588, &unk_100A4F350);
        if (v65 == 1)
        {
          return sub_1008727D8();
        }
      }

      else
      {
        sub_100105FE4(v30, type metadata accessor for LocationCompositionState);
      }

      Location.sanitizedSecondaryName.getter();
      if (v72)
      {
        countAndFlagsBits = String.uppercasedWithPreferredLocale()()._countAndFlagsBits;

        return countAndFlagsBits;
      }

      return 0;
    }

    LocationModel.identifier.getter();
    v51 = Location.Identifier.name.getter();
    v53 = v52;
    (*(v87 + 8))(v12, v88);

    v54 = HIBYTE(v53) & 0xF;
    v55 = v51 & 0xFFFFFFFFFFFFLL;
    v56 = (v53 & 0x2000000000000000) == 0;
LABEL_14:
    if (v56)
    {
      v54 = v55;
    }

    if (v54)
    {
      countAndFlagsBits = *(v78 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_myLocationAllCapsString);

      return countAndFlagsBits;
    }

    return 0;
  }

  sub_10011145C(v37, v33, type metadata accessor for LocationCompositionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = *v33;
  v43 = v33[1];
  if (EnumCaseMultiPayload != 1)
  {
    sub_1001A6184(*v33, v33[1]);
    v57 = *(sub_10022C350(&qword_100CC4198, &unk_100A5D7A0) + 48);

    v47 = v81;
    sub_10011C0F0(v33 + v57, v81, &qword_100CA3588, &unk_100A4F350);
    v58 = v79;
    sub_1000302D8(v47, v79, &qword_100CA3588, &unk_100A4F350);
    v59 = v92;
    if (sub_100024D10(v58, 1, v92) != 1)
    {
      v69 = v83;
      v70 = v74;
      (*(v83 + 32))(v74, v58, v59);
      countAndFlagsBits = Image.init(systemName:)();
      v71 = v84;
      LocationOfInterest.type.getter();
      LocationOfInterestType.title.getter();
      (*(v85 + 8))(v71, v86);
      String.uppercasedWithPreferredLocale()();

      (*(v69 + 8))(v70, v59);
      goto LABEL_24;
    }

    sub_1000180EC(v58, &qword_100CA3588, &unk_100A4F350);
    v60 = v75;
    LocationModel.identifier.getter();
    v61 = Location.Identifier.name.getter();
    v63 = v62;
    (*(v87 + 8))(v60, v88);
    sub_1000180EC(v47, &qword_100CA3588, &unk_100A4F350);

    v54 = HIBYTE(v63) & 0xF;
    v55 = v61 & 0xFFFFFFFFFFFFLL;
    v56 = (v63 & 0x2000000000000000) == 0;
    goto LABEL_14;
  }

  v45 = sub_10022C350(&qword_100CC4190, &qword_100A5D798);
  v46 = *(v33 + *(v45 + 64));
  v47 = v82;
  sub_10011C0F0(v33 + *(v45 + 48), v82, &qword_100CA3588, &unk_100A4F350);
  v48 = v80;
  sub_1000302D8(v47, v80, &qword_100CA3588, &unk_100A4F350);
  v49 = v92;
  if (sub_100024D10(v48, 1, v92) != 1)
  {
    sub_1001A6184(v44, v43);
    v66 = v83;
    v67 = v76;
    (*(v83 + 32))(v76, v48, v49);
    LocationOfInterest.imageName.getter();
    countAndFlagsBits = Image.init(systemName:)();
    v68 = v84;
    LocationOfInterest.type.getter();
    LocationOfInterestType.title.getter();
    (*(v85 + 8))(v68, v86);
    String.uppercasedWithPreferredLocale()();

    (*(v66 + 8))(v67, v49);
LABEL_24:
    sub_1000180EC(v47, &qword_100CA3588, &unk_100A4F350);
    return countAndFlagsBits;
  }

  sub_1000180EC(v48, &qword_100CA3588, &unk_100A4F350);
  if ((v46 & 1) == 0)
  {
    if (v43)
    {
      countAndFlagsBits = String.uppercasedWithPreferredLocale()()._countAndFlagsBits;

      sub_1000180EC(v47, &qword_100CA3588, &unk_100A4F350);
      return countAndFlagsBits;
    }

    sub_1000180EC(v47, &qword_100CA3588, &unk_100A4F350);
    return 0;
  }

  sub_1001A6184(v44, v43);
  countAndFlagsBits = sub_1008727D8();
  sub_1000180EC(v47, &qword_100CA3588, &unk_100A4F350);
  return countAndFlagsBits;
}

uint64_t sub_1001A748C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v40 = a3;
  v41 = a6;
  v35 = a5;
  v34[1] = a2;
  v36 = a1;
  v42 = a4;
  v37 = type metadata accessor for RoundedCornerStyle();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA4680, &unk_100A59690);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v34 - v11;
  v39 = sub_10022C350(&qword_100CA4670, &unk_100A2E850);
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v14 = v34 - v13;
  v15 = type metadata accessor for NamedCoordinateSpace();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  v19 = v48;
  (*(v16 + 8))(v18, v15);
  v20 = 0.0;
  if ((v49 & 1) == 0)
  {
    v20 = v19;
  }

  GeometryProxy.size.getter();
  v22 = v21;
  v24 = v23;
  if (v20 >= -v35)
  {
    CGRect.adding(minY:)();
    v54.origin.x = v25;
    v54.origin.y = v26;
    v54.size.width = v27;
    v54.size.height = v28;
    v53.origin.x = 0.0;
    v53.origin.y = 0.0;
    v53.size.width = v22;
    v53.size.height = v24;
    CGRectIntersection(v53, v54);
  }

  else
  {
    v52.origin.x = 0.0;
    v52.origin.y = 0.0;
    v52.size.width = v22;
    v52.size.height = v24;
    CGRectIntegral(v52);
  }

  v29 = type metadata accessor for EmptyVisualEffect();
  v30 = sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  *&v50[0] = v29;
  *(&v50[0] + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 16))(v8, v40, v37);
  Path.init(roundedRect:cornerRadius:style:)();
  v45 = v50[0];
  v46 = v50[1];
  v47 = v51;
  v43 = v9;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1001A7CA8();
  v32 = v39;
  VisualEffect.clipShape<A>(_:style:)();
  sub_1001A8674(v50);
  return (*(v38 + 8))(v14, v32);
}

void sub_1001A79EC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MapsConfiguration.OverlayKind();
  __chkstk_darwin(v3 - 8);
  sub_1000037D8();
  v6 = v5 - v4;
  v23 = type metadata accessor for MapsConfiguration();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  static Settings.Maps.overrides.getter();
  v20 = dispatch thunk of SettingGroup.isEnabled.getter();

  if (v20)
  {
    sub_10000536C();

    sub_1005230B4(v21);
  }

  else
  {
    sub_1000161C0(v1, v1[3]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.maps.getter();
    (*(v15 + 8))(v19, v13);
    MapsConfiguration.defaultOverlayKind.getter();
    (*(v8 + 8))(v12, v23);
    sub_1005233D8(v6, a1);
    sub_10000536C();
  }
}

uint64_t sub_1001A7BF8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1001A7C50()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_1001A7CA8()
{
  result = qword_100CC2330;
  if (!qword_100CC2330)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Path, &type metadata for Path, v0, v1);
    atomic_store(result, &qword_100CC2330);
  }

  return result;
}

uint64_t sub_1001A7CFC(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4B70, &qword_100A2EE28);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4B78, &qword_100A2EE30);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4B80, &qword_100A2EE38);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4B88, &unk_100A2EE40);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for LocationInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4B88, &unk_100A2EE40);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_1001AF120(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_1001A61C8();
      sub_1001AFB34(v30, type metadata accessor for LocationInput);
      sub_1000180EC(v21, &qword_100CA4B88, &unk_100A2EE40);
      sub_1000180EC(v24, &qword_100CA4B88, &unk_100A2EE40);
      sub_1001AFB34(v18, type metadata accessor for LocationInput);
      sub_1000180EC(v15, &qword_100CA4B88, &unk_100A2EE40);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4B78, &qword_100A2EE30);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100140210();
        v41 = sub_100163AEC(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for LocationViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0x6E6F697461636F4CLL, 0xED00007475706E49, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000011, 0x8000000100ABC0E0, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4B90, &unk_100A9DFF0);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4B98, &qword_100A2EE50);
          sub_100006F64(&qword_100CA4BA0, &qword_100CA4B98, &qword_100A2EE50, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for LocationViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for LocationInput);
        }

        sub_1001AFB34(v39, type metadata accessor for LocationViewModel);
      }

      sub_10022C350(&qword_100CA4B90, &unk_100A9DFF0);
      sub_1001A7BF8();
      sub_100140210();
      sub_1001AFB34(v38, type metadata accessor for LocationInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4B88, &unk_100A2EE40);
    sub_1000180EC(v24, &qword_100CA4B88, &unk_100A2EE40);
    sub_1001AFB34(v18, type metadata accessor for LocationInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4B80, &qword_100A2EE38);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4B88, &unk_100A2EE40);
  sub_1000180EC(v24, &qword_100CA4B88, &unk_100A2EE40);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4B88, &unk_100A2EE40);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for LocationInput);
}

uint64_t sub_1001A8724()
{
  v2 = v1;
  v3 = sub_10000C76C();
  type metadata accessor for LocationWeatherDataState(v3);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_100006610();
  sub_1001A0E7C(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = *(sub_10022C350(&qword_100CA75D8, &unk_100A32600) + 48);
      sub_100010968();
      sub_1001A10BC(v7 + v15, v0);
      type metadata accessor for NewsDataModel(0);
      v16 = sub_1000164D8();
      sub_10001B350(v16, v17, 1, v18);
      sub_100008D68();
      sub_1001A126C(v7 + v14, v19);
      sub_10001F620();
      return sub_1001A126C(v7, v20);
    case 2u:
      sub_1001A126C(v7, type metadata accessor for LocationWeatherDataState);
      goto LABEL_4;
    case 3u:
LABEL_4:
      type metadata accessor for NewsDataModel(0);
      v10 = sub_1000719C8();
      return sub_10001B350(v10, v11, 1, v12);
    default:
      sub_100010968();
      v8 = sub_100003B2C();
      sub_1001A10BC(v8, v9);
      type metadata accessor for NewsDataModel(0);
      v10 = sub_1000164D8();
      return sub_10001B350(v10, v11, 1, v12);
  }
}

uint64_t sub_1001A8884(double a1, double a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_10022C350(&qword_100CA4680, &unk_100A59690);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = type metadata accessor for NamedCoordinateSpace();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  v14 = *&v21[3];
  v15 = *&v21[4];
  v16 = *&v21[5];
  v17 = *&v21[6];
  (*(v11 + 8))(v13, v10);
  if (v22)
  {
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
  }

  v23.origin.x = v14;
  v23.origin.y = v15;
  v23.size.width = v16;
  v23.size.height = v17;
  CGRectGetMinY(v23);
  if ((a5 & 1) == 0)
  {
    v24.origin.x = v14;
    v24.origin.y = v15;
    v24.size.width = v16;
    v24.size.height = v17;
    CGRectGetMinY(v24);
  }

  v18 = type metadata accessor for EmptyVisualEffect();
  v19 = sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  v21[1] = v18;
  v21[2] = v19;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001A8B78(uint64_t a1)
{
  v2 = v1;
  v411 = *v1;
  v4 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v413 = &v371 - v6;
  sub_1000038CC();
  v7 = type metadata accessor for CurrentWeather();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  v412 = v9;
  v10 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  v392 = &v371 - v12;
  sub_1000038CC();
  type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v384 = v14;
  v385 = v13;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v383 = v15;
  sub_1000038CC();
  v409 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v391 = v16;
  __chkstk_darwin(v17);
  sub_100003848();
  v386 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_10000E70C();
  v381 = v20;
  v21 = sub_1000038CC();
  v397 = type metadata accessor for LocationViewMapPosition.LocationMapConfiguration(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000038E4();
  v398 = v23;
  v24 = sub_10022C350(&qword_100CE9A98, &qword_100A9F118);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_100003848();
  v407 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v399 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v428 = v30;
  v31 = sub_1000038CC();
  HourPrecipitationComponentParameters = type metadata accessor for NextHourPrecipitationComponentParameters(v31);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000038E4();
  v378 = v33;
  v34 = sub_1000038CC();
  v35 = type metadata accessor for NewsArticleComponent(v34);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003848();
  v388 = v37;
  sub_10000386C();
  __chkstk_darwin(v38);
  sub_100003878();
  v387 = v39;
  sub_10000386C();
  __chkstk_darwin(v40);
  sub_100003878();
  v382 = v41;
  sub_10000386C();
  __chkstk_darwin(v42);
  sub_100003878();
  v380 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v379 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_10000E70C();
  v375 = v47;
  sub_1000038CC();
  v422 = type metadata accessor for WeatherAlert.Prominence();
  sub_1000037C4();
  v427 = v48;
  __chkstk_darwin(v49);
  sub_1000038E4();
  v421 = v50;
  v51 = sub_10022C350(&qword_100CAE820, &unk_100A3E370);
  v52 = sub_100003810(v51);
  __chkstk_darwin(v52);
  sub_100003848();
  v408 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v405 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v374 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v376 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  v62 = (&v371 - v61);
  v63 = type metadata accessor for LocationViewComponent(0);
  sub_1000037C4();
  v410 = v64;
  __chkstk_darwin(v65);
  sub_100003848();
  v390 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v389 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v424 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v372 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v373 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v433 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_10000E70C();
  v430 = v78;
  v79 = sub_10022C350(&qword_100CC3448, &unk_100A5C330);
  v80 = sub_100003810(v79);
  __chkstk_darwin(v80);
  sub_100003848();
  v415 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v406 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  v401 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_100003878();
  v395 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v394 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v393 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  v94 = &v371 - v93;
  v432 = type metadata accessor for PreprocessedWeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v95);
  sub_1000037D8();
  v98 = (v97 - v96);
  v396 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v99);
  sub_1000037D8();
  v102 = v101 - v100;
  type metadata accessor for Location();
  sub_1000037C4();
  __chkstk_darwin(v103);
  sub_1000037D8();
  v437 = v105 - v104;
  v416 = v106;
  v107 = *(v106 + 16);
  v426 = v108;
  v419 = v107;
  v420 = (v106 + 16);
  v107();
  v109 = type metadata accessor for LocationViewConfigurationInputs(0);
  sub_100023648();
  v436 = v102;
  sub_100111570(a1 + v110, v102, v111);
  sub_1000B0364();
  v438 = v98;
  sub_100111570(a1 + v112, v98, v113);
  v114 = v109[7];
  LODWORD(v431) = *(a1 + v109[8]);
  v115 = v109[10];
  v423 = *(a1 + v109[9]);
  v116 = *(a1 + v115);
  v417 = *(a1 + v109[11]);
  sub_100010A34(v2 + 2, v2[5]);
  v418 = v116;
  *&v440 = sub_100922C64(v102, v116, v117);
  v119 = v118;
  v120 = sub_1000161C0(v2 + 7, v2[10]);
  sub_100010A34((*v120 + 16), *(*v120 + 40));
  v400 = a1;
  v434 = v94;
  sub_10051818C(a1 + v114, v119, v94);
  type metadata accessor for LocationViewConfigurationBuilder();
  v121 = swift_allocObject();
  *(v121 + 16) = _swiftEmptyArrayStorage;
  v414 = v121 + 16;
  *(v121 + 24) = &_swiftEmptySetSingleton;
  v122 = v2[10];
  v435 = v2;
  sub_1000161C0(v2 + 7, v122);
  v123 = v427;
  v124 = v427 + 104;
  v125 = v421;
  v126 = v422;
  v402 = *(v427 + 104);
  v402(v421, enum case for WeatherAlert.Prominence.high(_:), v422);
  v425 = v119;
  sub_1008BB370(v62);
  v127 = v62;
  v128 = *(v123 + 8);
  v427 = v123 + 8;
  v128(v125, v126);
  v129 = sub_10000C7F0();
  v130 = v63;
  sub_1000038B4(v129, v131, v63);
  v439 = v121;
  if (v208)
  {
    sub_1000180EC(v127, &qword_100CAE820, &unk_100A3E370);
  }

  else
  {
    sub_100011150();
    v132 = v430;
    sub_1001A1114(v127, v430, v133);
    sub_1001AAF0C(v132);
    sub_1000093D0();
    sub_1001AEEB4(v132, v134);
  }

  v135 = v393;
  sub_100035AD0(v434, v393, &qword_100CC3448, &unk_100A5C330);
  v136 = type metadata accessor for NewsComponentPosition(0);
  sub_1000038B4(v135, 1, v136);
  v429 = v130;
  v430 = v136;
  v137 = v433;
  v138 = v405;
  v403 = v124;
  v404 = v128;
  if (v208)
  {
    sub_1000180EC(v135, &qword_100CC3448, &unk_100A5C330);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100015228();
      v141 = v135;
    }

    else
    {
      sub_100028EE4();
      v142 = v375;
      sub_1001A1114(v135, v375, v143);
      sub_1000171D0();
      sub_100111570(v142, v137, v144);
      swift_storeEnumTagMultiPayload();
      sub_1001AAF0C(v137);
      sub_1000093D0();
      sub_1001AEEB4(v137, v145);
      sub_10004EE84();
      v141 = v142;
    }

    sub_1001AEEB4(v141, v140);
  }

  if (*(v440 + 16))
  {
    sub_100040E68();
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_1000872B8();
    if (v146)
    {
      while (1)
      {
        switch(*(*(v440 + 48) + v135))
        {
          case 1:

            goto LABEL_20;
          case 2:
            sub_100087EF8();
            break;
          case 3:
            sub_100008C94();
            break;
          default:
            break;
        }

        v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v147)
        {
          break;
        }

        sub_1000D3DCC();
        if ((v148 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_20:
      v149 = v378;
      sub_100088920();
      v150();
      v151 = HourPrecipitationComponentParameters;
      sub_100023648();
      sub_100111570(v436, v149 + v152, v153);
      *(v149 + *(v151 + 24)) = _swiftEmptyArrayStorage;
      *(v149 + *(v151 + 28)) = v418;
      sub_100010A34((v435 + 56), *(v435 + 80));
      v135 = v376;
      sub_1008BA700(v149, v376);
      sub_1000038B4(v135, 1, v429);
      if (v208)
      {
        sub_100006CD4();
        sub_1001AEEB4(v149, v154);
        sub_1000180EC(v135, &qword_100CAE820, &unk_100A3E370);
      }

      else
      {
        sub_100011150();
        v155 = v135;
        v135 = v373;
        sub_1001A1114(v155, v373, v156);
        sub_1001AAF0C(v135);
        if (v417 & 1) != 0 || (v431)
        {
          sub_1000093D0();
          v158 = v135;
        }

        else
        {
          v135 = v433;
          sub_100088920();
          v159();
          swift_storeEnumTagMultiPayload();
          sub_1001AAF0C(v135);
          sub_1001AEEB4(v135, type metadata accessor for LocationViewComponent);
          v158 = v373;
          v157 = type metadata accessor for LocationViewComponent;
        }

        sub_1001AEEB4(v158, v157);
        sub_100006CD4();
        sub_1001AEEB4(v149, v160);
      }
    }

LABEL_28:
    if (*(v440 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._finalize()();
      sub_1000872B8();
      if (v161)
      {
        while (2)
        {
          v162 = 0x7469706963657270;
          switch(*(*(v440 + 48) + v135))
          {
            case 1:
              goto LABEL_33;
            case 2:
              sub_100087EF8();
              goto LABEL_33;
            case 3:
              v162 = sub_100008C94();
LABEL_33:
              v163 = sub_100013EDC(v162, 0xED00006E6F697461, v126);

              if (v163)
              {
                goto LABEL_37;
              }

              sub_1000D3DCC();
              if ((v164 & 1) == 0)
              {
                break;
              }

              continue;
            default:

LABEL_37:
              sub_100010A34((v435 + 56), *(v435 + 80));
              v165 = v374;
              sub_1008BA000(v436, _swiftEmptyArrayStorage, v374);
              v166 = sub_1000131C4();
              sub_1000038B4(v166, v167, v429);
              if (v208)
              {
                sub_1000180EC(v165, &qword_100CAE820, &unk_100A3E370);
              }

              else
              {
                sub_100011150();
                v168 = v165;
                v169 = v372;
                sub_1001A1114(v168, v372, v170);
                sub_1001AAF0C(v169);
                sub_1000093D0();
                sub_1001AEEB4(v169, v171);
              }

              goto LABEL_40;
          }

          break;
        }
      }
    }
  }

LABEL_40:
  v172 = sub_10051A880();
  v173 = v172;
  v174 = v431;
  v175 = v417 ^ 1 | v431;
  v176 = v429;
  v177 = v433;
  if ((v175 & 1) == 0 && !v172)
  {
    sub_10000CA1C();
    swift_storeEnumTagMultiPayload();
    sub_100040C60();
    sub_1000093D0();
    sub_1001AEEB4(v177, v178);
  }

  v179 = v394;
  sub_100035AD0(v434, v394, &qword_100CC3448, &unk_100A5C330);
  sub_1000038B4(v179, 1, v430);
  if (v208)
  {
    sub_1000180EC(v179, &qword_100CC3448, &unk_100A5C330);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_100028EE4();
      v181 = v379;
      sub_1001A1114(v179, v379, v182);
      sub_1000171D0();
      sub_100111570(v181, v177, v183);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      sub_100040C60();
      sub_1000093D0();
      sub_1001AEEB4(v177, v184);
      sub_10004EE84();
      v186 = v181;
      v174 = v431;
    }

    else
    {
      sub_100015228();
      v186 = v179;
    }

    sub_1001AEEB4(v186, v185);
  }

  v187 = v424;
  sub_10099C8B0(v438, v440, _swiftEmptyArrayStorage, v418, v424);
  sub_1001AAF0C(v187);
  if (!(v175 & 1 | !v173))
  {
    sub_10000CA1C();
    swift_storeEnumTagMultiPayload();
    sub_100040C60();
    sub_1000093D0();
    sub_1001AEEB4(v177, v188);
  }

  v189 = v397;
  v190 = v398;
  sub_100088920();
  v191();
  sub_100023648();
  v193 = v436;
  sub_100111570(v436, &v190[v192], v194);
  sub_100035B30(v435 + 96, &v190[*(v189 + 32)]);
  *v190 = v174;
  v195 = &v190[*(v189 + 24)];
  v196 = v425;
  *v195 = v440;
  v195[1] = v196;

  v197 = v428;
  sub_100281E10(v190, v428);
  sub_1001AEEB4(v190, type metadata accessor for LocationViewMapPosition.LocationMapConfiguration);
  v198 = v197;
  v199 = v399;
  sub_100035AD0(v198, v399, &qword_100CE9A98, &qword_100A9F118);
  type metadata accessor for LocationViewMapPosition(0);
  v200 = sub_10000C7F0();
  v420 = v201;
  sub_1000038B4(v200, v202, v201);
  v203 = v434;
  v204 = v430;
  if (v208)
  {
    sub_1000180EC(v199, &qword_100CE9A98, &qword_100A9F118);
  }

  else
  {
    v205 = sub_10000C7F0();
    v206 = v409;
    sub_1000038B4(v205, v207, v409);
    if (v208)
    {
      sub_10012CE64();
      sub_1001AEEB4(v199, v209);
    }

    else
    {
      v210 = v391;
      v211 = v138;
      v212 = v381;
      (*(v391 + 32))(v381, v199, v206);
      (*(v210 + 16))(v177, v212, v206);
      type metadata accessor for MapComponent(0);
      sub_100023648();
      sub_100111570(v193, &v177[v213], v214);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      v215 = sub_1000F00D0();
      sub_1001AAF0C(v215);
      sub_1000093D0();
      sub_1001AEEB4(v177, v216);
      v217 = v212;
      v138 = v211;
      v203 = v434;
      (*(v210 + 8))(v217, v206);
    }
  }

  v218 = v407;
  v219 = v395;
  sub_100035AD0(v203, v395, &qword_100CC3448, &unk_100A5C330);
  v220 = sub_10000C7F0();
  sub_1000038B4(v220, v221, v204);
  if (v208)
  {
    sub_1000180EC(v219, &qword_100CC3448, &unk_100A5C330);
  }

  else
  {
    sub_100004464();
    v222 = swift_getEnumCaseMultiPayload();
    if (v222 == 2)
    {
      sub_100028EE4();
      v223 = v380;
      sub_1001A1114(v219, v380, v224);
      sub_1000171D0();
      sub_100111570(v223, v177, v225);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      v226 = sub_1000F00D0();
      sub_1001AAF0C(v226);
      sub_1000093D0();
      sub_1001AEEB4(v177, v227);
      sub_10004EE84();
      v229 = v223;
    }

    else
    {
      sub_100015228();
      v229 = v219;
    }

    sub_1001AEEB4(v229, v228);
  }

  v431 = *(v396 + 24);
  WeatherDataModel.currentWeather.getter();
  v230 = *&v438[v432[5]];
  *&v177[*(type metadata accessor for DailyForecastComponent(0) + 20)] = v230;
  sub_10000CA1C();
  swift_storeEnumTagMultiPayload();

  v231 = sub_1000F00D0();
  sub_1001AAF0C(v231);
  sub_1000093D0();
  sub_1001AEEB4(v177, v232);
  if (!v423)
  {
    *v177 = 0;
    sub_10000CA1C();
    swift_storeEnumTagMultiPayload();
    v233 = sub_1000F00D0();
    sub_1001AAF0C(v233);
    sub_1000093D0();
    sub_1001AEEB4(v177, v234);
  }

  v235 = v401;
  sub_100035AD0(v203, v401, &qword_100CC3448, &unk_100A5C330);
  v236 = sub_10000C7F0();
  sub_1000038B4(v236, v237, v204);
  if (v208)
  {
    sub_1000180EC(v235, &qword_100CC3448, &unk_100A5C330);
  }

  else
  {
    sub_100004464();
    v238 = swift_getEnumCaseMultiPayload();
    if (v238 == 3)
    {
      sub_100028EE4();
      v239 = v382;
      sub_1001A1114(v235, v382, v240);
      sub_1000171D0();
      sub_100111570(v239, v177, v241);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      v242 = sub_1000F00D0();
      sub_1001AAF0C(v242);
      sub_1000093D0();
      sub_1001AEEB4(v177, v243);
      sub_10004EE84();
      v245 = v239;
    }

    else
    {
      sub_100015228();
      v245 = v235;
    }

    sub_1001AEEB4(v245, v244);
  }

  sub_100010A34((v435 + 56), *(v435 + 80));
  sub_1008BA000(v193, _swiftEmptyArrayStorage, v138);
  sub_1000038B4(v138, 1, v176);
  if (v208)
  {
    sub_1000180EC(v138, &qword_100CAE820, &unk_100A3E370);
  }

  else
  {
    sub_100011150();
    v246 = v389;
    sub_1001A1114(v138, v389, v247);
    sub_1001AAF0C(v246);
    sub_1000093D0();
    sub_1001AEEB4(v246, v248);
  }

  sub_100035AD0(v428, v218, &qword_100CE9A98, &qword_100A9F118);
  sub_1000038B4(v218, 1, v420);
  if (v208)
  {
    sub_1000180EC(v218, &qword_100CE9A98, &qword_100A9F118);
  }

  else
  {
    v249 = v409;
    v250 = sub_100024D10(v218, 1, v409);
    sub_10012CE64();
    sub_1001AEEB4(v218, v251);
    if (v250 == 1)
    {
      sub_1000161C0((v435 + 96), *(v435 + 120));
      v252 = v383;
      Location.identifier.getter();
      v253 = v386;
      v204 = v430;
      sub_100523678(v193 + v431, v440, v425, v252, v386);
      (*(v384 + 8))(v252, v385);
      v254 = v391;
      (*(v391 + 16))(v177, v253, v249);
      type metadata accessor for MapComponent(0);
      sub_100023648();
      sub_100111570(v193, &v177[v255], v256);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      v257 = sub_1000F00D0();
      sub_1001AAF0C(v257);
      sub_1000093D0();
      sub_1001AEEB4(v177, v258);
      (*(v254 + 8))(v253, v249);
    }
  }

  sub_100038094(v435);
  v260 = v421;
  v259 = v422;
  v402(v421, enum case for WeatherAlert.Prominence.low(_:), v422);
  v261 = v408;
  v262 = v425;
  sub_1008BB370(v408);

  v404(v260, v259);
  v263 = sub_1000162A4();
  sub_1000038B4(v263, v264, v176);
  if (v208)
  {
    sub_1000180EC(v261, &qword_100CAE820, &unk_100A3E370);
  }

  else
  {
    sub_100011150();
    v259 = v390;
    sub_1001A1114(v261, v390, v265);
    sub_1001AAF0C(v259);
    sub_1000093D0();
    sub_1001AEEB4(v259, v266);
  }

  v267 = v406;
  sub_100035AD0(v434, v406, &qword_100CC3448, &unk_100A5C330);
  v268 = sub_10000C7F0();
  sub_1000038B4(v268, v269, v204);
  if (v208)
  {
    sub_1000180EC(v267, &qword_100CC3448, &unk_100A5C330);
  }

  else
  {
    sub_100004464();
    v270 = swift_getEnumCaseMultiPayload();
    if (v270 == 4)
    {
      sub_100028EE4();
      v271 = v387;
      sub_1001A1114(v267, v387, v272);
      sub_1000171D0();
      sub_100111570(v271, v177, v273);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      v274 = sub_1000F00D0();
      sub_1001AAF0C(v274);
      sub_1000093D0();
      sub_1001AEEB4(v177, v275);
      sub_10004EE84();
      v277 = v271;
    }

    else
    {
      sub_100015228();
      v277 = v267;
    }

    sub_1001AEEB4(v277, v276);
  }

  if (qword_100CA29D0 != -1)
  {
    swift_once();
  }

  sub_1009A0E60();
  sub_100004464();
  Configurable.setting<A>(_:)();
  if (v443[0] == 1)
  {
    goto LABEL_95;
  }

  v314 = v392;
  WeatherDataModel.historicalComparisons.getter();
  v315 = type metadata accessor for HistoricalComparisons();
  v316 = sub_1000131C4();
  sub_1000038B4(v316, v317, v315);
  if (v208)
  {
    sub_1000180EC(v314, &qword_100CABD10, &qword_100A3ABB0);
  }

  else
  {
    v318 = HistoricalComparisons.hasDeviationsFromTrend.getter();
    (*(*(v315 - 8) + 8))(v314, v315);
    if (v318)
    {
LABEL_95:
      v425 = sub_10022C350(&qword_100CAE830, &unk_100A9F120);
      v278 = *(v410 + 72);
      v435 = *(v410 + 80);
      v427 = ((v435 + 32) & ~v435) + 2 * v278;
      v279 = (v435 + 32) & ~v435;
      v421 = v279;
      v280 = swift_allocObject();
      v440 = xmmword_100A2D320;
      *(v280 + 16) = xmmword_100A2D320;
      WeatherDataModel.historicalComparisons.getter();
      sub_100020E44();
      swift_storeEnumTagMultiPayload();
      v281 = sub_100086668();
      v422 = v278;
      sub_100111570(v281, v280 + v279 + v278, v282);
      swift_storeEnumTagMultiPayload();
      sub_1001AB364(v280);
      swift_setDeallocating();
      sub_1001AEBE4();
      WeatherDataModel.currentWeather.getter();
      v283 = v262;
      sub_1000C8B80(v443);
      v284 = type metadata accessor for WindComponent(0);
      sub_1000C8B80(&v177[*(v284 + 20)]);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      sub_1001A86C8(v443, v442);
      sub_100040C60();
      sub_1000093D0();
      v420 = v285;
      sub_1001AEEB4(v177, v286);
      v287 = sub_1000378E8();
      sub_1000524DC(v287);
      v288 = v421;
      v290 = v289 + v421;
      WeatherDataModel.currentWeather.getter();
      v291 = v432[10];
      type metadata accessor for UVIndexComponent(0);
      sub_1000438DC();
      sub_100111570(v283 + v291, v290 + v292, v293);
      WeatherDataModel.dailyForecast.getter();
      WeatherDataModel.hourlyForecast.getter();
      swift_storeEnumTagMultiPayload();
      WeatherDataModel.currentWeather.getter();
      WeatherDataModel.dailyForecast.getter();
      SunriseSunsetModel.init(currentWeather:dailyForecast:)();
      swift_storeEnumTagMultiPayload();
      v294 = sub_1000F00D0();
      sub_1001AB364(v294);
      swift_setDeallocating();
      sub_1001AEBE4();
      v295 = sub_1000378E8();
      sub_1000524DC(v295);
      v297 = (v296 + v288);
      v298 = v432;
      v299 = v432[9];
      v300 = v438;
      memcpy(v442, &v438[v299], 0x80uLL);
      memcpy(v297, &v438[v299], 0x80uLL);
      swift_storeEnumTagMultiPayload();
      sub_1001AEF0C(v442, v441);
      v301 = v436;
      WeatherDataModel.currentWeather.getter();
      v302 = &v300[v298[11]];
      v303 = *(v302 + 2);
      v304 = *(v302 + 3);
      v305 = *(v302 + 4);
      v306 = *(v302 + 5);
      v307 = type metadata accessor for VisibilityComponent(0);
      sub_100040D48(v307);
      v308[2] = v303;
      v308[3] = v304;
      v308[4] = v305;
      v308[5] = v306;
      swift_storeEnumTagMultiPayload();

      sub_1001AB364(v177);
      swift_setDeallocating();
      v309 = v433;
      sub_1001AEBE4();
      sub_100023648();
      sub_100111570(v301, v309, v310);
      sub_100020E44();
      swift_storeEnumTagMultiPayload();
      sub_1001AAF0C(v309);
      sub_1001AEEB4(v309, v420);
      v311 = sub_1000378E8();
      *(v311 + 16) = v440;
      WeatherDataModel.currentWeather.getter();
      sub_100045460();
      swift_storeEnumTagMultiPayload();
      WeatherDataModel.currentWeather.getter();
      v312 = type metadata accessor for PressureComponent(0);
      sub_10007188C(v312);
      sub_100045460();
      swift_storeEnumTagMultiPayload();
      v313 = v311;
      goto LABEL_101;
    }
  }

  v319 = sub_10022C350(&qword_100CAE830, &unk_100A9F120);
  v320 = *(v410 + 72);
  v421 = *(v410 + 80);
  v422 = v319;
  v435 = ((v421 + 32) & ~v421) + 2 * v320;
  v321 = v320;
  v425 = v320;
  v322 = (v421 + 32) & ~v421;
  v427 = v322;
  v323 = swift_allocObject();
  v440 = xmmword_100A2D320;
  *(v323 + 16) = xmmword_100A2D320;
  v324 = v323 + v322;
  v325 = sub_100086668();
  sub_100111570(v325, v324, v326);
  swift_storeEnumTagMultiPayload();
  v327 = v324 + v321;
  WeatherDataModel.currentWeather.getter();
  v328 = *(v259 + 40);
  v329 = type metadata accessor for UVIndexComponent(0);
  sub_1000438DC();
  sub_100111570(v262 + v328, v327 + v330, v331);
  WeatherDataModel.dailyForecast.getter();
  WeatherDataModel.hourlyForecast.getter();
  swift_storeEnumTagMultiPayload();
  sub_1001AB364(v323);
  swift_setDeallocating();
  sub_1001AEBE4();
  WeatherDataModel.currentWeather.getter();
  sub_1000C8B80(v443);
  v332 = type metadata accessor for WindComponent(0);
  sub_1000C8B80(&v433[*(v332 + 20)]);
  swift_storeEnumTagMultiPayload();
  sub_1001A86C8(v443, v442);
  sub_1001AAF0C(v433);
  sub_1000093D0();
  v420 = v333;
  sub_1001AEEB4(v433, v334);
  v335 = swift_allocObject();
  sub_1000524DC(v335);
  v337 = v336 + v427;
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.dailyForecast.getter();
  SunriseSunsetModel.init(currentWeather:dailyForecast:)();
  swift_storeEnumTagMultiPayload();
  v338 = v432;
  v339 = v432[9];
  memcpy(v442, (v262 + v339), 0x80uLL);
  memcpy(v425 + v337, (v262 + v339), 0x80uLL);
  swift_storeEnumTagMultiPayload();
  sub_1001AEF0C(v442, v441);
  v340 = sub_1000F00D0();
  sub_1001AB364(v340);
  swift_setDeallocating();
  sub_1001AEBE4();
  v341 = swift_allocObject();
  sub_1000524DC(v341);
  WeatherDataModel.currentWeather.getter();
  v342 = (v262 + v338[11]);
  v343 = v342[2];
  v344 = v342[3];
  v345 = v342[4];
  v346 = v342[5];
  v347 = type metadata accessor for VisibilityComponent(0);
  sub_100040D48(v347);
  v348[2] = v343;
  v348[3] = v344;
  v348[4] = v345;
  v348[5] = v346;
  swift_storeEnumTagMultiPayload();

  v349 = v436;
  WeatherDataModel.currentWeather.getter();
  swift_storeEnumTagMultiPayload();
  sub_1001AB364(v329);
  swift_setDeallocating();
  v309 = v433;
  sub_1001AEBE4();
  sub_100023648();
  sub_100111570(v349, v309, v350);
  sub_100020E44();
  swift_storeEnumTagMultiPayload();
  sub_1001AAF0C(v309);
  sub_1001AEEB4(v309, v420);
  v351 = swift_allocObject();
  *(v351 + 16) = v440;
  WeatherDataModel.historicalComparisons.getter();
  sub_100045460();
  swift_storeEnumTagMultiPayload();
  WeatherDataModel.currentWeather.getter();
  v352 = type metadata accessor for PressureComponent(0);
  sub_10007188C(v352);
  sub_100045460();
  swift_storeEnumTagMultiPayload();
  v313 = v351;
LABEL_101:
  sub_1001AB364(v313);
  swift_setDeallocating();
  sub_1001AEBE4();
  v353 = v434;
  v354 = v415;
  sub_100035AD0(v434, v415, &qword_100CC3448, &unk_100A5C330);
  v355 = sub_10000C7F0();
  sub_1000038B4(v355, v356, v430);
  v357 = v428;
  v358 = v436;
  if (v208)
  {
    sub_1000180EC(v354, &qword_100CC3448, &unk_100A5C330);
  }

  else
  {
    v359 = swift_getEnumCaseMultiPayload();
    if (v359 == 5)
    {
      sub_100028EE4();
      v360 = v388;
      sub_1001A1114(v354, v388, v361);
      sub_1000171D0();
      sub_100111570(v360, v309, v362);
      sub_100020E44();
      swift_storeEnumTagMultiPayload();
      sub_1001AAF0C(v309);
      sub_1000093D0();
      sub_1001AEEB4(v309, v363);
      sub_10004EE84();
      v365 = v360;
    }

    else
    {
      sub_100015228();
      v365 = v354;
    }

    sub_1001AEEB4(v365, v364);
  }

  if (v423 == 1)
  {
    *v309 = 1;
    sub_100020E44();
    swift_storeEnumTagMultiPayload();
    sub_1001AAF0C(v309);
    sub_1000093D0();
    sub_1001AEEB4(v309, v366);
  }

  sub_1000180EC(v357, &qword_100CE9A98, &qword_100A9F118);
  sub_1000093D0();
  sub_1001AEEB4(v424, v367);
  sub_1000180EC(v353, &qword_100CC3448, &unk_100A5C330);
  sub_10001D404();
  sub_1001AEEB4(v438, v368);
  sub_1001AEEB4(v358, type metadata accessor for WeatherData);
  (*(v416 + 8))(v437, v426);
  swift_beginAccess();
  v369 = *(v439 + 16);
  swift_setDeallocating();

  sub_1001AF5DC();
  swift_deallocClassInstance();
  return v369;
}

void sub_1001AAC5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0x6E6F697461636F4CLL, 0xED00007475706E49, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000011, 0x8000000100ABC0E0, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_1001AAF0C(uint64_t a1)
{
  sub_10022C350(&qword_100CAE830, &unk_100A9F120);
  v2 = *(type metadata accessor for LocationViewComponent(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  sub_1001AB2F0(a1, v4 + v3);
  sub_1001AB364(v4);
  swift_setDeallocating();
  return sub_1001AEBE4();
}

uint64_t type metadata accessor for LocationViewComponent(uint64_t a1)
{
  result = qword_100CCEC78;
  if (!qword_100CCEC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AB03C(double a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = sub_10022C350(&qword_100CA4680, &unk_100A59690);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - v8;
  v10 = type metadata accessor for NamedCoordinateSpace();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  v14 = *&v25[3];
  v15 = *&v25[4];
  v16 = *&v25[5];
  v17 = *&v25[6];
  (*(v11 + 8))(v13, v10);
  if (v26)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  if (v26)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v15;
  }

  if (v26)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v16;
  }

  if (v26)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v17;
  }

  CGRectGetMinY(*&v18);
  v22 = type metadata accessor for EmptyVisualEffect();
  v23 = sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  v25[1] = v22;
  v25[2] = v23;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001AB2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB364(uint64_t a1)
{
  v47 = type metadata accessor for LocationViewComponent(0);
  v2 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v41 - v5;
  __chkstk_darwin(v7);
  v43 = &v41 - v8;
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = 0;
  v45 = a1;
  v16 = *(a1 + 16);
  v44 = _swiftEmptyArrayStorage;
  while (v16 != v15)
  {
    v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v18 = *(v2 + 72);
    sub_1001AB2F0(v45 + v17 + v18 * v15, v14);
    v19 = *(v46 + 24);
    sub_1001AB2F0(v14, v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    v21 = 10;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_1001AC2E8(v11);
        v21 = 1;
        break;
      case 2:
        sub_1001AC2E8(v11);
        v21 = 2;
        break;
      case 3:
        sub_1001AC2E8(v11);
        v21 = 3;
        break;
      case 4:
        sub_1001AC2E8(v11);
        v21 = 4;
        break;
      case 5:
        sub_1001AC2E8(v11);
        v21 = 5;
        break;
      case 6:
        sub_1001AC2E8(v11);
        v21 = 6;
        break;
      case 7:
        sub_1001AC2E8(v11);
        v21 = 7;
        break;
      case 8:
        sub_1001AC2E8(v11);
        v21 = 8;
        break;
      case 9:
        sub_1001AC2E8(v11);
        v21 = 9;
        break;
      case 10:
        sub_1001AC2E8(v11);
        v21 = 11;
        break;
      case 11:
        sub_1001AC2E8(v11);
        v21 = 12;
        break;
      case 12:
        v21 = 13;
        break;
      case 13:
        sub_1001AC2E8(v11);
        v21 = 14;
        break;
      case 14:
        sub_1001AC2E8(v11);
        v21 = 15;
        break;
      case 15:
        sub_1001AC2E8(v11);
        v21 = 16;
        break;
      case 16:
        sub_1001AC2E8(v11);
        v21 = 17;
        break;
      case 17:
        sub_1001AC2E8(v11);
        v21 = 18;
        break;
      case 18:
        sub_1001AC2E8(v11);
        v21 = 19;
        break;
      case 19:
        break;
      default:
        sub_1001AC2E8(v11);
        v21 = 0;
        break;
    }

    v22 = sub_1001AC348(v21, v19);

    if (v22)
    {
      sub_1001AC2E8(v14);
      ++v15;
    }

    else
    {
      sub_1001AD0C4(v14, v43);
      v23 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001AD128();
        v23 = v48;
      }

      v25 = v23[2];
      v26 = (v25 + 1);
      if (v25 >= v23[3] >> 1)
      {
        v44 = (v25 + 1);
        sub_1001AD128();
        v26 = v44;
        v23 = v48;
      }

      ++v15;
      v23[2] = v26;
      v44 = v23;
      sub_1001AD0C4(v43, v23 + v17 + v25 * v18);
    }
  }

  v27 = v44;
  v28 = v44[2];
  if (!v28)
  {
  }

  v29 = *(v46 + 24);
  v48 = _swiftEmptyArrayStorage;

  sub_1001AD774();
  v30 = v48;
  v31 = v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v32 = *(v2 + 72);
  v33 = v42;
  do
  {
    sub_1001AB2F0(v31, v6);
    sub_1001AB2F0(v6, v33);
    v34 = 10;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1001AC2E8(v33);
        v34 = 1;
        break;
      case 2u:
        sub_1001AC2E8(v33);
        v34 = 2;
        break;
      case 3u:
        sub_1001AC2E8(v33);
        v34 = 3;
        break;
      case 4u:
        sub_1001AC2E8(v33);
        v34 = 4;
        break;
      case 5u:
        sub_1001AC2E8(v33);
        v34 = 5;
        break;
      case 6u:
        sub_1001AC2E8(v33);
        v34 = 6;
        break;
      case 7u:
        sub_1001AC2E8(v33);
        v34 = 7;
        break;
      case 8u:
        sub_1001AC2E8(v33);
        v34 = 8;
        break;
      case 9u:
        sub_1001AC2E8(v33);
        v34 = 9;
        break;
      case 0xAu:
        sub_1001AC2E8(v33);
        v34 = 11;
        break;
      case 0xBu:
        sub_1001AC2E8(v33);
        v34 = 12;
        break;
      case 0xCu:
        v34 = 13;
        break;
      case 0xDu:
        sub_1001AC2E8(v33);
        v34 = 14;
        break;
      case 0xEu:
        sub_1001AC2E8(v33);
        v34 = 15;
        break;
      case 0xFu:
        sub_1001AC2E8(v33);
        v34 = 16;
        break;
      case 0x10u:
        sub_1001AC2E8(v33);
        v34 = 17;
        break;
      case 0x11u:
        sub_1001AC2E8(v33);
        v34 = 18;
        break;
      case 0x12u:
        sub_1001AC2E8(v33);
        v34 = 19;
        break;
      case 0x13u:
        break;
      default:
        sub_1001AC2E8(v33);
        v34 = 0;
        break;
    }

    sub_1001AC2E8(v6);
    v48 = v30;
    v35 = *(v30 + 16);
    if (v35 >= *(v30 + 24) >> 1)
    {
      sub_1001AD774();
      v30 = v48;
    }

    *(v30 + 16) = v35 + 1;
    *(v30 + v35 + 32) = v34;
    v31 += v32;
    --v28;
  }

  while (v28);
  v36 = sub_1001ADC30(v30, v29);
  v37 = v46;
  *(v46 + 24) = v36;

  swift_beginAccess();
  sub_10051A9D8(sub_1001AF4C4);
  v38 = *(*(v37 + 16) + 16);
  sub_1001AEA30(v38);
  v39 = *(v37 + 16);
  *(v39 + 16) = v38 + 1;
  *(v39 + 8 * v38 + 32) = v44;
  *(v37 + 16) = v39;
  return swift_endAccess();
}

void *sub_1001ABA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v3 = type metadata accessor for RowMaskModifier(0);
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = v4;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(v3 + 20);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    v11 = *v9;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v10, 0);
    (*(v6 + 8))(v8, v5);
    v11 = *__src;
  }

  sub_1001AC764();
  v13 = v2 + *(v3 + 24);
  v29 = v2;
  v14 = *(v13 + 16);
  __src[0] = *v13;
  *&__src[1] = v14;
  sub_10022C350(&qword_100CC22D0, &qword_100A5AE08);
  State.wrappedValue.getter();
  __src[0] = v34;
  sub_10022C350(&qword_100CC22D8, &qword_100A5AE10);
  sub_10023FBF4(&qword_100CC22E0, &qword_100CC22D8, &qword_100A5AE10, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_1001ACC6C();
  View.onChange<A>(of:initial:_:)();
  sub_1001993DC();
  v15 = (((*(v31 + 80) + 16) & ~*(v31 + 80)) + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1001AD070();
  *(v17 + v15) = v11 + -15.0;
  *(v17 + v16) = v11 + -15.0 + 10.0;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v18 = v29;
  sub_1001993DC();
  v19 = swift_allocObject();
  sub_1001AD070();
  v20 = sub_10022C350(&qword_100CC22F0, &qword_100A5AE18);
  v21 = v33;
  v22 = (v33 + *(v20 + 36));
  *v22 = sub_1005018D8;
  v22[1] = v17;
  v22[2] = sub_100501994;
  v22[3] = v19;
  v23 = static Alignment.center.getter();
  v25 = v24;
  sub_1001ACE04(v18, __src);
  v26 = (v21 + *(sub_10022C350(&qword_100CC22F8, &qword_100A5AE20) + 36));
  *v26 = v23;
  v26[1] = v25;
  return memcpy(v26 + 2, __src, 0x51uLL);
}

uint64_t sub_1001ABEE4()
{
  sub_100020DF0();
  type metadata accessor for RowMaskModifier(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_10022C350(&qword_100CC0970, &qword_100A592A8);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LocationComponentHeaderViewModel(0);
    sub_100031D74();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 4u:

        goto LABEL_8;
      case 1u:

        goto LABEL_8;
      case 2u:

        goto LABEL_8;
      case 3u:
        type metadata accessor for WeatherDescription();
        sub_100003D98();
        (*(v4 + 8))(v1 + v3);
        type metadata accessor for LocationComponentHeaderViewModel.Description(0);

LABEL_8:

        break;
      default:
        break;
    }
  }

  else
  {
  }

  sub_1001923A8();
  sub_100037B34(*(v0 + 20));

  sub_1000212EC();

  return swift_deallocObject();
}

uint64_t sub_1001AC0EC()
{
  sub_100020DF0();
  type metadata accessor for RowMaskModifier(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_10022C350(&qword_100CC0970, &qword_100A592A8);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LocationComponentHeaderViewModel(0);
    sub_100031D74();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 4u:

        goto LABEL_8;
      case 1u:

        goto LABEL_8;
      case 2u:

        goto LABEL_8;
      case 3u:
        type metadata accessor for WeatherDescription();
        sub_100003D98();
        (*(v4 + 8))(v1 + v3);
        type metadata accessor for LocationComponentHeaderViewModel.Description(0);

LABEL_8:

        break;
      default:
        break;
    }
  }

  else
  {
  }

  sub_100037B34(*(v0 + 20));

  sub_1000212EC();

  return swift_deallocObject();
}

uint64_t sub_1001AC2E8(uint64_t a1)
{
  v2 = type metadata accessor for LocationViewComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001AC348(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1000D3C30(a1, a2), Hasher.init(_seed:)(), sub_1001AC9D8(v3), String.hash(into:)(), , Hasher._finalize()(), sub_100017C58(), (v6 & 1) != 0))
  {
    sub_1006A9D44();
    sub_1000103C4();
    v27 = v7;
    v28 = v8;
    sub_1000103C4();
    v26 = v10;
    while (1)
    {
      v11 = 0xEA00000000007974;
      v12 = v5;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v12 = sub_100192554();
          goto LABEL_14;
        case 2:
          v12 = sub_100044E4C();
          break;
        case 3:
          v12 = sub_100079548();
          break;
        case 4:
          v12 = sub_100042738();
          break;
        case 5:
          v11 = 0xE300000000000000;
          v12 = 7364973;
          break;
        case 6:
          v11 = 0xE400000000000000;
          v12 = 1852796781;
          break;
        case 7:
          v12 = sub_1000AF60C();
          goto LABEL_17;
        case 8:
          sub_10012CD94();
          v12 = v14 + 3;
          v11 = 0x8000000100ABACA0;
          break;
        case 9:
          v12 = sub_100192350();
          v11 = v26;
          break;
        case 0xA:
          sub_10012CD94();
          v12 = v13 + 9;
          v11 = v27;
          break;
        case 0xB:
          v12 = sub_10019240C();
          break;
        case 0xC:
          v12 = sub_100192350();
          v11 = v28;
          break;
        case 0xD:
          v12 = sub_1000B0CB0();
          goto LABEL_21;
        case 0xE:
          v12 = sub_100037864();
LABEL_17:
          v11 = 0xEB00000000007974;
          break;
        case 0xF:
          v12 = sub_100051ACC();
LABEL_14:
          v11 = 0xEA00007400007974;
LABEL_21:
          v11 = v11 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x10:
          v12 = sub_1000B7BC0();
          break;
        case 0x11:
          v12 = sub_100171200();
          break;
        case 0x12:
          v12 = sub_1006A9D30();
          break;
        case 0x13:
          v12 = sub_100008C94();
          break;
        default:
          break;
      }

      v15 = v5;
      v16 = 0xEA00000000007974;
      switch(v3)
      {
        case 1:
          sub_1000E0F7C();
          v17 = 1935762277;
          goto LABEL_37;
        case 2:
          sub_100092648();
          v16 = 0xE900000000000065;
          break;
        case 3:
          sub_10019555C();
          v16 = 0xEE00747361636572;
          break;
        case 4:
          v16 = 0xE800000000000000;
          sub_1006A9D10();
          break;
        case 5:
          v16 = 0xE300000000000000;
          v15 = 7364973;
          break;
        case 6:
          v16 = 0xE400000000000000;
          v15 = 1852796781;
          break;
        case 7:
          sub_1000C8B20();
          v18 = 6646883;
          goto LABEL_40;
        case 8:
          sub_10012CD94();
          v15 = v21 + 3;
          v16 = 0x8000000100ABACA0;
          break;
        case 9:
          sub_1006A9D04();
          v16 = v26;
          break;
        case 10:
          sub_10012CD94();
          v15 = v20 + 9;
          v16 = v27;
          break;
        case 11:
          v16 = 0xE800000000000000;
          sub_1001994BC();
          break;
        case 12:
          sub_1006A9D04();
          v16 = v28;
          break;
        case 13:
          sub_100040CE4();
          v19 = 0x7265687461;
          goto LABEL_44;
        case 14:
          sub_1001AD02C();
          v18 = 7631461;
LABEL_40:
          v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 15:
          sub_1000B9808();
          v17 = 1702063733;
LABEL_37:
          v19 = v17 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_44:
          v16 = v19 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 16:
          v16 = 0xE800000000000000;
          sub_1000FD158();
          break;
        case 17:
          v16 = 0xE700000000000000;
          sub_100045258();
          break;
        case 18:
          sub_100040E10();
          break;
        case 19:
          v16 = 0xE400000000000000;
          v15 = 1684957559;
          break;
        default:
          break;
      }

      if (v12 == v15 && v11 == v16)
      {
        break;
      }

      v23 = sub_1000E13E8(v12, v9, v15);

      if ((v23 & 1) == 0)
      {
        sub_10002531C();
        if (v24)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

BOOL sub_1001AC764()
{
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10001365C();
  v2 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_1000426CC();
  sub_10022C350(&qword_100CC0970, &qword_100A592A8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  v7 = sub_10016DB38();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_1005026A8();
  sub_1000302D8(v9, v10, v11, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001AD070();
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    sub_100016A84(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    sub_10002C598();
    swift_getAtKeyPath();

    (*(v4 + 8))(v0, v2);
  }

  sub_1001993DC();
  v15 = swift_getEnumCaseMultiPayload() == 4;
  sub_100192034();
  sub_100192034();
  return v15;
}

unint64_t sub_1001AC9D8(char a1)
{
  result = 0x696C617551726961;
  switch(a1)
  {
    case 1:
      result = 0x726F46796C696164;
      break;
    case 2:
      result = 0x6B694C736C656566;
      break;
    case 3:
      result = 0x6F46796C72756F68;
      break;
    case 4:
      result = 0x79746964696D7568;
      break;
    case 5:
      result = 7364973;
      break;
    case 6:
      result = 1852796781;
      break;
    case 7:
      result = 0x697472417377656ELL;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0x6572757373657270;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x655774726F706572;
      break;
    case 14:
      result = 0x6C41657265766573;
      break;
    case 15:
      result = 0x53657369726E7573;
      break;
    case 16:
      result = 0x7365676172657661;
      break;
    case 17:
      result = 0x7865646E497675;
      break;
    case 18:
      result = 0x696C696269736976;
      break;
    case 19:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001ACC6C()
{
  result = qword_100CC22E8;
  if (!qword_100CC22E8)
  {
    result = swift_getWitnessTable(byte_100A5ACF0, &type metadata for RowMaskModifier.RowGeometry, v0, v1);
    atomic_store(result, &qword_100CC22E8);
  }

  return result;
}

uint64_t sub_1001ACCC0()
{
  v2 = v1;
  v3 = sub_10000C76C();
  type metadata accessor for LocationWeatherDataState(v3);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_100006610();
  sub_1001A0E7C(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = *(sub_10022C350(&qword_100CA75D8, &unk_100A32600) + 64);
      sub_10002307C();
      sub_1001A10BC(v7 + v13, v0);
      type metadata accessor for PreprocessedWeatherData(0);
      v14 = sub_1000164D8();
      sub_10001B350(v14, v15, 1, v16);
      sub_10001CB98();
      sub_1001A126C(v7 + v12, v17);
      sub_10001F620();
      result = sub_1001A126C(v7, v18);
      break;
    case 3u:
      goto LABEL_3;
    default:
      sub_1001A126C(v7, type metadata accessor for LocationWeatherDataState);
LABEL_3:
      type metadata accessor for PreprocessedWeatherData(0);
      v8 = sub_1000719C8();
      result = sub_10001B350(v8, v9, 1, v10);
      break;
  }

  return result;
}

void *sub_1001ACE04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_1001AC764())
  {
    static HorizontalAlignment.center.getter();
    sub_1004F73F4(a1, __src);
    __src[0] = __src[8];
  }

  sub_10022C350(&qword_100CC2300, &qword_100A5AE28);
  sub_10022C350(&qword_100CC0FD0, &qword_100A59DB0);
  sub_10023FBF4(&qword_100CC2308, &qword_100CC2300, &qword_100A5AE28, &protocol conformance descriptor for VStack<A>);
  sub_10023FBF4(&qword_100CC2310, &qword_100CC0FD0, &qword_100A59DB0, &protocol conformance descriptor for OffsetShape<A>);
  _ConditionalContent<>.init(storage:)();
  return memcpy(a2, __src, 0x51uLL);
}

void sub_1001ACFB8(uint64_t a1, unint64_t *a2)
{

  sub_1002D5E34(319, a2, type metadata accessor for LocationComponentContainerViewModel);
}

void sub_1001AD00C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1001AD070()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_1001AD0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AD180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v2 + *(type metadata accessor for PinningHeaderModifier(0) + 24));
  v13 = *v12;
  LODWORD(v12) = *(v12 + 8);
  v30 = v9;
  if (v12 == 1)
  {
    v14 = *&v13;
    v15 = *&v13;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    v29[0] = v5;
    v17 = v16;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v13, 0);
    v29[1] = a1;
    v18 = *(v9 + 8);
    v18(v11, v8);
    v15 = v32;

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v5 = v29[0];
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v13, 0);
    v18(v11, v8);
    v14 = v32;
  }

  sub_10019200C();
  v20 = *&v7[*(v5 + 24)];
  sub_100192034();
  v21 = *v2;
  if (*(v3 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v21, 0);
    (*(v30 + 8))(v11, v8);
    LOBYTE(v21) = LOBYTE(v32);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v21 & 1;
  *(v23 + 24) = v15 + 11.0;
  *(v23 + 32) = v14 + v20;
  sub_10022C350(&qword_100CC2460, &qword_100A5AF28);
  sub_10022C350(&qword_100CA4670, &unk_100A2E850);
  sub_10023FBF4(&qword_100CC2468, &qword_100CC2460, &qword_100A5AF28, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v24 = sub_10022E824(&qword_100CA4680, &unk_100A59690);
  v25 = type metadata accessor for EmptyVisualEffect();
  v26 = sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v32 = *&v25;
  v33 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = *&v24;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

uint64_t sub_1001AD648()
{

  if (*(v0 + 56))
  {
    sub_100006F14((v0 + 32));
  }

  return swift_deallocObject();
}

void sub_1001AD6BC()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_1000BAF18(v7, v8, v9, v10, v11, v12);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    sub_1000D3DB0(v14);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = sub_1000B99E0();
  if (v1)
  {
    if (v13 != v0 || &v16[v2] <= v15)
    {
      memmove(v15, v16, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, v2);
  }
}

uint64_t sub_1001AD7B8(_BYTE *a1, Swift::Int a2)
{
  v4 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  sub_1001AC9D8(a2);
  String.hash(into:)();

  Hasher._finalize()();
  sub_100069850();
  if (v7)
  {
    sub_1000103C4();
    v31 = v8;
    v32 = v9;
    sub_1000103C4();
    v29 = v11;
    v30 = v12;
    while (1)
    {
      v13 = 0xEA00000000007974;
      v14 = 0x696C617551726961;
      switch(*(*(v6 + 48) + v3))
      {
        case 1:
          v14 = sub_100192554();
          goto LABEL_13;
        case 2:
          v14 = sub_100044E4C();
          break;
        case 3:
          v14 = sub_100079548();
          break;
        case 4:
          v14 = sub_100042738();
          break;
        case 5:
          v13 = 0xE300000000000000;
          v14 = 7364973;
          break;
        case 6:
          v13 = 0xE400000000000000;
          v14 = 1852796781;
          break;
        case 7:
          v14 = sub_1000AF60C();
          goto LABEL_16;
        case 8:
          sub_10012CD94();
          v14 = v16 + 3;
          v13 = v29;
          break;
        case 9:
          v14 = sub_100192350();
          v13 = v30;
          break;
        case 0xA:
          sub_10012CD94();
          v14 = v15 + 9;
          v13 = v31;
          break;
        case 0xB:
          v14 = sub_10019240C();
          break;
        case 0xC:
          v14 = sub_100192350();
          v13 = v32;
          break;
        case 0xD:
          v14 = sub_1000B0CB0();
          goto LABEL_20;
        case 0xE:
          v14 = sub_100037864();
LABEL_16:
          v13 = 0xEB00000000007974;
          break;
        case 0xF:
          v14 = sub_100051ACC();
LABEL_13:
          v13 = 0xEA00007400007974;
LABEL_20:
          v13 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x10:
          v14 = sub_1000B7BC0();
          break;
        case 0x11:
          v14 = sub_100171200();
          break;
        case 0x12:
          v14 = sub_1006A9D30();
          break;
        case 0x13:
          v14 = sub_100008C94();
          break;
        default:
          break;
      }

      v17 = 0x696C617551726961;
      v18 = 0xEA00000000007974;
      switch(a2)
      {
        case 1:
          sub_1000E0F7C();
          v19 = 1935762277;
          goto LABEL_36;
        case 2:
          sub_100092648();
          v18 = 0xE900000000000065;
          break;
        case 3:
          sub_10019555C();
          v18 = 0xEE00747361636572;
          break;
        case 4:
          v18 = 0xE800000000000000;
          sub_1006A9D10();
          break;
        case 5:
          v18 = 0xE300000000000000;
          v17 = 7364973;
          break;
        case 6:
          v18 = 0xE400000000000000;
          v17 = 1852796781;
          break;
        case 7:
          sub_1000C8B20();
          v20 = 6646883;
          goto LABEL_39;
        case 8:
          sub_10012CD94();
          v17 = v23 + 3;
          v18 = v29;
          break;
        case 9:
          sub_1006A9D04();
          v18 = v30;
          break;
        case 10:
          sub_10012CD94();
          v17 = v22 + 9;
          v18 = v31;
          break;
        case 11:
          v18 = 0xE800000000000000;
          sub_1001994BC();
          break;
        case 12:
          sub_1006A9D04();
          v18 = v32;
          break;
        case 13:
          sub_100040CE4();
          v21 = 0x7265687461;
          goto LABEL_43;
        case 14:
          sub_1001AD02C();
          v20 = 7631461;
LABEL_39:
          v18 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 15:
          sub_1000B9808();
          v19 = 1702063733;
LABEL_36:
          v21 = v19 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_43:
          v18 = v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 16:
          v18 = 0xE800000000000000;
          sub_1000FD158();
          break;
        case 17:
          v18 = 0xE700000000000000;
          sub_100045258();
          break;
        case 18:
          sub_100040E10();
          break;
        case 19:
          v18 = 0xE400000000000000;
          v17 = 1684957559;
          break;
        default:
          break;
      }

      if (v14 == v17 && v13 == v18)
      {
        break;
      }

      v25 = sub_1006A9CDC(v14, v10, v17);

      if (v25)
      {
        goto LABEL_57;
      }

      sub_10003A300();
      if ((v26 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_57:
    result = sub_10003804C();
  }

  else
  {
LABEL_55:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v4;
    sub_1001AE38C(a2, v3, isUniquelyReferenced_nonNull_native);
    *v4 = v34;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001ADC30(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1001AD7B8(&v7, *(a1 + v4++));
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

uint64_t sub_1001ADCAC(double a1, double a2, double a3)
{
  v6 = type metadata accessor for NamedCoordinateSpace();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  v10 = *&v15[4];
  (*(v7 + 8))(v9, v6);
  v11 = -v10;
  if (v16)
  {
    v11 = -0.0;
  }

  v12 = v11 - a1 - a2 + a3;
  *v15 = a3;
  if (v12 >= 0.0)
  {
    v13 = -0.0;
  }

  else
  {
    v13 = -v12;
  }

  v15[1] = 0;
  *&v15[2] = v13;
  type metadata accessor for EmptyVisualEffect();
  sub_10022C350(&qword_100CC0FD0, &qword_100A59DB0);
  sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  sub_10023FBF4(&qword_100CC0FD8, &qword_100CC0FD0, &qword_100A59DB0, &protocol conformance descriptor for OffsetShape<A>);
  return VisualEffect.clipShape<A>(_:style:)();
}

uint64_t sub_1001ADEBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD1200, &qword_100A76548);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
LABEL_6:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        JUMPOUT(0x1001AE32CLL);
      }

      if (v6 >= v10)
      {
        break;
      }

      v14 = *(v3 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        String.hash(into:)();

        v16 = Hasher._finalize()();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v22 && (v21 & 1) != 0)
            {
              goto LABEL_27;
            }

            v23 = v19 == v22;
            if (v19 == v22)
            {
              v19 = 0;
            }

            v21 |= v23;
            v24 = *(v11 + 8 * v19);
          }

          while (v24 == -1);
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        }

        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + v20) = v15;
        ++*(v5 + 16);
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v2 = v1;
  }

  else
  {
  }

  *v2 = v5;
  return result;
}

void sub_1001AE38C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A4D44(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_1001AF060(&qword_100CD1200, &qword_100A76548);
        goto LABEL_62;
      }

      sub_1001ADEBC(v7 + 1);
    }

    v9 = *v3;
    Hasher.init(_seed:)();
    sub_1001AC9D8(v6);
    String.hash(into:)();

    v10 = Hasher._finalize()();
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (1)
      {
        v13 = 0xEA00000000007974;
        v14 = 0x696C617551726961;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0x726F46796C696164;
            v15 = 1935762277;
            goto LABEL_20;
          case 2:
            v14 = 0x6B694C736C656566;
            v13 = 0xE900000000000065;
            break;
          case 3:
            v14 = 0x6F46796C72756F68;
            v13 = 0xEE00747361636572;
            break;
          case 4:
            v13 = 0xE800000000000000;
            v14 = 0x79746964696D7568;
            break;
          case 5:
            v13 = 0xE300000000000000;
            v14 = 7364973;
            break;
          case 6:
            v13 = 0xE400000000000000;
            v14 = 1852796781;
            break;
          case 7:
            v14 = 0x697472417377656ELL;
            v16 = 6646883;
            goto LABEL_23;
          case 8:
            v14 = 0xD000000000000015;
            v13 = 0x8000000100ABACA0;
            break;
          case 9:
            v14 = 0xD000000000000012;
            v13 = 0x8000000100ABAF40;
            break;
          case 0xA:
            v14 = 0xD00000000000001BLL;
            v13 = 0x8000000100ABAF60;
            break;
          case 0xB:
            v13 = 0xE800000000000000;
            v14 = 0x6572757373657270;
            break;
          case 0xC:
            v14 = 0xD000000000000012;
            v13 = 0x8000000100ABAC40;
            break;
          case 0xD:
            v14 = 0x655774726F706572;
            v17 = 0x7265687461;
            goto LABEL_27;
          case 0xE:
            v14 = 0x6C41657265766573;
            v16 = 7631461;
LABEL_23:
            v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 0xF:
            v14 = 0x53657369726E7573;
            v15 = 1702063733;
LABEL_20:
            v17 = v15 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_27:
            v13 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0x10:
            v13 = 0xE800000000000000;
            v14 = 0x7365676172657661;
            break;
          case 0x11:
            v13 = 0xE700000000000000;
            v14 = 0x7865646E497675;
            break;
          case 0x12:
            v14 = 0x696C696269736976;
            break;
          case 0x13:
            v13 = 0xE400000000000000;
            v14 = 1684957559;
            break;
          default:
            break;
        }

        v18 = 0x696C617551726961;
        v19 = 0xEA00000000007974;
        switch(v6)
        {
          case 1:
            v18 = 0x726F46796C696164;
            v20 = 1935762277;
            goto LABEL_43;
          case 2:
            v18 = 0x6B694C736C656566;
            v19 = 0xE900000000000065;
            break;
          case 3:
            v18 = 0x6F46796C72756F68;
            v19 = 0xEE00747361636572;
            break;
          case 4:
            v19 = 0xE800000000000000;
            v18 = 0x79746964696D7568;
            break;
          case 5:
            v19 = 0xE300000000000000;
            v18 = 7364973;
            break;
          case 6:
            v19 = 0xE400000000000000;
            v18 = 1852796781;
            break;
          case 7:
            v18 = 0x697472417377656ELL;
            v21 = 6646883;
            goto LABEL_46;
          case 8:
            v18 = 0xD000000000000015;
            v19 = 0x8000000100ABACA0;
            break;
          case 9:
            v18 = 0xD000000000000012;
            v19 = 0x8000000100ABAF40;
            break;
          case 10:
            v18 = 0xD00000000000001BLL;
            v19 = 0x8000000100ABAF60;
            break;
          case 11:
            v19 = 0xE800000000000000;
            v18 = 0x6572757373657270;
            break;
          case 12:
            v18 = 0xD000000000000012;
            v19 = 0x8000000100ABAC40;
            break;
          case 13:
            v18 = 0x655774726F706572;
            v22 = 0x7265687461;
            goto LABEL_50;
          case 14:
            v18 = 0x6C41657265766573;
            v21 = 7631461;
LABEL_46:
            v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 15:
            v18 = 0x53657369726E7573;
            v20 = 1702063733;
LABEL_43:
            v22 = v20 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_50:
            v19 = v22 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 16:
            v19 = 0xE800000000000000;
            v18 = 0x7365676172657661;
            break;
          case 17:
            v19 = 0xE700000000000000;
            v18 = 0x7865646E497675;
            break;
          case 18:
            v18 = 0x696C696269736976;
            break;
          case 19:
            v19 = 0xE400000000000000;
            v18 = 1684957559;
            break;
          default:
            break;
        }

        if (v14 == v18 && v13 == v19)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_66;
        }

        a2 = (a2 + 1) & v12;
        if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_62;
        }
      }

LABEL_65:

LABEL_66:
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      JUMPOUT(0x1001AE990);
    }
  }

LABEL_62:
  v25 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v6;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
    goto LABEL_65;
  }

  *(v25 + 16) = v28;
}

uint64_t sub_1001AEA48(uint64_t a1)
{
  v2 = a1;
  v3 = *(type metadata accessor for TrackExposureModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1001AEBFC(v2, v4);
}

uint64_t sub_1001AEAB8(uint64_t a1)
{
  Location.kind.getter();
  v1 = Location.Identifier.Kind.rawValue.getter();
  v3 = v2;
  if (v1 == Location.Identifier.Kind.rawValue.getter() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      return 2;
    }
  }

  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t type metadata accessor for TrackExposureModifier(uint64_t a1)
{
  result = qword_100CD3B30;
  if (!qword_100CD3B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AEBFC(char a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  if (a1)
  {
    Date.init()();
    v10 = type metadata accessor for Date();
    sub_10001B350(v9, 0, 1, v10);
    v11 = type metadata accessor for TrackExposureModifier(0);
    sub_1000D47CC(v9, v6);
    sub_10022C350(&qword_100CBB758, &unk_100A51060);
    State.wrappedValue.setter();
    sub_1001AEDF4(v9);
    v12 = (a2 + *(v11 + 32));
    v13 = *v12;
    v14 = *(v12 + 1);
    v21 = v13;
    v22 = v14;
    v20 = 1;
  }

  else
  {
    sub_1006F4338();
    v15 = (a2 + *(type metadata accessor for TrackExposureModifier(0) + 32));
    v16 = *v15;
    v17 = *(v15 + 1);
    v21 = v16;
    v22 = v17;
    v20 = 0;
  }

  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  return State.wrappedValue.setter();
}

uint64_t sub_1001AED8C(uint64_t (*a1)(void))
{
  a1(0);
  sub_100022E60();
  sub_100018584();

  return swift_deallocClassInstance();
}

uint64_t sub_1001AEDF4(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001AEE5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001AEEB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

BOOL sub_1001AEF68(unsigned int a1, unsigned int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  result = 0;
  if (((a2 ^ a1) & 1) == 0 && (((a2 ^ a1) >> 8) & 1) == 0)
  {
    v4 = HIWORD(a2);
    v5 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(a1));
    v7 = v6;
    if (v5 != PredictedLocationsAuthorizationState.rawValue.getter(v4) || v7 != v8)
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v10 & 1;
    }

    return 1;
  }

  return result;
}

void sub_1001AF060(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  sub_10022C350(a1, a2);
  v5 = *v2;
  v6 = static _SetStorage.copy(original:)();
  if (*(v5 + 16))
  {
    sub_10003725C();
    sub_1000C8530();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v3, 8 * v8);
    }

    sub_10003BB38();
    if (v14)
    {
      do
      {
        sub_1000E5A14();
LABEL_15:
        *(*(v6 + 48) + v16) = *(*(v5 + 48) + v16);
      }

      while (v15);
    }

    v17 = v12;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v13)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v3 + v18))
      {
        sub_1000E3208();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v4 = v6;
  }
}

uint64_t sub_1001AF120@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for LocationInput(0);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4B70, &qword_100A2EE28);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4B90, &unk_100A9DFF0) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for LocationViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4B70, &qword_100A2EE28);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4B90, &unk_100A9DFF0);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

uint64_t type metadata accessor for VisibilityComponent(uint64_t a1)
{
  result = qword_100CBA7A0;
  if (!qword_100CBA7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001AF4C4()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CD11F8, &qword_100A76540);
    v7 = sub_1000BCEFC();
    sub_10000ECE0(v7);
    sub_10003C6F8(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B99E0();
  if (v1)
  {
    if (v3 != v0 || &v10[8 * v2] <= v9)
    {
      memmove(v9, v10, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t type metadata accessor for PressureComponent(uint64_t a1)
{
  result = qword_100CD0758;
  if (!qword_100CD0758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AF5DC()
{

  return v0;
}

uint64_t sub_1001AF604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1001AF660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1001AF6BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001AF71C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1001AF774(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void *sub_1001AF7D4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v33 = a3;
  v7 = type metadata accessor for Location();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[10];
  v12 = v4[11];
  sub_1000161C0(v4 + 7, v11);
  v13 = (*(v12 + 8))(a1, v11, v12);
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000703C(v14, qword_100D90A90);
  (*(v8 + 16))(v10, a2, v7);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v13;
    v35[0] = v19;
    *v18 = 136446723;
    sub_1001AFBE0();
    v20 = ShortDescribable.description.getter();
    v22 = sub_100078694(v20, v21, v35);
    v32 = v4;
    v23 = v22;

    *(v18 + 4) = v23;
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    v24 = Location.name.getter();
    v26 = v25;
    (*(v8 + 8))(v10, v7);
    v27 = sub_100078694(v24, v26, v35);
    v4 = v32;

    *(v18 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Made row configuration: %{public}s for location=%{private,mask.hash}s", v18, 0x20u);
    swift_arrayDestroy();

    a2 = v31;
  }

  else
  {

    v28 = (*(v8 + 8))(v10, v7);
  }

  __chkstk_darwin(v28);
  *(&v31 - 32) = v33 & 1;
  *(&v31 - 3) = v4;
  *(&v31 - 2) = a2;
  v29 = sub_1001B11C0(sub_1001B15DC, (&v31 - 6), v13);

  return v29;
}

uint64_t sub_1001AFB34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001AFB8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1001AFBE0()
{
  result = qword_100CDFCC8;
  if (!qword_100CDFCC8)
  {
    result = swift_getWitnessTable(byte_100AA35E8, &type metadata for LocationViewConfiguration, v0, v1);
    atomic_store(result, &qword_100CDFCC8);
  }

  return result;
}

unint64_t sub_1001AFC34()
{
  result = qword_100CEC498;
  if (!qword_100CEC498)
  {
    result = swift_getWitnessTable(byte_100AA35C0, &type metadata for LocationViewConfiguration, v0, v1);
    atomic_store(result, &qword_100CEC498);
  }

  return result;
}

uint64_t sub_1001AFC88()
{

  return swift_deallocObject();
}

uint64_t sub_1001AFCC8()
{

  sub_100006F14((v0 + 40));

  return swift_deallocObject();
}

void sub_1001AFD1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD00000000000002BLL, 0x8000000100ABC100, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD00000000000001FLL, 0x8000000100ABC130, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_1001AFFCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LocationViewComponent(0);
  sub_1000037C4();
  v39 = v5;
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  v13 = inited;
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 1937207154;
  *(inited + 40) = 0xE400000000000000;
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v36 = inited;
    v38 = v4;
    v37 = a2;
    v50 = _swiftEmptyArrayStorage;
    sub_10000369C(0, v14, 0);
    v16 = 0;
    v17 = v50;
    v40 = a1 + 32;
    v41 = v14;
    do
    {
      v43 = v16;
      v44 = v17;
      v18 = *(v40 + 8 * v16);
      v19 = *(v18 + 16);
      if (v19)
      {
        v49 = _swiftEmptyArrayStorage;

        sub_10000369C(0, v19, 0);
        v15 = v49;
        v20 = *(v39 + 80);
        v42 = v18;
        v21 = v18 + ((v20 + 32) & ~v20);
        v45 = *(v39 + 72);
        do
        {
          sub_1001AB2F0(v21, v11);
          v47 = 0;
          v48 = 0xE000000000000000;
          sub_1001AB2F0(v11, v8);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v23 = 10;
          switch(EnumCaseMultiPayload)
          {
            case 1:
              sub_1001AC2E8(v8);
              v23 = 1;
              break;
            case 2:
              sub_1001AC2E8(v8);
              v23 = 2;
              break;
            case 3:
              sub_1001AC2E8(v8);
              v23 = 3;
              break;
            case 4:
              sub_1001AC2E8(v8);
              v23 = 4;
              break;
            case 5:
              sub_1001AC2E8(v8);
              v23 = 5;
              break;
            case 6:
              sub_1001AC2E8(v8);
              v23 = 6;
              break;
            case 7:
              sub_1001AC2E8(v8);
              v23 = 7;
              break;
            case 8:
              sub_1001AC2E8(v8);
              v23 = 8;
              break;
            case 9:
              sub_1001AC2E8(v8);
              v23 = 9;
              break;
            case 10:
              sub_1001AC2E8(v8);
              v23 = 11;
              break;
            case 11:
              sub_1001AC2E8(v8);
              v23 = 12;
              break;
            case 12:
              v23 = 13;
              break;
            case 13:
              sub_1001AC2E8(v8);
              v23 = 14;
              break;
            case 14:
              sub_1001AC2E8(v8);
              v23 = 15;
              break;
            case 15:
              sub_1001AC2E8(v8);
              v23 = 16;
              break;
            case 16:
              sub_1001AC2E8(v8);
              v23 = 17;
              break;
            case 17:
              sub_1001AC2E8(v8);
              v23 = 18;
              break;
            case 18:
              sub_1001AC2E8(v8);
              v23 = 19;
              break;
            case 19:
              break;
            default:
              sub_1001AC2E8(v8);
              v23 = 0;
              break;
          }

          v46 = v23;
          _print_unlocked<A, B>(_:_:)();
          v25 = v47;
          v24 = v48;
          sub_1001AC2E8(v11);
          v49 = v15;
          v27 = v15[2];
          v26 = v15[3];
          if (v27 >= v26 >> 1)
          {
            sub_10000369C((v26 > 1), v27 + 1, 1);
            v15 = v49;
          }

          v15[2] = v27 + 1;
          v28 = &v15[2 * v27];
          v28[4] = v25;
          v28[5] = v24;
          v21 += v45;
          --v19;
        }

        while (v19);
      }

      else
      {
      }

      v47 = v15;
      sub_10022C350(&qword_100CCC930, &qword_100A41810);
      sub_100006F64(&qword_100CB2D00, &qword_100CCC930, &qword_100A41810, &protocol conformance descriptor for [A]);
      v29 = BidirectionalCollection<>.joined(separator:)();
      v31 = v30;

      v17 = v44;
      v50 = v44;
      v33 = v44[2];
      v32 = v44[3];
      if (v33 >= v32 >> 1)
      {
        sub_10000369C((v32 > 1), v33 + 1, 1);
        v17 = v50;
      }

      v16 = v43 + 1;
      v17[2] = v33 + 1;
      v34 = &v17[2 * v33];
      v34[4] = v29;
      v34[5] = v31;
      v15 = _swiftEmptyArrayStorage;
    }

    while (v16 != v41);
    a2 = v37;
    v13 = v36;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  *(v13 + 72) = sub_10022C350(&qword_100CCC930, &qword_100A41810);
  *(v13 + 48) = v17;
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CEC4A0, &qword_100AA3618);
  a2[4] = sub_100006F64(&qword_100CEC4A8, &qword_100CEC4A0, &qword_100AA3618, &protocol conformance descriptor for ShortDescription<A>);
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1001B05BC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6)
{
  v67 = a6;
  v68 = a5;
  v72 = a4;
  v73 = a2;
  v74 = a1;
  v70 = sub_10022C350(&qword_100CA4BA8, &qword_100A2EE58);
  __chkstk_darwin(v70);
  v71 = &v59 - v7;
  v8 = sub_10022C350(&qword_100CA4BB0, &qword_100A2EE60);
  __chkstk_darwin(v8 - 8);
  v66 = &v59 - v9;
  v69 = type metadata accessor for WeatherConditionBackgroundModel();
  v64 = *(v69 - 8);
  __chkstk_darwin(v69);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = &v59 - v12;
  v13 = sub_10022C350(&qword_100CA4BB8, &qword_100A2EE68);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v16 = sub_10022C350(&unk_100CA4BC0, &unk_100A2EE70);
  __chkstk_darwin(v16 - 8);
  v65 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  __chkstk_darwin(v24);
  v26 = &v59 - v25;
  v27 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v59 - v33;
  (v74)(a3 + 64, 0, v32);
  if (sub_100024D10(v26, 1, v27) == 1)
  {
    return sub_1000180EC(v26, &unk_100CA4BC0, &unk_100A2EE70);
  }

  v59 = *(v28 + 32);
  v59(v34, v26, v27);
  v73 = v34;
  v74 = v28;
  v37 = *(v28 + 16);
  v36 = v28 + 16;
  v61 = v37;
  v37(v23, v34, v27);
  sub_10001B350(v23, 0, 1, v27);
  sub_100247D98(v20);
  v38 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v27) == 1)
  {
    sub_1000180EC(v20, &unk_100CA4BC0, &unk_100A2EE70);
    sub_1000180EC(v23, &unk_100CA4BC0, &unk_100A2EE70);
    if (sub_100024D10(&v15[v38], 1, v27) == 1)
    {
      sub_1000180EC(v15, &unk_100CA4BC0, &unk_100A2EE70);
      return (*(v74 + 8))(v73, v27);
    }

    goto LABEL_8;
  }

  v39 = v65;
  sub_100095588();
  if (sub_100024D10(&v15[v38], 1, v27) == 1)
  {
    sub_1000180EC(v20, &unk_100CA4BC0, &unk_100A2EE70);
    sub_1000180EC(v23, &unk_100CA4BC0, &unk_100A2EE70);
    (*(v74 + 8))(v39, v27);
LABEL_8:
    v60 = v36;
    sub_1000180EC(v15, &qword_100CA4BB8, &qword_100A2EE68);
    v40 = v73;
    goto LABEL_9;
  }

  v60 = v36;
  v59(v30, &v15[v38], v27);
  sub_10006724C(&qword_100CA4BE8, &type metadata accessor for WeatherConditionBackgroundModelFactoryInput, &protocol conformance descriptor for WeatherConditionBackgroundModelFactoryInput);
  v49 = v39;
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v74 + 8);
  v51(v30, v27);
  sub_1000180EC(v20, &unk_100CA4BC0, &unk_100A2EE70);
  sub_1000180EC(v23, &unk_100CA4BC0, &unk_100A2EE70);
  v51(v49, v27);
  sub_1000180EC(v15, &unk_100CA4BC0, &unk_100A2EE70);
  v40 = v73;
  if (v50)
  {
    return (v51)(v73, v27);
  }

LABEL_9:
  v41 = v66;
  v68(v40, 0);
  v42 = v69;
  if (sub_100024D10(v41, 1, v69) == 1)
  {
    sub_1000180EC(v41, &qword_100CA4BB0, &qword_100A2EE60);
    v43 = v74;
LABEL_13:
    sub_10022C350(&qword_100CA4BC8, &unk_100A9E010);
    v61(v71, v40, v27);
    sub_1001108E0();
    (*(v43 + 8))(v40, v27);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  v45 = v63;
  v44 = v64;
  (*(v64 + 32))(v63, v41, v42);
  v46 = v62;
  sub_1001108E0();
  sub_10006724C(&qword_100CA4BD0, &type metadata accessor for WeatherConditionBackgroundModel, &protocol conformance descriptor for WeatherConditionBackgroundModel);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v44 + 8);
  v48(v46, v42);
  v43 = v74;
  if (v47)
  {
    v48(v45, v42);
    v40 = v73;
    goto LABEL_13;
  }

  v68 = v48;
  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_10000703C(v52, qword_100D90C18);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v75[0] = swift_slowAlloc();
    *v55 = 136446466;
    *(v55 + 4) = sub_100078694(0xD00000000000002BLL, 0x8000000100ABC100, v75);
    *(v55 + 12) = 2082;
    *(v55 + 14) = sub_100078694(0xD00000000000001FLL, 0x8000000100ABC130, v75);
    _os_log_impl(&_mh_execute_header, v53, v54, "Selector observed model difference for %{public}s, %{public}s; views will update", v55, 0x16u);
    swift_arrayDestroy();
    v43 = v74;
  }

  v56 = *(sub_10022C350(&qword_100CA4BC8, &unk_100A9E010) + 48);
  v57 = v71;
  v58 = v73;
  v61(v71, v73, v27);
  (*(v64 + 16))(&v57[v56], v45, v42);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA4BD8, &qword_100A2EE80);
  sub_100006F64(&qword_100CA4BE0, &qword_100CA4BD8, &qword_100A2EE80, asc_100AA1480);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v68(v45, v42);
  return (*(v43 + 8))(v58, v27);
}

uint64_t sub_1001B1084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 25;
  }

  v4 = sub_100031B34();
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 25;
  }
}

BOOL sub_1001B10E0(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  Hasher.init(_seed:)();
  sub_10003140C();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10002C9A0();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void *sub_1001B11C0(void (*a1)(void *__return_ptr, uint64_t *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  v6 = _swiftEmptyArrayStorage;
  if (v4)
  {
    while (1)
    {
      v17 = *v5;

      (a1)(v16, &v17);
      if (v3)
      {
        break;
      }

      v7 = v16[0];
      if (v16[0])
      {
        v9 = v16[1];
        v8 = v16[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000066AC();
          sub_1001B4454();
          v6 = v12;
        }

        v10 = v6[2];
        if (v10 >= v6[3] >> 1)
        {
          sub_1001B4454();
          v6 = v13;
        }

        v6[2] = v10 + 1;
        v11 = &v6[3 * v10];
        v11[4] = v7;
        v11[5] = v9;
        v11[6] = v8;
      }

      ++v5;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

void sub_1001B12F4()
{
  sub_10000E8AC();
  sub_1000049D4();
  v4 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_100014DAC();
  type metadata accessor for LocationComponentContainerViewModel(v6);
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003848();
  v34 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_100016E5C(v10, v11, v12, v13, v14, v15, v16, v17, v32);
  v18 = 0;
  v19 = *(v1 + 16);
  v35 = _swiftEmptyArrayStorage;
  while (v19 != v18)
  {
    v20 = type metadata accessor for LocationViewComponent(0);
    sub_100003AE8(v20);
    v2(v1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v22 + 72) * v18);
    if (v0)
    {
      sub_1000317C0();
      break;
    }

    sub_100074F14();
    if (v23)
    {
      sub_1000180EC(v3, &qword_100CA5008, &unk_100A2F7B0);
      ++v18;
    }

    else
    {
      sub_1001B36B0(v3, v33, type metadata accessor for LocationComponentContainerViewModel);
      sub_1001B36B0(v33, v34, type metadata accessor for LocationComponentContainerViewModel);
      v24 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000066AC();
        sub_1001B37C8();
        v24 = v30;
      }

      sub_10000CE98();
      if (v26)
      {
        sub_100049BCC();
        sub_1001B37C8();
        v35 = v31;
      }

      ++v18;
      sub_100020AEC();
      sub_10001CC40();
      sub_1001B36B0(v29, v27 + v28 * v24, type metadata accessor for LocationComponentContainerViewModel);
    }
  }

  sub_1000230F8();
  sub_10000C8F4();
}

uint64_t sub_1001B1558@<X0>(uint64_t *a1@<X8>)
{
  sub_1001B12F4();
  if (*(v2 + 16))
  {
    result = sub_1001B38A0(v2);
  }

  else
  {

    result = 0;
    v4 = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1001B15FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for LocationViewComponent(0);
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011145C(a1, v11, type metadata accessor for LocationViewComponent);
  if (swift_getEnumCaseMultiPayload() != 9 || (a2 & 1) != 0)
  {
    sub_1000161C0((a3 + 16), *(a3 + 40));
    sub_1001B1760(a1, a5);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_10001B350(a5, v12, 1, v13);
  return sub_100105FE4(v11, type metadata accessor for LocationViewComponent);
}

uint64_t sub_1001B1760@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v3 = type metadata accessor for WindComponent(0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000038E4();
  v116 = v5;
  v6 = type metadata accessor for VisibilityComponent(0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000038E4();
  v9 = sub_100003918(v8);
  v10 = type metadata accessor for UVIndexComponent(v9);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000038E4();
  sub_100003918(v12);
  v113 = type metadata accessor for SunriseSunsetModel();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  sub_1000038E4();
  v14 = sub_100003918(v13);
  v15 = type metadata accessor for SevereAlertComponent(v14);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000038E4();
  v18 = sub_100003918(v17);
  v19 = type metadata accessor for PressureComponent(v18);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000038E4();
  v22 = sub_100003918(v21);
  v23 = type metadata accessor for NotificationsOptInComponent(v22);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000038E4();
  v26 = sub_100003918(v25);
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent(v26);
  v28 = sub_100003810(HourPrecipitationComponent);
  __chkstk_darwin(v28);
  sub_1000038E4();
  v30 = sub_100003918(v29);
  v31 = type metadata accessor for NewsArticleComponent(v30);
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_1000038E4();
  v34 = sub_100003918(v33);
  v35 = type metadata accessor for MoonComponent(v34);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_1000037D8();
  v39 = v38 - v37;
  v40 = type metadata accessor for MapComponent(0);
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  sub_1000037D8();
  v44 = v43 - v42;
  v45 = type metadata accessor for HumidityComponent(0);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_1000037D8();
  v49 = v48 - v47;
  v50 = type metadata accessor for HourlyForecastComponent(0);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_1000037D8();
  v54 = v53 - v52;
  v55 = type metadata accessor for FeelsLikeComponent(0);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_1000037D8();
  v59 = v58 - v57;
  v60 = type metadata accessor for DailyForecastComponent(0);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_1000037D8();
  v64 = v63 - v62;
  v65 = type metadata accessor for AveragesComponent(0);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  sub_1000037D8();
  v69 = v68 - v67;
  v70 = type metadata accessor for AirQualityComponent(0);
  v71 = sub_100003810(v70);
  __chkstk_darwin(v71);
  sub_1000037D8();
  v74 = v73 - v72;
  type metadata accessor for LocationViewComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v75);
  sub_1000037D8();
  v78 = (v77 - v76);
  sub_1001AB2F0(a1, v77 - v76);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = type metadata accessor for DailyForecastComponent;
      sub_1001B2950(v78, v64, type metadata accessor for DailyForecastComponent);
      sub_10001EBC0(v117 + 12, v117[15]);
      sub_1001B452C(v64, v95);
      goto LABEL_21;
    case 2u:
      v79 = type metadata accessor for FeelsLikeComponent;
      sub_1001B2950(v78, v59, type metadata accessor for FeelsLikeComponent);
      sub_10001EBC0(v117 + 17, v117[20]);
      sub_1008C8050(v59, v89);
      v81 = v59;
      goto LABEL_22;
    case 3u:
      v79 = type metadata accessor for HourlyForecastComponent;
      sub_1001B2950(v78, v54, type metadata accessor for HourlyForecastComponent);
      sub_10001EBC0(v117 + 22, v117[25]);
      sub_1001B2A74(v54, v93);
      v81 = v54;
      goto LABEL_22;
    case 4u:
      v79 = type metadata accessor for HumidityComponent;
      sub_1001B2950(v78, v49, type metadata accessor for HumidityComponent);
      sub_10001EBC0(v117 + 27, v117[30]);
      sub_1002E5A90(v85);
      v81 = v49;
      goto LABEL_22;
    case 5u:
      v79 = type metadata accessor for MapComponent;
      sub_1001B2950(v78, v44, type metadata accessor for MapComponent);
      v97 = sub_10001EBC0(v117 + 32, v117[35]);
      sub_10057AD18(v97, v44, v98);
      v81 = v44;
      goto LABEL_22;
    case 6u:
      v79 = type metadata accessor for MoonComponent;
      sub_1001B2950(v78, v39, type metadata accessor for MoonComponent);
      v100 = sub_10001EBC0(v117 + 37, v117[40]);
      sub_1007A1DA0(v100, v39, v101);
      v81 = v39;
      goto LABEL_22;
    case 7u:
      v79 = type metadata accessor for NewsArticleComponent;
      v64 = v106;
      sub_1001B2950(v78, v106, type metadata accessor for NewsArticleComponent);
      sub_100005BF4(v117 + 42, v117[45]);
      sub_1005C1320(v106, v94);
      goto LABEL_21;
    case 8u:
      v79 = type metadata accessor for NextHourPrecipitationComponent;
      v64 = v107;
      sub_1001B2950(v78, v107, type metadata accessor for NextHourPrecipitationComponent);
      sub_10001EBC0(v117 + 47, v117[50]);
      sub_10065C1C4(v104);
      goto LABEL_21;
    case 9u:
      v79 = type metadata accessor for NotificationsOptInComponent;
      v64 = v108;
      sub_1001B2950(v78, v108, type metadata accessor for NotificationsOptInComponent);
      sub_100005BF4(v117 + 52, v117[55]);
      sub_10048DED0(v108, v88);
      goto LABEL_21;
    case 0xAu:
      v79 = type metadata accessor for PressureComponent;
      v64 = v109;
      sub_1001B2950(v78, v109, type metadata accessor for PressureComponent);
      sub_10001EBC0(v117 + 62, v117[65]);
      sub_1009B9BE0(v109, v103);
      goto LABEL_21;
    case 0xBu:
      memcpy(__dst, v78, sizeof(__dst));
      sub_1000161C0(v117 + 67, v117[70]);
      sub_1006F4148(__dst, x8_0);
      return sub_1004031BC(__dst);
    case 0xCu:
      v86 = *v78;
      sub_100005BF4(v117 + 72, v117[75]);
      return sub_1007A0F44(v86, v87);
    case 0xDu:
      v79 = type metadata accessor for SevereAlertComponent;
      v64 = v110;
      sub_1001B2950(v78, v110, type metadata accessor for SevereAlertComponent);
      sub_10001EBC0(v117 + 77, v117[80]);
      sub_10084FC64(v110, v99);
      goto LABEL_21;
    case 0xEu:
      (*(v112 + 32))(v111, v78, v113);
      sub_10001EBC0(v117 + 82, v117[85]);
      sub_100386C5C(v83);
      return (*(v112 + 8))(v111, v113);
    case 0xFu:
      sub_1001B2950(v78, v69, type metadata accessor for AveragesComponent);
      v90 = sub_10001EBC0(v117 + 7, v117[10]);
      sub_10046C1BC(v90, v69, v91);
      v81 = v69;
      v92 = type metadata accessor for AveragesComponent;
      return sub_1001B32C4(v81, v92);
    case 0x10u:
      v79 = type metadata accessor for UVIndexComponent;
      v64 = v114;
      sub_1001B2950(v78, v114, type metadata accessor for UVIndexComponent);
      sub_10001EBC0(v117 + 87, v117[90]);
      sub_1007C869C(v114, v82);
      goto LABEL_21;
    case 0x11u:
      v79 = type metadata accessor for VisibilityComponent;
      v64 = v115;
      sub_1001B2950(v78, v115, type metadata accessor for VisibilityComponent);
      sub_10001EBC0(v117 + 92, v117[95]);
      sub_100734650(v115, v96);
      goto LABEL_21;
    case 0x12u:
      v79 = type metadata accessor for WindComponent;
      v64 = v116;
      sub_1001B2950(v78, v116, type metadata accessor for WindComponent);
      sub_10001EBC0(v117 + 97, v117[100]);
      sub_10066F8B0(v116, v102);
LABEL_21:
      v81 = v64;
      goto LABEL_22;
    case 0x13u:
      sub_100005BF4(v117 + 57, v117[60]);
      return sub_100383428(v105);
    default:
      v79 = type metadata accessor for AirQualityComponent;
      sub_1001B2950(v78, v74, type metadata accessor for AirQualityComponent);
      sub_10001EBC0(v117 + 2, v117[5]);
      sub_1009A2FB8(v74, v80);
      v81 = v74;
LABEL_22:
      v92 = v79;
      return sub_1001B32C4(v81, v92);
  }
}

uint64_t type metadata accessor for WindComponent(uint64_t a1)
{
  result = qword_100CEC3A0;
  if (!qword_100CEC3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for UVIndexComponent(uint64_t a1)
{
  result = qword_100CE6620;
  if (!qword_100CE6620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SevereAlertComponent(uint64_t a1)
{
  result = qword_100CB46E0;
  if (!qword_100CB46E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NotificationsOptInComponent(uint64_t a1)
{
  result = qword_100CB29A8;
  if (!qword_100CB29A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NextHourPrecipitationComponent(uint64_t a1)
{
  result = qword_100CCFCB8;
  if (!qword_100CCFCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NewsArticleComponent(uint64_t a1)
{
  result = qword_100CC6D80;
  if (!qword_100CC6D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MoonComponent(uint64_t a1)
{
  result = qword_100CAF838;
  if (!qword_100CAF838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MapComponent(uint64_t a1)
{
  result = qword_100CDEAB8;
  if (!qword_100CDEAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for HumidityComponent(uint64_t a1)
{
  result = qword_100CE0238;
  if (!qword_100CE0238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for HourlyForecastComponent(uint64_t a1)
{
  result = qword_100CD8D00;
  if (!qword_100CD8D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id WeatherLocation.init(identifier:display:pronunciationHint:)()
{
  sub_10001D648();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = String._bridgeToObjectiveC()();

  if (v1)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for WeatherLocation();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:displayString:pronunciationHint:", v3, v4, v5);

  return v6;
}

id WeatherIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for WeatherIntent();
  v12 = sub_1000200B8(v16, "initWithIdentifier:backingStore:", v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

uint64_t type metadata accessor for FeelsLikeComponent(uint64_t a1)
{
  result = qword_100CDF458;
  if (!qword_100CDF458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DailyForecastComponent(uint64_t a1)
{
  result = qword_100CC60F0;
  if (!qword_100CC60F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001B2710(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 initWithIdentifier:v3 displayString:v4];

  return v5;
}

uint64_t type metadata accessor for AirQualityComponent(uint64_t a1)
{
  result = qword_100CBA880;
  if (!qword_100CBA880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001B2814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (Location.Identifier.kind.getter())
  {
    return 0;
  }

  type metadata accessor for WeatherLocation();
  Location.Identifier.name.getter();
  objc_allocWithZone(swift_getObjCClassFromMetadata());

  return sub_1001B2710(a2, a3);
}

uint64_t type metadata accessor for AveragesComponent(uint64_t a1)
{
  result = qword_100CE1C90;
  if (!qword_100CE1C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B2950(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001B29B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_1001B2A10(uint64_t a1)
{
  if (!qword_100CBB7E8)
  {
    sub_10022E824(&unk_100CB2CF0, &unk_100A2D7F0);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100CBB7E8);
    }
  }
}

uint64_t sub_1001B2A74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationComponentHeaderViewModel(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for HourlyForecastComponentViewModel(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = type metadata accessor for HourlyForecastComponent(0);
  sub_10011C770(a1 + *(v19 + 20), v18, type metadata accessor for HourlyForecastComponentPreprocessedDataModel);
  if (*(a1 + *(v19 + 40)) == 1)
  {
    sub_1005FA810();
  }

  else
  {
    sub_100005FC4();
    sub_10011C770(v18, v13, v20);
  }

  v21 = [objc_opt_self() mainBundle];
  v41._object = 0x8000000100AD2A80;
  v22._countAndFlagsBits = 0x4620796C72756F48;
  v22._object = 0xEF7473616365726FLL;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0xD000000000000041;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v41);

  v37[0] = String.init<A>(_:)();
  v37[1] = v24;
  v37[2] = 0x6B636F6C63;
  v37[3] = 0xE500000000000000;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  sub_1001B2F10(a1, v18, v37, v8);
  sub_1001B3294(v37);
  sub_10011C770(v8, a2, type metadata accessor for LocationComponentHeaderViewModel);
  v25 = type metadata accessor for LocationComponentContainerViewModel(0);
  v26 = v25[5];
  sub_100005FC4();
  sub_10011C770(v13, a2 + v26, v27);
  type metadata accessor for LocationComponentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v28 = a2 + v25[8];
  v29 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
  v30 = enum case for TemperatureChartKind.actual(_:);
  type metadata accessor for TemperatureChartKind();
  sub_1000037E8();
  (*(v31 + 104))(v28, v30);
  v32 = enum case for DetailCondition.conditions(_:);
  type metadata accessor for DetailCondition();
  sub_1000037E8();
  (*(v33 + 104))(v28, v32);
  *(v28 + v29) = 0;
  v34 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v28, 0, 1, v34);
  sub_10013D288();
  v35 = Dictionary.init(dictionaryLiteral:)();
  sub_10011E508(v8, type metadata accessor for LocationComponentHeaderViewModel);
  sub_10011E508(v13, type metadata accessor for HourlyForecastComponentViewModel);
  result = sub_10011E508(v18, type metadata accessor for HourlyForecastComponentPreprocessedDataModel);
  *(a2 + v25[6]) = 258;
  *(a2 + v25[7]) = v35;
  return result;
}

void sub_1001B2E64(uint64_t a1)
{
  sub_10013DB50();
  if (v1 <= 0x3F)
  {
    sub_1001B2A10(319);
    if (v2 <= 0x3F)
    {
      sub_100081C98();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001B2F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  __chkstk_darwin(v8 - 8);
  v10 = &v24[-v9 - 8];
  v11 = type metadata accessor for WeatherDescription();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = type metadata accessor for HourlyForecastComponent(0);
  if (*(a1 + *(v15 + 36)) == 1 && (*(a1 + *(v15 + 40)) & 1) == 0)
  {
    v16 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
    sub_100035AD0(a2 + *(v16 + 20), v10, &qword_100CAE8E8, &unk_100A49400);
    if (sub_100024D10(v10, 1, v11) != 1)
    {
      v19 = *(v12 + 32);
      v19(v14, v10, v11);
      v19(a4, v14, v11);
      v20 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
      v21 = a4 + *(v20 + 20);
      v22 = *(a3 + 16);
      *v21 = *a3;
      *(v21 + 16) = v22;
      *(v21 + 32) = *(a3 + 32);
      *(v21 + 48) = *(a3 + 48);
      *(a4 + *(v20 + 24)) = 1;
      goto LABEL_6;
    }

    sub_1000180EC(v10, &qword_100CAE8E8, &unk_100A49400);
  }

  v17 = *(a3 + 16);
  *a4 = *a3;
  *(a4 + 16) = v17;
  *(a4 + 32) = *(a3 + 32);
  *(a4 + 48) = *(a3 + 48);
LABEL_6:
  type metadata accessor for LocationComponentHeaderViewModel(0);
  swift_storeEnumTagMultiPayload();
  return sub_1001B31A4(a3, v24);
}

unint64_t sub_1001B314C()
{
  result = qword_100CC6E68;
  if (!qword_100CC6E68)
  {
    v3 = type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable(&protocol conformance descriptor for DynamicTypeSize, v3, v0, v1);
    atomic_store(result, &qword_100CC6E68);
  }

  return result;
}

void sub_1001B31DC(uint64_t a1)
{
  type metadata accessor for LocationComponentHeaderViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1001B71C4(319, &qword_100CAFF88, &type metadata for CGFloat, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001B32C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001B331C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1001B3394(uint64_t a1)
{
  sub_1000D422C();
  sub_10013D854(319, v1, v2, &type metadata accessor for Environment);
  if (v3 <= 0x3F)
  {
    sub_1000816EC(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001B3470(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000038D8();
  type metadata accessor for LocationComponentHeaderViewModel(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for LocationComponentViewModel(0);
    sub_100003928();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[7]) = (a2 - 1);
        return;
      }

      v11 = sub_10022C350(&qword_100CC0A50, &unk_100A594E0);
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  sub_10001B350(v12, a2, a2, v11);
}

uint64_t sub_1001B359C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000038D8();
  type metadata accessor for LocationComponentHeaderViewModel(v6);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_11:

    return sub_100024D10(v10, a2, v9);
  }

  type metadata accessor for LocationComponentViewModel(0);
  sub_100003928();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_10:
    v10 = v3 + v13;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = sub_10022C350(&qword_100CC0A50, &unk_100A594E0);
    v13 = a3[8];
    goto LABEL_10;
  }

  v14 = *(v3 + a3[7]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1001B36B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1001B3710()
{
  result = qword_100CDA258;
  if (!qword_100CDA258)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA078, &qword_100A850E8);
    v4[0] = sub_100006F64(&qword_100CDA260, &qword_100CDA070, &qword_100A850E0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA258);
  }

  return result;
}

void sub_1001B37C8()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CAC7F0, &unk_100A3BD10);
  v8 = sub_100011748();
  type metadata accessor for LocationComponentContainerViewModel(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for LocationComponentContainerViewModel, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

uint64_t sub_1001B38A0(uint64_t a1)
{
  v19 = type metadata accessor for LocationComponentContainerViewModel(0);
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_10000369C(0, v5, 0);
    v6 = v20;
    v7 = *(v2 + 80);
    v18 = a1;
    v8 = a1 + ((v7 + 32) & ~v7);
    v9 = *(v2 + 72);
    do
    {
      sub_1001B3B30(v8, v4);
      v10 = sub_1001B3DAC();
      v12 = v11;
      sub_1001B4354(v4);
      v20 = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_10000369C((v13 > 1), v14 + 1, 1);
        v6 = v20;
      }

      v6[2] = v14 + 1;
      v15 = &v6[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v8 += v9;
      --v5;
    }

    while (v5);
    a1 = v18;
  }

  v20 = v6;
  sub_10022C350(&qword_100CCC930, &qword_100A41810);
  sub_1001141C8();
  BidirectionalCollection<>.joined(separator:)();

  return a1;
}

unint64_t sub_1001B3A78()
{
  result = qword_100CDA268;
  if (!qword_100CDA268)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA088, &unk_100A850F8);
    v4[0] = sub_100006F64(&qword_100CDA270, &qword_100CDA080, &qword_100A850F0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA268);
  }

  return result;
}

uint64_t sub_1001B3B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationComponentContainerViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B3B94(uint64_t a1)
{
  sub_1000816EC(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1000816EC(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_10013D854(319, &qword_100CABE70, type metadata accessor for LocationComponentCornerRadiusConfiguration, &type metadata accessor for Environment);
      if (v7 > 0x3F)
      {
        return v6;
      }

      v6 = type metadata accessor for LocationComponentViewModel(319);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_10013D854(319, &unk_100CC0C48, type metadata accessor for LocationComponentHeaderMetrics, &type metadata accessor for Environment);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          v2 = type metadata accessor for Location.Identifier();
          if (v11 <= 0x3F)
          {
            sub_100009994(319);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_1000816EC(319, &qword_100CC0CE8, &type metadata for ForegroundEffectViewMask, &type metadata accessor for Optional);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1001B3DAC()
{
  type metadata accessor for LocationComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  sub_1001B4294(v0, v3 - v2);
  v5 = 0x655774726F706572;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x726F46796C696164;
      break;
    case 2u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x6B694C736C656566;
      break;
    case 3u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x6F46796C72756F68;
      break;
    case 4u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x79746964696D7568;
      break;
    case 5u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 7364973;
      break;
    case 6u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 1852796781;
      break;
    case 7u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x697472417377656ELL;
      break;
    case 8u:
      sub_10002C57C();
      sub_10001FAA0();
      sub_1001B42FC(v4, v8);
      v5 = 0xD000000000000015;
      break;
    case 9u:
      v5 = 0xD000000000000012;
      sub_10002C57C();
      sub_10001FAA0();
      sub_1001B42FC(v4, v9);
      break;
    case 0xAu:
      v5 = 0xD000000000000012;
      sub_10001FAA0();
      sub_1001B42FC(v4, v7);
      sub_10002C57C();
      break;
    case 0xBu:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x6572757373657270;
      break;
    case 0xCu:
      return v5;
    case 0xDu:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x6C41657265766573;
      break;
    case 0xEu:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x53657369726E7573;
      break;
    case 0xFu:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x7365676172657661;
      break;
    case 0x10u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x7865646E497675;
      break;
    case 0x11u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v6 = 0x696269736976;
      goto LABEL_14;
    case 0x12u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 1684957559;
      break;
    case 0x13u:
      sub_10002C57C();
      v5 = 0xD00000000000001BLL;
      break;
    default:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v6 = 0x617551726961;
LABEL_14:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x696C000000000000;
      break;
  }

  return v5;
}

uint64_t sub_1001B4294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationComponentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B42FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001B4354(uint64_t a1)
{
  v2 = type metadata accessor for LocationComponentContainerViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001B43D0(uint64_t a1)
{
  type metadata accessor for LocationComponentBackgroundConfiguration.HeaderConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_1001B7214();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001B4454()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    v7 = sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v8 = sub_1000C8F04(v7);
    sub_10000ECE0(v8);
    sub_100020308(v9 / 24);
  }

  sub_1000B99E0();
  if (v1)
  {
    sub_100192240();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1001B452C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for LocationComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for DailyForecastComponentViewModel(0);
  __chkstk_darwin(v15 - 8);
  sub_1000037D8();
  v18 = (v17 - v16);
  v19 = *(a1 + *(type metadata accessor for DailyForecastComponent(0) + 20));

  CurrentWeather.temperature.getter();
  sub_1001B4A6C(v19, v14, v18);
  *v11 = sub_1003F0C44(v19);
  *(v11 + 8) = v20;
  *(v11 + 16) = 0x7261646E656C6163;
  *(v11 + 24) = 0xE800000000000000;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1003F0E2C(v18, v7);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v14) = static Edge.Set.leading.getter();
  *(inited + 32) = v14;
  v22 = static Edge.Set.trailing.getter();
  *(inited + 33) = v22;
  v23 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = type metadata accessor for LocationComponentContainerViewModel(0);
  v25 = a2 + v24[8];
  v26 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
  v27 = enum case for TemperatureChartKind.actual(_:);
  type metadata accessor for TemperatureChartKind();
  sub_1000037E8();
  (*(v28 + 104))(v25, v27);
  v29 = enum case for DetailCondition.conditions(_:);
  type metadata accessor for DetailCondition();
  sub_1000037E8();
  (*(v30 + 104))(v25, v29);
  *(v25 + v26) = 1;
  v31 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v25, 0, 1, v31);
  sub_10013D288();
  v32 = Dictionary.init(dictionaryLiteral:)();
  sub_1003F0E90(v18);
  sub_10011429C(v11, a2, type metadata accessor for LocationComponentHeaderViewModel);
  result = sub_10011429C(v7, a2 + v24[5], type metadata accessor for LocationComponentViewModel);
  v34 = (a2 + v24[6]);
  *v34 = v23;
  v34[1] = 0;
  *(a2 + v24[7]) = v32;
  return result;
}

void sub_1001B4914(uint64_t a1)
{
  sub_10009C110(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_10013DB50();
      if (v3 <= 0x3F)
      {
        sub_10009C110(319, &qword_100CA3C90, &type metadata for Text, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10009C110(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_1001B2A10(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1001B4A6C(char *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v165 = a2;
  v146 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v159 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v145 = v8 - v7;
  v144 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v158 = v9;
  __chkstk_darwin(v10);
  sub_100003848();
  v143 = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  v142 = &v142 - v13;
  v14 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_1000037C4();
  __chkstk_darwin(v15);
  sub_100003848();
  v148 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  v156 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v147 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v152 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v162 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v149 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  v29 = &v142 - v28;
  __chkstk_darwin(v30);
  sub_100003878();
  v168 = v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  sub_100003878();
  v151 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  v36 = &v142 - v35;
  __chkstk_darwin(v37);
  v39 = &v142 - v38;
  __chkstk_darwin(v40);
  v154 = &v142 - v41;
  v42 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v167 = v42;
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v150 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v155 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v153 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  v157 = &v142 - v50;
  *a3 = a1;
  v166 = type metadata accessor for DailyForecastComponentViewModel(0);
  v51 = v166[5];
  v163 = v43;
  v52 = *(v43 + 16);
  v52(&a3[v51], v165, v42);
  v53 = *(a1 + 2);
  v164 = a3;
  v54 = a1;
  v160 = v52;
  v161 = (v43 + 16);
  if (v53)
  {
    sub_1000215EC();
    v56 = &a1[v55];
    sub_10001CA7C();
    sub_1001B5674(v56, v39, v57);

    for (i = 1; ; ++i)
    {
      if (v53 == i)
      {
        v63 = v39;
        v64 = v154;
        sub_1001B58A8(v63, v154);
        v65 = v153;
        v66 = v167;
        v160(v153, v64 + v14[9], v167);
        sub_10001F510();
        sub_1001B5780(v64, v67);
        v68 = v157;
        v69 = v66;
        v70 = *(v163 + 32);
        v70(v157, v65, v69);
        goto LABEL_11;
      }

      if (i >= *(a1 + 2))
      {
        break;
      }

      sub_10001CA7C();
      sub_1001B5674(v59, v36, v60);
      sub_10000F868();
      if (static Measurement.< infix<A, B>(_:_:)())
      {
        sub_10001F510();
        sub_1001B5780(v39, v61);
        sub_1001B58A8(v36, v39);
      }

      else
      {
        sub_10001F510();
        sub_1001B5780(v36, v62);
      }

      a1 = v54;
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v68 = v157;
  v52(v157, v165, v167);
  v70 = *(v163 + 32);

LABEL_11:
  v71 = v164;
  v70(&v164[v166[6]], v68, v167);
  v72 = v162;
  if (v53)
  {
    if (!*(a1 + 2))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    sub_1000215EC();
    v74 = &a1[v73];
    sub_10001CA7C();
    sub_1001B5674(v74, v168, v75);
    for (j = 1; v53 != j; ++j)
    {
      if (j >= *(a1 + 2))
      {
        goto LABEL_43;
      }

      sub_10001CA7C();
      sub_1001B5674(v77, v29, v78);
      sub_10000F868();
      v79 = v168;
      if (static Measurement.< infix<A, B>(_:_:)())
      {
        sub_10001F510();
        sub_1001B5780(v79, v80);
        sub_1001B58A8(v29, v79);
      }

      else
      {
        sub_10001F510();
        sub_1001B5780(v29, v81);
      }

      a1 = v54;
    }

    v82 = v151;
    sub_1001B58A8(v168, v151);
    v83 = v150;
    v84 = v167;
    v160(v150, v82 + v14[8], v167);
    sub_10001F510();
    sub_1001B5780(v82, v85);
    v86 = v155;
    v70(v155, v83, v84);
    v87 = v164;
    v72 = v162;
  }

  else
  {
    v86 = v155;
    v168 = v70;
    v88 = v167;
    v160(v155, v165, v167);
    v87 = v71;
    v84 = v88;
    v70 = v168;
  }

  v70(&v87[v166[7]], v86, v84);
  v89 = v156;
  if (!v53)
  {
    v122 = v142;
    static WeatherFormatStyle<>.weather.getter();
    v123 = v143;
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    v124 = *(v158 + 8);
    v157 = a1;
    v158 += 8;
    v168 = v124;
    v125 = v144;
    (v124)(v122, v144);
    LODWORD(v162) = enum case for WeatherFormatPlaceholder.none(_:);
    v126 = *(v159 + 104);
    v160 = (v159 + 104);
    v161 = v126;
    v127 = v145;
    v128 = v146;
    v126(v145);
    v156 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v121 = v87;
    v154 = sub_1001D1A40(&qword_100CA5410, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
    v129 = v123;
    v130 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v132 = v131;

    v133 = *(v159 + 8);
    v159 += 8;
    v155 = v133;
    v133(v127, v128);
    v134 = v168;
    (v168)(v129, v125);
    v135 = &v121[v166[8]];
    *v135 = v130;
    v135[1] = v132;

    static WeatherFormatStyle<>.weather.getter();
    v136 = v129;
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    v134(v122, v125);
    v137 = v128;
    v161(v127, v162, v128);
    static UnitManager.standard.getter();
    v138 = v167;
    v139 = v165;
    v118 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v119 = v140;

    (*(v163 + 8))(v139, v138);
    v155(v127, v137);
    (v168)(v136, v125);
    goto LABEL_41;
  }

  if (*(a1 + 2))
  {
    sub_1000215EC();
    v91 = &a1[v90];
    sub_10001CA7C();
    sub_1001B5674(v91, v72, v92);
    v93 = 1;
    v94 = v152;
    while (v53 != v93)
    {
      if (v93 >= *(a1 + 2))
      {
        goto LABEL_44;
      }

      sub_10001CA7C();
      sub_1001B5674(v95, v94, v96);
      v97 = v72;
      v98 = String.count.getter();
      if (v98 >= String.count.getter())
      {
        sub_10001F510();
        sub_1001B5780(v94, v100);
      }

      else
      {
        sub_10001F510();
        sub_1001B5780(v97, v99);
        sub_1001B58A8(v94, v97);
      }

      v72 = v97;
      ++v93;
    }

    v101 = v149;
    sub_1001B58A8(v72, v149);
    v102 = (v101 + v14[18]);
    v104 = *v102;
    v103 = v102[1];

    sub_10001F510();
    sub_1001B5780(v101, v105);
    v106 = &v164[v166[8]];
    *v106 = v104;
    *(v106 + 1) = v103;
    if (!*(a1 + 2))
    {
      goto LABEL_48;
    }

    sub_1001B5674(v91, v89, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    v107 = 1;
    v108 = v163;
    v109 = v148;
    while (v53 != v107)
    {
      if (v107 >= *(a1 + 2))
      {
        goto LABEL_45;
      }

      sub_10001CA7C();
      sub_1001B5674(v110, v109, v111);
      sub_100031ED0(v14[17]);
      v112 = v89;
      v113 = String.count.getter();
      if (v113 >= String.count.getter())
      {
        sub_10001F510();
        sub_1001B5780(v109, v115);
      }

      else
      {
        sub_10001F510();
        sub_1001B5780(v112, v114);
        sub_1001B58A8(v109, v112);
      }

      v89 = v112;
      ++v107;
    }

    v116 = v147;
    sub_1001B58A8(v89, v147);
    v117 = (v116 + v14[17]);
    v118 = *v117;
    v119 = v117[1];

    sub_10001F510();
    sub_1001B5780(v116, v120);
    (*(v108 + 8))(v165, v167);
    v121 = v164;
LABEL_41:
    v141 = &v121[v166[9]];
    *v141 = v118;
    v141[1] = v119;
    return;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1001B5618(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001B5674(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001B56D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001B5728(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001B5780(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1001B57D8(uint64_t a1)
{
  sub_1001B5844(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1001B5844(uint64_t a1)
{
  if (!qword_100CC6E60)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1001B314C();
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, &qword_100CC6E60);
    }
  }
}

uint64_t sub_1001B58A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B590C(uint64_t a1)
{
  result = type metadata accessor for RoundedCornerStyle();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001B59A8(uint64_t a1)
{
  sub_1000816EC(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocationComponentContainerViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_100081B54(319, &qword_100CADCE0, &protocol descriptor for LocationInteractorType, 0);
      if (v3 <= 0x3F)
      {
        sub_10013DB50();
        if (v4 <= 0x3F)
        {
          sub_1001B5AF0(319);
          if (v5 <= 0x3F)
          {
            sub_1000827BC(319, &unk_100CC0E40, &qword_100CC07D8, &qword_100A84020, &type metadata accessor for Binding);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1001B5AF0(uint64_t a1)
{
  if (!qword_100CC0E38)
  {
    type metadata accessor for PagingContentOffsetsStorage(255);
    sub_100061A3C(&qword_100CC0808, type metadata accessor for PagingContentOffsetsStorage, aY_35);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CC0E38);
    }
  }
}

void sub_1001B5BA4()
{
  v1 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v1 - 8);
  v3 = v32 - v2;
  v4 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v4 - 8);
  v6 = v32 - v5;
  v7 = type metadata accessor for Text.Measurements.Context();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  sub_100357470();
  v17 = v36;
  if (v36)
  {
    *v16 = v35;
    *(v16 + 1) = v17;
    v18 = v38;
    *(v16 + 1) = v37;
    *(v16 + 2) = v18;
    *(v16 + 6) = v39;
    swift_storeEnumTagMultiPayload();
    v19 = type metadata accessor for LocationComponentHeaderMetricsComputer(0);
    v34 = v7;
    v20 = v19;
    v33 = sub_1009CC7F8(v16, *(v0 + *(v19 + 52)), v0 + *(v19 + 32));
    v21 = v8;
    v23 = v22;
    v24 = v3;
    v26 = v25;
    v32[1] = v27;
    sub_1001995A8(v16, type metadata accessor for LocationComponentHeaderViewModel);
    memcpy(__dst, (v0 + *(v20 + 28)), sizeof(__dst));
    sub_1000EF898();
    v28 = type metadata accessor for Text.WritingMode();
    sub_10001B350(v6, 1, 1, v28);
    v29 = type metadata accessor for Text.Suffix();
    sub_10001B350(v24, 1, 1, v29);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    v30 = v33;
    Text.Measurements.size(of:in:context:)();
    sub_10010CD64(v30, v23, v26 & 1);

    (*(v21 + 8))(v10, v34);
  }

  else
  {
    sub_10019937C(v0, v13, type metadata accessor for LocationComponentHeaderViewModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1001995A8(v13, type metadata accessor for LocationComponentHeaderViewModel);
    if (!EnumCaseMultiPayload)
    {
      sub_1001884C0();
    }
  }
}

unint64_t sub_1001B5F44()
{
  result = qword_100CDA248;
  if (!qword_100CDA248)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA068, &qword_100A850D8);
    v4[0] = sub_100006F64(&qword_100CDA250, &qword_100CDA060, &qword_100A850D0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CC2270, &qword_100CC2278, &qword_100A5AAF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA248);
  }

  return result;
}

uint64_t sub_1001B6028()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1 || (sub_10035769C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LocationComponentHeaderMetricsComputer(0);
  return sub_1004E0DA0() & 1;
}

int *sub_1001B60B4@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v2 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v2 - 8);
  v103 = &v90 - v3;
  v4 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v4 - 8);
  v100 = &v90 - v5;
  v6 = type metadata accessor for Text.Measurements.Context();
  v104 = *(v6 - 8);
  v105 = v6;
  __chkstk_darwin(v6);
  v101 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for DynamicTypeSize();
  v115 = *(v102 - 8);
  __chkstk_darwin(v102);
  v113 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ContentSizeCategory();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v122 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LayoutDirection();
  v110 = *(v10 - 8);
  v111 = v10;
  __chkstk_darwin(v10);
  v120 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for Text.Measurements();
  v109 = *(v121 - 8);
  __chkstk_darwin(v121);
  v123 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocationComponentHeaderMetricsComputer(0);
  __chkstk_darwin(v13);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v98);
  v97 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v99 = &v90 - v22;
  __chkstk_darwin(v23);
  v119 = &v90 - v24;
  __chkstk_darwin(v25);
  v108 = &v90 - v26;
  v27 = type metadata accessor for ComputeAppropriateLocationComponentHeaderViewModelModifier(0);
  v28 = v27[8];
  memcpy(__dst, (v1 + v28), 0x49uLL);
  v116 = v16;
  v118 = v17;
  v96 = v1;
  if (__dst[9])
  {
    memcpy(v128, (v1 + v28), 0x48uLL);
    v29 = v1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100427960(__dst);
    (*(v17 + 8))(v19, v116);
    v29 = v96;
  }

  v31 = v108;
  sub_1009A2768(v128[48], v108);
  sub_10019937C(v31, v119, type metadata accessor for LocationComponentHeaderViewModel);
  v32 = v29 + v27[5];
  v94 = *(v109 + 16);
  v95 = v109 + 16;
  v94(v123, v32, v121);
  v33 = v29 + v27[11];
  v34 = *v33;
  v93 = *(v33 + 8);
  v117 = v34;
  if (v93 == 1)
  {
    v35 = v34;
    v36 = v116;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v34, 0);
    v36 = v116;
    (*(v118 + 8))(v19, v116);
    v35 = v128[0];
  }

  if (v35)
  {
    v38 = 12.0;
  }

  else
  {
    v38 = 16.0;
  }

  memcpy(v128, (v29 + v28), 0x49uLL);
  if (v128[72])
  {
    memcpy(v127, (v29 + v28), sizeof(v127));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v36 = v116;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100427960(v128);
    (*(v118 + 8))(v19, v36);
  }

  memcpy(v126, v127, sizeof(v126));
  sub_1001681D4();
  sub_10009ECC8();
  v40 = v29 + v27[7];
  v41 = *v40;
  if (*(v40 + 8) == 1)
  {
    v107 = *v40;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v41, 0);
    (*(v118 + 8))(v19, v36);
    v107 = v124;
  }

  v43 = v29 + v27[10];
  v44 = *v43;
  if (*(v43 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v45 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v44, 0);
    (*(v118 + 8))(v19, v36);
    v44 = v124;
  }

  v90 = sub_100426BFC();
  v91 = v46;
  v92 = v44;
  if (v93)
  {
    v47 = v117;
  }

  else
  {
    v48 = v36;
    v49 = v117;

    static os_log_type_t.fault.getter();
    v50 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v49, 0);
    (*(v118 + 8))(v19, v48);
    v47 = v124;
  }

  v117 = v47;
  v51 = v29 + v27[13];
  v52 = *v51;
  v53 = *(v51 + 8);
  if (*(v51 + 9) != 1)
  {

    static os_log_type_t.fault.getter();
    v54 = static Log.runtimeIssuesLog.getter();
    v55 = v118;
    v56 = v54;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100109A3C(v52, v53, 0);
    (*(v55 + 8))(v19, v116);
    v52 = v124;
    LOBYTE(v53) = v125;
  }

  v57 = v92;
  v58 = v113;
  sub_10011A1CC();
  v118 = v13[16];
  *&v15[v118] = 0;
  sub_10019937C(v119, v15, type metadata accessor for LocationComponentHeaderViewModel);
  v94(&v15[v13[5]], v123, v121);
  *&v15[v13[6]] = v38;
  memcpy(&v15[v13[7]], v126, 0x48uLL);
  v59 = &v15[v13[8]];
  (*(v110 + 16))(v59, v120, v111);
  (*(v112 + 16))(&v15[v13[9]], v122, v114);
  v15[v13[10]] = v107 & 1;
  v15[v13[11]] = v57 & 1;
  v60 = &v15[v13[12]];
  v61 = v13;
  v62 = v90;
  *v60 = v90;
  v63 = v91;
  v60[8] = v91 & 1;
  v64 = v117 & 1;
  v15[v61[13]] = v117 & 1;
  v65 = &v15[v61[14]];
  *v65 = v52;
  v65[8] = v53 & 1;
  v66 = v102;
  (*(v115 + 16))(&v15[v61[15]], v58, v102);
  if (((v62 == 1) & ~v63) == 0 && (v53 & 1) == 0)
  {
    sub_100426D68(v15, v123);
  }

  v67 = sub_1009CC7F8(v15, v64, v59);
  v69 = v68;
  v71 = v70;
  v72 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v100, 1, 1, v72);
  v73 = type metadata accessor for Text.Suffix();
  sub_10001B350(v103, 1, 1, v73);
  v74 = v101;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  v75 = v123;
  Text.Measurements.size(of:in:context:)();
  v77 = v76;
  sub_10010CD64(v67, v69, v71 & 1);

  (*(v104 + 8))(v74, v105);
  (*(v115 + 8))(v113, v66);
  (*(v112 + 8))(v122, v114);
  (*(v110 + 8))(v120, v111);
  (*(v109 + 8))(v75, v121);
  sub_1001995A8(v119, type metadata accessor for LocationComponentHeaderViewModel);
  *&v15[v118] = v77;
  v78 = v99;
  sub_10019937C(v15, v99, type metadata accessor for LocationComponentHeaderViewModel);
  v79 = sub_1004273A4();
  v80 = v97;
  sub_10019937C(v15, v97, type metadata accessor for LocationComponentHeaderViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1001995A8(v80, type metadata accessor for LocationComponentHeaderViewModel);
  v82 = 0;
  v83 = v107;
  if (v107)
  {
    sub_1001B5BA4();
    v82 = v84;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v85 = -1.0;
  }

  else
  {
    v85 = 11.0;
  }

  v86 = sub_1001B6028();
  sub_1001995A8(v15, type metadata accessor for LocationComponentHeaderMetricsComputer);
  sub_1001995A8(v108, type metadata accessor for LocationComponentHeaderViewModel);
  v87 = v106;
  sub_1001B7010(v78, v106, type metadata accessor for LocationComponentHeaderViewModel);
  result = type metadata accessor for LocationComponentHeaderMetrics(0);
  *(v87 + result[5]) = v79;
  *(v87 + result[6]) = v85;
  v89 = v87 + result[7];
  *v89 = v82;
  *(v89 + 8) = (v83 & 1) == 0;
  *(v87 + result[8]) = v86 & 1;
  return result;
}

uint64_t sub_1001B6FB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001B7010(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_1001B70A4(uint64_t a1)
{
  type metadata accessor for LocationComponentContainerViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1000816EC(319, &qword_100CA3C90, &type metadata for Text, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10013D854(319, &unk_100CC0C48, type metadata accessor for LocationComponentHeaderMetrics, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001B71C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1001B7214()
{
  if (!qword_100CC0CE8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC0CE8);
    }
  }
}

uint64_t sub_1001B72D4(uint64_t a1)
{
  v1 = type metadata accessor for LocationComponentContainerViewModel(319);
  if (v2 <= 0x3F)
  {
    v1 = type metadata accessor for Text.Measurements();
    if (v3 <= 0x3F)
    {
      sub_100007A9C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_1001B71C4(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_1001B71C4(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
          if (v9 > 0x3F)
          {
            return v8;
          }

          sub_100009940(319, &qword_100CB8750, &qword_100CA6060, &unk_100A4C830);
          if (v10 > 0x3F)
          {
            return v8;
          }

          else
          {
            sub_100007A9C(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_100009940(319, &qword_100CB8758, &qword_100CA6188, qword_100A53E20);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_100007A9C(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1001B7520@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v110 = a2;
  v113 = *(a1 + 3);
  v2 = type metadata accessor for Button();
  v3 = sub_100006C58();
  swift_getWitnessTable(v3, v2);
  swift_getOpaqueTypeMetadata2();
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = sub_1001B8300();
  v134[0] = OpaqueTypeConformance2;
  v134[1] = v7;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v4, v134);
  v9 = sub_100965958();
  v133[0] = WitnessTable;
  v133[1] = v9;
  v10 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v133);
  v116 = sub_1001B8354();
  swift_getOpaqueTypeMetadata2();
  v111 = sub_1001B83A8();
  swift_getOpaqueTypeMetadata2();
  v11 = type metadata accessor for PlainButtonStyle();
  sub_100009354();
  v108 = v5;
  v109 = v10;
  v129 = v5;
  v130 = v11;
  v14 = v11;
  v131 = v10;
  v132 = sub_1001B83FC(v12, v13, &protocol conformance descriptor for PlainButtonStyle);
  v114 = v132;
  sub_1000235D8();
  swift_getOpaqueTypeMetadata2();
  v15 = type metadata accessor for _ConditionalContent();
  sub_10003C724();
  v16 = type metadata accessor for _ConditionalContent();
  sub_1000037C4();
  v97 = v17;
  __chkstk_darwin(v18);
  sub_100003C38();
  v96 = v19 - v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v100 = v22;
  v23 = type metadata accessor for ModifiedContent();
  v24 = type metadata accessor for ModifiedContent();
  v128[0] = v113;
  v128[1] = v7;
  v25 = v23;
  v26 = v16;
  v127[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v25, v128);
  v127[1] = v9;
  v27 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v24, v127);
  v129 = v24;
  v130 = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v129 = v24;
  v130 = v27;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = OpaqueTypeMetadata2;
  v129 = OpaqueTypeMetadata2;
  v130 = v112;
  swift_getOpaqueTypeMetadata2();
  v29 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v95 = v30;
  __chkstk_darwin(v31);
  sub_100003C38();
  v94 = v32 - v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  sub_10000E70C();
  v99 = v35;
  v36 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v38 = v37;
  __chkstk_darwin(v39);
  v41 = &v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C724();
  type metadata accessor for _ConditionalContent();
  sub_1000037C4();
  v105 = v43;
  v106 = v42;
  __chkstk_darwin(v42);
  v103 = v29;
  v104 = &v94 - v44;
  v45 = *v101;
  LODWORD(v44) = *(v101 + 8);
  v115 = v14;
  v107 = v26;
  v98 = v15;
  if (v44 != 1)
  {

    static os_log_type_t.fault.getter();
    v66 = v15;
    v67 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v15 = v66;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v45, 0);
    (*(v38 + 8))(v41, v36);
    if (v129 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v68 = v94;
    sub_100964B3C(v102, v94);
    v69 = sub_100004F68();
    v70 = sub_1009659AC();
    v119[0] = v69;
    v119[1] = v70;
    v71 = sub_100007E30();
    v72 = v103;
    v73 = swift_getWitnessTable(v71, v103, v119);
    v74 = v99;
    sub_1000833D8(v68, v72, v73);
    v102 = *(v95 + 8);
    v102(v68, v72);
    sub_1000833D8(v74, v72, v73);
    v47 = v108;
    v48 = v109;
    v129 = v108;
    v130 = &type metadata for DefaultBackgroundButtonStyle;
    sub_100011094();
    v101 = swift_getOpaqueTypeConformance2();
    v129 = v47;
    v130 = &type metadata for FixedBackgroundButtonStyle;
    v75 = sub_100037EA4();
    v129 = v47;
    v130 = v115;
    v131 = v48;
    v132 = v114;
    v76 = sub_10001FDD0();
    v118[0] = v75;
    v118[1] = v76;
    sub_100075380();
    v78 = swift_getWitnessTable(v77, v15, v118);
    v117[0] = v101;
    v117[1] = v78;
    v79 = v75;
    v62 = v72;
    v54 = v107;
    swift_getWitnessTable(v79, v107, v117);
    v65 = v104;
    sub_1003E8038();
    v80 = v102;
    v102(v68, v62);
    v80(v99, v62);
    goto LABEL_6;
  }

  if (v45)
  {
    goto LABEL_5;
  }

LABEL_3:
  v46 = v96;
  sub_1001B8444(v102, v96);
  v47 = v108;
  v48 = v109;
  v129 = v108;
  v130 = &type metadata for DefaultBackgroundButtonStyle;
  sub_100011094();
  v49 = swift_getOpaqueTypeConformance2();
  v129 = v47;
  v130 = &type metadata for FixedBackgroundButtonStyle;
  v50 = sub_10002CBE8(v111);
  v129 = v47;
  v130 = v115;
  v131 = v48;
  v132 = v114;
  v51 = sub_10001FDD0();
  v126[0] = v50;
  v126[1] = v51;
  sub_100049F70();
  v53 = swift_getWitnessTable(v52, v15, v126);
  v125[0] = v49;
  v125[1] = v53;
  v54 = v107;
  v55 = swift_getWitnessTable(v50, v107, v125);
  v56 = v100;
  v57 = v46;
  sub_1000833D8(v46, v54, v55);
  v58 = *(v97 + 8);
  v58(v46, v54);
  sub_1000833D8(v56, v54, v55);
  v59 = sub_100004F68();
  v60 = sub_1009659AC();
  v124[0] = v59;
  v124[1] = v60;
  v61 = sub_100007E30();
  v62 = v103;
  swift_getWitnessTable(v61, v103, v124);
  v63 = v104;
  sub_10012D09C();
  v64 = v57;
  v65 = v63;
  v58(v64, v54);
  v58(v100, v54);
LABEL_6:
  v81 = sub_100004F68();
  v82 = sub_1009659AC();
  v123[0] = v81;
  v123[1] = v82;
  v83 = sub_100007E30();
  v84 = swift_getWitnessTable(v83, v62, v123);
  v129 = v47;
  v130 = &type metadata for DefaultBackgroundButtonStyle;
  sub_100011094();
  v85 = swift_getOpaqueTypeConformance2();
  v129 = v47;
  v130 = &type metadata for FixedBackgroundButtonStyle;
  v86 = sub_100037EA4();
  v129 = v47;
  v130 = v115;
  v131 = v48;
  v132 = v114;
  v87 = sub_10001FDD0();
  v122[0] = v86;
  v122[1] = v87;
  sub_100075380();
  v89 = swift_getWitnessTable(v88, v98, v122);
  v121[0] = v85;
  v121[1] = v89;
  v90 = swift_getWitnessTable(v86, v54, v121);
  v120[0] = v84;
  v120[1] = v90;
  v91 = v106;
  v92 = swift_getWitnessTable(v86, v106, v120);
  sub_1000833D8(v65, v91, v92);
  return (*(v105 + 8))(v65, v91);
}