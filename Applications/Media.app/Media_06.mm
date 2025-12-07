id sub_100083044()
{
  result = [v0 mediaItemType];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = String.lowercased()();

      v8 = v7._countAndFlagsBits == 28001 && v7._object == 0xE200000000000000;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7._countAndFlagsBits == 28006 ? (v12 = v7._object == 0xE200000000000000) : (v12 = 0), v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7._countAndFlagsBits == 6447460 && v7._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7._countAndFlagsBits == 0x73756C70626164 && v7._object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7._countAndFlagsBits == 0x6D78737569726973 && v7._object == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        v9 = String._bridgeToObjectiveC()();
        v10 = sub_100084518(v9);

        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v11;
      }

      if (v7._countAndFlagsBits != 25704 || v7._object != 0xE200000000000000)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100083338(uint64_t a1)
{
  v1 = dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
  if (v1 <= 7u && ((1 << v1) & 0x91) != 0)
  {
    v3 = CAFMediaSourceObservable.observed.getter();
    v4 = [v3 hasUserVisibleLabel];

    if (v4)
    {
      v5 = dispatch thunk of CAFMediaSourceObservable.userVisibleLabel.getter();
      if (v6)
      {
        v7 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v7 = v5 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          v8 = v5;
          v9 = v6;
          if (String.count.getter() >= 16)
          {
            sub_100084474(15, v8, v9);

            v8 = static String._fromSubstring(_:)();
          }

          return v8;
        }
      }
    }
  }

  dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
  result = CAFMediaSourceSemanticType.title.getter();
  if (!v11)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100083460()
{
  v1 = [v0 mediaItemType];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 1;
  }

  v7 = String.lowercased()();

  if (v7._countAndFlagsBits == 25704 && v7._object == 0xE200000000000000)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  if ([v0 multicast] && objc_msgSend(v0, "multicast") < 8)
  {
    return 1;
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006928(v10, qword_1000F3B70);
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136446466;
    v16 = [v11 identifier];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v20 = 0xE600000000000000;
      v18 = 0x29656E6F6E28;
    }

    v22 = sub_100043AF0(v18, v20, &v24);

    *(v14 + 4) = v22;
    *(v14 + 12) = 258;
    v23 = [v11 multicast];

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "HD Media item with identifier %{public}s has invalid multicast: %{public}hhu", v14, 0xFu);
    sub_100006960(v15);

    return 0;
  }

  else
  {

    return 0;
  }
}

