unint64_t sub_100020F50()
{
  result = qword_100097618;
  if (!qword_100097618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097618);
  }

  return result;
}

unint64_t sub_100020FA8()
{
  result = qword_100097620;
  if (!qword_100097620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097620);
  }

  return result;
}

uint64_t sub_100020FFC()
{
  v0 = qword_1000975E0;

  return v0;
}

unint64_t sub_100021038()
{
  result = qword_100097628;
  if (!qword_100097628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097628);
  }

  return result;
}

uint64_t sub_10002108C(uint64_t a1)
{
  v2 = sub_100020EF8();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000056, 0x8000000100077E10, a1, v2);
}

unint64_t sub_1000210F4()
{
  result = qword_100097630;
  if (!qword_100097630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097630);
  }

  return result;
}

unint64_t sub_10002114C()
{
  result = qword_100097638;
  if (!qword_100097638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097638);
  }

  return result;
}

unint64_t sub_1000211A4()
{
  result = qword_100097640;
  if (!qword_100097640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097640);
  }

  return result;
}

unint64_t sub_1000211FC()
{
  result = qword_100097648;
  if (!qword_100097648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097648);
  }

  return result;
}

uint64_t sub_100021250(uint64_t a1)
{
  sub_100022820();
  v2 = sub_10006A3C0();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000212C0()
{
  result = qword_100097650;
  if (!qword_100097650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097650);
  }

  return result;
}

unint64_t sub_100021318()
{
  result = qword_100097658;
  if (!qword_100097658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097658);
  }

  return result;
}

unint64_t sub_100021370()
{
  result = qword_100097660;
  if (!qword_100097660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097660);
  }

  return result;
}

unint64_t sub_1000213C8()
{
  result = qword_100097668;
  if (!qword_100097668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097668);
  }

  return result;
}

uint64_t sub_10002141C@<X0>(uint64_t *a2@<X8>)
{
  sub_100021628();
  result = sub_10006A110();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000214D8(uint64_t a1)
{
  v2 = sub_100020EF8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100021528()
{
  result = qword_100097680;
  if (!qword_100097680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097680);
  }

  return result;
}

uint64_t sub_100021580(uint64_t a1)
{
  v2 = sub_1000213C8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000215D0()
{
  result = qword_100097688;
  if (!qword_100097688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097688);
  }

  return result;
}

unint64_t sub_100021628()
{
  result = qword_100097690;
  if (!qword_100097690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097690);
  }

  return result;
}

uint64_t sub_10002167C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10006A4B0();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10002170C, 0, 0);
}

uint64_t sub_10002170C()
{
  v1 = *(v0 + 16);
  sub_100007DF0(&qword_100097700, &qword_100073050);
  sub_10006A490();
  sub_1000095F4(&qword_100097708, &qword_100097710, &qword_100073068, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_10006A430();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100021824(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100020FA8();
  *v4 = v2;
  v4[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000218D8()
{
  result = qword_100097698;
  if (!qword_100097698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097698);
  }

  return result;
}

unint64_t sub_100021930()
{
  result = qword_1000976A0;
  if (!qword_1000976A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976A0);
  }

  return result;
}

uint64_t sub_100021984(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100020FA8();
  *v5 = v2;
  v5[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100021A38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100020FA8();
  *v4 = v2;
  v4[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100021AEC()
{
  result = qword_1000976A8;
  if (!qword_1000976A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976A8);
  }

  return result;
}

unint64_t sub_100021B44()
{
  result = qword_1000976B0;
  if (!qword_1000976B0)
  {
    sub_100008154(&qword_1000976B8, qword_100072CD0);
    sub_100021370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976B0);
  }

  return result;
}

uint64_t sub_100021BC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000211FC();
  *v5 = v2;
  v5[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100021C80()
{
  result = qword_1000976C0;
  if (!qword_1000976C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976C0);
  }

  return result;
}

uint64_t sub_100021CD4()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006A5B0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10006B270();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10006A4B0();
  sub_10000D8DC(v6, qword_1000A5690);
  sub_10000CEB8(v6, qword_1000A5690);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_100021EB4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10006A120();
  return sub_100011580;
}

unint64_t sub_100021F28()
{
  result = qword_1000976C8;
  if (!qword_1000976C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976C8);
  }

  return result;
}

uint64_t sub_100021F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022778();
  v5 = sub_100022820();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100021FE8()
{
  v0 = qword_1000975F0;

  return v0;
}

unint64_t sub_100022024()
{
  result = qword_1000976D0;
  if (!qword_1000976D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976D0);
  }

  return result;
}

unint64_t sub_10002207C()
{
  result = qword_1000976D8;
  if (!qword_1000976D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976D8);
  }

  return result;
}

uint64_t sub_100022158(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100022778();
  v7 = sub_1000227CC();
  v8 = sub_100022820();
  *v5 = v2;
  v5[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10002222C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100022480();
  *a1 = result;
  return result;
}

uint64_t sub_100022254(uint64_t a1)
{
  v2 = sub_100021F28();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000222F0()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = sub_10006B280();
  LOBYTE(v2) = [v2 BOOLForKey:v3];

  *v1 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000223CC()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = sub_10006B280();
  [v2 setBool:v1 forKey:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100022480()
{
  v17[0] = sub_10006A3B0();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007DF0(&qword_1000976E0, &qword_100073048);
  sub_10006A490();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_10006A0F0();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100020EF8();
  return sub_10006A150();
}

unint64_t sub_100022778()
{
  result = qword_1000976E8;
  if (!qword_1000976E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976E8);
  }

  return result;
}

unint64_t sub_1000227CC()
{
  result = qword_1000976F0;
  if (!qword_1000976F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976F0);
  }

  return result;
}

unint64_t sub_100022820()
{
  result = qword_1000976F8;
  if (!qword_1000976F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976F8);
  }

  return result;
}

uint64_t sub_100022874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A420();
  *a1 = result;
  return result;
}

uint64_t sub_1000228D0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v1 - 8);
  v30 = &v24 - v2;
  v3 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v3 - 8);
  v29 = &v24 - v4;
  v5 = sub_10006A4A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A5B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10006B270();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10006A4B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v27 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v26 = &v24 - v15;
  sub_10006B260();
  sub_10006A5A0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v25 = v5;
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v5);
  v18 = v29;
  sub_10006A4C0();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v20 = v30;
  sub_10006A2F0();
  v21 = sub_10006A300();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  *(swift_allocObject() + 16) = xmmword_10006F820;
  sub_10006B260();
  sub_10006A5A0();
  v22 = v25;
  v17(v8, v16, v25);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v22);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_100022E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_10006A4B0();
  v3[5] = swift_task_alloc();
  v4 = sub_100007DF0(&qword_1000978C8, &qword_100073B88);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100022F20, 0, 0);
}

uint64_t sub_100022F20()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_100007DF0(&qword_1000978D0, &qword_100073BB8);
  v4 = sub_1000095F4(&qword_1000978B8, &qword_1000978C0, &qword_100073B78, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v0[11] = v4;
  *v2 = v0;
  v2[1] = sub_100023030;
  v5 = v0[8];

  return _AppEntityUpdate.value<A>(of:)(v5, KeyPath, v3, v4);
}

uint64_t sub_100023030()
{

  return _swift_task_switch(sub_100023148, 0, 0);
}

uint64_t sub_100023148()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 64);
    (*(*(v0 + 56) + 96))(v1, *(v0 + 48));
    v2 = *v1;
    sub_100007DF0(&qword_1000978B0, &qword_100073B60);
    sub_10006A490();
    v3 = sub_10006A430();
    *(v0 + 96) = v3;
    *(v0 + 16) = v3;
    *(v0 + 128) = v2;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_100023388;
    v6 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v6);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100023388()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10000ED2C;
  }

  else
  {
    v2 = sub_1000234BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000234BC()
{
  sub_1000262CC();
  sub_10006A000();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100023554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_100022E28(a1, v6, a3);
}

uint64_t sub_1000235F4()
{
  v0 = qword_100097720;

  return v0;
}

uint64_t sub_10002362C(uint64_t a1)
{
  v2 = sub_100026324();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004DLL, 0x8000000100077EF0, a1, v2);
}

uint64_t sub_100023690(uint64_t a1)
{
  sub_1000275AC();
  v2 = sub_10006A3C0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000236FC@<X0>(uint64_t *a2@<X8>)
{
  sub_100026CC4();
  result = sub_10006A110();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100023774(uint64_t a1)
{
  v2 = sub_100026324();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000237C4(uint64_t a1)
{
  v2 = sub_1000266EC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100023828(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a3;
  v17[2] = a4;
  v5 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  v17[0] = sub_10006A4A0();
  v8 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10006A5B0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10006B270();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10006A4B0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = sub_10006A450();
  sub_10000D8DC(v15, a2);
  sub_10000CEB8(v15, a2);
  sub_10006B260();
  sub_10006A5A0();
  (*(v8 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10006A4C0();
  (*(v14 + 56))(v7, 1, 1, v13);
  return sub_10006A440();
}

uint64_t NoteListSortType.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100096898 != -1)
  {
    swift_once();
  }

  v0 = sub_10006A450();

  return sub_10000CEB8(v0, static NoteListSortType.typeDisplayRepresentation);
}

uint64_t static NoteListSortType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100096898 != -1)
  {
    swift_once();
  }

  v2 = sub_10006A450();
  v3 = sub_10000CEB8(v2, static NoteListSortType.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100023C10()
{
  v0 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v0 - 8);
  v32 = v27 - v1;
  v2 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v2 - 8);
  v43 = v27 - v3;
  v36 = sub_10006A4A0();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v29 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v28 = sub_10006A4B0();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  sub_100007DF0(&qword_1000978D8, &qword_100073BC0);
  v9 = sub_100007DF0(&qword_1000978E0, &qword_100073BC8);
  v33 = v9;
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v30 = 2 * v10;
  v12 = swift_allocObject();
  v31 = v12;
  *(v12 + 16) = xmmword_10006F2A0;
  v27[0] = *(v9 + 48);
  *(v12 + v11) = 0;
  v13 = v12 + v11;
  sub_10006B260();
  sub_10006A5A0();
  v41 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v14 = *(v4 + 104);
  v27[1] = v4 + 104;
  v42 = v14;
  v15 = v29;
  v14(v29);
  sub_10006A4C0();
  v16 = *(v8 + 56);
  v38 = v8 + 56;
  v39 = v16;
  v17 = v28;
  v16(v43, 1, 1, v28);
  v35 = sub_10006A300();
  v18 = *(v35 - 8);
  v34 = *(v18 + 56);
  v37 = v18 + 56;
  v19 = v32;
  v34(v32, 1, 1, v35);
  v40 = v13;
  v20 = v19;
  sub_10006A320();
  v21 = (v13 + v10);
  v22 = v33;
  v27[0] = *(v33 + 48);
  *v21 = 1;
  sub_10006B260();
  sub_10006A5A0();
  v42(v15, v41, v36);
  sub_10006A4C0();
  v23 = v43;
  v39(v43, 1, 1, v17);
  v34(v20, 1, 1, v35);
  sub_10006A320();
  v24 = (v40 + v30);
  v30 = *(v22 + 48);
  *v24 = 2;
  sub_10006B260();
  sub_10006A5A0();
  v42(v15, v41, v36);
  sub_10006A4C0();
  v39(v23, 1, 1, v17);
  v34(v20, 1, 1, v35);
  sub_10006A320();
  v25 = sub_10002603C(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static NoteListSortType.caseDisplayRepresentations = v25;
  return result;
}

uint64_t *NoteListSortType.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1000968A0 != -1)
  {
    swift_once();
  }

  return &static NoteListSortType.caseDisplayRepresentations;
}

uint64_t static NoteListSortType.caseDisplayRepresentations.getter()
{
  if (qword_1000968A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double static NoteListSortType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1000968A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static NoteListSortType.caseDisplayRepresentations = a1;

  return result;
}

uint64_t (*static NoteListSortType.caseDisplayRepresentations.modify(uint64_t a1))()
{
  if (qword_1000968A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t NoteListSortType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6465696669646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x4464657461657263;
  }

  return 0x656C746974;
}

uint64_t sub_1000244B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4464657461657263;
  v4 = 0xEB00000000657461;
  if (v2 != 1)
  {
    v3 = 0x656C746974;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6465696669646F6DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065746144;
  }

  v7 = 0x4464657461657263;
  v8 = 0xEB00000000657461;
  if (*a2 != 1)
  {
    v7 = 0x656C746974;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6465696669646F6DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065746144;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10006B540();
  }

  return v11 & 1;
}

unint64_t sub_1000245C0@<X0>(Swift::String *a1@<X0>, com_apple_mobilenotes_WidgetExtension::NoteListSortType_optional *a2@<X8>)
{
  result = _s37com_apple_mobilenotes_WidgetExtension16NoteListSortTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1000245F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746144;
  v4 = 0xEB00000000657461;
  v5 = 0x4464657461657263;
  if (v2 != 1)
  {
    v5 = 0x656C746974;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465696669646F6DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10002465C()
{
  sub_10006B570();
  sub_10006B2B0();

  return sub_10006B580();
}

double sub_10002470C(uint64_t a1)
{
  sub_10006B2B0();

  return result;
}

Swift::Int sub_1000247A8()
{
  sub_10006B570();
  sub_10006B2B0();

  return sub_10006B580();
}

uint64_t sub_10002488C(uint64_t a1)
{
  v2 = sub_100026AC8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000248D8(uint64_t a1)
{
  v2 = sub_100026A48();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100024934(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10006A4B0();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000249C4, 0, 0);
}

uint64_t sub_1000249C4()
{
  v1 = *(v0 + 16);
  sub_100007DF0(&qword_1000978B0, &qword_100073B60);
  sub_10006A490();
  sub_1000095F4(&qword_1000978B8, &qword_1000978C0, &qword_100073B78, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_10006A430();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100024AE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000263D4();
  *v4 = v2;
  v4[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_100024B94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000263D4();
  *v5 = v2;
  v5[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100024C48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000263D4();
  *v4 = v2;
  v4[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_100024CF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002658C();
  *v5 = v2;
  v5[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100024DAC()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006A5B0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10006B270();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10006A4B0();
  sub_10000D8DC(v6, qword_1000A56E0);
  sub_10000CEB8(v6, qword_1000A56E0);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_100024F8C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10006A120();
  return sub_100011580;
}

uint64_t sub_100025000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100027504();
  v5 = sub_1000275AC();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100025068()
{
  v0 = qword_100097730;

  return v0;
}

uint64_t sub_1000250D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100027504();
  v7 = sub_100027558();
  v8 = sub_1000275AC();
  *v5 = v2;
  v5[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_1000251AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002720C();
  *a1 = result;
  return result;
}

uint64_t sub_1000251D4(uint64_t a1)
{
  v2 = sub_100026F00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100025230()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() currentNoteListSortType];
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 1;
  }

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000252E4()
{
  [objc_opt_self() setCurrentNoteListSortType:*(v0 + 16)];
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100025360(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100010898(*(v1 + 40), a1);

  return sub_100025500(v2, v3);
}

unint64_t sub_1000253A4(uint64_t a1)
{
  v1 = a1;
  sub_10006B570();
  ParagraphStyle.rawValue.getter(v1);
  sub_10006B2B0();

  v2 = sub_10006B580();

  return sub_10002579C(v1, v2);
}

unint64_t sub_10002542C(uint64_t a1)
{
  v1 = a1;
  sub_10006B570();
  sub_10006B2B0();

  v2 = sub_10006B580();

  return sub_100025AC0(v1, v2);
}

unint64_t sub_100025500(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6C616D5364697267;
          }

          else
          {
            v8 = 0x6964654D64697267;
          }

          if (v7 == 1)
          {
            v9 = 0xE90000000000006CLL;
          }

          else
          {
            v9 = 0xEA00000000006D75;
          }
        }

        else
        {
          v9 = 0xE400000000000000;
          v8 = 1701736302;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0x64654D73656E696CLL;
          v9 = 0xEB000000006D7569;
        }

        else
        {
          v8 = 0x72614C73656E696CLL;
          v9 = 0xEA00000000006567;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x6772614C64697267;
        }

        else
        {
          v8 = 0x616D5373656E696CLL;
        }

        if (v7 == 3)
        {
          v9 = 0xE900000000000065;
        }

        else
        {
          v9 = 0xEA00000000006C6CLL;
        }
      }

      v10 = 0x72614C73656E696CLL;
      if (v6 == 5)
      {
        v10 = 0x64654D73656E696CLL;
      }

      v11 = 0xEB000000006D7569;
      if (v6 != 5)
      {
        v11 = 0xEA00000000006567;
      }

      v12 = 0xEA00000000006C6CLL;
      v13 = 0x6772614C64697267;
      if (v6 == 3)
      {
        v12 = 0xE900000000000065;
      }

      else
      {
        v13 = 0x616D5373656E696CLL;
      }

      if (v6 <= 4)
      {
        v10 = v13;
        v11 = v12;
      }

      v14 = 0xE90000000000006CLL;
      v15 = 0x6C616D5364697267;
      if (v6 != 1)
      {
        v15 = 0x6964654D64697267;
        v14 = 0xEA00000000006D75;
      }

      v16 = 1701736302;
      if (v6)
      {
        v16 = v15;
      }

      else
      {
        v14 = 0xE400000000000000;
      }

      v17 = v6 <= 2 ? v16 : v10;
      v18 = v6 <= 2 ? v14 : v11;
      if (v8 == v17 && v9 == v18)
      {
        break;
      }

      v19 = sub_10006B540();

      if ((v19 & 1) == 0)
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

unint64_t sub_10002579C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      if (v6 > 4)
      {
        if (*(*(v27 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v12 = 0xE700000000000000;
            v11 = 0x6E6F6974706163;
          }

          else
          {
            v12 = 0xEA00000000007465;
            v11 = 0x6C6C75427473696CLL;
          }
        }

        else if (v6 == 7)
        {
          v12 = 0xE800000000000000;
          v11 = 0x687361447473696CLL;
        }

        else if (v6 == 8)
        {
          v11 = 0x626D754E7473696CLL;
          v12 = 0xEC00000064657265;
        }

        else
        {
          v12 = 0xE800000000000000;
          v11 = 0x6F646F547473696CLL;
        }
      }

      else
      {
        v7 = 0xEA00000000006874;
        if (v6 == 3)
        {
          v8 = 2036625250;
        }

        else
        {
          v8 = 0x6469576465786966;
        }

        if (v6 == 3)
        {
          v7 = 0xE400000000000000;
        }

        if (v6 == 2)
        {
          v8 = 0x6964616568627573;
          v7 = 0xEA0000000000676ELL;
        }

        v9 = *(*(v27 + 48) + v4) ? 0x676E6964616568 : 0x656C746974;
        v10 = *(*(v27 + 48) + v4) ? 0xE700000000000000 : 0xE500000000000000;
        v11 = *(*(v27 + 48) + v4) <= 1u ? v9 : v8;
        v12 = *(*(v27 + 48) + v4) <= 1u ? v10 : v7;
      }

      v13 = 0x6F646F547473696CLL;
      if (v5 == 8)
      {
        v13 = 0x626D754E7473696CLL;
      }

      v14 = 0xEC00000064657265;
      if (v5 != 8)
      {
        v14 = 0xE800000000000000;
      }

      if (v5 == 7)
      {
        v13 = 0x687361447473696CLL;
        v14 = 0xE800000000000000;
      }

      v15 = 0xEA00000000007465;
      v16 = 0x6C6C75427473696CLL;
      if (v5 == 5)
      {
        v16 = 0x6E6F6974706163;
        v15 = 0xE700000000000000;
      }

      if (v5 <= 6)
      {
        v13 = v16;
        v14 = v15;
      }

      v17 = 0xEA00000000006874;
      if (v5 == 3)
      {
        v18 = 2036625250;
      }

      else
      {
        v18 = 0x6469576465786966;
      }

      if (v5 == 3)
      {
        v17 = 0xE400000000000000;
      }

      if (v5 == 2)
      {
        v18 = 0x6964616568627573;
        v17 = 0xEA0000000000676ELL;
      }

      if (v5)
      {
        v19 = 0x676E6964616568;
      }

      else
      {
        v19 = 0x656C746974;
      }

      if (v5)
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (v5 <= 1)
      {
        v18 = v19;
        v17 = v20;
      }

      v21 = v5 <= 4 ? v18 : v13;
      v22 = v5 <= 4 ? v17 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_10006B540();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100025AC0(unsigned __int8 a1, uint64_t a2)
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
          v7 = 0x4464657461657263;
          v8 = 0xEB00000000657461;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE500000000000000;
          v7 = 0x656C746974;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xEC00000065746144;
            if (v7 != 0x6465696669646F6DLL)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x6465696669646F6DLL;
        v8 = 0xEC00000065746144;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x4464657461657263;
      }

      else
      {
        v10 = 0x656C746974;
      }

      if (v9 == 1)
      {
        v11 = 0xEB00000000657461;
      }

      else
      {
        v11 = 0xE500000000000000;
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
      v12 = sub_10006B540();

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

unint64_t sub_100025C6C(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100097048, qword_100070380);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007DF0(&qword_1000978F8, qword_100073BF0);
    v7 = sub_10006B510();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009728(v9, v5, &qword_100097048, qword_100070380);
      v11 = *v5;
      result = sub_100025360(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10006A330();
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

unint64_t sub_100025E54(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_1000975D8, &qword_100072810);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007DF0(&qword_1000978F0, &unk_100073BE0);
    v7 = sub_10006B510();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009728(v9, v5, &qword_1000975D8, &qword_100072810);
      v11 = *v5;
      result = sub_1000253A4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10006A330();
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

unint64_t sub_10002603C(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_1000978E0, &qword_100073BC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007DF0(&qword_1000978E8, &unk_100073BD0);
    v7 = sub_10006B510();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009728(v9, v5, &qword_1000978E0, &qword_100073BC8);
      v11 = *v5;
      result = sub_10002542C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10006A330();
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

unint64_t _s37com_apple_mobilenotes_WidgetExtension16NoteListSortTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000926E0;
  v6._object = a2;
  v4 = sub_10006B520(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100026274()
{
  result = qword_100097740;
  if (!qword_100097740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097740);
  }

  return result;
}

unint64_t sub_1000262CC()
{
  result = qword_100097748;
  if (!qword_100097748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097748);
  }

  return result;
}

unint64_t sub_100026324()
{
  result = qword_100097750;
  if (!qword_100097750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097750);
  }

  return result;
}

unint64_t sub_10002637C()
{
  result = qword_100097758;
  if (!qword_100097758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097758);
  }

  return result;
}

unint64_t sub_1000263D4()
{
  result = qword_100097760;
  if (!qword_100097760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097760);
  }

  return result;
}

unint64_t sub_10002642C()
{
  result = qword_100097768;
  if (!qword_100097768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097768);
  }

  return result;
}

unint64_t sub_100026484()
{
  result = qword_100097770;
  if (!qword_100097770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097770);
  }

  return result;
}

unint64_t sub_1000264DC()
{
  result = qword_100097778;
  if (!qword_100097778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097778);
  }

  return result;
}

unint64_t sub_100026534()
{
  result = qword_100097780;
  if (!qword_100097780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097780);
  }

  return result;
}

unint64_t sub_10002658C()
{
  result = qword_100097788;
  if (!qword_100097788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097788);
  }

  return result;
}

unint64_t sub_1000265E4()
{
  result = qword_100097790;
  if (!qword_100097790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097790);
  }

  return result;
}

