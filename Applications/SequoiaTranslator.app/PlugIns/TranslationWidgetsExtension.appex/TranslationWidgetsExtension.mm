uint64_t sub_100001798(uint64_t a1, char a2)
{
  v3[2] = v2;
  v6 = sub_100001D24(&qword_10001C5B8, &qword_100010050);
  v3[3] = v6;
  v3[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = sub_10000F358();
  v3[6] = v8;
  v9 = *(v8 - 8);
  v3[7] = v9;
  (*(v9 + 16))(v7, a1, v8);
  *(v7 + *(v6 + 48)) = a2;
  sub_10000F918();
  v3[8] = sub_10000F908();
  v11 = sub_10000F8F8();
  v3[9] = v11;
  v3[10] = v10;

  return _swift_task_switch(sub_1000018F0, v11, v10);
}

uint64_t sub_1000018F0()
{
  if (qword_10001C4C8 != -1)
  {
    swift_once();
  }

  v1 = sub_10000F6C8();
  sub_100001D6C(v1, qword_10001EF08);
  v2 = sub_10000F6A8();
  v3 = sub_10000F958();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Command received in launcher", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  v9 = *(v8 + 16);
  sub_100001DA4(v5, v6);
  v10 = *(v6 + *(v7 + 48));
  v14 = (v9 + *v9);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_100001AC8;
  v12 = v0[4];

  return v14(v12, v10);
}

uint64_t sub_100001AC8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 32);

  (*(v2 + 8))(v4, v3);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_100001C4C, v6, v5);
}