void sub_100083720(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 3u)
  {
    if (a1 < 3u)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
LABEL_17:
      v8 = String._bridgeToObjectiveC()();
      v9 = [objc_opt_self() _systemImageNamed:v8];

      if (v9)
      {
        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    if (a1 != 5)
    {
      goto LABEL_21;
    }

    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    if (v5)
    {
      return;
    }

    __break(1u);
LABEL_14:
    if (v1 != 3)
    {
      goto LABEL_21;
    }

    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() _systemImageNamed:v6];

    if (v7)
    {
      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (a1 == 6)
  {
    goto LABEL_8;
  }

  if (a1 == 7)
  {
LABEL_19:
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() _systemImageNamed:v10];

    if (v11)
    {
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (a1 != 8)
  {
LABEL_21:
    v12 = String._bridgeToObjectiveC()();
    v13 = [objc_opt_self() systemImageNamed:v12];

    if (!v13)
    {
      __break(1u);
      goto LABEL_23;
    }

    return;
  }

LABEL_8:
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  if (!v3)
  {
LABEL_23:
    __break(1u);
  }
}

void sub_100083988(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3B70);
    swift_errorRetain();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29[0] = v9;
      *v7 = 136446466;
      v10 = TerrestrialRadioStation.debugDisplayName.getter();
      v12 = sub_100043AF0(v10, v11, v29);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2114;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v13;
      *v8 = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to tune to station %{public}s with %{public}@", v7, 0x16u);
      sub_1000113D0(v8);

      sub_100006960(v9);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006928(v15, qword_1000F3B70);

    v16 = a3;
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v18 = 136446466;
      v19 = (a2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      v21 = *v19;
      v20 = v19[1];

      v22 = sub_100043AF0(v21, v20, &v30);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v23 = [v16 identifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_100043AF0(v24, v26, &v30);

      *(v18 + 14) = v27;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Tuned successfully to %{public}s in source %{public}s!", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_100083D7C(uint64_t a1, int a2, void *a3)
{
  if (!a1)
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006928(v10, qword_1000F3B70);
    v11 = a3;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 67109378;
      *(v13 + 4) = a2;
      *(v13 + 8) = 2080;
      v15 = [v11 identifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_100043AF0(v16, v18, &v21);

      *(v13 + 10) = v19;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Tuned successfully to %u in source %s!", v13, 0x12u);
      sub_100006960(v14);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006928(v3, qword_1000F3B70);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Failed to tune to frequency with %@", v5, 0xCu);
    sub_1000113D0(v6);

LABEL_10:

    return;
  }
}

void sub_10008406C(id *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v44 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v40 = a3;
    v8 = 0;
    v42 = i;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v10 = *(a2 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = [v10 identifier];
      if (v13)
      {
        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = [v44 mediaItemImageIdentifier];
      if (!v18)
      {
        if (!v17)
        {
          goto LABEL_26;
        }

LABEL_21:

        goto LABEL_6;
      }

      a3 = v18;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v17)
      {
        if (!v21)
        {
          goto LABEL_21;
        }

        if (v15 == v19 && v17 == v21)
        {

LABEL_26:
          v22 = [v11 imageData];

          if (v22)
          {
            v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = v24;

            v26 = objc_allocWithZone(UIImage);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v22 = [v26 initWithData:isa];

            sub_100072620(v23, v25);
          }

LABEL_28:
          a3 = v40;
          goto LABEL_33;
        }

        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v21)
        {
          goto LABEL_26;
        }
      }

LABEL_6:
      ++v8;
      if (v12 == v42)
      {
        v22 = 0;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v22 = 0;
LABEL_33:
  v28 = v44;
  v29 = [v28 multicast];
  type metadata accessor for TerrestrialRadioStation(0);
  swift_allocObject();
  v45 = v22;
  v43 = TerrestrialRadioStation.init(station:source:multicast:logo:)(v28, a3, v29, v22);
  v30 = a4;
  if (a4 >> 62)
  {
LABEL_47:
    v39 = _CocoaArrayWrapper.endIndex.getter();
    v30 = a4;
    v31 = v39;
  }

  else
  {
    v31 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = 0;
  v33 = v30 & 0xC000000000000001;
  do
  {
    v34 = v32;
    if (v31 == v32)
    {
      break;
    }

    if (v33)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v34, 1))
      {
LABEL_44:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v32 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_47;
      }

      v35 = *(v30 + 8 * v32 + 32);

      if (__OFADD__(v34, 1))
      {
        goto LABEL_44;
      }
    }

    v36 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v37 = *(v35 + v36);
    v38 = CAFMediaItem.isEquivalent(to:)();

    v32 = v34 + 1;
    v30 = a4;
  }

  while ((v38 & 1) == 0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();

  *a5 = v43;
}

uint64_t sub_100084474(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

id sub_100084518(void *a1)
{
  v1 = a1;
  v2 = CAFUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1000E3070 table:@"Localizable"];

  return v3;
}

uint64_t sub_100084590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000845A8()
{
  result = qword_1000EAFE8;
  if (!qword_1000EAFE8)
  {
    sub_100005A50(255, &qword_1000EAFE0, CAFMediaSource_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EAFE8);
  }

  return result;
}

uint64_t sub_10008462C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100084688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000846D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10008473C@<D0>(uint64_t a5@<X8>)
{
  v6 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v6);

  static HorizontalAlignment.leading.getter();
  LODWORD(v9) = 0;
  sub_10008786C(&qword_1000EE450, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10000368C(&qword_1000EE458, &qword_1000B8C38);
  sub_100084B54();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  if (qword_1000EAD38 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = (a5 + *(sub_10000368C(&qword_1000EE470, &qword_1000B8C40) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_100084934(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10007760C();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  sub_10000368C(&qword_1000EE478, &unk_1000B8C48);
  sub_100005870(&qword_1000EE480, &qword_1000EE478, &unk_1000B8C48, &protocol conformance descriptor for [A]);
  sub_100084BD8();
  sub_100086938();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100084A5C@<X0>(char *a1@<X0>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
  Binding.projectedValue.getter();
  type metadata accessor for RadioDialerViewModel(0);
  sub_10008786C(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
  result = EnvironmentObject.init()();
  *a5 = v6;
  *(a5 + 1) = v7;
  *(a5 + 8) = v10;
  *(a5 + 16) = v11;
  *(a5 + 24) = v12;
  *(a5 + 32) = result;
  *(a5 + 40) = v9;
  return result;
}

unint64_t sub_100084B54()
{
  result = qword_1000EE460;
  if (!qword_1000EE460)
  {
    sub_100005780(&qword_1000EE458, &qword_1000B8C38);
    sub_100084BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE460);
  }

  return result;
}

unint64_t sub_100084BD8()
{
  result = qword_1000EE468;
  if (!qword_1000EE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE468);
  }

  return result;
}

uint64_t sub_100084C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = type metadata accessor for EnvironmentValues();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000368C(&qword_1000EE580, &qword_1000B9078);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v38 = sub_10000368C(&qword_1000EE588, &qword_1000B9080);
  __chkstk_darwin(v38);
  v12 = &v36 - v11;
  v39 = sub_10000368C(&qword_1000EE590, &qword_1000B9088);
  __chkstk_darwin(v39);
  v14 = &v36 - v13;
  v15 = v2[3];
  KeyPath = swift_getKeyPath();
  v17 = sub_10000368C(&qword_1000EE598, &qword_1000B9090);
  (*(*(v17 - 8) + 16))(v10, a1, v17);
  v18 = &v10[*(sub_10000368C(&qword_1000EE5A0, &qword_1000B9098) + 36)];
  *v18 = KeyPath;
  v18[1] = v15;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v10[*(v8 + 44)];
  v20 = v43;
  *v19 = v42;
  *(v19 + 1) = v20;
  *(v19 + 2) = v44;
  v46 = *(v2 + 8);
  v21 = *v2;
  v45 = *v2;
  v22 = v46;
  if (v46 == 1)
  {
    v23 = v37;
    if ((v21 & 1) == 0)
    {
LABEL_3:

      goto LABEL_6;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007834(&v45, &qword_1000EBA80, &qword_1000B4AF0);
    v23 = v37;
    (*(v37 + 8))(v6, v4);
    if (v41 != 1)
    {
      goto LABEL_3;
    }
  }

  v26 = [objc_opt_self() radio_carSystemFocusLabelColor];
  v24 = Color.init(uiColor:)();
LABEL_6:
  v41 = v24;
  v27 = AnyShapeStyle.init<A>(_:)();
  sub_10001721C(v10, v12, &qword_1000EE580, &qword_1000B9078);
  *&v12[*(v38 + 36)] = v27;
  if (!v22)
  {

    static os_log_type_t.fault.getter();
    v29 = v23;
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007834(&v45, &qword_1000EBA80, &qword_1000B4AF0);
    (*(v29 + 8))(v6, v4);
    if (v41 != 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    v31 = [objc_opt_self() radio_carSystemFocusColor];
    v28 = Color.init(uiColor:)();
    goto LABEL_11;
  }

  if (v21)
  {
    goto LABEL_10;
  }

LABEL_8:
  v28 = v2[4];

LABEL_11:
  v32 = static Edge.Set.all.getter();
  sub_10001721C(v12, v14, &qword_1000EE588, &qword_1000B9080);
  v33 = &v14[*(v39 + 36)];
  *v33 = v28;
  v33[8] = v32;
  v34 = v40;
  sub_10001721C(v14, v40, &qword_1000EE590, &qword_1000B9088);
  result = sub_10000368C(&qword_1000EE5A8, &unk_1000B90A0);
  *(v34 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100085148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v5 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v38 = type metadata accessor for Font.TextStyle();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v37 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 1))
  {
    v14 = *v2;
    v15 = v2[1];

    LOBYTE(v15) = sub_100048060(v14 | (v15 << 8));

    if ((v15 & 1) == 0)
    {
      static Color.white.getter();
      v18 = Color.opacity(_:)();

      goto LABEL_10;
    }

    v46 = v2[32];
    v16 = *(v2 + 3);
    v45 = *(v3 + 3);
    if (v46 == 1)
    {
      if ((v16 & 1) == 0)
      {
LABEL_5:
        v17 = static Color.primary.getter();
LABEL_9:
        v18 = v17;
LABEL_10:
        if (ButtonStyleConfiguration.isPressed.getter())
        {
          v21 = [objc_opt_self() whiteColor];
          [v21 colorWithAlphaComponent:0.6];

LABEL_17:
          v23 = Color.init(uiColor:)();
          goto LABEL_18;
        }

        v44 = v3[32];
        v22 = *(v3 + 3);
        v43 = v22;
        if (v44 == 1)
        {
          if ((v22 & 1) == 0)
          {
LABEL_14:
            static Color.white.getter();
            v23 = Color.opacity(_:)();

LABEL_18:
            ButtonStyleConfiguration.label.getter();
            v26 = v38;
            (*(v8 + 104))(v10, enum case for Font.TextStyle.title3(_:), v38);
            v27 = type metadata accessor for Font.Design();
            (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
            static Font.Weight.medium.getter();
            v28 = static Font.system(_:design:weight:)();
            sub_100007834(v7, &qword_1000ED388, &unk_1000B6FF0);
            (*(v8 + 8))(v10, v26);
            KeyPath = swift_getKeyPath();
            v30 = (a2 + *(sub_10000368C(&qword_1000EE558, &qword_1000B9020) + 36));
            *v30 = KeyPath;
            v30[1] = v28;
            static Alignment.center.getter();
            _FrameLayout.init(width:height:alignment:)();
            v31 = (a2 + *(sub_10000368C(&qword_1000EE560, &qword_1000B9028) + 36));
            v32 = v41;
            *v31 = v40;
            v31[1] = v32;
            v31[2] = v42;
            LOBYTE(v28) = static Edge.Set.all.getter();
            v33 = a2 + *(sub_10000368C(&qword_1000EE568, &qword_1000B9030) + 36);
            *v33 = v23;
            *(v33 + 8) = v28;
            v34 = swift_getKeyPath();
            v35 = (a2 + *(sub_10000368C(&qword_1000EE570, &qword_1000B9068) + 36));
            *v35 = v34;
            v35[1] = v18;
            result = sub_10000368C(&qword_1000EE578, &qword_1000B9070);
            *(a2 + *(result + 36)) = 256;
            return result;
          }
        }

        else
        {

          static os_log_type_t.fault.getter();
          v24 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100007834(&v43, &qword_1000EBA80, &qword_1000B4AF0);
          (*(v37 + 8))(v13, v11);
          if (v40 != 1)
          {
            goto LABEL_14;
          }
        }

        v25 = [objc_opt_self() radio_carSystemFocusColor];
        goto LABEL_17;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100007834(&v45, &qword_1000EBA80, &qword_1000B4AF0);
      (*(v37 + 8))(v13, v11);
      if (v40 != 1)
      {
        goto LABEL_5;
      }
    }

    v20 = [objc_opt_self() radio_carSystemFocusLabelColor];
    v17 = Color.init(uiColor:)();
    goto LABEL_9;
  }

  type metadata accessor for RadioDialerViewModel(0);
  sub_10008786C(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000857AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v58 = sub_10000368C(&qword_1000EE4A8, &qword_1000B8D68);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v4 = &v52 - v3;
  v5 = sub_10000368C(&qword_1000EE4B0, &qword_1000B8D70);
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v59 = &v52 - v6;
  v67 = sub_10000368C(&qword_1000EE4B8, &qword_1000B8D78);
  v7 = __chkstk_darwin(v67);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = (&v52 - v10);
  v69 = sub_10000368C(&qword_1000EE4C0, &qword_1000B8D80);
  __chkstk_darwin(v69);
  v70 = (&v52 - v11);
  v64 = sub_10000368C(&qword_1000EE4C8, &qword_1000B8D88);
  __chkstk_darwin(v64);
  v65 = &v52 - v12;
  v68 = sub_10000368C(&qword_1000EE4D0, &qword_1000B8D90);
  __chkstk_darwin(v68);
  v66 = &v52 - v13;
  v55 = type metadata accessor for PlainButtonStyle();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000368C(&qword_1000EE4D8, &qword_1000B8D98);
  v53 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = sub_10000368C(&qword_1000EE4E0, &qword_1000B8DA0);
  v56 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  v22 = sub_10000368C(&qword_1000EE4E8, &qword_1000B8DA8);
  v23 = __chkstk_darwin(v22);
  v25 = &v52 - v24;
  v26 = *v2;
  if (v2[1])
  {
    if (v26 != 1)
    {
      v49 = v70;
      *v70 = 0;
      *(v49 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_100086C34();
      return _ConditionalContent<>.init(storage:)();
    }

    v63 = v23;
    if (*(v2 + 4))
    {

      v27 = sub_100048060(257);

      if (v27)
      {
        v72[0] = *(v2 + 1);
        v28 = swift_allocObject();
        v62 = &v52;
        v29 = *(v2 + 1);
        *(v28 + 16) = *v2;
        *(v28 + 32) = v29;
        *(v28 + 48) = *(v2 + 2);
        *(v28 + 64) = 257;
        __chkstk_darwin(v28);
        *(&v52 - 8) = v30;

        sub_100014414(v72, v74);

        sub_10000368C(&qword_1000EE530, &unk_1000B8E18);
        sub_100087138();
        Button.init(action:label:)();
        PlainButtonStyle.init()();
        sub_100005870(&qword_1000EE500, &qword_1000EE4D8, &qword_1000B8D98, &protocol conformance descriptor for Button<A>);
        sub_10008786C(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
        v31 = v55;
        View.buttonStyle<A>(_:)();
        (*(v54 + 8))(v15, v31);
        (*(v53 + 8))(v18, v16);
        v32 = v56;
        (*(v56 + 32))(v25, v21, v19);
        (*(v32 + 56))(v25, 0, 1, v19);
      }

      else
      {
        (*(v56 + 56))(v25, 1, 1, v19);
      }

      v45 = &qword_1000EE4E8;
      v46 = &qword_1000B8DA8;
      sub_1000077CC(v25, v65, &qword_1000EE4E8, &qword_1000B8DA8);
      swift_storeEnumTagMultiPayload();
      sub_100086CC0();
      sub_100086E04();
      v51 = v66;
      _ConditionalContent<>.init(storage:)();
      sub_1000077CC(v51, v70, &qword_1000EE4D0, &qword_1000B8D90);
      swift_storeEnumTagMultiPayload();
      sub_100086C34();
      _ConditionalContent<>.init(storage:)();
      sub_100007834(v51, &qword_1000EE4D0, &qword_1000B8D90);
      v48 = v25;
      return sub_100007834(v48, v45, v46);
    }

LABEL_13:
    type metadata accessor for RadioDialerViewModel(0);
    sub_10008786C(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v63 = v23;
  v74[0] = *(v2 + 1);
  v34 = *(v2 + 4);
  v33 = *(v2 + 5);
  v35 = swift_allocObject();
  v36 = *(v2 + 1);
  *(v35 + 16) = *v2;
  *(v35 + 32) = v36;
  *(v35 + 48) = *(v2 + 2);
  *(v35 + 64) = v26;
  *(v35 + 65) = 0;
  __chkstk_darwin(v35);
  *(&v52 - 16) = v26;
  *(&v52 - 15) = 0;

  sub_100014414(v74, v72);

  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  LOWORD(v72[0]) = v26;
  v72[1] = v34;
  v72[2] = v33;
  v72[3] = KeyPath;
  v73 = 0;
  sub_100005870(&qword_1000EE510, &qword_1000EE4A8, &qword_1000B8D68, &protocol conformance descriptor for Button<A>);
  sub_100086F40();
  v39 = v58;
  v38 = v59;
  View.buttonStyle<A>(_:)();

  (*(v57 + 8))(v4, v39);
  if (!v34)
  {
    goto LABEL_13;
  }

  v40 = sub_100048060(v26);

  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = (v40 & 1) == 0;
  (*(v60 + 32))(v9, v38, v61);
  v43 = &v9[*(v67 + 36)];
  *v43 = v41;
  v43[1] = sub_100087020;
  v43[2] = v42;
  v44 = v62;
  sub_100087038(v9, v62);
  v45 = &qword_1000EE4B8;
  v46 = &qword_1000B8D78;
  sub_1000077CC(v44, v65, &qword_1000EE4B8, &qword_1000B8D78);
  swift_storeEnumTagMultiPayload();
  sub_100086CC0();
  sub_100086E04();
  v47 = v66;
  _ConditionalContent<>.init(storage:)();
  sub_1000077CC(v47, v70, &qword_1000EE4D0, &qword_1000B8D90);
  swift_storeEnumTagMultiPayload();
  sub_100086C34();
  _ConditionalContent<>.init(storage:)();
  sub_100007834(v47, &qword_1000EE4D0, &qword_1000B8D90);
  v48 = v44;
  return sub_100007834(v48, v45, v46);
}

uint64_t sub_10008634C@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-v5];
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000462C8(a1 & 0x1FF);
  v11 = Image.init(systemName:)();
  (*(v8 + 104))(v10, enum case for Font.TextStyle.callout(_:), v7);
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  static Font.Weight.medium.getter();
  v13 = static Font.system(_:design:weight:)();
  sub_100007834(v6, &qword_1000ED388, &unk_1000B6FF0);
  (*(v8 + 8))(v10, v7);
  v14 = static Color.clear.getter();
  v15 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a2 = v11;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x4044000000000000;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  return result;
}

uint64_t sub_100086550(uint64_t a1, __int16 a2)
{
  if (*(a1 + 32))
  {

    sub_100046C90(a2 & 0x1FF);
  }

  else
  {
    type metadata accessor for RadioDialerViewModel(0);
    sub_10008786C(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100086600@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x100) == 0)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  sub_100020F58();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100086720@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (v1[1] == 1)
  {
    v4 = 0xED00006472617772;
    v5 = 0x6F662E776F727261;
    v6 = 0xEF64726177726F66;
    v7 = 0x2E6E6F7276656863;
    if (v3 != 3)
    {
      v7 = 0xD000000000000010;
      v6 = 0x80000001000BBAB0;
    }

    if (v3 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xE000000000000000;
    v9 = 0xD000000000000014;
    if (*v1)
    {
      v8 = 0x80000001000BBC80;
    }

    else
    {
      v9 = 0;
    }

    if (*v1 <= 1u)
    {
      result = v9;
    }

    else
    {
      result = v5;
    }

    if (*v1 <= 1u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  else
  {
    result = dispatch thunk of CustomStringConvertible.description.getter();
  }

  *a1 = result;
  a1[1] = v11;
  return result;
}

uint64_t sub_10008681C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100086874@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000868E0()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100086938()
{
  result = qword_1000EE488;
  if (!qword_1000EE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE488);
  }

  return result;
}

__n128 sub_10008698C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000869A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000869E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NumpadButtonViewModel(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for NumpadButtonViewModel(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t sub_100086B60()
{
  result = qword_1000EE490;
  if (!qword_1000EE490)
  {
    sub_100005780(&qword_1000EE470, &qword_1000B8C40);
    sub_100005870(&qword_1000EE498, &qword_1000EE4A0, &qword_1000B8CD8, &protocol conformance descriptor for LazyVGrid<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE490);
  }

  return result;
}

unint64_t sub_100086C34()
{
  result = qword_1000EE4F0;
  if (!qword_1000EE4F0)
  {
    sub_100005780(&qword_1000EE4D0, &qword_1000B8D90);
    sub_100086CC0();
    sub_100086E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE4F0);
  }

  return result;
}

unint64_t sub_100086CC0()
{
  result = qword_1000EE4F8;
  if (!qword_1000EE4F8)
  {
    sub_100005780(&qword_1000EE4E8, &qword_1000B8DA8);
    sub_100005780(&qword_1000EE4D8, &qword_1000B8D98);
    type metadata accessor for PlainButtonStyle();
    sub_100005870(&qword_1000EE500, &qword_1000EE4D8, &qword_1000B8D98, &protocol conformance descriptor for Button<A>);
    sub_10008786C(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE4F8);
  }

  return result;
}

unint64_t sub_100086E04()
{
  result = qword_1000EE508;
  if (!qword_1000EE508)
  {
    sub_100005780(&qword_1000EE4B8, &qword_1000B8D78);
    sub_100005780(&qword_1000EE4A8, &qword_1000B8D68);
    sub_100005870(&qword_1000EE510, &qword_1000EE4A8, &qword_1000B8D68, &protocol conformance descriptor for Button<A>);
    sub_100086F40();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EE520, &qword_1000EE528, &qword_1000B8DB0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE508);
  }

  return result;
}

unint64_t sub_100086F40()
{
  result = qword_1000EE518;
  if (!qword_1000EE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE518);
  }

  return result;
}

uint64_t sub_100086FB8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100087038(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000368C(&qword_1000EE4B8, &qword_1000B8D78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000870A8()
{

  return _swift_deallocObject(v0, 66, 7);
}

unint64_t sub_100087138()
{
  result = qword_1000EE538;
  if (!qword_1000EE538)
  {
    sub_100005780(&qword_1000EE530, &unk_1000B8E18);
    sub_1000871C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE538);
  }

  return result;
}

unint64_t sub_1000871C4()
{
  result = qword_1000EE540;
  if (!qword_1000EE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE540);
  }

  return result;
}

uint64_t sub_100087218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100087274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000872DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100087324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100087384()
{
  result = qword_1000EE548;
  if (!qword_1000EE548)
  {
    sub_100005780(&qword_1000EE550, &qword_1000B8F58);
    sub_100086C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE548);
  }

  return result;
}

uint64_t sub_100087450@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000874AC()
{
  result = qword_1000EE5B0;
  if (!qword_1000EE5B0)
  {
    sub_100005780(&qword_1000EE578, &qword_1000B9070);
    sub_100087564();
    sub_100005870(&qword_1000EE600, &qword_1000EE608, &qword_1000B90C0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE5B0);
  }

  return result;
}

unint64_t sub_100087564()
{
  result = qword_1000EE5B8;
  if (!qword_1000EE5B8)
  {
    sub_100005780(&qword_1000EE570, &qword_1000B9068);
    sub_10008761C();
    sub_100005870(&qword_1000EE5F0, &qword_1000EE5F8, &qword_1000B90B8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE5B8);
  }

  return result;
}

unint64_t sub_10008761C()
{
  result = qword_1000EE5C0;
  if (!qword_1000EE5C0)
  {
    sub_100005780(&qword_1000EE568, &qword_1000B9030);
    sub_100087700(&qword_1000EE5C8, &qword_1000EE560, &qword_1000B9028, sub_100087784);
    sub_100005870(&qword_1000EE5E0, &qword_1000EE5E8, &qword_1000B90B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE5C0);
  }

  return result;
}

uint64_t sub_100087700(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_100087784()
{
  result = qword_1000EE5D0;
  if (!qword_1000EE5D0)
  {
    sub_100005780(&qword_1000EE558, &qword_1000B9020);
    sub_10008786C(&qword_1000EE5D8, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_100005870(&qword_1000EBB00, &qword_1000EBB08, &qword_1000B4B60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE5D0);
  }

  return result;
}

uint64_t sub_10008786C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000878B8()
{
  result = qword_1000EE610;
  if (!qword_1000EE610)
  {
    sub_100005780(&qword_1000EE5A8, &unk_1000B90A0);
    sub_100087970();
    sub_100005870(&qword_1000EE600, &qword_1000EE608, &qword_1000B90C0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE610);
  }

  return result;
}

unint64_t sub_100087970()
{
  result = qword_1000EE618;
  if (!qword_1000EE618)
  {
    sub_100005780(&qword_1000EE590, &qword_1000B9088);
    sub_100087A28();
    sub_100005870(&qword_1000EE5E0, &qword_1000EE5E8, &qword_1000B90B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE618);
  }

  return result;
}

unint64_t sub_100087A28()
{
  result = qword_1000EE620;
  if (!qword_1000EE620)
  {
    sub_100005780(&qword_1000EE588, &qword_1000B9080);
    sub_100087700(&qword_1000EE628, &qword_1000EE580, &qword_1000B9078, sub_100087B0C);
    sub_100005870(&qword_1000EE640, &qword_1000EE648, &qword_1000B90C8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE620);
  }

  return result;
}

unint64_t sub_100087B0C()
{
  result = qword_1000EE630;
  if (!qword_1000EE630)
  {
    sub_100005780(&qword_1000EE5A0, &qword_1000B9098);
    sub_100005870(&qword_1000EE638, &qword_1000EE598, &qword_1000B9090, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100005870(&qword_1000EBB00, &qword_1000EBB08, &qword_1000B4B60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE630);
  }

  return result;
}

uint64_t sub_100087BF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100087C40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100087CAC@<X0>(uint64_t a4@<X8>)
{
  type metadata accessor for RadioDialerViewModel(0);
  sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
  Binding.projectedValue.getter();
  v8 = v19;
  v9 = v20;
  v10 = EnvironmentObject.init()();
  v12 = v11;
  KeyPath = swift_getKeyPath();
  v14 = *v18;
  *(&v20 + 1) = *v18;
  DWORD1(v20) = *&v18[3];
  *v21 = v12;
  *&v21[8] = KeyPath;
  v21[16] = 0;
  *&v21[17] = 258;
  *a4 = v5;
  *(a4 + 8) = v7;
  *(a4 + 63) = *&v21[15];
  v19 = v8;
  LOBYTE(v20) = v9;
  *(&v20 + 1) = v10;
  v15 = *v21;
  *(a4 + 32) = v20;
  *(a4 + 48) = v15;
  *(a4 + 16) = v8;
  v22 = v8;
  v23 = v9;
  *&v24[3] = *&v18[3];
  *v24 = v14;
  v25 = v10;
  v26 = v12;
  v27 = KeyPath;
  v28 = 0;
  v29 = 258;

  sub_10008B7A8(&v19, v17);
  sub_10008B7E0(&v22);
}

double sub_100087E50@<D0>(uint64_t a2@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  v14 = 0;
  sub_100087CAC(&v9);
  v17 = v11;
  v18[0] = *v12;
  *(v18 + 15) = *&v12[15];
  v15 = v9;
  v16 = v10;
  v19[1] = v10;
  v19[2] = v11;
  v20[0] = *v12;
  *(v20 + 15) = *&v12[15];
  v19[0] = v9;
  sub_1000077CC(&v15, v8, &qword_1000EE650, &unk_1000B9170);
  sub_100007834(v19, &qword_1000EE650, &unk_1000B9170);
  *&v13[7] = v15;
  *&v13[70] = *(v18 + 15);
  *&v13[55] = v18[0];
  *&v13[39] = v17;
  *&v13[23] = v16;
  v4 = *v13;
  *(a2 + 33) = *&v13[16];
  v5 = *&v13[48];
  *(a2 + 49) = *&v13[32];
  *(a2 + 65) = v5;
  result = *&v13[58];
  *(a2 + 75) = *&v13[58];
  v7 = v14;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 17) = v4;
  return result;
}

uint64_t sub_100087F70@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RadioDialerViewModel(0);
  sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  v5 = EnvironmentObject.init()();
  v7 = v6;
  result = EnvironmentObject.init()();
  *a1 = 260;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 3;
  *(a1 + 73) = 1;
  *(a1 + 80) = result;
  *(a1 + 88) = v9;
  return result;
}

double sub_100088074@<D0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v17 = 0;
  sub_100087F70(&v10);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v18 = v10;
  v19 = v11;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[5] = v15;
  v24[0] = v10;
  v24[1] = v11;
  sub_1000077CC(&v18, &v9, &qword_1000EE6B8, &unk_1000B94B0);
  sub_100007834(v24, &qword_1000EE6B8, &unk_1000B94B0);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v4 = *&v16[32];
  *(a2 + 65) = *&v16[48];
  v5 = *&v16[80];
  *(a2 + 81) = *&v16[64];
  *(a2 + 97) = v5;
  v7 = *v16;
  result = *&v16[16];
  *(a2 + 33) = *&v16[16];
  *(a2 + 49) = v4;
  v8 = v17;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 112) = *&v16[95];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_100088178@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v35 = a3;
  v4 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v34 = type metadata accessor for Font.TextStyle();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000368C(&qword_1000EE740, &qword_1000B9808);
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v31 = sub_10000368C(&qword_1000EE748, &qword_1000B9810);
  __chkstk_darwin(v31);
  v14 = &v30 - v13;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_100020F58();
    v15 = Text.init<A>(_:)();
    v17 = v16;
    *&v36 = v15;
    *(&v36 + 1) = v16;
    v19 = v18 & 1;
    LOBYTE(v37) = v18 & 1;
    *(&v37 + 1) = v20;
    View.lineLimit(_:reservesSpace:)();
    sub_100021B08(v15, v17, v19);

    v21 = v34;
    (*(v7 + 104))(v9, enum case for Font.TextStyle.title3(_:), v34);
    v22 = type metadata accessor for Font.Design();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    static Font.Weight.medium.getter();
    v23 = static Font.system(_:design:weight:)();
    sub_100007834(v6, &qword_1000ED388, &unk_1000B6FF0);
    (*(v7 + 8))(v9, v21);
    KeyPath = swift_getKeyPath();
    (*(v32 + 32))(v14, v12, v33);
    v25 = &v14[*(v31 + 36)];
    *v25 = KeyPath;
    v25[1] = v23;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v26 = v35;
    sub_10001721C(v14, v35, &qword_1000EE748, &qword_1000B9810);
    result = sub_10000368C(&qword_1000EE770, &qword_1000B98B0);
    v28 = (v26 + *(result + 36));
    v29 = v37;
    *v28 = v36;
    v28[1] = v29;
    v28[2] = v38;
  }

  else
  {
    type metadata accessor for RadioDialerViewModel(0);
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000885EC@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = type metadata accessor for PlainButtonStyle();
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000368C(&qword_1000EE4D8, &qword_1000B8D98);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - v13;
  v25 = sub_10000368C(&qword_1000EE4E0, &qword_1000B8DA0);
  v15 = *(v25 - 8);
  __chkstk_darwin(v25);
  v17 = v24 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 17) = HIBYTE(a1) & 1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  v24[1] = a3;
  *(v18 + 40) = a1;
  *(v18 + 41) = HIBYTE(a1) & 1;
  v29 = a1 & 0x1FF;

  sub_10000368C(&qword_1000EE530, &unk_1000B8E18);
  sub_100087138();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100005870(&qword_1000EE500, &qword_1000EE4D8, &qword_1000B8D98, &protocol conformance descriptor for Button<A>);
  sub_10008BAA4(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v19 = v26;
  View.buttonStyle<A>(_:)();
  (*(v27 + 8))(v10, v19);
  (*(v12 + 8))(v14, v11);
  if (a2)
  {

    v20 = sub_100048060(a1 & 0x1FF);

    if (v20)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = v28;
    (*(v15 + 32))(v28, v17, v25);
    result = sub_10000368C(&qword_1000EE778, &qword_1000B98B8);
    *(v22 + *(result + 36)) = v21;
  }

  else
  {
    type metadata accessor for RadioDialerViewModel(0);
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000889E8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (a2)
  {

    sub_100046C90(a4 & 0x1FF);
  }

  else
  {
    type metadata accessor for RadioDialerViewModel(0);
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100088A98@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-v5];
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000462C8(a1 & 0x1FF);
  v11 = Image.init(systemName:)();
  (*(v8 + 104))(v10, enum case for Font.TextStyle.callout(_:), v7);
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  static Font.Weight.semibold.getter();
  v13 = static Font.system(_:design:weight:)();
  sub_100007834(v6, &qword_1000ED388, &unk_1000B6FF0);
  (*(v8 + 8))(v10, v7);
  v14 = static Color.secondary.getter();
  v15 = static Color.primary.getter();
  result = swift_getKeyPath();
  *a2 = v11;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x4044000000000000;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  return result;
}

uint64_t sub_100088CB8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    if (!v16 || (v4 = v16 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast, swift_beginAccess(), LOBYTE(v4) = *(v4 + 1), , (v4 & 1) != 0))
    {

      goto LABEL_5;
    }

    v7 = sub_100046BD4();

    if (v7 == 2)
    {
    }

    else
    {
      v8 = sub_100046BD4();

      if (v8 != 8)
      {
LABEL_5:
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v13)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v5 = sub_100046BD4();

          if (v5 == 3)
          {
            v6 = v13;
            Image.init(uiImage:)();
            sub_10008BBA0();
            sub_10008BBF4();
            swift_retain_n();
            _ConditionalContent<>.init(storage:)();
            j__swift_retain();
            sub_10000368C(&qword_1000EE698, &qword_1000B9460);
            sub_10008BB14();
            _ConditionalContent<>.init(storage:)();

            j__swift_release(v13);

LABEL_15:
            sub_10008BC48(v13, *(&v13 + 1), v14, v15);
            type metadata accessor for RadioDialerViewModel(0);
            sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
            v9 = EnvironmentObject.init()();
            v11 = v10;
            sub_10008BC48(v13, *(&v13 + 1), v14, v15);

            sub_10008BC5C(v13, *(&v13 + 1), v14, v15);
            *a3 = v13;
            *(a3 + 16) = v14;
            *(a3 + 18) = v15;
            *(a3 + 24) = v9;
            *(a3 + 32) = v11;
            *(a3 + 40) = 0;
            *(a3 + 48) = 0;

            return sub_10008BC5C(v13, *(&v13 + 1), v14, v15);
          }
        }

        else
        {
        }

        sub_10000368C(&qword_1000EE698, &qword_1000B9460);
        sub_10008BB14();
        _ConditionalContent<>.init(storage:)();
        goto LABEL_15;
      }
    }

    type metadata accessor for RadioDialerViewModel(0);
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
    EnvironmentObject.init()();
    sub_10008BBA0();
    sub_10008BBF4();

    _ConditionalContent<>.init(storage:)();
    sub_10000368C(&qword_1000EE698, &qword_1000B9460);
    sub_10008BB14();
    _ConditionalContent<>.init(storage:)();

    goto LABEL_15;
  }

  type metadata accessor for RadioDialerViewModel(0);
  sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

__n128 sub_100089258@<Q0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = static HorizontalAlignment.center.getter();
  sub_100088CB8(v4, v8);
  *&v7[39] = v8[2];
  *&v7[23] = v8[1];
  *&v7[7] = v8[0];
  *(a2 + 17) = *v7;
  v7[55] = v9;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 33) = *&v7[16];
  result = *&v7[32];
  *(a2 + 49) = *&v7[32];
  *(a2 + 65) = *&v7[48];
  return result;
}

id sub_1000892F4@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  result = [objc_opt_self() systemFontOfSize:UIFontSystemFontDesignRounded weight:12.0 design:UIFontWeightMedium];
  if (result)
  {
    v7 = Font.init(_:)();
    v8 = static VerticalAlignment.center.getter();
    v34 = 0;
    sub_100089540(v7, v4, &v25);
    v40 = v29;
    v41 = v30;
    v42 = v31;
    v43 = v32;
    v36 = v25;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v44[0] = v25;
    v44[1] = v26;
    v44[2] = v27;
    v44[3] = v28;
    v44[4] = v29;
    v44[5] = v30;
    v44[6] = v31;
    v45 = v32;
    sub_1000077CC(&v36, &v24, &qword_1000EE6E8, &qword_1000B9748);
    sub_100007834(v44, &qword_1000EE6E8, &qword_1000B9748);
    *&v33[71] = v40;
    *&v33[87] = v41;
    *&v33[103] = v42;
    *&v33[7] = v36;
    *&v33[23] = v37;
    *&v33[39] = v38;
    v33[119] = v43;
    *&v33[55] = v39;
    v9 = v34;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v35[7] = v25;
    *&v35[23] = v26;
    *&v35[39] = v27;
    v10 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = *&v33[80];
    *(a4 + 81) = *&v33[64];
    *(a4 + 97) = v19;
    *(a4 + 113) = *&v33[96];
    v20 = *&v33[16];
    *(a4 + 17) = *v33;
    *(a4 + 33) = v20;
    v21 = *&v33[48];
    *(a4 + 49) = *&v33[32];
    *(a4 + 65) = v21;
    *(a4 + 184) = *&v35[47];
    v22 = *&v35[16];
    *(a4 + 169) = *&v35[32];
    v23 = *v35;
    *(a4 + 153) = v22;
    *a4 = v8;
    *(a4 + 8) = 0;
    *(a4 + 16) = v9;
    *(a4 + 129) = *&v33[112];
    *(a4 + 137) = v23;
    *(a4 + 192) = v10;
    *(a4 + 200) = v12;
    *(a4 + 208) = v14;
    *(a4 + 216) = v16;
    *(a4 + 224) = v18;
    *(a4 + 232) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100089540(uint64_t a1@<X0>, int a2@<W3>, void *a3@<X8>)
{
  v50 = a2;
  v51 = a1;
  v49 = a3;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000368C(&qword_1000ED390, &qword_1000B9750);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() _systemImageNamed:v11];

  if (v12)
  {
    Image.init(uiImage:)();
    v13 = enum case for Image.TemplateRenderingMode.template(_:);
    v14 = type metadata accessor for Image.TemplateRenderingMode();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v10, v13, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    Image.renderingMode(_:)();

    sub_100007834(v10, &qword_1000ED390, &qword_1000B9750);
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v48 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    KeyPath = swift_getKeyPath();
    v16 = v51;

    v46 = static Color.secondary.getter();
    v45 = swift_getKeyPath();
    v70 = 1;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
    LOBYTE(v60[0]) = v50;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
    LocalizedStringKey.init(stringInterpolation:)();
    v19 = Text.init(_:tableName:bundle:comment:)();
    v21 = v20;
    LOBYTE(v13) = v22;
    v23 = v16;
    v24 = Text.font(_:)();
    v26 = v25;
    v28 = v27;
    sub_100021B08(v19, v21, v13 & 1);

    static Color.secondary.getter();
    v29 = Text.foregroundColor(_:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    sub_100021B08(v24, v26, v28 & 1);

    v55 = 0;
    v36 = v48;
    v56 = v48;
    LOWORD(v57) = 1;
    *(&v57 + 2) = v68;
    WORD3(v57) = v69;
    v37 = KeyPath;
    *(&v57 + 1) = KeyPath;
    *&v58 = v23;
    v38 = v45;
    v39 = v46;
    *(&v58 + 1) = v45;
    v59 = v46;
    *&v54[55] = v46;
    *&v54[39] = v58;
    *&v54[23] = v57;
    *&v54[7] = v48;
    v53 = v33 & 1;
    v52 = 0;
    v40 = v49;
    *v49 = 0;
    *(v40 + 8) = 0;
    v41 = *v54;
    v42 = *&v54[16];
    v43 = *&v54[32];
    *(v40 + 7) = *&v54[47];
    *(v40 + 41) = v43;
    *(v40 + 25) = v42;
    *(v40 + 9) = v41;
    v40[9] = v29;
    v40[10] = v31;
    *(v40 + 88) = v33 & 1;
    v40[12] = v35;
    v40[13] = 0;
    *(v40 + 112) = 0;
    sub_1000077CC(&v56, v60, &qword_1000EE6F0, &qword_1000B97B8);
    sub_100021B18(v29, v31, v33 & 1);

    sub_100021B08(v29, v31, v33 & 1);

    v60[0] = v36;
    v60[1] = 0;
    v61 = 1;
    v62 = v68;
    v63 = v69;
    v64 = v37;
    v65 = v51;
    v66 = v38;
    v67 = v39;
    sub_100007834(v60, &qword_1000EE6F0, &qword_1000B97B8);
  }

  else
  {
    __break(1u);
  }
}

void sub_100089B14(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v23 = 0;
  sub_100089D04(&v15);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v32[1] = v16;
  v32[0] = v15;
  v32[2] = v17;
  v32[4] = v19;
  v32[3] = v18;
  v32[5] = v20;
  v33 = v21;
  sub_1000077CC(&v25, &v14, &qword_1000EE6F8, &qword_1000B97C0);
  sub_100007834(v32, &qword_1000EE6F8, &qword_1000B97C0);
  *&v22[55] = v28;
  *&v22[71] = v29;
  *&v22[87] = v30;
  v22[103] = v31;
  *&v22[7] = v25;
  *&v22[23] = v26;
  *&v22[39] = v27;
  v4 = v23;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v24[7] = v15;
  *&v24[23] = v16;
  *&v24[39] = v17;
  v5 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v6 = *&v22[32];
  *(a2 + 65) = *&v22[48];
  v7 = *&v22[80];
  *(a2 + 81) = *&v22[64];
  *(a2 + 97) = v7;
  v8 = *&v22[16];
  *(a2 + 17) = *v22;
  *(a2 + 33) = v8;
  *(a2 + 49) = v6;
  *(a2 + 168) = *&v24[47];
  *(a2 + 153) = *&v24[32];
  v9 = *v24;
  *(a2 + 137) = *&v24[16];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 113) = *&v22[96];
  *(a2 + 121) = v9;
  *(a2 + 176) = v5;
  *(a2 + 184) = v10;
  *(a2 + 192) = v11;
  *(a2 + 200) = v12;
  *(a2 + 208) = v13;
  *(a2 + 216) = 0;
}

uint64_t sub_100089D04@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();
  (*(v4 + 8))(v6, v3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v16[19] = v17;
  *&v16[11] = *&v16[35];
  *&v16[3] = *&v16[27];
  v15 = 0;
  v18[0] = v7;
  v18[1] = 0;
  *v19 = 1;
  *&v19[48] = *(&v17 + 1);
  *&v19[34] = *&v16[16];
  *&v19[18] = *&v16[8];
  *&v19[2] = *v16;
  *(v14 + 7) = v7;
  *(&v14[4] + 7) = *&v19[48];
  *(&v14[3] + 7) = *&v19[32];
  *(&v14[2] + 7) = *&v19[16];
  *(&v14[1] + 7) = *v19;
  v13[72] = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = v14[1];
  *(a2 + 9) = v14[0];
  v9 = v14[2];
  v10 = v14[3];
  *(a2 + 72) = *(&v14[3] + 15);
  *(a2 + 57) = v10;
  *(a2 + 41) = v9;
  *(a2 + 25) = v8;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v20[0] = v7;
  v20[1] = 0;
  v21 = 1;
  *&v24[14] = *&v16[23];
  *v24 = *&v16[16];
  v23 = *&v16[8];
  v22 = *v16;
  sub_1000077CC(v18, v13, &qword_1000EE700, &qword_1000B97C8);
  return sub_100007834(v20, &qword_1000EE700, &qword_1000B97C8);
}

uint64_t sub_100089F70@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_10000368C(&qword_1000EE708, &qword_1000B97D0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v26 - v7;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = sub_10000368C(&qword_1000EE710, &qword_1000B97D8);
  sub_10008A184(a1, &v8[*(v9 + 44)]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = &v8[*(v6 + 44)];
  v11 = v26[4];
  *v10 = v26[3];
  *(v10 + 1) = v11;
  *(v10 + 2) = v26[5];
  sub_10000368C(&qword_1000EE718, &qword_1000B97E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B5700;
  v13 = static Edge.Set.leading.getter();
  *(inited + 32) = v13;
  v14 = static Edge.Set.trailing.getter();
  *(inited + 33) = v14;
  v15 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v13)
  {
    v15 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    v15 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_10001721C(v8, a3, &qword_1000EE708, &qword_1000B97D0);
  result = sub_10000368C(&qword_1000EE720, &qword_1000B97E8);
  v25 = a3 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_10008A184@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Font.TextStyle();
  v153 = *(v5 - 8);
  v154 = v5;
  __chkstk_darwin(v5);
  v149 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v146 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10000368C(&qword_1000EE728, &qword_1000B97F0);
  __chkstk_darwin(v151);
  v152 = &v133 - v9;
  v150 = sub_10000368C(&qword_1000EE730, &qword_1000B97F8);
  __chkstk_darwin(v150);
  v156 = &v133 - v10;
  v155 = sub_10000368C(&qword_1000EE738, &qword_1000B9800);
  v11 = __chkstk_darwin(v155);
  v13 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v133 - v15;
  __chkstk_darwin(v14);
  v18 = &v133 - v17;
  v19 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  __chkstk_darwin(v19 - 8);
  v162 = &v133 - v20;
  v21 = sub_10000368C(&qword_1000EE740, &qword_1000B9808);
  v22 = *(v21 - 8);
  v163 = v21;
  v164 = v22;
  v23 = __chkstk_darwin(v21);
  v145 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v133 - v25;
  v161 = sub_10000368C(&qword_1000EE748, &qword_1000B9810);
  v27 = __chkstk_darwin(v161);
  v144 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v133 - v29;
  v135 = sub_10000368C(&qword_1000EE750, &qword_1000B9818);
  __chkstk_darwin(v135);
  v134 = &v133 - v31;
  v136 = sub_10000368C(&qword_1000EE758, &qword_1000B9820);
  __chkstk_darwin(v136);
  v138 = &v133 - v32;
  v137 = sub_10000368C(&qword_1000EE760, &qword_1000B9828);
  v33 = __chkstk_darwin(v137);
  v148 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v37 = &v133 - v36;
  __chkstk_darwin(v35);
  v147 = &v133 - v38;
  if (a1)
  {
    v157 = v16;
    v158 = v18;
    v160 = a3;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    v143 = a1;
    static Published.subscript.getter();

    v39 = v172;
    v159 = v13;
    if (v172)
    {
      v40 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v41 = *(v39 + v40);
      swift_beginAccess();
      v42 = v41;
      v43 = CAFMediaItem.primaryDisplayName(in:)();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0xE000000000000000;
    }

    *&v172 = v43;
    *(&v172 + 1) = v45;
    sub_100020F58();
    v46 = Text.init<A>(_:)();
    v48 = v47;
    *&v172 = v46;
    *(&v172 + 1) = v47;
    v50 = v49 & 1;
    LOBYTE(v173) = v49 & 1;
    *(&v173 + 1) = v51;
    View.lineLimit(_:reservesSpace:)();
    sub_100021B08(v46, v48, v50);

    static Font.Weight.medium.getter();
    v52 = type metadata accessor for Font.Design();
    v53 = *(v52 - 8);
    v54 = v162;
    v140 = *(v53 + 56);
    v141 = v52;
    v139 = v53 + 56;
    v140(v162, 1, 1);
    v55 = static Font.system(size:weight:design:)();
    sub_100007834(v54, &qword_1000ED388, &unk_1000B6FF0);
    KeyPath = swift_getKeyPath();
    v57 = *(v164 + 32);
    v164 += 32;
    v142 = v57;
    v57(v30, v26, v163);
    v58 = &v30[*(v161 + 36)];
    *v58 = KeyPath;
    v58[1] = v55;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v59 = v134;
    sub_10001721C(v30, v134, &qword_1000EE748, &qword_1000B9810);
    v60 = (v59 + *(v135 + 36));
    v61 = v170;
    v60[4] = v169;
    v60[5] = v61;
    v60[6] = v171;
    v62 = v166;
    *v60 = v165;
    v60[1] = v62;
    v63 = v168;
    v60[2] = v167;
    v60[3] = v63;
    v64 = static Color.primary.getter();
    v65 = swift_getKeyPath();
    v66 = v59;
    v67 = v138;
    sub_10001721C(v66, v138, &qword_1000EE750, &qword_1000B9818);
    v68 = (v67 + *(v136 + 36));
    *v68 = v65;
    v68[1] = v64;
    LOBYTE(v64) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    sub_10001721C(v67, v37, &qword_1000EE758, &qword_1000B9820);
    v77 = &v37[*(v137 + 36)];
    *v77 = v64;
    *(v77 + 1) = v70;
    *(v77 + 2) = v72;
    *(v77 + 3) = v74;
    *(v77 + 4) = v76;
    v77[40] = 0;
    v78 = v37;
    v79 = v147;
    sub_10001721C(v78, v147, &qword_1000EE760, &qword_1000B9828);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v80 = 0xE000000000000000;
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v81);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v172)
    {
      v82 = (v172 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_callsign);
      swift_beginAccess();
      v84 = *v82;
      v83 = v82[1];

      if (v83)
      {
        v85 = v84;
      }

      else
      {
        v85 = 0;
      }

      if (v83)
      {
        v80 = v83;
      }
    }

    else
    {
      v85 = 0;
    }

    v86 = v80;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v85);

    v87._countAndFlagsBits = 10;
    v87._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v87);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v88 = v172;
    if (!v172)
    {
      v92 = 0;
      v94 = 0xE000000000000000;
      goto LABEL_22;
    }

    v89 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v90 = [*(v88 + v89) mediaItemCategoryUserVisibleLabel];
    if (v90)
    {
      v91 = v90;
      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;

      v95 = HIBYTE(v94) & 0xF;
      if ((v94 & 0x2000000000000000) == 0)
      {
        v95 = v92 & 0xFFFFFFFFFFFFLL;
      }

      if (v95)
      {
        goto LABEL_20;
      }
    }

    v92 = sub_1000820E4([*(v88 + v89) mediaItemCategory]);
    v94 = v96;
LABEL_20:

LABEL_22:
    v97._countAndFlagsBits = v92;
    v97._object = v94;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v97);

    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v98);
    LocalizedStringKey.init(stringInterpolation:)();
    v99 = Text.init(_:tableName:bundle:comment:)();
    v101 = v100;
    *&v172 = v99;
    *(&v172 + 1) = v100;
    v103 = v102 & 1;
    LOBYTE(v173) = v102 & 1;
    *(&v173 + 1) = v104;
    v105 = v145;
    View.lineLimit(_:reservesSpace:)();
    sub_100021B08(v99, v101, v103);

    v107 = v153;
    v106 = v154;
    v108 = v149;
    (*(v153 + 104))(v149, enum case for Font.TextStyle.caption(_:), v154);
    v109 = v162;
    (v140)(v162, 1, 1, v141);
    static Font.Weight.regular.getter();
    v110 = static Font.system(_:design:weight:)();
    sub_100007834(v109, &qword_1000ED388, &unk_1000B6FF0);
    (*(v107 + 8))(v108, v106);
    v111 = swift_getKeyPath();
    v112 = v144;
    v142(v144, v105, v163);
    v113 = &v112[*(v161 + 36)];
    *v113 = v111;
    v113[1] = v110;
    v114 = static Color.secondary.getter();
    v115 = swift_getKeyPath();
    v116 = v112;
    v117 = v152;
    sub_10001721C(v116, v152, &qword_1000EE748, &qword_1000B9810);
    v118 = (v117 + *(v151 + 36));
    *v118 = v115;
    v118[1] = v114;
    v119 = swift_getKeyPath();
    v120 = v156;
    sub_10001721C(v117, v156, &qword_1000EE728, &qword_1000B97F0);
    v121 = v120 + *(v150 + 36);
    *v121 = v119;
    *(v121 + 8) = 1;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v122 = v157;
    sub_10001721C(v120, v157, &qword_1000EE730, &qword_1000B97F8);
    v123 = (v122 + *(v155 + 36));
    v124 = v177;
    v123[4] = v176;
    v123[5] = v124;
    v123[6] = v178;
    v125 = v173;
    *v123 = v172;
    v123[1] = v125;
    v126 = v175;
    v123[2] = v174;
    v123[3] = v126;
    v127 = v158;
    sub_10001721C(v122, v158, &qword_1000EE738, &qword_1000B9800);
    v128 = v148;
    sub_1000077CC(v79, v148, &qword_1000EE760, &qword_1000B9828);
    v129 = v159;
    sub_1000077CC(v127, v159, &qword_1000EE738, &qword_1000B9800);
    v130 = v160;
    sub_1000077CC(v128, v160, &qword_1000EE760, &qword_1000B9828);
    v131 = sub_10000368C(&qword_1000EE768, &qword_1000B9860);
    sub_1000077CC(v129, v130 + *(v131 + 48), &qword_1000EE738, &qword_1000B9800);
    sub_100007834(v127, &qword_1000EE738, &qword_1000B9800);
    sub_100007834(v79, &qword_1000EE760, &qword_1000B9828);
    sub_100007834(v129, &qword_1000EE738, &qword_1000B9800);
    return sub_100007834(v128, &qword_1000EE760, &qword_1000B9828);
  }

  type metadata accessor for RadioDialerViewModel(0);
  sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10008B00C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000368C(&qword_1000EE668, &qword_1000B93C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = sub_10000368C(&qword_1000EE670, &qword_1000B93C8);
  v24 = *(v11 - 8);
  v25 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = swift_allocObject();
  v15 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 63) = *(v2 + 47);
  sub_10008B7A8(v2, v27);
  sub_10000368C(&qword_1000EE678, &qword_1000B93D0);
  sub_10008B9EC();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100005870(&qword_1000EE688, &qword_1000EE668, &qword_1000B93C0, &protocol conformance descriptor for Button<A>);
  sub_10008BAA4(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  if (*(v2 + 24))
  {
    v16 = *(v2 + 49);
    v17 = *(v2 + 50);

    LOBYTE(v17) = sub_100048060(v16 | (v17 << 8));

    KeyPath = swift_getKeyPath();
    v19 = swift_allocObject();
    *(v19 + 16) = (v17 & 1) == 0;
    v20 = v26;
    (*(v24 + 32))(v26, v13, v25);
    result = sub_10000368C(&qword_1000EE690, &unk_1000B9408);
    v22 = (v20 + *(result + 36));
    *v22 = KeyPath;
    v22[1] = sub_10008BB04;
    v22[2] = v19;
  }

  else
  {
    type metadata accessor for RadioDialerViewModel(0);
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10008B430(__int128 *a1)
{
  if (*(a1 + 3))
  {
    v1 = *(a1 + 49);
    v2 = *(a1 + 50);

    sub_100046C90(v1 | (v2 << 8));

    sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
    return Binding.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for RadioDialerViewModel(0);
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel, &unk_1000B6900);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10008B51C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Font.TextStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Image.init(systemName:)();
  (*(v6 + 104))(v8, enum case for Font.TextStyle.title3(_:), v5);
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  static Font.Weight.semibold.getter();
  v11 = static Font.system(_:design:weight:)();
  sub_100007834(v4, &qword_1000ED388, &unk_1000B6FF0);
  (*(v6 + 8))(v8, v5);
  v12 = [objc_opt_self() systemGreenColor];
  v13 = Color.init(uiColor:)();
  v14 = static Color.white.getter();
  result = swift_getKeyPath();
  *a1 = v9;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x4044000000000000;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  *(a1 + 56) = 256;
  return result;
}

__n128 sub_10008B810(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10008B82C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_10008B874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008B990()
{

  sub_1000143A4(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 67, 7);
}

unint64_t sub_10008B9EC()
{
  result = qword_1000EE680;
  if (!qword_1000EE680)
  {
    sub_100005780(&qword_1000EE678, &qword_1000B93D0);
    sub_100087138();
    sub_100005870(&qword_1000EE600, &qword_1000EE608, &qword_1000B90C0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE680);
  }

  return result;
}

uint64_t sub_10008BAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10008BB14()
{
  result = qword_1000EE6A0;
  if (!qword_1000EE6A0)
  {
    sub_100005780(&qword_1000EE698, &qword_1000B9460);
    sub_10008BBA0();
    sub_10008BBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6A0);
  }

  return result;
}

unint64_t sub_10008BBA0()
{
  result = qword_1000EE6A8;
  if (!qword_1000EE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6A8);
  }

  return result;
}

unint64_t sub_10008BBF4()
{
  result = qword_1000EE6B0;
  if (!qword_1000EE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6B0);
  }

  return result;
}

uint64_t sub_10008BC48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return j__swift_retain();
  }

  return result;
}

uint64_t sub_10008BC5C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return j__swift_release(result);
  }

  return result;
}

uint64_t sub_10008BCA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10008BCFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10008BD60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10008BDBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10008BE1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10008BE78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10008BEE0()
{
  result = qword_1000EE6C0;
  if (!qword_1000EE6C0)
  {
    sub_100005780(&qword_1000EE690, &unk_1000B9408);
    sub_100005780(&qword_1000EE668, &qword_1000B93C0);
    type metadata accessor for PlainButtonStyle();
    sub_100005870(&qword_1000EE688, &qword_1000EE668, &qword_1000B93C0, &protocol conformance descriptor for Button<A>);
    sub_10008BAA4(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EE520, &qword_1000EE528, &qword_1000B8DB0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6C0);
  }

  return result;
}

uint64_t sub_10008C18C()
{

  return _swift_deallocObject(v0, 42, 7);
}

unint64_t sub_10008C258()
{
  result = qword_1000EE790;
  if (!qword_1000EE790)
  {
    sub_100005780(&qword_1000EE798, &qword_1000B9908);
    sub_100005870(&qword_1000EE7A0, &qword_1000EE7A8, &qword_1000B9910, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE790);
  }

  return result;
}

unint64_t sub_10008C354()
{
  result = qword_1000EE7C0;
  if (!qword_1000EE7C0)
  {
    sub_100005780(&qword_1000EE7C8, &qword_1000B9920);
    sub_100005870(&qword_1000EE7D0, &qword_1000EE7D8, &qword_1000B9928, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE7C0);
  }

  return result;
}

uint64_t sub_10008C450(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_10008C4D4()
{
  result = qword_1000EE7E8;
  if (!qword_1000EE7E8)
  {
    sub_100005780(&qword_1000EE708, &qword_1000B97D0);
    sub_100005870(&qword_1000EE7F0, &qword_1000EE7F8, &qword_1000B9930, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE7E8);
  }

  return result;
}

unint64_t sub_10008C590()
{
  result = qword_1000EE800;
  if (!qword_1000EE800)
  {
    sub_100005780(&qword_1000EE770, &qword_1000B98B0);
    sub_10008C61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE800);
  }

  return result;
}

unint64_t sub_10008C61C()
{
  result = qword_1000EE808;
  if (!qword_1000EE808)
  {
    sub_100005780(&qword_1000EE748, &qword_1000B9810);
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EBB00, &qword_1000EBB08, &qword_1000B4B60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE808);
  }

  return result;
}

