uint64_t sub_10001BEBC(uint64_t *a1, uint64_t a2, char **a3)
{
  v70 = a3;
  v69 = type metadata accessor for WeatherAlertEntity();
  v62 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v80 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v61 - v10;
  v12 = *a1;
  v13 = a1[1];
  static Logger.notifications.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v73 = v6;
  v78 = v13;
  v64 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    LODWORD(v81) = v15;
    v18 = v17;
    v79 = swift_slowAlloc();
    *&v83 = v79;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v82[0] = v12;

    sub_10002AA18(v13);
    type metadata accessor for SevereNotificationSubscription(0);
    v19 = v7;
    v20 = Array.description.getter();
    v22 = v21;

    v23 = v20;
    v7 = v19;
    v24 = sub_10000D9FC(v23, v22, &v83);
    v13 = v78;

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v81, "Filtering events for notification subscriptions; subscriptions=%{private,mask.hash}s", v18, 0x16u);
    sub_100006994(v79);
  }

  v75 = *(v7 + 8);
  v75(v11, v6);
  v65 = *(a2 + 376);
  result = ReferenceCountedLazy.increase()();
  v26 = 0;
  v74 = v83;
  v27 = v70[4];
  v79 = *(v27 + 2);
  v77 = v27;
  v28 = v27 + 64;
  v67 = _swiftEmptyArrayStorage;
  *&v29 = 136446210;
  v71 = v29;
  v30 = v73;
  v72 = a2;
  v76 = v7 + 8;
  v63 = v27 + 64;
LABEL_4:
  v31 = &v28[40 * v26];
  while (v79 != v26)
  {
    if (v26 >= *(v77 + 2))
    {
      __break(1u);
      return result;
    }

    v81 = v26;
    v32 = *(v31 - 4);
    v33 = *(v31 - 3);
    v34 = *(v31 - 1);
    v35 = *v31;
    v36 = *(v31 - 2);
    *&v83 = v32;
    *(&v83 + 1) = v33;
    *&v84 = v36;
    *(&v84 + 1) = v34;
    v85 = v35;

    if ((sub_10001C6FC(&v83) & 1) == 0)
    {
      v41 = v67;
      result = swift_isUniquelyReferenced_nonNull_native();
      v82[0] = v41;
      if ((result & 1) == 0)
      {
        result = sub_100014634(0, v41[2] + 1, 1);
        v41 = v82[0];
      }

      v13 = v78;
      v42 = v81;
      v28 = v63;
      v44 = v41[2];
      v43 = v41[3];
      if (v44 >= v43 >> 1)
      {
        result = sub_100014634((v43 > 1), v44 + 1, 1);
        v41 = v82[0];
      }

      v26 = v42 + 1;
      v41[2] = v44 + 1;
      v67 = v41;
      v45 = &v41[5 * v44];
      v46 = v83;
      v47 = v84;
      v45[8] = v85;
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;
      goto LABEL_4;
    }

    static Logger.notifications.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v86 = v40;
      *v39 = v71;
      *(v39 + 4) = sub_10000D9FC(v32, v33, &v86);
      _os_log_impl(&_mh_execute_header, v37, v38, "Previously handled event with identifier: %{public}s", v39, 0xCu);
      sub_100006994(v40);
      v30 = v73;
    }

    v75(v80, v30);

    v31 += 40;
    v26 = v81 + 1;
    v13 = v78;
  }

  v48 = v67;
  v49 = sub_10001CE78(v67, v64, v13);
  v78 = v50;
  v51 = v48[2];
  v76 = v49;
  if (v51)
  {
    v77 = (v62 + 8);
    v52 = v48 + 8;
    v53 = v66;
    do
    {
      v54 = *(v52 - 3);
      v55 = *(v52 - 2);
      v56 = *(v52 - 1);
      v57 = *v52;
      v82[0] = *(v52 - 4);
      v82[1] = v54;
      v82[2] = v55;
      v82[3] = v56;
      v82[4] = v57;

      NotificationStore.weatherAlerts.getter();
      if (v53)
      {
      }

      else
      {
        v81 = dispatch thunk of Table.save.getter();

        v58 = *v70;
        v79 = v70[2];
        v80 = v58;

        sub_10001CF2C(v82, v78);
        v59 = v68;
        WeatherAlertEntity.init(alertIdentifier:messageIdentifier:channelIdentifier:boundingBox:relevant:)();

        dispatch thunk of Save.entity(_:)();
        (*v77)(v59, v69);
      }

      v53 = 0;
      v52 += 5;
      --v51;
    }

    while (v51);
  }

  v86 = v76;
  sub_100003020(&qword_1000A40B8, &qword_100080FD0);
  swift_allocObject();
  v60 = Promise.init(value:)();
  ReferenceCountedLazy.decrease()();

  return v60;
}

uint64_t sub_10001C6FC(__int128 *a1)
{
  v37 = a1;
  v2 = type metadata accessor for Logger();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003020(&qword_1000A40D0, &qword_100080FF0);
  __chkstk_darwin(v5 - 8);
  v35 = v34 - v6;
  v7 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v34 - v11;
  v13 = type metadata accessor for Expression();
  v38 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v34 - v17;
  v19 = sub_100003020(&qword_1000A40D8, &qword_100080FF8);
  __chkstk_darwin(v19 - 8);
  v21 = v34 - v20;
  static Settings.Notifications.Severe.filterHandledAlerts.getter();
  sub_1000306FC(&qword_1000A3F90, v22, type metadata accessor for SevereNotificationsManager, &unk_100080E8C);
  Configurable.setting<A>(_:)();

  if (v41 != 1)
  {
    return 0;
  }

  v23 = *(v1 + 376);
  ReferenceCountedLazy.increase()();
  v36 = v41;
  NotificationStore.weatherAlerts.getter();
  v34[0] = v4;
  v34[1] = v23;
  dispatch thunk of Table.query.getter();

  v44 = *v37;
  v42 = &type metadata for String;
  v43 = &protocol witness table for String;
  v41 = v44;
  swift_bridgeObjectRetain_n();
  == infix(_:_:)();
  sub_100006994(&v41);
  v24 = type metadata accessor for OrderBy();
  sub_100006BD4(v12, 1, 1, v24);
  dispatch thunk of Query.first(_:orderBy:)();
  v37 = v24;

  sub_10000E904(v12, &qword_1000A3808, &qword_100080F70);
  v27 = v38 + 8;
  v28 = *(v38 + 8);
  v28(v18, v13);
  v29 = type metadata accessor for WeatherAlertEntity();
  v30 = sub_100007374(v21, 1, v29);
  if (v30 == 1)
  {
    v38 = v27;
    sub_10000E904(v21, &qword_1000A40D8, &qword_100080FF8);
    NotificationStore.periodicWeatherAlerts.getter();
    dispatch thunk of Table.query.getter();

    v42 = &type metadata for String;
    v43 = &protocol witness table for String;
    v41 = v44;
    == infix(_:_:)();
    sub_100006994(&v41);
    sub_100006BD4(v10, 1, 1, v37);
    v31 = v35;
    dispatch thunk of Query.first(_:orderBy:)();

    sub_10000E904(v10, &qword_1000A3808, &qword_100080F70);
    v28(v16, v13);
    v32 = type metadata accessor for PeriodicWeatherAlertEntity();
    v25 = 1;
    v33 = sub_100007374(v31, 1, v32);
    sub_10000E904(v31, &qword_1000A40D0, &qword_100080FF0);
    if (v33 == 1)
    {
      v25 = 0;
    }
  }

  else
  {
    sub_100030028(&v44);
    sub_10000E904(v21, &qword_1000A40D8, &qword_100080FF8);
    v25 = 1;
  }

  ReferenceCountedLazy.decrease()();

  return v25;
}

void *sub_10001CE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = &_swiftEmptySetSingleton;

  v6 = sub_100019204(a2, a1, &v9, sub_10001E094);

  v7 = sub_100019204(a3, a1, &v9, sub_10001E4C8);
  sub_10002A8CC(v7);
  return v6;
}

uint64_t sub_10001CF2C(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10002F9FC(v26, v7);
  v8 = Hasher._finalize()();
  v9 = a2 + 56;
  v10 = -1 << *(a2 + 32);
  v11 = v8 & ~v10;
  if (((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v24 = v7;
  v25 = ~v10;
  v12 = *(a2 + 48);
  v23 = (v7 + 32);
  while (1)
  {
    v13 = (v12 + 40 * v11);
    v14 = v13[2];
    v15 = v13[3];
    v16 = v13[4];
    v17 = *v13 == v3 && v13[1] == v4;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v18 = v14 == v5 && v15 == v6;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = *(v16 + 16);
        if (v19 == *(v24 + 16))
        {
          break;
        }
      }
    }

LABEL_21:
    v11 = (v11 + 1) & v25;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  if (v19 && v16 != v24)
  {
    v20 = (v16 + 32);
    for (i = v23; *v20 == *i; ++i)
    {
      ++v20;
      if (!--v19)
      {
        return 1;
      }
    }

    goto LABEL_21;
  }

  return 1;
}

uint64_t sub_10001D0E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v62 = a4;
  v68 = a3;
  v4 = type metadata accessor for Logger();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NotificationSubscription.Location();
  v61 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003020(&qword_1000A3FA8, &qword_100080F00);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = type metadata accessor for NotificationSubscription();
  v66 = *(v12 - 8);
  __chkstk_darwin(v12);
  v67 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Location();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v64 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v63 = &v56 - v19;
  v20 = __chkstk_darwin(v18);
  v65 = &v56 - v21;
  __chkstk_darwin(v20);
  v23 = &v56 - v22;
  sub_100037B5C();
  Location.kind.getter();
  v24 = Location.Identifier.Kind.rawValue.getter();
  v26 = v25;
  if (v24 == Location.Identifier.Kind.rawValue.getter() && v26 == v27)
  {

    goto LABEL_9;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_9:
    (*(v15 + 8))(v23, v14);
    return 1;
  }

  sub_10002FFD0();
  v30 = v12;
  v31 = v14;
  if (sub_100007374(v11, 1, v12) == 1)
  {
    (*(v15 + 8))(v23, v14);
    sub_10000E904(v11, &qword_1000A3FA8, &qword_100080F00);
    return 1;
  }

  v34 = v66;
  v33 = v67;
  (*(v66 + 32))(v67, v11, v30);
  if ((NotificationSubscription.severeEnabled.getter() & 1) == 0)
  {
    (*(v34 + 8))(v33, v30);
    (*(v15 + 8))(v23, v31);
    return 1;
  }

  NotificationSubscription.location.getter();
  v35 = v65;
  NotificationSubscription.Location.locationOverride.getter();
  (*(v61 + 8))(v8, v6);
  sub_1000032B8(v62 + 37, v62[40]);
  if ((dispatch thunk of NotificationLocationComparatorType.areLocationsEquivalent(_:_:)() & 1) == 0)
  {
    v54 = *(v15 + 8);
    v54(v35, v31);
    (*(v34 + 8))(v33, v30);
    v54(v23, v31);
    return 1;
  }

  v36 = v60;
  static Logger.notifications.getter();
  v37 = *(v15 + 16);
  v37(v63, v23, v31);
  v37(v64, v35, v31);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v69 = v62;
    *v40 = 141558787;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    sub_1000306FC(&qword_1000A40B0, 255, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    v68 = v30;
    LODWORD(v61) = v39;
    v41 = v63;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v38;
    v43 = v42;
    v45 = v44;
    v46 = *(v15 + 8);
    v46(v41, v31);
    v47 = sub_10000D9FC(v43, v45, &v69);

    *(v40 + 14) = v47;
    *(v40 + 22) = 2160;
    *(v40 + 24) = 1752392040;
    *(v40 + 32) = 2081;
    v48 = v64;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v46(v48, v31);
    v52 = sub_10000D9FC(v49, v51, &v69);

    *(v40 + 34) = v52;
    v53 = v57;
    _os_log_impl(&_mh_execute_header, v57, v61, "Suppressing notifications for location because it's near current location, subscriptionLocation=%{private,mask.hash}s, currentLocation=%{private,mask.hash}s", v40, 0x2Au);
    swift_arrayDestroy();

    (*(v58 + 8))(v60, v59);
    v46(v65, v31);
    (*(v34 + 8))(v67, v68);
    v46(v23, v31);
  }

  else
  {

    v55 = *(v15 + 8);
    v55(v64, v31);
    v55(v63, v31);
    (*(v58 + 8))(v36, v59);
    v55(v35, v31);
    (*(v34 + 8))(v33, v30);
    v55(v23, v31);
  }

  return 0;
}

uint64_t sub_10001D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v65 = a2;
  v7 = type metadata accessor for SevereMessage(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v66 = v9;
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SevereNotificationSubscription(0);
  v61 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v62 = v13;
  v63 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v53 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v64 = a3;
  sub_1000304B0();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v60 = v21;
  if (os_log_type_enabled(v20, v21))
  {
    v55 = v20;
    v56 = v8;
    v57 = v10;
    v59 = v4;
    v22 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v68 = v53;
    v54 = v22;
    *v22 = 136446723;
    v23 = *(a1 + 16);
    v58 = a1;
    v24 = (a1 + 40);
    v25 = _swiftEmptyArrayStorage;
    for (i = v15; v23; v15 = i)
    {
      v26 = v19;
      v27 = v17;
      v28 = v16;
      v30 = *(v24 - 1);
      v29 = *v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005B5C4();
        v25 = v33;
      }

      v31 = v25[2];
      if (v31 >= v25[3] >> 1)
      {
        sub_10005B5C4();
        v25 = v34;
      }

      v25[2] = v31 + 1;
      v32 = &v25[2 * v31];
      v32[4] = v30;
      v32[5] = v29;
      v24 += 5;
      --v23;
      v16 = v28;
      v17 = v27;
      v19 = v26;
    }

    v35 = Array.description.getter();
    v36 = v15;
    v38 = v37;

    v39 = sub_10000D9FC(v35, v38, &v68);

    v40 = v54;
    *(v54 + 1) = v39;
    *(v40 + 6) = 2160;
    *(v40 + 14) = 1752392040;
    *(v40 + 11) = 2081;
    sub_1000383B8();
    v42 = v41;
    v44 = v43;
    sub_100030508(v36);
    v45 = sub_10000D9FC(v42, v44, &v68);

    *(v40 + 3) = v45;
    v46 = v55;
    _os_log_impl(&_mh_execute_header, v55, v60, "Handling severe events for subscription; eventIdentifiers=%{public}s, subscription=%{private,mask.hash}s", v40, 0x20u);
    swift_arrayDestroy();

    (*(v17 + 8))(v19, v16);
    a1 = v58;
    v4 = v59;
  }

  else
  {

    sub_100030508(v15);
    (*(v17 + 8))(v19, v16);
  }

  sub_1000304B0();
  sub_1000304B0();
  v47 = swift_allocObject();
  *(v47 + 16) = a1;
  *(v47 + 24) = v4;
  sub_10002FEA4();
  sub_10002FEA4();
  v48 = objc_allocWithZone(sub_100003020(&qword_1000A3F98, &qword_100080EE8));

  v49 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A3538, &qword_100080EF0);
  v50 = v49;
  v51 = Promise.__allocating_init(_:scheduleOn:)();

  return v51;
}

uint64_t sub_10001DF4C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
  result = a2(a1, *(a1 + *(v6 + 48)));
  *a3 = result;
  return result;
}

uint64_t sub_10001DFBC(uint64_t *a1)
{
  sub_100003020(&qword_1000A3538, &qword_100080EF0);
  v1 = zalgo.getter();
  sub_100003020(&qword_1000A3FD8, &qword_100080F20);
  sub_100006CD0(&qword_1000A3FE0, &qword_1000A3FD8, &qword_100080F20, &protocol conformance descriptor for [A]);
  v2 = static Promise.all<A>(on:_:)();

  return v2;
}

uint64_t sub_10001E094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SevereNotificationSubscription(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;

  v14 = sub_100018AE4(sub_10003007C, v35, a2);
  if (*(v14 + 16))
  {

    sub_10001E3F8(v15);
    v16 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
    v17 = *(v16 + 48);
    sub_1000304B0();
    *(a3 + v17) = v14;
    v18 = a3;
    v19 = 0;
    v20 = v16;
  }

  else
  {
    v34 = v11;

    static Logger.notifications.getter();
    sub_1000304B0();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v3;
      v24 = v23;
      v32 = swift_slowAlloc();
      v37 = v32;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      sub_1000383B8();
      v26 = v25;
      v28 = v27;
      sub_100030508(v9);
      v29 = sub_10000D9FC(v26, v28, &v37);

      *(v24 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "None of the events are relevant to subscription; subscription=%{private,mask.hash}s", v24, 0x16u);
      sub_100006994(v32);
    }

    else
    {

      sub_100030508(v9);
    }

    (*(v34 + 8))(v13, v10);
    v20 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
    v18 = a3;
    v19 = 1;
  }

  return sub_100006BD4(v18, v19, 1, v20);
}

uint64_t sub_10001E3F8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 64);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 - 4);
    v5 = *(v4 - 3);
    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    v9 = *v4;
    v4 += 5;
    v11[0] = v6;
    v11[1] = v5;
    v11[2] = v7;
    v11[3] = v8;
    v11[4] = v9;
    ++v2;

    sub_10002C7B8(&v10, v11);
  }
}

uint64_t sub_10001E4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for SevereNotificationSubscription(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v39 = a3;

  v16 = sub_100018AE4(sub_10002FF54, v37, a2);
  if (*(v16 + 16))
  {

    sub_10001E3F8(v17);
    v18 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
    v19 = *(v18 + 48);
    sub_1000304B0();
    *(a4 + v19) = v16;
    v20 = a4;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v36 = v13;

    static Logger.notifications.getter();
    sub_1000304B0();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = v4;
      v26 = v25;
      v34 = swift_slowAlloc();
      v40 = v34;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      sub_1000383B8();
      v28 = v27;
      v30 = v29;
      sub_100030508(v11);
      v31 = sub_10000D9FC(v28, v30, &v40);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "None of the events are relevant to subscription; subscription=%{private,mask.hash}s", v26, 0x16u);
      sub_100006994(v34);
    }

    else
    {

      sub_100030508(v11);
    }

    (*(v36 + 8))(v15, v12);
    v22 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
    v20 = a4;
    v21 = 1;
  }

  return sub_100006BD4(v20, v21, 1, v22);
}

uint64_t sub_10001E82C(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for SevereNotificationSubscription(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v32 = *a1;
  v33 = v13;
  v34 = *(a1 + 4);
  if ((sub_10007BF9C() & 1) == 0)
  {
    return 0;
  }

  v14 = *a3;

  v15 = sub_10001CF2C(&v32, v14);

  if ((v15 & 1) == 0)
  {
    return 1;
  }

  v30 = v3;
  static Logger.notifications.getter();
  v16 = *(&v32 + 1);
  v29 = v32;
  v35 = v33;
  v36 = v34;
  sub_1000304B0();

  sub_10002FF74(&v35, v31);
  sub_10002FFD0();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  sub_100030028(&v35);
  sub_10000E904(&v36, &qword_1000A3BC8, &qword_100080AD8);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31[0] = v28;
    *v19 = 136446723;
    *(v19 + 4) = sub_10000D9FC(v29, v16, v31);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    v20 = v18;
    sub_1000383B8();
    v22 = v21;
    v24 = v23;
    sub_100030508(v8);
    v25 = sub_10000D9FC(v22, v24, v31);

    *(v19 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v17, v20, "Filtering out event that was relevant for another subscription; Event will not be handled by this subscription; event=%{public}s, subscription=%{private,mask.hash}s", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100030508(v8);
  }

  (*(v10 + 8))(v12, v9);
  return 0;
}

uint64_t sub_10001EBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a2;
  v21[1] = a3;
  v5 = type metadata accessor for SevereMessage(0);
  v22 = *(v5 - 8);
  v21[6] = *(v22 + 64);
  __chkstk_darwin(v5 - 8);
  v21[5] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SevereNotificationSubscription(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = a1;

  sub_100003020(&qword_1000A3FF0, &qword_100080F30);
  firstly<A>(on:closure:)();

  v11 = static OS_dispatch_queue.notifications.getter();
  v21[0] = type metadata accessor for SevereNotificationSubscription;
  sub_1000304B0();
  v12 = *(v8 + 80);
  v21[2] = ((v12 + 24) & ~v12) + v9;
  v21[4] = v12 | 7;
  *(swift_allocObject() + 16) = v24;
  v21[3] = type metadata accessor for SevereNotificationSubscription;
  sub_10002FEA4();

  sub_100003020(&qword_1000A3FF8, &qword_100080F38);
  sub_100006CD0(&qword_1000A4000, &qword_1000A3FF0, &qword_100080F30, &protocol conformance descriptor for [A]);
  Promise<A>.compactMap<A>(on:closure:)();

  v13 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4008, &qword_100080F40);
  Promise.then<A>(on:closure:)();

  v14 = static OS_dispatch_queue.notifications.getter();
  type metadata accessor for WeatherAlert();
  sub_100006CD0(&qword_1000A4010, &qword_1000A4008, &qword_100080F40, &protocol conformance descriptor for [A]);
  Promise<A>.compactMap<A>(on:closure:)();

  v15 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4018, &qword_100080F48);
  Promise.then<A>(on:closure:)();

  sub_1000304B0();
  sub_1000304B0();
  *(swift_allocObject() + 16) = v24;
  sub_10002FEA4();
  sub_10002FEA4();

  v16 = zalgo.getter();
  sub_100003020(&qword_1000A4020, &qword_100080F50);
  sub_100006CD0(&qword_1000A4028, &qword_1000A4018, &qword_100080F48, &protocol conformance descriptor for [A]);
  Promise<A>.compactMap<A>(on:closure:)();

  v17 = zalgo.getter();
  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  Promise.then<A>(on:closure:)();

  v18 = zalgo.getter();
  v19 = Promise.error(on:closure:)();

  return v19;
}

