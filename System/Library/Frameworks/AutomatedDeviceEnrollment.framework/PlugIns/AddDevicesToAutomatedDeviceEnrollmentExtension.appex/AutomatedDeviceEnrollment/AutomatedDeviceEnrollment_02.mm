void sub_100033CBC(uint64_t a1)
{
  sub_100033D60(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100033D60(uint64_t a1)
{
  if (!qword_1000CB208)
  {
    sub_100007108(&qword_1000CD8C0, &qword_100091B80);
    v1 = sub_10008CDCC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CB208);
    }
  }
}

uint64_t sub_100033DC4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_100033DE8, v2, 0);
}

uint64_t sub_100033DE8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[11] = *(v1 + 112);
  v4 = *(v1 + 120);
  v0[12] = v4;
  v0[13] = swift_getObjectType();
  v0[2] = v3;
  v0[3] = v2;
  v0[14] = *(v4 + 16);
  v0[15] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0x30FA000000000000;
  v6 = sub_10008DD8C();

  return _swift_task_switch(sub_100033E98, v6, v5);
}

uint64_t sub_100033E98()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = sub_100009C08(&qword_1000CD8C0, &qword_100091B80);
  v5 = sub_100034844(&qword_1000CB2F0, sub_1000347F0, &protocol conformance descriptor for <A> A?);
  v6 = sub_100034844(&qword_1000CB300, sub_1000348BC, &protocol conformance descriptor for <A> A?);
  v1(v0 + 2, 0x7774654E69666977, 0xEF6F666E496B726FLL, v4, v5, v6, v2, v3);
  v0[16] = 0;
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_10003405C;

  return sub_100033958();
}

uint64_t sub_10003405C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 80);

    return _swift_task_switch(sub_1000341A0, v6, 0);
  }
}

uint64_t sub_1000341A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v1 = v0[4];
  v2 = v0[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[6] = v1;
  v0[7] = v2;

  sub_10008CDBC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000342B8()
{
  *(v1 + 32) = v0;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_100034348;

  return sub_100033958();
}

uint64_t sub_100034348()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 32);

    return _swift_task_switch(sub_10003448C, v6, 0);
  }
}

uint64_t sub_10003448C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_10003453C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E290;

  return sub_100033DC4(a1, a2);
}

uint64_t sub_1000345E0()
{
  v0 = sub_100009C08(&qword_1000CB2D8, &qword_100092A70);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&qword_1000CB2E0, &qword_100092A78);
  sub_10008CD8C();
  swift_endAccess();
  sub_10003478C();
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_10003470C(uint64_t a1)
{
  result = sub_100034734();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100034734()
{
  result = qword_1000CB2D0;
  if (!qword_1000CB2D0)
  {
    type metadata accessor for KeyValueStoreBackedNetworkInfoStorage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB2D0);
  }

  return result;
}

unint64_t sub_10003478C()
{
  result = qword_1000CB2E8;
  if (!qword_1000CB2E8)
  {
    sub_100007108(&qword_1000CB2D8, &qword_100092A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB2E8);
  }

  return result;
}

unint64_t sub_1000347F0()
{
  result = qword_1000CB2F8;
  if (!qword_1000CB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB2F8);
  }

  return result;
}