unint64_t sub_10002663C()
{
  result = qword_100097798;
  if (!qword_100097798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097798);
  }

  return result;
}

unint64_t sub_100026694()
{
  result = qword_1000977A0;
  if (!qword_1000977A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977A0);
  }

  return result;
}

unint64_t sub_1000266EC()
{
  result = qword_1000977A8;
  if (!qword_1000977A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977A8);
  }

  return result;
}

unint64_t sub_100026788()
{
  result = qword_1000977C0;
  if (!qword_1000977C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977C0);
  }

  return result;
}

unint64_t sub_1000267E0()
{
  result = qword_1000977C8;
  if (!qword_1000977C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977C8);
  }

  return result;
}

unint64_t sub_100026838()
{
  result = qword_1000977D0;
  if (!qword_1000977D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977D0);
  }

  return result;
}

unint64_t sub_100026890()
{
  result = qword_1000977D8;
  if (!qword_1000977D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977D8);
  }

  return result;
}

unint64_t sub_1000268E8()
{
  result = qword_1000977E0;
  if (!qword_1000977E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977E0);
  }

  return result;
}

unint64_t sub_100026940()
{
  result = qword_1000977E8;
  if (!qword_1000977E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977E8);
  }

  return result;
}

unint64_t sub_100026998()
{
  result = qword_1000977F0;
  if (!qword_1000977F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977F0);
  }

  return result;
}

unint64_t sub_1000269F0()
{
  result = qword_1000977F8;
  if (!qword_1000977F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977F8);
  }

  return result;
}

unint64_t sub_100026A48()
{
  result = qword_100097800;
  if (!qword_100097800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097800);
  }

  return result;
}

unint64_t sub_100026AC8()
{
  result = qword_100097808;
  if (!qword_100097808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097808);
  }

  return result;
}

unint64_t sub_100026B20()
{
  result = qword_100097810;
  if (!qword_100097810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097810);
  }

  return result;
}

unint64_t sub_100026B78()
{
  result = qword_100097818;
  if (!qword_100097818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097818);
  }

  return result;
}

unint64_t sub_100026BD0()
{
  result = qword_100097820;
  if (!qword_100097820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097820);
  }

  return result;
}

unint64_t sub_100026C6C()
{
  result = qword_100097838;
  if (!qword_100097838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097838);
  }

  return result;
}

unint64_t sub_100026CC4()
{
  result = qword_100097840;
  if (!qword_100097840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097840);
  }

  return result;
}

unint64_t sub_100026D1C()
{
  result = qword_100097848;
  if (!qword_100097848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097848);
  }

  return result;
}

unint64_t sub_100026D74()
{
  result = qword_100097850;
  if (!qword_100097850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097850);
  }

  return result;
}

unint64_t sub_100026DCC()
{
  result = qword_100097858;
  if (!qword_100097858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097858);
  }

  return result;
}

unint64_t sub_100026E24()
{
  result = qword_100097860;
  if (!qword_100097860)
  {
    sub_100008154(&qword_100097868, qword_1000737C8);
    sub_100026694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097860);
  }

  return result;
}

unint64_t sub_100026EAC()
{
  result = qword_100097870;
  if (!qword_100097870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097870);
  }

  return result;
}

unint64_t sub_100026F00()
{
  result = qword_100097878;
  if (!qword_100097878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097878);
  }

  return result;
}

unint64_t sub_100026F5C()
{
  result = qword_100097880;
  if (!qword_100097880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097880);
  }

  return result;
}

unint64_t sub_100026FB4()
{
  result = qword_100097888;
  if (!qword_100097888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097888);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoteListSortType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NoteListSortType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10002720C()
{
  v17[0] = sub_10006A3B0();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007DF0(&qword_100097890, "ޙ");
  sub_10006A490();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_10006A0F0();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100026324();
  return sub_10006A150();
}

unint64_t sub_100027504()
{
  result = qword_100097898;
  if (!qword_100097898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097898);
  }

  return result;
}

unint64_t sub_100027558()
{
  result = qword_1000978A0;
  if (!qword_1000978A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000978A0);
  }

  return result;
}

unint64_t sub_1000275AC()
{
  result = qword_1000978A8;
  if (!qword_1000978A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000978A8);
  }

  return result;
}

uint64_t sub_100027600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A420();
  *a1 = result;
  return result;
}

unint64_t sub_100027650()
{
  result = qword_100097920;
  if (!qword_100097920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097920);
  }

  return result;
}

unint64_t sub_1000276A8()
{
  result = qword_100097928;
  if (!qword_100097928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097928);
  }

  return result;
}

uint64_t sub_1000276FC()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006A4A0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006A4B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006A450();
  sub_10000D8DC(v10, qword_1000A56F8);
  sub_10000CEB8(v10, qword_1000A56F8);
  sub_10006B260();
  sub_10006A5A0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006A4C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006A440();
}

uint64_t sub_1000279E0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v1 - 8);
  v28 = &v24 - v2;
  v3 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v3 - 8);
  v30 = &v24 - v4;
  v5 = sub_10006A4A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A5B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10006B270();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10006A4B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v27 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v26 = &v24 - v15;
  sub_10006B260();
  sub_10006A5A0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v25 = v5;
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v5);
  v18 = v30;
  sub_10006A4C0();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v20 = v28;
  sub_10006A2F0();
  v21 = sub_10006A300();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  *(swift_allocObject() + 16) = xmmword_10006F820;
  sub_10006B260();
  sub_10006A5A0();
  v22 = v25;
  v17(v8, v16, v25);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v22);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_100027F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_10006A4B0();
  v3[5] = swift_task_alloc();
  v4 = sub_100007DF0(&qword_100097188, &qword_100071420);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100028038, 0, 0);
}

uint64_t sub_100028038()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_100007DF0(&qword_100097A38, &qword_100074440);
  v4 = sub_1000095F4(&qword_100097A28, &qword_100097A30, &qword_100074400, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v0[11] = v4;
  *v2 = v0;
  v2[1] = sub_100028148;
  v5 = v0[8];

  return _AppEntityUpdate.value<A>(of:)(v5, KeyPath, v3, v4);
}

uint64_t sub_100028148()
{

  return _swift_task_switch(sub_100028260, 0, 0);
}

uint64_t sub_100028260()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 64);
    (*(*(v0 + 56) + 96))(v1, *(v0 + 48));
    v2 = *v1;
    sub_100007DF0(&qword_100097A20, &qword_1000743E8);
    sub_10006A490();
    v3 = sub_10006A430();
    *(v0 + 96) = v3;
    *(v0 + 16) = v3;
    *(v0 + 128) = v2;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_1000284A0;
    v6 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v6);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1000284A0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10000ED2C;
  }

  else
  {
    v2 = sub_1000285D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000285D4()
{
  sub_1000276A8();
  sub_10006A000();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_100027F40(a1, v6, a3);
}

unint64_t sub_100028710()
{
  result = qword_100097930;
  if (!qword_100097930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097930);
  }

  return result;
}

unint64_t sub_100028768()
{
  result = qword_100097938;
  if (!qword_100097938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097938);
  }

  return result;
}

unint64_t sub_1000287C0()
{
  result = qword_100097940;
  if (!qword_100097940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097940);
  }

  return result;
}

uint64_t sub_100028814()
{
  v0 = qword_100097900;

  return v0;
}

unint64_t sub_100028850()
{
  result = qword_100097948;
  if (!qword_100097948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097948);
  }

  return result;
}

uint64_t sub_1000288A4(uint64_t a1)
{
  v2 = sub_100028710();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004FLL, 0x8000000100078030, a1, v2);
}

unint64_t sub_10002890C()
{
  result = qword_100097950;
  if (!qword_100097950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097950);
  }

  return result;
}

unint64_t sub_100028964()
{
  result = qword_100097958;
  if (!qword_100097958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097958);
  }

  return result;
}

unint64_t sub_1000289BC()
{
  result = qword_100097960;
  if (!qword_100097960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097960);
  }

  return result;
}

unint64_t sub_100028A14()
{
  result = qword_100097968;
  if (!qword_100097968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097968);
  }

  return result;
}

uint64_t sub_100028A68(uint64_t a1)
{
  sub_10002A040();
  v2 = sub_10006A3C0();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100028AD8()
{
  result = qword_100097970;
  if (!qword_100097970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097970);
  }

  return result;
}

unint64_t sub_100028B30()
{
  result = qword_100097978;
  if (!qword_100097978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097978);
  }

  return result;
}

unint64_t sub_100028B88()
{
  result = qword_100097980;
  if (!qword_100097980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097980);
  }

  return result;
}

unint64_t sub_100028BE0()
{
  result = qword_100097988;
  if (!qword_100097988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097988);
  }

  return result;
}

uint64_t sub_100028C34@<X0>(uint64_t *a2@<X8>)
{
  sub_100028E40();
  result = sub_10006A110();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100028CF0(uint64_t a1)
{
  v2 = sub_100028710();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100028D40()
{
  result = qword_1000979A0;
  if (!qword_1000979A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979A0);
  }

  return result;
}

uint64_t sub_100028D98(uint64_t a1)
{
  v2 = sub_100028BE0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100028DE8()
{
  result = qword_1000979A8;
  if (!qword_1000979A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979A8);
  }

  return result;
}

unint64_t sub_100028E40()
{
  result = qword_1000979B0;
  if (!qword_1000979B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979B0);
  }

  return result;
}

uint64_t sub_100028E94(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10006A4B0();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100028F24, 0, 0);
}

uint64_t sub_100028F24()
{
  v1 = *(v0 + 16);
  sub_100007DF0(&qword_100097A20, &qword_1000743E8);
  sub_10006A490();
  sub_1000095F4(&qword_100097A28, &qword_100097A30, &qword_100074400, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_10006A430();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100029044(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000287C0();
  *v4 = v2;
  v4[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000290F8()
{
  result = qword_1000979B8;
  if (!qword_1000979B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979B8);
  }

  return result;
}

unint64_t sub_100029150()
{
  result = qword_1000979C0;
  if (!qword_1000979C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979C0);
  }

  return result;
}

uint64_t sub_1000291A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000287C0();
  *v5 = v2;
  v5[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100029258(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000287C0();
  *v4 = v2;
  v4[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10002930C()
{
  result = qword_1000979C8;
  if (!qword_1000979C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979C8);
  }

  return result;
}

unint64_t sub_100029364()
{
  result = qword_1000979D0;
  if (!qword_1000979D0)
  {
    sub_100008154(&qword_1000979D8, qword_100074080);
    sub_100028B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979D0);
  }

  return result;
}

uint64_t sub_1000293E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100028A14();
  *v5 = v2;
  v5[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000294A0()
{
  result = qword_1000979E0;
  if (!qword_1000979E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979E0);
  }

  return result;
}

uint64_t sub_1000294F4()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006A5B0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10006B270();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10006A4B0();
  sub_10000D8DC(v6, qword_1000A5710);
  sub_10000CEB8(v6, qword_1000A5710);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_1000296D4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10006A120();
  return sub_100011580;
}

unint64_t sub_100029748()
{
  result = qword_1000979E8;
  if (!qword_1000979E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979E8);
  }

  return result;
}

uint64_t sub_10002979C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100029F98();
  v5 = sub_10002A040();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100029808()
{
  v0 = qword_100097910;

  return v0;
}

unint64_t sub_100029844()
{
  result = qword_1000979F0;
  if (!qword_1000979F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979F0);
  }

  return result;
}

unint64_t sub_10002989C()
{
  result = qword_1000979F8;
  if (!qword_1000979F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979F8);
  }

  return result;
}

uint64_t sub_100029978(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100029F98();
  v7 = sub_100029FEC();
  v8 = sub_10002A040();
  *v5 = v2;
  v5[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100029A4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100029CA0();
  *a1 = result;
  return result;
}

uint64_t sub_100029A74(uint64_t a1)
{
  v2 = sub_100029748();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100029B10()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = sub_10006B280();
  LOBYTE(v2) = [v2 BOOLForKey:v3];

  *v1 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100029BEC()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = sub_10006B280();
  [v2 setBool:v1 forKey:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100029CA0()
{
  v17[0] = sub_10006A3B0();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007DF0(&qword_100097A00, &qword_1000743E0);
  sub_10006A490();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_10006A0F0();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100028710();
  return sub_10006A150();
}

unint64_t sub_100029F98()
{
  result = qword_100097A08;
  if (!qword_100097A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A08);
  }

  return result;
}

unint64_t sub_100029FEC()
{
  result = qword_100097A10;
  if (!qword_100097A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A10);
  }

  return result;
}

unint64_t sub_10002A040()
{
  result = qword_100097A18;
  if (!qword_100097A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A18);
  }

  return result;
}

uint64_t sub_10002A094@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A420();
  *a1 = result;
  return result;
}

unint64_t sub_10002A0DC()
{
  result = qword_100097A60;
  if (!qword_100097A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A60);
  }

  return result;
}