uint64_t sub_100001C4C()
{
  v1 = *(v0 + 40);

  sub_100001E14(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100001CC8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100001D24(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001D6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D24(&qword_10001C5B8, &qword_100010050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001E14(uint64_t a1)
{
  v2 = sub_100001D24(&qword_10001C5B8, &qword_100010050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100001E7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_100001EC0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100001F30()
{
  v0 = sub_100001D24(&qword_10001C6A8, &qword_1000101D8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_1000026F4();
  sub_10000F2E8();
  v4 = sub_10000F278();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_10000F2E8();
  v6 = sub_10000F278();
  v5(v3, v0);
  sub_10000F2E8();
  v7 = sub_10000F278();
  v5(v3, v0);
  sub_100001D24(&qword_10001C6B0, &unk_1000101E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100010100;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_10000F268();

  return v9;
}

uint64_t sub_100002148()
{
  v0 = sub_10000F2D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000027BC();
  sub_10000F258();

  sub_1000026F4();
  sub_10000F2C8();
  v4 = sub_10000F2B8();
  (*(v1 + 8))(v3, v0);
  sub_100001D24(&qword_10001C6A0, &qword_1000101D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100010110;
  *(v5 + 32) = v4;
  v6 = sub_10000F2A8();

  return v6;
}

uint64_t sub_1000022B8()
{
  v0 = sub_10000F298();
  v1 = sub_10000F298();
  v2 = sub_10000F298();
  sub_100001D24(&qword_10001C688, &qword_100010198);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100010100;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_10000F288();

  return v4;
}

uint64_t sub_10000238C()
{
  v0 = sub_10000F298();
  v1 = sub_10000F298();
  sub_100001D24(&qword_10001C688, &qword_100010198);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100010120;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_10000F288();

  return v3;
}

uint64_t sub_10000243C()
{
  v0 = sub_10000F318();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_10000310C();
  sub_1000026F4();
  sub_10000F328();
  v4 = sub_10000F308();
  (*(v1 + 8))(v3, v0);
  sub_100001D24(&qword_10001C690, &qword_1000101A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100010110;
  *(v5 + 32) = v4;
  v6 = sub_10000F2F8();

  return v6;
}

uint64_t sub_1000025A4()
{
  v0 = sub_10000F248();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000026F4();
  sub_10000F238();
  v4 = sub_10000F228();
  (*(v1 + 8))(v3, v0);
  sub_100001D24(&qword_10001C680, &qword_100010190);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100010110;
  *(v5 + 32) = v4;
  v6 = sub_10000F218();

  return v6;
}

unint64_t sub_1000026F4()
{
  result = qword_10001C678;
  if (!qword_10001C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C678);
  }

  return result;
}

void *sub_100002748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000F1D8();
  *a1 = v3;
  return result;
}

unint64_t sub_1000027BC()
{
  result = qword_10001C698;
  if (!qword_10001C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C698);
  }

  return result;
}

uint64_t sub_100002810()
{
  v0 = sub_10000F6C8();
  sub_100002890(v0, qword_10001EEF0);
  sub_100001D6C(v0, qword_10001EEF0);
  return sub_10000F6B8();
}

uint64_t *sub_100002890(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000028F4()
{
  v0 = sub_10000F6C8();
  sub_100002890(v0, qword_10001EF08);
  sub_100001D6C(v0, qword_10001EF08);
  return sub_10000F6B8();
}

unint64_t sub_100002978()
{
  result = qword_10001C6C8;
  if (!qword_10001C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C6C8);
  }

  return result;
}

unint64_t sub_1000029D0()
{
  result = qword_10001C6D0;
  if (!qword_10001C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C6D0);
  }

  return result;
}

uint64_t sub_100002A58()
{
  v0 = sub_10000F4A8();
  sub_100002890(v0, qword_10001EF20);
  sub_100001D6C(v0, qword_10001EF20);
  return sub_10000F488();
}

void *sub_100002ABC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000F1D8();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100002B30(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10000F1C8();
  return sub_100002BA4;
}

void sub_100002BA4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002BF8()
{
  result = qword_10001C6D8;
  if (!qword_10001C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C6D8);
  }

  return result;
}

uint64_t sub_100002C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C8();
  v5 = sub_100003670();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100002CB8()
{
  v0 = qword_10001C6B8;

  return v0;
}

unint64_t sub_100002CF8()
{
  result = qword_10001C6E0;
  if (!qword_10001C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C6E0);
  }

  return result;
}

unint64_t sub_100002D50()
{
  result = qword_10001C6E8;
  if (!qword_10001C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C6E8);
  }

  return result;
}

uint64_t sub_100002DF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C4D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000F4A8();
  v3 = sub_100001D6C(v2, qword_10001EF20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100002EBC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000035C8();
  v7 = sub_10000361C();
  v8 = sub_100003670();
  *v5 = v2;
  v5[1] = sub_100002F90;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100002F90()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100003098@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10000310C();
  *a2 = result;
  return result;
}

uint64_t sub_1000030C0(uint64_t a1)
{
  v2 = sub_1000026F4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000310C()
{
  v0 = sub_10000F408();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100001D24(&qword_10001C6F0, "d#");
  v3 = __chkstk_darwin(v2 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_100001D24(&qword_10001C6F8, &qword_1000110B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_10000F498();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000F588();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10000F848();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10000F4A8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21 = sub_100001D24(&qword_10001C700, "F#");
  sub_10000F838();
  sub_10000F548();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_10000F4B8();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26[0] = 3;
  v18 = sub_10000F1A8();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_100003574();
  return sub_10000F1F8();
}

unint64_t sub_100003574()
{
  result = qword_10001C708;
  if (!qword_10001C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C708);
  }

  return result;
}

unint64_t sub_1000035C8()
{
  result = qword_10001C710;
  if (!qword_10001C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C710);
  }

  return result;
}

unint64_t sub_10000361C()
{
  result = qword_10001C718;
  if (!qword_10001C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C718);
  }

  return result;
}

unint64_t sub_100003670()
{
  result = qword_10001C720;
  if (!qword_10001C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C720);
  }

  return result;
}

uint64_t sub_1000036E4(uint64_t a1)
{
  v2 = sub_100006B7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003720(uint64_t a1)
{
  v2 = sub_100006B7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003784(void *a1)
{
  v2 = sub_100001D24(&qword_10001C790, &qword_100010620);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100006B38(a1, a1[3]);
  sub_100006B7C();
  sub_10000FB28();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100003908(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_100001D24(&qword_10001C880, &qword_100010A18);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_100001D24(&qword_10001C888, &qword_100010A20);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_100001D24(&qword_10001C890, &qword_100010A28);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100006B38(a1, a1[3]);
  sub_100008904();
  sub_10000FB28();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_100008958();
    sub_10000FA68();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1000089AC();
    sub_10000FA68();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_100003BC4(void *a1, char a2)
{
  v4 = sub_100001D24(&qword_10001C7B8, &qword_100010630);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_100006B38(a1, a1[3]);
  sub_1000079A0();
  sub_10000FB28();
  v9[15] = a2 & 1;
  sub_100007A48();
  sub_10000FA78();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100003D10@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100003D4C(uint64_t a1)
{
  v2 = sub_1000089AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003D88(uint64_t a1)
{
  v2 = sub_1000089AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003E10()
{
  if (*v0)
  {
    return 0x436C6F72746E6F63;
  }

  else
  {
    return 0x75426E6F69746361;
  }
}

uint64_t sub_100003E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75426E6F69746361 && a2 == 0xEC0000006E6F7474;
  if (v6 || (sub_10000FA88() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x436C6F72746E6F63 && a2 == 0xED00007265746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10000FA88();

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

uint64_t sub_100003F54(uint64_t a1)
{
  v2 = sub_100008904();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003F90(uint64_t a1)
{
  v2 = sub_100008904();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003FCC(uint64_t a1)
{
  v2 = sub_100008958();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004008(uint64_t a1)
{
  v2 = sub_100008958();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100004044()
{
  v1 = *v0;
  sub_10000FAE8();
  sub_10000FAF8(v1);
  return sub_10000FB08();
}

Swift::Int sub_10000408C(uint64_t a1)
{
  v2 = *v1;
  sub_10000FAE8();
  sub_10000FAF8(v2);
  return sub_10000FB08();
}

uint64_t sub_1000040D0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000073F4(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

Swift::Int sub_10000411C()
{
  sub_10000FAE8();
  sub_10000FAF8(0);
  return sub_10000FB08();
}

Swift::Int sub_100004188(uint64_t a1)
{
  sub_10000FAE8();
  sub_10000FAF8(0);
  return sub_10000FB08();
}

uint64_t sub_1000041E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x724F656372756F73 && a2 == 0xEC0000006E696769)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10000FA88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100004274(uint64_t a1)
{
  v2 = sub_1000079A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000042B0(uint64_t a1)
{
  v2 = sub_1000079A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000042EC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100007830(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

id sub_100004338()
{
  result = [objc_allocWithZone(type metadata accessor for SpeechTranslationActivityManager()) init];
  qword_10001EF38 = result;
  return result;
}

void sub_1000043C0(char a1)
{
  v2 = v1;
  v4 = sub_10000F638();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001D24(&qword_10001C800, &qword_100010688);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_100001D24(&qword_10001C7F8, &qword_100010680);
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  sub_100004BB0(0);
  if (qword_10001C4C0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000F6C8();
  v46 = sub_100001D6C(v13, qword_10001EEF0);
  v14 = sub_10000F6A8();
  v15 = sub_10000F948();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Requesting begin activity", v16, 2u);
  }

  v17 = sub_10000F4E8();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_1000069DC();
  sub_100006A34();
  sub_100006A8C();
  sub_10000F668();
  sub_100001D24(&qword_10001C808, &qword_100010690);
  v18 = sub_10000F5F8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100010110;
  (*(v19 + 104))(v21 + v20, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v18);
  sub_10000F608();
  sub_10000F618();
  sub_10000F628();
  sub_100001D24(&qword_10001C810, &qword_100010698);
  LOBYTE(v47) = a1 & 1;
  v22 = sub_10000F5C8();
  v41 = v4;
  v23 = OBJC_IVAR____TtC27TranslationWidgetsExtension32SpeechTranslationActivityManager_currentActivity;
  *&v2[OBJC_IVAR____TtC27TranslationWidgetsExtension32SpeechTranslationActivityManager_currentActivity] = v22;

  v24 = v2;
  v25 = v2;
  v26 = sub_10000F6A8();
  v27 = sub_10000F948();
  v28 = os_log_type_enabled(v26, v27);
  v42 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v47 = v39;
    *v29 = 136446210;
    v40 = v23;
    if (!*&v25[v23])
    {
      goto LABEL_12;
    }

    v30 = v24;
    v31 = sub_10000F5A8();
    v33 = v32;

    v34 = v31;
    v24 = v30;
    v35 = sub_100006E4C(v34, v33, &v47);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "Requested an activity successfully [id: %{public}s]", v29, 0xCu);
    sub_100007A9C(v39);

    (*(v45 + 8))(v6, v41);
    (*(v43 + 8))(v12, v44);
    v23 = v40;
  }

  else
  {

    (*(v45 + 8))(v6, v41);
    (*(v43 + 8))(v12, v44);
  }

  if (*&v42[v23])
  {

    v36 = sub_10000F5A8();
    v38 = v37;

    sub_10000526C(v36, v38);

    return;
  }

  __break(1u);
LABEL_12:

  __break(1u);
}

void sub_100004BB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000F5E8();
  v54 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001D24(&qword_10001C7E8, &qword_100010678);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v10 = sub_10000F658();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  if (a1)
  {
    v53 = v4;
  }

  else
  {
    if (!*(v2 + OBJC_IVAR____TtC27TranslationWidgetsExtension32SpeechTranslationActivityManager_currentActivity))
    {
      return;
    }

    v53 = v4;
  }

  sub_10000F598();
  (*(v11 + 104))(v14, enum case for ActivityState.dismissed(_:), v10);
  sub_1000083F0();
  v17 = sub_10000F828();
  v18 = *(v11 + 8);
  v18(v14, v10);
  v18(v16, v10);
  if (v17)
  {
    if (qword_10001C4C0 != -1)
    {
      swift_once();
    }

    v19 = sub_10000F6C8();
    sub_100001D6C(v19, qword_10001EEF0);

    v20 = sub_10000F6A8();
    v21 = sub_10000F948();

    if (!os_log_type_enabled(v20, v21))
    {

      return;
    }

    v22 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = sub_10000F5A8();
    v25 = sub_100006E4C(v23, v24, &v55);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    sub_10000F598();
    v26 = sub_10000F888();
    v28 = sub_100006E4C(v26, v27, &v55);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Skipping end activity [id: %s activityState: %s] ", v22, 0x16u);
    swift_arrayDestroy();

    goto LABEL_25;
  }

  if (qword_10001C4C0 != -1)
  {
    swift_once();
  }

  v29 = sub_10000F6C8();
  sub_100001D6C(v29, qword_10001EEF0);

  v30 = sub_10000F6A8();
  v31 = sub_10000F948();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = v2;
    v33 = v32;
    v51 = swift_slowAlloc();
    v55 = v51;
    *v33 = 136315394;
    v34 = sub_10000F5A8();
    v36 = sub_100006E4C(v34, v35, &v55);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    sub_10000F598();
    v37 = sub_10000F888();
    v39 = sub_100006E4C(v37, v38, &v55);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Requesting end activity [id: %s activityState: %s]", v33, 0x16u);
    swift_arrayDestroy();

    v2 = v52;
  }

  v40 = sub_10000F5A8();
  sub_10000634C(v40, v41);

  v42 = sub_100001D24(&qword_10001C7F8, &qword_100010680);
  (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
  sub_10000F5D8();
  sub_10000F5B8();
  (*(v54 + 8))(v6, v53);
  sub_100008448(v9, &qword_10001C7E8, &qword_100010678);
  v43 = OBJC_IVAR____TtC27TranslationWidgetsExtension32SpeechTranslationActivityManager_currentActivity;
  if (!*(v2 + OBJC_IVAR____TtC27TranslationWidgetsExtension32SpeechTranslationActivityManager_currentActivity))
  {
    sub_10000F5A8();
    goto LABEL_21;
  }

  v44 = sub_10000F5A8();
  v46 = v45;

  v47 = sub_10000F5A8();
  if (!v46)
  {
LABEL_21:

    goto LABEL_25;
  }

  if (v44 == v47 && v46 == v48)
  {
  }

  else
  {
    v49 = sub_10000FA88();

    if ((v49 & 1) == 0)
    {
      return;
    }
  }

  *(v2 + v43) = 0;
LABEL_25:
}

void sub_10000526C(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v88 = sub_10000F658();
  v90 = *(v88 - 8);
  v8 = __chkstk_darwin(v88);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v79 - v10;
  v11 = OBJC_IVAR____TtC27TranslationWidgetsExtension32SpeechTranslationActivityManager_assertion;
  v12 = *(v2 + OBJC_IVAR____TtC27TranslationWidgetsExtension32SpeechTranslationActivityManager_assertion);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 sessionIdentifier];
    v15 = sub_10000F868();
    v17 = v16;

    if (v15 == a1 && v17 == a2)
    {

      if (!*(v5 + v11))
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    v19 = sub_10000FA88();

    if (v19)
    {

      if (!*(v5 + v11))
      {
        goto LABEL_20;
      }

LABEL_10:
      if (qword_10001C4C0 != -1)
      {
        swift_once();
      }

      v20 = sub_10000F6C8();
      sub_100001D6C(v20, qword_10001EEF0);
      v21 = sub_10000F6A8();
      v22 = sub_10000F948();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not taking assertion as it is non-nil", v23, 2u);
      }

      goto LABEL_45;
    }

    if (qword_10001C4C0 != -1)
    {
      swift_once();
    }

    v85 = v3;
    v24 = sub_10000F6C8();
    sub_100001D6C(v24, qword_10001EEF0);
    v25 = v13;

    v26 = sub_10000F6A8();
    v27 = sub_10000F948();

    v84 = v26;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock[0] = v83;
      *v28 = 136446466;
      v29 = [v25 sessionIdentifier];
      v30 = sub_10000F868();
      LODWORD(v82) = v27;
      v32 = v31;

      v33 = sub_100006E4C(v30, v32, aBlock);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_100006E4C(a1, a2, aBlock);
      v34 = v84;
      _os_log_impl(&_mh_execute_header, v84, v82, "Releasing assertion for other activity [id: %{public}s] in favour of new assertion for activity [id: %{public}s]", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v35 = [v25 sessionIdentifier];
    v36 = sub_10000F868();
    v38 = v37;

    sub_10000634C(v36, v38);

    v4 = v85;
    if (*(v5 + v11))
    {
      goto LABEL_10;
    }
  }

LABEL_20:
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = a1;
  v40[4] = a2;
  v41 = objc_allocWithZone(SNAProminentPresentationAssertion);

  v42 = sub_10000F858();
  v43 = sub_10000F858();
  aBlock[4] = sub_100007BC0;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006BD0;
  aBlock[3] = &unk_1000192C0;
  v44 = _Block_copy(aBlock);

  v45 = [v41 initWithExplanation:v42 sessionIdentifier:v43 invalidationHandler:v44];
  _Block_release(v44);

  if ([v45 state] == 1)
  {
    v46 = *(v5 + v11);
    *(v5 + v11) = v45;
    v47 = v45;

    if (qword_10001C4C0 != -1)
    {
      swift_once();
    }

    v48 = sub_10000F6C8();
    sub_100001D6C(v48, qword_10001EEF0);

    v21 = v47;
    v49 = sub_10000F6A8();
    v50 = sub_10000F978();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136446466;
      *(v51 + 4) = sub_100006E4C(a1, a2, aBlock);
      *(v51 + 12) = 2050;
      *(v51 + 14) = [v21 state];

      _os_log_impl(&_mh_execute_header, v49, v50, "Assertion acquired [id: %{public}s, assertion state %{public}lu]", v51, 0x16u);
      sub_100007A9C(v52);
    }

    else
    {
    }

LABEL_45:

    return;
  }

  v53 = *(v5 + OBJC_IVAR____TtC27TranslationWidgetsExtension32SpeechTranslationActivityManager_currentActivity);
  if (!v53)
  {
LABEL_39:
    if (qword_10001C4C0 != -1)
    {
      swift_once();
    }

    v73 = sub_10000F6C8();
    sub_100001D6C(v73, qword_10001EEF0);

    v21 = v45;
    v74 = sub_10000F6A8();
    v75 = sub_10000F968();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v76 = 136446466;
      *(v76 + 4) = sub_100006E4C(a1, a2, aBlock);
      *(v76 + 12) = 2050;
      *(v76 + 14) = [v21 state];

      _os_log_impl(&_mh_execute_header, v74, v75, "Acquire assertion FAIL [id:%{public}s, assertion state %{public}lu]", v76, 0x16u);
      sub_100007A9C(v77);
    }

    else
    {
    }

    sub_100007BE4();
    swift_allocError();
    *v78 = 0;
    v78[1] = 0;
    v78[2] = 1;
    swift_willThrow();
    goto LABEL_45;
  }

  v82 = OBJC_IVAR____TtC27TranslationWidgetsExtension32SpeechTranslationActivityManager_currentActivity;
  v83 = v5;
  v85 = v4;

  v54 = sub_10000F5A8();
  v81 = a1;
  if (v54 == a1 && v55 == a2)
  {
  }

  else
  {
    v56 = sub_10000FA88();

    if ((v56 & 1) == 0)
    {
LABEL_38:

      a1 = v81;
      goto LABEL_39;
    }
  }

  v57 = v86;
  sub_10000F598();
  v84 = v53;
  v58 = v90;
  v59 = v87;
  v60 = v88;
  v80 = *(v90 + 104);
  v80(v87, enum case for ActivityState.dismissed(_:), v88);
  v61 = sub_10000F648();
  v62 = *(v58 + 8);
  v62(v59, v60);
  v90 = v58 + 8;
  v62(v57, v60);
  if ((v61 & 1) == 0)
  {
    v63 = v86;
    sub_10000F598();
    v64 = v87;
    v65 = v88;
    v80(v87, enum case for ActivityState.ended(_:), v88);
    v66 = sub_10000F648();
    v62(v64, v65);
    v62(v63, v65);
    if ((v66 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (qword_10001C4C0 != -1)
  {
    swift_once();
  }

  v67 = sub_10000F6C8();
  sub_100001D6C(v67, qword_10001EEF0);
  v68 = sub_10000F6A8();
  v69 = sub_10000F978();
  v70 = os_log_type_enabled(v68, v69);
  v71 = v83;
  if (v70)
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "Assertion acquisition failed due to activity having already ended", v72, 2u);
  }

  *(v71 + v82) = 0;
}

uint64_t sub_100005D18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001D24(&qword_10001C7D8, &qword_100010640);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_10000F938();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_10000F918();

  v15 = a1;
  swift_errorRetain();
  v16 = sub_10000F908();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v13;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = v15;
  v17[8] = a2;

  sub_10000605C(0, 0, v11, &unk_100010650, v17);
}

uint64_t sub_100005ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  sub_10000F918();
  v8[10] = sub_10000F908();
  v10 = sub_10000F8F8();

  return _swift_task_switch(sub_100005F78, v10, v9);
}

uint64_t sub_100005F78()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100008078(*(v0 + 48), *(v0 + 56), [*(v0 + 64) state], objc_msgSend(*(v0 + 64), "invalidationReason"), 0, *(v0 + 72));
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001D24(&qword_10001C7D8, &qword_100010640);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100007E60(a3, v25 - v10);
  v12 = sub_10000F938();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008448(v11, &qword_10001C7D8, &qword_100010640);
  }

  else
  {
    sub_10000F928();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000F8F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000F898() + 32;
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

      sub_100008448(a3, &qword_10001C7D8, &qword_100010640);

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

  sub_100008448(a3, &qword_10001C7D8, &qword_100010640);
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

void sub_10000634C(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC27TranslationWidgetsExtension32SpeechTranslationActivityManager_assertion;
  v6 = *(v2 + OBJC_IVAR____TtC27TranslationWidgetsExtension32SpeechTranslationActivityManager_assertion);
  if (v6)
  {
    oslog = v6;
    [oslog invalidate];
    v7 = *(v2 + v5);
    *(v2 + v5) = 0;

    if (qword_10001C4C0 != -1)
    {
      swift_once();
    }

    v8 = sub_10000F6C8();
    sub_100001D6C(v8, qword_10001EEF0);

    v9 = sub_10000F6A8();
    v10 = sub_10000F978();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_100006E4C(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "Assertion Released [id: %{public}s]", v11, 0xCu);
      sub_100007A9C(v12);

LABEL_10:
      return;
    }
  }

  else
  {
    if (qword_10001C4C0 != -1)
    {
      swift_once();
    }

    v13 = sub_10000F6C8();
    sub_100001D6C(v13, qword_10001EEF0);

    oslog = sub_10000F6A8();
    v14 = sub_10000F948();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_100006E4C(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, oslog, v14, "Not releasing assertion for session [id: %{public}s] since assertion is nil", v15, 0xCu);
      sub_100007A9C(v16);

      goto LABEL_10;
    }
  }
}

unint64_t sub_100006608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return 0xD00000000000001BLL;
  }

  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 != 4)
      {
        v5 = "the assertion timed out";
        v6 = 0xD000000000000018;
        goto LABEL_29;
      }

      v7 = "the server disconnected from XPC";
    }

    else
    {
      if (a2 == 6)
      {
        v5 = "quest was denied";
        v6 = 0xD000000000000017;
        goto LABEL_29;
      }

      if (a2 != 7)
      {
        if (a2 == 8)
        {
          v5 = "the assertion was not acquired";
          v6 = 0xD00000000000001ALL;
          goto LABEL_29;
        }

LABEL_28:
        v5 = "f keys found, expected one.";
        v6 = 0xD000000000000014;
        goto LABEL_29;
      }

      v7 = "the assertion request was denied";
    }

LABEL_27:
    v5 = (v7 - 32);
    v6 = 0xD000000000000020;
    goto LABEL_29;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      if (a1)
      {
        v6 = 0xD000000000000037;
      }

      else
      {
        v6 = 0xD00000000000001ELL;
      }

      if (a1)
      {
        v5 = "validated because ";
      }

      else
      {
        v5 = "ion was not invalidated";
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      goto LABEL_28;
    }

    v7 = "a session was begun successfully";
    goto LABEL_27;
  }

  if (a2 == 2)
  {
    v5 = "ted an invalidation";
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = "nnected from XPC";
    v6 = 0xD000000000000023;
  }

LABEL_29:
  object = 0xE000000000000000;
  sub_10000F9B8(47);

  v10._object = (v5 | 0x8000000000000000);
  v10._countAndFlagsBits = v6;
  sub_10000F8B8(v10);

  v11._countAndFlagsBits = 0x3A726F727245202ELL;
  v11._object = 0xE900000000000020;
  sub_10000F8B8(v11);
  if (a3)
  {
    swift_getErrorValue();
    v9._countAndFlagsBits = sub_10000FA98();
    object = v9._object;
  }

  else
  {
    v9._countAndFlagsBits = 0;
  }

  v9._object = object;
  sub_10000F8B8(v9);

  return 0xD000000000000022;
}

id sub_100006864()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechTranslationActivityManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000692C()
{
  result = qword_10001C760;
  if (!qword_10001C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C760);
  }

  return result;
}

unint64_t sub_100006984()
{
  result = qword_10001C768;
  if (!qword_10001C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C768);
  }

  return result;
}

unint64_t sub_1000069DC()
{
  result = qword_10001C770;
  if (!qword_10001C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C770);
  }

  return result;
}

unint64_t sub_100006A34()
{
  result = qword_10001C778;
  if (!qword_10001C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C778);
  }

  return result;
}