unint64_t sub_10008C708()
{
  result = qword_1000EE810;
  if (!qword_1000EE810)
  {
    sub_100005780(&qword_1000EE778, &qword_1000B98B8);
    sub_100005780(&qword_1000EE4D8, &qword_1000B8D98);
    type metadata accessor for PlainButtonStyle();
    sub_100005870(&qword_1000EE500, &qword_1000EE4D8, &qword_1000B8D98, &protocol conformance descriptor for Button<A>);
    sub_10008BAA4(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE810);
  }

  return result;
}

uint64_t sub_10008C85C()
{
  sub_10003E05C();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10008C8D4()
{
  type metadata accessor for RadioNowPlayingViewModel(0);
  swift_allocObject();
  result = sub_100009A7C(3, 0, 0, _swiftEmptyArrayStorage);
  qword_1000EE818 = result;
  return result;
}

uint64_t sub_10008C928@<X0>(void *a1@<X8>)
{
  if (qword_1000EAD40 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1000EE818;
}

uint64_t sub_10008C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10008E6CC(&qword_1000EE820, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42C4);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_10008CA2C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v10 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v42;
  }

  swift_getKeyPath();
  *&v42 = v10;
  sub_10008E6CC(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v10 + 17);

  if (v12 > 3)
  {
    if (v12 != 4)
    {
      if (v12 == 5)
      {
        KeyPath = swift_getKeyPath();

        v14 = a1;
        if ((a2 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v15 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v7 + 8))(v9, v6);
          v14 = v42;
        }

        swift_getKeyPath();
        *&v42 = v14;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v16 = *(v14 + 16);

        v17 = swift_allocObject();
        *(v17 + 16) = a1;
        *(v17 + 24) = a2 & 1;
        *v39 = KeyPath;
        *&v39[16] = v16;
        *&v39[24] = sub_10008E720;
        *&v39[32] = v17;
        LOBYTE(v40) = 0;

        sub_10000368C(&qword_1000EE898, &qword_1000B9AE8);
        sub_10000368C(&qword_1000EE8B0, &qword_1000B9AF0);
        sub_10008D9A8();
        sub_10008DA88();
        _ConditionalContent<>.init(storage:)();
        *v39 = v42;
        *&v39[16] = v43;
        *&v39[32] = v44;
        LOBYTE(v40) = v45;
        HIBYTE(v40) = 1;
      }

      else
      {
        v28 = swift_getKeyPath();

        v29 = a1;
        if ((a2 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v30 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v7 + 8))(v9, v6);
          v29 = v42;
        }

        swift_getKeyPath();
        *&v42 = v29;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v31 = *(v29 + 16);

        v32 = swift_allocObject();
        *(v32 + 16) = a1;
        *(v32 + 24) = a2 & 1;
        *v39 = v28;
        *&v39[16] = v31;
        *&v39[24] = sub_10008E720;
        *&v39[32] = v32;
        LOBYTE(v40) = 1;

        sub_10000368C(&qword_1000EE898, &qword_1000B9AE8);
        sub_10000368C(&qword_1000EE8B0, &qword_1000B9AF0);
        sub_10008D9A8();
        sub_10008DA88();
        _ConditionalContent<>.init(storage:)();
        *v39 = v42;
        *&v39[16] = v43;
        *&v39[32] = v44;
        LOBYTE(v40) = v45;
        HIBYTE(v40) = 1;
      }

      goto LABEL_21;
    }

    v23 = swift_getKeyPath();

    v24 = a1;
    if ((a2 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      v24 = v42;
    }

    swift_getKeyPath();
    *&v42 = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v24 + 16);

    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    *(v27 + 24) = a2 & 1;
    *v39 = v23;
    *&v39[16] = v26;
    *&v39[24] = sub_10008DBFC;
    *&v39[32] = v27;
    LOBYTE(v40) = 1;
  }

  else
  {
    if ((v12 - 1) < 2)
    {
      *v39 = swift_getKeyPath();
      memset(&v39[8], 0, 32);
      v40 = 0;
      v41 = 1;
      sub_10000368C(&qword_1000EE828, &qword_1000B9AC0);
      sub_10008D5F0();
      sub_10008DB68();
      _ConditionalContent<>.init(storage:)();
      goto LABEL_25;
    }

    v18 = swift_getKeyPath();

    v19 = a1;
    if ((a2 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v20 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      v19 = v42;
    }

    swift_getKeyPath();
    *&v42 = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v19 + 16);

    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = a2 & 1;
    *v39 = v18;
    *&v39[16] = v21;
    *&v39[24] = sub_10008E720;
    *&v39[32] = v22;
    LOBYTE(v40) = 0;
  }

  sub_10000368C(&qword_1000EE850, &qword_1000B9AD0);
  sub_10000368C(&qword_1000EE870, &qword_1000B9AD8);
  sub_10008D708();
  sub_10008D83C();
  _ConditionalContent<>.init(storage:)();
  *v39 = v42;
  *&v39[16] = v43;
  *&v39[32] = v44;
  v40 = v45;