uint64_t sub_10001F174(uint64_t a1)
{
  sub_100003020(&qword_1000A40A8, &qword_100080FC8);
  swift_allocObject();

  return Promise.init(value:)();
}

uint64_t sub_10001F1E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>)
{
  result = sub_10001F224(*a1, a1[1], a3);
  *a2 = result;
  return result;
}

uint64_t sub_10001F224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SevereNotificationSubscription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.notifications.getter();
  sub_1000304B0();
  v10 = *(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_10002FEA4();
  type metadata accessor for WeatherAlert();

  firstly<A, B>(on:disposeOn:closure:)();

  sub_1000304B0();
  v12 = (v8 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  sub_10002FEA4();
  *(v13 + v12) = v3;

  v14 = zalgo.getter();
  sub_100003020(&qword_1000A3E30, &unk_100080CE0);
  v15 = Promise.then<A>(on:closure:)();

  return v15;
}

uint64_t sub_10001F4AC(uint64_t *a1)
{
  sub_100003020(&qword_1000A3FF8, &qword_100080F38);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v1 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4090, &unk_100080FB0);
  sub_100006CD0(&qword_1000A4098, &qword_1000A4090, &unk_100080FB0, &protocol conformance descriptor for [A]);
  v2 = static Promise.all<A>(on:_:)();

  return v2;
}

uint64_t sub_10001F5D4(void **a1)
{
  sub_100003020(&qword_1000A3B88, &qword_100080FA0);
  sub_100006CD0(&qword_1000A4080, &qword_1000A3B88, &qword_100080FA0, &protocol conformance descriptor for [A]);
  v1 = Sequence.groupedBy<A>(_:)();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100014654(0, v2, 0);
    result = sub_10002FA68(v1);
    v6 = result;
    v7 = 0;
    v8 = v1 + 64;
    v21 = v4;
    v22 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_23;
      }

      v24 = v4;
      v23 = v5;
      v10 = *(*(v1 + 56) + 8 * v6);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v12 >= v11 >> 1)
      {
        result = sub_100014654((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
      v13 = 1 << *(v1 + 32);
      if (v6 >= v13)
      {
        goto LABEL_24;
      }

      v8 = v1 + 64;
      v14 = *(v1 + 64 + 8 * v9);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v1 + 36) != v24)
      {
        goto LABEL_26;
      }

      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v13 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v9 << 6;
        v17 = v9 + 1;
        v18 = (v1 + 72 + 8 * v9);
        while (v17 < (v13 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_10002FAA8(v6, v24, v23 & 1);
            v13 = __clz(__rbit64(v19)) + v16;
            goto LABEL_19;
          }
        }

        result = sub_10002FAA8(v6, v24, v23 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v7;
      v6 = v13;
      v4 = v21;
      if (v7 == v22)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:

    sub_100003020(&qword_1000A4088, &qword_100080FA8);
    swift_allocObject();
    return Promise.init(value:)();
  }

  return result;
}

uint64_t sub_10001F8D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100075D5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001F904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a3;
  v71 = *v3;
  v72 = v3;
  v6 = type metadata accessor for SevereMessage(0);
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  __chkstk_darwin(v6 - 8);
  v70 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UUID();
  v63 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for WeatherAlert();
  v78 = *(v75 - 8);
  __chkstk_darwin(v75);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SevereNotificationSubscription(0);
  v65 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v66 = v13;
  v67 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v53 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v20 = a2;
  sub_1000304B0();

  v21 = Logger.logObject.getter();
  LODWORD(a2) = static os_log_type_t.default.getter();

  v64 = a2;
  if (os_log_type_enabled(v21, a2))
  {
    v55 = v21;
    v56 = v15;
    v57 = v19;
    v58 = v17;
    v60 = v20;
    v61 = v7;
    v22 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v79[0] = v53;
    v54 = v22;
    *v22 = 136446723;
    v23 = *(a1 + 16);
    v62 = a1;
    v59 = v16;
    if (v23)
    {
      v24 = *(v78 + 16);
      v25 = a1 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v73 = *(v78 + 72);
      v74 = v24;
      v26 = (v63 + 8);
      v78 += 16;
      v27 = (v78 - 8);
      v28 = _swiftEmptyArrayStorage;
      do
      {
        v29 = v75;
        v74(v10, v25, v75);
        v30 = v76;
        WeatherAlert.id.getter();
        v31 = UUID.uuidString.getter();
        v33 = v32;
        (*v26)(v30, v77);
        (*v27)(v10, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005B5C4();
          v28 = v36;
        }

        v34 = v28[2];
        if (v34 >= v28[3] >> 1)
        {
          sub_10005B5C4();
          v28 = v37;
        }

        v28[2] = v34 + 1;
        v35 = &v28[2 * v34];
        v35[4] = v31;
        v35[5] = v33;
        v25 += v73;
        --v23;
      }

      while (v23);
    }

    v38 = Array.description.getter();
    v40 = v39;

    v41 = sub_10000D9FC(v38, v40, v79);

    v42 = v54;
    *(v54 + 1) = v41;
    *(v42 + 6) = 2160;
    *(v42 + 14) = 1752392040;
    *(v42 + 11) = 2081;
    v43 = v56;
    sub_1000383B8();
    v45 = v44;
    v47 = v46;
    sub_100030508(v43);
    v48 = sub_10000D9FC(v45, v47, v79);

    *(v42 + 3) = v48;
    v49 = v55;
    _os_log_impl(&_mh_execute_header, v55, v64, "Deliver notification for alerts; alerts=%{public}s, subscription=%{private,mask.hash}s", v42, 0x20u);
    swift_arrayDestroy();

    (*(v58 + 8))(v57, v59);
    a1 = v62;
  }

  else
  {

    sub_100030508(v15);
    (*(v17 + 8))(v19, v16);
  }

  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v50 = static OS_dispatch_queue.notifications.getter();
  sub_1000304B0();
  sub_1000304B0();
  *(swift_allocObject() + 16) = a1;
  sub_10002FEA4();
  sub_10002FEA4();

  v51 = firstly<A, B>(on:disposeOn:closure:)();

  return v51;
}

uint64_t sub_1000200CC(uint64_t *a1)
{
  sub_100003020(&qword_1000A4020, &qword_100080F50);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v1 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4038, &unk_100080F60);
  sub_100006CD0(&qword_1000A4040, &qword_1000A4038, &unk_100080F60, &protocol conformance descriptor for [A]);
  v2 = static Promise.all<A>(on:_:)();

  return v2;
}

void sub_1000201B8(uint64_t a1)
{
  if (qword_1000A3258 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002FE8(v1, static Logger.daemon);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 141558275;
    *(v3 + 4) = 1752392040;
    *(v3 + 12) = 2113;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Cannot handle severe message event. error=%{private,mask.hash}@", v3, 0x16u);
    sub_10000E904(v4, &qword_1000A4030, &qword_100080F58);
  }
}