unint64_t sub_100006A8C()
{
  result = qword_10001C780;
  if (!qword_10001C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C780);
  }

  return result;
}

unint64_t sub_100006AE4()
{
  result = qword_10001C788;
  if (!qword_10001C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C788);
  }

  return result;
}

void *sub_100006B38(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006B7C()
{
  result = qword_10001C798;
  if (!qword_10001C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C798);
  }

  return result;
}

void sub_100006BD0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_100006C5C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100006D54;

  return v6(a1);
}

uint64_t sub_100006D54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100006E4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006F18(v11, 0, 0, 1, a1, a2);
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
    sub_100007AE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007A9C(v11);
  return v7;
}

unint64_t sub_100006F18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100007024(a5, a6);
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
    result = sub_10000F9E8();
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

char *sub_100007024(uint64_t a1, unint64_t a2)
{
  v3 = sub_100007070(a1, a2);
  sub_1000071A0(&off_1000190B0);
  return v3;
}

char *sub_100007070(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000728C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000F9E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000F8C8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000728C(v10, 0);
        result = sub_10000F9A8();
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

uint64_t sub_1000071A0(uint64_t result)
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

  result = sub_100007300(result, v11, 1, v3);
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

void *sub_10000728C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100001D24(&qword_10001C7C8, &qword_100010638);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007300(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001D24(&qword_10001C7C8, &qword_100010638);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_1000073F4(void *a1)
{
  v24 = sub_100001D24(&qword_10001C848, &qword_1000109F8);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_100001D24(&qword_10001C850, &qword_100010A00);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_100001D24(&qword_10001C858, &qword_100010A08);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_100006B38(a1, a1[3]);
  sub_100008904();
  v10 = v26;
  sub_10000FB18();
  if (v10)
  {
    return sub_100007A9C(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_10000FA58();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_10000F9D8();
    swift_allocError();
    v18 = v17;
    sub_100001D24(&qword_10001C868, &qword_100010A10);
    *v18 = &type metadata for SpeechTranslationActivityAttributes.LiveActivitySourceOrigin;
    sub_10000FA38();
    sub_10000F9C8();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100007A9C(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_100008958();
    sub_10000FA28();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_1000089AC();
    sub_10000FA28();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_100007A9C(v26);
  return v27;
}

void *sub_100007830(void *a1)
{
  v3 = sub_100001D24(&qword_10001C7A0, &qword_100010628);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_100006B38(a1, a1[3]);
  sub_1000079A0();
  sub_10000FB18();
  if (v1)
  {
    sub_100007A9C(a1);
  }

  else
  {
    sub_1000079F4();
    sub_10000FA48();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100007A9C(a1);
  }

  return v7;
}

unint64_t sub_1000079A0()
{
  result = qword_10001C7A8;
  if (!qword_10001C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7A8);
  }

  return result;
}

unint64_t sub_1000079F4()
{
  result = qword_10001C7B0;
  if (!qword_10001C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7B0);
  }

  return result;
}

unint64_t sub_100007A48()
{
  result = qword_10001C7C0;
  if (!qword_10001C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7C0);
  }

  return result;
}

uint64_t sub_100007A9C(void *a1)
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

uint64_t sub_100007AE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007B48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007B80()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100007BE4()
{
  result = qword_10001C7D0;
  if (!qword_10001C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7D0);
  }

  return result;
}

uint64_t sub_100007C38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100007C90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100007D6C;

  return sub_100005ED8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100007D6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D24(&qword_10001C7D8, &qword_100010640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007ED0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007F08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008DFC;

  return sub_100006C5C(a1, v4);
}

uint64_t sub_100007FC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007D6C;

  return sub_100006C5C(a1, v4);
}

