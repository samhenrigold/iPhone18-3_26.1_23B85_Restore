uint64_t sub_100622404(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  v4 = *(v1 + 26);
  v5 = *(v1 + 40);
  v16 = *(v1 + 32);
  v6 = *(v1 + 56);
  v14 = *(v1 + 16);
  v15 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 89);
  v11 = *(v1 + 27);
  type metadata accessor for ListViewState._Storage();
  swift_allocObject();
  v12 = sub_100042DA8(v14, v2, v3, v4, v11, v16, v5, v15, v6, v7, v8, v9, 0, v10);

  return v12;
}

uint64_t sub_1006224F8()
{
  v0 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v10);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ViewState(0);
  sub_100095158();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10009EF18(v12, type metadata accessor for ViewState.SecondaryViewState);
    v13 = type metadata accessor for Location.Identifier();
    sub_10001B350(v9, 1, 1, v13);
    type metadata accessor for LocationViewerViewState._Storage(0);
    swift_allocObject();
    v14 = v9;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v19 = *v12;
    sub_10001B350(v5, 1, 1, active);
    sub_100051BBC();
    if (sub_100024D10(v2, 1, active) == 1)
    {
      sub_100095158();
      if (sub_100024D10(v2, 1, active) != 1)
      {
        sub_1000180EC(v2, &qword_100CA65B8, &unk_100A313D0);
      }
    }

    else
    {
      sub_1000A0890();
    }

    sub_1000A0890();
    v20 = *(v19 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
    v21 = *(v19 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
    v22 = *(v19 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
    v23 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v19);

    type metadata accessor for LocationViewerViewState._Storage(0);
    swift_allocObject();
    v14 = v9;
    v15 = v23;
    v16 = v20;
    v17 = v21;
    v18 = v22;
  }

  return sub_10003DDB8(v14, v15, v16, 2, v17, v18);
}

id sub_10062288C()
{
  v1 = OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:1];
    [v4 setTimeStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_100622928(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController____lazy_storage___dateFormatter] = 0;
  v5 = OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView;
  *&v2[v5] = [objc_allocWithZone(MKMapView) init];
  v6 = OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_alert;
  v7 = type metadata accessor for WeatherAlertEntity();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  v9 = _swiftEmptyArrayStorage;
  if (a2)
  {
    v9 = a2;
  }

  *&v2[OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_notifications] = v9;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for DebugIncomingWeatherAlertViewController(0);
  v10 = objc_msgSendSuper2(&v15, "initWithStyle:", 2);
  v11 = OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView;
  v12 = *&v10[OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView];
  v13 = v10;
  [v12 setDelegate:v13];
  [*&v10[v11] setScrollEnabled:0];
  [*&v10[v11] setZoomEnabled:0];

  (*(v8 + 8))(a1, v7);
  return v13;
}

void sub_100622AA4()
{
  *(v0 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController____lazy_storage___dateFormatter) = 0;
  v1 = OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView;
  *(v0 + v1) = [objc_allocWithZone(MKMapView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100622B48()
{
  v2 = v0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for DebugIncomingWeatherAlertViewController(0);
  objc_msgSendSuper2(&v21, "viewDidLoad");
  result = [v0 tableView];
  if (result)
  {
    v4 = result;
    sub_1003B3418();
    swift_getObjCClassFromMetadata();
    v5 = sub_100005ECC();
    [v4 registerClass:v1 forCellReuseIdentifier:v5];

    sub_1003C1790(0xD000000000000016, 0x8000000100AD8270, v2);
    v6 = WeatherAlertEntity.boundingBox.getter();
    v7 = *&v2[OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView];
    v8 = sub_1005CCC5C(v6);
    [v7 addOverlay:v8];

    Array<A>.maxLatitude.getter();
    v10 = v9;
    Array<A>.minLatitude.getter();
    v12 = (v10 - v11) * 1.5;
    Array<A>.maxLongitude.getter();
    v14 = v13;
    Array<A>.minLongitude.getter();
    v16 = (v14 - v15) * 1.5;
    Array<A>.center.getter();
    v18 = v17;
    v20 = v19;

    return [v7 setRegion:0 animated:{v18, v20, v12, v16}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100622D24(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 5;
  }

  if (a2 == 2)
  {
    return *(*(v2 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_notifications) + 16);
  }

  return a2 == 1;
}

uint64_t sub_100622D84(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 0;
  }

  else
  {
    return *&aAlert_1[8 * a2];
  }
}

void sub_100622E0C()
{
  v1 = v0;
  v2 = type metadata accessor for SevereNotificationEntity();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  if (IndexPath.section.getter() != 2)
  {
    return;
  }

  v9 = *&v0[OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_notifications];
  v10 = IndexPath.row.getter();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  (*(v4 + 16))(v8, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v2);
  v11 = objc_allocWithZone(type metadata accessor for DebugSevereNotificationViewController(0));
  v12 = sub_1004932D4(v8);
  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];

    v12 = v14;
  }
}

id sub_100623060(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005ECC();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [v2 dequeueReusableCellWithIdentifier:v3 forIndexPath:isa];

  [v5 setAccessoryType:0];
  if (IndexPath.section.getter())
  {
    if (IndexPath.section.getter() == 1)
    {
      sub_10062385C(v5);
    }

    else if (IndexPath.section.getter() == 2)
    {
      sub_1006238FC(v5);
    }
  }

  else
  {
    sub_100623398(v5);
  }

  return v5;
}

CGFloat sub_100623250(uint64_t a1)
{
  v1 = IndexPath.section.getter();
  result = UITableViewAutomaticDimension;
  if (v1 == 1)
  {
    return 400.0;
  }

  return result;
}

uint64_t sub_100623398(void *a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  static UIListContentConfiguration.valueCell()();
  if (!IndexPath.row.getter())
  {
    UIListContentConfiguration.text.setter();
    WeatherAlertEntity.id.getter();
    goto LABEL_7;
  }

  if (IndexPath.row.getter() == 1)
  {
    UIListContentConfiguration.text.setter();
    WeatherAlertEntity.alertIdentifier.getter();
LABEL_7:
    dispatch thunk of Column.value.getter();

    goto LABEL_8;
  }

  if (IndexPath.row.getter() == 2)
  {
    UIListContentConfiguration.text.setter();
    WeatherAlertEntity.channelIdentifier.getter();
    goto LABEL_7;
  }

  if (IndexPath.row.getter() != 3)
  {
    if (IndexPath.row.getter() != 4)
    {
      goto LABEL_9;
    }

    UIListContentConfiguration.text.setter();
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    v18 = WeatherAlertEntity.boundingBox.getter();
    v19 = *(v18 + 16);
    if (v19)
    {
      v33 = v5;
      v34 = a1;
      v35 = v18;
      v36 = _swiftEmptyArrayStorage;
      sub_10000369C(0, v19, 0);
      v20 = v36;
      v21 = 32;
      do
      {
        v22 = Double.description.getter();
        v24 = v23;
        v36 = v20;
        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          sub_10000369C((v25 > 1), v26 + 1, 1);
          v20 = v36;
        }

        v20[2] = v26 + 1;
        v27 = &v20[2 * v26];
        v27[4] = v22;
        v27[5] = v24;
        v21 += 8;
        --v19;
      }

      while (v19);

      v5 = v33;
      a1 = v34;
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
    }

    v36 = v20;
    sub_10022C350(&qword_100CCC930, &qword_100A41810);
    sub_1001141C8();
    v28 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

LABEL_8:
    UIListContentConfiguration.secondaryText.setter();
LABEL_9:
    v37[3] = v5;
    v37[4] = &protocol witness table for UIListContentConfiguration;
    v12 = sub_100042FB0(v37);
    (*(v7 + 16))(v12, v11, v5);
    UITableViewCell.contentConfiguration.setter();
    [a1 setSelectionStyle:0];
    [a1 setAccessoryType:0];
    return (*(v7 + 8))(v11, v5);
  }

  UIListContentConfiguration.text.setter();
  v14 = sub_10062288C();
  WeatherAlertEntity.created.getter();
  dispatch thunk of Column.value.getter();
  v15 = type metadata accessor for Date();
  result = sub_100024D10(v4, 1, v15);
  if (result != 1)
  {

    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v15 - 8) + 8))(v4, v15);
    v17 = [v14 stringFromDate:isa];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_10062385C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView);
  [a1 bounds];
  [v3 setFrame:{0.0, 0.0}];
  v4 = [a1 contentView];
  [v4 addSubview:v3];
}

unint64_t sub_1006238FC(void *a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v41 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for SevereNotificationEntity();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = *(v1 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_notifications);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result >= *(v19 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v39 = v12;
  v40 = a1;
  (*(v14 + 16))(v18, v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * result, v12);
  static UIListContentConfiguration.subtitleCell()();
  SevereNotificationEntity.id.getter();
  dispatch thunk of Column.value.getter();

  UIListContentConfiguration.text.setter();
  v21 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.setter();
  v21(&v42, 0);
  v22 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v22(&v42, 0);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v42 = 0x203A65746144;
  v43 = 0xE600000000000000;
  v23 = sub_10062288C();
  SevereNotificationEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v24 = type metadata accessor for Date();
  result = sub_100024D10(v5, 1, v24);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(*(v24 - 8) + 8))(v5, v24);
  v26 = [v23 stringFromDate:isa];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._object = 0x8000000100AC4760;
  v31._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v31);
  SevereNotificationEntity.subscription.getter();
  dispatch thunk of Column.value.getter();

  if (v47)
  {
    v32 = v46;
  }

  else
  {
    v32 = 0xD000000000000014;
  }

  if (v47)
  {
    v33 = v47;
  }

  else
  {
    v33 = 0x8000000100ABCAE0;
  }

  v34 = v33;
  String.append(_:)(*&v32);

  UIListContentConfiguration.secondaryText.setter();
  v35 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v35(&v42, 0);
  v36 = v41;
  v44 = v41;
  v45 = &protocol witness table for UIListContentConfiguration;
  v37 = sub_100042FB0(&v42);
  (*(v7 + 16))(v37, v11, v36);
  v38 = v40;
  UITableViewCell.contentConfiguration.setter();
  [v38 setAccessoryType:1];
  (*(v7 + 8))(v11, v36);
  return (*(v14 + 8))(v18, v39);
}

