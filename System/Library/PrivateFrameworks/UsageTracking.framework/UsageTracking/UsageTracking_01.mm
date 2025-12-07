uint64_t sub_100028118(uint64_t a1)
{
  v2 = sub_100020818(&qword_100091378, &qword_10006D970);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  if (qword_100090CD0 != -1)
  {
    swift_once();
  }

  v6 = qword_100092DE8;
  v7 = unk_100092DF0;
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  (*(v7 + 8))(sub_100028348, v9, v6, v7);
}

uint64_t sub_1000282B4()
{
  v1 = sub_100020818(&qword_100091378, &qword_10006D970);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100028348(uint64_t a1)
{
  sub_100020818(&qword_100091378, &qword_10006D970);

  return sub_100027EE8(a1);
}

uint64_t *sub_1000283C4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100028428(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100028440(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10002848C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002C9DC;

  return sub_100022908(a1, v4, v5, v6);
}

uint64_t sub_100028540()
{
  v0 = type metadata accessor for Calendar();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v4 = Calendar.firstWeekday.getter();
  if (qword_100090CC8 != -1)
  {
    swift_once();
  }

  sub_1000297C4(&xmmword_100092DC0, &v12, &qword_100091398, &unk_10006DC00);
  if (v13)
  {
    sub_100028428(&v12, v14);
  }

  else
  {
    v15 = type metadata accessor for DeviceActivityDataStore();
    v16 = &protocol witness table for DeviceActivityDataStore;
    sub_1000283C4(v14);
    DeviceActivityDataStore.init()();
    if (v13)
    {
      sub_100028FF4(&v12, &qword_100091398, &unk_10006DC00);
    }
  }

  sub_100020908(v14, v15);
  v5 = dispatch thunk of DeviceActivityDataStoring.localFirstWeekday()();
  sub_1000208BC(v14);
  if (v4 == v5)
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  else
  {
    sub_1000297C4(&xmmword_100092DC0, &v12, &qword_100091398, &unk_10006DC00);
    if (v13)
    {
      sub_100028428(&v12, v14);
    }

    else
    {
      v15 = type metadata accessor for DeviceActivityDataStore();
      v16 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v14);
      DeviceActivityDataStore.init()();
      if (v13)
      {
        sub_100028FF4(&v12, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v14, v15);
    dispatch thunk of DeviceActivityDataStoring.write(localFirstWeekday:)();
    sub_1000208BC(v14);
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100020D2C(v7, qword_100092E98);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134349312;
      *(v10 + 4) = v5;
      *(v10 + 12) = 2050;
      *(v10 + 14) = v4;
      _os_log_impl(&_mh_execute_header, v8, v9, "Local first weekday changed from %{public}ld to %{public}ld", v10, 0x16u);
    }

    (*(v1 + 8))(v3, v0);
    return 1;
  }
}

void sub_100028A0C(char a1, uint64_t a2)
{
  v4 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  if (qword_100090CB8 != -1)
  {
    swift_once();
  }

  sub_100020F40(&qword_100092D88, v16);
  v7 = v17;
  v8 = v18;
  sub_100020908(v16, v17);
  v14 = 0u;
  v15 = 0u;
  v8[5](&v14, 0x726665527473616CLL, 0xEF65746144687365, v7, v8);
  sub_100028FF4(&v14, &qword_100091360, &unk_10006D960);
  sub_1000208BC(v16);
  if (a1)
  {
    if (qword_100090CC8 != -1)
    {
      swift_once();
    }

    sub_1000297C4(&xmmword_100092DC0, &v14, &qword_100091398, &unk_10006DC00);
    if (*(&v15 + 1))
    {
      sub_100028428(&v14, v16);
    }

    else
    {
      v17 = type metadata accessor for DeviceActivityDataStore();
      v18 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v16);
      DeviceActivityDataStore.init()();
      if (*(&v15 + 1))
      {
        sub_100028FF4(&v14, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v16, v17);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    dispatch thunk of DeviceActivityDataStoring.write(localStartDate:)();
    sub_100028FF4(v6, &qword_1000913D0, &qword_10006D9C0);
    sub_1000208BC(v16);
  }

  if (qword_100090CD0 != -1)
  {
    swift_once();
  }

  (*(unk_100092DF0 + 24))(a2);
  if (qword_100090CC8 != -1)
  {
    swift_once();
  }

  sub_1000297C4(&xmmword_100092DC0, &v14, &qword_100091398, &unk_10006DC00);
  if (*(&v15 + 1))
  {
    sub_100028428(&v14, v16);
  }

  else
  {
    v17 = type metadata accessor for DeviceActivityDataStore();
    v18 = &protocol witness table for DeviceActivityDataStore;
    sub_1000283C4(v16);
    DeviceActivityDataStore.init()();
    if (*(&v15 + 1))
    {
      sub_100028FF4(&v14, &qword_100091398, &unk_10006DC00);
    }
  }

  sub_100020908(v16, v17);
  dispatch thunk of DeviceActivityDataStoring.deleteLocalData(deleteDeviceIdentifier:segmentIntervals:)();
  sub_1000208BC(v16);
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100020D2C(v10, qword_100092E98);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Successfully reset all local activity", v13, 2u);
  }
}

uint64_t sub_100028FF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100020818(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100029054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v7 = type metadata accessor for Calendar();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    sub_100020818(&qword_1000913C8, &qword_10006D9B8);
    v20 = type metadata accessor for _SegmentInterval();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_10006D8A0;
    (*(v21 + 104))(a2 + v22, enum case for _SegmentInterval.hourly(_:), v20);
    return a2;
  }

  v54 = v19;
  sub_1000297C4(a3, v15, &qword_1000913D0, &qword_10006D9C0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100028FF4(v15, &qword_1000913D0, &qword_10006D9C0);
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100020D2C(v23, qword_100092E98);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Last refresh date is nil, refreshing all segment intervals", v26, 2u);
    }

    goto LABEL_18;
  }

  v52 = v11;
  v53 = v10;
  v51 = v17;
  (*(v17 + 32))(v54, v15, v16);
  static Calendar.current.getter();
  sub_100020818(&qword_1000913D8, &qword_10006D9D8);
  v27 = type metadata accessor for Calendar.Component();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10006D8A0;
  (*(v28 + 104))(v30 + v29, enum case for Calendar.Component.minute(_:), v27);
  sub_100049638(v30);
  swift_setDeallocating();
  (*(v28 + 8))(v30 + v29, v27);
  swift_deallocClassInstance();
  v31 = v57;
  Calendar.dateComponents(_:from:to:)();

  (*(v55 + 8))(v9, v7);
  v32 = DateComponents.minute.getter();
  if (v33)
  {
    v34 = v52;
    v35 = v53;
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100020D2C(v36, qword_100092E98);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v51;
    if (v39)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Unable to compute minutes since last refresh date, refreshing all segment intervals.", v41, 2u);
    }

    (*(v34 + 8))(v31, v35);
    goto LABEL_17;
  }

  v42 = v52;
  v43 = v53;
  if (v32 >= 2)
  {
    (*(v52 + 8))(v31, v53);
    v40 = v51;
LABEL_17:
    (*(v40 + 8))(v54, v16);
LABEL_18:

    return a2;
  }

  v45 = v51;
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100020D2C(v46, qword_100092E98);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Last refresh was less than one minute ago, skipping refresh.", v49, 2u);
  }

  (*(v42 + 8))(v31, v43);
  (*(v45 + 8))(v54, v16);
  return 0;
}

uint64_t sub_1000297C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100020818(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100029830(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100020818(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100029898(uint64_t a1)
{
  v3 = *(sub_100020818(&qword_1000913D0, &qword_10006D9C0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v13 = v1[3];
  v14 = v1[2];
  v8 = v1[4];
  v9 = v1[5];
  v10 = *(v1 + ((v7 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002C9DC;

  return sub_100026E6C(a1, v14, v13, v8, v9, v1 + v4, v1 + v7, v10);
}

uint64_t sub_100029A64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100029AA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002C9DC;

  return sub_10002264C(a1, v4, v5, v6);
}

uint64_t sub_100029B58(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029B68()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029BB0()
{
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100029BF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100029CC0;

  return sub_100023BB4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100029CC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100029DB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029DC4()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100029E14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002C9DC;

  return sub_100023768(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100029F04()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Calendar();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  __chkstk_darwin(v7 - 8);
  v9 = v31 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  static Calendar.current.getter();
  (*(v1 + 104))(v3, enum case for Calendar.Component.day(_:), v0);
  static Date.now.getter();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v31[0] = *(v11 + 8);
  v31[1] = v11 + 8;
  (v31[0])(v14, v10);
  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v32);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100028FF4(v9, &qword_1000913D0, &qword_10006D9C0);
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100020D2C(v17, qword_100092E98);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to calculate thirty days ago. Skipping deletion of expired activity segments.", v20, 2u);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    if (qword_100090CC8 != -1)
    {
      swift_once();
    }

    sub_1000297C4(&xmmword_100092DC0, &v33, &qword_100091398, &unk_10006DC00);
    if (v34)
    {
      sub_100028428(&v33, v35);
    }

    else
    {
      v36 = type metadata accessor for DeviceActivityDataStore();
      v37 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v35);
      DeviceActivityDataStore.init()();
      if (v34)
      {
        sub_100028FF4(&v33, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v35, v36);
    v21 = dispatch thunk of DeviceActivityDataStoring.deleteData(olderThan:)();
    sub_1000208BC(v35);
    if (*(v21 + 16))
    {
      type metadata accessor for Feature();
      if (static Feature.isDeviceActivityUIEnabled.getter())
      {
        if (qword_100090CD0 != -1)
        {
          swift_once();
        }

        (*(unk_100092DF0 + 32))(v21);
      }
    }

    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100020D2C(v22, qword_100092E98);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136315138;

      sub_100020818(&qword_1000913E8, &qword_10006DA40);
      v27 = Dictionary.description.getter();
      v29 = v28;

      v30 = sub_100033140(v27, v29, v35);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully pruned local device activity data: %s", v25, 0xCu);
      sub_1000208BC(v26);
    }

    else
    {
    }

    (v31[0])(v16, v10);
  }
}

uint64_t sub_10002A72C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v90 = a4;
  v91 = a2;
  v89 = a3;
  v98 = a1;
  v8 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  __chkstk_darwin(v8 - 8);
  v92 = &v81 - v9;
  v10 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v87 = *(v10 - 8);
  v11 = *(v87 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v13 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v88 = &v81 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v81 - v17;
  __chkstk_darwin(v16);
  v20 = &v81 - v19;
  v97 = type metadata accessor for Date();
  v93 = *(v97 - 8);
  v21 = *(v93 + 64);
  v22 = __chkstk_darwin(v97);
  v86 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v94 = &v81 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v81 - v26;
  __chkstk_darwin(v25);
  v29 = &v81 - v28;
  v30 = swift_allocObject();
  v95 = a5;
  v96 = a6;
  *(v30 + 16) = a5;
  *(v30 + 24) = a6;
  v31 = qword_100090CB0;

  if (v31 != -1)
  {
    swift_once();
  }

  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100020D2C(v32, qword_100092E98);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_17;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Device Activity is not authorized, skipping device activity collection";
    goto LABEL_16;
  }

  if (v98 != 2)
  {
    goto LABEL_8;
  }

  if (qword_100090D00 != -1)
  {
    swift_once();
  }

  if (byte_100092E70)
  {
LABEL_8:
    if (qword_100090CC8 != -1)
    {
      swift_once();
    }

    sub_1000297C4(&xmmword_100092DC0, &v99, &qword_100091398, &unk_10006DC00);
    v85 = v18;
    v84 = v30;
    if (v100)
    {
      sub_100028428(&v99, v101);
    }

    else
    {
      v102 = type metadata accessor for DeviceActivityDataStore();
      v103 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v101);
      DeviceActivityDataStore.init()();
      if (v100)
      {
        sub_100028FF4(&v99, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v101, v102);
    dispatch thunk of DeviceActivityDataStoring.localStartDate()();
    v38 = v93;
    v39 = v97;
    if ((*(v93 + 48))(v20, 1, v97) == 1)
    {
      sub_100028FF4(v20, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v101);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100020D2C(v40, qword_100092E98);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Saving device activity collection start date", v43, 2u);
      }

      sub_1000297C4(&xmmword_100092DC0, &v99, &qword_100091398, &unk_10006DC00);
      if (v100)
      {
        sub_100028428(&v99, v101);
      }

      else
      {
        v102 = type metadata accessor for DeviceActivityDataStore();
        v103 = &protocol witness table for DeviceActivityDataStore;
        sub_1000283C4(v101);
        DeviceActivityDataStore.init()();
        if (v100)
        {
          sub_100028FF4(&v99, &qword_100091398, &unk_10006DC00);
        }
      }

      sub_100020908(v101, v102);
      static Date.now.getter();
      (*(v93 + 56))(v13, 0, 1, v39);
      dispatch thunk of DeviceActivityDataStoring.write(localStartDate:)();
      sub_100028FF4(v13, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v101);
    }

    else
    {
      (*(v38 + 32))(v29, v20, v39);
      sub_1000208BC(v101);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100020D2C(v45, qword_100092E98);
      (*(v38 + 16))(v27, v29, v39);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v101[0] = v83;
        *v48 = 136446210;
        v82 = Date.debugDescription.getter();
        v50 = v49;
        v51 = *(v38 + 8);
        v51(v27, v97);
        v52 = sub_100033140(v82, v50, v101);
        v39 = v97;

        *(v48 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v46, v47, "Device activity collection has already started on %{public}s", v48, 0xCu);
        sub_1000208BC(v83);

        v51(v29, v39);
      }

      else
      {

        v53 = *(v38 + 8);
        v53(v27, v39);
        v53(v29, v39);
      }
    }

    v54 = v94;
    v55 = v85;
    v56 = v98;
    sub_100021ED0(v98, v85);
    static Date.now.getter();
    v57 = sub_100029054(v56, v91, v55, v54);
    if (v57)
    {
      v98 = v57;
      v58 = type metadata accessor for TaskPriority();
      (*(*(v58 - 8) + 56))(v92, 1, 1, v58);
      v59 = v90;
      v96 = *(v90 + 152);
      v60 = v88;
      sub_1000297C4(v55, v88, &qword_1000913D0, &qword_10006D9C0);
      v61 = v93;
      v62 = v86;
      (*(v93 + 16))(v86, v54, v39);
      v64 = sub_100028440(&qword_100091368, v63, type metadata accessor for _DeviceActivityCollector, &unk_10006D938);
      v65 = (*(v87 + 80) + 48) & ~*(v87 + 80);
      v66 = (v11 + *(v61 + 80) + v65) & ~*(v61 + 80);
      v67 = v66 + v21;
      v68 = (v66 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
      v70 = swift_allocObject();
      v70[2] = v59;
      v70[3] = v64;
      v70[4] = v96;
      v70[5] = v59;
      sub_100029830(v60, v70 + v65, &qword_1000913D0, &qword_10006D9C0);
      v71 = v70 + v66;
      v72 = v97;
      (*(v61 + 32))(v71, v62, v97);
      v73 = v70 + v68;
      *v73 = v98;
      v73[8] = v89 & 1;
      v74 = (v70 + v69);
      v75 = v84;
      *v74 = sub_10002C7A8;
      v74[1] = v75;

      swift_retain_n();
      v76 = sub_100035B98(0, 0, v92, &unk_10006DA58, v70);
      (*(v61 + 8))(v94, v72);
      sub_100028FF4(v85, &qword_1000913D0, &qword_10006D9C0);
      *(v59 + 152) = v76;
    }

    else
    {
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_100020D2C(v77, qword_100092E98);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "No segment intervals need to be refreshed.", v80, 2u);
      }

      sub_100023114(v95);
      (*(v93 + 8))(v54, v39);
      sub_100028FF4(v85, &qword_1000913D0, &qword_10006D9C0);
    }
  }

  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100020D2C(v44, qword_100092E98);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Not refreshing local device activity data for budget tracking";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);
  }

LABEL_17:

  sub_100023114(v95);
}

void sub_10002B59C(void (*a1)(void))
{
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100020D2C(v2, qword_100092E98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished collecting local device activity data", v5, 2u);
  }

  if (a1)
  {
    a1();
  }
}

uint64_t sub_10002B694(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v93 = a4;
  v92 = a3;
  v94 = a2;
  v102 = a1;
  v10 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  __chkstk_darwin(v10 - 8);
  v95 = &v85 - v11;
  v12 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v90 = *(v12 - 8);
  v13 = *(v90 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v15 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v91 = &v85 - v17;
  v18 = __chkstk_darwin(v16);
  v98 = &v85 - v19;
  __chkstk_darwin(v18);
  v21 = &v85 - v20;
  v101 = type metadata accessor for Date();
  v96 = *(v101 - 8);
  v22 = *(v96 + 64);
  v23 = __chkstk_darwin(v101);
  v89 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v97 = &v85 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v85 - v27;
  __chkstk_darwin(v26);
  v30 = &v85 - v29;
  v31 = swift_allocObject();
  *(v31 + 2) = a5;
  *(v31 + 3) = a6;
  *(v31 + 4) = a7;
  v99 = a5;
  v100 = a6;
  sub_100029DB4(a5, a6);
  v32 = qword_100090CB0;
  swift_unknownObjectRetain();
  if (v32 != -1)
  {
    swift_once();
  }

  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100020D2C(v33, qword_100092E98);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_17;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Device Activity is not authorized, skipping device activity collection";
    goto LABEL_16;
  }

  if (v102 != 2)
  {
    goto LABEL_8;
  }

  if (qword_100090D00 != -1)
  {
    swift_once();
  }

  if (byte_100092E70)
  {
LABEL_8:
    if (qword_100090CC8 != -1)
    {
      swift_once();
    }

    sub_1000297C4(&xmmword_100092DC0, &v103, &qword_100091398, &unk_10006DC00);
    v88 = v31;
    if (v104)
    {
      sub_100028428(&v103, v105);
    }

    else
    {
      v106 = type metadata accessor for DeviceActivityDataStore();
      v107 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v105);
      DeviceActivityDataStore.init()();
      if (v104)
      {
        sub_100028FF4(&v103, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v105, v106);
    dispatch thunk of DeviceActivityDataStoring.localStartDate()();
    v39 = v96;
    v40 = v101;
    if ((*(v96 + 48))(v21, 1, v101) == 1)
    {
      sub_100028FF4(v21, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v105);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_100020D2C(v41, qword_100092E98);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v97;
      if (v44)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Saving device activity collection start date", v46, 2u);
      }

      sub_1000297C4(&xmmword_100092DC0, &v103, &qword_100091398, &unk_10006DC00);
      if (v104)
      {
        sub_100028428(&v103, v105);
      }

      else
      {
        v106 = type metadata accessor for DeviceActivityDataStore();
        v107 = &protocol witness table for DeviceActivityDataStore;
        sub_1000283C4(v105);
        DeviceActivityDataStore.init()();
        if (v104)
        {
          sub_100028FF4(&v103, &qword_100091398, &unk_10006DC00);
        }
      }

      sub_100020908(v105, v106);
      static Date.now.getter();
      (*(v96 + 56))(v15, 0, 1, v101);
      dispatch thunk of DeviceActivityDataStoring.write(localStartDate:)();
      sub_100028FF4(v15, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v105);
      v84 = v98;
    }

    else
    {
      (*(v39 + 32))(v30, v21, v40);
      sub_1000208BC(v105);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_100020D2C(v73, qword_100092E98);
      (*(v39 + 16))(v28, v30, v40);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v105[0] = v86;
        *v76 = 136446210;
        v77 = Date.debugDescription.getter();
        v79 = v78;
        v87 = *(v39 + 8);
        v80 = v28;
        v81 = v101;
        v87(v80, v101);
        v82 = sub_100033140(v77, v79, v105);

        *(v76 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v74, v75, "Device activity collection has already started on %{public}s", v76, 0xCu);
        sub_1000208BC(v86);

        v87(v30, v81);
      }

      else
      {

        v83 = *(v39 + 8);
        v83(v28, v40);
        v83(v30, v40);
      }

      v45 = v97;
      v84 = v98;
    }

    v47 = v102;
    sub_100021ED0(v102, v84);
    static Date.now.getter();
    v48 = sub_100029054(v47, v94, v84, v45);
    if (v48)
    {
      v102 = v48;
      v49 = type metadata accessor for TaskPriority();
      (*(*(v49 - 8) + 56))(v95, 1, 1, v49);
      v50 = v93;
      v100 = *(v93 + 152);
      v51 = v91;
      sub_1000297C4(v84, v91, &qword_1000913D0, &qword_10006D9C0);
      v52 = v96;
      v53 = v89;
      (*(v96 + 16))(v89, v45, v101);
      v55 = sub_100028440(&qword_100091368, v54, type metadata accessor for _DeviceActivityCollector, &unk_10006D938);
      v56 = (*(v90 + 80) + 48) & ~*(v90 + 80);
      v57 = (v13 + *(v52 + 80) + v56) & ~*(v52 + 80);
      v58 = v57 + v22;
      v59 = (v57 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      v61[2] = v50;
      v61[3] = v55;
      v61[4] = v100;
      v61[5] = v50;
      sub_100029830(v51, v61 + v56, &qword_1000913D0, &qword_10006D9C0);
      v62 = v61 + v57;
      v63 = v101;
      (*(v52 + 32))(v62, v53, v101);
      v64 = v61 + v59;
      *v64 = v102;
      v64[8] = v92 & 1;
      v65 = (v61 + v60);
      v66 = v88;
      *v65 = sub_10002C55C;
      v65[1] = v66;

      swift_retain_n();
      v67 = sub_100035B98(0, 0, v95, &unk_10006DA20, v61);
      (*(v52 + 8))(v97, v63);
      sub_100028FF4(v98, &qword_1000913D0, &qword_10006D9C0);
      *(v50 + 152) = v67;
    }

    else
    {
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_100020D2C(v68, qword_100092E98);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "No segment intervals need to be refreshed.", v71, 2u);
      }

      sub_10002B59C(v99);
      (*(v96 + 8))(v45, v101);
      sub_100028FF4(v84, &qword_1000913D0, &qword_10006D9C0);
    }
  }

  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_100020D2C(v72, qword_100092E98);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Not refreshing local device activity data for budget tracking";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v34, v35, v37, v36, 2u);
  }

LABEL_17:

  sub_10002B59C(v99);
}