void sub_100008078(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (qword_10001C4C0 != -1)
  {
    swift_once();
  }

  v12 = sub_10000F6C8();
  sub_100001D6C(v12, qword_10001EEF0);

  v13 = sub_10000F6A8();
  v14 = sub_10000F978();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = a1;
    v18 = a6;
    v19 = a5;
    v20 = a4;
    v21 = v16;
    v30 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_100006E4C(v17, a2, &v30);
    _os_log_impl(&_mh_execute_header, v13, v14, "Assertion invalidated [id: %{public}s]", v15, 0xCu);
    sub_100007A9C(v21);
    a4 = v20;
    a5 = v19;
    a6 = v18;
  }

  if (a3 == 2)
  {
    v22 = 0;
  }

  else
  {
    if (a3 == 1)
    {
      return;
    }

    if (a3)
    {
      sub_10000F9F8();
      __break(1u);
      return;
    }

    v22 = 7;
  }

  if (a5)
  {
    v23 = v22;
  }

  else
  {
    v23 = a4;
  }

  sub_100007BE4();
  swift_allocError();
  *v24 = a3;
  v24[1] = v23;
  v24[2] = a6;
  swift_willThrow();
  swift_errorRetain();
  swift_errorRetain();
  oslog = sub_10000F6A8();
  v25 = sub_10000F978();

  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, oslog, v25, "Assertion invalidation reason: %@", v26, 0xCu);
    sub_100008448(v27, &qword_10001C7E0, &qword_100010670);
  }

  else
  {
  }
}

unint64_t sub_1000083F0()
{
  result = qword_10001C7F0;
  if (!qword_10001C7F0)
  {
    sub_10000F658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7F0);
  }

  return result;
}

uint64_t sub_100008448(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001D24(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000084A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1000084CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000084E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000853C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_10000859C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpeechTranslationActivityAttributes.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SpeechTranslationActivityAttributes.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000086F8()
{
  result = qword_10001C818;
  if (!qword_10001C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C818);
  }

  return result;
}

unint64_t sub_100008750()
{
  result = qword_10001C820;
  if (!qword_10001C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C820);
  }

  return result;
}

unint64_t sub_1000087A8()
{
  result = qword_10001C828;
  if (!qword_10001C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C828);
  }

  return result;
}

unint64_t sub_100008800()
{
  result = qword_10001C830;
  if (!qword_10001C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C830);
  }

  return result;
}

unint64_t sub_100008858()
{
  result = qword_10001C838;
  if (!qword_10001C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C838);
  }

  return result;
}

unint64_t sub_1000088B0()
{
  result = qword_10001C840;
  if (!qword_10001C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C840);
  }

  return result;
}

unint64_t sub_100008904()
{
  result = qword_10001C860;
  if (!qword_10001C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C860);
  }

  return result;
}

unint64_t sub_100008958()
{
  result = qword_10001C870;
  if (!qword_10001C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C870);
  }

  return result;
}

unint64_t sub_1000089AC()
{
  result = qword_10001C878;
  if (!qword_10001C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C878);
  }

  return result;
}

uint64_t sub_100008A00(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100008A90(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100008B88()
{
  result = qword_10001C898;
  if (!qword_10001C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C898);
  }

  return result;
}

unint64_t sub_100008BE0()
{
  result = qword_10001C8A0;
  if (!qword_10001C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8A0);
  }

  return result;
}

unint64_t sub_100008C38()
{
  result = qword_10001C8A8;
  if (!qword_10001C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8A8);
  }

  return result;
}

unint64_t sub_100008C90()
{
  result = qword_10001C8B0;
  if (!qword_10001C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8B0);
  }

  return result;
}

unint64_t sub_100008CE8()
{
  result = qword_10001C8B8;
  if (!qword_10001C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8B8);
  }

  return result;
}

unint64_t sub_100008D40()
{
  result = qword_10001C8C0;
  if (!qword_10001C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8C0);
  }

  return result;
}

unint64_t sub_100008D98()
{
  result = qword_10001C8C8;
  if (!qword_10001C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8C8);
  }

  return result;
}