LABEL_21:
  sub_10000368C(&qword_1000EE840, &qword_1000B9AC8);
  sub_10000368C(&qword_1000EE888, &qword_1000B9AE0);
  sub_10008D67C();
  sub_10008D91C();
  _ConditionalContent<>.init(storage:)();
  if (HIBYTE(v45))
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  *v39 = v42;
  *&v39[16] = v43;
  *&v39[32] = v44;
  v40 = v33 | v45;
  v41 = 0;
  sub_10000368C(&qword_1000EE828, &qword_1000B9AC0);
  sub_10008D5F0();
  sub_10008DB68();
  _ConditionalContent<>.init(storage:)();

LABEL_25:
  result = *&v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  *a3 = v42;
  *(a3 + 16) = v35;
  *(a3 + 32) = v36;
  *(a3 + 40) = v37;
  *(a3 + 42) = v38;
  return result;
}

void sub_10008D3C4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v13;
  }

  swift_getKeyPath();
  v13 = a1;
  sub_10008E6CC(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(a1 + 16);

  if (v9 == 1)
  {
    v10 = [objc_opt_self() sharedApplication];
    v11 = [v10 delegate];

    if (v11)
    {
      sub_1000ACC00();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_10008D5F0()
{
  result = qword_1000EE830;
  if (!qword_1000EE830)
  {
    sub_100005780(&qword_1000EE828, &qword_1000B9AC0);
    sub_10008D67C();
    sub_10008D91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE830);
  }

  return result;
}

unint64_t sub_10008D67C()
{
  result = qword_1000EE838;
  if (!qword_1000EE838)
  {
    sub_100005780(&qword_1000EE840, &qword_1000B9AC8);
    sub_10008D708();
    sub_10008D83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE838);
  }

  return result;
}

unint64_t sub_10008D708()
{
  result = qword_1000EE848;
  if (!qword_1000EE848)
  {
    sub_100005780(&qword_1000EE850, &qword_1000B9AD0);
    sub_10008D794();
    sub_10008D7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE848);
  }

  return result;
}

unint64_t sub_10008D794()
{
  result = qword_1000EE858;
  if (!qword_1000EE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE858);
  }

  return result;
}

unint64_t sub_10008D7E8()
{
  result = qword_1000EE860;
  if (!qword_1000EE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE860);
  }

  return result;
}

unint64_t sub_10008D83C()
{
  result = qword_1000EE868;
  if (!qword_1000EE868)
  {
    sub_100005780(&qword_1000EE870, &qword_1000B9AD8);
    sub_10008D8C8();
    sub_10008D7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE868);
  }

  return result;
}

unint64_t sub_10008D8C8()
{
  result = qword_1000EE878;
  if (!qword_1000EE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE878);
  }

  return result;
}

unint64_t sub_10008D91C()
{
  result = qword_1000EE880;
  if (!qword_1000EE880)
  {
    sub_100005780(&qword_1000EE888, &qword_1000B9AE0);
    sub_10008D9A8();
    sub_10008DA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE880);
  }

  return result;
}

unint64_t sub_10008D9A8()
{
  result = qword_1000EE890;
  if (!qword_1000EE890)
  {
    sub_100005780(&qword_1000EE898, &qword_1000B9AE8);
    sub_10008DA34();
    sub_10008D7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE890);
  }

  return result;
}

unint64_t sub_10008DA34()
{
  result = qword_1000EE8A0;
  if (!qword_1000EE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE8A0);
  }

  return result;
}

unint64_t sub_10008DA88()
{
  result = qword_1000EE8A8;
  if (!qword_1000EE8A8)
  {
    sub_100005780(&qword_1000EE8B0, &qword_1000B9AF0);
    sub_10008DB14();
    sub_10008D7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE8A8);
  }

  return result;
}

unint64_t sub_10008DB14()
{
  result = qword_1000EE8B8;
  if (!qword_1000EE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE8B8);
  }

  return result;
}

unint64_t sub_10008DB68()
{
  result = qword_1000EE8C0;
  if (!qword_1000EE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE8C0);
  }

  return result;
}

uint64_t sub_10008DBC4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10008DC1C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v30 = a3;
  v31 = sub_10000368C(&qword_1000EE8D8, &qword_1000B9BB0);
  __chkstk_darwin(v31);
  v9 = v26 - v8;
  v10 = sub_10000368C(&qword_1000EE8E0, &qword_1000B9BB8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - v12;
  v32 = sub_10000368C(&qword_1000EE8E8, &qword_1000B9BC0);
  v14 = *(v32 - 8);
  v15 = __chkstk_darwin(v32);
  v17 = v26 - v16;
  if (a2)
  {
    v26[1] = v26;
    __chkstk_darwin(v15);
    v29 = a5;
    v26[-2] = a1;

    v18 = sub_10000368C(&qword_1000EE8F0, &qword_1000B9BC8);
    v27 = v9;
    v28 = v18;
    sub_100005870(&qword_1000EE908, &qword_1000EE8F0, &qword_1000B9BC8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    Button.init(action:label:)();
    v19 = sub_100005870(&qword_1000EE8F8, &qword_1000EE8E0, &qword_1000B9BB8, &protocol conformance descriptor for Button<A>);
    v20 = sub_10008E2F0();
    View.buttonStyle<A>(_:)();
    (*(v11 + 8))(v13, v10);
    v21 = v32;
    (*(v14 + 16))(v27, v17, v32);
    swift_storeEnumTagMultiPayload();
    v33 = v10;
    v34 = &type metadata for WidgetBackgroundButtonStyle;
    v35 = v19;
    v36 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v14 + 8))(v17, v21);
  }

  else
  {
    v23 = sub_10000368C(&qword_1000EE8F0, &qword_1000B9BC8);
    (*(*(v23 - 8) + 16))(v9, a1, v23);
    swift_storeEnumTagMultiPayload();
    v24 = sub_100005870(&qword_1000EE8F8, &qword_1000EE8E0, &qword_1000B9BB8, &protocol conformance descriptor for Button<A>);
    v25 = sub_10008E2F0();
    v33 = v10;
    v34 = &type metadata for WidgetBackgroundButtonStyle;
    v35 = v24;
    v36 = v25;
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EE908, &qword_1000EE8F0, &qword_1000B9BC8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10008E0C4@<X0>(uint64_t a2@<X8>)
{
  ButtonStyleConfiguration.label.getter();
  v3 = static Alignment.center.getter();
  v5 = v4;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    static Color.black.getter();
    v6 = Color.opacity(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = (a2 + *(sub_10000368C(&qword_1000EE920, &qword_1000B9C30) + 36));
  *v7 = v6;
  v7[1] = v3;
  v7[2] = v5;
  v8 = static Alignment.center.getter();
  v10 = v9;
  static Color.white.getter();
  v11 = Color.opacity(_:)();

  result = sub_10000368C(&qword_1000EE928, &qword_1000B9C38);
  v13 = (a2 + *(result + 36));
  *v13 = v11;
  v13[1] = v8;
  v13[2] = v10;
  return result;
}

uint64_t sub_10008E1AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10008E1F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10008E248()
{
  result = qword_1000EE8C8;
  if (!qword_1000EE8C8)
  {
    sub_100005780(&qword_1000EE8D0, &qword_1000B9B58);
    sub_10008D5F0();
    sub_10008DB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE8C8);
  }

  return result;
}

unint64_t sub_10008E2F0()
{
  result = qword_1000EE900;
  if (!qword_1000EE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE900);
  }

  return result;
}

uint64_t sub_10008E344@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_10000368C(&qword_1000EE8F0, &qword_1000B9BC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_10008E3D0()
{
  result = qword_1000EE910;
  if (!qword_1000EE910)
  {
    sub_100005780(&qword_1000EE918, &qword_1000B9BF0);
    sub_100005780(&qword_1000EE8E0, &qword_1000B9BB8);
    sub_100005870(&qword_1000EE8F8, &qword_1000EE8E0, &qword_1000B9BB8, &protocol conformance descriptor for Button<A>);
    sub_10008E2F0();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EE908, &qword_1000EE8F0, &qword_1000B9BC8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE910);
  }

  return result;
}

unint64_t sub_10008E52C()
{
  result = qword_1000EE930;
  if (!qword_1000EE930)
  {
    sub_100005780(&qword_1000EE928, &qword_1000B9C38);
    sub_10008E5E4();
    sub_100005870(&qword_1000EE950, &qword_1000EE958, &qword_1000B9C48, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE930);
  }

  return result;
}

unint64_t sub_10008E5E4()
{
  result = qword_1000EE938;
  if (!qword_1000EE938)
  {
    sub_100005780(&qword_1000EE920, &qword_1000B9C30);
    sub_10008E6CC(&qword_1000EE5D8, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_100005870(&qword_1000EE940, &qword_1000EE948, &qword_1000B9C40, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE938);
  }

  return result;
}

uint64_t sub_10008E6CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008E7A0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonStyleConfiguration.Label();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000368C(&qword_1000EEAC0, &qword_1000BA180);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_10000368C(&qword_1000EEAC8, &qword_1000BA188);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v14 = 0.7;
  }

  else
  {
    v14 = 1.0;
  }

  (*(v3 + 32))(v9, v5, v2);
  *&v9[*(v7 + 44)] = v14;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v15 = 0.8;
  }

  else
  {
    v15 = 1.0;
  }

  static UnitPoint.center.getter();
  v17 = v16;
  v19 = v18;
  sub_10001721C(v9, v13, &qword_1000EEAC0, &qword_1000BA180);
  v20 = &v13[*(v11 + 44)];
  *v20 = v15;
  *(v20 + 1) = v15;
  *(v20 + 2) = v17;
  *(v20 + 3) = v19;
  v21 = static Animation.easeOut(duration:)();
  v22 = ButtonStyleConfiguration.isPressed.getter();
  sub_10001721C(v13, a1, &qword_1000EEAC8, &qword_1000BA188);
  result = sub_10000368C(&qword_1000EEAD0, &qword_1000BA190);
  v24 = a1 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v22 & 1;
  return result;
}

uint64_t sub_10008EA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_10000368C(&qword_1000EEA30, &qword_1000B9FB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = *(a2 + 49);
  if (v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v21 & 1) == 0)
    {
      if (!*(a2 + 40) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v20 != 1))
      {
        v12 = static Color.primary.getter();
        goto LABEL_8;
      }
    }

    v10 = [objc_opt_self() radio_carSystemFocusLabelColor];
  }

  else
  {
    v10 = [objc_opt_self() _carSystemTertiaryColor];
  }

  v11 = v10;
  v12 = Color.init(uiColor:)();
LABEL_8:
  v13 = __chkstk_darwin(v12);
  *(&v19 - 4) = a1;
  *(&v19 - 3) = a2;
  *(&v19 - 2) = v13;

  sub_10000368C(&qword_1000EEA38, &qword_1000B9FB8);
  sub_100090A28();
  Button.init(action:label:)();
  sub_100005870(&qword_1000EEA88, &qword_1000EEA30, &qword_1000B9FB0, &protocol conformance descriptor for Button<A>);
  sub_100090C50();
  v14 = v19;
  View.buttonStyle<A>(_:)();

  (*(v6 + 8))(v8, v5);
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v9 ^ 1;
  result = sub_10000368C(&qword_1000EEA98, &qword_1000BA018);
  v18 = (v14 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = sub_10008BB04;
  v18[2] = v16;
  return result;
}