uint64_t sub_100034844(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007108(&qword_1000CD8C0, &qword_100091B80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000348BC()
{
  result = qword_1000CB308;
  if (!qword_1000CB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB308);
  }

  return result;
}

double sub_100034910@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100034994(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10002D95C(v2, v3);

  return sub_10008CDBC();
}

id sub_100034A20()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catTaskClient;
  v2 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catTaskClient);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catTaskClient);
  }

  else
  {
    v4 = [objc_allocWithZone(CATTaskClient) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_100034A94(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catTaskClient] = 0;
  *&v1[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catOperationQueue] = 0;
  *&v1[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy_catSharingConnection] = a1;
  v3 = objc_allocWithZone(CATSharingServiceTransport);
  swift_unknownObjectRetain();
  v4 = [v3 initWithConnection:a1];
  *&v1[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy_catSharingTransport] = v4;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BuddyProxy();
  v5 = objc_msgSendSuper2(&v8, "init");
  v6 = sub_100034A20();
  [v6 setDelegate:v5];

  [*&v5[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catTaskClient] connectWithTransport:*&v5[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy_catSharingTransport]];
  swift_unknownObjectRelease();
  return v5;
}

id sub_100034BC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyProxy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100034CFC(uint64_t a1)
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_10008CCDC();
  sub_100009F94(v1, qword_1000D6D38);
  swift_errorRetain();
  oslog = sub_10008CCBC();
  v2 = sub_10008DE2C();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_10000A2D8(0xD000000000000020, 0x8000000100099870, &v8);
    *(v3 + 12) = 2082;
    swift_errorRetain();
    sub_100009C08(&qword_1000CB3B8, &qword_100092B38);
    v4 = sub_10008DC4C();
    v6 = sub_10000A2D8(v4, v5, &v8);

    *(v3 + 14) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v2, "%s: CAT task client interrupted with error: %{public}s", v3, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10003519C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_10008D3FC();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009C08(&qword_1000CB3C0, &qword_100092BC8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v18 - v12;
  v21 = a1;
  v22 = a2;
  sub_100009C08(&qword_1000CB3C8, &qword_100092BD0);
  v14 = sub_100007108(&qword_1000CB3D0, &qword_100092BD8);
  v15 = sub_10001121C(&qword_1000CB3D8, &qword_1000CB3D0, &qword_100092BD8, &protocol conformance descriptor for List<A, B>);
  v16 = sub_100019E50();
  v23 = v14;
  v24 = &type metadata for String;
  v25 = v15;
  v26 = v16;
  swift_getOpaqueTypeConformance2();
  sub_10008D0AC();
  type metadata accessor for SettingsViewModel(0);
  sub_100013A10();
  sub_10008D12C();
  swift_getKeyPath();
  sub_10008D14C();

  sub_10008D3EC();
  sub_10001121C(&qword_1000CB3E0, &qword_1000CB3C0, &qword_100092BC8, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_10008D6CC();

  (*(v19 + 8))(v8, v20);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000354C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = sub_10008D2AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10008CB2C();
  __chkstk_darwin(v10 - 8, v11);
  v12 = sub_10008DBBC();
  __chkstk_darwin(v12 - 8, v13);
  v14 = sub_100009C08(&qword_1000CB3D0, &qword_100092BD8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = v21 - v17;
  v21[4] = a1;
  v21[5] = a2;
  sub_100009C08(&qword_1000CB3E8, &qword_100092C08);
  sub_100035DB0();
  sub_10008D62C();
  sub_10008DB5C();
  sub_10008CB1C();
  v21[7] = sub_10008DC3C();
  v21[8] = v19;
  (*(v6 + 104))(v9, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v5);
  sub_10001121C(&qword_1000CB3D8, &qword_1000CB3D0, &qword_100092BD8, &protocol conformance descriptor for List<A, B>);
  sub_100019E50();
  sub_10008D72C();
  (*(v6 + 8))(v9, v5);

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1000357F4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_10002B5D0();

    swift_getKeyPath();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;

    sub_100009C08(&qword_1000CA510, &qword_100090F80);
    sub_100009C08(&qword_1000CB400, &qword_100092C10);
    sub_10001121C(&qword_1000CB418, &qword_1000CA510, &qword_100090F80, &protocol conformance descriptor for [A]);
    sub_100035F58();
    sub_100035E34();
    return sub_10008D96C();
  }

  else
  {
    type metadata accessor for SettingsViewModel(0);
    sub_100013A10();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100035960@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[1];
  v16 = *a1;
  v17 = v8;
  v18 = *(a1 + 32);
  v19 = v16;
  v20 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v10;
  *(v9 + 64) = *(a1 + 32);

  sub_10003600C(&v19, v15);
  sub_10003600C(&v20, v15);
  sub_100036068();
  sub_10008D90C();
  v11 = sub_10008D88C();
  KeyPath = swift_getKeyPath();
  result = sub_100009C08(&qword_1000CB400, &qword_100092C10);
  v14 = (a4 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  return result;
}

uint64_t sub_100035A90(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a1)
  {
    v5 = a3 + 1;
    v4 = *(a3 + 2);
    v6 = *(a3 + 32);
    v7 = *(a3 + 3);
    v16 = *(a3 + 1);
    v17 = *a3;
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = *a3;
    v18 = *v5;
    v19 = v8;
    sub_10003600C(&v19, v23);
    sub_10003600C(&v18, v23);

    sub_10008CDAC();

    v9 = v23[0];
    v10 = v23[2];
    v11 = v23[3];
    if (v23[1])
    {
      v12 = sub_100025EB0(a3, v23);

      sub_100036110(&v19);
      sub_100036110(&v18);
      v14 = v16;
      v13 = v17;
      if (v12)
      {
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
LABEL_7:
        sub_100027A88(&v20);
      }
    }

    else
    {
      v14 = v16;
      v13 = v17;
      sub_1000360CC(v17, v16, v4, v7);
      sub_1000360CC(v9, 0, v10, v11);
    }

    *&v20 = v13;
    *(&v20 + 1) = v14;
    *&v21 = v4;
    *(&v21 + 1) = v7;
    v22 = v6;
    goto LABEL_7;
  }

  type metadata accessor for SettingsViewModel(0);
  sub_100013A10();
  result = sub_10008D13C();
  __break(1u);
  return result;
}

uint64_t sub_100035C44@<X0>(uint64_t a1@<X0>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10008CDAC();

    if (v11)
    {

      sub_1000360CC(v10, v11, v12, v13);
      if (v10 == *a3 && v11 == a3[1])
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_10008E18C();
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = a3[2];
    v7 = a3[3];
    *a4 = v6 & 1;
    *(a4 + 8) = v8;
    *(a4 + 16) = v7;
  }

  else
  {
    type metadata accessor for SettingsViewModel(0);
    sub_100013A10();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

unint64_t sub_100035DB0()
{
  result = qword_1000CB3F0;
  if (!qword_1000CB3F0)
  {
    sub_100007108(&qword_1000CB3E8, &qword_100092C08);
    sub_100035E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB3F0);
  }

  return result;
}

unint64_t sub_100035E34()
{
  result = qword_1000CB3F8;
  if (!qword_1000CB3F8)
  {
    sub_100007108(&qword_1000CB400, &qword_100092C10);
    sub_10001121C(&qword_1000CB408, &qword_1000CB410, qword_100092C18, &protocol conformance descriptor for Button<A>);
    sub_10001121C(&qword_1000C9FE8, &qword_1000C9FF0, &unk_100092390, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB3F8);
  }

  return result;
}

uint64_t sub_100035F18()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100035F58()
{
  result = qword_1000CB420;
  if (!qword_1000CB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB420);
  }

  return result;
}

uint64_t sub_100035FAC()
{

  return _swift_deallocObject(v0, 65, 7);
}

unint64_t sub_100036068()
{
  result = qword_1000CB428;
  if (!qword_1000CB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB428);
  }

  return result;
}

void sub_1000360CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_100036164()
{
  sub_100007108(&qword_1000CB3C0, &qword_100092BC8);
  sub_10001121C(&qword_1000CB3E0, &qword_1000CB3C0, &qword_100092BC8, &protocol conformance descriptor for NavigationStack<A, B>);
  return swift_getOpaqueTypeConformance2();
}

double sub_100036244@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000362C8()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension24FakeMDMServerInfoStorage__mdmServerInfo;
  v2 = sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FakeMDMServerInfoStorage(uint64_t a1)
{
  result = qword_1000CB5B0;
  if (!qword_1000CB5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000363C4(uint64_t a1)
{
  sub_1000117AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100036454(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return _swift_task_switch(sub_100036478, 0, 0);
}

uint64_t sub_100036478()
{
  v1 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100036534(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 96) = a1;
  *(v2 + 104) = v3;
  return _swift_task_switch(sub_100036558, 0, 0);
}

uint64_t sub_100036558()
{
  v1 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;

  sub_100012228(v1, v0 + 56);
  sub_10008CDBC();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100036618()
{
  v0 = sub_100009C08(&qword_1000C99C0, &unk_10008FA80);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  sub_10008CD8C();
  swift_endAccess();
  sub_100011F68();
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

double sub_100036748@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000367D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100012298(v2, v3, v4, v5);

  return sub_10008CDBC();
}

uint64_t sub_100036898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceRowViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100036918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceRowViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeviceRowView(uint64_t a1)
{
  result = qword_1000CB6C0;
  if (!qword_1000CB6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000369D4(uint64_t a1)
{
  result = type metadata accessor for DeviceRowViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100036A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009C08(&qword_1000CB700, &qword_100092E48);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v43 - v6;
  v8 = sub_100009C08(&qword_1000CB708, &qword_100092E50);
  v10 = __chkstk_darwin(v8, v9);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v43 - v14;
  __chkstk_darwin(v13, v16);
  v18 = &v43 - v17;
  *v7 = sub_10008D2EC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v19 = sub_100009C08(&qword_1000CB710, &qword_100092E58);
  sub_100036E7C(a1, &v7[*(v19 + 44)]);
  v20 = sub_10008D58C();
  v21 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v20)
  {
    v21 = sub_10008D57C();
  }

  sub_10008CF0C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_100037C28(v7, v15, &qword_1000CB700, &qword_100092E48);
  v30 = &v15[*(v8 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  sub_100037C28(v15, v18, &qword_1000CB708, &qword_100092E50);
  v31 = sub_10008D2FC();
  v46 = 0;
  sub_10003764C(a1, &v56);
  v49 = *&v57[16];
  v50 = *&v57[32];
  v51 = *&v57[48];
  v52 = *&v57[64];
  v47 = v56;
  v48 = *v57;
  v53[2] = *&v57[16];
  v53[3] = *&v57[32];
  v53[4] = *&v57[48];
  v53[5] = *&v57[64];
  v53[0] = v56;
  v53[1] = *v57;
  sub_10000C314(&v47, &v54, &qword_1000CB718, &qword_100092E60);
  sub_10000C3F8(v53, &qword_1000CB718, &qword_100092E60);
  *&v45[39] = v49;
  *&v45[55] = v50;
  *&v45[71] = v51;
  *&v45[87] = v52;
  *&v45[7] = v47;
  *&v45[23] = v48;
  v32 = v46;
  v33 = v44;
  sub_10000C314(v18, v44, &qword_1000CB708, &qword_100092E50);
  sub_10000C314(v33, a2, &qword_1000CB708, &qword_100092E50);
  v34 = sub_100009C08(&qword_1000CB720, &qword_100092E68);
  v35 = *(v34 + 48);
  *&v55[49] = *&v45[48];
  *&v55[17] = *&v45[16];
  *&v55[65] = *&v45[64];
  *&v55[81] = *&v45[80];
  v36 = a2 + v35;
  *&v54 = v31;
  *(&v54 + 1) = 0x4008000000000000;
  v55[0] = v32;
  *&v55[96] = *&v45[95];
  *&v55[33] = *&v45[32];
  *&v55[1] = *v45;
  *(v36 + 112) = *&v45[95];
  v37 = *&v55[80];
  v38 = *&v55[32];
  *(v36 + 32) = *&v55[16];
  *(v36 + 48) = v38;
  v39 = *v55;
  *v36 = v54;
  *(v36 + 16) = v39;
  v40 = *&v55[48];
  *(v36 + 80) = *&v55[64];
  *(v36 + 96) = v37;
  *(v36 + 64) = v40;
  v41 = a2 + *(v34 + 64);
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_10000C314(&v54, &v56, &qword_1000CB728, &unk_100092E70);
  sub_10000C3F8(v18, &qword_1000CB708, &qword_100092E50);
  *&v57[49] = *&v45[48];
  *&v57[65] = *&v45[64];
  *v58 = *&v45[80];
  *&v57[1] = *v45;
  *&v57[17] = *&v45[16];
  *&v56 = v31;
  *(&v56 + 1) = 0x4008000000000000;
  v57[0] = v32;
  *&v58[15] = *&v45[95];
  *&v57[33] = *&v45[32];
  sub_10000C3F8(&v56, &qword_1000CB728, &unk_100092E70);
  return sub_10000C3F8(v33, &qword_1000CB708, &qword_100092E50);
}

uint64_t sub_100036E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v53 = a2;
  v2 = sub_10008D47C();
  v48 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009C08(&qword_1000CB738, &unk_100092E80);
  v47 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v44 - v8;
  v10 = sub_100009C08(&qword_1000CB740, &qword_100094110);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v44 - v13;
  v51 = sub_100009C08(&qword_1000CB748, &qword_100092E90);
  __chkstk_darwin(v51, v15);
  v50 = (&v44 - v16);
  v17 = sub_100009C08(&qword_1000CB750, &qword_100092E98);
  __chkstk_darwin(v17, v18);
  v20 = (&v44 - v19);
  v52 = sub_100009C08(&qword_1000CB758, &qword_100092EA0);
  __chkstk_darwin(v52, v21);
  v23 = &v44 - v22;
  v24 = *(v49 + *(type metadata accessor for DeviceRowViewModel(0) + 28));
  if (v24 <= 1)
  {
    v45 = v14;
    v46 = v23;
    v44 = v11;
    v49 = v10;
    if (v24)
    {
      sub_10008CF8C();
      sub_10008D46C();
      v38 = sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80, &protocol conformance descriptor for ProgressView<A, B>);
      v39 = sub_100037E3C();
      v40 = v45;
      sub_10008D6BC();
      (*(v48 + 8))(v5, v2);
      (*(v47 + 8))(v9, v6);
      v41 = v44;
      v42 = v49;
      (*(v44 + 16))(v20, v40, v49);
      swift_storeEnumTagMultiPayload();
      *&v54 = v6;
      *(&v54 + 1) = v2;
      v55 = v38;
      v56 = v39;
      swift_getOpaqueTypeConformance2();
      v43 = v46;
      sub_10008D3DC();
      sub_10000C314(v43, v50, &qword_1000CB758, &qword_100092EA0);
      swift_storeEnumTagMultiPayload();
      sub_100009C08(&qword_1000CB760, &qword_100092ED8);
      sub_100037D20();
      sub_100037E94();
      sub_10008D3DC();
      sub_10000C3F8(v43, &qword_1000CB758, &qword_100092EA0);
      return (*(v41 + 8))(v45, v42);
    }

    else
    {
      v35 = v46;
      if (qword_1000C8D28 != -1)
      {
        swift_once();
      }

      *v20 = qword_1000D6DA8;
      swift_storeEnumTagMultiPayload();
      v36 = sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80, &protocol conformance descriptor for ProgressView<A, B>);
      v37 = sub_100037E3C();

      *&v54 = v6;
      *(&v54 + 1) = v2;
      v55 = v36;
      v56 = v37;
      swift_getOpaqueTypeConformance2();
      sub_10008D3DC();
      sub_10000C314(v35, v50, &qword_1000CB758, &qword_100092EA0);
      swift_storeEnumTagMultiPayload();
      sub_100009C08(&qword_1000CB760, &qword_100092ED8);
      sub_100037D20();
      sub_100037E94();
      sub_10008D3DC();
      return sub_10000C3F8(v35, &qword_1000CB758, &qword_100092EA0);
    }
  }

  else
  {
    if (v24 == 3)
    {
      if (qword_1000C8D30 != -1)
      {
        swift_once();
      }

      v25 = qword_1000D6DB0;

      v26 = sub_10008D87C();
      KeyPath = swift_getKeyPath();
      v57 = v25;
      v58 = KeyPath;
      v59 = v26;
      v60 = 0;
    }

    else
    {
      if (qword_1000C8D38 != -1)
      {
        swift_once();
      }

      v28 = qword_1000D6DB8;

      v29 = sub_10008D85C();
      v30 = swift_getKeyPath();
      v57 = v28;
      v58 = v30;
      v59 = v29;
      v60 = 1;
    }

    sub_100009C08(&qword_1000C9FD8, &unk_100090010);
    sub_10001A21C();
    sub_10008D3DC();
    v31 = v55;
    v32 = v56;
    v33 = v50;
    *v50 = v54;
    *(v33 + 2) = v31;
    *(v33 + 24) = v32;
    swift_storeEnumTagMultiPayload();
    sub_100009C08(&qword_1000CB760, &qword_100092ED8);
    sub_100037D20();
    sub_100037E94();
    sub_10008D3DC();
  }
}

uint64_t sub_10003764C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v83 = a2;
  v3 = sub_100009C08(&qword_1000CB730, &qword_100095280);
  __chkstk_darwin(v3 - 8, v4);
  v86 = v80 - v5;
  v91 = sub_100038734();
  v92 = v6;
  v7 = sub_100019E50();
  v87 = sub_10008D68C();
  v85 = v8;
  v84 = v9;
  v89 = v10;
  v11 = type metadata accessor for DeviceRowViewModel(0);
  v12 = (a1 + *(v11 + 32));
  v13 = v12[1];
  v80[1] = v7;
  if (v13)
  {
    v91 = *v12;
    v92 = v13;
    v80[0] = v11;

    v14 = sub_10008D68C();
    v16 = v15;
    v18 = v17;
    v19 = [objc_opt_self() secondaryLabelColor];
    sub_10008D80C();
    v88 = sub_10008D65C();
    v21 = v20;
    v23 = v22;

    v24 = v14;
    v25 = v86;
    sub_10001CD48(v24, v16, v18 & 1);

    v26 = sub_10008D5BC();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    sub_10008D5EC();
    sub_10000C3F8(v25, &qword_1000CB730, &qword_100095280);
    v27 = v88;
    v28 = sub_10008D67C();
    v30 = v29;
    v32 = v31;
    v33 = a1;
    v35 = v34;

    sub_10001CD48(v27, v21, v23 & 1);

    v81 = v28;
    v36 = v30;
    v88 = v32 & 1;
    sub_10001CC9C(v28, v30, v32 & 1);
    v82 = v35;
    a1 = v33;

    v11 = v80[0];
  }

  else
  {
    v81 = 0;
    v82 = 0;
    v36 = 0;
    v88 = 0;
  }

  v37 = (a1 + *(v11 + 36));
  v38 = v37[1];
  if (!v38)
  {
    goto LABEL_9;
  }

  v39 = *v37;
  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v91 = v39;
    v92 = v38;

    v41 = sub_10008D68C();
    v43 = v42;
    v45 = v44;
    v46 = [objc_opt_self() secondaryLabelColor];
    sub_10008D80C();
    v47 = sub_10008D65C();
    v49 = v48;
    v51 = v50;

    sub_10001CD48(v41, v43, v45 & 1);

    v52 = sub_10008D5BC();
    v53 = v86;
    (*(*(v52 - 8) + 56))(v86, 1, 1, v52);
    sub_10008D5EC();
    sub_10000C3F8(v53, &qword_1000CB730, &qword_100095280);
    v54 = v47;
    v55 = v49;
    v56 = sub_10008D67C();
    v58 = v57;
    v60 = v59;
    v62 = v61;

    sub_10001CD48(v54, v55, v51 & 1);

    v63 = v56;
    v64 = v58;
    v65 = v58;
    v66 = v60 & 1;
    sub_10001CC9C(v56, v65, v60 & 1);
    v67 = v62;
  }

  else
  {
LABEL_9:
    v63 = 0;
    v64 = 0;
    v66 = 0;
    v67 = 0;
  }

  v68 = v84 & 1;
  LOBYTE(v91) = v84 & 1;
  v90 = v84 & 1;
  v69 = v87;
  v70 = v85;
  sub_10001CC9C(v87, v85, v84 & 1);

  sub_10001CC9C(v69, v70, v68);

  v72 = v81;
  v71 = v82;
  v73 = v88;
  sub_100037C90(v81, v36, v88, v82);
  sub_100037C90(v63, v64, v66, v67);
  sub_100037CD4(v72, v36, v73, v71);
  sub_100037CD4(v63, v64, v66, v67);
  v74 = v87;
  sub_10001CD48(v87, v70, v68);
  v75 = v89;

  v76 = v90;
  v77 = v83;
  *v83 = v74;
  v77[1] = v70;
  *(v77 + 16) = v76;
  v77[3] = v75;
  v77[4] = v72;
  v78 = v88;
  v77[5] = v36;
  v77[6] = v78;
  v77[7] = v71;
  v77[8] = v63;
  v77[9] = v64;
  v77[10] = v66;
  v77[11] = v67;
  sub_100037CD4(v63, v64, v66, v67);
  sub_100037CD4(v72, v36, v78, v71);
  sub_10001CD48(v74, v70, v91);
}

uint64_t sub_100037BD4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10008D2BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100009C08(&qword_1000CB6F8, &qword_100092E40);
  return sub_100036A5C(v1, a1 + *(v3 + 44));
}

uint64_t sub_100037C28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009C08(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100037C90(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10001CC9C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100037CD4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10001CD48(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100037D20()
{
  result = qword_1000CB768;
  if (!qword_1000CB768)
  {
    sub_100007108(&qword_1000CB758, &qword_100092EA0);
    sub_100007108(&qword_1000CB738, &unk_100092E80);
    sub_10008D47C();
    sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100037E3C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB768);
  }

  return result;
}

unint64_t sub_100037E3C()
{
  result = qword_1000CB778;
  if (!qword_1000CB778)
  {
    sub_10008D47C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB778);
  }

  return result;
}

unint64_t sub_100037E94()
{
  result = qword_1000CB780;
  if (!qword_1000CB780)
  {
    sub_100007108(&qword_1000CB760, &qword_100092ED8);
    sub_10001A21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB780);
  }

  return result;
}

uint64_t sub_100037F88@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_10008CB2C();
  __chkstk_darwin(v5 - 8, v6);
  v7 = sub_10008DBBC();
  __chkstk_darwin(v7 - 8, v8);
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10008CDAC();

    if (*(&v16 + 1) < 2uLL)
    {
      sub_10008DB5C();
      sub_10008CB1C();
      *&v16 = sub_10008DC3C();
      *(&v16 + 1) = v10;
      sub_100019E50();
      v11 = sub_10008D68C();
      v13 = v12;
      v15 = v14 & 1;
      sub_10001CC9C(v11, v12, v14 & 1);

      sub_10008D3DC();
      sub_100009C08(&qword_1000CB798, &qword_100092FC8);
      sub_10003832C();
      sub_10008D3DC();
      sub_10001CD48(v11, v13, v15);
    }

    else
    {
      if (*(&v16 + 1) != 2)
      {
      }

      sub_100009C08(&qword_1000CB798, &qword_100092FC8);
      sub_10003832C();
      result = sub_10008D3DC();
    }

    *a3 = v16;
    *(a3 + 16) = v17;
    *(a3 + 32) = v18;
    *(a3 + 33) = v19;
  }

  else
  {
    type metadata accessor for SettingsViewModel(0);
    sub_100013A10();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

unint64_t sub_10003832C()
{
  result = qword_1000CB7A0;
  if (!qword_1000CB7A0)
  {
    sub_100007108(&qword_1000CB798, &qword_100092FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB7A0);
  }

  return result;
}

unint64_t sub_1000383AC()
{
  result = qword_1000CB7A8;
  if (!qword_1000CB7A8)
  {
    sub_100007108(&qword_1000CB7B0, &unk_100092FD0);
    sub_10003832C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB7A8);
  }

  return result;
}

uint64_t sub_10003844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008CB0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10003852C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10008CB0C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for DeviceRowViewModel(uint64_t a1)
{
  result = qword_1000CB810;
  if (!qword_1000CB810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100038634(uint64_t a1)
{
  sub_10008CB0C();
  if (v1 <= 0x3F)
  {
    sub_10000F8A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000386E0()
{
  result = qword_1000CB858;
  if (!qword_1000CB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB858);
  }

  return result;
}

uint64_t sub_100038734()
{
  v1 = sub_10008CB2C();
  __chkstk_darwin(v1 - 8, v2);
  v3 = sub_10008DBBC();
  __chkstk_darwin(v3 - 8, v4);
  v5 = type metadata accessor for DeviceRowViewModel(0);
  v6 = (v0 + *(v5 + 20));
  if (v6[1])
  {
    v7 = *v6;
  }

  else
  {
    v8 = (v0 + *(v5 + 24));
    v9 = v8[1];
    if (!v9)
    {
      goto LABEL_8;
    }

    v7 = *v8;
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
    }

    else
    {
LABEL_8:
      sub_10008DB5C();
      sub_10008CB1C();
      v7 = sub_10008DC3C();
    }
  }

  return v7;
}

unint64_t sub_1000388AC()
{
  result = qword_1000C9430;
  if (!qword_1000C9430)
  {
    sub_10008CB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9430);
  }

  return result;
}

uint64_t sub_100038904@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10008CB0C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10003896C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10008C9BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = outSystemSoundID - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_10008C93C();
    outSystemSoundID[0] = 0;
    sub_10008C95C(v13);
    v15 = v14;
    AudioServicesCreateSystemSoundID(v14, outSystemSoundID);

    AudioServicesPlaySystemSound(outSystemSoundID[0]);
    (*(v9 + 8))(v12, v8);
    v16 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
    [v16 notificationOccurred:0];
  }

  sub_10000BE8C(v4 + 16, outSystemSoundID);
  v17 = v21;
  v18 = v22;
  sub_10000BB24(outSystemSoundID, v21);
  (*(v18 + 40))(a1, a2, v17, v18);
  return sub_10000BC74(outSystemSoundID);
}

uint64_t sub_100038B34()
{
  sub_10000BC74((v0 + 16));
  sub_10000BC74((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_100038B98@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VisualPinScannerViewModel();
  result = sub_10008CD1C();
  *a2 = result;
  return result;
}

__n128 sub_100038BF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100038C0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100038C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100038CAC()
{
  sub_10000BC74((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100038D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a4;
  v16 = a6;
  v11 = sub_10000F5C0(&v14);
  (*(*(a4 - 8) + 32))(v11, a1, a4);
  type metadata accessor for DeviceStatusViewModelProvider();
  v12 = swift_allocObject();
  sub_10000C3E0(&v14, v12 + 16);
  *(v12 + 56) = a2;
  *(v12 + 64) = a7;
  return v12;
}

uint64_t sub_100038DB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();
}

uint64_t sub_100038E28(uint64_t a1)
{
  v3 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  v5 = __chkstk_darwin(v3 - 8, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v13 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000397B8(a1, v10);

  sub_10008CDBC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  sub_1000395D4(a1);
  v11 = type metadata accessor for ErrorInfo(0);
  LODWORD(a1) = (*(*(v11 - 8) + 48))(v7, 1, v11);
  result = sub_1000395D4(v7);
  if (a1 == 1)
  {
    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t sub_100038FC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_10008DDBC();
  v2[8] = sub_10008DDAC();
  v4 = sub_10008DD8C();

  return _swift_task_switch(sub_1000390B8, v4, v3);
}

uint64_t sub_1000390B8()
{
  v1 = v0[2];
  v2 = v0[3];

  *(v2 + 16) = v1;
  swift_errorRetain();
  swift_errorRetain();

  if (v1)
  {
    v3 = v0[6];
    sub_100054B14(v3);
    v4 = type metadata accessor for ErrorInfo(0);
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    if (v6(v3, 1, v4) == 1)
    {
      v7 = *(v0[3] + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider);
      v8 = v0[7];
      v9 = v0[5];
      if (v7)
      {
        v7(v0[2]);
        v10 = *(v5 + 56);
        v10(v9, 0, 1, v4);
        sub_10003963C(v9, v8);
      }

      else
      {
        v10 = *(v5 + 56);
        v10(v0[5], 1, 1, v4);
        sub_100054CF8(v8);
        if (v6(v9, 1, v4) != 1)
        {
          sub_1000395D4(v0[5]);
        }
      }

      v13 = v0[6];
      if (v6(v13, 1, v4) != 1)
      {
        sub_1000395D4(v13);
      }
    }

    else
    {
      sub_10003963C(v0[6], v0[7]);
      v10 = *(v5 + 56);
    }

    v14 = v0[7];
    v10(v14, 0, 1, v4);
    sub_100038E28(v14);
  }

  else
  {
    v11 = v0[4];
    v12 = type metadata accessor for ErrorInfo(0);
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_100038E28(v11);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100039374()
{

  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus__errorInfo;
  v2 = sub_100009C08(&qword_1000CBBC8, &qword_100093300);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100039828(*(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider), *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OperationStatus(uint64_t a1)
{
  result = qword_1000CBAD0;
  if (!qword_1000CBAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003948C(uint64_t a1)
{
  sub_100039530(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100039530(uint64_t a1)
{
  if (!qword_1000CBAE0)
  {
    sub_100007108(&unk_1000CBAE8, &qword_100093260);
    v1 = sub_10008CDCC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CBAE0);
    }
  }
}

uint64_t sub_100039594@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for OperationStatus(0);
  result = sub_10008CD1C();
  *a2 = result;
  return result;
}

uint64_t sub_1000395D4(uint64_t a1)
{
  v2 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003963C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000396A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();
}

uint64_t sub_100039720(uint64_t a1)
{
  v2 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1000397B8(a1, &v7 - v4);
  return sub_100038E28(v5);
}

uint64_t sub_1000397B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039828(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_100039838()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(CWFInterface) init];
    [v3 activate];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1000398B4()
{

  return swift_deallocClassInstance();
}

id sub_100039910()
{
  v0 = sub_10008DC2C();
  __chkstk_darwin(v0 - 8, v1);
  v2 = sub_100039838();
  v3 = [v2 SSID];

  if (v3)
  {
    v4 = sub_10008CA0C();
    v6 = v5;

    sub_10008DC1C();
    v7 = sub_10008DBFC();
    v9 = v8;
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v10 = sub_10008CCDC();
    sub_100009F94(v10, qword_1000D6D38);

    v11 = sub_10008CCBC();
    v12 = sub_10008DE1C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      v25 = v7;
      *v13 = 136380675;
      v26 = v9;
      sub_100009C08(&qword_1000C92F0, &qword_10008F430);
      v15 = sub_10008DC4C();
      v17 = sub_10000A2D8(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Current ssid name: %{private}s", v13, 0xCu);
      sub_10000BC74(v14);
    }

    else
    {
    }

    v25 = 0;
    v26 = 0;
    isa = sub_10008C9FC().super.isa;
    Password = CWFSecItemQueryPassword();

    v20 = sub_10008CCBC();
    v21 = sub_10008DE4C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67240192;
      *(v22 + 4) = Password;
      _os_log_impl(&_mh_execute_header, v20, v21, "Query WiFi password osstatus: %{public}d)", v22, 8u);
    }

    if (v25)
    {
      swift_unknownObjectRetain();
      v3 = sub_10008DBDC();
      sub_10000B408(v4, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_10000B408(v4, v6);
      v3 = 0;
    }
  }

  return v3;
}

BOOL sub_100039C60()
{
  v0 = sub_100039838();
  v1 = [v0 currentKnownNetworkProfile];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 nearbyShareableStatus];
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v3 = sub_10008CCDC();
  sub_100009F94(v3, qword_1000D6D38);
  v4 = sub_10008CCBC();
  v5 = sub_10008DE1C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    type metadata accessor for CWFNearbyShareableStatus(0);
    v8 = sub_10008DC4C();
    v10 = sub_10000A2D8(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Current network shareable status: %{public}s", v6, 0xCu);
    sub_10000BC74(v7);
  }

  return v2 < 2;
}

uint64_t sub_100039E04()
{
  v0 = sub_100039838();
  v1 = [v0 networkName];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_10008DBDC();

  return v2;
}

unint64_t sub_100039EDC()
{
  result = qword_1000CBC88;
  if (!qword_1000CBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBC88);
  }

  return result;
}

uint64_t sub_100039F30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_100039FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v52 = a2;
  v53 = a1;
  v66 = sub_10008CB6C();
  v5 = *(v66 - 8);
  __chkstk_darwin(v66, v6);
  v65 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10008C8AC();
  v8 = *(v64 - 8);
  __chkstk_darwin(v64, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnrolledDeviceRecord(0);
  v62 = *(v12 - 8);
  v63 = v12;
  v14 = __chkstk_darwin(v12, v13);
  v67 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = &v50 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v4;
  sub_10008CDAC();

  v20 = v72;
  v61 = v72[2];
  if (v61)
  {
    v21 = 0;
    v59 = enum case for Calendar.Component.year(_:);
    v57 = enum case for Calendar.Component.day(_:);
    v58 = enum case for Calendar.Component.month(_:);
    v55 = (v8 + 8);
    v56 = (v5 + 8);
    v22 = &_swiftEmptyArrayStorage;
    v54 = xmmword_100090C60;
    v60 = v72;
    while (1)
    {
      if (v21 >= v20[2])
      {
        __break(1u);
        return result;
      }

      v70 = v21;
      v71 = v22;
      v24 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v68 = *(v62 + 72);
      v69 = v24;
      sub_10003347C(v20 + v24 + v68 * v21, v18);
      v25 = v65;
      sub_10008CB4C();
      sub_100009C08(&qword_1000C9DE8, &qword_10008FE30);
      v26 = sub_10008CB5C();
      v27 = *(v26 - 8);
      v28 = v11;
      v29 = *(v27 + 72);
      v30 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v31 = v18;
      v32 = 2 * v29;
      v33 = swift_allocObject();
      *(v33 + 16) = v54;
      v34 = v33 + v30;
      v35 = *(v27 + 104);
      v35(v34, v59, v26);
      v36 = v34 + v29;
      v11 = v28;
      v35(v36, v58, v26);
      v37 = v34 + v32;
      v18 = v31;
      v35(v37, v57, v26);
      sub_10007F650(v33);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10008CB3C();

      (*v56)(v25, v66);
      v38 = sub_10008C88C();
      if (v39)
      {
        break;
      }

      if (v38 != v53)
      {
        break;
      }

      v40 = sub_10008C89C();
      if ((v41 & 1) != 0 || v40 != v52)
      {
        break;
      }

      v42 = sub_10008C86C();
      v44 = v43;
      (*v55)(v28, v64);
      v22 = v71;
      if ((v44 & 1) != 0 || v42 != v51)
      {
        goto LABEL_14;
      }

      result = sub_10003B214(v31);
      v20 = v60;
      v23 = v70;
LABEL_4:
      v21 = v23 + 1;
      if (v61 == v21)
      {
        goto LABEL_20;
      }
    }

    (*v55)(v28, v64);
    v22 = v71;
LABEL_14:
    sub_10003AE78(v31, v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v22;
    v20 = v60;
    v23 = v70;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000A98C(0, v22[2] + 1, 1);
      v22 = v72;
    }

    v47 = v68;
    v46 = v69;
    v49 = v22[2];
    v48 = v22[3];
    if (v49 >= v48 >> 1)
    {
      sub_10000A98C((v48 > 1), v49 + 1, 1);
      v22 = v72;
    }

    v22[2] = v49 + 1;
    result = sub_10003AE78(v67, v22 + v46 + v49 * v47);
    goto LABEL_4;
  }

  v22 = &_swiftEmptyArrayStorage;
LABEL_20:

  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v22;

  return sub_10008CDBC();
}

uint64_t sub_10003A588()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension29FakeEnrollmentHistoryProvider__enrolledDeviceRecords;
  v2 = sub_100009C08(&qword_1000CBDC0, &qword_1000934F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FakeEnrollmentHistoryProvider(uint64_t a1)
{
  result = qword_1000CBCC0;
  if (!qword_1000CBCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003A660(uint64_t a1)
{
  sub_10003A6FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10003A6FC(uint64_t a1)
{
  if (!qword_1000CBCD0)
  {
    sub_100007108(&unk_1000CBCD8, &qword_100096CA0);
    v1 = sub_10008CDCC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CBCD0);
    }
  }
}

uint64_t sub_10003A760(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_10003A780, v1, 0);
}

uint64_t sub_10003A780()
{
  swift_beginAccess();
  sub_100009C08(&qword_1000CBDC0, &qword_1000934F0);
  sub_10008CD8C();
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003A828(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *(type metadata accessor for EnrolledDeviceRecord(0) - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10003A8E4, v1, 0);
}

uint64_t sub_10003A8E4()
{
  sub_10003347C(v0[6], v0[9]);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = sub_10008CD9C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10003AF2C(0, v4[2] + 1, 1, v4, &qword_1000C92E8, &unk_10008F420, type metadata accessor for EnrolledDeviceRecord);
    *v3 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10003AF2C((v6 > 1), v7 + 1, 1, v4, &qword_1000C92E8, &unk_10008F420, type metadata accessor for EnrolledDeviceRecord);
    *v3 = v4;
  }

  v8 = v0[8];
  v9 = v0[9];
  v4[2] = v7 + 1;
  sub_10003AE78(v9, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7);
  v1(v0 + 2, 0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003AAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10003AACC, v3, 0);
}

uint64_t sub_10003AACC()
{
  sub_100039FA4(v0[2], v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10003AB50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10003AC1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = &_swiftEmptyArrayStorage;

  sub_10008CDBC();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10003ACCC(uint64_t a1)
{
  result = sub_10003ACF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003ACF4()
{
  result = qword_1000CBDB8;
  if (!qword_1000CBDB8)
  {
    type metadata accessor for FakeEnrollmentHistoryProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBDB8);
  }

  return result;
}

uint64_t sub_10003AD4C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v4;
  return result;
}

uint64_t sub_10003ADD0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_10003AE78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrolledDeviceRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_10003AF2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009C08(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10003B108(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009C08(&qword_1000C9348, &qword_10008F490);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10003B214(uint64_t a1)
{
  v2 = type metadata accessor for EnrolledDeviceRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10003B294()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller____lazy_storage___catOperationQueue;
  v2 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller____lazy_storage___catOperationQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller____lazy_storage___catOperationQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(CATSerialOperationQueue) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10003B308()
{
  v1 = v0;
  sub_10000BB24(&v0[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider], *&v0[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider + 24]);
  v2 = sub_100034A20();
  [v2 invalidate];

  v4.receiver = v1;
  v4.super_class = type metadata accessor for AXMEnroller(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for AXMEnroller(uint64_t a1)
{
  result = qword_1000CBEF0;
  if (!qword_1000CBEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B508(void *a1)
{
  v2 = v1;
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v48[-1] - v6;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v8 = sub_10008CCDC();
  sub_100009F94(v8, qword_1000D6D38);
  v9 = sub_10008CCBC();
  v10 = sub_10008DE1C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Fetch serial number operation finished", v11, 2u);
  }

  v12 = [a1 error];
  if (v12)
  {
    v13 = v12;
    v47 = sub_10008CCBC();
    v14 = sub_10008DE2C();

    if (os_log_type_enabled(v47, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v55 = v16;
      *v15 = 136446210;
      *&v51 = v13;
      v17 = v13;
      sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
      v18 = sub_10008DC4C();
      v20 = sub_10000A2D8(v18, v19, &v55);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v47, v14, "Fetch serial number operation finished with error: %{public}s", v15, 0xCu);
      sub_10000BC74(v16);
    }

    else
    {

      v21 = v47;
    }

    return;
  }

  if ([a1 resultObject])
  {
    sub_10008DF4C();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v55 = v51;
  v56 = v52;
  if (*(&v52 + 1))
  {
    sub_10003E148(0, &qword_1000CBF10, DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject_ptr);
    if (swift_dynamicCast())
    {
      v22 = v48[0];
      sub_10008C56C(v22, &v55);

      *&v51 = sub_10003E148(0, &qword_1000CBF18, DMTFetchAutomatedDeviceEnrollmentPrerequisitesRequest_ptr);
      sub_100009C08(&qword_1000CBF20, &qword_1000935D8);
      v23 = sub_10008DC4C();
      v25 = v24;
      sub_10003E190(&v55, &v51);
      v26 = sub_10008CCBC();
      v27 = sub_10008DE1C();
      sub_10003E1EC(&v55);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v28 = 136446466;
        v29 = sub_10000A2D8(v23, v25, &v50);

        *(v28 + 4) = v29;
        *(v28 + 12) = 2082;
        v51 = v55;
        v52 = v56;
        v53 = v57;
        v54 = v58;
        sub_10003E190(&v55, v48);
        v30 = sub_10008DC4C();
        v32 = sub_10000A2D8(v30, v31, &v50);

        *(v28 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s finished with result: %{public}s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v48[3] = &type metadata for DMTResultBackedADEPrerequisites;
      v48[4] = &off_1000C2CF0;
      v39 = swift_allocObject();
      v48[0] = v39;
      v40 = v56;
      v39[1] = v55;
      v39[2] = v40;
      v41 = v58;
      v39[3] = v57;
      v39[4] = v41;
      v49 = 0;
      sub_10003E190(&v55, &v51);
      sub_10008CD3C();
      v42 = sub_10008DDEC();
      (*(*(v42 - 8) + 56))(v7, 1, 1, v42);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *(v43 + 32) = v2;
      v44 = v56;
      *(v43 + 40) = v55;
      *(v43 + 56) = v44;
      v45 = v58;
      *(v43 + 72) = v57;
      *(v43 + 88) = v45;
      v46 = v2;
      sub_10007B228(0, 0, v7, &unk_1000935E8, v43);

      sub_10003D2C8(v48);
      return;
    }
  }

  else
  {
    sub_10000C3F8(&v55, &qword_1000C9338, &qword_10008F488);
  }

  v33 = a1;
  v34 = sub_10008CCBC();
  v35 = sub_10008DE2C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v37 = v33;
    v38 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "Unexpected resultObject from %@", v36, 0xCu);
    sub_10000C3F8(v37, &qword_1000C9308, &qword_1000935D0);
  }
}

uint64_t sub_10003BBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1000092CC;

  return sub_10003D42C(a5, a4);
}

uint64_t sub_10003BD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[45] = a4;
  v5[46] = v4;
  v5[43] = a2;
  v5[44] = a3;
  v5[42] = a1;
  return _swift_task_switch(sub_10003BD30, 0, 0);
}

id sub_10003BD30()
{
  v25 = v0;
  v1 = (*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_accountProvider);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BB24(v1, v2);
  (*(v3 + 16))(v2, v3);
  if (*(v0 + 24))
  {
    result = [objc_allocWithZone(DMTPerformAutomatedDeviceEnrollmentRequest) init];
    *(v0 + 376) = result;
    if (result)
    {
      v5 = result;
      v6 = *(v0 + 360);
      [result setAutomationBehavior:1];
      v7 = sub_10008DBCC();
      [v5 setNonce:v7];

      v8 = *(v0 + 96);
      *(v0 + 160) = *(v0 + 80);
      *(v0 + 176) = v8;
      *(v0 + 192) = *(v0 + 112);
      v9 = *(v0 + 64);
      *(v0 + 128) = *(v0 + 48);
      *(v0 + 144) = v9;
      sub_10002137C(v0 + 128, v0 + 200);
      sub_10000C3F8(v0 + 16, &unk_1000C90E8, &qword_10008F350);
      v10 = sub_10008DBCC();
      [v5 setOrganizationName:v10];

      v11 = sub_100024538();
      sub_10000BC20(v0 + 128);
      [v5 setOrganizationType:v11];
      if (v6)
      {
        v12 = sub_10008DBCC();
      }

      else
      {
        v12 = 0;
      }

      v19 = *(v0 + 368);
      [v5 setMdmServerName:v12];

      v20 = *(v19 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_networkInfoStore + 8);
      ObjectType = swift_getObjectType();
      v23 = (*(v20 + 16) + **(v20 + 16));
      v22 = swift_task_alloc();
      *(v0 + 384) = v22;
      *v22 = v0;
      v22[1] = sub_10003C134;

      return v23(ObjectType, v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v13 = sub_10008CCDC();
    sub_100009F94(v13, qword_1000D6D38);
    v14 = sub_10008CCBC();
    v15 = sub_10008DE2C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000A2D8(0xD000000000000029, 0x800000010009A080, &v24);
      _os_log_impl(&_mh_execute_header, v14, v15, "We don't have an account in %s. Did the user sign out immediately after pairing a device?", v16, 0xCu);
      sub_10000BC74(v17);
    }

    *(v0 + 193) = 3;
    sub_10008CD2C();
    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

uint64_t sub_10003C134(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[49] = a1;
  v4[50] = a2;
  v4[51] = v2;

  if (v2)
  {
    v5 = sub_10003C9B8;
  }

  else
  {
    v5 = sub_10003C24C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003C24C()
{
  v1 = *(v0 + 400);
  if (v1)
  {
    if (v1 == 1)
    {
      v10 = *(v0 + 392);
      v11 = *(v0 + 376);
      [v11 setNetworkConfiguration:3];
      v12 = sub_10008DBCC();
      v13 = sub_10008DBCC();
      v14 = [objc_opt_self() credentialWithNetworkName:v12 credential:v13];

      [v11 setNetworkCredential:v14];
      sub_10002D980(v10, 1uLL);
      goto LABEL_10;
    }

    if (v1 != 2)
    {
      v2 = (*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_fileSystemStore);
      *(v0 + 416) = *v2;
      v3 = v2[1];
      *(v0 + 424) = v3;
      *(v0 + 432) = swift_getObjectType();
      *(v0 + 440) = *(v3 + 24);
      *(v0 + 448) = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xA2EC000000000000;
      v4 = sub_10008DD8C();
      v6 = v5;
      v7 = sub_10003C5F8;
      v8 = v4;
      v9 = v6;

      return _swift_task_switch(v7, v8, v9);
    }
  }

  else
  {
    sub_10002D980(*(v0 + 392), 0);
  }

  v15 = *(v0 + 376);
  v16 = (*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_currentNetworkPrimitives);
  v17 = v16[3];
  v18 = v16[4];
  sub_10000BB24(v16, v17);
  (*(v18 + 8))(v17, v18);
  v19 = v16[3];
  v20 = v16[4];
  sub_10000BB24(v16, v19);
  (*(v20 + 16))(v19, v20);
  [v15 setNetworkConfiguration:1];
  v21 = sub_10008DBCC();

  v22 = sub_10008DBCC();

  v14 = [objc_opt_self() credentialWithNetworkName:v21 credential:v22];

  [v15 setNetworkCredential:v14];
LABEL_10:

  v23 = *(v0 + 376);
  sub_10000BB24((*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider), *(*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider + 24));
  v24 = sub_100034A20();
  v25 = [v24 prepareTaskOperationForRequest:v23];

  if (!v25)
  {
    __break(1u);
    return _swift_task_switch(v7, v8, v9);
  }

  v26 = *(v0 + 376);
  v28 = *(v0 + 352);
  v27 = *(v0 + 360);
  v30 = *(v0 + 336);
  v29 = *(v0 + 344);
  [v25 addTarget:*(v0 + 368) selector:"enrollmentOperationDidFinish:" forOperationEvents:6];
  v31 = sub_10003B294();
  [v31 addOperation:v25];

  *(v0 + 272) = v30;
  *(v0 + 280) = v29;
  *(v0 + 288) = v28;
  *(v0 + 296) = v27;
  *(v0 + 312) = 1;

  sub_10008CD3C();

  sub_10003D2C8(v0 + 272);
  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10003C5F8()
{
  v1 = v0[55];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[51];
  v6 = v0[49];
  v5 = v0[50];
  v7 = sub_10003D31C();
  v8 = sub_10003D370();
  v1(&type metadata for Data, v6, v5, &type metadata for Data, v7, v8, v2, v3);
  v0[57] = v4;
  if (v4)
  {
    v9 = sub_10003CAFC;
  }

  else
  {
    v9 = sub_10003C6D8;
  }

  return _swift_task_switch(v9, 0, 0);
}

void sub_10003C6D8()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  if (v1 >> 60 == 15)
  {
    sub_10003D3C4();
    swift_allocError();
    *v4 = 4;
    swift_willThrow();
    sub_10002D980(v3, v2);
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v5 = sub_10008CCDC();
    sub_100009F94(v5, qword_1000D6D38);
    v6 = sub_10008CCBC();
    v7 = sub_10008DE2C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "We don't have any network info to share, we shouldn't have gotten this far", v8, 2u);
    }

    v9 = *(v0 + 376);

    *(v0 + 194) = 4;
    sub_10008CD2C();
  }

  else
  {
    v10 = *(v0 + 376);
    v11 = *(v0 + 320);
    isa = sub_10008C9FC().super.isa;
    [v10 setNetworkPayload:isa];

    [v10 setNetworkConfiguration:2];
    sub_10002D980(v3, v2);
    sub_10003D418(v11, v1);
    v13 = *(v0 + 376);
    sub_10000BB24((*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider), *(*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider + 24));
    v14 = sub_100034A20();
    v15 = [v14 prepareTaskOperationForRequest:v13];

    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = *(v0 + 376);
    v18 = *(v0 + 352);
    v17 = *(v0 + 360);
    v20 = *(v0 + 336);
    v19 = *(v0 + 344);
    [v15 addTarget:*(v0 + 368) selector:"enrollmentOperationDidFinish:" forOperationEvents:6];
    v21 = sub_10003B294();
    [v21 addOperation:v15];

    *(v0 + 272) = v20;
    *(v0 + 280) = v19;
    *(v0 + 288) = v18;
    *(v0 + 296) = v17;
    *(v0 + 312) = 1;

    sub_10008CD3C();

    sub_10003D2C8(v0 + 272);
  }

  v22 = *(v0 + 8);

  v22();
}

uint64_t sub_10003C9B8()
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_10008CCDC();
  sub_100009F94(v1, qword_1000D6D38);
  v2 = sub_10008CCBC();
  v3 = sub_10008DE2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "We don't have any network info to share, we shouldn't have gotten this far", v4, 2u);
  }

  v5 = *(v0 + 376);

  *(v0 + 194) = 4;
  sub_10008CD2C();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10003CAFC()
{
  sub_10002D980(*(v0 + 392), *(v0 + 400));
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_10008CCDC();
  sub_100009F94(v1, qword_1000D6D38);
  v2 = sub_10008CCBC();
  v3 = sub_10008DE2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "We don't have any network info to share, we shouldn't have gotten this far", v4, 2u);
  }

  v5 = *(v0 + 376);

  *(v0 + 194) = 4;
  sub_10008CD2C();

  v6 = *(v0 + 8);

  return v6();
}

void sub_10003CC48(void *a1)
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Enrollment operation finished", v5, 2u);
  }

  v6 = [a1 error];
  if (v6)
  {
    v7 = v6;
    oslog = sub_10008CCBC();
    v8 = sub_10008DE2C();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v16[0] = v10;
      *v9 = 136446210;
      v11 = v7;
      sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
      v12 = sub_10008DC4C();
      v14 = sub_10000A2D8(v12, v13, v16);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Enrollment operation failed with error: %{public}s", v9, 0xCu);
      sub_10000BC74(v10);
    }

    else
    {
    }
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v18 = 2;
    sub_10008CD3C();
    sub_10003D2C8(v16);
    LOBYTE(v16[0]) = 5;
    sub_10008CD2C();
  }
}

uint64_t sub_10003CF58(uint64_t a1)
{
  result = type metadata accessor for Device(319);
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

void sub_10003D01C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(DMTFetchAutomatedDeviceEnrollmentPrerequisitesRequest) init];
  if (v2)
  {
    v3 = v2;
    sub_10000BB24((v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider), *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider + 24));
    v4 = sub_100034A20();
    v5 = [v4 prepareTaskOperationForRequest:v3];

    if (v5)
    {
      v9[4] = sub_10003D1B8;
      v9[5] = 0;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_100077134;
      v9[3] = &unk_1000C0978;
      v6 = _Block_copy(v9);
      v7 = v5;
      sub_10003D2B8(sub_10003D1B8, 0);

      [v7 setCompletionBlock:v6];
      _Block_release(v6);

      [v7 addTarget:v1 selector:"fetchADEPrerequisitesOperationDidFinish:" forOperationEvents:6];
      v8 = sub_10003B294();
      [v8 addOperation:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10003D1B8()
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10008CCDC();
  sub_100009F94(v0, qword_1000D6D38);
  oslog = sub_10008CCBC();
  v1 = sub_10008DE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Serial number request completed", v2, 2u);
  }
}

uint64_t sub_10003D2A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003D2B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10003D31C()
{
  result = qword_1000CDE10;
  if (!qword_1000CDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDE10);
  }

  return result;
}

unint64_t sub_10003D370()
{
  result = qword_1000CBF00;
  if (!qword_1000CBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF00);
  }

  return result;
}

unint64_t sub_10003D3C4()
{
  result = qword_1000CBF08;
  if (!qword_1000CBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF08);
  }

  return result;
}

uint64_t sub_10003D418(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000B408(result, a2);
  }

  return result;
}

uint64_t sub_10003D42C(_OWORD *a1, uint64_t a2)
{
  v2[29] = a2;
  v2[20] = &type metadata for DMTResultBackedADEPrerequisites;
  v2[21] = &off_1000C2CF0;
  v4 = swift_allocObject();
  v2[17] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v6 = a1[3];
  v4[3] = a1[2];
  v4[4] = v6;
  sub_10003E190(a1, (v2 + 2));

  return _swift_task_switch(sub_10003D4DC, 0, 0);
}

uint64_t sub_10003D4DC()
{
  v1 = (*(v0 + 232) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_mdmServerInfoStore);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BB24(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  *v4 = v0;
  v4[1] = sub_10003D614;

  return v6(v0 + 176, v2, v3);
}

uint64_t sub_10003D614()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10003DA74;
  }

  else
  {
    v2 = sub_10003D728;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003D728()
{
  v1 = v0[29];
  v2 = sub_10000BB24(v0 + 17, v0[20]);
  v4 = *v2;
  v3 = v2[1];
  v5 = sub_10000BB24(v0 + 17, v0[20]);
  v6 = v5[2];
  v7 = v5[3];

  sub_10001BDCC(v4, v3, v6, v7, v0 + 22, (v0 + 10));
  v8 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_accountProvider + 24);
  v9 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_accountProvider + 32);
  sub_10000BB24((v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_accountProvider), v8);
  v12 = (*(v9 + 40) + **(v9 + 40));
  v10 = swift_task_alloc();
  v0[32] = v10;
  *v10 = v0;
  v10[1] = sub_10003D8B4;

  return v12(v0 + 10, v8, v9);
}

uint64_t sub_10003D8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;
  *(*v5 + 264) = v4;

  if (v4)
  {

    return _swift_task_switch(sub_10003DEA4, 0, 0);
  }

  else
  {
    v10[34] = a4;
    v10[35] = a2;
    sub_10000B93C((v10 + 10));
    v12 = swift_task_alloc();
    v10[36] = v12;
    *v12 = v11;
    v12[1] = sub_10003DD10;

    return sub_10003BD08(a1, a2, a3, a4);
  }
}

uint64_t sub_10003DA74()
{
  v14 = v0;
  v1 = *(v0 + 248);
  *(v0 + 216) = v1;
  swift_errorRetain();
  sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 209);
    if (v2 == 6)
    {

      *(v0 + 211) = 2;
      goto LABEL_11;
    }

    if (v2 == 7)
    {

      *(v0 + 212) = 0;
LABEL_11:
      sub_10008CD2C();
      goto LABEL_12;
    }
  }

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v3 = sub_10008CCDC();
  sub_100009F94(v3, qword_1000D6D38);
  swift_errorRetain();
  v4 = sub_10008CCBC();
  v5 = sub_10008DE2C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v0 + 224) = v1;
    swift_errorRetain();
    v8 = sub_10008DC4C();
    v10 = sub_10000A2D8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch the nonce with error: '%s'", v6, 0xCu);
    sub_10000BC74(v7);
  }

  *(v0 + 210) = 2;
  sub_10008CD2C();
LABEL_12:

  sub_10000BC74((v0 + 136));
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10003DD10()
{

  return _swift_task_switch(sub_10003DE44, 0, 0);
}

uint64_t sub_10003DE44()
{
  sub_10000BC74((v0 + 136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003DEA4()
{
  v14 = v0;
  sub_10000B93C(v0 + 80);
  v1 = *(v0 + 264);
  *(v0 + 216) = v1;
  swift_errorRetain();
  sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 209);
    if (v2 == 6)
    {

      *(v0 + 211) = 2;
      goto LABEL_11;
    }

    if (v2 == 7)
    {

      *(v0 + 212) = 0;
LABEL_11:
      sub_10008CD2C();
      goto LABEL_12;
    }
  }

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v3 = sub_10008CCDC();
  sub_100009F94(v3, qword_1000D6D38);
  swift_errorRetain();
  v4 = sub_10008CCBC();
  v5 = sub_10008DE2C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v0 + 224) = v1;
    swift_errorRetain();
    v8 = sub_10008DC4C();
    v10 = sub_10000A2D8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch the nonce with error: '%s'", v6, 0xCu);
    sub_10000BC74(v7);
  }

  *(v0 + 210) = 2;
  sub_10008CD2C();
LABEL_12:

  sub_10000BC74((v0 + 136));
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10003E148(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10003E240()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10003E290()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10003E2F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000092CC;

  return sub_10003BBEC(a1, v4, v5, v6, (v1 + 40));
}

uint64_t sub_10003E3B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003E3C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003E41C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_10003E478(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003E4A8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_10008E18C();
  }

  return 1;
}

uint64_t sub_10003E508(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64616F6C796170;
  if (v2 != 1)
  {
    v4 = 0x6572616873746F6ELL;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x69746E6564657263;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64616F6C796170;
  if (*a2 != 1)
  {
    v8 = 0x6572616873746F6ELL;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x69746E6564657263;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10008E18C();
  }

  return v11 & 1;
}

Swift::Int sub_10003E614()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10003E6C0(uint64_t a1)
{
  sub_10008DC8C();
}

Swift::Int sub_10003E758()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

unint64_t sub_10003E800@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003EFB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10003E830(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006C61;
  v4 = 0xE700000000000000;
  v5 = 0x64616F6C796170;
  if (v2 != 1)
  {
    v5 = 0x6572616873746F6ELL;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69746E6564657263;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10003E948(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4E64616F6C796170;
  }

  else
  {
    v3 = 0x546B726F7774656ELL;
  }

  if (v2)
  {
    v4 = 0xEB00000000657079;
  }

  else
  {
    v4 = 0xEB00000000656D61;
  }

  if (*a2)
  {
    v5 = 0x4E64616F6C796170;
  }

  else
  {
    v5 = 0x546B726F7774656ELL;
  }

  if (*a2)
  {
    v6 = 0xEB00000000656D61;
  }

  else
  {
    v6 = 0xEB00000000657079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10008E18C();
  }

  return v8 & 1;
}

Swift::Int sub_10003E9F8()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10003EA84(uint64_t a1)
{
  sub_10008DC8C();
}

Swift::Int sub_10003EAFC()
{
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10003EB84@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000BED80;
  v8._object = v3;
  v5 = sub_10008E06C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10003EBE4(uint64_t *a1@<X8>)
{
  v2 = 0x546B726F7774656ELL;
  if (*v1)
  {
    v2 = 0x4E64616F6C796170;
  }

  v3 = 0xEB00000000656D61;
  if (!*v1)
  {
    v3 = 0xEB00000000657079;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10003EC2C()
{
  if (*v0)
  {
    return 0x4E64616F6C796170;
  }

  else
  {
    return 0x546B726F7774656ELL;
  }
}

uint64_t sub_10003EC70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000BED80;
  v9._object = a2;
  v6 = sub_10008E06C(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10003ECE0(uint64_t a1)
{
  v2 = sub_10003F3D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003ED1C(uint64_t a1)
{
  v2 = sub_10003F3D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003ED68(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009C08(&qword_1000CBF48, &qword_1000936E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v12 - v9;
  sub_10000BB24(a1, a1[3]);
  sub_10003F3D4();
  sub_10008E24C();
  if (!a3)
  {
    v13 = 0;
    sub_10003F4D0();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v15 = 2;
    v14 = 0;
    sub_10003F4D0();
LABEL_5:
    sub_10008E14C();
    return (*(v7 + 8))(v10, v6);
  }

  v18 = 1;
  v17 = 0;
  sub_10003F4D0();
  sub_10008E14C();
  if (!v3)
  {
    v16 = 1;
    sub_10008E12C();
    return (*(v7 + 8))(v10, v6);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10003EF6C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10003F000(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_10003EFB4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BED18;
  v6._object = a2;
  v4 = sub_10008E06C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003F000(void *a1)
{
  v3 = sub_100009C08(&qword_1000CBF28, &qword_1000936D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v14 - v6;
  v8 = a1[3];
  sub_10000BB24(a1, v8);
  sub_10003F3D4();
  sub_10008E23C();
  if (!v1)
  {
    v17 = 0;
    sub_10003F428();
    sub_10008E0DC();
    if (v18 && v18 == 1)
    {
      v16 = 1;
      v8 = sub_10008E0BC();
      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v10 = sub_10008CCDC();
      sub_100009F94(v10, qword_1000D6D38);
      v11 = sub_10008CCBC();
      v12 = sub_10008DE1C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v15 = v11;
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v15, v12, "Decoded network type is networkPayload)", v13, 2u);
        v11 = v15;
      }

      (*(v4 + 8))(v7, v3);
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v8 = 0;
    }
  }

  sub_10000BC74(a1);
  return v8;
}

unint64_t sub_10003F3D4()
{
  result = qword_1000CBF30;
  if (!qword_1000CBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF30);
  }

  return result;
}

unint64_t sub_10003F428()
{
  result = qword_1000CBF38;
  if (!qword_1000CBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF38);
  }

  return result;
}

unint64_t sub_10003F47C()
{
  result = qword_1000CBF40;
  if (!qword_1000CBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF40);
  }

  return result;
}

unint64_t sub_10003F4D0()
{
  result = qword_1000CBF50;
  if (!qword_1000CBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF50);
  }

  return result;
}

unint64_t sub_10003F558()
{
  result = qword_1000CBF58;
  if (!qword_1000CBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF58);
  }

  return result;
}

unint64_t sub_10003F5B0()
{
  result = qword_1000CBF60;
  if (!qword_1000CBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF60);
  }

  return result;
}

unint64_t sub_10003F608()
{
  result = qword_1000CBF68;
  if (!qword_1000CBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF68);
  }

  return result;
}

unint64_t sub_10003F660()
{
  result = qword_1000CBF70;
  if (!qword_1000CBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF70);
  }

  return result;
}

unint64_t sub_10003F6B4()
{
  result = qword_1000CBF78;
  if (!qword_1000CBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF78);
  }

  return result;
}

uint64_t sub_10003F708()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10003F764()
{
  sub_100009C08(&qword_1000CD6C0, &unk_100093A00);
  sub_10003F80C();
  return sub_10008CDDC();
}

uint64_t sub_10003F7C0(double a1)
{

  sub_10008CD5C();
}

unint64_t sub_10003F80C()
{
  result = qword_1000CC038;
  if (!qword_1000CC038)
  {
    sub_100007108(&qword_1000CD6C0, &unk_100093A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC038);
  }

  return result;
}

uint64_t sub_10003F870()
{
  result = sub_10008D8AC();
  qword_1000D6DA8 = result;
  return result;
}

uint64_t sub_10003F8B0()
{
  result = sub_10008D8AC();
  qword_1000D6DB0 = result;
  return result;
}

uint64_t sub_10003F8E8()
{
  result = sub_10008D8AC();
  qword_1000D6DB8 = result;
  return result;
}

uint64_t sub_10003F920()
{
  result = sub_10008D8AC();
  qword_1000D6DC0 = result;
  return result;
}

uint64_t sub_10003F958(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003F970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 33))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003F9C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10003FA28(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003FA60(void *a1)
{
  v2 = v1;
  v4 = sub_100009C08(&qword_1000CC088, &qword_100093B20);
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4, v5);
  v31 = &v27 - v6;
  v7 = sub_100009C08(&qword_1000CC090, &qword_100093B28);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7, v8);
  v10 = &v27 - v9;
  v11 = sub_100009C08(&qword_1000CC098, &qword_100093B30);
  v27 = *(v11 - 8);
  v28 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v27 - v13;
  v15 = sub_100009C08(&qword_1000CC0A0, &qword_100093B38);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v27 - v18;
  sub_10000BB24(a1, a1[3]);
  sub_100040B68();
  sub_10008E24C();
  v20 = v2[1];
  if (v20 == 1)
  {
    LOBYTE(v34) = 1;
    sub_100040C10();
    sub_10008E0FC();
    (*(v29 + 8))(v10, v30);
    return (*(v16 + 8))(v19, v15);
  }

  if (!v20)
  {
    LOBYTE(v34) = 0;
    sub_100040C64();
    sub_10008E0FC();
    (*(v27 + 8))(v14, v28);
    return (*(v16 + 8))(v19, v15);
  }

  LODWORD(v30) = *(v2 + 32);
  v23 = v2[2];
  v22 = v2[3];
  v24 = *v2;
  LOBYTE(v34) = 2;
  sub_100040BBC();
  v25 = v31;
  sub_10008E0FC();
  v34 = v24;
  v35 = v20;
  v36 = v23;
  v37 = v22;
  v38 = v30;
  sub_100023694();
  v26 = v33;
  sub_10008E14C();
  (*(v32 + 8))(v25, v26);
  return (*(v16 + 8))(v19, v15);
}

unint64_t sub_10003FE4C()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x6369666963657073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_10003FEB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100040430(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003FEDC(uint64_t a1)
{
  v2 = sub_100040B68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003FF18(uint64_t a1)
{
  v2 = sub_100040B68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003FF60@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10003FF90(uint64_t a1)
{
  v2 = sub_100040C10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003FFCC(uint64_t a1)
{
  v2 = sub_100040C10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100040024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65767265736D646DLL && a2 == 0xE900000000000072)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10008E18C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000400B4(uint64_t a1)
{
  v2 = sub_100040BBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000400F0(uint64_t a1)
{
  v2 = sub_100040BBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004012C(uint64_t a1)
{
  v2 = sub_100040C64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100040168(uint64_t a1)
{
  v2 = sub_100040C64();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1000401A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100040250(v5, v7);
}

double sub_1000401F0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100040554(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

BOOL sub_100040250(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 == 1)
  {
    return *(a2 + 8) == 1;
  }

  if (!v3)
  {
    return !*(a2 + 8);
  }

  v5 = *(a2 + 8);
  if (v5 < 2)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *a1 == *a2 && v3 == v5;
  if (!v12 && (sub_10008E18C() & 1) == 0 || (v6 != v9 || v7 != v10) && (sub_10008E18C() & 1) == 0)
  {
    return 0;
  }

  v13 = 0x52414C55474552;
  if (!v8)
  {
    v15 = 0xE700000000000000;
    v14 = 0x52414C55474552;
    if (v11)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v8 != 1)
  {
    v14 = 0x444D5F44554F4C43;
    v15 = 0xE90000000000004DLL;
    if (v11)
    {
      goto LABEL_22;
    }

LABEL_25:
    v16 = 0xE700000000000000;
    goto LABEL_27;
  }

  v14 = 0xD000000000000013;
  v15 = 0x80000001000979F0;
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v11 == 1)
  {
    v13 = 0xD000000000000013;
    v16 = 0x80000001000979F0;
  }

  else
  {
    v13 = 0x444D5F44554F4C43;
    v16 = 0xE90000000000004DLL;
  }

LABEL_27:
  if (v14 == v13 && v15 == v16)
  {

    return 1;
  }

  v17 = sub_10008E18C();

  return (v17 & 1) != 0;
}

uint64_t sub_100040430(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_10008E18C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010009A210 == a2 || (sub_10008E18C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369666963657073 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_10008E18C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100040554@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = sub_100009C08(&qword_1000CC040, &qword_100093AF8);
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  __chkstk_darwin(v4, v6);
  v54 = &v45 - v7;
  v8 = sub_100009C08(&qword_1000CC048, &qword_100093B00);
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8, v9);
  v11 = &v45 - v10;
  v12 = sub_100009C08(&qword_1000CC050, &qword_100093B08);
  v53 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v15 = &v45 - v14;
  v16 = sub_100009C08(&qword_1000CC058, &qword_100093B10);
  v55 = *(v16 - 8);
  __chkstk_darwin(v16, v17);
  v19 = &v45 - v18;
  v20 = a1[3];
  v61 = a1;
  sub_10000BB24(a1, v20);
  sub_100040B68();
  sub_10008E23C();
  if (v2)
  {
    return sub_10000BC74(v61);
  }

  v46 = v12;
  v47 = 0;
  v22 = v53;
  v21 = v54;
  v23 = v19;
  v24 = sub_10008E0EC();
  v25 = *(v24 + 16);
  if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 3) : (v27 = 1), v27))
  {
    v28 = sub_10008DFEC();
    swift_allocError();
    v29 = v16;
    v31 = v30;
    sub_100009C08(&qword_1000CC068, &qword_100093B18);
    *v31 = &type metadata for MDMServerInfo;
    sub_10008E08C();
    sub_10008DFDC();
    (*(*(v28 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v28);
    swift_willThrow();
    (*(v55 + 8))(v23, v29);
    goto LABEL_17;
  }

  if (!*(v24 + 32))
  {
    LOBYTE(v56) = 0;
    sub_100040C64();
    v34 = v47;
    sub_10008E07C();
    if (!v34)
    {
      (*(v22 + 8))(v15, v46);
      (*(v55 + 8))(v19, v16);
      swift_unknownObjectRelease();
      v39 = 0;
      v43 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v36 = v52;
      goto LABEL_22;
    }

    (*(v55 + 8))(v19, v16);
LABEL_17:
    swift_unknownObjectRelease();
    return sub_10000BC74(v61);
  }

  if (v26 == 1)
  {
    LOBYTE(v56) = 1;
    sub_100040C10();
    v32 = v47;
    sub_10008E07C();
    v33 = v55;
    if (v32)
    {
      goto LABEL_16;
    }

    (*(v48 + 8))(v11, v49);
    (*(v33 + 8))(v23, v16);
    swift_unknownObjectRelease();
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 1;
    v36 = v52;
  }

  else
  {
    LOBYTE(v56) = 2;
    sub_100040BBC();
    v35 = v47;
    sub_10008E07C();
    v36 = v52;
    v37 = v55;
    if (v35)
    {
LABEL_16:
      (*(v55 + 8))(v23, v16);
      goto LABEL_17;
    }

    sub_100023544();
    v44 = v50;
    sub_10008E0DC();
    (*(v51 + 8))(v21, v44);
    (*(v37 + 8))(v23, v16);
    swift_unknownObjectRelease();
    v39 = v56;
    v43 = v57;
    v40 = v58;
    v41 = v59;
    v42 = v60;
  }

LABEL_22:
  result = sub_10000BC74(v61);
  *v36 = v39;
  *(v36 + 8) = v43;
  *(v36 + 16) = v40;
  *(v36 + 24) = v41;
  *(v36 + 32) = v42;
  return result;
}

unint64_t sub_100040B68()
{
  result = qword_1000CC060;
  if (!qword_1000CC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC060);
  }

  return result;
}

unint64_t sub_100040BBC()
{
  result = qword_1000CC070;
  if (!qword_1000CC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC070);
  }

  return result;
}

unint64_t sub_100040C10()
{
  result = qword_1000CC078;
  if (!qword_1000CC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC078);
  }

  return result;
}

unint64_t sub_100040C64()
{
  result = qword_1000CC080;
  if (!qword_1000CC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC080);
  }

  return result;
}

unint64_t sub_100040CFC()
{
  result = qword_1000CC0A8;
  if (!qword_1000CC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0A8);
  }

  return result;
}

unint64_t sub_100040D54()
{
  result = qword_1000CC0B0;
  if (!qword_1000CC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0B0);
  }

  return result;
}