unint64_t sub_100008E20()
{
  result = qword_10001C8D8;
  if (!qword_10001C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8D8);
  }

  return result;
}

unint64_t sub_100008E78()
{
  result = qword_10001C8E0;
  if (!qword_10001C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8E0);
  }

  return result;
}

unint64_t sub_100008F00()
{
  result = qword_10001C8E8;
  if (!qword_10001C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8E8);
  }

  return result;
}

uint64_t sub_100008F54()
{
  v0 = sub_10000F4A8();
  sub_100002890(v0, qword_10001EF40);
  sub_100001D6C(v0, qword_10001EF40);
  return sub_10000F488();
}

uint64_t sub_100008FB8()
{
  v0 = sub_100001D24(&qword_10001CA48, &qword_100011100);
  sub_100002890(v0, qword_10001EF58);
  v1 = sub_100001D6C(v0, qword_10001EF58);
  sub_10000F338();
  v2 = sub_10000F348();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100009078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_100001D24(&qword_10001C7D8, &qword_100010640);
  v4[14] = swift_task_alloc();
  v4[15] = sub_100001D24(&qword_10001CA30, &qword_1000110E0);
  v4[16] = swift_task_alloc();
  sub_100001D24(&qword_10001CA38, &qword_1000110E8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v5 = sub_10000F378();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v6 = sub_10000F358();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_100009280, 0, 0);
}

uint64_t sub_100009280()
{
  sub_10000F0C8();
  v0[29] = v0[8];
  v0[30] = sub_10000F918();
  v0[31] = sub_10000F908();
  v2 = sub_10000F8F8();
  v0[32] = v2;
  v0[33] = v1;

  return _swift_task_switch(sub_10000932C, v2, v1);
}

uint64_t sub_10000932C()
{
  v3 = (*(*(v0 + 232) + 16) + **(*(v0 + 232) + 16));
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_10000941C;

  return v3(5);
}

uint64_t sub_10000941C(char a1)
{
  v2 = *v1;
  *(*v1 + 304) = a1;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);

  return _swift_task_switch(sub_100009544, v4, v3);
}

uint64_t sub_100009544()
{

  return _swift_task_switch(sub_1000095B8, 0, 0);
}

uint64_t sub_1000095B8()
{
  sub_10000F698();
  v1 = sub_10000F688();
  v2 = sub_10000F678();

  if (qword_10001C4C0 != -1)
  {
    swift_once();
  }

  v3 = sub_10000F6C8();
  sub_100001D6C(v3, qword_10001EEF0);
  v4 = sub_10000F6A8();
  v5 = sub_10000F978();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 304);
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = v2 & 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "appleIntelligenceOptedIn %{BOOL}d didGetAirPodsConnected %{BOOL}d.", v7, 0xEu);
  }

  v8 = *(v0 + 304);
  v9 = *(v0 + 176);

  v10 = (v9 + 8);
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v13 = *(v0 + 168);
  if (v8 & v2)
  {
    v14 = *(v0 + 192);
    v15 = *(v0 + 160);
    v16 = *(v0 + 104);
    *(v0 + 40) = *(v0 + 88);
    *(v0 + 56) = v16;
    sub_100008F00();
    sub_10000F158();
    sub_10000F368();
    (*v10)(v14, v13);
    v17 = *(v12 + 48);
    v18 = v17(v15, 1, v11);
    v19 = *(v0 + 224);
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 160);
    if (v18 == 1)
    {
      (*(v20 + 104))(v19, enum case for IntentSystemContext.Source.app(_:), *(v0 + 200));
      if (v17(v22, 1, v21) != 1)
      {
        sub_100008448(*(v0 + 160), &qword_10001CA38, &qword_1000110E8);
      }
    }

    else
    {
      (*(v20 + 32))(v19, *(v0 + 160), *(v0 + 200));
    }

    sub_10000F0C8();
    *(v0 + 280) = *(v0 + 72);
    v33 = swift_task_alloc();
    *(v0 + 288) = v33;
    *v33 = v0;
    v33[1] = sub_100009D18;
    v34 = *(v0 + 224);

    return sub_100001798(v34, 0);
  }

  v23 = *(v0 + 184);
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  v26 = *(v0 + 128);
  v54 = *(v0 + 120);
  v27 = *(v0 + 104);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v27;
  sub_100008F00();
  sub_10000F158();
  sub_10000F368();
  (*v10)(v23, v13);
  (*(v12 + 104))(v25, enum case for IntentSystemContext.Source.actionButton(_:), v11);
  (*(v12 + 56))(v25, 0, 1, v11);
  v28 = *(v54 + 48);
  sub_10000C0F8(v24, v26, &qword_10001CA38, &qword_1000110E8);
  sub_10000C0F8(v25, v26 + v28, &qword_10001CA38, &qword_1000110E8);
  v29 = *(v12 + 48);
  v30 = v29(v26, 1, v11);
  v31 = *(v0 + 200);
  if (v30 == 1)
  {
    v32 = *(v0 + 152);
    sub_100008448(*(v0 + 144), &qword_10001CA38, &qword_1000110E8);
    sub_100008448(v32, &qword_10001CA38, &qword_1000110E8);
    if (v29(v26 + v28, 1, v31) == 1)
    {
      sub_100008448(*(v0 + 128), &qword_10001CA38, &qword_1000110E8);
LABEL_25:
      *(v0 + 296) = sub_10000F908();
      v53 = sub_10000F8F8();

      return _swift_task_switch(sub_100009F38, v53, v52);
    }

    goto LABEL_18;
  }

  sub_10000C0F8(*(v0 + 128), *(v0 + 136), &qword_10001CA38, &qword_1000110E8);
  if (v29(v26 + v28, 1, v31) == 1)
  {
    v37 = *(v0 + 200);
    v36 = *(v0 + 208);
    v38 = *(v0 + 152);
    v39 = *(v0 + 136);
    sub_100008448(*(v0 + 144), &qword_10001CA38, &qword_1000110E8);
    sub_100008448(v38, &qword_10001CA38, &qword_1000110E8);
    (*(v36 + 8))(v39, v37);
LABEL_18:
    sub_100008448(*(v0 + 128), &qword_10001CA30, &qword_1000110E0);
    goto LABEL_19;
  }

  v44 = *(v0 + 208);
  v45 = *(v0 + 216);
  v46 = *(v0 + 200);
  v48 = *(v0 + 144);
  v47 = *(v0 + 152);
  v49 = *(v0 + 136);
  v55 = *(v0 + 128);
  (*(v44 + 32))(v45, v26 + v28, v46);
  sub_10000C0A0();
  v50 = sub_10000F828();
  v51 = *(v44 + 8);
  v51(v45, v46);
  sub_100008448(v48, &qword_10001CA38, &qword_1000110E8);
  sub_100008448(v47, &qword_10001CA38, &qword_1000110E8);
  v51(v49, v46);
  sub_100008448(v55, &qword_10001CA38, &qword_1000110E8);
  if (v50)
  {
    goto LABEL_25;
  }

LABEL_19:
  v40 = sub_10000F6A8();
  v41 = sub_10000F948();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "No DynamicIsland support. Launching the Translate App.", v42, 2u);
  }

  sub_10000F1B8();

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_100009D18()
{

  return _swift_task_switch(sub_100009E30, 0, 0);
}

uint64_t sub_100009E30()
{
  (*(v0[26] + 8))(v0[28], v0[25]);
  sub_10000F1B8();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100009F38()
{

  return _swift_task_switch(sub_100009FA0, 0, 0);
}

uint64_t sub_100009FA0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = sub_10000F938();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);

  v6 = sub_10000F908();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;
  sub_10000605C(0, 0, v1, &unk_1000110F8, v7);

  sub_10000F1B8();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000A150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_10000F918();
  *(v4 + 24) = sub_10000F908();
  v6 = sub_10000F8F8();

  return _swift_task_switch(sub_10000A1E8, v6, v5);
}

uint64_t sub_10000A1E8()
{

  if (qword_10001C4C0 != -1)
  {
    swift_once();
  }

  v1 = sub_10000F6C8();
  sub_100001D6C(v1, qword_10001EEF0);
  v2 = sub_10000F6A8();
  v3 = sub_10000F978();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Launching Activity from intent.perform()", v4, 2u);
  }

  sub_10000F1D8();
  sub_10000F1D8();
  if (qword_10001C4D8 != -1)
  {
    swift_once();
  }

  sub_10000F1D8();
  sub_1000043C0(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000A38C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C4E8 != -1)
  {
    swift_once();
  }

  v2 = sub_100001D24(&qword_10001CA48, &qword_100011100);
  v3 = sub_100001D6C(v2, qword_10001EF58);
  return sub_10000C0F8(v3, a1, &qword_10001CA48, &qword_100011100);
}

uint64_t sub_10000A41C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007D6C;

  return sub_100009078(a1, v4, v5, v6);
}