unint64_t sub_10002A134()
{
  result = qword_100097A68;
  if (!qword_100097A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A68);
  }

  return result;
}

uint64_t sub_10002A188()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006A4A0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006A4B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006A450();
  sub_10000D8DC(v10, qword_1000A5728);
  sub_10000CEB8(v10, qword_1000A5728);
  sub_10006B260();
  sub_10006A5A0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006A4C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006A440();
}

uint64_t sub_10002A464@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v1 - 8);
  v30 = &v24 - v2;
  v3 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v3 - 8);
  v29 = &v24 - v4;
  v5 = sub_10006A4A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A5B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10006B270();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10006A4B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v27 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v26 = &v24 - v15;
  sub_10006B260();
  sub_10006A5A0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v25 = v5;
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v5);
  v18 = v29;
  sub_10006A4C0();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v20 = v30;
  sub_10006A2F0();
  v21 = sub_10006A300();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  *(swift_allocObject() + 16) = xmmword_10006F820;
  sub_10006B260();
  sub_10006A5A0();
  v22 = v25;
  v17(v8, v16, v25);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v22);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_10002A9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_10006A4B0();
  v3[5] = swift_task_alloc();
  v4 = sub_100007DF0(&qword_100097188, &qword_100071420);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10002AAA8, 0, 0);
}

uint64_t sub_10002AAA8()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_100007DF0(&qword_100097B80, &unk_100074CB0);
  v4 = sub_1000095F4(&qword_100097B68, &qword_100097B70, &qword_100074C68, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v0[11] = v4;
  *v2 = v0;
  v2[1] = sub_10002ABB8;
  v5 = v0[8];

  return _AppEntityUpdate.value<A>(of:)(v5, KeyPath, v3, v4);
}

uint64_t sub_10002ABB8()
{

  return _swift_task_switch(sub_10002ACD0, 0, 0);
}

uint64_t sub_10002ACD0()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 64);
    (*(*(v0 + 56) + 96))(v1, *(v0 + 48));
    v2 = *v1;
    sub_100007DF0(&qword_100097B60, &qword_100074C50);
    sub_10006A490();
    v3 = sub_10006A430();
    *(v0 + 96) = v3;
    *(v0 + 16) = v3;
    *(v0 + 128) = v2;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_10002AF08;
    v6 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v6);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10002AF08()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10000ED2C;
  }

  else
  {
    v2 = sub_10002B03C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002B03C()
{
  sub_10002A134();
  sub_10006A000();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002B0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_10002A9B0(a1, v6, a3);
}

unint64_t sub_10002B178()
{
  result = qword_100097A70;
  if (!qword_100097A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A70);
  }

  return result;
}

unint64_t sub_10002B1D0()
{
  result = qword_100097A78;
  if (!qword_100097A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A78);
  }

  return result;
}

unint64_t sub_10002B228()
{
  result = qword_100097A80;
  if (!qword_100097A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A80);
  }

  return result;
}

uint64_t sub_10002B27C()
{
  v0 = qword_100097A40;

  return v0;
}

unint64_t sub_10002B2B8()
{
  result = qword_100097A88;
  if (!qword_100097A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A88);
  }

  return result;
}

uint64_t sub_10002B30C(uint64_t a1)
{
  v2 = sub_10002B178();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000059, 0x8000000100078150, a1, v2);
}

unint64_t sub_10002B374()
{
  result = qword_100097A90;
  if (!qword_100097A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A90);
  }

  return result;
}

unint64_t sub_10002B3CC()
{
  result = qword_100097A98;
  if (!qword_100097A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A98);
  }

  return result;
}

unint64_t sub_10002B424()
{
  result = qword_100097AA0;
  if (!qword_100097AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AA0);
  }

  return result;
}

unint64_t sub_10002B47C()
{
  result = qword_100097AA8;
  if (!qword_100097AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AA8);
  }

  return result;
}

uint64_t sub_10002B4D0(uint64_t a1)
{
  sub_10002CFC8();
  v2 = sub_10006A3C0();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10002B540()
{
  result = qword_100097AB0;
  if (!qword_100097AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AB0);
  }

  return result;
}

unint64_t sub_10002B598()
{
  result = qword_100097AB8;
  if (!qword_100097AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AB8);
  }

  return result;
}

unint64_t sub_10002B5F0()
{
  result = qword_100097AC0;
  if (!qword_100097AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AC0);
  }

  return result;
}

unint64_t sub_10002B648()
{
  result = qword_100097AC8;
  if (!qword_100097AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AC8);
  }

  return result;
}

uint64_t sub_10002B69C@<X0>(uint64_t *a2@<X8>)
{
  sub_10002B8A8();
  result = sub_10006A110();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10002B758(uint64_t a1)
{
  v2 = sub_10002B178();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002B7A8()
{
  result = qword_100097AE0;
  if (!qword_100097AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AE0);
  }

  return result;
}

uint64_t sub_10002B800(uint64_t a1)
{
  v2 = sub_10002B648();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10002B850()
{
  result = qword_100097AE8;
  if (!qword_100097AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AE8);
  }

  return result;
}

unint64_t sub_10002B8A8()
{
  result = qword_100097AF0;
  if (!qword_100097AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AF0);
  }

  return result;
}

uint64_t sub_10002B8FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10006A4B0();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10002B98C, 0, 0);
}

uint64_t sub_10002B98C()
{
  v1 = *(v0 + 16);
  sub_100007DF0(&qword_100097B60, &qword_100074C50);
  sub_10006A490();
  sub_1000095F4(&qword_100097B68, &qword_100097B70, &qword_100074C68, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_10006A430();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002BAA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10002B228();
  *v4 = v2;
  v4[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10002BB58()
{
  result = qword_100097AF8;
  if (!qword_100097AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AF8);
  }

  return result;
}

unint64_t sub_10002BBB0()
{
  result = qword_100097B00;
  if (!qword_100097B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B00);
  }

  return result;
}

uint64_t sub_10002BC04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002B228();
  *v5 = v2;
  v5[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10002BCB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10002B228();
  *v4 = v2;
  v4[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10002BD6C()
{
  result = qword_100097B08;
  if (!qword_100097B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B08);
  }

  return result;
}

unint64_t sub_10002BDC4()
{
  result = qword_100097B10;
  if (!qword_100097B10)
  {
    sub_100008154(&qword_100097B18, qword_1000748D0);
    sub_10002B5F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B10);
  }

  return result;
}

uint64_t sub_10002BE48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002B47C();
  *v5 = v2;
  v5[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10002BF00()
{
  result = qword_100097B20;
  if (!qword_100097B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B20);
  }

  return result;
}

uint64_t sub_10002BF54()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006A5B0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10006B270();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10006A4B0();
  sub_10000D8DC(v6, qword_1000A5740);
  sub_10000CEB8(v6, qword_1000A5740);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_10002C134(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10006A120();
  return sub_100011580;
}

unint64_t sub_10002C1A8()
{
  result = qword_100097B28;
  if (!qword_100097B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B28);
  }

  return result;
}

uint64_t sub_10002C1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002CF20();
  v5 = sub_10002CFC8();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10002C268()
{
  v0 = qword_100097A50;

  return v0;
}

unint64_t sub_10002C2A4()
{
  result = qword_100097B30;
  if (!qword_100097B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B30);
  }

  return result;
}

unint64_t sub_10002C2FC()
{
  result = qword_100097B38;
  if (!qword_100097B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B38);
  }

  return result;
}

uint64_t sub_10002C3D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002CF20();
  v7 = sub_10002CF74();
  v8 = sub_10002CFC8();
  *v5 = v2;
  v5[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10002C4AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002CC28();
  *a1 = result;
  return result;
}

uint64_t sub_10002C4D4(uint64_t a1)
{
  v2 = sub_10002C1A8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10002C570()
{
  sub_10006B370();
  *(v0 + 56) = sub_10006B360();
  v2 = sub_10006B350();

  return _swift_task_switch(sub_10002C604, v2, v1);
}

uint64_t sub_10002C604()
{

  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v1, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  *(v0 + 64) = *(v0 + 40);
  swift_endAccess();

  return _swift_task_switch(sub_10002C6F4, 0, 0);
}

uint64_t sub_10002C6F4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v1 managedObjectContext];
    v4 = [v2 defaultAccountInContext:v3];

    if (v4)
    {
      v5 = [objc_opt_self() sharedController];
      v6 = [v5 isSubscribedToMentionNotificationsForAccount:v4];

      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  **(v0 + 48) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10002C830()
{
  sub_10006B370();
  *(v0 + 72) = sub_10006B360();
  v2 = sub_10006B350();

  return _swift_task_switch(sub_10002C8C4, v2, v1);
}

uint64_t sub_10002C8C4()
{

  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v1, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  *(v0 + 80) = *(v0 + 64);
  swift_endAccess();

  return _swift_task_switch(sub_10002C9B4, 0, 0);
}

uint64_t sub_10002C9B4()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = [*(v0 + 80) managedObjectContext];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    *(v0 + 48) = sub_10002D054;
    *(v0 + 56) = v4;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10002CBE4;
    *(v0 + 40) = &unk_100092F10;
    v5 = _Block_copy((v0 + 16));
    v6 = v1;

    [v3 performBlock:v5];
    _Block_release(v5);
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_10002CAF8(void *a1, char a2)
{
  v4 = objc_opt_self();
  v5 = [a1 managedObjectContext];
  v6 = [v4 defaultAccountInContext:v5];

  if (v6)
  {
    v7 = [objc_opt_self() sharedController];
    [v7 updateSubscriptionPreferenceForMentionNotifications:a2 & 1 forAccount:v6];
  }
}

uint64_t sub_10002CBE4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10002CC28()
{
  v17[0] = sub_10006A3B0();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007DF0(&qword_100097B40, &qword_100074C48);
  sub_10006A490();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_10006A0F0();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_10002B178();
  return sub_10006A150();
}

unint64_t sub_10002CF20()
{
  result = qword_100097B48;
  if (!qword_100097B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B48);
  }

  return result;
}

unint64_t sub_10002CF74()
{
  result = qword_100097B50;
  if (!qword_100097B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B50);
  }

  return result;
}

unint64_t sub_10002CFC8()
{
  result = qword_100097B58;
  if (!qword_100097B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B58);
  }

  return result;
}

uint64_t sub_10002D01C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10002D060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002D078@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A420();
  *a1 = result;
  return result;
}

uint64_t sub_10002D0BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636E6176656C6572;
  }

  else
  {
    v3 = 0x656E696C656D6974;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x636E6176656C6572;
  }

  else
  {
    v5 = 0x656E696C656D6974;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10006B540();
  }

  return v8 & 1;
}

Swift::Int sub_10002D168()
{
  sub_10006B570();
  sub_10006B2B0();

  return sub_10006B580();
}

double sub_10002D1F0(uint64_t a1)
{
  sub_10006B2B0();

  return result;
}

Swift::Int sub_10002D264()
{
  sub_10006B570();
  sub_10006B2B0();

  return sub_10006B580();
}