uint64_t sub_10008ED34@<X0>(double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_10000368C(&qword_1000EEA60, &qword_1000B9FC8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = (v28 - v9);
  v11 = sub_10000368C(&qword_1000EEA50, &qword_1000B9FC0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v28 - v13;
  *v10 = static Alignment.center.getter();
  v10[1] = v15;
  v16 = sub_10000368C(&qword_1000EEAA0, &unk_1000BA0B0);
  sub_10008EFCC(a2, a3, (v10 + *(v16 + 44)));
  static Color.white.getter();
  v17 = Color.opacity(_:)();

  v18 = static Edge.Set.all.getter();
  v19 = v10 + *(v8 + 44);
  *v19 = v17;
  v19[8] = v18;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001721C(v10, v14, &qword_1000EEA60, &qword_1000B9FC8);
  v20 = &v14[*(v12 + 44)];
  v21 = v28[5];
  *(v20 + 4) = v28[4];
  *(v20 + 5) = v21;
  *(v20 + 6) = v28[6];
  v22 = v28[1];
  *v20 = v28[0];
  *(v20 + 1) = v22;
  v23 = v28[3];
  *(v20 + 2) = v28[2];
  *(v20 + 3) = v23;
  v24 = a4 + *(sub_10000368C(&qword_1000EEA38, &qword_1000B9FB8) + 36);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  *(v24 + *(sub_10000368C(&qword_1000EEA80, &qword_1000B9FE0) + 36)) = 0;
  return sub_10001721C(v14, a4, &qword_1000EEA50, &qword_1000B9FC0);
}

void sub_10008EFCC(double *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v26 = a2;
  v27 = a3;
  v4 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_10000368C(&qword_1000EEAA8, &qword_1000BA0C0);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(a1 + 5);
  v25 = v14;

  v15 = Image.init(_internalSystemName:)();
  v16 = type metadata accessor for Font.Design();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = static Font.system(size:weight:design:)();
  sub_100090CCC(v6);
  KeyPath = swift_getKeyPath();
  v28 = v15;
  v29 = KeyPath;
  v30 = v17;
  static Font.Weight.medium.getter();
  sub_10000368C(&qword_1000EBAF0, &unk_1000B7050);
  sub_100014710();
  View.fontWeight(_:)();

  v19 = &v13[*(sub_10000368C(&qword_1000ED398, &qword_1000B7008) + 36)];
  v20 = *(sub_10000368C(&qword_1000ED3B0, &qword_1000B7060) + 28);
  v21 = enum case for Image.Scale.medium(_:);
  v22 = type metadata accessor for Image.Scale();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  *&v13[*(v8 + 44)] = v26;
  sub_1000077CC(v13, v11, &qword_1000EEAA8, &qword_1000BA0C0);
  v23 = v27;
  *v27 = v14;
  v24 = sub_10000368C(&qword_1000EEAB0, &qword_1000BA128);
  sub_1000077CC(v11, v23 + *(v24 + 48), &qword_1000EEAA8, &qword_1000BA0C0);

  sub_100007834(v13, &qword_1000EEAA8, &qword_1000BA0C0);
  sub_100007834(v11, &qword_1000EEAA8, &qword_1000BA0C0);
}

uint64_t sub_10008F308@<X0>(void *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v49 = a3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10000368C(&qword_1000EE970, &qword_1000B9D80);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = __chkstk_darwin(v9);
  v46 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v40[-v12];

  v14 = a1;
  v41 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v6[1](v8, v5);
    v14 = v51;
  }

  swift_getKeyPath();
  v51 = v14;
  v50 = sub_1000910B8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = v14[6];

  v51 = _swiftEmptyArrayStorage;
  if (v16 >> 62)
  {
LABEL_31:
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v8;
  v43 = v6;
  v44 = v5;
  v45 = v13;
  if (v17)
  {
    v8 = 0;
    v13 = (v16 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v19 = v51;
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_31;
        }

        v18 = *(v16 + 8 * v8 + 32);

        v6 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      if ((*(v18 + 48) & 1) != 0 || *(v18 + 32) <= 0.0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = v51[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v8;
      if (v6 == v17)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_20:

  v20 = sub_100090370(v19);

  v51 = v20;
  swift_getKeyPath();
  sub_10000368C(&qword_1000EE978, &qword_1000B9DD0);
  sub_10000368C(&qword_1000EE980, &qword_1000B9DD8);
  sub_100005870(&qword_1000EE988, &qword_1000EE978, &qword_1000B9DD0, &protocol conformance descriptor for [A]);
  sub_100005870(&qword_1000EE990, &qword_1000EE980, &qword_1000B9DD8, &protocol conformance descriptor for TupleView<A>);
  v21 = v45;
  ForEach<>.init(_:id:content:)();

  v22 = a1;
  v24 = v43;
  v23 = v44;
  v25 = v42;
  v26 = v41;
  if ((v41 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v24[1](v25, v23);
    v22 = v51;
  }

  swift_getKeyPath();
  v51 = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v22 + 16);

  if ((v28 & 1) == 0)
  {
    goto LABEL_28;
  }

  if ((v26 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v24[1](v25, v23);
    a1 = v51;
  }

  swift_getKeyPath();
  v51 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(a1 + 17);

  if (v30 == 3)
  {

LABEL_28:
    v32 = 1;
    goto LABEL_29;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v32 = 0;
  if (v31)
  {
    goto LABEL_28;
  }

LABEL_29:
  v34 = v46;
  v33 = v47;
  v35 = *(v47 + 16);
  v36 = v48;
  v35(v46, v21, v48);
  v37 = v49;
  v35(v49, v34, v36);
  v37[*(sub_10000368C(&qword_1000EE998, &qword_1000B9E08) + 64)] = v32;
  v38 = *(v33 + 8);
  v38(v21, v36);
  return (v38)(v34, v36);
}

uint64_t sub_10008FAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v35 = a1;
  v36 = a3;
  v34 = sub_10000368C(&qword_1000EE9A0, &qword_1000B9E38);
  __chkstk_darwin(v34);
  v5 = (&v31 - v4);
  v6 = type metadata accessor for CircularProgressViewStyle();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000368C(&qword_1000EE9A8, &qword_1000B9E40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v33 = sub_10000368C(&qword_1000EE9B0, &qword_1000B9E48);
  __chkstk_darwin(v33);
  v14 = &v31 - v13;
  v15 = sub_10000368C(&qword_1000EE9B8, &qword_1000B9E50);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  if (*(a2 + 72) == 1)
  {
    ProgressView<>.init<>()();
    CircularProgressViewStyle.init()();
    sub_100005870(&qword_1000EE9E0, &qword_1000EE9A8, &qword_1000B9E40, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1000910B8(&qword_1000EE9E8, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    View.progressViewStyle<A>(_:)();
    (*(v32 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
    v21 = static HierarchicalShapeStyle.secondary.getter();
    *&v14[*(sub_10000368C(&qword_1000EE9D8, &unk_1000B9E58) + 36)] = v21;
    v22 = &v14[*(v33 + 36)];
    v23 = *(sub_10000368C(&qword_1000EE9F8, &qword_1000B9E68) + 28);
    v24 = enum case for ControlSize.regular(_:);
    v25 = type metadata accessor for ControlSize();
    (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
    *v22 = swift_getKeyPath();
    sub_1000077CC(v14, v5, &qword_1000EE9B0, &qword_1000B9E48);
    swift_storeEnumTagMultiPayload();
    sub_100090570();
    sub_1000907A0();
    _ConditionalContent<>.init(storage:)();
    sub_100007834(v14, &qword_1000EE9B0, &qword_1000B9E48);
  }

  else
  {
    type metadata accessor for RadioNowPlayingViewModel.ButtonConfig(0);
    sub_1000910B8(&qword_1000EE9C0, type metadata accessor for RadioNowPlayingViewModel.ButtonConfig, &unk_1000B42EC);

    *v5 = ObservedObject.init(wrappedValue:)();
    v5[1] = v26;
    swift_storeEnumTagMultiPayload();
    sub_100090570();
    sub_1000907A0();
    _ConditionalContent<>.init(storage:)();
  }

  v27 = v35 < 1;
  sub_1000077CC(v20, v18, &qword_1000EE9B8, &qword_1000B9E50);
  v28 = v36;
  *v36 = v27;
  v29 = sub_10000368C(&qword_1000EEA08, &qword_1000B9E70);
  sub_1000077CC(v18, &v28[*(v29 + 48)], &qword_1000EE9B8, &qword_1000B9E50);
  sub_100007834(v20, &qword_1000EE9B8, &qword_1000B9E50);
  return sub_100007834(v18, &qword_1000EE9B8, &qword_1000B9E50);
}

uint64_t sub_100090054@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_10000368C(&qword_1000EE960, &qword_1000B9D38);
  sub_10008F308(v4, v5, (a2 + *(v6 + 44)));
  KeyPath = swift_getKeyPath();
  v8 = (a2 + *(sub_10000368C(&qword_1000EE968, &unk_1000B9D70) + 36));
  v9 = *(sub_10000368C(&qword_1000ED900, &unk_1000B7818) + 28);
  v10 = enum case for LayoutDirection.leftToRight(_:);
  v11 = type metadata accessor for LayoutDirection();
  result = (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = KeyPath;
  return result;
}

__n128 sub_1000901B8@<Q0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v4[71] = v9;
  *&v4[55] = v8;
  *&v4[103] = v11;
  *&v4[87] = v10;
  *&v4[23] = v6;
  *&v4[7] = v5;
  *&v4[39] = v7;
  *(a2 + 73) = *&v4[64];
  *(a2 + 89) = *&v4[80];
  *(a2 + 105) = *&v4[96];
  *(a2 + 9) = *v4;
  *(a2 + 25) = *&v4[16];
  result = *&v4[32];
  *(a2 + 41) = *&v4[32];
  *a2 = 0x4028000000000000;
  *(a2 + 8) = 0;
  *(a2 + 120) = *(&v11 + 1);
  *(a2 + 57) = *&v4[48];
  return result;
}

uint64_t sub_1000902A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_100090370(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = &_swiftEmptyArrayStorage[4];
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = _CocoaArrayWrapper.endIndex.getter();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_10000368C(&qword_1000EEA10, &qword_1000B9EA8);
        v15 = swift_allocObject();
        v16 = j__malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_100090570()
{
  result = qword_1000EE9C8;
  if (!qword_1000EE9C8)
  {
    sub_100005780(&qword_1000EE9B0, &qword_1000B9E48);
    sub_100090628();
    sub_100005870(&qword_1000EE9F0, &qword_1000EE9F8, &qword_1000B9E68, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE9C8);
  }

  return result;
}

unint64_t sub_100090628()
{
  result = qword_1000EE9D0;
  if (!qword_1000EE9D0)
  {
    sub_100005780(&qword_1000EE9D8, &unk_1000B9E58);
    sub_100005780(&qword_1000EE9A8, &qword_1000B9E40);
    type metadata accessor for CircularProgressViewStyle();
    sub_100005870(&qword_1000EE9E0, &qword_1000EE9A8, &qword_1000B9E40, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1000910B8(&qword_1000EE9E8, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EC0A0, &qword_1000EC0A8, &unk_1000B54F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE9D0);
  }

  return result;
}

unint64_t sub_1000907A0()
{
  result = qword_1000EEA00;
  if (!qword_1000EEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA00);
  }

  return result;
}

uint64_t sub_100090858(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000908A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100090900()
{
  result = qword_1000EEA18;
  if (!qword_1000EEA18)
  {
    sub_100005780(&qword_1000EE968, &unk_1000B9D70);
    sub_100005870(&qword_1000EEA20, &qword_1000EEA28, qword_1000B9F08, &protocol conformance descriptor for HStack<A>);
    sub_100005870(&qword_1000ED928, &qword_1000ED900, &unk_1000B7818, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA18);
  }

  return result;
}

unint64_t sub_100090A28()
{
  result = qword_1000EEA40;
  if (!qword_1000EEA40)
  {
    sub_100005780(&qword_1000EEA38, &qword_1000B9FB8);
    sub_100090AE0();
    sub_100005870(&qword_1000EEA78, &qword_1000EEA80, &qword_1000B9FE0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA40);
  }

  return result;
}

unint64_t sub_100090AE0()
{
  result = qword_1000EEA48;
  if (!qword_1000EEA48)
  {
    sub_100005780(&qword_1000EEA50, &qword_1000B9FC0);
    sub_100090B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA48);
  }

  return result;
}

unint64_t sub_100090B6C()
{
  result = qword_1000EEA58;
  if (!qword_1000EEA58)
  {
    sub_100005780(&qword_1000EEA60, &qword_1000B9FC8);
    sub_100005870(&qword_1000EEA68, &qword_1000EEA70, &unk_1000B9FD0, &protocol conformance descriptor for ZStack<A>);
    sub_100005870(&qword_1000EE5E0, &qword_1000EE5E8, &qword_1000B90B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA58);
  }

  return result;
}

unint64_t sub_100090C50()
{
  result = qword_1000EEA90;
  if (!qword_1000EEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA90);
  }

  return result;
}

uint64_t sub_100090CCC(uint64_t a1)
{
  v2 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100090D58()
{
  result = qword_1000EEAB8;
  if (!qword_1000EEAB8)
  {
    sub_100005780(&qword_1000EEA98, &qword_1000BA018);
    sub_100005780(&qword_1000EEA30, &qword_1000B9FB0);
    sub_100005870(&qword_1000EEA88, &qword_1000EEA30, &qword_1000B9FB0, &protocol conformance descriptor for Button<A>);
    sub_100090C50();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EE520, &qword_1000EE528, &qword_1000B8DB0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEAB8);
  }

  return result;
}

unint64_t sub_100090EB8()
{
  result = qword_1000EEAD8;
  if (!qword_1000EEAD8)
  {
    sub_100005780(&qword_1000EEAD0, &qword_1000BA190);
    sub_100090F70();
    sub_100005870(&qword_1000EEAF0, &qword_1000EEAF8, &qword_1000BA198, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEAD8);
  }

  return result;
}

unint64_t sub_100090F70()
{
  result = qword_1000EEAE0;
  if (!qword_1000EEAE0)
  {
    sub_100005780(&qword_1000EEAC8, &qword_1000BA188);
    sub_100090FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEAE0);
  }

  return result;
}

unint64_t sub_100090FFC()
{
  result = qword_1000EEAE8;
  if (!qword_1000EEAE8)
  {
    sub_100005780(&qword_1000EEAC0, &qword_1000BA180);
    sub_1000910B8(&qword_1000EE5D8, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEAE8);
  }

  return result;
}

uint64_t sub_1000910B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100091100(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000073;
  v3 = *a1;
  v4 = 0x657469726F766166;
  if (v3 == 1)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v4 = 0x696669746E656469;
    v5 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x636E657571657266;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000079;
  }

  v8 = 0x657469726F766166;
  if (*a2 != 1)
  {
    v8 = 0x696669746E656469;
    v2 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x636E657571657266;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100091208()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000912B4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10009134C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000913F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100093E88(*a1);
  *a2 = result;
  return result;
}

void sub_100091424(uint64_t *a1@<X8>)
{
  v2 = 0x657469726F766166;
  v3 = 0xEA00000000007265;
  if (*v1 == 1)
  {
    v3 = 0xE900000000000073;
  }

  else
  {
    v2 = 0x696669746E656469;
  }

  if (*v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x636E657571657266;
  }

  if (*v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE900000000000079;
  }

  *a1 = v4;
  a1[1] = v5;
}

id sub_10009148C()
{
  result = [objc_allocWithZone(type metadata accessor for RadioPreferences(0)) init];
  qword_1000F3CF0 = result;
  return result;
}

void sub_100091510()
{
  v1._countAndFlagsBits = 0x6F69646152;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = *(v0 + OBJC_IVAR____TtC5Media16RadioPreferences_defaults);
  v3 = String._bridgeToObjectiveC()();

  [v2 removeObjectForKey:v3];
}

uint64_t RadioPreferences.favoriteStations.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void RadioPreferences.favoriteStations.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  sub_100091510();
}

void (*RadioPreferences.favoriteStations.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = a1[1];
  return sub_100091A9C;
}

void sub_100091A9C(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  v5 = a1[2];
  if (a2)
  {

    v6 = v5;
    static Published.subscript.setter();
    sub_100091510();
  }

  else
  {
    v7 = v5;
    static Published.subscript.setter();
    sub_100091510();
  }
}

uint64_t RadioPreferences.$favoriteStations.getter()
{
  swift_beginAccess();
  sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t RadioPreferences.$favoriteStations.setter(uint64_t a1)
{
  v2 = sub_10000368C(&qword_1000EC880, &qword_1000B60F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*RadioPreferences.$favoriteStations.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000368C(&qword_1000EC880, &qword_1000B60F0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5Media16RadioPreferences__favoriteStations;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10003EA34;
}

uint64_t RadioPreferences.nowPlayingObserver.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  sub_100092458();
}

void (*RadioPreferences.nowPlayingObserver.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5Media16RadioPreferences_nowPlayingObserver;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091FE8;
}

void sub_100091FE8(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_100092458();
  }

  free(v3);
}

BOOL RadioPreferences.hasFavorites.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
    v0 = v3;
  }

  else
  {
    v0 = _swiftEmptyArrayStorage;
  }

  if (v0 >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 0;
}

id sub_100092134()
{
  v1 = sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC5Media16RadioPreferences__favoriteStations;
  v12 = 0;
  sub_10000368C(&qword_1000EEB00, &qword_1000BA1B0);
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v5], v4, v1);
  swift_weakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC5Media16RadioPreferences_cancelSet] = v6;
  v7 = [objc_opt_self() standardUserDefaults];
  *&v0[OBJC_IVAR____TtC5Media16RadioPreferences_defaults] = v7;
  v8 = type metadata accessor for RadioPreferences(0);
  v11.receiver = v0;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, "init");
}

void sub_1000922F8(uint8_t a1)
{
  v2 = v1;
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3B70);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 16777472;
    v7[4] = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Caching last sort order %hhu", v7, 5u);
  }

  v8 = *(v2 + OBJC_IVAR____TtC5Media16RadioPreferences_defaults);
  isa = UInt8._bridgeToObjectiveC()().super.super.isa;
  v10 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v10];
}

void sub_100092458()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = *&v0[OBJC_IVAR____TtC5Media16RadioPreferences_defaults];
    v3._countAndFlagsBits = 0x6F69646152;
    v3._object = 0xE500000000000000;
    String.append(_:)(v3);
    LOBYTE(v33) = 1;
    _print_unlocked<A, B>(_:_:)();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v2 arrayForKey:v4];

    if (v5)
    {
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = sub_100092B28(v6);

      if (v7)
      {
        v29 = v1;
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        v8 = *(v7 + 16);
        if (v8)
        {
          v33 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v9 = 0;
          do
          {
            if (v9 >= *(v7 + 16))
            {
              goto LABEL_35;
            }

            v30 = *(v7 + 16 * v9 + 32);
            sub_1000725CC(v30, *(&v30 + 1));
            sub_100092C54(&v31, &v32);
            ++v9;
            sub_100072620(v30, *(&v30 + 1));
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v8 != v9);

          v7 = v33;
        }

        else
        {

          v7 = _swiftEmptyArrayStorage;
        }

        if (qword_1000EAD08 != -1)
        {
LABEL_36:
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_100006928(v10, qword_1000F3BE8);

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 134349056;
          if (v7)
          {
            if (v7 >> 62)
            {
              v14 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }
          }

          else
          {
            v14 = 0;
          }

          *(v13 + 4) = v14;

          _os_log_impl(&_mh_execute_header, v11, v12, "Decoded to %{public}ld favorite stations", v13, 0xCu);
        }

        else
        {
        }

        v15 = _swiftEmptyArrayStorage;
        if (v7)
        {
          v32 = _swiftEmptyArrayStorage;
          v33 = &_swiftEmptySetSingleton;
          if (v7 >> 62)
          {
            v16 = _CocoaArrayWrapper.endIndex.getter();
            if (v16)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v16)
            {
LABEL_22:
              v17 = 0;
              v18 = v7 & 0xC000000000000001;
              while (1)
              {
                if (v18)
                {
                  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v20 = v17 + 1;
                  if (__OFADD__(v17, 1))
                  {
LABEL_32:
                    __break(1u);
LABEL_33:
                    v22 = v32;
                    goto LABEL_39;
                  }
                }

                else
                {
                  if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
LABEL_35:
                    __break(1u);
                    goto LABEL_36;
                  }

                  v19 = *(v7 + 8 * v17 + 32);

                  v20 = v17 + 1;
                  if (__OFADD__(v17, 1))
                  {
                    goto LABEL_32;
                  }
                }

                v21 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
                swift_beginAccess();
                LOBYTE(v21) = sub_10007B798(&v31, *(v19 + v21));

                if (v21)
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  v18 = v7 & 0xC000000000000001;
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                else
                {
                }

                ++v17;
                if (v20 == v16)
                {
                  goto LABEL_33;
                }
              }
            }
          }

          v22 = _swiftEmptyArrayStorage;
LABEL_39:

          if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
          {
            type metadata accessor for TerrestrialRadioStation(0);
            v15 = _bridgeCocoaArray<A>(_:)();
          }

          else
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for TerrestrialRadioStation(0);
            v15 = v22;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v33 = v15;
        v23 = v29;
        static Published.subscript.setter();
        sub_100091510();
        v24 = v23;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v25, v26))
        {

          return;
        }

        v27 = swift_slowAlloc();
        *v27 = 134349056;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v33)
        {
          if (v33 >> 62)
          {
            v28 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v28 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v28 = 0;
        }

        *(v27 + 4) = v28;

        _os_log_impl(&_mh_execute_header, v25, v26, "Finalized to %{public}ld favorite stations", v27, 0xCu);
      }
    }
  }
}