unint64_t sub_100040DAC()
{
  result = qword_1000CC0B8;
  if (!qword_1000CC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0B8);
  }

  return result;
}

unint64_t sub_100040E04()
{
  result = qword_1000CC0C0;
  if (!qword_1000CC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0C0);
  }

  return result;
}

unint64_t sub_100040E5C()
{
  result = qword_1000CC0C8;
  if (!qword_1000CC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0C8);
  }

  return result;
}

unint64_t sub_100040EB4()
{
  result = qword_1000CC0D0;
  if (!qword_1000CC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0D0);
  }

  return result;
}

unint64_t sub_100040F0C()
{
  result = qword_1000CC0D8;
  if (!qword_1000CC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0D8);
  }

  return result;
}

unint64_t sub_100040F64()
{
  result = qword_1000CC0E0;
  if (!qword_1000CC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0E0);
  }

  return result;
}

unint64_t sub_100040FBC()
{
  result = qword_1000CC0E8;
  if (!qword_1000CC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0E8);
  }

  return result;
}

unint64_t sub_100041014()
{
  result = qword_1000CC0F0;
  if (!qword_1000CC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0F0);
  }

  return result;
}

uint64_t sub_100041070()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_1000410E4()
{
  v1 = v0;

  sub_10008CE7C();

  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_didBecomeActiveNotificationObserver))
  {
    [v2 removeObserver:?];
  }

  v4 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_willResignActiveNotificationObserver);
  if (v4)
  {
    swift_unknownObjectRetain_n();
    [v3 removeObserver:v4];
    swift_unknownObjectRelease_n();
  }

  v5 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor__networkStatus;
  v6 = sub_100009C08(&qword_1000CB058, &qword_1000924D0);
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100041214()
{
  sub_1000410E4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NWPathMonitorBackedWiFiNetworkStatusMonitor(uint64_t a1)
{
  result = qword_1000CC140;
  if (!qword_1000CC140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000412C0(uint64_t a1)
{
  sub_100031780();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100041374(uint64_t a1)
{
  v3 = sub_100009C08(&qword_1000CB058, &qword_1000924D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &aBlock - v6;
  v8 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor__networkStatus;
  LOBYTE(aBlock) = 0;
  sub_10008CD7C();
  (*(v4 + 32))(v1 + v8, v7, v3);
  v9 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_didBecomeActiveNotificationObserver;
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_didBecomeActiveNotificationObserver) = 0;
  v10 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_willResignActiveNotificationObserver;
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_willResignActiveNotificationObserver) = 0;
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_isMonitoringWiFi) = 0;
  *(v1 + 16) = a1;
  v11 = objc_opt_self();

  v12 = [v11 defaultCenter];
  if (qword_1000C8D20 != -1)
  {
    swift_once();
  }

  v13 = qword_1000D6D98;
  v14 = objc_opt_self();
  v15 = [v14 mainQueue];
  v27 = sub_1000421A4;
  v28 = v1;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100077140;
  v26 = &unk_1000C0EA8;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 addObserverForName:v13 object:0 queue:v15 usingBlock:v16];
  _Block_release(v16);

  *(v1 + v9) = v17;
  swift_unknownObjectRelease();
  if (qword_1000C8D18 != -1)
  {
    swift_once();
  }

  v18 = qword_1000D6D90;
  v19 = [v14 mainQueue];
  v27 = sub_1000421C0;
  v28 = v1;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100077140;
  v26 = &unk_1000C0ED0;
  v20 = _Block_copy(&aBlock);

  v21 = [v12 addObserverForName:v18 object:0 queue:v19 usingBlock:v20];

  _Block_release(v20);
  *(v1 + v10) = v21;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10004170C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10008CE9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10008CEAC();
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for NWPath.Status.satisfied(_:))
  {
    swift_unownedRetainStrong();
    swift_getKeyPath();
    swift_getKeyPath();
    v11[12] = 1;
  }

  else if (v7 == enum case for NWPath.Status.unsatisfied(_:))
  {
    swift_unownedRetainStrong();
    swift_getKeyPath();
    swift_getKeyPath();
    v11[14] = 2;
  }

  else
  {
    v8 = enum case for NWPath.Status.requiresConnection(_:);
    v9 = v7;
    swift_unownedRetainStrong();
    swift_getKeyPath();
    swift_getKeyPath();
    if (v9 != v8)
    {
      v11[15] = 2;
      sub_10008CDBC();
      return (*(v3 + 8))(v6, v2);
    }

    v11[13] = 3;
  }

  return sub_10008CDBC();
}