void sub_10002D2E8(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100092798;
  v7._object = v3;
  v5 = sub_10006B520(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_10002D348(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C656D6974;
  if (*v1)
  {
    v2 = 0x636E6176656C6572;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10002D38C()
{
  v1 = OBJC_IVAR____TtC37com_apple_mobilenotes_WidgetExtension24LastEditedNoteDataSource_logger;
  v2 = sub_10006A6C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LastEditedNoteDataSource(uint64_t a1)
{
  result = qword_100097BB8;
  if (!qword_100097BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002D47C(uint64_t a1)
{
  result = sub_10006A6C0();
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

uint64_t getEnumTagSinglePayload for LastEditedNoteDataSource.DataSourceClient(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LastEditedNoteDataSource.DataSourceClient(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002D678()
{
  result = qword_100097C48;
  if (!qword_100097C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097C48);
  }

  return result;
}

void sub_10002D6CC(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v94 = a5;
  v92 = a4;
  v95 = a3;
  v91 = a2;
  v8 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v78 - v13;
  __chkstk_darwin(v12);
  v93 = &v78 - v15;
  v16 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v78 - v21;
  __chkstk_darwin(v20);
  v24 = &v78 - v23;
  v25 = [a1 identifier];
  if (v25)
  {
    v26 = v25;
    v27 = sub_10006B290();
    v89 = v28;
    v90 = v27;
  }

  else
  {
    v89 = 0xE000000000000000;
    v90 = 0;
  }

  v29 = [a1 title];
  if (v29)
  {
    v30 = v29;
    v31 = sub_10006B290();
    v87 = v32;
    v88 = v31;
  }

  else
  {
    v87 = 0xE000000000000000;
    v88 = 0;
  }

  v33 = [a1 widgetInfoText];
  v34 = sub_10006B290();
  v85 = v35;
  v86 = v34;

  v36 = objc_opt_self();
  v37 = [v36 dateForCurrentSortTypeForNote:a1 folderNoteSortType:v95];
  if (v37)
  {
    v38 = v37;
    sub_10006A540();

    v39 = sub_10006A560();
    (*(*(v39 - 8) + 56))(v22, 0, 1, v39);
  }

  else
  {
    v39 = sub_10006A560();
    (*(*(v39 - 8) + 56))(v22, 1, 1, v39);
  }

  sub_1000096C0(v22, v24, &qword_100097C70, &qword_100076A60);
  sub_10006A560();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v24, 1, v39) == 1)
  {
    sub_100009790(v24, &qword_100097C70, &qword_100076A60);
    v83 = 0xE000000000000000;
    v84 = 0;
  }

  else
  {
    v41 = sub_10006A530();
    v83 = v42;
    v84 = v41;
    (*(v40 + 8))(v24, v39);
  }

  v43 = [v36 dateForCurrentSortTypeAccessibilityStringForNote:a1 folderNoteSortType:v95];
  if (v43)
  {
    v44 = v43;
    v45 = sub_10006B290();
    v81 = v46;
    v82 = v45;
  }

  else
  {
    v81 = 0xE000000000000000;
    v82 = 0;
  }

  v80 = [a1 isSharedViaICloud];
  v47 = [a1 modificationDate];
  if (v47)
  {
    v48 = v47;
    sub_10006A540();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  (*(v40 + 56))(v19, v49, 1, v39);
  v50 = [a1 shareDescription];
  if (v50)
  {
    v51 = v50;
    v79 = sub_10006B290();
    v53 = v52;
  }

  else
  {
    v79 = 0;
    v53 = 0;
  }

  v54 = v94;
  if (v94 == 0xFF)
  {
    v60 = sub_10006A520();
    (*(*(v60 - 8) + 56))(v14, 1, 1, v60);
  }

  else
  {
    v55 = v92;
    v56 = v92;
    sub_10002DEEC(a1, v55, v54 & 1, v14);
    sub_100030A38(v55, v54);
    v57 = sub_10006A520();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v14, 1, v57) != 1)
    {
      v59 = v93;
      (*(v58 + 32))(v93, v14, v57);
      (*(v58 + 56))(v59, 0, 1, v57);
      goto LABEL_31;
    }
  }

  v61 = [objc_opt_self() appURLForNote:a1];
  if (v61)
  {
    v62 = v61;
    sub_10006A4F0();

    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = sub_10006A520();
  v65 = *(v64 - 8);
  (*(v65 + 56))(v11, v63, 1, v64);
  sub_1000096C0(v11, v93, &qword_100096B30, &qword_10006F548);
  if ((*(v65 + 48))(v14, 1, v64) != 1)
  {
    sub_100009790(v14, &qword_100096B30, &qword_10006F548);
  }

LABEL_31:
  v66 = sub_1000301BC(a1);
  if (v91)
  {
    v67 = sub_10000D430(a1);
  }

  else
  {
    v67 = &_swiftEmptyArrayStorage;
  }

  v68 = sub_1000306D4(a1, 10);
  v69 = sub_1000306D4(a1, 11);
  v70 = [a1 ic_hasLightBackground];
  v71 = v89;
  *a6 = v90;
  *(a6 + 8) = v71;
  v72 = v87;
  *(a6 + 16) = v88;
  *(a6 + 24) = v72;
  v73 = v85;
  *(a6 + 32) = v86;
  *(a6 + 40) = v73;
  v74 = v83;
  *(a6 + 48) = v84;
  *(a6 + 56) = v74;
  v75 = v81;
  *(a6 + 64) = v82;
  *(a6 + 72) = v75;
  *(a6 + 80) = v80;
  v76 = type metadata accessor for Note(0);
  sub_1000096C0(v19, a6 + v76[10], &qword_100097C70, &qword_100076A60);
  v77 = (a6 + v76[11]);
  *v77 = v79;
  v77[1] = v53;
  sub_1000096C0(v93, a6 + v76[12], &qword_100096B30, &qword_10006F548);
  *(a6 + v76[13]) = v66;
  *(a6 + v76[14]) = v67;
  *(a6 + v76[15]) = v68;
  *(a6 + v76[16]) = v69;
  *(a6 + v76[17]) = v70;
  [a1 turnAttachmentsIntoFaults];
  sub_100030A38(v92, v94);
}

uint64_t sub_10002DEA0()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_100097C50);
  sub_10000CEB8(v0, qword_100097C50);
  return sub_10006A6A0();
}

uint64_t sub_10002DEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = objc_opt_self();
  if (a3)
  {
    v15 = [v14 appURLForNote:a1 inVirtualSmartFolder:a2];
    if (v15)
    {
      v16 = v15;
      sub_10006A4F0();

      v17 = sub_10006A520();
      (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    }

    else
    {
      v21 = sub_10006A520();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    }

    v13 = v11;
  }

  else
  {
    v18 = [v14 appURLForNote:a1 inFolder:a2];
    if (v18)
    {
      v19 = v18;
      sub_10006A4F0();

      v20 = sub_10006A520();
      (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
    }

    else
    {
      v22 = sub_10006A520();
      (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
    }
  }

  return sub_1000096C0(v13, a4, &qword_100096B30, &qword_10006F548);
}

id sub_10002E110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v7 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v8 = __chkstk_darwin(v7 - 8);
  v59 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v52 - v11;
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  v15 = [a1 identifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_10006B290();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  result = [a1 title];
  if (result)
  {
    v21 = result;
    v57 = v19;
    v58 = v17;
    v22 = sub_10006B290();
    v55 = v23;
    v56 = v22;

    v24 = [a1 widgetInfoText];
    v25 = sub_10006B290();
    v53 = v26;
    v54 = v25;

    v27 = objc_opt_self();
    v28 = [v27 dateForCurrentSortTypeForNote:a1 folderNoteSortType:0];
    if (v28)
    {
      v29 = v28;
      sub_10006A540();

      v30 = sub_10006A560();
      (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
    }

    else
    {
      v30 = sub_10006A560();
      (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
    }

    sub_1000096C0(v12, v14, &qword_100097C70, &qword_100076A60);
    sub_10006A560();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v14, 1, v30) == 1)
    {
      sub_100009790(v14, &qword_100097C70, &qword_100076A60);
      v32 = 0;
      v33 = 0xE000000000000000;
    }

    else
    {
      v32 = sub_10006A530();
      v33 = v34;
      (*(v31 + 8))(v14, v30);
    }

    v35 = [v27 dateForCurrentSortTypeAccessibilityStringForNote:a1 folderNoteSortType:0];
    if (v35)
    {
      v36 = v35;
      v37 = sub_10006B290();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v40 = 1;
    (*(v31 + 56))(v59, 1, 1, v30);
    v41 = [objc_opt_self() appURLForHTMLNote:a1];
    if (v41)
    {
      v42 = v41;
      sub_10006A4F0();

      v40 = 0;
    }

    v43 = v58;
    v44 = sub_10006A520();
    (*(*(v44 - 8) + 56))(v6, v40, 1, v44);

    v46 = v56;
    v45 = v57;
    *a2 = v43;
    *(a2 + 8) = v45;
    v48 = v54;
    v47 = v55;
    *(a2 + 16) = v46;
    *(a2 + 24) = v47;
    v49 = v53;
    *(a2 + 32) = v48;
    *(a2 + 40) = v49;
    *(a2 + 48) = v32;
    *(a2 + 56) = v33;
    *(a2 + 64) = v37;
    *(a2 + 72) = v39;
    *(a2 + 80) = 0;
    v50 = type metadata accessor for Note(0);
    sub_1000096C0(v59, a2 + v50[10], &qword_100097C70, &qword_100076A60);
    v51 = (a2 + v50[11]);
    *v51 = 0;
    v51[1] = 0;
    result = sub_1000096C0(v6, a2 + v50[12], &qword_100096B30, &qword_10006F548);
    *(a2 + v50[13]) = 0;
    *(a2 + v50[14]) = &_swiftEmptyArrayStorage;
    *(a2 + v50[15]) = 0;
    *(a2 + v50[16]) = 0;
    *(a2 + v50[17]) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002E5E4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a2;
  v101 = a3;
  v103 = a4;
  v104 = a1;
  v96 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v4 = __chkstk_darwin(v96);
  v97 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v93 = v89 - v7;
  v8 = __chkstk_darwin(v6);
  v94 = v89 - v9;
  __chkstk_darwin(v8);
  v98 = v89 - v10;
  v11 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v11 - 8);
  v13 = v89 - v12;
  v14 = sub_10006A520();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v92 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v99 = v89 - v18;
  v19 = sub_10006A590();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Note(0);
  v102 = *(v23 - 1);
  v24 = __chkstk_darwin(v23);
  v95 = v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = v89 - v26;
  sub_10006A580();
  v28 = sub_10006A570();
  v30 = v29;
  v31 = v19;
  v32 = v15;
  v33 = v104;
  (*(v20 + 8))(v22, v31);
  *v27 = v28;
  *(v27 + 1) = v30;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0xE000000000000000;
  *(v27 + 4) = 0;
  *(v27 + 5) = 0xE000000000000000;
  *(v27 + 6) = 0;
  *(v27 + 7) = 0xE000000000000000;
  *(v27 + 8) = 0;
  *(v27 + 9) = 0xE000000000000000;
  v27[80] = 0;
  v34 = v23[10];
  v35 = sub_10006A560();
  (*(*(v35 - 8) + 56))(&v27[v34], 1, 1, v35);
  v36 = &v27[v23[11]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = *(v32 + 56);
  v37(&v27[v23[12]], 1, 1, v14);
  *&v27[v23[13]] = 0;
  *&v27[v23[14]] = &_swiftEmptyArrayStorage;
  *&v27[v23[15]] = 0;
  *&v27[v23[16]] = 0;
  v27[v23[17]] = 0;
  v38 = [v33 identifier];
  if (!v38)
  {
    v37(v13, 1, 1, v14);
    goto LABEL_6;
  }

  v39 = v38;
  sub_10006B290();

  sub_10006A510();
  swift_bridgeObjectRelease_n();
  if ((*(v32 + 48))(v13, 1, v14) == 1)
  {
LABEL_6:
    sub_100009790(v13, &qword_100096B30, &qword_10006F548);
    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v53 = sub_10006A6C0();
    sub_10000CEB8(v53, qword_100097C50);
    v54 = v33;
    v55 = sub_10006A6B0();
    v56 = sub_10006B3A0();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v105[0] = v58;
      *v57 = 136315138;
      v59 = [v54 identifier];
      if (v59)
      {
        v60 = v59;
        v61 = sub_10006B290();
        v63 = v62;
      }

      else
      {
        v63 = 0xA300000000000000;
        v61 = 9732322;
      }

      v71 = sub_1000378C4(v61, v63, v105);

      *(v57 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v55, v56, "Cannot create note URL from intent note identifier — returning nil {identifier: %s}", v57, 0xCu);
      sub_10000804C(v58);
    }

    else
    {
    }

    sub_100030A4C(v27);
    v41 = v102;
    return (*(v41 + 56))(v103, 1, 1, v23);
  }

  v90 = v14;
  v91 = v32;
  v40 = v99;
  (*(v32 + 32))(v99, v13, v14);
  v41 = v102;
  v42 = v98;
  v89[0] = *(v102 + 56);
  v89[1] = v102 + 56;
  (v89[0])(v98, 1, 1, v23);
  v43 = objc_opt_self();
  sub_10006A4E0(v44);
  v46 = v45;
  v47 = [v43 isShowNoteURL:v45];

  if (v47)
  {
    v49 = v100;
    v50 = [v100 managedObjectContext];
    __chkstk_darwin(v50);
    v89[-2] = v40;
    v89[-1] = v49;
    v51 = v94;
    sub_10006B410();

    sub_100009790(v42, &qword_100097C78, &unk_100076050);
    sub_100030A4C(v27);
    sub_1000096C0(v51, v42, &qword_100097C78, &unk_100076050);
    v52 = v97;
  }

  else
  {
    sub_10006A4E0(v48);
    v65 = v64;
    v66 = [v43 isShowHTMLNoteURL:v64];

    if (v66)
    {
      v67 = v101;
      v68 = [v101 managedObjectContext];
      if (v68)
      {
        v69 = v68;
        __chkstk_darwin(v68);
        v89[-2] = v40;
        v89[-1] = v67;
        v70 = v93;
        sub_10006B410();

        sub_100009790(v42, &qword_100097C78, &unk_100076050);
        sub_100030A4C(v27);
      }

      else
      {

        sub_100009790(v42, &qword_100097C78, &unk_100076050);
        sub_100030A4C(v27);
        v70 = v93;
        (v89[0])(v93, 1, 1, v23);
      }

      v52 = v97;
      sub_1000096C0(v70, v42, &qword_100097C78, &unk_100076050);
    }

    else
    {
      if (qword_1000968D0 != -1)
      {
        swift_once();
      }

      v73 = sub_10006A6C0();
      sub_10000CEB8(v73, qword_100097C50);
      v75 = v91;
      v74 = v92;
      v76 = v90;
      (*(v91 + 16))(v92, v99, v90);
      v77 = sub_10006A6B0();
      v78 = sub_10006B3A0();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v105[0] = v96;
        *v79 = 136315138;
        sub_100030AA8();
        v80 = sub_10006B530();
        v81 = v74;
        v82 = v80;
        v84 = v83;
        (*(v75 + 8))(v81, v76);
        v85 = sub_1000378C4(v82, v84, v105);

        *(v79 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v77, v78, "Unknown note URL type — returning nil {noteURL: %s}", v79, 0xCu);
        sub_10000804C(v96);
      }

      else
      {

        (*(v75 + 8))(v74, v76);
      }

      sub_100030A4C(v27);
      v52 = v97;
      v42 = v98;
    }
  }

  sub_1000096C0(v42, v52, &qword_100097C78, &unk_100076050);
  if ((*(v41 + 48))(v52, 1, v23) == 1)
  {
    sub_100009790(v52, &qword_100097C78, &unk_100076050);
    (*(v91 + 8))(v99, v90);
    return (*(v41 + 56))(v103, 1, 1, v23);
  }

  v86 = v52;
  v87 = v95;
  sub_1000081F0(v86, v95);
  sub_1000081F0(v87, v27);
  (*(v91 + 8))(v99, v90);
  v88 = v103;
  sub_1000081F0(v27, v103);
  return (v89[0])(v88, 0, 1, v23);
}

uint64_t sub_10002F1A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = sub_10006A520();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v60 - v10;
  v12 = objc_opt_self();
  sub_10006A4E0(v13);
  v15 = v14;
  v16 = [v12 predicateForNotesMentionedInURL:v14];

  sub_10000D894(0, &qword_100097C80, ICNote_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [a2 managedObjectContext];
  v61 = v16;
  v19 = [ObjCClassFromMetadata ic_objectsMatchingPredicate:v16 context:v18];

  sub_10000D894(0, &qword_100097C88, NSManagedObject_ptr);
  v20 = sub_10006B320();

  if (!(v20 >> 62))
  {
    v21 = v5;
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_20:

    if (qword_1000968D0 == -1)
    {
LABEL_21:
      v49 = sub_10006A6C0();
      sub_10000CEB8(v49, qword_100097C50);
      (*(v6 + 16))(v11, a1, v21);
      v50 = sub_10006A6B0();
      v51 = sub_10006B3A0();
      if (!os_log_type_enabled(v50, v51))
      {

        (*(v6 + 8))(v11, v21);
        goto LABEL_25;
      }

      v52 = v6;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v53 = 136315138;
      sub_100030AA8();
      v55 = sub_10006B530();
      v57 = v56;
      (*(v52 + 8))(v11, v21);
      v58 = sub_1000378C4(v55, v57, &v63);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Cannot find object for note URL — returning nil {noteURL: %s}", v53, 0xCu);
      sub_10000804C(v54);

      goto LABEL_23;
    }

LABEL_28:
    swift_once();
    goto LABEL_21;
  }

  v21 = v5;
  if (!sub_10006B4F0())
  {
    goto LABEL_20;
  }

LABEL_3:
  v22 = v6;
  if ((v20 & 0xC000000000000001) == 0)
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v20 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_28;
  }

  v23 = sub_10006B480();
LABEL_6:
  v24 = v23;

  v25 = [objc_opt_self() sharedWidget];
  v26 = [v25 hidesObject:v24];

  if ((v26 & 1) == 0)
  {
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      v37 = v36;
      v38 = v24;
      v39 = v62;
      sub_10002D6CC(v37, 1, 0, 0, 0xFFu, v62);

      v40 = type metadata accessor for Note(0);
      return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
    }

    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v42 = sub_10006A6C0();
    sub_10000CEB8(v42, qword_100097C50);
    v43 = v24;
    v44 = sub_10006A6B0();
    v45 = sub_10006B3A0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = [v43 objectID];
      *(v46 + 4) = v48;
      *v47 = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "Unknown note object type — returning nil {objectID: %@}", v46, 0xCu);
      sub_100009790(v47, &qword_100096D40, &unk_10006F770);
    }

    goto LABEL_23;
  }

  if (qword_1000968D0 != -1)
  {
    swift_once();
  }

  v27 = sub_10006A6C0();
  sub_10000CEB8(v27, qword_100097C50);
  (*(v6 + 16))(v9, a1, v21);
  v28 = v21;
  v29 = sub_10006A6B0();
  v30 = sub_10006B380();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v63 = v60;
    *v31 = 136315138;
    sub_100030AA8();
    v32 = sub_10006B530();
    v34 = v33;
    (*(v22 + 8))(v9, v28);
    v35 = sub_1000378C4(v32, v34, &v63);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "Widget hides object for note URL — returning nil {noteURL: %s}", v31, 0xCu);
    sub_10000804C(v60);

LABEL_23:
    goto LABEL_25;
  }

  (*(v6 + 8))(v9, v28);
LABEL_25:
  v59 = type metadata accessor for Note(0);
  return (*(*(v59 - 8) + 56))(v62, 1, 1, v59);
}

uint64_t sub_10002F938@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = sub_10006A520();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v74 - v11;
  __chkstk_darwin(v10);
  v14 = &v74 - v13;
  v15 = objc_opt_self();
  sub_10006A4E0(v16);
  v18 = v17;
  v19 = [v15 objectIDURIRepresentationForHTMLNoteMentionedInURL:v17];

  if (!v19)
  {
    goto LABEL_13;
  }

  v79 = v12;
  v20 = v14;
  sub_10006A4F0();

  v21 = [a2 managedObjectContext];
  if (!v21 || (v22 = v21, v23 = [v21 persistentStoreCoordinator], v22, !v23) || (sub_10006A4E0(v24), v26 = v25, v27 = objc_msgSend(v23, "managedObjectIDForURIRepresentation:", v25), v78 = v5, v28 = v27, v23, v26, v29 = v28, v5 = v78, !v29))
  {
    (*(v6 + 8))(v14, v5);
LABEL_13:
    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v49 = sub_10006A6C0();
    sub_10000CEB8(v49, qword_100097C50);
    (*(v6 + 16))(v9, a1, v5);
    v50 = sub_10006A6B0();
    v51 = sub_10006B3A0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v82 = v53;
      *v52 = 136315138;
      sub_100030AA8();
      v54 = sub_10006B530();
      v56 = v55;
      (*(v6 + 8))(v9, v5);
      v57 = sub_1000378C4(v54, v56, &v82);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Cannot find HTML object for note URL — returning nil {noteURL: %s}", v52, 0xCu);
      sub_10000804C(v53);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    goto LABEL_18;
  }

  v30 = [a2 managedObjectContext];
  if (!v30)
  {
    (*(v6 + 8))(v14, v5);

    goto LABEL_13;
  }

  v82 = 0;
  v31 = v30;
  v32 = [v30 existingObjectWithID:v29 error:&v82];

  v33 = v82;
  v34 = v29;
  if (!v32)
  {
    v62 = v82;
    sub_10006A480();

    swift_willThrow();

    v5 = v78;
    (*(v6 + 8))(v20, v78);
    v81 = 0;
    goto LABEL_13;
  }

  v77 = v29;
  v35 = objc_opt_self();
  v36 = v33;
  v37 = [v35 sharedWidget];
  LOBYTE(v35) = [v37 hidesObject:v32];

  if (v35)
  {
    v75 = v20;
    v76 = v32;
    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v38 = sub_10006A6C0();
    sub_10000CEB8(v38, qword_100097C50);
    v40 = v78;
    v39 = v79;
    (*(v6 + 16))(v79, a1, v78);
    v41 = sub_10006A6B0();
    v42 = sub_10006B380();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v82 = v74;
      *v43 = 136315138;
      sub_100030AA8();
      v44 = sub_10006B530();
      v46 = v45;
      v47 = *(v6 + 8);
      v47(v39, v40);
      v48 = sub_1000378C4(v44, v46, &v82);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "Widget hides HTML object for note URL — returning nil {noteURL: %s}", v43, 0xCu);
      sub_10000804C(v74);

      v47(v75, v40);
    }

    else
    {

      v66 = *(v6 + 8);
      v66(v39, v40);
      v66(v75, v40);
    }
  }

  else
  {
    objc_opt_self();
    v63 = swift_dynamicCastObjCClass();
    if (v63)
    {
      v64 = v63;
      v65 = v32;
      v59 = v80;
      sub_10002E110(v64, v80);

      (*(v6 + 8))(v20, v78);
      v58 = 0;
      goto LABEL_19;
    }

    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v67 = sub_10006A6C0();
    sub_10000CEB8(v67, qword_100097C50);
    v68 = v32;
    v69 = sub_10006A6B0();
    v70 = sub_10006B3A0();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      v73 = [v68 objectID];
      *(v71 + 4) = v73;
      *v72 = v73;
      _os_log_impl(&_mh_execute_header, v69, v70, "Unknown HTML note object type — returning nil {objectID: %@}", v71, 0xCu);
      sub_100009790(v72, &qword_100096D40, &unk_10006F770);
    }

    (*(v6 + 8))(v20, v78);
  }

LABEL_18:
  v58 = 1;
  v59 = v80;
LABEL_19:
  v60 = type metadata accessor for Note(0);
  return (*(*(v60 - 8) + 56))(v59, v58, 1, v60);
}

id sub_1000301BC(void *a1)
{
  v2 = sub_10006A520();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 updateThumbnailAttachmentIdentifier];
  result = [a1 managedObjectContext];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [a1 thumbnailAttachmentIdentifier];
  if (!v8 || (v9 = v8, sub_10000D894(0, &qword_100097C68, ICAttachment_ptr), v10 = [swift_getObjCClassFromMetadata() cloudObjectWithIdentifier:v9 context:v7], v9, !v10))
  {
LABEL_21:

    return 0;
  }

  v11 = objc_opt_self();
  [v11 ic_scale];
  v13 = [v10 attachmentPreviewImageWithMinSize:32.0 scale:{32.0, v12}];
  if (!v13)
  {
    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v23 = sub_10006A6C0();
    sub_10000CEB8(v23, qword_100097C50);
    v24 = v10;
    v25 = sub_10006A6B0();
    v26 = sub_10006B3A0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = [v24 objectID];
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Cannot create preview image for attachment — returning nil preview image {objectID: %@}", v27, 0xCu);
      sub_100009790(v28, &qword_100096D40, &unk_10006F770);
    }

    else
    {
    }

    goto LABEL_21;
  }

  v14 = v13;
  v15 = [v13 previewImageURL];
  if (!v15)
  {
    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v30 = sub_10006A6C0();
    sub_10000CEB8(v30, qword_100097C50);
    v31 = v10;
    v32 = sub_10006A6B0();
    v33 = sub_10006B3A0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = [v31 objectID];
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Cannot get previewImageURL for preview image - returning nil preview image {objectID: %@}", v34, 0xCu);
      sub_100009790(v35, &qword_100096D40, &unk_10006F770);
    }

    else
    {
    }

    goto LABEL_21;
  }

  v38 = v14;
  v16 = v15;
  sub_10006A4F0();

  sub_10006A500();
  v17 = objc_allocWithZone(UIImage);
  v18 = sub_10006B280();

  v19 = [v17 initWithContentsOfFile:v18];

  if (v19)
  {
    [v11 ic_scale];
    v21 = [v19 ic_scaledImageMinDimension:32.0 scale:v20];
    v22 = sub_10006AE90();
  }

  else
  {

    v22 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v22;
}