uint64_t sub_100020328(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Location();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8((a1 + 96), *(a1 + 120));
  sub_100037B5C();
  v10 = sub_100069254(a2, a3, v9);
  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_10002043C(uint64_t a1, uint64_t a2, void *a3)
{
  v134 = a2;
  v118 = *a3;
  v119 = a3;
  v116 = type metadata accessor for Date();
  v115 = *(v116 - 8);
  v4 = __chkstk_darwin(v116);
  v114 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v113 = &v109 - v6;
  v7 = sub_100003020(&qword_1000A3E30, &unk_100080CE0);
  __chkstk_darwin(v7 - 8);
  v131 = &v109 - v8;
  v9 = type metadata accessor for UUID();
  v121 = *(v9 - 8);
  v122 = v9;
  __chkstk_darwin(v9);
  v123 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WeatherAlert();
  v129 = *(v11 - 8);
  v130 = v11;
  v12 = __chkstk_darwin(v11);
  v125 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v124 = (&v109 - v15);
  __chkstk_darwin(v14);
  v110 = &v109 - v16;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v126 = v17;
  v127 = v18;
  v19 = __chkstk_darwin(v17);
  v133 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v112 = &v109 - v21;
  v120 = type metadata accessor for SevereNotificationSubscription(0);
  v22 = __chkstk_darwin(v120);
  v132 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v111 = &v109 - v25;
  __chkstk_darwin(v24);
  v27 = &v109 - v26;
  v28 = type metadata accessor for ResolvedPredictedLocation(0);
  __chkstk_darwin(v28 - 8);
  v117 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Location();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100003020(&qword_1000A3540, &unk_100080520);
  __chkstk_darwin(v34 - 8);
  v36 = &v109 - v35;
  v37 = sub_100003020(&qword_1000A3548, &qword_100080FC0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v109 - v39;
  v128 = a1;
  WeatherAlert.area.getter();
  if (sub_100007374(v36, 1, v37) == 1)
  {
    sub_10000E904(v36, &qword_1000A3540, &unk_100080520);
LABEL_8:
    v53 = v130;
    v54 = v133;
    static Logger.notifications.getter();
    v55 = v129;
    v56 = v125;
    (*(v129 + 16))(v125, v128, v53);
    v57 = v132;
    sub_1000304B0();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v135 = v134;
      *v60 = 136446723;
      LODWORD(v130) = v59;
      v61 = v53;
      v62 = v123;
      WeatherAlert.id.getter();
      sub_1000306FC(&qword_1000A40A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63 = v122;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v67 = v62;
      v53 = v61;
      (*(v121 + 8))(v67, v63);
      (*(v55 + 8))(v56, v61);
      v68 = sub_10000D9FC(v64, v66, &v135);

      *(v60 + 4) = v68;
      *(v60 + 12) = 2160;
      *(v60 + 14) = 1752392040;
      *(v60 + 22) = 2081;
      v69 = v132;
      sub_1000383B8();
      v71 = v70;
      v73 = v72;
      sub_100030508(v69);
      v74 = sub_10000D9FC(v71, v73, &v135);

      *(v60 + 24) = v74;
      _os_log_impl(&_mh_execute_header, v58, v130, "Filtering out weather alert that does not apply to subscription; alert=%{public}s, subscription=%{private,mask.hash}s", v60, 0x20u);
      swift_arrayDestroy();

      (*(v127 + 8))(v133, v126);
    }

    else
    {

      sub_100030508(v57);
      (*(v55 + 8))(v56, v53);
      (*(v127 + 8))(v54, v126);
    }

    sub_100006BD4(v131, 1, 1, v53);
    sub_100003020(&qword_1000A3FF8, &qword_100080F38);
    swift_allocObject();
    return Promise.init(value:)();
  }

  (*(v38 + 32))(v40, v36, v37);
  sub_100037B5C();
  Location.coordinate.getter();
  v42 = v41;
  v44 = v43;
  (*(v31 + 8))(v33, v30);
  v45 = v37;
  if (!GeoJSON.contains(_:)(__PAIR128__(v44, v42)))
  {
    (*(v38 + 8))(v40, v37);
    goto LABEL_8;
  }

  sub_1000304B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = v130;
  v48 = v38;
  if (EnumCaseMultiPayload == 1)
  {
    v49 = v117;
    sub_10002FEA4();
    v50 = v128;
    v51 = sub_1000766F0(v49);
    v52 = v129;
    if ((v51 & 1) == 0)
    {
      v83 = v48;
      v132 = v40;
      v84 = v112;
      static Logger.notifications.getter();
      v85 = v110;
      (*(v52 + 16))(v110, v50, v47);
      v86 = v111;
      sub_1000304B0();
      v87 = Logger.logObject.getter();
      LODWORD(v128) = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v87, v128))
      {
        v88 = swift_slowAlloc();
        v134 = v83;
        v89 = v85;
        v90 = v88;
        v125 = swift_slowAlloc();
        v135 = v125;
        *v90 = 136446723;
        v91 = v47;
        v92 = v123;
        v124 = v87;
        WeatherAlert.id.getter();
        sub_1000306FC(&qword_1000A40A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v93 = v122;
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v133 = v45;
        v96 = v95;
        v97 = v92;
        v47 = v91;
        (*(v121 + 8))(v97, v93);
        (*(v52 + 8))(v89, v91);
        v98 = sub_10000D9FC(v94, v96, &v135);

        *(v90 + 4) = v98;
        *(v90 + 12) = 2160;
        *(v90 + 14) = 1752392040;
        *(v90 + 22) = 2081;
        v99 = v111;
        sub_1000383B8();
        v101 = v100;
        v103 = v102;
        sub_100030508(v99);
        v104 = sub_10000D9FC(v101, v103, &v135);
        v45 = v133;

        *(v90 + 24) = v104;
        v105 = v124;
        _os_log_impl(&_mh_execute_header, v124, v128, "Filtering out weather alert that is not relevant to subscription; alert=%{public}s, subscription=%{private,mask.hash}s", v90, 0x20u);
        swift_arrayDestroy();
        v106 = v132;

        v107 = v134;

        (*(v127 + 8))(v112, v126);
      }

      else
      {

        sub_100030508(v86);
        (*(v52 + 8))(v85, v47);
        (*(v127 + 8))(v84, v126);
        v106 = v132;
        v107 = v83;
      }

      sub_100006BD4(v131, 1, 1, v47);
      sub_100003020(&qword_1000A3FF8, &qword_100080F38);
      swift_allocObject();
      v75 = Promise.init(value:)();
      sub_100030508(v49);
      (*(v107 + 8))(v106, v45);
      return v75;
    }

    sub_100030508(v49);
  }

  else
  {
    sub_100030508(v27);
    v52 = v129;
  }

  v76 = v124;
  sub_100077D84(v124);
  static Settings.Notifications.Severe.simulateAlertUpdates.getter();
  sub_1000306FC(&qword_1000A3F90, v77, type metadata accessor for SevereNotificationsManager, &unk_100080E8C);
  Configurable.setting<A>(_:)();

  if (v135 == 1)
  {
    UUID.init()();
    WeatherAlert.id.setter();
    v78 = v114;
    WeatherAlert.issuedTime.getter();
    sub_10002F8F8(0.0, 1000.0);
    v133 = v37;
    Date.addingTimeInterval(_:)();
    v134 = v48;
    v79 = *(v115 + 8);
    v80 = v116;
    v79(v78, v116);
    WeatherAlert.issuedTime.setter();
    WeatherAlert.expireTime.getter();
    sub_10002F8F8(0.0, 10000.0);
    Date.addingTimeInterval(_:)();
    v81 = v78;
    v76 = v124;
    v79(v81, v80);
    v45 = v133;
    v48 = v134;
    WeatherAlert.expireTime.setter();
  }

  v82 = v131;
  (*(v52 + 16))(v131, v76, v47);
  sub_100006BD4(v82, 0, 1, v47);
  sub_100003020(&qword_1000A3FF8, &qword_100080F38);
  swift_allocObject();
  v75 = Promise.init(value:)();
  (*(v52 + 8))(v76, v47);
  (*(v48 + 8))(v40, v45);
  return v75;
}

uint64_t sub_10002138C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100003020(&qword_1000A3E30, &unk_100080CE0);
  __chkstk_darwin(v8 - 8);
  v153 = &v118 - v9;
  v152 = type metadata accessor for SevereNotificationEntity();
  v154 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SevereNotification(0);
  v135 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = (&v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v18 = (&v118 - v17);
  v19 = __chkstk_darwin(v16);
  v134 = &v118 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = (&v118 - v22);
  v136 = v24;
  __chkstk_darwin(v21);
  v143 = (&v118 - v25);
  v26 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  __chkstk_darwin(v26 - 8);
  v147 = &v118 - v27;
  v142 = type metadata accessor for Expression();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for UUID();
  v155 = *(v161 - 8);
  __chkstk_darwin(v161);
  v160 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for WeatherAlert();
  v144 = *(v166 - 8);
  v30 = __chkstk_darwin(v166);
  v148 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v159 = &v118 - v32;
  v33 = type metadata accessor for SevereNotificationSubscription(0);
  __chkstk_darwin(v33 - 8);
  v149 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for Logger();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v150 = (&v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Settings.Notifications.Severe.filterHandledAlerts.getter();
  v36 = type metadata accessor for SevereNotificationsManager();
  sub_1000306FC(&qword_1000A3F90, v37, type metadata accessor for SevereNotificationsManager, &unk_100080E8C);
  v133 = v36;
  Configurable.setting<A>(_:)();

  if (v162 != 1)
  {
    v67 = v158;
    sub_100022724(a2, a3, a4, v15);
    if (!v67)
    {
      sub_1000032B8(a1 + 22, a1[25]);
      sub_100032A48();
      a3 = v68;
      sub_100030508(v15);
    }

    return a3;
  }

  v131 = v23;
  v38 = a1[47];
  v39 = ReferenceCountedLazy.increase()();
  v40 = v162;
  __chkstk_darwin(v39);
  *(&v118 - 2) = v40;
  *(&v118 - 1) = a3;
  v41 = v158;
  v42 = sub_100023390(&_swiftEmptySetSingleton, sub_10002BF18, (&v118 - 4), a2);
  v132 = v41;
  if (*(v42 + 16) != 1)
  {

    goto LABEL_16;
  }

  v130 = sub_100015F60(v42);
  v44 = v43;

  if (!v44)
  {
LABEL_16:
    v69 = v18;
    v70 = a2;
    v71 = a3;
    v72 = a4;
    v73 = v132;
LABEL_22:
    sub_100022724(v70, v71, v72, v69);
    if (v73)
    {
      ReferenceCountedLazy.decrease()();

      return a3;
    }

    sub_1000032B8(a1 + 22, a1[25]);
    sub_100032A48();
    a3 = v92;
    sub_100030508(v18);
    ReferenceCountedLazy.decrease()();
LABEL_26:

    return a3;
  }

  v125 = a4;
  v127 = a1;
  v45 = v150;
  static Logger.notifications.getter();
  v46 = v149;
  sub_1000304B0();

  v47 = v38;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v123 = v49;
  v50 = os_log_type_enabled(v48, v49);
  v129 = v47;
  v124 = a2;
  v128 = v40;
  v126 = v44;
  if (v50)
  {
    v121 = v48;
    v122 = a3;
    v51 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v162 = v119;
    *v51 = 136315907;
    *(v51 + 4) = sub_10000D9FC(v130, v44, &v162);
    v120 = v51;
    *(v51 + 12) = 2082;
    v52 = *(a2 + 16);
    if (v52)
    {
      v53 = *(v144 + 16);
      v54 = a2 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
      v156 = *(v144 + 72);
      v157 = v53;
      ++v155;
      v158 = (v144 + 16);
      v55 = (v144 + 8);
      v56 = _swiftEmptyArrayStorage;
      do
      {
        v57 = v159;
        v58 = v166;
        v157(v159, v54, v166);
        v59 = v160;
        WeatherAlert.id.getter();
        v60 = UUID.uuidString.getter();
        v62 = v61;
        (*v155)(v59, v161);
        (*v55)(v57, v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005B5C4();
          v56 = v65;
        }

        v63 = v56[2];
        if (v63 >= v56[3] >> 1)
        {
          sub_10005B5C4();
          v56 = v66;
        }

        v56[2] = v63 + 1;
        v64 = &v56[2 * v63];
        v64[4] = v60;
        v64[5] = v62;
        v54 += v156;
        --v52;
      }

      while (v52);
    }

    v76 = Array.description.getter();
    v78 = v77;

    v79 = sub_10000D9FC(v76, v78, &v162);

    v80 = v120;
    *(v120 + 14) = v79;
    *(v80 + 22) = 2160;
    *(v80 + 24) = 1752392040;
    *(v80 + 32) = 2081;
    v81 = v149;
    sub_1000383B8();
    v83 = v82;
    v85 = v84;
    sub_100030508(v81);
    v86 = sub_10000D9FC(v83, v85, &v162);

    *(v80 + 34) = v86;
    v87 = v121;
    _os_log_impl(&_mh_execute_header, v121, v123, "Updating existing notification; notificationIdentifier=%s, alerts=%{public}s, subscription=%{private,mask.hash}s", v80, 0x2Au);
    swift_arrayDestroy();

    (*(v145 + 8))(v150, v146);
    a1 = v127;
    a3 = v122;
    v74 = v130;
    v75 = v147;
  }

  else
  {

    sub_100030508(v46);
    (*(v145 + 8))(v45, v146);
    v74 = v130;
    v75 = v147;
    a1 = v127;
  }

  v88 = v132;
  NotificationStore.severeNotifications.getter();
  if (v88)
  {

    v73 = 0;
    v18 = v143;
    v69 = v143;
    v70 = v124;
    v71 = a3;
    v72 = v125;
    goto LABEL_22;
  }

  dispatch thunk of Table.query.getter();

  v164 = &type metadata for String;
  v165 = &protocol witness table for String;
  v162 = v74;
  v163 = v126;

  v89 = v140;
  == infix(_:_:)();
  sub_100006994(&v162);
  v90 = type metadata accessor for OrderBy();
  sub_100006BD4(v75, 1, 1, v90);
  v91 = dispatch thunk of Query.where(_:orderBy:limit:)();
  v122 = a3;
  v161 = v91;

  sub_10000E904(v75, &qword_1000A3808, &qword_100080F70);
  (*(v141 + 8))(v89, v142);
  v94 = swift_allocObject();
  v155 = v94;
  *(v94 + 16) = &_swiftEmptyDictionarySingleton;
  v150 = (v94 + 16);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v95 = JSONDecoder.init()();
  (*(v138 + 104))(v137, enum case for JSONDecoder.DateDecodingStrategy.secondsSince1970(_:), v139);
  v157 = v95;
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  result = v161;
  if (!*(v161 + 16))
  {
    v158 = _swiftEmptyArrayStorage;
LABEL_43:

    v111 = v124;

    v162 = sub_100018CB4(v158, v111, v150);

    sub_10002AA18(v112);
    v113 = v131;
    sub_100022724(v162, v122, v125, v131);

    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v114 = static OS_dispatch_queue.notifications.getter();
    sub_1000304B0();
    v115 = swift_allocObject();
    v116 = v126;
    *(v115 + 16) = v130;
    *(v115 + 24) = v116;
    sub_10002FEA4();
    firstly<A, B>(on:disposeOn:closure:)();

    v117 = static OS_dispatch_queue.notifications.getter();

    a3 = Promise.then<A, B>(on:disposeOn:closure:)();

    sub_100030508(v113);

    ReferenceCountedLazy.decrease()();
    goto LABEL_26;
  }

  v96 = *(v161 + 16);
  v97 = 0;
  v98 = v153;
  v160 = (v161 + ((*(v154 + 80) + 32) & ~*(v154 + 80)));
  v159 = (v154 + 16);
  v99 = (v154 + 8);
  v156 = (v144 + 32);
  v158 = _swiftEmptyArrayStorage;
  v100 = v151;
  v101 = v152;
  while (v97 < *(result + 16))
  {
    (*(v154 + 16))(v100, &v160[*(v154 + 72) * v97], v101);
    SevereNotificationEntity.replacementAlert.getter();
    dispatch thunk of Column.value.getter();

    if (v163 == 1)
    {
      SevereNotificationEntity.alert.getter();
      dispatch thunk of Column.value.getter();

      v102 = v163;
      if (v163 >> 60 == 15)
      {
        goto LABEL_45;
      }

      v103 = v162;
      sub_1000306FC(&qword_1000A4048, 255, &type metadata accessor for WeatherAlert, &protocol conformance descriptor for WeatherAlert);
      v104 = v153;
      v105 = v166;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      (*v99)(v151, v152);
      sub_100006C64(v103, v102);
      sub_100006BD4(v104, 0, 1, v105);
      v106 = *v156;
      (*v156)(v148, v104, v105);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005B794();
        v158 = v109;
      }

      v107 = v158[2];
      v101 = v152;
      if (v107 >= v158[3] >> 1)
      {
        sub_10005B794();
        v158 = v110;
      }

      v108 = v158;
      v158[2] = v107 + 1;
      v106(&v108[((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v107], v148, v105);
      v98 = v153;
      v100 = v151;
    }

    else
    {
      sub_10000E344(v162, v163);
      (*v99)(v100, v101);
      sub_100006BD4(v98, 1, 1, v166);
      sub_10000E904(v98, &qword_1000A3E30, &unk_100080CE0);
    }

    ++v97;
    result = v161;
    if (v96 == v97)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_100022724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a4;
  v8 = type metadata accessor for Location();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v40 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003020(&qword_1000A4070, &unk_100080F90);
  __chkstk_darwin(v13 - 8);
  v15 = (&v32 - v14);
  v16 = type metadata accessor for SevereNotificationContent(0);
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  sub_1000032B8((v4 + 136), *(v4 + 160));
  v20 = *(type metadata accessor for SevereMessage(0) + 28);
  v38 = a3;
  v39 = a2;
  v41 = a1;
  sub_100016658(a1, a2, a3 + v20, v15);
  if (sub_100007374(v15, 1, v16) == 1)
  {
    sub_10000E904(v15, &qword_1000A4070, &unk_100080F90);
    sub_10002F274();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  else
  {
    v34 = type metadata accessor for SevereNotificationContent;
    sub_10002FEA4();
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v32 = v24;
    v33 = v23;
    (*(v35 + 8))(v12, v36);
    v26 = *v38;
    v25 = v38[1];
    sub_1000304B0();

    v27 = v41;

    v28 = v40;
    sub_100037B5C();
    sub_100030508(v19);
    v29 = v37;
    v30 = v32;
    *v37 = v33;
    v29[1] = v30;
    v29[2] = v26;
    v29[3] = v25;
    v29[4] = v27;
    v31 = type metadata accessor for CloudChannelSevereNotification(0);
    sub_10002FEA4();
    (*(v42 + 32))(v29 + *(v31 + 32), v28, v43);
    type metadata accessor for SevereNotification(0);
    return swift_storeEnumTagMultiPayload();
  }
}

void *sub_100022AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  v73 = a2;
  v68 = a1;
  v4 = type metadata accessor for SevereNotificationEntity();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v64 - v10;
  __chkstk_darwin(v9);
  v13 = &v64 - v12;
  v14 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  __chkstk_darwin(v14 - 8);
  v77 = &v64 - v15;
  v16 = type metadata accessor for Location();
  v71 = *(v16 - 8);
  v72 = v16;
  __chkstk_darwin(v16);
  v70 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Expression();
  v78 = *(v76 - 1);
  v18 = __chkstk_darwin(v76);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v64 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v64 - v25;
  v27 = __chkstk_darwin(v24);
  v69 = &v64 - v28;
  __chkstk_darwin(v27);
  v74 = &v64 - v29;
  v30 = v86;
  NotificationStore.severeNotifications.getter();
  if (v30)
  {
  }

  v64 = v13;
  v65 = v8;
  v79 = v11;
  v66 = v4;
  v86 = 0;
  v67 = dispatch thunk of Table.query.getter();

  v32 = type metadata accessor for Date();
  v84 = v32;
  v85 = &protocol witness table for Date;
  sub_100006D18(&v82);
  Date.init(timeIntervalSinceNow:)();
  >= infix(_:_:)();
  sub_100006994(&v82);
  v33 = WeatherAlert.description.getter();
  v84 = &type metadata for String;
  v85 = &protocol witness table for String;
  v82 = v33;
  v83 = v34;
  == infix(_:_:)();
  sub_100006994(&v82);
  && infix(_:_:)();
  v35 = *(v78 + 8);
  v36 = v76;
  v35(v20, v76);
  v35(v23, v36);
  v84 = v32;
  v85 = &protocol witness table for Date;
  sub_100006D18(&v82);
  WeatherAlert.issuedTime.getter();
  >= infix(_:_:)();
  sub_100006994(&v82);
  v37 = v69;
  && infix(_:_:)();
  v35(v23, v36);
  v35(v26, v36);
  v38 = v70;
  sub_100037B5C();
  v39 = Location.id.getter();
  v41 = v40;
  (*(v71 + 8))(v38, v72);
  v84 = &type metadata for String;
  v85 = &protocol witness table for String;
  v82 = v39;
  v83 = v41;
  == infix(_:_:)();
  sub_100006994(&v82);
  v42 = v74;
  && infix(_:_:)();
  v35(v26, v36);
  v35(v37, v36);
  v43 = type metadata accessor for OrderBy();
  v44 = v77;
  sub_100006BD4(v77, 1, 1, v43);
  v45 = v86;
  v46 = dispatch thunk of Query.where(_:orderBy:limit:)();
  if (v45)
  {

    sub_10000E904(v44, &qword_1000A3808, &qword_100080F70);
    return (v35)(v42, v36);
  }

  else
  {
    v75 = 0;
    v78 = v46;

    sub_10000E904(v44, &qword_1000A3808, &qword_100080F70);
    v35(v42, v36);
    result = v78;
    v47 = 0;
    v48 = *(v78 + 16);
    v76 = (v5 + 32);
    v77 = v48;
    v86 = _swiftEmptyArrayStorage;
    v49 = v66;
    v50 = v64;
    while (v77 != v47)
    {
      if (v47 >= result[2])
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v51 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v52 = *(v5 + 72);
      (*(v5 + 16))(v50, result + v51 + v52 * v47, v49);
      SevereNotificationEntity.replacementAlert.getter();
      dispatch thunk of Column.value.getter();

      if (v83 == 1)
      {
        v74 = *v76;
        (v74)(v65, v50, v49);
        v53 = v86;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000146CC(0, *(v53 + 16) + 1, 1);
          v50 = v64;
          v53 = v80;
        }

        v56 = *(v53 + 16);
        v55 = *(v53 + 24);
        v57 = v56 + 1;
        v58 = v65;
        if (v56 >= v55 >> 1)
        {
          v60 = v56 + 1;
          v86 = v56;
          sub_1000146CC((v55 > 1), v56 + 1, 1);
          v57 = v60;
          v56 = v86;
          v50 = v64;
          v53 = v80;
        }

        ++v47;
        *(v53 + 16) = v57;
        v86 = v53;
        v59 = v53 + v51 + v56 * v52;
        v49 = v66;
        (v74)(v59, v58, v66);
        result = v78;
      }

      else
      {
        sub_10000E344(v82, v83);
        (*(v5 + 8))(v50, v49);
        ++v47;
        result = v78;
      }
    }

    v61 = 0;
    result = v86;
    v62 = v86[2];
    v63 = v79;
    while (v62 != v61)
    {
      if (v61 >= result[2])
      {
        goto LABEL_22;
      }

      (*(v5 + 16))(v63, result + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v61, v49);
      SevereNotificationEntity.notificationIdentifier.getter();
      (*(v5 + 8))(v63, v49);
      dispatch thunk of Column.value.getter();

      if (!v81)
      {
        goto LABEL_23;
      }

      ++v61;
      sub_10002CA88(&v82, v80, v81);

      result = v86;
    }
  }
}

uint64_t sub_100023390(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for WeatherAlert() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

BOOL sub_100023474(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v97 = a3;
  v96 = type metadata accessor for Logger();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v98 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Date();
  v6 = *(v103 - 8);
  v7 = __chkstk_darwin(v103);
  v102 = (&v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v101 = (&v93 - v9);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v113 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v93 - v14;
  v16 = type metadata accessor for WeatherAlert();
  v17 = __chkstk_darwin(v16);
  v99 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v20 = __chkstk_darwin(v19);
  v22 = &v93 - v21;
  v23 = 0;
  v108 = v24;
  v109 = a2;
  v114 = *(a2 + 16);
  v115 = a1;
  v112 = (v24 + 16);
  v25 = (v11 + 8);
  v100 = (v6 + 8);
  v110 = (v24 + 8);
  v106 = v10;
  v107 = &v93 - v21;
  v94 = v26;
  v111 = v20;
  while (v114 != v23)
  {
    v27 = v109 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v28 = *(v108 + 9);
    v116 = v23;
    v104 = *(v108 + 2);
    v104(v22, v27 + v28 * v23, v16);
    WeatherAlert.id.getter();
    v29 = v113;
    WeatherAlert.id.getter();
    v30 = static UUID.== infix(_:_:)();
    v31 = v15;
    v32 = *v25;
    (*v25)(v29, v10);
    v33 = v25;
    v34 = v31;
    v35 = v31;
    v36 = v33;
    v105 = v32;
    v32(v35, v10);
    if (v30)
    {
      (*v110)(v22, v16);
LABEL_18:
      v23 = v116;
      return v114 == v23;
    }

    v37 = WeatherAlert.description.getter();
    v39 = v38;
    if (v37 == WeatherAlert.description.getter() && v39 == v40)
    {

      v22 = v107;
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v22 = v107;
      if ((v42 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v43 = v101;
    WeatherAlert.issuedTime.getter();
    v44 = v102;
    WeatherAlert.expireTime.getter();
    sub_1000306FC(&qword_1000A4058, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v45 = v103;
    v46 = dispatch thunk of static Comparable.< infix(_:_:)();
    v47 = *v100;
    (*v100)(v44, v45);
    v47(v43, v45);
    if ((v46 & 1) == 0)
    {
      v48 = v98;
      static Logger.notifications.getter();
      v49 = v94;
      v50 = v111;
      v51 = v104;
      v104(v94, v115, v111);
      v51(v99, v22, v50);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      v54 = os_log_type_enabled(v52, v53);
      v93 = v36;
      if (v54)
      {
        v55 = swift_slowAlloc();
        v108 = v55;
        v104 = swift_slowAlloc();
        v117 = v104;
        *v55 = 136446466;
        v56 = v49;
        v57 = v34;
        WeatherAlert.id.getter();
        v58 = UUID.uuidString.getter();
        v60 = v59;
        LODWORD(v103) = v53;
        v61 = v106;
        v105(v34, v106);
        v102 = v52;
        v62 = *v110;
        v109 = v110 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v63 = v56;
        v64 = v111;
        v62(v63, v111);
        v65 = sub_10000D9FC(v58, v60, &v117);

        v66 = v108;
        *(v108 + 1) = v65;
        *(v66 + 6) = 2082;
        v67 = v99;
        WeatherAlert.id.getter();
        v68 = UUID.uuidString.getter();
        v70 = v69;
        v71 = v61;
        v72 = v105;
        v105(v57, v71);
        v73 = v67;
        v74 = v72;
        v112 = v62;
        v62(v73, v64);
        v75 = sub_10000D9FC(v68, v70, &v117);

        v76 = v108;
        *(v108 + 14) = v75;
        v77 = v102;
        _os_log_impl(&_mh_execute_header, v102, v103, "Replacing existing alert: %{public}s with alert: %{public}s", v76, 0x16u);
        swift_arrayDestroy();

        (*(v95 + 8))(v98, v96);
      }

      else
      {

        v78 = v111;
        v79 = *v110;
        v109 = v110 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v79(v99, v111);
        v112 = v79;
        v79(v49, v78);
        (*(v95 + 8))(v48, v96);
        v57 = v34;
        v74 = v105;
      }

      WeatherAlert.id.getter();
      v80 = UUID.uuidString.getter();
      v82 = v81;
      v83 = v106;
      v74(v57, v106);
      v84 = v113;
      v85 = v107;
      WeatherAlert.id.getter();
      v86 = UUID.uuidString.getter();
      v87 = v74;
      v89 = v88;
      v87(v84, v83);
      v90 = v97;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = *v90;
      sub_10002C2D0(v86, v89, v80, v82, isUniquelyReferenced_nonNull_native);
      *v90 = v117;

      v112(v85, v111);
      goto LABEL_18;
    }

LABEL_12:
    v16 = v111;
    (*v110)(v22, v111);
    v23 = v116 + 1;
    v10 = v106;
    v15 = v34;
    v25 = v36;
  }

  return v114 == v23;
}

uint64_t sub_100023DB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  ReferenceCountedLazy.increase()();
  swift_beginAccess();
  v4 = *(a3 + 16);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (*(v4 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v4 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];

    sub_100023F74(v15, v16, v18, v19, v21);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_100003020(&qword_1000A4020, &qword_100080F50);
      swift_allocObject();

      v20 = Promise.init(value:)();
      ReferenceCountedLazy.decrease()();

      return v20;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100023F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v36 = a4;
  v37 = a1;
  v38 = a2;
  v6 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for Expression();
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003020(&qword_1000A4050, &qword_100080F78);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v40 = type metadata accessor for SevereNotificationEntity();
  v15 = *(v40 - 8);
  v16 = __chkstk_darwin(v40);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  NotificationStore.severeNotifications.getter();
  v33 = v15;
  v34 = v9;
  v30 = v18;
  v31 = v20;
  v32 = a5;
  dispatch thunk of Table.query.getter();

  v41[3] = &type metadata for String;
  v41[4] = &protocol witness table for String;
  v41[0] = v37;
  v41[1] = v38;

  == infix(_:_:)();
  sub_100006994(v41);
  v21 = type metadata accessor for OrderBy();
  sub_100006BD4(v8, 1, 1, v21);
  dispatch thunk of Query.first(_:orderBy:)();

  sub_10000E904(v8, &qword_1000A3808, &qword_100080F70);
  (*(v39 + 8))(v11, v34);
  v23 = v40;
  v24 = sub_100007374(v14, 1, v40);
  if (v24 == 1)
  {
    return sub_10000E904(v14, &qword_1000A4050, &qword_100080F78);
  }

  v25 = v33;
  v26 = v31;
  (*(v33 + 32))(v31, v14, v23);
  NotificationStore.severeNotifications.getter();
  dispatch thunk of Table.save.getter();

  v27 = v30;
  SevereNotificationEntity.markAsReplaced(by:)();
  dispatch thunk of Save.entity(_:)();

  v28 = *(v25 + 8);
  v28(v27, v23);
  return (v28)(v26, v23);
}

uint64_t sub_1000243C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for NotificationSubscription.Kind();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v5;
  v2[9] = v4;

  return _swift_task_switch(sub_1000244EC, v5, v4);
}

uint64_t sub_1000244EC()
{
  sub_100030C58();
  v1 = v0[3];
  v2 = v1[30];
  v3 = v1[31];
  sub_1000032B8(v1 + 27, v2);
  static NotificationSubscription.Kind.severe.getter();
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1000245B8;
  v5 = v0[6];

  return dispatch thunk of NotificationSubscriptionManagerType.subscriptions(of:)(v5, v2, v3);
}

uint64_t sub_1000245B8()
{
  sub_100030E20();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_10000FA6C();
  *v6 = v5;
  *v6 = *v1;
  v5[11] = v0;

  v7 = v4[6];
  v8 = v4[5];
  v9 = v4[4];
  if (v0)
  {
    (*(v8 + 8))(v7, v9);
    v10 = v5[8];
    v11 = v5[9];
    v12 = sub_1000247AC;
  }

  else
  {
    v5[12] = v3;
    (*(v8 + 8))(v7, v9);
    v10 = v5[8];
    v11 = v5[9];
    v12 = sub_100024734;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100024734()
{
  sub_100030C58();
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);

  *v2 = v1;

  sub_100030C70();

  return v3();
}

uint64_t sub_1000247AC()
{
  sub_100030C4C();

  sub_100030C70();

  return v0();
}

uint64_t sub_100024810()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  *v5 = static OS_dispatch_queue.notifications.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (*(v1 + 496) == 1)
    {
      sub_1000032B8((v1 + 256), *(v1 + 280));
      sub_1000306FC(&qword_1000A4170, v8, type metadata accessor for SevereNotificationsManager, &unk_100080E2C);
      result = dispatch thunk of LocationManagerType.removeObserver(_:)();
      *(v1 + 496) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000249A0()
{
  sub_100006994((v0 + 16));
  sub_100006994((v0 + 56));
  sub_100006994((v0 + 96));
  sub_100006994((v0 + 136));
  sub_100006994((v0 + 176));
  sub_100006994((v0 + 216));
  sub_100006994((v0 + 256));
  sub_100006994((v0 + 296));
  sub_100006994((v0 + 336));

  sub_100006994((v0 + 400));
  sub_100006994((v0 + 440));

  return v0;
}

uint64_t sub_100024A40()
{
  sub_1000249A0();

  return _swift_deallocClassInstance(v0, 512, 7);
}

void sub_100024A98()
{
  sub_10003119C();
  type metadata accessor for Logger();
  sub_100006FBC();
  __chkstk_darwin(v1);
  sub_10000E970();
  sub_100030DEC(v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100030F7C();
    *v5 = 0;
    sub_1000310F0(&_mh_execute_header, v6, v7, "Setting up severe weather notifications");
    sub_10000FA7C(v5);
  }

  v8 = sub_100030E5C();
  v9(v8);
  v10 = sub_1000032B8((v0 + 16), *(v0 + 40));
  sub_10005C2E8(v0, *v10);

  Debouncer.execute(_:)();

  sub_100031188();
}

void sub_100024BD4()
{
  sub_10003119C();
  type metadata accessor for Logger();
  sub_100006FBC();
  __chkstk_darwin(v1);
  sub_10000E970();
  sub_100030DEC(v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100030F7C();
    *v5 = 0;
    sub_1000310F0(&_mh_execute_header, v6, v7, "Invalidating severe notifications management");
    sub_10000FA7C(v5);
  }

  v8 = sub_100030E5C();
  v9(v8);
  Debouncer.cancel()();
  [*(v0 + 480) cancelAllOperations];
  [*(v0 + 488) cancelAllOperations];
  v10 = objc_allocWithZone(sub_100003020(&qword_1000A4120, &unk_1000810A0));

  v11 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A37D0, &qword_100080838);
  v12 = v11;
  Promise.__allocating_init(_:scheduleOn:)();

  sub_100031188();
}

uint64_t sub_100024D78(uint64_t *a1)
{
  sub_100024810();
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v1 = static OS_dispatch_queue.notifications.getter();
  firstly<A, B>(on:disposeOn:closure:)();

  v2 = static OS_dispatch_queue.notifications.getter();
  v3 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v3;
}

void sub_100024EF0(uint64_t a1)
{
  sub_100030944(0, &qword_1000A4188, NSOperationQueue_ptr);
  v2 = static NSOperationQueue.notifications.getter();
  [v2 addOperation:a1];
}

void sub_100024F60(uint64_t a1)
{
  sub_100030E38();
  v2 = v1;
  v4 = v3;
  v5 = sub_100003020(&unk_1000A3930, &qword_100080900);
  sub_100006FF0(v5);
  sub_100018920();
  __chkstk_darwin(v6);
  sub_100031010();
  v7 = type metadata accessor for Logger();
  sub_100006FBC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000E970();
  sub_100030DEC(v11);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_100030F7C();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Requested cloud channel subscription validation", v14, 2u);
    sub_10000FA7C(v14);
  }

  (*(v9 + 8))(v1, v7);
  ReferenceCountedLazy.increase()();
  NotificationEnablementTracker.trackEnablement()();
  ReferenceCountedLazy.decrease()();
  type metadata accessor for TaskPriority();
  sub_100030DE0();
  sub_100006BD4(v15, v16, v17, v18);
  v19 = swift_allocObject();
  swift_weakInit();

  v20 = static NotificationsActor.shared.getter();
  sub_100030B44();
  v23 = sub_1000306FC(v21, 255, v22, &protocol conformance descriptor for NotificationsActor.Actor);
  sub_100030E74();
  v24 = swift_allocObject();
  v24[2] = v20;
  v24[3] = v23;
  v24[4] = v19;

  sub_100030EC0();
  sub_10006CAAC();

  sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
  v25 = sub_10006D068(0xD000000000000025, 0x8000000100085210);
  sub_100030E74();
  v26 = swift_allocObject();
  v26[2] = v2;
  v26[3] = v4;
  v26[4] = v25;
  v27 = objc_allocWithZone(sub_100003020(&qword_1000A4120, &unk_1000810A0));

  v28 = v25;

  v29 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A37D0, &qword_100080838);
  v30 = v29;
  Promise.__allocating_init(_:scheduleOn:)();

  sub_100030E08();
}

uint64_t sub_100025294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v4[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_10002535C, v6, v5);
}

uint64_t sub_10002535C()
{
  sub_100030C4C();
  sub_100030F3C();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_100025430;

    return sub_10001973C();
  }

  else
  {

    sub_100030C20();

    return v4();
  }
}

uint64_t sub_100025430()
{
  sub_100030C58();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 72);
  v6 = *(v0 + 64);

  return _swift_task_switch(sub_100030B24, v6, v5);
}

uint64_t sub_100025560(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v5 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4128, &qword_1000810B0);
  type metadata accessor for SevereNotificationsManager();
  firstly<A, B>(on:disposeOn:closure:)();

  v6 = static OS_dispatch_queue.notifications.getter();
  type metadata accessor for NotificationSubscription();
  sub_100006CD0(&qword_1000A4130, &qword_1000A4128, &qword_1000810B0, &protocol conformance descriptor for [A]);

  Promise<A>.compactMap<A>(on:closure:)();

  v7 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = a2;

  sub_100003020(&qword_1000A4138, &qword_1000810B8);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v8 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A4140, &qword_1000810C0);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v9 = static OS_dispatch_queue.notifications.getter();
  Promise.then<A, B>(on:disposeOn:closure:)();

  v10 = zalgo.getter();
  Promise.error(on:closure:)();

  *(swift_allocObject() + 16) = a3;
  v11 = a3;
  v12 = zalgo.getter();
  v13 = Promise.always(on:closure:)();

  return v13;
}

uint64_t sub_100025890(uint64_t a1)
{
  sub_100003020(&qword_1000A40E0, &qword_100081000);

  return Promise.__allocating_init<A>(task:)();
}

uint64_t sub_1000258F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a1;
  v5 = type metadata accessor for NotificationSubscription();
  v80 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v79 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v73 = &v65 - v8;
  v9 = type metadata accessor for Logger();
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v77 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Location();
  v12 = *(v11 - 8);
  v83 = v11;
  v84 = v12;
  __chkstk_darwin(v11);
  v82 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NotificationSubscription.Location();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v81 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v65 - v18;
  sub_1000032B8(a2 + 42, a2[45]);
  if ((dispatch thunk of NotificationAuthorizationStatusProviderType.hasNotificationAuthorization()() & 1) == 0)
  {
    v32 = a3;
    v33 = 1;
    v34 = v5;
    return sub_100006BD4(v32, v33, 1, v34);
  }

  v76 = a3;
  v78 = v5;
  v20 = v85;
  NotificationSubscription.location.getter();
  v21 = NotificationSubscription.Location.id.getter();
  v23 = v22;
  v26 = *(v15 + 8);
  v24 = v15 + 8;
  v25 = v26;
  v26(v19, v14);
  if (v21 == static Location.currentLocationID.getter() && v23 == v27)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      v30 = v76;
      v31 = v78;
      (*(v80 + 16))(v76, v20, v78);
      v32 = v30;
      v33 = 0;
      v34 = v31;
      return sub_100006BD4(v32, v33, 1, v34);
    }
  }

  sub_1000032B8(a2 + 32, a2[35]);
  if (dispatch thunk of LocationManagerType.authorizationState.getter() == 3)
  {
    v35 = v81;
    NotificationSubscription.location.getter();
    v36 = v82;
    NotificationSubscription.Location.locationOverride.getter();
    v72 = v24;
    v25(v35, v14);
    LOBYTE(v35) = Location.isNotificationSubscriptionCurrentLocationPlaceholder.getter();
    v37 = v84 + 8;
    v38 = *(v84 + 8);
    v38(v36, v83);
    v39 = v78;
    v32 = v76;
    if (v35)
    {
      v33 = 1;
    }

    else
    {
      v68 = v38;
      v71 = v14;
      v84 = v37;
      v40 = v77;
      static Logger.notifications.getter();
      v41 = v80;
      v42 = v80 + 16;
      v43 = *(v80 + 16);
      v44 = v73;
      v43(v73, v20, v39);
      v69 = v43;
      v70 = v42;
      v43(v79, v20, v39);
      v45 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v67))
      {
        v46 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v86[0] = v66;
        *v46 = 141558787;
        *(v46 + 4) = 1752392040;
        *(v46 + 12) = 2081;
        v47 = v81;
        NotificationSubscription.location.getter();
        v48 = v82;
        NotificationSubscription.Location.location.getter();
        v25(v47, v71);
        Location.coordinate.getter();
        v49 = v44;
        v68(v48, v83);
        v50 = Double.description.getter();
        v65 = v45;
        v51 = v50;
        v53 = v52;
        v54 = *(v41 + 8);
        v54(v49, v78);
        v55 = sub_10000D9FC(v51, v53, v86);

        *(v46 + 14) = v55;
        *(v46 + 22) = 2160;
        *(v46 + 24) = 1752392040;
        *(v46 + 32) = 2081;
        v56 = v79;
        NotificationSubscription.location.getter();
        NotificationSubscription.Location.location.getter();
        v25(v47, v71);
        Location.coordinate.getter();
        v68(v48, v83);
        v57 = Double.description.getter();
        v59 = v58;
        v54(v56, v78);
        v60 = sub_10000D9FC(v57, v59, v86);

        *(v46 + 34) = v60;
        v61 = v65;
        _os_log_impl(&_mh_execute_header, v65, v67, "Validate channel subscription with coordinate: %{private,mask.hash}s %{private,mask.hash}s", v46, 0x2Au);
        swift_arrayDestroy();

        v62 = v76;
        v39 = v78;

        (*(v74 + 8))(v77, v75);
      }

      else
      {

        v63 = *(v41 + 8);
        v63(v79, v39);
        v63(v44, v39);
        (*(v74 + 8))(v40, v75);
        v62 = v76;
      }

      v69(v62, v85, v39);
      v32 = v62;
      v33 = 0;
    }

    v34 = v39;
  }

  else
  {
    v32 = v76;
    v33 = 1;
    v34 = v78;
  }

  return sub_100006BD4(v32, v33, 1, v34);
}