void sub_100041910()
{
  v1 = v0;
  v2 = sub_10008DA6C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10008CE3C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v12 = sub_10008CCDC();
  sub_100009F94(v12, qword_1000D6D38);
  v13 = sub_10008CCBC();
  v14 = sub_10008DE1C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received didBecomeActiveNotification - Start network monitoring", v15, 2u);
  }

  v16 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_isMonitoringWiFi;
  if ((*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_isMonitoringWiFi) & 1) == 0)
  {
    (*(v8 + 104))(v11, enum case for NWInterface.InterfaceType.wifi(_:), v7);
    sub_10008CE8C();
    swift_allocObject();
    *(v1 + 16) = sub_10008CE5C();

    sub_1000167AC();
    (*(v3 + 104))(v6, enum case for DispatchQoS.QoSClass.userInteractive(_:), v2);
    v17 = sub_10008DE9C();
    (*(v3 + 8))(v6, v2);
    swift_unownedRetainStrong();

    swift_unownedRetain();
    swift_unownedRetain();

    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    sub_10003D2B8(sub_1000421D0, v18);
    sub_10008CE4C();

    swift_unownedRelease();

    sub_10008CE6C();

    *(v1 + v16) = 1;
  }
}

uint64_t sub_100041C60()
{
  v1 = sub_10008DA6C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000167AC();
  (*(v2 + 104))(v5, enum case for DispatchQoS.QoSClass.userInteractive(_:), v1);
  v6 = sub_10008DE9C();
  (*(v2 + 8))(v5, v1);
  swift_unownedRetainStrong();

  swift_unownedRetain();
  swift_unownedRetain();

  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  sub_10003D2B8(sub_1000420A0, v7);
  sub_10008CE4C();

  swift_unownedRelease();

  sub_10008CE6C();
}

void sub_100041E08()
{
  v1 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received willResignActiveNotification - Stop network monitoring", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_isMonitoringWiFi;
  if (*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_isMonitoringWiFi) == 1)
  {

    sub_10008CE7C();

    *(v1 + v6) = 0;
  }
}