uint64_t sub_1000306D4(void *a1, uint64_t a2)
{
  v3 = sub_10006A680();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 isSystemPaper];
  result = 0;
  if (v7)
  {
    sub_10006A660();
    sub_10006A640();
    v9 = [a1 account];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 identifier];

      if (v11)
      {
        sub_10006B290();
      }
    }

    v12 = [a1 identifier];
    if (v12)
    {
      v13 = v12;
      sub_10006B290();
    }

    sub_10006A650();

    sub_10006A670();
    v14 = sub_10006AE90();

    (*(v4 + 8))(v6, v3);
    return v14;
  }

  return result;
}

void sub_100030A38(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_100030A4C(uint64_t a1)
{
  v2 = type metadata accessor for Note(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100030AA8()
{
  result = qword_100096D38;
  if (!qword_100096D38)
  {
    sub_10006A520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096D38);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for TelephonyUtilitiesFeature(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s37com_apple_mobilenotes_WidgetExtension25TelephonyUtilitiesFeatureVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s37com_apple_mobilenotes_WidgetExtension25TelephonyUtilitiesFeatureVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_100030C44()
{
  result = qword_100097C90;
  if (!qword_100097C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097C90);
  }

  return result;
}

unint64_t sub_100030C98()
{
  result = qword_100097C98;
  if (!qword_100097C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097C98);
  }

  return result;
}

uint64_t sub_100030DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10006B460();
  v6._countAndFlagsBits = 47;
  v6._object = 0xE100000000000000;
  sub_10006B2C0(v6);
  v7._countAndFlagsBits = sub_10006B460();
  sub_10006B2C0(v7);

  return v5;
}

unint64_t sub_100030E4C()
{
  result = qword_100097CA0;
  if (!qword_100097CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CA0);
  }

  return result;
}

unint64_t sub_100030EA0()
{
  result = qword_100097CA8;
  if (!qword_100097CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CA8);
  }

  return result;
}

unint64_t sub_100030F20()
{
  result = qword_100097CB0;
  if (!qword_100097CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CB0);
  }

  return result;
}

unint64_t sub_100030F74()
{
  result = qword_100097CB8;
  if (!qword_100097CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CB8);
  }

  return result;
}

unint64_t sub_100030FF4()
{
  result = qword_100097CC0;
  if (!qword_100097CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CC0);
  }

  return result;
}

unint64_t sub_100031048()
{
  result = qword_100097CC8;
  if (!qword_100097CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CC8);
  }

  return result;
}

unint64_t sub_1000310C8()
{
  result = qword_100097CD0;
  if (!qword_100097CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CD0);
  }

  return result;
}

unint64_t sub_10003111C()
{
  result = qword_100097CD8;
  if (!qword_100097CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CD8);
  }

  return result;
}

uint64_t sub_1000311AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000311E8()
{
  result = qword_100097CE0;
  if (!qword_100097CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CE0);
  }

  return result;
}

uint64_t sub_100031274()
{
  sub_10006A8E0();
  sub_100031DE0(&qword_100097D30, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10006A960();
  return v1;
}

void *sub_1000312F0@<X0>(_BYTE *a1@<X8>)
{
  sub_10006A8E0();
  sub_100031DE0(&qword_100097D30, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10006A960();
  *a1 = v3;
  return result;
}

uint64_t sub_1000313A4(uint64_t a1)
{
  v2 = sub_10006B0C0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10006A910();
}

uint64_t sub_10003146C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_100007DF0(&qword_100097CE8, &qword_1000751B8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v36 - v3;
  v37 = sub_100007DF0(&qword_100097CF0, &qword_1000751C0);
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v36 - v5;
  v7 = sub_100007DF0(&qword_100097CF8, &qword_1000751C8);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  __chkstk_darwin(v7);
  v36 = &v36 - v9;
  v10 = sub_100007DF0(&qword_100097D00, &unk_1000751D0);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  __chkstk_darwin(v10);
  v38 = &v36 - v12;
  sub_10006B290();
  sub_100031BD4();
  type metadata accessor for NoteTimelineProvider();
  v45 = swift_allocObject();
  type metadata accessor for NoteWidgetView(0);
  sub_100031DE0(&qword_100097D10, type metadata accessor for NoteWidgetView, &unk_100075608);
  sub_100031DE0(&qword_100097D18, type metadata accessor for NoteTimelineProvider, &unk_100075FD8);
  sub_10006B160();
  sub_100007DF0(&qword_100097D20, &qword_100076AF0);
  v13 = sub_10006B100();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10006F820;
  (*(v14 + 104))(v16 + v15, enum case for WidgetFamily.systemSmall(_:), v13);
  v17 = sub_100031C20();
  sub_10006AA10();

  (*(v2 + 8))(v4, v1);
  sub_10006A980();
  v18 = sub_10006AC90();
  v20 = v19;
  v22 = v21;
  v45 = v1;
  v46 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v36;
  v24 = v37;
  sub_10006AA30();
  sub_10000832C(v18, v20, v22 & 1);

  v26 = v24;
  (*(v39 + 8))(v6, v24);
  sub_10006A980();
  v27 = sub_10006AC90();
  v29 = v28;
  LOBYTE(v20) = v30;
  v45 = v26;
  v46 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v38;
  v33 = v40;
  sub_10006AA00();
  sub_10000832C(v27, v29, v20 & 1);

  (*(v41 + 8))(v25, v33);
  v45 = v33;
  v46 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  sub_10006AA40();
  return (*(v43 + 8))(v32, v34);
}

uint64_t sub_100031AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s5EntryVMa_0(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031C84(a1, v7);
  sub_100031CE8(&v7[*(v5 + 28)], a2);
  sub_100031D58(v7);
  KeyPath = swift_getKeyPath();
  v9 = type metadata accessor for NoteWidgetView(0);
  *(a2 + v9[5]) = KeyPath;
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  swift_storeEnumTagMultiPayload();
  result = swift_getKeyPath();
  v11 = a2 + v9[6];
  *v11 = result;
  *(v11 + 8) = 0;
  *(a2 + v9[7]) = 10;
  return result;
}

unint64_t sub_100031BD4()
{
  result = qword_100097D08;
  if (!qword_100097D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100097D08);
  }

  return result;
}

unint64_t sub_100031C20()
{
  result = qword_100097D28;
  if (!qword_100097D28)
  {
    sub_100008154(&qword_100097CE8, &qword_1000751B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097D28);
  }

  return result;
}

uint64_t sub_100031C84(uint64_t a1, uint64_t a2)
{
  v4 = _s5EntryVMa_0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031D58(uint64_t a1)
{
  v2 = _s5EntryVMa_0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100031DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100031E28()
{
  sub_100008154(&qword_100097D00, &unk_1000751D0);
  sub_100008154(&qword_100097CF8, &qword_1000751C8);
  sub_100008154(&qword_100097CF0, &qword_1000751C0);
  sub_100008154(&qword_100097CE8, &qword_1000751B8);
  sub_100031C20();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100031F74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100097D40, &qword_1000752F0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_10006AEA0();
  }

  v13 = 3;
  if (v11 < 3)
  {
    v13 = v11;
  }

  v18[1] = sub_10005D58C((a1 + 32), 0, (2 * v13) | 1);
  swift_getKeyPath();
  sub_100007DF0(&qword_100097D48, &qword_100075318);
  sub_1000095F4(&qword_100097D50, &qword_100097D48, &qword_100075318, &protocol conformance descriptor for [A]);
  sub_100032890();
  sub_10006AF50();
  v14 = *(v5 + 16);
  v14(v8, v10, v4);
  *a2 = v12;
  v15 = sub_100007DF0(&qword_100097D60, &qword_100075320);
  v14(a2 + *(v15 + 48), v8, v4);
  v16 = *(v5 + 8);
  v16(v10, v4);
  v16(v8, v4);
}

uint64_t sub_1000321F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_10006A970();
  *(a1 + 8) = 0xC028000000000000;
  *(a1 + 16) = 0;
  v4 = sub_100007DF0(&qword_100097D38, &qword_1000752E8);
  return sub_100031F74(v3, (a1 + *(v4 + 44)));
}

double sub_100032250@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_10006ABF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100096CE0, &unk_1000753B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v55 - v8;
  v10 = sub_10006AEB0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
  sub_10006AF00();
  (*(v11 + 8))(v13, v10);
  sub_10006B0E0();
  v14 = sub_10006B0F0();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  sub_10006AEF0();

  sub_100032954(v9);
  v15 = a2 + *(sub_100007DF0(&qword_100096CF8, &qword_10006F730) + 36);
  *v15 = 0x3FF0000000000000;
  *(v15 + 8) = 0;
  sub_10006AFB0();
  sub_10006A790();
  v16 = (a2 + *(sub_100007DF0(&qword_100097D78, &qword_1000753C0) + 36));
  v17 = v56[7];
  *v16 = v56[6];
  v16[1] = v17;
  v16[2] = v56[8];
  v18 = (a2 + *(sub_100007DF0(&qword_100097D80, &qword_1000753C8) + 36));
  v19 = *(sub_100007DF0(&qword_100097D88, &qword_1000753D0) + 28);
  v20 = enum case for Image.Scale.large(_:);
  v21 = sub_10006AEE0();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  (*(v4 + 104))(v6, enum case for Font.TextStyle.footnote(_:), v3);
  v22 = sub_10006AB90();
  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();
  v24 = (a2 + *(sub_100007DF0(&qword_100097D90, &qword_100075438) + 36));
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = sub_10006ADF0();
  *(a2 + *(sub_100007DF0(&qword_100097D98, &qword_100075440) + 36)) = v25;
  v26 = sub_10006AE20();
  LOBYTE(v6) = sub_10006AB30();
  v27 = a2 + *(sub_100007DF0(&qword_100097DA0, &qword_100075448) + 36);
  *v27 = v26;
  *(v27 + 8) = v6;
  LOBYTE(v26) = sub_10006AB30();
  sub_10006A720();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = a2 + *(sub_100007DF0(&qword_100097DA8, &qword_100075450) + 36);
  *v36 = v26;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  *(v36 + 32) = v35;
  *(v36 + 40) = 0;
  *(a2 + *(sub_100007DF0(&qword_100097DB0, &qword_100075458) + 36)) = 256;
  v37 = sub_10006AE20();
  sub_10006A760();
  v38 = v57;
  LODWORD(v13) = v58;
  LODWORD(v11) = v59;
  v39 = v60;
  v40 = v61;
  v41 = v62;
  v42 = sub_10006AFB0();
  v44 = v43;
  v45 = sub_10006AFB0();
  v47 = v46;
  *&v65 = v38 * 0.5;
  *(&v65 + 1) = v38;
  *&v66 = __PAIR64__(v11, v13);
  *(&v66 + 1) = v39;
  *&v67 = v40;
  *(&v67 + 1) = v41;
  *&v68 = v37;
  WORD4(v68) = 256;
  *(&v68 + 10) = v63;
  HIWORD(v68) = v64;
  *&v69 = v42;
  *(&v69 + 1) = v44;
  *&v70 = v45;
  *(&v70 + 1) = v46;
  v48 = (a2 + *(sub_100007DF0(&qword_100097DB8, &qword_100075460) + 36));
  v49 = v68;
  v48[2] = v67;
  v48[3] = v49;
  v50 = v70;
  v48[4] = v69;
  v48[5] = v50;
  v51 = v66;
  *v48 = v65;
  v48[1] = v51;
  v71[0] = v38 * 0.5;
  v71[1] = v38;
  v72 = v13;
  v73 = v11;
  v74 = v39;
  v75 = v40;
  v76 = v41;
  v77 = v37;
  v78 = 256;
  v80 = v64;
  v79 = v63;
  v81 = v42;
  v82 = v44;
  v83 = v45;
  v84 = v47;
  sub_1000329CC(&v65, v56);
  sub_100032A3C(v71);
  v52 = sub_10006AE80();
  v53 = a2 + *(sub_100007DF0(&qword_100097DC8, &unk_100075470) + 36);
  *v53 = v52;
  result = 3.0;
  *(v53 + 8) = xmmword_100075250;
  *(v53 + 24) = 0x3FF0000000000000;
  return result;
}

unint64_t sub_100032890()
{
  result = qword_100097D58;
  if (!qword_100097D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097D58);
  }

  return result;
}

uint64_t sub_100032954(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100096CE0, &unk_1000753B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000329CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100097DC0, &qword_100075468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032A3C(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100097DC0, &qword_100075468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100032AA8()
{
  result = qword_100097DD0;
  if (!qword_100097DD0)
  {
    sub_100008154(&qword_100097DC8, &unk_100075470);
    sub_100032B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DD0);
  }

  return result;
}

unint64_t sub_100032B34()
{
  result = qword_100097DD8;
  if (!qword_100097DD8)
  {
    sub_100008154(&qword_100097DB8, &qword_100075460);
    sub_100032BEC();
    sub_1000095F4(&qword_100097E58, &qword_100097DC0, &qword_100075468, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DD8);
  }

  return result;
}

unint64_t sub_100032BEC()
{
  result = qword_100097DE0;
  if (!qword_100097DE0)
  {
    sub_100008154(&qword_100097DB0, &qword_100075458);
    sub_100032CA4();
    sub_1000095F4(&qword_100097E48, &qword_100097E50, &qword_100075490, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DE0);
  }

  return result;
}

unint64_t sub_100032CA4()
{
  result = qword_100097DE8;
  if (!qword_100097DE8)
  {
    sub_100008154(&qword_100097DA8, &qword_100075450);
    sub_100032D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DE8);
  }

  return result;
}

unint64_t sub_100032D30()
{
  result = qword_100097DF0;
  if (!qword_100097DF0)
  {
    sub_100008154(&qword_100097DA0, &qword_100075448);
    sub_100032DE8();
    sub_1000095F4(&qword_100097E38, &qword_100097E40, &qword_100075488, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DF0);
  }

  return result;
}

unint64_t sub_100032DE8()
{
  result = qword_100097DF8;
  if (!qword_100097DF8)
  {
    sub_100008154(&qword_100097D98, &qword_100075440);
    sub_100032EA0();
    sub_1000095F4(&qword_100097E28, &qword_100097E30, &qword_100075480, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DF8);
  }

  return result;
}

unint64_t sub_100032EA0()
{
  result = qword_100097E00;
  if (!qword_100097E00)
  {
    sub_100008154(&qword_100097D90, &qword_100075438);
    sub_100032F58();
    sub_1000095F4(&qword_100096BD8, &qword_100096BE0, &qword_10006F610, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097E00);
  }

  return result;
}

unint64_t sub_100032F58()
{
  result = qword_100097E08;
  if (!qword_100097E08)
  {
    sub_100008154(&qword_100097D80, &qword_1000753C8);
    sub_100033010();
    sub_1000095F4(&qword_100097E20, &qword_100097D88, &qword_1000753D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097E08);
  }

  return result;
}

unint64_t sub_100033010()
{
  result = qword_100097E10;
  if (!qword_100097E10)
  {
    sub_100008154(&qword_100097D78, &qword_1000753C0);
    sub_10003309C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097E10);
  }

  return result;
}

unint64_t sub_10003309C()
{
  result = qword_100097E18;
  if (!qword_100097E18)
  {
    sub_100008154(&qword_100096CF8, &qword_10006F730);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097E18);
  }

  return result;
}

uint64_t sub_100033140@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006A560();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000331A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_10003331C(v2 + *(a1 + 20), &v12 - v6);
  v8 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if ((*(*(v8 - 8) + 48))(v7, 2, v8))
  {
    sub_10006B1E0();
    v9 = sub_10006B1F0();
    return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
  }

  else
  {
    v11 = sub_10006B1F0();
    (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
    return sub_10003338C(v7);
  }
}