void *sub_100092B28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  sub_1000A2C70(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000CB2C(i, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v9;
      v11 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        sub_1000A2C70((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v3 = v11;
      }

      v3[2] = v7 + 1;
      *&v3[2 * v7 + 4] = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_100093DC8(0, 0xF000000000000000);
    return 0;
  }

  return v3;
}

void sub_100092C54(void *a3@<X3>, void *a4@<X8>)
{
  type metadata accessor for TerrestrialRadioStation(0);
  sub_100093DDC(&qword_1000EEB60, &protocol conformance descriptor for TerrestrialRadioStation);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v4)
  {
    *a3 = v4;
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v128 = 1;

  v123 = v129;
  static Published.subscript.setter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_19;
  }

  v8 = Strong;
  v9 = [Strong media];

  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = [v9 mediaSources];

  if (!v10)
  {
    goto LABEL_19;
  }

  sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v122 = a4;
  if (v11 >> 62)
  {
LABEL_87:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  if (!v12)
  {
LABEL_18:

    a4 = v122;
LABEL_19:
    if (qword_1000EAD08 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006928(v17, qword_1000F3BE8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v124[0] = swift_slowAlloc();
      *v20 = 136446722;
      v21 = (v123 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      v22 = *v21;
      v23 = v21[1];

      v24 = sub_100043AF0(v22, v23, v124);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = (v123 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
      swift_beginAccess();
      v26 = *v25;
      v27 = v25[1];

      v28 = sub_100043AF0(v26, v27, v124);

      *(v20 + 14) = v28;
      *(v20 + 22) = 2082;
      swift_beginAccess();
      v29 = CAFMediaSourceSemanticType.description.getter();
      v31 = sub_100043AF0(v29, v30, v124);

      *(v20 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v18, v19, "Couldn't match a media source to augment %{public}s, source %{public}s, type %{public}s", v20, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    *a4 = v123;
    return;
  }

  v14 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v15 = *(v11 + 8 * v14 + 32);
    }

    v10 = v15;
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if ([v15 mediaSourceSemanticType] == *(v129 + v13))
    {

      v32 = [v10 mediaItems];
      v33 = v122;
      if (v32)
      {
        v34 = v32;
        v35 = [v32 mediaItems];

        sub_100005A50(0, &qword_1000EDFE8, CAFMediaItem_ptr);
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v11 >> 62)
        {
          goto LABEL_90;
        }

        for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v118 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          if (!i)
          {
LABEL_38:

            break;
          }

          v37 = 0;
          v117 = v11 & 0xC000000000000001;
          v38 = v11 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v117)
            {
              v39 = v11;
              v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v37 >= *(v38 + 16))
              {
                goto LABEL_86;
              }

              v39 = v11;
              v40 = *(v11 + 8 * v37 + 32);
            }

            v41 = v40;
            v42 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

            v43 = *(v129 + v118);
            v44 = CAFMediaItem.isEquivalent(to:)();

            if (v44)
            {
              break;
            }

            ++v37;
            v33 = v122;
            v11 = v39;
            if (v42 == i)
            {
              goto LABEL_38;
            }
          }

          TerrestrialRadioStation.mergeWithMediaItem(_:)(v41);

          v56 = &off_1000E7000;
          v114 = v41;
          v57 = [v41 mediaItemImageIdentifier];
          v33 = v122;
          if (!v57)
          {
            goto LABEL_93;
          }

          v58 = v57;
          v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v119 = v60;

          v61 = [v10 mediaItemImages];
          if (!v61)
          {

            goto LABEL_93;
          }

          v11 = v61;
          v62 = [v61 mediaItemImages];

          sub_100005A50(0, &qword_1000EDFF0, CAFMediaItemImage_ptr);
          v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v63 >> 62)
          {
            v64 = _CocoaArrayWrapper.endIndex.getter();
            v65 = v59;
            if (!v64)
            {
LABEL_92:

              v33 = v122;
              v56 = &off_1000E7000;
              goto LABEL_93;
            }
          }

          else
          {
            v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v65 = v59;
            if (!v64)
            {
              goto LABEL_92;
            }
          }

          v66 = 0;
          v115 = v63 & 0xFFFFFFFFFFFFFF8;
          v116 = v63 & 0xC000000000000001;
          while (1)
          {
            if (v116)
            {
              v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v66 >= *(v115 + 16))
              {
                goto LABEL_89;
              }

              v67 = *(v63 + 8 * v66 + 32);
            }

            v33 = v67;
            v68 = v66 + 1;
            if (__OFADD__(v66, 1))
            {
              break;
            }

            v69 = [v67 identifier];
            if (v69)
            {
              v70 = v69;
              v117 = v33;
              v71 = v63;
              v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v74 = v73;

              if (v72 == v65 && v74 == v119)
              {
                goto LABEL_68;
              }

              v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v63 = v71;
              v33 = v117;
              if (v11)
              {
                goto LABEL_69;
              }
            }

            ++v66;
            if (v68 == v64)
            {
              goto LABEL_92;
            }
          }

          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          ;
        }
      }

      if (qword_1000EAD08 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100006928(v45, qword_1000F3BE8);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *v48 = 136446722;
        v49 = (v123 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
        swift_beginAccess();
        v50 = *v49;
        v51 = v49[1];

        v52 = sub_100043AF0(v50, v51, &v125);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2082;
        v53 = (v123 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier);
        swift_beginAccess();
        if (v53[1])
        {
          v54 = *v53;
          v55 = v53[1];
        }

        else
        {
          v54 = 0x29656E6F6E28;
          v55 = 0xE600000000000000;
        }

        v76 = sub_100043AF0(v54, v55, &v125);

        *(v48 + 14) = v76;
        *(v48 + 22) = 1026;
        v77 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
        v78 = v123;
        swift_beginAccess();
        *(v48 + 24) = *(v123 + v77);
        _os_log_impl(&_mh_execute_header, v46, v47, "Unable to locate any matching station for favorite %{public}s artworkIdentifier %{public}s, frequency %{public}u", v48, 0x1Cu);
        swift_arrayDestroy();

        goto LABEL_64;
      }

LABEL_99:

      *v33 = v129;
      return;
    }

    ++v14;
    if (v16 == v12)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:

  v33 = v117;
LABEL_69:

  v79 = [v33 imageData];

  v33 = v122;
  v56 = &off_1000E7000;
  if (v79)
  {
    v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    v83 = v82 >> 62;
    if ((v82 >> 62) > 1)
    {
      if (v83 != 2)
      {
        goto LABEL_84;
      }

      v84 = *(v80 + 16);
      v85 = *(v80 + 24);
    }

    else
    {
      if (!v83)
      {
        if ((v82 & 0xFF000000000000) == 0)
        {
          goto LABEL_84;
        }

LABEL_78:
        v86 = objc_allocWithZone(UIImage);
        sub_1000725CC(v80, v82);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v88 = [v86 initWithData:isa];

        sub_100072620(v80, v82);
        if (v88)
        {
          v120 = v88;
          if (qword_1000EAD08 != -1)
          {
            swift_once();
          }

          v89 = type metadata accessor for Logger();
          sub_100006928(v89, qword_1000F3BE8);
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v127[0] = v93;
            *v92 = 136446210;
            v94 = (v123 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
            swift_beginAccess();
            v95 = *v94;
            v96 = v94[1];

            v97 = sub_100043AF0(v95, v96, v127);

            *(v92 + 4) = v97;
            _os_log_impl(&_mh_execute_header, v90, v91, "Applying new artwork to favorite %{public}s", v92, 0xCu);
            sub_100006960(v93);
          }

          v98 = v120;
          v130.value.super.isa = v120;
          TerrestrialRadioStation.setImage(_:)(v130);

          sub_100072620(v80, v82);
          *v122 = v123;
          return;
        }

LABEL_84:
        sub_100072620(v80, v82);
        goto LABEL_93;
      }

      v84 = v80;
      v85 = v80 >> 32;
    }

    if (v84 == v85)
    {
      goto LABEL_84;
    }

    goto LABEL_78;
  }

LABEL_93:
  if (qword_1000EAD08 != -1)
  {
    swift_once();
  }

  v99 = type metadata accessor for Logger();
  sub_100006928(v99, qword_1000F3BE8);
  v100 = v114;
  v46 = Logger.logObject.getter();
  v101 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v46, v101))
  {

    goto LABEL_99;
  }

  v102 = swift_slowAlloc();
  v126[0] = swift_slowAlloc();
  *v102 = 136446722;
  v103 = (v123 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v104 = *v103;
  v105 = v103[1];

  v106 = sub_100043AF0(v104, v105, v126);

  *(v102 + 4) = v106;
  *(v102 + 12) = 2082;
  v107 = [v100 v56[236]];
  v121 = v101;
  if (v107)
  {
    v108 = v107;
    v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v110;
  }

  else
  {
    v109 = 0x29656E6F6E28;
    v111 = 0xE600000000000000;
  }

  v112 = sub_100043AF0(v109, v111, v126);

  *(v102 + 14) = v112;
  *(v102 + 22) = 1026;
  v113 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  v78 = v123;
  swift_beginAccess();
  *(v102 + 24) = *(v123 + v113);
  _os_log_impl(&_mh_execute_header, v46, v121, "Unable to locate any matching artwork for favorite %{public}s artworkIdentifier %{public}s, frequency %{public}u", v102, 0x1Cu);
  swift_arrayDestroy();

LABEL_64:
  *v122 = v78;
}

id RadioPreferences.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioPreferences(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RadioPreferences(uint64_t a1)
{
  result = qword_1000EEB48;
  if (!qword_1000EEB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100093C5C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RadioPreferences(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100093CA4(uint64_t a1)
{
  sub_100093D5C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100093D5C(uint64_t a1)
{
  if (!qword_1000EEB58)
  {
    sub_100005780(&qword_1000EEB00, &qword_1000BA1B0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1000EEB58);
    }
  }
}

uint64_t sub_100093DC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100072620(result, a2);
  }

  return result;
}

uint64_t sub_100093DDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TerrestrialRadioStation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100093E34()
{
  result = qword_1000EEB70;
  if (!qword_1000EEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEB70);
  }

  return result;
}

unint64_t sub_100093E88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DF758, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void *sub_100093ED4(void *a1, unint64_t a2)
{
  if ([a1 hasCurrentFrequency])
  {
    sub_10009ED3C(&off_1000DF1B8);
  }

  if (a2 >> 62)
  {
LABEL_57:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a2 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v4, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:

LABEL_21:
        sub_10009ED3C(&off_1000DF1E0);
        break;
      }
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v6 = *(a2 + 8 * v4 + 32);

      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }
    }

    v7 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v8 = *(v6 + v7);
    swift_beginAccess();
    v9 = v8;
    v10 = CAFMediaItem.primaryDisplayName(in:)();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      goto LABEL_20;
    }

    v14 = *(v6 + v7);
    v15 = CAFMediaItem.secondaryDisplayName.getter();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    ++v4;
    if (v18)
    {
      goto LABEL_21;
    }
  }

  v19 = [a1 mediaSourceSemanticType];
  if (v19 == 6 || v19 == 8)
  {
    v21 = 0;
    while (v3 != v21)
    {
      if (v5)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v21, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v25 = *(a2 + 8 * v21 + 32);

        if (__OFADD__(v21, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          sub_10009ED3C(&off_1000DF230);
          break;
        }
      }

      v26 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v27 = [*(v25 + v26) ensemble];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v30;

        v22 = v29 & 0xFFFFFFFFFFFFLL;
      }

      else
      {

        v22 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v22;
      }

      ++v21;
      if (v24)
      {
        goto LABEL_41;
      }
    }
  }

  v31 = 0;
  while (v3 != v31)
  {
    if (v5)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v31, 1))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        sub_10009ED3C(&off_1000DF258);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      if (v31 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v32 = *(a2 + 8 * v31 + 32);

      if (__OFADD__(v31, 1))
      {
        goto LABEL_51;
      }
    }

    v33 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v34 = *(v32 + v33);
    v35 = [v34 mediaItemCategory];

    ++v31;
    if (v35)
    {
      goto LABEL_52;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100094288(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100098E8C, v4);
}

void sub_10009431C(uint64_t a1, uint64_t a2)
{
  sub_100005A50(0, &qword_1000EDFE0, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_1000943C0()
{
  v1 = v0;
  v2 = sub_10000368C(&qword_1000EC880, &qword_1000B60F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v72 - v4;
  v101 = sub_10000368C(&qword_1000EC888, &qword_1000B60F8);
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v7 = v72 - v6;
  v90 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  __chkstk_darwin(v90);
  v88 = v72 - v8;
  v87 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v9 = __chkstk_darwin(v87);
  v86 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = v72 - v11;
  v12 = sub_10000368C(&qword_1000EEC20, &qword_1000BA4C0);
  v91 = *(v12 - 8);
  v92 = v12;
  __chkstk_darwin(v12);
  v89 = v72 - v13;
  v14 = sub_10000368C(&qword_1000EEC28, &unk_1000BA4C8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v93 = v72 - v16;
  v17 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v17 - 8);
  v100 = v72 - v18;
  v94 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v80 = *(v94 - 8);
  __chkstk_darwin(v94);
  v84 = v72 - v19;
  v83 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = v72 - v20;
  v21 = type metadata accessor for RadioRootViewController();
  v103.receiver = v0;
  v103.super_class = v21;
  objc_msgSendSuper2(&v103, "viewDidLoad");
  v22 = [v0 view];
  if (v22)
  {
    v23 = v22;
    v97 = v3;
    v98 = v2;
    v24 = [objc_opt_self() clearColor];
    [v23 setBackgroundColor:v24];

    v95 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl];
    [v95 addTarget:v1 action:"segmentedControlChangedWithSender:" forControlEvents:4096];
    v25 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_sourcePickerButton];
    [v25 setShowsMenuAsPrimaryAction:1];
    Strong = swift_unknownObjectWeakLoadStrong();
    v96 = v5;
    v79 = v14;
    v78 = v15;
    if (Strong && (v27 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v28 = Strong, , v28, v27))
    {
      v77 = sub_100005A50(0, &unk_1000EEF90, UIMenu_ptr);
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1000B4FC0;
      v30 = objc_opt_self();
      v31 = v7;
      v32 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_100099530;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100094288;
      aBlock[3] = &unk_1000E28E8;
      v33 = _Block_copy(aBlock);

      v34 = [v30 elementWithUncachedProvider:v33];
      v35 = v33;
      v7 = v31;
      _Block_release(v35);
      *(v29 + 32) = v34;
      v36 = v101;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      v104.value.super.isa = 0;
      v104.is_nil = 0;
      v38.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v104, 0, 0xFFFFFFFFFFFFFFFFLL, v29, v71).super.super.isa;
    }

    else
    {
      v38.super.super.isa = 0;
      v36 = v101;
    }

    [v25 setMenu:v38.super.super.isa];

    v39 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_optionsButton];
    v40 = String._bridgeToObjectiveC()();
    v41 = [objc_opt_self() systemImageNamed:v40];

    [v39 setImage:v41 forState:0];
    [v39 setShowsMenuAsPrimaryAction:1];
    isa = sub_100097FB0().super.super.isa;
    [v39 setMenu:isa];

    v43 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"segmentedControlKnobSelectWithSender:"];
    sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
    v44 = v43;
    v45 = Array._bridgeToObjectiveC()().super.isa;
    [v44 setAllowedTouchTypes:v45];

    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1000B4FC0;
    *(v46 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:4];
    v47 = Array._bridgeToObjectiveC()().super.isa;

    [v44 setAllowedPressTypes:v47];

    [v95 addGestureRecognizer:v44];
    v48 = swift_unknownObjectWeakLoadStrong();
    if (v48)
    {
      v49 = *(v48 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
      v50 = v48;

      if (v49)
      {
        v77 = v44;
        v95 = v7;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (aBlock[0])
        {

          sub_1000963F8(1);
        }

        swift_beginAccess();
        sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
        v51 = v84;
        Published.projectedValue.getter();
        swift_endAccess();
        v76 = objc_opt_self();
        v52 = [v76 mainRunLoop];
        aBlock[0] = v52;
        v74 = type metadata accessor for NSRunLoop.SchedulerOptions();
        v53 = *(v74 - 8);
        v73 = *(v53 + 56);
        v75 = v53 + 56;
        v54 = v100;
        v73(v100, 1, 1, v74);
        v72[3] = sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
        v72[0] = &protocol conformance descriptor for Published<A>.Publisher;
        v72[1] = sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
        v72[2] = sub_10001ADF4();
        v55 = v81;
        v56 = v94;
        Publisher.receive<A>(on:options:)();
        sub_1000057C8(v54);

        v80[1](v51, v56);
        *(swift_allocObject() + 16) = v1;
        v80 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
        sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v57 = v1;
        v58 = v83;
        Publisher<>.sink(receiveValue:)();

        (*(v82 + 8))(v55, v58);
        v83 = OBJC_IVAR____TtC5Media23RadioRootViewController_subscribers;
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        swift_beginAccess();
        sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
        Published.projectedValue.getter();
        swift_endAccess();
        swift_beginAccess();
        Published.projectedValue.getter();
        swift_endAccess();
        swift_beginAccess();
        sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
        Published.projectedValue.getter();
        swift_endAccess();
        swift_beginAccess();
        Published.projectedValue.getter();
        swift_endAccess();
        v59 = v72[0];
        sub_100005870(&unk_1000EBDF0, &unk_1000EC860, &qword_1000B50F0, v72[0]);
        sub_100005870(&unk_1000EBE10, &unk_1000ED130, &unk_1000B50E0, v59);
        v60 = v89;
        Publishers.CombineLatest4.init(_:_:_:_:)();
        v61 = [v76 mainRunLoop];
        aBlock[0] = v61;
        v73(v54, 1, 1, v74);
        sub_100005870(&qword_1000EEC30, &qword_1000EEC20, &qword_1000BA4C0, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
        v63 = v92;
        v62 = v93;
        Publisher.receive<A>(on:options:)();
        sub_1000057C8(v54);

        (*(v91 + 8))(v60, v63);
        *(swift_allocObject() + 16) = v57;
        sub_100005870(&qword_1000EEC38, &qword_1000EEC28, &unk_1000BA4C8, v80);
        v64 = v57;
        v65 = v79;
        Publisher<>.sink(receiveValue:)();

        (*(v78 + 8))(v62, v65);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v36 = v101;
        v7 = v95;
        v44 = v77;
      }
    }

    if (qword_1000EAD48 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
    v66 = v96;
    Published.projectedValue.getter();
    swift_endAccess();
    v67 = [objc_opt_self() mainRunLoop];
    aBlock[0] = v67;
    v68 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v69 = v100;
    (*(*(v68 - 8) + 56))(v100, 1, 1, v68);
    sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
    sub_100005870(&qword_1000ED100, &qword_1000EC880, &qword_1000B60F0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10001ADF4();
    v70 = v98;
    Publisher.receive<A>(on:options:)();
    sub_1000057C8(v69);

    (*(v97 + 8))(v66, v70);
    *(swift_allocObject() + 16) = v1;
    sub_100005870(&unk_1000EC900, &qword_1000EC888, &qword_1000B60F8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v1;
    Publisher<>.sink(receiveValue:)();

    (*(v99 + 8))(v7, v36);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_1000963F8(1);
  }

  else
  {
    __break(1u);
  }
}

void sub_10009568C(uint64_t a1)
{
  v2 = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for RadioRootViewController();
  objc_msgSendSuper2(&v9, "viewDidAppear:", v2 & 1);
  v3 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController];
  if (v3)
  {
    type metadata accessor for RadioStationListViewController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
      if (v5)
      {
        if (*(*&v5[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation))
        {
          v6 = v3;
          v7 = v5;

          sub_100026200(v8);
        }
      }
    }
  }
}

uint64_t sub_1000957C0()
{
  v1 = OBJC_IVAR____TtC5Media23RadioRootViewController_subscribers;
  swift_beginAccess();
  *(v0 + v1) = &_swiftEmptySetSingleton;

  v2 = *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_pages);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  v4 = 0;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (swift_dynamicCastObjCProtocolConditional())
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v4 != v3);
LABEL_20:
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_30;
      }

LABEL_26:
      [v10 invalidate];
      swift_unknownObjectRelease();
      ++v9;
      if (v11 == i)
      {
      }
    }

    if (v9 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v10 = _swiftEmptyArrayStorage[v9 + 4];
    swift_unknownObjectRetain();
    v11 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_26;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }
}

void sub_100095A60()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController);
  if (v1)
  {
    type metadata accessor for RadioStationListViewController();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
      if (v3)
      {
        if (*(*&v3[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation))
        {
          v6 = v1;
          v4 = v3;

          sub_100026200(v5);
        }
      }
    }
  }
}