id sub_100623E30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugIncomingWeatherAlertViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DebugIncomingWeatherAlertViewController(uint64_t a1)
{
  result = qword_100CCC918;
  if (!qword_100CCC918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100623F58(uint64_t a1)
{
  result = type metadata accessor for WeatherAlertEntity();
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

_BYTE *storeEnumTagSinglePayload for AddLocationContext(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10062415C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000100AD8310 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1006241F8(void *a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CCCA40, &qword_100A6D398);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_1000161C0(a1, a1[3]);
  sub_100624674();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v8, v3);
}

Swift::Int sub_100624344(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_10062438C(void *a1)
{
  v3 = sub_10022C350(&qword_100CCCA30, &qword_100A6D390);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_1000161C0(a1, a1[3]);
  sub_100624674();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100006F14(a1);
  return v9 & 1;
}

uint64_t sub_1006244D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10062415C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100624504(uint64_t a1)
{
  v2 = sub_100624674();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100624540(uint64_t a1)
{
  v2 = sub_100624674();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10062458C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1006245D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10062438C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_100624620()
{
  result = qword_100CCCA28;
  if (!qword_100CCCA28)
  {
    result = swift_getWitnessTable(byte_100A6D368, &type metadata for AddLocationContext, v0, v1);
    atomic_store(result, &qword_100CCCA28);
  }

  return result;
}

unint64_t sub_100624674()
{
  result = qword_100CCCA38;
  if (!qword_100CCCA38)
  {
    result = swift_getWitnessTable(byte_100A6D464, &type metadata for AddLocationContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCCA38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AddLocationContext.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100624778()
{
  result = qword_100CCCA48;
  if (!qword_100CCCA48)
  {
    result = swift_getWitnessTable(byte_100A6D43C, &type metadata for AddLocationContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCCA48);
  }

  return result;
}

unint64_t sub_1006247D0()
{
  result = qword_100CCCA50;
  if (!qword_100CCCA50)
  {
    result = swift_getWitnessTable(a5_28, &type metadata for AddLocationContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCCA50);
  }

  return result;
}

unint64_t sub_100624828()
{
  result = qword_100CCCA58;
  if (!qword_100CCCA58)
  {
    result = swift_getWitnessTable(byte_100A6D3D4, &type metadata for AddLocationContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCCA58);
  }

  return result;
}

BOOL sub_100624884(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(v4 + 8);
  if (v6(v5, v4) > a2)
  {
    return 0;
  }

  v6(v5, v4);
  return v8 <= a3;
}

uint64_t sub_10062490C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_100024D10(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_100024D10(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_100624A48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_10001B350(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_100624CAC(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Font.Context();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100624D78(uint64_t a1)
{
  type metadata accessor for Font.Context();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100624E88(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100004464();
  static Published.subscript.getter();
}

uint64_t sub_100624F08(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100004464();
  static Published.subscript.getter();
}

void sub_100624F7C()
{
  sub_10000C778();
  v26 = v0;
  v3 = v2;
  v4 = type metadata accessor for WeatherMapPreviewLocationState();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100014B58();
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Location();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = *(v6 + 16);
  sub_1000206E4();
  v18();
  v19 = sub_100004464();
  if (v20(v19) == enum case for WeatherMapPreviewLocationState.loaded(_:))
  {
    v21 = sub_100004464();
    v22(v21);
    (*(v13 + 32))(v17, v10, v11);
    sub_1009BEC2C(v17);
    (*(v13 + 8))(v17, v11);
  }

  else
  {
    v23 = sub_100004464();
    v24(v23);
  }

  sub_1000206E4();
  v18();
  sub_1006251A4(v1);
  (*(v6 + 8))(v3, v4);
  sub_10000536C();
}

uint64_t sub_1006251A4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapPreviewLocationState();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000206E4();
  v6();

  static Published.subscript.setter();
  return (*(v4 + 8))(a1, v2);
}

id sub_100625358()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillLayoutSubviews");
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result sizeToFit];

    result = [v0 view];
    if (result)
    {
      v3 = result;
      [result frame];
      v5 = v4;
      v7 = v6;

      return [v0 setPreferredContentSize:{v5, v7}];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10062542C(void *a1)
{
  v1 = a1;
  sub_100625358();
}

void sub_100625474()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_100625518(void *a1)
{
  v1 = a1;
  sub_100625474();
}

uint64_t sub_1006255C0()
{

  swift_unknownObjectRelease();
}

uint64_t sub_100625610(uint64_t a1)
{

  swift_unknownObjectRelease();
}

void (*sub_10062567C(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10023FBC0(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for WeatherMapPreviewLocationState();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_10023FBC0(v6);
  v7 = sub_10023FBC0(v6);
  v3[4] = v7;
  sub_100624E88(v7, v8);
  return sub_100625750;
}

void sub_100625750(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_100624F7C();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_100624F7C();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_100625804(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapPreviewLocationState();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1006251A4(v5);
}

uint64_t sub_1006258D0()
{
  v1 = OBJC_IVAR____TtC7Weather23LocationStateObservable__locationState;
  sub_10022C350(&qword_100CCCE88, &qword_100A6D9B8);
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

void sub_100625998(uint64_t a1)
{
  sub_100625A28(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100625A28(uint64_t a1)
{
  if (!qword_100CCCD58)
  {
    type metadata accessor for WeatherMapPreviewLocationState();
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100CCCD58);
    }
  }
}

uint64_t sub_100625A80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_100625AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100625B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v22;
  a20 = v23;
  v24 = sub_10022C350(&qword_100CCCE88, &qword_100A6D9B8);
  sub_1000037C4();
  v26 = v25;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  v30 = type metadata accessor for WeatherMapPreviewLocationState();
  sub_1000037C4();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_100014B58();
  v35 = __chkstk_darwin(v34);
  v37 = &a9 - v36;
  v38 = OBJC_IVAR____TtC7Weather23LocationStateObservable__locationState;
  (*(v32 + 104))(&a9 - v36, enum case for WeatherMapPreviewLocationState.loading(_:), v30, v35);
  (*(v32 + 16))(v21, v37, v30);
  Published.init(initialValue:)();
  (*(v32 + 8))(v37, v30);
  (*(v26 + 32))(v20 + v38, v29, v24);
  sub_10000536C();
}

void sub_100625D08()
{
  sub_10000C778();
  v1 = v0;
  v88 = v2;
  active = type metadata accessor for ActiveLocationModel(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v76 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v74 - v6;
  v77 = sub_10022C350(&qword_100CCCDE0, &qword_100A6D8B8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = (&v74 - v9);
  type metadata accessor for Location();
  sub_1000037C4();
  v85 = v12;
  v86 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v84 = v14 - v13;
  v82 = sub_10022C350(&qword_100CCCDE8, &qword_100A6D8C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v83 = &v74 - v16;
  v79 = sub_10022C350(&qword_100CCCDF0, &qword_100A6D8C8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  v80 = &v74 - v18;
  v87 = sub_10022C350(&qword_100CCCDF8, &qword_100A6D8D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  v81 = &v74 - v20;
  v78 = sub_10022C350(&qword_100CCCE00, &qword_100A6D8D8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  v24 = type metadata accessor for WeatherMapPreviewLocationState();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v31 = (*(v26 + 88))(v30, v24);
  if (v31 == enum case for WeatherMapPreviewLocationState.loaded(_:))
  {
    (*(v26 + 96))(v30, v24);
    v32 = v84;
    (*(v85 + 32))(v84, v30, v86);
    v33 = type metadata accessor for ListLocationRowView(0);
    v34 = v33[7];
    v74 = *(v1 + 80);
    sub_100035B30(v1 + 136, v10 + v34);
    sub_1000161C0((v1 + 40), *(v1 + 64));
    v35 = v33[8];
    swift_unknownObjectRetain();
    sub_1005ABB30(v32, v10 + v35);
    v36 = type metadata accessor for Location.Identifier();
    sub_10001B350(v7, 1, 1, v36);
    v37 = v76;
    v38 = &v7[*(active + 20)];
    *v38 = 0;
    v38[8] = 1;
    sub_100626EB8(v7, v37);
    v39 = sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
    v40 = sub_100003B6C(v39);
    sub_100626F1C(v37, v40 + *(*v40 + 120));
    sub_10022C350(&qword_100CA4B38, &qword_100A6D8F0);
    swift_storeEnumTagMultiPayload();
    sub_100626F80(v7);
    v41 = Namespace.wrappedValue.getter();
    v90 = 0;
    static Binding.constant(_:)();
    v42 = v92;
    v43 = v93;
    v44 = v94;
    *v10 = swift_getKeyPath();
    sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
    swift_storeEnumTagMultiPayload();
    v45 = v10 + v33[5];
    v89 = 0;
    State.init(wrappedValue:)();
    v46 = v91;
    *v45 = v90;
    *(v45 + 1) = v46;
    *(v10 + v33[6]) = v74;
    v47 = (v10 + v33[9]);
    sub_100006390();
    sub_100006F64(v48, &qword_100CA4B60, &qword_100A2EE20, v49);
    *v47 = ObservedObject.init(wrappedValue:)();
    v47[1] = v50;
    *(v10 + v33[10]) = v41;
    v51 = (v10 + v33[11]);
    *v51 = LocationSearchEntityFromStringResolver.init();
    v51[1] = 0;
    v52 = v10 + v33[12];
    *v52 = v42;
    *(v52 + 1) = v43;
    v52[16] = v44;
    v53 = type metadata accessor for LocationViewCollisionOptions(0);
    sub_100003B6C(v53);
    v54 = sub_100104640();
    sub_100626E70(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions, byte_100A95518);
    v55 = static ObservableObject.environmentStore.getter();
    v56 = (v10 + *(sub_10022C350(&qword_100CCCE28, &unk_100A6D8E0) + 36));
    *v56 = v55;
    v56[1] = v54;
    v57 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    v59 = (v10 + *(v77 + 36));
    *v59 = KeyPath;
    v59[1] = v57;
    sub_100626FDC(v10, v80);
    swift_storeEnumTagMultiPayload();
    sub_100008B1C();
    sub_100006F64(v60, v61, v62, v63);
    sub_100626CD0();
    v64 = v81;
    _ConditionalContent<>.init(storage:)();
    sub_100035AD0(v64, v83, &qword_100CCCDF8, &qword_100A6D8D0);
    swift_storeEnumTagMultiPayload();
    sub_100626C18();
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v64, &qword_100CCCDF8, &qword_100A6D8D0);
    sub_10062704C(v10);
    (*(v85 + 8))(v84, v86);
  }

  else
  {
    v65 = v80;
    v66 = v81;
    v67 = v83;
    if (v31 == enum case for WeatherMapPreviewLocationState.loading(_:))
    {
      *v23 = static VerticalAlignment.center.getter();
      *(v23 + 1) = 0;
      v23[16] = 1;
      v68 = sub_10022C350(&qword_100CCCE38, &qword_100A6D960);
      sub_1006265D8(&v23[*(v68 + 44)]);
      sub_100035AD0(v23, v65, &qword_100CCCE00, &qword_100A6D8D8);
      swift_storeEnumTagMultiPayload();
      sub_100008B1C();
      sub_100006F64(v69, &qword_100CCCE00, &qword_100A6D8D8, v70);
      sub_100626CD0();
      _ConditionalContent<>.init(storage:)();
      sub_100035AD0(v66, v67, &qword_100CCCDF8, &qword_100A6D8D0);
      swift_storeEnumTagMultiPayload();
      sub_100626C18();
      _ConditionalContent<>.init(storage:)();
      sub_1000206E4();
      sub_1000180EC(v71, v72, v73);
      sub_1000180EC(v23, &qword_100CCCE00, &qword_100A6D8D8);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100626C18();
      _ConditionalContent<>.init(storage:)();
      (*(v26 + 8))(v30, v24);
    }
  }

  sub_10000536C();
}

uint64_t sub_1006265D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CCCE40, &qword_100A6D968);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v22 - v6);
  v8 = sub_10022C350(&qword_100CCCE48, &qword_100A6D970);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v13[*(sub_10022C350(&qword_100CCCE50, &qword_100A6D978) + 44)];
  *v7 = static Alignment.center.getter();
  v7[1] = v15;
  v16 = sub_10022C350(&qword_100CCCE58, &qword_100A6D980);
  sub_100626860((v7 + *(v16 + 44)));
  sub_100035AD0(v7, v4, &qword_100CCCE40, &qword_100A6D968);
  *v14 = 0;
  v14[8] = 1;
  v17 = sub_10022C350(&qword_100CCCE60, &qword_100A6D988);
  sub_100035AD0(v4, &v14[*(v17 + 48)], &qword_100CCCE40, &qword_100A6D968);
  v18 = &v14[*(v17 + 64)];
  *v18 = 0;
  v18[8] = 1;
  sub_1000180EC(v7, &qword_100CCCE40, &qword_100A6D968);
  sub_1000180EC(v4, &qword_100CCCE40, &qword_100A6D968);
  sub_100035AD0(v13, v10, &qword_100CCCE48, &qword_100A6D970);
  *a1 = 0;
  *(a1 + 8) = 1;
  v19 = sub_10022C350(&qword_100CCCE68, &unk_100A6D990);
  sub_100035AD0(v10, a1 + *(v19 + 48), &qword_100CCCE48, &qword_100A6D970);
  v20 = a1 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_1000180EC(v13, &qword_100CCCE48, &qword_100A6D970);
  return sub_1000180EC(v10, &qword_100CCCE48, &qword_100A6D970);
}

uint64_t sub_100626860@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for CircularProgressViewStyle();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CAD1A8, &qword_100A3C5A0);
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = sub_10022C350(&qword_100CCCE70, &qword_100A6D9A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = static Color.clear.getter();
  ProgressView<>.init<>()();
  CircularProgressViewStyle.init()();
  sub_100006F64(&qword_100CAD270, &qword_100CAD1A8, &qword_100A3C5A0, &protocol conformance descriptor for ProgressView<A, B>);
  sub_100626E70(&qword_100CC8F28, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
  v17 = v6;
  v18 = v26;
  View.progressViewStyle<A>(_:)();
  (*(v27 + 8))(v5, v18);
  (*(v25 + 8))(v8, v17);
  v19 = *(v10 + 16);
  v19(v12, v15, v9);
  v20 = v28;
  *v28 = v16;
  *(v20 + 4) = 256;
  v21 = v20;
  v22 = sub_10022C350(&qword_100CCCE78, &unk_100A6D9A8);
  v19(v21 + *(v22 + 48), v12, v9);
  v23 = *(v10 + 8);

  v23(v15, v9);
  v23(v12, v9);
}

uint64_t sub_100626BC0(uint64_t a1)
{
  result = sub_100626E70(&qword_100CCCDD8, type metadata accessor for LocationRowPreviewViewController, asc_100A6D81C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100626C18()
{
  result = qword_100CCCE08;
  if (!qword_100CCCE08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCCDF8, &qword_100A6D8D0);
    v4[0] = sub_100006F64(&qword_100CCCE10, &qword_100CCCE00, &qword_100A6D8D8, &protocol conformance descriptor for HStack<A>);
    v4[1] = sub_100626CD0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCCE08);
  }

  return result;
}

unint64_t sub_100626CD0()
{
  result = qword_100CCCE18;
  if (!qword_100CCCE18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCCDE0, &qword_100A6D8B8);
    v4[0] = sub_100626D88();
    v4[1] = sub_100006F64(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCCE18);
  }

  return result;
}

unint64_t sub_100626D88()
{
  result = qword_100CCCE20;
  if (!qword_100CCCE20)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCCE28, &unk_100A6D8E0);
    v4[0] = sub_100626E70(&qword_100CCCE30, type metadata accessor for ListLocationRowView, byte_100A4B750);
    v4[1] = sub_100006F64(&qword_100CACCF8, &qword_100CACD00, &unk_100A68CA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCCE20);
  }

  return result;
}

uint64_t sub_100626E70(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100626EB8(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveLocationModel(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_100626F1C(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveLocationModel(0);
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t sub_100626F80(uint64_t a1)
{
  active = type metadata accessor for ActiveLocationModel(0);
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t sub_100626FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCCDE0, &qword_100A6D8B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062704C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CCCDE0, &qword_100A6D8B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1006270B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000C778();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v62 = v28;
  v65 = v31;
  v67 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v76 = a21;
  v77 = a23;
  v38 = sub_100042FB0(v75);
  (*(*(a21 - 8) + 32))(v38, v37, a21);
  v39 = objc_allocWithZone(v25);
  v40 = sub_10002D7F8(v75, v76);
  __chkstk_darwin(v40);
  sub_1000037D8();
  v43 = (v42 - v41);
  (*(v44 + 16))(v42 - v41);
  v45 = *v43;
  v74[3] = type metadata accessor for LocationRowViewModelProvider();
  v74[4] = &off_100C5F610;
  v74[0] = v45;
  v46 = qword_100CCCCB0;
  v47 = type metadata accessor for LocationStateObservable(0);
  v48 = sub_100003B6C(v47);
  sub_100625B58(v48, v49, v50, v51, v52, v53, v54, v55, v61, v62, a24, v65, v67, v69[0], v69[1], v69[2], v69[3], v69[4], v69[5], v69[6]);
  *&v39[v46] = v48;
  sub_100035B30(v74, v71);
  sub_100035B30(v29, &v72);
  sub_100035B30(v27, &v73);
  v70[0] = 0;

  sub_10022C350(&qword_100CA4AF0, &qword_100A2EDC0);
  sub_100006390();
  sub_100006F64(v56, &qword_100CA4AF0, &qword_100A2EDC0, v57);
  v70[1] = ObservedObject.init(wrappedValue:)();
  v70[2] = v58;
  sub_100626E70(&qword_100CCCE80, type metadata accessor for LocationStateObservable, byte_100A6D7E4);
  v70[3] = ObservedObject.init(wrappedValue:)();
  v70[4] = v59;
  v71[5] = v66;
  v71[6] = v64;
  *&v39[qword_100CCCCC0] = v35;
  v60 = &v39[qword_100CCCCB8];
  *v60 = v33;
  *(v60 + 1) = v68;
  sub_1006273B0(v70, v69);

  swift_unknownObjectRetain();
  [UIHostingController.init(rootView:)() setPreferredContentSize:{0.0, 112.0}];

  swift_unknownObjectRelease();
  sub_100006F14(v27);
  sub_100006F14(v63);
  sub_1006273E8(v70);
  sub_100006F14(v74);
  sub_100006F14(v75);
  sub_10000536C();
}

unint64_t sub_100627418()
{
  result = qword_100CCCE90;
  if (!qword_100CCCE90)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCCE98, &unk_100A6D9C0);
    v4[0] = sub_100626C18();
    v4[1] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCCE90);
  }

  return result;
}

uint64_t type metadata accessor for PrecipitationAveragesHeroChartViewModel(uint64_t a1)
{
  result = qword_100CCCEF8;
  if (!qword_100CCCEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100627518(uint64_t a1)
{
  sub_100627650(319, &qword_100CA51A8, &type metadata accessor for DetailChartDataElement);
  if (v1 <= 0x3F)
  {
    sub_100627650(319, &unk_100CCCF08, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PeakUpperMarkModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DetailHeroChartLollipopModel(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100627650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1006276A4(double *a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v37 = *(a1 + 7);
  v38 = *(a1 + 6);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  v35 = *(a2 + 56);
  v36 = *(a2 + 48);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v5 == v9;
  if (!v13 && (sub_10001C854() & 1) == 0)
  {
    return 0;
  }

  v14 = v6 == v10 && v7 == v11;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v38 == v36 && v37 == v35;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1009E9B70();
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  sub_1009E9B70();
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  sub_1009EC81C();
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  if (a1[11] != *(a2 + 88))
  {
    return 0;
  }

  if (a1[12] != *(a2 + 96))
  {
    return 0;
  }

  if (!sub_100696458(*(a1 + 13), *(a1 + 14), *(a1 + 15), *(a1 + 128), *(a2 + 104), *(a2 + 112), *(a2 + 120), *(a2 + 128)))
  {
    return 0;
  }

  v19 = *(a1 + 18);
  v20 = *(a1 + 19);
  v21 = *(a1 + 160);
  v22 = *(a2 + 144);
  v23 = *(a2 + 152);
  v24 = *(a2 + 160);
  sub_1009E9C0C();
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  if (v19 == v22 && v20 == v23)
  {
    if (v21 != v24)
    {
      return 0;
    }
  }

  else if (sub_10001C854() & 1) == 0 || ((v21 ^ v24))
  {
    return 0;
  }

  v27 = type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  v28 = sub_100003C48(v27[12]);
  if ((sub_10082A328(v28, v29) & 1) == 0)
  {
    return 0;
  }

  v30 = sub_100003C48(v27[13]);
  if ((sub_10082A328(v30, v31) & 1) == 0)
  {
    return 0;
  }

  v32 = sub_100003C48(v27[14]);
  if ((sub_10048F310(v32, v33) & 1) == 0)
  {
    return 0;
  }

  sub_100003C48(v27[15]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100003C48(v27[16]);

  return static Date.== infix(_:_:)();
}

uint64_t sub_1006278DC(double a1)
{
  v2 = round(a1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = v2;
  v4 = static UVIndex.ExposureCategory.allCases.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      if (UVIndex.ExposureCategory.rangeValue.getter() <= v3 && v7 >= v3)
      {

        goto LABEL_17;
      }

      if (v5 == ++v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_13:

  if (qword_100CA2778 != -1)
  {
LABEL_24:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000703C(v9, qword_100D90CC0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to find UV Index Category matching value=%{public}f", v12, 0xCu);
  }

LABEL_17:

  return UVIndex.init(value:category:)();
}

unint64_t sub_100627AB4()
{
  result = qword_100CCCF68;
  if (!qword_100CCCF68)
  {
    v3 = type metadata accessor for HistoricalFact.Condition();
    result = swift_getWitnessTable(&protocol conformance descriptor for HistoricalFact.Condition, v3, v0, v1);
    atomic_store(result, &qword_100CCCF68);
  }

  return result;
}

void sub_100627B0C(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalFactsCategory(0);
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v69 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_10022C350(&qword_100CCCF70, &qword_100A6DA48);
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v66 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v65 = (&v57 - v7);
  v8 = sub_10022C350(&qword_100CCCF78, &qword_100A6DA50);
  __chkstk_darwin(v8 - 8);
  v10 = &v57 - v9;
  v11 = sub_10022C350(&qword_100CCCF80, &qword_100A6DA58);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v64 = &v57 - v13;
  v14 = type metadata accessor for HistoricalFact();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v76 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  v75 = *(a1 + 16);
  if (v75)
  {
    v20 = 0;
    v22 = *(v15 + 16);
    v21 = v15 + 16;
    v82 = v22;
    v62 = *(v21 + 64);
    v72 = (v62 + 32) & ~v62;
    v73 = a1 + v72;
    v81 = *(v21 + 56);
    v70 = (v21 + 16);
    v60 = (v12 + 32);
    v59 = (v12 + 16);
    v58 = (v12 + 8);
    v71 = (v21 - 8);
    v23 = _swiftEmptyArrayStorage;
    v61 = xmmword_100A2C3F0;
    v78 = v11;
    v63 = v10;
    v74 = v14;
    v79 = v21;
    while (2)
    {
      v80 = v20 + 1;
      v82(v19, v73 + v81 * v20, v14);
      v24 = 0;
      v25 = v23[2];
      while (1)
      {
        if (v25 == v24)
        {
          sub_10022C350(&qword_100CCCF88, &qword_100A6DA60);
          v32 = v72;
          v33 = swift_allocObject();
          *(v33 + 16) = v61;
          v14 = v74;
          v82((v33 + v32), v19, v74);
          v83 = v33;
          sub_10022C350(&qword_100CCCF90, &qword_100A6DA68);
          sub_1006289D8();
          v34 = v63;
          NonEmpty.init(_:)();
          v35 = v78;
          if (sub_100024D10(v34, 1, v78) == 1)
          {
            sub_10003FDF4(v34, &qword_100CCCF78, &qword_100A6DA50);
            simulateCrash(_:_:)("This should always succeed.", 27, 2, _swiftEmptyArrayStorage);
          }

          else
          {
            v41 = v64;
            (*v60)(v64, v34, v35);
            v42 = HistoricalFact.heading.getter();
            v43 = *(v77 + 48);
            v44 = v65;
            *v65 = v42;
            v44[1] = v45;
            (*v59)(v44 + v43, v41, v35);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10069E6A4();
              v23 = v48;
            }

            v46 = v23[2];
            if (v46 >= v23[3] >> 1)
            {
              sub_10069E6A4();
              v23 = v49;
            }

            (*v58)(v64, v35);
            v23[2] = v46 + 1;
            sub_100628A3C(v65, v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v46);
          }

          goto LABEL_23;
        }

        v26 = (v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24);
        v27 = *v26;
        v28 = v26[1];
        if (v27 == HistoricalFact.heading.getter() && v28 == v29)
        {
          break;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v31)
        {
          goto LABEL_14;
        }

        ++v24;
      }

LABEL_14:
      v14 = v74;
      v82(v76, v19, v74);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1008FBAA0();
        v23 = v47;
      }

      if (v24 >= v23[2])
      {
        __break(1u);
        goto LABEL_34;
      }

      v36 = NonEmpty.rawElements.modify();
      v38 = v37;
      sub_10051A960();
      v39 = *(*v38 + 16);
      sub_100278A00(v39);
      v40 = *v38;
      *(v40 + 16) = v39 + 1;
      (*v70)(v40 + v72 + v39 * v81, v76, v14);
      v36(&v83, 0);
LABEL_23:
      (*v71)(v19, v14);
      v20 = v80;
      if (v80 != v75)
      {
        continue;
      }

      break;
    }

    v50 = v23[2];
    if (!v50)
    {
LABEL_30:

      return;
    }

    v83 = _swiftEmptyArrayStorage;
    sub_1006A7A04();
    v51 = 0;
    v52 = v83;
    v80 = v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v81 = v50;
    while (v51 < v23[2])
    {
      v53 = v66;
      sub_100628904(&v80[*(v4 + 72) * v51], v66);
      v54 = v53[1];
      v82 = *v53;
      type metadata accessor for WeatherDescription();
      v55 = v69;
      NonEmpty.map<A>(_:)();
      *v55 = v82;
      v55[1] = v54;

      sub_10003FDF4(v53, &qword_100CCCF70, &qword_100A6DA48);
      v83 = v52;
      v56 = v52[2];
      if (v56 >= v52[3] >> 1)
      {
        sub_1006A7A04();
        v55 = v69;
        v52 = v83;
      }

      ++v51;
      v52[2] = v56 + 1;
      sub_100628974(v55, v52 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v56);
      if (v81 == v51)
      {
        goto LABEL_30;
      }
    }

LABEL_34:
    __break(1u);
  }
}

uint64_t sub_1006283F4(uint64_t a1, unsigned int *a2)
{
  v4 = type metadata accessor for HistoricalFact.Condition();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for HistoricalFact();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v53 = &v36 - v17;
  result = HistoricalFacts.facts.getter();
  v19 = 0;
  v51 = *(result + 16);
  v46 = v13 + 16;
  v45 = *a2;
  v43 = v6 + 8;
  v44 = (v6 + 104);
  v41 = (v13 + 8);
  v48 = v13;
  v38 = (v13 + 32);
  v40 = _swiftEmptyArrayStorage;
  v47 = result;
  v42 = v11;
  while (1)
  {
    if (v51 == v19)
    {

      sub_100627B0C(v40);
      v35 = v34;

      return v35;
    }

    if (v19 >= *(result + 16))
    {
      break;
    }

    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v20 = *(v48 + 72);
    v52 = v19;
    v49 = v20;
    (*(v48 + 16))(v53, result + v50 + v20 * v19, v11);
    HistoricalFact.condition.getter();
    (*v44)(v9, v45, v4);
    sub_100627AB4();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v56 == v54 && v57 == v55)
    {
      v25 = sub_10001F31C();
      v11(v25);
      v26 = sub_1000105E4();
      v11(v26);

LABEL_11:
      v27 = *v38;
      v11 = v42;
      (*v38)(v39, v53, v42);
      v28 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v28;
      v58 = v28;
      v37 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1006A7A5C();
        v30 = v58;
      }

      v4 = v2;
      v31 = v52;
      v32 = v50;
      v33 = v30[2];
      if (v33 >= v30[3] >> 1)
      {
        sub_1006A7A5C();
        v31 = v52;
        v30 = v58;
      }

      v19 = v31 + 1;
      v30[2] = v33 + 1;
      v40 = v30;
      v37(v30 + v32 + v33 * v49, v39, v11);
      result = v47;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23 = sub_10001F31C();
      v11(v23);
      v24 = sub_1000105E4();
      v11(v24);

      if (v22)
      {
        goto LABEL_11;
      }

      v11 = v42;
      (*v41)(v53, v42);
      v19 = v52 + 1;
      v4 = v2;
      result = v47;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100628830(uint64_t a1, double a2)
{
  v3 = type metadata accessor for HistoricalFact();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return WeatherDescription.init(historicalFact:)();
}

uint64_t sub_100628904(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCCF70, &qword_100A6DA48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100628974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalFactsCategory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006289D8()
{
  result = qword_100CCCF98;
  if (!qword_100CCCF98)
  {
    v3 = sub_10022E824(&qword_100CCCF90, &qword_100A6DA68);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CCCF98);
  }

  return result;
}

uint64_t sub_100628A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCCF70, &qword_100A6DA48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100628ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  sub_100013188(a5, (v9 + 6));
  v9[11] = a6;
  v9[12] = a7;
  v9[13] = a8;
  sub_100013188(a9, (v9 + 14));
  return v9;
}

uint64_t sub_100628B24(char a1, uint64_t a2)
{
  v17 = a2;
  v4 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v10 = *(v2 + 32);
  v9 = *(v2 + 40);
  sub_100035B30(v2 + 48, v26);
  v11 = *(v2 + 88);
  v18 = *(v2 + 96);
  sub_100035B30(v2 + 112, &v28);
  v20[0] = a1;
  v12 = v17;
  v21 = v17;
  v22 = v8;
  v23 = v7;
  v24 = v10;
  v25 = v9;
  v26[5] = v11;
  v27 = v18;
  v13 = type metadata accessor for TaskPriority();
  sub_10001B350(v6, 1, 1, v13);
  sub_1003174D4(v20, v19);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a1;
  *(v14 + 40) = v12;
  memcpy((v14 + 48), v19, 0x98uLL);
  swift_bridgeObjectRetain_n();

  swift_unknownObjectRetain();
  sub_1006C0138();

  return sub_100317530(v20);
}

uint64_t sub_100628CD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 153) = a4;
  return _swift_task_switch(sub_100628CFC, 0, 0);
}

uint64_t sub_100628CFC()
{
  sub_100008188();
  v1 = v0[4];
  v2 = v1[2];
  v0[6] = v2;
  v0[7] = 0;
  if (v2)
  {
    sub_1000161C0(v1 + 4, v1[7]);
    sub_10001C878();
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v4 = sub_10001F334(v3);

    return v5(v4);
  }

  else
  {
    sub_100003B14();

    return v7();
  }
}

uint64_t sub_100628E20()
{
  sub_100003B08();
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100629064;
  }

  else
  {
    v2 = sub_100628F30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100628F30()
{
  sub_100008188();
  v1 = v0[6];
  v2 = v0[7] + 1;
  v0[7] = v2;
  if (v2 == v1)
  {
    sub_100003B14();

    return v3();
  }

  else
  {
    sub_1000161C0((v0[4] + 40 * v2 + 32), *(v0[4] + 40 * v2 + 56));
    sub_10001C878();
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v6 = sub_10001F334(v5);

    return v7(v6);
  }
}

uint64_t sub_100629064()
{
  v17 = v0;
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 153);
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    *(v0 + 152) = v5;
    v7 = String.init<A>(describing:)();
    v9 = sub_100078694(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v0 + 24) = v4;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220, &qword_100A4A330);
    v10 = String.init<A>(describing:)();
    v12 = sub_100078694(v10, v11, &v16);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "An error occurred while performing test: %s -  %s)", v6, 0x16u);
    swift_arrayDestroy();
  }

  *(v0 + 80) = objc_opt_self();
  *(v0 + 88) = type metadata accessor for MainActor();
  *(v0 + 96) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006292CC, v14, v13);
}

uint64_t sub_1006292CC()
{
  sub_100003B08();
  v1 = *(v0 + 80);

  *(v0 + 104) = [v1 sharedApplication];

  return _swift_task_switch(sub_100629350, 0, 0);
}

uint64_t sub_100629350()
{
  v1 = *(v0 + 72);
  *(v0 + 112) = sub_1004CA118(*(v0 + 153));
  *(v0 + 120) = v2;
  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_10022C350(&qword_100CD8220, &qword_100A4A330);
  *(v0 + 128) = String.init<A>(describing:)();
  *(v0 + 136) = v3;
  *(v0 + 144) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100629428, v5, v4);
}

uint64_t sub_100629428()
{
  sub_100008188();
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];

  sub_100629684(v4, v3, v2, v1, v5);

  return _swift_task_switch(sub_1006294C0, 0, 0);
}

uint64_t sub_1006294C0()
{
  sub_100003B08();

  sub_100003B14();

  return v0();
}

void *sub_100629518()
{

  sub_100006F14((v0 + 48));

  swift_unknownObjectRelease();
  sub_100006F14((v0 + 112));
  return v0;
}

uint64_t sub_100629568()
{
  sub_100629518();

  return swift_deallocClassInstance();
}

uint64_t sub_1006295C0()
{
  sub_100008188();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1004FB038;

  return sub_100628CD8(v3, v4, v5, v7, v6, v0 + 48);
}

void sub_100629684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  [a5 failedTest:v6 withFailure:v7];
}

_BYTE *storeEnumTagSinglePayload for Mica(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1006297FC(uint64_t a1, char a2)
{
  *(v2 + 57) = a2;
  v3 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  *(v2 + 16) = v3;
  *(v2 + 24) = *(v3 - 8);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 48) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006298FC, v5, v4);
}

uint64_t sub_1006298FC()
{

  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 57);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Mica instruction: %{BOOL}d", v5, 8u);
  }

  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();

  (*(v9 + 104))(v7, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v8);
  v10 = sub_1001497E4(v6, v7);
  v11 = *(v9 + 8);
  v11(v7, v8);
  v11(v6, v8);
  if (v10)
  {
    v12 = *(v0 + 57);
    v13 = [objc_opt_self() standardUserDefaults];
    *(v0 + 56) = v12;
    NSUserDefaults.set<A>(_:for:)();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100629B60()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000926F8;

  return sub_1006297FC(v3, v2);
}

uint64_t sub_100629BF4()
{
  v3 = _s10PolarModelVMa(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100005384();
  v5 = _s11NormalModelVMa(0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = sub_100022E2C();
  type metadata accessor for SunriseSunsetDetailViewModel(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_10000C790();
  sub_10062C204(v1, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v10 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    v11 = sub_100003940();
    sub_10062C5EC(v11, v12, v13);
    v14 = *(v1 + *(v3 + 44));

    sub_10001C894();
    v16 = v1;
  }

  else
  {
    v10 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    sub_10062C5EC(v0, v2, v17);
    v14 = *(v2 + 32);

    sub_10001F36C();
    v16 = v2;
  }

  sub_10062C594(v16, v15);
  sub_1000180EC(v0 + v10, &qword_100CA71A0, &unk_100A322C0);
  return v14;
}

uint64_t sub_100629D98()
{
  v3 = _s10PolarModelVMa(0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100005384();
  v5 = _s11NormalModelVMa(0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  v7 = sub_1000046F0();
  type metadata accessor for SunriseSunsetDetailViewModel(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_10000C790();
  sub_10062C204(v1, v0);
  sub_1000370B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v10 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    v11 = sub_100003940();
    sub_10062C5EC(v11, v12, v13);
    v14 = *v1;

    sub_10001C894();
    v16 = v1;
  }

  else
  {
    v10 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    v17 = sub_10001920C();
    sub_10062C5EC(v17, v18, v19);
    v14 = *v2;

    sub_10001F36C();
    v16 = v2;
  }

  sub_10062C594(v16, v15);
  sub_1000180EC(v0 + v10, &qword_100CA71A0, &unk_100A322C0);
  return v14;
}

uint64_t sub_100629F24()
{
  v3 = _s10PolarModelVMa(0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100005384();
  v5 = _s11NormalModelVMa(0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  v7 = sub_1000046F0();
  type metadata accessor for SunriseSunsetDetailViewModel(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_10000C790();
  sub_10062C204(v1, v0);
  sub_1000370B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v10 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    v11 = sub_100003940();
    sub_10062C5EC(v11, v12, v13);
    v14 = *(v1 + 16);

    sub_10001C894();
    v16 = v1;
  }

  else
  {
    v10 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    v17 = sub_10001920C();
    sub_10062C5EC(v17, v18, v19);
    v14 = *(v2 + 16);

    sub_10001F36C();
    v16 = v2;
  }

  sub_10062C594(v16, v15);
  sub_1000180EC(v0 + v10, &qword_100CA71A0, &unk_100A322C0);
  return v14;
}

void sub_10062A0B0()
{
  sub_100020DF0();
  sub_10003C698();
  sub_1000037E8();
  __chkstk_darwin(v3);
  v4 = sub_1000046F0();
  _s11NormalModelVMa(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v6 = sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100005384();
  sub_1000185F0();
  v8 = sub_100031728();
  if (v8)
  {
    if (v8 != 1)
    {
      AttributedString.init()();
      goto LABEL_7;
    }

    v9 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    v10 = sub_100004464();
    sub_10062C5EC(v10, v11, v12);
    type metadata accessor for AttributedString();
    sub_100003A9C();
    v13 = sub_10002FF8C();
    v14(v13);
    sub_10001C894();
    sub_10062C594(v1, v15);
    v16 = v0 + v9;
  }

  else
  {
    v17 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    v18 = sub_1000114B8();
    sub_10062C5EC(v18, v19, v20);
    type metadata accessor for AttributedString();
    sub_100003A9C();
    v21 = sub_1000116EC();
    v22(v21);
    sub_10001F36C();
    sub_10062C594(v2, v23);
    v16 = v0 + v17;
  }

  sub_1000180EC(v16, &qword_100CA71A0, &unk_100A322C0);
LABEL_7:
  sub_1000212EC();
}

void sub_10062A280()
{
  sub_100020DF0();
  _s10PolarModelVMa(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v5 = sub_1000046F0();
  _s11NormalModelVMa(v5);
  sub_1000037E8();
  __chkstk_darwin(v6);
  v7 = sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_10000C790();
  sub_10062C204(v1, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    v16 = sub_1000370B0();
    sub_10062C5EC(v16, v17, v18);

    sub_10001F36C();
    v15 = v3;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    v11 = sub_10001920C();
    sub_10062C5EC(v11, v12, v13);

    sub_10001C894();
    v15 = v2;
LABEL_5:
    sub_10062C594(v15, v14);
    sub_1000180EC(v0 + v10, &qword_100CA71A0, &unk_100A322C0);
  }

  sub_1000212EC();
}

void sub_10062A418()
{
  sub_100020DF0();
  sub_10003C698();
  sub_1000037E8();
  __chkstk_darwin(v3);
  v4 = sub_1000046F0();
  _s11NormalModelVMa(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v6 = sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100005384();
  sub_1000185F0();
  v8 = sub_100031728();
  if (v8)
  {
    if (v8 != 1)
    {
      static TimeZone.current.getter();
      goto LABEL_7;
    }

    v9 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    v10 = sub_100004464();
    sub_10062C5EC(v10, v11, v12);
    type metadata accessor for TimeZone();
    sub_100003A9C();
    v13 = sub_10002FF8C();
    v14(v13);
    sub_10001C894();
    sub_10062C594(v1, v15);
    v16 = v0 + v9;
  }

  else
  {
    v17 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    v18 = sub_1000114B8();
    sub_10062C5EC(v18, v19, v20);
    type metadata accessor for TimeZone();
    sub_100003A9C();
    v21 = sub_1000116EC();
    v22(v21);
    sub_10001F36C();
    sub_10062C594(v2, v23);
    v16 = v0 + v17;
  }

  sub_1000180EC(v16, &qword_100CA71A0, &unk_100A322C0);
LABEL_7:
  sub_1000212EC();
}

void sub_10062A5E8()
{
  sub_10000C778();
  v75 = v3;
  v4 = sub_10022C350(&qword_100CCD140, &unk_100A6DBF0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v71 = &v62 - v6;
  sub_1000038CC();
  v7 = type metadata accessor for Location();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v69 = v10 - v9;
  sub_1000038CC();
  v70 = type metadata accessor for SunriseSunsetChartBackground();
  sub_1000037C4();
  v68 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v67 = v14 - v13;
  sub_1000038CC();
  v15 = type metadata accessor for Date();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v64 = v18 - v17;
  sub_1000038CC();
  v74 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v66 = v19;
  __chkstk_darwin(v20);
  sub_100003C38();
  v63 = v21 - v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  v72 = &v62 - v24;
  sub_1000038CC();
  v73 = type metadata accessor for DetailChartDataElement.ValueLabel();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100003C38();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = (&v62 - v32);
  v34 = _s10PolarModelVMa(0);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000037D8();
  v36 = sub_100022E2C();
  v37 = _s11NormalModelVMa(v36);
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_1000037D8();
  sub_10000C790();
  type metadata accessor for SunriseSunsetDetailViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_1000037D8();
  v42 = v41 - v40;
  v65 = v1;
  sub_10062C204(v1, v41 - v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      *v33 = 0;
      v33[1] = 0xE000000000000000;
      v62 = v26;
      v55 = v73;
      (*(v26 + 104))(v33, enum case for DetailChartDataElement.ValueLabel.text(_:), v73);
      static WeatherClock.date.getter();
      (*(v26 + 16))(v30, v33, v55);
      v56 = v72;
      DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
      Gradient.init(stops:)();
      v57 = v67;
      SunriseSunsetChartBackground.init(gradient:opacity:)();
      v58 = v66;
      (*(v66 + 16))(v63, v56, v74);
      sub_10062ABDC();
      static WeatherClock.date.getter();
      v59 = v68;
      v61 = v70;
      v60 = v71;
      (*(v68 + 16))(v71, v57, v70);
      sub_10001B350(v60, 0, 1, v61);
      SunriseSunsetDetailChartViewModel.init(chartData:sunLocation:location:twilightCivil:twilightNautical:twilightAstronomical:startDate:sunEventAccessibilityModels:chartBackground:)();
      (*(v59 + 8))(v57, v61);
      (*(v58 + 8))(v72, v74);
      (*(v62 + 8))(v33, v73);
      goto LABEL_7;
    }

    v44 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    sub_10062C5EC(v42, v2, v45);
    v46 = *(v34 + 48);
    type metadata accessor for SunriseSunsetDetailChartViewModel();
    sub_100003A9C();
    (*(v47 + 16))(v75, v2 + v46);
    sub_10001C894();
    sub_10062C594(v2, v48);
    v49 = v42 + v44;
  }

  else
  {
    v50 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    sub_10062C5EC(v42, v0, v51);
    v52 = *(v37 + 52);
    type metadata accessor for SunriseSunsetDetailChartViewModel();
    sub_100003A9C();
    (*(v53 + 16))(v75, v0 + v52);
    sub_10001F36C();
    sub_10062C594(v0, v54);
    v49 = v42 + v50;
  }

  sub_1000180EC(v49, &qword_100CA71A0, &unk_100A322C0);
LABEL_7:
  sub_10000536C();
}

void sub_10062ABDC()
{
  sub_100020DF0();
  sub_10003C698();
  sub_1000037E8();
  __chkstk_darwin(v3);
  v4 = sub_1000046F0();
  _s11NormalModelVMa(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v6 = sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100005384();
  sub_1000185F0();
  v8 = sub_100031728();
  if (v8)
  {
    if (v8 != 1)
    {
      static Location.current.getter();
      goto LABEL_7;
    }

    v9 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    v10 = sub_100004464();
    sub_10062C5EC(v10, v11, v12);
    type metadata accessor for Location();
    sub_100003A9C();
    v13 = sub_10002FF8C();
    v14(v13);
    sub_10001C894();
    sub_10062C594(v1, v15);
    v16 = v0 + v9;
  }

  else
  {
    v17 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    v18 = sub_1000114B8();
    sub_10062C5EC(v18, v19, v20);
    type metadata accessor for Location();
    sub_100003A9C();
    v21 = sub_1000116EC();
    v22(v21);
    sub_10001F36C();
    sub_10062C594(v2, v23);
    v16 = v0 + v17;
  }

  sub_1000180EC(v16, &qword_100CA71A0, &unk_100A322C0);
LABEL_7:
  sub_1000212EC();
}

void sub_10062ADAC()
{
  sub_100020DF0();
  sub_10003C698();
  sub_1000037E8();
  __chkstk_darwin(v3);
  v4 = sub_1000046F0();
  _s11NormalModelVMa(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v6 = sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100005384();
  sub_1000185F0();
  v8 = sub_100031728();
  if (v8)
  {
    if (v8 != 1)
    {
      OverviewTableViewModel.init(rows:)();
      goto LABEL_7;
    }

    v9 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    v10 = sub_100004464();
    sub_10062C5EC(v10, v11, v12);
    type metadata accessor for OverviewTableViewModel();
    sub_100003A9C();
    v13 = sub_10002FF8C();
    v14(v13);
    sub_10001C894();
    sub_10062C594(v1, v15);
    v16 = v0 + v9;
  }

  else
  {
    v17 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    v18 = sub_1000114B8();
    sub_10062C5EC(v18, v19, v20);
    type metadata accessor for OverviewTableViewModel();
    sub_100003A9C();
    v21 = sub_1000116EC();
    v22(v21);
    sub_10001F36C();
    sub_10062C594(v2, v23);
    v16 = v0 + v17;
  }

  sub_1000180EC(v16, &qword_100CA71A0, &unk_100A322C0);
LABEL_7:
  sub_1000212EC();
}

uint64_t sub_10062AF84@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SunriseSunsetDetailViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  sub_10062C204(v1, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v7 = sub_10022C350(&qword_100CCD138, &qword_100A886E0);
    sub_10062C268(v1 + *(v7 + 48), a1);
    v6 = _s11NormalModelVMa;
    return sub_10062C594(v1, v6);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = sub_10022C350(&qword_100CCD130, &unk_100A6DBE0);
    sub_10062C268(v1 + *(v5 + 48), a1);
    v6 = _s10PolarModelVMa;
    return sub_10062C594(v1, v6);
  }

  v9 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  return sub_1000061CC(v9);
}

void sub_10062B094()
{
  sub_100020DF0();
  v4 = sub_10003C698();
  sub_1000037E8();
  __chkstk_darwin(v5);
  v6 = sub_1000046F0();
  v7 = _s11NormalModelVMa(v6);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v9 = sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_100005384();
  sub_1000185F0();
  v11 = sub_100031728();
  if (v11)
  {
    if (v11 != 1)
    {
      v23 = type metadata accessor for DetailComponentContainerViewModel(0);
      sub_1000061CC(v23);
      goto LABEL_7;
    }

    v12 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    v13 = sub_100004464();
    sub_10062C5EC(v13, v14, v15);
    sub_10062C644(v2 + *(v4 + 64), v0, &qword_100CA7188, &qword_100A35360);
    sub_10001C894();
    sub_10062C594(v2, v16);
    v17 = v1 + v12;
  }

  else
  {
    v18 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    v19 = sub_1000114B8();
    sub_10062C5EC(v19, v20, v21);
    sub_10062C644(v3 + *(v7 + 72), v0, &qword_100CA7188, &qword_100A35360);
    sub_10001F36C();
    sub_10062C594(v3, v22);
    v17 = v1 + v18;
  }

  sub_1000180EC(v17, &qword_100CA71A0, &unk_100A322C0);
LABEL_7:
  sub_1000212EC();
}

uint64_t sub_10062B248(uint64_t a1, double a2)
{
  v54 = a1;
  type metadata accessor for Date();
  sub_1000037C4();
  v52 = v5;
  v53 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v51 = v7 - v6;
  v8 = sub_10022C350(&qword_100CCD148, &unk_100A6DC00);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  v11 = &v50 - v10;
  v12 = _s11NormalModelVMa(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v50 = v15 - v14;
  sub_1000038CC();
  type metadata accessor for DayPhase();
  sub_1000037C4();
  v55 = v17;
  v56 = v16;
  __chkstk_darwin(v16);
  sub_100005384();
  v18 = type metadata accessor for PolarType();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_10000C790();
  v22 = _s10PolarModelVMa(0);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  type metadata accessor for SunriseSunsetDetailViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  sub_10062C204(v57, v29 - v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v39 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    v40 = v50;
    sub_10062C5EC(v30, v50, v41);
    v42 = *(v12 + 60);
    v43 = type metadata accessor for SunEvents();
    sub_1000037E8();
    (*(v44 + 16))(v11, v40 + v42, v43);
    sub_10001B350(v11, 0, 1, v43);
    (*(v52 + 16))(v51, v54, v53);
    v33 = v39;
    DayPhase.init(sunEvents:date:elevation:)();
    v32 = DayPhase.uppercaseDescription.getter();
    (*(v55 + 8))(v3, v56);
    sub_10001F36C();
    v46 = v40;
LABEL_9:
    sub_10062C594(v46, v45);
    sub_1000180EC(v30 + v33, &qword_100CA71A0, &unk_100A322C0);
    return v32;
  }

  v32 = 0;
  if (EnumCaseMultiPayload != 1)
  {
    return v32;
  }

  v33 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
  sub_1000063A8();
  sub_10062C5EC(v30, v26, v34);
  (*(v20 + 16))(v2, v26 + *(v22 + 24), v18);
  v35 = sub_1000370B0();
  v37 = v36(v35);
  if (v37 == enum case for PolarType.day(_:))
  {
    v38 = &enum case for DayPhase.day(_:);
LABEL_8:
    v48 = v55;
    v47 = v56;
    (*(v55 + 104))(v3, *v38, v56);
    v32 = DayPhase.uppercaseDescription.getter();
    (*(v48 + 8))(v3, v47);
    sub_10001C894();
    v46 = v26;
    goto LABEL_9;
  }

  if (v37 == enum case for PolarType.night(_:))
  {
    v38 = &enum case for DayPhase.night(_:);
    goto LABEL_8;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10062B6E4()
{
  sub_10000C778();
  v27 = v2;
  _s11NormalModelVMa(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v11 = sub_100019C00();
  _s10PolarModelVMa(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  type metadata accessor for SunriseSunsetDetailViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  sub_10062C204(v0, v18 - v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v26 = type metadata accessor for AttributedString();
      sub_10001B350(v27, 1, 1, v26);
      goto LABEL_7;
    }

    v21 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    sub_10062C5EC(v19, v15, v22);
    sub_10062A418();
    DaylightStringBuilder.makeLollipopPolarDaylightString(for:location:timeZone:)();
    (*(v9 + 8))(v1, v7);
    sub_10001C894();
    v24 = v15;
  }

  else
  {
    v21 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    sub_10062C5EC(v19, v6, v25);
    sub_10062A418();
    DaylightStringBuilder.makeLollipopDaylightString(for:location:sunEvents:timeZone:)();
    (*(v9 + 8))(v1, v7);
    sub_10001F36C();
    v24 = v6;
  }

  sub_10062C594(v24, v23);
  sub_1000180EC(v19 + v21, &qword_100CA71A0, &unk_100A322C0);
LABEL_7:
  sub_10000536C();
}

void sub_10062B964()
{
  sub_10000C778();
  v108 = v2;
  v109 = v3;
  v4 = _s10PolarModelVMa(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v106 = (v7 - v6);
  v8 = sub_1000038CC();
  v104 = type metadata accessor for ConditionDetailPlatterViewModel(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v100 = (v11 - v10);
  v103 = sub_10022C350(&qword_100CAA960, &qword_100A6DBD0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_100003C38();
  v102 = v13 - v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  v17 = &v100 - v16;
  v18 = sub_10022C350(&qword_100CA71A0, &unk_100A322C0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_100003C38();
  v101 = (v20 - v21);
  sub_10000386C();
  __chkstk_darwin(v22);
  v105 = &v100 - v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  v107 = &v100 - v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  v28 = (&v100 - v27);
  __chkstk_darwin(v29);
  v31 = &v100 - v30;
  __chkstk_darwin(v32);
  v34 = &v100 - v33;
  v35 = _s11NormalModelVMa(0);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  v37 = sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel(v37);
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_100003C38();
  v41 = (v39 - v40);
  __chkstk_darwin(v42);
  v44 = (&v100 - v43);
  v45 = sub_10022C350(&qword_100CCD128, &qword_100A6DBD8);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_10000C790();
  v48 = v0 + *(v47 + 56);
  sub_10062C204(v108, v0);
  sub_10062C204(v109, v48);
  sub_10001920C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v109 = v31;
    v67 = v28;
    sub_10062C204(v0, v44);
    v68 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_100005474();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000105F8();
      v51 = v1;
      sub_10062C5EC(v48, v1, v71);
      sub_10062C268(v44 + v68, v34);
      v72 = v48 + v68;
      v73 = v109;
      sub_10062C268(v72, v109);
      v74 = sub_1008226B4(v44, v1);
      sub_10001F36C();
      sub_10062C594(v44, v75);
      if (v74)
      {
        v76 = *(v103 + 48);
        v57 = v17;
        sub_10062C644(v34, v17, &qword_100CA71A0, &unk_100A322C0);
        v77 = v76;
        sub_10062C644(v73, v57 + v76, &qword_100CA71A0, &unk_100A322C0);
        v78 = v104;
        if (sub_100024D10(v57, 1, v104) == 1)
        {
          sub_1000180EC(v73, &qword_100CA71A0, &unk_100A322C0);
          sub_100051F5C();
          sub_10001F36C();
          sub_10062C594(v1, v79);
          v65 = v57 + v77;
          v66 = v78;
LABEL_17:
          if (sub_100024D10(v65, 1, v66) == 1)
          {
            sub_1000180EC(v57, &qword_100CA71A0, &unk_100A322C0);
LABEL_28:
            sub_100014B74();
            sub_10062C594(v0, v90);
            goto LABEL_29;
          }

LABEL_27:
          sub_1000180EC(v57, &qword_100CAA960, &qword_100A6DBD0);
          goto LABEL_28;
        }

        sub_10062C644(v57, v67, &qword_100CA71A0, &unk_100A322C0);
        if (sub_100024D10(v57 + v77, 1, v78) != 1)
        {
          sub_100013A60();
          v97 = v100;
          sub_10062C5EC(v57 + v77, v100, v98);
          sub_100954420(v67, v97);
          sub_10062C594(v97, type metadata accessor for ConditionDetailPlatterViewModel);
          sub_1000180EC(v109, &qword_100CA71A0, &unk_100A322C0);
          sub_1000180EC(v34, &qword_100CA71A0, &unk_100A322C0);
          sub_10001F36C();
          sub_10062C594(v1, v99);
          sub_10062C594(v67, type metadata accessor for ConditionDetailPlatterViewModel);
          sub_1000180EC(v57, &qword_100CA71A0, &unk_100A322C0);
          goto LABEL_28;
        }

        sub_1000180EC(v109, &qword_100CA71A0, &unk_100A322C0);
        sub_100051F5C();
        sub_10001F36C();
        sub_10062C594(v1, v89);
        sub_100069784();
        v88 = v67;
LABEL_26:
        sub_10062C594(v88, v87);
        goto LABEL_27;
      }

      sub_1000180EC(v73, &qword_100CA71A0, &unk_100A322C0);
      sub_100051F5C();
      v82 = _s11NormalModelVMa;
LABEL_21:
      sub_10062C594(v51, v82);
      goto LABEL_28;
    }

    sub_1000180EC(v44 + v68, &qword_100CA71A0, &unk_100A322C0);
    sub_10001F36C();
    v70 = v44;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10062C204(v0, v41);
    v50 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_100005474();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000063A8();
      v51 = v106;
      sub_10062C5EC(v48, v106, v52);
      v53 = v107;
      sub_10062C268(v41 + v50, v107);
      v54 = v105;
      sub_10062C268(v48 + v50, v105);
      v55 = sub_10066D5D8(v41, v51);
      sub_10001C894();
      sub_10062C594(v41, v56);
      if (v55)
      {
        v57 = v102;
        v58 = *(v103 + 48);
        sub_10062C644(v53, v102, &qword_100CA71A0, &unk_100A322C0);
        sub_10062C644(v54, v57 + v58, &qword_100CA71A0, &unk_100A322C0);
        v59 = v104;
        if (sub_100024D10(v57, 1, v104) == 1)
        {
          v60 = sub_100004464();
          sub_1000180EC(v60, v61, &unk_100A322C0);
          v62 = sub_100005474();
          sub_1000180EC(v62, v63, &unk_100A322C0);
          sub_10001C894();
          sub_10062C594(v51, v64);
          v65 = v57 + v58;
          v66 = v59;
          goto LABEL_17;
        }

        v83 = v101;
        sub_10062C644(v57, v101, &qword_100CA71A0, &unk_100A322C0);
        if (sub_100024D10(v57 + v58, 1, v59) != 1)
        {
          sub_100013A60();
          v91 = v57 + v58;
          v92 = v100;
          sub_10062C5EC(v91, v100, v93);
          sub_100954420(v83, v92);
          sub_10062C594(v92, type metadata accessor for ConditionDetailPlatterViewModel);
          v94 = sub_1000114B8();
          sub_1000180EC(v94, v95, &unk_100A322C0);
          sub_1000180EC(v107, &qword_100CA71A0, &unk_100A322C0);
          sub_10001C894();
          sub_10062C594(v51, v96);
          sub_10062C594(v83, type metadata accessor for ConditionDetailPlatterViewModel);
          sub_1000180EC(v57, &qword_100CA71A0, &unk_100A322C0);
          goto LABEL_28;
        }

        v84 = sub_100004464();
        sub_1000180EC(v84, v85, &unk_100A322C0);
        sub_1000180EC(v107, &qword_100CA71A0, &unk_100A322C0);
        sub_10001C894();
        sub_10062C594(v51, v86);
        sub_100069784();
        v88 = v83;
        goto LABEL_26;
      }

      v80 = sub_100004464();
      sub_1000180EC(v80, v81, &unk_100A322C0);
      sub_1000180EC(v53, &qword_100CA71A0, &unk_100A322C0);
      v82 = _s10PolarModelVMa;
      goto LABEL_21;
    }

    sub_1000180EC(v41 + v50, &qword_100CA71A0, &unk_100A322C0);
    sub_10001C894();
    v70 = v41;
LABEL_12:
    sub_10062C594(v70, v69);
    goto LABEL_13;
  }

  sub_100005474();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    goto LABEL_28;
  }

LABEL_13:
  sub_1000180EC(v0, &qword_100CCD128, &qword_100A6DBD8);
LABEL_29:
  sub_10000536C();
}

uint64_t sub_10062C204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetDetailViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062C268(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA71A0, &unk_100A322C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10062C2D8()
{
  sub_10000C778();
  v3 = v2;
  v5 = v4;
  v6 = _s10PolarModelVMa(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v8 = sub_100022E2C();
  v9 = _s11NormalModelVMa(v8);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for SunriseSunsetDetailViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_100005384();
  v15 = enum case for DetailType.sunriseSunset(_:);
  type metadata accessor for DetailType();
  sub_100003A9C();
  (*(v16 + 104))(v5, v15);
  v17 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  v18 = *(v17 + 20);
  sub_10062C204(v3, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      static Location.current.getter();
      sub_100014B74();
      sub_10062C594(v3, v33);
      goto LABEL_7;
    }

    sub_100014B74();
    sub_10062C594(v3, v20);
    v21 = *(sub_10022C350(&qword_100CCD130, &unk_100A6DBE0) + 48);
    sub_1000063A8();
    sub_10062C5EC(v0, v1, v22);
    v23 = *(v6 + 52);
    type metadata accessor for Location();
    sub_100003A9C();
    (*(v24 + 16))(v5 + v18, v1 + v23);
    sub_10001C894();
    sub_10062C594(v1, v25);
    v26 = v0 + v21;
  }

  else
  {
    sub_100014B74();
    sub_10062C594(v3, v27);
    v28 = *(sub_10022C350(&qword_100CCD138, &qword_100A886E0) + 48);
    sub_1000105F8();
    sub_10062C5EC(v0, v13, v29);
    v30 = *(v9 + 56);
    type metadata accessor for Location();
    sub_100003A9C();
    (*(v31 + 16))(v5 + v18, v13 + v30);
    sub_10001F36C();
    sub_10062C594(v13, v32);
    v26 = v0 + v28;
  }

  sub_1000180EC(v26, &qword_100CA71A0, &unk_100A322C0);
LABEL_7:
  v34 = *(v17 + 24);
  v35 = enum case for DetailViewOrigin.component(_:);
  type metadata accessor for DetailViewOrigin();
  sub_100003A9C();
  (*(v36 + 104))(v5 + v34, v35);
  sub_10000536C();
}

uint64_t sub_10062C594(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10062C5EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10062C644(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10022C350(a3, a4);
  sub_100003A9C();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

void sub_10062C69C()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v20 = type metadata accessor for MapsConfiguration();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  *&v21[0] = v3;
  sub_100035B30(v1, v21 + 8);
  sub_1000161C0(v1, v1[3]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.maps.getter();
  (*(v14 + 8))(v18, v12);
  LOBYTE(v3) = MapsConfiguration.enableExitOvlInfo.getter();
  (*(v7 + 8))(v11, v20);
  v22 = v3 & 1;
  *(v5 + 48) = v3 & 1;
  v19 = v21[1];
  *v5 = v21[0];
  *(v5 + 16) = v19;
  *(v5 + 32) = v21[2];
  sub_100006F14(v1);
  sub_10000536C();
}

void sub_10062C84C()
{
  sub_10000C778();
  v29 = v0;
  v30 = type metadata accessor for ViewData();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100013A78();
  v28 = v4;
  sub_1000038CC();
  v27 = type metadata accessor for ViewAction();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v26 = type metadata accessor for ViewType();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = type metadata accessor for UUID();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v19 + 8))(v23, v17);
  (*(v12 + 104))(v16, enum case for ViewType.map(_:), v26);
  (*(v6 + 104))(v10, enum case for ViewAction.unknown(_:), v27);
  ViewData.init(viewSessionID:viewType:viewAction:)();
  (*(v2 + 16))(v28, v29, v30);
  v24 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v25 = swift_allocObject();
  (*(v2 + 32))(v25 + v24, v28, v30);
  Tracker.transaction(block:)();

  sub_10000536C();
}

uint64_t sub_10062CB40(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewData();
  sub_10062EB2C(&qword_100CB3EE0, &type metadata accessor for ViewData, &protocol conformance descriptor for ViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapViewEvent();
  sub_10062EB2C(&qword_100CCD210, &type metadata accessor for MapViewEvent, &protocol conformance descriptor for MapViewEvent);
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

void sub_10062CC34()
{
  sub_10000C778();
  v67 = v1;
  sub_100017580();
  v68 = type metadata accessor for ZoomData();
  sub_1000037C4();
  v66 = v2;
  v69 = *(v3 + 64);
  __chkstk_darwin(v4);
  sub_10000FBD0();
  v73 = v5;
  __chkstk_darwin(v6);
  sub_10000E70C();
  v71 = v7;
  sub_1000038CC();
  v65 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v63 = v8;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v61 = v11 - v10;
  sub_1000038CC();
  v12 = type metadata accessor for MapOverlay();
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_1000037D8();
  v64 = type metadata accessor for MapOverlayData();
  sub_1000037C4();
  v62 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v72 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  sub_10000E70C();
  v70 = v19;
  sub_1000038CC();
  v20 = type metadata accessor for EmbedState();
  sub_1000037C4();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  v59 = type metadata accessor for MapEmbedStateData();
  sub_1000037C4();
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  v57 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.n128_f64[0] = __chkstk_darwin(v32);
  v35 = &v56 - v34;
  v36 = &enum case for EmbedState.fullScreen(_:);
  if (!*v0)
  {
    v36 = &enum case for EmbedState.pinned(_:);
  }

  (*(v22 + 104))(v26, *v36, v20, v33);
  v37 = v35;
  v60 = v35;
  MapEmbedStateData.init(embedState:)();
  v38 = type metadata accessor for InteractiveMapViewEvent(0);
  (*(v63 + 16))(v61, &v0[*(v38 + 20)], v65);
  sub_10062D170();
  v39 = v70;
  MapOverlayData.init(overlay:)();
  v40 = v71;
  ZoomData.init(level:)();
  v67 = *v67;
  v41 = v28;
  v42 = *(v28 + 16);
  v43 = v59;
  v42(&v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v59);
  v44 = v62;
  v45 = v39;
  v46 = v64;
  (*(v62 + 16))(v72, v45, v64);
  v47 = v66;
  v48 = v40;
  v49 = v68;
  (*(v66 + 16))(v73, v48, v68);
  v50 = *(v41 + 80);
  v51 = v41;
  v58 = v41;
  v52 = (v50 + 16) & ~v50;
  v53 = (v30 + *(v44 + 80) + v52) & ~*(v44 + 80);
  v54 = (v16 + *(v47 + 80) + v53) & ~*(v47 + 80);
  v55 = swift_allocObject();
  (*(v51 + 32))(v55 + v52, v57, v43);
  (*(v44 + 32))(v55 + v53, v72, v46);
  (*(v47 + 32))(v55 + v54, v73, v49);
  Tracker.transaction(block:)();

  (*(v47 + 8))(v71, v49);
  (*(v44 + 8))(v70, v46);
  (*(v58 + 8))(v60, v43);
  sub_10000536C();
}

void sub_10062D170()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Logger();
  sub_1000037C4();
  v53 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v48 - v18;
  v20 = *(v12 + 16);
  v20(&v48 - v18, v1, v10, v17);
  v21 = (*(v12 + 88))(v19, v10);
  if (v21 == enum case for WeatherMapOverlayKind.precipitation(_:))
  {
    v22 = *(v12 + 8);
    v23 = sub_100003A80();
    v22(v23);
    v24 = enum case for MapOverlay.precipitation(_:);
    type metadata accessor for MapOverlay();
    sub_1000037E8();
    (*(v25 + 104))(v3, v24);
    (v22)(v19, v10);
    goto LABEL_10;
  }

  if (v21 == enum case for WeatherMapOverlayKind.airQuality(_:))
  {
    v26 = sub_100003A80();
    v27(v26);
    v28 = &enum case for MapOverlay.airQuality(_:);
LABEL_9:
    v33 = *v28;
    type metadata accessor for MapOverlay();
    sub_1000037E8();
    (*(v34 + 104))(v3, v33);
    goto LABEL_10;
  }

  if (v21 == enum case for WeatherMapOverlayKind.temperature(_:))
  {
    v29 = sub_100003A80();
    v30(v29);
    v28 = &enum case for MapOverlay.temperature(_:);
    goto LABEL_9;
  }

  if (v21 == LODWORD(enum case for WeatherMapOverlayKind.wind(_:)[0]))
  {
    v31 = sub_100003A80();
    v32(v31);
    v28 = &enum case for MapOverlay.wind(_:);
    goto LABEL_9;
  }

  static Logger.map.getter();
  (v20)(v15, v1, v10);
  v35 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v52))
  {
    v20 = swift_slowAlloc();
    v51 = v20;
    v50 = swift_slowAlloc();
    v54 = v50;
    *v20 = 136446210;
    sub_10000470C();
    sub_10062EB2C(v36, v37, &protocol conformance descriptor for WeatherMapOverlayKind);
    v49 = v35;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    sub_100017B94();
    (v20)(v15, v10);
    v40 = sub_100078694(v48, v39, &v54);

    v41 = v51;
    *(v51 + 4) = v40;
    v42 = v49;
    _os_log_impl(&_mh_execute_header, v49, v52, "Map overlay kind unknown to InteractiveMapTracker: %{public}s", v41, 0xCu);
    v43 = v50;
    sub_100006F14(v50);
    sub_100003884(v43);
    sub_100003884(v51);

    v44 = v1;
  }

  else
  {

    sub_100017B94();
    v45 = sub_100003A80();
    (v20)(v45);
    v44 = v15;
  }

  (v20)(v44, v10);
  (*(v53 + 8))(v9, v4);
  v46 = enum case for MapOverlay.precipitation(_:);
  type metadata accessor for MapOverlay();
  sub_1000037E8();
  (*(v47 + 104))(v3, v46);
  (v20)(v19, v10);
LABEL_10:
  sub_10000536C();
}

uint64_t sub_10062D60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapEmbedStateData();
  sub_10062EB2C(&qword_100CCD218, &type metadata accessor for MapEmbedStateData, &protocol conformance descriptor for MapEmbedStateData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapOverlayData();
  sub_10062EB2C(&qword_100CCD158, &type metadata accessor for MapOverlayData, &protocol conformance descriptor for MapOverlayData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for ZoomData();
  sub_10062EB2C(&qword_100CCD220, &type metadata accessor for ZoomData, &protocol conformance descriptor for ZoomData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapViewEvent();
  sub_10062EB2C(&qword_100CCD210, &type metadata accessor for MapViewEvent, &protocol conformance descriptor for MapViewEvent);
  memset(v5, 0, sizeof(v5));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_1003C1574(v5);
}

void sub_10062D808()
{
  sub_10000C778();
  v141 = v0;
  v122 = v1;
  v3 = v2;
  v4 = type metadata accessor for ViewData();
  sub_1000037C4();
  v126 = v5;
  __chkstk_darwin(v6);
  sub_100013A78();
  v124 = v8;
  v125 = v7;
  sub_1000038CC();
  v127 = type metadata accessor for MapStallStatisticsData();
  sub_1000037C4();
  v139 = v9;
  __chkstk_darwin(v10);
  sub_10000FBD0();
  v137 = v11;
  v123 = v12;
  __chkstk_darwin(v13);
  sub_10000E70C();
  v138 = v14;
  sub_1000038CC();
  v118 = type metadata accessor for WeatherMapSessionStatistics.Timing();
  sub_1000037C4();
  v117 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v116 = v18 - v17;
  sub_1000038CC();
  v115 = type metadata accessor for WeatherMapSessionStatistics.ResponseCounters();
  sub_1000037C4();
  v114 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v112 = v22 - v21;
  sub_1000038CC();
  v136 = type metadata accessor for MapSessionStatisticsData();
  sub_1000037C4();
  v121 = v23;
  __chkstk_darwin(v24);
  sub_10000FBD0();
  v134 = v25;
  v119 = v26;
  __chkstk_darwin(v27);
  sub_10000E70C();
  v135 = v28;
  sub_1000038CC();
  v130 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v111 = v29;
  __chkstk_darwin(v30);
  sub_1000037D8();
  v110 = v32 - v31;
  sub_1000038CC();
  v33 = type metadata accessor for MapOverlay();
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  sub_1000037D8();
  v109 = v36 - v35;
  sub_1000038CC();
  v133 = type metadata accessor for MapOverlayData();
  sub_1000037C4();
  v120 = v37;
  __chkstk_darwin(v38);
  sub_10000FBD0();
  v132 = v39;
  v113 = v40;
  __chkstk_darwin(v41);
  sub_10000E70C();
  v140 = v42;
  v43 = sub_1000038CC();
  v44 = type metadata accessor for WeatherMapExitOverlayEvent(v43);
  sub_1000037E8();
  __chkstk_darwin(v45);
  v47 = &v101[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v48);
  v50 = &v101[-v49];
  __chkstk_darwin(v51);
  v53 = &v101[-v52];
  type metadata accessor for Logger();
  sub_1000037C4();
  v128 = v55;
  v129 = v54;
  __chkstk_darwin(v54);
  sub_1000037D8();
  v58 = v57 - v56;
  v59 = type metadata accessor for WeatherMapSessionStatistics.RequestCounters();
  sub_1000037C4();
  v61 = v60;
  __chkstk_darwin(v62);
  sub_1000037D8();
  v65 = v64 - v63;
  v131 = v44;
  v108 = v3 + *(v44 + 20);
  WeatherMapSessionStatistics.requestCounters.getter();
  v66 = WeatherMapSessionStatistics.RequestCounters.requests.getter();
  v67 = *(v61 + 8);
  v107 = v59;
  v106 = v67;
  v67(v65, v59);
  if (v66)
  {
    v105 = v4;
    static Logger.mapNetwork.getter();
    sub_10062E388(v3, v53);
    sub_10062E388(v3, v50);
    v68 = sub_100003A80();
    sub_10062E388(v68, v69);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    v72 = os_log_type_enabled(v70, v71);
    v104 = v3;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v142 = v103;
      *v73 = 136315650;
      sub_10000470C();
      sub_10062EB2C(v74, v75, &protocol conformance descriptor for WeatherMapOverlayKind);
      v102 = v71;
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10062E3EC(v53);
      v76 = sub_100074D08();

      *(v73 + 4) = v76;
      *(v73 + 12) = 2080;
      WeatherMapSessionStatistics.description()();
      sub_10062E3EC(v50);
      v77 = sub_100074D08();

      *(v73 + 14) = v77;
      *(v73 + 22) = 2080;
      WeatherMapStallStatistics.description()();
      sub_10062E3EC(v47);
      v78 = sub_100074D08();

      *(v73 + 24) = v78;
      _os_log_impl(&_mh_execute_header, v70, v102, "Session stats: Removing overlay %s\n%s\n%s", v73, 0x20u);
      v79 = v103;
      swift_arrayDestroy();
      sub_100003884(v79);
      sub_100003884(v73);
    }

    else
    {

      sub_10062E3EC(v47);
      sub_10062E3EC(v50);
      sub_10062E3EC(v53);
    }

    (*(v128 + 8))(v58, v129);
    if (*(v141 + 48) == 1)
    {
      (*(v111 + 16))(v110, v104, v130);
      sub_10062D170();
      MapOverlayData.init(overlay:)();
      WeatherMapSessionStatistics.requestCounters.getter();
      v130 = WeatherMapSessionStatistics.RequestCounters.requests.getter();
      v106(v65, v107);
      v80 = v112;
      WeatherMapSessionStatistics.responseCounters.getter();
      WeatherMapSessionStatistics.ResponseCounters.success.getter();
      v81 = *(v114 + 8);
      v82 = v115;
      v81(v80, v115);
      WeatherMapSessionStatistics.responseCounters.getter();
      WeatherMapSessionStatistics.ResponseCounters.cancelled.getter();
      v81(v80, v82);
      WeatherMapSessionStatistics.responseCounters.getter();
      WeatherMapSessionStatistics.ResponseCounters.error.getter();
      v81(v80, v82);
      v83 = v116;
      WeatherMapSessionStatistics.timing.getter();
      WeatherMapSessionStatistics.Timing.avgResponseTimeMs.getter();
      (*(v117 + 8))(v83, v118);
      v84 = v135;
      MapSessionStatisticsData.init(totalCalls:successfulCalls:cancelledCalls:errorCalls:avgTime:)();
      WeatherMapStallStatistics.activeTasksCount.getter();
      WeatherMapStallStatistics.tasksStalled.getter();
      WeatherMapStallStatistics.avgStalledTimeMs.getter();
      v85 = v138;
      MapStallStatisticsData.init(activeTaskCount:tasksStalled:avgTimeTaskStalled:)();
      v141 = *v141;
      v86 = v120;
      (*(v120 + 16))(v132, v140, v133);
      v87 = v125;
      v88 = v126;
      (*(v126 + 16))(v125, v122, v105);
      v89 = v121;
      (*(v121 + 16))(v134, v84, v136);
      v90 = v139;
      v91 = v127;
      (*(v139 + 16))(v137, v85, v127);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v113 + *(v88 + 80) + v92) & ~*(v88 + 80);
      v94 = (v124 + *(v89 + 80) + v93) & ~*(v89 + 80);
      v95 = (v119 + *(v90 + 80) + v94) & ~*(v90 + 80);
      v96 = swift_allocObject();
      v97 = v96 + v92;
      v98 = v133;
      (*(v86 + 32))(v97, v132, v133);
      (*(v88 + 32))(v96 + v93, v87, v105);
      v99 = v136;
      (*(v89 + 32))(v96 + v94, v134, v136);
      v100 = v139;
      (*(v139 + 32))(v96 + v95, v137, v91);
      Tracker.transaction(block:)();

      (*(v100 + 8))(v138, v91);
      (*(v89 + 8))(v135, v99);
      (*(v86 + 8))(v140, v98);
    }
  }

  sub_10000536C();
}

uint64_t sub_10062E388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapExitOverlayEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062E3EC(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapExitOverlayEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10062E448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MapOverlayData();
  sub_10062EB2C(&qword_100CCD158, &type metadata accessor for MapOverlayData, &protocol conformance descriptor for MapOverlayData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for ViewData();
  sub_10062EB2C(&qword_100CB3EE0, &type metadata accessor for ViewData, &protocol conformance descriptor for ViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapSessionStatisticsData();
  sub_10062EB2C(&qword_100CCD160, &type metadata accessor for MapSessionStatisticsData, &protocol conformance descriptor for MapSessionStatisticsData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapStallStatisticsData();
  sub_10062EB2C(&qword_100CCD168, &type metadata accessor for MapStallStatisticsData, &protocol conformance descriptor for MapStallStatisticsData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapExitOverlayEvent();
  sub_10062EB2C(&qword_100CCD170, &type metadata accessor for MapExitOverlayEvent, &protocol conformance descriptor for MapExitOverlayEvent);
  memset(v6, 0, sizeof(v6));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_1003C1574(v6);
}

uint64_t sub_10062E6AC()
{
  sub_100017580();
  v2 = type metadata accessor for MapOverlayData();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for ViewData();
  sub_100003AE8(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = type metadata accessor for MapSessionStatisticsData();
  sub_100003AE8(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  v17 = type metadata accessor for MapStallStatisticsData();
  sub_100003810(v17);
  v19 = v1 + ((v14 + v16 + *(v18 + 80)) & ~*(v18 + 80));

  return sub_10062E448(v0, v1 + v4, v1 + v9, v1 + v14, v19);
}

uint64_t sub_10062E848(uint64_t a1)
{
  result = type metadata accessor for WeatherMapOverlayKind();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WeatherMapSessionStatistics();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for WeatherMapStallStatistics();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10062E8E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10062E924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10062E984()
{
  sub_100017580();
  v2 = type metadata accessor for ViewData();
  sub_100003810(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10062CB40(v0, v4);
}

uint64_t sub_10062EA0C()
{
  sub_100017580();
  v2 = type metadata accessor for MapEmbedStateData();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MapOverlayData();
  sub_100003AE8(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = type metadata accessor for ZoomData();
  sub_100003810(v12);
  v14 = v1 + ((v9 + v11 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_10062D60C(v0, v1 + v4, v1 + v9, v14);
}

uint64_t sub_10062EB2C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10062EB9C(uint64_t a1)
{
  result = type metadata accessor for WeatherMapOverlayKind();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10062EC20()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10062EC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v66 = a1;
  type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v63 = v7;
  v64 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v62 = v9 - v8;
  v10 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v10 - 8);
  v59 = v50 - v11;
  v58 = type metadata accessor for WeatherFormatScaling();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  sub_1000037C4();
  v60 = v26;
  v61 = v25;
  __chkstk_darwin(v25);
  sub_1000037D8();
  v57 = v28 - v27;
  if (a3)
  {
    v29 = sub_10062F158(a2);
  }

  else
  {
    v29 = sub_10062F6B0(a2);
  }

  v55 = v30;
  v56 = v29;
  sub_10022C350(&qword_100CA5408, &unk_100A533E0);
  v31 = type metadata accessor for WeatherDescription.Argument();
  v53 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  v54 = v35;
  *(v35 + 16) = xmmword_100A2D320;
  v36 = (v35 + v34);
  v50[1] = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  Measurement.value.getter();
  *v36 = Double.pluralRuleInteger.getter();
  v52 = *(v32 + 104);
  (v52)(v36, enum case for WeatherDescription.Argument.pluralRule(_:), v31);
  v51 = (v36 + v33);
  (*(v20 + 104))(v24, enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:), v18);
  v37 = v58;
  (*(v13 + 104))(v17, enum case for WeatherFormatScaling.asProvidedButRounded(_:), v58);
  v38 = type metadata accessor for Locale();
  v39 = v59;
  sub_10001B350(v59, 1, 1, v38);
  static Set<>.full.getter();
  v40 = v57;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  sub_1001235D8(v39);
  (*(v13 + 8))(v17, v37);
  (*(v20 + 8))(v24, v18);
  v41 = v62;
  v42 = v63;
  v43 = v64;
  (*(v63 + 104))(v62, enum case for WeatherFormatPlaceholder.none(_:), v64);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_100123738();
  v44 = v61;
  v45 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v47 = v46;

  (*(v42 + 8))(v41, v43);
  (*(v60 + 8))(v40, v44);
  v48 = v51;
  *v51 = v45;
  v48[1] = v47;
  v52();
  return WeatherDescription.init(format:_:)();
}

uint64_t sub_10062F158(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = 0x8000000100AD9220;
      v3 = [objc_opt_self() mainBundle];
      goto LABEL_6;
    case 2:
      v5 = 0x8000000100AD9130;
      v6 = [objc_opt_self() mainBundle];
      goto LABEL_16;
    case 3:
      v12 = 0x8000000100AD9040;
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_9;
    case 4:
      v12 = 0x8000000100AD8F50;
      v13 = [objc_opt_self() mainBundle];
LABEL_9:
      v7 = v13;
      v8 = 0xD000000000000047;
      v25 = v12;
      v9 = v11 | 0x8000000000000000;
      v10 = 0xD000000000000095;
      break;
    case 5:
      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000045;
      v25 = 0x8000000100AD8E60;
      v9 = 0x8000000100AD8E10;
      v10 = 0xD000000000000091;
      break;
    case 6:
      v15 = 0x8000000100AD8D70;
      v16 = [objc_opt_self() mainBundle];
      goto LABEL_14;
    case 7:
      v15 = 0x8000000100AD8C80;
      v16 = [objc_opt_self() mainBundle];
LABEL_14:
      v7 = v16;
      v8 = 0xD000000000000046;
      v25 = v15;
      v9 = v14 | 0x8000000000000000;
      v10 = 0xD000000000000093;
      break;
    case 8:
      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000048;
      v25 = 0x8000000100AD8B90;
      v9 = 0x8000000100AD8B40;
      v10 = 0xD000000000000097;
      break;
    case 9:
      v7 = [objc_opt_self() mainBundle];
      v25 = 0x8000000100AD8AA0;
      v8 = 0xD00000000000004BLL;
      v9 = 0x8000000100AD8A50;
      v10 = 0xD00000000000009DLL;
      break;
    case 10:
      v2 = 0x8000000100AD89B0;
      v3 = [objc_opt_self() mainBundle];
LABEL_6:
      v7 = v3;
      v8 = 0xD000000000000049;
      v25 = v2;
      v9 = v1 | 0x8000000000000000;
      v10 = 0xD000000000000099;
      break;
    case 11:
      v5 = 0x8000000100AD88C0;
      v6 = [objc_opt_self() mainBundle];
      goto LABEL_16;
    case 12:
      v5 = 0x8000000100AD87D0;
      v6 = [objc_opt_self() mainBundle];
LABEL_16:
      v7 = v6;
      v25 = v5;
      v9 = v4 | 0x8000000000000000;
      v10 = 0xD00000000000009BLL;
      v8 = 0xD00000000000004ALL;
      break;
    default:
      if (qword_100CA2728 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000703C(v18, qword_100D90BD0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v19, v20, "Encountered an unexpected monthOfYear while building the monthly average summary string. monthOfYear=%ld", v21, 0xCu);
      }

      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000037;
      v25 = 0x8000000100AD86A0;
      v9 = 0x8000000100AD8660;
      v10 = 0xD0000000000000DELL;
      break;
  }

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v7, v22, *&v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10062F6B0(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v1 = "tion_summary_february";
      v2 = 0x8000000100AD9220;
      v3 = [objc_opt_self() mainBundle];
      goto LABEL_6;
    case 2:
      v4 = "tion_summary_march";
      v5 = 0x8000000100AD9130;
      v6 = [objc_opt_self() mainBundle];
      goto LABEL_16;
    case 3:
      v11 = "tion_summary_april";
      v12 = 0x8000000100AD9040;
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_9;
    case 4:
      v11 = "tion_summary_may";
      v12 = 0x8000000100AD8F50;
      v13 = [objc_opt_self() mainBundle];
LABEL_9:
      v7 = v13;
      v8 = 0xD000000000000032;
      v25 = v12;
      v9 = v11 | 0x8000000000000000;
      v10 = 0xD000000000000095;
      break;
    case 5:
      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000030;
      v25 = 0x8000000100AD8E60;
      v9 = 0x8000000100AD9480;
      v10 = 0xD000000000000091;
      break;
    case 6:
      v14 = "tion_summary_july";
      v15 = 0x8000000100AD8D70;
      v16 = [objc_opt_self() mainBundle];
      goto LABEL_14;
    case 7:
      v14 = "tion_summary_august";
      v15 = 0x8000000100AD8C80;
      v16 = [objc_opt_self() mainBundle];
LABEL_14:
      v7 = v16;
      v8 = 0xD000000000000031;
      v25 = v15;
      v9 = v14 | 0x8000000000000000;
      v10 = 0xD000000000000093;
      break;
    case 8:
      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000033;
      v25 = 0x8000000100AD8B90;
      v9 = 0x8000000100AD93C0;
      v10 = 0xD000000000000097;
      break;
    case 9:
      v7 = [objc_opt_self() mainBundle];
      v25 = 0x8000000100AD8AA0;
      v8 = 0xD000000000000036;
      v9 = 0x8000000100AD9380;
      v10 = 0xD00000000000009DLL;
      break;
    case 10:
      v1 = "tion_summary_november";
      v2 = 0x8000000100AD89B0;
      v3 = [objc_opt_self() mainBundle];
LABEL_6:
      v7 = v3;
      v8 = 0xD000000000000034;
      v25 = v2;
      v9 = v1 | 0x8000000000000000;
      v10 = 0xD000000000000099;
      break;
    case 11:
      v4 = "tion_summary_december";
      v5 = 0x8000000100AD88C0;
      v6 = [objc_opt_self() mainBundle];
      goto LABEL_16;
    case 12:
      v5 = 0x8000000100AD87D0;
      v6 = [objc_opt_self() mainBundle];
LABEL_16:
      v7 = v6;
      v25 = v5;
      v9 = v4 | 0x8000000000000000;
      v10 = 0xD00000000000009BLL;
      v8 = 0xD000000000000035;
      break;
    default:
      if (qword_100CA2728 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000703C(v18, qword_100D90BD0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v19, v20, "Encountered an unexpected monthOfYear while building the monthly average summary string. monthOfYear=%ld", v21, 0xCu);
      }

      v7 = [objc_opt_self() mainBundle];
      v25 = 0x8000000100AD86A0;
      v8 = 0xD000000000000037;
      v9 = 0x8000000100AD8660;
      v10 = 0xD0000000000000DELL;
      break;
  }

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v7, v22, *&v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10062FC7C(uint64_t a1)
{
  v1 = type metadata accessor for AirQualityDetailViewModel.Model(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10062FCFC(uint64_t a1)
{
  sub_10062FF08();
  if (v1 <= 0x3F)
  {
    sub_10013CA40(319, &qword_100CA45C0, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10062FFA4(319, &qword_100CCD470, &type metadata accessor for AirPollutant);
      if (v3 <= 0x3F)
      {
        sub_10013CA40(319, &qword_100CCD478, &type metadata for AirPollutantTableViewModel, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10062FFA4(319, &qword_100CB8CB8, sub_10062FF60);
          if (v5 <= 0x3F)
          {
            sub_10013CA40(319, &unk_100CCD480, &type metadata for Gradient.Stop, &type metadata accessor for Array);
            if (v6 <= 0x3F)
            {
              type metadata accessor for ConditionDetailMapViewModel(319);
              if (v7 <= 0x3F)
              {
                sub_10062FFA4(319, &qword_100CAA070, type metadata accessor for DetailComponentContainerViewModel);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10062FF08()
{
  if (!qword_100CCD468)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &qword_100CCD468);
    }
  }
}

unint64_t sub_10062FF60()
{
  result = qword_100CB8CC0;
  if (!qword_100CB8CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB8CC0);
  }

  return result;
}

void sub_10062FFA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100630008()
{
  sub_10002D5A4();
  v0 = StringProtocol.components<A>(separatedBy:)();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1006300A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for AirQualityDetailViewModel(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = sub_10022C350(&qword_100CCD500, &unk_100A6DFC8);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  v19 = *(v18 + 56);
  sub_100631ADC(a1, &v23 - v16);
  sub_100631ADC(a2, &v17[v19]);
  sub_1000038B4(v17, 1, v4);
  if (!v21)
  {
    sub_100631ADC(v17, v13);
    sub_1000038B4(&v17[v19], 1, v4);
    if (!v21)
    {
      sub_100631B98(&v17[v19], v8, type metadata accessor for AirQualityDetailViewModel.Model);
      v20 = sub_100631198(v13, v8);
      sub_100631B40(v8, type metadata accessor for AirQualityDetailViewModel.Model);
      sub_100631B40(v13, type metadata accessor for AirQualityDetailViewModel.Model);
      sub_100008B34();
      return v20 & 1;
    }

    sub_100631B40(v13, type metadata accessor for AirQualityDetailViewModel.Model);
LABEL_9:
    sub_1000180EC(v17, &qword_100CCD500, &unk_100A6DFC8);
    v20 = 0;
    return v20 & 1;
  }

  sub_1000038B4(&v17[v19], 1, v4);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_100008B34();
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1006302A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6174756C6C6F70 && a2 == 0xEE00656C62615474)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100630378(char a1)
{
  if (a1)
  {
    return 0x6E6174756C6C6F70;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_1006303B4(void *a1, int a2)
{
  v22 = a2;
  sub_10022C350(&qword_100CCD560, &qword_100A6E008);
  sub_1000037C4();
  v20 = v6;
  v21 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100003CB4();
  v19 = sub_10022C350(&qword_100CCD568, &qword_100A6E010);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001634C();
  v11 = sub_10022C350(&qword_100CCD570, &qword_100A6E018);
  sub_1000037C4();
  v13 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v19 - v15;
  sub_1000161C0(a1, a1[3]);
  sub_100631C40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v13 + 8);
  if (v22)
  {
    v24 = 1;
    sub_100631C94();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v2, v21);
  }

  else
  {
    v23 = 0;
    sub_100631CE8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v9 + 8))(v3, v19);
  }

  return (*v17)(v16, v11);
}

uint64_t sub_100630630(unint64_t a1)
{
  v38 = sub_10022C350(&qword_100CCD530, &qword_100A6DFE8);
  sub_1000037C4();
  v36 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_10022C350(&qword_100CCD538, &qword_100A6DFF0);
  sub_1000037C4();
  v35 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001634C();
  v11 = sub_10022C350(&qword_100CCD540, &unk_100A6DFF8);
  sub_1000037C4();
  v37 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100003CB4();
  sub_1000161C0(a1, *(a1 + 24));
  sub_100631C40();
  v14 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_8;
  }

  v33 = v8;
  v34 = v2;
  v39 = a1;
  v15 = v38;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v18 == v19 >> 1)
  {
LABEL_7:
    v24 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v26 = &type metadata for AirQualityDetailAnchor;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v37 + 8))(v1, v11);
    a1 = v39;
LABEL_8:
    sub_100006F14(a1);
    return a1;
  }

  v32 = 0;
  if (v18 < (v19 >> 1))
  {
    a1 = *(v17 + v18);
    sub_100618E7C();
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    if (v21 == v23 >> 1)
    {
      if (a1)
      {
        LODWORD(v35) = a1;
        v41 = 1;
        sub_100631C94();
        sub_1000059C4(&type metadata for AirQualityDetailAnchor.PollutantTableCodingKeys, &v41);
        swift_unknownObjectRelease();
        (*(v36 + 8))(v7, v15);
        v28 = sub_100014474();
        v29(v28);
        a1 = v35;
      }

      else
      {
        v40 = 0;
        sub_100631CE8();
        v27 = v34;
        sub_1000059C4(&type metadata for AirQualityDetailAnchor.TopCodingKeys, &v40);
        swift_unknownObjectRelease();
        (*(v35 + 8))(v27, v33);
        v30 = sub_100014474();
        v31(v30);
      }

      sub_100006F14(v39);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100630AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006302A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100630AD4(uint64_t a1)
{
  v2 = sub_100631C40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100630B10(uint64_t a1)
{
  v2 = sub_100631C40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100630B4C(uint64_t a1)
{
  v2 = sub_100631C94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100630B88(uint64_t a1)
{
  v2 = sub_100631C94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100630BC4(uint64_t a1)
{
  v2 = sub_100631CE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100630C00(uint64_t a1)
{
  v2 = sub_100631CE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100630C3C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100630630(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_100630C8C()
{
  result = qword_100CCD4F0;
  if (!qword_100CCD4F0)
  {
    result = swift_getWitnessTable(aI_53, &type metadata for AirQualityDetailAnchor, v0, v1);
    atomic_store(result, &qword_100CCD4F0);
  }

  return result;
}

uint64_t sub_100630CE0@<X0>(uint64_t a3@<X8>)
{
  v40 = type metadata accessor for AttributedString();
  sub_1000037C4();
  v38 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v37 = v9 - v8;
  v10 = sub_10022C350(&qword_100CB8BD0, &qword_100A4CFA0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v39 = &v36 - v12;
  v13 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_10001634C();
  v15 = sub_10022C350(&qword_100CB8BC8, &qword_100A4CF98);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  v22 = type metadata accessor for AttributeContainer();
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_1000037D8();

  AttributeContainer.init()();
  v41 = a3;
  AttributedString.init(_:attributes:)();
  v24 = v3[1];
  v42 = *v3;
  v43 = v24;
  v44 = 32;
  v45 = 0xE100000000000000;
  sub_10002D5A4();
  v25 = StringProtocol.components<A>(separatedBy:)();
  if (!v25[2])
  {
  }

  v27 = v25[4];
  v26 = v25[5];

  v42 = v27;
  v43 = v26;
  v28 = type metadata accessor for Locale();
  sub_10001B350(v4, 1, 1, v28);
  sub_100631BF8(&qword_100CB8C00, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_1000180EC(v4, &qword_100CAA9F0, qword_100A44F50);
  sub_100035AD0(v21, v18, &qword_100CB8BC8, &qword_100A4CF98);
  sub_1000038B4(v18, 1, v10);
  if (v29)
  {
    sub_1000180EC(v21, &qword_100CB8BC8, &qword_100A4CF98);

    v35 = v18;
  }

  else
  {
    v31 = v39;
    sub_1006320A0(v18, v39);
    String.lowercased()();

    AttributeContainer.init()();
    v32 = v37;
    AttributedString.init(_:attributes:)();
    sub_100006F64(&qword_100CB8C08, &qword_100CB8BD0, &qword_100A4CFA0, &protocol conformance descriptor for Range<A>);
    v33 = v40;
    AttributedString.replaceSubrange<A, B>(_:with:)();
    (*(v38 + 8))(v32, v33);
    v34 = AttributedString.subscript.modify();
    LOBYTE(v44) = 1;
    sub_10042F808();
    AttributedSubstring.subscript.setter();
    v34(&v42, 0);
    sub_1000180EC(v31, &qword_100CB8BD0, &qword_100A4CFA0);
    v35 = v21;
  }

  return sub_1000180EC(v35, &qword_100CB8BC8, &qword_100A4CF98);
}

uint64_t sub_100631198(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DetailComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v76 = (v8 - v7);
  v9 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100003CB4();
  v11 = sub_10022C350(&qword_100CAA958, &qword_100A5B780);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v77 = &v73 - v13;
  v14 = type metadata accessor for AirPollutant();
  sub_1000037C4();
  v78 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = sub_10022C350(&qword_100CB8BE0, &unk_100A4CFB0);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v73 - v22;
  v24 = sub_10022C350(&qword_100CCD508, &qword_100A6DFD8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  v29 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  v30 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  v31 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_57;
  }

  v32 = *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80);
  if (!v32 || *(a1 + 88) != *(a2 + 88))
  {
    goto LABEL_57;
  }

  v33 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
  if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  v34 = *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120);
  if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  v35 = *(a1 + 136);
  v36 = *(a2 + 136);
  if (v35)
  {
    if (!v36)
    {
      goto LABEL_57;
    }

    v37 = *(a1 + 128) == *(a2 + 128) && v35 == v36;
    if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v36)
  {
    goto LABEL_57;
  }

  v38 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  v39 = *(v38 + 56);
  v74 = v38;
  v75 = v39;
  v40 = *(v24 + 48);
  sub_100035AD0(a1 + v39, v27, &qword_100CB8BE0, &unk_100A4CFB0);
  v41 = a2 + v75;
  v75 = v40;
  sub_100035AD0(v41, &v27[v40], &qword_100CB8BE0, &unk_100A4CFB0);
  sub_1000038B4(v27, 1, v14);
  if (v28)
  {
    sub_1000038B4(&v27[v75], 1, v14);
    if (v28)
    {
      sub_1000180EC(v27, &qword_100CB8BE0, &unk_100A4CFB0);
      goto LABEL_60;
    }

LABEL_55:
    v43 = &qword_100CCD508;
    v44 = &qword_100A6DFD8;
    v45 = v27;
LABEL_56:
    sub_1000180EC(v45, v43, v44);
    goto LABEL_57;
  }

  sub_100035AD0(v27, v23, &qword_100CB8BE0, &unk_100A4CFB0);
  sub_1000038B4(&v27[v75], 1, v14);
  if (v42)
  {
    (*(v78 + 8))(v23, v14);
    goto LABEL_55;
  }

  v48 = v78;
  (*(v78 + 32))(v19, &v27[v75], v14);
  sub_100631BF8(&qword_100CCD510, &type metadata accessor for AirPollutant, &protocol conformance descriptor for AirPollutant);
  LODWORD(v75) = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v48 + 8);
  v49(v19, v14);
  v49(v23, v14);
  sub_1000180EC(v27, &qword_100CB8BE0, &unk_100A4CFB0);
  if ((v75 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_60:
  v50 = v74;
  v51 = v74[15];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_57;
    }

    v56 = *v52 == *v54 && v53 == v55;
    if (!v56 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_57;
    }

    sub_1009EA9FC();
    v58 = v57;

    if ((v58 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v55)
  {
    goto LABEL_57;
  }

  v59 = v50[16];
  v60 = *(a1 + v59);
  v61 = *(a2 + v59);
  if (v60)
  {
    if (!v61)
    {
      goto LABEL_57;
    }

    sub_10062FF60();
    v62 = v61;
    v63 = v60;
    v64 = static NSObject.== infix(_:_:)();

    if ((v64 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v61)
  {
    goto LABEL_57;
  }

  if ((sub_1009EE6AC(*(a1 + v50[17]), *(a2 + v50[17])) & 1) == 0 || (sub_1007EDCA4((a1 + v50[18]), (a2 + v50[18])) & 1) == 0)
  {
    goto LABEL_57;
  }

  v65 = v50[19];
  v66 = *(v11 + 48);
  v67 = v77;
  sub_100035AD0(a1 + v65, v77, &qword_100CA7188, &qword_100A35360);
  sub_100035AD0(a2 + v65, v67 + v66, &qword_100CA7188, &qword_100A35360);
  sub_1000038B4(v67, 1, v5);
  if (v28)
  {
    sub_1000038B4(v67 + v66, 1, v5);
    if (v28)
    {
      sub_1000180EC(v67, &qword_100CA7188, &qword_100A35360);
LABEL_87:
      v46 = *(a1 + v74[20]) ^ *(a2 + v74[20]) ^ 1;
      return v46 & 1;
    }

    goto LABEL_85;
  }

  sub_100035AD0(v67, v2, &qword_100CA7188, &qword_100A35360);
  sub_1000038B4(v67 + v66, 1, v5);
  if (v68)
  {
    sub_100631B40(v2, type metadata accessor for DetailComponentContainerViewModel);
    v67 = v77;
LABEL_85:
    v43 = &qword_100CAA958;
    v44 = &qword_100A5B780;
    v45 = v67;
    goto LABEL_56;
  }

  v69 = v77;
  v70 = v77 + v66;
  v71 = v76;
  sub_100631B98(v70, v76, type metadata accessor for DetailComponentContainerViewModel);
  v72 = sub_100428860(v2, v71);
  sub_100631B40(v71, type metadata accessor for DetailComponentContainerViewModel);
  sub_100631B40(v2, type metadata accessor for DetailComponentContainerViewModel);
  sub_1000180EC(v69, &qword_100CA7188, &qword_100A35360);
  if (v72)
  {
    goto LABEL_87;
  }

LABEL_57:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_10063192C@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CCD518, &qword_100A6DFE0);
  a1[4] = sub_100006F64(&qword_100CCD520, &qword_100CCD518, &qword_100A6DFE0, &protocol conformance descriptor for ShortDescription<A>);
  sub_100042FB0(a1);
  type metadata accessor for AirQualityDetailViewModel(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100631A28(uint64_t a1)
{
  sub_100631BF8(&qword_100CCD528, type metadata accessor for AirQualityDetailViewModel, a1_23);

  return ShortDescribable.description.getter();
}

uint64_t sub_100631ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityDetailViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100631B40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100631B98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100631BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_100631C40()
{
  result = qword_100CCD548;
  if (!qword_100CCD548)
  {
    result = swift_getWitnessTable(byte_100A6E254, &type metadata for AirQualityDetailAnchor.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCD548);
  }

  return result;
}

unint64_t sub_100631C94()
{
  result = qword_100CCD550;
  if (!qword_100CCD550)
  {
    result = swift_getWitnessTable(byte_100A6E204, &type metadata for AirQualityDetailAnchor.PollutantTableCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCD550);
  }

  return result;
}

unint64_t sub_100631CE8()
{
  result = qword_100CCD558;
  if (!qword_100CCD558)
  {
    result = swift_getWitnessTable(asc_100A6E1B4, &type metadata for AirQualityDetailAnchor.TopCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCD558);
  }

  return result;
}

_BYTE *sub_100631D3C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100631E3C()
{
  result = qword_100CCD578;
  if (!qword_100CCD578)
  {
    result = swift_getWitnessTable(aU_60, &type metadata for AirQualityDetailAnchor.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCD578);
  }

  return result;
}

unint64_t sub_100631E94()
{
  result = qword_100CCD580;
  if (!qword_100CCD580)
  {
    result = swift_getWitnessTable(a5_29, &type metadata for AirQualityDetailAnchor.TopCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCD580);
  }

  return result;
}

unint64_t sub_100631EEC()
{
  result = qword_100CCD588;
  if (!qword_100CCD588)
  {
    result = swift_getWitnessTable(byte_100A6E0D4, &type metadata for AirQualityDetailAnchor.TopCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCD588);
  }

  return result;
}

unint64_t sub_100631F44()
{
  result = qword_100CCD590;
  if (!qword_100CCD590)
  {
    result = swift_getWitnessTable(byte_100A6E05C, &type metadata for AirQualityDetailAnchor.PollutantTableCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCD590);
  }

  return result;
}

unint64_t sub_100631F9C()
{
  result = qword_100CCD598;
  if (!qword_100CCD598)
  {
    result = swift_getWitnessTable(aM_63, &type metadata for AirQualityDetailAnchor.PollutantTableCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCD598);
  }

  return result;
}

unint64_t sub_100631FF4()
{
  result = qword_100CCD5A0;
  if (!qword_100CCD5A0)
  {
    result = swift_getWitnessTable(byte_100A6E0FC, &type metadata for AirQualityDetailAnchor.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCD5A0);
  }

  return result;
}

unint64_t sub_10063204C()
{
  result = qword_100CCD5A8[0];
  if (!qword_100CCD5A8[0])
  {
    result = swift_getWitnessTable(byte_100A6E124, &type metadata for AirQualityDetailAnchor.CodingKeys, v0, v1);
    atomic_store(result, qword_100CCD5A8);
  }

  return result;
}

uint64_t sub_1006320A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB8BD0, &qword_100A4CFA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100632114(uint64_t a1)
{
  sub_100081BC8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailViewVisibilityTrackerModel(319);
    if (v2 <= 0x3F)
    {
      sub_1003E7F34();
      if (v3 <= 0x3F)
      {
        sub_100007760();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1006321F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(type metadata accessor for PresentationMode() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v44 = v6;
  v43 = type metadata accessor for DetailType();
  v7 = *(v43 - 8);
  v8 = *(v7 + 84);
  v41 = type metadata accessor for Location();
  v9 = *(v41 - 8);
  v42 = *(v9 + 84);
  if (v42 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = type metadata accessor for DetailViewOrigin();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  if (v14 <= v17)
  {
    v18 = *(v16 + 84);
  }

  else
  {
    v18 = v14;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v9 + 80);
  v21 = *(v12 + 80);
  v22 = *(v16 + 80);
  v23 = *(v16 + 64);
  if (!a2)
  {
    return 0;
  }

  v24 = (v20 | *(v7 + 80) | v21);
  v25 = *(v12 + 80);
  v26 = v44 + v24 + 1;
  v27 = *(v7 + 64) + v20;
  v28 = *(v9 + 64) + v21;
  v29 = ((v28 + (v27 & ~*(v9 + 80))) & ~v21) + *(*(v11 - 8) + 64);
  if (a2 <= v19)
  {
    goto LABEL_36;
  }

  v30 = ((v22 + ((((((v29 + (v26 & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v22) + v23;
  v31 = 8 * v30;
  if (v30 > 3)
  {
    goto LABEL_18;
  }

  v34 = ((a2 - v19 + ~(-1 << v31)) >> v31) + 1;
  if (HIWORD(v34))
  {
    v32 = *(a1 + v30);
    if (v32)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v34 <= 0xFF)
    {
      if (v34 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v32 = *(a1 + v30);
      if (!*(a1 + v30))
      {
        goto LABEL_36;
      }

LABEL_26:
      v35 = (v32 - 1) << v31;
      if (v30 > 3)
      {
        v35 = 0;
      }

      if (v30)
      {
        if (v30 <= 3)
        {
          v36 = v30;
        }

        else
        {
          v36 = 4;
        }

        switch(v36)
        {
          case 2:
            v37 = *a1;
            break;
          case 3:
            v37 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v37 = *a1;
            break;
          default:
            v37 = *a1;
            break;
        }
      }

      else
      {
        v37 = 0;
      }

      return v19 + (v37 | v35) + 1;
    }

    v32 = *(a1 + v30);
    if (*(a1 + v30))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  v38 = (a1 + v26) & ~v24;
  if (v14 == v19)
  {
    if (v8 == v14)
    {
      v13 = v8;
      v15 = v43;
    }

    else
    {
      v38 = (v27 + v38) & ~*(v9 + 80);
      if (v42 == v14)
      {
        v13 = v42;
        v15 = v41;
      }

      else
      {
        v38 = (v28 + v38) & ~v25;
        v15 = v11;
      }
    }

LABEL_47:

    return sub_100024D10(v38, v13, v15);
  }

  v39 = (v38 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v18 & 0x80000000) != 0)
  {
    v38 = (v22 + ((((v39 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v22;
    v13 = v17;
    goto LABEL_47;
  }

  v40 = *(v39 + 24);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

void sub_100632660(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(type metadata accessor for PresentationMode() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v45 = type metadata accessor for DetailType();
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  v43 = type metadata accessor for Location();
  v10 = *(v43 - 8);
  v44 = *(v10 + 84);
  if (v44 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = type metadata accessor for DetailViewOrigin();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  if (v15 <= v18)
  {
    v19 = *(v17 + 84);
  }

  else
  {
    v19 = v15;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v10 + 80);
  v22 = *(v13 + 80);
  v23 = (v21 | *(v8 + 80) | v22);
  v24 = v21;
  v25 = v22;
  v26 = v7 + v23 + 1;
  v27 = *(v8 + 64) + v21;
  v28 = *(v10 + 64) + v22;
  v29 = ((v28 + (v27 & ~v24)) & ~v25) + *(*(v12 - 8) + 64);
  v30 = *(v17 + 80);
  v31 = ((v30 + ((((((v29 + (v26 & ~v23) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v30) + *(v17 + 64);
  v32 = 8 * v31;
  if (a3 <= v20)
  {
    v35 = 0;
    v33 = a1;
    v34 = a2;
  }

  else
  {
    v33 = a1;
    v34 = a2;
    if (v31 <= 3)
    {
      v38 = ((a3 - v20 + ~(-1 << v32)) >> v32) + 1;
      if (HIWORD(v38))
      {
        v35 = 4;
      }

      else
      {
        if (v38 < 0x100)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v38 >= 2)
        {
          v35 = v39;
        }

        else
        {
          v35 = 0;
        }
      }
    }

    else
    {
      v35 = 1;
    }
  }

  if (v20 >= v34)
  {
    switch(v35)
    {
      case 1:
        v33[v31] = 0;
        if (v34)
        {
          goto LABEL_39;
        }

        return;
      case 2:
        *&v33[v31] = 0;
        if (v34)
        {
          goto LABEL_39;
        }

        return;
      case 3:
LABEL_63:
        __break(1u);
        return;
      case 4:
        *&v33[v31] = 0;
        goto LABEL_38;
      default:
LABEL_38:
        if (!v34)
        {
          return;
        }

LABEL_39:
        v41 = &v33[v26] & ~v23;
        if (v15 == v20)
        {
          if (v9 == v15)
          {
            v14 = v9;
            v16 = v45;
          }

          else
          {
            v41 = (v27 + v41) & ~v24;
            if (v44 == v15)
            {
              v14 = v44;
              v16 = v43;
            }

            else
            {
              v41 = (v28 + v41) & ~v25;
              v16 = v12;
            }
          }
        }

        else
        {
          v42 = (v41 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
          if ((v19 & 0x80000000) == 0)
          {
            if ((v34 & 0x80000000) != 0)
            {
              *(v42 + 8) = 0u;
              *(v42 + 24) = 0u;
              *v42 = v34 & 0x7FFFFFFF;
            }

            else
            {
              *(v42 + 24) = (v34 - 1);
            }

            return;
          }

          v41 = (v30 + ((((v42 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v30;
          v14 = v18;
        }

        sub_10001B350(v41, v34, v14, v16);
        break;
    }
  }

  else
  {
    v36 = ~v20 + v34;
    if (v31 < 4)
    {
      v37 = (v36 >> v32) + 1;
      if (v31)
      {
        v40 = v36 & ~(-1 << v32);
        bzero(v33, v31);
        if (v31 == 3)
        {
          *v33 = v40;
          v33[2] = BYTE2(v40);
        }

        else if (v31 == 2)
        {
          *v33 = v40;
        }

        else
        {
          *v33 = v36;
        }
      }
    }

    else
    {
      bzero(v33, v31);
      *v33 = v36;
      v37 = 1;
    }

    switch(v35)
    {
      case 1:
        v33[v31] = v37;
        break;
      case 2:
        *&v33[v31] = v37;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *&v33[v31] = v37;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_100632BB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_1000302D8(v2, &v16 - v12, &qword_100CA54B0, &qword_100A2F8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100463960(v13, a1);
  }

  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_100632D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v92 = *(a1 - 8);
  v93 = *(v92 + 64);
  __chkstk_darwin(a1);
  sub_100003990(&v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  sub_100003990(&v78 - v5);
  v89 = type metadata accessor for ColorScheme();
  sub_1000037C4();
  v88 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100003990(v9 - v8);
  type metadata accessor for NavigationPath();
  v90 = a1;
  v99 = *(a1 + 16);
  sub_10022E824(&qword_100CA6E10, &qword_100A31DE0);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(a1 + 24);
  sub_100004724();
  sub_1000206E4();
  v16 = sub_10023FBF4(v12, v13, v14, v15);
  v112[0] = v11;
  v112[1] = v16;
  v79 = v11;
  v17 = sub_100007E30();
  v98 = v18;
  WitnessTable = swift_getWitnessTable(v17, v10, v112);
  v106 = v10;
  v107 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = sub_10022E824(&qword_100CCD630, &qword_100A6E338);
  v106 = v10;
  v107 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000063C0();
  v25 = sub_10023FBF4(v23, &qword_100CCD630, &qword_100A6E338, v24);
  v106 = OpaqueTypeMetadata2;
  v107 = v21;
  v108 = OpaqueTypeConformance2;
  v109 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v106 = OpaqueTypeMetadata2;
  v107 = v21;
  v108 = OpaqueTypeConformance2;
  v109 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v106 = v26;
  v107 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v106 = v26;
  v107 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v106 = v26;
  v107 = &type metadata for Solarium;
  v108 = v28;
  v109 = v27;
  v110 = &protocol witness table for Solarium;
  v111 = v29;
  swift_getOpaqueTypeMetadata2();
  v106 = v26;
  v107 = &type metadata for Solarium;
  v108 = v28;
  v109 = v27;
  v110 = &protocol witness table for Solarium;
  v111 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = type metadata accessor for NavigationStack();
  sub_1000037C4();
  v32 = v31;
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &v78 - v34;
  sub_10022E824(&qword_100CE15A0, &unk_100A6E340);
  v36 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v80 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  v40 = &v78 - v39;
  v82 = type metadata accessor for ModifiedContent();
  v85 = *(v82 - 8);
  sub_100003828();
  __chkstk_darwin(v41);
  sub_100003990(&v78 - v42);
  v84 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v86 = v43;
  __chkstk_darwin(v44);
  v81 = &v78 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  sub_100003990(&v78 - v47);
  v100 = v99;
  v101 = v11;
  v48 = v97;
  v102 = v97;
  NavigationStack.init<>(root:)();
  v49 = v88;
  v50 = v87;
  v51 = v89;
  (*(v88 + 104))(v87, enum case for ColorScheme.dark(_:), v89);
  v52 = sub_100010610();
  v53 = swift_getWitnessTable(v52, v30);
  View.colorScheme(_:)();
  (*(v49 + 8))(v50, v51);
  (*(v32 + 8))(v35, v30);
  sub_100014B8C();
  v56 = sub_10023FBF4(v54, &qword_100CE15A0, &unk_100A6E340, v55);
  v105[0] = v53;
  v105[1] = v56;
  v89 = swift_getWitnessTable(v98, v36, v105);
  View.accessibilityIgnoresInvertColors(_:)();
  (*(v80 + 8))(v40, v36);
  v57 = v92;
  v88 = *(v92 + 16);
  v58 = v91;
  v59 = v48;
  v60 = v90;
  (v88)(v91, v59, v90);
  v61 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v62 = swift_allocObject();
  v63 = v79;
  *(v62 + 16) = v99;
  *(v62 + 24) = v63;
  v92 = *(v57 + 32);
  (v92)(v62 + v61, v58, v60);
  v64 = v94;
  (v88)(v94, v97, v60);
  v65 = swift_allocObject();
  *(v65 + 16) = v99;
  *(v65 + 24) = v63;
  (v92)(v65 + v61, v64, v60);
  v66 = sub_100061564();
  v104[0] = v89;
  v104[1] = v66;
  v67 = v98;
  v68 = v82;
  v69 = swift_getWitnessTable(v98, v82, v104);
  v70 = v81;
  v71 = v96;
  sub_1007A9138(sub_100636DE4, v62, sub_100636DFC, v65, v68, v69);

  (*(v85 + 8))(v71, v68);
  v72 = sub_100636EA4();
  v103[0] = v69;
  v103[1] = v72;
  v73 = v84;
  v74 = swift_getWitnessTable(v67, v84, v103);
  v75 = v83;
  sub_1000833D8(v70, v73, v74);
  v76 = *(v86 + 8);
  v76(v70, v73);
  sub_1000833D8(v75, v73, v74);
  return (v76)(v75, v73);
}

uint64_t sub_10063369C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a1;
  v78 = a4;
  v6 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v74 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022E824(&qword_100CA6E10, &qword_100A31DE0);
  v8 = type metadata accessor for ModifiedContent();
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v71 = &v53 - v9;
  v10 = sub_10023FBF4(&qword_100CA6E08, &qword_100CA6E10, &qword_100A31DE0, &protocol conformance descriptor for _BackgroundModifier<A>);
  v90[0] = a3;
  v90[1] = v10;
  v11 = a3;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v90);
  v84 = v8;
  v85 = WitnessTable;
  v13 = WitnessTable;
  v68 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v69 = &v53 - v15;
  v16 = sub_10022E824(&qword_100CCD630, &qword_100A6E338);
  v84 = v8;
  v85 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_10023FBF4(&qword_100CCD638, &qword_100CCD630, &qword_100A6E338, &protocol conformance descriptor for TupleToolbarContent<A>);
  v84 = OpaqueTypeMetadata2;
  v85 = v16;
  v19 = OpaqueTypeMetadata2;
  v60 = OpaqueTypeMetadata2;
  v64 = v16;
  v86 = OpaqueTypeConformance2;
  v87 = v18;
  v63 = OpaqueTypeConformance2;
  v20 = v18;
  v62 = v18;
  v21 = swift_getOpaqueTypeMetadata2();
  v70 = *(v21 - 8);
  __chkstk_darwin(v21);
  v61 = &v53 - v22;
  v84 = v19;
  v85 = v16;
  v86 = OpaqueTypeConformance2;
  v87 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v59 = v21;
  v84 = v21;
  v85 = v23;
  v24 = v23;
  v58 = v23;
  v25 = swift_getOpaqueTypeMetadata2();
  v55 = v25;
  v84 = v21;
  v85 = v24;
  v56 = swift_getOpaqueTypeConformance2();
  v84 = v21;
  v85 = &type metadata for Solarium;
  v86 = v25;
  v87 = v24;
  v88 = &protocol witness table for Solarium;
  v89 = v56;
  v65 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  v66 = swift_getOpaqueTypeMetadata2();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v54 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v57 = &v53 - v28;
  type metadata accessor for DetailContainerView(0, a2, v11, v29);
  v30 = [objc_opt_self() systemBackgroundColor];
  v31 = Color.init(_:)();
  v32 = static SafeAreaRegions.all.getter();
  v33 = static Edge.Set.all.getter();
  v84 = v31;
  v85 = v32;
  LOBYTE(v86) = v33;
  sub_10022C350(&qword_100CCD648, &qword_100A6E350);
  sub_100636EF8();
  static Alignment.center.getter();
  v34 = v75;
  v35 = v71;
  v36 = v11;
  View.background<A>(_:alignment:)();

  v38 = v76;
  v37 = v77;
  v39 = v74;
  (*(v76 + 104))(v74, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v77);
  v40 = v69;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v38 + 8))(v39, v37);
  (*(v73 + 8))(v35, v8);
  v81 = a2;
  v82 = v36;
  v83 = v34;
  v41 = v61;
  v42 = v60;
  View.toolbar<A>(content:)();
  (*(v72 + 8))(v40, v42);
  Solarium.init()();
  v79 = a2;
  v80 = v36;
  v43 = swift_checkMetadataState();
  v44 = v56;
  v45 = v54;
  v46 = v59;
  v47 = v58;
  View.staticIf<A, B>(_:then:)();
  (*(v70 + 8))(v41, v46);
  v84 = v46;
  v85 = &type metadata for Solarium;
  v86 = v43;
  v87 = v47;
  v88 = &protocol witness table for Solarium;
  v89 = v44;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v57;
  v50 = v66;
  sub_1000833D8(v45, v66, v48);
  v51 = *(v67 + 8);
  v51(v45, v50);
  sub_1000833D8(v49, v50, v48);
  return (v51)(v49, v50);
}

uint64_t sub_100633EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v34 = a2;
  v35 = a1;
  v44 = a4;
  v43 = sub_10022C350(&qword_100CCD658, &qword_100A6E358);
  __chkstk_darwin(v43);
  v41 = v32 - v7;
  v42 = sub_10022C350(&qword_100CCD660, &qword_100A6E360);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = v32 - v8;
  v9 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v9 - 8);
  v38 = sub_10022C350(&qword_100CCD668, &qword_100A6E368);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v33 = v32 - v10;
  static ToolbarItemPlacement.principal.getter();
  v48 = a2;
  v49 = a3;
  v50 = a1;
  v32[1] = sub_10022C350(&qword_100CCD670, &qword_100A6E370);
  v11 = sub_10022E824(&qword_100CCD678, &qword_100A6E378);
  v32[0] = sub_10022E824(&qword_100CCD680, &qword_100A6E380);
  v12 = sub_10022E824(&qword_100CCD688, &qword_100A6E388);
  v13 = sub_10022E824(&qword_100CCD690, &qword_100A6E390);
  v14 = sub_10022E824(&qword_100CCD698, &qword_100A6E398);
  v15 = sub_10022E824(&qword_100CCD6A0, &qword_100A6E3A0);
  v16 = sub_10023FBF4(&qword_100CCD6A8, &qword_100CCD698, &qword_100A6E398, &protocol conformance descriptor for VStack<A>);
  v17 = sub_10023FBF4(&qword_100CCD6B0, &qword_100CCD6A0, &qword_100A6E3A0, &protocol conformance descriptor for TupleView<A>);
  v51 = v14;
  v52 = v15;
  v53 = v16;
  v54 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_100636F9C();
  v51 = v12;
  v52 = &type metadata for Solarium;
  v53 = v13;
  v54 = OpaqueTypeConformance2;
  v55 = &protocol witness table for Solarium;
  v56 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v51 = v11;
  v52 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v51 = v11;
  v52 = &type metadata for Solarium;
  v53 = v32[0];
  v54 = v20;
  v55 = &protocol witness table for Solarium;
  v56 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v33;
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v45 = v34;
  v46 = v36;
  v47 = v35;
  sub_10022C350(&qword_100CCD6D0, &qword_100A6E3B0);
  sub_100637190();
  v23 = v39;
  ToolbarItem<>.init(placement:content:)();
  v24 = *(v43 + 48);
  v25 = v37;
  v26 = v41;
  v27 = v38;
  (*(v37 + 16))(v41, v22, v38);
  v28 = v40;
  v29 = &v26[v24];
  v30 = v42;
  (*(v40 + 16))(v29, v23, v42);
  TupleToolbarContent.init(_:)();
  (*(v28 + 8))(v23, v30);
  return (*(v25 + 8))(v22, v27);
}

uint64_t sub_100634420@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = sub_10022C350(&qword_100CCD678, &qword_100A6E378);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v9 = type metadata accessor for DetailContainerView(0, a1, a2, v8);
  sub_1006346E0(v9, v7);
  Solarium.init()();
  v23 = a1;
  v24 = a2;
  v20[1] = sub_10022C350(&qword_100CCD680, &qword_100A6E380);
  v10 = sub_10022E824(&qword_100CCD688, &qword_100A6E388);
  v11 = sub_10022E824(&qword_100CCD690, &qword_100A6E390);
  v12 = sub_10022E824(&qword_100CCD698, &qword_100A6E398);
  v13 = sub_10022E824(&qword_100CCD6A0, &qword_100A6E3A0);
  v14 = sub_10023FBF4(&qword_100CCD6A8, &qword_100CCD698, &qword_100A6E398, &protocol conformance descriptor for VStack<A>);
  v15 = sub_10023FBF4(&qword_100CCD6B0, &qword_100CCD6A0, &qword_100A6E3A0, &protocol conformance descriptor for TupleView<A>);
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_100636F9C();
  v25 = v10;
  v26 = &type metadata for Solarium;
  v27 = v11;
  v28 = OpaqueTypeConformance2;
  v29 = &protocol witness table for Solarium;
  v30 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v25 = v5;
  v26 = v18;
  swift_getOpaqueTypeConformance2();
  View.staticIf<A, B>(_:then:)();
  return (*(v21 + 8))(v7, v5);
}

uint64_t sub_1006346E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19[1] = a2;
  v5 = sub_10022C350(&qword_100CCD698, &qword_100A6E398);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = sub_10022C350(&qword_100CCD688, &qword_100A6E388);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - v10;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = sub_10022C350(&qword_100CCD700, &unk_100A6E3E8);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  sub_1006359D4(v3, v14, v13, &v7[*(v12 + 44)]);
  v19[4] = v14;
  v19[5] = v13;
  v19[6] = v3;
  v15 = sub_10022C350(&qword_100CCD6A0, &qword_100A6E3A0);
  v16 = sub_10023FBF4(&qword_100CCD6A8, &qword_100CCD698, &qword_100A6E398, &protocol conformance descriptor for VStack<A>);
  v17 = sub_10023FBF4(&qword_100CCD6B0, &qword_100CCD6A0, &qword_100A6E3A0, &protocol conformance descriptor for TupleView<A>);
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  sub_10003FDA0(v7, &qword_100CCD698);
  Solarium.init()();
  sub_10022C350(&qword_100CCD690, &qword_100A6E390);
  v19[8] = v5;
  v19[9] = v15;
  v19[10] = v16;
  v19[11] = v17;
  swift_getOpaqueTypeConformance2();
  sub_100636F9C();
  View.staticIf<A, B>(_:then:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1006349BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v14[1] = a2;
  v15 = type metadata accessor for BarMagicPocketStyle();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = sub_10022C350(&qword_100CCD678, &qword_100A6E378);
  v5 = sub_10022E824(&qword_100CCD688, &qword_100A6E388);
  v6 = sub_10022E824(&qword_100CCD690, &qword_100A6E390);
  v7 = sub_10022E824(&qword_100CCD698, &qword_100A6E398);
  v8 = sub_10022E824(&qword_100CCD6A0, &qword_100A6E3A0);
  v9 = sub_10023FBF4(&qword_100CCD6A8, &qword_100CCD698, &qword_100A6E398, &protocol conformance descriptor for VStack<A>);
  v10 = sub_10023FBF4(&qword_100CCD6B0, &qword_100CCD6A0, &qword_100A6E3A0, &protocol conformance descriptor for TupleView<A>);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_100636F9C();
  v17 = v5;
  v18 = &type metadata for Solarium;
  v19 = v6;
  v20 = OpaqueTypeConformance2;
  v21 = &protocol witness table for Solarium;
  v22 = v12;
  swift_getOpaqueTypeConformance2();
  static BarMagicPocketStyle.automatic.getter();
  View.barPocket_v1(style:)();
  return (*(v2 + 8))(v4, v15);
}

uint64_t sub_100634C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10022C350(&qword_100CCD6E8, &qword_100A6E3B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  v13 = type metadata accessor for DetailContainerView(0, a2, a3, v12);
  if (*(a1 + *(v13 + 60)) == 1)
  {
    sub_100634D5C(v13);
    (*(v9 + 32))(a4, v11, v8);
    return sub_10001B350(a4, 0, 1, v8);
  }

  else
  {

    return sub_10001B350(a4, 1, 1, v8);
  }
}

uint64_t sub_100634D5C(uint64_t a1)
{
  Solarium.init()();
  sub_10022C350(&qword_100CCD6F0, &qword_100A6E3C8);
  sub_10022C350(&qword_100CCD6F8, &unk_100A6E3D0);
  sub_10022E824(&qword_100CAF690, &qword_100A6E3C0);
  sub_10022E824(&qword_100CA2CF0, &unk_100A6F8C0);
  sub_10023FBF4(&qword_100CAF698, &qword_100CAF690, &qword_100A6E3C0, &protocol conformance descriptor for Button<A>);
  sub_10023FBF4(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
  swift_getOpaqueTypeConformance2();
  sub_10022E824(&qword_100CC5B90, &unk_100A61410);
  sub_1006373E0(&qword_100CC5B98, &qword_100CC5B90, &unk_100A61410, sub_100578174);
  swift_getOpaqueTypeConformance2();
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_100634F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022E824(&qword_100CA6E10, &qword_100A31DE0);
  v4 = type metadata accessor for ModifiedContent();
  v24[0] = a3;
  v24[1] = sub_10023FBF4(&qword_100CA6E08, &qword_100CA6E10, &qword_100A31DE0, &protocol conformance descriptor for _BackgroundModifier<A>);
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v4, v24);
  swift_getOpaqueTypeMetadata2();
  sub_10022E824(&qword_100CCD630, &qword_100A6E338);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v6 = sub_10023FBF4(&qword_100CCD638, &qword_100CCD630, &qword_100A6E338, &protocol conformance descriptor for TupleToolbarContent<A>);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = OpaqueTypeConformance2;
  v23 = v6;
  v8 = swift_getOpaqueTypeConformance2();
  v20 = OpaqueTypeMetadata2;
  v21 = v8;
  v9 = swift_getOpaqueTypeMetadata2();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  v16 = swift_checkMetadataState();
  View.scrollContentBackground(_:)();
  v20 = v16;
  v21 = v8;
  v17 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v12, v9, v17);
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_1000833D8(v15, v9, v17);
  return (v18)(v15, v9);
}

uint64_t sub_100635274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DetailContainerView(0, a2, a3, a4);
  v6 = (a1 + *(v5 + 40));
  v7 = v6[3];
  v8 = v6[4];
  sub_1000161C0(v6, v7);
  return (*(v8 + 16))(a1 + *(v5 + 36), v7, v8);
}

uint64_t sub_1006352E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + *(type metadata accessor for DetailContainerView(0, a2, a3, a4) + 40));
  v5 = v4[3];
  v6 = v4[4];
  sub_1000161C0(v4, v5);
  return (*(v6 + 24))(v5, v6);
}

uint64_t sub_10063534C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  v8 = type metadata accessor for DetailContainerView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  v20[0] = sub_10022C350(&qword_100CAF690, &qword_100A6E3C0);
  v12 = *(v20[0] - 8);
  v13 = __chkstk_darwin(v20[0]);
  v15 = v20 - v14;
  (*(v9 + 16))(v11, a1, v8, v13);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v9 + 32))(v17 + v16, v11, v8);
  sub_10022C350(&qword_100CAF6F8, &unk_100A4A210);
  sub_10035B9E4();
  Button.init(action:label:)();
  sub_10022C350(&qword_100CA2CF0, &unk_100A6F8C0);
  sub_10023FBF4(&qword_100CAF698, &qword_100CAF690, &qword_100A6E3C0, &protocol conformance descriptor for Button<A>);
  sub_10023FBF4(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
  v18 = v20[0];
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  return (*(v12 + 8))(v15, v18);
}

uint64_t sub_10063561C@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  result = static Color.white.getter();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_10063565C()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1006356B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DetailContainerView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v15 - v10;
  (*(v8 + 16))(v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  v15[1] = sub_10063760C;
  v15[2] = v13;
  v16 = 257;
  sub_10022C350(&qword_100CC5B90, &unk_100A61410);
  sub_10022C350(&qword_100CA2CF0, &unk_100A6F8C0);
  sub_1006373E0(&qword_100CC5B98, &qword_100CC5B90, &unk_100A61410, sub_100578174);
  sub_10023FBF4(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
  View.accessibilityShowsLargeContentViewer<A>(_:)();
}

uint64_t sub_1006358D4()
{
  v0 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v0 - 8);
  sub_1000037D8();
  sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  v3 = &v5 - v2;
  sub_100632BB4(&v5 - v2);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  return sub_10003FDA0(v3, &qword_100CA6D28);
}

uint64_t sub_1006359D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a2;
  v82 = a3;
  v94 = a4;
  v95 = a1;
  v7 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v7 - 8);
  v77 = &v74 - v8;
  v78 = type metadata accessor for Font.TextStyle();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10022C350(&qword_100CCD708, &qword_100A6E3F8);
  v80 = *(v91 - 8);
  __chkstk_darwin(v91);
  v79 = &v74 - v10;
  v11 = sub_10022C350(&qword_100CCD710, &qword_100A6E400);
  __chkstk_darwin(v11 - 8);
  v93 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = &v74 - v14;
  v15 = type metadata accessor for AccessibilityTraits();
  v89 = *(v15 - 8);
  v90 = v15;
  __chkstk_darwin(v15);
  v88 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessibilityChildBehavior();
  v83 = *(v17 - 8);
  v84 = v17;
  __chkstk_darwin(v17);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CCD718, &qword_100A6E408);
  v86 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v74 - v21;
  v87 = sub_10022C350(&qword_100CCD720, &qword_100A6E410);
  __chkstk_darwin(v87);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v97 = &v74 - v26;
  __chkstk_darwin(v27);
  v85 = &v74 - v28;
  __chkstk_darwin(v29);
  v96 = &v74 - v30;
  v31 = static VerticalAlignment.center.getter();
  LOBYTE(v98) = 0;
  sub_100636478(a1, a2, a3, __src);
  memcpy(v103, __src, 0x4BuLL);
  memcpy(v104, __src, 0x4BuLL);
  sub_1000302D8(v103, v101, &qword_100CCD728, &qword_100A6E418);
  sub_10003FDA0(v104, &qword_100CCD728);
  memcpy(&v102[7], v103, 0x4BuLL);
  *v101 = v31;
  *&v101[8] = 0x4010000000000000;
  v101[16] = v98;
  memcpy(&v101[17], v102, 0x52uLL);
  static AccessibilityChildBehavior.ignore.getter();
  v32 = sub_10022C350(&qword_100CCD730, &qword_100A6E420);
  v33 = sub_10023FBF4(&qword_100CCD738, &qword_100CCD730, &qword_100A6E420, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v83 + 8))(v19, v84);
  memcpy(__src, v101, 0x63uLL);
  sub_10003FDA0(__src, &qword_100CCD730);
  *v101 = v32;
  *&v101[8] = v33;
  swift_getOpaqueTypeConformance2();
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v86 + 8))(v22, v20);
  v86 = type metadata accessor for DetailContainerView(0, v81, v82, v34);
  v35 = (v95 + *(v86 + 44));
  v36 = v35[1];
  *v101 = *v35;
  *&v101[8] = v36;
  v37 = sub_10002D5A4();
  v38 = v97;
  v84 = v37;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_10003FDA0(v24, &qword_100CCD720);
  v39 = v88;
  static AccessibilityTraits.isHeader.getter();
  v40 = v85;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v89 + 8))(v39, v90);
  sub_10003FDA0(v38, &qword_100CCD720);
  ModifiedContent<>.accessibilityHidden(_:)();
  sub_10003FDA0(v40, &qword_100CCD720);
  v41 = (v95 + *(v86 + 56));
  v42 = v41[1];
  if (v42)
  {
    v95 = *v41;
    *v101 = v95;
    *&v101[8] = v42;
    v90 = v42;

    v43 = Text.init<A>(_:)();
    v45 = v44;
    v47 = v46;
    v89 = v48;
    v50 = v75;
    v49 = v76;
    v51 = v78;
    (*(v76 + 104))(v75, enum case for Font.TextStyle.body(_:), v78);
    v52 = type metadata accessor for Font.Design();
    v53 = v77;
    sub_10001B350(v77, 1, 1, v52);
    static Font.system(_:design:weight:)();
    sub_10003FDA0(v53, &qword_100CA4020);
    (*(v49 + 8))(v50, v51);
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v54 = Text.font(_:)();
    v56 = v55;
    LOBYTE(v50) = v57;
    v59 = v58;

    sub_10010CD64(v43, v45, v47 & 1);

    KeyPath = swift_getKeyPath();
    v100 = v50 & 1;
    *&v98 = v54;
    *(&v98 + 1) = v56;
    LOBYTE(v99[0]) = v50 & 1;
    *(&v99[0] + 1) = v59;
    *&v99[1] = KeyPath;
    WORD4(v99[1]) = 1;
    BYTE10(v99[1]) = 1;
    v61 = Solarium.init()();
    __chkstk_darwin(v61);
    sub_10022C350(&qword_100CB6718, &qword_100A6E460);
    sub_10022C350(&qword_100CCD748, &qword_100A6E468);
    sub_1006373E0(&qword_100CB6710, &qword_100CB6718, &qword_100A6E460, sub_100400850);
    sub_1006374F8();
    v62 = v79;
    View.staticIf<A, B>(_:then:)();
    *v101 = v98;
    *&v101[16] = v99[0];
    *&v101[27] = *(v99 + 11);
    sub_10003FDA0(v101, &qword_100CB6718);
    v63 = v91;
    v64 = v92;
    (*(v80 + 32))(v92, v62, v91);
    v65 = v64;
    v66 = 0;
    v67 = v63;
  }

  else
  {
    v67 = v91;
    v64 = v92;
    v65 = v92;
    v66 = 1;
  }

  sub_10001B350(v65, v66, 1, v67);
  v69 = v96;
  v68 = v97;
  sub_1000302D8(v96, v97, &qword_100CCD720, &qword_100A6E410);
  v70 = v93;
  sub_1000302D8(v64, v93, &qword_100CCD710, &qword_100A6E400);
  v71 = v94;
  sub_1000302D8(v68, v94, &qword_100CCD720, &qword_100A6E410);
  v72 = sub_10022C350(&qword_100CCD740, &qword_100A6E428);
  sub_1000302D8(v70, v71 + *(v72 + 48), &qword_100CCD710, &qword_100A6E400);
  sub_10003FDA0(v64, &qword_100CCD710);
  sub_10003FDA0(v69, &qword_100CCD720);
  sub_10003FDA0(v70, &qword_100CCD710);
  return sub_10003FDA0(v68, &qword_100CCD720);
}

uint64_t sub_100636478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v7 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DetailContainerView(0, a2, a3, v14);
  v16 = v15;
  if (*(a1 + *(v15 + 48) + 8))
  {
    v17 = *(v15 + 52);
    v54 = a1;
    v18 = *(a1 + v17);

    v19 = (v11 + 104);
    v20 = (v11 + 8);
    if (v18 == 1)
    {
      v21 = Image.init(_:bundle:)();
      v22 = enum case for Font.TextStyle.body(_:);
      (*v19)(v13);
      v23 = type metadata accessor for Font.Design();
      sub_10001B350(v9, 1, 1, v23);
      v24 = static Font.system(_:design:weight:)();
      sub_10003FDA0(v9, &qword_100CA4020);
      (*v20)(v13, v10);
      KeyPath = swift_getKeyPath();
      *&v61 = v21;
      *(&v61 + 1) = KeyPath;
      *v62 = v24;
      v62[8] = 0;
    }

    else
    {
      v28 = Image.init(systemName:)();
      v22 = enum case for Font.TextStyle.body(_:);
      (*v19)(v13);
      v29 = type metadata accessor for Font.Design();
      sub_10001B350(v9, 1, 1, v29);
      v30 = static Font.system(_:design:weight:)();
      sub_10003FDA0(v9, &qword_100CA4020);
      (*v20)(v13, v10);
      v31 = swift_getKeyPath();
      *&v61 = v28;
      *(&v61 + 1) = v31;
      *v62 = v30;
      v62[8] = 1;
    }

    sub_10022C350(&qword_100CA53B0, &qword_100A47610);
    sub_100270C80();
    _ConditionalContent<>.init(storage:)();
    v27 = v66;
    v57 = v63;
    v56 = v64;
    v55 = v65;
    sub_1004E00C8();
    a1 = v54;
    v26 = v22;
  }

  else
  {
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v26 = enum case for Font.TextStyle.body(_:);
    v27 = -1;
  }

  v32 = (a1 + *(v16 + 44));
  v33 = v32[1];
  v63 = *v32;
  v64 = v33;
  sub_10002D5A4();

  v34 = Text.init<A>(_:)();
  v36 = v35;
  v38 = v37;
  (*(v11 + 104))(v13, v26, v10);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  (*(v11 + 8))(v13, v10);
  v39 = Text.font(_:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_10010CD64(v34, v36, v38 & 1);

  v46 = swift_getKeyPath();
  v47 = v43 & 1;
  LOBYTE(v63) = v43 & 1;
  *&v61 = v39;
  *(&v61 + 1) = v41;
  v62[0] = v43 & 1;
  *&v62[1] = *v60;
  *&v62[4] = *&v60[3];
  *&v62[8] = v45;
  *&v62[16] = v46;
  *&v62[24] = 1;
  v62[26] = 1;
  v48 = v57;
  v49 = v56;
  v50 = v55;
  sub_1006375DC(v57, v56, v55, v27);
  sub_1000302D8(&v61, &v63, &qword_100CB6718, &qword_100A6E460);
  sub_1006375F4(v48, v49, v50, v27);
  *&v59[7] = v61;
  *&v59[23] = *v62;
  *&v59[34] = *&v62[11];
  v51 = *&v59[16];
  v52 = v58;
  *(v58 + 25) = *v59;
  *v52 = v48;
  *(v52 + 8) = v49;
  *(v52 + 16) = v50;
  *(v52 + 24) = v27;
  *(v52 + 41) = v51;
  *(v52 + 57) = *&v59[32];
  *(v52 + 73) = *&v59[48];
  v63 = v39;
  v64 = v41;
  LOBYTE(v65) = v47;
  HIDWORD(v65) = *&v60[3];
  *(&v65 + 1) = *v60;
  v66 = v45;
  v67 = v46;
  v68 = 1;
  v69 = 1;
  sub_10003FDA0(&v63, &qword_100CB6718);
  return sub_1006375F4(v48, v49, v50, v27);
}

double sub_1006369F0@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[1];
  v16 = *a1;
  v17[0] = v8;
  *(v17 + 11) = *(a1 + 27);
  v9 = static Animation.easeInOut.getter();
  v10 = *(a1 + 27);
  v11 = a1[1];
  v18 = *a1;
  *v19 = v11;
  *&v19[11] = v10;
  v12 = *v19;
  v13 = *&v19[16];
  *a4 = v18;
  *(a4 + 16) = v12;
  *(a4 + 32) = v13;
  *(a4 + 48) = v9;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  sub_1000302D8(&v16, &v15, &qword_100CB6718, &qword_100A6E460);

  return result;
}

uint64_t sub_100636A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for DetailContainerView(0, a2, a3, a4);
  v8 = *(a1 + *(v7 + 48) + 8);
  if (v8)
  {

    v8 = Image.init(systemName:)();
  }

  sub_10002D5A4();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (*(a1 + *(v7 + 56) + 8))
  {

    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    v22 = v21 & 1;
    sub_10010CD54(v16, v17, v21 & 1);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v22 = 0;
    v20 = 0;
  }

  *a5 = v8;
  *(a5 + 8) = v9;
  *(a5 + 16) = v11;
  *(a5 + 24) = v13 & 1;
  *(a5 + 32) = v15;
  *(a5 + 40) = v16;
  *(a5 + 48) = v18;
  *(a5 + 56) = v22;
  *(a5 + 64) = v20;

  sub_10010CD54(v9, v11, v13 & 1);

  sub_100148118(v16, v18, v22, v20);

  sub_10014A53C(v16, v18, v22, v20);
  sub_10014A53C(v16, v18, v22, v20);
  sub_10010CD64(v9, v11, v13 & 1);
}

void *sub_100636C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCD6C8, &qword_100A6E3A8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = __src - v6;
  v8 = static Edge.Set.horizontal.getter();
  v9 = sub_10022C350(&qword_100CCD688, &qword_100A6E388);
  (*(*(v9 - 8) + 16))(v7, a1, v9);
  v10 = &v7[*(v5 + 44)];
  *v10 = v8;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100202298(v7, a2);
  v11 = sub_10022C350(&qword_100CCD690, &qword_100A6E390);
  return memcpy((a2 + *(v11 + 36)), __src, 0x70uLL);
}

uint64_t sub_100636E14(uint64_t (*a1)(void))
{
  sub_1000206E4();
  type metadata accessor for DetailContainerView(v1, v2, v3, v4);
  sub_1000206E4();

  return a1();
}

unint64_t sub_100636EA4()
{
  result = qword_100CCD640;
  if (!qword_100CCD640)
  {
    result = swift_getWitnessTable(byte_100A81558, &type metadata for TrackVisibilityModifier, v0, v1);
    atomic_store(result, &qword_100CCD640);
  }

  return result;
}

unint64_t sub_100636EF8()
{
  result = qword_100CCD650;
  if (!qword_100CCD650)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CCD648, &qword_100A6E350);
    v4[0] = &protocol witness table for Color;
    v4[1] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCD650);
  }

  return result;
}

unint64_t sub_100636F9C()
{
  result = qword_100CCD6B8;
  if (!qword_100CCD6B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCD690, &qword_100A6E390);
    v4[0] = sub_100637028();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCD6B8);
  }

  return result;
}

unint64_t sub_100637028()
{
  result = qword_100CCD6C0;
  if (!qword_100CCD6C0)
  {
    v4[14] = v0;
    v4[15] = v1;
    v3 = sub_10022E824(&qword_100CCD6C8, &qword_100A6E3A8);
    v4[2] = sub_10022E824(&qword_100CCD698, &qword_100A6E398);
    v4[3] = sub_10022E824(&qword_100CCD6A0, &qword_100A6E3A0);
    v4[4] = sub_10023FBF4(&qword_100CCD6A8, &qword_100CCD698, &qword_100A6E398, &protocol conformance descriptor for VStack<A>);
    v4[5] = sub_10023FBF4(&qword_100CCD6B0, &qword_100CCD6A0, &qword_100A6E3A0, &protocol conformance descriptor for TupleView<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCD6C0);
  }

  return result;
}

unint64_t sub_100637190()
{
  result = qword_100CCD6D8;
  if (!qword_100CCD6D8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCD6D0, &qword_100A6E3B0);
    v4[0] = sub_100637214();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCD6D8);
  }

  return result;
}

unint64_t sub_100637214()
{
  result = qword_100CCD6E0;
  if (!qword_100CCD6E0)
  {
    v7[15] = v0;
    v7[16] = v1;
    v3 = sub_10022E824(&qword_100CCD6E8, &qword_100A6E3B8);
    sub_10022E824(&qword_100CAF690, &qword_100A6E3C0);
    v4 = sub_10022E824(&qword_100CA2CF0, &unk_100A6F8C0);
    sub_10023FBF4(&qword_100CAF698, &qword_100CAF690, &qword_100A6E3C0, &protocol conformance descriptor for Button<A>);
    v5 = sub_10023FBF4(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v7[3] = sub_10022E824(&qword_100CC5B90, &unk_100A61410);
    v7[4] = v4;
    v7[5] = sub_1006373E0(&qword_100CC5B98, &qword_100CC5B90, &unk_100A61410, sub_100578174);
    v7[6] = v5;
    v7[0] = &protocol witness table for Solarium;
    v7[1] = OpaqueTypeConformance2;
    v7[2] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, v7);
    atomic_store(result, &qword_100CCD6E0);
  }

  return result;
}

uint64_t sub_1006373E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v11[0] = a4();
    v11[1] = &protocol witness table for _FixedSizeLayout;
    v10 = sub_100007E30();
    result = swift_getWitnessTable(v10, v9, v11);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10063746C()
{
  sub_1000206E4();
  type metadata accessor for DetailContainerView(v0, v1, v2, v3);
  sub_1000206E4();
  return sub_1006358D4();
}

unint64_t sub_1006374F8()
{
  result = qword_100CCD750;
  if (!qword_100CCD750)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCD748, &qword_100A6E468);
    v4[0] = sub_1006373E0(&qword_100CB6710, &qword_100CB6718, &qword_100A6E460, sub_100400850);
    v4[1] = sub_10023FBF4(&qword_100CCD758, &unk_100CCD760, &unk_100A6E470, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCD750);
  }

  return result;
}

uint64_t sub_1006375DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1004E00C8();
  }

  return result;
}

uint64_t sub_1006375F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1004E0110();
  }

  return result;
}

uint64_t sub_100637610(uint64_t a1)
{
  countAndFlagsBits = LocationModel.name.getter();
  LocationModel.kind.getter();
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

uint64_t sub_100637758()
{
  v0 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v23 - v4;
  LocationModel.kind.getter();
  v6 = Location.Identifier.Kind.rawValue.getter();
  v8 = v7;
  if (v6 == Location.Identifier.Kind.rawValue.getter() && v8 == v9)
  {

    return LocationModel.name.getter();
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return LocationModel.name.getter();
  }

  LocationModel.location.getter();
  v12 = type metadata accessor for Location();
  if (sub_100024D10(v5, 1, v12) == 1)
  {
    sub_1000180EC(v5, &qword_100CA65D8, &unk_100A3D9D0);
  }

  else
  {
    v13 = Location.secondaryName.getter();
    v16 = v15;
    v17 = *(*(v12 - 8) + 8);
    v17(v5, v12);
    if (!v16)
    {
      return 0;
    }

    LocationModel.location.getter();
    if (sub_100024D10(v2, 1, v12) == 1)
    {
      sub_1000180EC(v2, &qword_100CA65D8, &unk_100A3D9D0);
      return v13;
    }

    v18 = Location.name.getter();
    v20 = v19;
    v17(v2, v12);
    if (v13 == v18 && v16 == v20)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        return v13;
      }
    }
  }

  return 0;
}

uint64_t sub_1006379E8()
{
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory_lastViewModel, &qword_100CA4BF8, &qword_100A2EE90);
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory_appConfigurationManager));

  return swift_deallocClassInstance();
}

uint64_t sub_100637A74(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayKind();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = 0;
  switch(sub_1004CA0C4(a1, a2))
  {
    case 1u:
      sub_10001F384();
      v35 = 34;
      goto LABEL_45;
    case 2u:
      if (qword_100CA23B8 != -1)
      {
        swift_once();
      }

      v10 = &byte_100D90638;
      goto LABEL_22;
    case 3u:
      sub_10001C8C8();
      sub_100003B48();
      v32 = 36;
      goto LABEL_39;
    case 4u:
    case 8u:
      return v9;
    case 5u:
      sub_10001F384();
      v35 = 42;
      goto LABEL_45;
    case 6u:
      if (qword_100CA23B0 != -1)
      {
        swift_once();
      }

      v10 = &byte_100D90628;
      goto LABEL_22;
    case 7u:
      sub_10001F384();
      v35 = 48;
      goto LABEL_45;
    case 9u:
      sub_10001F384();
      v35 = 38;
      goto LABEL_45;
    case 0xAu:
      if (qword_100CA23C0 != -1)
      {
        swift_once();
      }

      v10 = &byte_100D90648;
      goto LABEL_22;
    case 0xBu:
      sub_100003B48();
      v33 = 84;
      goto LABEL_43;
    case 0xCu:
      sub_10001C8C8();
      sub_100003B48();
      v32 = 86;
      goto LABEL_39;
    case 0xDu:
      sub_10001F384();
      v35 = 90;
      goto LABEL_45;
    case 0xEu:
      sub_10001F384();
      v34 = 88;
      goto LABEL_41;
    case 0xFu:
      v23 = sub_100010640();
      v24(v23);
      v13 = 15;
      goto LABEL_25;
    case 0x10u:
      v25 = enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_1000037E8();
      (*(v26 + 104))(v7, v25);
      v27 = sub_100010640();
      v28(v27);
      v13 = 16;
      goto LABEL_25;
    case 0x11u:
      v19 = enum case for WeatherMapPrecipitationOverlayKind.radar(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_1000037E8();
      (*(v20 + 104))(v7, v19);
      v21 = sub_100010640();
      v22(v21);
      v13 = 17;
      goto LABEL_25;
    case 0x12u:
      v11 = sub_100010640();
      v12(v11);
      v13 = 18;
      goto LABEL_25;
    case 0x13u:
      v29 = sub_100010640();
      v30(v29);
      v13 = 19;
LABEL_25:
      v9 = sub_10099733C(v13, v7, 1);
      (*(v5 + 8))(v7, v4);
      return v9;
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
      sub_10001C8C8();
      sub_100003B48();
      v32 = 80;
LABEL_39:
      v35 = v32;
      goto LABEL_45;
    case 0x18u:
      sub_10001F384();
      v34 = 82;
LABEL_41:
      v35 = v34;
      goto LABEL_45;
    case 0x19u:
      sub_100003B48();
      v33 = 92;
LABEL_43:
      v35 = v33;
      goto LABEL_45;
    case 0x1Au:
      sub_10001F384();
      v35 = 94;
      goto LABEL_45;
    case 0x1Bu:
      sub_100997704(v8);
      return 27;
    case 0x1Cu:
      sub_10001F384();
      v35 = 98;
LABEL_45:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    case 0x1Du:
      if (qword_100CA2788 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000703C(v14, qword_100D90CF0);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v36 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100078694(a1, a2, &v36);
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to find PerformanceTest with name: %s", v17, 0xCu);
        sub_100006F14(v18);
      }

      return 0;
    default:
      if (qword_100CA23A8 != -1)
      {
        swift_once();
      }

      v10 = &byte_100D90618;
LABEL_22:
      v9 = *v10;

      return v9;
  }
}

uint64_t sub_100638188()
{
  result = sub_1006381B0();
  byte_100D90618 = 0;
  qword_100D90620 = result;
  return result;
}

uint64_t sub_1006381B0()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v8[15];
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 0;
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 56) = &type metadata for Scroll;
  *(v4 + 64) = &off_100C53AA8;
  *(v4 + 32) = sub_100638404;
  *(v4 + 40) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A3ECD0;
  *(v5 + 56) = &type metadata for Mica;
  *(v5 + 64) = &off_100C63A98;
  *(v5 + 32) = 0;
  *(v5 + 96) = &type metadata for Delay;
  *(v5 + 104) = &off_100C500F8;
  *(v5 + 72) = 0x3FF0000000000000;
  *(v5 + 136) = &type metadata for UpdateWeather;
  *(v5 + 144) = &off_100C7B258;
  *(v5 + 112) = v3;
  *(v5 + 176) = &type metadata for Delay;
  *(v5 + 184) = &off_100C500F8;
  *(v5 + 152) = 0x3FF0000000000000;
  *(v5 + 216) = v0;
  *(v5 + 224) = &off_100C5FB58;
  v6 = sub_100042FB0((v5 + 192));
  sub_1006395C4(v2, v6, type metadata accessor for Navigate);
  *(v5 + 256) = &type metadata for Delay;
  *(v5 + 264) = &off_100C500F8;
  *(v5 + 232) = 0x3FF0000000000000;
  *(v5 + 296) = &type metadata for Measure;
  *(v5 + 304) = &off_100C4E718;
  *(v5 + 272) = v4;
  *(v5 + 336) = &type metadata for Mica;
  *(v5 + 344) = &off_100C63A98;
  *(v5 + 312) = 1;
  sub_100639624(v2, type metadata accessor for Navigate);
  return v5;
}

uint64_t sub_100638404(double a1, double a2, double a3, double a4)
{
  v13 = CGRectInset(*&a1, 10.0, 120.0);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v8 = v13.size.height * 3.0;
  sub_10022C350(&qword_100CCD900, &unk_100A6E5E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A2D320;
  *(v9 + 56) = &type metadata for Down;
  *(v9 + 64) = &off_100C4F728;
  v10 = swift_allocObject();
  *(v9 + 32) = v10;
  *(v10 + 16) = 1;
  *(v10 + 24) = x;
  *(v10 + 32) = y;
  *(v10 + 40) = width;
  *(v10 + 48) = height;
  *(v10 + 56) = v8;
  *(v9 + 96) = &type metadata for Up;
  *(v9 + 104) = &off_100C52C20;
  v11 = swift_allocObject();
  *(v9 + 72) = v11;
  *(v11 + 16) = 0;
  *(v11 + 24) = x;
  *(v11 + 32) = y;
  *(v11 + 40) = width;
  *(v11 + 48) = height;
  *(v11 + 56) = v8;
  return v9;
}

uint64_t sub_100638510()
{
  result = sub_10063853C();
  byte_100D90628 = 6;
  qword_100D90630 = result;
  return result;
}

uint64_t sub_10063853C()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v8[15];
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 0;
  v4 = sub_100638750();
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A3ECD0;
  *(v5 + 56) = &type metadata for Mica;
  *(v5 + 64) = &off_100C63A98;
  *(v5 + 32) = 0;
  *(v5 + 96) = &type metadata for Delay;
  *(v5 + 104) = &off_100C500F8;
  *(v5 + 72) = 0x3FF0000000000000;
  *(v5 + 136) = &type metadata for UpdateWeather;
  *(v5 + 144) = &off_100C7B258;
  *(v5 + 112) = v3;
  *(v5 + 176) = &type metadata for Delay;
  *(v5 + 184) = &off_100C500F8;
  *(v5 + 152) = 0x3FF0000000000000;
  *(v5 + 216) = v0;
  *(v5 + 224) = &off_100C5FB58;
  v6 = sub_100042FB0((v5 + 192));
  sub_1006395C4(v2, v6, type metadata accessor for Navigate);
  *(v5 + 256) = &type metadata for Delay;
  *(v5 + 264) = &off_100C500F8;
  *(v5 + 232) = 0x4000000000000000;
  *(v5 + 296) = &type metadata for Measure;
  *(v5 + 304) = &off_100C4E718;
  *(v5 + 272) = v4;
  *(v5 + 336) = &type metadata for Mica;
  *(v5 + 344) = &off_100C63A98;
  *(v5 + 312) = 1;
  sub_100639624(v2, type metadata accessor for Navigate);
  return v5;
}

uint64_t sub_100638750()
{
  v0 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - v1;
  v3 = type metadata accessor for DispatchAction(0);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for Location();
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Location.newYork.getter();
  Location.identifier.getter();
  type metadata accessor for ListViewAction(0);
  swift_storeEnumTagMultiPayload();
  v31 = type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for MainAction(0);
  swift_storeEnumTagMultiPayload();
  v11[*(v3 + 20)] = 1;
  v29 = *(sub_10022C350(&qword_100CBBE20, &unk_100A5C410) + 48);
  sub_10022C350(&qword_100CA38B8, &unk_100A66A90);
  (*(v13 + 16))(v8, v15, v12);
  type metadata accessor for SavedLocation();
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for LocationOfInterest();
  sub_10001B350(v2, 1, 1, v16);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  v17 = enum case for LocationModel.saved(_:);
  v18 = type metadata accessor for LocationModel();
  (*(*(v18 - 8) + 104))(v8, v17, v18);
  v8[v29] = 1;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8[*(v3 + 20)] = 1;
  v19 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
  [v19 ts_settlingDuration];
  v21 = v20;

  Location.identifier.getter();
  type metadata accessor for LocationViewerViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v5[*(v3 + 20)] = 0;
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100A3B020;
  *(v22 + 56) = v3;
  *(v22 + 64) = &off_100C798F0;
  v23 = sub_100042FB0((v22 + 32));
  sub_1006395C4(v11, v23, type metadata accessor for DispatchAction);
  *(v22 + 96) = v3;
  *(v22 + 104) = &off_100C798F0;
  v24 = sub_100042FB0((v22 + 72));
  sub_1006395C4(v8, v24, type metadata accessor for DispatchAction);
  *(v22 + 136) = &type metadata for Delay;
  *(v22 + 144) = &off_100C500F8;
  *(v22 + 112) = v21;
  *(v22 + 176) = v3;
  *(v22 + 184) = &off_100C798F0;
  v25 = sub_100042FB0((v22 + 152));
  sub_10063969C(v5, v25, v26);
  sub_100639624(v8, type metadata accessor for DispatchAction);
  sub_100639624(v11, type metadata accessor for DispatchAction);
  (*(v33 + 8))(v15, v32);
  return v22;
}

uint64_t sub_100638C00()
{
  result = sub_100638C2C();
  byte_100D90638 = 2;
  qword_100D90640 = result;
  return result;
}

uint64_t sub_100638C2C()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchAction(0);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Location.newYork.getter();
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction(0);
  swift_storeEnumTagMultiPayload();
  v5[*(v3 + 20)] = 0;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v18 = v19;
  v6 = enum case for TemperatureChartKind.actual(_:);
  v7 = type metadata accessor for TemperatureChartKind();
  (*(*(v7 - 8) + 104))(v2, v6, v7);
  v8 = enum case for DetailCondition.conditions(_:);
  v9 = type metadata accessor for DetailCondition();
  (*(*(v9 - 8) + 104))(v2, v8, v9);
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 0;
  v10 = swift_allocObject();
  v10[2] = sub_100639074;
  v10[3] = 0;
  v10[4] = 0x3FF0000000000000;
  v11 = sub_100639094(sub_10063907C, 0, 10.0);
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100A2C3F0;
  *(v12 + 56) = &type metadata for Repeat;
  *(v12 + 64) = &off_100C6E4D8;
  *(v12 + 32) = 5;
  *(v12 + 40) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100A3BCA0;
  *(v13 + 56) = &type metadata for Mica;
  *(v13 + 64) = &off_100C63A98;
  *(v13 + 32) = 0;
  *(v13 + 96) = v3;
  *(v13 + 104) = &off_100C798F0;
  v14 = sub_100042FB0((v13 + 72));
  sub_1006395C4(v5, v14, type metadata accessor for DispatchAction);
  *(v13 + 136) = &type metadata for Delay;
  *(v13 + 144) = &off_100C500F8;
  *(v13 + 112) = 0x3FF0000000000000;
  *(v13 + 176) = &type metadata for UpdateWeather;
  *(v13 + 184) = &off_100C7B258;
  *(v13 + 152) = v18;
  *(v13 + 216) = &type metadata for Delay;
  *(v13 + 224) = &off_100C500F8;
  *(v13 + 192) = 0x3FF0000000000000;
  *(v13 + 256) = v0;
  *(v13 + 264) = &off_100C5FB58;
  v15 = sub_100042FB0((v13 + 232));
  sub_1006395C4(v2, v15, type metadata accessor for Navigate);
  *(v13 + 296) = &type metadata for Delay;
  *(v13 + 304) = &off_100C500F8;
  *(v13 + 272) = 0x3FF0000000000000;
  *(v13 + 336) = &type metadata for Swipe;
  *(v13 + 344) = &off_100C5E1A0;
  *(v13 + 312) = sub_100639700;
  *(v13 + 320) = v10;
  *(v13 + 376) = &type metadata for Delay;
  *(v13 + 384) = &off_100C500F8;
  *(v13 + 352) = 0x3FF0000000000000;
  *(v13 + 416) = &type metadata for Measure;
  *(v13 + 424) = &off_100C4E718;
  *(v13 + 392) = v12;
  *(v13 + 456) = &type metadata for Mica;
  *(v13 + 464) = &off_100C63A98;
  *(v13 + 432) = 1;
  sub_100639624(v2, type metadata accessor for Navigate);
  sub_100639624(v5, type metadata accessor for DispatchAction);
  return v13;
}

uint64_t sub_100639094(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2D320;
  *(v7 + 56) = &type metadata for Swipe;
  *(v7 + 64) = &off_100C5E1A0;
  *(v7 + 32) = sub_10063967C;
  *(v7 + 40) = v6;
  *(v7 + 96) = &type metadata for Delay;
  *(v7 + 104) = &off_100C500F8;
  *(v7 + 72) = 0x3FF0000000000000;

  return v7;
}

uint64_t sub_10063916C(double (*a1)(double, double, double, double), double a2, double a3, double a4, double a5, double a6)
{
  v7 = a1(a2, a3, a4, a5);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10022C350(&qword_100CCD908, &unk_100A890B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100A2C3F0;
  *(v14 + 56) = &type metadata for Next;
  *(v14 + 64) = &off_100C6CE38;
  v15 = swift_allocObject();
  *(v14 + 32) = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = v7;
  *(v15 + 32) = v9;
  *(v15 + 40) = v11;
  *(v15 + 48) = v13;
  *(v15 + 56) = 1;
  *(v15 + 64) = a6;
  return v14;
}

uint64_t sub_100639238(double a1)
{
  result = sub_100639264(a1);
  byte_100D90648 = 10;
  qword_100D90650 = result;
  return result;
}

uint64_t sub_100639264(double a1)
{
  v1 = type metadata accessor for DispatchAction(0);
  __chkstk_darwin(v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v4 = v9[15];
  static Location.london.getter();
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction(0);
  swift_storeEnumTagMultiPayload();
  v3[*(v1 + 20)] = 0;
  v5 = sub_100639498();
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A3ECD0;
  *(v6 + 56) = &type metadata for Mica;
  *(v6 + 64) = &off_100C63A98;
  *(v6 + 32) = 0;
  *(v6 + 96) = &type metadata for Delay;
  *(v6 + 104) = &off_100C500F8;
  *(v6 + 72) = 0x3FF0000000000000;
  *(v6 + 136) = &type metadata for UpdateWeather;
  *(v6 + 144) = &off_100C7B258;
  *(v6 + 112) = v4;
  *(v6 + 176) = &type metadata for Delay;
  *(v6 + 184) = &off_100C500F8;
  *(v6 + 152) = 0x3FF0000000000000;
  *(v6 + 216) = v1;
  *(v6 + 224) = &off_100C798F0;
  v7 = sub_100042FB0((v6 + 192));
  sub_1006395C4(v3, v7, type metadata accessor for DispatchAction);
  *(v6 + 256) = &type metadata for Delay;
  *(v6 + 264) = &off_100C500F8;
  *(v6 + 232) = 0x4000000000000000;
  *(v6 + 296) = &type metadata for Measure;
  *(v6 + 304) = &off_100C4E718;
  *(v6 + 272) = v5;
  *(v6 + 336) = &type metadata for Mica;
  *(v6 + 344) = &off_100C63A98;
  *(v6 + 312) = 1;
  sub_100639624(v3, type metadata accessor for DispatchAction);
  return v6;
}

uint64_t sub_100639498()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 1;
  sub_10022C350(&qword_100CA5FF8, &unk_100A304B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A2D320;
  *(v3 + 56) = v0;
  *(v3 + 64) = &off_100C5FB58;
  v4 = sub_100042FB0((v3 + 32));
  sub_1006395C4(v2, v4, type metadata accessor for Navigate);
  *(v3 + 96) = &type metadata for Delay;
  *(v3 + 104) = &off_100C500F8;
  *(v3 + 72) = 0x4008000000000000;
  sub_100639624(v2, type metadata accessor for Navigate);
  return v3;
}

uint64_t sub_1006395C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100639624(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10063969C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for DispatchAction(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100639704(int a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v37 = a1;
  v39 = type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = type metadata accessor for DetailType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v15 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v19 = v18 - v17;
  v21 = v2[7];
  v20 = v2[8];
  sub_1000161C0(v3 + 4, v21);
  (*(*(v20 + 8) + 32))(v21);
  v22 = v3[7];
  v36 = v3[8];
  v35[1] = sub_1000161C0(v3 + 4, v22);
  v23 = *(v9 + 104);
  v24 = &enum case for DetailType.precipitationAverages(_:);
  v37 &= 1u;
  if (!v37)
  {
    v24 = &enum case for DetailType.temperatureAverages(_:);
  }

  v23(v11, *v24, v8);
  v25 = *(v9 + 32);
  v25(v14, v11, v8);
  v26 = *(v16 + 28);
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v27 + 16))(v19 + v26, v38);
  v28 = *(v16 + 32);
  v29 = enum case for DetailViewOrigin.selector(_:);
  type metadata accessor for DetailViewOrigin();
  sub_1000037E8();
  (*(v30 + 104))(v19 + v28, v29);
  v25(v19, v14, v8);
  (*(*(v36 + 8) + 24))(v19, v22);
  sub_100639C14(v19, type metadata accessor for DetailViewVisibilityTrackerModel);
  v31 = v3[2];
  v32 = v3[3];
  *v7 = v37;
  type metadata accessor for AveragesDetailViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_10004F034(v7, v40, v31, v32);
  sub_1000E17D8(v40);
  sub_10001F39C();
  return sub_100639C14(v7, v33);
}

uint64_t sub_100639A48(uint64_t a1)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  sub_100639C6C(a1, v5 - v4);
  type metadata accessor for AveragesDetailViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_10004F034(v6, v11, v8, v7);
  sub_1000E17D8(v11);
  sub_10001F39C();
  return sub_100639C14(v6, v9);
}

uint64_t sub_100639B28()
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  type metadata accessor for AveragesDetailViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v4, v9, v6, v5);
  sub_1000E17D8(v9);
  sub_10001F39C();
  return sub_100639C14(v4, v7);
}

uint64_t sub_100639C14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100639C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PrecipitationAveragesHeroChartView(uint64_t a1)
{
  result = qword_100CCDA10;
  if (!qword_100CCDA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100639D44(uint64_t a1)
{
  sub_1000077F0();
  if (v1 <= 0x3F)
  {
    sub_10044BFA8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PrecipitationAveragesHeroChartViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100639E14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCDCA8, &qword_100A6E988);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100005E40();
  v7 = sub_10022C350(&qword_100CB6978, &qword_100A4A310);
  type metadata accessor for RectangleMark();
  v17 = v7;
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3, *a1, v7);
  v9 = sub_10022C350(&qword_100CB6968, &unk_100A4A300);
  type metadata accessor for PointMark();
  type metadata accessor for BasicChartSymbolShape();
  sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape, &protocol conformance descriptor for BasicChartSymbolShape);
  v10 = *(v2 + 56);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v3 + v10, a1[1], v9);
  v12 = sub_10022C350(&qword_100CB6948, &unk_100A4A2E0);
  v13 = *(v2 + 72);
  v14 = a1[2];
  v15 = *(v12 - 8);
  (*(v15 + 16))(v3 + v13, v14, v12);
  (*(v8 + 32))(a2, v3, v17);
  (*(v11 + 32))(a2 + *(v2 + 56), v3 + v10, v9);
  return (*(v15 + 32))(a2 + *(v2 + 72), v3 + v13, v12);
}

uint64_t sub_10063A070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCDC90, &qword_100A6E938);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_100005E40();
  v6 = sub_10022C350(&qword_100CBAE28, &unk_100A6E940);
  sub_1004528C8();
  v13 = v6;
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3, *a1, v6);
  v8 = sub_10022C350(&qword_100CBAE20, &unk_100A50710);
  sub_1004529DC();
  v14 = v2[14];
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v14, a1[1], v8);
  sub_100452B80();
  v10 = v2[18];
  sub_1000302D8(a1[2], v3 + v10, &qword_100CBAC78, &qword_100A505A8);
  sub_100644088(&qword_100CBAC88, &qword_100CBAC90, &qword_100A505B0, sub_100452CF0);
  v11 = v2[22];
  sub_1000302D8(a1[3], v3 + v11, &qword_100CBAC90, &qword_100A505B0);
  (*(v7 + 32))(a2, v3, v13);
  (*(v9 + 32))(a2 + v2[14], v3 + v14, v8);
  sub_10011C0F0(v3 + v10, a2 + v2[18], &qword_100CBAC78, &qword_100A505A8);
  return sub_10011C0F0(v3 + v11, a2 + v2[22], &qword_100CBAC90, &qword_100A505B0);
}

uint64_t sub_10063A2BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCDC68, &qword_100A6E8F8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  type metadata accessor for PeakUpperMark(0);
  sub_1006446D8(&qword_100CBACA8, type metadata accessor for PeakUpperMark, byte_100A8BA7C);
  sub_100643F78(*a1, v7, type metadata accessor for PeakUpperMark);
  v8 = *(v5 + 56);
  sub_100643F78(a1[1], &v7[v8], type metadata accessor for PeakUpperMark);
  sub_10064402C(v7, a2, type metadata accessor for PeakUpperMark);
  return sub_10064402C(&v7[v8], a2 + *(v5 + 56), type metadata accessor for PeakUpperMark);
}

uint64_t sub_10063A3F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_10022C350(&qword_100CCDC70, &unk_100A6E900);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v7 = sub_10022C350(&qword_100CCDC50, &unk_100A6E8E0);
  type metadata accessor for RectangleMark();
  v8 = *a1;
  v20 = v7;
  v9 = *(v7 - 8);
  (*(v9 + 16))(v6, v8, v7);
  v10 = sub_10022C350(&qword_100CCDAE0, &qword_100A6E780);
  sub_100642D48();
  v11 = v4[14];
  v21 = v11;
  v12 = *(v10 - 8);
  v13 = *(v12 + 16);
  v13(&v6[v11], a1[1], v10);
  v14 = v4[18];
  v13(&v6[v14], a1[2], v10);
  sub_100644088(&qword_100CCDB30, &qword_100CCDB38, &qword_100A6E7D0, sub_100643218);
  v15 = v4[22];
  sub_1000302D8(a1[3], &v6[v15], &qword_100CCDB38, &qword_100A6E7D0);
  v16 = v22;
  (*(v9 + 32))(v22, v6, v20);
  v17 = *(v12 + 32);
  v17(v16 + v4[14], &v6[v21], v10);
  v17(v16 + v4[18], &v6[v14], v10);
  return sub_10011C0F0(&v6[v15], v16 + v4[22], &qword_100CCDB38, &qword_100A6E7D0);
}

uint64_t sub_10063A64C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCDC80, &qword_100A6E928);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  type metadata accessor for PeakKnockoutMark(0);
  sub_1006446D8(&qword_100CBAC80, type metadata accessor for PeakKnockoutMark, aUi);
  sub_100643F78(*a1, v7, type metadata accessor for PeakKnockoutMark);
  v8 = sub_10022C350(&qword_100CB6948, &unk_100A4A2E0);
  type metadata accessor for PointMark();
  type metadata accessor for BasicChartSymbolShape();
  sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape, &protocol conformance descriptor for BasicChartSymbolShape);
  v9 = *(v5 + 56);
  v10 = a1[1];
  v11 = *(v8 - 8);
  (*(v11 + 16))(&v7[v9], v10, v8);
  sub_10064402C(v7, a2, type metadata accessor for PeakKnockoutMark);
  return (*(v11 + 32))(a2 + *(v5 + 56), &v7[v9], v8);
}

uint64_t sub_10063A818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCDC88, &qword_100A6E930);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = sub_10022C350(&qword_100CCDC78, &qword_100A6E920);
  type metadata accessor for LineMark();
  type metadata accessor for RectangleMark();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  sub_100642FBC();
  v10 = *(v5 + 56);
  sub_1000302D8(a1[1], &v7[v10], &qword_100CCDB18, &qword_100A6E7B0);
  (*(v9 + 32))(a2, v7, v8);
  return sub_10011C0F0(&v7[v10], a2 + *(v5 + 56), &qword_100CCDB18, &qword_100A6E7B0);
}

uint64_t sub_10063A978@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCDD40, &unk_100A6E9E0);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100005E40();
  v7 = sub_10022C350(&qword_100CCDD48, &qword_100A708E0);
  sub_10023FBF4(&qword_100CCDCF0, &qword_100CCDCE8, &unk_100A6E9B0, &protocol conformance descriptor for Plot<A>);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3, *a1, v7);
  sub_1006442F4();
  v9 = *(v2 + 56);
  sub_1000302D8(a1[1], v3 + v9, &qword_100CCDD00, &unk_100A70790);
  (*(v8 + 32))(a2, v3, v7);
  return sub_10011C0F0(v3 + v9, a2 + *(v2 + 56), &qword_100CCDD00, &unk_100A70790);
}

uint64_t sub_10063AAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCDCB0, &unk_100A6E990) - 8;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  sub_100644138();
  sub_100008B5C();
  sub_1000302D8(v8, v9, v10, v11);
  sub_1006443D8();
  v12 = *(v4 + 56);
  sub_1000302D8(*(a1 + 8), &v7[v12], &qword_100CCDD10, &unk_100A6E9C0);
  sub_100008B5C();
  sub_10011C0F0(v13, v14, v15, v16);
  return sub_10011C0F0(&v7[v12], a2 + *(v4 + 56), &qword_100CCDD10, &unk_100A6E9C0);
}

uint64_t sub_10063ABE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCDD50, &unk_100A6E9F0);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100005E40();
  sub_1006445F4();
  sub_100008B5C();
  sub_1000302D8(v7, v8, v9, v10);
  v11 = type metadata accessor for ChartLineMark();
  sub_1006446D8(&qword_100CCDD70, &type metadata accessor for ChartLineMark, &protocol conformance descriptor for ChartLineMark);
  v12 = *(v2 + 56);
  v13 = *(a1 + 8);
  v14 = *(v11 - 8);
  (*(v14 + 16))(v3 + v12, v13, v11);
  sub_100008B5C();
  sub_10011C0F0(v15, v16, v17, v18);
  return (*(v14 + 32))(a2 + *(v2 + 56), v3 + v12, v11);
}

uint64_t sub_10063AD44()
{
  sub_10022C350(&qword_100CCDD78, &unk_100A6EA00);
  sub_100003828();
  __chkstk_darwin(v0);
  sub_100644720();
  sub_100008B5C();
  sub_1000302D8(v1, v2, v3, v4);
  sub_100008B5C();
  sub_1000302D8(v5, v6, v7, v8);
  sub_100008B5C();
  sub_10011C0F0(v9, v10, v11, v12);
  sub_100008B5C();
  return sub_10011C0F0(v13, v14, v15, v16);
}

uint64_t sub_10063AE2C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CCDA50, &qword_100A6E708);
  return sub_10063AE7C(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_10063AE7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = sub_10022C350(&qword_100CBAB80, &unk_100A504E0);
  __chkstk_darwin(v53);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  v50 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  __chkstk_darwin(v50);
  v10 = &v46 - v9;
  v11 = sub_10022C350(&qword_100CCDA58, &qword_100A6E710);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_10022C350(&qword_100CCDA60, &qword_100A6E718);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v52 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v54 = &v46 - v18;
  v51 = a1;
  sub_10063B3A8(a1, v13);
  v19 = enum case for DynamicTypeSize.accessibility1(_:);
  v20 = type metadata accessor for DynamicTypeSize();
  (*(*(v20 - 8) + 104))(v10, v19, v20);
  sub_1006446D8(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v47 = v14;
  v48 = a2;
  v49 = v5;
  sub_100642B84();
  sub_10023FBF4(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
  View.dynamicTypeSize<A>(_:)();
  sub_10003FDA0(v10, &unk_100CE1680);
  sub_10003FDA0(v13, &qword_100CCDA58);
  v21 = v51 + *(type metadata accessor for PrecipitationAveragesHeroChartView(0) + 24);
  v22 = *(v21 + 136);
  v23 = *(v21 + 144);
  v24 = *(v21 + 152);
  v25 = *(v21 + 160);
  type metadata accessor for ConditionDetailLegendView(0);

  Text.Measurements.init()();
  *v8 = v22;
  *(v8 + 1) = v23;
  *(v8 + 2) = v24;
  v8[24] = v25;
  if (qword_100CA2198 != -1)
  {
LABEL_5:
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5FD8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  swift_endAccess();
  v34 = static Edge.Set.all.getter();
  v35 = v52;
  v36 = &v8[*(v53 + 36)];
  *v36 = v34;
  *(v36 + 1) = v27;
  *(v36 + 2) = v29;
  *(v36 + 3) = v31;
  *(v36 + 4) = v33;
  v36[40] = 0;
  v37 = *(v15 + 16);
  v38 = v8;
  v39 = v54;
  v40 = v47;
  v37(v35, v54, v47);
  v41 = v49;
  sub_1000302D8(v38, v49, &qword_100CBAB80, &unk_100A504E0);
  v42 = v48;
  v37(v48, v35, v40);
  v43 = sub_10022C350(&qword_100CCDA80, &unk_100A6E728);
  sub_1000302D8(v41, &v42[*(v43 + 48)], &qword_100CBAB80, &unk_100A504E0);
  sub_10003FDA0(v38, &qword_100CBAB80);
  v44 = *(v15 + 8);
  v44(v39, v40);
  sub_10003FDA0(v41, &qword_100CBAB80);
  return (v44)(v35, v40);
}

uint64_t sub_10063B3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v136 = *(v3 - 8);
  v137 = v3;
  __chkstk_darwin(v3);
  v135 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v176 = *(v5 - 8);
  v177 = v5;
  __chkstk_darwin(v5);
  v175 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DynamicTypeSize();
  v173 = *(v7 - 8);
  v174 = v7;
  __chkstk_darwin(v7);
  v172 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v161);
  v167 = (&v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PrecipitationAveragesHeroChartView(0);
  v11 = v10 - 8;
  v151 = *(v10 - 8);
  v181 = *(v151 + 64);
  __chkstk_darwin(v10);
  v179 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AutomaticScaleDomain();
  v14 = *(v13 - 8);
  v157 = v13;
  v158 = v14;
  __chkstk_darwin(v13);
  v150 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CBABB8, &qword_100A50510);
  __chkstk_darwin(v16 - 8);
  v18 = &v135 - v17;
  v145 = type metadata accessor for PlotDimensionScaleRange();
  v184 = *(v145 - 8);
  __chkstk_darwin(v145);
  v20 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10022C350(&qword_100CCDA88, &qword_100A6E738);
  v144 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v135 - v22;
  v147 = sub_10022C350(&qword_100CCDA90, &qword_100A6E740);
  v149 = *(v147 - 8);
  __chkstk_darwin(v147);
  v141 = &v135 - v24;
  v25 = sub_10022C350(&qword_100CCDA98, &qword_100A6E748);
  v26 = *(v25 - 8);
  v152 = v25;
  v153 = v26;
  __chkstk_darwin(v25);
  v146 = &v135 - v27;
  v28 = sub_10022C350(&qword_100CCDAA0, &qword_100A6E750);
  v29 = *(v28 - 8);
  v154 = v28;
  v155 = v29;
  __chkstk_darwin(v28);
  v148 = &v135 - v30;
  v31 = sub_10022C350(&qword_100CCDAA8, &qword_100A6E758);
  v32 = *(v31 - 8);
  v159 = v31;
  v160 = v32;
  __chkstk_darwin(v31);
  v180 = &v135 - v33;
  v163 = sub_10022C350(&qword_100CCDAB0, &qword_100A6E760);
  __chkstk_darwin(v163);
  v156 = &v135 - v34;
  v168 = sub_10022C350(&qword_100CCDAB8, &qword_100A6E768);
  v164 = *(v168 - 8);
  __chkstk_darwin(v168);
  v162 = &v135 - v35;
  v36 = sub_10022C350(&qword_100CCDAC0, &qword_100A6E770);
  v170 = *(v36 - 8);
  v171 = v36;
  __chkstk_darwin(v36);
  v169 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v166 = &v135 - v39;
  v40 = type metadata accessor for DetailHeroChartHeaderView(0);
  v41 = v40 - 8;
  __chkstk_darwin(v40);
  v165 = &v135 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = (&v135 - v44);
  v46 = (a1 + *(v11 + 32));
  v47 = v46[1];
  v196 = *v46;
  v197 = v47;
  v48 = v46[3];
  v198 = v46[2];
  v199 = v48;
  v49 = type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  sub_100643F78(v46 + *(v49 + 56), v45 + *(v41 + 28), type metadata accessor for DetailHeroChartLollipopModel);
  v50 = v199;
  v45[2] = v198;
  v45[3] = v50;
  v51 = v197;
  *v45 = v196;
  v45[1] = v51;
  *&v193 = 0x3FF0000000000000;
  sub_1004526D8(&v196, &v190);
  sub_10014AB54();
  v182 = v45;
  ScaledMetric.init(wrappedValue:)();
  v187 = a1;
  v183 = a1;
  sub_10022C350(&qword_100CCDAC8, &qword_100A6E778);
  sub_100642C3C();
  Chart.init(content:)();
  static PositionScaleRange<>.plotDimension.getter();
  v139 = type metadata accessor for ScaleType();
  sub_10001B350(v18, 1, 1, v139);
  v138 = sub_10023FBF4(&qword_100CCDB50, &qword_100CCDA88, &qword_100A6E738, &protocol conformance descriptor for Chart<A>);
  v52 = v20;
  v53 = v21;
  v54 = v145;
  View.chartXScale<A>(range:type:)();
  v55 = v18;
  sub_10003FDA0(v18, &qword_100CBABB8);
  v56 = *(v184 + 8);
  v184 += 8;
  v140 = v56;
  v57 = v54;
  v56(v52, v54);
  (*(v144 + 1))(v23, v53);
  v144 = type metadata accessor for PrecipitationAveragesHeroChartView;
  v58 = v179;
  sub_100643F78(a1, v179, type metadata accessor for PrecipitationAveragesHeroChartView);
  v151 = *(v151 + 80);
  v59 = (v151 + 16) & ~v151;
  v142 = v59;
  v60 = swift_allocObject();
  v143 = type metadata accessor for PrecipitationAveragesHeroChartView;
  sub_10064402C(v58, v60 + v59, type metadata accessor for PrecipitationAveragesHeroChartView);
  v61 = v150;
  static ScaleDomain<>.automatic<A>(includesZero:reversed:dataType:modifyInferredDomain:)();

  static PositionScaleRange<>.plotDimension(startPadding:endPadding:)();
  sub_10001B350(v55, 1, 1, v139);
  *&v190 = v53;
  *(&v190 + 1) = v57;
  *&v191 = v138;
  *(&v191 + 1) = &protocol witness table for PlotDimensionScaleRange;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v146;
  v64 = v61;
  v65 = v147;
  v66 = v157;
  v67 = v141;
  View.chartYScale<A, B>(domain:range:type:)();
  sub_10003FDA0(v55, &qword_100CBABB8);
  v140(v52, v57);
  v68 = v64;
  v69 = v66;
  (*(v158 + 8))(v68, v66);
  (*(v149 + 8))(v67, v65);
  v70 = v183;
  v186 = v183;
  v71 = sub_10022C350(&qword_100CCDB58, &qword_100A6E7E0);
  *&v190 = v65;
  *(&v190 + 1) = v69;
  *&v191 = v57;
  *(&v191 + 1) = OpaqueTypeConformance2;
  v192.n128_u64[0] = &protocol witness table for AutomaticScaleDomain;
  v192.n128_u64[1] = &protocol witness table for PlotDimensionScaleRange;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = sub_10023FBF4(&qword_100CCDB60, &qword_100CCDB58, &qword_100A6E7E0, &protocol conformance descriptor for AxisMarks<A>);
  v74 = v148;
  v75 = v152;
  View.chartXAxis<A>(content:)();
  v76 = v75;
  (*(v153 + 8))(v63, v75);
  v185 = v70;
  v77 = sub_10022C350(&qword_100CCDB68, &qword_100A6E7E8);
  *&v190 = v76;
  *(&v190 + 1) = v71;
  *&v191 = v72;
  *(&v191 + 1) = v73;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_100643380();
  v80 = v154;
  View.chartYAxis<A>(content:)();
  (*(v155 + 8))(v74, v80);
  v81 = v179;
  sub_100643F78(v70, v179, v144);
  v82 = v142;
  v83 = swift_allocObject();
  sub_10064402C(v81, v83 + v82, v143);
  static Alignment.center.getter();
  sub_10022C350(&qword_100CBACE0, &qword_100A505D8);
  *&v190 = v80;
  *(&v190 + 1) = v77;
  *&v191 = v78;
  *(&v191 + 1) = v79;
  swift_getOpaqueTypeConformance2();
  v84 = v156;
  sub_10023FBF4(&qword_100CBACE8, &qword_100CBACE0, &qword_100A505D8, &protocol conformance descriptor for GeometryReader<A>);
  v85 = v159;
  v86 = v180;
  View.chartOverlay<A>(alignment:content:)();

  (*(v160 + 8))(v86, v85);
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F28();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v87 = &v84[*(sub_10022C350(&qword_100CCDB88, &qword_100A6E800) + 36)];
  v88 = v191;
  *v87 = v190;
  *(v87 + 1) = v88;
  *(v87 + 2) = v192;
  v89 = static Alignment.center.getter();
  v91 = v90;
  v92 = &v84[*(sub_10022C350(&qword_100CCDB90, &qword_100A6E808) + 36)];
  swift_beginAccess();
  v93 = sub_1004B5F4C();
  v94 = *(v161 + 20);
  v95 = enum case for RoundedCornerStyle.continuous(_:);
  v96 = type metadata accessor for RoundedCornerStyle();
  v97 = v84;
  v98 = v167;
  (*(*(v96 - 8) + 104))(v167 + v94, v95, v96);
  *v98 = v93;
  v98[1] = v93;
  v99 = sub_1004B5F70();
  swift_endAccess();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_100643F78(v98, v92, &type metadata accessor for RoundedRectangle);
  v100 = v92 + *(sub_10022C350(&qword_100CBACF8, &unk_100A66F00) + 36);
  v101 = v194;
  *v100 = v193;
  *(v100 + 16) = v101;
  *(v100 + 32) = v195;
  v102 = sub_10022C350(&qword_100CBAD00, &unk_100A505F0);
  *(v92 + *(v102 + 52)) = v99;
  *(v92 + *(v102 + 56)) = 256;
  v103 = static Alignment.center.getter();
  v105 = v104;
  sub_100643FD4(v98, &type metadata accessor for RoundedRectangle);
  v106 = (v92 + *(sub_10022C350(&qword_100CBAD08, &qword_100A66F10) + 36));
  *v106 = v103;
  v106[1] = v105;
  v107 = (v92 + *(sub_10022C350(&qword_100CBAD10, &qword_100A50600) + 36));
  *v107 = v89;
  v107[1] = v91;
  v108 = static Edge.Set.horizontal.getter();
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004BA278();
  swift_endAccess();
  EdgeInsets.init(_all:)();
  v109 = v163;
  v110 = v97 + *(v163 + 36);
  *v110 = v108;
  *(v110 + 8) = v111;
  *(v110 + 16) = v112;
  *(v110 + 24) = v113;
  *(v110 + 32) = v114;
  *(v110 + 40) = 0;
  v116 = v172;
  v115 = v173;
  v117 = v174;
  (*(v173 + 104))(v172, enum case for DynamicTypeSize.large(_:), v174);
  v118 = sub_100643494();
  v119 = v162;
  View.dynamicTypeSize(_:)();
  (*(v115 + 8))(v116, v117);
  sub_10003FDA0(v97, &qword_100CCDAB0);
  v120 = *v183;
  if (*(v183 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v122 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v123 = v135;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v120, 0);
    (*(v136 + 8))(v123, v137);
    v121 = v175;
    if (v188 != 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    static AccessibilityChildBehavior.contain.getter();
    goto LABEL_10;
  }

  v121 = v175;
  if (v120)
  {
    goto LABEL_9;
  }

LABEL_7:
  static AccessibilityChildBehavior.ignore.getter();
LABEL_10:
  v188 = v109;
  v189 = v118;
  swift_getOpaqueTypeConformance2();
  v124 = v166;
  v125 = v168;
  View.accessibilityElement(children:)();
  (*(v176 + 8))(v121, v177);
  (*(v164 + 8))(v119, v125);
  v126 = v165;
  sub_100643F78(v182, v165, type metadata accessor for DetailHeroChartHeaderView);
  v128 = v169;
  v127 = v170;
  v129 = *(v170 + 16);
  v130 = v171;
  v129(v169, v124, v171);
  v131 = v178;
  sub_100643F78(v126, v178, type metadata accessor for DetailHeroChartHeaderView);
  v132 = sub_10022C350(&qword_100CCDBB0, &unk_100A6E810);
  v129((v131 + *(v132 + 48)), v128, v130);
  v133 = *(v127 + 8);
  v133(v124, v130);
  sub_100643FD4(v182, type metadata accessor for DetailHeroChartHeaderView);
  v133(v128, v130);
  return sub_100643FD4(v126, type metadata accessor for DetailHeroChartHeaderView);
}

uint64_t sub_10063C814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v119 = type metadata accessor for LollipopMark(0);
  __chkstk_darwin(v119);
  v118 = &active - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
  __chkstk_darwin(active);
  v117 = &active - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CCDB48, &qword_100A6E7D8);
  __chkstk_darwin(v5 - 8);
  v125 = &active - v6;
  v120 = type metadata accessor for PeakUpperMark(0);
  __chkstk_darwin(v120);
  v124 = &active - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v123 = &active - v9;
  __chkstk_darwin(v10);
  v122 = &active - v11;
  __chkstk_darwin(v12);
  v121 = &active - v13;
  v133 = type metadata accessor for DetailHeroChartLollipopModel(0);
  __chkstk_darwin(v133);
  v141 = &active - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CCDB38, &qword_100A6E7D0);
  __chkstk_darwin(v15 - 8);
  v139 = &active - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v137 = &active - v18;
  v19 = type metadata accessor for PrecipitationAveragesHeroChartView(0);
  v20 = v19 - 8;
  v131 = *(v19 - 8);
  __chkstk_darwin(v19);
  v142 = v21;
  v132 = &active - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_10022C350(&qword_100CCDAE0, &qword_100A6E780);
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = &active - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v149 = &active - v24;
  __chkstk_darwin(v25);
  v143 = &active - v26;
  __chkstk_darwin(v27);
  v148 = &active - v28;
  v29 = sub_10022C350(&qword_100CB6970, &qword_100A70970);
  __chkstk_darwin(v29 - 8);
  v129 = type metadata accessor for RectangleMark();
  v30 = *(v129 - 1);
  __chkstk_darwin(v129);
  v32 = &active - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10022C350(&qword_100CCDC50, &unk_100A6E8E0);
  v134 = *(v147 - 8);
  __chkstk_darwin(v147);
  v146 = &active - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &active - v35;
  LocalizedStringKey.init(stringLiteral:)();
  v37 = *(v20 + 32);
  v144 = a1;
  v38 = a1 + v37;
  v130 = type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  type metadata accessor for Date();
  static PlottableValue.value(_:_:)();

  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F28();
  RectangleMark.init<A>(x:yStart:yEnd:width:)();
  LODWORD(v150) = static HierarchicalShapeStyle.tertiary.getter();
  v145 = v36;
  v39 = v129;
  ChartContent.foregroundStyle<A>(_:)();
  (*(v30 + 8))(v32, v39);
  v155 = *(v38 + 72);
  v129 = type metadata accessor for PrecipitationAveragesHeroChartView;
  v40 = v132;
  sub_100643F78(v144, v132, type metadata accessor for PrecipitationAveragesHeroChartView);
  v128 = v38;
  v41 = (*(v131 + 80) + 16) & ~*(v131 + 80);
  v42 = swift_allocObject();
  v131 = type metadata accessor for PrecipitationAveragesHeroChartView;
  sub_10064402C(v40, v42 + v41, type metadata accessor for PrecipitationAveragesHeroChartView);

  v127 = sub_10022C350(&qword_100CBAE30, &qword_100A50750);
  v126 = sub_10022C350(&qword_100CCDAF0, &qword_100A6E788);
  sub_10023FBF4(&qword_100CBAE40, &qword_100CBAE30, &qword_100A50750, &protocol conformance descriptor for [A]);
  sub_100642DCC();
  sub_1006446D8(&qword_100CCDC58, &type metadata accessor for DetailChartDataElement, &protocol conformance descriptor for DetailChartDataElement);
  ForEach<>.init(_:content:)();
  v43 = v128;
  v154 = *(v128 + 64);
  sub_100643F78(v144, v40, v129);
  v44 = swift_allocObject();
  sub_10064402C(v40, v44 + v41, v131);

  ForEach<>.init(_:content:)();
  v45 = v130;
  v46 = v141;
  sub_100643F78(v43 + *(v130 + 56), v141, type metadata accessor for DetailHeroChartLollipopModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = v117;
    sub_10064402C(v46, v117, type metadata accessor for DetailHeroChartActiveLollipopModel);
    v48 = v118;
    sub_100643F78(v47 + *(active + 20), v118, type metadata accessor for LollipopMarkModel);
    v49 = LocalizedStringKey.init(stringLiteral:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = LocalizedStringKey.init(stringLiteral:)();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_100643FD4(v47, type metadata accessor for DetailHeroChartActiveLollipopModel);
    v63 = v119;
    v64 = v48 + *(v119 + 24);
    *v64 = v56;
    *(v64 + 8) = v58;
    *(v64 + 16) = v60 & 1;
    *(v64 + 24) = v62;
    v65 = v48 + *(v63 + 20);
    *v65 = v49;
    *(v65 + 8) = v51;
    *(v65 + 16) = v53 & 1;
    *(v65 + 24) = v55;
    v66 = v137;
    sub_10064402C(v48, v137, type metadata accessor for LollipopMark);
    sub_10022C350(&qword_100CCDC60, &qword_100A6E8F0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v67 = v45;
    v68 = v121;
    sub_100643F78(v43 + *(v45 + 52), v121, type metadata accessor for PeakUpperMarkModel);
    v69 = [objc_opt_self() secondaryLabelColor];
    v70 = Color.init(_:)();
    v71 = LocalizedStringKey.init(stringLiteral:)();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = LocalizedStringKey.init(stringLiteral:)();
    v79 = v120;
    *(v68 + *(v120 + 20)) = v70;
    *(v68 + v79[6]) = 0x4024000000000000;
    v80 = v68 + v79[7];
    *v80 = v71;
    *(v80 + 8) = v73;
    *(v80 + 16) = v75 & 1;
    *(v80 + 24) = v77;
    v81 = v68 + v79[8];
    *v81 = v78;
    *(v81 + 8) = v82;
    *(v81 + 16) = v83 & 1;
    *(v81 + 24) = v84;
    v85 = v122;
    sub_100643F78(v43 + *(v67 + 48), v122, type metadata accessor for PeakUpperMarkModel);
    v86 = static Color.white.getter();
    v87 = LocalizedStringKey.init(stringLiteral:)();
    v89 = v88;
    LOBYTE(v73) = v90;
    v92 = v91;
    v93 = LocalizedStringKey.init(stringLiteral:)();
    *(v85 + v79[5]) = v86;
    *(v85 + v79[6]) = 0x4018000000000000;
    v94 = v85 + v79[7];
    *v94 = v87;
    *(v94 + 8) = v89;
    *(v94 + 16) = v73 & 1;
    *(v94 + 24) = v92;
    v95 = v85 + v79[8];
    *v95 = v93;
    *(v95 + 8) = v96;
    *(v95 + 16) = v97 & 1;
    *(v95 + 24) = v98;
    v99 = v123;
    sub_100643F78(v68, v123, type metadata accessor for PeakUpperMark);
    v150 = v99;
    v100 = v124;
    sub_100643F78(v85, v124, type metadata accessor for PeakUpperMark);
    v151 = v100;
    v101 = v125;
    sub_10063A2BC(&v150, v125);
    sub_100643FD4(v85, type metadata accessor for PeakUpperMark);
    sub_100643FD4(v68, type metadata accessor for PeakUpperMark);
    sub_100643FD4(v100, type metadata accessor for PeakUpperMark);
    sub_100643FD4(v99, type metadata accessor for PeakUpperMark);
    v66 = v137;
    sub_10011C0F0(v101, v137, &qword_100CCDB48, &qword_100A6E7D8);
    sub_10022C350(&qword_100CCDC60, &qword_100A6E8F0);
    swift_storeEnumTagMultiPayload();
    sub_100643FD4(v141, type metadata accessor for DetailHeroChartLollipopModel);
  }

  v102 = v134;
  v103 = v146;
  (*(v134 + 16))(v146, v145, v147);
  v150 = v103;
  v104 = v136;
  v105 = *(v136 + 16);
  v106 = v148;
  v107 = v149;
  v108 = v138;
  v105(v149, v148, v138);
  v151 = v107;
  v109 = v135;
  v110 = v143;
  v105(v135, v143, v108);
  v152 = v109;
  v111 = v139;
  sub_1000302D8(v66, v139, &qword_100CCDB38, &qword_100A6E7D0);
  v153 = v111;
  sub_10063A3F0(&v150, v140);
  sub_10003FDA0(v66, &qword_100CCDB38);
  v112 = *(v104 + 8);
  v112(v110, v108);
  v112(v106, v108);
  v113 = *(v102 + 8);
  v114 = v147;
  v113(v145, v147);
  sub_10003FDA0(v111, &qword_100CCDB38);
  v112(v109, v108);
  v112(v149, v108);
  return (v113)(v146, v114);
}