uint64_t sub_100026070(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v34 = type metadata accessor for NotificationSubscription();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SevereNotificationSubscription(0);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v26 = a3;
    v27 = a2;
    v28 = v3;
    v35 = _swiftEmptyArrayStorage;
    sub_100014724(0, v11, 0);
    v12 = v35;
    v13 = v7 + 16;
    v14 = *(v7 + 16);
    v15 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v29 = *(v7 + 72);
    v30 = v14;
    v16 = (v7 + 8);
    do
    {
      v17 = v33;
      v18 = v34;
      v19 = v13;
      v30(v33, v15, v34);
      NotificationSubscription.location.getter();
      (*v16)(v17, v18);
      swift_storeEnumTagMultiPayload();
      v35 = v12;
      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        sub_100014724((v20 > 1), v21 + 1, 1);
        v12 = v35;
      }

      v12[2] = v21 + 1;
      sub_10002FEA4();
      v15 += v29;
      --v11;
      v13 = v19;
    }

    while (v11);
    a2 = v27;
    a3 = v26;
  }

  v35 = v12;
  sub_100003020(&qword_1000A40E8, &qword_100081018);
  swift_allocObject();
  Promise.init(value:)();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;

  Promise.__allocating_init<A>(task:)();
  v23 = combine<A, B>(_:_:)();

  return v23;
}

uint64_t sub_1000263A8(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;

  sub_10002AA18(v3);
  sub_1000032B8((a2 + 56), *(a2 + 80));
  v4 = sub_10005DF58(v6);

  return v4;
}

void sub_100026454(uint64_t *a1, uint64_t a2)
{
  v60 = a2;
  v3 = type metadata accessor for CloudChannelSubscription(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v65 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  static Logger.notifications.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v61 = v15;
  if (os_log_type_enabled(v14, v15))
  {
    v63 = v14;
    v64 = v12;
    v55 = v10;
    v57 = v9;
    v16 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v68 = v53;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    v54 = v16;
    *(v16 + 12) = 2081;
    v17 = *(v13 + 16);
    v58 = v3;
    v59 = v4;
    v56 = v13;
    if (v17)
    {
      v18 = &v8[*(v3 + 20)];
      v19 = v4;
      v20 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v62 = *(v19 + 72);
      v21 = _swiftEmptyArrayStorage;
      do
      {
        sub_1000304B0();
        v66 = Location.id.getter();
        v67 = v22;
        v23._countAndFlagsBits = 58;
        v23._object = 0xE100000000000000;
        String.append(_:)(v23);
        if (v18[1])
        {
          v24 = *v18;
          v25 = v18[1];
        }

        else
        {
          v25 = 0xE400000000000000;
          v24 = 1701736270;
        }

        v26._countAndFlagsBits = v24;
        v26._object = v25;
        String.append(_:)(v26);

        v27 = v66;
        v28 = v67;
        sub_100030508(v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005B5C4();
          v21 = v33;
        }

        v29 = v21[2];
        if (v29 >= v21[3] >> 1)
        {
          sub_10005B5C4();
          v21 = v34;
        }

        v21[2] = v29 + 1;
        v30 = &v21[2 * v29];
        v30[4] = v27;
        v30[5] = v28;
        v31 = v63;
        v20 += v62;
        --v17;
        v32 = v64;
      }

      while (v17);
    }

    else
    {
      v31 = v63;
      v32 = v64;
    }

    v35 = Array.description.getter();
    v37 = v36;

    v38 = sub_10000D9FC(v35, v37, &v68);

    v39 = v54;
    *(v54 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v31, v61, "Validated channel subscriptions: %{private,mask.hash}s", v39, 0x16u);
    sub_100006994(v53);

    (*(v55 + 8))(v32, v57);
    v3 = v58;
    v4 = v59;
    v13 = v56;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v40 = *(v13 + 16);
  if (v40)
  {
    v41 = &v65[*(v3 + 20)];
    v42 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v43 = *(v4 + 72);
    v44 = _swiftEmptyArrayStorage;
    do
    {
      v45 = v65;
      sub_1000304B0();
      v47 = *v41;
      v46 = *(v41 + 1);

      sub_100030508(v45);
      if (v46)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005B86C();
          v44 = v50;
        }

        v48 = v44[2];
        if (v48 >= v44[3] >> 1)
        {
          sub_10005B86C();
          v44 = v51;
        }

        v44[2] = v48 + 1;
        v49 = &v44[2 * v48];
        v49[4] = v47;
        v49[5] = v46;
      }

      v42 += v43;
      --v40;
    }

    while (v40);
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
  }

  v52 = v44[2];

  if (!v52)
  {
    sub_1000032B8((v60 + 16), *(v60 + 40));
    sub_1000723D8();
  }
}

void sub_1000269B4(uint64_t a1, const char *a2, ...)
{
  sub_100030E38();
  v4 = v3;
  type metadata accessor for Logger();
  sub_100006FBC();
  __chkstk_darwin(v5);
  sub_10000E970();
  sub_100030DEC(v6);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    sub_100031128();
    v9 = sub_100030F60();
    v15 = v9;
    *v2 = 136446210;
    swift_errorRetain();
    sub_100003020(&qword_1000A37F0, &unk_100080850);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D9FC(v10, v11, &v15);

    *(v2 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, v4, v2, 0xCu);
    sub_100006994(v9);
    sub_10000FA7C(v9);
    sub_100030D84();
  }

  v13 = sub_100030F18();
  v14(v13);
  sub_100030E08();
}

uint64_t sub_100026B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for SevereNotificationSubscription(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_100003020(&qword_1000A40F0, &qword_100081030);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for PredictedLocationsFeatureState();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[22] = v9;
  v3[23] = v8;

  return _swift_task_switch(sub_100026D98, v9, v8);
}

uint64_t sub_100026D98()
{
  sub_100030C58();
  sub_100030DA0((v0[4] + 440));
  swift_task_alloc();
  sub_100030CD4();
  v0[24] = v1;
  *v1 = v2;
  v1[1] = sub_100026E48;
  v3 = v0[20];

  return dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()(v3);
}

uint64_t sub_100026E48()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 184);
  v6 = *(v0 + 176);

  return _swift_task_switch(sub_100026F54, v6, v5);
}

uint64_t sub_100026F54()
{
  sub_100030E20();
  v1 = *(v0 + 144);
  v2 = sub_100031064();
  v3(v2);
  sub_100030F18();
  v4 = static PredictedLocationsFeatureState.== infix(_:_:)();
  v5 = *(v1 + 8);
  v6 = sub_100030CE0();
  v5(v6);
  v7 = sub_100030E5C();
  v5(v7);
  if (v4)
  {
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_100027154;
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);

    return sub_1000276F4(v10, v9);
  }

  else
  {

    static Logger.predictedLocationNotifications.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (sub_100031158(v13))
    {
      v14 = sub_100030F7C();
      *v14 = 0;
      sub_1000310B0(&_mh_execute_header, v15, v16, "Predicted locations notifications were not active when resolving notification subscriptions");
      sub_10000FA7C(v14);
    }

    v17 = sub_100030CAC();
    v18(v17);
    **(v0 + 24) = _swiftEmptyArrayStorage;

    sub_100030C70();

    return v19();
  }
}

uint64_t sub_100027154()
{
  sub_100030C4C();
  sub_100030E50();
  sub_100030C64();
  *v3 = v2;
  v4 = *v1;
  sub_100030C64();
  *v5 = v4;
  *(v7 + 208) = v6;

  sub_100030E68();
  v9 = *(v8 + 184);
  v10 = *(v0 + 176);

  return _swift_task_switch(sub_100027268, v10, v9);
}

uint64_t sub_100027268()
{
  v35 = v0;
  v1 = *(v0 + 208);

  if (*(v1 + 16))
  {
    *(v0 + 16) = *(v0 + 208);
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v4 = *(v0 + 112);
    swift_getKeyPath();
    KeyPathComparator.init<A>(_:order:)();
    sub_100003020(&qword_1000A4100, &unk_100081060);
    sub_100006CD0(&qword_1000A4108, &qword_1000A4100, &unk_100081060, &protocol conformance descriptor for [A]);
    sub_100006CD0(&qword_1000A4110, &qword_1000A40F0, &qword_100081030, &protocol conformance descriptor for KeyPathComparator<A>);
    v5 = Sequence.sorted<A>(using:)();
    (*(v3 + 8))(v2, v4);

    v6 = *(v5 + 16);
    if (v6)
    {
      v34 = _swiftEmptyArrayStorage;
      sub_100014724(0, v6, 0);
      v7 = _swiftEmptyArrayStorage;
      v8 = type metadata accessor for ResolvedPredictedLocation(0);
      sub_10000E960(v8);
      v10 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v12 = *(v11 + 72);
      do
      {
        sub_1000304B0();
        swift_storeEnumTagMultiPayload();
        v34 = v7;
        v14 = v7[2];
        v13 = v7[3];
        if (v14 >= v13 >> 1)
        {
          sub_100014724((v13 > 1), v14 + 1, 1);
          v7 = v34;
        }

        v7[2] = v14 + 1;
        sub_100030D4C();
        sub_10002FEA4();
        v10 += v12;
        --v6;
      }

      while (v6);
    }

    else
    {

      v7 = _swiftEmptyArrayStorage;
    }

    static Logger.predictedLocationNotifications.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 104);
    v27 = *(v0 + 72);
    v26 = *(v0 + 80);
    if (v24)
    {
      sub_100031140();
      v28 = sub_100030F60();
      v34 = v28;
      *v25 = 141558275;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      v29 = Array.description.getter();
      v31 = sub_10000D9FC(v29, v30, &v34);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Relevant predicted locations resolved to notification subscriptions; subscriptions=%{private,mask.hash}s", v25, 0x16u);
      sub_100006994(v28);
      sub_10000FA7C(v28);
      sub_100030D84();

      (*(v26 + 8))(v25, v27);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }
  }

  else
  {

    static Logger.predictedLocationNotifications.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (sub_100031158(v16))
    {
      v17 = sub_100030F7C();
      *v17 = 0;
      sub_1000310B0(&_mh_execute_header, v18, v19, "No relevant predicted locations found when resolving notification subscriptions");
      sub_10000FA7C(v17);
    }

    v20 = sub_100030CAC();
    v21(v20);
    v7 = _swiftEmptyArrayStorage;
  }

  **(v0 + 24) = v7;

  sub_100030C70();

  return v32();
}

uint64_t sub_1000276F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1000277BC, v4, v3);
}

uint64_t sub_1000277BC()
{
  sub_100030C4C();
  v1 = v0[2];
  if (v1)
  {

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    sub_1000032B8((v0[3] + 400), *(v0[3] + 424));
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1000278A8;

    return sub_100068DE0();
  }
}

uint64_t sub_1000278A8()
{
  sub_100030C4C();
  sub_100030E50();
  sub_100030C64();
  *v3 = v2;
  v4 = *v1;
  sub_100030C64();
  *v5 = v4;
  *(v7 + 64) = v6;

  sub_100030E68();
  v9 = *(v8 + 48);
  v10 = *(v0 + 40);

  return _swift_task_switch(sub_1000279BC, v10, v9);
}

uint64_t sub_1000279BC()
{
  sub_100030C4C();

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_100027ADC(uint64_t a1, uint64_t a2)
{
  sub_100030E38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v130 = *v2;
  v126 = type metadata accessor for SevereMessage(0);
  sub_100006FBC();
  v110 = v10;
  __chkstk_darwin(v11);
  sub_10000E980();
  v116 = v12;
  __chkstk_darwin(v13);
  sub_100018938();
  v115 = v14;
  v111 = v15;
  __chkstk_darwin(v16);
  sub_100018938();
  v120 = v17;
  type metadata accessor for Date();
  sub_100006FBC();
  v122 = v19;
  v123 = v18;
  __chkstk_darwin(v18);
  sub_10000E970();
  v124 = (v21 - v20);
  v22 = sub_100003020(&qword_1000A3F88, &qword_100080EE0);
  v23 = sub_100006FF0(v22);
  __chkstk_darwin(v23);
  sub_1000188B0();
  v125 = v24;
  sub_100030F24();
  __chkstk_darwin(v25);
  v27 = v109 - v26;
  v121 = type metadata accessor for APSMessage(0);
  sub_100006FBC();
  v109[1] = v28;
  __chkstk_darwin(v29);
  sub_10000E980();
  v113 = v30;
  v112 = v31;
  __chkstk_darwin(v32);
  v34 = (v109 - v33);
  v132 = type metadata accessor for Logger();
  sub_100006FBC();
  v36 = v35;
  __chkstk_darwin(v37);
  sub_1000188B0();
  v118 = v38;
  sub_100030F24();
  __chkstk_darwin(v39);
  v114 = v109 - v40;
  sub_100030F24();
  __chkstk_darwin(v41);
  v43 = v109 - v42;
  static Logger.notifications.getter();
  sub_100030BD0();
  v131 = v9;
  sub_1000304B0();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v128 = v7;
  v129 = v36;
  if (v46)
  {
    v47 = sub_100031128();
    v48 = swift_slowAlloc();
    v134[0] = v48;
    *v47 = 136315138;
    v117 = v27;
    v49 = v5;
    v119 = v3;
    v50 = *v34;
    v51 = v34[1];

    sub_100030B74();
    sub_100030508(v34);
    v52 = v50;
    v5 = v49;
    v27 = v117;
    v53 = sub_10000D9FC(v52, v51, v134);
    v3 = v119;

    *(v47 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v44, v45, "Severe notifications manager received message with identifier: %s", v47, 0xCu);
    sub_100006994(v48);
    sub_10000FA7C(v48);
    sub_10000FA7C(v47);

    v54 = v129;
  }

  else
  {

    sub_100030B74();
    sub_100030508(v34);
    v54 = v36;
  }

  v55 = *(v54 + 8);
  v55(v43, v132);
  v56 = v5;
  ReferenceCountedLazy.increase()();
  v127 = v134[0];
  NotificationEnablementTracker.trackEnablement()();
  ReferenceCountedLazy.decrease()();
  static Settings.Notifications.Severe.debugNotifications.getter();
  sub_100030CEC();
  sub_1000306FC(v57, v58, v59, &unk_100080E8C);
  Configurable.setting<A>(_:)();

  if (LOBYTE(v134[0]) == 1)
  {
    sub_10001A398(v131);
  }

  v60 = (v131 + *(v121 + 28));
  v61 = *v60;
  v62 = v60[1];
  v63 = v124;
  (*(v122 + 16))(v124, v131 + *(v121 + 20), v123);

  v64 = sub_100030E2C();
  sub_100012AB4(v64, v65, v61, v62, v63, v66);
  v67 = v125;
  sub_10002FFD0();
  if (sub_100007374(v67, 1, v126) == 1)
  {
    sub_10000E904(v67, &qword_1000A3F88, &qword_100080EE0);
LABEL_17:
    v87 = v128;
    v88 = v118;
    static Logger.notifications.getter();
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = sub_100030F7C();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v89, v90, "Unable to parse APSMessage into a SevereMessage", v91, 2u);
      sub_10000FA7C(v91);
    }

    v92 = (v55)(v88, v132);
    v87(v92);

    sub_10000E904(v27, &qword_1000A3F88, &qword_100080EE0);
    goto LABEL_23;
  }

  sub_100030D1C();
  v68 = v120;
  sub_10002FEA4();
  v69 = v56;
  if (!*(*(v68 + 32) + 16))
  {
    sub_100030BA0();
    sub_100030508(v68);
    goto LABEL_17;
  }

  v70 = v114;
  static Logger.notifications.getter();
  sub_100030D04();
  v71 = v115;
  sub_1000304B0();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  v74 = os_log_type_enabled(v72, v73);
  v109[0] = v69;
  v117 = v27;
  v119 = v3;
  if (v74)
  {
    LODWORD(v126) = v73;
    v75 = sub_100031128();
    v76 = swift_slowAlloc();
    v77 = v76;
    v134[0] = v76;
    *v75 = 136446210;
    v78 = *(v71 + 32);
    v79 = *(v78 + 16);
    if (v79)
    {
      v124 = v76;
      v125 = v75;
      v133 = _swiftEmptyArrayStorage;
      sub_100014558(0, v79, 0);
      v80 = v133;
      v81 = (v78 + 40);
      do
      {
        v83 = *(v81 - 1);
        v82 = *v81;
        v133 = v80;
        v84 = v80[2];
        v85 = v80[3];

        if (v84 >= v85 >> 1)
        {
          sub_100014558((v85 > 1), v84 + 1, 1);
          v80 = v133;
        }

        v80[2] = v84 + 1;
        v86 = &v80[2 * v84];
        v86[4] = v83;
        v86[5] = v82;
        v81 += 5;
        --v79;
      }

      while (v79);
      v77 = v124;
      v75 = v125;
    }

    v93 = Array.description.getter();
    v95 = v94;

    sub_100030BA0();
    sub_100030508(v115);
    v96 = sub_10000D9FC(v93, v95, v134);

    *(v75 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v72, v126, "Severe message contains the following events: %{public}s", v75, 0xCu);
    sub_100006994(v77);
    sub_100030D84();
    sub_10000FA7C(v75);

    v55(v114, v132);
  }

  else
  {

    v55(v70, v132);
    sub_100030BA0();
    sub_100030508(v71);
  }

  v132 = sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v97 = static OS_dispatch_queue.notifications.getter();
  sub_100030D04();
  v129 = v98;
  sub_1000304B0();
  v126 = *(v110 + 80);
  v123 = ((v126 + 16) & ~v126) + v111;
  v125 = (v126 + 16) & ~v126;
  swift_allocObject();
  sub_100030D1C();
  v124 = v99;
  sub_10002FEA4();
  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  firstly<A, B>(on:disposeOn:closure:)();

  sub_100030BD0();
  v122 = v100;
  sub_1000304B0();
  swift_allocObject();
  sub_10002FEA4();
  v101 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  sub_1000304B0();
  swift_allocObject();
  sub_10002FEA4();
  v102 = zalgo.getter();
  Promise.error(on:closure:)();

  v103 = static OS_dispatch_queue.notifications.getter();
  v104 = v120;
  sub_1000304B0();
  v105 = (v123 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = swift_allocObject();
  sub_10002FEA4();
  v107 = (v106 + v105);
  v108 = v109[0];
  *v107 = v128;
  v107[1] = v108;

  Promise.always<A>(on:disposeOn:closure:)();

  sub_10000E904(v117, &qword_1000A3F88, &qword_100080EE0);
  sub_100030508(v104);
LABEL_23:
  sub_100030E08();
}