id sub_100095B44(int a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v4 = result;
    [result removeFromSuperview];

    return [a2 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100095BB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100095C08()
{
  v1 = *&v0[OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController];
  if (v1)
  {
    v2 = v1;
    [v2 willMoveToParentViewController:v0];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v5 setAlpha:0.0];

        v7 = [v0 view];
        if (v7)
        {
          v8 = v7;
          v9 = [v2 view];
          if (v9)
          {
            v10 = v9;
            [v8 addSubview:v9];

            [v0 addChildViewController:v2];
            sub_10000368C(&unk_1000EC820, &qword_1000B5090);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_1000B4FB0;
            v12 = [v2 view];
            if (v12)
            {
              v13 = v12;
              v14 = [v12 topAnchor];

              v15 = [v0 view];
              if (v15)
              {
                v16 = v15;
                v17 = [v15 topAnchor];

                v18 = [v14 constraintEqualToAnchor:v17];
                *(v11 + 32) = v18;
                v19 = [v2 view];
                if (v19)
                {
                  v20 = v19;
                  v21 = [v19 bottomAnchor];

                  v22 = [v0 view];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = [v22 bottomAnchor];

                    v25 = [v21 constraintEqualToAnchor:v24];
                    *(v11 + 40) = v25;
                    v26 = [v2 view];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = [v26 leadingAnchor];

                      v29 = [v0 view];
                      if (v29)
                      {
                        v30 = v29;
                        v31 = [v29 leadingAnchor];

                        v32 = [v28 constraintEqualToAnchor:v31];
                        *(v11 + 48) = v32;
                        v33 = [v2 view];
                        if (v33)
                        {
                          v34 = v33;
                          v35 = [v33 trailingAnchor];

                          v36 = [v0 view];
                          if (v36)
                          {
                            v37 = v36;
                            v38 = objc_opt_self();
                            v39 = [v37 trailingAnchor];

                            v40 = [v35 constraintEqualToAnchor:v39];
                            *(v11 + 56) = v40;
                            sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
                            isa = Array._bridgeToObjectiveC()().super.isa;

                            [v38 activateConstraints:isa];

                            v42 = objc_opt_self();
                            v43 = swift_allocObject();
                            *(v43 + 16) = v2;
                            v54 = sub_100099488;
                            v55 = v43;
                            v50 = _NSConcreteStackBlock;
                            v51 = 1107296256;
                            v52 = sub_100064D70;
                            v53 = &unk_1000E2848;
                            v44 = _Block_copy(&v50);
                            v45 = v2;

                            v46 = swift_allocObject();
                            *(v46 + 16) = v45;
                            *(v46 + 24) = v0;
                            v54 = sub_1000994E8;
                            v55 = v46;
                            v50 = _NSConcreteStackBlock;
                            v51 = 1107296256;
                            v52 = sub_100095BB4;
                            v53 = &unk_1000E2898;
                            v47 = _Block_copy(&v50);
                            v48 = v45;
                            v49 = v0;

                            [v42 animateWithDuration:6 delay:v44 options:v47 animations:0.2 completion:0.0];

                            _Block_release(v47);
                            _Block_release(v44);
                            return;
                          }

LABEL_27:
                          __break(1u);
                          return;
                        }

LABEL_26:
                        __break(1u);
                        goto LABEL_27;
                      }

LABEL_25:
                      __break(1u);
                      goto LABEL_26;
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

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_1000961B8(void *a1, double a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha:a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_100096224()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    v2 = sub_1000ACA04();
    swift_unknownObjectRelease();
    if (v2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
        v5 = Strong;

        if (v4)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v9)
          {
            v6 = swift_unknownObjectWeakLoadStrong();
            if (v6 && (v7 = *(v6 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v8 = v6, , v8, v7))
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              sub_100093ED4(v9, v9);
            }

            else
            {
            }
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000963F8(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5Media23RadioRootViewController_pages);
  v5 = a1 & 1;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v5)
    {
      __break(1u);
      return;
    }

    v6 = *(v4 + 8 * v5 + 32);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController;
  v9 = *(v1 + OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController);
  if (v9)
  {
    sub_100005A50(0, &qword_1000EB870, UIViewController_ptr);
    v23 = v7;
    v10 = v9;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {

      return;
    }

    v13 = *(v2 + v8);
    if (v13)
    {
      v14 = v13;
      [v14 willMoveToParentViewController:0];
      v24 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v29 = sub_100099460;
      v30 = v15;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_100064D70;
      v28 = &unk_1000E27A8;
      v16 = _Block_copy(&aBlock);
      v17 = v14;

      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      v29 = sub_100099480;
      v30 = v18;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_100095BB4;
      v28 = &unk_1000E27F8;
      v19 = _Block_copy(&aBlock);
      v20 = v17;

      [v24 animateWithDuration:6 delay:v16 options:v19 animations:0.2 completion:0.0];

      _Block_release(v19);
      _Block_release(v16);
      v21 = *(v2 + v8);
      goto LABEL_13;
    }
  }

  else
  {
    v12 = v6;
  }

  v21 = 0;
LABEL_13:
  *(v2 + v8) = v7;
  v22 = v7;

  sub_100095C08();
  [*(v2 + OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl) setSelectedSegmentIndex:v5];
  if ((a1 & 1) != 0 && (*(v2 + OBJC_IVAR____TtC5Media23RadioRootViewController_didInitialSwitchToStations) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC5Media23RadioRootViewController_didInitialSwitchToStations) = 1;
  }

  sub_100095A60();
}

void sub_100096720()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites;
  v3 = v0[OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites];
  v4 = [v0 navigationItem];
  v5 = v4;
  if (v3)
  {
    [v4 setTitleView:0];

    v6 = [v1 navigationItem];
    v7 = [objc_opt_self() mainBundle];
    v88._object = 0xE000000000000000;
    v8._countAndFlagsBits = 0x5641465F54494445;
    v8._object = 0xEE0053455449524FLL;
    v9.value._countAndFlagsBits = 0x6F69646152;
    v9.value._object = 0xE500000000000000;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v88._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v88);

    String.init(format:_:)();

    v11 = String._bridgeToObjectiveC()();

    [v6 setTitle:v11];

    v12 = [v1 navigationItem];
    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000B4FC0;
    *(v13 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"doneEditingFavorites"];
    sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setLeftBarButtonItems:isa];

    v15 = [v1 navigationItem];
    v81 = Array._bridgeToObjectiveC()().super.isa;
    [v15 setRightBarButtonItems:v81];

    return;
  }

  [v4 setTitle:0];

  v16 = [v1 navigationItem];
  v17 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl];
  [v16 setTitleView:v17];

  v18 = [v1 view];
  if (!v18)
  {
    goto LABEL_65;
  }

  v19 = v18;
  v20 = [v18 safeAreaLayoutGuide];

  [v20 layoutFrame];
  v22 = v21;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v24 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v25 = Strong, , v25, v24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v80 = v84;
  }

  else
  {
    v80 = 0;
  }

  v26 = v1[v2];
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  if (v26 == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B4FC0;
    v28 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"doneEditingFavorites"];
    v29 = inited;
    *(inited + 32) = v28;
  }

  else
  {
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1000B4FC0;
    v31 = String._bridgeToObjectiveC()();
    v32 = [objc_opt_self() systemImageNamed:v31];

    v33 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v32 style:0 target:v1 action:"showSettings"];
    v29 = v30;
    *(v30 + 32) = v33;
  }

  sub_10009F030(v29);
  v34 = &off_1000E7000;
  if (![v17 selectedSegmentIndex])
  {
    if (qword_1000EAD48 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

  sub_100096224();
  if (v35)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v37 = swift_unknownObjectWeakLoadStrong();
    v82 = v17;
    if (v37)
    {
      v38 = v37;
      v39 = [*(v37 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

      if (v39)
      {
        v40 = [v39 audioSettings];

        if (v40)
        {
          if ((sub_100097554() & 1) == 0 && (v1[v2] & 1) == 0)
          {
            sub_10000368C(&unk_1000EC820, &qword_1000B5090);
            v41 = swift_initStackObject();
            *(v41 + 16) = xmmword_1000B4FC0;
            v42 = String._bridgeToObjectiveC()();
            v17 = [objc_opt_self() systemImageNamed:v42];

            v43 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v17 style:0 target:v1 action:"showSoundSettings"];
            *(v41 + 32) = v43;
            sub_10009F030(v41);
          }
        }
      }
    }

    v44 = [objc_allocWithZone(UIBarButtonItem) v34[396]];
    [v44 setSharesBackground:0];
    if (v1[v2])
    {
      break;
    }

    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_1000B4FC0;
    *(v45 + 32) = v44;
    v46 = v44;
    sub_10009F030(v45);
    sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
    v86.value.super.super.isa = 0;
    v86.is_nil = 0;
    v34 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemFixedSpace, v86, v87).super.super.isa;
    [(SEL *)v34 setWidth:0.0];
    if (!(_swiftEmptyArrayStorage >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      sub_1000457E4(0, 0, v34);

      break;
    }

    __break(1u);
LABEL_62:
    swift_once();
LABEL_17:
    if (RadioPreferences.hasFavorites.getter() && (v1[v2] & 1) == 0)
    {
LABEL_19:
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_1000B4FC0;
      *(v36 + 32) = [objc_allocWithZone(UIBarButtonItem) v34[396]];
      sub_10009F030(v36);
    }
  }

  v47 = swift_unknownObjectWeakLoadStrong();
  if (v47)
  {
    v48 = *(v47 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v49 = v47;

    if (v48)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v83 == 1)
      {
        v50 = swift_unknownObjectWeakLoadStrong();
        if (v50)
        {
          v51 = *(v50 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
          v52 = v50;

          if (v51)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            if (v83 == 1 && (v1[v2] & 1) == 0)
            {
              v53 = [objc_opt_self() nowPlayingBarButtonWithTarget:v1 action:"nowPlayingTapped"];
              v54 = String._bridgeToObjectiveC()();
              [v53 setAccessibilityIdentifier:v54];

              if (v22 < 530.0)
              {
                v55 = v53;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                goto LABEL_43;
              }

              if (!(_swiftEmptyArrayStorage >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
              {
                sub_1000457E4(0, 0, v53);
LABEL_43:

                goto LABEL_44;
              }

              __break(1u);
LABEL_65:
              __break(1u);
              return;
            }
          }
        }
      }
    }
  }

LABEL_44:
  v56 = [v1 navigationItem];
  sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setLeftBarButtonItems:v57];

  v58 = [v1 navigationItem];
  v59 = Array._bridgeToObjectiveC()().super.isa;

  [v58 setRightBarButtonItems:v59];

  if (!v80)
  {
LABEL_48:
    if ((v1[OBJC_IVAR____TtC5Media23RadioRootViewController_didInitialSwitchToStations] & 1) == 0)
    {
      sub_1000963F8(1);
    }

    v62 = swift_unknownObjectWeakLoadStrong();
    v63 = v82;
    if (v62 && (v64 = *(v62 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v65 = v62, , v65, v64) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , v63 = v82, , , v83) && (v66 = [v83 mediaSourceSemanticType], v83, v66 == 3))
    {
      v67 = 0x534C454E4E414843;
    }

    else
    {
      v67 = 0x534E4F4954415453;
    }

    v68 = [objc_opt_self() mainBundle];
    v89._object = 0xE000000000000000;
    v69._countAndFlagsBits = v67;
    v69._object = 0xE800000000000000;
    v70.value._countAndFlagsBits = 0x6F69646152;
    v70.value._object = 0xE500000000000000;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    v89._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v70, v68, v71, v89);

    String.init(format:_:)();

    v72 = String._bridgeToObjectiveC()();

    [v63 setTitle:v72 forSegmentAtIndex:1];

    return;
  }

  v60 = v80;
  v61 = [v60 mediaSourceSemanticType];
  if (v61 <= 8 && ((1 << v61) & 0x14F) != 0)
  {

    goto LABEL_48;
  }

  v73 = [v1 navigationItem];
  [v73 setTitleView:0];

  v74 = [v1 navigationItem];
  v75 = [objc_opt_self() mainBundle];
  v90._object = 0xE000000000000000;
  v76._countAndFlagsBits = 0x455449524F564146;
  v76._object = 0xE900000000000053;
  v77.value._countAndFlagsBits = 0x6F69646152;
  v77.value._object = 0xE500000000000000;
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v76, v77, v75, v78, v90);

  String.init(format:_:)();

  v79 = String._bridgeToObjectiveC()();

  [v74 setTitle:v79];

  if ([v82 selectedSegmentIndex])
  {
    sub_1000963F8(0);
  }
}

uint64_t sub_100097554()
{
  v1 = [v0 volumes];
  sub_100005A50(0, &qword_1000EEBF0, CAFVolume_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    return 0;
  }

  v4 = [v0 equalizers];
  if (v4)
  {
    v5 = v4;
    sub_100005A50(0, &unk_1000EEC00, CAFEqualizer_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v7)
    {
      return 0;
    }
  }

  v8 = [v0 soundDistribution];
  if (v8)
  {

    return 0;
  }

  return 1;
}

void *sub_1000976A0()
{
  v1 = v0;
  v2 = _swiftEmptyArrayStorage;
  v3 = *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl);
  v4 = &off_1000E7000;
  if (![v3 selectedSegmentIndex])
  {
    if (qword_1000EAD48 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_3;
  }

LABEL_6:
  if ([v3 v4[305]])
  {
    sub_100096224();
    if (v13)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
        v16 = Strong;

        if (v15)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v39 = v40;
          if (v40)
          {
            v17 = swift_unknownObjectWeakLoadStrong();
            if (v17)
            {
              v18 = *(v17 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
              v19 = v17;

              if (v18)
              {
                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter();

                v20 = sub_100093ED4(v40, v40);

                v21 = v20[2];
                if (v21)
                {
                  v40 = v2;
                  specialized ContiguousArray.reserveCapacity(_:)();
                  sub_100005A50(0, &unk_1000EEC10, UIAction_ptr);
                  v22 = 32;
                  while (1)
                  {
                    v3 = v20;
                    v26 = *(v20 + v22);
                    v4 = sub_10007607C([v39 mediaSourceSemanticType], v26);
                    v2 = v27;
                    sub_1000762E4(v26);
                    if (qword_1000EAD48 != -1)
                    {
                      swift_once();
                    }

                    v28 = *(qword_1000F3CF0 + OBJC_IVAR____TtC5Media16RadioPreferences_defaults);
                    v29 = String._bridgeToObjectiveC()();
                    v30 = [v28 integerForKey:v29];

                    if ((v30 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
LABEL_38:
                      __break(1u);
LABEL_39:
                      swift_once();
LABEL_3:
                      if (RadioPreferences.hasFavorites.getter() && (*(v1 + OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites) & 1) == 0)
                      {
                        sub_10000368C(&unk_1000EC820, &qword_1000B5090);
                        inited = swift_initStackObject();
                        *(inited + 16) = xmmword_1000B4FC0;
                        sub_100005A50(0, &unk_1000EEC10, UIAction_ptr);
                        v6 = [objc_opt_self() mainBundle];
                        v41._object = 0xE000000000000000;
                        v7._countAndFlagsBits = 0x5641465F54494445;
                        v7._object = 0xEE0053455449524FLL;
                        v8.value._countAndFlagsBits = 0x6F69646152;
                        v8.value._object = 0xE500000000000000;
                        v9._countAndFlagsBits = 0;
                        v9._object = 0xE000000000000000;
                        v41._countAndFlagsBits = 0;
                        NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v41);

                        String.init(format:_:)();

                        v10 = String._bridgeToObjectiveC()();
                        v11 = [objc_opt_self() systemImageNamed:v10];

                        v12 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v33 = 0;
                        v35 = 0;
                        v37 = sub_100098EE8;
                        v38 = v12;
                        v36 = 0;
                        *(inited + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                        sub_10009F048(inited);
                      }

                      goto LABEL_6;
                    }

                    if (v30 > 0xFF)
                    {
                      goto LABEL_38;
                    }

                    if (v30 > 1u)
                    {
                      if (v30 == 2)
                      {
                        if (v26 == 2)
                        {
LABEL_31:
                          v23 = 1;
                          goto LABEL_17;
                        }
                      }

                      else
                      {
                        if (v30 != 3)
                        {
LABEL_15:
                          if (!v26)
                          {
                            goto LABEL_31;
                          }

                          goto LABEL_16;
                        }

                        if (v26 == 3)
                        {
                          goto LABEL_31;
                        }
                      }
                    }

                    else
                    {
                      if (v30 != 1)
                      {
                        goto LABEL_15;
                      }

                      if (v26 == 1)
                      {
                        goto LABEL_31;
                      }
                    }

LABEL_16:
                    v23 = 0;
LABEL_17:
                    v24 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v25 = swift_allocObject();
                    *(v25 + 16) = v26;
                    *(v25 + 24) = v24;
                    v34 = 0;
                    v35 = 0;
                    v37 = sub_100098EDC;
                    v38 = v25;
                    v36 = v23;
                    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                    ++v22;
                    --v21;
                    v20 = v3;
                    if (!v21)
                    {

                      v31 = v40;
                      goto LABEL_34;
                    }
                  }
                }

                v31 = _swiftEmptyArrayStorage;
LABEL_34:
                sub_10009F048(v31);
              }
            }
          }
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_100097C94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites) = 1;
    sub_100096720();
    v4 = *&v3[OBJC_IVAR____TtC5Media23RadioRootViewController_pages];
    if (v4 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v5 = *(v4 + 32);
      }

      v6 = v5;
      type metadata accessor for RadioFavoritesViewController();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        *(v7 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites) = 1;
        sub_10004FC40();
        v8 = v6;
      }

      else
      {
        v8 = v3;
        v3 = v6;
      }
    }
  }
}

void sub_100097DB8(uint64_t a1, uint8_t a2, uint64_t a3)
{
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3B70);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 16908544;
    v7[4] = a2;
    _os_log_impl(&_mh_execute_header, v5, v6, "Switching grouping strategy to %{public}hhu", v7, 5u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC5Media23RadioRootViewController_pages);
    v10 = Strong;

    if (v9 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11)
      {
LABEL_8:
        v12 = __OFSUB__(v11, 1);
        v13 = v11 - 1;
        if (v12)
        {
          __break(1u);
        }

        else if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v13 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v14 = *(v9 + 8 * v13 + 32);
LABEL_13:
            v15 = v14;

            type metadata accessor for RadioStationListViewController();
            v16 = swift_dynamicCastClass();
            if (v16)
            {
              v17 = v16;
              v18 = *(v16 + OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy);
              *(v17 + OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy) = a2;
              sub_100017588(v18);
            }

            return;
          }

          __break(1u);
          return;
        }

        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_13;
      }
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_8;
      }
    }
  }
}

UIMenu sub_100097FB0()
{
  sub_100005A50(0, &unk_1000EEF90, UIMenu_ptr);
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1000B4FC0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100098E34;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100094288;
  aBlock[3] = &unk_1000E2708;
  v3 = _Block_copy(aBlock);

  v4 = [v1 elementWithUncachedProvider:v3];
  _Block_release(v3);
  *(preferredElementSize + 32) = v4;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v9, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v7);
}

uint64_t sub_100098128(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v5 = Strong;
  v6 = sub_1000976A0();
  if (v6 >> 62)
  {
    sub_100005A50(0, &qword_1000EDFE0, UIMenuElement_ptr);
    v7 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005A50(0, &qword_1000EDFE0, UIMenuElement_ptr);
    v7 = v6;
  }

  a1(v7);
}

void sub_100098298(char a1)
{
  *(v1 + OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites) = a1;
  sub_100096720();
  v3 = *(v1 + OBJC_IVAR____TtC5Media23RadioRootViewController_pages);
  if (v3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v6 = v4;
  type metadata accessor for RadioFavoritesViewController();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites) = a1;
    sub_10004FC40();
  }
}