uint64_t sub_100041F14()
{
  v0 = sub_100009C08(&qword_1000CB050, &unk_100093FD0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&qword_1000CB058, &qword_1000924D0);
  sub_10008CD8C();
  swift_endAccess();
  sub_100031B40();
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100042068()
{
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000420A8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v4;
  return result;
}

uint64_t sub_10004212C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_1000421A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000421D4()
{
  sub_10000BE8C(v0 + 56, v19);
  sub_10000BE8C(v0 + 16, v18);
  v1 = sub_10000BCC0(v18, v18[3]);
  __chkstk_darwin(v1, v1);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v3);
  v5 = *v3;
  v6 = type metadata accessor for ConcreteVPScannerViewFinderMetricsProvider();
  v17[3] = v6;
  v17[4] = &off_1000C0C30;
  v17[0] = v5;
  type metadata accessor for VisualPinScannerViewModel();
  v7 = swift_allocObject();
  v8 = sub_10000BCC0(v17, v6);
  __chkstk_darwin(v8, v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v15 = v6;
  v16 = &off_1000C0C30;
  *&v14 = v12;
  sub_10000C3E0(v19, v7 + 16);
  sub_10000C3E0(&v14, v7 + 56);
  sub_10000BC74(v17);
  sub_10000BC74(v18);
  return v7;
}

uint64_t sub_1000423EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009C08(&qword_1000C9E80, &unk_10008FF30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000424BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009C08(&qword_1000C9E80, &unk_10008FF30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SettingsView(uint64_t a1)
{
  result = qword_1000CC3A0;
  if (!qword_1000CC3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000425B8(uint64_t a1)
{
  sub_100017558();
  if (v1 <= 0x3F)
  {
    sub_10004266C(319);
    if (v2 <= 0x3F)
    {
      sub_1000175A8(319);
      if (v3 <= 0x3F)
      {
        sub_100017694();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10004266C(uint64_t a1)
{
  if (!qword_1000CC3B0)
  {
    type metadata accessor for SettingsViewModel(255);
    sub_100049090(&qword_1000C9BF8, type metadata accessor for SettingsViewModel, &unk_1000919B4);
    v1 = sub_10008D08C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CC3B0);
    }
  }
}

uint64_t sub_10004271C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10008D29C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  __chkstk_darwin(v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for SettingsView(0);
  sub_10000C314(v1 + *(v12 + 24), v11, &unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10008CFDC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_10008DE3C();
    v15 = sub_10008D52C();
    sub_10008CCAC();

    sub_10008D28C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_100042924(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for SettingsView(0);
  v37 = *(v2 - 8);
  __chkstk_darwin(v2 - 8, v3);
  v38 = v4;
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009C08(&qword_1000CC3E8, &qword_1000940A0);
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5, v6);
  v8 = &v33 - v7;
  v34 = sub_100009C08(&qword_1000CC3F0, &qword_1000940A8);
  __chkstk_darwin(v34, v9);
  v11 = &v33 - v10;
  v40 = v1;
  v43 = v1;
  v42 = sub_100009C08(&qword_1000CC3F8, &qword_1000940B0);
  v12 = sub_100007108(&qword_1000CC400, &qword_1000940B8);
  v13 = sub_100007108(&qword_1000CC408, &qword_1000940C0);
  v14 = sub_100007108(&qword_1000CC410, &qword_1000940C8);
  v15 = sub_100007108(&qword_1000CC418, &qword_1000940D0);
  v16 = sub_10001121C(&qword_1000CC420, &qword_1000CC410, &qword_1000940C8, &protocol conformance descriptor for VStack<A>);
  v17 = sub_100007108(&qword_1000CC428, &qword_1000940D8);
  v18 = sub_10001121C(&qword_1000CC430, &qword_1000CC428, &qword_1000940D8, &protocol conformance descriptor for ToolbarItemGroup<A>);
  v44 = v17;
  v45 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v14;
  v45 = v15;
  v46 = v16;
  v47 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_100019E50();
  v44 = v13;
  v45 = &type metadata for String;
  v46 = v20;
  v47 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v44 = v12;
  v45 = v22;
  swift_getOpaqueTypeConformance2();
  sub_10008D04C();
  v23 = sub_10008DBCC();
  v24 = [objc_opt_self() colorNamed:v23];

  if (v24)
  {
    v25 = sub_10008D80C();
    v26 = sub_10008D53C();
    (*(v35 + 32))(v11, v8, v36);
    v27 = &v11[*(v34 + 36)];
    *v27 = v25;
    v27[8] = v26;
    v28 = v39;
    sub_100048280(v40, v39);
    v29 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v30 = swift_allocObject();
    sub_1000482E8(v28, v30 + v29);
    v31 = v41;
    sub_100048364(v11, v41);
    v32 = (v31 + *(sub_100009C08(&qword_1000CC438, &unk_1000940E8) + 36));
    *v32 = sub_10004834C;
    v32[1] = v30;
    v32[2] = 0;
    v32[3] = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100042D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_10008CB2C();
  __chkstk_darwin(v3 - 8, v4);
  v32[1] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10008DBBC();
  __chkstk_darwin(v6 - 8, v7);
  v32[0] = sub_100009C08(&qword_1000CC410, &qword_1000940C8);
  __chkstk_darwin(v32[0], v8);
  v10 = v32 - v9;
  v11 = sub_100009C08(&qword_1000CC408, &qword_1000940C0);
  v33 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v14 = v32 - v13;
  v15 = sub_100009C08(&qword_1000CC400, &qword_1000940B8);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  __chkstk_darwin(v15, v17);
  v19 = v32 - v18;
  *v10 = sub_10008D2EC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v20 = sub_100009C08(&qword_1000CC440, &qword_100094100);
  sub_100043238(a1, &v10[*(v20 + 44)]);
  v37 = a1;
  v21 = sub_100009C08(&qword_1000CC418, &qword_1000940D0);
  v22 = sub_10001121C(&qword_1000CC420, &qword_1000CC410, &qword_1000940C8, &protocol conformance descriptor for VStack<A>);
  v23 = sub_100007108(&qword_1000CC428, &qword_1000940D8);
  v24 = sub_10001121C(&qword_1000CC430, &qword_1000CC428, &qword_1000940D8, &protocol conformance descriptor for ToolbarItemGroup<A>);
  v38 = v23;
  v39 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v32[0];
  sub_10008D79C();
  sub_10000C3F8(v10, &qword_1000CC410, &qword_1000940C8);
  sub_10008DB5C();
  sub_10008CB1C();
  v42 = sub_10008DC3C();
  v43 = v27;
  v38 = v26;
  v39 = v21;
  v40 = v22;
  v41 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_100019E50();
  sub_10008D71C();

  (*(v33 + 8))(v14, v11);
  v38 = v11;
  v39 = &type metadata for String;
  v40 = v28;
  v41 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v34;
  sub_10008D74C();
  return (*(v35 + 8))(v19, v30);
}

uint64_t sub_100043238@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = sub_100009C08(&qword_1000CC468, &qword_100094170);
  v4 = v3 - 8;
  v6 = __chkstk_darwin(v3, v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v10 = &v28 - v9;
  v11 = sub_100009C08(&qword_1000CC470, &qword_100094178);
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v28 - v18;
  v33 = a1;
  sub_100009C08(&qword_1000CC478, &qword_100094180);
  sub_10001121C(&qword_1000CC480, &qword_1000CC478, &qword_100094180, &protocol conformance descriptor for TupleView<A>);
  v29 = v19;
  sub_10008D61C();
  v32 = a1;
  sub_100009C08(&qword_1000CC488, &qword_100094188);
  sub_100048508();
  sub_10008D61C();
  sub_10008D9FC();
  sub_10008CF9C();
  v20 = &v10[*(v4 + 44)];
  v21 = v35;
  *v20 = v34;
  *(v20 + 1) = v21;
  *(v20 + 2) = v36;
  v22 = *(v12 + 16);
  v22(v16, v19, v11);
  v23 = v30;
  sub_10000C314(v10, v30, &qword_1000CC468, &qword_100094170);
  v24 = v31;
  v22(v31, v16, v11);
  v25 = sub_100009C08(&qword_1000CC4A8, &qword_100094198);
  sub_10000C314(v23, &v24[*(v25 + 48)], &qword_1000CC468, &qword_100094170);
  sub_10000C3F8(v10, &qword_1000CC468, &qword_100094170);
  v26 = *(v12 + 8);
  v26(v29, v11);
  sub_10000C3F8(v23, &qword_1000CC468, &qword_100094170);
  return (v26)(v16, v11);
}

uint64_t sub_100043578@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v113 = a2;
  v112 = sub_100009C08(&qword_1000CC4E0, &qword_100094240);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112, v3);
  v101 = &v101 - v4;
  v5 = sub_100009C08(&qword_1000CC4E8, &qword_100094248);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v128 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v121 = &v101 - v10;
  v127 = sub_100009C08(&qword_1000CC4F0, &qword_100094250);
  v130 = *(v127 - 8);
  v12 = __chkstk_darwin(v127, v11);
  v126 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v125 = &v101 - v15;
  v107 = sub_100009C08(&qword_1000CC4F8, &qword_100094258);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107, v16);
  v102 = &v101 - v17;
  v18 = sub_100009C08(&qword_1000CC500, &qword_100094260);
  v20 = __chkstk_darwin(v18 - 8, v19);
  v124 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v123 = &v101 - v23;
  v120 = sub_100009C08(&qword_1000CC508, &qword_100094268);
  v129 = *(v120 - 8);
  v25 = __chkstk_darwin(v120, v24);
  v119 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v122 = &v101 - v28;
  v29 = sub_10008CB2C();
  __chkstk_darwin(v29 - 8, v30);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10008DBBC();
  __chkstk_darwin(v33 - 8, v34);
  v118 = sub_100009C08(&qword_1000CC510, &qword_100094270);
  v117 = *(v118 - 8);
  v36 = __chkstk_darwin(v118, v35);
  v116 = &v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v38);
  v40 = &v101 - v39;
  sub_10008DB5C();
  sub_10008CB1C();
  v137 = sub_10008DC3C();
  v138 = v41;
  v42 = sub_100019E50();
  v137 = sub_10008D68C();
  v138 = v43;
  LOBYTE(v139) = v44 & 1;
  v140 = v45;
  v132 = a1;
  sub_100009C08(&qword_1000CC518, &qword_100094278);
  sub_1000487DC();
  v115 = v40;
  sub_10008D98C();
  sub_10008DB5C();
  sub_10008CB1C();
  v104 = v32;
  v137 = sub_10008DC3C();
  v138 = v46;
  v103 = v42;
  v137 = sub_10008D68C();
  v138 = v47;
  LOBYTE(v139) = v48 & 1;
  v140 = v49;
  type metadata accessor for SettingsViewModel(0);
  sub_100049090(&qword_1000C9BF8, type metadata accessor for SettingsViewModel, &unk_1000919B4);
  v50 = sub_10008D15C();
  v52 = v51;
  v53 = a1[3];
  v54 = sub_10008CD0C();
  v133 = v50;
  v134 = v52;
  v135 = v54;
  v136 = v53;
  v114 = a1;
  v131 = a1;

  sub_100009C08(&qword_1000CC538, &qword_100094288);
  sub_100009C08(&qword_1000CC540, &unk_100094290);
  sub_10001121C(&qword_1000CC548, &qword_1000CC538, &qword_100094288, &protocol conformance descriptor for List<A, B>);
  sub_100048980(&qword_1000CC550, &qword_1000CC540, &unk_100094290, sub_1000488DC);
  sub_10008D99C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  if (!v137)
  {
    v55 = sub_10008D15C();
    v56 = v59;
    v57 = sub_10008CD0C();

    swift_retain_n();
    v58 = v53;
  }

  v105 = v58;
  v108 = v57;
  v110 = v55;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v109 = v56;
  if (v137 == 1)
  {
    __chkstk_darwin(v60, v61);
    sub_100009C08(&qword_1000CC5C0, &qword_100094360);
    sub_10001121C(&qword_1000CC5C8, &qword_1000CC5C0, &qword_100094360, &protocol conformance descriptor for Button<A>);
    v62 = v102;
    sub_10008D9AC();
    v66 = v106;
    v64 = v123;
    v65 = v107;
    (*(v106 + 32))(v123, v62, v107);
    v63 = 0;
  }

  else
  {
    v63 = 1;
    v64 = v123;
    v65 = v107;
    v66 = v106;
  }

  v67 = 1;
  (*(v66 + 56))(v64, v63, 1, v65);
  sub_10008DB5C();
  sub_10008CB1C();
  v137 = sub_10008DC3C();
  v138 = v68;
  v137 = sub_10008D68C();
  v138 = v69;
  LOBYTE(v139) = v70 & 1;
  v140 = v71;
  v72 = sub_10008D15C();
  v74 = v73;
  v75 = sub_10008CD0C();
  v133 = v72;
  v134 = v74;
  v135 = v75;
  v136 = v53;
  __chkstk_darwin(v75, v76);

  sub_100009C08(&qword_1000CC560, &qword_1000942E8);
  sub_100009C08(&qword_1000CC568, &qword_1000942F0);
  sub_10001121C(&qword_1000CC570, &qword_1000CC560, &qword_1000942E8, &protocol conformance descriptor for List<A, B>);
  sub_100048980(&qword_1000CC578, &qword_1000CC568, &qword_1000942F0, sub_100048A30);
  sub_10008D99C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v138 >= 2)
  {
    v77 = v112;
    v78 = v111;
    if (v138 != 2)
    {
      __chkstk_darwin(v137, v138);
      sub_100009C08(&qword_1000CC590, &qword_100094348);
      sub_100048B8C();
      v79 = v101;
      sub_10008D9AC();

      (*(v78 + 32))(v121, v79, v77);
      v67 = 0;
    }
  }

  else
  {
    sub_100048B2C(v137, v138, v139, v140);
    v77 = v112;
    v78 = v111;
  }

  v80 = v121;
  (*(v78 + 56))(v121, v67, 1, v77);
  v81 = *(v117 + 16);
  v82 = v116;
  v83 = v118;
  v81(v116, v115, v118);
  v84 = *(v129 + 16);
  v85 = v119;
  v86 = v120;
  v84(v119, v122, v120);
  sub_10000C314(v123, v124, &qword_1000CC500, &qword_100094260);
  v114 = *(v130 + 16);
  (v114)(v126, v125, v127);
  sub_10000C314(v80, v128, &qword_1000CC4E8, &qword_100094248);
  v87 = v113;
  v81(v113, v82, v83);
  v88 = sub_100009C08(&qword_1000CC588, &qword_100094340);
  v84(&v87[v88[12]], v85, v86);
  v89 = &v87[v88[16]];
  v90 = v110;
  v91 = v109;
  *v89 = v110;
  v89[1] = v91;
  v92 = v108;
  v93 = v105;
  v89[2] = v108;
  v89[3] = v93;
  sub_10000C314(v124, &v87[v88[20]], &qword_1000CC500, &qword_100094260);
  v94 = v127;
  (v114)(&v87[v88[24]], v126, v127);
  sub_10000C314(v128, &v87[v88[28]], &qword_1000CC4E8, &qword_100094248);
  sub_100048A8C(v90, v91, v92, v93);
  sub_100048ADC(v90, v91, v92, v93);
  sub_10000C3F8(v121, &qword_1000CC4E8, &qword_100094248);
  v95 = *(v130 + 8);
  v130 += 8;
  v95(v125, v94);
  sub_10000C3F8(v123, &qword_1000CC500, &qword_100094260);
  v96 = *(v129 + 8);
  v129 += 8;
  v97 = v120;
  v96(v122, v120);
  v98 = *(v117 + 8);
  v99 = v118;
  v98(v115, v118);
  sub_10000C3F8(v128, &qword_1000CC4E8, &qword_100094248);
  v95(v126, v127);
  sub_10000C3F8(v124, &qword_1000CC500, &qword_100094260);
  sub_100048ADC(v90, v91, v92, v93);
  v96(v119, v97);
  return (v98)(v116, v99);
}

void sub_10004464C(uint64_t a2@<X8>)
{
  v3 = sub_10008D2FC();
  v25 = 1;
  sub_100044844(&v17);
  v30 = v21;
  v31 = v22;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v32 = v23;
  v33[0] = v17;
  v33[1] = v18;
  v33[2] = v19;
  v33[3] = v20;
  v33[4] = v21;
  v33[5] = v22;
  v33[6] = v23;
  sub_10000C314(&v26, v16, &qword_1000CC668, &qword_1000944B8);
  sub_10000C3F8(v33, &qword_1000CC668, &qword_1000944B8);
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  v4 = v25;
  sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100091E50;
  v6 = sub_10008D54C();
  *(inited + 32) = v6;
  v7 = sub_10008D55C();
  *(inited + 33) = v7;
  v8 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v6)
  {
    v8 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v7)
  {
    v8 = sub_10008D57C();
  }

  sub_10008CF0C();
  v9 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v9;
  *(a2 + 113) = *&v24[96];
  v10 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v10;
  v11 = *&v24[48];
  *(a2 + 49) = *&v24[32];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 128) = *&v24[111];
  *(a2 + 65) = v11;
  *(a2 + 136) = v8;
  *(a2 + 144) = v12;
  *(a2 + 152) = v13;
  *(a2 + 160) = v14;
  *(a2 + 168) = v15;
  *(a2 + 176) = 0;
}

uint64_t sub_100044844@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v48 = v59;
  v2 = *(&v60 + 1);
  v3 = v60;
  v52 = *v61;
  v53 = *&v61[16];
  v54 = v62;
  v55 = v63;
  if (*(&v58 + 1))
  {
    v59 = v48;
    *v61 = v52;
    *&v61[16] = v53;
    v62 = v54;
    v63 = v55;

    sub_10000C3F8(&v58, &unk_1000C90E8, &qword_10008F350);
  }

  else
  {
    v58 = v58;
    v59 = v48;
    *v61 = v52;
    *&v61[16] = v53;
    v62 = v54;
    v63 = v55;
    sub_10000C3F8(&v58, &unk_1000C90E8, &qword_10008F350);
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  *&v58 = v3;
  *(&v58 + 1) = v2;
  sub_100019E50();
  v4 = sub_10008D68C();
  v6 = v5;
  v8 = v7;
  sub_10008D60C();
  v9 = sub_10008D67C();
  v45 = v10;
  v46 = v9;
  v12 = v11;
  v47 = v13;

  sub_10001CD48(v4, v6, v8 & 1);

  LOBYTE(v6) = sub_10008D55C();
  v14 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v6)
  {
    v14 = sub_10008D57C();
  }

  v44 = v14;
  sub_10008CF0C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v12 & 1;
  v67 = v12 & 1;
  v64 = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v25 = *(&v58 + 1);
  v24 = v58;
  v54 = *v61;
  v55 = *&v61[16];
  v56 = v62;
  v57 = v63;
  v52 = v59;
  v53 = v60;
  if (*(&v58 + 1))
  {
    *v61 = v54;
    *&v61[16] = v55;
    v62 = v56;
    v63 = v57;
    v59 = v52;
    v60 = v53;

    sub_10000C3F8(&v58, &unk_1000C90E8, &qword_10008F350);
  }

  else
  {
    v58 = v58;
    *v61 = v54;
    *&v61[16] = v55;
    v62 = v56;
    v63 = v57;
    v59 = v52;
    v60 = v53;
    sub_10000C3F8(&v58, &unk_1000C90E8, &qword_10008F350);
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  *&v58 = v24;
  *(&v58 + 1) = v25;
  v26 = sub_10008D68C();
  v28 = v27;
  v30 = v29;
  sub_10008D5AC();
  v31 = sub_10008D67C();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_10001CD48(v26, v28, v30 & 1);

  *&v48 = v46;
  *(&v48 + 1) = v45;
  LOBYTE(v49) = v23;
  *(&v49 + 1) = *v66;
  DWORD1(v49) = *&v66[3];
  *(&v49 + 1) = v47;
  LOBYTE(v50) = v44;
  *(&v50 + 1) = *v65;
  DWORD1(v50) = *&v65[3];
  *(&v50 + 1) = v16;
  *v51 = v18;
  *&v51[8] = v20;
  *&v51[16] = v22;
  v51[24] = 0;
  v38 = v48;
  v39 = v49;
  *&v61[9] = *&v51[9];
  v60 = v50;
  *v61 = *v51;
  v58 = v48;
  v59 = v49;
  v40 = *&v61[16];
  *(a2 + 48) = *v51;
  *(a2 + 64) = v40;
  v41 = v60;
  *(a2 + 16) = v39;
  *(a2 + 32) = v41;
  *a2 = v38;
  *(a2 + 80) = v31;
  *(a2 + 88) = v33;
  *(a2 + 96) = v35 & 1;
  *(a2 + 104) = v37;
  sub_10000C314(&v48, &v52, &qword_1000CC670, &qword_1000951A0);
  sub_10001CC9C(v31, v33, v35 & 1);

  sub_10001CD48(v31, v33, v35 & 1);

  *&v52 = v46;
  *(&v52 + 1) = v45;
  LOBYTE(v53) = v23;
  *(&v53 + 1) = *v66;
  DWORD1(v53) = *&v66[3];
  *(&v53 + 1) = v47;
  LOBYTE(v54) = v44;
  *(&v54 + 1) = *v65;
  DWORD1(v54) = *&v65[3];
  *(&v54 + 1) = v16;
  *&v55 = v18;
  *(&v55 + 1) = v20;
  *&v56 = v22;
  BYTE8(v56) = 0;
  return sub_10000C3F8(&v52, &qword_1000CC670, &qword_1000951A0);
}

uint64_t sub_100044CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for SettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8, v6);
  v7 = sub_100009C08(&qword_1000CB400, &qword_100092C10);
  v8 = v7 - 8;
  v10 = __chkstk_darwin(v7, v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v51 = &v48 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v50 = &v48 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v49 = &v48 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v48 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  sub_100048280(a1, &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v29 = swift_allocObject();
  sub_1000482E8(&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v56 = a1;
  sub_100036068();
  sub_10008D90C();
  v30 = sub_10008D88C();
  KeyPath = swift_getKeyPath();
  v32 = &v27[*(v8 + 44)];
  *v32 = KeyPath;
  v32[1] = v30;
  sub_100048280(a1, &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = swift_allocObject();
  sub_1000482E8(&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v28);
  v55 = a1;
  sub_10008D90C();
  v34 = sub_10008D88C();
  v35 = swift_getKeyPath();
  v36 = &v24[*(v8 + 44)];
  *v36 = v35;
  v36[1] = v34;
  sub_100048280(a1, &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = swift_allocObject();
  sub_1000482E8(&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v28);
  v54 = a1;
  v38 = v49;
  sub_10008D90C();
  v39 = sub_10008D88C();
  v40 = swift_getKeyPath();
  v41 = (v38 + *(v8 + 44));
  *v41 = v40;
  v41[1] = v39;
  v42 = v50;
  sub_10000C314(v27, v50, &qword_1000CB400, &qword_100092C10);
  v43 = v51;
  sub_10000C314(v24, v51, &qword_1000CB400, &qword_100092C10);
  v44 = v52;
  sub_10000C314(v38, v52, &qword_1000CB400, &qword_100092C10);
  v45 = v53;
  sub_10000C314(v42, v53, &qword_1000CB400, &qword_100092C10);
  v46 = sub_100009C08(&qword_1000CC660, &qword_1000944B0);
  sub_10000C314(v43, v45 + *(v46 + 48), &qword_1000CB400, &qword_100092C10);
  sub_10000C314(v44, v45 + *(v46 + 64), &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v38, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v24, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v27, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v44, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v43, &qword_1000CB400, &qword_100092C10);
  return sub_10000C3F8(v42, &qword_1000CB400, &qword_100092C10);
}

uint64_t sub_1000451AC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10008CB2C();
  __chkstk_darwin(v3 - 8, v4);
  v5 = sub_10008DBBC();
  __chkstk_darwin(v5 - 8, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (qword_1000C8D68 != -1)
  {
    swift_once();
  }

  sub_10008DB5C();
  sub_10008CB1C();
  result = sub_10008DC3C();
  *a2 = v9 == 0;
  *(a2 + 8) = result;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_100045380@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10008CB2C();
  __chkstk_darwin(v3 - 8, v4);
  v5 = sub_10008DBBC();
  __chkstk_darwin(v5 - 8, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  sub_10008DB5C();
  sub_10008CB1C();
  result = sub_10008DC3C();
  *a2 = v9 == 1;
  *(a2 + 8) = result;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_1000454F0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10008CB2C();
  __chkstk_darwin(v3 - 8, v4);
  v5 = sub_10008DBBC();
  __chkstk_darwin(v5 - 8, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  sub_10008DB5C();
  sub_10008CB1C();
  result = sub_10008DC3C();
  *a2 = v9 == 2;
  *(a2 + 8) = result;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_100045668(uint64_t a1)
{
  type metadata accessor for SettingsView(0);

  sub_100009C08(&qword_1000CC5D0, &qword_100094368);
  sub_100048C80();
  return sub_10008D90C();
}

uint64_t sub_100045708@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100009C08(&qword_1000CC5A8, &qword_100094350);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v13 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v8 = v14;
  v9 = 1;
  if (v14)
  {
    v10 = v13;
    *v7 = sub_10008D2BC();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v11 = sub_100009C08(&qword_1000CC5E0, &unk_1000943B8);
    sub_100045890(v10, v8, &v7[*(v11 + 44)]);

    sub_100048D38(v7, a2);
    v9 = 0;
  }

  return (*(v4 + 56))(a2, v9, 1, v3);
}

uint64_t sub_100045890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v5 = sub_100009C08(&qword_1000CAB88, &qword_1000920D0);
  v6 = v5 - 8;
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v29 - v12;
  v14 = sub_10008D8AC();
  v31 = a1;
  v32 = a2;
  sub_100019E50();

  v15 = sub_10008D68C();
  v17 = v16;
  v19 = v18;
  v29 = v20;
  KeyPath = swift_getKeyPath();
  v22 = &v13[*(v6 + 44)];
  v23 = *(sub_100009C08(&qword_1000CAB90, &qword_100092180) + 28);
  v24 = enum case for Text.TruncationMode.tail(_:);
  v25 = sub_10008D64C();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  *v13 = v15;
  *(v13 + 1) = v17;
  v13[16] = v19 & 1;
  *(v13 + 3) = v29;
  *(v13 + 4) = KeyPath;
  *(v13 + 5) = 1;
  v13[48] = 0;
  sub_10000C314(v13, v10, &qword_1000CAB88, &qword_1000920D0);
  v26 = v30;
  *v30 = v14;
  v27 = sub_100009C08(&qword_1000CC5E8, &qword_100094430);
  sub_10000C314(v10, v26 + *(v27 + 48), &qword_1000CAB88, &qword_1000920D0);

  sub_10000C3F8(v13, &qword_1000CAB88, &qword_1000920D0);
  sub_10000C3F8(v10, &qword_1000CAB88, &qword_1000920D0);
}

uint64_t sub_100045AD0(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_100009C08(a2, a3);
  sub_10001121C(a4, a2, a3, &protocol conformance descriptor for TupleView<A>);
  return sub_10008D62C();
}

uint64_t sub_100045B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_100009C08(&qword_1000CC630, &unk_100094450);
  v5 = __chkstk_darwin(v3 - 8, v4);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for SettingsView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8, v13);
  v14 = sub_100009C08(&qword_1000CB400, &qword_100092C10);
  v15 = v14 - 8;
  v17 = __chkstk_darwin(v14, v16);
  v48 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17, v19);
  v52 = &v47 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v51 = &v47 - v24;
  __chkstk_darwin(v23, v25);
  v27 = &v47 - v26;
  v47 = &v47 - v26;
  sub_100048280(a1, &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v29 = swift_allocObject();
  sub_1000482E8(&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v54 = a1;
  sub_100036068();
  sub_10008D90C();
  v30 = sub_10008D88C();
  KeyPath = swift_getKeyPath();
  v32 = &v27[*(v15 + 44)];
  *v32 = KeyPath;
  v32[1] = v30;
  sub_100048280(a1, &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = swift_allocObject();
  sub_1000482E8(&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v28);
  v53 = a1;
  v34 = v51;
  sub_10008D90C();
  v35 = sub_10008D88C();
  v36 = swift_getKeyPath();
  v37 = (v34 + *(v15 + 44));
  v38 = v34;
  *v37 = v36;
  v37[1] = v35;
  *v9 = sub_10008D2BC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v39 = sub_100009C08(&qword_1000CC638, &qword_100094490);
  sub_100046348(a1, &v9[*(v39 + 44)]);
  v40 = v47;
  v41 = v52;
  sub_10000C314(v47, v52, &qword_1000CB400, &qword_100092C10);
  v42 = v48;
  sub_10000C314(v38, v48, &qword_1000CB400, &qword_100092C10);
  v43 = v49;
  sub_10000C314(v9, v49, &qword_1000CC630, &unk_100094450);
  v44 = v50;
  sub_10000C314(v41, v50, &qword_1000CB400, &qword_100092C10);
  v45 = sub_100009C08(&qword_1000CC640, &qword_100094498);
  sub_10000C314(v42, v44 + *(v45 + 48), &qword_1000CB400, &qword_100092C10);
  sub_10000C314(v43, v44 + *(v45 + 64), &qword_1000CC630, &unk_100094450);
  sub_10000C3F8(v9, &qword_1000CC630, &unk_100094450);
  sub_10000C3F8(v51, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v40, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v43, &qword_1000CC630, &unk_100094450);
  sub_10000C3F8(v42, &qword_1000CB400, &qword_100092C10);
  return sub_10000C3F8(v52, &qword_1000CB400, &qword_100092C10);
}

uint64_t sub_100046008@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10008CB2C();
  __chkstk_darwin(v3 - 8, v4);
  v5 = sub_10008DBBC();
  __chkstk_darwin(v5 - 8, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v11 == 2)
  {
    sub_100048B2C(v10, 2uLL, v12, v13);
    sub_100048B2C(0, 0, 0, 0);
    v7 = 0;
  }

  else
  {
    v7 = v11 == 0;
    sub_100048B2C(v10, v11, v12, v13);
  }

  sub_10008DB5C();
  sub_10008CB1C();
  result = sub_10008DC3C();
  *a2 = v7;
  *(a2 + 8) = result;
  *(a2 + 16) = v9;
  return result;
}

uint64_t sub_1000461A4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10008CB2C();
  __chkstk_darwin(v3 - 8, v4);
  v5 = sub_10008DBBC();
  __chkstk_darwin(v5 - 8, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v11 == 2)
  {
    sub_100048B2C(v10, 2uLL, v12, v13);
    sub_100048B2C(0, 1uLL, 0, 0);
    v7 = 0;
  }

  else
  {
    v7 = v11 == 1;
    sub_100048B2C(v10, v11, v12, v13);
  }

  sub_10008DB5C();
  sub_10008CB1C();
  result = sub_10008DC3C();
  *a2 = v7;
  *(a2 + 8) = result;
  *(a2 + 16) = v9;
  return result;
}

uint64_t sub_100046348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008D0EC();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10008CB2C();
  __chkstk_darwin(v8 - 8, v9);
  v10 = sub_10008DBBC();
  __chkstk_darwin(v10 - 8, v11);
  v12 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v13 = 0;
  if (v33 < 2)
  {
    goto LABEL_4;
  }

  if (v33 != 2)
  {
    v13 = 1;
LABEL_4:
    sub_100048B2C(v32, v33, v34, v35);
  }

  sub_10008DB5C();
  sub_10008CB1C();
  v14 = sub_10008DC3C();
  v28 = v15;
  v29 = v14;
  type metadata accessor for SettingsViewModel(0);
  sub_100049090(&qword_1000C9BF8, type metadata accessor for SettingsViewModel, &unk_1000919B4);
  v16 = sub_10008D15C();
  v18 = v17;
  v19 = sub_10008CD0C();
  v32 = v16;
  v33 = v18;
  v34 = v19;
  v35 = v12;
  v36 = 0;

  sub_10008D0DC();
  v20 = a2 + *(sub_100009C08(&qword_1000CC648, &qword_1000944A0) + 36);
  sub_100009C08(&qword_1000CC5F0, &qword_100094438);
  sub_100048F84();
  sub_100049090(&qword_1000CC618, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v21 = v31;
  sub_10008D6DC();
  (*(v30 + 8))(v7, v21);

  v22 = sub_10008D9FC();
  v24 = v23;
  result = sub_100009C08(&qword_1000CC5B8, &qword_100094358);
  v26 = (v20 + *(result + 36));
  *v26 = v22;
  v26[1] = v24;
  *a2 = v13;
  v27 = v28;
  *(a2 + 8) = v29;
  *(a2 + 16) = v27;
  return result;
}

uint64_t sub_1000466D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10008D0EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_10008D2BC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v11 = sub_100009C08(&qword_1000CC5E0, &unk_1000943B8);
  sub_100046944(a1, (a3 + *(v11 + 44)));
  type metadata accessor for SettingsViewModel(0);
  sub_100049090(&qword_1000C9BF8, type metadata accessor for SettingsViewModel, &unk_1000919B4);
  v12 = sub_10008D15C();
  v14 = v13;
  v15 = *(a2 + 24);
  v16 = sub_10008CD0C();
  v23[1] = v12;
  v23[2] = v14;
  v23[3] = v16;
  v23[4] = v15;
  v23[5] = 0;

  sub_10008D0DC();
  v17 = a3 + *(sub_100009C08(&qword_1000CC590, &qword_100094348) + 36);
  sub_100009C08(&qword_1000CC5F0, &qword_100094438);
  sub_100048F84();
  sub_100049090(&qword_1000CC618, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  sub_10008D6DC();
  (*(v7 + 8))(v10, v6);

  v18 = sub_10008D9FC();
  v20 = v19;
  result = sub_100009C08(&qword_1000CC5B8, &qword_100094358);
  v22 = (v17 + *(result + 36));
  *v22 = v18;
  v22[1] = v20;
  return result;
}

uint64_t sub_100046944@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = sub_100009C08(&qword_1000CAB88, &qword_1000920D0);
  v4 = v3 - 8;
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v29 - v10;
  v12 = sub_10008D8AC();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v31 = v13;
  v32 = v14;
  sub_100019E50();

  v15 = sub_10008D68C();
  v17 = v16;
  v19 = v18;
  v29 = v20;
  KeyPath = swift_getKeyPath();
  v22 = &v11[*(v4 + 44)];
  v23 = *(sub_100009C08(&qword_1000CAB90, &qword_100092180) + 28);
  v24 = enum case for Text.TruncationMode.tail(_:);
  v25 = sub_10008D64C();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  *v11 = v15;
  *(v11 + 1) = v17;
  v11[16] = v19 & 1;
  *(v11 + 3) = v29;
  *(v11 + 4) = KeyPath;
  *(v11 + 5) = 1;
  v11[48] = 0;
  sub_10000C314(v11, v8, &qword_1000CAB88, &qword_1000920D0);
  v26 = v30;
  *v30 = v12;
  v27 = sub_100009C08(&qword_1000CC5E8, &qword_100094430);
  sub_10000C314(v8, v26 + *(v27 + 48), &qword_1000CAB88, &qword_1000920D0);

  sub_10000C3F8(v11, &qword_1000CAB88, &qword_1000920D0);
  sub_10000C3F8(v8, &qword_1000CAB88, &qword_1000920D0);
}

uint64_t sub_100046B94(uint64_t a1)
{
  sub_100009C08(&qword_1000CC4A0, &qword_100094190);
  sub_10001121C(&qword_1000CC498, &qword_1000CC4A0, &qword_100094190, &protocol conformance descriptor for HStack<A>);
  return sub_10008D9AC();
}

uint64_t sub_100046C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10008D2BC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100009C08(&qword_1000CC4B0, &qword_1000941A0);
  return sub_100046C90(a1, a2 + *(v4 + 44));
}

uint64_t sub_100046C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SettingsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8, v7);
  v8 = sub_100009C08(&qword_1000CC4B8, &qword_1000941A8);
  v9 = v8 - 8;
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11, v14);
  v16 = &v25[-v15];
  sub_100048280(a1, &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_1000482E8(&v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17);
  v26 = a1;
  sub_100009C08(&qword_1000CC4C0, &qword_1000941B0);
  sub_100048660();
  sub_10008D90C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  LOBYTE(v17) = v27;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = &v16[*(v9 + 44)];
  *v21 = KeyPath;
  v21[1] = sub_1000487CC;
  v21[2] = v20;
  sub_10000C314(v16, v13, &qword_1000CC4B8, &qword_1000941A8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v22 = sub_100009C08(&qword_1000CC4D0, &qword_100094230);
  sub_10000C314(v13, a2 + *(v22 + 48), &qword_1000CC4B8, &qword_1000941A8);
  v23 = a2 + *(v22 + 64);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_10000C3F8(v16, &qword_1000CC4B8, &qword_1000941A8);
  return sub_10000C3F8(v13, &qword_1000CC4B8, &qword_1000941A8);
}

uint64_t sub_100046F7C()
{
  v0 = sub_10008CFDC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004271C(v4);
  sub_10008CFCC();
  (*(v1 + 8))(v4, v0);
  return sub_100029A34();
}

uint64_t sub_10004705C@<X0>(uint64_t a2@<X8>)
{
  v47 = a2;
  v2 = sub_10008CB2C();
  __chkstk_darwin(v2 - 8, v3);
  v42[1] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10008DBBC();
  __chkstk_darwin(v5 - 8, v6);
  v44 = sub_100009C08(&qword_1000CC4D8, &qword_100094238);
  __chkstk_darwin(v44, v7);
  v9 = v42 - v8;
  v46 = sub_10008D47C();
  v42[0] = *(v46 - 8);
  __chkstk_darwin(v46, v10);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100009C08(&qword_1000CB738, &unk_100092E80);
  v13 = *(v43 - 8);
  __chkstk_darwin(v43, v14);
  v16 = v42 - v15;
  v45 = sub_100009C08(&qword_1000CB740, &qword_100094110);
  v17 = *(v45 - 8);
  __chkstk_darwin(v45, v18);
  v20 = v42 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v48 == 1)
  {
    sub_10008CF8C();
    sub_10008D46C();
    v21 = sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80, &protocol conformance descriptor for ProgressView<A, B>);
    v22 = sub_100049090(&qword_1000CB778, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    v23 = v43;
    v24 = v46;
    sub_10008D6BC();
    (*(v42[0] + 8))(v12, v24);
    (*(v13 + 8))(v16, v23);
    v25 = v45;
    (*(v17 + 16))(v9, v20, v45);
    swift_storeEnumTagMultiPayload();
    v48 = v23;
    v49 = v24;
    v50 = v21;
    v51 = v22;
    swift_getOpaqueTypeConformance2();
    sub_10008D3DC();
    return (*(v17 + 8))(v20, v25);
  }

  else
  {
    sub_10008DB5C();
    sub_10008CB1C();
    v48 = sub_10008DC3C();
    v49 = v27;
    sub_100019E50();
    v28 = sub_10008D68C();
    v30 = v29;
    v32 = v31;
    sub_10008D82C();
    v33 = sub_10008D65C();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    sub_10001CD48(v28, v30, v32 & 1);

    *v9 = v33;
    *(v9 + 1) = v35;
    v9[16] = v37 & 1;
    *(v9 + 3) = v39;
    swift_storeEnumTagMultiPayload();
    v40 = sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80, &protocol conformance descriptor for ProgressView<A, B>);
    v41 = sub_100049090(&qword_1000CB778, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    v48 = v43;
    v49 = v46;
    v50 = v40;
    v51 = v41;
    swift_getOpaqueTypeConformance2();
    return sub_10008D3DC();
  }
}