uint64_t sub_10000A4D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000AC3C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_10000A500()
{
  result = qword_10001C8F0;
  if (!qword_10001C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8F0);
  }

  return result;
}

unint64_t sub_10000A558()
{
  result = qword_10001C8F8;
  if (!qword_10001C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8F8);
  }

  return result;
}

void (*sub_10000A5AC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10000F1C8();
  return sub_100002BA4;
}

unint64_t sub_10000A644()
{
  result = qword_10001C900;
  if (!qword_10001C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C900);
  }

  return result;
}

unint64_t sub_10000A69C()
{
  result = qword_10001C908;
  if (!qword_10001C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C908);
  }

  return result;
}

unint64_t sub_10000A6F4()
{
  result = qword_10001C910;
  if (!qword_10001C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C910);
  }

  return result;
}

uint64_t sub_10000A7EC()
{
  v1 = *(v0 + 16);
  *v1 = sub_10000BE04() & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000A858()
{
  v0 = sub_10000F4A8();
  sub_100002890(v0, qword_10001EF70);
  sub_100001D6C(v0, qword_10001EF70);
  return sub_10000F488();
}

uint64_t sub_10000A8E0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_10000F4A8();
  v7 = sub_100001D6C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_10000A980(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000ABE8();
  *v4 = v2;
  v4[1] = sub_100002F90;

  return ControlConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_10000AA2C(uint64_t a1)
{
  v2 = sub_10000A644();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000AA9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10000AAE4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10000AB38()
{
  result = qword_10001C9F0;
  if (!qword_10001C9F0)
  {
    sub_10000AB9C(&qword_10001C9F8, &unk_100011040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9F0);
  }

  return result;
}

uint64_t sub_10000AB9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000ABE8()
{
  result = qword_10001CA00;
  if (!qword_10001CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA00);
  }

  return result;
}

uint64_t sub_10000AC3C()
{
  v0 = sub_10000F408();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001D24(&qword_10001C6F0, "d#");
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_100001D24(&qword_10001CA10, &qword_1000110A8);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_100001D24(&qword_10001C6F8, &qword_1000110B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_10000F4A8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_100001D24(&qword_10001CA18, &qword_1000110B8);
  sub_10000F488();
  (*(v14 + 56))(v12, 1, 1, v13);
  LOBYTE(v22[0]) = 2;
  v15 = sub_10000F8E8();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = sub_10000F1A8();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v0);
  v17 = sub_10000F208();
  sub_100001D24(&qword_10001CA20, &qword_1000110C0);
  v20 = 0xD000000000000023;
  v21 = 0x8000000100011CE0;
  sub_10000F998();
  sub_10000F118();
  sub_10000F108();
  sub_10000F0D8();
  sub_100001D24(&qword_10001CA28, &qword_1000110C8);
  v20 = 0xD00000000000002DLL;
  v21 = 0x8000000100011D10;
  sub_10000F998();
  sub_10000F108();
  sub_10000F0D8();
  return v17;
}

void *sub_10000B068()
{
  v0 = sub_100001D24(&qword_10001CA08, &unk_100011098);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = qword_10001C8D0;
  if (qword_10001C8D0)
  {
    goto LABEL_2;
  }

  v5 = [objc_opt_self() defaultManager];
  v6 = sub_10000F858();
  v7 = [v5 containerURLForSecurityApplicationGroupIdentifier:v6];

  if (!v7)
  {
    v13 = sub_10000F4D8();
    (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
    sub_100008448(v2, &qword_10001CA08, &unk_100011098);
    if (qword_10001C4C0 != -1)
    {
      swift_once();
    }

    v14 = sub_10000F6C8();
    sub_100001D6C(v14, qword_10001EEF0);
    v15 = sub_10000F6A8();
    v16 = sub_10000F968();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_15;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Failed to obtain application group container directory to load translation group defaults";
    goto LABEL_14;
  }

  sub_10000F4C8();

  v8 = sub_10000F4D8();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  sub_100008448(v2, &qword_10001CA08, &unk_100011098);
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = sub_10000F858();
  v11 = [v9 initWithSuiteName:v10];

  if (!v11)
  {
    if (qword_10001C4C0 != -1)
    {
      swift_once();
    }

    v19 = sub_10000F6C8();
    sub_100001D6C(v19, qword_10001EEF0);
    v15 = sub_10000F6A8();
    v16 = sub_10000F968();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_15;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Failed to load translation group defaults";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);

LABEL_15:

    return 0;
  }

  v12 = qword_10001C8D0;
  qword_10001C8D0 = v11;

  v3 = qword_10001C8D0;
LABEL_2:
  v4 = v3;
  return v3;
}

uint64_t sub_10000B3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v3 = sub_10000F4A8();
  __chkstk_darwin(v3 - 8);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000F568();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  v11 = sub_100001D24(&qword_10001CA50, &qword_100011108);
  v12 = __chkstk_darwin(v11 - 8);
  v53 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v47 - v14;
  v16 = sub_10000F588();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v55 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;

  sub_10000F4F8();
  sub_10000F578();
  sub_10000F558();
  v22 = *(v6 + 8);
  v56 = v5;
  v54 = v6 + 8;
  v22(v10, v5);
  v23 = sub_10000F528();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v15, 1, v23) != 1)
  {
    v48 = v22;
    v49 = v17;
    v57 = v21;
    v50 = v16;
    v27 = sub_10000F518();
    v29 = v28;
    v30 = *(v24 + 8);
    v30(v15, v23);
    v61._countAndFlagsBits = v27;
    v61._object = v29;
    v26 = sub_10000F538(v61);
    v32 = v31;

    if (v32)
    {
      v59 = v26;
      v60 = v32;
      sub_10000C160();
      v26 = sub_10000F988();
    }

    v33 = v52;
    v34 = v53;
    sub_10000F578();
    sub_10000F558();
    v48(v33, v56);
    if (v25(v34, 1, v23) == 1)
    {
      sub_100008448(v34, &qword_10001CA50, &qword_100011108);
      v35 = 0;
    }

    else
    {
      sub_10000F518();
      v30(v34, v23);
      v62._countAndFlagsBits = 2975866;
      v62._object = 0xE300000000000000;
      v35 = sub_10000F8D8(v62);
    }

    v37 = v49;
    v36 = v50;
    v38 = v55;
    sub_10000F548();
    v39 = sub_10000F508();
    v41 = v40;
    v42 = *(v37 + 8);
    v42(v38, v36);
    if (v39 == sub_10000F508() && v41 == v43)
    {

      v44 = v57;
      if (!v35)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v45 = sub_10000FA88();

      v44 = v57;
      if ((v45 & v35 & 1) == 0)
      {
LABEL_14:
        v42(v44, v36);
        return v26;
      }
    }

    sub_10000F488();
    v26 = sub_10000F878();
    goto LABEL_14;
  }

  sub_100008448(v15, &qword_10001CA50, &qword_100011108);
  (*(v17 + 8))(v21, v16);
  return 0;
}

uint64_t sub_10000B94C()
{
  v0 = 0x53455F7365;
  v1 = sub_10000F588();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000B068();
  if (!v5)
  {
    return v0;
  }

  v6 = v5;
  v43 = v4;
  v7 = sub_10000F858();
  v8 = [v6 BOOLForKey:v7];

  v9 = sub_10000F858();
  v10 = [v6 stringForKey:v9];

  if (v10)
  {
    v42 = sub_10000F868();
    v12 = v11;
  }

  else
  {
    v42 = 0;
    v12 = 0;
  }

  v13 = sub_10000F858();
  v14 = [v6 stringForKey:v13];

  v44 = v6;
  if (v14)
  {
    v15 = sub_10000F868();
    v17 = v16;

    if (v12)
    {
      v18 = v8;
    }

    else
    {
      v18 = 0;
    }

    if ((v18 & 1) == 0)
    {
      v41 = v12 != 0;
      if (!v17)
      {
        v21 = 0xE500000000000000;
        goto LABEL_22;
      }

      v19 = v17;
      v0 = v15;
      goto LABEL_19;
    }
  }

  else
  {
    v17 = 0;
    if (v12)
    {
      v20 = v8;
    }

    else
    {
      v20 = 0;
    }

    if (v20 != 1)
    {
      v41 = v12 != 0;
      v21 = 0xE500000000000000;
      v15 = 0;
      goto LABEL_22;
    }

    v15 = 0;
  }

  v19 = v17;
  v41 = 1;
  v17 = v12;
  v0 = v42;
LABEL_19:
  v21 = v17;

  v17 = v19;
LABEL_22:
  v22 = v8;
  if (qword_10001C4C0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000F6C8();
  sub_100001D6C(v23, qword_10001EEF0);

  v24 = sub_10000F6A8();
  v25 = sub_10000F948();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40 = v2;
    v27 = v26;
    v28 = swift_slowAlloc();
    v39 = v15;
    v45 = v28;
    *v27 = 67109890;
    *(v27 + 4) = v22;
    *(v27 + 8) = 2080;
    if (v41)
    {
      v29 = v42;
    }

    else
    {
      v29 = 7104878;
    }

    if (!v41)
    {
      v12 = 0xE300000000000000;
    }

    v30 = sub_100006E4C(v29, v12, &v45);

    *(v27 + 10) = v30;
    *(v27 + 18) = 2080;
    if (v17)
    {
      v31 = v39;
    }

    else
    {
      v31 = 7104878;
    }

    if (v17)
    {
      v32 = v17;
    }

    else
    {
      v32 = 0xE300000000000000;
    }

    v33 = sub_100006E4C(v31, v32, &v45);

    *(v27 + 20) = v33;
    *(v27 + 28) = 2080;
    *(v27 + 30) = sub_100006E4C(v0, v21, &v45);
    _os_log_impl(&_mh_execute_header, v24, v25, "userHasEverHadCapableDevice: %{BOOL}d personalTranslatorEnvLocal: %s translationTabLocal: %s identifier: %s", v27, 0x26u);
    swift_arrayDestroy();

    v2 = v40;
  }

  else
  {
  }

  v34 = v43;
  sub_10000F548();
  v0 = sub_10000B3CC(v0, v21, v34);
  v36 = v35;

  (*(v2 + 8))(v34, v1);

  if (!v36)
  {
    return 0;
  }

  return v0;
}