void sub_1000984AC()
{
  v1 = v0;
  v2 = type metadata accessor for CAFUICellSelectionAction();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = (&v49 - v7);
  v9 = type metadata accessor for CAFUISettingsCache();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v54 = Strong;
  v17 = [*&Strong[OBJC_IVAR____TtC5Media15RadioCarManager_carManager] currentCar];
  if (!v17)
  {
    v21 = v54;

    return;
  }

  v18 = v17;
  v51 = v6;
  v52 = v3;
  v53 = v2;
  v19 = [v17 automakerSettings];
  if (v19)
  {
    v20 = v19;
    CAFAutomakerSettings.allSettings.getter();
  }

  v22 = [v18 automakerSettings];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 settingsSections];

    if (v24)
    {
      sub_100005A50(0, &qword_1000EEBF8, CAFSettingsSection_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  CAFUISettingsCache.init(settings:sections:)();
  (*(v10 + 16))(v13, v15, v9);
  v25 = objc_allocWithZone(type metadata accessor for RadioSettingsViewController(0));
  v54 = v54;
  v26 = sub_10007A7C8(v54, v13);
  v27 = [v18 audioSettings];
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v27;
  if ((sub_100097554() & 1) == 0)
  {
    goto LABEL_17;
  }

  v29 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v30)
    {
      goto LABEL_15;
    }

LABEL_17:

LABEL_18:

    v33 = [v1 navigationController];
    if (v33)
    {
      v34 = v33;
      [v33 pushViewController:v26 animated:1];

LABEL_20:
      (*(v10 + 8))(v15, v9);
      return;
    }

    (*(v10 + 8))(v15, v9);

    return;
  }

  v50 = v26;
  v35 = _CocoaArrayWrapper.endIndex.getter();
  v26 = v50;

  if (v35)
  {
    goto LABEL_17;
  }

LABEL_15:
  v31 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
  if (v31 >> 62)
  {
    v50 = v26;
    v36 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v50;

    if (v36)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v32)
    {
      goto LABEL_17;
    }
  }

  v37 = [v28 volumes];
  sub_100005A50(0, &qword_1000EEBF0, CAFVolume_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v26;

  v38 = CAFUITileViewController.createVolumeListItem(volumes:)();
  v26 = v50;

  if (!v38)
  {
    goto LABEL_17;
  }

  v49 = v38;
  v39 = dispatch thunk of CAFUIDataListItem.selectionAction.getter();
  v39();

  v41 = v52;
  v40 = v53;
  if ((*(v52 + 88))(v8, v53) == enum case for CAFUICellSelectionAction.push(_:))
  {

    (*(v41 + 96))(v8, v40);
    v42 = *v8;
    v43 = [v1 navigationController];
    if (v43)
    {
      v44 = v43;
      [v43 pushViewController:v42 animated:1];

      goto LABEL_20;
    }

    (*(v10 + 8))(v15, v9);
  }

  else
  {
    v45 = *(v41 + 8);
    v45(v8, v40);
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v46._object = 0x80000001000BCA80;
    v46._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v46);
    v47 = dispatch thunk of CAFUIDataListItem.selectionAction.getter();
    v48 = v51;
    v47();

    _print_unlocked<A, B>(_:_:)();
    v45(v48, v40);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id sub_100098D08(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RadioRootViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100098DFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098E3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100098E54()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098EA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100098EF0(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_subscribers] = v4;
  v2[OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites] = 0;
  v2[OBJC_IVAR____TtC5Media23RadioRootViewController_didInitialSwitchToStations] = 0;
  *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController] = 0;
  swift_unknownObjectWeakAssign();
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000B6BD0;
  v6 = objc_allocWithZone(type metadata accessor for RadioFavoritesViewController());
  v7 = a1;
  v8 = sub_100050C4C(v7);

  *(v5 + 32) = v8;
  v9 = objc_allocWithZone(type metadata accessor for RadioStationListViewController());
  v10 = v7;
  v11 = sub_10001AAC8(v10, 0, 0);

  *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_pages] = v5;
  *(v5 + 40) = v11;
  if (*&v10[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager])
  {
    v12 = objc_allocWithZone(type metadata accessor for RadioSourcesButton());

    *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_sourcePickerButton] = sub_100003B38(v13);
    v14 = [objc_opt_self() buttonWithType:0];
    *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_optionsButton] = v14;
    sub_10000368C(&unk_1000EEC40, &qword_1000BA4D8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000B5700;
    v16 = objc_opt_self();
    v17 = [v16 mainBundle];
    v40._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0x455449524F564146;
    v18._object = 0xE900000000000053;
    v19.value._countAndFlagsBits = 0x6F69646152;
    v19.value._object = 0xE500000000000000;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v40);

    v21 = String.init(format:_:)();
    v23 = v22;

    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = v21;
    *(v15 + 40) = v23;
    v24 = [v16 mainBundle];
    v41._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0x534E4F4954415453;
    v25._object = 0xE800000000000000;
    v26.value._countAndFlagsBits = 0x6F69646152;
    v26.value._object = 0xE500000000000000;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v41._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v41);

    v28 = String.init(format:_:)();
    v30 = v29;

    *(v15 + 88) = &type metadata for String;
    *(v15 + 64) = v28;
    *(v15 + 72) = v30;
    v31 = objc_allocWithZone(type metadata accessor for CAFUISegmentedControl());
    isa = Array._bridgeToObjectiveC()().super.isa;

    v33 = [v31 initWithItems:isa];

    v34 = objc_opt_self();
    v35 = v33;
    v36 = [v34 _carSystemQuaternaryColor];
    [v35 setSelectedSegmentTintColor:v36];

    v37 = v35;
    v38 = String._bridgeToObjectiveC()();
    [v37 setAccessibilityIdentifier:v38];

    *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl] = v37;
    v39.receiver = v2;
    v39.super_class = type metadata accessor for RadioRootViewController();
    objc_msgSendSuper2(&v39, "initWithNibName:bundle:", 0, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_100099340()
{
  swift_unknownObjectWeakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_subscribers) = v1;
  *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites) = 0;
  *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_didInitialSwitchToStations) = 0;
  *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100099428()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000994A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000994F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10009959C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100099670()
{
  v1 = sub_10000368C(&unk_1000EEEE0, &qword_1000B3CC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v22[-v2];
  v4 = sub_10000368C(&qword_1000EAFD8, &qword_1000B3CD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22[-v5];
  v7 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIButton.Configuration.borderedTinted()();
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  v12 = objc_opt_self();
  v13 = [v12 clearColor];
  v14 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v14(v22, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIConfigurationColorTransformer.init(_:)();
  v15 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  UIButton.Configuration.imageColorTransformer.setter();
  v16 = [objc_opt_self() configurationWithPointSize:5 weight:12.0];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v17 = *&v0[OBJC_IVAR____TtC5MediaP33_6636E4DC41F6B5F8575FED6C528DF67125NowPlayingHighlightButton_image];
  UIButton.Configuration.image.setter();
  if ([v0 isFocused])
  {
    _UISolariumEnabled();
    v18 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    v18(v22, 0);
    v19 = [v12 radio_carSystemFocusColor];
    v20 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v20(v22, 0);
  }

  UIButton.Configuration.contentInsets.setter();
  (*(v9 + 16))(v3, v11, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  UIButton.configuration.setter();
  return (*(v9 + 8))(v11, v8);
}

id sub_100099B4C()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton;
  v2 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton);
  }

  else
  {
    v4 = [objc_allocWithZone(CPUIModernButton) init];
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() systemImageNamed:v5];

    [v4 setImage:v6 forState:0];
    [v4 setAdjustsImageWhenDisabled:1];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100099C50()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton;
  v2 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton);
  }

  else
  {
    v4 = [objc_allocWithZone(CPUIModernButton) init];
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() systemImageNamed:v5];

    [v4 setImage:v6 forState:0];
    [v4 setAdjustsImageWhenDisabled:1];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100099D80()
{
  v0 = [objc_allocWithZone(CPUIModernButton) init];
  [v0 setEnabled:0];
  [v0 setShowButtonBackgroundShape:0];
  [v0 setPrefersWhiteInDefaultState:1];
  v1 = [v0 titleLabel];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v2 setFont:v3];
  }

  return v0;
}

id sub_100099E68()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton;
  v2 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton);
  }

  else
  {
    v4 = [objc_allocWithZone(CPUIModernButton) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100099EFC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100099F5C()
{
  v0 = [objc_allocWithZone(CPUIModernButton) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [v2 imageWithRenderingMode:2];
  }

  else
  {
    v3 = 0;
  }

  [v0 setImage:v3 forState:0];

  v4 = v0;
  v5 = String._bridgeToObjectiveC()();
  [v4 setAccessibilityIdentifier:v5];

  [v4 setAdjustsImageWhenDisabled:1];
  return v4;
}

id sub_10009A0BC(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  if (v3)
  {
    v4 = [v3 imageWithRenderingMode:2];
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for NowPlayingHighlightButton();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC5MediaP33_6636E4DC41F6B5F8575FED6C528DF67125NowPlayingHighlightButton_image] = v4;
  v12.receiver = v6;
  v12.super_class = v5;
  v7 = v4;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100099670();

  [v8 addTarget:a1 action:"showSoundSettings" forControlEvents:{64, v12.receiver, v12.super_class}];
  v9 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v8];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  return v9;
}

id sub_10009A274(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10009A2D8(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  if (v3)
  {
    v4 = [v3 imageWithRenderingMode:2];
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for NowPlayingHighlightButton();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC5MediaP33_6636E4DC41F6B5F8575FED6C528DF67125NowPlayingHighlightButton_image] = v4;
  v12.receiver = v6;
  v12.super_class = v5;
  v7 = v4;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100099670();

  [v8 addTarget:a1 action:"setArtistSongNotification" forControlEvents:{64, v12.receiver, v12.super_class}];
  v9 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v8];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  return v9;
}

void sub_10009A458()
{
  v1 = v0;
  v174 = sub_10000368C(&unk_1000EEF68, &unk_1000BA830);
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v128 - v2;
  v168 = sub_10000368C(&unk_1000ED120, &qword_1000B6CD0);
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v166 = &v128 - v3;
  v171 = sub_10000368C(&qword_1000EC5A8, &unk_1000B5A10);
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = &v128 - v4;
  v162 = sub_10000368C(&unk_1000EC890, &unk_1000B6100);
  v161 = *(v162 - 1);
  __chkstk_darwin(v162);
  v160 = &v128 - v5;
  v165 = sub_10000368C(&unk_1000ED0B0, &unk_1000BA840);
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v128 - v6;
  v154 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v151 = &v128 - v7;
  v156 = sub_10000368C(&unk_1000EBDA0, &qword_1000BA850);
  v155 = *(v156 - 1);
  __chkstk_darwin(v156);
  v152 = &v128 - v8;
  v159 = sub_10000368C(&unk_1000EEF70, &unk_1000BA858);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v128 - v9;
  v141 = sub_10000368C(&unk_1000EC8A0, &qword_1000B6110);
  v140 = *(v141 - 1);
  __chkstk_darwin(v141);
  v139 = &v128 - v10;
  v144 = sub_10000368C(&unk_1000EEF80, &qword_1000B6118);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v128 - v11;
  v135 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v128 - v12;
  v138 = sub_10000368C(&unk_1000EBDB0, &qword_1000B50F8);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v128 - v13;
  v14 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v14 - 8);
  v16 = &v128 - v15;
  v17 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v182 = *(v17 - 8);
  __chkstk_darwin(v17);
  v176 = &v128 - v18;
  v177 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v181 = *(v177 - 8);
  __chkstk_darwin(v177);
  v175 = &v128 - v19;
  v130 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_carManager;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_25;
  }

  v21 = Strong;
  v22 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);

  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = objc_allocWithZone(type metadata accessor for RadioSourcesButton());

  v25 = sub_100003B38(v24);
  [v25 setShowsMenuAsPrimaryAction:1];
  sub_100005A50(0, &unk_1000EEF90, UIMenu_ptr);
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000B4FC0;
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100099530;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100094288;
  aBlock[3] = &unk_1000E2E10;
  v29 = _Block_copy(aBlock);
  v190 = v22;
  v30 = v25;

  v31 = [v27 elementWithUncachedProvider:v29];
  _Block_release(v29);
  *(v26 + 32) = v31;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v192.value.super.isa = 0;
  v192.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v192, 0, 0xFFFFFFFFFFFFFFFFLL, v26, v127).super.super.isa;
  [v30 setMenu:isa];

  v34 = *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton];
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton] = v30;
  v129 = v30;

  swift_beginAccess();
  v150 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v35 = v176;
  Published.projectedValue.getter();
  swift_endAccess();
  v186 = objc_opt_self();
  v36 = [v186 mainRunLoop];
  aBlock[0] = v36;
  v188 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v37 = *(v188 - 8);
  v38 = *(v37 + 56);
  v183 = v37 + 56;
  v184 = v38;
  v38(v16, 1, 1, v188);
  v189 = sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
  v180 = &protocol conformance descriptor for Published<A>.Publisher;
  v149 = sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
  v187 = sub_10001ADF4();
  v39 = v175;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v16, &unk_1000EC7E0, &unk_1000B5100);

  v40 = *(v182 + 8);
  v182 += 8;
  v148 = v40;
  v40(v35, v17);
  *(swift_allocObject() + 16) = v1;
  v185 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  v147 = sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v131 = v1;
  v41 = v1;
  v145 = v17;
  v42 = v16;
  v43 = v41;
  v44 = v177;
  Publisher<>.sink(receiveValue:)();

  v45 = *(v181 + 8);
  v181 += 8;
  v146 = v45;
  v45(v39, v44);
  v46 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  v47 = v133;
  Published.projectedValue.getter();
  swift_endAccess();
  v48 = [v186 mainRunLoop];
  aBlock[0] = v48;
  v49 = v42;
  v50 = v184;
  v184(v42, 1, 1, v188);
  sub_100005870(&unk_1000EBDF0, &unk_1000EC860, &qword_1000B50F0, &protocol conformance descriptor for Published<A>.Publisher);
  v51 = v136;
  v52 = v135;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v49, &unk_1000EC7E0, &unk_1000B5100);

  (*(v134 + 8))(v47, v52);
  *(swift_allocObject() + 16) = v43;
  sub_100005870(&unk_1000EBE00, &unk_1000EBDB0, &qword_1000B50F8, v185);
  v53 = v43;
  v54 = v138;
  Publisher<>.sink(receiveValue:)();

  (*(v137 + 8))(v51, v54);
  v178 = v43;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000EC8C0, &qword_1000B6128);
  v55 = v139;
  Published.projectedValue.getter();
  swift_endAccess();
  v56 = [v186 mainRunLoop];
  aBlock[0] = v56;
  v57 = v49;
  v132 = v49;
  v58 = v49;
  v59 = v188;
  v50(v58, 1, 1, v188);
  sub_100005870(&unk_1000EEFA0, &unk_1000EC8A0, &qword_1000B6110, v180);
  v60 = v142;
  v61 = v141;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v57, &unk_1000EC7E0, &unk_1000B5100);

  (*(v140 + 8))(v55, v61);
  *(swift_allocObject() + 16) = v53;
  v62 = v185;
  sub_100005870(&unk_1000EC8D0, &unk_1000EEF80, &qword_1000B6118, v185);
  v141 = v53;
  v63 = v144;
  Publisher<>.sink(receiveValue:)();

  (*(v143 + 8))(v60, v63);
  v179 = v46;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
  v64 = v151;
  Published.projectedValue.getter();
  swift_endAccess();
  v65 = v186;
  v66 = [v186 mainRunLoop];
  aBlock[0] = v66;
  v67 = v132;
  v184(v132, 1, 1, v59);
  v68 = v180;
  sub_100005870(&unk_1000EBE10, &unk_1000ED130, &unk_1000B50E0, v180);
  v69 = v152;
  v70 = v154;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v67, &unk_1000EC7E0, &unk_1000B5100);

  (*(v153 + 8))(v64, v70);
  sub_100005870(&qword_1000EEFC0, &unk_1000EBDA0, &qword_1000BA850, v62);
  v71 = v157;
  v72 = v156;
  Publisher.map<A>(_:)();
  (*(v155 + 8))(v69, v72);
  v73 = swift_allocObject();
  v74 = v141;
  *(v73 + 16) = v141;
  sub_100005870(&unk_1000EEFC8, &unk_1000EEF70, &unk_1000BA858, &protocol conformance descriptor for Publishers.Map<A, B>);
  v156 = v74;
  v75 = v159;
  Publisher<>.sink(receiveValue:)();

  (*(v158 + 8))(v71, v75);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  v76 = v160;
  Published.projectedValue.getter();
  swift_endAccess();
  v77 = [v65 mainRunLoop];
  aBlock[0] = v77;
  v78 = v184;
  v184(v67, 1, 1, v188);
  sub_100005870(&unk_1000EC8E0, &unk_1000EC890, &unk_1000B6100, v68);
  v79 = v163;
  v80 = v162;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v67, &unk_1000EC7E0, &unk_1000B5100);

  (*(v161 + 8))(v76, v80);
  v81 = swift_allocObject();
  v82 = v156;
  *(v81 + 16) = v156;
  sub_100005870(&unk_1000EEFE0, &unk_1000ED0B0, &unk_1000BA840, v185);
  v162 = v82;
  v83 = v165;
  Publisher<>.sink(receiveValue:)();

  (*(v164 + 8))(v79, v83);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  v84 = v166;
  Published.projectedValue.getter();
  swift_endAccess();
  v85 = [v186 mainRunLoop];
  aBlock[0] = v85;
  v86 = v67;
  v78(v67, 1, 1, v188);
  sub_100005870(&qword_1000EC910, &unk_1000ED120, &qword_1000B6CD0, v180);
  v87 = v169;
  v88 = v168;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v67, &unk_1000EC7E0, &unk_1000B5100);

  (*(v167 + 8))(v84, v88);
  v89 = swift_allocObject();
  v90 = v162;
  *(v89 + 16) = v162;
  sub_100005870(&unk_1000ED160, &qword_1000EC5A8, &unk_1000B5A10, v185);
  v91 = v90;
  v92 = v171;
  Publisher<>.sink(receiveValue:)();

  (*(v170 + 8))(v87, v92);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  v93 = v176;
  Published.projectedValue.getter();
  swift_endAccess();
  v94 = [v186 mainRunLoop];
  aBlock[0] = v94;
  v184(v86, 1, 1, v188);
  v95 = v175;
  v96 = v145;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v86, &unk_1000EC7E0, &unk_1000B5100);

  v97 = v96;
  v98 = v91;
  v148(v93, v97);
  v99 = v172;
  v100 = v177;
  Publisher.filter(_:)();
  v146(v95, v100);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005870(&unk_1000EEFF0, &unk_1000EEF68, &unk_1000BA830, &protocol conformance descriptor for Publishers.Filter<A>);
  v101 = v174;
  Publisher<>.sink(receiveValue:)();

  (*(v173 + 8))(v99, v101);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v102 = [v91 view];
  if (!v102)
  {
    goto LABEL_23;
  }

  v103 = v102;
  [v102 bounds];
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;

  v193.origin.x = v105;
  v193.origin.y = v107;
  v193.size.width = v109;
  v193.size.height = v111;
  Height = CGRectGetHeight(v193);
  v113 = [objc_opt_self() sharedApplication];
  v114 = [v113 delegate];

  if (!v114)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  type metadata accessor for AppDelegate(0);
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  v116 = v190;
  v115 = aBlock[0];
  if (aBlock[0])
  {
    [aBlock[0] contentScaleFactor];
    v118 = v117;
  }

  else
  {
    v118 = 2.0;
  }

  v119 = Height * v118;
  if (COERCE__INT64(fabs(Height * v118)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v119 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v119 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v120 = v119;
  v121 = OBJC_IVAR____TtC5Media18NowPlayingObserver_preferredArtworkSize;
  swift_beginAccess();
  *(v116 + v121) = v120;
  v122 = swift_unknownObjectWeakLoadStrong();
  if (v122 && (v123 = v122, v124 = [*(v122 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar], v123, v124) && (v125 = objc_msgSend(v124, "nowPlayingInformation"), v124, v125) && (v126 = objc_msgSend(v125, "nowPlaying"), v125, v126))
  {
    [v126 registerObserver:v98];
    if ([v126 playbackState] == 2)
    {
      sub_10009C234();
    }
  }

  else
  {
  }
}