uint64_t sub_10002C514()
{
  if (*(v0 + 16))
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C57C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C5B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002C9DC;

  return sub_10002320C();
}

uint64_t sub_10002C668()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002C6A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002C9DC;

  return sub_100022EB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10002C770()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C7B0()
{
  v1 = *(sub_100020818(&qword_1000913D0, &qword_10006D9C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  v9 = (*(v6 + 48))(v0 + v3, 1, v5);
  v10 = *(v6 + 8);
  if (!v9)
  {
    v10(v0 + v3, v5);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = (v11 + v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10(v0 + v11, v5);

  return _swift_deallocObject(v0, v12 + 16, v2 | v7 | 7);
}

unint64_t sub_10002C970()
{
  result = qword_1000913F0;
  if (!qword_1000913F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000913F0);
  }

  return result;
}

uint64_t sub_10002C9E8()
{
  result = sub_100021848(0, &qword_1000914A0, USUsageQuerying_ptr);
  qword_100092DF8 = result;
  unk_100092E00 = &off_100087FA0;
  return result;
}

void *sub_10002CAB8()
{
  v25 = type metadata accessor for ActivityCategory();
  v1 = __chkstk_darwin(v25);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v23 = &v22 - v4;
  v5 = *(v0 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_categoryIdentifiers);
  v8 = *(v5 + 56);
  v7 = v5 + 56;
  v6 = v8;
  v26 = *(v0 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_categoryIdentifiers);
  v27 = &_swiftEmptySetSingleton;
  v9 = 1 << *(v26 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v13 = (v3 + 8);

  for (i = 0; v11; result = (*v13)(v21, v25))
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = *(*(v26 + 48) + ((v16 << 9) | (8 * v17)));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v20 = v24;
    ActivityCategory.init(identifier:localizedDisplayName:)();
    v21 = v23;
    sub_10005E438(v23, v20);
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return v27;
    }

    v11 = *(v7 + 8 * v16);
    ++i;
    if (v11)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_10002CD04(uint64_t a1, uint64_t (*a2)(void), void *a3, void (*a4)(uint64_t, uint64_t), void (*a5)(char *, char *))
{
  v29 = a4;
  v30 = a5;
  v28 = a2(0);
  v8 = *(v28 - 8);
  v9 = __chkstk_darwin(v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  if (a1)
  {
    v14 = a1;
  }

  else
  {
    v14 = *(v5 + *a3);
  }

  v15 = *(v14 + 56);
  v31 = &_swiftEmptySetSingleton;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v20 = (v8 + 8);

  for (i = 0; v18; result = (*v20)(v13, v28))
  {
    v23 = i;
LABEL_12:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = (*(v14 + 48) + ((v23 << 10) | (16 * v24)));
    v26 = *v25;
    v27 = v25[1];
    swift_bridgeObjectRetain_n();
    v29(v26, v27);
    v30(v13, v11);
  }

  while (1)
  {
    v23 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return v31;
    }

    v18 = *(v14 + 56 + 8 * v23);
    ++i;
    if (v18)
    {
      i = v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002CF2C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for DeviceActivityAuthorization();
  qword_100092E08 = result;
  return result;
}

uint64_t sub_10002CF50()
{
  v0 = [objc_opt_self() sharedCategories];
  result = sub_100021848(0, &qword_1000914D0, CTCategories_ptr);
  qword_100092E28 = result;
  unk_100092E30 = &off_100090F70;
  qword_100092E10 = v0;
  return result;
}

uint64_t sub_10002CFC0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100090CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000297C4(&xmmword_100092E38, &v6, &qword_100091398, &unk_10006DC00);
  if (v7)
  {
    sub_100028428(&v6, &v8);
    return sub_100028428(&v8, a1);
  }

  else
  {
    sub_100028FF4(&v6, &qword_100091398, &unk_10006DC00);
    v3 = type metadata accessor for DeviceActivityDataStore();
    a1[3] = v3;
    a1[4] = &protocol witness table for DeviceActivityDataStore;
    v4 = sub_1000283C4(a1);
    DeviceActivityDataStore.init()();
    v9 = v3;
    v10 = &protocol witness table for DeviceActivityDataStore;
    v5 = sub_1000283C4(&v8);
    (*(*(v3 - 8) + 16))(v5, v4, v3);
    swift_beginAccess();
    sub_1000340A4(&v8, &xmmword_100092E38, &qword_100091398, &unk_10006DC00);
    return swift_endAccess();
  }
}

double sub_10002D144()
{
  qword_100092E58 = 0;
  result = 0.0;
  xmmword_100092E38 = 0u;
  unk_100092E48 = 0u;
  return result;
}

uint64_t sub_10002D15C()
{
  result = type metadata accessor for EventStreams();
  qword_100092E60 = result;
  *algn_100092E68 = &off_100087048;
  return result;
}

uint64_t sub_10002D18C()
{
  type metadata accessor for DeviceActivityQuery(0);
  result = sub_10002D1B8();
  byte_100092E70 = result & 1;
  return result;
}

uint64_t sub_10002D1B8()
{
  if (qword_100090CE0 != -1)
  {
LABEL_24:
    swift_once();
  }

  result = [swift_getObjCClassFromMetadata() isAuthorized];
  if (result)
  {
    sub_10002CFC0(v21);
    sub_100020908(v21, v21[3]);
    v1 = dispatch thunk of DeviceActivityDataStoring.deviceIdentifierByCoreDuetIdentifier.getter();
    sub_1000208BC(v21);
    if (qword_100090CF8 != -1)
    {
      swift_once();
    }

    v2 = (*(*algn_100092E68 + 56))();
    v3 = v2;
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (v2 + 40);
      while (1)
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v8 = *(v6 - 1);
        v7 = *v6;
        v9 = *(v1 + 16);

        if (!v9)
        {
          break;
        }

        sub_100033790(v8, v7);
        if ((v10 & 1) == 0)
        {
          break;
        }

        ++v5;

        v6 += 2;
        if (v4 == v5)
        {
          goto LABEL_11;
        }
      }

      if (qword_100090D08 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100020D2C(v15, qword_100092E80);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v21[0] = v19;
        *v18 = 136446210;
        v20 = sub_100033140(v8, v7, v21);

        *(v18 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v16, v17, "CoreDuet identifier is not tracked in DeviceActivity database: %{public}s", v18, 0xCu);
        sub_1000208BC(v19);
      }

      else
      {
      }

      return 0;
    }

    else
    {
LABEL_11:

      if (qword_100090D08 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100020D2C(v11, qword_100092E80);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "All CoreDuet identifiers are tracked in DeviceActivity database", v14, 2u);
      }

      return 1;
    }
  }

  return result;
}

void sub_10002D740(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v85 = a2;
  v84 = a1;
  v83 = a4;
  v81 = type metadata accessor for DeviceActivityFilter.SegmentInterval();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v82 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchTime();
  v78 = *(v79 - 8);
  v8 = __chkstk_darwin(v79);
  v76 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = v71 - v10;
  v11 = dispatch_group_create();
  v12 = swift_allocObject();
  v90 = v12;
  *(v12 + 16) = 0;
  v74 = (v12 + 16);
  v13 = *(v5 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_bundleIdentifiers);
  v14 = *(v13 + 16);
  v91 = v5;
  v75 = v13;
  v87 = a3;
  v88 = v11;
  if (v14)
  {
    dispatch_group_enter(v11);
    v15 = a3[3];
    v16 = a3[4];
    v89 = sub_100020908(a3, v15);
    v17 = *(v13 + 16);
    if (v17)
    {
      v18 = sub_100033038(*(v13 + 16), 0);
      v19 = sub_100033CC0(&v96, v18 + 4, v17, v13);
      v20 = v96;

      sub_100034580(v20);
      if (v19 != v17)
      {
        __break(1u);
        goto LABEL_33;
      }

      v11 = v88;
      v5 = v91;
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }

    v21 = swift_allocObject();
    *(v21 + 16) = v90;
    *(v21 + 24) = v11;
    v22 = swift_allocObject();
    v22[2] = v15;
    v22[3] = v16;
    v22[4] = sub_10003458C;
    v22[5] = v21;
    v23 = *(v16 + 48);

    v24 = v11;
    v23(v18, sub_1000345E8, v22, v15, v16);

    a3 = v87;
  }

  v25 = swift_allocObject();
  v89 = v25;
  *(v25 + 16) = 0;
  v73 = (v25 + 16);
  v26 = *(v5 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_exemptBundleIdentifiers);
  v27 = *(v26 + 16);
  v86 = v26;
  if (!v27)
  {
    goto LABEL_13;
  }

  dispatch_group_enter(v11);
  v28 = a3[3];
  v29 = a3[4];
  v72 = sub_100020908(a3, v28);
  v30 = *(v26 + 16);
  if (!v30)
  {
    v31 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v31 = sub_100033038(*(v26 + 16), 0);
  v32 = sub_100033CC0(&v96, v31 + 4, v30, v26);
  v33 = v96;

  sub_100034580(v33);
  if (v32 != v30)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = v88;
LABEL_12:
  v34 = swift_allocObject();
  *(v34 + 16) = v89;
  *(v34 + 24) = v11;
  v35 = swift_allocObject();
  v35[2] = v28;
  v35[3] = v29;
  v35[4] = sub_1000345F4;
  v35[5] = v34;
  v36 = *(v29 + 48);
  v37 = v11;

  v36(v31, sub_100034B60, v35, v28, v29);

  v5 = v91;
  v26 = v86;
  a3 = v87;
LABEL_13:
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v72 = (v38 + 16);
  v39 = *(v5 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_domains);
  if (!*(v39 + 16))
  {
    goto LABEL_19;
  }

  dispatch_group_enter(v11);
  v41 = a3[3];
  v40 = a3[4];
  v71[1] = sub_100020908(a3, v41);
  v42 = *(v39 + 16);
  if (!v42)
  {
    v43 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v87 = v38;
  v43 = sub_100033038(v42, 0);
  v71[0] = sub_100033CC0(&v96, v43 + 4, v42, v39);
  v44 = v96;

  sub_100034580(v44);
  if (v71[0] != v42)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v38 = v87;
LABEL_18:
  v45 = swift_allocObject();
  v11 = v88;
  *(v45 + 16) = v38;
  *(v45 + 24) = v11;
  v46 = swift_allocObject();
  v46[2] = v41;
  v46[3] = v40;
  v46[4] = sub_100034658;
  v46[5] = v45;
  v47 = *(v40 + 56);
  v48 = v11;

  v47(v43, sub_100034B60, v46, v41, v40);

  v5 = v91;
  v26 = v86;
LABEL_19:
  v49 = v76;
  static DispatchTime.now()();
  v50 = v77;
  + infix(_:_:)();
  v51 = *(v78 + 8);
  v52 = v79;
  v51(v49, v79);
  OS_dispatch_group.wait(timeout:)();
  v51(v50, v52);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_100090D08 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100020D2C(v53, qword_100092E80);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Timed out waiting to categorize applications and web domains for filter", v56, 2u);
    }

    v57 = OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_interval;
    v58 = type metadata accessor for DateInterval();
    v59 = v82;
    (*(*(v58 - 8) + 16))(v82, v5 + v57, v58);
    (*(v80 + 104))(v59, enum case for DeviceActivityFilter.SegmentInterval.hourly(_:), v81);
    sub_10002CA28(0);
    sub_10002CA70(0);
    sub_10002CAB8();
    sub_10002CCBC(0);

    DeviceActivityFilter.init(segment:userAltDSID:deviceIdentifier:untokenizedApplications:untokenizedExemptApplications:untokenizedCategories:untokenizedWebDomains:untokenizedExemptWebDomains:)();
  }

  else
  {
    v94 = v26;
    v95 = v75;
    v93 = v39;
    v60 = v74;
    swift_beginAccess();
    v61 = *v60;

    if (v61)
    {

      sub_10003467C(&v95, &v93, v61);
    }

    v62 = v81;
    v63 = v73;
    v64 = v72;
    swift_beginAccess();
    v65 = *v64;
    if (v65)
    {

      sub_10003467C(&v95, &v93, v65);
    }

    v87 = v38;
    v92 = &_swiftEmptySetSingleton;
    swift_beginAccess();
    v66 = *v63;
    if (*v63)
    {

      sub_10003467C(&v94, &v92, v66);
    }

    v67 = OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_interval;
    v68 = type metadata accessor for DateInterval();
    v69 = v82;
    (*(*(v68 - 8) + 16))(v82, v5 + v67, v68);
    (*(v80 + 104))(v69, enum case for DeviceActivityFilter.SegmentInterval.hourly(_:), v62);
    v70 = v95;

    sub_10002CA28(v70);

    sub_10002CA70(v94);

    sub_10002CAB8();
    sub_10002CCBC(v93);

    sub_10002CCBC(v92);

    DeviceActivityFilter.init(segment:userAltDSID:deviceIdentifier:untokenizedApplications:untokenizedExemptApplications:untokenizedCategories:untokenizedWebDomains:untokenizedExemptWebDomains:)();
  }
}

uint64_t sub_10002E254(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void (*)(uint64_t), uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1;
  if (a1)
  {
    v8 = a2;
    swift_getAssociatedTypeWitness();
    sub_100020818(&qword_100091510, &qword_10006DC90);
    v9 = _dictionaryUpCast<A, B, C, D>(_:)();
    a2 = v8;
    v7 = v9;
  }

  a3(v7, a2, a3, a4, a5, a6);
}

void sub_10002E320(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, const char *a5)
{
  if (a1)
  {
    swift_beginAccess();
    *(a3 + 16) = a1;
  }

  else
  {
    if (qword_100090D08 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100020D2C(v10, qword_100092E80);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18[0] = v14;
      *v13 = 136446210;
      v18[3] = a2;
      swift_errorRetain();
      sub_100020818(&qword_100091508, &qword_10006DC88);
      v15 = String.init<A>(describing:)();
      v17 = sub_100033140(v15, v16, v18);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, a5, v13, 0xCu);
      sub_1000208BC(v14);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t type metadata accessor for DeviceActivityQuery(uint64_t a1)
{
  result = qword_100091448;
  if (!qword_100091448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E638(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for DateInterval();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002E6DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying____lazy_storage___dataSource;
  swift_beginAccess();
  sub_1000297C4(v1 + v3, &v5, &qword_1000914E8, &qword_10006DC28);
  if (v6)
  {
    return sub_100028428(&v5, a1);
  }

  sub_100028FF4(&v5, &qword_1000914E8, &qword_10006DC28);
  a1[3] = type metadata accessor for DeviceActivityDataSource();
  a1[4] = &off_100086DA8;
  sub_1000283C4(a1);
  DeviceActivityDataSource.init()();
  sub_100020F40(a1, &v5);
  swift_beginAccess();
  sub_1000340A4(&v5, v1 + v3, &qword_1000914E8, &qword_10006DC28);
  return swift_endAccess();
}

uint64_t sub_10002E7E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying____lazy_storage___usageQuerying;
  swift_beginAccess();
  sub_1000297C4(v1 + v3, &v10, &qword_1000914E0, &qword_10006DC20);
  if (v11)
  {
    return sub_100028428(&v10, a1);
  }

  sub_100028FF4(&v10, &qword_1000914E0, &qword_10006DC20);
  v5 = v1;
  v6 = (*(*(v1 + OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying__query + 8) + 8))();
  v8 = v7;
  v9 = *(v7 + 8);
  a1[3] = v6;
  a1[4] = v7;
  sub_1000283C4(a1);
  v9(v6, v8);
  sub_100020F40(a1, &v10);
  swift_beginAccess();
  sub_1000340A4(&v10, v5 + v3, &qword_1000914E0, &qword_10006DC20);
  return swift_endAccess();
}

Class sub_10002E938(uint64_t a1)
{
  v180 = a1;
  v175 = type metadata accessor for _DeviceActivityData.WebDomainActivity();
  v170 = *(v175 - 8);
  __chkstk_darwin(v175);
  v3 = v145 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for _DeviceActivityData.ApplicationActivity();
  v197 = *(v199 - 8);
  v4 = __chkstk_darwin(v199);
  v6 = v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v193 = v145 - v8;
  v9 = __chkstk_darwin(v7);
  v194 = v145 - v10;
  __chkstk_darwin(v9);
  v189 = v145 - v11;
  v179 = type metadata accessor for _DeviceActivityData.CategoryActivity();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v182 = v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _DeviceActivityData.ActivitySegment();
  v196 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100020818(&qword_100091790, &qword_10006DC10);
  __chkstk_darwin(v16 - 8);
  v171 = v145 - v17;
  v173 = sub_100020818(&qword_1000914D8, &qword_10006DC18);
  v195 = *(v173 - 8);
  __chkstk_darwin(v173);
  v172 = v145 - v18;
  v19 = type metadata accessor for _DeviceActivityData();
  v157 = *(v19 - 8);
  __chkstk_darwin(v19);
  v154 = v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for _DeviceActivityData.User();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for DeviceActivityFilter();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v176 = (v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v198 = v1;
  if (((*(*&v1[OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying__query + 8] + 16))() & 1) == 0)
  {
    if (qword_100090D08 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100020D2C(v40, qword_100092E80);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v180;
    if (v43)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Falling back to CoreDuet streams for budget tracking", v45, 2u);
    }

    sub_10002E7E4(&v201);
    v46 = v202;
    v47 = v203;
    sub_100020908(&v201, v202);
    isa = (*(v47 + 16))(*(v44 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_bundleIdentifiers), *(v44 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_exemptBundleIdentifiers), *(v44 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_domains), *(v44 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_categoryIdentifiers), v44 + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_interval, v46, v47);
    sub_1000208BC(&v201);
    return isa;
  }

  v153 = v19;
  v168 = v3;
  if (qword_100090D08 != -1)
  {
    swift_once();
  }

  v166 = v15;
  v169 = v13;
  v167 = v6;
  v26 = type metadata accessor for Logger();
  sub_100020D2C(v26, qword_100092E80);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Using DeviceActivity database for budget tracking", v29, 2u);
  }

  sub_10002E6DC(&v201);
  sub_100020908(&v201, v202);
  DeviceActivityDataSource.localUser.getter();
  v30 = _DeviceActivityData.User.altDSID.getter();
  v32 = v31;
  v34 = *(v22 + 8);
  isa = (v22 + 8);
  v34(v24, v21);
  v35 = [objc_opt_self() sharedCategories];
  v204[3] = sub_100021848(0, &qword_1000914D0, CTCategories_ptr);
  v204[4] = &off_100090F70;
  v204[0] = v35;
  v36 = v176;
  sub_10002D740(v30, v32, v204, v176);

  sub_1000208BC(v204);
  sub_1000208BC(&v201);
  sub_10002E6DC(&v201);
  sub_100020908(&v201, v202);
  v37 = v200;
  v38 = DeviceActivityDataSource.activity(filteredBy:)();
  v39 = v182;
  if (v37)
  {
    (*(v155 + 8))(v36, v156);
    sub_1000208BC(&v201);
    return isa;
  }

  v49 = v38;
  sub_1000208BC(&v201);
  result = v49;
  v148 = *(v49 + 16);
  if (!v148)
  {
    goto LABEL_104;
  }

  v145[1] = 0;
  v50 = 0;
  v177 = OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_categoryIdentifiers;
  v151 = v49 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
  v150 = v157 + 16;
  v149 = v157 + 8;
  v165 = (v196 + 48);
  v162 = (v196 + 32);
  v185 = CTCategoryIdentifierSystemHidden;
  v51 = v178;
  v184 = v178 + 16;
  v52 = (v197 + 8);
  v183 = (v178 + 8);
  v190 = 0x800000010006FDA0;
  v181 = 0x800000010006FDC0;
  v174 = 0x800000010006FDE0;
  v158 = 0x800000010006FE00;
  v192 = (v197 + 32);
  v159 = (v196 + 8);
  v146 = (v195 + 8);
  v53 = 0.0;
  v54 = v175;
  v55 = v179;
  v147 = result;
  v200 = v197 + 16;
  v164 = v170 + 16;
  v163 = (v170 + 8);
  while (1)
  {
    if (v50 >= *(result + 2))
    {
      __break(1u);
      return result;
    }

    v56 = v157;
    v57 = *(v157 + 72);
    v152 = v50;
    v58 = v151 + v57 * v50;
    v59 = v154;
    v60 = v153;
    (*(v157 + 16))(v154, v58, v153);
    _DeviceActivityData.activitySegments(filteredBy:)();
    (*(v56 + 8))(v59, v60);
    v61 = v171;
    _DeviceActivityResults.next()();
    v161 = *v165;
    if (v161(v61, 1, v169) != 1)
    {
      break;
    }

LABEL_16:
    v50 = v152 + 1;
    (*v146)(v172, v173);
    result = v147;
    if (v50 == v148)
    {
      goto LABEL_107;
    }
  }

  v160 = *v162;
  v160(v166, v171, v169);
  while (1)
  {
    v65 = _DeviceActivityData.ActivitySegment.categoryActivities.getter();
    v188 = *(v65 + 16);
    if (v188)
    {
      break;
    }

LABEL_20:

    v62 = v166;
    v63 = v169;
    (*v159)(v166, v169);
    v64 = v171;
    _DeviceActivityResults.next()();
    if (v161(v64, 1, v63) == 1)
    {
      goto LABEL_16;
    }

    v160(v62, v64, v63);
  }

  v66 = 0;
  v187 = v65 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v67 = v180;
  v186 = v65;
  while (1)
  {
    if (v66 >= *(v65 + 16))
    {
      __break(1u);
LABEL_107:

      v36 = v176;
      goto LABEL_105;
    }

    v68 = *(v51 + 72);
    v191 = v66;
    (*(v51 + 16))(v39, v187 + v68 * v66, v55);
    _DeviceActivityData.CategoryActivity.identifier.getter();
    v69 = String._bridgeToObjectiveC()();

    v198 = v69;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v71;
    if (v70 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v36 != v72)
    {
      break;
    }

LABEL_29:
    (*v183)(v39, v55);
    v74 = v198;

LABEL_30:
    v65 = v186;
    v75 = v191;
LABEL_31:
    v66 = v75 + 1;
    if (v66 == v188)
    {
      goto LABEL_20;
    }
  }

  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v73)
  {
    goto LABEL_29;
  }

  v76 = *(v67 + v177);
  if (*(v76 + 16) && (v36 = static String._unconditionallyBridgeFromObjectiveC(_:)(), Hasher.init(_seed:)(), String.hash(into:)(), v77 = Hasher._finalize()(), , v78 = -1 << *(v76 + 32), v79 = v77 & ~v78, ((*(v76 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) != 0))
  {
    v80 = ~v78;
    while (1)
    {
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v82;
      if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v83)
      {

        goto LABEL_56;
      }

      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v85)
      {
        break;
      }

      v79 = (v79 + 1) & v80;
      if (((*(v76 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_56:
    v87 = v189;
  }

  else
  {
LABEL_42:

    v86 = DeviceActivityFilter.includesAllActivity.getter();
    v87 = v189;
    if ((v86 & 1) == 0)
    {
      v39 = v182;
      v88 = _DeviceActivityData.CategoryActivity.applicationActivities.getter();
      v89 = *(v88 + 16);
      if (v89)
      {
        v90 = *(v197 + 80);
        v196 = v88;
        v91 = v88 + ((v90 + 32) & ~v90);
        v92 = *(v197 + 72);
        v93 = *(v197 + 16);
        v94 = v199;
        v95 = v167;
        do
        {
          v93(v95, v91, v94);
          _DeviceActivityData.ApplicationActivity.totalActivityDuration.getter();
          v97 = v96;
          (*v52)(v95, v94);
          v53 = v53 + v97;
          v91 += v92;
          --v89;
        }

        while (v89);

        v39 = v182;
      }

      else
      {
      }

      v98 = _DeviceActivityData.CategoryActivity.webDomainActivities.getter();
      v99 = *(v98 + 16);
      if (v99)
      {
        v100 = *(v170 + 80);
        v196 = v98;
        v101 = v98 + ((v100 + 32) & ~v100);
        v102 = *(v170 + 72);
        v103 = *(v170 + 16);
        v104 = v168;
        v105 = v163;
        do
        {
          v103(v104, v101, v54);
          _DeviceActivityData.WebDomainActivity.totalActivityDuration.getter();
          v107 = v106;
          (*v105)(v104, v54);
          v53 = v53 + v107;
          v101 += v102;
          --v99;
        }

        while (v99);

        v39 = v182;
      }

      else
      {
      }

      v55 = v179;
      (*v183)(v39, v179);
      v51 = v178;
      v65 = v186;
      v75 = v191;
      v67 = v180;
      goto LABEL_31;
    }
  }

  v108 = _DeviceActivityData.CategoryActivity.applicationActivities.getter();
  v109 = v199;
  v196 = *(v108 + 16);
  if (!v196)
  {
    v111 = _swiftEmptyArrayStorage;
LABEL_83:

    v124 = v111[2];
    if (v124)
    {
      v125 = v111 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
      v126 = *(v197 + 72);
      v127 = *(v197 + 16);
      v128 = _swiftEmptyArrayStorage;
      do
      {
        v129 = v194;
        v130 = v199;
        v127(v194, v125, v199);
        _DeviceActivityData.ApplicationActivity.totalActivityDuration.getter();
        v132 = v131;
        (*v52)(v129, v130);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_1000465E8(0, *(v128 + 2) + 1, 1, v128);
        }

        v134 = *(v128 + 2);
        v133 = *(v128 + 3);
        if (v134 >= v133 >> 1)
        {
          v128 = sub_1000465E8((v133 > 1), v134 + 1, 1, v128);
        }

        *(v128 + 2) = v134 + 1;
        *&v128[8 * v134 + 32] = v132;
        v125 += v126;
        --v124;
      }

      while (v124);
    }

    else
    {

      v128 = _swiftEmptyArrayStorage;
    }

    v135 = *(v128 + 2);
    v67 = v180;
    v54 = v175;
    v55 = v179;
    v51 = v178;
    v39 = v182;
    if (!v135)
    {
      v137 = 0.0;
      goto LABEL_101;
    }

    if (v135 > 3)
    {
      v136 = v135 & 0x7FFFFFFFFFFFFFFCLL;
      v138 = (v128 + 48);
      v137 = 0.0;
      v139 = v135 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v137 = v137 + *(v138 - 2) + *(v138 - 1) + *v138 + v138[1];
        v138 += 4;
        v139 -= 4;
      }

      while (v139);
      if (v135 == v136)
      {
LABEL_101:

        _DeviceActivityData.CategoryActivity.totalActivityDuration.getter();
        v144 = v143;

        (*v183)(v39, v55);
        if (v144 - v137 > 0.0)
        {
          v53 = v53 + v144 - v137;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v136 = 0;
      v137 = 0.0;
    }

    v140 = v135 - v136;
    v141 = &v128[8 * v136 + 32];
    do
    {
      v142 = *v141++;
      v137 = v137 + v142;
      --v140;
    }

    while (v140);
    goto LABEL_101;
  }

  v110 = 0;
  v111 = _swiftEmptyArrayStorage;
  v195 = v108;
  while (v110 < *(v108 + 16))
  {
    v36 = v52;
    v112 = (*(v197 + 80) + 32) & ~*(v197 + 80);
    v113 = *(v197 + 72);
    (*(v197 + 16))(v87, v108 + v112 + v113 * v110, v109);
    if (_DeviceActivityData.ApplicationActivity.isTrusted.getter())
    {
      v115 = _DeviceActivityData.ApplicationActivity.bundleIdentifier.getter();
      v116 = v114;
      if (v115 == 0xD000000000000010 && v190 == v114 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v115 == 0xD000000000000016 && v181 == v116 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v115 == 0xD000000000000015 && v174 == v116 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v115 == 0xD000000000000019 && v158 == v116)
      {

LABEL_75:
        v117 = v87;
        v118 = *v192;
        (*v192)(v193, v117, v109);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v201 = v111;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100046A90(0, v111[2] + 1, 1);
          v111 = v201;
        }

        v121 = v111[2];
        v120 = v111[3];
        if (v121 >= v120 >> 1)
        {
          sub_100046A90((v120 > 1), v121 + 1, 1);
          v111 = v201;
        }

        v111[2] = v121 + 1;
        v122 = v111 + v112 + v121 * v113;
        v109 = v199;
        v118(v122, v193, v199);
        v87 = v189;
        v52 = v36;
        goto LABEL_60;
      }

      v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v123)
      {
        goto LABEL_75;
      }
    }

    v52 = v36;
    (*v36)(v87, v109);
LABEL_60:
    ++v110;
    v108 = v195;
    if (v196 == v110)
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_104:

LABEL_105:
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  (*(v155 + 8))(v36, v156);
  return isa;
}

uint64_t sub_10002FFEC(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v2[17] = swift_task_alloc();
  v3 = type metadata accessor for DateInterval();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000300FC, 0, 0);
}

uint64_t sub_1000300FC()
{
  v53 = v0;
  v1 = swift_allocObject();
  v0[23] = v1;
  *(v1 + 16) = &_swiftEmptyDictionarySingleton;
  type metadata accessor for Feature();
  if ((static Feature.isDeviceActivityBiomeEnabled.getter() & 1) == 0)
  {
    if (qword_100090D28 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100020D2C(v21, qword_100092EE0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Using CoreDuet to query for uncategorized web usage", v24, 2u);
    }

    sub_10002E7E4(v0 + 2);
    v25 = v0[5];
    v26 = v0[6];
    sub_100020908(v0 + 2, v25);
    v50 = (*(v26 + 24) + **(v26 + 24));
    v27 = swift_task_alloc();
    v0[39] = v27;
    *v27 = v0;
    v27[1] = sub_10003154C;
    v16 = v0[15];
    v17 = v25;
    v18 = v26;
    v19 = v50;

    return v19(v16, v17, v18);
  }

  if (qword_100090D28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[24] = sub_100020D2C(v2, qword_100092EE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Using Biome to query for uncategorized web usage", v5, 2u);
  }

  if (qword_100090CF8 != -1)
  {
    swift_once();
  }

  v6 = v0[22];
  v7 = qword_100092E60;
  v8 = *algn_100092E68;
  (*(*algn_100092E68 + 40))(v0[15], qword_100092E60, *algn_100092E68);
  v9 = (*(v8 + 48))(v6, v7, v8);
  v11 = v10;
  v0[25] = v9;
  v0[26] = v10;
  if (*(v10 + 16))
  {
    v12 = qword_100090CE8;

    if (v12 != -1)
    {
      swift_once();
    }

    sub_100020F40(&qword_100092E10, (v0 + 7));
    v13 = v0[10];
    v14 = v0[11];
    sub_100020908(v0 + 7, v13);
    v49 = (*(v14 + 40) + **(v14 + 40));
    v15 = swift_task_alloc();
    v0[27] = v15;
    *v15 = v0;
    v15[1] = sub_100030810;
    v16 = v11;
    v17 = v13;
    v18 = v14;
    v19 = v49;

    return v19(v16, v17, v18);
  }

  v29 = v0[19];
  v28 = v0[20];
  v30 = v0[18];
  v31 = v0[15];

  (*(v29 + 16))(v28, v31, v30);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[22];
  v37 = v0[19];
  v36 = v0[20];
  v38 = v0[18];
  if (v34)
  {
    v39 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = v51;
    *v39 = 136446210;
    sub_100034B18(&qword_1000914B0, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v35;
    v42 = v41;
    v43 = *(v37 + 8);
    v43(v36, v38);
    v44 = sub_100033140(v40, v42, &v52);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v32, v33, "No web domains were used during %{public}s", v39, 0xCu);
    sub_1000208BC(v51);

    v43(v48, v38);
  }

  else
  {

    v45 = *(v37 + 8);
    v45(v36, v38);
    v45(v35, v38);
  }

  v46 = *(v1 + 16);

  v47 = v0[1];

  return v47(v46);
}

uint64_t sub_100030810(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    v4 = sub_10003174C;
  }

  else
  {

    v4 = sub_100030960;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100030960()
{
  v30 = v0;
  if (*(v0[28] + 16))
  {
    v1 = v0[10];
    v2 = v0[11];
    sub_100020908(v0 + 7, v1);
    v27 = (*(v2 + 24) + **(v2 + 24));
    v3 = swift_task_alloc();
    v0[30] = v3;
    *v3 = v0;
    v3[1] = sub_100030CFC;
    v4 = v0[25];

    return v27(v4, v1, v2);
  }

  else
  {
    v6 = v0[21];
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[15];

    (*(v8 + 16))(v6, v9, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[21];
    v14 = v0[22];
    v16 = v0[18];
    v15 = v0[19];
    if (v12)
    {
      v28 = v0[22];
      v17 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v17 = 136446210;
      sub_100034B18(&qword_1000914B0, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = *(v15 + 8);
      v21(v13, v16);
      v22 = sub_100033140(v18, v20, &v29);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "No uncategorized web domains were used during %{public}s", v17, 0xCu);
      sub_1000208BC(v26);

      v21(v28, v16);
    }

    else
    {

      v23 = *(v15 + 8);
      v23(v13, v16);
      v23(v14, v16);
    }

    v24 = *(v0[23] + 16);

    sub_1000208BC(v0 + 7);

    v25 = v0[1];

    return v25(v24);
  }
}

uint64_t sub_100030CFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {

    v4 = sub_100031800;
  }

  else
  {
    v4 = sub_100030E18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100030E18()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_100020908(v0 + 7, v1);
  v6 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_100030F44;
  v4 = v0[26];

  return v6(v4, v1, v2);
}

uint64_t sub_100030F44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_1000318D4;
  }

  else
  {
    v4 = sub_10003107C;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10003107C()
{
  if (qword_100090CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[17];
  v4 = unk_100092E00;
  DateInterval.duration.getter();
  DateInterval.start.getter();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  v6 = static EventStreams.Biome.all.getter();
  v0[36] = sub_100031A48(v6);

  v7 = swift_allocObject();
  v0[37] = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  v8 = *(v4 + 32);

  v10 = v8 + *v8;
  v9 = swift_task_alloc();
  v0[38] = v9;
  *v9 = v0;
  v9[1] = sub_1000312C8;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1000312C8()
{
  v1 = *(*v0 + 136);

  sub_100028FF4(v1, &qword_1000913D0, &qword_10006D9C0);

  return _swift_task_switch(sub_100031470, 0, 0);
}

uint64_t sub_100031470()
{
  (*(v0[19] + 8))(v0[22], v0[18]);
  sub_1000208BC(v0 + 7);
  v1 = v0[23];
  swift_beginAccess();
  v2 = *(v1 + 16);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10003154C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v5 = sub_1000319A8;
  }

  else
  {
    *(v4 + 328) = a1;
    v5 = sub_100031674;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100031674()
{
  *(v0[23] + 16) = v0[41];

  sub_1000208BC(v0 + 2);
  v1 = v0[23];
  swift_beginAccess();
  v2 = *(v1 + 16);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10003174C()
{
  (*(v0[19] + 8))(v0[22], v0[18]);
  sub_1000208BC(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100031800()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);
  sub_1000208BC(v0 + 7);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000318D4()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);
  sub_1000208BC(v0 + 7);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000319A8()
{
  sub_1000208BC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

char *sub_100031A48(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100046AD4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100021848(0, &qword_1000914C8, NSObject_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100046AD4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100034094(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100021848(0, &qword_1000914C8, NSObject_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100046AD4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100034094(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100031C44(void *a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v4 = [a1 categoryUsage];
  sub_100021848(0, &qword_1000914B8, USCategoryUsageReport_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = v5;
    v5 = 0;
    v38 = i;
    v39 = v8 & 0xC000000000000001;
    v36 = v8 & 0xFFFFFFFFFFFFFF8;
    v37 = v8;
    v35 = v8 + 32;
    v42 = a2;
    while (1)
    {
      if (v39)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v36 + 16))
        {
          goto LABEL_33;
        }

        v9 = *(v35 + 8 * v7);
      }

      v10 = v9;
      v11 = __OFADD__(v7, 1);
      v12 = v7 + 1;
      if (v11)
      {
        break;
      }

      v13 = [v9 webUsage];
      sub_100021848(0, &qword_1000914C0, USWebUsageReport_ptr);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = v12;
      if (v14 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v10;
      v16 = &off_10008E000;
      if (v15)
      {
        if (v15 < 1)
        {
          goto LABEL_32;
        }

        v17 = 0;
        v44 = v15;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v18 = *(v14 + 8 * v17 + 32);
          }

          v19 = v18;
          if ([v18 v16[441]])
          {
            v20 = [v19 domainIdentifier];
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;

            v46[0] = v21;
            v46[1] = v23;
            __chkstk_darwin(v24);
            v34[2] = v46;
            if (sub_100033E18(sub_10003403C, v34, a2))
            {
              v25 = v43;
              swift_beginAccess();
              v26 = *(v25 + 16);
              if (*(v26 + 16) && (v27 = sub_100033790(v21, v23), (v28 & 1) != 0))
              {
                v29 = *(*(v26 + 56) + 8 * v27);
                swift_endAccess();
                [v29 doubleValue];
              }

              else
              {
                swift_endAccess();
              }

              [v19 totalUsageTime];
              isa = Double._bridgeToObjectiveC()().super.super.isa;
              v31 = v43;
              swift_beginAccess();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v45 = *(v31 + 16);
              *(v31 + 16) = 0x8000000000000000;
              sub_100033EC4(isa, v21, v23, isUniquelyReferenced_nonNull_native);

              *(v31 + 16) = v45;
              swift_endAccess();

              a2 = v42;
              v16 = &off_10008E000;
            }

            else
            {
            }

            v15 = v44;
          }

          else
          {
          }

          ++v17;
        }

        while (v15 != v17);
      }

      v7 = v41;
      if (v41 == v38)
      {
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }
}

uint64_t sub_1000321C8(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for DateInterval();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_1000322F4;

  return sub_10002FFEC(v7);
}

uint64_t sub_1000322F4(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = *v2;
  v6 = *v2;

  v7 = v4[2];
  (*(v4[4] + 8))(v4[5], v4[3]);

  if (v3)
  {
    isa = _convertErrorToNSError(_:)();

    v9 = isa;
    v10 = 0;
  }

  else
  {
    sub_100021848(0, &qword_1000914F0, NSNumber_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
  }

  v11 = isa;
  v12 = v5[6];
  v12[2](v12, v10, v9);

  _Block_release(v12);

  v13 = v6[1];

  return v13();
}

id sub_1000327D8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100032894()
{
  if (qword_100090CD8 != -1)
  {
    swift_once();
  }

  return qword_100092DF8;
}

uint64_t sub_1000328E4()
{
  if (qword_100090D00 != -1)
  {
    swift_once();
  }

  return byte_100092E70;
}

uint64_t sub_100032930(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10003297C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10002C9DC;

  return v6();
}

uint64_t sub_100032A64(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100029CC0;

  return v7();
}

uint64_t sub_100032B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000297C4(a3, v23 - v10, &qword_1000913B8, &qword_10006DC30);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100028FF4(v11, &qword_1000913B8, &qword_10006DC30);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100028FF4(a3, &qword_1000913B8, &qword_10006DC30);

    return v21;
  }

LABEL_8:
  sub_100028FF4(a3, &qword_1000913B8, &qword_10006DC30);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100032E48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100032F40;

  return v6(a1);
}

uint64_t sub_100032F40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100033038(uint64_t a1, uint64_t a2)
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

  sub_100020818(&qword_100091518, &qword_10006DC98);
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

uint64_t sub_1000330E4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100033140(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100033140(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003320C(v11, 0, 0, 1, a1, a2);
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
    sub_100020860(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000208BC(v11);
  return v7;
}

unint64_t sub_10003320C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100033318(a5, a6);
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

void *sub_100033318(uint64_t a1, unint64_t a2)
{
  v3 = sub_100033364(a1, a2);
  sub_100033494(&off_100086670);
  return v3;
}

void *sub_100033364(uint64_t a1, unint64_t a2)
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

  v6 = sub_100033580(v5, 0);
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
        v7 = sub_100033580(v10, 0);
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

uint64_t sub_100033494(uint64_t result)
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

  result = sub_1000335F4(result, v11, 1, v3);
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

void *sub_100033580(uint64_t a1, uint64_t a2)
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

  sub_100020818(&qword_100091498, &qword_10006DBF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000335F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100020818(&qword_100091498, &qword_10006DBF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1000336E8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_1000336F8(uint64_t a1)
{
  type metadata accessor for URL();
  sub_100034B18(&qword_100091158, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100033850(a1, v2);
}

unint64_t sub_100033790(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100033A10(a1, a2, v4);
}

unint64_t sub_10003380C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100033AC8(a1, v4);
}

unint64_t sub_100033850(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100034B18(&qword_1000914A8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100033A10(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100033AC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100033B90(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100033BEC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100033C40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100033C78()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100033CC0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100033E18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100033EC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100033790(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000470CC(v16, a4 & 1);
      v11 = sub_100033790(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1000474E0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_10003403C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

_OWORD *sub_100034094(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000340A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100020818(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003410C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100034154()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100029CC0;

  return sub_1000321C8(v2, v3, v4);
}

uint64_t sub_10003420C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002C9DC;

  return sub_10003297C(v2, v3, v4);
}

uint64_t sub_1000342CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003430C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002C9DC;

  return sub_100032A64(a1, v4, v5, v6);
}

uint64_t sub_1000343D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034410(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002C9DC;

  return sub_100032E48(a1, v4);
}

uint64_t sub_1000344C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100029CC0;

  return sub_100032E48(a1, v4);
}

uint64_t sub_1000345B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100034618()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003467C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = sub_100020818(&qword_1000914F8, &qword_10006DC80);
  v49 = sub_100034A1C();
  v47[0] = a3;
  v4 = sub_100020908(v47, v48);
  __chkstk_darwin(v4);
  v6 = v39 - v5;
  (*(v7 + 16))(v39 - v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1000283C4(v44);
  v9 = -1 << *(*v6 + 32);
  v10 = ~v9;
  v11 = (*v6 + 64);
  v12 = *v11;
  v13 = -v9;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  *v8 = *v6;
  v8[1] = v11;
  v8[2] = v10;
  v8[3] = 0;
  v8[4] = v14 & v12;

  while (1)
  {
    sub_100034AC8(v44, AssociatedTypeWitness);
    dispatch thunk of IteratorProtocol.next()();
    if (!v43)
    {
      break;
    }

    sub_100028428(&v42, v39);
    v15 = v40;
    v16 = v41;
    sub_100020908(v39, v40);
    v17 = (*(v16 + 8))(v15, v16);
    if (v18)
    {
      sub_10005E9F8(&v38, v17, v18);
    }

    v19 = v40;
    v20 = v41;
    sub_100020908(v39, v40);
    v21 = (*(v20 + 16))(v19, v20);
    if (v21)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = (v21 + 40);
        do
        {
          v24 = *(v23 - 1);
          v25 = *v23;

          sub_10005E9F8(&v38, v24, v25);

          v23 += 2;
          --v22;
        }

        while (v22);
      }
    }

    v26 = v40;
    v27 = v41;
    sub_100020908(v39, v40);
    v28 = (*(v27 + 24))(v26, v27);
    if (v29)
    {
      sub_10005E9F8(&v38, v28, v29);
    }

    v30 = v40;
    v31 = v41;
    sub_100020908(v39, v40);
    v32 = (*(v31 + 32))(v30, v31);
    if (v32)
    {
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = (v32 + 40);
        do
        {
          v35 = *(v34 - 1);
          v36 = *v34;

          sub_10005E9F8(&v38, v35, v36);

          v34 += 2;
          --v33;
        }

        while (v33);
      }
    }

    sub_1000208BC(v39);
  }

  sub_1000208BC(v44);
  return sub_1000208BC(v47);
}

unint64_t sub_100034A1C()
{
  result = qword_100091500;
  if (!qword_100091500)
  {
    sub_100034A80(&qword_1000914F8, &qword_10006DC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091500);
  }

  return result;
}

uint64_t sub_100034A80(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100034AC8(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100034B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100034B84()
{
  v1 = [*v0 sharingAppleIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100034C04()
{
  v0 = type metadata accessor for Logger();
  sub_100034C7C(v0, qword_100092E80);
  sub_100020D2C(v0, qword_100092E80);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100034C7C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100034D40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100034C7C(v5, a2);
  sub_100020D2C(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100034DB8()
{
  v0 = type metadata accessor for Logger();
  sub_100034C7C(v0, qword_100092EE0);
  sub_100020D2C(v0, qword_100092EE0);
  return Logger.init(subsystem:category:)();
}

id sub_100035220(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InvitationHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100035288()
{
  result = qword_1000915B0;
  if (!qword_1000915B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000915B0);
  }

  return result;
}

uint64_t sub_1000352FC()
{
  v1 = [*v0 receivedInvitations];
  sub_100035884();
  sub_1000358D0();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_100035384(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  __chkstk_darwin(v12 - 8);
  v14 = aBlock - v13;
  sub_100035814(a2, aBlock - v13);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  isa = 0;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v14, v15);
  }

  if (a4)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100035554;
    aBlock[3] = &unk_100087110;
    a4 = _Block_copy(aBlock);
  }

  [v6 sendInvitationToDestination:a1 expirationDate:isa context:a3 serverAcknowledgedBlock:a4];
  _Block_release(a4);
}

void sub_100035554(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1000355E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  if (a3)
  {
    v9[4] = a3;
    v9[5] = a4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000356BC;
    v9[3] = &unk_1000870E8;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v7 acceptInvitation:a1 withContext:a2 serverAcknowledgedBlock:v8];
  _Block_release(v8);
}

void sub_1000356BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100035728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1000356BC;
    v7[3] = &unk_1000870C0;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 declineInvitation:a1 serverAcknowledgedBlock:v6];
  _Block_release(v6);
}

uint64_t sub_1000357FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100035814(uint64_t a1, uint64_t a2)
{
  v4 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100035884()
{
  result = qword_100091710;
  if (!qword_100091710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100091710);
  }

  return result;
}

unint64_t sub_1000358D0()
{
  result = qword_100091620;
  if (!qword_100091620)
  {
    sub_100035884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091620);
  }

  return result;
}

uint64_t sub_100035938(uint64_t a1)
{
  *(a1 + 8) = sub_1000359A0(&qword_100091628, &protocol conformance descriptor for _DeviceActivityData.Metadata);
  result = sub_1000359A0(&qword_1000917D0, &protocol conformance descriptor for _DeviceActivityData.Metadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000359A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _DeviceActivityData.Metadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000359E8(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  v5 = a2;
  v6 = a3 & 1;
  return a4(a1, &v5);
}

void sub_100035A28(uint64_t a1)
{
  sub_1000297C4(a1, v9, &qword_100091360, &unk_10006D960);
  v2 = v10;
  if (v10)
  {
    v3 = sub_100020908(v9, v10);
    v4 = *(v2 - 8);
    __chkstk_darwin(v3);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v6, v2);
    sub_1000208BC(v9);
  }

  else
  {
    v7 = 0;
  }

  v8 = String._bridgeToObjectiveC()();
  [v1 setObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

uint64_t sub_100035B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000297C4(a3, v25 - v10, &qword_1000913B8, &qword_10006DC30);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100028FF4(v11, &qword_1000913B8, &qword_10006DC30);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100028FF4(a3, &qword_1000913B8, &qword_10006DC30);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100028FF4(a3, &qword_1000913B8, &qword_10006DC30);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *sub_100035E98(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100046AF4(0, v23[2] + 1, 1);
          v23 = v40;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_100046AF4((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        v23[2] = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_100036168(uint64_t (*a1)(void), uint64_t a2)
{
  type metadata accessor for DeviceActivityAuthorization();
  if ((static DeviceActivityAuthorization.sharingEnabled.getter() & 1) == 0)
  {
    return a1(0);
  }

  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  return sub_100036B14(a1, a2);
}

uint64_t sub_100036200(uint64_t a1)
{
  if (qword_100090D38 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_1000379FC(a1);
}

uint64_t sub_10003626C(uint64_t a1)
{
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  CKSyncEngine.state.getter();
  v2 = sub_10003F194(a1);
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v2);
}

id sub_100036324(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for SyncCoordinator()) init];
  qword_100091630 = result;
  return result;
}

uint64_t sub_100036354()
{
  v0 = type metadata accessor for DeviceActivityDataLocations();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = type metadata accessor for DeviceActivityDataStore();
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100090D30 != -1)
  {
    swift_once();
  }

  v10 = qword_100091630;
  v11 = type metadata accessor for DeviceActivityAuthorization();
  v12 = objc_opt_self();
  v13 = v10;
  v14 = [v12 standardUserDefaults];
  DeviceActivityDataStore.init()();
  DeviceActivityDataLocations.init()();
  if (qword_100090D48 != -1)
  {
    swift_once();
  }

  v15 = [qword_1000918D0 deviceActivity];
  sub_100020818(&qword_100091670, &qword_10006DF80);
  v16 = swift_allocObject();
  (*(v1 + 16))(v4, v6, v0);
  v17 = v15;
  v18 = sub_100048350(v11, v13, v14, v9, v4, v17, v16);

  result = (*(v1 + 8))(v6, v0);
  qword_100092EF8 = v18;
  return result;
}

NSString sub_1000365E8()
{
  result = String._bridgeToObjectiveC()();
  qword_100092F00 = result;
  return result;
}

uint64_t sub_1000366AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = DeviceActivityDataStore.localZones.getter();
  v13 = *(v12 + 16);
  if (v13)
  {
    v26 = v2;
    v27 = a1;
    v28 = a2;
    v33 = _swiftEmptyArrayStorage;
    v32 = v5;
    v14 = v12;
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
    v29 = v14;
    v30 = CKCurrentUserDefaultName;
    v15 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v16 = *(v6 + 72);
    do
    {
      sub_1000297C4(v15, v11, qword_1000919E0, &unk_10006DFA0);
      sub_1000297C4(v11, v9, qword_1000919E0, &unk_10006DFA0);
      v17 = *v9;
      v18 = v9[1];
      v19 = *(v32 + 48);
      v20._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20._object = v21;
      v22._countAndFlagsBits = v17;
      v22._object = v18;
      CKRecordZoneID.init(zoneName:ownerName:)(v22, v20);
      sub_100028FF4(v11, qword_1000919E0, &unk_10006DFA0);
      v23 = type metadata accessor for _SegmentInterval();
      (*(*(v23 - 8) + 8))(v9 + v19, v23);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += v16;
      --v13;
    }

    while (v13);

    v24 = v33;
    a1 = v27;
    a2 = v28;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  sub_10003FEB8(v24, a1, a2);
}

uint64_t sub_100036B14(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v127 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  v120 = *(v123 - 8);
  v9 = __chkstk_darwin(v123);
  v119 = (&v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  isa = (&v106 - v12);
  __chkstk_darwin(v11);
  v118 = (&v106 - v13);
  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_100090D18 == -1)
    {
LABEL_5:
      v20 = type metadata accessor for Logger();
      sub_100020D2C(v20, qword_100092EB0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not uploading local data because Device Activity is not authorized.", v23, 2u);
      }

      return (a1)(0);
    }

LABEL_63:
    swift_once();
    goto LABEL_5;
  }

  v14 = *(v2 + *(*v2 + 216));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100049BDC;
  *(v15 + 24) = v2;
  aBlock[4] = sub_100049BF4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003EE58;
  aBlock[3] = &unk_100087418;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v14, v16);
  _Block_release(v16);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v17 = *(*v2 + 184);
  v18 = DeviceActivityDataStore.localZones.getter();
  v121 = 0;
  v125 = v8;
  v106 = a2;
  v107 = a1;
  v116 = *(v18 + 16);
  v117 = v2;
  v128 = v6;
  if (v116)
  {
    v25 = 0;
    v114 = *(v123 + 48);
    v111 = *(v2 + *(*v2 + 224));
    v113 = v18 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    v26 = &_swiftEmptyDictionarySingleton;
    v110 = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
    *&v19 = 134349314;
    v108 = v19;
    v109 = xmmword_10006D8A0;
    v112 = v18;
    v115 = v17;
    while (1)
    {
      if (v25 >= *(v18 + 16))
      {
        goto LABEL_59;
      }

      v122 = v26;
      v27 = *(v120 + 72);
      v124 = v25;
      v28 = v118;
      sub_1000297C4(v113 + v27 * v25, v118, qword_1000919E0, &unk_10006DFA0);
      v29 = v28[1];
      v30 = v123;
      v31 = *(v123 + 48);
      v32 = isa;
      *isa = *v28;
      *(v32 + 1) = v29;
      v33 = type metadata accessor for _SegmentInterval();
      v34 = *(v33 - 8);
      (*(v34 + 32))(v32 + v31, v114 + v28, v33);
      v35 = v119;
      sub_1000297C4(v32, v119, qword_1000919E0, &unk_10006DFA0);
      v36 = *v35;
      a1 = v35[1];
      (*(v34 + 8))(v35 + *(v30 + 48), v33);
      v37 = v3[10];
      v38 = v3[11];
      sub_100020908(v3 + 7, v37);
      if (((*(v38 + 8))(v36, a1, v37, v38) & 1) == 0)
      {
        v39 = objc_allocWithZone(CKRecordZone);
        v40 = String._bridgeToObjectiveC()();
        v41 = [v39 initWithZoneName:v40];

        [v41 setCapabilities:8];
        CKSyncEngine.state.getter();
        sub_100020818(&qword_100091668, &qword_10006DF78);
        v42 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
        v43 = *(v42 - 8);
        v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v45 = swift_allocObject();
        *(v45 + 16) = v109;
        *(v45 + v44) = v41;
        v46 = v45 + v44;
        v3 = v117;
        (*(v43 + 104))(v46, v110, v42);
        v6 = v128;
        v47 = v41;
        CKSyncEngine.State.add(pendingDatabaseChanges:)(v45);
      }

      v48 = v121;
      v49 = DeviceActivityDataStore.localRecordNames(forZoneName:segmentInterval:)();
      v121 = v48;
      if (v48)
      {
        sub_100028FF4(isa, qword_1000919E0, &unk_10006DFA0);

        v103 = v107;
        v104 = v121;
        swift_errorRetain();
        v103(v104);
      }

      v50 = v49;
      if (*(v49 + 16))
      {
        break;
      }

      sub_100028FF4(isa, qword_1000919E0, &unk_10006DFA0);

      v26 = v122;
LABEL_11:
      v18 = v112;
      v25 = v124 + 1;
      if (v116 == (v124 + 1))
      {
        goto LABEL_35;
      }
    }

    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100020D2C(v51, qword_100092EB0);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v122;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = v108;
      *(v56 + 4) = *(v50 + 16);

      *(v56 + 12) = 2082;
      *(v56 + 14) = sub_100033140(v36, a1, aBlock);
      _os_log_impl(&_mh_execute_header, v52, v53, "Uploading %{public}ld records for %{public}s.", v56, 0x16u);
      sub_1000208BC(v57);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v55;
    v60 = sub_100033790(v36, a1);
    v61 = *(v55 + 16);
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_60;
    }

    v64 = v59;
    if (*(v55 + 24) < v63)
    {
      sub_100046E24(v63, isUniquelyReferenced_nonNull_native);
      v65 = sub_100033790(v36, a1);
      if ((v64 & 1) != (v66 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v60 = v65;
      v26 = aBlock[0];
      if ((v64 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(*(v26 + 7) + 8 * v60) = v50;

LABEL_33:
      sub_100028FF4(isa, qword_1000919E0, &unk_10006DFA0);
      v3 = v117;
      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v26 = aBlock[0];
      if (v59)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_100047370();
      v26 = aBlock[0];
      if (v64)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    *&v26[8 * (v60 >> 6) + 64] |= 1 << v60;
    v67 = (*(v26 + 6) + 16 * v60);
    *v67 = v36;
    v67[1] = a1;
    *(*(v26 + 7) + 8 * v60) = v50;
    v68 = *(v26 + 2);
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_61;
    }

    *(v26 + 2) = v70;
    goto LABEL_33;
  }

  v26 = &_swiftEmptyDictionarySingleton;
LABEL_35:

  CKSyncEngine.state.getter();
  v71 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  CKSyncEngine.state.getter();
  CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v71);

  if (*(v26 + 2))
  {
    v113 = CKSyncEngine.state.getter();
    v72 = v26 + 64;
    v73 = 1 << v26[32];
    v74 = -1;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    v75 = v74 & *(v26 + 8);
    v76 = (v73 + 63) >> 6;
    v114 = CKCurrentUserDefaultName;
    LODWORD(v124) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
    v77 = (v127 + 104);
    v123 = v127 + 32;

    a1 = 0;
    v78 = _swiftEmptyArrayStorage;
    v115 = v76;
    v116 = v26 + 64;
    v122 = v26;
    while (v75)
    {
LABEL_45:
      v120 = v75;
      v80 = __clz(__rbit64(v75)) | (a1 << 6);
      v81 = *(v26 + 7);
      v82 = (*(v26 + 6) + 16 * v80);
      v83 = *v82;
      v84 = v82[1];
      v85 = *(v81 + 8 * v80);
      sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;
      swift_bridgeObjectRetain_n();

      v89._countAndFlagsBits = v83;
      v118 = v84;
      v89._object = v84;
      v90._countAndFlagsBits = v86;
      v90._object = v88;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v89, v90).super.isa;
      v91 = *(v85 + 16);
      v119 = v85;
      if (v91)
      {
        sub_100021848(0, &qword_100091770, CKRecordID_ptr);
        v92 = (v85 + 40);
        v93 = v125;
        do
        {
          v94 = *(v92 - 1);
          v95 = *v92;

          v96 = isa;
          v97._countAndFlagsBits = v94;
          v97._object = v95;
          v98 = CKRecordID.init(recordName:zoneID:)(v97, v96).super.isa;
          *v93 = v98;
          (*v77)(v93, v124, v6);
          v99 = v98;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_100046714(0, v78[2] + 1, 1, v78, &qword_100091780, &qword_10006DFF0, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v101 = v78[2];
          v100 = v78[3];
          if (v101 >= v100 >> 1)
          {
            v78 = sub_100046714((v100 > 1), v101 + 1, 1, v78, &qword_100091780, &qword_10006DFF0, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v78[2] = v101 + 1;
          v102 = v78 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v101;
          v93 = v125;
          v6 = v128;
          (*(v127 + 32))(v102, v125, v128);
          v92 += 2;
          --v91;
        }

        while (v91);
      }

      v75 = (v120 - 1) & v120;

      v72 = v116;
      v26 = v122;
      v76 = v115;
    }

    while (1)
    {
      v79 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v79 >= v76)
      {

        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v78);

        goto LABEL_56;
      }

      v75 = *&v72[8 * v79];
      ++a1;
      if (v75)
      {
        a1 = v79;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_10003EE80(v105);
LABEL_56:
  v107(0);
}

uint64_t sub_1000379FC(uint64_t a1)
{
  v2 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v41 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = (v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = v35 - v6;
  v8 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  v50 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = v35 - v12;
  v14 = v51;
  result = DeviceActivityDataStore.localZones.getter();
  if (!v14)
  {
    v47 = v2;
    v48 = v7;
    v40 = v8;
    v35[2] = 0;
    v16 = result;
    v17 = CKSyncEngine.state.getter();
    v49 = *(v16 + 16);
    if (v49)
    {
      v35[0] = v16;
      v35[1] = v17;
      v39 = v5;
      v18 = 0;
      v46 = v16 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v19 = *(a1 + 16);
      v45 = v50[9];
      v38 = CKCurrentUserDefaultName;
      v37 = (v41 + 104);
      v20 = _swiftEmptyArrayStorage;
      v44 = (v41 + 32);
      v36 = enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:);
      do
      {
        v50 = v20;
        v51 = v18;
        sub_1000297C4(v46 + v45 * v18, v13, qword_1000919E0, &unk_10006DFA0);
        v21 = 0;
        do
        {
          if (v19 == v21)
          {
            sub_100028FF4(v13, qword_1000919E0, &unk_10006DFA0);
            v20 = v50;
            goto LABEL_5;
          }

          v22 = type metadata accessor for _SegmentInterval();
          v23 = *(v22 - 8);
          sub_100049490(&qword_1000916C0, 255, &type metadata accessor for _SegmentInterval, &protocol conformance descriptor for _SegmentInterval);
          ++v21;
        }

        while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
        v42 = sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
        sub_1000297C4(v13, v11, qword_1000919E0, &unk_10006DFA0);
        v24 = *v11;
        v25 = v11[1];
        v43 = *(v40 + 48);
        v26._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26._object = v27;
        v28._countAndFlagsBits = v24;
        v28._object = v25;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v28, v26).super.isa;
        sub_100028FF4(v13, qword_1000919E0, &unk_10006DFA0);
        (*(v23 + 8))(v11 + v43, v22);
        v30 = v39;
        *v39 = isa;
        v31 = v47;
        (*v37)(v30, v36, v47);
        v32 = *v44;
        (*v44)(v48, v30, v31);
        v20 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100046714(0, v20[2] + 1, 1, v20, &qword_100091668, &qword_10006DF78, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
        }

        v34 = v20[2];
        v33 = v20[3];
        if (v34 >= v33 >> 1)
        {
          v20 = sub_100046714((v33 > 1), v34 + 1, 1, v20, &qword_100091668, &qword_10006DF78, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
        }

        v20[2] = v34 + 1;
        v32(v20 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v34);
LABEL_5:
        v18 = v51 + 1;
      }

      while (v51 + 1 != v49);
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
    }

    CKSyncEngine.State.add(pendingDatabaseChanges:)(v20);
  }

  return result;
}

void sub_1000382A4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100038308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[4] = a3;
  v3[5] = ObjectType;
  v3[2] = a1;
  v3[3] = a2;
  v8 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v3[6] = v8;
  v3[7] = *(v8 - 8);
  v3[8] = swift_task_alloc();
  v9 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v3[9] = v9;
  v3[10] = *(v9 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100038444, 0, 0);
}

uint64_t sub_100038444()
{
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  if ([swift_getObjCClassFromMetadata() isAuthorized] && (sub_100049C3C(), v1))
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v18 = *(v0 + 32);
    CKSyncEngine.SendChangesContext.options.getter();
    CKSyncEngine.SendChangesOptions.scope.getter();
    (*(v7 + 8))(v4, v6);
    CKSyncEngine.state.getter();
    v8 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

    v9 = swift_task_alloc();
    *(v9 + 16) = v2;
    sub_100035E98(sub_100049E7C, v9, v8);

    *(swift_task_alloc() + 16) = v18;
    CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:synchronousRecordProvider:)();

    (*(v3 + 8))(v2, v5);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100020D2C(v10, qword_100092EB0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Not creating record zone change batch because Device Activity is not authorized.", v13, 2u);
    }

    v14 = *(v0 + 16);

    v15 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

void *sub_100038720(void *a1)
{
  if (qword_100090D38 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_100038784(a1);
}

void *sub_100038784(void *a1)
{
  v2 = v1;
  v4 = sub_100020818(&qword_100091788, &unk_10006E000);
  __chkstk_darwin(v4 - 8);
  v194 = &v188 - v5;
  v197 = type metadata accessor for URLResourceValues();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v191 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v198 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v192 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v202 = &v188 - v10;
  v11 = sub_100020818(&qword_100091790, &qword_10006DC10);
  __chkstk_darwin(v11 - 8);
  v193 = &v188 - v12;
  v13 = type metadata accessor for _DeviceActivityData.ActivitySegment();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v190 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v204 = &v188 - v17;
  v18 = sub_100020818(&qword_100091798, &qword_10006E010);
  __chkstk_darwin(v18 - 8);
  v203 = &v188 - v19;
  v205 = type metadata accessor for _DeviceActivityData.Metadata();
  v206 = *(v205 - 8);
  v20 = __chkstk_darwin(v205);
  v195 = &v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v207 = &v188 - v22;
  v23 = sub_100020818(&qword_1000917A0, &qword_10006E018);
  __chkstk_darwin(v23 - 8);
  v210 = &v188 - v24;
  v25 = type metadata accessor for _SegmentInterval();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v208 = &v188 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v213 = &v188 - v29;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100020D2C(v30, qword_100092EB0);
  v32 = a1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  v35 = os_log_type_enabled(v33, v34);
  v200 = v7;
  v199 = v13;
  v201 = v14;
  v211 = v25;
  v212 = v26;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v214 = v189;
    *v36 = 136446210;
    v37 = v2;
    v38 = v32;
    v39 = [v38 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v209 = v31;
    v42 = v41;

    v2 = v37;
    v43 = sub_100033140(v40, v42, &v214);
    v31 = v209;

    *(v36 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v33, v34, "Saving record: %{public}s", v36, 0xCu);
    sub_1000208BC(v189);
  }

  v44 = v2;
  v45 = sub_100049C3C();
  v47 = v46;

  v48 = v32;
  v49 = [v32 zoneID];
  v50 = [v49 zoneName];

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  if (!v47)
  {
    goto LABEL_8;
  }

  v189 = v44;
  v54 = v210;
  sub_100040590(v51, v53, v210);
  v55 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v56 = (*(*(v55 - 8) + 48))(v54, 1, v55);

  if (v56 == 1)
  {
    sub_100028FF4(v54, &qword_1000917A0, &qword_10006E018);
LABEL_8:

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      *v59 = 136446466;
      v60 = sub_100033140(v51, v53, &v214);

      *(v59 + 4) = v60;
      *(v59 + 12) = 2082;
      if (v47)
      {
        v61 = v45;
      }

      else
      {
        v61 = 7104878;
      }

      if (!v47)
      {
        v47 = 0xE300000000000000;
      }

      v62 = sub_100033140(v61, v47, &v214);

      *(v59 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v57, v58, "Failed to create record for %{public}s and user: %{public}s", v59, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  v188 = v45;

  v65 = *(v55 + 48);
  v66 = v211;
  v67 = *(v212 + 32);
  v68 = v208;
  v67(v208, &v54[v65], v211);
  v67(v213, v68, v66);
  v69 = [v48 recordName];
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;

  v209 = v31;
  if (v70 == v51 && v72 == v53)
  {

    goto LABEL_23;
  }

  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v73 & 1) == 0)
  {
    v210 = v70;
    v85 = *(*v189 + 184);
    countAndFlagsBits = DeviceActivityDataStore.localDeviceIdentifier()()._countAndFlagsBits;
    if (v87)
    {

      v63 = 0;
      v89 = v211;
      v75 = v212;
      goto LABEL_30;
    }

    v208 = countAndFlagsBits;
    DeviceActivityDataStore.fetchLocalSegment(segmentInterval:recordName:)();
    v207 = v85;
    v122 = v193;
    DeviceActivityDataStore.fetchCloudSegment(userAltDSID:deviceIdentifier:segmentInterval:recordName:)();

    v123 = v201;
    v124 = v199;
    (*(v201 + 56))(v122, 0, 1, v199);
    v125 = v190;
    (*(v123 + 32))(v190, v122, v124);
    v126 = sub_100021848(0, &qword_1000917B0, CKRecord_ptr);
    v127 = _DeviceActivityData.ActivitySegment.recordSystemFields.getter();
    v208 = v126;
    v63 = sub_100020980(v127, v128);
    v75 = v212;
    if (!v63)
    {
      sub_100021848(0, &qword_100091770, CKRecordID_ptr);
      v206 = _DeviceActivityData.ActivitySegment.recordName.getter();
      v130 = v129;
      sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
      v131 = _DeviceActivityData.ActivitySegment.recordZoneName.getter();
      v133 = v132;
      v134._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v134._object = v135;
      v136._countAndFlagsBits = v131;
      v136._object = v133;
      v124 = v199;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v136, v134).super.isa;
      v138._countAndFlagsBits = v206;
      v138._object = v130;
      v75 = v212;
      v139 = CKRecordID.init(recordName:zoneID:)(v138, isa).super.isa;
      v140._countAndFlagsBits = 0x7974697669746341;
      v140._object = 0xEF746E656D676553;
      v63 = CKRecord.init(recordType:recordID:)(v140, v139).super.isa;
    }

    (*(v201 + 8))(v125, v124);
    _DeviceActivityData.ActivitySegment.recordSystemFields.setter();
    sub_100020908((v189 + *(*v189 + 192)), *(v189 + *(*v189 + 192) + 24));
    dispatch thunk of DeviceActivityDataLocating.localActivitySegmentURL(segmentInterval:recordName:)();

    sub_100020818(&qword_1000917B8, &qword_10006E028);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006D890;
    *(inited + 32) = NSURLFileSizeKey;
    *(inited + 40) = NSURLTotalFileSizeKey;
    v142 = NSURLFileSizeKey;
    v143 = NSURLTotalFileSizeKey;
    sub_100049EB4(inited);
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    v144 = v194;
    URL.resourceValues(forKeys:)();
    v210 = 0;

    v158 = v196;
    v159 = v197;
    (*(v196 + 56))(v144, 0, 1, v197);
    v160 = v191;
    (*(v158 + 32))(v191, v144, v159);
    v161 = URLResourceValues.totalFileSize.getter();
    v120 = v188;
    v157 = v200;
    v162 = v198;
    if (v163 & 1) != 0 && (v161 = URLResourceValues.fileSize.getter(), (v164))
    {
      (*(v196 + 8))(v160, v197);
      v145 = v192;
      (*(v162 + 16))(v192, v202, v157);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = v162;
        v150 = swift_slowAlloc();
        v214 = v150;
        *v148 = 136446210;
        sub_100049490(&unk_1000917C0, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v151 = dispatch thunk of CustomStringConvertible.description.getter();
        v153 = v152;
        v154 = v145;
        v155 = *(v149 + 8);
        v155(v154, v200);
        v156 = sub_100033140(v151, v153, &v214);
        v120 = v188;

        *(v148 + 4) = v156;
        _os_log_impl(&_mh_execute_header, v146, v147, "Failed to extract file size for url: %{public}s", v148, 0xCu);
        sub_1000208BC(v150);

        v157 = v200;
      }

      else
      {

        v165 = v145;
        v155 = *(v162 + 8);
        v155(v165, v157);
      }

      v75 = v212;
      v166 = [v63 encryptedValues];
      v167 = String._bridgeToObjectiveC()();
      [v166 setObject:0 forKeyedSubscript:v167];
      swift_unknownObjectRelease();

      v168 = v204;
      v119 = v213;
      v87 = v210;
      DeviceActivityDataStore.saveLocalSegment(_:segmentInterval:)();
      if (v87)
      {

        v155(v202, v157);
        (*(v201 + 8))(v168, v199);
LABEL_49:
        v89 = v211;
        goto LABEL_30;
      }

      v175 = objc_allocWithZone(CKAsset);
      v176 = v120;
      v177 = v155;
      v178 = v202;
      URL._bridgeToObjectiveC()(&var20);
      v180 = v179;
      [v175 initWithFileURL:v179];

      CKRecord.subscript.setter();
      v177(v178, v157);
      v120 = v176;
      (*(v201 + 8))(v204, v199);
      v89 = v211;
    }

    else
    {
      v169 = v161;
      v170 = [v63 encryptedValues];
      v171 = v204;
      v87 = v210;
      if (v169 > 899999)
      {
        v181 = String._bridgeToObjectiveC()();
        [v170 setObject:0 forKeyedSubscript:v181];
        swift_unknownObjectRelease();

        v119 = v213;
        DeviceActivityDataStore.saveLocalSegment(_:segmentInterval:)();
        if (v87)
        {

          (*(v196 + 8))(v191, v197);
          (*(v198 + 8))(v202, v157);
          (*(v201 + 8))(v171, v199);
          goto LABEL_49;
        }

        v185 = objc_allocWithZone(CKAsset);
        v184 = v202;
        URL._bridgeToObjectiveC()(&var20);
        v187 = v186;
        [v185 initWithFileURL:v186];

        v89 = v211;
      }

      else
      {
        sub_100049490(&qword_100090D68, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment, &protocol conformance descriptor for _DeviceActivityData.ActivitySegment);
        sub_100049490(&qword_100090D70, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment, &protocol conformance descriptor for _DeviceActivityData.ActivitySegment);
        v172 = v199;
        v173 = static DeviceActivityDataStore.encode<A>(_:)();
        v89 = v211;
        if (v87)
        {
          swift_unknownObjectRelease();

          (*(v196 + 8))(v191, v197);
          (*(v198 + 8))(v202, v200);
          (*(v201 + 8))(v171, v172);
LABEL_30:
          swift_errorRetain();
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v214 = v79;
            *v78 = 136446210;
            v218 = v87;
            swift_errorRetain();
            sub_100020818(&qword_100091370, &qword_10006D390);
            v90 = String.init<A>(describing:)();
            v81 = v75;
            v92 = sub_100033140(v90, v91, &v214);

            *(v78 + 4) = v92;
            v84 = "Failed to add segment to record because it was likely already moved to the Cloud folder: %{public}s";
            goto LABEL_32;
          }

LABEL_33:

          (*(v75 + 8))(v213, v89);
          return 0;
        }

        v182 = v174;
        v183 = v173;
        swift_getObjectType();
        v216 = &type metadata for Data;
        v217 = &protocol witness table for Data;
        v214 = v183;
        v215 = v182;
        CKRecordKeyValueSetting.subscript.setter();
        swift_unknownObjectRelease();
        v119 = v213;
        v157 = v200;
        v184 = v202;
      }

      CKRecord.subscript.setter();
      (*(v196 + 8))(v191, v197);
      (*(v198 + 8))(v184, v157);
      (*(v201 + 8))(v204, v199);
    }

LABEL_37:
    v121 = [v63 encryptedValues];
    swift_getObjectType();
    v216 = &type metadata for String;
    v217 = &protocol witness table for String;
    v214 = v120;
    v215 = v47;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    (*(v75 + 8))(v119, v89);
    return v63;
  }

LABEL_23:

  DeviceActivityDataStore.localDeviceIdentifier()();
  if (!v74)
  {
    DeviceActivityDataStore.fetchLocalMetadata(segmentInterval:)();
    v88 = v203;
    DeviceActivityDataStore.fetchCloudMetadata(userAltDSID:deviceIdentifier:segmentInterval:)();
    v89 = v211;

    v93 = v206;
    v94 = v205;
    (*(v206 + 56))(v88, 0, 1, v205);
    v95 = v195;
    (*(v93 + 32))(v195, v88, v94);
    v96 = sub_100021848(0, &qword_1000917B0, CKRecord_ptr);
    v97 = _DeviceActivityData.Metadata.recordSystemFields.getter();
    v210 = v96;
    v63 = sub_100020980(v97, v98);
    v75 = v212;
    if (!v63)
    {
      v208 = sub_100021848(0, &qword_100091770, CKRecordID_ptr);
      v99 = _DeviceActivityData.Metadata.recordName.getter();
      v100 = v75;
      v102 = v101;
      sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
      v103 = _DeviceActivityData.Metadata.recordName.getter();
      v105 = v104;
      v106._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106._object = v107;
      v108._countAndFlagsBits = v103;
      v108._object = v105;
      v94 = v205;
      v109 = CKRecordZoneID.init(zoneName:ownerName:)(v108, v106).super.isa;
      v110._countAndFlagsBits = v99;
      v93 = v206;
      v110._object = v102;
      v75 = v100;
      v111 = CKRecordID.init(recordName:zoneID:)(v110, v109).super.isa;
      v112._countAndFlagsBits = 0x617461646174654DLL;
      v112._object = 0xE800000000000000;
      v63 = CKRecord.init(recordType:recordID:)(v112, v111).super.isa;
    }

    (*(v93 + 8))(v95, v94);
    v113 = v207;
    _DeviceActivityData.Metadata.recordSystemFields.setter();
    v114 = [v63 encryptedValues];
    sub_100049490(&qword_100091628, 255, &type metadata accessor for _DeviceActivityData.Metadata, &protocol conformance descriptor for _DeviceActivityData.Metadata);
    v115 = v113;
    sub_100049490(&qword_1000917D0, 255, &type metadata accessor for _DeviceActivityData.Metadata, &protocol conformance descriptor for _DeviceActivityData.Metadata);
    v116 = static DeviceActivityDataStore.encode<A>(_:)();
    v118 = v117;
    swift_getObjectType();
    v216 = &type metadata for Data;
    v217 = &protocol witness table for Data;
    v214 = v116;
    v215 = v118;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    (*(v206 + 8))(v115, v94);
    v119 = v213;
    v120 = v188;
    goto LABEL_37;
  }

  v63 = 0;
  v89 = v211;
  v75 = v212;
  swift_errorRetain();
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v76, v77))
  {
    goto LABEL_33;
  }

  v78 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v214 = v79;
  *v78 = 136446210;
  v218 = v74;
  swift_errorRetain();
  sub_100020818(&qword_100091370, &qword_10006D390);
  v80 = String.init<A>(describing:)();
  v81 = v75;
  v83 = sub_100033140(v80, v82, &v214);

  *(v78 + 4) = v83;
  v84 = "Failed to add metadata to record because it was likely already moved to the Cloud folder: %{public}s";
LABEL_32:
  _os_log_impl(&_mh_execute_header, v76, v77, v84, v78, 0xCu);
  sub_1000208BC(v79);

  (*(v81 + 8))(v213, v89);
  return 0;
}

void sub_10003A4CC(void *a1)
{
  v2 = sub_100020818(&qword_1000917A0, &qword_10006E018);
  __chkstk_darwin(v2 - 8);
  v58 = &v55 - v3;
  v4 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = &v55 - v5;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100020D2C(v6, qword_100092EB0);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v59 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v60 = v55;
    *v12 = 136446210;
    v13 = v8;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v7;
    v18 = v17;

    v19 = sub_100033140(v15, v18, &v60);
    v7 = v16;

    *(v12 + 4) = v19;
    v8 = v59;
    _os_log_impl(&_mh_execute_header, v9, v10, "Saved record: %{public}s", v12, 0xCu);
    sub_1000208BC(v55);
  }

  v20 = sub_100049C3C();
  v22 = v21;

  v23 = [v8 recordID];
  v24 = [v23 zoneID];
  v25 = [v24 zoneName];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (!v22)
  {
    goto LABEL_8;
  }

  v29 = v58;
  sub_100040590(v26, v28, v58);
  if ((*(v57 + 48))(v29, 1, v4) != 1)
  {
    v57 = v20;
    v55 = v7;

    v38 = v56;
    sub_100029830(v29, v56, &qword_1000917A8, &qword_10006E020);
    v39 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
    v40 = v59;
    [v59 encodeSystemFieldsWithCoder:v39];
    [v39 finishEncoding];
    v41 = [v39 encodedData];
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    sub_100040840(v40, v42, v44);
    sub_100020D78(v42, v44);
    v46 = CKRecord.recordType.getter();
    v47 = v45;
    if (v46 == 0x617461646174654DLL && v45 == 0xE800000000000000)
    {

      v48 = v38;
    }

    else
    {
      v48 = v38;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v46 == 0x7974697669746341 && v47 == 0xEF746E656D676553)
        {
        }

        else
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v49 & 1) == 0)
          {

            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              *v54 = 0;
              _os_log_impl(&_mh_execute_header, v52, v53, "Failed to move unknown record type", v54, 2u);
            }

            goto LABEL_23;
          }
        }

        v50 = *v48;
        v58 = v48[1];
        v59 = v50;
        v51 = [v23 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        DeviceActivityDataStore.moveLocalActivitySegmentToCloud(userAltDSID:deviceIdentifier:segmentInterval:recordName:)();

        goto LABEL_24;
      }
    }

    DeviceActivityDataStore.moveLocalMetadataToCloud(userAltDSID:deviceIdentifier:segmentInterval:)();

LABEL_23:

LABEL_24:
    sub_100028FF4(v48, &qword_1000917A8, &qword_10006E020);
    return;
  }

  sub_100028FF4(v29, &qword_1000917A0, &qword_10006E018);
LABEL_8:

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v32 = 136446466;
    v33 = sub_100033140(v26, v28, &v60);

    *(v32 + 4) = v33;
    *(v32 + 12) = 2082;
    if (v22)
    {
      v34 = v20;
    }

    else
    {
      v34 = 7104878;
    }

    if (v22)
    {
      v35 = v22;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    v36 = v23;
    v37 = sub_100033140(v34, v35, &v60);

    *(v32 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "Failed to move record for %{public}s and user: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10003ADE4(void *a1, uint64_t a2)
{
  v72 = a2;
  swift_errorRetain();
  sub_100020818(&qword_100091370, &qword_10006D390);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v4 = v71;
    v72 = v71;
    sub_100049490(&qword_100090E30, 255, type metadata accessor for CKError, &unk_10006CD9C);
    _BridgedStoredNSError.code.getter();
    if (v71 <= 13)
    {
      if (v71 == 9)
      {
        if (qword_100090D18 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_100020D2C(v42, qword_100092EB0);
        v31 = v71;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v70 = v35;
          *v34 = 136446210;
          v36 = v31;
          v43 = related decl 'e' for CKErrorCode.description.getter();
          v45 = v44;

          v46 = sub_100033140(v43, v45, &v70);

          *(v34 + 4) = v46;
          v41 = "The current user is not authenticated: %{public}s";
          goto LABEL_22;
        }

LABEL_23:

        return;
      }

      if (v71 == 11)
      {
        sub_100040840(a1, 0, 0xF000000000000000);
        CKSyncEngine.state.getter();
        sub_100020818(&qword_100091780, &qword_10006DFF0);
        v5 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
        v6 = *(v5 - 8);
        v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_10006D8A0;
        *(v8 + v7) = [a1 recordID];
        (*(v6 + 104))(v8 + v7, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v5);
        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v8);

LABEL_26:

        return;
      }

LABEL_14:
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100020D2C(v30, qword_100092EB0);
      v31 = v71;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v70 = v35;
        *v34 = 136446210;
        v36 = v31;
        v37 = related decl 'e' for CKErrorCode.description.getter();
        v39 = v38;

        v40 = sub_100033140(v37, v39, &v70);

        *(v34 + 4) = v40;
        v41 = "Failed to save record: %{public}s";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v32, v33, v41, v34, 0xCu);
        sub_1000208BC(v35);

        return;
      }

      goto LABEL_23;
    }

    if (v71 != 14)
    {
      if (v71 == 26)
      {
        v17 = [a1 recordID];
        v18 = [v17 zoneID];
        v19 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v18];

        CKSyncEngine.state.getter();
        sub_100020818(&qword_100091668, &qword_10006DF78);
        v20 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
        v21 = *(v20 - 8);
        v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_10006D8A0;
        *(v23 + v22) = v19;
        (*(v21 + 104))(v23 + v22, enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v20);
        v24 = v19;
        CKSyncEngine.State.add(pendingDatabaseChanges:)(v23);

        CKSyncEngine.state.getter();
        sub_100020818(&qword_100091780, &qword_10006DFF0);
        v25 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
        v26 = *(v25 - 8);
        v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_10006D8A0;
        *(v28 + v27) = v17;
        (*(v26 + 104))(v28 + v27, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v25);
        v29 = v17;
        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v28);

        goto LABEL_26;
      }

      goto LABEL_14;
    }

    v47 = related decl 'e' for CKErrorCode.serverRecord.getter();
    if (v47)
    {
      v48 = v47;
      v49 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
      [v48 encodeSystemFieldsWithCoder:v49];
      [v49 finishEncoding];
      v50 = [v49 encodedData];
      v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      sub_100040840(a1, v51, v53);
      sub_100020D78(v51, v53);
      CKSyncEngine.state.getter();
      sub_100020818(&qword_100091780, &qword_10006DFF0);
      v54 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v55 = *(v54 - 8);
      v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_10006D8A0;
      *(v57 + v56) = [a1 recordID];
      (*(v55 + 104))(v57 + v56, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v54);
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v57);

      goto LABEL_26;
    }

    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100020D2C(v58, qword_100092EB0);
    v59 = a1;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v70 = v63;
      *v62 = 136446210;
      v64 = v59;
      v65 = [v64 description];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = sub_100033140(v66, v68, &v70);

      *(v62 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v60, v61, "No server record when resolving conflict for record: %{public}s", v62, 0xCu);
      sub_1000208BC(v63);
    }
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100020D2C(v9, qword_100092EB0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v71 = a2;
      v72 = v13;
      *v12 = 136446210;
      swift_errorRetain();
      v14 = String.init<A>(describing:)();
      v16 = sub_100033140(v14, v15, &v72);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to save record with unknown error: %{public}s", v12, 0xCu);
      sub_1000208BC(v13);
    }

    else
    {
    }
  }
}

void sub_10003B8D8(id a1)
{
  v2 = sub_100020818(&qword_100091720, &qword_10006DFB0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v139 = &v127 - v6;
  v7 = type metadata accessor for URL();
  v137 = *(v7 - 8);
  v138 = v7;
  __chkstk_darwin(v7);
  v127 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for _DeviceActivityData.ActivitySegment();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v131 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviceActivityDataStore();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v129 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v133 = &v127 - v14;
  v141 = type metadata accessor for _DeviceActivityData.Metadata();
  v134 = *(v141 - 1);
  __chkstk_darwin(v141);
  v140 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100020818(&qword_1000917A0, &qword_10006E018);
  __chkstk_darwin(v16 - 8);
  v144 = &v127 - v17;
  v145 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v19 = &v127 - v18;
  v20 = [a1 recordID];
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100020D2C(v21, qword_100092EB0);
  v23 = v20;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v135 = v11;
  v136 = v10;
  v147 = a1;
  v130 = v5;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v148 = v142;
    *v27 = 136446210;
    v28 = v23;
    v29 = [v28 description];
    v30 = v22;
    v31 = v19;
    v32 = v23;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = v33;
    v23 = v32;
    v19 = v31;
    v22 = v30;
    a1 = v147;
    v37 = sub_100033140(v36, v35, &v148);

    *(v27 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v24, v25, "Fetched record: %{public}s", v27, 0xCu);
    sub_1000208BC(v142);
  }

  v38 = [a1 encryptedValues];
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 objectForKeyedSubscript:v39];
  swift_unknownObjectRelease();

  if (v40 && (v150 = v40, sub_100020818(&qword_100091800, &qword_10006E050), (swift_dynamicCast() & 1) != 0))
  {
    v41 = v149;
    v142 = v148;
  }

  else
  {
    v142 = 0;
    v41 = 0;
  }

  v42 = [v23 zoneID];
  v43 = [v42 zoneName];

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  if (!v41)
  {
    v48 = 0xE300000000000000;
    goto LABEL_13;
  }

  v47 = v144;
  sub_100040590(v44, v46, v144);
  if ((*(v143 + 48))(v47, 1, v145) != 1)
  {

    sub_100029830(v47, v19, &qword_1000917A8, &qword_10006E020);
    v56 = CKRecord.recordType.getter();
    v57 = v55;
    if (v56 == 0x617461646174654DLL && v55 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v58 = v147;
      v59 = [v147 encryptedValues];
      v60 = String._bridgeToObjectiveC()();
      v61 = [v59 objectForKeyedSubscript:v60];
      swift_unknownObjectRelease();

      if (v61)
      {
        v150 = v61;
        sub_100020818(&qword_100091800, &qword_10006E050);
        if (swift_dynamicCast())
        {
          v143 = v22;
          v144 = v19;
          v63 = v148;
          v62 = v149;
          sub_100049490(&qword_100091628, 255, &type metadata accessor for _DeviceActivityData.Metadata, &protocol conformance descriptor for _DeviceActivityData.Metadata);
          sub_100049490(&qword_1000917D0, 255, &type metadata accessor for _DeviceActivityData.Metadata, &protocol conformance descriptor for _DeviceActivityData.Metadata);
          static DeviceActivityDataStore.decode<A>(_:)();
          v138 = v63;
          v139 = v62;
          v92 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
          [v147 encodeSystemFieldsWithCoder:v92];
          [v92 finishEncoding];
          v93 = [v92 encodedData];
          static Data._unconditionallyBridgeFromObjectiveC(_:)();

          _DeviceActivityData.Metadata.recordSystemFields.setter();
          v95 = v135;
          v94 = v136;
          v96 = v133;
          (*(v135 + 16))(v133, v146 + *(*v146 + 184), v136);
          v99 = static DeviceActivityDataStore.encode<A>(_:)();
          v101 = v100;
          DeviceActivityDataStore.saveEncodedCloudMetadata(_:userAltDSID:deviceIdentifier:segmentInterval:)();

          sub_100020D78(v99, v101);
          sub_100020D78(v138, v139);

          (*(v95 + 8))(v96, v94);
          (*(v134 + 8))(v140, v141);
LABEL_46:
          v19 = v144;
          goto LABEL_47;
        }
      }

      v64 = v58;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v65, v66))
      {
LABEL_30:

LABEL_47:
        sub_100028FF4(v19, &qword_1000917A8, &qword_10006E020);
        return;
      }

      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v148 = v68;
      *v67 = 136446210;
      v69 = v64;
      v70 = [v69 description];
      v71 = v19;
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = v72;
      v19 = v71;
      v76 = sub_100033140(v75, v74, &v148);

      *(v67 + 4) = v76;
      v77 = "Failed to extract metadata from record: %{public}s";
      goto LABEL_28;
    }

    v78 = v147;
    if (v56 == 0x7974697669746341 && v57 == 0xEF746E656D676553)
    {
    }

    else
    {
      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v79 & 1) == 0)
      {

        v65 = Logger.logObject.getter();
        v97 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v65, v97))
        {
          goto LABEL_30;
        }

        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v65, v97, "Failed to download unknown record type", v98, 2u);
        goto LABEL_29;
      }
    }

    v80 = [v78 encryptedValues];
    v81 = String._bridgeToObjectiveC()();
    v82 = [v80 objectForKeyedSubscript:v81];
    swift_unknownObjectRelease();

    v83 = v139;
    if (v82)
    {
      v150 = v82;
      sub_100020818(&qword_100091800, &qword_10006E050);
      if (swift_dynamicCast())
      {
        v85 = v148;
        v84 = v149;
LABEL_38:
        v86 = sub_100049490(&qword_100090D68, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment, &protocol conformance descriptor for _DeviceActivityData.ActivitySegment);
        sub_100049490(&qword_100090D70, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment, &protocol conformance descriptor for _DeviceActivityData.ActivitySegment);
        v144 = v86;
        static DeviceActivityDataStore.decode<A>(_:)();
        v139 = v85;
        v140 = v84;
        v143 = v22;
        v141 = v23;
        v102 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
        [v147 encodeSystemFieldsWithCoder:v102];
        [v102 finishEncoding];
        v103 = [v102 encodedData];
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        _DeviceActivityData.ActivitySegment.recordSystemFields.setter();
        v104 = v135;
        (*(v135 + 16))(v129, v146 + *(*v146 + 184), v136);
        v117 = static DeviceActivityDataStore.encode<A>(_:)();
        v119 = v118;
        v120 = *(v19 + 1);
        v146 = *v19;
        v138 = v120;
        v121 = [v147 recordID];
        v122 = [v121 recordName];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v123 = v129;
        v144 = v19;
        DeviceActivityDataStore.saveEncodedCloudSegment(_:userAltDSID:deviceIdentifier:segmentInterval:recordName:)();
        v124 = (v128 + 8);

        sub_100020D78(v139, v140);

        sub_100020D78(v117, v119);

        (*(v104 + 8))(v123, v136);
        (*v124)(v131, v132);
        goto LABEL_46;
      }
    }

    if (CKRecord.subscript.getter())
    {
      objc_opt_self();
      v87 = swift_dynamicCastObjCClass();
      if (v87)
      {
        v88 = [v87 fileURL];
        swift_unknownObjectRelease();
        if (v88)
        {
          v89 = v130;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v90 = 0;
          v91 = v138;
        }

        else
        {
          v90 = 1;
          v91 = v138;
          v89 = v130;
        }

        v105 = v137;
        (*(v137 + 56))(v89, v90, 1, v91);
        sub_100029830(v89, v83, &qword_100091720, &qword_10006DFB0);
        if ((*(v105 + 48))(v83, 1, v91) != 1)
        {
          v115 = v127;
          (*(v105 + 32))(v127, v83, v91);
          v116 = Data.init(contentsOf:options:)();
          v126 = v125;
          v85 = v116;
          (*(v105 + 8))(v115, v91);
          v84 = v126;
          goto LABEL_38;
        }

LABEL_53:
        sub_100028FF4(v83, &qword_100091720, &qword_10006DFB0);
        v106 = v78;
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v65, v66))
        {
          goto LABEL_30;
        }

        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v148 = v68;
        *v67 = 136446210;
        v107 = v106;
        v108 = [v107 description];
        v109 = v19;
        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;

        v113 = v110;
        v19 = v109;
        v114 = sub_100033140(v113, v112, &v148);

        *(v67 + 4) = v114;
        v77 = "Failed to extract encoded activity segment from record: %{public}s";
LABEL_28:
        _os_log_impl(&_mh_execute_header, v65, v66, v77, v67, 0xCu);
        sub_1000208BC(v68);

LABEL_29:

        goto LABEL_30;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v137 + 56))(v83, 1, 1, v138);
    goto LABEL_53;
  }

  sub_100028FF4(v47, &qword_1000917A0, &qword_10006E018);
  v48 = v41;
LABEL_13:

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    *v51 = 136446466;
    v52 = sub_100033140(v44, v46, &v148);

    *(v51 + 4) = v52;
    *(v51 + 12) = 2082;
    if (v41)
    {
      v53 = v142;
    }

    else
    {
      v53 = 7104878;
    }

    v54 = sub_100033140(v53, v48, &v148);

    *(v51 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v49, v50, "Failed to download record for %{public}s and user: %{public}s", v51, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10003CFAC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v10 = [a1 zoneID];
  v11 = [v10 zoneName];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100020D2C(v15, qword_100092EB0);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446210;

    v20 = sub_100033140(v12, v14, aBlock);

    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "Zone was saved: %{public}s", v18, 0xCu);
    sub_1000208BC(v19);
  }

  v21 = v2[10];
  v22 = v2[11];
  sub_100020908(v2 + 7, v21);
  v44 = &type metadata for Bool;
  LOBYTE(aBlock[0]) = 1;
  (*(v22 + 40))(aBlock, v12, v14, v21, v22);
  sub_100028FF4(aBlock, &qword_100091360, &unk_10006D960);
  v23 = dispatch_group_create();
  dispatch_group_enter(v23);
  v24 = [v35 zoneID];
  sub_100041DEC(v24, v23);

  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v25 = v34;
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v34);
  v26 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v9, v25);
  v27 = swift_allocObject();
  *(v27 + 16) = v12;
  *(v27 + 24) = v14;
  v45 = sub_10004C1B4;
  v46 = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  v44 = &unk_1000874B8;
  v28 = _Block_copy(aBlock);
  v29 = v36;
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
  v30 = v38;
  v31 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v28);

  (*(v40 + 8))(v30, v31);
  (*(v37 + 8))(v29, v39);
}

void sub_10003D574(void *a1)
{
  v2 = v1;
  v55 = type metadata accessor for _SegmentInterval();
  v49 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100020818(&qword_1000917A0, &qword_10006E018);
  __chkstk_darwin(v5 - 8);
  v7 = v47 - v6;
  v53 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v8 = *(v53 - 8);
  v9 = __chkstk_darwin(v53);
  v11 = (v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v54 = v47 - v12;
  v50 = a1;
  v13 = [a1 zoneName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100020D2C(v17, qword_100092EB0);

  v52 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v14;
    v22 = swift_slowAlloc();
    v23 = v2;
    v24 = swift_slowAlloc();
    *&v56[0] = v24;
    *v22 = 136446210;
    *(v22 + 4) = sub_100033140(v21, v16, v56);
    _os_log_impl(&_mh_execute_header, v19, v20, "Zone was deleted: %{public}s", v22, 0xCu);
    sub_1000208BC(v24);
    v2 = v23;

    v14 = v21;
  }

  v25 = v53;
  sub_100040590(v14, v16, v7);
  if ((*(v8 + 48))(v7, 1, v25) == 1)
  {
    sub_100028FF4(v7, &qword_1000917A0, &qword_10006E018);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v56[0] = v29;
      *v28 = 136446210;
      v30 = sub_100033140(v14, v16, v56);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to get zone components from %{public}s", v28, 0xCu);
      sub_1000208BC(v29);
    }

    else
    {
    }
  }

  else
  {
    v47[1] = v14;
    v31 = v54;
    sub_100029830(v7, v54, &qword_1000917A8, &qword_10006E020);
    sub_1000297C4(v31, v11, &qword_1000917A8, &qword_10006E020);
    v32 = v2;
    v33 = *v11;
    v34 = v49;
    v35 = *(v49 + 8);
    v36 = v11 + *(v25 + 48);
    v37 = v55;
    v53 = v49 + 8;
    v47[2] = v33;
    v48 = v35;
    v35(v36, v55);
    sub_1000297C4(v31, v11, &qword_1000917A8, &qword_10006E020);

    v38 = v11 + *(v25 + 48);
    v39 = v51;
    (*(v34 + 32))(v51, v38, v37);
    v40 = v32;
    DeviceActivityDataStore.deleteRemoteData(deviceIdentifier:segmentInterval:)();

    v41 = v32[10];
    v42 = v40[11];
    sub_100020908(v40 + 7, v40[10]);
    memset(v56, 0, 32);
    v43 = [v50 zoneName];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    (*(v42 + 40))(v56, v44, v46, v41, v42);

    sub_100028FF4(v56, &qword_100091360, &unk_10006D960);
    v48(v39, v55);
    sub_100028FF4(v54, &qword_1000917A8, &qword_10006E020);
  }
}

void sub_10003DCEC(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100020D2C(v6, qword_100092EB0);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v36 = v3;
    v11 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v11 = 136446466;
    v12 = v8;
    sub_100020818(&qword_100091810, &qword_10006E058);
    v13 = String.init<A>(describing:)();
    v15 = sub_100033140(v13, v14, v37);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = v7;
    v17 = String.init<A>(describing:)();
    v19 = sub_100033140(v17, v18, v37);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Account changed from %{public}s to %{public}s", v11, 0x16u);
    swift_arrayDestroy();

    v3 = v36;
  }

  if (a2)
  {
    if (!a1)
    {
      goto LABEL_16;
    }

    sub_100021848(0, &qword_100091770, CKRecordID_ptr);
    v20 = v8;
    v21 = v7;
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {
      goto LABEL_16;
    }
  }

  else if (!a1)
  {
    goto LABEL_16;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Deleting all data due to sign-out or account change", v25, 2u);
  }

  DeviceActivityDataStore.deleteAllData()();
  if (v26)
  {
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v29 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v31 = String.init<A>(describing:)();
      v33 = sub_100033140(v31, v32, v37);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to delete all data: %{public}s", v29, 0xCu);
      sub_1000208BC(v30);
    }

    else
    {
    }
  }