uint64_t sub_10003331C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003338C(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100033408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006A560();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100007DF0(&qword_100097E60, &qword_100076080);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100033518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10006A560();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100007DF0(&qword_100097E60, &qword_100076080);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t _s5EntryVMa(uint64_t a1)
{
  result = qword_100097EC8;
  if (!qword_100097EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003366C(uint64_t a1)
{
  sub_10006A560();
  if (v1 <= 0x3F)
  {
    sub_1000336F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000336F0(uint64_t a1)
{
  if (!qword_100097ED8)
  {
    v2 = sub_100008154(&qword_100097E68, &qword_1000755A0);
    v5 = type metadata accessor for ObjectStates(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100097ED8);
    }
  }
}

uint64_t sub_100033754()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_100097F08);
  sub_10000CEB8(v0, qword_100097F08);
  return sub_10006A6A0();
}

NSURL *sub_1000337A0(void *a1)
{
  v3 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v3 - 8);
  v5 = &v105 - v4;
  v6 = sub_10006A520();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v105 - v12;
  __chkstk_darwin(v11);
  v106 = &v105 - v14;
  v15 = [a1 identifier];
  if (!v15)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_8;
  }

  v16 = v15;
  sub_10006B290();
  v105 = v6;

  v17 = v105;
  sub_10006A510();
  swift_bridgeObjectRelease_n();
  if ((*(v7 + 48))(v5, 1, v17) == 1)
  {
LABEL_8:
    sub_100009790(v5, &qword_100096B30, &qword_10006F548);
    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v29 = sub_10006A6C0();
    sub_10000CEB8(v29, qword_100097F08);
    v30 = a1;
    v31 = sub_10006A6B0();
    v32 = sub_10006B3A0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v109[0] = v34;
      *v33 = 136315138;
      v35 = [v30 identifier];
      if (v35)
      {
        v36 = v35;
        v37 = sub_10006B290();
        v39 = v38;
      }

      else
      {
        v39 = 0xA300000000000000;
        v37 = 9732322;
      }

      v48 = sub_1000378C4(v37, v39, v109);

      *(v33 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Cannot create notes folder URL from intent note folder identifier — returning nil {identifier: %s}", v33, 0xCu);
      sub_10000804C(v34);
    }

    return 0;
  }

  v18 = v1;
  v19 = v106;
  (*(v7 + 32))(v106, v5, v17);
  v20 = objc_opt_self();
  sub_10006A4E0(v21);
  v23 = v22;
  v24 = [v20 isShowFolderURL:v22];

  if (v24)
  {
    v26 = [objc_opt_self() sharedContext];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 managedObjectContext];
      __chkstk_darwin(v28);
      *(&v105 - 4) = v106;
      *(&v105 - 3) = v27;
      *(&v105 - 2) = v18;
      sub_100007DF0(&qword_100097FF0, &qword_1000755B8);
      sub_10006B410();

      v19 = v106;
      v25 = v109[0];
      if (v109[0])
      {
        goto LABEL_56;
      }
    }
  }

  sub_10006A4E0(v25);
  v41 = v40;
  v42 = [v20 isShowVirtualSmartFolderURL:v40];

  if (v42)
  {
    if (qword_1000968E8 != -1)
    {
      swift_once();
    }

    v44 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
    sub_10000CEB8(v44, qword_100098368);
    swift_beginAccess();
    sub_10006A620();
    v45 = v108;
    swift_endAccess();
    if (v45)
    {
      v46 = [(NSURL *)v45 managedObjectContext];

      __chkstk_darwin(v47);
      *(&v105 - 2) = v18;
      *(&v105 - 1) = v19;
      sub_100007DF0(&qword_100097FF0, &qword_1000755B8);
      sub_10006B410();

      v25 = v109[0];
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_56;
  }

  sub_10006A4E0(v43);
  v51 = v50;
  v52 = [v20 isShowHTMLFolderURL:v50];

  if (!v52)
  {
    goto LABEL_30;
  }

  if (qword_1000968F0 != -1)
  {
    swift_once();
  }

  v53 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000CEB8(v53, qword_100098380);
  swift_beginAccess();
  sub_10006A620();
  v54 = v108;
  v55 = swift_endAccess();
  if (!v54)
  {
    v17 = v105;
    goto LABEL_30;
  }

  __chkstk_darwin(v55);
  *(&v105 - 4) = v106;
  *(&v105 - 3) = v54;
  *(&v105 - 2) = v18;
  sub_10000D894(0, &qword_100096D48, NoteContext_ptr);
  v56 = v54;
  sub_100007DF0(&qword_100097FF0, &qword_1000755B8);
  sub_10006B3C0();

  v17 = v105;
  v19 = v106;
  v25 = v109[0];
  if (!v109[0])
  {
LABEL_30:
    sub_10006A4E0(v25);
    v58 = v57;
    v59 = [v20 isShowDefaultFolderURL:v57];

    if (v59)
    {
      if (qword_1000968F0 != -1)
      {
        swift_once();
      }

      v60 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
      sub_10000CEB8(v60, qword_100098380);
      swift_beginAccess();
      sub_10006A620();
      v61 = v108;
      swift_endAccess();
      v62 = [objc_opt_self() defaultFolderWithHTMLNoteContext:v61];

      if (v62)
      {
        objc_opt_self();
        v63 = swift_dynamicCastObjCClass();
        if (v63)
        {
          v64 = v63;
          v65 = qword_1000968E8;
          v66 = v62;
          if (v65 != -1)
          {
            swift_once();
          }

          v67 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
          sub_10000CEB8(v67, qword_100098368);
          swift_beginAccess();
          sub_10006A620();
          v68 = v107;
          swift_endAccess();
          if (v68)
          {
            v69 = [v68 managedObjectContext];

            __chkstk_darwin(v70);
            *(&v105 - 2) = v18;
            *(&v105 - 1) = v64;
            sub_100007DF0(&qword_100097FF0, &qword_1000755B8);
            sub_10006B410();

LABEL_39:
            v25 = v108;
LABEL_55:
            v19 = v106;
            goto LABEL_56;
          }

          goto LABEL_54;
        }

        objc_opt_self();
        v92 = swift_dynamicCastObjCClass();
        if (v92)
        {
          v93 = v92;
          swift_beginAccess();
          v66 = v62;
          sub_10006A620();
          v94 = v107;
          swift_endAccess();
          if (v94)
          {
            v95 = [v94 managedObjectContext];

            if (v95)
            {
              __chkstk_darwin(v96);
              *(&v105 - 2) = v18;
              *(&v105 - 1) = v93;
              sub_100007DF0(&qword_100097FF0, &qword_1000755B8);
              sub_10006B410();

              goto LABEL_39;
            }
          }

LABEL_54:

          v25 = 0;
          goto LABEL_55;
        }

        if (qword_1000968D8 != -1)
        {
          swift_once();
        }

        v98 = sub_10006A6C0();
        sub_10000CEB8(v98, qword_100097F08);
        v99 = v62;
        v100 = sub_10006A6B0();
        v101 = sub_10006B3A0();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          *v102 = 138412290;
          v104 = [v99 objectID];
          *(v102 + 4) = v104;
          *v103 = v104;
          _os_log_impl(&_mh_execute_header, v100, v101, "Unknown object type — returning nil {objectID: %@}", v102, 0xCu);
          sub_100009790(v103, &qword_100096D40, &unk_10006F770);
        }

        (*(v7 + 8))(v106, v17);
      }

      else
      {
        if (qword_1000968D8 != -1)
        {
          swift_once();
        }

        v81 = sub_10006A6C0();
        sub_10000CEB8(v81, qword_100097F08);
        v82 = v106;
        (*(v7 + 16))(v13, v106, v17);
        v83 = sub_10006A6B0();
        v84 = sub_10006B3A0();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v109[0] = v86;
          *v85 = 136315138;
          sub_100037ECC(&qword_100096D38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v87 = sub_10006B530();
          v89 = v88;
          v90 = *(v7 + 8);
          v90(v13, v105);
          v91 = sub_1000378C4(v87, v89, v109);
          v17 = v105;

          *(v85 + 4) = v91;
          _os_log_impl(&_mh_execute_header, v83, v84, "Cannot find object for current default notes folder URL — returning nil {notesFolderURL: %s}", v85, 0xCu);
          sub_10000804C(v86);

          v82 = v106;
        }

        else
        {

          v90 = *(v7 + 8);
          v90(v13, v17);
        }

        v90(v82, v17);
      }
    }

    else
    {
      if (qword_1000968D8 != -1)
      {
        swift_once();
      }

      v71 = sub_10006A6C0();
      sub_10000CEB8(v71, qword_100097F08);
      (*(v7 + 16))(v10, v19, v17);
      v72 = sub_10006A6B0();
      v73 = sub_10006B3A0();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v109[0] = v75;
        *v74 = 136315138;
        sub_100037ECC(&qword_100096D38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v76 = sub_10006B530();
        v78 = v77;
        v79 = *(v7 + 8);
        v79(v10, v105);
        v80 = sub_1000378C4(v76, v78, v109);
        v17 = v105;

        *(v74 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v72, v73, "Unknown notes folder URL type — returning nil {notesFolderURL: %s}", v74, 0xCu);
        sub_10000804C(v75);
      }

      else
      {

        v79 = *(v7 + 8);
        v79(v10, v17);
      }

      v79(v106, v17);
    }

    return 0;
  }

LABEL_56:
  v97 = v25;
  (*(v7 + 8))(v19, v17);
  return v97;
}

void sub_100034710(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_10006A520();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v8 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v8, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v9 = v29[4];
  swift_endAccess();
  if (v9)
  {
    v10 = [v9 managedObjectContext];

    if (v10)
    {
      v11 = objc_opt_self();
      sub_10006A4E0(v12);
      v14 = v13;
      v15 = [v11 virtualSmartFolderMentionedInURL:v13 context:v10];

      if (v15)
      {
        v16 = sub_1000381D0(v15, v10);

        goto LABEL_14;
      }
    }
  }

  if (qword_1000968D8 != -1)
  {
    swift_once();
  }

  v17 = sub_10006A6C0();
  sub_10000CEB8(v17, qword_100097F08);
  (*(v5 + 16))(v7, a1, v4);
  v18 = sub_10006A6B0();
  v19 = sub_10006B3A0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = a2;
    v22 = v21;
    v29[0] = v21;
    *v20 = 136315138;
    sub_100037ECC(&qword_100096D38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = sub_10006B530();
    v25 = v24;
    (*(v5 + 8))(v7, v4);
    v26 = sub_1000378C4(v23, v25, v29);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Cannot find notes object for notes folder URL — returning nil {notesFolderURL: %s}", v20, 0xCu);
    sub_10000804C(v22);
    a2 = v28;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v16 = 0;
LABEL_14:
  *a2 = v16;
}

void sub_100034AAC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_10006A520();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  sub_10006A4E0(v13);
  v15 = v14;
  v16 = [v12 objectIDForModernFolderMentionedInURL:v14 noteContext:a2];

  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = [a2 managedObjectContext];
  v53 = 0;
  v18 = [v17 existingObjectWithID:v16 error:&v53];

  v19 = v53;
  if (!v18)
  {
    v24 = v9;
    v25 = v53;
    sub_10006A480();

    v9 = v24;
    swift_willThrow();

    v4 = 0;
LABEL_6:
    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v26 = sub_10006A6C0();
    sub_10000CEB8(v26, qword_100097F08);
    (*(v9 + 16))(v11, a1, v8);
    v27 = sub_10006A6B0();
    v28 = sub_10006B390();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52[1] = v4;
      v53 = v30;
      v31 = a3;
      v32 = v30;
      *v29 = 136315138;
      sub_100037ECC(&qword_100096D38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v33 = sub_10006B530();
      v34 = v9;
      v36 = v35;
      (*(v34 + 8))(v11, v8);
      v37 = sub_1000378C4(v33, v36, &v53);

      *(v29 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "Cannot find notes object for notes folder URL — returning nil {notesFolderURL: %s}", v29, 0xCu);
      sub_10000804C(v32);
      a3 = v31;
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    goto LABEL_11;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v22 = v19;
    v23 = sub_10003A23C(v21);
LABEL_14:
    v38 = v23;

    goto LABEL_15;
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (v39)
  {
    v40 = v39;
    v41 = v19;
    v23 = sub_100038EF8(v40);
    goto LABEL_14;
  }

  v42 = qword_1000968D8;
  v43 = v19;
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = sub_10006A6C0();
  sub_10000CEB8(v44, qword_100097F08);
  v45 = v16;
  v46 = sub_10006A6B0();
  v47 = sub_10006B3A0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = a3;
    v50 = swift_slowAlloc();
    *v48 = 138412290;
    *(v48 + 4) = v45;
    *v50 = v16;
    v51 = v45;
    _os_log_impl(&_mh_execute_header, v46, v47, "Unknown object type — returning nil {objectID: %@}", v48, 0xCu);
    sub_100009790(v50, &qword_100096D40, &unk_10006F770);
    a3 = v49;
  }

  else
  {
  }

LABEL_11:
  v38 = 0;
LABEL_15:
  *a3 = v38;
}

void sub_100034FDC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10006A520();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  sub_10006A4E0(v11);
  v13 = v12;
  v14 = [v10 objectIDForHTMLFolderMentionedInURL:v12 context:a2];

  if (!v14)
  {
    goto LABEL_6;
  }

  v42 = 0;
  v15 = [a2 existingObjectWithID:v14 error:&v42];
  v16 = v42;
  if (!v15)
  {
    v22 = v42;
    sub_10006A480();

    swift_willThrow();

LABEL_6:
    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v23 = sub_10006A6C0();
    sub_10000CEB8(v23, qword_100097F08);
    (*(v7 + 16))(v9, a1, v6);
    v24 = sub_10006A6B0();
    v25 = sub_10006B390();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = a3;
      v42 = v40;
      *v26 = 136315138;
      sub_100037ECC(&qword_100096D38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v27 = sub_10006B530();
      v29 = v28;
      (*(v7 + 8))(v9, v6);
      v30 = sub_1000378C4(v27, v29, &v42);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "Cannot find HTML object for notes folder URL — returning nil {notesFolderURL: %s}", v26, 0xCu);
      sub_10000804C(v40);
      a3 = v41;
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    goto LABEL_11;
  }

  v17 = v15;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    v31 = qword_1000968D8;
    v32 = v16;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = sub_10006A6C0();
    sub_10000CEB8(v33, qword_100097F08);
    v34 = v14;
    v35 = sub_10006A6B0();
    v36 = sub_10006B3A0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v14;
      v39 = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unknown object type — returning nil {objectID: %@}", v37, 0xCu);
      sub_100009790(v38, &qword_100096D40, &unk_10006F770);
    }

    else
    {
    }

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  v19 = v18;
  v20 = v16;
  v21 = sub_100039C90(v19);

LABEL_12:
  *a3 = v21;
}

uint64_t sub_1000354C0(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_100007DF0(&qword_100098010, &qword_1000755C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = _s5EntryVMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007DF0(&qword_100097FD0, &qword_100075590);
  v10 = sub_10006B230();
  if (*(v10 + 16))
  {
    sub_10003AEC8(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, _s5EntryVMa);

    (*(v7 + 56))(v5, 0, 1, v6);
    sub_10003AF30(v5, v9, _s5EntryVMa);
  }

  else
  {

    (*(v7 + 56))(v5, 1, 1, v6);
    v11 = *(v6 + 20);
    v12 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
    (*(*(v12 - 8) + 56))(&v9[v11], 2, 2, v12);
    sub_10006A550();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_100009790(v5, &qword_100098010, &qword_1000755C8);
    }
  }

  a2(v9);
  return sub_10003AF98(v9, _s5EntryVMa);
}