uint64_t sub_100047668(uint64_t a1)
{
  v2 = sub_10008D42C();
  __chkstk_darwin(v2 - 8, v3);
  v4 = sub_100009C08(&qword_1000CC428, &qword_1000940D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10[-v7];
  sub_10008D41C();
  v11 = a1;
  sub_100009C08(&qword_1000CC448, &qword_100094108);
  sub_10001121C(&qword_1000CC450, &qword_1000CC448, &qword_100094108, &protocol conformance descriptor for TupleView<A>);
  sub_10008D10C();
  sub_10001121C(&qword_1000CC430, &qword_1000CC428, &qword_1000940D8, &protocol conformance descriptor for ToolbarItemGroup<A>);
  sub_10008D45C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100047854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for SettingsView(0);
  v59 = *(v3 - 8);
  __chkstk_darwin(v3 - 8, v4);
  v60 = v5;
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10008CEFC();
  __chkstk_darwin(v6 - 8, v7);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009C08(&qword_1000C9FC8, &unk_100090000);
  v64 = *(v9 - 8);
  v65 = v9;
  v11 = __chkstk_darwin(v9, v10);
  v63 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v57 = &v52 - v14;
  v15 = sub_10008D47C();
  v54 = *(v15 - 8);
  v55 = v15;
  __chkstk_darwin(v15, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100009C08(&qword_1000CB738, &unk_100092E80);
  v52 = *(v19 - 8);
  v53 = v19;
  __chkstk_darwin(v19, v20);
  v22 = &v52 - v21;
  v23 = sub_100009C08(&qword_1000CB740, &qword_100094110);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23, v25);
  v27 = &v52 - v26;
  v28 = sub_100009C08(&qword_1000CC458, &qword_100094118);
  v30 = __chkstk_darwin(v28 - 8, v29);
  v32 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v33);
  v35 = &v52 - v34;
  v62 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v67 == 1)
  {
    sub_10008CF8C();
    sub_10008D46C();
    sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100049090(&qword_1000CB778, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    v36 = v53;
    v37 = v55;
    sub_10008D6BC();
    (*(v54 + 8))(v18, v37);
    (*(v52 + 8))(v22, v36);
    (*(v24 + 32))(v35, v27, v23);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = v35;
  (*(v24 + 56))(v35, v38, 1, v23);
  sub_10008CEEC();
  v40 = v61;
  sub_100048280(v62, v61);
  v41 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v42 = swift_allocObject();
  v56 = v35;
  sub_1000482E8(v40, v42 + v41);
  v43 = v57;
  sub_10008D91C();
  sub_10000C314(v39, v32, &qword_1000CC458, &qword_100094118);
  v45 = v63;
  v44 = v64;
  v46 = *(v64 + 16);
  v47 = v65;
  v46(v63, v43, v65);
  v48 = v66;
  sub_10000C314(v32, v66, &qword_1000CC458, &qword_100094118);
  v49 = sub_100009C08(&qword_1000CC460, &qword_100094168);
  v46((v48 + *(v49 + 48)), v45, v47);
  v50 = *(v44 + 8);
  v50(v43, v47);
  sub_10000C3F8(v56, &qword_1000CC458, &qword_100094118);
  v50(v45, v47);
  return sub_10000C3F8(v32, &qword_1000CC458, &qword_100094118);
}

uint64_t sub_100047EBC(uint64_t a1)
{
  v19 = sub_10008D29C();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  __chkstk_darwin(v6, v7);
  v9 = &v18 - v8;
  v10 = sub_10008CFDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SettingsView(0);
  sub_10000C314(a1 + *(v15 + 24), v9, &unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_10008DE3C();
    v16 = sub_10008D52C();
    sub_10008CCAC();

    sub_10008D28C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_10008CFCC();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100048144(uint64_t a1)
{
  v2 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(a1 + 24);
  v7 = sub_10008DDEC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_10008DDBC();

  v8 = sub_10008DDAC();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  sub_10007B228(0, 0, v5, &unk_1000940F8, v9);

  return sub_10002783C();
}

uint64_t sub_100048280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000482E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048364(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CC3F0, &qword_1000940A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000483D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100048414()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000092CC;

  return sub_1000270CC();
}

unint64_t sub_100048508()
{
  result = qword_1000CC490;
  if (!qword_1000CC490)
  {
    sub_100007108(&qword_1000CC488, &qword_100094188);
    sub_10001121C(&qword_1000CC498, &qword_1000CC4A0, &qword_100094190, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC490);
  }

  return result;
}

uint64_t sub_1000485E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100048660()
{
  result = qword_1000CC4C8;
  if (!qword_1000CC4C8)
  {
    sub_100007108(&qword_1000CC4C0, &qword_1000941B0);
    sub_100007108(&qword_1000CB738, &unk_100092E80);
    sub_10008D47C();
    sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100049090(&qword_1000CB778, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC4C8);
  }

  return result;
}

unint64_t sub_1000487DC()
{
  result = qword_1000CC520;
  if (!qword_1000CC520)
  {
    sub_100007108(&qword_1000CC518, &qword_100094278);
    sub_10001121C(&qword_1000CC528, &qword_1000CC530, &qword_100094280, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC520);
  }

  return result;
}

unint64_t sub_1000488DC()
{
  result = qword_1000CC558;
  if (!qword_1000CC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC558);
  }

  return result;
}

uint64_t sub_100048980(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007108(a2, a3);
    a4();
    sub_10001121C(&qword_1000C9C18, &qword_1000C9C20, &qword_10008FD40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048A30()
{
  result = qword_1000CC580;
  if (!qword_1000CC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC580);
  }

  return result;
}

uint64_t sub_100048A8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }

  return v4;
}

uint64_t sub_100048ADC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }

  return v4;
}

void sub_100048B2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 2)
  {
    sub_100048B3C(a1, a2, a3, a4);
  }
}

void sub_100048B3C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
  }
}

unint64_t sub_100048B8C()
{
  result = qword_1000CC598;
  if (!qword_1000CC598)
  {
    sub_100007108(&qword_1000CC590, &qword_100094348);
    sub_10001121C(&qword_1000CC5A0, &qword_1000CC5A8, &qword_100094350, &protocol conformance descriptor for HStack<A>);
    sub_10001121C(&qword_1000CC5B0, &qword_1000CC5B8, &qword_100094358, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC598);
  }

  return result;
}

unint64_t sub_100048C80()
{
  result = qword_1000CC5D8;
  if (!qword_1000CC5D8)
  {
    sub_100007108(&qword_1000CC5D0, &qword_100094368);
    sub_10001121C(&qword_1000CC5A0, &qword_1000CC5A8, &qword_100094350, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC5D8);
  }

  return result;
}

uint64_t sub_100048D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CC5A8, &qword_100094350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048DA8@<X0>(uint64_t a1@<X8>)
{
  result = sub_10008D26C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100048DDC@<X0>(uint64_t a1@<X8>)
{
  result = sub_10008D26C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100048EB8(uint64_t a1)
{
  v2 = sub_10008D64C();
  __chkstk_darwin(v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10008D19C();
}

unint64_t sub_100048F84()
{
  result = qword_1000CC5F8;
  if (!qword_1000CC5F8)
  {
    sub_100007108(&qword_1000CC5F0, &qword_100094438);
    sub_100048980(&qword_1000CC600, &qword_1000CC608, &qword_100094440, sub_10004903C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC5F8);
  }

  return result;
}

unint64_t sub_10004903C()
{
  result = qword_1000CC610;
  if (!qword_1000CC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC610);
  }

  return result;
}

uint64_t sub_100049090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000490E0()
{
  type metadata accessor for SettingsView(0);
  memset(v1, 0, sizeof(v1));
  v2 = 0;
  return sub_100027A88(v1);
}

uint64_t sub_100049168()
{
  type metadata accessor for SettingsView(0);
  v1 = xmmword_100094020;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  return sub_100027A88(&v1);
}

uint64_t sub_10004928C()
{
  v1 = type metadata accessor for SettingsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 24);
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10008CFDC();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100049460()
{
  result = qword_1000CC678;
  if (!qword_1000CC678)
  {
    sub_100007108(&qword_1000CC438, &unk_1000940E8);
    sub_1000494EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC678);
  }

  return result;
}

unint64_t sub_1000494EC()
{
  result = qword_1000CC680;
  if (!qword_1000CC680)
  {
    sub_100007108(&qword_1000CC3F0, &qword_1000940A8);
    sub_10001121C(&qword_1000CC688, &qword_1000CC3E8, &qword_1000940A0, &protocol conformance descriptor for NavigationView<A>);
    sub_10001121C(&qword_1000CADE0, &qword_1000CADE8, &unk_100094510, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC680);
  }

  return result;
}

uint64_t sub_1000495EC()
{
  sub_1000207B4(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device, type metadata accessor for Device);

  sub_10000BC74((v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_enroller));

  return swift_deallocClassInstance();
}

uint64_t sub_1000496AC(uint64_t a1)
{
  result = type metadata accessor for Device(319);
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

uint64_t sub_100049750()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_1000497C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_100049848(uint64_t a1)
{
  v2 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = sub_10008DDEC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_10008DDBC();

  v7 = sub_10008DDAC();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  sub_10007B228(0, 0, v5, &unk_1000947B8, v8);
}

uint64_t sub_10004996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_10008DDBC();
  *(v4 + 24) = sub_10008DDAC();
  v6 = sub_10008DD8C();

  return _swift_task_switch(sub_100049A04, v6, v5);
}

uint64_t sub_100049A04()
{
  v1 = *(v0 + 16);

  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) = 1;
  sub_10004F890();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100049AD8(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_unownedRetainStrong();
  a3(v4);
}

uint64_t sub_100049B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a6;
  sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  v6[7] = swift_task_alloc();
  v8 = sub_100009C08(&qword_1000CCC98, &qword_100094798);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = sub_100009C08(&qword_1000CCCA0, &unk_1000947A0);
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[13] = v10;
  v6[14] = sub_10008DDBC();
  v6[15] = sub_10008DDAC();
  ObjectType = swift_getObjectType();
  v14 = (*(a5 + 16) + **(a5 + 16));
  v12 = swift_task_alloc();
  v6[16] = v12;
  *v12 = v6;
  v12[1] = sub_100049DD8;

  return v14(v10, ObjectType, a5);
}

uint64_t sub_100049DD8()
{

  v1 = sub_10008DD8C();

  return _swift_task_switch(sub_100049F14, v1, v0);
}