LABEL_16:
  v34 = (v3 + *(*v3 + 240));
  *v34 = 0;
  v34[1] = 0;

  sub_10003EE80(v35);
}

id sub_10003E148()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003E1A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100029CC0;

  return sub_10004A7D8(a1, a2);
}

uint64_t sub_10003E25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002C9DC;

  return sub_100038308(a1, a2, a3);
}

uint64_t sub_10003E30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10002C9DC;

  return CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10003E3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10003E4A8;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10003E4A8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10003E5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10003E4A8;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10003E674@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a5;
  v40 = a1;
  v41 = a4;
  v9 = type metadata accessor for DeviceActivityDataStore.SyncStateType();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = __chkstk_darwin(v9);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = &v30 - v12;
  v38 = sub_100020818(&qword_100091678, &qword_10006DF88);
  v13 = __chkstk_darwin(v38);
  v34 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for CKSyncEngine.State.Serialization();
  v18 = *(*(v17 - 8) + 56);
  v18(a6, 1, 1, v17);
  v19 = a2[3];
  v20 = a2[4];
  v31 = a2;
  sub_100020908(a2, v19);
  v21 = *(v20 + 16);
  v32 = a3;
  v22 = v21(a3, v41, v19, v20);
  if (v23 >> 60 == 15)
  {
    sub_1000494D8(&qword_1000916C8, &qword_1000916D0, &protocol conformance descriptor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for <A> A?);
    sub_1000494D8(&qword_1000916D8, &qword_1000916E0, &protocol conformance descriptor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for <A> A?);
    v24 = v34;
    DeviceActivityDataStore.syncState<A>(_:)();
    sub_100028FF4(a6, &qword_100091678, &qword_10006DF88);
    return sub_100029830(v24, a6, &qword_100091678, &qword_10006DF88);
  }

  else
  {
    v26 = v22;
    v27 = v23;
    sub_100020CD8(v22, v23);
    CKSyncEngine.State.Serialization.init(deprecatedData:)();
    sub_100028FF4(a6, &qword_100091678, &qword_10006DF88);
    v18(v16, 0, 1, v17);
    sub_100029830(v16, a6, &qword_100091678, &qword_10006DF88);
    sub_1000494D8(&qword_1000916C8, &qword_1000916D0, &protocol conformance descriptor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for <A> A?);
    sub_1000494D8(&qword_1000916D8, &qword_1000916E0, &protocol conformance descriptor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for <A> A?);
    DeviceActivityDataStore.write<A>(_:type:)();
    v28 = v31[3];
    v29 = v31[4];
    sub_100020908(v31, v28);
    memset(v42, 0, sizeof(v42));
    (*(v29 + 40))(v42, v32, v41, v28, v29);
    sub_100020D64(v26, v27);
    return sub_100028FF4(v42, &qword_100091360, &unk_10006D960);
  }
}