uint64_t sub_10003574C(NSObject *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v227 = a4;
  v228 = a3;
  v222 = a1;
  v4 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  __chkstk_darwin(v4 - 8);
  v223 = &v199 - v5;
  v6 = sub_100007DF0(&qword_100097FC8, &unk_100075580);
  v7 = __chkstk_darwin(v6 - 8);
  v202 = &v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v206 = &v199 - v9;
  v10 = sub_10006B1A0();
  v221 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v203 = &v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v226 = &v199 - v14;
  __chkstk_darwin(v13);
  v207 = &v199 - v15;
  v16 = sub_10006A560();
  v230 = *(v16 - 8);
  v231 = v16;
  v17 = __chkstk_darwin(v16);
  v211 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v229 = &v199 - v19;
  v220 = sub_10006A5F0();
  v215 = *(v220 - 8);
  __chkstk_darwin(v220);
  v212 = &v199 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_10006A600();
  v213 = *(v214 - 8);
  v21 = __chkstk_darwin(v214);
  v210 = &v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v219 = &v199 - v23;
  v24 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v199 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v208 = (&v199 - v29);
  v30 = __chkstk_darwin(v28);
  v204 = &v199 - v31;
  __chkstk_darwin(v30);
  v216 = (&v199 - v32);
  v33 = sub_100007DF0(&qword_100097FD0, &qword_100075590);
  v224 = *(v33 - 8);
  v225 = v33;
  v34 = __chkstk_darwin(v33);
  v201 = &v199 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v199 - v37;
  __chkstk_darwin(v36);
  v205 = &v199 - v39;
  v40 = sub_100007DF0(&qword_100096D30, &unk_10006F760);
  v41 = __chkstk_darwin(v40 - 8);
  v43 = &v199 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v199 - v44;
  v46 = type metadata accessor for NotesFolder(0);
  v47 = *(v46 - 8);
  v48 = __chkstk_darwin(v46);
  v209 = &v199 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v218 = (&v199 - v50);
  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v51 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v51, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v52 = v232;
  swift_endAccess();
  if (!v52)
  {
    goto LABEL_11;
  }

  v200 = v10;
  if (qword_1000968F0 != -1)
  {
    swift_once();
  }

  v53 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000CEB8(v53, qword_100098380);
  swift_beginAccess();
  sub_10006A620();
  v54 = v232;
  swift_endAccess();
  if (!v54)
  {

LABEL_11:
    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v59 = sub_10006A6C0();
    sub_10000CEB8(v59, qword_100097F08);
    v60 = sub_10006A6B0();
    v61 = sub_10006B3A0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "No modern or HTML note context — returning placeholder timeline", v62, 2u);
    }

    sub_100007DF0(&qword_100097FD8, &qword_100075598);
    v63 = _s5EntryVMa(0);
    v64 = (*(*(v63 - 8) + 80) + 32) & ~*(*(v63 - 8) + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_10006F820;
    v66 = v65 + v64;
    v67 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
    v68 = v223;
    (*(*(v67 - 8) + 56))(v223, 2, 2, v67);
    v69 = v229;
    sub_10006A550();
    (*(v230 + 32))(v66, v69, v231);
    sub_1000096C0(v68, v66 + *(v63 + 20), &qword_100097E60, &qword_100076080);
    sub_10006B190();
    sub_100037ECC(&qword_100097FC0, _s5EntryVMa, &unk_100075498);
    sub_10006B220();
    v228(v38);
    return (*(v224 + 8))(v38, v225);
  }

  v55 = [v222 folder];
  if (!v55)
  {
    v70 = objc_opt_self();
    v71 = [v70 currentDefaultNotesFolder];
    v72 = v52;
    v73 = v54;
    v74 = v71;
    v75 = v73;
    v222 = v72;
    sub_10000A960(v74, v72, v73, v43);
    if ((*(v47 + 48))(v43, 1, v46) == 1)
    {
      sub_100009790(v43, &qword_100096D30, &unk_10006F760);
    }

    else
    {
      v91 = v209;
      sub_10003AF30(v43, v209, type metadata accessor for NotesFolder);
      v92 = [v70 currentDefaultNotesFolder];
      v93 = sub_1000337A0(v92);

      if (v93)
      {
        v217 = v93;
        if (qword_1000968D8 != -1)
        {
          swift_once();
        }

        v218 = v75;
        v94 = sub_10006A6C0();
        sub_10000CEB8(v94, qword_100097F08);
        v95 = sub_10006A6B0();
        v96 = sub_10006B390();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&_mh_execute_header, v95, v96, "Returning timeline for default notes folder", v97, 2u);
        }

        sub_10006A5E0();
        v98 = v215;
        v99 = v212;
        (*(v215 + 104))(v212, enum case for Calendar.Component.day(_:), v220);
        v100 = v210;
        sub_10006A5E0();
        v101 = v211;
        sub_10006A550();
        v102 = v229;
        sub_10006A5C0();
        v103 = *(v230 + 8);
        v103(v101, v231);
        v216 = *(v213 + 8);
        v104 = v214;
        v216(v100, v214);
        v105 = v208;
        v106 = v219;
        sub_10006A5D0();
        v107 = v102;
        v108 = v103;
        v109 = v231;
        v108(v107, v231);
        (*(v98 + 8))(v99, v220);
        v216(v106, v104);
        sub_100037854(v105, v27);
        v110 = (*(v230 + 48))(v27, 1, v109);
        v111 = 1;
        v112 = v202;
        if (v110 != 1)
        {
          v113 = v229;
          v114 = v231;
          (*(v230 + 32))(v229, v27, v231);
          sub_10006B180();
          v108(v113, v114);
          v111 = 0;
        }

        v115 = v221;
        v116 = v200;
        (*(v221 + 56))(v112, v111, 1, v200);
        v117 = *(v115 + 48);
        v118 = v117(v112, 1, v116);
        v119 = v203;
        if (v118 == 1)
        {
          sub_10006B190();
          if (v117(v112, 1, v116) != 1)
          {
            sub_100009790(v112, &qword_100097FC8, &unk_100075580);
          }
        }

        else
        {
          (*(v115 + 32))(v203, v112, v116);
        }

        sub_100007DF0(&qword_100097FD8, &qword_100075598);
        v152 = _s5EntryVMa(0);
        v153 = (*(*(v152 - 8) + 80) + 32) & ~*(*(v152 - 8) + 80);
        v154 = swift_allocObject();
        *(v154 + 16) = xmmword_10006F820;
        v155 = v154 + v153;
        v156 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
        v157 = *(v156 + 48);
        v158 = v209;
        v159 = v223;
        sub_10003AEC8(v209, v223, type metadata accessor for NotesFolder);
        *(v159 + v157) = v217;
        (*(*(v156 - 8) + 56))(v159, 0, 2, v156);
        v160 = v229;
        sub_10006A550();
        (*(v230 + 32))(v155, v160, v231);
        sub_1000096C0(v159, v155 + *(v152 + 20), &qword_100097E60, &qword_100076080);
        v161 = v221;
        (*(v221 + 16))(v226, v119, v116);
        sub_100037ECC(&qword_100097FC0, _s5EntryVMa, &unk_100075498);
        v162 = v201;
        sub_10006B220();
        (*(v161 + 8))(v119, v116);
        sub_100009790(v208, &qword_100097C70, &qword_100076A60);
        v228(v162);

        (*(v224 + 8))(v162, v225);
        return sub_10003AF98(v158, type metadata accessor for NotesFolder);
      }

      sub_10003AF98(v91, type metadata accessor for NotesFolder);
    }

    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v140 = sub_10006A6C0();
    sub_10000CEB8(v140, qword_100097F08);
    v141 = sub_10006A6B0();
    v142 = sub_10006B3A0();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&_mh_execute_header, v141, v142, "There is no intent notes folder and cannot get current default notes folder — returning placeholder timeline", v143, 2u);
    }

    sub_100007DF0(&qword_100097FD8, &qword_100075598);
    v144 = _s5EntryVMa(0);
    v145 = (*(*(v144 - 8) + 80) + 32) & ~*(*(v144 - 8) + 80);
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_10006F820;
    v147 = v146 + v145;
    v148 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
    v149 = v223;
    (*(*(v148 - 8) + 56))(v223, 2, 2, v148);
    v150 = v229;
    sub_10006A550();
    (*(v230 + 32))(v147, v150, v231);
    sub_1000096C0(v149, v147 + *(v144 + 20), &qword_100097E60, &qword_100076080);
    sub_10006B190();
    sub_100037ECC(&qword_100097FC0, _s5EntryVMa, &unk_100075498);
    sub_10006B220();
    v228(v38);

    return (*(v224 + 8))(v38, v225);
  }

  v56 = v55;
  v57 = v52;
  v58 = v54;
  v222 = v57;
  sub_10000A960(v56, v57, v58, v45);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_100009790(v45, &qword_100096D30, &unk_10006F760);
LABEL_35:
    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v120 = sub_10006A6C0();
    sub_10000CEB8(v120, qword_100097F08);
    v121 = v56;
    v122 = sub_10006A6B0();
    v123 = sub_10006B3A0();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = v58;
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v233 = v126;
      *v125 = 136315138;
      v127 = [v121 identifier];
      if (v127)
      {
        v128 = v127;
        v129 = sub_10006B290();
        v131 = v130;
      }

      else
      {
        v129 = 9732322;
        v131 = 0xA300000000000000;
      }

      v132 = sub_1000378C4(v129, v131, &v233);

      *(v125 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v122, v123, "Cannot fetch notes folder and notes — returning deleted timeline {identifier: %s}", v125, 0xCu);
      sub_10000804C(v126);

      v58 = v124;
    }

    else
    {
    }

    sub_100007DF0(&qword_100097FD8, &qword_100075598);
    v133 = _s5EntryVMa(0);
    v134 = (*(*(v133 - 8) + 80) + 32) & ~*(*(v133 - 8) + 80);
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_10006F820;
    v136 = v135 + v134;
    v137 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
    v138 = v223;
    (*(*(v137 - 8) + 56))(v223, 1, 2, v137);
    v139 = v229;
    sub_10006A550();
    (*(v230 + 32))(v136, v139, v231);
    sub_1000096C0(v138, v136 + *(v133 + 20), &qword_100097E60, &qword_100076080);
    sub_10006B190();
    sub_100037ECC(&qword_100097FC0, _s5EntryVMa, &unk_100075498);
    sub_10006B220();
    v228(v38);

    return (*(v224 + 8))(v38, v225);
  }

  v76 = v218;
  sub_10003AF30(v45, v218, type metadata accessor for NotesFolder);
  v77 = sub_1000337A0(v56);
  if (!v77)
  {
    sub_10003AF98(v76, type metadata accessor for NotesFolder);
    goto LABEL_35;
  }

  v208 = v77;
  if (qword_1000968D8 != -1)
  {
    swift_once();
  }

  v217 = v58;
  v78 = sub_10006A6C0();
  sub_10000CEB8(v78, qword_100097F08);
  v79 = v56;
  v80 = sub_10006A6B0();
  v81 = sub_10006B390();

  v82 = os_log_type_enabled(v80, v81);
  v83 = v231;
  v209 = v79;
  if (v82)
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v233 = v85;
    *v84 = 136315138;
    v86 = [v79 identifier];
    if (v86)
    {
      v87 = v86;
      v88 = sub_10006B290();
      v90 = v89;
    }

    else
    {
      v88 = 9732322;
      v90 = 0xA300000000000000;
    }

    v163 = sub_1000378C4(v88, v90, &v233);

    *(v84 + 4) = v163;
    _os_log_impl(&_mh_execute_header, v80, v81, "Returning timeline for notes folder {identifier: %s}", v84, 0xCu);
    sub_10000804C(v85);

    v83 = v231;
  }

  else
  {
  }

  sub_10006A5E0();
  v164 = v215;
  v165 = v212;
  (*(v215 + 104))(v212, enum case for Calendar.Component.day(_:), v220);
  v166 = v210;
  sub_10006A5E0();
  v167 = v211;
  sub_10006A550();
  v168 = v229;
  sub_10006A5C0();
  v169 = *(v230 + 8);
  v169(v167, v83);
  v170 = *(v213 + 8);
  v171 = v214;
  v170(v166, v214);
  v172 = v216;
  v173 = v219;
  sub_10006A5D0();
  v169(v168, v231);
  (*(v164 + 8))(v165, v220);
  v170(v173, v171);
  v174 = v231;
  v175 = v204;
  sub_100037854(v172, v204);
  v176 = (*(v230 + 48))(v175, 1, v174);
  v177 = 1;
  v178 = v206;
  if (v176 != 1)
  {
    v179 = v229;
    (*(v230 + 32))(v229, v175, v174);
    sub_10006B180();
    v169(v179, v174);
    v177 = 0;
  }

  v180 = v221;
  v181 = v200;
  (*(v221 + 56))(v178, v177, 1, v200);
  v182 = *(v180 + 48);
  v183 = v182(v178, 1, v181);
  v184 = v207;
  if (v183 == 1)
  {
    sub_10006B190();
    v185 = v182(v178, 1, v181);
    v186 = v184;
    if (v185 != 1)
    {
      sub_100009790(v178, &qword_100097FC8, &unk_100075580);
    }
  }

  else
  {
    (*(v180 + 32))(v207, v178, v181);
    v186 = v184;
  }

  sub_100007DF0(&qword_100097FD8, &qword_100075598);
  v187 = _s5EntryVMa(0);
  v188 = (*(*(v187 - 8) + 80) + 32) & ~*(*(v187 - 8) + 80);
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_10006F820;
  v190 = v189 + v188;
  v191 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v192 = *(v191 + 48);
  v193 = v218;
  v194 = v223;
  sub_10003AEC8(v218, v223, type metadata accessor for NotesFolder);
  *(v194 + v192) = v208;
  (*(*(v191 - 8) + 56))(v194, 0, 2, v191);
  v195 = v229;
  sub_10006A550();
  (*(v230 + 32))(v190, v195, v231);
  sub_1000096C0(v194, v190 + *(v187 + 20), &qword_100097E60, &qword_100076080);
  v196 = v221;
  v197 = v200;
  (*(v221 + 16))(v226, v186, v200);
  sub_100037ECC(&qword_100097FC0, _s5EntryVMa, &unk_100075498);
  v198 = v205;
  sub_10006B220();
  (*(v196 + 8))(v186, v197);
  sub_100009790(v216, &qword_100097C70, &qword_100076A60);
  v228(v198);

  (*(v224 + 8))(v198, v225);
  return sub_10003AF98(v193, type metadata accessor for NotesFolder);
}

uint64_t sub_1000374D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(_s5EntryVMa(0) + 20);
  v3 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  (*(*(v3 - 8) + 56))(a1 + v2, 2, 2, v3);

  return sub_10006A550();
}

uint64_t sub_10003755C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10006B200();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = *v4;
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v13 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = v12;
  (*(v10 + 32))(&v14[v13], &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);

  sub_10003574C(a1, v15, sub_10003AE50, v14);
}

uint64_t sub_1000376EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000377A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000131E4;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100037854(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000378C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100037990(v11, 0, 0, 1, a1, a2);
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
    sub_100037E6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000804C(v11);
  return v7;
}

unint64_t sub_100037990(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100037A9C(a5, a6);
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
    result = sub_10006B490();
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

char *sub_100037A9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100037AE8(a1, a2);
  sub_100037C18(&off_100092488);
  return v3;
}

char *sub_100037AE8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100037D04(v5, 0);
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

  result = sub_10006B490();
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
        v10 = sub_10006B2E0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100037D04(v10, 0);
        result = sub_10006B450();
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