uint64_t sub_10000BE04()
{
  v0 = sub_10000B068();
  if (v0 && (v1 = v0, v2 = sub_10000F858(), v3 = [v1 BOOLForKey:v2], v1, v2, v3))
  {
    if (qword_10001C4C0 != -1)
    {
      swift_once();
    }

    v4 = sub_10000F6C8();
    sub_100001D6C(v4, qword_10001EEF0);
    v5 = sub_10000F6A8();
    v6 = sub_10000F948();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "AssumeIsLiveActivityListening is on. Skip checking IsLiveActivityListening", v7, 2u);
    }

    v8 = 1;
  }

  else
  {
    v9 = sub_10000B068();
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    v5 = sub_10000F858();
    v8 = [v10 BOOLForKey:v5];
  }

  return v8;
}

uint64_t sub_10000BF88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000BFD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007D6C;

  return sub_10000A150(a1, v4, v5, v6);
}

unint64_t sub_10000C0A0()
{
  result = qword_10001CA40;
  if (!qword_10001CA40)
  {
    sub_10000F358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA40);
  }

  return result;
}

uint64_t sub_10000C0F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001D24(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000C160()
{
  result = qword_10001CA58;
  if (!qword_10001CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA58);
  }

  return result;
}

uint64_t sub_10000C1C8()
{
  v0 = sub_100001D24(&qword_10001CAE8, &qword_100011458);
  sub_100002890(v0, qword_10001EF88);
  sub_100001D6C(v0, qword_10001EF88);
  sub_100001D24(&qword_10001CAF0, &qword_100011460);
  v1 = *(sub_100001D24(&qword_10001CAF8, &qword_100011468) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100010100;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  sub_100003574();
  sub_10000F3E8();
  *(v5 + v2) = 1;
  sub_10000F3E8();
  *(v5 + 2 * v2) = 2;
  sub_10000F3E8();
  sub_10000D39C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_10000F3F8();
}

uint64_t sub_10000C3EC()
{
  v0 = sub_100001D24(&qword_10001C6F8, &qword_1000110B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10000F4A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10000F468();
  sub_100002890(v5, qword_10001EFA0);
  sub_100001D6C(v5, qword_10001EFA0);
  sub_10000F488();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10000F458();
}

uint64_t sub_10000C55C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x614C6567616E616DLL;
  v4 = 0xEF7365676175676ELL;
  if (v2 != 1)
  {
    v3 = 0x6563697665446E6FLL;
    v4 = 0xEC00000065646F4DLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1953460082;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x614C6567616E616DLL;
  v8 = 0xEF7365676175676ELL;
  if (*a2 != 1)
  {
    v7 = 0x6563697665446E6FLL;
    v8 = 0xEC00000065646F4DLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1953460082;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10000FA88();
  }

  return v11 & 1;
}

unint64_t sub_10000C684()
{
  result = qword_10001CA60;
  if (!qword_10001CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA60);
  }

  return result;
}

Swift::Int sub_10000C6D8()
{
  sub_10000FAE8();
  sub_10000F8A8();

  return sub_10000FB08();
}

uint64_t sub_10000C788(uint64_t a1)
{
  sub_10000F8A8();
}

Swift::Int sub_10000C824(uint64_t a1)
{
  sub_10000FAE8();
  sub_10000F8A8();

  return sub_10000FB08();
}

unint64_t sub_10000C8D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000DCCC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10000C900(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF7365676175676ELL;
  v5 = 0x614C6567616E616DLL;
  if (v2 != 1)
  {
    v5 = 0x6563697665446E6FLL;
    v4 = 0xEC00000065646F4DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953460082;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10000C974()
{
  result = qword_10001CA68;
  if (!qword_10001CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA68);
  }

  return result;
}

uint64_t sub_10000C9C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C4F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100001D24(&qword_10001CAE8, &qword_100011458);
  v3 = sub_100001D6C(v2, qword_10001EF88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000CA80()
{
  result = qword_10001CA70;
  if (!qword_10001CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA70);
  }

  return result;
}

unint64_t sub_10000CAD8()
{
  result = qword_10001CA78;
  if (!qword_10001CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA78);
  }

  return result;
}

uint64_t sub_10000CB38(uint64_t a1)
{
  sub_100003670();
  v2 = sub_10000F3D8();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10000CBA8()
{
  result = qword_10001CA80;
  if (!qword_10001CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA80);
  }

  return result;
}

unint64_t sub_10000CC00()
{
  result = qword_10001CA88;
  if (!qword_10001CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA88);
  }

  return result;
}

unint64_t sub_10000CC5C()
{
  result = qword_10001CA90;
  if (!qword_10001CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA90);
  }

  return result;
}

uint64_t sub_10000CCB4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C500 != -1)
  {
    swift_once();
  }

  v2 = sub_10000F468();
  v3 = sub_100001D6C(v2, qword_10001EFA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000CDAC(uint64_t a1)
{
  v2 = sub_100003574();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000CDFC()
{
  result = qword_10001CA98;
  if (!qword_10001CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA98);
  }

  return result;
}

unint64_t sub_10000CE54()
{
  result = qword_10001CAA0;
  if (!qword_10001CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CAA0);
  }

  return result;
}

unint64_t sub_10000CEAC()
{
  result = qword_10001CAA8;
  if (!qword_10001CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CAA8);
  }

  return result;
}