uint64_t sub_10003ECF4(uint64_t result)
{
  v1 = *(*result + 208);
  if (!*(result + v1))
  {
    v2 = result;
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100020D2C(v3, qword_100092EB0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Taking a transaction in order to upload local data.", v6, 2u);
    }

    *(v2 + v1) = os_transaction_create();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003EE80(uint64_t a1)
{
  v2 = v1;
  CKSyncEngine.state.getter();
  v3 = *(CKSyncEngine.State.pendingRecordZoneChanges.getter() + 16);

  if (v3)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100020D2C(v4, qword_100092EB0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "There are still more changes to upload. Keeping sync transaction alive.", v6, 2u);
    }
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100020D2C(v7, qword_100092EB0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "There are no more changes to upload. Releasing sync transaction.", v10, 2u);
    }

    v11 = *(v2 + *(*v2 + 216));
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100049C1C;
    *(v12 + 24) = v2;
    aBlock[4] = sub_10004EB9C;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003EE58;
    aBlock[3] = &unk_100087468;
    v13 = _Block_copy(aBlock);

    dispatch_sync(v11, v13);
    _Block_release(v13);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void *sub_10003F194(uint64_t a1)
{
  v3 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v49 = v6;
    v39 = v1;
    v53 = _swiftEmptyArrayStorage;
    sub_100046A4C(0, v7, 0);
    v52 = v53;
    v9 = a1 + 56;
    v10 = _HashTable.startBucket.getter();
    result = sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
    v47 = result;
    v11 = 0;
    v46 = CKCurrentUserDefaultName;
    v45 = (v4 + 104);
    v44 = enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:);
    v42 = a1 + 56;
    v43 = v4 + 32;
    v40 = a1 + 64;
    v41 = v7;
    v48 = v4;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v15 = *(a1 + 36);
      v50 = v11;
      v51 = v15;
      v16 = (*(a1 + 48) + 16 * v10);
      v17 = a1;
      v18 = *v16;
      v19 = v16[1];
      v20 = v3;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
      swift_bridgeObjectRetain_n();
      v24._countAndFlagsBits = v18;
      v24._object = v19;
      v25._countAndFlagsBits = v21;
      v3 = v20;
      v25._object = v23;
      v26.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v24, v25).super.isa;
      v27 = v49;
      v49->super.isa = v26.super.isa;
      (*v45)(v27, v44, v20);

      v28 = v52;
      v53 = v52;
      v30 = v52[2];
      v29 = v52[3];
      if (v30 >= v29 >> 1)
      {
        sub_100046A4C((v29 > 1), v30 + 1, 1);
        v27 = v49;
        v28 = v53;
      }

      v28[2] = v30 + 1;
      v31 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v52 = v28;
      result = (*(v48 + 32))(v28 + v31 + *(v48 + 72) * v30, v27, v20);
      v12 = 1 << *(v17 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      a1 = v17;
      v9 = v42;
      v32 = *(v42 + 8 * v14);
      if ((v32 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v51 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v33 = v32 & (-2 << (v10 & 0x3F));
      if (v33)
      {
        v12 = __clz(__rbit64(v33)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v41;
      }

      else
      {
        v34 = v14 << 6;
        v35 = v14 + 1;
        v13 = v41;
        v36 = (v40 + 8 * v14);
        while (v35 < (v12 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_100047C6C(v10, v51, 0);
            v12 = __clz(__rbit64(v37)) + v34;
            goto LABEL_4;
          }
        }

        result = sub_100047C6C(v10, v51, 0);
      }

LABEL_4:
      v11 = v50 + 1;
      v10 = v12;
      if (v50 + 1 == v13)
      {
        return v52;
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
  }

  return result;
}

void *sub_10003F534(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v21 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v21 + 56;
    result = _HashTable.startBucket.getter();
    v5 = v21;
    v6 = result;
    v7 = 0;
    v8 = *(v21 + 36);
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = v4;
      v12 = objc_allocWithZone(CKUserIdentityLookupInfo);

      v13 = String._bridgeToObjectiveC()();
      [v12 initWithEmailAddress:v13];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v5 = v21;
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v14 = *(v11 + 8 * v10);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v4 = v11;
      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v10 << 6;
        v17 = v10 + 1;
        v18 = (v21 + 64 + 8 * v10);
        while (v17 < (v9 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_100047C6C(v6, v8, 0);
            v5 = v21;
            v9 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        result = sub_100047C6C(v6, v8, 0);
        v5 = v21;
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10003F7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  v6[5] = Changes;
  v6[6] = *(Changes - 8);
  v6[7] = swift_task_alloc();
  ChangesOptions = type metadata accessor for CKSyncEngine.FetchChangesOptions();
  v6[8] = ChangesOptions;
  v6[9] = *(ChangesOptions - 8);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_10003F8D0, 0, 0);
}

uint64_t sub_10003F8D0()
{
  (*(v0[6] + 104))(v0[7], enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v0[5]);
  CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_10003F9C8;
  v2 = v0[10];

  return CKSyncEngine.fetchChanges(_:)(v2);
}

uint64_t sub_10003F9C8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10003FCA4;
  }

  else
  {
    v2 = sub_10003FADC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003FADC()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_10003FB90;
  v2 = *(v0 + 80);

  return CKSyncEngine.fetchChanges(_:)(v2);
}

uint64_t sub_10003FB90()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10003FE00;
  }

  else
  {
    v2 = sub_10003FD5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003FCA4()
{
  v1 = v0[12];
  v2 = v0[3];
  (*(v0[9] + 8))(v0[10], v0[8]);
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10003FD5C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  (*(v0 + 24))(0);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10003FE00()
{
  v1 = v0[14];
  v2 = v0[3];
  (*(v0[9] + 8))(v0[10], v0[8]);
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10003FEB8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v67 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = dispatch_group_create();
  v13 = v3[7];
  v14 = v3[8];
  v66 = v3;
  sub_100020908(v3 + 4, v13);
  v15 = (*(v14 + 8))(v13, v14);
  v62 = v5;
  v63 = v4;
  v60 = v7;
  v61 = v8;
  v58 = v11;
  v59 = v9;
  if (v15)
  {
    v16 = *(v15 + 16);

    if (v16)
    {
      v17 = v67;
      if (v67 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v17 = v67;
        if (result)
        {
LABEL_5:
          v19 = result - 1;
          if (result >= 1)
          {
            v20 = 0;
            v21 = v17 & 0xC000000000000001;
            if ((v17 & 0xC000000000000001) == 0)
            {
              goto LABEL_8;
            }

LABEL_7:
            for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v17 + 8 * v20 + 32))
            {
              v23 = i;
              dispatch_group_enter(v12);
              v24 = v66[7];
              v25 = v66[8];
              sub_100020908(v66 + 4, v24);
              v26 = (*(v25 + 8))(v24, v25);
              if (v26)
              {
                if (*(v26 + 16))
                {
                  v27 = v26;
                  v28 = [objc_allocWithZone(CKShare) initWithRecordZoneID:v23];
                  sub_1000432B8(v27, v28, v12);

                  goto LABEL_18;
                }
              }

              if (qword_100090D18 != -1)
              {
                swift_once();
              }

              v29 = type metadata accessor for Logger();
              sub_100020D2C(v29, qword_100092EB0);
              v30 = Logger.logObject.getter();
              v31 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v30, v31))
              {
                v32 = swift_slowAlloc();
                *v32 = 0;
                _os_log_impl(&_mh_execute_header, v30, v31, "No Apple IDs to share with", v32, 2u);
              }

              dispatch_group_leave(v12);
LABEL_18:
              v17 = v67;
              if (v19 == v20)
              {
                goto LABEL_32;
              }

              ++v20;
              if (v21)
              {
                goto LABEL_7;
              }

LABEL_8:
              ;
            }
          }

          goto LABEL_34;
        }
      }

      else
      {
        result = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_5;
        }
      }

LABEL_32:
      v49 = swift_allocObject();
      v51 = v56;
      v50 = v57;
      *(v49 + 16) = v56;
      *(v49 + 24) = v50;
      v73 = sub_10004EB14;
      v74 = v49;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v71 = sub_10004EB74;
      v72 = &unk_100087850;
      v52 = _Block_copy(&aBlock);
      sub_100029DB4(v51, v50);
      v53 = v58;
      static DispatchQoS.unspecified.getter();
      v68 = _swiftEmptyArrayStorage;
      sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100020818(&qword_100091700, qword_10006E1F0);
      sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
      v54 = v60;
      v55 = v63;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v52);

      (*(v62 + 8))(v54, v55);
      (*(v59 + 8))(v53, v61);
    }
  }

  if (v67 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (!v33)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v33 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_32;
    }
  }

  result = sub_100021848(0, &qword_100091770, CKRecordID_ptr);
  if (v33 >= 1)
  {
    v34 = 0;
    v35 = v67;
    v64 = v66[3];
    v65 = CKRecordNameZoneWideShare;
    v36 = v67 & 0xC000000000000001;
    do
    {
      if (v36)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v35 + 8 * v34 + 32);
      }

      v38 = v37;
      ++v34;
      dispatch_group_enter(v12);
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
      v42 = v38;
      v43._countAndFlagsBits = v39;
      v43._object = v41;
      isa = CKRecordID.init(recordName:zoneID:)(v43, v42).super.isa;
      v45 = swift_allocObject();
      *(v45 + 16) = v42;
      *(v45 + 24) = v12;
      v73 = sub_10004EACC;
      v74 = v45;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v71 = sub_10004EBCC;
      v72 = &unk_100087800;
      v46 = _Block_copy(&aBlock);
      v47 = v42;
      v48 = v12;

      [v64 deleteRecordWithID:isa completionHandler:v46];

      _Block_release(v46);

      v35 = v67;
    }

    while (v33 != v34);
    goto LABEL_32;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100040590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100020818(&qword_1000917E0, &qword_10006E038);
  __chkstk_darwin(v6 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for _SegmentInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[2] = a1;
  v21[3] = a2;
  v21[0] = 95;
  v21[1] = 0xE100000000000000;
  sub_10004A0A8();
  v13 = StringProtocol.components<A>(separatedBy:)();
  if (!v13[2])
  {

    goto LABEL_5;
  }

  v14 = v13[4];
  v15 = v13[5];

  _SegmentInterval.init(unlocalizedSegmentName:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_100028FF4(v8, &qword_1000917E0, &qword_10006E038);
LABEL_5:
    v16 = sub_100020818(&qword_1000917A8, &qword_10006E020);
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  v18 = *(v10 + 32);
  v18(v12, v8, v9);
  v19 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v20 = *(v19 + 48);
  *a3 = v14;
  *(a3 + 1) = v15;
  v18(&a3[v20], v12, v9);
  return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
}

void sub_100040840(void *a1, uint64_t a2, unint64_t a3)
{
  v136 = a2;
  v137 = a3;
  v4 = sub_100020818(&qword_100091790, &qword_10006DC10);
  __chkstk_darwin(v4 - 8);
  v127 = v123 - v5;
  v129 = type metadata accessor for _DeviceActivityData.ActivitySegment();
  v131 = *(v129 - 8);
  v6 = __chkstk_darwin(v129);
  v125 = v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v133 = v123 - v8;
  v128 = type metadata accessor for DeviceActivityDataStore();
  v138 = *(v128 - 8);
  v9 = __chkstk_darwin(v128);
  v124 = v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v126 = v123 - v11;
  v12 = sub_100020818(&qword_100091798, &qword_10006E010);
  __chkstk_darwin(v12 - 8);
  v132 = v123 - v13;
  v14 = type metadata accessor for _DeviceActivityData.Metadata();
  v15 = *(v14 - 8);
  v134 = v14;
  v135 = v15;
  v16 = __chkstk_darwin(v14);
  v130 = v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v139 = v123 - v18;
  v19 = type metadata accessor for _SegmentInterval();
  v143 = *(v19 - 8);
  v144 = v19;
  __chkstk_darwin(v19);
  v142 = v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100020818(&qword_1000917A0, &qword_10006E018);
  __chkstk_darwin(v21 - 8);
  v23 = v123 - v22;
  v24 = sub_100020818(&qword_1000917A8, &qword_10006E020);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = v123 - v29;
  v140 = a1;
  v31 = [a1 recordID];
  v32 = [v31 zoneID];
  v33 = [v32 zoneName];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = v145;
  sub_100040590(v34, v36, v23);

  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    sub_100029830(v23, v30, &qword_1000917A8, &qword_10006E020);
    v50 = sub_100049C3C();
    v141 = v30;
    if (!v51)
    {
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_100020D2C(v62, qword_100092EB0);
      v63 = v31;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v147[0] = v67;
        *v66 = 136446210;
        v68 = v63;
        v69 = [v68 description];
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v71;

        v73 = sub_100033140(v70, v72, v147);

        *(v66 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v64, v65, "Failed to update local object for %{public}s because the user has Alt DSID", v66, 0xCu);
        sub_1000208BC(v67);
      }

      else
      {
      }

      goto LABEL_27;
    }

    v52 = v50;
    v53 = v51;
    sub_1000297C4(v141, v28, &qword_1000917A8, &qword_10006E020);

    v55 = v142;
    v54 = v143;
    v56 = v144;
    (*(v143 + 32))(v142, &v28[*(v24 + 48)], v144);
    v57 = v53;
    v58 = *(*v37 + 184);
    v60 = DeviceActivityDataStore.localDeviceIdentifier()();
    if (v59)
    {

      v61 = v31;
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      sub_100020D2C(v81, qword_100092EB0);
      swift_errorRetain();
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = v59;
        v86 = v54;
        v87 = swift_slowAlloc();
        v147[0] = v87;
        *v84 = 136446210;
        v146 = v85;
        swift_errorRetain();
        sub_100020818(&qword_100091370, &qword_10006D390);
        v88 = String.init<A>(describing:)();
        v90 = sub_100033140(v88, v89, v147);

        *(v84 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v82, v83, "Failed to update local object: %{public}s", v84, 0xCu);
        sub_1000208BC(v87);

        (*(v86 + 8))(v55, v144);
        goto LABEL_27;
      }

LABEL_26:
      (*(v54 + 8))(v55, v56);
      goto LABEL_27;
    }

    v123[0] = v60._countAndFlagsBits;
    v123[1] = v52;
    v123[2] = v60._object;
    v123[3] = v57;
    v74 = v37;
    v76 = CKRecord.recordType.getter();
    v77 = v75;
    if (v76 == 0x617461646174654DLL && v75 == 0xE800000000000000)
    {

      v78 = v31;
    }

    else
    {
      v79 = v31;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v54 = v143;
        if (v76 == 0x7974697669746341 && v77 == 0xEF746E656D676553)
        {
        }

        else
        {
          v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v91 & 1) == 0)
          {

            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v94 = type metadata accessor for Logger();
            sub_100020D2C(v94, qword_100092EB0);
            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              *v97 = 0;
              _os_log_impl(&_mh_execute_header, v95, v96, "Failed to update object with unknown record type", v97, 2u);
            }

            goto LABEL_26;
          }
        }

        v92 = [v31 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        DeviceActivityDataStore.fetchLocalSegment(segmentInterval:recordName:)();

        sub_100020CC4(v136, v137);
        _DeviceActivityData.ActivitySegment.recordSystemFields.setter();
        DeviceActivityDataStore.saveLocalSegment(_:segmentInterval:)();
        v103 = [v31 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        DeviceActivityDataStore.fetchCloudSegment(userAltDSID:deviceIdentifier:segmentInterval:recordName:)();
        v104 = v131;

        v108 = v127;
        v109 = v129;
        (*(v104 + 56))(v127, 0, 1, v129);
        (*(v104 + 32))(v125, v108, v109);
        sub_100020CC4(v136, v137);
        _DeviceActivityData.ActivitySegment.recordSystemFields.setter();
        v110 = v138;
        v111 = v145 + v58;
        v112 = v109;
        v113 = v124;
        (*(v138 + 16))(v124, v111, v128);
        sub_100049490(&qword_100090D68, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment, &protocol conformance descriptor for _DeviceActivityData.ActivitySegment);
        sub_100049490(&qword_100090D70, 255, &type metadata accessor for _DeviceActivityData.ActivitySegment, &protocol conformance descriptor for _DeviceActivityData.ActivitySegment);
        v114 = static DeviceActivityDataStore.encode<A>(_:)();
        v118 = v117;
        v119 = v114;
        v120 = [v79 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v140 = v119;
        v145 = v118;
        DeviceActivityDataStore.saveEncodedCloudSegment(_:userAltDSID:deviceIdentifier:segmentInterval:recordName:)();
        v121 = (v131 + 8);

        sub_100020D78(v140, v145);

        (*(v110 + 8))(v113, v128);
        v122 = *v121;
        (*v121)(v125, v112);
        v122(v133, v112);
        (*(v143 + 8))(v142, v144);
        goto LABEL_27;
      }

      v78 = v31;
    }

    DeviceActivityDataStore.fetchLocalMetadata(segmentInterval:)();
    v80 = v138;
    sub_100020CC4(v136, v137);
    _DeviceActivityData.Metadata.recordSystemFields.setter();
    DeviceActivityDataStore.saveLocalMetadata(_:)();
    DeviceActivityDataStore.fetchCloudMetadata(userAltDSID:deviceIdentifier:segmentInterval:)();
    v93 = v78;
    v99 = v134;
    v98 = v135;
    v100 = v132;
    (*(v135 + 56))(v132, 0, 1, v134);
    (*(v98 + 32))(v130, v100, v99);
    sub_100020CC4(v136, v137);
    _DeviceActivityData.Metadata.recordSystemFields.setter();
    v101 = v126;
    v102 = v128;
    (*(v80 + 16))(v126, v74 + v58, v128);
    sub_100049490(&qword_100091628, 255, &type metadata accessor for _DeviceActivityData.Metadata, &protocol conformance descriptor for _DeviceActivityData.Metadata);
    sub_100049490(&qword_1000917D0, 255, &type metadata accessor for _DeviceActivityData.Metadata, &protocol conformance descriptor for _DeviceActivityData.Metadata);
    v105 = static DeviceActivityDataStore.encode<A>(_:)();
    v145 = v106;
    DeviceActivityDataStore.saveEncodedCloudMetadata(_:userAltDSID:deviceIdentifier:segmentInterval:)();
    v107 = (v135 + 8);

    sub_100020D78(v105, v145);

    (*(v80 + 8))(v101, v102);
    v115 = *v107;
    v116 = v134;
    (*v107)(v130, v134);
    v115(v139, v116);
    (*(v143 + 8))(v55, v144);
LABEL_27:
    sub_100028FF4(v141, &qword_1000917A8, &qword_10006E020);
    return;
  }

  sub_100028FF4(v23, &qword_1000917A0, &qword_10006E018);
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100020D2C(v38, qword_100092EB0);
  v39 = v31;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v147[0] = v43;
    *v42 = 136446210;
    v44 = v39;
    v45 = [v44 description];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = sub_100033140(v46, v48, v147);

    *(v42 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "Failed to update local object for %{public}s", v42, 0xCu);
    sub_1000208BC(v43);
  }

  else
  {
  }
}