void sub_100037C18(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100037D78(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100037D04(uint64_t a1, uint64_t a2)
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

  sub_100007DF0(&qword_100097FE8, &qword_1000755B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100037D78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007DF0(&qword_100097FE8, &qword_1000755B0);
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

uint64_t sub_100037E6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100037ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void **sub_100037F14@<X0>(void ***a1@<X8>)
{
  result = sub_100039C90(*(v1 + 24));
  *a1 = result;
  return result;
}

void *sub_100037F48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100038EF8(*(v1 + 24));
  *a1 = result;
  return result;
}

void *sub_100037FD8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100037FF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100037FF8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100007DF0(&qword_100098000, &qword_1000755C0);
  v10 = *(type metadata accessor for Note(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Note(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1000381D0(void *a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v5 = __chkstk_darwin(v4 - 8);
  v113 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v121 = &v112 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v112 - v10;
  __chkstk_darwin(v9);
  v120 = &v112 - v12;
  v13 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v123 = &v112 - v18;
  __chkstk_darwin(v17);
  v119 = &v112 - v19;
  v118 = type metadata accessor for Note(0);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 predicateForContext:a2];
  v23 = objc_opt_self();
  v122 = a1;
  v24 = [a1 noteSortType];
  v142 = v23;
  isa = [v23 sortDescriptorsForCurrentTypeIncludingPinnedNotes:0 folderNoteSortType:v24];

  if (!isa)
  {
    sub_10000D894(0, &qword_100097FF8, NSSortDescriptor_ptr);
    sub_10006B320();
    isa = sub_10006B310().super.isa;
  }

  sub_10000D894(0, &qword_100097C80, ICNote_ptr);
  v26 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v22 sortDescriptors:isa relationshipKeyPathsForPrefetching:0 fetchLimit:16 context:a2];

  sub_10000D894(0, &qword_100097C88, NSManagedObject_ptr);
  v27 = sub_10006B320();

  v144 = &_swiftEmptyArrayStorage;
  v28 = v27 & 0xFFFFFFFFFFFFFF8;
  if (v27 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10006B4F0())
  {
    v143 = v16;
    v125 = v11;
    v30 = &_swiftEmptyArrayStorage;
    if (i)
    {
      v16 = 0;
      do
      {
        v31 = v16;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v32 = sub_10006B480();
          }

          else
          {
            if (v31 >= *(v28 + 16))
            {
              goto LABEL_78;
            }

            v32 = *(v27 + 8 * v31 + 32);
          }

          v11 = v32;
          v16 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            __break(1u);
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v31;
          if (v16 == i)
          {
            goto LABEL_19;
          }
        }

        sub_10006B300();
        if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10006B330();
        }

        sub_10006B340();
        v30 = v144;
      }

      while (v16 != i);
    }

LABEL_19:

    v144 = &_swiftEmptyArrayStorage;
    v27 = v30 >> 62 ? sub_10006B4F0() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = &_swiftEmptyArrayStorage;
    if (!v27)
    {
      break;
    }

    v34 = 0;
    v16 = (v30 & 0xC000000000000001);
    while (1)
    {
      if (v16)
      {
        v35 = sub_10006B480();
      }

      else
      {
        if (v34 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v35 = *(v30 + 8 * v34 + 32);
      }

      v11 = v35;
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v37 = [objc_opt_self() sharedWidget];
      v28 = [v37 hidesObject:v11];

      if (v28)
      {
      }

      else
      {
        sub_10006B4A0();
        v28 = *(v144 + 16);
        sub_10006B4D0();
        sub_10006B4E0();
        sub_10006B4B0();
      }

      v33 = &_swiftEmptyArrayStorage;
      ++v34;
      if (v36 == v27)
      {
        v38 = v144;
        goto LABEL_34;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

  v38 = &_swiftEmptyArrayStorage;
LABEL_34:

  v39 = v123;
  if ((v38 & 0x8000000000000000) == 0 && (v38 & 0x4000000000000000) == 0)
  {
    v40 = *(v38 + 16);
    if (v40)
    {
      goto LABEL_37;
    }

LABEL_76:

    return v33;
  }

  v40 = sub_10006B4F0();
  if (!v40)
  {
    goto LABEL_76;
  }

LABEL_37:
  v144 = &_swiftEmptyArrayStorage;
  result = sub_100037FD8(0, v40 & ~(v40 >> 63), 0);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v33 = v144;
    v114 = v38 & 0xC000000000000001;
    v42 = objc_opt_self();
    v43 = v38;
    v124 = v42;
    v44 = 0;
    v116 = v38;
    v115 = v40;
    do
    {
      v140 = v44;
      if (v114)
      {
        v45 = sub_10006B480();
      }

      else
      {
        v45 = *(v43 + 8 * v44 + 32);
      }

      v46 = v45;
      v141 = v33;
      v47 = v122;
      v48 = [v46 identifier];
      if (v48)
      {
        v49 = v48;
        v50 = sub_10006B290();
        v138 = v51;
        v139 = v50;
      }

      else
      {
        v138 = 0xE000000000000000;
        v139 = 0;
      }

      v52 = [v46 title];
      if (v52)
      {
        v53 = v52;
        v54 = sub_10006B290();
        v136 = v55;
        v137 = v54;
      }

      else
      {
        v136 = 0xE000000000000000;
        v137 = 0;
      }

      v56 = [v46 widgetInfoText];
      v57 = sub_10006B290();
      v134 = v58;
      v135 = v57;

      v59 = [v142 dateForCurrentSortTypeForNote:v46 folderNoteSortType:0];
      if (v59)
      {
        v60 = v59;
        sub_10006A540();

        v61 = 0;
      }

      else
      {
        v61 = 1;
      }

      v62 = sub_10006A560();
      v63 = *(v62 - 8);
      v64 = *(v63 + 56);
      v64(v39, v61, 1, v62);
      v65 = v119;
      sub_1000096C0(v39, v119, &qword_100097C70, &qword_100076A60);
      if ((*(v63 + 48))(v65, 1, v62) == 1)
      {
        sub_100009790(v65, &qword_100097C70, &qword_100076A60);
        v132 = 0xE000000000000000;
        v133 = 0;
      }

      else
      {
        v66 = sub_10006A530();
        v132 = v67;
        v133 = v66;
        (*(v63 + 8))(v65, v62);
      }

      v68 = v143;
      v69 = [v142 dateForCurrentSortTypeAccessibilityStringForNote:v46 folderNoteSortType:0];
      if (v69)
      {
        v70 = v69;
        v71 = sub_10006B290();
        v130 = v72;
        v131 = v71;
      }

      else
      {
        v130 = 0xE000000000000000;
        v131 = 0;
      }

      v129 = [v46 isSharedViaICloud];
      v73 = [v46 modificationDate];
      if (v73)
      {
        v74 = v73;
        sub_10006A540();

        v75 = 0;
      }

      else
      {
        v75 = 1;
      }

      v64(v68, v75, 1, v62);
      v76 = [v46 shareDescription];
      if (v76)
      {
        v77 = v76;
        v78 = sub_10006B290();
        v126 = v79;
        v127 = v78;
      }

      else
      {
        v126 = 0;
        v127 = 0;
      }

      v80 = v121;
      v81 = v47;
      v82 = [v124 appURLForNote:v46 inVirtualSmartFolder:v81];
      if (v82)
      {
        v83 = v82;
        sub_10006A4F0();

        v84 = 0;
      }

      else
      {
        v84 = 1;
      }

      v85 = sub_10006A520();
      v86 = *(v85 - 8);
      v87 = *(v86 + 56);
      v87(v80, v84, 1, v85);
      v88 = v80;
      v89 = v125;
      sub_1000096C0(v88, v125, &qword_100096B30, &qword_10006F548);

      v90 = *(v86 + 48);
      v91 = v90(v89, 1, v85);
      v128 = v81;
      if (v91 == 1)
      {
        v92 = [v124 appURLForNote:v46];
        if (v92)
        {
          v93 = v113;
          v94 = v92;
          sub_10006A4F0();

          v95 = 0;
        }

        else
        {
          v95 = 1;
          v93 = v113;
        }

        v87(v93, v95, 1, v85);
        v97 = v93;
        v96 = v120;
        sub_1000096C0(v97, v120, &qword_100096B30, &qword_10006F548);
        if (v90(v125, 1, v85) != 1)
        {
          sub_100009790(v125, &qword_100096B30, &qword_10006F548);
        }
      }

      else
      {
        v96 = v120;
        (*(v86 + 32))();
        v87(v96, 0, 1, v85);
      }

      v98 = sub_1000301BC(v46);
      v99 = sub_1000306D4(v46, 10);
      v100 = sub_1000306D4(v46, 11);
      v101 = [v46 ic_hasLightBackground];
      v102 = v138;
      *v21 = v139;
      *(v21 + 1) = v102;
      v103 = v136;
      *(v21 + 2) = v137;
      *(v21 + 3) = v103;
      v104 = v134;
      *(v21 + 4) = v135;
      *(v21 + 5) = v104;
      v105 = v132;
      *(v21 + 6) = v133;
      *(v21 + 7) = v105;
      v106 = v130;
      *(v21 + 8) = v131;
      *(v21 + 9) = v106;
      v21[80] = v129;
      v107 = v118;
      sub_1000096C0(v143, &v21[*(v118 + 40)], &qword_100097C70, &qword_100076A60);
      v108 = &v21[v107[11]];
      v109 = v126;
      *v108 = v127;
      *(v108 + 1) = v109;
      sub_1000096C0(v96, &v21[v107[12]], &qword_100096B30, &qword_10006F548);
      *&v21[v107[13]] = v98;
      *&v21[v107[14]] = &_swiftEmptyArrayStorage;
      *&v21[v107[15]] = v99;
      *&v21[v107[16]] = v100;
      v21[v107[17]] = v101;
      [v46 turnAttachmentsIntoFaults];

      v33 = v141;
      v144 = v141;
      v111 = v141[2];
      v110 = v141[3];
      if (v111 >= v110 >> 1)
      {
        sub_100037FD8((v110 > 1), v111 + 1, 1);
        v33 = v144;
      }

      v44 = v140 + 1;
      v33[2] = v111 + 1;
      sub_10003AF30(v21, v33 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v111, type metadata accessor for Note);
      v39 = v123;
      v43 = v116;
    }

    while (v115 != v44);
    goto LABEL_76;
  }

  __break(1u);
  return result;
}

void *sub_100038EF8(void *a1)
{
  v2 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v126 = &v114 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v114 - v9;
  __chkstk_darwin(v8);
  v125 = &v114 - v11;
  v12 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v114 - v17;
  __chkstk_darwin(v16);
  v124 = &v114 - v19;
  v123 = type metadata accessor for Note(0);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = [a1 managedObjectContext];
  if (!v115)
  {
    return 0;
  }

  v120 = v18;
  v128 = v10;
  v116 = v5;
  v22 = [a1 predicateForVisibleNotes];
  v23 = objc_opt_self();
  v121 = a1;
  v24 = [a1 customNoteSortType];
  v145 = v23;
  isa = [v23 sortDescriptorsForCurrentTypeIncludingPinnedNotes:0 folderNoteSortType:v24];

  if (!isa)
  {
    sub_10000D894(0, &qword_100097FF8, NSSortDescriptor_ptr);
    sub_10006B320();
    isa = sub_10006B310().super.isa;
  }

  sub_10000D894(0, &qword_100097C80, ICNote_ptr);
  v26 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v22 sortDescriptors:isa relationshipKeyPathsForPrefetching:0 fetchLimit:16 context:v115];

  sub_10000D894(0, &qword_100097C88, NSManagedObject_ptr);
  v27 = sub_10006B320();

  v148 = &_swiftEmptyArrayStorage;
  v28 = v27 & 0xFFFFFFFFFFFFFF8;
  if (v27 >> 62)
  {
    goto LABEL_83;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10006B4F0())
  {
    v146 = v15;
    v30 = &_swiftEmptyArrayStorage;
    if (i)
    {
      v31 = 0;
      do
      {
        v32 = v31;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v33 = sub_10006B480();
          }

          else
          {
            if (v32 >= *(v28 + 16))
            {
              goto LABEL_80;
            }

            v33 = *(v27 + 8 * v32 + 32);
          }

          v15 = v33;
          v31 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v32;
          if (v31 == i)
          {
            goto LABEL_20;
          }
        }

        sub_10006B300();
        if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10006B330();
        }

        sub_10006B340();
        v30 = v148;
      }

      while (v31 != i);
    }

LABEL_20:

    v148 = &_swiftEmptyArrayStorage;
    v27 = v30 >> 62 ? sub_10006B4F0() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = &_swiftEmptyArrayStorage;
    if (!v27)
    {
      break;
    }

    v35 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v36 = sub_10006B480();
      }

      else
      {
        if (v35 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v36 = *(v30 + 8 * v35 + 32);
      }

      v15 = v36;
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v38 = [objc_opt_self() sharedWidget];
      v28 = [v38 hidesObject:v15];

      if (v28)
      {
      }

      else
      {
        sub_10006B4A0();
        v28 = *(v148 + 16);
        sub_10006B4D0();
        sub_10006B4E0();
        sub_10006B4B0();
      }

      ++v35;
      if (v37 == v27)
      {
        v39 = v148;
        v34 = &_swiftEmptyArrayStorage;
        goto LABEL_36;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v39 = &_swiftEmptyArrayStorage;
LABEL_36:

  if ((v39 & 0x8000000000000000) == 0 && (v39 & 0x4000000000000000) == 0)
  {
    v40 = *(v39 + 16);
    if (v40)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

  v40 = sub_10006B4F0();
  if (!v40)
  {
LABEL_86:

    return v34;
  }

LABEL_39:
  v148 = &_swiftEmptyArrayStorage;
  result = sub_100037FD8(0, v40 & ~(v40 >> 63), 0);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v34 = v148;
    v117 = v39 & 0xC000000000000001;
    v42 = objc_opt_self();
    v43 = v39;
    v127 = v42;
    v44 = 0;
    v119 = v39;
    v118 = v40;
    do
    {
      v143 = v44;
      if (v117)
      {
        v45 = sub_10006B480();
      }

      else
      {
        v45 = *(v43 + 8 * v44 + 32);
      }

      v46 = v45;
      v144 = v34;
      v47 = v121;
      v147 = [v121 customNoteSortType];
      v48 = v47;
      v49 = [v46 identifier];
      if (v49)
      {
        v50 = v49;
        v51 = sub_10006B290();
        v141 = v52;
        v142 = v51;
      }

      else
      {
        v141 = 0xE000000000000000;
        v142 = 0;
      }

      v53 = [v46 title];
      if (v53)
      {
        v54 = v53;
        v55 = sub_10006B290();
        v139 = v56;
        v140 = v55;
      }

      else
      {
        v139 = 0xE000000000000000;
        v140 = 0;
      }

      v57 = [v46 widgetInfoText];
      v58 = sub_10006B290();
      v137 = v59;
      v138 = v58;

      v60 = [v145 dateForCurrentSortTypeForNote:v46 folderNoteSortType:v147];
      if (v60)
      {
        v61 = v120;
        v62 = v60;
        sub_10006A540();

        v63 = 0;
      }

      else
      {
        v63 = 1;
        v61 = v120;
      }

      v64 = sub_10006A560();
      v65 = *(v64 - 8);
      v66 = *(v65 + 56);
      v66(v61, v63, 1, v64);
      v67 = v124;
      sub_1000096C0(v61, v124, &qword_100097C70, &qword_100076A60);
      if ((*(v65 + 48))(v67, 1, v64) == 1)
      {
        sub_100009790(v67, &qword_100097C70, &qword_100076A60);
        v135 = 0xE000000000000000;
        v136 = 0;
      }

      else
      {
        v68 = sub_10006A530();
        v135 = v69;
        v136 = v68;
        (*(v65 + 8))(v67, v64);
      }

      v70 = v146;
      v71 = [v145 dateForCurrentSortTypeAccessibilityStringForNote:v46 folderNoteSortType:v147];
      if (v71)
      {
        v72 = v71;
        v73 = sub_10006B290();
        v133 = v74;
        v134 = v73;
      }

      else
      {
        v133 = 0xE000000000000000;
        v134 = 0;
      }

      v132 = [v46 isSharedViaICloud];
      v75 = [v46 modificationDate];
      if (v75)
      {
        v76 = v75;
        sub_10006A540();

        v77 = 0;
      }

      else
      {
        v77 = 1;
      }

      v78 = v126;
      v66(v70, v77, 1, v64);
      v79 = [v46 shareDescription];
      if (v79)
      {
        v80 = v79;
        v81 = sub_10006B290();
        v129 = v82;
        v130 = v81;
      }

      else
      {
        v129 = 0;
        v130 = 0;
      }

      v83 = v48;
      v84 = [v127 appURLForNote:v46 inFolder:v83];
      if (v84)
      {
        v85 = v84;
        sub_10006A4F0();

        v86 = 0;
      }

      else
      {
        v86 = 1;
      }

      v87 = sub_10006A520();
      v88 = *(v87 - 8);
      v89 = *(v88 + 56);
      v89(v78, v86, 1, v87);
      v90 = v128;
      sub_1000096C0(v78, v128, &qword_100096B30, &qword_10006F548);

      v91 = *(v88 + 48);
      v92 = v91(v90, 1, v87);
      v131 = v83;
      if (v92 == 1)
      {
        v93 = [v127 appURLForNote:v46];
        if (v93)
        {
          v94 = v116;
          v95 = v93;
          sub_10006A4F0();

          v96 = 0;
        }

        else
        {
          v96 = 1;
          v94 = v116;
        }

        v89(v94, v96, 1, v87);
        v98 = v125;
        sub_1000096C0(v94, v125, &qword_100096B30, &qword_10006F548);
        v99 = v91(v128, 1, v87);
        v97 = v98;
        if (v99 != 1)
        {
          sub_100009790(v128, &qword_100096B30, &qword_10006F548);
        }
      }

      else
      {
        v97 = v125;
        (*(v88 + 32))(v125, v90, v87);
        v89(v97, 0, 1, v87);
      }

      v100 = sub_1000301BC(v46);
      v101 = sub_1000306D4(v46, 10);
      v102 = sub_1000306D4(v46, 11);
      v103 = [v46 ic_hasLightBackground];
      v104 = v141;
      *v21 = v142;
      *(v21 + 1) = v104;
      v105 = v139;
      *(v21 + 2) = v140;
      *(v21 + 3) = v105;
      v106 = v137;
      *(v21 + 4) = v138;
      *(v21 + 5) = v106;
      v107 = v135;
      *(v21 + 6) = v136;
      *(v21 + 7) = v107;
      v108 = v133;
      *(v21 + 8) = v134;
      *(v21 + 9) = v108;
      v21[80] = v132;
      v109 = v123;
      sub_1000096C0(v146, &v21[*(v123 + 40)], &qword_100097C70, &qword_100076A60);
      v110 = &v21[v109[11]];
      v111 = v129;
      *v110 = v130;
      *(v110 + 1) = v111;
      sub_1000096C0(v97, &v21[v109[12]], &qword_100096B30, &qword_10006F548);
      *&v21[v109[13]] = v100;
      *&v21[v109[14]] = &_swiftEmptyArrayStorage;
      *&v21[v109[15]] = v101;
      *&v21[v109[16]] = v102;
      v21[v109[17]] = v103;
      [v46 turnAttachmentsIntoFaults];

      v34 = v144;
      v148 = v144;
      v113 = v144[2];
      v112 = v144[3];
      if (v113 >= v112 >> 1)
      {
        sub_100037FD8((v112 > 1), v113 + 1, 1);
        v34 = v148;
      }

      v44 = v143 + 1;
      v34[2] = v113 + 1;
      sub_10003AF30(v21, v34 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v113, type metadata accessor for Note);
      v43 = v119;
    }

    while (v118 != v44);

    return v34;
  }

  __break(1u);
  return result;
}

void **sub_100039C90(unint64_t a1)
{
  v2 = type metadata accessor for Note(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000968F0 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v6 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
    sub_10000CEB8(v6, qword_100098380);
    swift_beginAccess();
    sub_10006A620();
    v7 = v37;
    swift_endAccess();
    if (!v7)
    {
      return v7;
    }

    v35 = v5;
    v36 = v3;
    v8 = [v7 allVisibleNotesInCollection:a1 sorted:1];

    if (!v8)
    {
      goto LABEL_67;
    }

    v5 = sub_10006B320();

    v40 = &_swiftEmptyArrayStorage;
    v9 = *(v5 + 2);
    if (v9)
    {
      v10 = (v5 + 32);
      a1 = &_swiftEmptyArrayStorage;
      do
      {
        sub_100037E6C(v10, v39);
        sub_10003AD74(v39, &v37);
        sub_10000D894(0, &qword_100098008, NoteObject_ptr);
        if ((swift_dynamicCast() & 1) != 0 && v38)
        {
          v7 = &v40;
          sub_10006B300();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10006B330();
          }

          sub_10006B340();
          a1 = v40;
        }

        v10 += 32;
        --v9;
      }

      while (v9);
    }

    else
    {

      a1 = &_swiftEmptyArrayStorage;
    }

    *&v39[0] = &_swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      v11 = sub_10006B4F0();
      if (!v11)
      {
LABEL_30:

        v8 = *&v39[0];
        LODWORD(v3) = *&v39[0] < 0 || (*&v39[0] & 0x4000000000000000) != 0;
        if (v3 == 1)
        {
          goto LABEL_62;
        }

        v16 = *(*&v39[0] + 16);
        if (v16 >= 0x10)
        {
          v17 = 16;
        }

        else
        {
          v17 = *(*&v39[0] + 16);
        }

        while (2)
        {
          v19 = v35;
          v18 = v36;
          if (v16 < v17)
          {
LABEL_64:
            __break(1u);
          }

          else
          {
            if ((v8 & 0xC000000000000001) != 0 && v17)
            {
              v7 = sub_10000D894(0, &qword_100098008, NoteObject_ptr);

              v20 = 0;
              do
              {
                v21 = v20 + 1;
                sub_10006B470(v20);
                v20 = v21;
              }

              while (v17 != v21);
            }

            else
            {
            }

            if (v3)
            {
              v7 = sub_10006B500();
              v23 = v22;
              v25 = v24;
              v27 = v26;

              v17 = v27 >> 1;
              v8 = v7;
            }

            else
            {
              v25 = 0;
              v23 = v8 + 32;
            }

            v28 = v17 - v25;
            if (!__OFSUB__(v17, v25))
            {
              if (!v28)
              {
                swift_unknownObjectRelease();
                return &_swiftEmptyArrayStorage;
              }

              *&v39[0] = &_swiftEmptyArrayStorage;
              v7 = v39;
              sub_100037FD8(0, v28 & ~(v28 >> 63), 0);
              if ((v28 & 0x8000000000000000) == 0)
              {
                v7 = *&v39[0];
                if (v17 <= v25)
                {
                  v29 = v25;
                }

                else
                {
                  v29 = v17;
                }

                v3 = (v29 - v25);
                v30 = &v23[8 * v25];
                while (v3)
                {
                  sub_10002E110(*v30, v19);
                  *&v39[0] = v7;
                  v32 = v7[2];
                  v31 = v7[3];
                  if (v32 >= v31 >> 1)
                  {
                    sub_100037FD8((v31 > 1), v32 + 1, 1);
                    v7 = *&v39[0];
                  }

                  v7[2] = v32 + 1;
                  sub_10003AF30(v19, v7 + ((LOBYTE(v18[5].name) + 32) & ~LOBYTE(v18[5].name)) + v18[4].attr * v32, type metadata accessor for Note);
                  v3 = (v3 - 1);
                  ++v30;
                  if (!--v28)
                  {
                    swift_unknownObjectRelease();
                    return v7;
                  }
                }

                __break(1u);
LABEL_62:
                v7 = sub_10006B4F0();
                if (sub_10006B4F0() < 0)
                {
                  __break(1u);
                  goto LABEL_64;
                }

LABEL_68:
                if (v7 >= 0x10)
                {
                  v34 = 16;
                }

                else
                {
                  v34 = v7;
                }

                if (v7 >= 0)
                {
                  v17 = v34;
                }

                else
                {
                  v17 = 16;
                }

                v16 = sub_10006B4F0();
                continue;
              }

LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }
          }

          break;
        }

        __break(1u);
        goto LABEL_66;
      }
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_30;
      }
    }

    v12 = 0;
    v3 = &stru_100095000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = sub_10006B480();
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v5 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v7 = [objc_opt_self() sharedWidget];
      v15 = [v7 hidesObject:v14];

      if (v15)
      {
      }

      else
      {
        v7 = v39;
        sub_10006B4A0();
        sub_10006B4D0();
        sub_10006B4E0();
        sub_10006B4B0();
      }

      ++v12;
      if (v5 == v11)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }
}