uint64_t sub_10002865C(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for APSMessage(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  sub_1000304B0();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v7;
    v25 = v13;
    *v12 = 136446466;
    v24 = v2;
    v22 = v6;
    v14 = *v5;
    v15 = v5[1];

    sub_100030508(v5);
    v16 = sub_10000D9FC(v14, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v17 = Array.description.getter();
    v19 = sub_10000D9FC(v17, v18, &v25);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Message with identifier %{public}s resulted in notifications %{public}s", v12, 0x16u);
    swift_arrayDestroy();

    return (*(v23 + 8))(v9, v22);
  }

  else
  {

    sub_100030508(v5);
    return (*(v7 + 8))(v9, v6);
  }
}

void sub_100028938(uint64_t a1, uint64_t a2)
{
  sub_100030E38();
  v4 = v3;
  v5 = sub_100030ED0();
  v6 = type metadata accessor for APSMessage(v5);
  v7 = sub_100006FF0(v6);
  __chkstk_darwin(v7);
  sub_10000E970();
  v10 = (v9 - v8);
  v11 = type metadata accessor for Logger();
  sub_100006FBC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_10000E970();
  sub_100030DEC(v15);
  sub_100030BD0();
  sub_1000304B0();
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v29 = v4;
    v18 = sub_100031140();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136446466;
    v30 = v11;
    v21 = *v10;
    v20 = v10[1];

    sub_100030B74();
    sub_100030508(v10);
    v22 = sub_10000D9FC(v21, v20, &v31);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    swift_errorRetain();
    sub_100003020(&qword_1000A37F0, &unk_100080850);
    v23 = String.init<A>(describing:)();
    v25 = sub_10000D9FC(v23, v24, &v31);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, v29, v18, 0x16u);
    swift_arrayDestroy();
    sub_10000FA7C(v19);
    sub_100030D84();

    (*(v13 + 8))(v2, v30);
  }

  else
  {

    sub_100030B74();
    sub_100030508(v10);
    v26 = sub_100030E5C();
    v28(v26, v27);
  }

  sub_100030E08();
}

uint64_t sub_100028B7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v15 = a4;
  v16 = a3;
  v5 = type metadata accessor for Expression();
  v14 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  ReferenceCountedLazy.increase()();
  sub_1000032B8((a1 + 176), *(a1 + 200));
  sub_1000356A0();
  SevereNotificationsPowerLogger.report()();
  NotificationStore.weatherAlerts.getter();
  dispatch thunk of Table.delete.getter();

  v18 = type metadata accessor for Date();
  v19 = &protocol witness table for Date;
  sub_100006D18(v17);
  Date.init(timeIntervalSinceNow:)();
  <= infix(_:_:)();
  sub_100006994(v17);
  dispatch thunk of Delete.where(_:)();
  (*(v14 + 8))(v10, v5);

  NotificationStore.severeNotifications.getter();
  dispatch thunk of Table.delete.getter();

  v18 = type metadata accessor for Date();
  v19 = &protocol witness table for Date;
  sub_100006D18(v17);
  Date.init(timeIntervalSinceNow:)();
  <= infix(_:_:)();
  sub_100006994(v17);
  dispatch thunk of Delete.where(_:)();
  (*(v14 + 8))(v8, v5);

  v16(v11);
  ReferenceCountedLazy.decrease()();
}

uint64_t sub_100028E74()
{
  sub_100003020(&qword_1000A4178, &qword_100081AD0);
  sub_100030FB0();
  updated = type metadata accessor for LocationManagerUpdateType();
  sub_100006FBC();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100080310;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, enum case for LocationManagerUpdateType.authorization(_:), updated);
  v8(v7 + v4, enum case for LocationManagerUpdateType.currentCLLocation(_:), updated);
  return v6;
}

uint64_t sub_100028F70(uint64_t a1, int a2)
{
  v3 = sub_100003020(&unk_1000A3930, &qword_100080900);
  sub_100006FF0(v3);
  sub_100018920();
  result = __chkstk_darwin(v4);
  if (a2)
  {
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    type metadata accessor for Settings.Daemon.Performance();
    static Settings.Daemon.Performance.enableWorkloop.getter();
    SettingReader.read<A>(_:)();

    if (v16 == 1)
    {
      type metadata accessor for TaskPriority();
      sub_100030DE0();
      sub_100006BD4(v6, v7, v8, v9);
      v10 = swift_allocObject();
      swift_weakInit();

      v11 = static NotificationsActor.shared.getter();
      sub_100030B44();
      v14 = sub_1000306FC(v12, 255, v13, &protocol conformance descriptor for NotificationsActor.Actor);
      sub_100030E74();
      v15 = swift_allocObject();
      v15[2] = v11;
      v15[3] = v14;
      v15[4] = v10;

      sub_100030EC0();
      sub_10006CAAC();
    }

    else
    {
      return sub_10002979C();
    }
  }

  return result;
}

uint64_t sub_10002912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v4[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1000291F4, v6, v5);
}

uint64_t sub_1000291F4()
{
  sub_100030C4C();
  sub_100030F3C();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1000292C8;

    return sub_100029450();
  }

  else
  {

    sub_100030C20();

    return v4();
  }
}

uint64_t sub_1000292C8()
{
  sub_100030C58();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 72);
  v6 = *(v0 + 64);

  return _swift_task_switch(sub_1000293F8, v6, v5);
}

uint64_t sub_1000293F8()
{
  sub_100030C4C();

  sub_100030C20();

  return v0();
}

uint64_t sub_100029450()
{
  v1[2] = v0;
  sub_100003020(&qword_1000A3FA8, &qword_100080F00);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for NotificationSubscription();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_1000295AC, v4, v3);
}

uint64_t sub_1000295AC()
{
  sub_100030E20();
  sub_100030DA0((v0[2] + 216));
  static Location.currentLocationID.getter();
  v0[10] = v1;
  swift_task_alloc();
  sub_100030CD4();
  v0[11] = v2;
  *v2 = v3;
  v2[1] = sub_10002966C;
  sub_100030CBC();

  return dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)(v4);
}

uint64_t sub_10002966C()
{
  sub_100030C58();
  sub_100030FBC();
  sub_10000FA6C();
  *v3 = v1;
  *v3 = *v2;

  sub_100031030();
  if (v0)
  {

    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    v6 = sub_100030B1C;
  }

  else
  {

    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    v6 = sub_100030B20;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10002979C()
{
  sub_100030F30();
  v1 = sub_100003020(&unk_1000A3930, &qword_100080900);
  sub_100006FF0(v1);
  sub_100018920();
  __chkstk_darwin(v2);
  sub_100031010();
  type metadata accessor for TaskPriority();
  sub_100030DE0();
  sub_100006BD4(v3, v4, v5, v6);

  v7 = static NotificationsActor.shared.getter();
  sub_100030B44();
  v10 = sub_1000306FC(v8, 255, v9, &protocol conformance descriptor for NotificationsActor.Actor);
  sub_100030E74();
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v10;
  v11[4] = v0;
  sub_10006C7F8();
}

uint64_t sub_10002988C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100003020(&qword_1000A3FA8, &qword_100080F00);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for NotificationSubscription();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_1000299E8, v7, v6);
}

uint64_t sub_1000299E8()
{
  sub_100030E20();
  sub_100030DA0((v0[2] + 216));
  static Location.currentLocationID.getter();
  v0[10] = v1;
  swift_task_alloc();
  sub_100030CD4();
  v0[11] = v2;
  *v2 = v3;
  v2[1] = sub_100029AA8;
  sub_100030CBC();

  return dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)(v4);
}