void sub_100041DEC(uint64_t a1, NSObject *a2)
{
  v5 = v2[7];
  v6 = v2[8];
  sub_100020908(v2 + 4, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (v7)
  {
    if (*(v7 + 16))
    {
      v8 = v7;
      v9 = [objc_allocWithZone(CKShare) initWithRecordZoneID:a1];
      sub_1000432B8(v8, v9, a2);

      return;
    }
  }

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100020D2C(v10, qword_100092EB0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "No Apple IDs to share with", v13, 2u);
  }

  dispatch_group_leave(a2);
}

void sub_100041F94(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1[3];
  v5 = a1[4];
  sub_100020908(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = v6;
  if ((v6 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100021848(0, &qword_100091710, IDSReceivedInvitation_ptr);
    sub_1000358D0();
    Set.Iterator.init(_cocoa:)();
    v7 = v40[1];
    v8 = v40[2];
    v9 = v40[3];
    v10 = v40[4];
    v11 = v40[5];
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
  }

  v15 = (v9 + 64) >> 6;
  v35 = v7;
  v36 = v3;
  v34 = v8;
  v38 = v15;
  while (v7 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100021848(0, &qword_100091710, IDSReceivedInvitation_ptr), swift_dynamicCast(), v20 = v40[0], v18 = v10, v19 = v11, !v40[0]))
    {
LABEL_22:
      sub_100034580(v7);
      return;
    }

LABEL_18:
    v39 = v19;
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100020D2C(v21, qword_100092EB0);
    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40[0] = v37;
      *v25 = 136446210;
      v26 = v22;
      v27 = [v26 description];
      v28 = a2;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v3 = v36;
      v32 = v29;
      a2 = v28;
      v33 = sub_100033140(v32, v31, v40);
      v7 = v35;

      *(v25 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "Handling pending invitation: %{public}s", v25, 0xCu);
      sub_1000208BC(v37);

      v8 = v34;
    }

    v15 = v38;
    sub_100042328(v3, v22);

    v10 = v18;
    v11 = v39;
  }

  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (v11)
  {
LABEL_14:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_22;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100042328(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v105 = *(v9 - 8);
  __chkstk_darwin(v9);
  v104 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100020818(&qword_100091720, &qword_10006DFB0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v90 - v15;
  v17 = type metadata accessor for URL();
  v107 = *(v17 - 8);
  v108 = v17;
  __chkstk_darwin(v17);
  v106 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 context];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v99 = v8;
    v100 = v9;
    v101 = v6;
    v102 = v5;
    v21 = [v19 schemaIdentifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == 0xD000000000000030 && 0x8000000100070180 == v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v103 = v3;

      v25 = [v20 dictionary];
      v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v26 + 16))
      {
        v27 = sub_100033790(0x6974617469766E69, 0xEE00617461446E6FLL);
        if (v28)
        {
          sub_100020860(*(v26 + 56) + 32 * v27, &aBlock);

          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_27:
            v48 = v103;
            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v49 = type metadata accessor for Logger();
            sub_100020D2C(v49, qword_100092EB0);
            v50 = Logger.logObject.getter();
            v51 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              *v52 = 0;
              _os_log_impl(&_mh_execute_header, v50, v51, "Failed to extract share metadata from invitation. Declining the invitation.", v52, 2u);
            }

            v53 = v48[12];
            v54 = v48[13];
            sub_100020908(v48 + 9, v53);
            (*(v54 + 48))(a2, sub_100059710, 0, v53, v54);
            return swift_unknownObjectRelease();
          }

          v97 = v109;
          v98 = v110;
          v29 = [v20 dictionary];
          v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v30 + 16))
          {
            v31 = sub_100033790(0xD000000000000018, 0x8000000100070200);
            if (v32)
            {
              sub_100020860(*(v30 + 56) + 32 * v31, &aBlock);

              if ((swift_dynamicCast() & 1) == 0)
              {
                sub_100020D78(v97, v98);
                goto LABEL_27;
              }

              URL.init(string:)();

              v33 = v107;
              v34 = v108;
              v35 = *(v107 + 48);
              if (v35(v16, 1, v108) == 1)
              {
                sub_100020D78(v97, v98);
                sub_100028FF4(v16, &qword_100091720, &qword_10006DFB0);
                goto LABEL_27;
              }

              v63 = v106;
              (*(v33 + 32))(v106, v16, v34);
              v64 = *(v33 + 16);
              v96 = (v33 + 16);
              v95 = v64;
              v64(v14, v63, v34);
              (*(v33 + 56))(v14, 0, 1, v34);
              sub_100020CD8(v97, v98);
              v65.super.isa = Data._bridgeToObjectiveC()().super.isa;
              if (v35(v14, 1, v34) == 1)
              {
                v67 = 0;
              }

              else
              {
                URL._bridgeToObjectiveC()(v66);
                v67 = v68;
                (*(v33 + 8))(v14, v34);
              }

              v92 = [objc_allocWithZone(CKDeviceToDeviceShareInvitationToken) initWithSharingInvitationData:v65.super.isa shareURL:v67];

              sub_100020D78(v97, v98);
              v94 = swift_allocObject();
              v93 = sub_100021848(0, &qword_100091728, CKFetchShareMetadataOperation_ptr);
              sub_100020818(&qword_100091730, &qword_10006DFB8);
              v69 = (*(v33 + 80) + 32) & ~*(v33 + 80);
              v70 = swift_allocObject();
              v90 = xmmword_10006D8A0;
              v91 = v70;
              *(v70 + 16) = xmmword_10006D8A0;
              v71 = v106;
              v72 = v95;
              v95(v70 + v69, v106, v34);
              sub_100020818(&qword_100091738, &qword_10006DFC0);
              v73 = v34;
              v74 = (sub_100020818(&unk_100091740, &unk_10006DFC8) - 8);
              v75 = (*(*v74 + 80) + 32) & ~*(*v74 + 80);
              v76 = swift_allocObject();
              *(v76 + 16) = v90;
              v77 = v76 + v75;
              v78 = v74[14];
              v72(v77, v71, v73);
              v79 = v92;
              *(v77 + v78) = v92;
              v96 = v79;
              sub_100049960(v76);
              swift_setDeallocating();
              sub_100028FF4(v77, &unk_100091740, &unk_10006DFC8);
              swift_deallocClassInstance();
              v80 = v94;
              sub_1000215E0((v94 + 16));
              [*(v80 + 16) setQualityOfService:25];
              v81 = swift_allocObject();
              v82 = v103;
              *(v81 + 16) = v103;
              *(v81 + 24) = a2;

              v83 = a2;
              CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter();
              sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
              v84 = static OS_dispatch_queue.main.getter();
              v85 = swift_allocObject();
              *(v85 + 16) = v82;
              *(v85 + 24) = v80;
              v115 = sub_100049B58;
              v116 = v85;
              aBlock = _NSConcreteStackBlock;
              v112 = 1107296256;
              v113 = sub_10004EB74;
              v114 = &unk_1000872D8;
              v86 = _Block_copy(&aBlock);

              v87 = v104;
              static DispatchQoS.unspecified.getter();
              aBlock = _swiftEmptyArrayStorage;
              sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_100020818(&qword_100091700, qword_10006E1F0);
              sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
              v88 = v99;
              v89 = v102;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v86);

              swift_unknownObjectRelease();
              sub_100020D78(v97, v98);
              (*(v101 + 8))(v88, v89);
              (*(v105 + 8))(v87, v100);
              (*(v107 + 8))(v106, v108);
            }
          }

          sub_100020D78(v97, v98);
        }
      }

      goto LABEL_27;
    }

    if (v22 == 0xD000000000000037 && 0x80000001000701C0 == v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (qword_100090D50 != -1)
      {
        swift_once();
      }

      v43 = qword_100092F08;
      v44 = swift_allocObject();
      *(v44 + 16) = v3;
      *(v44 + 24) = a2;
      v45 = v3[3];
      v115 = sub_100049630;
      v116 = v44;
      aBlock = _NSConcreteStackBlock;
      v112 = 1107296256;
      v113 = sub_10004EBCC;
      v114 = &unk_100087238;
      v46 = _Block_copy(&aBlock);

      v47 = a2;

      [v45 saveRecordZone:v43 completionHandler:v46];

      swift_unknownObjectRelease();
      _Block_release(v46);
    }

    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100020D2C(v55, qword_100092EB0);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock = v59;
      *v58 = 136446210;
      v60 = sub_100033140(v22, v24, &aBlock);

      *(v58 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v56, v57, "Received invitation using unknown schema: %{public}s", v58, 0xCu);
      sub_1000208BC(v59);
    }

    else
    {
    }

    v61 = v3[12];
    v62 = v3[13];
    sub_100020908(v3 + 9, v61);
    (*(v62 + 48))(a2, sub_100059710, 0, v61, v62);

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100020D2C(v36, qword_100092EB0);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to extract context from invitation. Declining the invitation.", v39, 2u);
    }

    v40 = v3[12];
    v41 = v3[13];
    sub_100020908(v3 + 9, v40);
    return (*(v41 + 48))(a2, sub_100059710, 0, v40, v41);
  }
}