uint64_t sub_100049F14()
{
  v1 = v0[10];
  v8 = v0[13];
  v9 = v0[11];
  v2 = v0[9];
  v10 = v0[8];
  v11 = v0[12];
  v3 = v0[7];

  sub_1000167AC();
  v4 = sub_10008DE7C();
  v0[5] = v4;
  v5 = sub_10008DE6C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_10001121C(&qword_1000CCCA8, &qword_1000CCCA0, &unk_1000947A0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100052CD4(&qword_1000C9E40, sub_1000167AC, &protocol conformance descriptor for OS_dispatch_queue);
  sub_10008CE0C();
  sub_100016840(v3);

  sub_10001121C(&unk_1000CCCB0, &qword_1000CCC98, &qword_100094798, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  sub_10008CE1C();

  (*(v2 + 8))(v1, v10);
  swift_beginAccess();
  sub_100009C08(&qword_1000CAF40, &unk_100095840);
  sub_10001121C(&unk_1000CCCC0, &qword_1000CAF40, &unk_100095840, &protocol conformance descriptor for [A]);
  sub_10008CCEC();
  swift_endAccess();

  (*(v11 + 8))(v8, v9);

  v6 = v0[1];

  return v6();
}

char *sub_10004A1E0()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (*(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_didBecomeActiveNotificationObserver))
  {
    [v1 removeObserver:?];
  }

  v3 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_willResignActiveNotificationObserver);
  if (v3)
  {
    swift_unknownObjectRetain_n();
    [v2 removeObserver:v3];
    swift_unknownObjectRelease_n();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10000BC74((v0 + 80));
  sub_10000BC74((v0 + 120));

  v4 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider__assignmentStatus;
  v5 = sub_100009C08(&unk_1000CCBF0, &unk_10008F9E0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider__enrollmentError;
  v7 = sub_100009C08(&qword_1000C98B0, &unk_10008F9F0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  swift_unknownObjectRelease();
  v8 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_maxDelayTime;
  v9 = sub_10008DADC();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10004A410()
{
  sub_10004A1E0();

  return swift_deallocClassInstance();
}

uint64_t sub_10004A490(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A4C8(uint64_t a1)
{
  sub_100010A44();
  if (v1 <= 0x3F)
  {
    sub_1000109E0(319);
    if (v2 <= 0x3F)
    {
      sub_10008DADC();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10004A64C()
{
  v1 = v0;
  v2 = sub_10008CB0C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v7 = sub_10008CCDC();
  sub_100009F94(v7, qword_1000D6D38);

  v8 = sub_10008CCBC();
  v9 = sub_10008DE1C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    v12 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice);
    if (v12)
    {
      v13 = [v12 identifier];
      sub_10008CAEC();

      v14 = sub_10008CADC();
      v16 = v15;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_10000A2D8(v14, v16, &v19);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received didBecomeActiveNotification (currentTargetDevice = %{public}s)", v10, 0xCu);
    sub_10000BC74(v11);
  }

  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isInBackground) = 0;
  if (*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_startDiscoveryOnActivation) == 1)
  {
    sub_10004A8B8();
  }
}

void sub_10004A8B8()
{
  v1 = sub_10008DADC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_prerequisiteStatus) - 5 <= 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8[8] = 0;

    sub_10008CDBC();
    *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) = 0;
    sub_10008DA9C();
    v6 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_maxDelayTime;
    swift_beginAccess();
    (*(v2 + 40))(v0 + v6, v5, v1);
    v7 = swift_endAccess();
    if (*(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isInBackground))
    {
      *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_startDiscoveryOnActivation) = 1;
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isDiscoveringDevices) = 1;
      sub_100082000(v7);
    }
  }
}

void sub_10004AA4C()
{
  v1 = v0;
  v2 = sub_10008CB0C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v7 = sub_10008CCDC();
  sub_100009F94(v7, qword_1000D6D38);

  v8 = sub_10008CCBC();
  v9 = sub_10008DE1C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    v12 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice);
    if (v12)
    {
      v13 = [v12 identifier];
      sub_10008CAEC();

      v14 = sub_10008CADC();
      v16 = v15;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_10000A2D8(v14, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received willResignActiveNotification (currentTargetDevice = %{public}s)", v10, 0xCu);
    sub_10000BC74(v11);
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isInBackground) = 1;
  if (!*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice))
  {
    if (*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isDiscoveringDevices) == 1)
    {
      sub_10004ACEC();
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_startDiscoveryOnActivation) = v18;
  }
}

uint64_t sub_10004ACEC()
{
  v1 = sub_10008DA4C();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &ObjectType - v8;
  v18 = sub_10008DADC();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18, v11);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10008DA9C();
  v14 = *(v2 + 104);
  v14(v9, enum case for DispatchTimeInterval.never(_:), v1);
  *v6 = 0;
  v14(v6, enum case for DispatchTimeInterval.milliseconds(_:), v1);
  sub_10008DEFC();
  swift_unknownObjectRelease();
  v15 = *(v2 + 8);
  v15(v6, v1);
  v15(v9, v1);
  (*(v10 + 8))(v13, v18);
  sub_100082230();
  *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices) = &_swiftEmptyArrayStorage;

  result = sub_10004F160();
  *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) = 0;
  *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isDiscoveringDevices) = 0;
  *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_startDiscoveryOnActivation) = 0;
  return result;
}

uint64_t sub_10004AF68()
{
  v1 = v0;
  v2 = sub_10008DA4C();
  v46 = *(v2 - 8);
  v47 = v2;
  v4 = __chkstk_darwin(v2, v3);
  v43 = (v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4, v6);
  v45 = (v40 - v7);
  v8 = sub_10008DADC();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = v40 - v15;
  v17 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_maxDelayTime;
  swift_beginAccess();
  v44 = *(v9 + 16);
  v44(v16, v0 + v17, v8);
  sub_10008DA9C();
  v18 = sub_10008DABC();
  v19 = *(v9 + 8);
  v19(v13, v8);
  v48 = v19;
  result = (v19)(v16, v8);
  if (v18)
  {
    sub_10008DACC();
    v21 = v45;
    *v45 = 5;
    v42 = v9 + 8;
    v22 = v8;
    v24 = v46;
    v23 = v47;
    (*(v46 + 104))(v21, enum case for DispatchTimeInterval.seconds(_:), v47);
    sub_10008DAEC();
    v25 = v24;
    v8 = v22;
    (*(v25 + 8))(v21, v23);
    v48(v13, v22);
    swift_beginAccess();
    (*(v9 + 40))(v1 + v17, v16, v22);
    result = swift_endAccess();
  }

  if ((*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) & 1) == 0)
  {
    sub_10008DACC();
    v44(v13, v1 + v17, v8);
    v26 = sub_10008DAAC();
    v27 = v48;
    v48(v13, v8);
    result = v27(v16, v8);
    if (v26)
    {
      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v28 = sub_10008CCDC();
      sub_100009F94(v28, qword_1000D6D38);
      v29 = sub_10008CCBC();
      v30 = sub_10008DE1C();
      v31 = os_log_type_enabled(v29, v30);
      v41 = v8;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v49[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_10000A2D8(0xD00000000000001FLL, 0x800000010009AA70, v49);
        _os_log_impl(&_mh_execute_header, v29, v30, "%s: Restarting discovery delay timer", v32, 0xCu);
        sub_10000BC74(v33);
      }

      v44 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_delayedProcessingTimer;
      v40[1] = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10008DACC();
      v34 = v45;
      v35 = v46;
      *v45 = 2;
      v42 = v1;
      v36 = *(v35 + 104);
      v37 = v47;
      v36(v34, enum case for DispatchTimeInterval.seconds(_:), v47);
      sub_10008DAEC();
      v38 = *(v35 + 8);
      v38(v34, v37);
      v48(v13, v41);
      v36(v34, enum case for DispatchTimeInterval.never(_:), v37);
      v39 = v43;
      *v43 = 100;
      v36(v39, enum case for DispatchTimeInterval.milliseconds(_:), v37);
      sub_10008DEFC();
      swift_unknownObjectRelease();
      v38(v39, v37);
      v38(v34, v37);
      v48(v16, v41);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10008DEDC();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10004B544(unint64_t a1)
{
  v2 = v1;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v4 = sub_10008CCDC();
  sub_100009F94(v4, qword_1000D6D38);

  v5 = sub_10008CCBC();
  v6 = sub_10008DE1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_10000A2D8(0xD00000000000001ALL, 0x800000010009AA50, v15);
    *(v7 + 12) = 2048;
    if (a1 >> 62)
    {
      v9 = sub_10008E00C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 14) = v9;

    _os_log_impl(&_mh_execute_header, v5, v6, "%s: %ld nearby devices reported", v7, 0x16u);
    sub_10000BC74(v8);
  }

  else
  {
  }

  v19 = &_swiftEmptySetSingleton;
  v17 = &_swiftEmptyArrayStorage;
  v18 = &_swiftEmptyArrayStorage;

  sub_10005309C(a1, &v19, v1, &v18, &v17);

  v10 = sub_10008CCBC();
  v11 = sub_10008DE1C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_10000A2D8(0xD00000000000001ALL, 0x800000010009AA50, &v16);
    *(v12 + 12) = 2048;
    swift_beginAccess();
    *(v12 + 14) = v18[2];
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: %ld nearby devices (unpaired and de-duplicated)", v12, 0x16u);
    sub_10000BC74(v13);
  }

  *(v2 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices) = v17;

  sub_10004F160();
  sub_10004F890();
}

uint64_t sub_10004B870(void *a1, const char *a2, ...)
{
  v4 = v2;
  v6 = sub_10008CB0C();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v32 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v13 = v31 - v12;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v14 = sub_10008CCDC();
  sub_100009F94(v14, qword_1000D6D38);
  v15 = a1;
  v16 = sub_10008CCBC();
  v17 = sub_10008DE1C();

  p_type = &stru_1000C6FF0.type;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v31[1] = v4;
    v20 = v19;
    v31[0] = swift_slowAlloc();
    v33[0] = v31[0];
    *v20 = 136446210;
    v21 = [v15 identifier];
    sub_10008CAEC();

    sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = sub_10008E15C();
    v23 = a2;
    v24 = v6;
    v26 = v25;
    (*(v7 + 8))(v13, v24);
    v27 = sub_10000A2D8(v22, v26, v33);

    *(v20 + 4) = v27;
    p_type = (&stru_1000C6FF0 + 16);
    _os_log_impl(&_mh_execute_header, v16, v17, v23, v20, 0xCu);
    sub_10000BC74(v31[0]);
  }

  else
  {

    v24 = v6;
  }

  v28 = [v15 p_type[344]];
  v29 = v32;
  sub_10008CAEC();

  swift_beginAccess();
  sub_100050FAC(v13, v29);
  (*(v7 + 8))(v13, v24);
  swift_endAccess();
  return sub_1000500A8();
}

uint64_t sub_10004BBA0(char *a1)
{
  v3 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  __chkstk_darwin(v3 - 8, v4);
  v142 = &v136 - v5;
  v145 = sub_100009C08(&qword_1000CCC60, &qword_100094778);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145, v6);
  v151 = &v136 - v7;
  v139 = type metadata accessor for Device(0);
  v141 = *(v139 - 1);
  v9 = __chkstk_darwin(v139, v8);
  v147 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v10;
  __chkstk_darwin(v9, v11);
  v153 = &v136 - v12;
  v13 = sub_10008CB0C();
  v14 = *(v13 - 8);
  v16 = __chkstk_darwin(v13, v15);
  *&v149 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v137 = &v136 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v136 - v23;
  v26 = __chkstk_darwin(v22, v25);
  v28 = &v136 - v27;
  v30 = __chkstk_darwin(v26, v29);
  v32 = &v136 - v31;
  __chkstk_darwin(v30, v33);
  v35 = &v136 - v34;
  v140 = a1;
  v152 = [a1 remoteDevice];
  v36 = [v152 identifier];
  sub_10008CAEC();

  v37 = *(v14 + 16);
  v37(v28, v35, v13);
  swift_beginAccess();
  v154 = v1;
  sub_100050FAC(v32, v28);
  v39 = *(v14 + 8);
  v38 = v14 + 8;
  v155 = v39;
  v40 = v38;
  v39(v32, v13);
  swift_endAccess();
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v41 = sub_10008CCDC();
  v42 = sub_100009F94(v41, qword_1000D6D38);
  v37(v24, v35, v13);
  v146 = v42;
  v43 = sub_10008CCBC();
  v44 = sub_10008DE0C();
  v45 = os_log_type_enabled(v43, v44);
  v150 = v35;
  *&v148 = v37;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v163 = v47;
    *v46 = 136446210;
    sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v48 = sub_10008E15C();
    v49 = v13;
    v51 = v50;
    v155(v24, v49);
    v52 = sub_10000A2D8(v48, v51, &v163);
    v13 = v49;

    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: Has a successful paired device connection", v46, 0xCu);
    sub_10000BC74(v47);
    v53 = v38;
    v54 = v150;
  }

  else
  {
    v54 = v35;

    v53 = v40;
    v155(v24, v13);
  }

  v55 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
  v56 = v154;
  swift_beginAccess();
  v57 = v147;
  v58 = v149;
  if (*(*(v56 + v55) + 16) && (, sub_10000EA60(v54), v60 = v59, , (v60 & 1) != 0))
  {
    v61 = v137;
    (v148)(v137, v54, v13);
    v62 = sub_10008CCBC();
    v63 = sub_10008DE0C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v163 = v65;
      *v64 = 136446210;
      sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v66 = sub_10008E15C();
      v68 = v67;
      v69 = v61;
      v70 = v155;
      v155(v69, v13);
      v71 = sub_10000A2D8(v66, v68, &v163);

      *(v64 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v62, v63, "%{public}s: We have already seen this paired device", v64, 0xCu);
      sub_10000BC74(v65);

      return v70(v54, v13);
    }

    else
    {

      v135 = v155;
      v155(v61, v13);
      return v135(v54, v13);
    }
  }

  else
  {
    v137 = v55;
    (v148)(v58, v54, v13);
    v73 = sub_10008CCBC();
    v74 = sub_10008DE0C();
    v75 = os_log_type_enabled(v73, v74);
    v138 = v13;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v163 = v77;
      *v76 = 136446210;
      sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v78 = sub_10008E15C();
      v79 = v13;
      v81 = v80;
      v155(v58, v79);
      v82 = sub_10000A2D8(v78, v81, &v163);

      *(v76 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v73, v74, "%{public}s: New paired Device", v76, 0xCu);
      sub_10000BC74(v77);
    }

    else
    {

      v155(v58, v13);
    }

    v83 = v152;
    v84 = v153;
    v146 = v53;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v163) = 2;

    sub_10008CDBC();
    v85 = [v83 identifier];
    sub_10008CAEC();

    v86 = [v83 modelIdentifier];
    v87 = sub_10008DBDC();
    v89 = v88;

    v90 = v139;
    v91 = (v84 + *(v139 + 5));
    *v91 = 0;
    v91[1] = 0;
    v92 = (v84 + v90[6]);
    *v92 = v87;
    v92[1] = v89;
    v93 = (v84 + v90[7]);
    *v93 = 0;
    v93[1] = 0;
    v94 = (v84 + v90[8]);
    v95 = type metadata accessor for BuddyProxy();
    *v94 = 0;
    v94[1] = 0;
    v96 = objc_allocWithZone(v95);
    v97 = swift_unknownObjectRetain();
    v98 = sub_100034A94(v97);
    sub_100052990(v84, v57, type metadata accessor for Device);
    v99 = qword_1000C8CF0;
    v100 = v98;
    v101 = v57;
    if (v99 != -1)
    {
      swift_once();
    }

    sub_10000BE8C(&unk_1000D6CF0, &v163);
    v102 = v154;
    v149 = *(v154 + 64);
    sub_10000BE8C(v154 + 80, &v162);
    v103 = type metadata accessor for ConcreteCurrentWiFiNetworkPrimitives();
    v104 = swift_allocObject();
    *(v104 + 16) = 0;
    v160 = v95;
    v161 = &off_1000C05B8;
    v159 = v100;
    v158[3] = v103;
    v158[4] = &off_1000C0878;
    v158[0] = v104;
    v105 = type metadata accessor for AXMEnroller(0);
    v148 = *(v102 + 48);
    v106 = objc_allocWithZone(v105);
    v107 = sub_10000BCC0(&v159, v160);
    __chkstk_darwin(v107, v107);
    v109 = (&v136 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v110 + 16))(v109);
    v111 = *v109;
    v157[4] = &off_1000C05B8;
    v157[3] = v95;
    v157[0] = v111;
    *&v106[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller____lazy_storage___catOperationQueue] = 0;
    v112 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject;
    sub_100009C08(&qword_1000CCC68, &qword_100094780);
    swift_allocObject();
    v113 = v100;
    v140 = v113;
    *&v106[v112] = sub_10008CD4C();
    v114 = v101;
    sub_100052990(v101, &v106[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_device], type metadata accessor for Device);
    sub_10000BE8C(v157, &v106[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider]);
    sub_10000BE8C(&v163, &v106[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_accountProvider]);
    *&v106[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_networkInfoStore] = v149;
    sub_10000BE8C(&v162, &v106[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_mdmServerInfoStore]);
    *&v106[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_fileSystemStore] = v148;
    sub_10000BE8C(v158, &v106[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_currentNetworkPrimitives]);
    v156.receiver = v106;
    v156.super_class = v105;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v115 = objc_msgSendSuper2(&v156, "init");

    sub_10000BC74(&v162);
    sub_10000BC74(&v163);
    sub_1000207B4(v101, type metadata accessor for Device);
    sub_10000BC74(v158);
    sub_10000BC74(v157);
    sub_10000BC74(&v159);
    v139 = type metadata accessor for Device;
    sub_100052990(v153, v101, type metadata accessor for Device);
    type metadata accessor for DeviceTrackingInfo(0);
    v116 = swift_allocObject();
    *(v116 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_enrollmentStatusSubscription) = 0;
    v117 = (v116 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_enroller);
    v117[3] = v105;
    v117[4] = &off_1000C0960;
    *v117 = v115;
    sub_100052B74(v101, v116 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device, type metadata accessor for Device);
    v163 = *&v115[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject];
    sub_10001121C(&qword_1000CCC70, &qword_1000CCC68, &qword_100094780, &protocol conformance descriptor for PassthroughSubject<A, B>);
    *&v149 = v115;
    v163 = sub_10008CDDC();
    sub_1000167AC();
    v118 = sub_10008DE7C();
    v162 = v118;
    v119 = sub_10008DE6C();
    v120 = v142;
    (*(*(v119 - 8) + 56))(v142, 1, 1, v119);
    sub_100009C08(&qword_1000CCC78, &qword_100094788);
    sub_10001121C(&unk_1000CCC80, &qword_1000CCC78, &qword_100094788, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_100052CD4(&qword_1000C9E40, sub_1000167AC, &protocol conformance descriptor for OS_dispatch_queue);
    sub_10008CE0C();
    sub_100016840(v120);

    v121 = v153;
    v122 = v139;
    sub_100052990(v153, v114, v139);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v123 = *(v141 + 80);
    v124 = (v123 + 16) & ~v123;
    v125 = (v143 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = swift_allocObject();
    sub_100052B74(v114, v126 + v124, v122);
    *(v126 + v125) = v102;
    swift_unownedRetainStrong();
    swift_unownedRetain();

    sub_100052990(v121, v114, v122);
    v127 = swift_allocObject();
    *(v127 + 16) = v102;
    sub_100052B74(v114, v127 + ((v123 + 24) & ~v123), v122);
    sub_10001121C(&qword_1000CCC90, &qword_1000CCC60, &qword_100094778, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v128 = v145;
    v129 = v151;
    v130 = sub_10008CDFC();

    (*(v144 + 8))(v129, v128);
    *(v116 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_enrollmentStatusSubscription) = v130;

    v131 = v137;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v162 = *&v131[v102];
    *&v131[v102] = 0x8000000000000000;
    v133 = v150;
    sub_10006F734(v116, v150, isUniquelyReferenced_nonNull_native);
    *&v131[v102] = v162;
    swift_endAccess();
    sub_10004F160();
    v134 = v149;
    sub_10003D01C();

    sub_1000207B4(v121, v122);
    return (v155)(v133, v138);
  }
}

void sub_10004CDB4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Device(0);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7, v10);
  v12 = &v34[-v11];
  v13 = *a1;
  if (v13 == 5)
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v14 = sub_10008CCDC();
    sub_100009F94(v14, qword_1000D6D38);
    sub_100052990(a2, v12, type metadata accessor for Device);
    v15 = sub_10008CCBC();
    v16 = sub_10008DE1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136446210;
      sub_10008CB0C();
      sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = sub_10008E15C();
      v21 = v20;
      sub_1000207B4(v12, type metadata accessor for Device);
      v22 = sub_10000A2D8(v19, v21, &v35);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "AXMEnroller finished for %{public}s", v17, 0xCu);
      sub_10000BC74(v18);
    }

    else
    {

      sub_1000207B4(v12, type metadata accessor for Device);
    }
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v23 = sub_10008CCDC();
    sub_100009F94(v23, qword_1000D6D38);
    sub_100052990(a2, v9, type metadata accessor for Device);
    v24 = sub_10008CCBC();
    v25 = sub_10008DE2C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v26 = 136446466;
      v34[7] = v13;
      v27 = sub_10008DC4C();
      v29 = sub_10000A2D8(v27, v28, &v35);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      sub_10008CB0C();
      sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = sub_10008E15C();
      v32 = v31;
      sub_1000207B4(v9, type metadata accessor for Device);
      v33 = sub_10000A2D8(v30, v32, &v35);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "AXMEnroller failed with error: %{public}s for device:  %{public}s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000207B4(v9, type metadata accessor for Device);
    }

    swift_unownedRetainStrong();
    sub_10004D290(a2);

    swift_unownedRetainStrong();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v35) = v13;
    sub_10008CDBC();
  }
}