uint64_t sub_100029AA8()
{
  sub_100030C58();
  sub_100030FBC();
  sub_10000FA6C();
  *v3 = v1;
  *v3 = *v2;

  sub_100031030();
  if (v0)
  {

    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    v6 = sub_100029CC0;
  }

  else
  {

    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    v6 = sub_100029BD8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100029BD8()
{
  sub_100030C58();
  v1 = v0[3];
  v2 = v0[4];

  if (sub_100007374(v1, 1, v2) == 1)
  {
    sub_10000E904(v0[3], &qword_1000A3FA8, &qword_100080F00);
  }

  else
  {
    v3 = v0[6];
    v4 = sub_100031064();
    v5(v4);
    sub_100029D58(v3);
    v6 = sub_100030CAC();
    v7(v6);
  }

  sub_100030C70();

  return v8();
}

uint64_t sub_100029CC0()
{
  sub_100030C4C();
  v1 = *(v0 + 32);

  sub_100030DE0();
  sub_100006BD4(v2, v3, v4, v1);
  sub_10000E904(*(v0 + 24), &qword_1000A3FA8, &qword_100080F00);

  sub_100030C70();

  return v5();
}

uint64_t sub_100029D58(uint64_t a1)
{
  result = NotificationSubscription.severeEnabled.getter();
  if (result)
  {

    Debouncer.execute(_:)();
  }

  return result;
}

uint64_t sub_100029DCC()
{
  sub_100024F60(0);
}

void sub_100029E04(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100003020(&unk_1000A3930, &qword_100080900);
  sub_100006FF0(v5);
  sub_100018920();
  __chkstk_darwin(v6);
  sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
  v7 = sub_10006D068(0xD000000000000023, 0x80000001000851E0);
  type metadata accessor for TaskPriority();
  sub_100030DE0();
  sub_100006BD4(v8, v9, v10, v11);
  v12 = a2;

  v13 = v7;
  v14 = static NotificationsActor.shared.getter();
  sub_100030B44();
  v17 = sub_1000306FC(v15, 255, v16, &protocol conformance descriptor for NotificationsActor.Actor);
  v18 = swift_allocObject();
  v18[2] = v14;
  v18[3] = v17;
  v18[4] = v12;
  v18[5] = v3;
  v18[6] = v13;
  sub_100030EC0();
  sub_10006C7F8();
}

uint64_t sub_100029F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_100003020(&qword_1000A4118, &unk_100081080);
  v6[9] = swift_task_alloc();
  v8 = type metadata accessor for NotificationSubscription.Location();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  sub_100003020(&qword_1000A3800, &unk_100080860);
  v6[13] = swift_task_alloc();
  type metadata accessor for TimeZone();
  v6[14] = swift_task_alloc();
  v9 = type metadata accessor for Location();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[20] = v11;
  v6[21] = v10;

  return _swift_task_switch(sub_10002A1F0, v11, v10);
}

uint64_t sub_10002A1F0(uint64_t a1)
{
  v2 = v1[18];
  v4 = v1[15];
  v3 = v1[16];
  v19 = v1[17];
  v6 = v1[3];
  v5 = v1[4];
  static Location.currentLocationID.getter();
  static TimeZone.current.getter();
  [v6 coordinate];
  type metadata accessor for Date();
  sub_100030DE0();
  sub_100006BD4(v7, v8, v9, v10);
  Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
  v11 = v5[30];
  v12 = v5[31];
  sub_1000032B8(v5 + 27, v11);
  (*(v3 + 16))(v19, v2, v4);
  sub_100030DE0();
  sub_100006BD4(v13, v14, v15, v4);
  sub_100030E2C();
  NotificationSubscription.Location.init(location:locationOverride:)();
  v16 = swift_task_alloc();
  v1[22] = v16;
  *v16 = v1;
  v16[1] = sub_10002A3B0;
  v17 = v1[12];

  return dispatch thunk of NotificationSubscriptionManagerType.updateSubscription(for:)(v17, v11, v12);
}

uint64_t sub_10002A3B0()
{
  sub_100030E20();
  sub_100030FBC();
  sub_100030C64();
  *v4 = v3;
  v5 = v1[12];
  v6 = v1[11];
  v7 = v1[10];
  *v4 = *v2;
  *(v3 + 184) = v0;

  (*(v6 + 8))(v5, v7);
  sub_100031030();
  v9 = *(v8 + 168);
  v10 = v1[20];
  if (v0)
  {
    v11 = sub_10002A64C;
  }

  else
  {
    v11 = sub_10002A538;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10002A538()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = v2;
  Debouncer.execute(_:)();

  v5 = sub_100030CE0();
  v6(v5);
  sub_1000310D0();

  sub_100030C70();

  return v7();
}

uint64_t sub_10002A64C()
{
  v19 = v0;

  v2 = sub_100030E5C();
  v3(v2);
  static Logger.notifications.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[23];
    v7 = v0[7];
    v17 = v0[8];
    v8 = v0[6];
    sub_100031128();
    v9 = sub_100030F60();
    v18 = v9;
    *v1 = 136315138;
    v0[2] = v6;
    swift_errorRetain();
    sub_100003020(&qword_1000A37F0, &unk_100080850);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D9FC(v10, v11, &v18);

    *(v1 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update current location subscription with error: %s", v1, 0xCu);
    sub_100006994(v9);
    sub_10000FA7C(v9);
    sub_100030D84();

    (*(v7 + 8))(v17, v8);
  }

  else
  {

    v13 = sub_100030CAC();
    v14(v13);
  }

  sub_1000310D0();

  sub_100030C70();

  return v15();
}

uint64_t sub_10002A8CC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10002C740(result, 1, sub_10005B770);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_10002AA18(uint64_t a1)
{
  sub_10003119C();
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = *(*v1 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v3;
  sub_10002C740(v7 + v6, 1, v2);
  v9 = *v1;
  if (!*(v5 + 16))
  {

    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v8(0);
  if (v10 < v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_8:
    *v1 = v9;
    sub_100031188();
    return;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v6);
  v13 = v11 + v6;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10002AB24(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002AB80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10002AC10()
{
  v1 = sub_100030DBC();
  v2 = type metadata accessor for SevereMessage(v1);
  sub_100006FF0(v2);
  return sub_10001ACE0(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
}

uint64_t sub_10002AC78()
{
  v0 = sub_100030DCC();
  v1 = type metadata accessor for APSMessage(v0);
  sub_100006FF0(v1);
  sub_100006FAC();
  v2 = sub_100006FFC();
  return sub_10002865C(v2, v3);
}

uint64_t sub_10002ACE4()
{
  type metadata accessor for SevereMessage(0);
  sub_100030C0C();
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v7;

  v10 = *(v0 + 36);
  type metadata accessor for Date();
  sub_100007050();
  (*(v11 + 8))(v9 + v10);

  return _swift_deallocObject(v1, v8 + 16, v6 | 7);
}

uint64_t sub_10002ADDC(uint64_t a1)
{
  v3 = sub_100030FB0();
  v4 = type metadata accessor for SevereMessage(v3);
  sub_10000E960(v4);
  sub_100030EE0();
  v7 = v2 + v6;
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_100028B7C(v1, v2 + v5, v8, v9);
}

uint64_t sub_10002AE68()
{
  sub_10003119C();
  type metadata accessor for SevereNotificationContent(0);
  sub_100030C0C();
  sub_100031170();

  v2 = *(v0 + 48);
  v3 = type metadata accessor for Date();
  if (!sub_100031110(v1 + v2))
  {
    sub_100030C40();
    (*(v4 + 8))(v1 + v2, v3);
  }

  sub_100030D74();
  sub_100031188();

  return _swift_deallocObject(v5, v6, v7);
}

void sub_10002AF60()
{
  v0 = sub_100030DBC();
  v1 = type metadata accessor for SevereNotificationContent(v0);
  sub_100006FF0(v1);
  sub_100006FAC();
  v2 = sub_100006FFC();
  sub_10001AAE0(v2, v3);
}

uint64_t sub_10002AFB8()
{
  sub_10003119C();
  type metadata accessor for APSMessage(0);
  sub_100030C0C();
  sub_100031170();
  v2 = *(v0 + 28);
  type metadata accessor for Date();
  sub_100007050();
  (*(v3 + 8))(v1 + v2);

  sub_100030D74();
  sub_100031188();

  return _swift_deallocObject(v4, v5, v6);
}

void sub_10002B0A0(uint64_t a1, const char *a2, ...)
{
  sub_100030F30();
  v3 = type metadata accessor for APSMessage(0);
  sub_100006FF0(v3);
  sub_100006FAC();
  sub_100028938(v2, v4);
}

uint64_t sub_10002B108()
{
  v1 = type metadata accessor for SevereMessage(0);
  sub_100006FF0(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_10001B090(v3, v4);
}

uint64_t sub_10002B17C(uint64_t a1)
{
  v4 = sub_100030ED0();
  v5 = type metadata accessor for SevereMessage(v4);
  sub_100006FF0(v5);
  return sub_10001B3BC(v3, v2, *(v1 + 16), v1 + ((*(v6 + 80) + 24) & ~*(v6 + 80)));
}

uint64_t sub_10002B1F0()
{
  type metadata accessor for SevereMessage(0);
  sub_100030C0C();
  sub_100031170();

  v2 = *(v0 + 36);
  type metadata accessor for Date();
  sub_100007050();
  (*(v3 + 8))(v1 + v2);
  v4 = sub_100030D74();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10002B2C0(uint64_t a1)
{
  v4 = sub_100030ED0();
  v5 = type metadata accessor for SevereMessage(v4);
  sub_100006FF0(v5);
  return sub_10001BEBC(v3, v2, (v1 + ((*(v6 + 80) + 16) & ~*(v6 + 80))));
}

uint64_t sub_10002B330()
{
  v1 = sub_100003020(&qword_1000A3FA8, &qword_100080F00);
  sub_10000E960(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for NotificationSubscription();
  if (!sub_100031110(v0 + v4))
  {
    sub_100030C40();
    (*(v8 + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10002B428(uint64_t a1, uint64_t a2)
{
  sub_100030F30();
  v5 = sub_100003020(&qword_1000A3FA8, &qword_100080F00);
  sub_10000E960(v5);
  sub_100030EE0();
  v8 = *(v3 + v7);

  return sub_10001D0E4(v4, v2, v3 + v6, v8);
}

uint64_t sub_10002B4CC()
{

  v0 = sub_100030EB0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002B51C()
{
  type metadata accessor for SevereMessage(0);
  sub_100030C0C();

  sub_100031170();

  v2 = *(v0 + 36);
  type metadata accessor for Date();
  sub_100007050();
  (*(v3 + 8))(v1 + v2);
  v4 = sub_100030D74();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10002B5F4(uint64_t a1, uint64_t a2)
{
  sub_100030F30();
  v2 = type metadata accessor for SevereMessage(0);
  sub_100006FF0(v2);
  v3 = sub_100031064();
  return sub_10001D944(v3, v4, v5);
}

uint64_t sub_10002B680()
{
  v1 = type metadata accessor for SevereNotificationSubscription(0);
  sub_100030BE8();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = type metadata accessor for SevereMessage(0);
  sub_100006FBC();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Location();
    sub_100007050();
    (*(v5 + 8))(v0 + v3);
    type metadata accessor for ResolvedPredictedLocation(0);
    v4 = sub_100031090();
    sub_100018904();
    v7 = *(v6 + 8);
    v7(v0 + v3 + v3, v4);
    v8 = sub_100030FE8();
    (v7)(v8);
  }

  else
  {
    type metadata accessor for NotificationSubscription.Location();
    sub_100007050();
    (*(v9 + 8))(v0 + v3);
  }

  sub_100030EF0();

  v10 = *(v4 + 28);
  type metadata accessor for Date();
  sub_100007050();
  (*(v11 + 8))(v1 + v10);
  v12 = sub_100030FD4();

  return _swift_deallocObject(v12, v13, v14);
}

uint64_t sub_10002B888()
{
  v1 = type metadata accessor for SevereNotificationSubscription(0);
  sub_10000E960(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SevereMessage(0);
  sub_100006FF0(v6);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_10001EBB0(v8, v9, v0 + v3, v10);
}

uint64_t sub_10002B94C()
{

  v0 = sub_100030EA0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002B998(uint64_t a1, uint64_t a2)
{
  sub_100030E38();
  type metadata accessor for SevereNotificationSubscription(0);
  sub_100030BE8();
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);

  sub_100030CE0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Location();
    sub_100007050();
    (*(v6 + 8))(v2 + v5);
    type metadata accessor for ResolvedPredictedLocation(0);
    v7 = sub_100030F94();
    sub_100018904();
    v9 = *(v8 + 8);
    v9(v2 + v5 + v3, v7);
    v10 = sub_100030E90();
    (v9)(v10);
  }

  else
  {
    type metadata accessor for NotificationSubscription.Location();
    sub_100007050();
    (*(v11 + 8))(v2 + v5);
  }

  sub_100030E80();
  sub_100030E08();

  return _swift_deallocObject(v12, v13, v14);
}

uint64_t sub_10002BAE8()
{
  v0 = sub_100030DCC();
  v1 = type metadata accessor for SevereNotificationSubscription(v0);
  sub_100006FF0(v1);
  v2 = sub_100006FFC();
  return sub_10001F1E0(v2, v4, v3);
}

uint64_t sub_10002BB6C()
{
  v3 = sub_100030DCC();
  v4 = type metadata accessor for SevereNotificationSubscription(v3);
  sub_10000E960(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = type metadata accessor for SevereMessage(0);
  sub_100006FF0(v9);
  result = sub_10001F904(*v1, v0 + v6, v0 + ((v6 + v8 + *(v10 + 80)) & ~*(v10 + 80)));
  *v2 = result;
  return result;
}

uint64_t sub_10002BC54(void (*a1)(void))
{
  v3 = type metadata accessor for SevereNotificationSubscription(0);
  sub_100030BE8();
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = type metadata accessor for SevereMessage(0);
  sub_100006FBC();
  a1(*(v1 + 16));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Location();
    sub_100007050();
    (*(v7 + 8))(v1 + v5);
    type metadata accessor for ResolvedPredictedLocation(0);
    v6 = sub_100031090();
    sub_100018904();
    v9 = *(v8 + 8);
    v9(v1 + v5 + v5, v6);
    v10 = sub_100030FE8();
    (v9)(v10);
  }

  else
  {
    type metadata accessor for NotificationSubscription.Location();
    sub_100007050();
    (*(v11 + 8))(v1 + v5);
  }

  sub_100030EF0();

  v12 = *(v6 + 28);
  type metadata accessor for Date();
  sub_100007050();
  (*(v13 + 8))(v3 + v12);
  v14 = sub_100030FD4();

  return _swift_deallocObject(v14, v15, v16);
}

uint64_t sub_10002BE5C()
{
  v0 = sub_100030DBC();
  v1 = type metadata accessor for SevereNotificationSubscription(v0);
  sub_10000E960(v1);
  v2 = type metadata accessor for SevereMessage(0);
  sub_100006FF0(v2);
  v3 = sub_100006FFC();
  return sub_10002138C(v3, v4, v5, v6);
}

uint64_t sub_10002BF34(uint64_t a1, uint64_t a2)
{
  sub_100030E38();
  type metadata accessor for SevereNotification(0);
  sub_100030BE8();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);

  v6 = v2 + v5;
  sub_100030CE0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = type metadata accessor for CloudChannelSevereNotification(0);
    v9 = v6 + *(v8 + 28);

    v10 = *(type metadata accessor for SevereNotificationContent(0) + 40);
    v11 = type metadata accessor for Date();
    if (!sub_100031070(v11))
    {
      sub_100030C40();
      (*(v12 + 8))(v9 + v10, v3);
    }

    v13 = (v8 + 32);
  }

  else
  {

    v14 = type metadata accessor for PeriodicSevereNotification(0);
    v15 = v6 + *(v14 + 24);

    v16 = *(type metadata accessor for SevereNotificationContent(0) + 40);
    v17 = type metadata accessor for Date();
    if (!sub_100031070(v17))
    {
      sub_100030C40();
      (*(v18 + 8))(v15 + v16, v3);
    }

    v13 = (v14 + 28);
  }

  v19 = *v13;
  type metadata accessor for Location();
  sub_100007050();
  (*(v20 + 8))(v6 + v19);
  sub_100030E80();
  sub_100030E08();

  return _swift_deallocObject(v21, v22, v23);
}

_OWORD *sub_10002C1A4(uint64_t a1)
{
  sub_10003119C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *v1;
  sub_100074DF4(v7, v5);
  sub_100030FFC();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  sub_100003020(&qword_1000A3E50, &qword_100080CF0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v4 & 1, v11))
  {
    goto LABEL_5;
  }

  v17 = sub_100074DF4(v8, v6);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *v2;
  if (v16)
  {
    sub_100006994((v19[7] + 32 * v15));
    sub_100030E2C();
    sub_100031188();

    return sub_100018804(v20, v21);
  }

  else
  {
    sub_10002C584(v15, v8, v6, v10, v19);
    sub_100031188();
  }
}

uint64_t sub_10002C2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100074DF4(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_100003020(&qword_1000A4060, &qword_100080F80);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_100074DF4(a3, a4);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v6;
  if (v19)
  {
    v23 = (v22[7] + 16 * v18);
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {
    sub_10002C5F0(v18, a3, a4, a1, a2, v22);
  }
}

void sub_10002C424(uint64_t a1, uint64_t a2)
{
  sub_100030E38();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100030FB0();
  type metadata accessor for ResolvedPredictedLocation(v9);
  sub_100018904();
  __chkstk_darwin(v10);
  sub_10000E970();
  v13 = v12 - v11;
  v14 = *v3;
  sub_100074E6C(v8);
  sub_100030FFC();
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v15;
  v19 = v16;
  sub_100003020(&qword_1000A4180, &qword_100081120);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v6 & 1, v14))
  {
    goto LABEL_5;
  }

  v20 = sub_100074E6C(v8);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v20;
LABEL_5:
  v22 = *v4;
  if (v19)
  {
    *(v22[7] + 8 * v18) = v2;
    sub_100030E08();
  }

  else
  {
    sub_1000304B0();
    sub_10002C63C(v18, v13, v2, v22);
    sub_100030E08();
  }
}

_OWORD *sub_10002C584(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100018804(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10002C5F0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_10002C63C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = type metadata accessor for ResolvedPredictedLocation(0);
  sub_100006FF0(v7);
  sub_100030D34();
  result = sub_10002FEA4();
  *(a4[7] + 8 * a1) = a3;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_10002C6DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100080D40;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_10002C740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_10002C7B8(void *a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10002F9FC(v39, v8);
  v10 = Hasher._finalize()();
  v11 = v9 + 56;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  v38 = v8;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v36 = ~v12;
    v32 = v9;
    v37 = *(v9 + 48);
    v34 = (v8 + 32);
    while (1)
    {
      v14 = (v37 + 40 * v13);
      result = *v14;
      v17 = v14[2];
      v16 = v14[3];
      v18 = v14[4];
      v19 = *v14 == v5 && v14[1] == v4;
      if (v19 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v20 = v17 == v7 && v16 == v6;
        if (v20 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          v21 = *(v18 + 16);
          if (v21 == *(v38 + 16))
          {
            break;
          }
        }
      }

LABEL_23:
      v13 = (v13 + 1) & v36;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (v21)
    {
      v22 = v18 == v38;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
LABEL_25:

      v27 = (*(v32 + 48) + 40 * v13);
      v28 = v27[1];
      v29 = v27[2];
      v30 = v27[3];
      v31 = v27[4];
      *a1 = *v27;
      a1[1] = v28;
      a1[2] = v29;
      a1[3] = v30;
      a1[4] = v31;

      return 0;
    }

    else
    {
      v23 = (v18 + 32);
      v24 = v34;
      while (v21)
      {
        if (*v23 != *v24)
        {
          goto LABEL_23;
        }

        ++v23;
        ++v24;
        if (!--v21)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_24:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = *v33;

    sub_10002DDA0(a2, v13, isUniquelyReferenced_nonNull_native);
    *v33 = v39[0];
    v26 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v26;
    a1[4] = a2[4];
    return 1;
  }

  return result;
}

BOOL sub_10002CA88(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_10002DFFC(a2, a3, v10, isUniquelyReferenced_nonNull_native, v17);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

void sub_10002CBD4(uint64_t a1, uint64_t a2)
{
  sub_100030E38();
  v4 = v3;
  v49 = v5;
  v54 = type metadata accessor for ResolvedPredictedLocation(0);
  sub_100018904();
  __chkstk_darwin(v6);
  sub_10000E970();
  v59 = v8 - v7;
  v58 = type metadata accessor for NotificationSubscription.Location();
  sub_100006FBC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000E970();
  v55 = (v13 - v12);
  v14 = sub_100003020(&qword_1000A4148, &qword_1000810C8);
  sub_100018904();
  sub_100018920();
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = type metadata accessor for SevereNotificationSubscription(0);
  sub_100006FBC();
  v62 = v19;
  v21 = __chkstk_darwin(v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v47 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v47 - v28;
  __chkstk_darwin(v27);
  sub_100018938();
  v47 = v30;
  v48 = v2;
  v31 = *v2;
  Hasher.init(_seed:)();
  v64 = v4;
  sub_10003807C();
  v32 = Hasher._finalize()();
  v33 = -1 << *(v31 + 32);
  v34 = v32 & ~v33;
  v63 = v31 + 56;
  if (((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
  {
LABEL_19:
    v44 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100030BB8();
    v46 = v47;
    sub_1000304B0();
    v65 = *v44;
    sub_10002E164(v46, v34, isUniquelyReferenced_nonNull_native);
    *v44 = v65;
    sub_100030D4C();
    sub_10002FEA4();
    goto LABEL_20;
  }

  v61 = ~v33;
  v62 = *(v62 + 72);
  v52 = (v10 + 32);
  v57 = (v10 + 8);
  v53 = v31;
  v51 = v18;
  v50 = v23;
  while (1)
  {
    v60 = v62 * v34;
    sub_1000304B0();
    v35 = *(v14 + 48);
    sub_1000304B0();
    sub_1000304B0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_100030BB8();
    sub_1000304B0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100030B2C();
      sub_100030508(v29);
      (*v57)(v26, v58);
LABEL_13:
      sub_10000E904(v17, &qword_1000A4148, &qword_1000810C8);
      goto LABEL_18;
    }

    v40 = v14;
    v41 = v55;
    v42 = v58;
    (*v52)(v55, &v17[v35], v58);
    v56 = static NotificationSubscription.Location.== infix(_:_:)();
    v43 = *v57;
    (*v57)(v41, v42);
    sub_100030B2C();
    sub_100030508(v29);
    v43(v26, v42);
    if (v56)
    {
      goto LABEL_21;
    }

    sub_100030B2C();
    sub_100030508(v17);
    v14 = v40;
    v23 = v50;
LABEL_18:
    v34 = (v34 + 1) & v61;
    if (((*(v63 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_100030BB8();
  sub_1000304B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = v59;
  if (EnumCaseMultiPayload != 1)
  {
    sub_100030B2C();
    sub_100030508(v29);
    sub_100030B5C();
    sub_100030508(v23);
    goto LABEL_13;
  }

  sub_100030D34();
  sub_10002FEA4();
  if ((static Location.== infix(_:_:)() & 1) == 0 || *&v23[*(v54 + 20)] != *(v37 + *(v54 + 20)) || (static Date.== infix(_:_:)() & 1) == 0)
  {
    sub_100030B5C();
    sub_100030508(v37);
    sub_100030B2C();
    sub_100030508(v29);
    goto LABEL_17;
  }

  v38 = static Date.== infix(_:_:)();
  sub_100030B5C();
  sub_100030508(v39);
  sub_100030B2C();
  sub_100030508(v29);
  if ((v38 & 1) == 0)
  {
LABEL_17:
    sub_100030B5C();
    sub_100030508(v23);
    sub_100030B2C();
    sub_100030508(v17);
    goto LABEL_18;
  }

  sub_100030B5C();
  sub_100030508(v23);
LABEL_21:
  sub_100030508(v17);
  sub_100030508(v64);
  sub_1000304B0();
LABEL_20:
  sub_100030E08();
}

Swift::Int sub_10002D1D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003020(&qword_1000A40C8, &unk_100080FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_32:
    v38 = v5;

    *v2 = v38;
    return result;
  }

  v39 = v1;
  v40 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      v37 = v5;
      sub_10002C6DC(0, (v36 + 63) >> 6, v7);
      v5 = v37;
    }

    else
    {
      *v7 = -1 << v36;
    }

    v2 = v39;
    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v41 = (v10 - 1) & v10;
LABEL_12:
    v16 = (*(v3 + 48) + 40 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v20 = v16[2];
    v19 = v16[3];
    v21 = v16[4];
    v22 = v5;
    Hasher.init(_seed:)();
    v43 = v18;
    String.hash(into:)();
    v42 = v20;
    String.hash(into:)();
    Hasher._combine(_:)(*(v21 + 16));
    v23 = *(v21 + 16);
    if (v23)
    {
      v24 = (v21 + 32);
      do
      {
        v25 = *v24++;
        v26 = v25;
        if (v25 == 0.0)
        {
          v26 = 0.0;
        }

        Hasher._combine(_:)(*&v26);
        --v23;
      }

      while (v23);
    }

    result = Hasher._finalize()();
    v5 = v22;
    v27 = -1 << *(v22 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v22 + 48) + 40 * v30);
    *v35 = v17;
    v35[1] = v43;
    v35[2] = v42;
    v35[3] = v19;
    v35[4] = v21;
    ++*(v22 + 16);
    v3 = v40;
    v10 = v41;
    if (!v41)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v12 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Int sub_10002D4CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003020(&qword_1000A4068, &qword_100080F88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_10002C6DC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_10002D728(uint64_t a1)
{
  v2 = v1;
  v46 = type metadata accessor for ResolvedPredictedLocation(0);
  __chkstk_darwin(v46);
  v45 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for NotificationSubscription.Location();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SevereNotificationSubscription(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v37 - v11;
  v12 = *v1;
  sub_100003020(&qword_1000A4150, &qword_1000810D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v14 = result;
  if (!*(v12 + 16))
  {
LABEL_32:

    *v2 = v14;
    return result;
  }

  v37 = v1;
  v15 = 0;
  v16 = *(v12 + 56);
  v38 = (v12 + 56);
  v17 = 1 << *(v12 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v40 = (v4 + 32);
  v39 = (v4 + 8);
  v21 = result + 56;
  v47 = v20;
  v41 = v10;
  v42 = v6;
  if (!v19)
  {
LABEL_7:
    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v15 >= v20)
      {
        break;
      }

      v23 = v38[v15];
      ++v22;
      if (v23)
      {
        v49 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    v36 = 1 << *(v12 + 32);
    if (v36 >= 64)
    {
      sub_10002C6DC(0, (v36 + 63) >> 6, v38);
    }

    else
    {
      *v38 = -1 << v36;
    }

    v2 = v37;
    *(v12 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v49 = (v19 - 1) & v19;
LABEL_12:
    v48 = *(v7 + 72);
    sub_10002FEA4();
    Hasher.init(_seed:)();
    sub_1000304B0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v45;
      sub_10002FEA4();
      Hasher._combine(_:)(1uLL);
      type metadata accessor for Location();
      sub_1000306FC(&qword_1000A4158, 255, &type metadata accessor for Location, &protocol conformance descriptor for Location);
      dispatch thunk of Hashable.hash(into:)();
      v25 = *(v24 + *(v46 + 20));
      if (v25 == 0.0)
      {
        v25 = 0.0;
      }

      Hasher._combine(_:)(*&v25);
      type metadata accessor for Date();
      sub_1000306FC(&qword_1000A4160, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      dispatch thunk of Hashable.hash(into:)();
      v10 = v41;
      dispatch thunk of Hashable.hash(into:)();
      sub_100030508(v24);
    }

    else
    {
      v27 = v43;
      v26 = v44;
      (*v40)(v43, v10, v44);
      Hasher._combine(_:)(0);
      sub_1000306FC(&qword_1000A4168, 255, &type metadata accessor for NotificationSubscription.Location, &protocol conformance descriptor for NotificationSubscription.Location);
      dispatch thunk of Hashable.hash(into:)();
      (*v39)(v27, v26);
    }

    result = Hasher._finalize()();
    v28 = -1 << *(v14 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v21 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v21 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v21 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = sub_10002FEA4();
    ++*(v14 + 16);
    v20 = v47;
    v19 = v49;
    if (!v49)
    {
      goto LABEL_7;
    }
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v21 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Int sub_10002DDA0(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v37 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    sub_10002D1D4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10002E888();
      goto LABEL_31;
    }

    sub_10002ED6C(v6 + 1);
  }

  v8 = *v5;
  v9 = v5[1];
  v10 = v5[2];
  v11 = v5[3];
  v12 = v5[4];
  v13 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v40 = v10;
  v14 = v11;
  String.hash(into:)();
  sub_10002F9FC(v41, v12);
  result = Hasher._finalize()();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a2 = result & ~v16;
  if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
LABEL_31:
    v30 = *v36;
    *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    v31 = *(v30 + 48) + 40 * a2;
    v32 = *(v37 + 16);
    *v31 = *v37;
    *(v31 + 16) = v32;
    *(v31 + 32) = *(v37 + 32);
    v33 = *(v30 + 16);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (!v34)
    {
      *(v30 + 16) = v35;
      return result;
    }

    goto LABEL_34;
  }

  v17 = v12;
  v18 = ~v16;
  v19 = *(v13 + 48);
  v38 = (v17 + 32);
  v39 = v17;
  while (1)
  {
    v20 = (v19 + 40 * a2);
    result = *v20;
    v21 = v20[2];
    v22 = v20[3];
    v23 = v20[4];
    v24 = *v20 == v8 && v20[1] == v9;
    if (v24 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      v25 = v21 == v40 && v22 == v14;
      if (v25 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v26 = *(v23 + 16);
        if (v26 == *(v39 + 16))
        {
          break;
        }
      }
    }

LABEL_30:
    a2 = (a2 + 1) & v18;
    if (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (v26)
  {
    v27 = v23 == v39;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    goto LABEL_35;
  }

  v28 = (v23 + 32);
  v29 = v38;
  while (v26)
  {
    if (*v28 != *v29)
    {
      goto LABEL_30;
    }

    ++v28;
    ++v29;
    if (!--v26)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10002DFFC(unint64_t result, unint64_t a2, unint64_t a3, char a4, __n128 a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10002D4CC(v9 + 1);
      goto LABEL_10;
    }

    if (v10 <= v9)
    {
      sub_10002F040(v9 + 1);
LABEL_10:
      v16 = *v5;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v16 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v16 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v16 + 48) + 16 * a3);
        v19 = *v18 == v8 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_10002EA0C();
  }

LABEL_7:
  v11 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v12 = (*(v11 + 48) + 16 * a3);
  *v12 = v8;
  v12[1] = a2;
  v13 = *(v11 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v15;
  }

  return result;
}

uint64_t sub_10002E164(uint64_t a1, unint64_t a2, char a3)
{
  v57 = a1;
  v48 = type metadata accessor for ResolvedPredictedLocation(0);
  __chkstk_darwin(v48);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for NotificationSubscription.Location();
  v7 = *(v53 - 8);
  __chkstk_darwin(v53);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003020(&qword_1000A4148, &qword_1000810C8);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v12 = type metadata accessor for SevereNotificationSubscription(0);
  v47 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v42 - v17;
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v21 = *(*v3 + 16);
  v22 = *(*v3 + 24);
  v42 = v3;
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10002D728(v21 + 1);
    }

    else
    {
      if (v22 > v21)
      {
        sub_10002EB64();
        goto LABEL_26;
      }

      sub_10002F2C8(v21 + 1);
    }

    v23 = *v3;
    Hasher.init(_seed:)();
    sub_10003807C();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v23 + 32);
    a2 = v24 & ~v25;
    v56 = v23 + 56;
    if ((*(v23 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v55 = ~v25;
      v54 = *(v47 + 72);
      v44 = (v7 + 32);
      v52 = (v7 + 8);
      v46 = v12;
      v45 = v23;
      v43 = v15;
      do
      {
        sub_1000304B0();
        v26 = *(v9 + 48);
        sub_1000304B0();
        sub_1000304B0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1000304B0();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v27 = v50;
            sub_10002FEA4();
            if (static Location.== infix(_:_:)() & 1) != 0 && *&v15[*(v48 + 20)] == *(v27 + *(v48 + 20)) && (v28 = static Date.== infix(_:_:)(), v27 = v50, (v28))
            {
              v29 = v50;
              v30 = static Date.== infix(_:_:)();
              sub_100030508(v29);
              sub_100030508(v20);
              if (v30)
              {
                goto LABEL_29;
              }
            }

            else
            {
              sub_100030508(v27);
              sub_100030508(v20);
            }

            sub_100030508(v15);
            sub_100030508(v11);
            goto LABEL_25;
          }

          sub_100030508(v20);
          sub_100030508(v15);
        }

        else
        {
          sub_1000304B0();
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v31 = v9;
            v32 = v18;
            v33 = v49;
            v34 = v53;
            (*v44)(v49, &v11[v26], v53);
            v51 = static NotificationSubscription.Location.== infix(_:_:)();
            v35 = *v52;
            v36 = v33;
            v18 = v32;
            (*v52)(v36, v34);
            sub_100030508(v20);
            v35(v32, v34);
            if (v51)
            {
              goto LABEL_30;
            }

            sub_100030508(v11);
            v9 = v31;
            v15 = v43;
            goto LABEL_25;
          }

          sub_100030508(v20);
          (*v52)(v18, v53);
        }

        sub_10000E904(v11, &qword_1000A4148, &qword_1000810C8);
LABEL_25:
        a2 = (a2 + 1) & v55;
      }

      while (((*(v56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_26:
  v37 = *v42;
  *(*v42 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10002FEA4();
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
LABEL_29:
    sub_100030508(v15);
LABEL_30:
    sub_100030508(v11);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v41;
  }

  return result;
}

void *sub_10002E888()
{
  v1 = v0;
  sub_100003020(&qword_1000A40C8, &unk_100080FE0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 5 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = (*(v4 + 48) + 8 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        v23[4] = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002EA0C()
{
  v1 = v0;
  sub_100003020(&qword_1000A4068, &qword_100080F88);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002EB64()
{
  v1 = v0;
  v2 = type metadata accessor for SevereNotificationSubscription(0);
  __chkstk_darwin(v2 - 8);
  sub_100003020(&qword_1000A4150, &qword_1000810D0);
  v3 = *v0;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        sub_1000304B0();
        result = sub_10002FEA4();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }

  return result;
}

Swift::Int sub_10002ED6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003020(&qword_1000A40C8, &unk_100080FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v37 = result;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v40 = (v10 - 1) & v10;
LABEL_12:
        v16 = (*(v3 + 48) + 40 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        v21 = v16[4];
        Hasher.init(_seed:)();

        v39 = v17;
        String.hash(into:)();
        v38 = v19;
        String.hash(into:)();
        Hasher._combine(_:)(*(v21 + 16));
        v22 = *(v21 + 16);
        if (v22)
        {
          v23 = (v21 + 32);
          do
          {
            v24 = *v23++;
            v25 = v24;
            if (v24 == 0.0)
            {
              v25 = 0.0;
            }

            Hasher._combine(_:)(*&v25);
            --v22;
          }

          while (v22);
        }

        result = Hasher._finalize()();
        v5 = v37;
        v26 = -1 << *(v37 + 32);
        v27 = result & ~v26;
        v28 = v27 >> 6;
        if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
        {
          break;
        }

        v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        v3 = v36;
        *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v34 = (*(v37 + 48) + 40 * v29);
        *v34 = v39;
        v34[1] = v18;
        v34[2] = v38;
        v34[3] = v20;
        v34[4] = v21;
        ++*(v37 + 16);
        v10 = v40;
        if (!v40)
        {
          goto LABEL_7;
        }
      }

      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v12 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v35;
          goto LABEL_30;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v40 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_10002F040(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003020(&qword_1000A4068, &qword_100080F88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_10002F274()
{
  result = qword_1000A4078;
  if (!qword_1000A4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4078);
  }

  return result;
}

Swift::Int sub_10002F2C8(uint64_t a1)
{
  v2 = v1;
  v42 = type metadata accessor for ResolvedPredictedLocation(0);
  __chkstk_darwin(v42);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for NotificationSubscription.Location();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SevereNotificationSubscription(0);
  v45 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v35 - v9;
  v10 = *v1;
  sub_100003020(&qword_1000A4150, &qword_1000810D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v35 = v1;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v37 = (v4 + 32);
    v36 = (v4 + 8);
    v19 = result + 56;
    v20 = v43;
    v38 = v6;
    v44 = v10;
    if (v17)
    {
      while (1)
      {
        v47 = (v17 - 1) & v17;
LABEL_12:
        v46 = *(v45 + 72);
        sub_1000304B0();
        Hasher.init(_seed:)();
        sub_1000304B0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v23 = v41;
          sub_10002FEA4();
          Hasher._combine(_:)(1uLL);
          type metadata accessor for Location();
          sub_1000306FC(&qword_1000A4158, 255, &type metadata accessor for Location, &protocol conformance descriptor for Location);
          dispatch thunk of Hashable.hash(into:)();
          v24 = *(v23 + *(v42 + 20));
          if (v24 == 0.0)
          {
            v24 = 0.0;
          }

          Hasher._combine(_:)(*&v24);
          type metadata accessor for Date();
          sub_1000306FC(&qword_1000A4160, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          dispatch thunk of Hashable.hash(into:)();
          v20 = v43;
          dispatch thunk of Hashable.hash(into:)();
          sub_100030508(v23);
        }

        else
        {
          v26 = v39;
          v25 = v40;
          (*v37)(v39, v20, v40);
          Hasher._combine(_:)(0);
          sub_1000306FC(&qword_1000A4168, 255, &type metadata accessor for NotificationSubscription.Location, &protocol conformance descriptor for NotificationSubscription.Location);
          dispatch thunk of Hashable.hash(into:)();
          (*v36)(v26, v25);
        }

        result = Hasher._finalize()();
        v27 = -1 << *(v12 + 32);
        v28 = result & ~v27;
        v29 = v28 >> 6;
        if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
        {
          break;
        }

        v30 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v19 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        result = sub_10002FEA4();
        ++*(v12 + 16);
        v17 = v47;
        if (!v47)
        {
          goto LABEL_7;
        }
      }

      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v19 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_7:
      v21 = v13;
      while (1)
      {
        v13 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v13 >= v18)
        {

          v2 = v35;
          goto LABEL_30;
        }

        v22 = *(v14 + 8 * v13);
        ++v21;
        if (v22)
        {
          v47 = (v22 - 1) & v22;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v12;
  }

  return result;
}

void sub_10002F8F8(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_10002F970(0x20000000000001uLL);
  }
}

unint64_t sub_10002F970(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002F9FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      Hasher._combine(_:)(*&v6);
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10002FAA8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10002FAB4(uint64_t a1, uint64_t a2)
{
  sub_100030E38();
  type metadata accessor for SevereNotificationSubscription(0);
  sub_100030BE8();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);

  sub_100030CE0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Location();
    sub_100007050();
    (*(v6 + 8))(v2 + v5);
    type metadata accessor for ResolvedPredictedLocation(0);
    v7 = sub_100030F94();
    sub_100018904();
    v9 = *(v8 + 8);
    v9(v2 + v5 + v3, v7);
    v10 = sub_100030E90();
    (v9)(v10);
  }

  else
  {
    type metadata accessor for NotificationSubscription.Location();
    sub_100007050();
    (*(v11 + 8))(v2 + v5);
  }

  sub_100030E80();
  sub_100030E08();

  return _swift_deallocObject(v12, v13, v14);
}

uint64_t sub_10002FC44(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void, void, unint64_t))
{
  v6 = a2(0);
  sub_100006FF0(v6);
  return a3(a1, *(v3 + 16), *(v3 + 24), v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
}

uint64_t sub_10002FCC4(uint64_t a1, uint64_t a2)
{
  sub_100030E38();
  type metadata accessor for SevereNotificationSubscription(0);
  sub_100030BE8();
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Location();
    sub_100007050();
    (*(v6 + 8))(v2 + v5);
    type metadata accessor for ResolvedPredictedLocation(0);
    v7 = sub_100030F94();
    sub_100018904();
    v9 = *(v8 + 8);
    v9(v2 + v5 + v3, v7);
    v10 = sub_100030E90();
    (v9)(v10);
  }

  else
  {
    type metadata accessor for NotificationSubscription.Location();
    sub_100007050();
    (*(v11 + 8))(v2 + v5);
  }

  sub_100030E08();

  return _swift_deallocObject(v12, v13, v14);
}

uint64_t sub_10002FE28()
{
  v0 = sub_100030DBC();
  v1 = type metadata accessor for SevereNotificationSubscription(v0);
  sub_10000E960(v1);
  sub_100030EE0();
  v2 = sub_100006FFC();
  return sub_10002043C(v2, v3, v4);
}

uint64_t sub_10002FEA4()
{
  sub_100031024();
  v1(0);
  sub_100018904();
  v2 = sub_100030E2C();
  v3(v2);
  return v0;
}

uint64_t sub_10002FEFC()
{
  sub_100031024();
  sub_100003020(v1, v2);
  sub_100018904();
  v3 = sub_100030E2C();
  v4(v3);
  return v0;
}

uint64_t sub_10002FFD0()
{
  sub_100031024();
  sub_100003020(v1, v2);
  sub_100018904();
  v3 = sub_100030E2C();
  v4(v3);
  return v0;
}

uint64_t sub_1000300CC()
{
  sub_100030C4C();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_10003103C(v1);

  return sub_1000243C8(v3, v4);
}

uint64_t sub_100030150()
{
  sub_100030C58();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_100030BFC(v2);
  *v3 = v4;
  v5 = sub_100030B8C(v3);

  return sub_100026B2C(v5, v6, v1);
}

uint64_t sub_1000301E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100030234()
{
  sub_100030E20();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = sub_100030BFC(v5);
  *v6 = v7;
  v8 = sub_100030B8C(v6);

  return sub_100029F68(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_1000302E4()
{

  v1 = sub_100030EB0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100030324()
{
  swift_weakDestroy();
  v0 = sub_100030EA0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100030354()
{
  sub_100030C58();
  sub_100030D64();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  sub_100030B8C(v1);
  sub_100030FC8();

  return sub_100025294(v3, v4, v5, v6);
}

uint64_t sub_1000303E4()
{

  sub_100030E74();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100030480()
{
  v1 = sub_100030EA0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000304B0()
{
  sub_100031024();
  v1(0);
  sub_100018904();
  v2 = sub_100030E2C();
  v3(v2);
  return v0;
}

uint64_t sub_100030508(uint64_t a1)
{
  v2 = sub_100030FB0();
  v3(v2);
  sub_100007050();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t sub_10003055C()
{

  v0 = sub_100030EB0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100030594()
{
  sub_100030C4C();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_10003103C(v1);

  return sub_1000243C8(v3, v4);
}

uint64_t sub_100030618()
{
  sub_100030C4C();
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  sub_100030C70();

  return v3();
}

uint64_t sub_1000306FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100030748()
{
  sub_100030C58();
  sub_100030D64();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  sub_100030B8C(v1);
  sub_100030FC8();

  return sub_10002912C(v3, v4, v5, v6);
}

uint64_t sub_1000307E0()
{
  sub_100030C58();
  sub_100030D64();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  sub_100030B8C(v1);
  sub_100030FC8();

  return sub_10002988C(v3, v4, v5, v6);
}

uint64_t sub_100030870()
{
  swift_unknownObjectRelease();

  sub_100030E74();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000308AC()
{
  sub_100030C58();
  sub_100030D64();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  sub_100030B8C(v1);
  sub_100030FC8();

  return sub_100019500();
}

uint64_t sub_100030944(uint64_t a1, unint64_t *a2, void *a3)
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

_BYTE *storeEnumTagSinglePayload for SevereNotificationsManager.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100030A50);
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

unint64_t sub_100030A8C()
{
  result = qword_1000A4190;
  if (!qword_1000A4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4190);
  }

  return result;
}

uint64_t sub_100030D84()
{
}

uint64_t sub_100030DEC(uint64_t a1)
{

  return static Logger.notifications.getter();
}

uint64_t sub_100030EF0()
{
}

uint64_t sub_100030F3C()
{

  return swift_beginAccess();
}

uint64_t sub_100030F60()
{

  return swift_slowAlloc();
}

uint64_t sub_100030F7C()
{

  return swift_slowAlloc();
}

uint64_t sub_100030F94()
{

  return type metadata accessor for Date();
}

uint64_t sub_100031070(uint64_t a1)
{

  return sub_100007374(v1 + v2, 1, a1);
}

uint64_t sub_100031090()
{

  return type metadata accessor for Date();
}

void sub_1000310B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_1000310D0()
{
}

void sub_1000310F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100031110(uint64_t a1)
{

  return sub_100007374(a1, 1, v1);
}

uint64_t sub_100031128()
{

  return swift_slowAlloc();
}

uint64_t sub_100031140()
{

  return swift_slowAlloc();
}

BOOL sub_100031158(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100031170()
{
}

uint64_t ResolvedPredictedLocation.location.getter()
{
  type metadata accessor for Location();
  sub_100018904();
  v1 = sub_1000326C4();

  return v2(v1, v0);
}

uint64_t type metadata accessor for ResolvedPredictedLocation(uint64_t a1)
{
  result = qword_1000A4200;
  if (!qword_1000A4200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ResolvedPredictedLocation.startDate.getter()
{
  type metadata accessor for ResolvedPredictedLocation(0);
  type metadata accessor for Date();
  sub_100018904();
  v0 = sub_1000326C4();

  return v1(v0);
}

uint64_t ResolvedPredictedLocation.endDate.getter()
{
  type metadata accessor for ResolvedPredictedLocation(0);
  type metadata accessor for Date();
  sub_100018904();
  v0 = sub_1000326C4();

  return v1(v0);
}

uint64_t ResolvedPredictedLocation.init(location:probability:startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  type metadata accessor for Location();
  sub_100018904();
  (*(v10 + 32))(a4, a1);
  v11 = type metadata accessor for ResolvedPredictedLocation(0);
  *(a4 + v11[5]) = a5;
  v12 = v11[6];
  v13 = type metadata accessor for Date();
  sub_100018904();
  v17 = *(v14 + 32);
  v17(a4 + v12, a2, v13);
  v15 = a4 + v11[7];

  return (v17)(v15, a3, v13);
}

uint64_t static ResolvedPredictedLocation.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ResolvedPredictedLocation(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)) || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t ResolvedPredictedLocation.hash(into:)(uint64_t a1)
{
  type metadata accessor for Location();
  sub_100031920(&qword_1000A4158, &type metadata accessor for Location, &protocol conformance descriptor for Location);
  sub_1000326C4();
  dispatch thunk of Hashable.hash(into:)();
  v2 = *(v1 + *(type metadata accessor for ResolvedPredictedLocation(0) + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  type metadata accessor for Date();
  sub_100032604();
  sub_100031920(v3, v4, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int ResolvedPredictedLocation.hashValue.getter()
{
  Hasher.init(_seed:)();
  ResolvedPredictedLocation.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100031658(uint64_t a1)
{
  Hasher.init(_seed:)();
  ResolvedPredictedLocation.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t ResolvedPredictedLocation.description.getter()
{
  v1 = type metadata accessor for Location.Identifier();
  sub_100006FBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100032694();
  _StringGuts.grow(_:)(57);
  v5._countAndFlagsBits = 0x6F697461636F6C7BLL;
  v5._object = 0xEC0000003D44496ELL;
  String.append(_:)(v5);
  Location.identifier.getter();
  v6 = Location.Identifier.uniqueID.getter();
  v8 = v7;
  (*(v3 + 8))(v0, v1);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6261626F7270202CLL;
  v10._object = 0xEE003D7974696C69;
  String.append(_:)(v10);
  type metadata accessor for ResolvedPredictedLocation(0);
  Double.write<A>(to:)();
  v11._countAndFlagsBits = 0x447472617473202CLL;
  v11._object = 0xEC0000003D657461;
  String.append(_:)(v11);
  type metadata accessor for Date();
  sub_100032604();
  sub_100031920(v12, v13, &protocol conformance descriptor for Date);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x746144646E65202CLL;
  v15._object = 0xEA00000000003D65;
  String.append(_:)(v15);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 125;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

uint64_t sub_100031920(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100031980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = a1 + *(a3 + 24);
  }

  return sub_100007374(v8, a2, v7);
}

uint64_t sub_100031A30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Location();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for Date();
    v10 = a1 + *(a4 + 24);
  }

  return sub_100006BD4(v10, a2, a2, v9);
}

uint64_t sub_100031AD4(uint64_t a1)
{
  result = type metadata accessor for Location();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100031B60()
{
  sub_10003265C();
  v3 = sub_1000326B8();
  v4 = type metadata accessor for ResolvedPredictedLocation(v3);
  sub_100006FBC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000188B0();
  v26 = v8;
  sub_100030F24();
  __chkstk_darwin(v9);
  sub_10003264C();
  v10 = 0;
  v11 = *v0;
  v12 = *(*v0 + 16);
  v13 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v12 == v10)
    {

      *v0 = v13;
      sub_100032678();
      return;
    }

    if (v10 >= *(v11 + 16))
    {
      break;
    }

    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = *(v6 + 72);
    sub_1000324E0(v11 + v14 + v15 * v10, v1);
    if (*(v1 + *(v4 + 20)) >= v2)
    {
      sub_1000325A0(v1, v26);
      v27 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10003261C(v13[2]);
      }

      v17 = v13[2];
      v16 = v13[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_10003263C(v16);
        v20 = v19;
        sub_1000326AC();
        v25 = v21;
        sub_1000147D4(v22, v23, v24);
        v18 = v20;
        v17 = v25;
        v13 = v27;
      }

      ++v10;
      v13[2] = v18;
      sub_1000325A0(v26, v13 + v14 + v17 * v15);
    }

    else
    {
      sub_100032544(v1);
      ++v10;
    }
  }

  __break(1u);
}

void sub_100031D00(uint64_t a1)
{
  sub_10003265C();
  v5 = v4;
  sub_1000326B8();
  v37 = type metadata accessor for LocationCoordinate();
  sub_100006FBC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100032694();
  v9 = type metadata accessor for ResolvedPredictedLocation(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  sub_1000188B0();
  v35 = v11;
  sub_100030F24();
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  if (v5)
  {
    v34 = v1;
    v15 = *v1;
    v39 = *(*v1 + 16);
    v16 = (v7 + 8);
    v38 = v5;
    v17 = 0;
    v36 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v39 == v17)
      {

        *v34 = v36;
        goto LABEL_13;
      }

      if (v17 >= *(v15 + 16))
      {
        break;
      }

      v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v19 = *(v10 + 72);
      sub_1000324E0(v15 + v18 + v19 * v17, v14);
      Location.coordinate.getter();
      LocationCoordinate.init(_:)();
      v20 = LocationCoordinate.clLocation.getter();
      (*v16)(v2, v37);
      [v20 distanceFromLocation:v38];
      v22 = v21;

      if (v22 >= v3)
      {
        sub_1000325A0(v14, v35);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v23;
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10003261C(v23[2]);
          v25 = v40;
        }

        v27 = v25[2];
        v26 = v25[3];
        v28 = (v27 + 1);
        if (v27 >= v26 >> 1)
        {
          sub_10003263C(v26);
          v36 = v29;
          sub_1000326AC();
          sub_1000147D4(v30, v31, v32);
          v28 = v36;
          v25 = v40;
        }

        ++v17;
        v25[2] = v28;
        v36 = v25;
        sub_1000325A0(v35, v25 + v18 + v27 * v19);
      }

      else
      {
        sub_100032544(v14);
        ++v17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    sub_100032678();
  }
}

void sub_100031F80(uint64_t a1)
{
  sub_10003265C();
  v5 = v4;
  v6 = sub_1000326B8();
  v7 = type metadata accessor for ResolvedPredictedLocation(v6);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  sub_1000188B0();
  v28 = v9;
  sub_100030F24();
  __chkstk_darwin(v10);
  sub_10003264C();
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v27 = v1;
      v11 = *v1;
      v12 = *(*v1 + 16);

      v13 = 0;
      v1 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v12 == v13)
        {
          swift_bridgeObjectRelease_n();
          *v27 = _swiftEmptyArrayStorage;
          goto LABEL_14;
        }

        if (v13 >= *(v11 + 16))
        {
          break;
        }

        v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v15 = *(v8 + 72);
        sub_1000324E0(v11 + v14 + v15 * v13, v2);
        sub_10003218C(v3, v2, v5);
        if (v16)
        {
          sub_1000325A0(v2, v28);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10003261C(_swiftEmptyArrayStorage[2]);
          }

          v18 = _swiftEmptyArrayStorage[2];
          v17 = _swiftEmptyArrayStorage[3];
          v19 = v18 + 1;
          if (v18 >= v17 >> 1)
          {
            sub_10003263C(v17);
            v25 = v20;
            v26 = v21;
            sub_1000326AC();
            sub_1000147D4(v22, v23, v24);
            v18 = v25;
            v19 = v26;
          }

          ++v13;
          _swiftEmptyArrayStorage[2] = v19;
          sub_1000325A0(v28, _swiftEmptyArrayStorage + v14 + v18 * v15);
        }

        else
        {
          sub_100032544(v2);
          ++v13;
        }
      }

      __break(1u);
LABEL_16:
      ;
    }

    while (_CocoaArrayWrapper.endIndex.getter());
  }

LABEL_14:
  sub_100032678();
}

void sub_10003218C(double a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LocationCoordinate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Location.coordinate.getter();
  LocationCoordinate.init(_:)();
  v9 = LocationCoordinate.clLocation.getter();
  (*(v6 + 8))(v8, v5);
  v10 = sub_100037A1C(a3);
  v11 = 0;
  while (1)
  {
    v12 = v11;
    if (v10 == v11)
    {
LABEL_10:

      return;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v13 = *(a3 + 8 * v11 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    [v9 distanceFromLocation:v13];
    v16 = v15;

    v11 = v12 + 1;
    if (v16 < a1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_100032330()
{
  sub_10003265C();
  v3 = v0;
  v4 = sub_1000326B8();
  type metadata accessor for ResolvedPredictedLocation(v4);
  sub_100006FBC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000188B0();
  v25 = v8;
  sub_100030F24();
  __chkstk_darwin(v9);
  sub_10003264C();
  v10 = 0;
  v11 = *v0;
  v12 = *(*v0 + 16);
  v26 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v12 == v10)
    {

      *v3 = v26;
      sub_100032678();
      return;
    }

    if (v10 >= *(v11 + 16))
    {
      break;
    }

    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = *(v6 + 72);
    sub_1000324E0(v11 + v13 + v14 * v10, v1);
    Date.timeIntervalSince(_:)();
    if (v15 >= v2)
    {
      sub_1000325A0(v1, v25);
      v16 = v26;
      v28 = v26;
      v24 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10003261C(v26[2]);
        v16 = v26;
      }

      v18 = v16[2];
      v17 = v16[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_10003263C(v17);
        v27 = v20;
        sub_1000326AC();
        sub_1000147D4(v21, v22, v23);
        v19 = v27;
        v16 = v28;
      }

      ++v10;
      v16[2] = v19;
      v26 = v16;
      sub_1000325A0(v25, v16 + v13 + v18 * v14);
      v3 = v24;
    }

    else
    {
      sub_100032544(v1);
      ++v10;
    }
  }

  __break(1u);
}

uint64_t sub_1000324E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedPredictedLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032544(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedPredictedLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000325A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedPredictedLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_10003261C@<X0>(uint64_t a1@<X8>)
{

  return sub_1000147D4(0, a1 + 1, 1);
}

void sub_1000326D0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = 0;
  v16 = a3 & 0xC000000000000001;
  v17 = sub_100036C5C(a3);
  v6 = _swiftEmptyArrayStorage;
  while (v17 != v5)
  {
    if (v16)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(a3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v20 = v7;
    a1(&v18, &v20);
    if (v3)
    {

      return;
    }

    v9 = v19;
    if (v19)
    {
      v10 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005B5C4();
        v6 = v13;
      }

      v11 = v6[2];
      if (v11 >= v6[3] >> 1)
      {
        sub_10005B5C4();
        v6 = v14;
      }

      v6[2] = v11 + 1;
      v12 = &v6[2 * v11];
      v12[4] = v10;
      v12[5] = v9;
    }

    ++v5;
  }
}

void *sub_100032854(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = type metadata accessor for WidgetNames();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = (v5)(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000329C0()
{

  sub_100006994((v0 + 32));
  return v0;
}

uint64_t sub_1000329F0()
{
  sub_1000329C0();

  return _swift_deallocClassInstance(v0, 72, 7);
}

void sub_100032A48()
{
  sub_100030E38();
  v71 = v1;
  v3 = v2;
  v4 = type metadata accessor for SevereNotificationSubscription(0);
  v5 = sub_10000E960(v4);
  v69 = v6;
  v7 = __chkstk_darwin(v5);
  v15 = sub_100037AFC(v7, v8, v9, v10, v11, v12, v13, v14, v62);
  v16 = type metadata accessor for SevereNotificationContent(v15);
  v17 = sub_100006FF0(v16);
  __chkstk_darwin(v17);
  sub_10000E970();
  v65 = v19 - v18;
  v20 = type metadata accessor for SevereNotification(0);
  v21 = sub_10000E960(v20);
  v66 = v22;
  v23 = __chkstk_darwin(v21);
  v67 = v24;
  v68 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v62 - v25;
  v27 = type metadata accessor for Logger();
  sub_100006FBC();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_10000E970();
  v33 = v32 - v31;
  static Logger.notifications.getter();
  sub_100037A24();
  sub_100037338(v3, v26, v34);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = sub_100031128();
    v64 = v0;
    v38 = v37;
    v39 = sub_100037B44();
    v63 = v3;
    v40 = v39;
    v72 = v39;
    *v38 = 136446210;
    v41 = sub_10005047C();
    v62 = v27;
    v43 = v42;
    sub_100037AC4();
    v44 = sub_10000D9FC(v41, v43, &v72);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Scheduling notification with identifier %{public}s", v38, 0xCu);
    sub_100006994(v40);
    v45 = v40;
    v3 = v63;
    sub_10000FA7C(v45);
    sub_10000FA7C(v38);

    (*(v29 + 8))(v33, v62);
  }

  else
  {

    sub_100037AC4();
    (*(v29 + 8))(v33, v27);
  }

  sub_100030944(0, &qword_1000A42F0, UNNotificationRequest_ptr);
  v46 = sub_10005047C();
  v48 = v47;
  sub_100030944(0, &qword_1000A42F8, UNMutableNotificationContent_ptr);
  v49 = v65;
  sub_1000505D4(v65);
  v50 = sub_1000737B8(v49);
  v51 = sub_100032F98(v46, v48, v50, 0);
  v52 = sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v53 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = v51;
  v54 = v51;
  firstly<A, B>(on:disposeOn:closure:)();

  v55 = static OS_dispatch_queue.notifications.getter();
  sub_100037A24();
  sub_100037338(v3, v68, v56);
  sub_100037AEC();
  v57 = sub_100037B2C();
  sub_100037A70(v57);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v58 = v52;
  v59 = static OS_dispatch_queue.notifications.getter();
  v60 = v70;
  sub_100037338(v71, v70, type metadata accessor for SevereNotificationSubscription);
  sub_100037AEC();
  v61 = sub_100037B2C();
  sub_1000374FC(v60, v61 + v58, type metadata accessor for SevereNotificationSubscription);
  Promise.then<A, B>(on:disposeOn:closure:)();

  sub_100030E08();
}

id sub_100032F98(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v6 content:a3 trigger:a4];

  return v7;
}

uint64_t sub_10003301C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  ReferenceCountedLazy.increase()();
  sub_1000330E8(v4, v5, a3, v8);
  ReferenceCountedLazy.decrease()();
  sub_100003020(&qword_1000A4020, &qword_100080F50);
  swift_allocObject();

  v6 = Promise.init(value:)();

  return v6;
}

uint64_t sub_1000330E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v127 = a4;
  v130 = a3;
  v115 = a2;
  v114 = a1;
  v90 = type metadata accessor for Logger();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Expression();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v88 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Date();
  v7 = __chkstk_darwin(v87);
  v113 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v84 - v9;
  v10 = type metadata accessor for UUID();
  v143 = *(v10 - 8);
  v144 = v10;
  v11 = __chkstk_darwin(v10);
  v111 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v84 - v13;
  v126 = type metadata accessor for SevereNotificationContent(0);
  v14 = __chkstk_darwin(v126);
  v125 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v84 - v16;
  v124 = type metadata accessor for CloudChannelSevereNotification(0);
  __chkstk_darwin(v124);
  v132 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for PeriodicSevereNotification(0);
  __chkstk_darwin(v123);
  v122 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for Location();
  v20 = *(v121 - 8);
  v21 = __chkstk_darwin(v121);
  v120 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v119 = &v84 - v23;
  v147 = type metadata accessor for SevereNotification(0);
  v24 = __chkstk_darwin(v147);
  v109 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v118 = &v84 - v27;
  v28 = __chkstk_darwin(v26);
  v117 = &v84 - v29;
  __chkstk_darwin(v28);
  v116 = &v84 - v30;
  v128 = type metadata accessor for SevereNotificationEntity.NotificationKind();
  v31 = *(v128 - 8);
  __chkstk_darwin(v128);
  v145 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for SevereNotificationEntity();
  v142 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for WeatherAlert();
  v34 = *(v129 - 8);
  __chkstk_darwin(v129);
  v146 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v40 = JSONEncoder.init()();
  (*(v37 + 104))(v39, enum case for JSONEncoder.DateEncodingStrategy.secondsSince1970(_:), v36);
  v41 = v130;
  v131 = v40;
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  result = sub_10005076C();
  v96 = *(result + 16);
  if (v96)
  {
    v43 = 0;
    v104 = result + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v103 = v34 + 16;
    v102 = enum case for SevereNotificationEntity.NotificationKind.periodic(_:);
    v101 = (v31 + 104);
    v100 = (v20 + 16);
    v99 = (v20 + 32);
    v98 = enum case for SevereNotificationEntity.NotificationKind.cloudChannel(_:);
    v97 = (v20 + 8);
    ++v143;
    v94 = (v142 + 8);
    v106 = (v34 + 8);
    v95 = v5;
    v44 = v129;
    v92 = v31;
    v45 = v146;
    v93 = v17;
    v91 = v34;
    v105 = result;
    while (1)
    {
      if (v43 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      (*(v34 + 16))(v45, v104 + *(v34 + 72) * v43, v44);
      v46 = v116;
      sub_100037338(v41, v116, type metadata accessor for SevereNotification);
      v47 = swift_getEnumCaseMultiPayload() == 1 ? v98 : v102;
      (*v101)(v145, v47, v128);
      sub_100036FB8(v46, type metadata accessor for SevereNotification);
      v48 = v117;
      sub_100037338(v41, v117, type metadata accessor for SevereNotification);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v140 = v43;
      if (EnumCaseMultiPayload == 1)
      {
        v50 = v132;
        sub_1000374FC(v48, v132, type metadata accessor for CloudChannelSevereNotification);
        v51 = v120;
        v52 = v121;
        (*v100)(v120, v50 + *(v124 + 32), v121);
        v53 = type metadata accessor for CloudChannelSevereNotification;
      }

      else
      {
        v50 = v122;
        sub_1000374FC(v48, v122, type metadata accessor for PeriodicSevereNotification);
        v51 = v120;
        v52 = v121;
        (*v100)(v120, v50 + *(v123 + 28), v121);
        v53 = type metadata accessor for PeriodicSevereNotification;
      }

      sub_100036FB8(v50, v53);
      v54 = v125;
      v55 = v119;
      (*v99)(v119, v51, v52);
      v141 = Location.id.getter();
      v142 = v56;
      (*v97)(v55, v52);
      v57 = v118;
      sub_100037338(v41, v118, type metadata accessor for SevereNotification);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v58 = v57;
        v59 = v132;
        sub_1000374FC(v58, v132, type metadata accessor for CloudChannelSevereNotification);
        sub_100037338(v59 + *(v124 + 28), v54, type metadata accessor for SevereNotificationContent);
        v60 = type metadata accessor for CloudChannelSevereNotification;
      }

      else
      {
        v61 = v57;
        v59 = v122;
        sub_1000374FC(v61, v122, type metadata accessor for PeriodicSevereNotification);
        sub_100037338(v59 + *(v123 + 24), v54, type metadata accessor for SevereNotificationContent);
        v60 = type metadata accessor for PeriodicSevereNotification;
      }

      sub_100036FB8(v59, v60);
      sub_1000374FC(v54, v17, type metadata accessor for SevereNotificationContent);
      sub_1000379B8(&qword_1000A4320, type metadata accessor for SevereNotificationContent, &unk_100082E30);
      v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v64 = v63;
      sub_100036FB8(v17, type metadata accessor for SevereNotificationContent);
      sub_1000379B8(&qword_1000A4328, &type metadata accessor for WeatherAlert, &protocol conformance descriptor for WeatherAlert);
      v136 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v138 = v62;
      v139 = 0;
      v65 = v110;
      WeatherAlert.id.getter();
      v66 = UUID.uuidString.getter();
      v134 = v67;
      v135 = v66;
      v68 = *v143;
      (*v143)(v65, v144);
      v69 = v109;
      sub_100037338(v41, v109, type metadata accessor for SevereNotification);
      v70 = swift_getEnumCaseMultiPayload();
      v137 = v64;
      if (v70 == 1)
      {
        v71 = v132;
        sub_1000374FC(v69, v132, type metadata accessor for CloudChannelSevereNotification);
        v133 = *(v71 + 16);

        sub_100036FB8(v71, type metadata accessor for CloudChannelSevereNotification);
      }

      else
      {
        sub_100036FB8(v69, type metadata accessor for SevereNotification);
        v133 = 0;
      }

      WeatherAlert.description.getter();
      WeatherAlert.issuedTime.getter();
      WeatherAlert.expireTime.getter();
      v72 = v111;
      UUID.init()();
      UUID.uuidString.getter();
      v68(v72, v144);

      v73 = v107;
      SevereNotificationEntity.init(identifier:notificationIdentifier:notificationKind:subscription:notification:alert:alertIdentifier:messageIdentifier:alertDescription:issuedTime:expireTime:replacementAlert:)();
      v74 = v139;
      NotificationStore.severeNotifications.getter();
      if (v74)
      {
        break;
      }

      dispatch thunk of Table.save.getter();

      dispatch thunk of Save.entity(_:)();
      v44 = v129;
      v43 = v140 + 1;

      (*v94)(v73, v108);
      v45 = v146;
      (*v106)(v146, v44);
      v41 = v130;
      v17 = v93;
      v34 = v91;
      result = v105;
      if (v96 == v43)
      {
        goto LABEL_18;
      }
    }

    (*v94)(v73, v108);
    (*v106)(v146, v129);
    v76 = v95;
    static Logger.notifications.getter();
    swift_errorRetain();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v148[0] = v80;
      *v79 = 136446210;
      v148[5] = v74;
      swift_errorRetain();
      sub_100003020(&qword_1000A37F0, &unk_100080850);
      v81 = String.init<A>(describing:)();
      v83 = sub_10000D9FC(v81, v82, v148);

      *(v79 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v77, v78, "An error occurred while saving severe notification entity: %{public}s", v79, 0xCu);
      sub_100006994(v80);
    }

    else
    {
    }

    return (*(v89 + 8))(v76, v90);
  }

  else
  {
LABEL_18:

    NotificationStore.severeNotifications.getter();
    dispatch thunk of Table.delete.getter();

    v148[3] = v87;
    v148[4] = &protocol witness table for Date;
    sub_100006D18(v148);
    Date.init(timeIntervalSinceNow:)();
    v75 = v88;
    <= infix(_:_:)();
    sub_100006994(v148);
    dispatch thunk of Delete.where(_:)();
    (*(v85 + 8))(v75, v86);
  }
}

uint64_t sub_100034438(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SevereNotificationSubscription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = *a1;
  v9 = a1[1];
  sub_100003020(&qword_1000A4020, &qword_100080F50);
  sub_100037338(a3, v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SevereNotificationSubscription);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_1000374FC(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SevereNotificationSubscription);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v10;
  v13[1] = v9;

  return Promise.__allocating_init<A>(task:)();
}

uint64_t sub_1000345C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000379B8(&qword_1000A40F8, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_100034690, v7, v6);
}

uint64_t sub_100034690()
{
  sub_1000032B8((*(v0 + 24) + 32), *(*(v0 + 24) + 56));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100034738;

  return sub_100055668();
}

uint64_t sub_100034738()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100034858, v3, v2);
}

uint64_t sub_100034858()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[2];

  *v3 = v2;
  v3[1] = v1;
  v5 = v0[1];

  return v5();
}

void sub_1000348E0()
{
  sub_100030E38();
  v2 = v1;
  v4 = v3;
  v30 = v5;
  v6 = type metadata accessor for SevereNotification(0);
  v7 = sub_10000E960(v6);
  v8 = __chkstk_darwin(v7);
  sub_100037AFC(v8, v9, v10, v11, v12, v13, v14, v15, v28);
  v16 = type metadata accessor for Logger();
  sub_100006FBC();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_10000E970();
  sub_100037B1C();
  static Logger.notifications.getter();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_100031128();
    v23 = sub_100037B44();
    v31 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_10000D9FC(v30, v4, &v31);
    _os_log_impl(&_mh_execute_header, v20, v21, "Replacing content for notification with identifier %{public}s", v22, 0xCu);
    sub_100006994(v23);
    sub_10000FA7C(v23);
    sub_10000FA7C(v22);
  }

  v24 = (*(v18 + 8))(v0, v16);
  __chkstk_darwin(v24);
  sub_100003020(&qword_1000A4020, &qword_100080F50);
  swift_allocObject();
  Promise.init(resolver:)();
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.notifications.getter();
  sub_100037A24();
  sub_100037338(v2, v29, v26);
  sub_100037AEC();
  v27 = sub_100037B2C();
  sub_100037A70(v27);
  Promise.then<A, B>(on:disposeOn:closure:)();

  sub_100030E08();
}

void sub_100034BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SevereNotificationContent(0);
  __chkstk_darwin(v15 - 8);
  v17 = aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_100030944(0, &qword_1000A42F8, UNMutableNotificationContent_ptr);

  sub_1000505D4(v17);
  v19 = sub_1000737B8(v17);
  v20 = *(a6 + 16);
  v21 = String._bridgeToObjectiveC()();
  v22 = swift_allocObject();
  v22[2] = a7;
  v22[3] = a8;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = sub_100037044;
  v22[7] = v18;
  aBlock[4] = sub_1000370C4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035188;
  aBlock[3] = &unk_10009BC48;
  v23 = _Block_copy(aBlock);

  [v20 replaceContentForRequestWithIdentifier:v21 replacementContent:v19 completionHandler:v23];
  _Block_release(v23);
}

uint64_t sub_100034DE4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v31 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  if (a1)
  {
    swift_errorRetain();
    static Logger.notifications.getter();
    swift_errorRetain();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v10;
      v33 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_10000D9FC(a2, a3, &v33);
      *(v19 + 12) = 2082;
      v32 = a1;
      swift_errorRetain();
      sub_100003020(&qword_1000A37F0, &unk_100080850);
      v21 = String.init<A>(describing:)();
      v23 = sub_10000D9FC(v21, v22, &v33);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to replace content of notification: %{public}s with error: %{public}s", v19, 0x16u);
      swift_arrayDestroy();

      (*(v11 + 8))(v16, v30);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    v31(a1);
  }

  else
  {
    static Logger.notifications.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v30 = v10;
      v27 = v26;
      v28 = swift_slowAlloc();
      v33 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_10000D9FC(a2, a3, &v33);
      _os_log_impl(&_mh_execute_header, v24, v25, "Replaced content of notification: %{public}s", v27, 0xCu);
      sub_100006994(v28);

      (*(v11 + 8))(v14, v30);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    return a6(a2, a3);
  }
}

void sub_100035188(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000351F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  ReferenceCountedLazy.increase()();
  sub_1000330E8(v4, v5, a3, v8);
  sub_100003020(&qword_1000A4020, &qword_100080F50);
  swift_allocObject();

  v6 = Promise.init(value:)();
  ReferenceCountedLazy.decrease()();

  return v6;
}

void sub_1000352C0()
{
  sub_100030E38();
  v2 = v1;
  v3 = type metadata accessor for SevereNotificationContent(0);
  v4 = sub_100006FF0(v3);
  __chkstk_darwin(v4);
  sub_10000E970();
  v7 = v6 - v5;
  v8 = type metadata accessor for Logger();
  sub_100006FBC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000E970();
  v14 = v13 - v12;
  v15 = type metadata accessor for UUID();
  sub_100006FBC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000E970();
  sub_100037B1C();
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v17 + 8))(v0, v15);
  static Logger.notifications.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = sub_100031128();
    v32 = v8;
    v25 = v2;
    v26 = sub_100037B44();
    v33 = v26;
    *v24 = 136446210;
    *(v24 + 4) = sub_10000D9FC(v19, v21, &v33);
    _os_log_impl(&_mh_execute_header, v22, v23, "Scheduling notification with identifier %{public}s", v24, 0xCu);
    sub_100006994(v26);
    v27 = v26;
    v2 = v25;
    sub_10000FA7C(v27);
    sub_10000FA7C(v24);

    (*(v10 + 8))(v14, v32);
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  sub_100030944(0, &qword_1000A42F0, UNNotificationRequest_ptr);
  sub_100030944(0, &qword_1000A42F8, UNMutableNotificationContent_ptr);
  sub_100037338(v2, v7, type metadata accessor for SevereNotificationContent);
  v28 = sub_1000737B8(v7);
  v29 = sub_100032F98(v19, v21, v28, 0);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = v29;
  v31 = v29;
  firstly<A, B>(on:disposeOn:closure:)();

  sub_100030E08();
}

uint64_t sub_100035634()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000356A0()
{
  sub_100030E38();
  v1 = *v0;
  v2 = type metadata accessor for SevereMessage(0);
  v3 = sub_10000E960(v2);
  v35 = v4;
  v5 = __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v6;
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for Logger();
  sub_100006FBC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000E970();
  sub_100037B1C();
  static Logger.notifications.getter();
  v14 = sub_100037A3C();
  sub_100037338(v14, v9, v15);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_100031128();
    v31 = v10;
    v19 = v18;
    v20 = sub_100037B44();
    v34 = v0;
    v21 = v20;
    v37 = v20;
    *v19 = 136315138;
    v32 = v7;
    v33 = v1;
    v23 = *(v9 + 2);
    v22 = *(v9 + 3);

    sub_100037A9C();
    v24 = sub_10000D9FC(v23, v22, &v37);
    v7 = v32;

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Determining whether to revoke cancelled notifications for channel: %s", v19, 0xCu);
    sub_100006994(v21);
    sub_10000FA7C(v21);
    sub_10000FA7C(v19);

    (*(v12 + 8))(v0, v31);
  }

  else
  {

    sub_100037A9C();
    (*(v12 + 8))(v0, v10);
  }

  sub_100003020(&qword_1000A4300, &qword_100081330);
  firstly<A>(closure:)();
  v25 = sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.notifications.getter();
  v27 = sub_100037A3C();
  sub_100037338(v27, v7, v28);
  sub_100037AEC();
  v29 = sub_100037B2C();
  sub_1000374FC(v7, v29 + v25, type metadata accessor for SevereMessage);
  Promise.then<A, B>(on:disposeOn:closure:)();

  sub_100030E08();
}

void sub_1000359F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  v33 = a2;
  v40 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = ReferenceCountedLazy.increase()();
  v9 = 0;
  v39 = v41;
  v38 = a3;
  v10 = *(a3 + 32);
  v11 = *(v10 + 16);
  v12 = (v10 + 40);
  v13 = _swiftEmptyArrayStorage;
  while (v11 != v9)
  {
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
      return;
    }

    v15 = *(v12 - 1);
    v14 = *v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10005B5C4();
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v16 = v13[2];
    if (v16 >= v13[3] >> 1)
    {
      sub_10005B5C4();
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = v15;
    v17[5] = v14;
    v12 += 5;
    ++v9;
  }

  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v18 = v37;
  v19 = v38;
  *(&v32 - 4) = v39;
  *(&v32 - 3) = v19;
  *(&v32 - 2) = v13;
  sub_1000326D0(sub_100036E18, (&v32 - 6), v18);
  v21 = v20;

  if (*(v21 + 16))
  {
    v22 = v36;
    static Logger.notifications.getter();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136446210;
      v27 = Array.description.getter();
      v29 = sub_10000D9FC(v27, v28, &v41);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Revoking notifications with identifiers: %{public}s", v25, 0xCu);
      sub_100006994(v26);

      (*(v34 + 8))(v36, v35);
    }

    else
    {

      (*(v34 + 8))(v22, v35);
    }

    v30 = *(v33 + 16);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 removeDeliveredNotificationsWithIdentifiers:isa];
  }

  else
  {
  }

  ReferenceCountedLazy.decrease()();
}