uint64_t sub_100043274(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000432B8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100020D2C(v14, qword_100092EB0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v13;
    v41 = v4;
    v19 = v10;
    v20 = a3;
    v21 = v18;
    aBlock[0] = v18;
    *v17 = 136446210;
    v22 = Set.description.getter();
    v24 = sub_100033140(v22, v23, aBlock);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetching share participants with Apple IDs: %{public}s", v17, 0xCu);
    sub_1000208BC(v21);
    a3 = v20;
    v10 = v19;
    v13 = v40;
    v4 = v41;
  }

  v25 = sub_10003F534(a1);
  v26 = swift_allocObject();
  v27 = sub_100021848(0, &qword_100091818, CKFetchShareParticipantsOperation_ptr);
  off_100091110(v25, v27, &off_1000910F0);
  [*(v26 + 16) setQualityOfService:25];
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10004C1BC;
  *(v29 + 24) = v28;
  v30 = a2;
  CKFetchShareParticipantsOperation.perShareParticipantResultBlock.setter();
  v31 = swift_allocObject();
  v31[2] = v4;
  v31[3] = v30;
  v31[4] = a3;
  v32 = v30;

  v33 = a3;
  CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.setter();
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v34 = static OS_dispatch_queue.main.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = v4;
  *(v35 + 24) = v26;
  aBlock[4] = sub_10004C224;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_1000875A8;
  v36 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
  v37 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v44 + 8))(v10, v37);
  (*(v42 + 8))(v13, v43);
}