void sub_10004D290(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Device(0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for EnrolledDeviceRecord(0);
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  v15 = __chkstk_darwin(v12, v14);
  v16 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v19 = &v41 - v18;
  v20 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (*(v21 + 16))
  {

    v22 = sub_10000EA60(a1);
    if (v23)
    {
      v24 = *(*(v21 + 56) + 8 * v22);

      swift_beginAccess();
      sub_10004D7C4(a1);
      swift_endAccess();

      sub_10004F160();
      sub_1000500A8();
      v25 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device;
      swift_beginAccess();
      sub_100052990(v24 + v25, v19, type metadata accessor for Device);
      sub_10008CAAC();
      v19[*(v12 + 24)] = 1;
      v26 = sub_10008DDEC();
      (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
      sub_100052990(v19, v16, type metadata accessor for EnrolledDeviceRecord);
      sub_10008DDBC();

      v27 = sub_10008DDAC();
      v28 = (*(v42 + 80) + 40) & ~*(v42 + 80);
      v29 = swift_allocObject();
      v29[2] = v27;
      v29[3] = &protocol witness table for MainActor;
      v29[4] = v2;
      sub_100052B74(v16, v29 + v28, type metadata accessor for EnrolledDeviceRecord);
      sub_10007B228(0, 0, v11, &unk_100094768, v29);

      v30 = v19;
      v31 = type metadata accessor for EnrolledDeviceRecord;
      goto LABEL_10;
    }
  }

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v32 = sub_10008CCDC();
  sub_100009F94(v32, qword_1000D6D38);
  sub_100052990(a1, v7, type metadata accessor for Device);
  v33 = sub_10008CCBC();
  v34 = sub_10008DE2C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43[0] = v36;
    *v35 = 136446210;
    sub_10008CB0C();
    sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = sub_10008E15C();
    v39 = v38;
    sub_1000207B4(v7, type metadata accessor for Device);
    v40 = sub_10000A2D8(v37, v39, v43);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s Received enrollment failed for a device we are not tracking", v35, 0xCu);
    sub_10000BC74(v36);

    return;
  }

  v31 = type metadata accessor for Device;
  v30 = v7;
LABEL_10:
  sub_1000207B4(v30, v31);
}

uint64_t sub_10004D7C4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000EA60(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100052454();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_10008CB0C();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_100051F90(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_10004D88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10008DDBC();
  v5[4] = sub_10008DDAC();
  v7 = sub_10008DD8C();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10004D924, v7, v6);
}

uint64_t sub_10004D924()
{
  v1 = *(v0[2] + 40);
  ObjectType = swift_getObjectType();
  v6 = (*(v1 + 24) + **(v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_10004DA50;
  v4 = v0[3];

  return v6(v4, ObjectType, v1);
}

uint64_t sub_10004DA50()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10004DB70, v3, v2);
}

uint64_t sub_10004DB70()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10004DBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v125 - v6;
  v8 = type metadata accessor for Device(0);
  v10 = __chkstk_darwin(v8, v9);
  v12 = v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = v125 - v15;
  v18 = __chkstk_darwin(v14, v17);
  v20 = v125 - v19;
  v22 = __chkstk_darwin(v18, v21);
  v24 = v125 - v23;
  __chkstk_darwin(v22, v25);
  v27 = v125 - v26;
  sub_1000527DC(a2, &v137);
  if (v141)
  {
    v28 = a1;
    v29 = v8;
    v126 = v28;
    v30 = v138;
    if (v141 == 1)
    {
      v31 = v139;
      v32 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
      v33 = v127;
      swift_beginAccess();
      v34 = *(v33 + v32);
      if (*(v34 + 16))
      {

        v35 = sub_10000EA60(v126);
        if (v36)
        {
          v37 = *(*(v34 + 56) + 8 * v35);

          v38 = v37 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device;
          swift_beginAccess();
          v39 = (v38 + *(v29 + 32));
          *v39 = v30;
          v39[1] = v31;

          sub_10004F160();

LABEL_25:
          v100 = v126;
          if (qword_1000C8CF8 != -1)
          {
            swift_once();
          }

          v101 = sub_10008CCDC();
          sub_100009F94(v101, qword_1000D6D38);
          sub_100052990(v100, v24, type metadata accessor for Device);
          v102 = sub_10008CCBC();
          v103 = sub_10008DE1C();
          if (!os_log_type_enabled(v102, v103))
          {

            sub_1000207B4(v24, type metadata accessor for Device);
            return;
          }

          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v136[0] = v105;
          *v104 = 136446210;
          sub_10008CB0C();
          sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v106 = sub_10008E15C();
          v108 = v107;
          sub_1000207B4(v24, type metadata accessor for Device);
          v109 = sub_10000A2D8(v106, v108, v136);

          *(v104 + 4) = v109;
          v110 = "sent enrollment info for %{public}s";
          goto LABEL_41;
        }
      }

      goto LABEL_25;
    }

    if (v138 | v137 | v140 | v139 | *(&v137 + 1))
    {
      v52 = v126;
      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v53 = sub_10008CCDC();
      sub_100009F94(v53, qword_1000D6D38);
      sub_100052990(v52, v12, type metadata accessor for Device);
      v54 = sub_10008CCBC();
      v55 = sub_10008DE1C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v132 = v57;
        *v56 = 136446210;
        sub_10008CB0C();
        sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v58 = sub_10008E15C();
        v60 = v59;
        sub_1000207B4(v12, type metadata accessor for Device);
        v61 = sub_10000A2D8(v58, v60, &v132);

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s disconnected", v56, 0xCu);
        sub_10000BC74(v57);
      }

      else
      {

        sub_1000207B4(v12, type metadata accessor for Device);
      }

      sub_1000500A8();
    }

    else
    {
      v89 = v126;
      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v90 = sub_10008CCDC();
      v91 = sub_100009F94(v90, qword_1000D6D38);
      sub_100052990(v89, v20, type metadata accessor for Device);
      v92 = sub_10008CCBC();
      v93 = sub_10008DE1C();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *&v132 = swift_slowAlloc();
        v125[1] = v91;
        v95 = v132;
        *v94 = 136446210;
        sub_10008CB0C();
        sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v96 = sub_10008E15C();
        v98 = v97;
        sub_1000207B4(v20, type metadata accessor for Device);
        v99 = sub_10000A2D8(v96, v98, &v132);

        *(v94 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v92, v93, "%{public}s enrolled successfully", v94, 0xCu);
        sub_10000BC74(v95);
      }

      else
      {

        sub_1000207B4(v20, type metadata accessor for Device);
      }

      v111 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
      v112 = v127;
      swift_beginAccess();
      v113 = *(v112 + v111);
      if (*(v113 + 16))
      {

        v114 = v126;
        v115 = sub_10000EA60(v126);
        if (v116)
        {
          v117 = *(*(v113 + 56) + 8 * v115);

          swift_beginAccess();
          sub_10004D7C4(v114);
          swift_endAccess();

          sub_10004F160();
          sub_1000500A8();
          v118 = sub_10008DDEC();
          (*(*(v118 - 8) + 56))(v7, 1, 1, v118);
          sub_10008DDBC();

          v119 = sub_10008DDAC();
          v120 = swift_allocObject();
          v120[2] = v119;
          v120[3] = &protocol witness table for MainActor;
          v120[4] = v117;
          v120[5] = v112;
          sub_10007B228(0, 0, v7, &unk_100094758, v120);

          return;
        }
      }

      sub_100052990(v126, v16, type metadata accessor for Device);
      v102 = sub_10008CCBC();
      v103 = sub_10008DE2C();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v128[0] = v105;
        *v104 = 136446210;
        sub_10008CB0C();
        sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v121 = sub_10008E15C();
        v123 = v122;
        sub_1000207B4(v16, type metadata accessor for Device);
        v124 = sub_10000A2D8(v121, v123, v128);

        *(v104 + 4) = v124;
        v110 = "%{public}s Received enrolled status for a device we are not tracking";
LABEL_41:
        _os_log_impl(&_mh_execute_header, v102, v103, v110, v104, 0xCu);
        sub_10000BC74(v105);

        return;
      }

      sub_1000207B4(v16, type metadata accessor for Device);
    }
  }

  else
  {
    sub_10000C3E0(&v137, v136);
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v40 = sub_10008CCDC();
    sub_100009F94(v40, qword_1000D6D38);
    sub_100052990(a1, v27, type metadata accessor for Device);
    sub_10000BE8C(v136, &v132);
    v41 = sub_10008CCBC();
    v42 = sub_10008DE1C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v128[0] = swift_slowAlloc();
      *v43 = 136446466;
      sub_10008CB0C();
      sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = sub_10008E15C();
      v46 = v45;
      sub_1000207B4(v27, type metadata accessor for Device);
      v47 = sub_10000A2D8(v44, v46, v128);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      v48 = sub_10000BB24(&v132, *(&v133 + 1));
      v49 = *v48;
      v50 = v48[1];

      sub_10000BC74(&v132);
      v51 = sub_10000A2D8(v49, v50, v128);

      *(v43 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s: Received serial number: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000207B4(v27, type metadata accessor for Device);
      sub_10000BC74(&v132);
    }

    v62 = v127;
    v63 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
    swift_beginAccess();
    v64 = *(v62 + v63);
    if (*(v64 + 16))
    {

      v65 = sub_10000EA60(a1);
      if (v66)
      {
        v67 = v8;
        v68 = *(*(v64 + 56) + 8 * v65);

        v69 = v68 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device;
        swift_beginAccess();
        v70 = sub_10000BB24(v136, v136[3]);
        v71 = v70[3];
        v73 = *v70;
        v72 = v70[1];
        v134 = v70[2];
        v135 = v71;
        v132 = v73;
        v133 = v72;
        v130 = &type metadata for DMTResultBackedADEPrerequisites;
        v131 = &off_1000C2CF0;
        v74 = swift_allocObject();
        v129[0] = v74;
        v75 = v70[3];
        v77 = *v70;
        v76 = v70[1];
        v74[3] = v70[2];
        v74[4] = v75;
        v74[1] = v77;
        v74[2] = v76;
        v78 = sub_10000BB24(v129, &type metadata for DMTResultBackedADEPrerequisites);
        v79 = v78[7];
        v80 = (v69 + v67[5]);
        *v80 = v78[6];
        v80[1] = v79;
        sub_10003E190(&v132, v128);

        v81 = sub_10000BB24(v129, v130);
        v83 = v81[4];
        v82 = v81[5];
        v84 = (v69 + v67[6]);
        *v84 = v83;
        v84[1] = v82;

        v85 = sub_10000BB24(v129, v130);
        v87 = *v85;
        v86 = v85[1];
        v88 = (v69 + v67[7]);
        *v88 = v87;
        v88[1] = v86;

        sub_10000BC74(v129);
        swift_endAccess();
        sub_10004F160();
      }

      else
      {
      }
    }

    sub_10000BC74(v136);
  }
}

uint64_t sub_10004EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for EnrolledDeviceRecord(0);
  v5[8] = swift_task_alloc();
  sub_10008DDBC();
  v5[9] = sub_10008DDAC();
  v7 = sub_10008DD8C();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_10004EAFC, v7, v6);
}

uint64_t sub_10004EAFC()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device;
  swift_beginAccess();
  sub_100052990(v4 + v5, v2, type metadata accessor for Device);
  sub_10008CAAC();
  *(v2 + *(v1 + 24)) = 0;
  v6 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v11 = (*(v6 + 24) + **(v6 + 24));
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_10004EC84;
  v9 = v0[8];

  return v11(v9, ObjectType, v6);
}

uint64_t sub_10004EC84()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_10004EDA4, v3, v2);
}

uint64_t sub_10004EDA4()
{
  v1 = *(v0 + 64);

  sub_1000207B4(v1, type metadata accessor for EnrolledDeviceRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004EE28(void *a1)
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000A2D8(0xD000000000000020, 0x800000010009AA20, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s begin", v5, 0xCu);
    sub_10000BC74(v6);
  }

  v8 = a1;
  return sub_10008CD5C();
}

void sub_10004EF80()
{
  v1 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);

  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000A2D8(0xD00000000000001DLL, 0x800000010009AA00, &v9);
    *(v5 + 12) = 2082;
    sub_100009C08(&qword_1000CCC48, &unk_100094740);
    v6 = sub_10008DC4C();
    v8 = sub_10000A2D8(v6, v7, &v9);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s prerequisiteStatus = %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_prerequisiteStatus) == 5)
  {
    sub_10004A8B8();
  }

  else
  {
    sub_10004ACEC();
  }
}

uint64_t sub_10004F160()
{
  v64 = type metadata accessor for Device(0);
  v77 = *(v64 - 8);
  v2 = __chkstk_darwin(v64, v1);
  v66 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2, v4);
  v65 = &v63 - v6;
  __chkstk_darwin(v5, v7);
  v80 = &v63 - v8;
  v79 = sub_10008CB0C();
  v9 = *(v79 - 8);
  __chkstk_darwin(v79, v10);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009C08(&qword_1000CCC38, &qword_100094730);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v63 - v18;
  v20 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
  swift_beginAccess();
  v21 = *(v0 + v20);
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v26 = (v23 + 63) >> 6;
  v69 = v9 + 16;
  v67 = v0;
  v68 = v9 + 32;
  v73 = v9;
  v74 = v21;
  v76 = (v9 + 8);
  v27 = v19;

  v28 = 0;
  v29 = &_swiftEmptyArrayStorage;
  v70 = v27;
  v71 = v16;
  v75 = v22;
  if (!v25)
  {
LABEL_5:
    if (v26 <= (v28 + 1))
    {
      v31 = (v28 + 1);
    }

    else
    {
      v31 = v26;
    }

    v32 = (v31 - 1);
    while (1)
    {
      v30 = (v28 + 1);
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v26)
      {
        v48 = sub_100009C08(&qword_1000CCC40, &qword_100094738);
        (*(*(v48 - 8) + 56))(v16, 1, 1, v48);
        v25 = 0;
        v28 = v32;
        goto LABEL_14;
      }

      v25 = *(v22 + 8 * v30);
      ++v28;
      if (v25)
      {
        v78 = v29;
        v28 = v30;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  while (1)
  {
    v78 = v29;
    v30 = v28;
LABEL_13:
    v33 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v34 = v33 | (v30 << 6);
    v36 = v73;
    v35 = v74;
    v37 = v72;
    v38 = v79;
    (*(v73 + 16))(v72, *(v74 + 48) + *(v73 + 72) * v34, v79);
    v39 = *(*(v35 + 56) + 8 * v34);
    v40 = sub_100009C08(&qword_1000CCC40, &qword_100094738);
    v41 = *(v40 + 48);
    v42 = *(v36 + 32);
    v16 = v71;
    v42(v71, v37, v38);
    *&v16[v41] = v39;
    (*(*(v40 - 8) + 56))(v16, 0, 1, v40);

    v29 = v78;
    v27 = v70;
LABEL_14:
    sub_10005276C(v16, v27);
    v43 = sub_100009C08(&qword_1000CCC40, &qword_100094738);
    if ((*(*(v43 - 8) + 48))(v27, 1, v43) == 1)
    {
      break;
    }

    v44 = *(v27 + *(v43 + 48));
    v45 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device;
    swift_beginAccess();
    sub_100052990(v44 + v45, v80, type metadata accessor for Device);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_10003AF04(0, v29[2] + 1, 1, v29);
    }

    v22 = v75;
    v47 = v29[2];
    v46 = v29[3];
    if (v47 >= v46 >> 1)
    {
      v29 = sub_10003AF04((v46 > 1), v47 + 1, 1, v29);
    }

    v29[2] = v47 + 1;
    sub_100052B74(v80, v29 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v47, type metadata accessor for Device);
    (*v76)(v27, v79);
    if (!v25)
    {
      goto LABEL_5;
    }
  }

  if (!v29[2])
  {
    v49 = *(v67 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice);
    if (v49)
    {
      v32 = v49;
      v50 = [v32 identifier];
      v26 = v65;
      sub_10008CAEC();

      v51 = [v32 modelIdentifier];
      v52 = sub_10008DBDC();
      v54 = v53;

      v55 = v64;
      v56 = (v26 + *(v64 + 20));
      *v56 = 0;
      v56[1] = 0;
      v57 = (v26 + v55[6]);
      *v57 = v52;
      v57[1] = v54;
      v58 = (v26 + v55[7]);
      *v58 = 0;
      v58[1] = 0;
      v59 = (v26 + v55[8]);
      *v59 = 0;
      v59[1] = 0;
      v22 = v66;
      sub_100052990(v26, v66, type metadata accessor for Device);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v61 = v29[2];
        v60 = v29[3];
        if (v61 >= v60 >> 1)
        {
          v29 = sub_10003AF04((v60 > 1), v61 + 1, 1, v29);
        }

        sub_1000207B4(v26, type metadata accessor for Device);
        v29[2] = v61 + 1;
        sub_100052B74(v22, v29 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v61, type metadata accessor for Device);
        goto LABEL_28;
      }

LABEL_30:
      v29 = sub_10003AF04(0, v29[2] + 1, 1, v29);
      goto LABEL_25;
    }
  }

LABEL_28:
  v81 = v29;
  sub_10008CD5C();
}

void sub_10004F890()
{
  v1 = v0;
  v2 = sub_10008CB0C();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) & 1) == 0)
  {
    if (qword_1000C8CF8 == -1)
    {
LABEL_8:
      v13 = sub_10008CCDC();
      sub_100009F94(v13, qword_1000D6D38);
      v14 = sub_10008CCBC();
      v15 = sub_10008DE1C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v58 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_10000A2D8(0xD00000000000001BLL, 0x800000010009A9E0, &v58);
        _os_log_impl(&_mh_execute_header, v14, v15, "%s Delaying processing while discovering initial devices", v16, 0xCu);
        sub_10000BC74(v17);
      }

      sub_10004AF68();
      return;
    }

LABEL_48:
    swift_once();
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice;
  if (*(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice))
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v9 = sub_10008CCDC();
    sub_100009F94(v9, qword_1000D6D38);
    v57 = sub_10008CCBC();
    v10 = sub_10008DE1C();
    if (os_log_type_enabled(v57, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v58 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10000A2D8(0xD00000000000001BLL, 0x800000010009A9E0, &v58);
      _os_log_impl(&_mh_execute_header, v57, v10, "%s Already processing a device, bailing out", v11, 0xCu);
      sub_10000BC74(v12);
    }

    else
    {
      v46 = v57;
    }

    return;
  }

  v55 = v5;
  v18 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices;
  v19 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices);
  if (v19 >> 62)
  {
    v20 = sub_10008E00C();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v21 = sub_10008CCDC();
  v22 = sub_100009F94(v21, qword_1000D6D38);
  v23 = sub_10008CCBC();
  v24 = sub_10008DE1C();
  v25 = os_log_type_enabled(v23, v24);
  v57 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v58 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_10000A2D8(0xD00000000000001BLL, 0x800000010009A9E0, &v58);
    *(v26 + 12) = 2048;
    *(v26 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s - %ld nearby devices", v26, 0x16u);
    sub_10000BC74(v27);
  }

  v28 = *(v1 + v18);
  if (v28 >> 62)
  {
    v29 = sub_10008E00C();
    if (!v29)
    {
      return;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      return;
    }
  }

  v53 = v7;
  v54 = v8;
  if ((v28 & 0xC000000000000001) != 0)
  {

    v31 = sub_10008DFCC();
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v30 = *(v28 + 32);

    v31 = v30;
  }

  v32 = v31;
  v52 = v3;
  v56 = v1;
  if (v29 != 1)
  {
    v47 = 1;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v48 = sub_10008DFCC();
      }

      else
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v47 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v48 = *(v28 + 8 * v47 + 32);
      }

      v33 = v48;
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v50 = [v32 RSSI];
      if (v50 < [v33 RSSI])
      {

        v32 = v33;
        ++v47;
        if (v49 == v29)
        {
          goto LABEL_26;
        }
      }

      else
      {

        ++v47;
        if (v49 == v29)
        {
          goto LABEL_25;
        }
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_25:
  v33 = v32;
LABEL_26:

  v34 = *(v56 + v54);
  *(v56 + v54) = v33;
  v35 = v33;

  sub_10004F160();
  v36 = sub_10008CCBC();
  v37 = sub_10008DE1C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_10000A2D8(0xD00000000000001BLL, 0x800000010009A9E0, &v58);
    *(v38 + 12) = 2082;
    v39 = [v35 identifier];
    v40 = v53;
    sub_10008CAEC();

    sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = v55;
    v42 = sub_10008E15C();
    v44 = v43;
    (*(v52 + 8))(v40, v41);
    v45 = sub_10000A2D8(v42, v44, &v58);

    *(v38 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s - begin pairing with %{public}s", v38, 0x16u);
    swift_arrayDestroy();
  }

  sub_100082438(v35);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v58) = 1;

  sub_10008CDBC();
  sub_10004ACEC();
}

uint64_t sub_1000500A8()
{
  v1 = v0;
  v2 = sub_10008DA5C();
  v22 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10008DA8C();
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v10 = sub_10008CCDC();
  sub_100009F94(v10, qword_1000D6D38);
  v11 = sub_10008CCBC();
  v12 = sub_10008DE1C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000A2D8(0xD000000000000015, 0x800000010009A9C0, aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_10000BC74(v14);
  }

  v15 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice);
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice) = 0;

  sub_10004F160();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 5;

  sub_10008CDBC();
  sub_10004ACEC();
  sub_1000167AC();
  v16 = sub_10008DE7C();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  aBlock[4] = sub_100052714;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100077134;
  aBlock[3] = &unk_1000C10F8;
  v18 = _Block_copy(aBlock);
  sub_10008DA7C();
  v23 = &_swiftEmptyArrayStorage;
  sub_100052CD4(&qword_1000CD7D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009C08(&qword_1000CA450, &qword_100097630);
  sub_10001121C(&qword_1000CD7E0, &qword_1000CA450, &qword_100097630, &protocol conformance descriptor for [A]);
  sub_10008DF5C();
  sub_10008DE8C();
  _Block_release(v18);

  swift_unownedRelease();
  (*(v22 + 8))(v5, v2);
  (*(v20 + 8))(v9, v21);
}

void sub_100050510(uint64_t a1, unint64_t a2)
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v4 = sub_10008CCDC();
  sub_100009F94(v4, qword_1000D6D38);

  v5 = sub_10008CCBC();
  v6 = sub_10008DE0C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136380675;
    *(v7 + 4) = sub_10000A2D8(a1, a2, &v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "Trying scanned pin: %{private}s", v7, 0xCu);
    sub_10000BC74(v8);
  }

  sub_100082BEC(a1, a2);
}

uint64_t sub_100050674()
{
  v1 = sub_10008CB0C();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v23 - v9;
  __chkstk_darwin(v8, v11);
  v13 = &v23 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice);
  if (v14)
  {
    v15 = v14;
    v16 = [v15 identifier];
    sub_10008CAEC();

    swift_beginAccess();
    sub_10004D7C4(v13);
    swift_endAccess();

    (*(v2 + 16))(v6, v13, v1);
    swift_beginAccess();
    sub_100050FAC(v10, v6);
    v17 = *(v2 + 8);
    v17(v10, v1);
    swift_endAccess();
    sub_1000833E4();
    sub_1000500A8();

    return (v17)(v13, v1);
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v19 = sub_10008CCDC();
    sub_100009F94(v19, qword_1000D6D38);
    v20 = sub_10008CCBC();
    v21 = sub_10008DE0C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No device available to cancel", v22, 2u);
    }

    return sub_1000500A8();
  }
}