uint64_t sub_10000CF04(uint64_t a1)
{
  v2 = sub_10000CC5C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000CF54()
{
  result = qword_10001CAB0;
  if (!qword_10001CAB0)
  {
    sub_10000AB9C(&qword_10001CAB8, &qword_1000113D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CAB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranslationDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslationDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000D120(uint64_t a1)
{
  v1 = a1;
  sub_10000FAE8();
  sub_10000F8A8();

  v2 = sub_10000FB08();

  return sub_10000D1F4(v1, v2);
}

unint64_t sub_10000D1F4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x614C6567616E616DLL;
          v8 = 0xEF7365676175676ELL;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x6563697665446E6FLL;
          v8 = 0xEC00000065646F4DLL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v7 != 1953460082)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE400000000000000;
        v7 = 1953460082;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x614C6567616E616DLL;
      }

      else
      {
        v10 = 0x6563697665446E6FLL;
      }

      if (v9 == 1)
      {
        v11 = 0xEF7365676175676ELL;
      }

      else
      {
        v11 = 0xEC00000065646F4DLL;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_10000FA88();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_10000D39C(uint64_t a1)
{
  v2 = sub_100001D24(&qword_10001CAF8, &qword_100011468);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001D24(&qword_10001CB00, &qword_100011470);
    v7 = sub_10000FA08();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000C0F8(v9, v5, &qword_10001CAF8, &qword_100011468);
      v11 = *v5;
      result = sub_10000D120(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100001D24(&qword_10001CB08, &qword_100011478);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_10000D590(uint64_t a1)
{
  v2 = sub_100001D24(&qword_10001CAD0, &qword_100011440);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001D24(&qword_10001CAE0, &qword_100011450);
    v7 = sub_10000FA08();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000C0F8(v9, v5, &qword_10001CAD0, &qword_100011440);
      v11 = *v5;
      result = sub_10000D120(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10000F3C8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_10000D778()
{
  v0 = sub_100001D24(&qword_10001CAC0, &unk_100011428);
  __chkstk_darwin(v0 - 8);
  v2 = v20 - v1;
  v3 = sub_100001D24(&qword_10001C6F8, &qword_1000110B0);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - v4;
  v6 = sub_10000F4A8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v20[0] = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001D24(&qword_10001CAC8, &qword_100011438);
  v9 = sub_100001D24(&qword_10001CAD0, &qword_100011440);
  v29 = v9;
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v26 = 2 * v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100010100;
  v27 = v12;
  v28 = v12 + v11;
  v21 = *(v9 + 48);
  *(v12 + v11) = 0;
  sub_10000F488();
  sub_10000F488();
  v13 = *(v7 + 56);
  v20[2] = v7 + 56;
  v24 = v6;
  v13(v5, 0, 1, v6);
  v23 = v13;
  v20[1] = "Unknown assertion state";
  sub_10000F388();
  v14 = sub_10000F398();
  v15 = *(*(v14 - 8) + 56);
  v22 = v14;
  v15(v2, 0, 1, v14);
  v25 = v15;
  v16 = v28;
  sub_10000F3B8();
  v17 = *(v29 + 48);
  v20[3] = v16 + v10;
  v20[4] = v17;
  *(v16 + v10) = 1;
  sub_10000F488();
  v21 = "trolTargetLocale";
  sub_10000F488();
  v13(v5, 0, 1, v6);
  sub_10000F388();
  v15(v2, 0, 1, v14);
  sub_100001D24(&qword_10001CAD8, &qword_100011448);
  *(swift_allocObject() + 16) = xmmword_100010120;
  sub_10000F488();
  sub_10000F488();
  sub_10000F3A8();
  *(v28 + v26) = 2;
  sub_10000F488();
  sub_10000F488();
  v23(v5, 0, 1, v24);
  sub_10000F388();
  v25(v2, 0, 1, v22);
  sub_10000F3B8();
  v18 = sub_10000D590(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v18;
}

unint64_t sub_10000DCCC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000190D8;
  v6._object = a2;
  v4 = sub_10000FA18(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000DD4C()
{
  type metadata accessor for ToggleControlStateProvider();
  result = swift_allocObject();
  qword_10001EFB8 = result;
  return result;
}

uint64_t sub_10000DD7C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_10000F4A8();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100001D24(&qword_10001CB20, &qword_1000114E0);
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = v21 - v4;
  v27 = sub_100001D24(&qword_10001CB28, &qword_1000114E8);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = v21 - v6;
  v26 = sub_100001D24(&qword_10001CB30, &qword_1000114F0);
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = v21 - v8;
  v21[1] = qword_10001CB10;
  v10 = qword_10001C508;

  if (v10 != -1)
  {
    swift_once();
  }

  v33 = qword_10001EFB8;

  sub_100001D24(&qword_10001CB38, &qword_1000114F8);
  type metadata accessor for ToggleControlStateProvider();
  v11 = sub_10000AB9C(&qword_10001CB40, &qword_100011500);
  v12 = sub_10000EB68(&qword_10001CB48, &qword_10001CB40, &qword_100011500, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v31 = v11;
  v32 = v12;
  swift_getOpaqueTypeConformance2();
  sub_10000EC04(&qword_10001CB50, type metadata accessor for ToggleControlStateProvider, &unk_100011050);
  sub_10000F818();
  sub_10000F488();
  v13 = sub_10000EB68(&qword_10001CB58, &qword_10001CB20, &qword_1000114E0, &protocol conformance descriptor for AppIntentControlConfiguration<A, B>);
  v14 = v25;
  sub_10000F738();
  v15 = v29;
  v16 = *(v28 + 8);
  v16(v3, v29);
  (*(v22 + 8))(v5, v14);
  sub_10000F488();
  v31 = v14;
  v32 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v27;
  sub_10000F728();
  v16(v3, v15);
  (*(v24 + 8))(v7, v18);
  v31 = v18;
  v32 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v26;
  sub_10000F748();
  return (*(v23 + 8))(v9, v19);
}

uint64_t sub_10000E2B0@<X0>(uint64_t a2@<X8>)
{
  v17[1] = a2;
  v18 = sub_100001D24(&qword_10001CB40, &qword_100011500);
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = v17 - v3;
  sub_10000F6E8();
  v21 = sub_10000AC3C();
  v22 = v5;
  v23 = v6;
  sub_100001D24(&qword_10001CB60, &qword_100011508);
  v7 = sub_10000AB9C(&qword_10001CB68, &qword_100011510);
  v8 = sub_10000AB9C(&qword_10001CB70, &qword_100011518);
  v9 = sub_10000EA80();
  v19 = v8;
  v20 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v7;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10000EBB0();
  sub_10000F808();
  v11 = sub_10000F858();
  v12 = objc_opt_self();
  v13 = [v12 colorNamed:v11];

  if (!v13)
  {
    v14 = [v12 clearColor];
  }

  sub_10000F788();
  sub_10000EB68(&qword_10001CB48, &qword_10001CB40, &qword_100011500, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v15 = v18;
  sub_10000F708();

  return (*(v2 + 8))(v4, v15);
}

uint64_t sub_10000E588@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  v2 = sub_10000F7F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000F7D8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = sub_100001D24(&qword_10001CB70, &qword_100011518);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v16 = sub_100001D24(&qword_10001CB68, &qword_100011510);
  v33 = *(v16 - 8);
  v34 = v16;
  __chkstk_darwin(v16);
  v32 = &v29 - v17;
  if (qword_10001C508 != -1)
  {
    swift_once();
  }

  v37 = sub_10000B94C();
  v38 = v18;
  sub_10000C160();
  sub_10000F798();
  sub_10000F7C8();
  sub_10000F7B8();
  v31 = v15;
  v19 = *(v7 + 8);
  v19(v12, v6);
  sub_10000F7E8();
  v20 = *(v13 + 36);
  v30 = v13;
  v21 = &v15[v20];
  v22 = sub_10000F758();
  (*(v3 + 16))(&v21[*(v22 + 20)], v5, v2);
  sub_10000EC04(&qword_10001CBA0, &type metadata accessor for BreatheSymbolEffect, &protocol conformance descriptor for BreatheSymbolEffect);
  sub_10000F7A8();
  (*(v3 + 8))(v5, v2);
  v19(v10, v6);
  v21[*(v22 + 24)] = v35 & 1;
  sub_10000F6E8();
  v23 = sub_10000EA80();
  v24 = v32;
  v25 = v31;
  v26 = v30;
  sub_10000F778();

  sub_10000EC4C(v25);
  sub_10000F6E8();
  v37 = v26;
  v38 = v23;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_10000F768();

  return (*(v33 + 8))(v24, v27);
}

unint64_t sub_10000EA80()
{
  result = qword_10001CB78;
  if (!qword_10001CB78)
  {
    sub_10000AB9C(&qword_10001CB70, &qword_100011518);
    sub_10000EB68(&qword_10001CB80, &qword_10001CB88, &unk_100011520, &protocol conformance descriptor for Label<A, B>);
    sub_10000EC04(&qword_10001CB90, &type metadata accessor for _IndefiniteSymbolEffectModifier, &protocol conformance descriptor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB78);
  }

  return result;
}

uint64_t sub_10000EB68(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000AB9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000EBB0()
{
  result = qword_10001CB98;
  if (!qword_10001CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB98);
  }

  return result;
}

uint64_t sub_10000EC04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EC4C(uint64_t a1)
{
  v2 = sub_100001D24(&qword_10001CB70, &qword_100011518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000ECB4()
{
  sub_10000AB9C(&qword_10001CB30, &qword_1000114F0);
  sub_10000AB9C(&qword_10001CB28, &qword_1000114E8);
  sub_10000AB9C(&qword_10001CB20, &qword_1000114E0);
  sub_10000EB68(&qword_10001CB58, &qword_10001CB20, &qword_1000114E0, &protocol conformance descriptor for AppIntentControlConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000EDCC()
{
  v0 = sub_100001D24(&qword_10001CBB0, &unk_100011590);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_10000EF78();
  sub_10000F718();
  sub_10000EFCC();
  sub_10000F6F8();
  return (*(v1 + 8))(v3, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000EEF8();
  sub_10000F6D8();
  return 0;
}

unint64_t sub_10000EEF8()
{
  result = qword_10001CBA8;
  if (!qword_10001CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBA8);
  }

  return result;
}

unint64_t sub_10000EF78()
{
  result = qword_10001CBB8;
  if (!qword_10001CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBB8);
  }

  return result;
}

unint64_t sub_10000EFCC()
{
  result = qword_10001CBC0;
  if (!qword_10001CBC0)
  {
    sub_10000AB9C(&qword_10001CBB0, &unk_100011590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBC0);
  }

  return result;
}

uint64_t sub_10000F030()
{
  sub_10000AB9C(&qword_10001CBB0, &unk_100011590);
  sub_10000EFCC();
  return swift_getOpaqueTypeConformance2();
}