void sub_100043844(uint64_t a1, char a2, uint64_t a3, void *a4, NSObject *a5)
{
  if (a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100020D2C(v7, qword_100092EB0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_100049BC8(a1, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v12 = String.init<A>(describing:)();
      v14 = sub_100033140(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch participants: %{public}s", v10, 0xCu);
      sub_1000208BC(v11);
    }

    v15 = [objc_opt_self() defaultCenter];
    if (qword_100090D58 != -1)
    {
      swift_once();
    }

    v16 = 0x40AC200000000000;
    v17 = 0;
    [v15 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(a5);
  }

  else
  {
    sub_100043A8C(a4, a5);
  }
}

uint64_t sub_100043A8C(void *a1, void *a2)
{
  v24 = a2;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  v9 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  *(v8 + 16) = v9;
  [v9 setQualityOfService:25];
  sub_100020818(&qword_100091760, &qword_10006DFD8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10006DED0;
  *(v10 + 32) = a1;
  v11 = off_1000910E0;
  sub_100021848(0, &qword_100091840, CKModifyRecordsOperation_ptr);
  v12 = a1;
  v11(v10);
  v13 = swift_allocObject();
  v14 = v24;
  v13[2] = v24;
  v13[3] = v2;
  v13[4] = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10004C914;
  *(v15 + 24) = v13;
  v16 = v12;
  v17 = v14;

  CKModifyRecordsOperation.perRecordSaveBlock.setter();
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = v8;
  aBlock[4] = sub_10004C9AC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087670;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
  v22 = v25;
  v21 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v29 + 8))(v22, v21);
  (*(v27 + 8))(v7, v28);
}

void sub_100043ED8(void *a1, void *a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v135 = a2;
  v9 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  __chkstk_darwin(v9 - 8);
  v134 = &v125 - v10;
  v11 = sub_100020818(&qword_100091720, &qword_10006DFB0);
  v12 = __chkstk_darwin(v11 - 8);
  v131 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v125 - v14;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100020D2C(v16, qword_100092EB0);

  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v137 = a3;
  v132 = v15;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    *v22 = 136446466;
    *(v22 + 4) = sub_100033140(a3, a4, &v140);
    *(v22 + 12) = 2082;
    v139 = v18;
    sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
    v23 = v18;
    v24 = String.init<A>(describing:)();
    v26 = sub_100033140(v24, v25, &v140);

    *(v22 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Sending %{public}s to participant: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v27 = [v18 userIdentity];
  v28 = [v27 lookupInfo];

  if (v28)
  {
    v29 = [v28 emailAddress];
    v138 = a4;
    if (v29 || (v29 = [v28 phoneNumber]) != 0)
    {
      v30 = a5;
      v31 = v29;
      v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = v138;

      v35 = v18;
      v128 = v17;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      v38 = os_log_type_enabled(v36, v37);
      v130 = v28;
      if (v38)
      {
        v39 = swift_slowAlloc();
        v129 = v33;
        v40 = v39;
        v140 = swift_slowAlloc();
        *v40 = 136446466;
        v41 = v137;
        *(v40 + 4) = sub_100033140(v137, v34, &v140);
        *(v40 + 12) = 2082;
        v139 = v35;
        sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
        v42 = v35;
        v43 = v35;
        v44 = String.init<A>(describing:)();
        v46 = sub_100033140(v44, v45, &v140);

        *(v40 + 14) = v46;
        v47 = v30;
        _os_log_impl(&_mh_execute_header, v36, v37, "Sending %{public}s to participant: %{public}s", v40, 0x16u);
        swift_arrayDestroy();

        v33 = v129;
      }

      else
      {
        v42 = v35;

        v41 = v137;
        v47 = v30;
      }

      v129 = String._bridgeToObjectiveC()();
      v48 = v138;
      if (v41 == 0xD000000000000030 && 0x8000000100070180 == v138 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v49 = v47;
        v50 = v42;
        v51 = [v42 invitationToken];
        if (v51)
        {
          v52 = v33;
          v53 = v51;
          v54 = [v51 sharingInvitationData];

          v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          if (v135)
          {
            v58 = v50;
            v59 = [v135 URL];
            v127 = v49;
            if (v59)
            {
              v60 = v131;
              v61 = v59;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v62 = 0;
            }

            else
            {
              v62 = 1;
              v60 = v131;
            }

            v87 = type metadata accessor for URL();
            v88 = *(v87 - 8);
            (*(v88 + 56))(v60, v62, 1, v87);
            v89 = v132;
            sub_100029830(v60, v132, &qword_100091720, &qword_10006DFB0);
            if ((*(v88 + 48))(v89, 1, v87) == 1)
            {

              sub_100020D78(v55, v57);
              sub_100028FF4(v89, &qword_100091720, &qword_10006DFB0);
              v49 = v127;
              v50 = v58;
              goto LABEL_33;
            }

            v101 = v57;
            v102 = URL.absoluteString.getter();
            v104 = v103;
            (*(v88 + 8))(v89, v87);
            sub_100020818(&qword_100091868, &qword_10006E088);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10006D890;
            strcpy((inited + 32), "invitationData");
            *(inited + 47) = -18;
            *(inited + 48) = v55;
            v125 = v55;
            v126 = v101;
            *(inited + 56) = v101;
            *(inited + 72) = &type metadata for Data;
            *(inited + 80) = 0xD000000000000018;
            *(inited + 120) = &type metadata for String;
            *(inited + 88) = 0x8000000100070200;
            *(inited + 96) = v102;
            *(inited + 104) = v104;
            sub_100020CD8(v55, v101);
            v106 = sub_10004C660(inited);
            swift_setDeallocating();
            sub_100020818(&qword_100091828, &qword_10006E068);
            swift_arrayDestroy();
            sub_1000516A8(v106);

            v107 = objc_allocWithZone(IDSDictionaryInvitationContext);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v109 = String._bridgeToObjectiveC()();
            v110 = [v107 initWithDictionary:isa schema:v109];

            v111 = v133[12];
            v112 = v133[13];
            v138 = sub_100020908(v133 + 9, v111);
            v113 = v134;
            static Date.distantFuture.getter();
            v114 = type metadata accessor for Date();
            (*(*(v114 - 8) + 56))(v113, 0, 1, v114);
            v115 = swift_allocObject();
            v115[2] = v136;
            v115[3] = v52;
            v116 = v129;
            v117 = v127;
            v115[4] = v127;
            v118 = *(v112 + 32);
            v119 = v110;
            v120 = v117;
            v118(v116, v113, v119, sub_10004E704, v115, v111, v112);

            sub_100020D78(v125, v126);
            v76 = v113;
            goto LABEL_40;
          }

          sub_100020D78(v55, v57);
        }

        else
        {
        }

LABEL_33:
        v90 = v50;
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v139 = v90;
          v140 = v94;
          *v93 = 136446210;
          sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
          v95 = v90;
          v96 = String.init<A>(describing:)();
          v98 = sub_100033140(v96, v97, &v140);

          *(v93 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v91, v92, "Failed to create share invitation for: %{public}s", v93, 0xCu);
          sub_1000208BC(v94);
        }

        v99 = [objc_opt_self() defaultCenter];
        if (qword_100090D58 != -1)
        {
          swift_once();
        }

        v140 = 0x40AC200000000000;
        v141 = 0;
        [v99 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
        dispatch_group_leave(v49);

        v100 = &v142;
LABEL_38:

        return;
      }

      if ((v41 != 0xD000000000000037 || 0x80000001000701C0 != v48) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v140 = v124;
          *v123 = 136446210;
          *(v123 + 4) = sub_100033140(v41, v48, &v140);
          _os_log_impl(&_mh_execute_header, v121, v122, "Tried to send invitation using unknown schema: %{public}s", v123, 0xCu);
          sub_1000208BC(v124);
        }

        dispatch_group_leave(v47);
        v100 = &v143;
        goto LABEL_38;
      }

      sub_10004C790(_swiftEmptyArrayStorage);
      v63 = objc_allocWithZone(IDSDictionaryInvitationContext);
      v64 = Dictionary._bridgeToObjectiveC()().super.isa;

      v65 = String._bridgeToObjectiveC()();
      v66 = [v63 initWithDictionary:v64 schema:v65];

      v67 = v133[12];
      v68 = v133[13];
      sub_100020908(v133 + 9, v67);
      v69 = v129;
      v70 = v134;
      static Date.distantFuture.getter();
      v71 = type metadata accessor for Date();
      (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
      v72 = swift_allocObject();
      v72[2] = v136;
      v72[3] = v33;
      v72[4] = v47;
      v73 = *(v68 + 32);
      v74 = v47;
      v75 = v66;
      v73(v69, v70, v75, sub_10004E704, v72, v67, v68);

      v76 = v70;
LABEL_40:
      sub_100028FF4(v76, &qword_1000913D0, &qword_10006D9C0);
      return;
    }
  }

  v77 = v18;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v139 = v77;
    v140 = v81;
    *v80 = 136446210;
    sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
    v82 = v77;
    v83 = String.init<A>(describing:)();
    v85 = sub_100033140(v83, v84, &v140);

    *(v80 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v78, v79, "Failed to create invitation for: %{public}s", v80, 0xCu);
    sub_1000208BC(v81);
  }

  v86 = [objc_opt_self() defaultCenter];
  if (qword_100090D58 != -1)
  {
    swift_once();
  }

  v140 = 0x40AC200000000000;
  v141 = 0;
  [v86 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  dispatch_group_leave(a5);
}