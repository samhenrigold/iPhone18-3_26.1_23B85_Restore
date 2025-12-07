uint64_t sub_1000015F0()
{
  result = sub_100027278("com.apple.Preferences", 0x15uLL, 1);
  qword_100038CA8 = result;
  qword_100038CB0 = v1;
  return result;
}

uint64_t *sub_100001634()
{
  if (qword_100038040 != -1)
  {
    swift_once();
  }

  return &qword_100038CA8;
}

uint64_t sub_100001694()
{
  v1 = *sub_100001634();

  return v1;
}

uint64_t sub_1000016EC()
{
  if (qword_100038048 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100001760()
{
  if (qword_100038050 != -1)
  {
    swift_once();
  }

  return v1;
}

id sub_1000017D4()
{
  result = [objc_opt_self() em_userDefaults];
  qword_100038CB8 = result;
  return result;
}

uint64_t *sub_100001810()
{
  if (qword_100038058 != -1)
  {
    swift_once();
  }

  return &qword_100038CB8;
}

void *sub_100001870()
{
  v1 = *sub_100001810();
  v1;
  return v1;
}

uint64_t sub_1000018A8()
{
  v9 = "Title for entity representing the Ask Before Deleting setting in Mail";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = qword_100038CC0;
  sub_100001C10(v8, qword_100038CC0);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Ask Before Deleting", 0x13uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 71;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t sub_100001BA4(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t *sub_100001C10(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_100001CAC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_100001D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v1 = sub_100027188();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_100001D88()
{
  if (qword_100038060 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, qword_100038CC0);
}

uint64_t sub_100001DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100001D88();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100001E58()
{
  result = sub_100027278("ShowMessageDeleteConfirmation", 0x1DuLL, 1);
  qword_100038070 = result;
  qword_100038078 = v1;
  return result;
}

uint64_t *sub_100001E9C()
{
  if (qword_100038068 != -1)
  {
    swift_once();
  }

  return &qword_100038070;
}

uint64_t sub_100001EFC()
{
  v1 = *sub_100001E9C();

  return v1;
}

uint64_t sub_100001F38(uint64_t a1)
{

  sub_1000270F8();

  return v2;
}

uint64_t sub_100001F94(uint64_t a1, uint64_t a2)
{

  sub_100027108();
}

uint64_t sub_100002008(uint64_t a1)
{

  v2 = sub_100027118();

  return v2;
}

uint64_t sub_100002088(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_1000020C4()
{
  v2[3] = 0;
  v2[1] = &unk_10002B2F0;
  v2[2] = &unk_10002B2F8;
  v3 = &v5;
  v5 = 0;
  v0 = sub_100027198();
  v2[0] = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v2[4] = v2 - v2[0];
  sub_100001BA4(&qword_100038310, &qword_10002B2E8);
  sub_100027278("Ask Before Deleting", 0x13uLL, 1);
  sub_100027178();
  sub_100003BC0();
  v4 = sub_100027128();

  v5 = v4;
  sub_100003D38(v3);
  return v4;
}

uint64_t sub_100002238@<X0>(uint64_t *a2@<X8>)
{
  sub_100002278();
  result = sub_100026E18();
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_100002278()
{
  v2 = qword_100038238;
  if (!qword_100038238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038238);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000235C()
{
  v2 = qword_100038240;
  if (!qword_100038240)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038240);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100002410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1000024DC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000024DC()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_10000263C()
{
  v2 = qword_100038248;
  if (!qword_100038248)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038248);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000026E0()
{
  *(v0 + 16) = v0;
  v1 = sub_1000020C4();
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t sub_100002768(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100002818;

  return sub_1000026B8();
}

uint64_t sub_100002818(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v7 = v3 + 16;
  v8 = v3 + 16;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    **(v7 + 8) = a1;
    v4 = *(*v8 + 8);
  }

  return v4();
}

uint64_t sub_1000029C0(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_100002A84();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.allEntities()(a2, v4);
}

unint64_t sub_100002A84()
{
  v2 = qword_100038250;
  if (!qword_100038250)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038250);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100002B18(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_100002A84();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002BE0;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v4);
}

uint64_t sub_100002BE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t sub_100002D74(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_100002A84();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.suggestedEntities()(a2, v4);
}

uint64_t sub_100002E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_100002BE0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100002F04(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_100003158();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002FCC;

  return EntityQuery.results()(a1, a2, v4);
}

uint64_t sub_100002FCC()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

unint64_t sub_100003158()
{
  v2 = qword_100038258;
  if (!qword_100038258)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038258);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000031D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1000024DC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_1000032B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  *(v3 + 48) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 136) = 0;
  v4 = sub_100001BA4(&qword_100038260, &qword_10002AD58);
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  return _swift_task_switch(sub_1000033D8, 0);
}

uint64_t sub_1000033D8()
{
  *(v0 + 16) = v0;
  KeyPath = swift_getKeyPath();
  *(v0 + 88) = KeyPath;
  v1 = swift_task_alloc();
  v4[12] = v1;
  v6 = sub_100001BA4(&qword_100038268, &qword_10002AD88);
  v4[13] = sub_100003BC0();
  *v1 = v4[2];
  v1[1] = sub_1000034D0;
  v2 = v4[10];

  return _AppEntityUpdate.value<A>(of:)(v2, KeyPath, v6);
}

uint64_t sub_1000034D0()
{
  *(*v0 + 16) = *v0;

  return _swift_task_switch(sub_100003608, 0);
}

uint64_t sub_100003608()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v0[2] = v0;
  if ((*(v2 + 88))(v1, v3) == enum case for _IntentValueState.set<A>(_:))
  {
    v8 = *(v11 + 80);
    (*(*(v11 + 72) + 96))();
    v9 = *v8;
    *(v11 + 136) = *v8 & 1;
    *(v11 + 40) = sub_1000020C4();
    *(v11 + 137) = v9;
    KeyPath = swift_getKeyPath();
    *(v11 + 112) = KeyPath;
    v6 = swift_task_alloc();
    *(v11 + 120) = v6;
    *v6 = *(v11 + 16);
    v6[1] = sub_10000385C;
    v7 = *(v11 + 104);

    return AppEntity._setValue<A>(_:for:)(v11 + 137, KeyPath, v7);
  }

  else
  {
    (*(*(v11 + 72) + 8))(*(v11 + 80), *(v11 + 64));
    sub_100003CBC();
    sub_100026D18();

    v4 = *(*(v11 + 16) + 8);

    return v4();
  }
}

uint64_t sub_10000385C()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[16] = v0;

  if (v0)
  {
    v2 = sub_100003AC0;
  }

  else
  {

    sub_100003D38(v4 + 5);
    v2 = sub_1000039EC;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_1000039EC(uint64_t a1)
{
  *(v1 + 16) = v1;
  sub_100003CBC();
  sub_100026D18();

  v2 = *(*(v1 + 16) + 8);

  return v2();
}

uint64_t sub_100003AC0()
{
  *(v0 + 16) = v0;

  sub_100003D38((v0 + 40));

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_100003B78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000047E0(a1, &v4);
  *a2 = sub_100002008(v4);
}

unint64_t sub_100003BC0()
{
  v2 = qword_100038270;
  if (!qword_100038270)
  {
    sub_100003C48(&qword_100038278, &unk_10002AD90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038270);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100003C48(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t sub_100003CBC()
{
  v2 = qword_100038280;
  if (!qword_100038280)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038280);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100003D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100002FCC;

  return sub_1000032B4(a1, a2, a3);
}

unint64_t sub_100003E70()
{
  v2 = qword_100038288;
  if (!qword_100038288)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100003F04()
{
  v2 = qword_100038290;
  if (!qword_100038290)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100003F98()
{
  v2 = qword_100038298;
  if (!qword_100038298)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000402C()
{
  v2 = qword_1000382A0;
  if (!qword_1000382A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000382A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000040E4()
{
  v2 = qword_1000382A8;
  if (!qword_1000382A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000382A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100004178()
{
  v2 = qword_1000382B0;
  if (!qword_1000382B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000382B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000420C()
{
  v2 = qword_1000382B8;
  if (!qword_1000382B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000382B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000042C4()
{
  v2 = qword_1000382C0;
  if (!qword_1000382C0)
  {
    sub_100003C48(&qword_1000382C8, &qword_10002AF88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000382C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100004364()
{
  v2 = qword_1000382D0;
  if (!qword_1000382D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000382D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000043F8()
{
  v2 = qword_1000382D8;
  if (!qword_1000382D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000382D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000044A4()
{
  v2 = qword_1000382E0;
  if (!qword_1000382E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000382E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100004538()
{
  v2 = qword_1000382E8;
  if (!qword_1000382E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000382E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000045CC()
{
  v2 = qword_1000382F0;
  if (!qword_1000382F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000382F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100004660()
{
  v2 = qword_1000382F8;
  if (!qword_1000382F8)
  {
    sub_100003C48(&qword_100038300, &qword_10002B120);
    sub_10000420C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000382F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100004710()
{
  v2 = qword_100038308;
  if (!qword_100038308)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038308);
    return WitnessTable;
  }

  return v2;
}

void *sub_1000047E0(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_100004818(uint64_t a1, void *a2)
{
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = *a2;
  return _swift_task_switch(sub_10000485C, 0);
}

uint64_t sub_10000485C()
{
  *(v0 + 16) = v0;
  v7 = *sub_100001810();
  v7;
  if (v7)
  {
    sub_100001E9C();

    v3 = sub_100027268();

    v4 = [v7 BOOLForKey:v3];

    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (v5 == 2)
  {
    **(v6 + 32) = 0;
  }

  else
  {
    **(v6 + 32) = v5;
  }

  v1 = *(*(v6 + 16) + 8);

  return v1();
}

uint64_t sub_100004A24(void *a1, char *a2)
{
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 24) = *a1;
  v3 = *a2;
  *(v2 + 33) = *a2 & 1;
  *(v2 + 32) = v3 & 1;
  return _swift_task_switch(sub_100004A84, 0);
}

uint64_t sub_100004A84()
{
  *(v0 + 16) = v0;
  v6 = *sub_100001810();
  v6;
  if (v6)
  {
    v3 = *(v5 + 33);
    sub_100001E9C();

    v4 = sub_100027268();

    [v6 setBool:v3 & 1 forKey:v4];
  }

  v1 = *(*(v5 + 16) + 8);

  return v1();
}

uint64_t sub_100004BE8()
{
  result = sub_100027278("com.apple.Preferences", 0x15uLL, 1);
  qword_100038CD8 = result;
  qword_100038CE0 = v1;
  return result;
}

uint64_t *sub_100004C2C()
{
  if (qword_100038080 != -1)
  {
    swift_once();
  }

  return &qword_100038CD8;
}

uint64_t sub_100004C8C()
{
  v1 = *sub_100004C2C();

  return v1;
}

uint64_t sub_100004CC8()
{
  if (qword_100038088 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100004D3C()
{
  if (qword_100038090 != -1)
  {
    swift_once();
  }

  return v1;
}

id sub_100004DB0()
{
  result = [objc_opt_self() em_userDefaults];
  qword_100038CE8 = result;
  return result;
}

uint64_t *sub_100004DEC()
{
  if (qword_100038098 != -1)
  {
    swift_once();
  }

  return &qword_100038CE8;
}

void *sub_100004E4C()
{
  v1 = *sub_100004DEC();
  v1;
  return v1;
}

uint64_t sub_100004E84()
{
  v9 = "Title for entity representing the Blocked Sender Enabled setting in Mail";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = qword_100038CF0;
  sub_100001C10(v8, qword_100038CF0);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Blocked Sender Enabled", 0x16uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 74;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t sub_100005180()
{
  if (qword_1000380A0 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, qword_100038CF0);
}

uint64_t sub_1000051EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100005180();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100005250()
{
  result = sub_100027278("BlockedSenderEnabled", 0x14uLL, 1);
  qword_100038318 = result;
  qword_100038320 = v1;
  return result;
}

uint64_t *sub_100005294()
{
  if (qword_1000380A8 != -1)
  {
    swift_once();
  }

  return &qword_100038318;
}

uint64_t sub_1000052F4()
{
  v1 = *sub_100005294();

  return v1;
}

uint64_t sub_100005330()
{
  v2[3] = 0;
  v2[1] = &unk_10002B8D0;
  v2[2] = &unk_10002B8D8;
  v3 = &v5;
  v5 = 0;
  v0 = sub_100027198();
  v2[0] = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v2[4] = v2 - v2[0];
  sub_100001BA4(&qword_1000383F8, &qword_10002B8C8);
  sub_100027278("Blocked Sender Enabled", 0x16uLL, 1);
  sub_100027178();
  sub_1000064AC();
  v4 = sub_100027128();

  v5 = v4;
  sub_100003D38(v3);
  return v4;
}

uint64_t sub_1000054A4@<X0>(uint64_t *a2@<X8>)
{
  sub_1000054E4();
  result = sub_100026E18();
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_1000054E4()
{
  v2 = qword_100038328;
  if (!qword_100038328)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000055B0()
{
  v2 = qword_100038330;
  if (!qword_100038330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000569C()
{
  v2 = qword_100038338;
  if (!qword_100038338)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038338);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100005740()
{
  *(v0 + 16) = v0;
  v1 = sub_100005330();
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t sub_1000057C8(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100002818;

  return sub_100005718();
}

uint64_t sub_100005878(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_10000593C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.allEntities()(a2, v4);
}

unint64_t sub_10000593C()
{
  v2 = qword_100038340;
  if (!qword_100038340)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038340);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000059B8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10000593C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002BE0;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v4);
}

uint64_t sub_100005A80(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_10000593C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.suggestedEntities()(a2, v4);
}

uint64_t sub_100005B44(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_100005C0C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002FCC;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_100005C0C()
{
  v2 = qword_100038348;
  if (!qword_100038348)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038348);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100005C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  *(v3 + 48) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 136) = 0;
  v4 = sub_100001BA4(&qword_100038260, &qword_10002AD58);
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  return _swift_task_switch(sub_100005DAC, 0);
}

uint64_t sub_100005DAC()
{
  *(v0 + 16) = v0;
  KeyPath = swift_getKeyPath();
  *(v0 + 88) = KeyPath;
  v1 = swift_task_alloc();
  v4[12] = v1;
  v6 = sub_100001BA4(&qword_100038350, &qword_10002B388);
  v4[13] = sub_1000064AC();
  *v1 = v4[2];
  v1[1] = sub_100005EA4;
  v2 = v4[10];

  return _AppEntityUpdate.value<A>(of:)(v2, KeyPath, v6);
}

uint64_t sub_100005EA4()
{
  *(*v0 + 16) = *v0;

  return _swift_task_switch(sub_100005FDC, 0);
}

uint64_t sub_100005FDC()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v0[2] = v0;
  if ((*(v2 + 88))(v1, v3) == enum case for _IntentValueState.set<A>(_:))
  {
    v8 = *(v11 + 80);
    (*(*(v11 + 72) + 96))();
    v9 = *v8;
    *(v11 + 136) = *v8 & 1;
    *(v11 + 40) = sub_100005330();
    *(v11 + 137) = v9;
    KeyPath = swift_getKeyPath();
    *(v11 + 112) = KeyPath;
    v6 = swift_task_alloc();
    *(v11 + 120) = v6;
    *v6 = *(v11 + 16);
    v6[1] = sub_100006230;
    v7 = *(v11 + 104);

    return AppEntity._setValue<A>(_:for:)(v11 + 137, KeyPath, v7);
  }

  else
  {
    (*(*(v11 + 72) + 8))(*(v11 + 80), *(v11 + 64));
    sub_100006534();
    sub_100026D18();

    v4 = *(*(v11 + 16) + 8);

    return v4();
  }
}

uint64_t sub_100006230()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[16] = v0;

  if (v0)
  {
    v2 = sub_100003AC0;
  }

  else
  {

    sub_100003D38(v4 + 5);
    v2 = sub_1000063C0;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_1000063C0(uint64_t a1)
{
  *(v1 + 16) = v1;
  sub_100006534();
  sub_100026D18();

  v2 = *(*(v1 + 16) + 8);

  return v2();
}

unint64_t sub_1000064AC()
{
  v2 = qword_100038358;
  if (!qword_100038358)
  {
    sub_100003C48(&qword_100038360, &unk_10002B390);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006534()
{
  v2 = qword_100038368;
  if (!qword_100038368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038368);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000065B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100002FCC;

  return sub_100005C88(a1, a2, a3);
}

unint64_t sub_1000066BC()
{
  v2 = qword_100038370;
  if (!qword_100038370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006750()
{
  v2 = qword_100038378;
  if (!qword_100038378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000067E4()
{
  v2 = qword_100038380;
  if (!qword_100038380)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006878()
{
  v2 = qword_100038388;
  if (!qword_100038388)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006924()
{
  v2 = qword_100038390;
  if (!qword_100038390)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000069B8()
{
  v2 = qword_100038398;
  if (!qword_100038398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006A4C()
{
  v2 = qword_1000383A0;
  if (!qword_1000383A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000383A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006AF8()
{
  v2 = qword_1000383A8;
  if (!qword_1000383A8)
  {
    sub_100003C48(&qword_1000383B0, &qword_10002B588);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000383A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006B98()
{
  v2 = qword_1000383B8;
  if (!qword_1000383B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000383B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006C2C()
{
  v2 = qword_1000383C0;
  if (!qword_1000383C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000383C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006CD8()
{
  v2 = qword_1000383C8;
  if (!qword_1000383C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000383C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006D6C()
{
  v2 = qword_1000383D0;
  if (!qword_1000383D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000383D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006E00()
{
  v2 = qword_1000383D8;
  if (!qword_1000383D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000383D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006E94()
{
  v2 = qword_1000383E0;
  if (!qword_1000383E0)
  {
    sub_100003C48(&qword_1000383E8, &qword_10002B720);
    sub_100006A4C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000383E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100006F44()
{
  v2 = qword_1000383F0;
  if (!qword_1000383F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000383F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100007014(uint64_t a1, void *a2)
{
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = *a2;
  return _swift_task_switch(sub_100007058, 0);
}

uint64_t sub_100007058()
{
  *(v0 + 16) = v0;
  v7 = *sub_100004DEC();
  v7;
  if (v7)
  {
    sub_100005294();

    v3 = sub_100027268();

    v4 = [v7 BOOLForKey:v3];

    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (v5 == 2)
  {
    **(v6 + 32) = 1;
  }

  else
  {
    **(v6 + 32) = v5;
  }

  v1 = *(*(v6 + 16) + 8);

  return v1();
}

uint64_t sub_100007224(void *a1, char *a2)
{
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 24) = *a1;
  v3 = *a2;
  *(v2 + 33) = *a2 & 1;
  *(v2 + 32) = v3 & 1;
  return _swift_task_switch(sub_100007284, 0);
}

uint64_t sub_100007284()
{
  *(v0 + 16) = v0;
  v6 = *sub_100004DEC();
  v6;
  if (v6)
  {
    v3 = *(v5 + 33);
    sub_100005294();

    v4 = sub_100027268();

    [v6 setBool:v3 & 1 forKey:v4];
  }

  v1 = *(*(v5 + 16) + 8);

  return v1();
}

uint64_t sub_1000073E8()
{
  result = sub_100027278("com.apple.Preferences", 0x15uLL, 1);
  qword_100038D08 = result;
  qword_100038D10 = v1;
  return result;
}

uint64_t *sub_10000742C()
{
  if (qword_1000380B0 != -1)
  {
    swift_once();
  }

  return &qword_100038D08;
}

uint64_t sub_10000748C()
{
  v1 = *sub_10000742C();

  return v1;
}

uint64_t sub_1000074C8()
{
  if (qword_1000380B8 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10000753C()
{
  if (qword_1000380C0 != -1)
  {
    swift_once();
  }

  return v1;
}

id sub_1000075B0()
{
  result = [objc_opt_self() em_userDefaults];
  qword_100038D18 = result;
  return result;
}

uint64_t *sub_1000075EC()
{
  if (qword_1000380C8 != -1)
  {
    swift_once();
  }

  return &qword_100038D18;
}

void *sub_10000764C()
{
  v1 = *sub_1000075EC();
  v1;
  return v1;
}

uint64_t sub_100007684()
{
  v9 = "Title for entity representing the Blocked Sender Action setting in Mail";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = qword_100038D20;
  sub_100001C10(v8, qword_100038D20);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Blocked Sender Action", 0x15uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 73;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t sub_100007980()
{
  if (qword_1000380D0 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, qword_100038D20);
}

uint64_t sub_1000079EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007980();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100007A50()
{
  result = sub_100027278("BlockedSenderAction", 0x13uLL, 1);
  qword_100038400 = result;
  qword_100038408 = v1;
  return result;
}

uint64_t *sub_100007A94()
{
  if (qword_1000380D8 != -1)
  {
    swift_once();
  }

  return &qword_100038400;
}

uint64_t sub_100007AF4()
{
  v1 = *sub_100007A94();

  return v1;
}

uint64_t sub_100007B30()
{
  v2[3] = 0;
  v2[1] = &unk_10002C160;
  v2[2] = &unk_10002C168;
  v3 = &v5;
  v5 = 0;
  v0 = sub_100027198();
  v2[0] = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v2[4] = v2 - v2[0];
  sub_100001BA4(&qword_100038568, &qword_10002C158);
  sub_100027278("Blocked Sender Action", 0x15uLL, 1);
  sub_100027178();
  sub_100008CAC();
  v4 = sub_100027128();

  v5 = v4;
  sub_100003D38(v3);
  return v4;
}

uint64_t sub_100007CA4@<X0>(uint64_t *a2@<X8>)
{
  sub_100007CE4();
  result = sub_100026E18();
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_100007CE4()
{
  v2 = qword_100038410;
  if (!qword_100038410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100007DB0()
{
  v2 = qword_100038418;
  if (!qword_100038418)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100007E9C()
{
  v2 = qword_100038420;
  if (!qword_100038420)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038420);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100007F40()
{
  *(v0 + 16) = v0;
  v1 = sub_100007B30();
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t sub_100007FC8(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100002818;

  return sub_100007F18();
}

uint64_t sub_100008078(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_10000813C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.allEntities()(a2, v4);
}

unint64_t sub_10000813C()
{
  v2 = qword_100038428;
  if (!qword_100038428)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038428);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000081B8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10000813C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002BE0;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v4);
}

uint64_t sub_100008280(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_10000813C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.suggestedEntities()(a2, v4);
}

uint64_t sub_100008344(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10000840C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002FCC;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_10000840C()
{
  v2 = qword_100038430;
  if (!qword_100038430)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038430);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100008488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  *(v3 + 48) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 136) = 0;
  v4 = sub_100001BA4(&qword_100038438, &qword_10002B938);
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  return _swift_task_switch(sub_1000085AC, 0);
}

uint64_t sub_1000085AC()
{
  *(v0 + 16) = v0;
  KeyPath = swift_getKeyPath();
  *(v0 + 88) = KeyPath;
  v1 = swift_task_alloc();
  v4[12] = v1;
  v6 = sub_100001BA4(&qword_100038440, &qword_10002B968);
  v4[13] = sub_100008CAC();
  *v1 = v4[2];
  v1[1] = sub_1000086A4;
  v2 = v4[10];

  return _AppEntityUpdate.value<A>(of:)(v2, KeyPath, v6);
}

uint64_t sub_1000086A4()
{
  *(*v0 + 16) = *v0;

  return _swift_task_switch(sub_1000087DC, 0);
}

uint64_t sub_1000087DC()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v0[2] = v0;
  if ((*(v2 + 88))(v1, v3) == enum case for _IntentValueState.set<A>(_:))
  {
    v8 = *(v11 + 80);
    (*(*(v11 + 72) + 96))();
    v9 = *v8;
    *(v11 + 136) = *v8 & 1;
    *(v11 + 40) = sub_100007B30();
    *(v11 + 137) = v9;
    KeyPath = swift_getKeyPath();
    *(v11 + 112) = KeyPath;
    v6 = swift_task_alloc();
    *(v11 + 120) = v6;
    *v6 = *(v11 + 16);
    v6[1] = sub_100008A30;
    v7 = *(v11 + 104);

    return AppEntity._setValue<A>(_:for:)(v11 + 137, KeyPath, v7);
  }

  else
  {
    (*(*(v11 + 72) + 8))(*(v11 + 80), *(v11 + 64));
    sub_100008D34();
    sub_100026D18();

    v4 = *(*(v11 + 16) + 8);

    return v4();
  }
}

uint64_t sub_100008A30()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[16] = v0;

  if (v0)
  {
    v2 = sub_100003AC0;
  }

  else
  {

    sub_100003D38(v4 + 5);
    v2 = sub_100008BC0;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_100008BC0(uint64_t a1)
{
  *(v1 + 16) = v1;
  sub_100008D34();
  sub_100026D18();

  v2 = *(*(v1 + 16) + 8);

  return v2();
}

unint64_t sub_100008CAC()
{
  v2 = qword_100038448;
  if (!qword_100038448)
  {
    sub_100003C48(&qword_100038450, &unk_10002B970);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100008D34()
{
  v2 = qword_100038458;
  if (!qword_100038458)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038458);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100008DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100002FCC;

  return sub_100008488(a1, a2, a3);
}

uint64_t sub_100008E74()
{
  v9 = "Title of options for blocked senders";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = qword_100038D38;
  sub_100001C10(v8, qword_100038D38);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Block Sender Option", 0x13uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 36;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t sub_100009170()
{
  if (qword_1000380E0 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, qword_100038D38);
}

uint64_t sub_1000091DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100009170();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100009240()
{
  v0 = sub_100001BA4(&qword_100038460, &qword_10002B980);
  v8 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v26 = &v8 - v8;
  v1 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v25 = &v8 - v9;
  v29 = 0;
  v15 = sub_100027198();
  v11 = *(v15 - 8);
  v12 = v15 - 8;
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v24 = &v8 - v10;
  v28 = sub_100001BA4(&qword_100038468, &qword_10002B988);
  v27 = sub_100027318();
  v14 = v2;
  v13 = *(v28 + 48);
  *v2 = 0;
  v18 = 1;
  sub_100027278("Leave in Inbox", 0xEuLL, 1);
  sub_100027178();
  v17 = *(v11 + 56);
  v16 = v11 + 56;
  v17(v25, v18, v18, v15);
  v19 = sub_100027018();
  v3 = *(v19 - 8);
  v21 = *(v3 + 56);
  v20 = v3 + 56;
  v21(v26, v18);
  sub_100027038();
  v4 = v18;
  v5 = *(*(v28 - 8) + 72);
  v23 = *(v28 + 48);
  v22 = &v14[v5];
  *v22 = 1;
  sub_100027278("Move to Trash", 0xDuLL, v4 & 1);
  sub_100027178();
  v17(v25, v18, v18, v15);
  (v21)(v26, v18, v18, v19);
  sub_100027038();
  sub_1000095A4();
  v31 = v6;
  v30 = sub_100027048();
  sub_1000095E8();
  result = sub_100027238();
  qword_100038D50 = result;
  return result;
}

unint64_t sub_1000095E8()
{
  v2 = qword_100038470;
  if (!qword_100038470)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038470);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_100009664()
{
  if (qword_1000380E8 != -1)
  {
    swift_once();
  }

  return &qword_100038D50;
}

uint64_t sub_1000096C4()
{
  v1 = sub_100009664();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t sub_10000971C(uint64_t a1)
{
  v2 = sub_100009664();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t sub_100009790(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  return 2;
}

void sub_100009804()
{
  sub_100027318();
  *v0 = 0;
  v0[1] = 1;
  sub_1000095A4();
}

unint64_t sub_1000098E0()
{
  v2 = qword_100038478;
  if (!qword_100038478)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038478);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100009A2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100009790(*a1);
  *a2 = result;
  return result;
}

BOOL sub_100009A5C@<W0>(_BOOL8 *a1@<X8>)
{
  result = sub_100009854(*v1 & 1);
  *a1 = result;
  return result;
}

unint64_t sub_100009AE0()
{
  v2 = qword_100038480;
  if (!qword_100038480)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100009BAC()
{
  v2 = qword_100038488;
  if (!qword_100038488)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100009C9C()
{
  v2 = qword_100038490;
  if (!qword_100038490)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100009D30()
{
  v2 = qword_100038498;
  if (!qword_100038498)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100009DC4()
{
  v2 = qword_1000384A0;
  if (!qword_1000384A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000384A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100009E58()
{
  v2 = qword_1000384A8;
  if (!qword_1000384A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000384A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100009F04()
{
  v2 = qword_1000384B0;
  if (!qword_1000384B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000384B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100009F98()
{
  v2 = qword_1000384B8;
  if (!qword_1000384B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000384B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A02C()
{
  v2 = qword_1000384C0;
  if (!qword_1000384C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000384C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A0D8()
{
  v2 = qword_1000384C8;
  if (!qword_1000384C8)
  {
    sub_100003C48(&qword_1000384D0, &qword_10002BB78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000384C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A178()
{
  v2 = qword_1000384D8;
  if (!qword_1000384D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000384D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A20C()
{
  v2 = qword_1000384E0;
  if (!qword_1000384E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000384E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A2B8()
{
  v2 = qword_1000384E8;
  if (!qword_1000384E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000384E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A34C()
{
  v2 = qword_1000384F0;
  if (!qword_1000384F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000384F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A3E0()
{
  v2 = qword_1000384F8;
  if (!qword_1000384F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000384F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A474()
{
  v2 = qword_100038500;
  if (!qword_100038500)
  {
    sub_100003C48(&qword_100038508, &qword_10002BD10);
    sub_10000A02C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A524()
{
  v2 = qword_100038510;
  if (!qword_100038510)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A5D0()
{
  v2 = qword_100038518;
  if (!qword_100038518)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038518);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A664()
{
  v2 = qword_100038520;
  if (!qword_100038520)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A6F8()
{
  v2 = qword_100038528;
  if (!qword_100038528)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038528);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A7B0()
{
  v2 = qword_100038530;
  if (!qword_100038530)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A844()
{
  v2 = qword_100038538;
  if (!qword_100038538)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A8D8()
{
  v2 = qword_100038540;
  if (!qword_100038540)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A9E0()
{
  v2 = qword_100038548;
  if (!qword_100038548)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000AA74()
{
  v2 = qword_100038550;
  if (!qword_100038550)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000AB20()
{
  v2 = qword_100038558;
  if (!qword_100038558)
  {
    sub_100003C48(&qword_100038560, &qword_10002C070);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038558);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000ABF4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10000AD5C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10000AF88(uint64_t a1, void *a2)
{
  *(v2 + 144) = a1;
  *(v2 + 112) = v2;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 152) = 0;
  *(v2 + 120) = *a2;
  return _swift_task_switch(sub_10000AFCC, 0);
}

uint64_t sub_10000AFCC()
{
  *(v0 + 112) = v0;
  v12 = *sub_1000075EC();
  v12;
  if (v12)
  {
    sub_100007A94();

    v9 = sub_100027268();

    v10 = [v12 objectForKey:v9];

    if (v10)
    {
      sub_1000272E8();
      sub_10000B5DC(v11 + 80, v11 + 48);
      swift_unknownObjectRelease();
    }

    else
    {
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      *(v11 + 72) = 0;
    }

    *(v11 + 16) = *(v11 + 48);
    *(v11 + 32) = *(v11 + 64);
  }

  else
  {
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
  }

  if (*(v11 + 40))
  {
    if (swift_dynamicCast())
    {
      v5 = *(v11 + 136);
      v6 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 1;
    }

    v7 = v5;
    v8 = v6;
  }

  else
  {
    sub_10000B500((v11 + 16));
    v7 = 0;
    v8 = 1;
  }

  if ((v8 & 1) != 0 || (*(v11 + 128) = v7, v4 = sub_100009790(v7), v4 == 2))
  {
    **(v11 + 144) = 1;
  }

  else
  {
    v1 = *(v11 + 144);
    *(v11 + 152) = v4 & 1;
    *v1 = v4 & 1;
  }

  v2 = *(*(v11 + 112) + 8);

  return v2();
}

uint64_t sub_10000B32C(void *a1, char *a2)
{
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 24) = *a1;
  v3 = *a2;
  *(v2 + 33) = *a2 & 1;
  *(v2 + 32) = v3 & 1;
  return _swift_task_switch(sub_10000B38C, 0);
}

uint64_t sub_10000B38C()
{
  *(v0 + 16) = v0;
  v6 = *sub_1000075EC();
  v6;
  if (v6)
  {
    v3 = sub_100009854(*(v5 + 33) & 1);
    sub_100007A94();

    v4 = sub_100027268();

    [v6 setInteger:v3 forKey:v4];
  }

  v1 = *(*(v5 + 16) + 8);

  return v1();
}

void *sub_10000B500(void *a1)
{
  if (a1[3])
  {
    sub_10000B53C(a1);
  }

  return a1;
}

uint64_t sub_10000B53C(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

__n128 sub_10000B5DC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10000B5F8()
{
  result = sub_100027278("com.apple.Preferences", 0x15uLL, 1);
  qword_100038D58 = result;
  qword_100038D60 = v1;
  return result;
}

uint64_t *sub_10000B63C()
{
  if (qword_1000380F0 != -1)
  {
    swift_once();
  }

  return &qword_100038D58;
}

uint64_t sub_10000B69C()
{
  v1 = *sub_10000B63C();

  return v1;
}

uint64_t sub_10000B6D8()
{
  if (qword_1000380F8 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10000B74C()
{
  if (qword_100038100 != -1)
  {
    swift_once();
  }

  return v1;
}

id sub_10000B7C0()
{
  result = [objc_opt_self() em_userDefaults];
  qword_100038D68 = result;
  return result;
}

uint64_t *sub_10000B7FC()
{
  if (qword_100038108 != -1)
  {
    swift_once();
  }

  return &qword_100038D68;
}

void *sub_10000B85C()
{
  v1 = *sub_10000B7FC();
  v1;
  return v1;
}

uint64_t sub_10000B894()
{
  v9 = "Title for entity representing the Collapsed Read Messages setting in Mail";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = qword_100038D70;
  sub_100001C10(v8, qword_100038D70);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Collapsed Read Messages", 0x17uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 75;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t sub_10000BB90()
{
  if (qword_100038110 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, qword_100038D70);
}

uint64_t sub_10000BBFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000BB90();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10000BC60()
{
  result = sub_100027278("CollapseReadConversationMessages", 0x20uLL, 1);
  qword_100038570 = result;
  qword_100038578 = v1;
  return result;
}

uint64_t *sub_10000BCA4()
{
  if (qword_100038118 != -1)
  {
    swift_once();
  }

  return &qword_100038570;
}

uint64_t sub_10000BD04()
{
  v1 = *sub_10000BCA4();

  return v1;
}

uint64_t sub_10000BD40()
{
  v7 = "Title for entity representing the Collapsed Read Messages setting in Mail";
  v14 = 0;
  v12 = &unk_10002C758;
  v13 = &unk_10002C760;
  v16 = &v21;
  v21 = 0;
  v9 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v10 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v2 - v5;
  v0 = sub_100027198();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v15 = &v2 - v6;
  sub_100001BA4(&qword_100038650, &qword_10002C750);
  sub_100027278("Collapsed Read Messages", 0x17uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v11);
  v18 = v7;
  v19 = 75;
  v20 = 2;
  sub_1000271A8();
  sub_10000D034();
  v17 = sub_100027128();

  v21 = v17;
  sub_100003D38(v16);
  return v17;
}

uint64_t sub_10000C02C@<X0>(uint64_t *a2@<X8>)
{
  sub_10000C06C();
  result = sub_100026E18();
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_10000C06C()
{
  v2 = qword_100038580;
  if (!qword_100038580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000C138()
{
  v2 = qword_100038588;
  if (!qword_100038588)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000C224()
{
  v2 = qword_100038590;
  if (!qword_100038590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038590);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000C2C8()
{
  *(v0 + 16) = v0;
  v1 = sub_10000BD40();
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t sub_10000C350(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100002818;

  return sub_10000C2A0();
}

uint64_t sub_10000C400(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_10000C4C4();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.allEntities()(a2, v4);
}

unint64_t sub_10000C4C4()
{
  v2 = qword_100038598;
  if (!qword_100038598)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038598);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000C540(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10000C4C4();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002BE0;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v4);
}

uint64_t sub_10000C608(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_10000C4C4();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.suggestedEntities()(a2, v4);
}

uint64_t sub_10000C6CC(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10000C794();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002FCC;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_10000C794()
{
  v2 = qword_1000385A0;
  if (!qword_1000385A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000385A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000C810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  *(v3 + 48) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 136) = 0;
  v4 = sub_100001BA4(&qword_100038260, &qword_10002AD58);
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  return _swift_task_switch(sub_10000C934, 0);
}

uint64_t sub_10000C934()
{
  *(v0 + 16) = v0;
  KeyPath = swift_getKeyPath();
  *(v0 + 88) = KeyPath;
  v1 = swift_task_alloc();
  v4[12] = v1;
  v6 = sub_100001BA4(&qword_1000385A8, &qword_10002C1F8);
  v4[13] = sub_10000D034();
  *v1 = v4[2];
  v1[1] = sub_10000CA2C;
  v2 = v4[10];

  return _AppEntityUpdate.value<A>(of:)(v2, KeyPath, v6);
}

uint64_t sub_10000CA2C()
{
  *(*v0 + 16) = *v0;

  return _swift_task_switch(sub_10000CB64, 0);
}

uint64_t sub_10000CB64()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v0[2] = v0;
  if ((*(v2 + 88))(v1, v3) == enum case for _IntentValueState.set<A>(_:))
  {
    v8 = *(v11 + 80);
    (*(*(v11 + 72) + 96))();
    v9 = *v8;
    *(v11 + 136) = *v8 & 1;
    *(v11 + 40) = sub_10000BD40();
    *(v11 + 137) = v9;
    KeyPath = swift_getKeyPath();
    *(v11 + 112) = KeyPath;
    v6 = swift_task_alloc();
    *(v11 + 120) = v6;
    *v6 = *(v11 + 16);
    v6[1] = sub_10000CDB8;
    v7 = *(v11 + 104);

    return AppEntity._setValue<A>(_:for:)(v11 + 137, KeyPath, v7);
  }

  else
  {
    (*(*(v11 + 72) + 8))(*(v11 + 80), *(v11 + 64));
    sub_10000D0BC();
    sub_100026D18();

    v4 = *(*(v11 + 16) + 8);

    return v4();
  }
}

uint64_t sub_10000CDB8()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[16] = v0;

  if (v0)
  {
    v2 = sub_100003AC0;
  }

  else
  {

    sub_100003D38(v4 + 5);
    v2 = sub_10000CF48;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_10000CF48(uint64_t a1)
{
  *(v1 + 16) = v1;
  sub_10000D0BC();
  sub_100026D18();

  v2 = *(*(v1 + 16) + 8);

  return v2();
}

unint64_t sub_10000D034()
{
  v2 = qword_1000385B0;
  if (!qword_1000385B0)
  {
    sub_100003C48(&qword_1000385B8, &unk_10002C200);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000385B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D0BC()
{
  v2 = qword_1000385C0;
  if (!qword_1000385C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000385C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000D138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100002FCC;

  return sub_10000C810(a1, a2, a3);
}

unint64_t sub_10000D244()
{
  v2 = qword_1000385C8;
  if (!qword_1000385C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000385C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D2D8()
{
  v2 = qword_1000385D0;
  if (!qword_1000385D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000385D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D36C()
{
  v2 = qword_1000385D8;
  if (!qword_1000385D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000385D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D400()
{
  v2 = qword_1000385E0;
  if (!qword_1000385E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000385E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D4AC()
{
  v2 = qword_1000385E8;
  if (!qword_1000385E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000385E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D540()
{
  v2 = qword_1000385F0;
  if (!qword_1000385F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000385F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D5D4()
{
  v2 = qword_1000385F8;
  if (!qword_1000385F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000385F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D680()
{
  v2 = qword_100038600;
  if (!qword_100038600)
  {
    sub_100003C48(&qword_100038608, &qword_10002C3F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D720()
{
  v2 = qword_100038610;
  if (!qword_100038610)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038610);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D7B4()
{
  v2 = qword_100038618;
  if (!qword_100038618)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D860()
{
  v2 = qword_100038620;
  if (!qword_100038620)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038620);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D8F4()
{
  v2 = qword_100038628;
  if (!qword_100038628)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038628);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000D988()
{
  v2 = qword_100038630;
  if (!qword_100038630)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038630);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000DA1C()
{
  v2 = qword_100038638;
  if (!qword_100038638)
  {
    sub_100003C48(&qword_100038640, &qword_10002C590);
    sub_10000D5D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000DACC()
{
  v2 = qword_100038648;
  if (!qword_100038648)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038648);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000DB9C(uint64_t a1, void *a2)
{
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = *a2;
  return _swift_task_switch(sub_10000DBE0, 0);
}

uint64_t sub_10000DBE0()
{
  *(v0 + 16) = v0;
  v7 = *sub_10000B7FC();
  v7;
  if (v7)
  {
    sub_10000BCA4();

    v3 = sub_100027268();

    v4 = [v7 BOOLForKey:v3];

    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (v5 == 2)
  {
    **(v6 + 32) = 1;
  }

  else
  {
    **(v6 + 32) = v5;
  }

  v1 = *(*(v6 + 16) + 8);

  return v1();
}

uint64_t sub_10000DDAC(void *a1, char *a2)
{
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 24) = *a1;
  v3 = *a2;
  *(v2 + 33) = *a2 & 1;
  *(v2 + 32) = v3 & 1;
  return _swift_task_switch(sub_10000DE0C, 0);
}

uint64_t sub_10000DE0C()
{
  *(v0 + 16) = v0;
  v6 = *sub_10000B7FC();
  v6;
  if (v6)
  {
    v3 = *(v5 + 33);
    sub_10000BCA4();

    v4 = sub_100027268();

    [v6 setBool:v3 & 1 forKey:v4];
  }

  v1 = *(*(v5 + 16) + 8);

  return v1();
}

uint64_t sub_10000DF70()
{
  result = sub_100027278("com.apple.Preferences", 0x15uLL, 1);
  qword_100038D88 = result;
  qword_100038D90 = v1;
  return result;
}

uint64_t *sub_10000DFB4()
{
  if (qword_100038120 != -1)
  {
    swift_once();
  }

  return &qword_100038D88;
}

uint64_t sub_10000E014()
{
  v1 = *sub_10000DFB4();

  return v1;
}

uint64_t sub_10000E050()
{
  if (qword_100038128 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10000E0C4()
{
  if (qword_100038130 != -1)
  {
    swift_once();
  }

  return v1;
}

id sub_10000E138()
{
  result = [objc_opt_self() em_userDefaults];
  qword_100038D98 = result;
  return result;
}

uint64_t *sub_10000E174()
{
  if (qword_100038138 != -1)
  {
    swift_once();
  }

  return &qword_100038D98;
}

void *sub_10000E1D4()
{
  v1 = *sub_10000E174();
  v1;
  return v1;
}

uint64_t sub_10000E20C()
{
  v9 = "Title for entity representing the Include Attachments with Replies setting in Mail";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = qword_100038DA0;
  sub_100001C10(v8, qword_100038DA0);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Include Attachments with Replies", 0x20uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 84;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t sub_10000E508()
{
  if (qword_100038140 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, qword_100038DA0);
}

uint64_t sub_10000E574@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000E508();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10000E5D8()
{
  result = sub_100027278("IncludeAttachmentReplies", 0x18uLL, 1);
  qword_100038658 = result;
  qword_100038660 = v1;
  return result;
}

uint64_t *sub_10000E61C()
{
  if (qword_100038148 != -1)
  {
    swift_once();
  }

  return &qword_100038658;
}

uint64_t sub_10000E67C()
{
  v1 = *sub_10000E61C();

  return v1;
}

uint64_t sub_10000E6B8()
{
  v2[3] = 0;
  v2[1] = &unk_10002D010;
  v2[2] = &unk_10002D018;
  v3 = &v5;
  v5 = 0;
  v0 = sub_100027198();
  v2[0] = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v2[4] = v2 - v2[0];
  sub_100001BA4(&qword_1000387B8, &qword_10002D008);
  sub_100027278("Include Attachments with Replies", 0x20uLL, 1);
  sub_100027178();
  sub_10000F82C();
  v4 = sub_100027128();

  v5 = v4;
  sub_100003D38(v3);
  return v4;
}

uint64_t sub_10000E82C@<X0>(uint64_t *a2@<X8>)
{
  sub_10000E86C();
  result = sub_100026E18();
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_10000E86C()
{
  v2 = qword_100038668;
  if (!qword_100038668)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000E938()
{
  v2 = qword_100038670;
  if (!qword_100038670)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038670);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000EA24()
{
  v2 = qword_100038678;
  if (!qword_100038678)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038678);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000EAC8()
{
  *(v0 + 16) = v0;
  v1 = sub_10000E6B8();
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t sub_10000EB50(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100002818;

  return sub_10000EAA0();
}

uint64_t sub_10000EC00(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_10000ECC4();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.allEntities()(a2, v4);
}

unint64_t sub_10000ECC4()
{
  v2 = qword_100038680;
  if (!qword_100038680)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038680);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000ED40(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10000ECC4();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002BE0;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v4);
}

uint64_t sub_10000EE08(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_10000ECC4();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.suggestedEntities()(a2, v4);
}

uint64_t sub_10000EECC(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10000EF94();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002FCC;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_10000EF94()
{
  v2 = qword_100038688;
  if (!qword_100038688)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038688);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000F010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  *(v3 + 48) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 136) = 0;
  v4 = sub_100001BA4(&qword_100038690, &qword_10002C7B8);
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  return _swift_task_switch(sub_10000F134, 0);
}

uint64_t sub_10000F134()
{
  *(v0 + 16) = v0;
  KeyPath = swift_getKeyPath();
  *(v0 + 88) = KeyPath;
  v1 = swift_task_alloc();
  v4[12] = v1;
  v6 = sub_100001BA4(&qword_100038698, &qword_10002C7E8);
  v4[13] = sub_10000F82C();
  *v1 = v4[2];
  v1[1] = sub_10000F22C;
  v2 = v4[10];

  return _AppEntityUpdate.value<A>(of:)(v2, KeyPath, v6);
}

uint64_t sub_10000F22C()
{
  *(*v0 + 16) = *v0;

  return _swift_task_switch(sub_10000F364, 0);
}

uint64_t sub_10000F364()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v0[2] = v0;
  if ((*(v2 + 88))(v1, v3) == enum case for _IntentValueState.set<A>(_:))
  {
    v8 = *(v11 + 80);
    (*(*(v11 + 72) + 96))();
    v9 = *v8;
    *(v11 + 136) = *v8;
    *(v11 + 40) = sub_10000E6B8();
    *(v11 + 137) = v9;
    KeyPath = swift_getKeyPath();
    *(v11 + 112) = KeyPath;
    v6 = swift_task_alloc();
    *(v11 + 120) = v6;
    *v6 = *(v11 + 16);
    v6[1] = sub_10000F5B0;
    v7 = *(v11 + 104);

    return AppEntity._setValue<A>(_:for:)(v11 + 137, KeyPath, v7);
  }

  else
  {
    (*(*(v11 + 72) + 8))(*(v11 + 80), *(v11 + 64));
    sub_10000F8B4();
    sub_100026D18();

    v4 = *(*(v11 + 16) + 8);

    return v4();
  }
}

uint64_t sub_10000F5B0()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[16] = v0;

  if (v0)
  {
    v2 = sub_100003AC0;
  }

  else
  {

    sub_100003D38(v4 + 5);
    v2 = sub_10000F740;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_10000F740(uint64_t a1)
{
  *(v1 + 16) = v1;
  sub_10000F8B4();
  sub_100026D18();

  v2 = *(*(v1 + 16) + 8);

  return v2();
}

unint64_t sub_10000F82C()
{
  v2 = qword_1000386A0;
  if (!qword_1000386A0)
  {
    sub_100003C48(&qword_1000386A8, qword_10002C7F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000386A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000F8B4()
{
  v2 = qword_1000386B0;
  if (!qword_1000386B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000386B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000F930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100002FCC;

  return sub_10000F010(a1, a2, a3);
}

uint64_t sub_10000F9F4()
{
  v9 = "Title of options for including attachments with replies";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = static AttachmentRepliesOption.typeDisplayRepresentation;
  sub_100001C10(v8, static AttachmentRepliesOption.typeDisplayRepresentation);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Include Attachment Option", 0x19uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 55;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t AttachmentRepliesOption.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100038150 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, static AttachmentRepliesOption.typeDisplayRepresentation);
}

uint64_t static AttachmentRepliesOption.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = AttachmentRepliesOption.typeDisplayRepresentation.unsafeMutableAddressor();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10000FDC0()
{
  v0 = sub_100001BA4(&qword_100038460, &qword_10002B980);
  v9 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v33 = &v9 - v9;
  v1 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v32 = &v9 - v10;
  v36 = 0;
  v22 = sub_100027198();
  v12 = *(v22 - 8);
  v13 = v22 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v31 = &v9 - v11;
  v35 = sub_100001BA4(&qword_1000386B8, &qword_10002C808);
  v34 = sub_100027318();
  v21 = v2;
  v14 = *(v35 + 48);
  *v2 = 0;
  v25 = 1;
  sub_100027278("Never", 5uLL, 1);
  sub_100027178();
  v24 = *(v12 + 56);
  v23 = v12 + 56;
  v24(v32, v25, v25, v22);
  v26 = sub_100027018();
  v3 = *(v26 - 8);
  v28 = *(v3 + 56);
  v27 = v3 + 56;
  v28(v33, v25);
  sub_100027038();
  v4 = v25;
  v19 = *(*(v35 - 8) + 72);
  v16 = *(v35 + 48);
  v15 = &v21[v19];
  *v15 = 1;
  sub_100027278("When Adding Recipients", 0x16uLL, v4 & 1);
  sub_100027178();
  v24(v32, v25, v25, v22);
  (v28)(v33, v25, v25, v26);
  sub_100027038();
  v5 = v25;
  v18 = *(v35 + 48);
  v17 = &v21[2 * v19];
  *v17 = 2;
  v20 = 3;
  sub_100027278("Ask", 3uLL, v5 & 1);
  sub_100027178();
  v24(v32, v25, v25, v22);
  (v28)(v33, v25, v25, v26);
  sub_100027038();
  v6 = v25;
  v30 = *(v35 + 48);
  v29 = &v21[v20 * v19];
  *v29 = 3;
  sub_100027278("Always", 6uLL, v6 & 1);
  sub_100027178();
  v24(v32, v25, v25, v22);
  (v28)(v33, v25, v25, v26);
  sub_100027038();
  sub_1000095A4();
  v38 = v7;
  v37 = sub_100027048();
  sub_10001029C();
  result = sub_100027238();
  static AttachmentRepliesOption.caseDisplayRepresentations = result;
  return result;
}

unint64_t sub_10001029C()
{
  v2 = qword_1000386C0;
  if (!qword_1000386C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000386C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *AttachmentRepliesOption.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_100038158 != -1)
  {
    swift_once();
  }

  return &static AttachmentRepliesOption.caseDisplayRepresentations;
}

uint64_t static AttachmentRepliesOption.caseDisplayRepresentations.getter()
{
  v1 = AttachmentRepliesOption.caseDisplayRepresentations.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static AttachmentRepliesOption.caseDisplayRepresentations.setter(uint64_t a1)
{
  v2 = AttachmentRepliesOption.caseDisplayRepresentations.unsafeMutableAddressor();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t (*static AttachmentRepliesOption.caseDisplayRepresentations.modify())(uint64_t a1)
{
  AttachmentRepliesOption.caseDisplayRepresentations.unsafeMutableAddressor();
  swift_beginAccess();
  return sub_1000104A0;
}

MailSettingsIntentsExtension::AttachmentRepliesOption_optional __swiftcall AttachmentRepliesOption.init(rawValue:)(Swift::String rawValue)
{
  sub_100027318();
  *v1 = "IncludeAttachmentRepliesNever";
  *(v1 + 8) = 29;
  *(v1 + 16) = 2;
  *(v1 + 24) = "IncludeAttachmentRepliesWhenAdding";
  *(v1 + 32) = 34;
  *(v1 + 40) = 2;
  *(v1 + 48) = "IncludeAttachmentRepliesAsk";
  *(v1 + 56) = 27;
  *(v1 + 64) = 2;
  *(v1 + 72) = "IncludeAttachmentRepliesAlways";
  *(v1 + 80) = 30;
  *(v1 + 88) = 2;
  sub_1000095A4();
  v6 = sub_100027308(v7, rawValue);

  switch(v6)
  {
    case 0:
      v4.value = MailSettingsIntentsExtension_AttachmentRepliesOption_never;
LABEL_10:

      return v4;
    case 1:
      v4.value = MailSettingsIntentsExtension_AttachmentRepliesOption_whenAdding;
      goto LABEL_10;
    case 2:
      v4.value = MailSettingsIntentsExtension_AttachmentRepliesOption_ask;
      goto LABEL_10;
    case 3:
      v4.value = MailSettingsIntentsExtension_AttachmentRepliesOption_always;
      goto LABEL_10;
  }

  return 4;
}

void static AttachmentRepliesOption.allCases.getter()
{
  sub_100027318();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  sub_1000095A4();
}

uint64_t AttachmentRepliesOption.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_100027278("IncludeAttachmentRepliesNever", 0x1DuLL, 1);
    case 1:
      return sub_100027278("IncludeAttachmentRepliesWhenAdding", 0x22uLL, 1);
    case 2:
      return sub_100027278("IncludeAttachmentRepliesAsk", 0x1BuLL, 1);
  }

  return sub_100027278("IncludeAttachmentRepliesAlways", 0x1EuLL, 1);
}

unint64_t sub_100010858()
{
  v2 = qword_1000386C8;
  if (!qword_1000386C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000386C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000108EC()
{
  v2 = qword_1000386D0;
  if (!qword_1000386D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000386D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100010980()
{
  v2 = qword_1000386D8;
  if (!qword_1000386D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000386D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100010A14()
{
  v2 = qword_1000386E0;
  if (!qword_1000386E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000386E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100010AC0()
{
  v2 = qword_1000386E8;
  if (!qword_1000386E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000386E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100010B54()
{
  v2 = qword_1000386F0;
  if (!qword_1000386F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000386F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100010BE8()
{
  v2 = qword_1000386F8;
  if (!qword_1000386F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000386F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100010C94()
{
  v2 = qword_100038700;
  if (!qword_100038700)
  {
    sub_100003C48(&qword_100038708, &qword_10002C9F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038700);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100010D34()
{
  v2 = qword_100038710;
  if (!qword_100038710)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100010DC8()
{
  v2 = qword_100038718;
  if (!qword_100038718)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038718);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100010E74()
{
  v2 = qword_100038720;
  if (!qword_100038720)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038720);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100010F08()
{
  v2 = qword_100038728;
  if (!qword_100038728)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100010F9C()
{
  v2 = qword_100038730;
  if (!qword_100038730)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100011030()
{
  v2 = qword_100038738;
  if (!qword_100038738)
  {
    sub_100003C48(&qword_100038740, &qword_10002CB90);
    sub_100010BE8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000110E0()
{
  v2 = qword_100038748;
  if (!qword_100038748)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038748);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000111D8()
{
  v2 = qword_100038750;
  if (!qword_100038750)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038750);
    return WitnessTable;
  }

  return v2;
}

MailSettingsIntentsExtension::AttachmentRepliesOption_optional sub_100011324@<W0>(Swift::String *a1@<X0>, MailSettingsIntentsExtension::AttachmentRepliesOption_optional *a2@<X8>)
{
  result.value = AttachmentRepliesOption.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10001135C@<X0>(uint64_t *a1@<X8>)
{
  result = AttachmentRepliesOption.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000113A8()
{
  v2 = qword_100038758;
  if (!qword_100038758)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001143C()
{
  v2 = qword_100038760;
  if (!qword_100038760)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000114D0()
{
  v2 = qword_100038768;
  if (!qword_100038768)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038768);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100011570()
{
  v2 = qword_100038770;
  if (!qword_100038770)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100011604()
{
  v2 = qword_100038778;
  if (!qword_100038778)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038778);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100011698()
{
  v2 = qword_100038780;
  if (!qword_100038780)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001172C()
{
  v2 = qword_100038788;
  if (!qword_100038788)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001181C()
{
  v2 = qword_100038790;
  if (!qword_100038790)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000118E8()
{
  v2 = qword_100038798;
  if (!qword_100038798)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001197C()
{
  v2 = qword_1000387A0;
  if (!qword_1000387A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000387A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100011A78()
{
  v2 = qword_1000387A8;
  if (!qword_1000387A8)
  {
    sub_100003C48(&qword_1000387B0, &qword_10002CEF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000387A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for AttachmentRepliesOption(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AttachmentRepliesOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100011EF0(uint64_t a1, void *a2)
{
  *(v2 + 160) = a1;
  *(v2 + 144) = v2;
  *(v2 + 152) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = *a2;
  return _swift_task_switch(sub_100011F38, 0);
}

uint64_t sub_100011F38()
{
  *(v0 + 144) = v0;
  v10 = *sub_10000E174();
  v10;
  if (v10)
  {
    sub_10000E61C();

    v7 = sub_100027268();

    v8 = [v10 objectForKey:v7];

    if (v8)
    {
      sub_1000272E8();
      sub_10000B5DC(v9 + 80, v9 + 48);
      swift_unknownObjectRelease();
    }

    else
    {
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 72) = 0;
    }

    *(v9 + 16) = *(v9 + 48);
    *(v9 + 32) = *(v9 + 64);
  }

  else
  {
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
  }

  if (*(v9 + 40))
  {
    if (swift_dynamicCast())
    {
      v5 = *(v9 + 128);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    sub_10000B500((v9 + 16));
    v6 = 0;
  }

  if (v6._object)
  {
    *(v9 + 112) = v6;

    v1.value = AttachmentRepliesOption.init(rawValue:)(v6).value;
    if (v1.value != MailSettingsIntentsExtension_AttachmentRepliesOption_unknownDefault)
    {
      v2 = *(v9 + 160);
      *(v9 + 168) = v1;
      v2->value = v1.value;

      goto LABEL_19;
    }
  }

  **(v9 + 160) = 1;
LABEL_19:
  v3 = *(*(v9 + 144) + 8);

  return v3();
}

uint64_t sub_1000122C0(void *a1, char *a2)
{
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 24) = *a1;
  v3 = *a2;
  *(v2 + 33) = *a2;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_100012314, 0);
}

uint64_t sub_100012314()
{
  *(v0 + 16) = v0;
  v6 = *sub_10000E174();
  v6;
  if (v6)
  {
    AttachmentRepliesOption.rawValue.getter(*(v5 + 33));
    v4 = sub_100027268();

    sub_10000E61C();

    v3 = sub_100027268();

    [v6 setObject:v4 forKey:v3];

    swift_unknownObjectRelease();
  }

  v1 = *(*(v5 + 16) + 8);

  return v1();
}

uint64_t sub_100012514@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v10 = 0;
  v9 = sub_1000271D8();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v3 - v4;
  v10 = v1;
  sub_100027218();
  sub_1000125E8();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_1000125E8()
{
  sub_1000271B8();
  sub_100012644();
  return sub_100027058();
}

unint64_t sub_100012644()
{
  v2 = qword_1000387C0;
  if (!qword_1000387C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000387C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000126C0()
{
  v102 = 0;
  v204 = sub_100027228();
  v133 = *(v204 - 8);
  v134 = v204 - 8;
  v103 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v203 = &v102 - v103;
  v104 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v0);
  v196 = &v102 - v104;
  v105 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v193 = &v102 - v105;
  v106 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v190 = &v102 - v106;
  v107 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v187 = &v102 - v107;
  v108 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v184 = &v102 - v108;
  v109 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v10);
  v181 = &v102 - v109;
  v110 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v12);
  v178 = &v102 - v110;
  v111 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = __chkstk_darwin(v14);
  v175 = &v102 - v111;
  v112 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = __chkstk_darwin(v16);
  v172 = &v102 - v112;
  v113 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = __chkstk_darwin(v18);
  v169 = &v102 - v113;
  v114 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = __chkstk_darwin(v20);
  v166 = &v102 - v114;
  v115 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = __chkstk_darwin(v22);
  v156 = &v102 - v115;
  v116 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = __chkstk_darwin(v24);
  v153 = &v102 - v116;
  v117 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = __chkstk_darwin(v26);
  v150 = &v102 - v117;
  v118 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = __chkstk_darwin(v28);
  v147 = &v102 - v118;
  v119 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = __chkstk_darwin(v30);
  v144 = &v102 - v119;
  v120 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = __chkstk_darwin(v32);
  v141 = &v102 - v120;
  v121 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = __chkstk_darwin(v34);
  v138 = &v102 - v121;
  v122 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v135 = &v102 - v122;
  v161 = sub_1000271D8();
  v128 = *(v161 - 8);
  v129 = v161 - 8;
  v123 = (*(v128 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v161);
  v160 = &v102 - v123;
  v124 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v102 - v123);
  v130 = &v102 - v124;
  v126 = sub_100001BA4(&qword_1000387C8, &qword_10002D020);
  v125 = qword_100038DD8;
  sub_100001C10(v126, qword_100038DD8);
  v213 = sub_100001CAC(v126, v125);
  v208 = sub_100001BA4(&qword_1000387D0, &qword_10002D028);
  v207 = sub_100027318();
  v198 = v39;
  v127 = *(v208 + 48);
  *v39 = 0;
  v157 = &_s9MessageUI21MailSettingsSpecifierO3url10Foundation3URLVvg_ptr;
  v210 = [objc_opt_self() rootURL];
  sub_1000271C8();
  sub_1000125E8();
  v40 = v135;
  v163 = *(v128 + 8);
  v162 = v128 + 8;
  v163(v130, v161);
  v41 = v204;
  v197 = *(*(v208 - 8) + 72);
  v42 = v133;
  v132 = *(v208 + 48);
  v131 = &v198[v197];
  *v131 = 1;
  v200 = *(v42 + 104);
  v199 = v42 + 104;
  v200(v40, enum case for MailSettingsSpecifier.accounts(_:), v41);
  sub_100012514(&v131[v132]);
  v43 = v138;
  v206 = *(v133 + 8);
  v205 = v133 + 8;
  v206(v135, v204);
  v44 = v200;
  v45 = v204;
  v137 = *(v208 + 48);
  v136 = &v198[2 * v197];
  *v136 = 2;
  v44(v43, enum case for MailSettingsSpecifier.blockedSenders(_:), v45);
  sub_100012514(&v136[v137]);
  v46 = v141;
  v206(v138, v204);
  v47 = v200;
  v48 = v204;
  v140 = *(v208 + 48);
  v139 = &v198[3 * v197];
  *v139 = 3;
  v47(v46, enum case for MailSettingsSpecifier.blockedSenderOptions(_:), v48);
  sub_100012514(&v139[v140]);
  v49 = v144;
  v206(v141, v204);
  v50 = v200;
  v51 = v204;
  v143 = *(v208 + 48);
  v142 = &v198[4 * v197];
  *v142 = 4;
  v50(v49, enum case for MailSettingsSpecifier.includeAttachments(_:), v51);
  sub_100012514(&v142[v143]);
  v52 = v147;
  v206(v144, v204);
  v53 = v200;
  v54 = v204;
  v146 = *(v208 + 48);
  v145 = &v198[5 * v197];
  *v145 = 5;
  v53(v52, enum case for MailSettingsSpecifier.linesOfPreview(_:), v54);
  sub_100012514(&v145[v146]);
  v55 = v150;
  v206(v147, v204);
  v56 = v200;
  v57 = v204;
  v149 = *(v208 + 48);
  v148 = &v198[6 * v197];
  *v148 = 6;
  v56(v55, enum case for MailSettingsSpecifier.signature(_:), v57);
  sub_100012514(&v148[v149]);
  v58 = v153;
  v206(v150, v204);
  v59 = v200;
  v60 = v204;
  v152 = *(v208 + 48);
  v151 = &v198[7 * v197];
  *v151 = 7;
  v59(v58, enum case for MailSettingsSpecifier.undoSendDelay(_:), v60);
  sub_100012514(&v151[v152]);
  v61 = v156;
  v206(v153, v204);
  v62 = v200;
  v63 = v204;
  v155 = *(v208 + 48);
  v154 = &v198[8 * v197];
  *v154 = 8;
  v62(v61, enum case for MailSettingsSpecifier.addAccount(_:), v63);
  sub_100012514(&v154[v155]);
  v206(v156, v204);
  v159 = *(v208 + 48);
  v158 = &v198[9 * v197];
  *v158 = 9;
  v209 = [objc_opt_self() fetchNewDataURL];
  sub_1000271C8();
  sub_1000125E8();
  v64 = v166;
  v163(v160, v161);
  v65 = v200;
  v66 = v204;
  v165 = *(v208 + 48);
  v164 = &v198[10 * v197];
  *v164 = 10;
  v65(v64, enum case for MailSettingsSpecifier.showToCcIndicator(_:), v66);
  sub_100012514(&v164[v165]);
  v67 = v169;
  v206(v166, v204);
  v68 = v200;
  v69 = v204;
  v168 = *(v208 + 48);
  v167 = &v198[11 * v197];
  *v167 = 11;
  v68(v67, enum case for MailSettingsSpecifier.swipeOptions(_:), v69);
  sub_100012514(&v167[v168]);
  v70 = v172;
  v206(v169, v204);
  v71 = v200;
  v72 = v204;
  v171 = *(v208 + 48);
  v170 = &v198[12 * v197];
  *v170 = 12;
  v71(v70, enum case for MailSettingsSpecifier.askBeforeDeleting(_:), v72);
  sub_100012514(&v170[v171]);
  v73 = v175;
  v206(v172, v204);
  v74 = v200;
  v75 = v204;
  v174 = *(v208 + 48);
  v173 = &v198[13 * v197];
  *v173 = 13;
  v74(v73, enum case for MailSettingsSpecifier.organizeByThread(_:), v75);
  sub_100012514(&v173[v174]);
  v76 = v178;
  v206(v175, v204);
  v77 = v200;
  v78 = v204;
  v177 = *(v208 + 48);
  v176 = &v198[14 * v197];
  *v176 = 14;
  v77(v76, enum case for MailSettingsSpecifier.collapseReadMessages(_:), v78);
  sub_100012514(&v176[v177]);
  v79 = v181;
  v206(v178, v204);
  v80 = v200;
  v81 = v204;
  v180 = *(v208 + 48);
  v179 = &v198[15 * v197];
  *v179 = 15;
  v80(v79, enum case for MailSettingsSpecifier.mostRecentMessageOnTop(_:), v81);
  sub_100012514(&v179[v180]);
  v82 = v184;
  v206(v181, v204);
  v83 = v200;
  v84 = v204;
  v183 = *(v208 + 48);
  v182 = &v198[16 * v197];
  *v182 = 16;
  v83(v82, enum case for MailSettingsSpecifier.completeThreads(_:), v84);
  sub_100012514(&v182[v183]);
  v85 = v187;
  v206(v184, v204);
  v86 = v200;
  v87 = v204;
  v186 = *(v208 + 48);
  v185 = &v198[17 * v197];
  *v185 = 17;
  v86(v85, enum case for MailSettingsSpecifier.mutedThreadAction(_:), v87);
  sub_100012514(&v185[v186]);
  v88 = v190;
  v206(v187, v204);
  v89 = v200;
  v90 = v204;
  v189 = *(v208 + 48);
  v188 = &v198[18 * v197];
  *v188 = 18;
  v89(v88, enum case for MailSettingsSpecifier.alwaysBccMyself(_:), v90);
  sub_100012514(&v188[v189]);
  v91 = v193;
  v206(v190, v204);
  v92 = v200;
  v93 = v204;
  v192 = *(v208 + 48);
  v191 = &v198[19 * v197];
  *v191 = 19;
  v92(v91, enum case for MailSettingsSpecifier.markAddresses(_:), v93);
  sub_100012514(&v191[v192]);
  v94 = v196;
  v206(v193, v204);
  v95 = v200;
  v96 = v204;
  v195 = *(v208 + 48);
  v194 = &v198[20 * v197];
  *v194 = 20;
  v95(v94, enum case for MailSettingsSpecifier.increaseQuoteLevel(_:), v96);
  sub_100012514(&v194[v195]);
  v97 = v203;
  v206(v196, v204);
  v98 = v200;
  v99 = v204;
  v202 = *(v208 + 48);
  v201 = &v198[21 * v197];
  *v201 = 21;
  v98(v97, enum case for MailSettingsSpecifier.loadRemoteImages(_:), v99);
  sub_100012514(&v201[v202]);
  v206(v203, v204);
  sub_1000095A4();
  v212 = v100;

  v211 = sub_100001BA4(&qword_1000387D8, &qword_10002D030);
  sub_100013B50();
  v214 = &unk_1000350A8;
  v215 = sub_100027238();
  sub_100012644();
  return sub_100027068();
}

unint64_t sub_100013B50()
{
  v2 = qword_1000387E0;
  if (!qword_1000387E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000387E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100013BCC()
{
  if (qword_100038160 != -1)
  {
    swift_once();
  }

  v0 = sub_100001BA4(&qword_1000387C8, &qword_10002D020);
  return sub_100001CAC(v0, qword_100038DD8);
}

uint64_t sub_100013C44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100013BCC();
  v1 = sub_100001BA4(&qword_1000387C8, &qword_10002D020);
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100013CB4()
{
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v13 = &v2 - v2;
  v3 = 0;
  v10 = sub_100027198();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v12 = &v2 - v4;
  v6 = sub_100027148();
  v5 = qword_100038DF0;
  sub_100001C10(v6, qword_100038DF0);
  v11 = sub_100001CAC(v6, v5);
  v9 = 1;
  sub_100027278("Mail", 4uLL, 1);
  sub_100027178();
  (*(v7 + 56))(v13, v9, v9, v10);
  return sub_100027138();
}

uint64_t sub_100013E34()
{
  if (qword_100038168 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, qword_100038DF0);
}

uint64_t sub_100013EA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100013E34();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100013F04()
{
  v82 = "Description text for the root Mail Settings pane";
  v98 = "Description text for the Accounts pane in the Mail Settings pane";
  v106 = "Description text for the Blocked pane in the Mail Settings pane";
  v114 = "Description text for the Blocked Sender Options pane in the Mail Settings pane";
  v121 = "Description text for the Include Attachments with Replies setting in the Mail Settings pane";
  v129 = "Description text for the Signature setting in the Mail Settings pane";
  v137 = "Description text for the Preview setting in the Mail Settings pane";
  v148 = "Description text for the Undo Send Delay setting in the Mail Settings pane";
  v171 = "Description text for the Add Account pane in the Mail Accounts pane of Mail Settings";
  v178 = "Description text for the Fetch New Data pane in the Mail Accounts pane of Mail Settings";
  v182 = "Description text for the Show To/Cc Labels control in Mail Settings";
  v187 = "Description text for the Swipe Options pane in Mail Settings";
  v191 = "Description text for the Ask Before Deleting control in Mail Settings";
  v194 = "Description text for the Organize by Thread control in Mail Settings";
  v198 = "Description text for the Collapse Read Messages control in Mail Settings";
  v202 = "Description text for the Most Recent Message on Top control in Mail Settings";
  v205 = "Description text for the Complete Threads control in Mail Settings";
  v208 = "Description text for the Muted Thread Action pane in Mail Settings";
  v213 = "Description text for the Always Bcc Myself control in Mail Settings";
  v224 = "Description text for the Mark Addresses pane in Mail Settings";
  v228 = "Description text for the Increase Quote level control in Mail Settings";
  v245 = "Description text for the Load Remote Images control in Mail Settings";
  v261 = 0;
  v64 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v252 = &v63 - v64;
  v65 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v261);
  v251 = &v63 - v65;
  v0 = sub_100027258();
  v66 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v250 = &v63 - v66;
  v1 = sub_100001BA4(&qword_100038460, &qword_10002B980);
  v67 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v256 = &v63 - v67;
  v68 = (*(*(sub_100001BA4(&qword_100038230, &unk_10002AD00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v261);
  v255 = &v63 - v68;
  v236 = sub_100027198();
  v71 = *(v236 - 8);
  v72 = v236 - 8;
  v69 = (v71[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v236);
  v257 = &v63 - v69;
  v70 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v63 - v69);
  v258 = &v63 - v70;
  v260 = sub_100001BA4(&qword_1000387E8, &unk_10002D038);
  v197 = 22;
  v259 = sub_100027318();
  v232 = v3;
  v83 = *(v260 + 48);
  *v3 = 0;
  v162 = 4;
  v249 = 1;
  sub_100027278("Mail", 4uLL, 1);
  sub_100027178();
  sub_100027278("Apps", v162, v249 & 1);
  sub_100027178();
  v238 = v71[7];
  v237 = v71 + 7;
  v248 = 0;
  v238(v255);
  v239 = "com.apple.mobilemail";
  v240 = 20;
  sub_100027278("com.apple.mobilemail", 0x14uLL, v249 & 1);
  sub_100027008();
  v241 = sub_100027018();
  v4 = *(v241 - 8);
  v243 = *(v4 + 56);
  v242 = v4 + 56;
  v243(v256, v248, v249);
  v152 = 8;
  v81 = sub_100027318();
  v80 = v5;
  v217 = 19;
  sub_100027278("Mail configurations", 0x13uLL, v249 & 1);
  sub_100027178();
  v166 = v71[9];
  v219 = 1;
  v73 = v166;
  v218 = 14;
  sub_100027278("Email settings", 0xEuLL, v249 & 1);
  sub_100027178();
  v155 = 2;
  v74 = 2 * v166;
  sub_100027278("Electronic mail settings", 0x18uLL, v249 & 1);
  sub_100027178();
  v160 = 3;
  v75 = 3 * v166;
  sub_100027278("Allow Mail To Access", v240, v249 & 1);
  sub_100027178();
  v76 = v162 * v166;
  v190 = 12;
  sub_100027278("Message List", 0xCuLL, v249 & 1);
  sub_100027178();
  v167 = 5;
  v77 = 5 * v166;
  v175 = 9;
  sub_100027278("Threading", 9uLL, v249 & 1);
  sub_100027178();
  v157 = 6;
  v78 = 6 * v166;
  sub_100027278("Composing", v175, v249 & 1);
  sub_100027178();
  v164 = 7;
  v79 = 7 * v166;
  sub_100027278("Sending", 7uLL, v249 & 1);
  sub_100027178();
  sub_1000095A4();
  v84 = v6;
  sub_100027278("This is the main Mail Settings pane where you can manage mail accounts, and settings related to sending, viewing and receiving mail", 0x83uLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v348 = v82;
  v349 = 48;
  v247 = 2;
  v350 = 2;
  v85 = 1;
  v351 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100027028();
  v7 = v249;
  v231 = *(*(v260 - 8) + 72);
  v100 = *(v260 + 48);
  v99 = &v232[v219 * v231];
  *v99 = v85;
  v235 = 13;
  sub_100027278("Mail Accounts", 0xDuLL, v7 & 1);
  sub_100027178();
  v234 = "Apps → Mail";
  sub_100027278("Apps → Mail", v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  v185 = 11;
  v97 = sub_100027318();
  v96 = v8;
  sub_100027278("Email accounts", v218, v249 & 1);
  sub_100027178();
  v86 = v219 * v166;
  sub_100027278("Mail accounts", v235, v249 & 1);
  sub_100027178();
  v87 = v155 * v166;
  v201 = 15;
  sub_100027278("Email addresses", 0xFuLL, v249 & 1);
  sub_100027178();
  v88 = v160 * v166;
  sub_100027278("Accounts", v152, v249 & 1);
  sub_100027178();
  v89 = v162 * v166;
  v153 = "Gmail";
  sub_100027278("Gmail", v167, v249 & 1);
  sub_100027178();
  v90 = v167 * v166;
  v156 = "Yahoo!";
  sub_100027278("Yahoo!", v157, v249 & 1);
  sub_100027178();
  v91 = v157 * v166;
  v159 = "AOL";
  sub_100027278("AOL", v160, v249 & 1);
  sub_100027178();
  v92 = v164 * v166;
  v163 = "Outlook";
  sub_100027278("Outlook", v164, v249 & 1);
  sub_100027178();
  v93 = v152 * v166;
  sub_100027278("LDAP", v162, v249 & 1);
  sub_100027178();
  v94 = v175 * v166;
  sub_100027278("CardDAV", v164, v249 & 1);
  sub_100027178();
  v181 = 10;
  v95 = 10 * v166;
  sub_100027278("CalDAV", v157, v249 & 1);
  sub_100027178();
  sub_1000095A4();
  v101 = v9;
  sub_100027278("This is the Account pane in the Mail Settings pane where you can add or remove mail accounts", 0x5CuLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v344 = v98;
  v345 = 64;
  v346 = v247;
  v347 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100027028();
  v10 = v164;
  v11 = v249;
  v108 = *(v260 + 48);
  v107 = &v232[v155 * v231];
  *v107 = v247;
  sub_100027278("Blocked", v10, v11 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  v105 = sub_100027318();
  v104 = v12;
  v102 = 23;
  sub_100027278("Blocked senders in Mail", 0x17uLL, v249 & 1);
  sub_100027178();
  v103 = v219 * v166;
  sub_100027278("Blocked email addresses", v102, v249 & 1);
  sub_100027178();
  sub_1000095A4();
  v109 = v13;
  v244 = 111;
  sub_100027278("This is the Blocked pane in the Mail Settings pane where you prevent certain contacts from sending you messages", 0x6FuLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v340 = v106;
  v341 = 63;
  v342 = v247;
  v343 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100027028();
  v14 = v197;
  v15 = v249;
  v116 = *(v260 + 48);
  v115 = &v232[v160 * v231];
  *v115 = 3;
  sub_100027278("Blocked Sender Options", v14, v15 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  v113 = sub_100027318();
  v112 = v16;
  v220 = 30;
  sub_100027278("Blocked sender options in Mail", 0x1EuLL, v249 & 1);
  sub_100027178();
  v110 = v219 * v166;
  sub_100027278("Blocked sender email actions", 0x1CuLL, v249 & 1);
  sub_100027178();
  v111 = v155 * v166;
  sub_100027278("Ignore Blocked Senders", v197, v249 & 1);
  sub_100027178();
  sub_1000095A4();
  v117 = v17;
  v186 = 141;
  sub_100027278("This is the Blocked Sender Options pane in the Mail Settings pane where you can determine what happens to messages sent from a blocked sender", 0x8DuLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v336 = v114;
  v337 = 78;
  v338 = v247;
  v339 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100027028();
  v18 = v249;
  v123 = *(v260 + 48);
  v122 = &v232[v162 * v231];
  *v122 = 4;
  v143 = 32;
  sub_100027278("Include Attachments with Replies", 0x20uLL, v18 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  v120 = sub_100027318();
  v119 = v19;
  sub_100027278("Include attachment for replying email", 0x25uLL, v249 & 1);
  sub_100027178();
  v118 = v219 * v166;
  sub_100027278("Include attachment options for replies", 0x26uLL, v249 & 1);
  sub_100027178();
  sub_1000095A4();
  v124 = v20;
  sub_100027278("This is the Include Attachments with Replies setting in the Mail Settings pane that lets you decide what happens to attachments when you reply to a message", 0x9BuLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v332 = v121;
  v333 = 91;
  v334 = v247;
  v335 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100027028();
  v21 = v175;
  v22 = v249;
  v131 = *(v260 + 48);
  v130 = &v232[v167 * v231];
  *v130 = 6;
  sub_100027278("Signature", v21, v22 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  v128 = sub_100027318();
  v127 = v23;
  sub_100027278("Email footer", v190, v249 & 1);
  sub_100027178();
  v125 = v219 * v166;
  sub_100027278("Email sign-off", v218, v249 & 1);
  sub_100027178();
  v126 = v155 * v166;
  sub_100027278("Ending of email", v201, v249 & 1);
  sub_100027178();
  sub_1000095A4();
  v132 = v24;
  sub_100027278("This is the Signature pane in the Mail Settings pane where you create or edit the text that appears at the bottom of your messages", 0x82uLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v328 = v129;
  v246 = 68;
  v329 = 68;
  v330 = v247;
  v331 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100027028();
  v25 = v164;
  v26 = v249;
  v139 = *(v260 + 48);
  v138 = &v232[v157 * v231];
  *v138 = 5;
  sub_100027278("Preview", v25, v26 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  v136 = sub_100027318();
  v135 = v27;
  sub_100027278("The number of lines of the message to show in the message list", 0x3EuLL, v249 & 1);
  sub_100027178();
  v133 = v219 * v166;
  v177 = 31;
  sub_100027278("Amount of message lines to view", 0x1FuLL, v249 & 1);
  sub_100027178();
  v134 = v155 * v166;
  sub_100027278("Quantity of preview lines of the message", 0x28uLL, v249 & 1);
  sub_100027178();
  sub_1000095A4();
  v140 = v28;
  sub_100027278("This is the Preview pane in the Mail Settings pane where you set the number of lines of each email visible in the email list", 0x7CuLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v324 = v137;
  v209 = 66;
  v325 = 66;
  v326 = v247;
  v327 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100027028();
  v29 = v201;
  v30 = v249;
  v150 = *(v260 + 48);
  v149 = &v232[v164 * v231];
  *v149 = 7;
  sub_100027278("Undo Send Delay", v29, v30 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  v147 = sub_100027318();
  v146 = v31;
  sub_100027278("Unsend email before 10 seconds", v220, v249 & 1);
  sub_100027178();
  v141 = v219 * v166;
  sub_100027278("Unsend email before 20 seconds", v220, v249 & 1);
  sub_100027178();
  v142 = v155 * v166;
  sub_100027278("Unsend email before 30 seconds", v220, v249 & 1);
  sub_100027178();
  v144 = v160 * v166;
  sub_100027278("Recall email before time elapses", v143, v249 & 1);
  sub_100027178();
  v145 = v162 * v166;
  sub_100027278("Amount of time to unsend email", v220, v249 & 1);
  sub_100027178();
  sub_1000095A4();
  v151 = v32;
  sub_100027278("This is the Undo Send Delay setting in the Mail Settings pane where you can set the number of seconds until you can no longer cancel sending the email", 0x96uLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v320 = v148;
  v321 = 74;
  v322 = v247;
  v323 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100027028();
  v33 = v185;
  v34 = v249;
  v173 = *(v260 + 48);
  v172 = &v232[v152 * v231];
  *v172 = 8;
  sub_100027278("Add Account", v33, v34 & 1);
  sub_100027178();
  v176 = "Apps → Mail → Mail Accounts";
  sub_100027278("Apps → Mail → Mail Accounts", v177, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  v170 = sub_100027318();
  v169 = v35;
  sub_100027278("Exchange ActiveSync", v217, v249 & 1);
  sub_100027178();
  v154 = v219 * v166;
  sub_100027278(v153, v167, v249 & 1);
  sub_100027178();
  v158 = v155 * v166;
  sub_100027278(v156, v157, v249 & 1);
  sub_100027178();
  v161 = v160 * v166;
  sub_100027278(v159, v160, v249 & 1);
  sub_100027178();
  v165 = v162 * v166;
  sub_100027278(v163, v164, v249 & 1);
  sub_100027178();
  v168 = v167 * v166;
  sub_100027278("Other", v167, v249 & 1);
  sub_100027178();
  sub_1000095A4();
  v174 = v36;
  sub_100027278("This is the Add Account pane in the Mail Accounts pane of Mail Settings pane where you can add a new or existing mail account to your list of accounts in the Mail app", 0xA6uLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v316 = v171;
  v317 = 84;
  v318 = v247;
  v319 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100027028();
  v37 = v218;
  v38 = v249;
  v180 = *(v260 + 48);
  v179 = &v232[v175 * v231];
  *v179 = 9;
  sub_100027278("Fetch New Data", v37, v38 & 1);
  sub_100027178();
  sub_100027278(v176, v177, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  sub_100027278("This is the Fetch New Data pane in the Mail Accounts pane of Mail Settings pane where you can determine how account data is refreshed in the Mail app", 0x95uLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v312 = v178;
  v313 = 87;
  v314 = v247;
  v315 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  v39 = v249;
  v184 = *(v260 + 48);
  v183 = &v232[v181 * v231];
  *v183 = 10;
  v212 = 17;
  sub_100027278("Show To/Cc Labels", 0x11uLL, v39 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  v223 = 144;
  sub_100027278("This is the Show To/Cc Labels control in the Mail Settings pane. When enabled, ‘To’ and ‘CC’ labels will be visible in the message list.", 0x90uLL, v248 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v308 = v182;
  v214 = 67;
  v309 = 67;
  v310 = v247;
  v311 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  v40 = v235;
  v41 = v249;
  v189 = *(v260 + 48);
  v188 = &v232[v185 * v231];
  *v188 = 11;
  sub_100027278("Swipe Options", v40, v41 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  sub_100027278("This is the Swipe Options pane in the Mail Settings pane where you can set what action occurs when you swipe left or right on a mail message.", v186, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v304 = v187;
  v305 = 60;
  v306 = v247;
  v307 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  v42 = v217;
  v43 = v249;
  v193 = *(v260 + 48);
  v192 = &v232[v190 * v231];
  *v192 = 12;
  sub_100027278("Ask Before Deleting", v42, v43 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  sub_100027278("This is the Ask Before Deleting control in the Mail Settings pane. When enabled, a confirmation prompt will appear when you try to delete a message.", 0x94uLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v300 = v191;
  v301 = 69;
  v302 = v247;
  v303 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  v44 = v249;
  v196 = *(v260 + 48);
  v195 = &v232[v235 * v231];
  *v195 = 13;
  v233 = 18;
  sub_100027278("Organize by Thread", 0x12uLL, v44 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  sub_100027278("This is the Organize by Thread control in the Mail Settings pane. When enabled, a message and all of its replies will be grouped together in the message list.", 0x9EuLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v296 = v194;
  v297 = v246;
  v298 = v247;
  v299 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  v45 = v197;
  v46 = v249;
  v200 = *(v260 + 48);
  v199 = &v232[v218 * v231];
  *v199 = 14;
  sub_100027278("Collapse Read Messages", v45, v46 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  sub_100027278("This is the Collapse Read Messages control in the Mail Settings pane. When enabled, messages that you have already read will be minimized.", 0x8AuLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v292 = v198;
  v293 = 72;
  v294 = v247;
  v295 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  v47 = v249;
  v204 = *(v260 + 48);
  v203 = &v232[v201 * v231];
  *v203 = 15;
  sub_100027278("Most Recent Message on Top", 0x1AuLL, v47 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  sub_100027278("This is the Most Recent Message on Top control in the Mail Settings pane. When enabled, unread messages will be displayed at the top of the message list.", 0x99uLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v288 = v202;
  v289 = 76;
  v290 = v247;
  v291 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  v48 = v249;
  v207 = *(v260 + 48);
  v206 = &v232[16 * v231];
  *v206 = 16;
  sub_100027278("Complete Threads", 0x10uLL, v48 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  sub_100027278("This is the Complete Threads control in the Mail Settings pane. When enabled, Mail will show all the messages in a thread, even if some have been moved to other mailboxes.", 0xABuLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v284 = v205;
  v285 = v209;
  v286 = v247;
  v287 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  v49 = v217;
  v50 = v249;
  v211 = *(v260 + 48);
  v210 = &v232[v212 * v231];
  *v210 = 17;
  sub_100027278("Muted Thread Action", v49, v50 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  sub_100027278("This is the Muted Thread Action pane in the Mail Settings pane where you can determine what happens to messages when you mute a thread.", 0x87uLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v280 = v208;
  v281 = v209;
  v282 = v247;
  v283 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  v51 = v212;
  v52 = v249;
  v216 = *(v260 + 48);
  v215 = &v232[v233 * v231];
  *v215 = 18;
  sub_100027278("Always Bcc Myself", v51, v52 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  sub_100027278("This is the Always Bcc Myself control in the Mail Settings pane. When enabled, any message you send will automatically be set to also send to yourself.", 0x97uLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v276 = v213;
  v277 = v214;
  v278 = v247;
  v279 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  v53 = v218;
  v54 = v249;
  v226 = *(v260 + 48);
  v225 = &v232[v217 * v231];
  *v225 = 19;
  sub_100027278("Mark Addresses", v53, v54 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  v222 = sub_100027318();
  v221 = v55;
  sub_100027278("Mark Addresses Not Ending With", v220, v249 & 1);
  sub_100027178();
  sub_1000095A4();
  v227 = v56;
  sub_100027278("This is the Mark Addresses pane in the Mail Settings pane where you can enable highlighting for addresses that do not end with specific domains.", v223, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v272 = v224;
  v273 = 61;
  v274 = v247;
  v275 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100027028();
  v57 = v240;
  v58 = v249;
  v230 = *(v260 + 48);
  v229 = &v232[v240 * v231];
  *v229 = 20;
  sub_100027278("Increase Quote level", v57, v58 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  sub_100027278("This is the Increase Quote level control in the Mail Settings pane. When enabled, quoted text will be indented", 0x6EuLL, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v268 = v228;
  v269 = 70;
  v270 = v247;
  v271 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  v59 = v233;
  v60 = v249;
  v254 = *(v260 + 48);
  v253 = &v232[21 * v231];
  *v253 = 21;
  sub_100027278("Load Remote Images", v59, v60 & 1);
  sub_100027178();
  sub_100027278(v234, v235, v248 & 1);
  sub_100027178();
  (v238)(v255, v248, v249, v236);
  sub_100027278(v239, v240, v249 & 1);
  sub_100027008();
  (v243)(v256, v248, v249, v241);
  sub_100027278("This is the Load Remote Images control in the Mail Settings pane. When enabled, remote images will be displayed", v244, v249 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v252);
  v264 = v245;
  v265 = v246;
  v266 = v247;
  v267 = v248 & 1 & v249;
  sub_1000271A8();
  sub_100016F4C();
  sub_100027028();
  sub_1000095A4();
  v263 = v61;
  v262 = sub_100027048();
  sub_100013B50();
  return sub_100027238();
}

uint64_t sub_100016F68(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  sub_100027318();
  *v2 = "root";
  *(v2 + 8) = 4;
  *(v2 + 16) = 2;
  *(v2 + 24) = "accounts";
  *(v2 + 32) = 8;
  *(v2 + 40) = 2;
  *(v2 + 48) = "blocked";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  *(v2 + 72) = "blockedSenderOptions";
  *(v2 + 80) = 20;
  *(v2 + 88) = 2;
  *(v2 + 96) = "includeAttachmentsWithReplies";
  *(v2 + 104) = 29;
  *(v2 + 112) = 2;
  *(v2 + 120) = "preview";
  *(v2 + 128) = 7;
  *(v2 + 136) = 2;
  *(v2 + 144) = "signature";
  *(v2 + 152) = 9;
  *(v2 + 160) = 2;
  *(v2 + 168) = "undoSendDelay";
  *(v2 + 176) = 13;
  *(v2 + 184) = 2;
  *(v2 + 192) = "addAccount";
  *(v2 + 200) = 10;
  *(v2 + 208) = 2;
  *(v2 + 216) = "fetchNewData";
  *(v2 + 224) = 12;
  *(v2 + 232) = 2;
  *(v2 + 240) = "showToCCLabels";
  *(v2 + 248) = 14;
  *(v2 + 256) = 2;
  *(v2 + 264) = "swipeOptions";
  *(v2 + 272) = 12;
  *(v2 + 280) = 2;
  *(v2 + 288) = "askBeforeDeleting";
  *(v2 + 296) = 17;
  *(v2 + 304) = 2;
  *(v2 + 312) = "organizeByThread";
  *(v2 + 320) = 16;
  *(v2 + 328) = 2;
  *(v2 + 336) = "collapseReadMessages";
  *(v2 + 344) = 20;
  *(v2 + 352) = 2;
  *(v2 + 360) = "mostRecentMessageOnTop";
  *(v2 + 368) = 22;
  *(v2 + 376) = 2;
  *(v2 + 384) = "completeThreads";
  *(v2 + 392) = 15;
  *(v2 + 400) = 2;
  *(v2 + 408) = "mutedThreadAction";
  *(v2 + 416) = 17;
  *(v2 + 424) = 2;
  *(v2 + 432) = "alwaysBccMyself";
  *(v2 + 440) = 15;
  *(v2 + 448) = 2;
  *(v2 + 456) = "markAddresses";
  *(v2 + 464) = 13;
  *(v2 + 472) = 2;
  *(v2 + 480) = "increaseQuoteLevel";
  *(v2 + 488) = 18;
  *(v2 + 496) = 2;
  *(v2 + 504) = "loadRemoteImages";
  *(v2 + 512) = 16;
  *(v2 + 520) = 2;
  sub_1000095A4();
  v7 = sub_100027308(v8, v6);

  switch(v7)
  {
    case 0:
      v5 = 0;
LABEL_46:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_46;
    case 2:
      v5 = 2;
      goto LABEL_46;
    case 3:
      v5 = 3;
      goto LABEL_46;
    case 4:
      v5 = 4;
      goto LABEL_46;
    case 5:
      v5 = 5;
      goto LABEL_46;
    case 6:
      v5 = 6;
      goto LABEL_46;
    case 7:
      v5 = 7;
      goto LABEL_46;
    case 8:
      v5 = 8;
      goto LABEL_46;
    case 9:
      v5 = 9;
      goto LABEL_46;
    case 10:
      v5 = 10;
      goto LABEL_46;
    case 11:
      v5 = 11;
      goto LABEL_46;
    case 12:
      v5 = 12;
      goto LABEL_46;
    case 13:
      v5 = 13;
      goto LABEL_46;
    case 14:
      v5 = 14;
      goto LABEL_46;
    case 15:
      v5 = 15;
      goto LABEL_46;
    case 16:
      v5 = 16;
      goto LABEL_46;
    case 17:
      v5 = 17;
      goto LABEL_46;
    case 18:
      v5 = 18;
      goto LABEL_46;
    case 19:
      v5 = 19;
      goto LABEL_46;
    case 20:
      v5 = 20;
      goto LABEL_46;
    case 21:
      v5 = 21;
      goto LABEL_46;
  }

  return 22;
}

void sub_100017614()
{
  sub_100027318();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  v0[5] = 5;
  v0[6] = 6;
  v0[7] = 7;
  v0[8] = 8;
  v0[9] = 9;
  v0[10] = 10;
  v0[11] = 11;
  v0[12] = 12;
  v0[13] = 13;
  v0[14] = 14;
  v0[15] = 15;
  v0[16] = 16;
  v0[17] = 17;
  v0[18] = 18;
  v0[19] = 19;
  v0[20] = 20;
  v0[21] = 21;
  sub_1000095A4();
}

uint64_t sub_100017704(char a1)
{
  switch(a1)
  {
    case 1:
      v2 = sub_100027278("accounts", 8uLL, 1);
      break;
    case 2:
      v2 = sub_100027278("blocked", 7uLL, 1);
      break;
    case 3:
      v2 = sub_100027278("blockedSenderOptions", 0x14uLL, 1);
      break;
    case 4:
      v2 = sub_100027278("includeAttachmentsWithReplies", 0x1DuLL, 1);
      break;
    case 5:
      v2 = sub_100027278("preview", 7uLL, 1);
      break;
    case 6:
      v2 = sub_100027278("signature", 9uLL, 1);
      break;
    case 7:
      v2 = sub_100027278("undoSendDelay", 0xDuLL, 1);
      break;
    case 8:
      v2 = sub_100027278("addAccount", 0xAuLL, 1);
      break;
    case 9:
      v2 = sub_100027278("fetchNewData", 0xCuLL, 1);
      break;
    case 10:
      v2 = sub_100027278("showToCCLabels", 0xEuLL, 1);
      break;
    case 11:
      v2 = sub_100027278("swipeOptions", 0xCuLL, 1);
      break;
    case 12:
      v2 = sub_100027278("askBeforeDeleting", 0x11uLL, 1);
      break;
    case 13:
      v2 = sub_100027278("organizeByThread", 0x10uLL, 1);
      break;
    case 14:
      v2 = sub_100027278("collapseReadMessages", 0x14uLL, 1);
      break;
    case 15:
      v2 = sub_100027278("mostRecentMessageOnTop", 0x16uLL, 1);
      break;
    case 16:
      v2 = sub_100027278("completeThreads", 0xFuLL, 1);
      break;
    case 17:
      v2 = sub_100027278("mutedThreadAction", 0x11uLL, 1);
      break;
    case 18:
      v2 = sub_100027278("alwaysBccMyself", 0xFuLL, 1);
      break;
    case 19:
      v2 = sub_100027278("markAddresses", 0xDuLL, 1);
      break;
    case 20:
      v2 = sub_100027278("increaseQuoteLevel", 0x12uLL, 1);
      break;
    case 21:
      v2 = sub_100027278("loadRemoteImages", 0x10uLL, 1);
      break;
    default:
      v2 = sub_100027278("root", 4uLL, 1);
      break;
  }

  return v2;
}

unint64_t sub_100017B78()
{
  v2 = qword_1000387F0;
  if (!qword_1000387F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000387F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100017CC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100016F68(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100017CFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100017704(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100017D48(uint64_t a1)
{
  sub_100017DD8();
  v1 = sub_100026FF8();
  v2 = *(v4 + 8);

  return v2(v1);
}

unint64_t sub_100017DD8()
{
  v2 = qword_1000387F8;
  if (!qword_1000387F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000387F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100017EF4()
{
  v2 = qword_100038800;
  if (!qword_100038800)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038800);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100017FB4()
{
  v2 = qword_100038808;
  if (!qword_100038808)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038808);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100018060()
{
  v2 = qword_100038810;
  if (!qword_100038810)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038810);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000180F4()
{
  v2 = qword_100038818;
  if (!qword_100038818)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038818);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100018188()
{
  v2 = qword_100038820;
  if (!qword_100038820)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100018234()
{
  v2 = qword_100038828;
  if (!qword_100038828)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000182C8()
{
  v2 = qword_100038830;
  if (!qword_100038830)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038830);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001835C()
{
  v2 = qword_100038838;
  if (!qword_100038838)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100018464()
{
  v2 = qword_100038840;
  if (!qword_100038840)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000184F8()
{
  v2 = qword_100038848;
  if (!qword_100038848)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000185A4()
{
  v2 = qword_100038850;
  if (!qword_100038850)
  {
    sub_100003C48(&qword_100038858, &qword_10002D300);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038850);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001862C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 21) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 234;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 22;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100018794(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEA)
  {
    v5 = ((a3 + 21) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xEA)
  {
    v4 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 21;
    }
  }

  return result;
}

uint64_t sub_1000189A4(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_100027198();
      v1 = sub_1000272B8();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    sub_100027198();
    return v2;
  }

  return result;
}

uint64_t sub_100018A94()
{
  v4[3] = 0;
  v4[1] = sub_100018C38;
  v4[2] = sub_1000190A8;
  v12 = &v15;
  v15 = 0;
  v7 = sub_100026FA8();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v8 = v4 - v4[0];
  v0 = sub_10001EA7C();
  v4[4] = &v14;
  v14 = v0;
  sub_100019260();
  sub_100026FB8();
  v9 = sub_100026F98();
  (*(v5 + 8))(v8, v7);

  v15 = v9;
  v10 = sub_100001BA4(&qword_100038868, &qword_10002D360);
  sub_100027318();
  *v1 = v9;
  sub_1000095A4();
  v11 = v2;
  v13 = sub_100026F88();

  sub_1000192D8(v12);
  return v13;
}

uint64_t sub_100018C38(uint64_t a1)
{
  v14 = a1;
  v39 = 0;
  v36 = &v38;
  v38 = 0;
  v28 = sub_100001BA4(&qword_100038888, &qword_10002D408);
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v9 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v29 = &v9 - v9;
  v23 = sub_100001BA4(&qword_100038890, &qword_10002D410);
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v10 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v14);
  v25 = &v9 - v10;
  v11 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v20 = &v9 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v24 = &v9 - v12;
  v39 = v5;
  v34 = sub_100019260();
  v13 = 5;
  v30 = 1;
  v33 = &unk_100035200;
  sub_100026F68();
  v18 = 1;
  v40._countAndFlagsBits = sub_100027278("Open ", v13, 1);
  object = v40._object;
  sub_100026F58(v40);

  KeyPath = swift_getKeyPath();
  sub_10001835C();
  v16 = sub_100026EB8();
  sub_100026F48();

  v41._countAndFlagsBits = sub_100027278("", 0, v18 & 1);
  v19 = v41._object;
  sub_100026F58(v41);

  (*(v21 + 16))(v20, v24, v23);
  (*(v21 + 32))(v25, v20, v23);
  (*(v21 + 8))(v24, v23);
  sub_100026F78();
  v31 = sub_100026ED8();
  (*(v26 + 8))(v29, v28);

  v38 = v31;
  v32 = sub_100001BA4(&qword_100038898, &qword_10002D418);
  sub_100027318();
  *v6 = v31;
  sub_1000095A4();
  v35 = v7;
  v37 = sub_100026EC8();

  sub_1000192D8(v36);
  return v37;
}

uint64_t sub_100019014@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1000047E0(a1, &v4);
  *a2 = sub_10001EDD0(v4);
}

uint64_t sub_10001905C(char *a1, void *a2)
{
  v3 = *a1;
  sub_1000047E0(a2, &v4);
  sub_10001EE2C(v3, v4);
}

uint64_t sub_1000190A8(uint64_t a1)
{
  v8 = 0;
  v7 = sub_100019304;
  v21 = 0;
  v18 = &v20;
  v20 = 0;
  v13 = sub_100026F38();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = &v5 - v6;
  v21 = a1;
  KeyPath = swift_getKeyPath();
  sub_10001835C();
  v9 = sub_100026EB8();
  sub_100019260();
  sub_100026F28();

  v15 = sub_100026F18();
  (*(v11 + 8))(v14, v13);

  v20 = v15;
  v16 = sub_100001BA4(&qword_100038880, &qword_10002D400);
  sub_100027318();
  *v2 = v15;
  sub_1000095A4();
  v17 = v3;
  v19 = sub_100026F08();

  sub_1000192D8(v18);
  return v19;
}

unint64_t sub_100019260()
{
  v2 = qword_100038860;
  if (!qword_100038860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038860);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100019304()
{
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  sub_100027278("Mail Settings", 0xDuLL, 1);
  v2 = sub_100026EF8();

  v28 = v2;
  sub_100027278("Mail Accounts Settings", 0x16uLL, 1);
  v3 = sub_100026EF8();

  v27 = v3;
  sub_100027278("Mail Signature", 0xEuLL, 1);
  v4 = sub_100026EF8();

  v26 = v4;
  sub_100027278("Mail Preview Settings", 0x15uLL, 1);
  v5 = sub_100026EF8();

  v25 = v5;
  sub_100027278("Mail To Label Settings", 0x16uLL, 1);
  v6 = sub_100026EF8();

  v24 = v6;
  sub_100027278("Mail CC Label Settings", 0x16uLL, 1);
  v7 = sub_100026EF8();

  v23 = v7;
  sub_100027278("Mail Deletion Settings", 0x16uLL, 1);
  v8 = sub_100026EF8();

  v22 = v8;
  sub_100027278("Mail Privacy Protection Settings", 0x20uLL, 1);
  v9 = sub_100026EF8();

  v21 = v9;
  sub_100027278("Mail Thread Settings", 0x14uLL, 1);
  v10 = sub_100026EF8();

  v20 = v10;
  sub_100027278("Mail Blocked Sender Settings", 0x1CuLL, 1);
  v11 = sub_100026EF8();

  v19 = v11;
  sub_100027278("Compose Mail Settings", 0x15uLL, 1);
  v12 = sub_100026EF8();

  v18 = v12;
  sub_100027278("Mail Undo Send Delay Settings", 0x1DuLL, 1);
  v13 = sub_100026EF8();

  v17 = v13;
  sub_100027278("Mail Include Attachments Settings", 0x21uLL, 1);
  v14 = sub_100026EF8();

  v16 = v14;
  sub_100001BA4(&qword_100038878, &qword_10002D3D0);
  sub_100027318();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  v0[6] = v8;
  v0[7] = v9;
  v0[8] = v10;
  v0[9] = v11;
  v0[10] = v12;
  v0[11] = v13;
  v0[12] = v14;
  sub_1000095A4();
  v15 = sub_100026EE8();

  sub_1000192D8(&v16);
  sub_1000192D8(&v17);
  sub_1000192D8(&v18);
  sub_1000192D8(&v19);
  sub_1000192D8(&v20);
  sub_1000192D8(&v21);
  sub_1000192D8(&v22);
  sub_1000192D8(&v23);
  sub_1000192D8(&v24);
  sub_1000192D8(&v25);
  sub_1000192D8(&v26);
  sub_1000192D8(&v27);
  sub_1000192D8(&v28);
  return v15;
}

uint64_t sub_100019854()
{
  v6 = 0;
  v5 = sub_1000199CC;
  v14 = &v16;
  v16 = 0;
  v9 = sub_100026EA8();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v10 = &v3 - v4;
  sub_100019260();
  sub_100026E98();
  v11 = sub_100026E88();
  (*(v7 + 8))(v10, v9);

  v16 = v11;
  v12 = sub_100001BA4(&qword_100038870, qword_10002D368);
  sub_100027318();
  *v0 = v11;
  sub_1000095A4();
  v13 = v1;
  v15 = sub_100026E78();

  sub_1000192D8(v14);
  return v15;
}

uint64_t sub_1000199CC()
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  sub_100027278("Read my mail", 0xCuLL, 1);
  v2 = sub_100026EF8();

  v12 = v2;
  sub_100027278("Send an email", 0xDuLL, 1);
  v3 = sub_100026EF8();

  v11 = v3;
  sub_100027278("Reply to this email", 0x13uLL, 1);
  v4 = sub_100026EF8();

  v10 = v4;
  sub_100027278("Forward this message", 0x14uLL, 1);
  v5 = sub_100026EF8();

  v9 = v5;
  sub_100027278("Compose an email", 0x10uLL, 1);
  v6 = sub_100026EF8();

  v8 = v6;
  sub_100001BA4(&qword_100038878, &qword_10002D3D0);
  sub_100027318();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  sub_1000095A4();
  v7 = sub_100026EE8();

  sub_1000192D8(&v8);
  sub_1000192D8(&v9);
  sub_1000192D8(&v10);
  sub_1000192D8(&v11);
  sub_1000192D8(&v12);
  return v7;
}

unint64_t sub_100019D54()
{
  v2 = qword_1000388A0;
  if (!qword_1000388A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000388A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100019E3C()
{
  v2 = qword_1000388A8;
  if (!qword_1000388A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000388A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100019F28()
{
  result = sub_100027278("com.apple.Preferences", 0x15uLL, 1);
  qword_100038E08 = result;
  qword_100038E10 = v1;
  return result;
}

uint64_t *sub_100019F6C()
{
  if (qword_100038170 != -1)
  {
    swift_once();
  }

  return &qword_100038E08;
}

uint64_t sub_100019FCC()
{
  v1 = *sub_100019F6C();

  return v1;
}

uint64_t sub_10001A008()
{
  if (qword_100038178 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10001A07C()
{
  if (qword_100038180 != -1)
  {
    swift_once();
  }

  return v1;
}

id sub_10001A0F0()
{
  result = [objc_opt_self() em_userDefaults];
  qword_100038E18 = result;
  return result;
}

uint64_t *sub_10001A12C()
{
  if (qword_100038188 != -1)
  {
    swift_once();
  }

  return &qword_100038E18;
}

void *sub_10001A18C()
{
  v1 = *sub_10001A12C();
  v1;
  return v1;
}

uint64_t sub_10001A1C4()
{
  v9 = "Title for entity representing the Lines of Preview setting in Mail";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = qword_100038E20;
  sub_100001C10(v8, qword_100038E20);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Preview", 7uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 68;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t sub_10001A4C0()
{
  if (qword_100038190 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, qword_100038E20);
}

uint64_t sub_10001A52C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001A4C0();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10001A590()
{
  result = sub_100027278("LinesOfPreview", 0xEuLL, 1);
  qword_1000388B0 = result;
  qword_1000388B8 = v1;
  return result;
}

uint64_t *sub_10001A5D4()
{
  if (qword_100038198 != -1)
  {
    swift_once();
  }

  return &qword_1000388B0;
}

uint64_t sub_10001A634()
{
  v1 = *sub_10001A5D4();

  return v1;
}

uint64_t sub_10001A670()
{
  v2[3] = 0;
  v2[1] = &unk_10002DD60;
  v2[2] = &unk_10002DD68;
  v3 = &v5;
  v5 = 0;
  v0 = sub_100027198();
  v2[0] = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v2[4] = v2 - v2[0];
  sub_100001BA4(&qword_100038A10, &qword_10002DD58);
  sub_100027278("Preview", 7uLL, 1);
  sub_100027178();
  sub_10001B7E4();
  v4 = sub_100027128();

  v5 = v4;
  sub_100003D38(v3);
  return v4;
}

uint64_t sub_10001A7E4@<X0>(uint64_t *a2@<X8>)
{
  sub_10001A824();
  result = sub_100026E18();
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_10001A824()
{
  v2 = qword_1000388C0;
  if (!qword_1000388C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000388C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001A8F0()
{
  v2 = qword_1000388C8;
  if (!qword_1000388C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000388C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001A9DC()
{
  v2 = qword_1000388D0;
  if (!qword_1000388D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000388D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001AA80()
{
  *(v0 + 16) = v0;
  v1 = sub_10001A670();
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t sub_10001AB08(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100002818;

  return sub_10001AA58();
}

uint64_t sub_10001ABB8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_10001AC7C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.allEntities()(a2, v4);
}

unint64_t sub_10001AC7C()
{
  v2 = qword_1000388D8;
  if (!qword_1000388D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000388D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001ACF8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10001AC7C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002BE0;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v4);
}

uint64_t sub_10001ADC0(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_10001AC7C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.suggestedEntities()(a2, v4);
}

uint64_t sub_10001AE84(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10001AF4C();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002FCC;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_10001AF4C()
{
  v2 = qword_1000388E0;
  if (!qword_1000388E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000388E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001AFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  *(v3 + 48) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 136) = 0;
  v4 = sub_100001BA4(&qword_1000388E8, &qword_10002D508);
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  return _swift_task_switch(sub_10001B0EC, 0);
}

uint64_t sub_10001B0EC()
{
  *(v0 + 16) = v0;
  KeyPath = swift_getKeyPath();
  *(v0 + 88) = KeyPath;
  v1 = swift_task_alloc();
  v4[12] = v1;
  v6 = sub_100001BA4(&qword_1000388F0, &qword_10002D538);
  v4[13] = sub_10001B7E4();
  *v1 = v4[2];
  v1[1] = sub_10001B1E4;
  v2 = v4[10];

  return _AppEntityUpdate.value<A>(of:)(v2, KeyPath, v6);
}

uint64_t sub_10001B1E4()
{
  *(*v0 + 16) = *v0;

  return _swift_task_switch(sub_10001B31C, 0);
}

uint64_t sub_10001B31C()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v0[2] = v0;
  if ((*(v2 + 88))(v1, v3) == enum case for _IntentValueState.set<A>(_:))
  {
    v8 = *(v11 + 80);
    (*(*(v11 + 72) + 96))();
    v9 = *v8;
    *(v11 + 136) = *v8;
    *(v11 + 40) = sub_10001A670();
    *(v11 + 137) = v9;
    KeyPath = swift_getKeyPath();
    *(v11 + 112) = KeyPath;
    v6 = swift_task_alloc();
    *(v11 + 120) = v6;
    *v6 = *(v11 + 16);
    v6[1] = sub_10001B568;
    v7 = *(v11 + 104);

    return AppEntity._setValue<A>(_:for:)(v11 + 137, KeyPath, v7);
  }

  else
  {
    (*(*(v11 + 72) + 8))(*(v11 + 80), *(v11 + 64));
    sub_10001B86C();
    sub_100026D18();

    v4 = *(*(v11 + 16) + 8);

    return v4();
  }
}

uint64_t sub_10001B568()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[16] = v0;

  if (v0)
  {
    v2 = sub_100003AC0;
  }

  else
  {

    sub_100003D38(v4 + 5);
    v2 = sub_10001B6F8;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_10001B6F8(uint64_t a1)
{
  *(v1 + 16) = v1;
  sub_10001B86C();
  sub_100026D18();

  v2 = *(*(v1 + 16) + 8);

  return v2();
}

unint64_t sub_10001B7E4()
{
  v2 = qword_1000388F8;
  if (!qword_1000388F8)
  {
    sub_100003C48(&qword_100038900, qword_10002D540);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000388F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001B86C()
{
  v2 = qword_100038908;
  if (!qword_100038908)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038908);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001B8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100002FCC;

  return sub_10001AFC8(a1, a2, a3);
}

uint64_t sub_10001B9AC()
{
  v9 = "Title of options for message list preview";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = static PreviewLineOption.typeDisplayRepresentation;
  sub_100001C10(v8, static PreviewLineOption.typeDisplayRepresentation);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Message List Preview Lines Option", 0x21uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 41;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t PreviewLineOption.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1000381A0 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, static PreviewLineOption.typeDisplayRepresentation);
}

uint64_t static PreviewLineOption.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = PreviewLineOption.typeDisplayRepresentation.unsafeMutableAddressor();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10001BD78()
{
  v22 = "Title of option for 0 lines of preview";
  v28 = "Title of option for one line of preview";
  v31 = "Title of option for two lines of preview";
  v34 = "Title of option for three lines of preview";
  v38 = "Title of option for four lines of preview";
  v44 = "Title of option for five lines of preview";
  v0 = sub_100001BA4(&qword_100038460, &qword_10002B980);
  v16 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v62 = &v15 - v16;
  v1 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v61 = &v15 - v17;
  v65 = 0;
  v18 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v50 = &v15 - v18;
  v19 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v49 = &v15 - v19;
  v20 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v48 = &v15 - v20;
  v51 = sub_100027198();
  v23 = *(v51 - 8);
  v24 = v51 - 8;
  v21 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v60 = &v15 - v21;
  v64 = sub_100001BA4(&qword_100038910, &qword_10002D558);
  v27 = 6;
  v63 = sub_100027318();
  v42 = v2;
  v25 = *(v64 + 48);
  *v2 = 0;
  v37 = 4;
  v54 = 1;
  sub_100027278("None", 4uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v50);
  v88 = v22;
  v89 = 38;
  v46 = 2;
  v90 = 2;
  v26 = 1;
  v47 = 0;
  sub_1000271A8();
  v53 = *(v23 + 56);
  v52 = v23 + 56;
  v53(v61, v54, v54, v51);
  v55 = sub_100027018();
  v3 = *(v55 - 8);
  v57 = *(v3 + 56);
  v56 = v3 + 56;
  v57(v62, v54);
  sub_100027038();
  v4 = v27;
  v5 = v54;
  v41 = *(*(v64 - 8) + 72);
  v30 = *(v64 + 48);
  v29 = &v42[v41];
  *v29 = v26;
  sub_100027278("1 Line", v4, v5 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v50);
  v84 = v28;
  v85 = 39;
  v86 = v46;
  v87 = v47 & 1 & v54;
  sub_1000271A8();
  v53(v61, v54, v54, v51);
  (v57)(v62, v54, v54, v55);
  sub_100027038();
  v6 = v54;
  v33 = *(v64 + 48);
  v32 = &v42[2 * v41];
  *v32 = v46;
  v43 = 7;
  sub_100027278("2 Lines", 7uLL, v6 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v50);
  v80 = v31;
  v81 = 40;
  v82 = v46;
  v83 = v47 & 1 & v54;
  sub_1000271A8();
  v53(v61, v54, v54, v51);
  (v57)(v62, v54, v54, v55);
  sub_100027038();
  v7 = v43;
  v8 = v54;
  v36 = *(v64 + 48);
  v35 = &v42[3 * v41];
  *v35 = 3;
  sub_100027278("3 Lines", v7, v8 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v50);
  v76 = v34;
  v77 = 42;
  v78 = v46;
  v79 = v47 & 1 & v54;
  sub_1000271A8();
  v53(v61, v54, v54, v51);
  (v57)(v62, v54, v54, v55);
  sub_100027038();
  v9 = v43;
  v10 = v54;
  v40 = *(v64 + 48);
  v39 = &v42[v37 * v41];
  *v39 = 4;
  sub_100027278("4 Lines", v9, v10 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v50);
  v72 = v38;
  v45 = 41;
  v73 = 41;
  v74 = v46;
  v75 = v47 & 1 & v54;
  sub_1000271A8();
  v53(v61, v54, v54, v51);
  (v57)(v62, v54, v54, v55);
  sub_100027038();
  v11 = v43;
  v12 = v54;
  v59 = *(v64 + 48);
  v58 = &v42[5 * v41];
  *v58 = 5;
  sub_100027278("5 Lines", v11, v12 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v50);
  v68 = v44;
  v69 = v45;
  v70 = v46;
  v71 = v47 & 1 & v54;
  sub_1000271A8();
  v53(v61, v54, v54, v51);
  (v57)(v62, v54, v54, v55);
  sub_100027038();
  sub_1000095A4();
  v67 = v13;
  v66 = sub_100027048();
  sub_10001CA34();
  result = sub_100027238();
  static PreviewLineOption.caseDisplayRepresentations = result;
  return result;
}

unint64_t sub_10001CA34()
{
  v2 = qword_100038918;
  if (!qword_100038918)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038918);
    return WitnessTable;
  }

  return v2;
}

uint64_t *PreviewLineOption.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1000381A8 != -1)
  {
    swift_once();
  }

  return &static PreviewLineOption.caseDisplayRepresentations;
}

uint64_t static PreviewLineOption.caseDisplayRepresentations.getter()
{
  v1 = PreviewLineOption.caseDisplayRepresentations.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static PreviewLineOption.caseDisplayRepresentations.setter(uint64_t a1)
{
  v2 = PreviewLineOption.caseDisplayRepresentations.unsafeMutableAddressor();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t (*static PreviewLineOption.caseDisplayRepresentations.modify())(uint64_t a1)
{
  PreviewLineOption.caseDisplayRepresentations.unsafeMutableAddressor();
  swift_beginAccess();
  return sub_1000104A0;
}

MailSettingsIntentsExtension::PreviewLineOption_optional __swiftcall PreviewLineOption.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
  }

  return 6;
}

void static PreviewLineOption.allCases.getter()
{
  sub_100027318();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  v0[5] = 5;
  sub_1000095A4();
}

uint64_t PreviewLineOption.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
  }

  return 5;
}

unint64_t sub_10001CEC8()
{
  v2 = qword_100038920;
  if (!qword_100038920)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001CF5C()
{
  v2 = qword_100038928;
  if (!qword_100038928)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038928);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001CFF0()
{
  v2 = qword_100038930;
  if (!qword_100038930)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D084()
{
  v2 = qword_100038938;
  if (!qword_100038938)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038938);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D130()
{
  v2 = qword_100038940;
  if (!qword_100038940)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038940);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D1C4()
{
  v2 = qword_100038948;
  if (!qword_100038948)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D258()
{
  v2 = qword_100038950;
  if (!qword_100038950)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038950);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D304()
{
  v2 = qword_100038958;
  if (!qword_100038958)
  {
    sub_100003C48(&qword_100038960, &qword_10002D748);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D3A4()
{
  v2 = qword_100038968;
  if (!qword_100038968)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038968);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D438()
{
  v2 = qword_100038970;
  if (!qword_100038970)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038970);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D4E4()
{
  v2 = qword_100038978;
  if (!qword_100038978)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038978);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D578()
{
  v2 = qword_100038980;
  if (!qword_100038980)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D60C()
{
  v2 = qword_100038988;
  if (!qword_100038988)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D6A0()
{
  v2 = qword_100038990;
  if (!qword_100038990)
  {
    sub_100003C48(&qword_100038998, &qword_10002D8E0);
    sub_10001D258();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038990);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D750()
{
  v2 = qword_1000389A0;
  if (!qword_1000389A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D848()
{
  v2 = qword_1000389A8;
  if (!qword_1000389A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389A8);
    return WitnessTable;
  }

  return v2;
}

MailSettingsIntentsExtension::PreviewLineOption_optional sub_10001D994@<W0>(Swift::Int *a1@<X0>, MailSettingsIntentsExtension::PreviewLineOption_optional *a2@<X8>)
{
  result.value = PreviewLineOption.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10001D9C4@<X0>(uint64_t *a1@<X8>)
{
  result = PreviewLineOption.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_10001DA0C()
{
  v2 = qword_1000389B0;
  if (!qword_1000389B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001DAA0()
{
  v2 = qword_1000389B8;
  if (!qword_1000389B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001DB34()
{
  v2 = qword_1000389C0;
  if (!qword_1000389C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001DBC8()
{
  v2 = qword_1000389C8;
  if (!qword_1000389C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001DC5C()
{
  v2 = qword_1000389D0;
  if (!qword_1000389D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001DCF0()
{
  v2 = qword_1000389D8;
  if (!qword_1000389D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001DD84()
{
  v2 = qword_1000389E0;
  if (!qword_1000389E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001DE74()
{
  v2 = qword_1000389E8;
  if (!qword_1000389E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001DF40()
{
  v2 = qword_1000389F0;
  if (!qword_1000389F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001DFD4()
{
  v2 = qword_1000389F8;
  if (!qword_1000389F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000389F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001E0D0()
{
  v2 = qword_100038A00;
  if (!qword_100038A00)
  {
    sub_100003C48(&qword_100038A08, &qword_10002DC40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A00);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for PreviewLineOption(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreviewLineOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_10001E538(uint64_t a1, void *a2)
{
  *(v2 + 144) = a1;
  *(v2 + 112) = v2;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 152) = 0;
  *(v2 + 120) = *a2;
  return _swift_task_switch(sub_10001E57C, 0);
}

uint64_t sub_10001E57C()
{
  *(v0 + 112) = v0;
  v12 = *sub_10001A12C();
  v12;
  if (v12)
  {
    sub_10001A5D4();

    v9 = sub_100027268();

    v10 = [v12 objectForKey:v9];

    if (v10)
    {
      sub_1000272E8();
      sub_10000B5DC(v11 + 80, v11 + 48);
      swift_unknownObjectRelease();
    }

    else
    {
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      *(v11 + 72) = 0;
    }

    *(v11 + 16) = *(v11 + 48);
    *(v11 + 32) = *(v11 + 64);
  }

  else
  {
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
  }

  if (*(v11 + 40))
  {
    if (swift_dynamicCast())
    {
      v5 = *(v11 + 136);
      v6 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 1;
    }

    v7 = v5;
    v8 = v6;
  }

  else
  {
    sub_10000B500((v11 + 16));
    v7 = 0;
    v8 = 1;
  }

  if ((v8 & 1) != 0 || (*(v11 + 128) = v7, v1.value = PreviewLineOption.init(rawValue:)(v7).value, v1.value == MailSettingsIntentsExtension_PreviewLineOption_unknownDefault))
  {
    **(v11 + 144) = 2;
  }

  else
  {
    v2 = *(v11 + 144);
    *(v11 + 152) = v1;
    v2->value = v1.value;
  }

  v3 = *(*(v11 + 112) + 8);

  return v3();
}

uint64_t sub_10001E8CC(void *a1, char *a2)
{
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 24) = *a1;
  v3 = *a2;
  *(v2 + 33) = *a2;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_10001E918, 0);
}

uint64_t sub_10001E918()
{
  *(v0 + 16) = v0;
  v6 = *sub_10001A12C();
  v6;
  if (v6)
  {
    v3 = PreviewLineOption.rawValue.getter(*(v5 + 33));
    sub_10001A5D4();

    v4 = sub_100027268();

    [v6 setInteger:v3 forKey:v4];
  }

  v1 = *(*(v5 + 16) + 8);

  return v1();
}

uint64_t sub_10001EA7C()
{
  v27 = &v30;
  v30 = 0;
  v13 = 0;
  v0 = sub_1000270C8();
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v24 = &v5 - v5;
  v1 = sub_100001BA4(&qword_100038A48, &unk_10002DF90);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v23 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v22 = &v5 - v7;
  v8 = (*(*(sub_100001BA4(&qword_100038230, &unk_10002AD00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v20 = &v5 - v8;
  v12 = sub_100027198();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v26 = &v5 - v9;
  sub_100001BA4(&qword_100038A50, &unk_10002DFA0);
  v14 = 1;
  sub_100027278("Mail Settings", 0xDuLL, 1);
  sub_100027178();
  (*(v10 + 56))(v20, v14, v14, v12);
  v21 = &v29;
  v29 = 22;
  v15 = sub_100026DF8();
  v3 = *(v15 - 8);
  v17 = *(v3 + 56);
  v16 = v3 + 56;
  v17(v22, v14);
  (v17)(v23, v14, v14, v15);
  v19 = sub_10001835C();
  v25 = sub_100012644();
  v18 = &unk_1000350A8;
  sub_10001FBA4(v24);
  sub_10001FC14(v18, v19, v25);
  v28 = sub_100026E68();

  v30 = v28;
  sub_100003D38(v27);
  return v28;
}

uint64_t sub_10001EDD0(uint64_t a1)
{

  sub_100026E38();

  return v2;
}

uint64_t sub_10001EE2C(char a1, uint64_t a2)
{

  sub_100026E48();
}

uint64_t sub_10001EE90()
{
  v1 = sub_100027198();
  sub_100001C10(v1, qword_100038E58);
  sub_100001CAC(v1, qword_100038E58);
  sub_100027278("Open Mail Settings", 0x12uLL, 1);
  return sub_100027178();
}

uint64_t sub_10001EEFC()
{
  if (qword_1000381B0 != -1)
  {
    swift_once();
  }

  v0 = sub_100027198();
  return sub_100001CAC(v0, qword_100038E58);
}

uint64_t sub_10001EF68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001EEFC();
  v1 = sub_100027198();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10001EFFC()
{
  result = sub_100027278("com.apple.Preferences", 0x15uLL, 1);
  qword_100038E70 = result;
  qword_100038E78 = v1;
  return result;
}

uint64_t *sub_10001F040()
{
  if (qword_1000381B8 != -1)
  {
    swift_once();
  }

  return &qword_100038E70;
}

uint64_t sub_10001F0A0()
{
  v1 = *sub_10001F040();

  return v1;
}

void (*sub_10001F0DC(uint64_t *a1, uint64_t a2))(void **a1, char a2)
{
  v4 = sub_10001FB50(0x30uLL, 50335);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = sub_100026E28();
  return sub_10001F178;
}

void sub_10001F178(void **a1, char a2)
{
  v2 = *a1;
  v2[5](v2, 0);

  free(v2);
}

uint64_t sub_10001F214(uint64_t a1)
{

  v2 = sub_100026E58();

  return v2;
}

uint64_t sub_10001F26C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001EDD0(*v1);
  *a1 = result;
  return result;
}

void (*sub_10001F2BC(uint64_t **a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = sub_10001FB50(0x28uLL, 64930);
  *a1 = v3;
  v3[4] = sub_10001F0DC(v3, *v1);
  return sub_10001F330;
}

void sub_10001F330(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_10001F3AC(uint64_t a1, uint64_t a2)
{
  sub_10001F3F8();
  sub_100017DD8();
  return sub_1000270A8();
}

unint64_t sub_10001F3F8()
{
  v2 = qword_100038A18;
  if (!qword_100038A18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001F56C(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v7 = sub_10001F3F8();
  v8 = sub_10001F78C();
  v4 = sub_100017DD8();
  *v3 = *(v6 + 16);
  v3[1] = sub_10001F644;

  return URLRepresentableIntent<>.perform()(a2, v7, v8, v4);
}

uint64_t sub_10001F644()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v4 = *(*v5 + 8);

    return v4();
  }

  return result;
}

unint64_t sub_10001F78C()
{
  v2 = qword_100038A20;
  if (!qword_100038A20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001F808@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001EA7C();
  *a1 = result;
  return result;
}

unint64_t sub_10001F87C()
{
  v2 = qword_100038A28;
  if (!qword_100038A28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001F940()
{
  v2 = qword_100038A30;
  if (!qword_100038A30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001F9D4()
{
  v2 = qword_100038A38;
  if (!qword_100038A38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001FA68()
{
  v2 = qword_100038A40;
  if (!qword_100038A40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A40);
    return WitnessTable;
  }

  return v2;
}

void *sub_10001FB50(size_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t sub_10001FBA4@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for InputConnectionBehavior.default(_:);
  v1 = sub_1000270C8();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_10001FC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v11 = a1;
  v6 = *(*(*(a3 + 16) + 8) + 16);
  v4[1] = swift_getAssociatedTypeWitness();
  v4[2] = 0;
  v7 = &protocol requirements base descriptor for CaseIterable;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v4 - v5;
  v8 = swift_checkMetadataState();
  sub_1000272F8();
  swift_getAssociatedConformanceWitness();
  return sub_1000272D8();
}

uint64_t sub_10001FD4C()
{
  result = sub_100027278("com.apple.Preferences", 0x15uLL, 1);
  qword_100038E80 = result;
  qword_100038E88 = v1;
  return result;
}

uint64_t *sub_10001FD90()
{
  if (qword_1000381C0 != -1)
  {
    swift_once();
  }

  return &qword_100038E80;
}

uint64_t sub_10001FDF0()
{
  v1 = *sub_10001FD90();

  return v1;
}

uint64_t sub_10001FE2C()
{
  if (qword_1000381C8 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10001FEA0()
{
  if (qword_1000381D0 != -1)
  {
    swift_once();
  }

  return v1;
}

id sub_10001FF14()
{
  result = [objc_opt_self() em_userDefaults];
  qword_100038E90 = result;
  return result;
}

uint64_t *sub_10001FF50()
{
  if (qword_1000381D8 != -1)
  {
    swift_once();
  }

  return &qword_100038E90;
}

void *sub_10001FFB0()
{
  v1 = *sub_10001FF50();
  v1;
  return v1;
}

uint64_t sub_10001FFE8()
{
  v9 = "Title for entity representing the Show Contact Photos setting in Mail";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = qword_100038E98;
  sub_100001C10(v8, qword_100038E98);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Show Contact Photos", 0x13uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 71;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t sub_1000202E4()
{
  if (qword_1000381E0 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, qword_100038E98);
}

uint64_t sub_100020350@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000202E4();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1000203B4()
{
  result = sub_100027278("EnableContactPhotos", 0x13uLL, 1);
  qword_100038A58 = result;
  qword_100038A60 = v1;
  return result;
}

uint64_t *sub_1000203F8()
{
  if (qword_1000381E8 != -1)
  {
    swift_once();
  }

  return &qword_100038A58;
}

uint64_t sub_100020458()
{
  v1 = *sub_1000203F8();

  return v1;
}

uint64_t sub_100020494()
{
  v7 = "Title for entity representing the Show Contact Photos setting in Mail";
  v14 = 0;
  v12 = &unk_10002E570;
  v13 = &unk_10002E578;
  v16 = &v21;
  v21 = 0;
  v9 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v10 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v2 - v5;
  v0 = sub_100027198();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v15 = &v2 - v6;
  sub_100001BA4(&qword_100038B38, &qword_10002E568);
  sub_100027278("Show Contact Photos", 0x13uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v11);
  v18 = v7;
  v19 = 71;
  v20 = 2;
  sub_1000271A8();
  sub_100021788();
  v17 = sub_100027128();

  v21 = v17;
  sub_100003D38(v16);
  return v17;
}

uint64_t sub_100020780@<X0>(uint64_t *a2@<X8>)
{
  sub_1000207C0();
  result = sub_100026E18();
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_1000207C0()
{
  v2 = qword_100038A68;
  if (!qword_100038A68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10002088C()
{
  v2 = qword_100038A70;
  if (!qword_100038A70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100020978()
{
  v2 = qword_100038A78;
  if (!qword_100038A78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100020A1C()
{
  *(v0 + 16) = v0;
  v1 = sub_100020494();
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t sub_100020AA4(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100002818;

  return sub_1000209F4();
}

uint64_t sub_100020B54(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_100020C18();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.allEntities()(a2, v4);
}

unint64_t sub_100020C18()
{
  v2 = qword_100038A80;
  if (!qword_100038A80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100020C94(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_100020C18();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002BE0;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v4);
}

uint64_t sub_100020D5C(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 32) = v3;
  v4 = sub_100020C18();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002818;

  return _UniqueEntityQuery.suggestedEntities()(a2, v4);
}

uint64_t sub_100020E20(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_100020EE8();
  *v3 = *(v6 + 16);
  v3[1] = sub_100002FCC;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_100020EE8()
{
  v2 = qword_100038A88;
  if (!qword_100038A88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100020F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  *(v3 + 48) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 136) = 0;
  v4 = sub_100001BA4(&qword_100038260, &qword_10002AD58);
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  return _swift_task_switch(sub_100021088, 0);
}

uint64_t sub_100021088()
{
  *(v0 + 16) = v0;
  KeyPath = swift_getKeyPath();
  *(v0 + 88) = KeyPath;
  v1 = swift_task_alloc();
  v4[12] = v1;
  v6 = sub_100001BA4(&qword_100038A90, &qword_10002E028);
  v4[13] = sub_100021788();
  *v1 = v4[2];
  v1[1] = sub_100021180;
  v2 = v4[10];

  return _AppEntityUpdate.value<A>(of:)(v2, KeyPath, v6);
}

uint64_t sub_100021180()
{
  *(*v0 + 16) = *v0;

  return _swift_task_switch(sub_1000212B8, 0);
}

uint64_t sub_1000212B8()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v0[2] = v0;
  if ((*(v2 + 88))(v1, v3) == enum case for _IntentValueState.set<A>(_:))
  {
    v8 = *(v11 + 80);
    (*(*(v11 + 72) + 96))();
    v9 = *v8;
    *(v11 + 136) = *v8 & 1;
    *(v11 + 40) = sub_100020494();
    *(v11 + 137) = v9;
    KeyPath = swift_getKeyPath();
    *(v11 + 112) = KeyPath;
    v6 = swift_task_alloc();
    *(v11 + 120) = v6;
    *v6 = *(v11 + 16);
    v6[1] = sub_10002150C;
    v7 = *(v11 + 104);

    return AppEntity._setValue<A>(_:for:)(v11 + 137, KeyPath, v7);
  }

  else
  {
    (*(*(v11 + 72) + 8))(*(v11 + 80), *(v11 + 64));
    sub_100021810();
    sub_100026D18();

    v4 = *(*(v11 + 16) + 8);

    return v4();
  }
}

uint64_t sub_10002150C()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[16] = v0;

  if (v0)
  {
    v2 = sub_100003AC0;
  }

  else
  {

    sub_100003D38(v4 + 5);
    v2 = sub_10002169C;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_10002169C(uint64_t a1)
{
  *(v1 + 16) = v1;
  sub_100021810();
  sub_100026D18();

  v2 = *(*(v1 + 16) + 8);

  return v2();
}

unint64_t sub_100021788()
{
  v2 = qword_100038A98;
  if (!qword_100038A98)
  {
    sub_100003C48(&qword_100038AA0, &unk_10002E030);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021810()
{
  v2 = qword_100038AA8;
  if (!qword_100038AA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10002188C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100002FCC;

  return sub_100020F64(a1, a2, a3);
}

unint64_t sub_100021998()
{
  v2 = qword_100038AB0;
  if (!qword_100038AB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021A2C()
{
  v2 = qword_100038AB8;
  if (!qword_100038AB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021AC0()
{
  v2 = qword_100038AC0;
  if (!qword_100038AC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021B54()
{
  v2 = qword_100038AC8;
  if (!qword_100038AC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021C00()
{
  v2 = qword_100038AD0;
  if (!qword_100038AD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021C94()
{
  v2 = qword_100038AD8;
  if (!qword_100038AD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021D28()
{
  v2 = qword_100038AE0;
  if (!qword_100038AE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021DD4()
{
  v2 = qword_100038AE8;
  if (!qword_100038AE8)
  {
    sub_100003C48(&qword_100038AF0, &qword_10002E228);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021E74()
{
  v2 = qword_100038AF8;
  if (!qword_100038AF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021F08()
{
  v2 = qword_100038B00;
  if (!qword_100038B00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021FB4()
{
  v2 = qword_100038B08;
  if (!qword_100038B08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100022048()
{
  v2 = qword_100038B10;
  if (!qword_100038B10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000220DC()
{
  v2 = qword_100038B18;
  if (!qword_100038B18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100022170()
{
  v2 = qword_100038B20;
  if (!qword_100038B20)
  {
    sub_100003C48(&qword_100038B28, &qword_10002E3C0);
    sub_100021D28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100022220()
{
  v2 = qword_100038B30;
  if (!qword_100038B30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000222F0(uint64_t a1, void *a2)
{
  v2[16] = a1;
  v2[14] = v2;
  v2[15] = 0;
  v2[15] = *a2;
  return _swift_task_switch(sub_100022334, 0);
}

uint64_t sub_100022334()
{
  *(v0 + 112) = v0;
  v8 = *sub_10001FF50();
  v8;
  if (v8)
  {
    sub_1000203F8();

    v5 = sub_100027268();

    v6 = [v8 objectForKey:v5];

    if (v6)
    {
      sub_1000272E8();
      sub_10000B5DC(v7 + 80, v7 + 48);
      swift_unknownObjectRelease();
    }

    else
    {
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
    }

    *(v7 + 16) = *(v7 + 48);
    *(v7 + 32) = *(v7 + 64);
  }

  else
  {
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
  }

  if (*(v7 + 40))
  {
    if (swift_dynamicCast())
    {
      v3 = *(v7 + 136) & 1;
    }

    else
    {
      v3 = 2;
    }

    v4 = v3;
  }

  else
  {
    sub_10000B500((v7 + 16));
    v4 = 2;
  }

  if (v4 == 2)
  {
    **(v7 + 128) = 0;
  }

  else
  {
    **(v7 + 128) = v4;
  }

  v1 = *(*(v7 + 112) + 8);

  return v1();
}

uint64_t sub_100022628(void *a1, char *a2)
{
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 24) = *a1;
  v3 = *a2;
  *(v2 + 33) = *a2 & 1;
  *(v2 + 32) = v3 & 1;
  return _swift_task_switch(sub_100022688, 0);
}

uint64_t sub_100022688()
{
  *(v0 + 16) = v0;
  v6 = *sub_10001FF50();
  v6;
  if (v6)
  {
    v3 = *(v5 + 33);
    sub_1000203F8();

    v4 = sub_100027268();

    [v6 setBool:v3 & 1 forKey:v4];
  }

  v1 = *(*(v5 + 16) + 8);

  return v1();
}

uint64_t sub_1000227EC()
{
  result = sub_100027278("com.apple.Preferences", 0x15uLL, 1);
  qword_100038EB0 = result;
  qword_100038EB8 = v1;
  return result;
}

uint64_t *sub_100022830()
{
  if (qword_1000381F0 != -1)
  {
    swift_once();
  }

  return &qword_100038EB0;
}

uint64_t sub_100022890()
{
  v1 = *sub_100022830();

  return v1;
}

uint64_t sub_1000228CC()
{
  if (qword_1000381F8 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100022940()
{
  if (qword_100038200 != -1)
  {
    swift_once();
  }

  return v1;
}

id sub_1000229B4()
{
  result = [objc_opt_self() em_userDefaults];
  qword_100038EC0 = result;
  return result;
}

uint64_t *sub_1000229F0()
{
  if (qword_100038208 != -1)
  {
    swift_once();
  }

  return &qword_100038EC0;
}

void *sub_100022A50()
{
  v1 = *sub_1000229F0();
  v1;
  return v1;
}