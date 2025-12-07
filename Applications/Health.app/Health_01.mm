uint64_t sub_10001D39C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10001D490(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001D4F0();
  }

  return result;
}

uint64_t sub_10001D4F0()
{
  v1 = type metadata accessor for Logger();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = __chkstk_darwin(v1);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v44 = &v40 - v4;
  v5 = type metadata accessor for CloudSyncRestoreState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001DAC4(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000062CC(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  v43 = v12;
  v13 = __chkstk_darwin(v12);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - v16;
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = OBJC_IVAR____TtC6Health23CloudSyncStartupManager_lastKnownFirstRestoreState;
  swift_beginAccess();
  (*(v6 + 104))(v19, enum case for CloudSyncRestoreState.failed(_:), v5);
  (*(v6 + 56))(v19, 0, 1, v5);
  v21 = *(v9 + 56);
  v22 = v0;
  v41 = v20;
  sub_10001DB58(v0 + v20, v11);
  sub_10001DB58(v19, &v11[v21]);
  v23 = *(v6 + 48);
  if (v23(v11, 1, v5) == 1)
  {
    sub_10001DC44(v19);
    if (v23(&v11[v21], 1, v5) == 1)
    {
      sub_10001DC44(v11);
LABEL_11:
      v36 = v44;
      static Logger.cloudSync.getter();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Starting first restore since last first restore has failed", v39, 2u);
      }

      (*(v46 + 8))(v36, v47);
      return dispatch thunk of CloudSyncStateObserver.startFirstRestoreIfNeeded()();
    }

    goto LABEL_6;
  }

  sub_10001DB58(v11, v17);
  if (v23(&v11[v21], 1, v5) == 1)
  {
    sub_10001DC44(v19);
    (*(v6 + 8))(v17, v5);
LABEL_6:
    sub_100024650(v11);
    goto LABEL_7;
  }

  v33 = v40;
  (*(v6 + 32))(v40, &v11[v21], v5);
  sub_10001DBEC();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v6 + 8);
  v35(v33, v5);
  sub_10001DC44(v19);
  v35(v17, v5);
  sub_10001DC44(v11);
  if (v34)
  {
    goto LABEL_11;
  }

LABEL_7:
  v24 = v45;
  static Logger.cloudSync.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v48 = v28;
    *v27 = 136446210;
    sub_10001DB58(v22 + v41, v42);
    v29 = String.init<A>(describing:)();
    v31 = sub_1000036D0(v29, v30, &v48);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Skipping start first restore since last known first restore state did not fail: %{public}s", v27, 0xCu);
    sub_100003B90(v28);
  }

  return (*(v46 + 8))(v24, v47);
}

void sub_10001DAC4(uint64_t a1)
{
  if (!qword_1000DAAE0)
  {
    sub_1000062CC(255, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DAAE0);
    }
  }
}

uint64_t sub_10001DB58(uint64_t a1, uint64_t a2)
{
  sub_1000062CC(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001DBEC()
{
  result = qword_1000DAAE8;
  if (!qword_1000DAAE8)
  {
    type metadata accessor for CloudSyncRestoreState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAE8);
  }

  return result;
}

uint64_t sub_10001DC44(uint64_t a1)
{
  sub_1000062CC(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001DCD0(uint64_t *a1)
{
  if (sub_10009F37C(2, 26, 0, 0))
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

uint64_t sub_10001DE34(uint64_t *a1)
{
  if (sub_10009F37C(2, 26, 0, 0))
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

void *sub_10001E048@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10001E0BC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001E0EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E1EC()
{
  swift_unknownObjectRelease();
  sub_100026CBC(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001E234()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E26C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E2A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E2DC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001E314(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CellDeselectionBehavior();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10001E3C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CellDeselectionBehavior();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001E464()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E49C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E4D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E528()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E560(uint64_t a1)
{
  sub_100036FF4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001E5CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E608()
{
  sub_100036FF4(255);
  sub_100037254();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001E660()
{
  sub_10003997C(255);
  type metadata accessor for InsetGroupedListStyle();
  sub_100039E88(&qword_1000DB8F8, sub_10003997C, &protocol conformance descriptor for List<A, B>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001E704()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E73C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E8D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E918()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E968()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001E9B4()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10001E9F4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001EA3C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001EA84()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001EACC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001EB14()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001EB4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EBBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EBF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EC44(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001EC84()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001ECBC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001ECF4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001ED34()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001ED74()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001EDB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EE4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001EE9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EEDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001EF34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EFAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001EFEC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F02C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F064()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F0AC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F0F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F12C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001F174(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_10005CC74(0, &qword_1000DC998, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_10001F254(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_10005CC74(0, &qword_1000DC998, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_10001F354@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001F3BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F3F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F42C()
{
  v1 = type metadata accessor for EmergencyAccessBuddyFlow();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001F4CC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001F538()
{
  sub_1000662E4(255);
  sub_1000661E0(255);
  sub_1000660C4(255);
  sub_100065BB8(255);
  type metadata accessor for InsetGroupedListStyle();
  sub_100066198(&qword_1000DCE58, sub_100065BB8, &protocol conformance descriptor for List<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001F678()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F71C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F75C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F79C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F7E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F820()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F868()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F8A0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F8D8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F920()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F958()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F998()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FA08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FA40()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001FA88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001FAC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001FB20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FB58()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FB90()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001FBCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FC9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FCD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FD10()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FD48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FD80()
{

  sub_1000489F0(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001FDC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FDFC()
{
  sub_100003B90((v0 + 16));

  sub_100003B90((v0 + 64));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10001FE44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FE7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FEC4()
{
  v1 = type metadata accessor for ContentConfigurationItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_10001FFC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100020074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100020118(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_10002029C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 48);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_100020424(uint64_t a1)
{
  sub_100098CCC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020480(uint64_t a1, uint64_t a2)
{
  sub_100098CCC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000204FC()
{
  v1 = type metadata accessor for ExportDatasetView(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for SampleExporter(0);
  v4 = *(*(v3 - 1) + 80);
  v17 = *(*(v3 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + ((v2 + 32) & ~v2);

  if (*(v5 + 8))
  {
  }

  v6 = v5 + v1[7];
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);

  v8(v5 + v1[8], v7);

  v9 = v5 + v1[12];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = (((v2 + 32) & ~v2) + v16 + v4) & ~v4;
  sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);

  v13 = v3[5];
  v14 = type metadata accessor for DateInterval();
  (*(*(v14 - 8) + 8))(v0 + v12 + v13, v14);

  return _swift_deallocObject(v0, v12 + v17, v2 | v4 | 7);
}

uint64_t sub_100020870()
{
  v1 = type metadata accessor for ExportDatasetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  if (*(v0 + v3 + 8))
  {
  }

  v5 = v4 + v1[7];
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);

  v7(v4 + v1[8], v6);

  v8 = v4 + v1[12];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = (v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);

  return _swift_deallocObject(v0, v11 + 9, v2 | 7);
}

uint64_t sub_100020B1C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100020B74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DateInterval();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100020C20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DateInterval();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100020D48(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v23 = *a1;
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  v24 = v23;
  v25 = v1;
  v26 = v2;
  type metadata accessor for SearchableListSection(255, &v24);
  v3 = type metadata accessor for Array();
  v4 = type metadata accessor for UUID();
  v5 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_10009A2EC(&qword_1000DE220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *&v24 = v3;
  *(&v24 + 1) = v4;
  v25 = v5;
  v26 = WitnessTable;
  AssociatedConformanceWitness = v7;
  type metadata accessor for ForEach();
  v8 = type metadata accessor for _ConditionalContent();
  *&v24 = &type metadata for Text;
  *(&v24 + 1) = v23;
  v25 = &protocol witness table for Text;
  v26 = v1;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  *&v24 = v23;
  *(&v24 + 1) = v8;
  v25 = v1;
  v26 = v9;
  v10 = type metadata accessor for List();
  v11 = swift_getWitnessTable();
  v12 = sub_100039898();
  *&v24 = v10;
  *(&v24 + 1) = &type metadata for String;
  v25 = v11;
  v26 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v24 = v10;
  *(&v24 + 1) = &type metadata for String;
  v25 = v11;
  v26 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v24 = OpaqueTypeMetadata2;
  *(&v24 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_10009A154(255);
  v15 = type metadata accessor for ModifiedContent();
  sub_10009A1F0(255);
  v17 = v16;
  *&v24 = OpaqueTypeMetadata2;
  *(&v24 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10009A2EC(&qword_1000DE580, sub_10009A154, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v18 = swift_getWitnessTable();
  v19 = sub_10009A2EC(&qword_1000DE588, sub_10009A1F0, &protocol conformance descriptor for TupleToolbarContent<A>);
  *&v24 = v15;
  *(&v24 + 1) = v17;
  v25 = v18;
  v26 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  *&v24 = v15;
  *(&v24 + 1) = v17;
  v25 = v18;
  v26 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  *&v24 = v20;
  *(&v24 + 1) = v21;
  swift_getOpaqueTypeMetadata2();
  *&v24 = v20;
  *(&v24 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationView();
  return swift_getWitnessTable();
}

uint64_t sub_1000212D4()
{
  v1 = type metadata accessor for ContentKind();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002136C()
{
  swift_getKeyPath();
  sub_100022B18(&qword_1000DA6C8, type metadata accessor for TipTileForLoggingHeaderViewCell, &unk_1000AD564);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100021418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100022B18(&qword_1000DA6C8, type metadata accessor for TipTileForLoggingHeaderViewCell, &unk_1000AD564);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model);
}

uint64_t sub_1000214CC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100022B18(&qword_1000DA6C8, type metadata accessor for TipTileForLoggingHeaderViewCell, &unk_1000AD564);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000216B8()
{
  v1 = v0;
  sub_10002292C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = __chkstk_darwin(v2);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v18[-v9];
  v11 = __chkstk_darwin(v8);
  v13 = &v18[-v12];
  __chkstk_darwin(v11);
  v15 = &v18[-v14];
  v19 = v1;
  sub_1000229DC(0, &qword_1000DA6A8, type metadata accessor for TipTileForLoggingHeaderView, &type metadata accessor for Optional);
  sub_100022A40();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.top.getter();
  UIHostingConfiguration.margins(_:_:)();
  v16 = *(v4 + 8);
  v16(v7, v3);
  static Edge.Set.bottom.getter();
  UIHostingConfiguration.margins(_:_:)();
  v16(v10, v3);
  static Edge.Set.leading.getter();
  UIHostingConfiguration.margins(_:_:)();
  v16(v13, v3);
  static Edge.Set.trailing.getter();
  v20[3] = v3;
  v20[4] = sub_100022B18(&qword_1000DA6C0, sub_10002292C, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10000AD4C(v20);
  UIHostingConfiguration.margins(_:_:)();
  v16(v15, v3);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_100021944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TipTileForLoggingHeaderView(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v16 = a1;
  sub_100022B18(&qword_1000DA6C8, type metadata accessor for TipTileForLoggingHeaderViewCell, &unk_1000AD564);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(a1 + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model);
  if (v8)
  {
    v15 = 0;

    State.init(wrappedValue:)();
    v9 = v17;
    v7[2] = v16;
    v7[3] = v9;
    v10 = *(v4 + 24);
    *(v7 + v10) = swift_getKeyPath();
    sub_1000229DC(0, &qword_1000DA5D8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment.Content);
    swift_storeEnumTagMultiPayload();
    v15 = v8;
    type metadata accessor for TipTileForLoggingHeaderViewModel(0);
    State.init(wrappedValue:)();
    v11 = v17;
    *v7 = v16;
    v7[1] = v11;
    sub_100022B68(v7, a2);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v5 + 56))(a2, v12, 1, v4);
}

id sub_100021C44()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of TipTileForLoggingHeaderView._textSize@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1000229DC(0, &qword_1000DA5D8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment.Content);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100021DA8(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_100021E70(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v8 = *(a4 - 8);
  __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _TagTraitWritingModifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  (*(v8 + 16))(v10, a1, a4);
  (*(v8 + 32))(v14, v10, a4);
  v14[*(v11 + 36)] = a2;
  View.modifier<A>(_:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100022028(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000220A0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100022120@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

Swift::Int sub_100022164()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000221AC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000221F0(uint64_t a1)
{
  v2 = sub_100022B18(&unk_1000DC670, type metadata accessor for LaunchOptionsKey, &unk_1000ADB2C);
  v3 = sub_100022B18(&qword_1000DA750, type metadata accessor for LaunchOptionsKey, &unk_1000ADA20);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000222AC(uint64_t a1)
{
  v2 = sub_100022B18(&qword_1000DA758, type metadata accessor for OpenURLOptionsKey, &unk_1000ADB70);
  v3 = sub_100022B18(&qword_1000DA760, type metadata accessor for OpenURLOptionsKey, &unk_1000AD90C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100022368@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000223B0(uint64_t a1)
{
  v2 = sub_100022B18(&qword_1000DA768, type metadata accessor for Mode, &unk_1000AD7A0);
  v3 = sub_100022B18(&qword_1000DA770, type metadata accessor for Mode, &unk_1000AD740);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002246C(uint64_t a1)
{
  v2 = sub_100022B18(&qword_1000DA7D8, type metadata accessor for HKCategoryTypeIdentifier, &unk_1000ADD30);
  v3 = sub_100022B18(&qword_1000DA7E0, type metadata accessor for HKCategoryTypeIdentifier, &unk_1000ADCD0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100022528(uint64_t a1)
{
  v2 = sub_100022B18(&qword_1000DA7C8, type metadata accessor for HKQuantityTypeIdentifier, &unk_1000ADE88);
  v3 = sub_100022B18(&qword_1000DA7D0, type metadata accessor for HKQuantityTypeIdentifier, &unk_1000ADE28);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000225E4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100022620(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100022674(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_1000226E8(void *a1, uint64_t *a2)
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

uint64_t type metadata accessor for TipTileForLoggingHeaderViewCell(uint64_t a1)
{
  result = qword_1000DA618;
  if (!qword_1000DA618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000227C4(uint64_t a1)
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

__n128 sub_100022864(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100022870(uint64_t a1, int a2)
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

uint64_t sub_100022890(uint64_t result, int a2, int a3)
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

void sub_10002292C(uint64_t a1)
{
  if (!qword_1000DA6A0)
  {
    sub_1000229DC(255, &qword_1000DA6A8, type metadata accessor for TipTileForLoggingHeaderView, &type metadata accessor for Optional);
    sub_100022A40();
    v1 = type metadata accessor for UIHostingConfiguration();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DA6A0);
    }
  }
}

void sub_1000229DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100022A40()
{
  result = qword_1000DA6B0;
  if (!qword_1000DA6B0)
  {
    sub_1000229DC(255, &qword_1000DA6A8, type metadata accessor for TipTileForLoggingHeaderView, &type metadata accessor for Optional);
    sub_100022B18(&qword_1000DA6B8, type metadata accessor for TipTileForLoggingHeaderView, &protocol conformance descriptor for TipTileForLoggingHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6B0);
  }

  return result;
}

uint64_t sub_100022B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100022B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipTileForLoggingHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022BCC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model) = *(v0 + 24);
}

void sub_100022FA8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10002320C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10002327C(uint64_t a1, uint64_t a2, void *a3)
{
  v22[1] = a1;
  sub_100023ED8(0, &qword_1000DA858, sub_100023F2C);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v22 - v8;
  sub_100023ED8(0, &qword_1000DA838, sub_100023DD4);
  v11 = v10;
  v12 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = v22 - v13;
  v15 = OBJC_IVAR____TtC6Health26NotificationSyncStoreModel__mostRecentSentInstruction;
  v23 = 0;
  v24 = 0;
  sub_100023DD4(0);
  Published.init(initialValue:)();
  (*(v12 + 32))(v3 + v15, v14, v11);
  v16 = OBJC_IVAR____TtC6Health26NotificationSyncStoreModel__instructionsQueryResult;
  v23 = _swiftEmptyArrayStorage;
  v24 = 0;
  sub_100023F2C(0);
  Published.init(initialValue:)();
  (*(v7 + 32))(v3 + v16, v9, v6);
  *(v3 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_notificationInstructionQuery) = 0;
  *(v3 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_healthStore) = a3;
  v17 = objc_allocWithZone(HKNotificationSyncStore);
  v18 = a3;
  v19 = String._bridgeToObjectiveC()();

  v20 = [v17 initWithClientIdentifier:v19 healthStore:v18];

  *(v3 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_notificationSyncStore) = v20;
  return v3;
}

uint64_t sub_1000234F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return _swift_task_switch(sub_10002351C, 0, 0);
}

uint64_t sub_10002351C()
{
  v1 = v0[21];
  v2 = sub_100024270(v0[18], v0[19], v0[20]);
  v0[22] = v2;
  v3 = *(v1 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_notificationSyncStore);
  v0[2] = v0;
  v0[3] = sub_10002364C;
  v4 = swift_continuation_init();
  sub_10002444C(0);
  v0[17] = v5;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100024754;
  v0[13] = &unk_1000CD5D0;
  v0[14] = v4;
  [v3 sendNotificationInstruction:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002364C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100023810;
  }

  else
  {
    v2 = sub_10002375C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002375C()
{
  v1 = *(v0 + 176);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;

  static Published.subscript.setter();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100023810()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  swift_willThrow();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v1;
  *(v0 + 88) = 1;

  static Published.subscript.setter();
  v3 = *(v0 + 8);

  return v3();
}

void sub_1000238D8()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = objc_allocWithZone(HKNotificationInstructionDiagnosticQuery);
  v6[4] = sub_100024014;
  v6[5] = v1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10002401C;
  v6[3] = &unk_1000CD5A8;
  v3 = _Block_copy(v6);

  v4 = [v2 initWithResultsHandler:v3];
  _Block_release(v3);

  [*(v0 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_healthStore) executeQuery:v4];
  v5 = *(v0 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_notificationInstructionQuery);
  *(v0 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_notificationInstructionQuery) = v4;
}

uint64_t sub_100023A08(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_errorRetain();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
  }

  return static Published.subscript.setter();
}

uint64_t sub_100023B24()
{
  v1 = OBJC_IVAR____TtC6Health26NotificationSyncStoreModel__mostRecentSentInstruction;
  sub_100023ED8(0, &qword_1000DA838, sub_100023DD4);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC6Health26NotificationSyncStoreModel__instructionsQueryResult;
  sub_100023ED8(0, &qword_1000DA858, sub_100023F2C);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotificationSyncStoreModel(uint64_t a1)
{
  result = qword_1000DA828;
  if (!qword_1000DA828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100023CBC(uint64_t a1)
{
  sub_100023ED8(319, &qword_1000DA838, sub_100023DD4);
  if (v1 <= 0x3F)
  {
    sub_100023ED8(319, &qword_1000DA858, sub_100023F2C);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100023DD4(uint64_t a1)
{
  if (!qword_1000DA840)
  {
    sub_100023E70(255, &qword_1000DA848, &qword_1000DA850, HKNotificationInstruction_ptr, &type metadata accessor for Optional);
    sub_100008C14();
    v1 = type metadata accessor for Result();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DA840);
    }
  }
}

void sub_100023E70(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003DDC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100023ED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100023F2C(uint64_t a1)
{
  if (!qword_1000DA860)
  {
    sub_100023E70(255, &qword_1000DA868, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr, &type metadata accessor for Array);
    sub_100008C14();
    v1 = type metadata accessor for Result();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DA860);
    }
  }
}

uint64_t sub_100023FD4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NotificationSyncStoreModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10002401C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_100003DDC(0, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_100024124@<X0>(uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_1000241D0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  a7(v8, v9);
  return static Published.subscript.setter();
}

uint64_t sub_100024264(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

id sub_100024270(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (a3)
  {
    v13 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v13 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
    }
  }

  Date.init()();
  Date.addingTimeInterval(_:)();
  v14 = objc_allocWithZone(HKNotificationInstruction);
  v15 = String._bridgeToObjectiveC()();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v17 = [v14 initWithAction:a1 categoryIdentifier:v15 expirationDate:isa];

  v18 = *(v7 + 8);
  v18(v10, v6);
  v18(v12, v6);
  return v17;
}

void sub_10002444C(uint64_t a1)
{
  if (!qword_1000DAC40)
  {
    sub_100008C14();
    v1 = type metadata accessor for UnsafeContinuation();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAC40);
    }
  }
}

id sub_1000244D0(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1000244DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_notificationCenterObserver);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain_n();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease_n();
  }

  v4 = OBJC_IVAR____TtC6Health23CloudSyncStartupManager_observable;
  sub_1000062CC(0, &unk_1000DA9F8, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for LegacyObservable);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_10001DC44(v0 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_lastKnownFirstRestoreState);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100024650(uint64_t a1)
{
  sub_10001DAC4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ImportExportDataSource(uint64_t a1)
{
  result = qword_1000DAB00;
  if (!qword_1000DAB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024754(uint64_t a1, int a2, void *a3)
{
  v5 = sub_10000BFFC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return _swift_continuation_throwingResume(v5);
  }

  if (!a3)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v5);
  }

  sub_100009630(0, &qword_1000DB730, &protocol descriptor for Error);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return _swift_continuation_throwingResumeWithError(v6, v7);
}

void sub_100024810(void *a1)
{
  sub_100026508(0, &unk_1000DAC60, &type metadata accessor for UTType, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  static UTType.commaSeparatedText.getter();
  v3 = objc_allocWithZone(UIDocumentPickerViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initForOpeningContentTypes:isa asCopy:1];

  v6 = *(v1 + qword_1000DAAF8);
  v7 = type metadata accessor for ImportExportDataSourceDocumentPickerDelegate();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC6HealthP33_9FDE690F091037398242CA42A360B38544ImportExportDataSourceDocumentPickerDelegate_healthStore] = v6;
  v15.receiver = v8;
  v15.super_class = v7;
  v9 = v6;
  v10 = objc_msgSendSuper2(&v15, "init");
  v11 = *(v1 + qword_1000DAAF0);
  *(v1 + qword_1000DAAF0) = v10;
  v12 = v10;

  [v5 setDelegate:{v12, v15.receiver, v15.super_class}];
  v13 = [a1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 presentViewController:v5 animated:1 completion:0];
  }
}

uint64_t sub_100024A08(void *a1)
{
  v3 = type metadata accessor for ExportDatasetView(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  sub_10008C658(*(v1 + qword_1000DAAF8), (&v19 - v7));
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  v12 = a1;
  sub_10001A394(v10, v11);
  *(v8 + 1) = sub_100026DE4;
  *(v8 + 2) = v9;
  sub_100026DEC(v8, v6);
  sub_100026E50(0);
  v14 = objc_allocWithZone(v13);
  v15 = UIHostingController.init(rootView:)();
  v16 = [v12 navigationController];
  if (v16)
  {
    v17 = v16;
    [v16 presentViewController:v15 animated:1 completion:0];
  }

  return sub_100026F2C(v8, type metadata accessor for ExportDatasetView);
}

void sub_100024B84(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentedViewController];

    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_100024C54()
{
  v1 = *(v0 + qword_1000DAAF8);
}

uint64_t sub_100024C94()
{
  v0 = MutableArrayDataSource.deinit();
  v1 = *(v0 + qword_1000DAAF0);

  v2 = *(v0 + qword_1000DAAF8);

  return swift_deallocClassInstance();
}

uint64_t sub_100024DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = type metadata accessor for Calendar.Identifier();
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();
  type metadata accessor for Calendar();
  v7[26] = swift_task_alloc();
  sub_100026508(0, &qword_1000DAC30, &type metadata accessor for DateComponents, &type metadata accessor for Optional);
  v7[27] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v7[28] = v9;
  v7[29] = *(v9 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v10 = type metadata accessor for SampleDataDecoder();
  v7[32] = v10;
  v7[33] = *(v10 - 8);
  v7[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[35] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[36] = v12;
  v7[37] = v11;

  return _swift_task_switch(sub_100025028, v12, v11);
}

uint64_t sub_100025028()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  sub_100026C68(v0[19], v0[20]);
  static Logger.general.getter();
  v5 = type metadata accessor for DateComponents();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  (*(v3 + 104))(v2, enum case for Calendar.Identifier.gregorian(_:), v4);
  Calendar.init(identifier:)();
  (*(v3 + 8))(v2, v4);
  SampleDataDecoder.init(fileData:logger:calendar:dateShift:)();
  v6 = SampleDataDecoder.decodeSamples()();
  v7 = *(v0[21] + OBJC_IVAR____TtC6HealthP33_9FDE690F091037398242CA42A360B38544ImportExportDataSourceDocumentPickerDelegate_healthStore);
  if (v6 >> 62)
  {
    sub_100003DDC(0, &qword_1000DAC38, HKObject_ptr);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003DDC(0, &qword_1000DAC38, HKObject_ptr);
  }

  sub_100003DDC(0, &qword_1000DAC38, HKObject_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[38] = isa;

  v0[2] = v0;
  v0[3] = sub_100025530;
  v9 = swift_continuation_init();
  sub_10002444C(0);
  v0[17] = v10;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100024754;
  v0[13] = &unk_1000CD6B8;
  v0[14] = v9;
  [v7 saveObjects:isa withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100025530()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 296);
  v4 = *(v1 + 288);
  if (v2)
  {
    v5 = sub_100025730;
  }

  else
  {
    v5 = sub_100025660;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100025660()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[33];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100025730()
{
  v24 = v0;
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[33];

  swift_willThrow();
  (*(v4 + 8))(v2, v3);

  static Logger.general.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[29];
    v21 = v0[28];
    v22 = v0[30];
    v8 = v0[22];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 136446466;
    v0[18] = v8;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_1000036D0(v12, v13, &v23);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s]: Failed at some point trying to open CSV or write. Error: %@", v9, 0x16u);
    sub_100026F2C(v10, sub_100026C00);

    sub_100003B90(v11);

    (*(v7 + 8))(v22, v21);
  }

  else
  {
    v17 = v0[29];
    v16 = v0[30];
    v18 = v0[28];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

id sub_100025A88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportExportDataSourceDocumentPickerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100025AF4(uint64_t a1)
{
  *(a1 + 8) = sub_100026EE4(&qword_1000DABE0, type metadata accessor for ImportExportDataSource, &unk_1000AE1B0);
  result = sub_100026EE4(&qword_1000DABE8, type metadata accessor for ImportExportDataSource, &unk_1000AE1E0);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100025B78(void *a1)
{
  v2 = v1;
  v65 = type metadata accessor for SectionedDataSourceContainerViewType();
  v76 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026508(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v70 = &v53 - v6;
  v71 = type metadata accessor for CellDeselectionBehavior();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContentConfigurationItem();
  v11 = *(v10 - 8);
  v67 = v10;
  v68 = v11;
  v12 = __chkstk_darwin(v10);
  v66 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v75 = &v53 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1000DAAF0) = 0;
  *(v2 + qword_1000DAAF8) = a1;
  v78[0] = 0;
  v78[1] = 0xE000000000000000;
  v19 = a1;
  _StringGuts.grow(_:)(16);

  strcpy(v78, "MutableArray<");
  HIWORD(v78[1]) = -4864;
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  v23 = *(v16 + 8);
  v72 = v15;
  v23(v18, v15);
  v73 = v23;
  v74 = v16 + 8;
  v24._countAndFlagsBits = v20;
  v24._object = v22;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 62;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v69 = MutableArrayDataSource.init(arrangedSections:identifier:)();
  swift_retain_n();
  UUID.init()();
  v63 = UUID.uuidString.getter();
  v62 = v26;
  v23(v18, v15);
  v58 = type metadata accessor for UIListContentConfiguration();
  v79 = v58;
  v80 = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v78);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v27 = objc_opt_self();
  v28 = [v27 tintColor];
  v29 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v29(v77, 0);
  v30 = v9;
  *v9 = 1;
  v59 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
  v31 = *(v7 + 104);
  v60 = v7 + 104;
  v61 = v31;
  v31(v9);
  v32 = type metadata accessor for UIBackgroundConfiguration();
  v33 = *(v32 - 8);
  v56 = *(v33 + 56);
  v57 = v33 + 56;
  v56(v70, 1, 1, v32);
  v55 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v34 = *(v76 + 104);
  v76 += 104;
  v54 = v34;
  v35 = v64;
  v36 = v65;
  v34(v64);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  UUID.init()();
  UUID.uuidString.getter();
  v63 = v37;
  v73(v18, v72);
  v79 = v58;
  v80 = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v78);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v38 = [v27 tintColor];
  v39 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v39(v77, 0);
  *v30 = 1;
  v61(v30, v59, v71);
  v56(v70, 1, 1, v32);
  v54(v35, v55, v36);
  v40 = v66;
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  sub_100026508(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v41 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v76 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  sub_10002656C(0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000AE110;
  v43 = v67;
  *(v42 + 56) = v67;
  v44 = sub_100026EE4(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  *(v42 + 64) = v44;
  v45 = sub_10000AD4C((v42 + 32));
  v46 = v68;
  v47 = *(v68 + 16);
  v48 = v75;
  v47(v45, v75, v43);
  *(v42 + 96) = v43;
  *(v42 + 104) = v44;
  v49 = sub_10000AD4C((v42 + 72));
  v47(v49, v40, v43);
  UUID.init()();
  UUID.uuidString.getter();
  v73(v18, v72);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v50 = v69;
  dispatch thunk of MutableArrayDataSource.replaceAllSections(with:reconfigureOrReloadExistingItems:)();

  v51 = *(v46 + 8);
  v51(v40, v43);
  v51(v48, v43);
  return v50;
}

void sub_100026508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10002656C(uint64_t a1)
{
  if (!qword_1000DAC00)
  {
    sub_100009630(255, &qword_1000DAC08, &protocol descriptor for SnapshotDataSourceItem);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAC00);
    }
  }
}

uint64_t sub_1000265D4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  sub_100026508(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v37 = v5;
  (*(v13 + 16))(v15, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);
  if (URL.pathExtension.getter() == 7762787 && v16 == 0xE300000000000000)
  {

    goto LABEL_11;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_11:
    v28 = Data.init(contentsOf:options:)();
    v30 = v29;
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    type metadata accessor for MainActor();
    sub_100026C68(v28, v30);
    v32 = v2;
    v33 = static MainActor.shared.getter();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v28;
    v34[5] = v30;
    v35 = ObjectType;
    v34[6] = v32;
    v34[7] = v35;
    sub_100084B64(0, 0, v11, &unk_1000AE230, v34);

    sub_100026CBC(v28, v30);
    return (*(v13 + 8))(v15, v12);
  }

  (*(v13 + 8))(v15, v12);
  v5 = v37;
LABEL_8:
  static Logger.general.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = v5;
    v23 = swift_slowAlloc();
    v39[0] = v23;
    *v21 = 136446210;
    v39[1] = ObjectType;
    swift_getMetatypeMetadata();
    v24 = String.init<A>(describing:)();
    v26 = sub_1000036D0(v24, v25, v39);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s]: No URLs found, or file selected does not have csv file extension.", v21, 0xCu);
    sub_100003B90(v23);

    return (*(v22 + 8))(v8, v4);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_100026C00(uint64_t a1)
{
  if (!qword_1000DAC20)
  {
    sub_100003DDC(255, &qword_1000DD140, NSObject_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAC20);
    }
  }
}

uint64_t sub_100026C68(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100026CBC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100026D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100018D6C;

  return sub_100024DE4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100026DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportDatasetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100026E50(uint64_t a1)
{
  if (!qword_1000DAC50)
  {
    type metadata accessor for ExportDatasetView(255);
    sub_100026EE4(&qword_1000DAC58, type metadata accessor for ExportDatasetView, &unk_1000B1284);
    v1 = type metadata accessor for UIHostingController();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAC50);
    }
  }
}

uint64_t sub_100026EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100026F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100027034@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CellDeselectionBehavior();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_1000270AC()
{
  result = [objc_allocWithZone(NSOperationQueue) init];
  qword_1000E3CF0 = result;
  return result;
}

void *sub_1000270E0(int a1)
{
  v50 = type metadata accessor for SectionedDataSourceContainerViewType();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015DD8(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v4 - 8);
  v48 = &v31 - v5;
  v47 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for ContentConfigurationItem();
  v9 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = _swiftEmptyArrayStorage;
  sub_10007C53C(0, 3, 0);
  v11 = 0;
  v43 = (v6 + 16);
  v51 = a1;
  v42 = (a1 & 1) == 0;
  v12 = v54;
  v41 = (v2 + 104);
  v40 = (v6 + 8);
  v39 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
  v45 = v9;
  v38 = v9 + 32;
  v37 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v36 = "Trigger Relevance Engine";
  v35 = "FeedItemGenerationButton";
  v34 = "progress for profile";
  v33 = "RelevanceEngineButton";
  v32 = "TriggerSyncButton";
  v31 = "Trigger Cloud Sync";
  v13 = v47;
  do
  {
    v14 = *(&off_1000CC190 + v11 + 32);
    static UIListContentConfiguration.cell()();
    UIListContentConfiguration.text.setter();
    v15 = objc_opt_self();
    v16 = &selRef_lightGrayColor;
    if ((v51 & 1) == 0)
    {
      v16 = &selRef_tintColor;
    }

    v17 = [v15 *v16];
    v18 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v18(v53, 0);
    v53[3] = v13;
    v53[4] = &protocol witness table for UIListContentConfiguration;
    v19 = sub_10000AD4C(v53);
    (*v43)(v19, v8, v13);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v14;
    v22 = type metadata accessor for ManualTriggerSelectionHandling(0);
    v52[3] = v22;
    v52[4] = sub_100028B2C(&qword_1000DAD38, type metadata accessor for ManualTriggerSelectionHandling, &unk_1000AE314);
    v23 = sub_10000AD4C(v52);
    v24 = *(v22 + 20);
    *(v23 + v24) = 1;
    v25 = type metadata accessor for CellDeselectionBehavior();
    (*(*(v25 - 8) + 104))(v23 + v24, v39, v25);
    *v23 = sub_1000286A0;
    v23[1] = v21;
    *(v23 + *(v22 + 24)) = v42;
    v26 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
    (*v41)(v49, v37, v50);
    v27 = v44;
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    (*v40)(v8, v13);
    v54 = v12;
    v29 = v12[2];
    v28 = v12[3];
    if (v29 >= v28 >> 1)
    {
      sub_10007C53C((v28 > 1), v29 + 1, 1);
      v12 = v54;
    }

    ++v11;
    v12[2] = v29 + 1;
    (*(v45 + 32))(v12 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v29, v27, v46);
  }

  while (v11 != 3);
  return v12;
}

uint64_t sub_1000277B8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sub_100028914();
      }

      else
      {
        sub_100027BA0();
      }
    }

    else
    {
      sub_1000286CC();
    }
  }

  return result;
}

uint64_t sub_100027834(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    v11 = static OS_dispatch_queue.main.getter();
    v14 = v5;
    v12 = v11;
    aBlock[4] = sub_100028B24;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008310;
    aBlock[3] = &unk_1000CD7F0;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100028B2C(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100015DD8(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    sub_100028B74();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v14);
  }

  return result;
}

uint64_t sub_100027B38()
{
  v0 = sub_1000270E0(0);
  sub_10009C004(v0);

  dispatch thunk of MutableArrayDataSource.replaceItemsForSection(at:newItems:reconfigureAndReloadItems:)();
}

void sub_100027BA0()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v26 = v2;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    v12 = _typeName(_:qualified:)();
    v14 = sub_1000036D0(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] Triggering cloud sync", v10, 0xCu);
    sub_100003B90(v11);
  }

  (*(v4 + 8))(v6, v3);
  if (qword_1000DA520 != -1)
  {
    swift_once();
  }

  v15 = qword_1000E3CD8;
  v16 = *(v1 + qword_1000DACD0);
  v17 = objc_allocWithZone(HKCloudSyncControl);
  v18 = v15;
  v19 = [v17 initWithHealthStore:v16];
  v20 = String._bridgeToObjectiveC()();
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  aBlock[4] = sub_10002863C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000099BC;
  aBlock[3] = &unk_1000CD750;
  v23 = _Block_copy(aBlock);
  v24 = v19;

  [v24 syncWithRequest:v18 reason:v20 completion:v23];
  _Block_release(v23);
}

uint64_t sub_100027ECC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    static Logger.general.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 136315394;
      v15 = _typeName(_:qualified:)();
      v17 = sub_1000036D0(v15, v16, &v21);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v13 + 14) = v18;
      *v14 = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Failed to request cloud sync: %@", v13, 0x16u);
      sub_100028644(v14);

      sub_100003B90(v20);
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_10002812C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100028260(uint64_t a1)
{
  *(a1 + 8) = sub_100028B2C(&qword_1000DAD28, type metadata accessor for ManualTriggerDataSource, &unk_1000AE270);
  result = sub_100028B2C(&qword_1000DAD30, type metadata accessor for ManualTriggerDataSource, &unk_1000AE2A0);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1000282E4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ArrayDataSourceSection();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = v28;
  __chkstk_darwin(v4);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1000DACD0) = a1;
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  v11 = a1;
  _StringGuts.grow(_:)(16);

  strcpy(v30, "MutableArray<");
  HIWORD(v30[1]) = -4864;
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v10, v7);
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18 = MutableArrayDataSource.init(arrangedSections:identifier:)();

  v19 = sub_1000270E0(0);
  sub_10009C004(v19);

  UUID.init()();
  UUID.uuidString.getter();
  v15(v10, v7);
  v20 = v27;
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  sub_100015DD8(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000AE100;
  v23 = v22 + v21;
  v24 = v29;
  (*(v5 + 16))(v23, v20, v29);
  dispatch thunk of MutableArrayDataSource.replaceAllSections(with:reconfigureOrReloadExistingItems:)();

  (*(v5 + 8))(v20, v24);
  return v18;
}

uint64_t sub_100028644(uint64_t a1)
{
  sub_100026C00(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000286CC()
{
  v0 = type metadata accessor for DateInterval();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000270E0(1);
  sub_10009C004(v1);

  dispatch thunk of MutableArrayDataSource.replaceItemsForSection(at:newItems:reconfigureAndReloadItems:)();

  if (qword_1000DA528 != -1)
  {
    swift_once();
  }

  v2 = qword_1000E3CF0;
  [qword_1000E3CF0 setSuspended:1];
  v3 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100028B1C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CD7C8;
  v4 = _Block_copy(aBlock);
  v5 = objc_opt_self();

  v6 = [v5 blockOperationWithBlock:v4];
  _Block_release(v4);

  [v2 addOperation:v6];
  static DateInterval.allTimeInterval.getter();
  v7 = objc_allocWithZone(type metadata accessor for FeedItemGenerationOperation());
  v8 = FeedItemGenerationOperation.init(dateRange:)();
  [v2 addOperation:v8];
  [v6 addDependency:v8];
  [v2 setSuspended:0];
}

void sub_100028914()
{
  v0 = sub_1000270E0(1);
  sub_10009C004(v0);

  dispatch thunk of MutableArrayDataSource.replaceItemsForSection(at:newItems:reconfigureAndReloadItems:)();

  if (qword_1000DA528 != -1)
  {
    swift_once();
  }

  v1 = qword_1000E3CF0;
  [qword_1000E3CF0 setSuspended:1];
  v2 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_100028D0C;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100008310;
  v8[3] = &unk_1000CD818;
  v3 = _Block_copy(v8);
  v4 = objc_opt_self();

  v5 = [v4 blockOperationWithBlock:v3];
  _Block_release(v3);

  [v1 addOperation:v5];
  static Feed.Kind.relevanceRankedFeeds.getter();
  v6 = objc_allocWithZone(type metadata accessor for PopulateDiscoverFeedOperation());
  v7 = PopulateDiscoverFeedOperation.init(feedKinds:)();
  [v5 addDependency:v7];
  [v1 addOperation:v7];
  [v1 setSuspended:0];
}

uint64_t sub_100028B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100028B74()
{
  result = qword_1000DAD48;
  if (!qword_1000DAD48)
  {
    sub_100015DD8(255, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD48);
  }

  return result;
}

uint64_t sub_100028C24(uint64_t a1)
{
  result = sub_100028CB0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CellDeselectionBehavior();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100028CB0()
{
  result = qword_1000DADB8;
  if (!qword_1000DADB8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000DADB8);
  }

  return result;
}

void sub_100028D78()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  [v0 setBackgroundColor:v1];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:*&v0[OBJC_IVAR____TtC6Health25ImageWithCircleBackground_image]];
  [v2 setContentMode:1];
  [v0 addSubview:v2];
  [v2 hk_alignConstraintsWithView:v0 insets:{12.0, 12.0, 12.0, 12.0}];
  v3 = [v0 heightAnchor];
  v4 = [v0 widthAnchor];
  v6 = [v3 constraintEqualToAnchor:v4];

  LODWORD(v5) = 1148846080;
  [v6 setPriority:v5];
  [v6 setActive:1];
}

id sub_100028FD8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ImageWithCircleBackground();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for InternalSettingsViewController(uint64_t a1)
{
  result = qword_1000DAE20;
  if (!qword_1000DAE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000290E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v18 = a1;
  v19 = type metadata accessor for ListLayoutConfiguration();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002ACA0();
  v11 = v10;
  v12 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SnapshotDataSource.snapshot.getter();
  v15 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    static ListLayoutConfiguration.withHeader.getter();
    CollectionViewLayoutContext.environment.getter();
    v16 = ListLayoutConfiguration.layout(for:)();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v19);
  }

  else
  {
    static LayoutConfiguration.empty.getter();
    v16 = LayoutConfiguration.layoutSection.getter();
    (*(v7 + 8))(v9, v6);
  }

  return v16;
}

unint64_t sub_10002936C@<X0>(uint64_t (*a1)(uint64_t)@<X5>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ArrayDataSourceSection();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1(v7);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v10 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v6 + 16))(v9, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * result, v5);

  ArrayDataSourceSection.title.getter();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  if (v13)
  {
    String.uppercased()();

    static UIListContentConfiguration.header()();
    v14 = [objc_opt_self() grayColor];
    v15 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v15(v18, 0);
    v16 = type metadata accessor for HeaderItem();
    swift_allocObject();
    v17 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
    a2[3] = v16;
    result = sub_10002C3D8(&qword_1000DAE78, &type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
    a2[4] = result;
    *a2 = v17;
  }

  else
  {
    a2[3] = type metadata accessor for FallbackHeaderItem();
    a2[4] = sub_10002C3D8(&qword_1000DAE70, &type metadata accessor for FallbackHeaderItem, &protocol conformance descriptor for FallbackHeaderItem);
    sub_10000AD4C(a2);
    return FallbackHeaderItem.init()();
  }

  return result;
}

void sub_1000296C0(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for InternalSettingsViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemGroupedBackgroundColor];
    [v3 setBackgroundColor:v4];

    sub_100029784();
  }

  else
  {
    __break(1u);
  }
}

void sub_100029784()
{
  v1 = [v0 navigationItem];
  v2 = String._bridgeToObjectiveC()();
  [v1 setTitle:v2];

  v3 = [v0 navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [v0 navigationItem];
  v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"doneButtonTapped"];
  [v4 setRightBarButtonItem:v5];
}

uint64_t sub_1000298BC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = type metadata accessor for InternalSettingsViewController(0);
  v16.receiver = v11;
  v16.super_class = v13;
  objc_msgSendSuper2(&v16, "collectionView:didSelectItemAtIndexPath:", v10, isa);

  v14 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v10 deselectItemAtIndexPath:v14 animated:1];

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100029A04@<X0>(uint64_t *a1@<X8>)
{
  sub_10002C040(0);
  swift_allocObject();
  result = Future.init(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100029A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_10002C1C4();
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInteractive(_:), v10);

  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10002C390;
  *(v16 + 24) = v14;
  aBlock[4] = sub_10002C3D0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CD890;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10002C3D8(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100015E3C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v21 + 8))(v6, v4);
  (*(v7 + 8))(v9, v20);
}

uint64_t sub_100029E28(void (*a1)(uint64_t, void), uint64_t a2)
{
  v50[1] = a2;
  v74 = type metadata accessor for SectionedDataSourceContainerViewType();
  v3 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015E3C(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v72 = v50 - v6;
  v71 = type metadata accessor for CellDeselectionBehavior();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015E3C(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v69 = v50 - v10;
  v68 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v11 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for UICellAccessory.DisplayedState();
  v13 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for UUID();
  v52 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ContentConfigurationItem();
  v76 = *(v87 - 8);
  v16 = __chkstk_darwin(v87);
  v64 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = v50 - v18;
  v75 = type metadata accessor for FoundationPluginBundleProvider();
  static FoundationPluginBundleProvider.sharedInstance.getter();
  v19 = dispatch thunk of PluginBundleProvider.allPluginBundleNames()();

  v91[0] = v19;

  sub_10002AD0C(v91);
  v51 = a1;

  v20 = v91[0];
  v89 = *(v91[0] + 2);
  if (v89)
  {
    v21 = 0;
    v62 = (v52 + 8);
    v61 = enum case for UICellAccessory.DisplayedState.always(_:);
    v60 = (v13 + 104);
    v59 = (v11 + 8);
    v58 = (v13 + 8);
    v57 = enum case for CellDeselectionBehavior.default(_:);
    v56 = (v7 + 104);
    v55 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
    v54 = (v3 + 104);
    v85 = (v76 + 32);
    v22 = v91[0] + 40;
    v23 = _swiftEmptyArrayStorage;
    v53 = xmmword_1000AE100;
    v63 = v91[0];
    while (v21 < *(v20 + 2))
    {

      static FoundationPluginBundleProvider.sharedInstance.getter();
      v24 = dispatch thunk of PluginBundleProvider.loadPluginBundle(named:)();

      sub_10002C420(0, &qword_1000DAEF8, &protocol descriptor for PluginInternalSettingsProviding);
      v88 = v24;
      NSBundle.getPluginAppDelegateObject<A>(as:)();
      v25 = v91[0];
      if (v91[0])
      {
        v26 = v91[1];
        v27 = String._bridgeToObjectiveC()();
        v28 = [v27 stringByDeletingPathExtension];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v23;
        v30 = v29;

        v31 = swift_allocObject();
        v81 = v31;
        *(v31 + 16) = v25;
        *(v31 + 24) = v26;
        swift_unknownObjectRetain();
        v32 = v77;
        UUID.init()();
        v33 = UUID.uuidString.getter();
        v82 = v34;
        v83 = v33;
        (*v62)(v32, v78);
        v91[3] = type metadata accessor for UIListContentConfiguration();
        v91[4] = &protocol witness table for UIListContentConfiguration;
        sub_10000AD4C(v91);
        static UIListContentConfiguration.cell()();
        v80 = v30;

        UIListContentConfiguration.text.setter();
        v35 = [objc_opt_self() labelColor];
        v36 = UIListContentConfiguration.textProperties.modify();
        UIListContentConfiguration.TextProperties.color.setter();
        v36(v90, 0);
        sub_100015E3C(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
        type metadata accessor for UICellAccessory();
        *(swift_allocObject() + 16) = v53;
        v37 = *v60;
        v79 = v25;
        v38 = v65;
        v39 = v66;
        v37(v65, v61, v66);
        v40 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v40 - 8) + 56))(v69, 1, 1, v40);
        v41 = v67;
        UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
        static UICellAccessory.disclosureIndicator(displayed:options:)();
        (*v59)(v41, v68);
        (*v58)(v38, v39);

        (*v56)(v70, v57, v71);
        v42 = type metadata accessor for UIBackgroundConfiguration();
        (*(*(v42 - 8) + 56))(v72, 1, 1, v42);
        (*v54)(v73, v55, v74);

        v43 = v64;
        v23 = v84;
        ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();

        swift_unknownObjectRelease();

        v44 = *v85;
        (*v85)(v86, v43, v87);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100031774(0, v23[2] + 1, 1, v23);
        }

        v46 = v23[2];
        v45 = v23[3];
        v20 = v63;
        if (v46 >= v45 >> 1)
        {
          v23 = sub_100031774((v45 > 1), v46 + 1, 1, v23);
        }

        v23[2] = v46 + 1;
        v44(v23 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v46, v86, v87);
      }

      else
      {
      }

      ++v21;
      v22 += 16;
      if (v89 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_13:

    sub_100015E3C(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
    type metadata accessor for ArrayDataSourceSection();
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1000AE100;
    sub_10009C004(v23);

    v48 = v77;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v52 + 8))(v48, v78);
    ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
    v51(v47, 0);
  }

  return result;
}

uint64_t sub_10002AB0C()
{
  v0 = type metadata accessor for ListLayoutConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ListLayoutConfiguration.withHeader.getter();
  CollectionViewLayoutContext.environment.getter();
  v4 = ListLayoutConfiguration.layout(for:)();
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_10002AC60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalSettingsViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002ACA0()
{
  if (!qword_1000DAE80)
  {
    v0 = type metadata accessor for NSDiffableDataSourceSnapshot();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAE80);
    }
  }
}

Swift::Int sub_10002AD0C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100033BA8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10002AD78(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10002AD78(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10002AF40(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10002AE70(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002AE70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002AF40(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100033330(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10002B51C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100031644(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100031644((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10002B51C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100033330(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000332A4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10002B51C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10002B744()
{
  v0 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v0 - 8);
  v23 = &v24[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015E3C(0, &qword_1000DD550, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v4 = &v24[-1] - v3;
  sub_10002BFAC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0D8(0);
  v11 = v10;
  v12 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v24[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C040(0);
  sub_10002C3D8(&qword_1000DAEB0, sub_10002C040, &protocol conformance descriptor for Future<A, B>);
  Deferred.init(createPublisher:)();
  sub_10002C1C4();
  v15 = static OS_dispatch_queue.main.getter();
  v24[0] = v15;
  v16 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_10002C3D8(&qword_1000DAEC0, sub_10002BFAC, &protocol conformance descriptor for Deferred<A>);
  sub_10002C3D8(&qword_1000DD570, sub_10002C1C4, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_10002C210(v4);

  (*(v7 + 8))(v9, v6);
  sub_10002C3D8(&qword_1000DAEC8, sub_10002C0D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  Publisher<>.asDataSource()();
  (*(v12 + 8))(v14, v11);
  static UIListContentConfiguration.header()();
  v17 = [objc_opt_self() grayColor];
  v18 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v18(v24, 0);
  v19 = type metadata accessor for HeaderItem();
  swift_allocObject();
  v20 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
  v24[3] = v19;
  v24[4] = sub_10002C3D8(&qword_1000DAE78, &type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  v24[0] = v20;
  type metadata accessor for SectionsPublisherDataSource();
  SnapshotDataSource.withSupplementaryItem(_:)();

  sub_100003B90(v24);
  sub_10002C29C(0);
  sub_10002C3D8(&qword_1000DAED8, sub_10002C29C, &protocol conformance descriptor for Supplementary<A>);
  v21 = SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)();

  sub_10002C3D8(&qword_1000DAEE0, sub_10002C2FC, &protocol conformance descriptor for DataSourceWithLayout<A>);
  return v21;
}

uint64_t sub_10002BCE4(void *a1)
{
  sub_100013E70(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000AE380;
  type metadata accessor for ManualTriggerDataSource(0);
  swift_allocObject();
  v3 = a1;
  v4 = sub_1000282E4(v3);

  *(v2 + 32) = v4;
  *(v2 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v2 + 48) = sub_10002B744();
  *(v2 + 56) = v5;
  type metadata accessor for ImportExportDataSource(0);
  swift_allocObject();
  v6 = v3;
  v7 = sub_100025B78(v6);

  *(v2 + 64) = v7;
  *(v2 + 72) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for AllFeedItemsDataSource(0);
  swift_allocObject();
  *(v2 + 80) = sub_10009D658();
  *(v2 + 88) = &protocol witness table for ArrayDataSource;
  type metadata accessor for ProfileDataSource(0);
  swift_allocObject();
  *(v2 + 96) = sub_100075AF8();
  *(v2 + 104) = &protocol witness table for ArrayDataSource;
  type metadata accessor for FeatureAvailabilityDataSource(0);
  swift_allocObject();
  *(v2 + 112) = sub_10006A298();
  *(v2 + 120) = &protocol witness table for ArrayDataSource;
  type metadata accessor for BuddyDataSource(0);
  swift_allocObject();
  *(v2 + 128) = sub_10007E160();
  *(v2 + 136) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for InternalNotificationsDataSource(0);
  swift_allocObject();
  *(v2 + 144) = sub_100080BE4();
  *(v2 + 152) = &protocol witness table for ArrayDataSource;
  type metadata accessor for PersistenceDataSource(0);
  swift_allocObject();
  *(v2 + 160) = sub_10002F264();
  *(v2 + 168) = &protocol witness table for ArrayDataSource;
  type metadata accessor for MiscellaneousItemsDataSource(0);
  swift_allocObject();
  *(v2 + 176) = sub_10004FEEC();
  *(v2 + 184) = &protocol witness table for ArrayDataSource;
  type metadata accessor for UserDefaultsDataSource(0);
  swift_allocObject();
  *(v2 + 192) = sub_10009E378();
  *(v2 + 200) = &protocol witness table for ArrayDataSource;
  type metadata accessor for HKKeyValueDataSource(0);
  swift_allocObject();
  *(v2 + 208) = sub_10004DCA0();
  *(v2 + 216) = &protocol witness table for ArrayDataSource;
  type metadata accessor for MedicalIDEmergencyBuddyDataSource(0);
  swift_allocObject();
  *(v2 + 224) = sub_1000619D0();
  *(v2 + 232) = &protocol witness table for ArrayDataSource;
  type metadata accessor for AuxiliaryProfilesDataSource(0);
  swift_allocObject();
  *(v2 + 240) = sub_10003A5B0(v6);
  *(v2 + 248) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for InternalSettingsAllDataTypeDetailViewsDataSource(0);
  swift_allocObject();
  *(v2 + 256) = sub_100076A84();
  *(v2 + 264) = &protocol witness table for ArrayDataSource;
  type metadata accessor for CategoryDataSource(0);
  swift_allocObject();
  *(v2 + 272) = sub_10009AEB8();
  *(v2 + 280) = &protocol witness table for ArrayDataSource;
  type metadata accessor for ContentKindDataSource(0);
  swift_allocObject();
  *(v2 + 288) = sub_10009C3DC();
  *(v2 + 296) = &protocol witness table for ArrayDataSource;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  CompoundSectionedDataSource.init(_:)();

  return CompoundDataSourceCollectionViewController.init(dataSource:)();
}

void sub_10002BFAC(uint64_t a1)
{
  if (!qword_1000DAE98)
  {
    sub_10002C040(255);
    sub_10002C3D8(&qword_1000DAEB0, sub_10002C040, &protocol conformance descriptor for Future<A, B>);
    v1 = type metadata accessor for Deferred();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAE98);
    }
  }
}

void sub_10002C040(uint64_t a1)
{
  if (!qword_1000DAEA0)
  {
    sub_100015E3C(255, &qword_1000DAEA8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for Array);
    v1 = type metadata accessor for Future();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAEA0);
    }
  }
}

void sub_10002C0D8(uint64_t a1)
{
  if (!qword_1000DAEB8)
  {
    sub_10002BFAC(255);
    sub_10002C1C4();
    sub_10002C3D8(&qword_1000DAEC0, sub_10002BFAC, &protocol conformance descriptor for Deferred<A>);
    sub_10002C3D8(&qword_1000DD570, sub_10002C1C4, &protocol conformance descriptor for OS_dispatch_queue);
    v1 = type metadata accessor for Publishers.ReceiveOn();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAEB8);
    }
  }
}

unint64_t sub_10002C1C4()
{
  result = qword_1000DBAE0;
  if (!qword_1000DBAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBAE0);
  }

  return result;
}

uint64_t sub_10002C210(uint64_t a1)
{
  sub_100015E3C(0, &qword_1000DD550, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002C29C(uint64_t a1)
{
  if (!qword_1000DAED0)
  {
    type metadata accessor for SectionsPublisherDataSource();
    v1 = type metadata accessor for Supplementary();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAED0);
    }
  }
}

void sub_10002C2FC(uint64_t a1)
{
  if (!qword_1000DAEE8)
  {
    sub_10002C29C(255);
    sub_10002C3D8(&qword_1000DAED8, sub_10002C29C, &protocol conformance descriptor for Supplementary<A>);
    v1 = type metadata accessor for DataSourceWithLayout();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAEE8);
    }
  }
}

uint64_t sub_10002C390(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_10002C3D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002C420(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

Swift::Int sub_10002C494()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002C508(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10002C54C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DeepLinkContentKind(0);
  __chkstk_darwin(v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E3B4(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v16 = *v9;
    v17 = sub_10002C720(*v9);
LABEL_6:
    v15 = v17;

    return v15 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v16 = *v9;
    v17 = sub_10002CBB4(*v9, v9[8]);
    goto LABEL_6;
  }

  sub_10000C61C(0);
  v12 = *&v9[*(v11 + 48)];
  (*(v4 + 32))(v6, v9, v3);
  v13 = *(v1 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 32);
  v14 = *(v1 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 16);
  v19[0] = *(v1 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController);
  v19[1] = v14;
  v20 = v13;
  v15 = static URLRouter.handleURL(_:options:rootViewController:)();

  (*(v4 + 8))(v6, v3);
  return v15 & 1;
}

BOOL sub_10002C720(void *a1)
{
  v2 = v1;
  v33 = *v1;
  v4 = type metadata accessor for Logger();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F2C(0, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for DeepLinkActivityType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 type];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  DeepLinkActivityType.init(_:)();
  v15 = (*(v11 + 48))(v9, 1, v10);
  if (v15 == 1)
  {
    sub_10000D4E4(v9, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional, sub_100005F2C);
    static Logger.general.getter();
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v22 = 136446466;
      v39[1] = v33;
      swift_getMetatypeMetadata();
      v23 = String.init<A>(describing:)();
      v25 = sub_1000036D0(v23, v24, v39);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      v26 = [v19 type];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_1000036D0(v27, v29, v39);

      *(v22 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s]: bad shortcut item type passed to application %{public}s", v22, 0x16u);
      swift_arrayDestroy();
    }

    (*(v34 + 8))(v6, v35);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = static HAUserActivity.createActivity(title:restorationType:profileIdentifier:eligibleForSearch:eligibleForHandoff:eligibleForPrediction:)();
    v17 = *(v2 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 32);
    v18 = *(v2 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 16);
    v36 = *(v2 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController);
    v37 = v18;
    v38 = v17;
    static UserActivityRouter.handleUserActivity(rootViewController:userActivity:)();

    (*(v11 + 8))(v13, v10);
  }

  return v15 != 1;
}

uint64_t sub_10002CBB4(void *a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.view.getter();
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v36 = v7;
    v37 = a2;
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v14 = 136446722;
    v38 = v6;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(describing:)();
    v17 = sub_1000036D0(v15, v16, &v40);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v18 = [v11 title];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v38 = v20;
    v39 = v22;
    sub_1000039A4(0, &qword_1000DB150, &type metadata for String, &type metadata accessor for Optional);
    v23 = String.init<A>(describing:)();
    v25 = sub_1000036D0(v23, v24, &v40);

    *(v14 + 14) = v25;
    *(v14 + 22) = 2082;
    v26 = [v11 activityType];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_1000036D0(v27, v29, &v40);

    *(v14 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s]: handling user activity “%{public}s” of type %{public}s", v14, 0x20u);
    swift_arrayDestroy();

    (*(v8 + 8))(v10, v36);
    if (v37)
    {
      goto LABEL_9;
    }
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    if (a2)
    {
      goto LABEL_9;
    }
  }

  if ((sub_10002D268(v11) & 1) == 0)
  {
    v33 = 0;
    return v33 & 1;
  }

LABEL_9:
  v31 = *(v3 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 32);
  v32 = *(v3 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 16);
  v41 = *(v3 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController);
  v42 = v32;
  v43 = v31;
  v33 = static UserActivityRouter.handleUserActivity(rootViewController:userActivity:)();
  return v33 & 1;
}

uint64_t sub_10002CF28()
{
  sub_10000D4E4(v0 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional, sub_100005F2C);

  v1 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler__skipStateRestoration;
  sub_1000039A4(0, &qword_1000DAF58, &type metadata for Bool, &type metadata accessor for UserDefault);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SceneUserActivityType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SceneUserActivityType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002D214()
{
  result = qword_1000DB140;
  if (!qword_1000DB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB140);
  }

  return result;
}

uint64_t sub_10002D268(void *a1)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for Calendar();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DateComponents();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F2C(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = &v42 - v15;
  sub_1000039A4(0, &qword_1000DAF58, &type metadata for Bool, &type metadata accessor for UserDefault);
  v17 = v16;
  v18 = *(v16 - 8);
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v21 = [objc_opt_self() sharedApplication];
  v22 = [v21 launchedToTest];

  if (v22)
  {
    return 0;
  }

  (*(v18 + 16))(v20, v2 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler__skipStateRestoration, v17);
  UserDefault.wrappedValue.getter();
  (*(v18 + 8))(v20, v17);
  if (v53[0])
  {
    return 0;
  }

  v23 = [v50 userInfo];
  if (v23)
  {
    v24 = v23;
    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = static HAUserActivity.dateSavedRestorationKey.getter();
    v52 = v26;
    AnyHashable.init<A>(_:)();
    v27 = v10;
    if (*(v25 + 16) && (v28 = sub_100033344(v53), (v29 & 1) != 0))
    {
      sub_100003B34(*(v25 + 56) + 32 * v28, &v54);
      sub_10002E508(v53);

      if (*(&v55 + 1))
      {
        v30 = swift_dynamicCast();
        (*(v11 + 56))(v9, v30 ^ 1u, 1, v10);
        if ((*(v11 + 48))(v9, 1, v10) != 1)
        {
          (*(v11 + 32))(v49, v9, v10);
          v31 = v44;
          static Calendar.current.getter();
          sub_100005F2C(0, &qword_1000DB168, &type metadata accessor for Calendar.Component, &type metadata accessor for _ContiguousArrayStorage);
          v32 = type metadata accessor for Calendar.Component();
          v33 = *(v32 - 8);
          v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_1000AE100;
          (*(v33 + 104))(v35 + v34, enum case for Calendar.Component.minute(_:), v32);
          sub_10002E55C(v35);
          swift_setDeallocating();
          (*(v33 + 8))(v35 + v34, v32);
          swift_deallocClassInstance();
          Date.init()();
          v36 = v43;
          v37 = v49;
          Calendar.dateComponents(_:from:to:)();

          v38 = *(v11 + 8);
          v38(v14, v27);
          (*(v47 + 8))(v31, v48);
          v39 = DateComponents.minute.getter();
          LODWORD(v32) = v40;
          (*(v45 + 8))(v36, v46);
          v38(v37, v27);
          return (v39 < 10) & ~v32;
        }

        goto LABEL_12;
      }
    }

    else
    {

      sub_10002E508(v53);
      v54 = 0u;
      v55 = 0u;
    }
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v27 = v10;
  }

  sub_10000D4E4(&v54, &qword_1000DB160, &type metadata for Any + 8, &type metadata accessor for Optional, sub_1000039A4);
  (*(v11 + 56))(v9, 1, 1, v27);
LABEL_12:
  sub_10000D4E4(v9, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional, sub_100005F2C);
  return 0;
}

uint64_t sub_10002D9B0(uint64_t a1)
{
  v2 = v1;
  v75 = a1;
  v68 = *v1;
  v3 = type metadata accessor for Logger();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = __chkstk_darwin(v3);
  v76 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v71 = &v66 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v69 = &v66 - v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v66 - v14;
  __chkstk_darwin(v13);
  v16 = &v66 - v15;
  sub_100005F2C(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  v18 = __chkstk_darwin(v17 - 8);
  v67 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v66 - v20;
  v22 = type metadata accessor for DeepLinkContentKind(0);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v66 - v27;
  v29 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
  swift_beginAccess();
  sub_10000D450(v2 + v29, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000D4E4(v21, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional, sub_100005F2C);
    static Logger.view.getter();
    v30 = *(v8 + 16);
    v30(v74, v75, v7);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = v7;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v78 = v75;
      *v34 = 136446466;
      v77 = v68;
      swift_getMetatypeMetadata();
      v35 = String.init<A>(describing:)();
      v37 = sub_1000036D0(v35, v36, &v78);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      v38 = v74;
      v30(v69, v74, v33);
      v39 = String.init<A>(describingSensitive:)();
      v41 = v40;
      (*(v8 + 8))(v38, v33);
      v42 = sub_1000036D0(v39, v41, &v78);

      *(v34 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}s] Tried to cancel pending deep link of %{public}s but no pending deep link present", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v74, v7);
    }

    (*(v72 + 8))(v76, v73);
  }

  else
  {
    sub_10002E350(v21, v28);
    sub_10002E3B4(v28, v26);
    v43 = v28;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10000C61C(0);

      v45 = v26;
      v46 = v8;
      (*(v8 + 32))(v16, v45, v7);
      v47 = v75;
      v48 = static URL.== infix(_:_:)();
      (*(v46 + 8))(v16, v7);
      if (v48)
      {
        sub_10002E418(v43);
        v49 = v67;
        (*(v23 + 56))(v67, 1, 1, v22);
        swift_beginAccess();
        sub_10002E474(v49, v2 + v29);
        swift_endAccess();
        return 1;
      }
    }

    else
    {
      sub_10002E418(v26);
      v46 = v8;
      v47 = v75;
    }

    v76 = v43;
    v51 = v71;
    static Logger.view.getter();
    v52 = *(v46 + 16);
    v53 = v70;
    v52(v70, v47, v7);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v46;
      v75 = swift_slowAlloc();
      v78 = v75;
      *v56 = 136446466;
      v77 = v68;
      swift_getMetatypeMetadata();
      v58 = String.init<A>(describing:)();
      v60 = sub_1000036D0(v58, v59, &v78);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2082;
      v61 = v70;
      v52(v69, v70, v7);
      v62 = String.init<A>(describingSensitive:)();
      v64 = v63;
      (*(v57 + 8))(v61, v7);
      v65 = sub_1000036D0(v62, v64, &v78);

      *(v56 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%{public}s] Tried to cancel pending deep link of %{public}s but different deep link present", v56, 0x16u);
      swift_arrayDestroy();

      (*(v72 + 8))(v71, v73);
    }

    else
    {

      (*(v46 + 8))(v53, v7);
      (*(v72 + 8))(v51, v73);
    }

    sub_10002E418(v76);
  }

  return 0;
}

char *sub_10002E244(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039A4(0, &qword_1000DB148, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

uint64_t sub_10002E350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeepLinkContentKind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E3B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeepLinkContentKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E418(uint64_t a1)
{
  v2 = type metadata accessor for DeepLinkContentKind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E474(uint64_t a1, uint64_t a2)
{
  sub_100005F2C(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_10002E55C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10002E870(0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10000CB7C(&qword_1000DB178, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10000CB7C(&qword_1000DB180, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10002E870(uint64_t a1)
{
  if (!qword_1000DB170)
  {
    type metadata accessor for Calendar.Component();
    sub_10000CB7C(&qword_1000DB178, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB170);
    }
  }
}

uint64_t sub_10002E964(uint64_t a1)
{
  v15[1] = a1;
  v1 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for UICollectionLayoutListConfiguration.Appearance.sidebar(_:), v5);
  UICollectionLayoutListConfiguration.init(appearance:)();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  if (CollectionViewLayoutContext.section.getter())
  {
    (*(v2 + 104))(v4, enum case for UICollectionLayoutListConfiguration.HeaderMode.firstItemInSection(_:), v1);
    UICollectionLayoutListConfiguration.headerMode.setter();
  }

  sub_10002EEB8();
  CollectionViewLayoutContext.environment.getter();
  v13 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  swift_unknownObjectRelease();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_10002EC18()
{
  CompoundSectionedDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10002EC50()
{
  sub_100003B90((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_10002ECDC(uint64_t a1)
{
  result = type metadata accessor for SidebarSection();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002EDA4()
{
  v1 = qword_1000DB2F8;
  v2 = type metadata accessor for SidebarSection();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_10002EE0C()
{
  v0 = AdditionalItemsDataSource.deinit();
  v1 = qword_1000DB2F8;
  v2 = type metadata accessor for SidebarSection();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_10002EEB8()
{
  result = qword_1000DB350;
  if (!qword_1000DB350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DB350);
  }

  return result;
}

void sub_10002EF04(id *a1)
{
  v1 = [*a1 dateUpdated];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_10002EF94()
{
  v1 = v0 + qword_1000E3D50;

  return sub_100015978(v1);
}

id sub_10002EFD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedObjectDataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002F00C(uint64_t a1)
{
  v2 = a1 + qword_1000E3D50;

  return sub_100015978(v2);
}

uint64_t sub_10002F060()
{
  v0 = type metadata accessor for LayoutConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LayoutConfiguration.empty.getter();
  v4 = LayoutConfiguration.layoutSection.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_10002F13C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for EmptyHeaderItem();
  a1[4] = sub_10002F180();
  sub_10000AD4C(a1);
  return EmptyHeaderItem.init()();
}

unint64_t sub_10002F180()
{
  result = qword_1000DB3B8;
  if (!qword_1000DB3B8)
  {
    type metadata accessor for EmptyHeaderItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB3B8);
  }

  return result;
}

uint64_t type metadata accessor for PersistenceDataSource(uint64_t a1)
{
  result = qword_1000DB3F8;
  if (!qword_1000DB3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002F264()
{
  *&v39 = type metadata accessor for SectionedDataSourceContainerViewType();
  v35 = *(v39 - 8);
  __chkstk_darwin(v39);
  v34 = v33 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002FCC4(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v1 - 8);
  v3 = v33 - v2;
  v4 = type metadata accessor for CellDeselectionBehavior();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v36 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ContentConfigurationItem();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v33[2] = UUID.uuidString.getter();
  v33[1] = v13;
  v14 = *(v9 + 8);
  v37 = v9 + 8;
  v38 = v14;
  v14(v11, v8);
  v44[3] = type metadata accessor for UIListContentConfiguration();
  v44[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v44);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v15 = [objc_opt_self() tintColor];
  v16 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v16(v43, 0);
  *v7 = 1;
  (*(v5 + 104))(v7, enum case for CellDeselectionBehavior.deselectOnDidSelect(_:), v4);
  v17 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  (*(v35 + 104))(v34, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v39);
  v18 = v41;
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  sub_10002FCC4(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for ArrayDataSourceSection();
  v19 = swift_allocObject();
  v39 = xmmword_1000AE100;
  *(v19 + 16) = xmmword_1000AE100;
  sub_10002656C(0);
  v20 = swift_allocObject();
  *(v20 + 16) = v39;
  v21 = v42;
  *(v20 + 56) = v42;
  *(v20 + 64) = sub_10002FD28(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v22 = sub_10000AD4C((v20 + 32));
  v23 = v40;
  (*(v40 + 16))(v22, v18, v21);
  UUID.init()();
  UUID.uuidString.getter();
  v24 = v36;
  v25 = v38;
  v38(v11, v36);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v44[0] = 0x3C53447961727241;
  v44[1] = 0xE800000000000000;
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  v25(v11, v24);
  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 62;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = ArrayDataSource.init(arrangedSections:identifier:)();
  (*(v23 + 8))(v41, v42);
  return v31;
}

uint64_t sub_10002F900()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIViewController.resolvedHealthExperienceStore.getter();
  sub_100009630(0, &qword_1000DB458, &protocol descriptor for HealthExperienceStore);
  type metadata accessor for DiskHealthExperienceStore();
  if (swift_dynamicCast())
  {

    dispatch thunk of DiskHealthExperienceStore.deleteAllObjects()();
  }

  static Logger.general.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "All Objects deleted!", v6, 2u);
  }

  else
  {
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10002FB2C()
{
  ArrayDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10002FC40(uint64_t a1)
{
  *(a1 + 8) = sub_10002FD28(&qword_1000DB448, type metadata accessor for PersistenceDataSource, &unk_1000AE7F0);
  result = sub_10002FD28(&qword_1000DB450, type metadata accessor for PersistenceDataSource, &unk_1000AE820);
  *(a1 + 24) = result;
  return result;
}

void sub_10002FCC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10002FD28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10002FD90(uint64_t a1)
{
  sub_1000106FC(319, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_10002FE74@<X0>(uint64_t a1@<X8>)
{
  sub_1000106FC(0, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  v9 = qword_1000DB460;
  swift_beginAccess();
  sub_1000314A8(v1 + v9, v8);
  sub_10001093C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v8, 1, v10) != 1)
  {
    return (*(v12 + 32))(a1, v8, v11);
  }

  sub_10003141C(v8);
  type metadata accessor for CloudSyncRestoreState();
  static LegacyObservable.create()();

  dispatch thunk of CloudSyncStateObserver.firstRestoreStateChangeHandler.setter();
  dispatch thunk of CloudSyncStateObserver.startFirstRestoreIfNeeded()();

  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10003153C(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1000300B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100030114(a1);
  }

  return result;
}

uint64_t sub_100030114(uint64_t a1)
{
  sub_100031220(0, &qword_1000DB518, &type metadata accessor for HideableDataSource.Visibility);
  v17 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  sub_1000312BC(0, &qword_1000DB510, &type metadata accessor for HideableDataSource.Visibility);
  v7 = v6;
  v8 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = type metadata accessor for CloudSyncRestoreState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  if (CloudSyncRestoreState.isOngoing.getter())
  {
    (*(v8 + 104))(v10, enum case for HideableDataSource.Visibility.visible<A>(_:), v7);
    dispatch thunk of HideableDataSource.visibility.setter();
    (*(v3 + 104))(v5, enum case for HideableDataSource.Visibility.hidden<A>(_:), v17);
    dispatch thunk of HideableDataSource.visibility.setter();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    (*(v8 + 104))(v10, enum case for HideableDataSource.Visibility.hidden<A>(_:), v7);
    dispatch thunk of HideableDataSource.visibility.setter();
    (*(v3 + 104))(v5, enum case for HideableDataSource.Visibility.visible<A>(_:), v17);
    return dispatch thunk of HideableDataSource.visibility.setter();
  }
}

uint64_t sub_10003045C()
{
  sub_10003141C(v0 + qword_1000DB460);
}

uint64_t sub_1000304BC()
{
  v0 = CompoundSectionedDataSource.deinit();
  v1 = qword_1000DB460;

  sub_10003141C(v2 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1000305D8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EmptyStateCollectionViewCellItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() mainBundle];
  v24._object = 0x80000001000A6110;
  v9._countAndFlagsBits = 0xD00000000000002ALL;
  v9._object = 0x80000001000A60B0;
  v10._object = 0x80000001000A60E0;
  v24._countAndFlagsBits = 0xD000000000000052;
  v10._countAndFlagsBits = 0xD000000000000028;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v24);

  EmptyStateCollectionViewCellItem.init(title:showSpinner:)();
  sub_1000106FC(0, &qword_1000DB550, sub_1000313A0, &type metadata accessor for _ContiguousArrayStorage);
  v11 = swift_allocObject();
  v21 = xmmword_1000AE100;
  *(v11 + 16) = xmmword_1000AE100;
  sub_1000106FC(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v12 = swift_allocObject();
  *(v12 + 16) = v21;
  *(v12 + 56) = v4;
  *(v12 + 64) = sub_1000313D4(&qword_1000DB560, &type metadata accessor for EmptyStateCollectionViewCellItem, &protocol conformance descriptor for EmptyStateCollectionViewCellItem);
  v13 = sub_10000AD4C((v12 + 32));
  (*(v5 + 16))(v13, v7, v4);
  *(v11 + 32) = v12;
  v22 = 0x3C53447961727241;
  v23 = 0xE800000000000000;
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v1 + 8))(v3, v0);
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = ArrayDataSource.init(_:identifier:)();
  (*(v5 + 8))(v7, v4);
  return v19;
}

uint64_t sub_1000309EC()
{
  v0 = type metadata accessor for LayoutConfiguration();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  CollectionViewLayoutContext.environment.getter();
  static LayoutConfiguration.pill(environment:)();
  swift_unknownObjectRelease();
  LayoutConfiguration.withoutHeader.getter();
  v7 = *(v1 + 8);
  v7(v6, v0);
  v8 = LayoutConfiguration.layoutSection.getter();
  v7(v4, v0);
  return v8;
}

uint64_t sub_100030B28(void *a1, void *a2)
{
  v3 = v2;
  sub_10001093C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = __chkstk_darwin(v6);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v43 - v11;
  sub_1000312BC(0, &qword_1000DB510, &type metadata accessor for HideableDataSource.Visibility);
  v44 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  sub_100031220(0, &qword_1000DB518, &type metadata accessor for HideableDataSource.Visibility);
  v17 = v16;
  v18 = *(v16 - 8);
  __chkstk_darwin(v16);
  v20 = &v43 - v19;
  v47 = v8;
  v21 = *(v8 + 56);
  v49 = v7;
  v21(v3 + qword_1000DB460, 1, 1, v7);
  v22 = [objc_opt_self() standardUserDefaults];
  v50[3] = type metadata accessor for DefaultCloudSyncStateStore();
  v50[4] = &protocol witness table for DefaultCloudSyncStateStore;
  sub_10000AD4C(v50);
  DefaultCloudSyncStateStore.init(userDefaults:)();
  objc_allocWithZone(type metadata accessor for CloudSyncStateObserver());
  v23 = a1;
  *(v3 + qword_1000E3D78) = CloudSyncStateObserver.init(healthStore:store:)();
  v48 = a2;
  sub_10000ACE8(a2, v50);
  v24 = v23;
  static AllDataSummarySection.Identifier.defaultAllDataSummarySections.getter();
  type metadata accessor for SnippetAllDataDataSource();
  swift_allocObject();
  SnippetAllDataDataSource.init(healthStore:healthExperienceStore:allDataSummarySections:additionalPredicates:)();
  type metadata accessor for NoDataDataSource();

  static NoDataDataSource.makeNoDataDataSource()();
  sub_10003117C(0);
  swift_allocObject();
  PrimarySecondaryDataSource.init(primaryDataSource:secondaryDataSource:)();
  (*(v18 + 104))(v20, enum case for HideableDataSource.Visibility.visible<A>(_:), v17);
  sub_100031200(0);
  swift_allocObject();

  v25 = HideableDataSource.init(source:visibility:)();
  *(v3 + qword_1000E3D80) = v25;

  v26 = sub_100012F74(0, 1, 1, _swiftEmptyArrayStorage);
  v28 = v26[2];
  v27 = v26[3];
  if (v28 >= v27 >> 1)
  {
    v26 = sub_100012F74((v27 > 1), v28 + 1, 1, v26);
  }

  v29 = sub_1000313D4(&qword_1000DB538, sub_100031200, &protocol conformance descriptor for HideableDataSource<A>);
  v26[2] = v28 + 1;
  v30 = &v26[2 * v28];
  v30[4] = v25;
  v30[5] = v29;
  type metadata accessor for CloudSyncAllHealthDataDataSource(0);
  swift_allocObject();
  sub_1000305D8();
  (*(v13 + 104))(v15, enum case for HideableDataSource.Visibility.hidden<A>(_:), v44);
  sub_1000312BC(0, &qword_1000DB540, &type metadata accessor for HideableDataSource);
  swift_allocObject();
  v31 = HideableDataSource.init(source:visibility:)();
  *(v3 + qword_1000E3D88) = v31;
  v32 = v26[2];
  v33 = v26[3];

  if (v32 >= v33 >> 1)
  {
    v26 = sub_100012F74((v33 > 1), v32 + 1, 1, v26);
  }

  v34 = sub_100031324();
  v26[2] = v32 + 1;
  v35 = &v26[2 * v32];
  v35[4] = v31;
  v35[5] = v34;
  v36 = CompoundSectionedDataSource.init(_:)();

  v37 = v46;
  sub_10002FE74(v46);
  v38 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_weakInit();
  sub_1000313D4(&qword_1000DAAD8, sub_10001093C, &protocol conformance descriptor for LegacyObservable<A>);
  v39 = v45;
  v40 = v49;
  ObservableConvertible.afterChange(on:_:)();

  sub_100003B90(v48);
  v41 = *(v47 + 8);
  v41(v37, v40);
  v41(v39, v40);
  return v36;
}

void sub_10003117C(uint64_t a1)
{
  if (!qword_1000DB520)
  {
    type metadata accessor for SnippetAllDataDataSource();
    type metadata accessor for MutableArrayDataSourceWithLayout();
    v1 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB520);
    }
  }
}

void sub_100031220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_10003117C(255);
    v7 = v6;
    v8 = sub_1000313D4(&qword_1000DB528, sub_10003117C, &protocol conformance descriptor for PrimarySecondaryDataSource<A, B>);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000312BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CloudSyncAllHealthDataDataSource(255);
    v7 = a3(a1, v6, &protocol witness table for ArrayDataSource);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_100031324()
{
  result = qword_1000DB548;
  if (!qword_1000DB548)
  {
    sub_1000312BC(255, &qword_1000DB540, &type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB548);
  }

  return result;
}

uint64_t sub_1000313D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003141C(uint64_t a1)
{
  sub_1000106FC(0, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000314A8(uint64_t a1, uint64_t a2)
{
  sub_1000106FC(0, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003153C(uint64_t a1, uint64_t a2)
{
  sub_1000106FC(0, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000315D8()
{

  sub_100003B90((v0 + 24));

  return swift_deallocClassInstance();
}

char *sub_100031644(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000091E4(0, &qword_1000DB698, sub_100033F30);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100031774(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000091E4(0, &qword_1000DB6C0, &type metadata accessor for ContentConfigurationItem);
  v10 = *(type metadata accessor for ContentConfigurationItem() - 8);
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
  v15 = *(type metadata accessor for ContentConfigurationItem() - 8);
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

char *sub_10003195C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100033FE4(0, &qword_1000DB6B8, &type metadata for Substring);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031A88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100033FE4(0, &qword_1000DB6B0, &type metadata for String);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100031B98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100033FE4(0, &qword_1000DB700, &type metadata for HKDataType);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100031CA8(uint64_t a1, uint64_t a2)
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

  sub_100033FE4(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8);
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

void *sub_100031D60(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100033FE4(0, a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void sub_100031DE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100003DDC(0, &qword_1000DB670, UIColor_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100033FE4(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_100031EDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100033FE4(0, &qword_1000DB700, &type metadata for HKDataType);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100032020(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100009704(0, &qword_1000DAC00, &qword_1000DAC08, &protocol descriptor for SnapshotDataSourceItem, 1);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000968C(0, &qword_1000DAC08, &protocol descriptor for SnapshotDataSourceItem, 1);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100032180(char *result, int64_t a2, char a3, char *a4)
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
    sub_100033FE4(0, &qword_1000DB6B0, &type metadata for String);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100032290(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000091E4(0, &qword_1000DB6A8, sub_10001B4A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10001B4A8(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000323C8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100034030(0);
  sub_1000340B4(0, &qword_1000DB710, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSampleQueryDescriptor);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1000340B4(0, &qword_1000DB710, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSampleQueryDescriptor);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

void sub_1000325EC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      v134 = v5;
      if (v5 + 1 < v4)
      {
        v130 = v6;
        v9 = *a3;
        v10 = *a3 + 16 * v8;
        v11 = *(v10 + 8);
        v12 = *a3 + 16 * v5;
        v13 = *(v12 + 8);
        v137 = v4;
        if (v11 == v13)
        {
          v14 = *v12;
          v15 = *v10;
          v16 = v14;
          v17 = [v15 categoryName];
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          v21 = [v16 categoryName];
          v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          if (v18 == v5 && v20 == v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v7 = v134;
          v4 = v137;
          v26 = v25;
        }

        else
        {
          v26 = v13 < v11;
        }

        v27 = 0;
        v28 = v7 + 2;
        v29 = 16 * v7;
        v30 = (v9 + 16 * v7 + 40);
        v31 = 16 * v7;
        v135 = v26;
        do
        {
          v8 = v28;
          v32 = v27;
          v33 = v31;
          if (v28 >= v4)
          {
            break;
          }

          v34 = *(v30 - 2);
          if (*v30 == v34)
          {
            v140 = v8;
            v35 = *(v30 - 3);
            v36 = *(v30 - 1);
            v37 = v35;
            v145 = v36;
            v38 = [v36 categoryName];
            v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            v143 = v37;
            v42 = [v37 categoryName];
            v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;

            v46 = v39 == v43 && v41 == v45;
            v5 = v46 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
            v8 = v140;
            v7 = v134;

            v4 = v137;
            v26 = v135;
          }

          else
          {
            v5 = v34 < *v30;
          }

          v28 = v8 + 1;
          v30 += 2;
          v27 = v32 + 1;
          v31 = v33 + 16;
        }

        while (((v26 ^ v5) & 1) == 0);
        if (v26)
        {
          v6 = v130;
          if (v8 < v7)
          {
            goto LABEL_141;
          }

          if (v7 < v8)
          {
            v47 = 0;
            do
            {
              if (v7 + v47 != v7 + v32 + 1)
              {
                v52 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v48 = (v52 + v29);
                v49 = v52 + v33;
                v50 = *v48;
                v51 = v48[1];
                *v48 = *(v49 + 16);
                *(v49 + 16) = v50;
                *(v49 + 24) = v51;
              }

              --v32;
              ++v47;
              v33 -= 16;
              v29 += 16;
            }

            while (v47 + v7 < v7 + v32 + 2);
          }
        }

        else
        {
          v6 = v130;
        }
      }

      v53 = a3[1];
      if (v8 >= v53)
      {
        goto LABEL_61;
      }

      if (__OFSUB__(v8, v7))
      {
        goto LABEL_140;
      }

      if (v8 - v7 >= a4)
      {
        goto LABEL_61;
      }

      v54 = v7 + a4;
      if (__OFADD__(v7, a4))
      {
        goto LABEL_142;
      }

      if (v54 >= v53)
      {
        v54 = a3[1];
      }

      if (v54 < v7)
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      if (v8 == v54)
      {
        goto LABEL_61;
      }

      v131 = v6;
      v55 = *a3;
      v56 = *a3 + 16 * v8;
      v57 = v7 - v8;
      v133 = v54;
      v144 = *a3;
LABEL_47:
      v141 = v8;
      v58 = v55 + 16 * v8;
      v59 = *v58;
      v60 = *(v58 + 8);
      v136 = v57;
      v138 = v56;
      while (1)
      {
        v62 = *(v56 - 16);
        v61 = *(v56 - 8);
        if (v60 == v61)
        {
          break;
        }

        if (v61 >= v60)
        {
          goto LABEL_46;
        }

LABEL_56:
        if (!v55)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v59 = *v56;
        v60 = *(v56 + 8);
        *v56 = *(v56 - 16);
        *(v56 - 8) = v60;
        *(v56 - 16) = v59;
        v56 -= 16;
        if (__CFADD__(v57++, 1))
        {
          goto LABEL_46;
        }
      }

      v63 = v59;
      v64 = v62;
      v146 = v63;
      v65 = [v63 categoryName];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = v64;
      v70 = [v64 categoryName];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      if (v66 != v5 || v68 != v72)
      {
        break;
      }

      v55 = v144;
LABEL_46:
      v8 = v141 + 1;
      v56 = v138 + 16;
      v57 = v136 - 1;
      if (v141 + 1 != v133)
      {
        goto LABEL_47;
      }

      v8 = v133;
      v6 = v131;
      v7 = v134;
LABEL_61:
      if (v8 < v7)
      {
        goto LABEL_139;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100031644(0, *(v6 + 16) + 1, 1, v6);
      }

      v77 = *(v6 + 16);
      v76 = *(v6 + 24);
      v78 = v77 + 1;
      if (v77 >= v76 >> 1)
      {
        v6 = sub_100031644((v76 > 1), v77 + 1, 1, v6);
      }

      *(v6 + 16) = v78;
      v79 = v6 + 16 * v77;
      *(v79 + 32) = v7;
      *(v79 + 40) = v8;
      v80 = *a1;
      if (!*a1)
      {
        goto LABEL_149;
      }

      v5 = v8;
      if (v77)
      {
        while (2)
        {
          v81 = v78 - 1;
          if (v78 >= 4)
          {
            v86 = v6 + 32 + 16 * v78;
            v87 = *(v86 - 64);
            v88 = *(v86 - 56);
            v92 = __OFSUB__(v88, v87);
            v89 = v88 - v87;
            if (v92)
            {
              goto LABEL_126;
            }

            v91 = *(v86 - 48);
            v90 = *(v86 - 40);
            v92 = __OFSUB__(v90, v91);
            v84 = v90 - v91;
            v85 = v92;
            if (v92)
            {
              goto LABEL_127;
            }

            v93 = (v6 + 16 * v78);
            v95 = *v93;
            v94 = v93[1];
            v92 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v92)
            {
              goto LABEL_129;
            }

            v92 = __OFADD__(v84, v96);
            v97 = v84 + v96;
            if (v92)
            {
              goto LABEL_132;
            }

            if (v97 >= v89)
            {
              v115 = (v6 + 32 + 16 * v81);
              v117 = *v115;
              v116 = v115[1];
              v92 = __OFSUB__(v116, v117);
              v118 = v116 - v117;
              if (v92)
              {
                goto LABEL_136;
              }

              if (v84 < v118)
              {
                v81 = v78 - 2;
              }
            }

            else
            {
LABEL_81:
              if (v85)
              {
                goto LABEL_128;
              }

              v98 = (v6 + 16 * v78);
              v100 = *v98;
              v99 = v98[1];
              v101 = __OFSUB__(v99, v100);
              v102 = v99 - v100;
              v103 = v101;
              if (v101)
              {
                goto LABEL_131;
              }

              v104 = (v6 + 32 + 16 * v81);
              v106 = *v104;
              v105 = v104[1];
              v92 = __OFSUB__(v105, v106);
              v107 = v105 - v106;
              if (v92)
              {
                goto LABEL_134;
              }

              if (__OFADD__(v102, v107))
              {
                goto LABEL_135;
              }

              if (v102 + v107 < v84)
              {
                goto LABEL_95;
              }

              if (v84 < v107)
              {
                v81 = v78 - 2;
              }
            }
          }

          else
          {
            if (v78 == 3)
            {
              v82 = *(v6 + 32);
              v83 = *(v6 + 40);
              v92 = __OFSUB__(v83, v82);
              v84 = v83 - v82;
              v85 = v92;
              goto LABEL_81;
            }

            v108 = (v6 + 16 * v78);
            v110 = *v108;
            v109 = v108[1];
            v92 = __OFSUB__(v109, v110);
            v102 = v109 - v110;
            v103 = v92;
LABEL_95:
            if (v103)
            {
              goto LABEL_130;
            }

            v111 = v6 + 16 * v81;
            v113 = *(v111 + 32);
            v112 = *(v111 + 40);
            v92 = __OFSUB__(v112, v113);
            v114 = v112 - v113;
            if (v92)
            {
              goto LABEL_133;
            }

            if (v114 < v102)
            {
              break;
            }
          }

          v119 = v81 - 1;
          if (v81 - 1 >= v78)
          {
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
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
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
            goto LABEL_143;
          }

          if (!*a3)
          {
            goto LABEL_146;
          }

          v120 = v6;
          v121 = v6 + 32;
          v6 = *(v6 + 32 + 16 * v119);
          v122 = *(v121 + 16 * v81 + 8);
          sub_100032E88((*a3 + 16 * v6), (*a3 + 16 * *(v121 + 16 * v81)), (*a3 + 16 * v122), v80);
          if (v142)
          {
            goto LABEL_122;
          }

          if (v122 < v6)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v120 = sub_100033330(v120);
          }

          if (v119 >= *(v120 + 2))
          {
            goto LABEL_125;
          }

          v123 = &v120[16 * v119];
          *(v123 + 4) = v6;
          *(v123 + 5) = v122;
          sub_1000332A4(v81);
          v6 = v120;
          v78 = *(v120 + 2);
          if (v78 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_112;
      }
    }

    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v55 = v144;
    if ((v74 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_56;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_112:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_150;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_144:
    v6 = sub_100033330(v6);
  }

  v124 = *(v6 + 16);
  if (v124 < 2)
  {
LABEL_122:

    return;
  }

  while (*a3)
  {
    v125 = v6;
    v6 = *(v6 + 16 * v124);
    v126 = v125;
    v127 = *&v125[16 * v124 + 24];
    sub_100032E88((*a3 + 16 * v6), (*a3 + 16 * *&v125[16 * v124 + 16]), (*a3 + 16 * v127), v5);
    if (v142)
    {
      goto LABEL_122;
    }

    if (v127 < v6)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = sub_100033330(v126);
    }

    if (v124 - 2 >= *(v126 + 2))
    {
      goto LABEL_138;
    }

    v128 = &v126[16 * v124];
    *v128 = v6;
    v128[1] = v127;
    sub_1000332A4(v124 - 1);
    v6 = v126;
    v124 = *(v126 + 2);
    if (v124 <= 1)
    {
      goto LABEL_122;
    }
  }

LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_100032E88(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[16 * v13] <= a4)
    {
      memmove(a4, __src, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 < 16 || v6 <= v7)
    {
      goto LABEL_55;
    }

    v55 = v4;
    while (2)
    {
      v50 = v6 - 16;
      v31 = v5;
      v32 = v14;
      v57 = v6;
      while (1)
      {
        v33 = *(v32 - 2);
        v34 = *(v32 - 1);
        v32 -= 16;
        v35 = *(v6 - 1);
        if (v34 != v35)
        {
          break;
        }

        v53 = v14;
        v36 = *(v6 - 2);
        v37 = v33;
        v38 = v36;
        v39 = [v37 categoryName];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v51 = v38;
        v43 = [v38 categoryName];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        if (v40 != v44 || v42 != v46)
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v5 = v31 - 16;
          v14 = v53;
          v4 = v55;
          v6 = v57;
          if (v48)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        v5 = v31 - 16;
        v4 = v55;
        v6 = v57;
        if (v53 != v31)
        {
          goto LABEL_48;
        }

LABEL_36:
        v14 = v32;
        v31 = v5;
        if (v32 <= v4)
        {
          v14 = v32;
          goto LABEL_55;
        }
      }

      v5 = v31 - 16;
      if (v35 < v34)
      {
LABEL_49:
        if (v31 != v6)
        {
          *v5 = *v50;
        }

        if (v14 <= v4 || (v6 = v50, v50 <= v7))
        {
          v6 = v50;
          goto LABEL_55;
        }

        continue;
      }

      break;
    }

LABEL_45:
    if (v14 == v31)
    {
      goto LABEL_36;
    }

LABEL_48:
    *v5 = *v32;
    goto LABEL_36;
  }

  if (a4 != __dst || &__dst[16 * v10] <= a4)
  {
    memmove(a4, __dst, 16 * v10);
  }

  v14 = &v4[16 * v10];
  if (v8 >= 16 && v6 < v5)
  {
    v52 = &v4[16 * v10];
    do
    {
      v15 = *(v6 + 1);
      v16 = *(v4 + 1);
      if (v15 == v16)
      {
        v56 = v6;
        v54 = v4;
        v17 = *v4;
        v18 = *v6;
        v19 = v17;
        v20 = [v18 categoryName];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = [v19 categoryName];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = v21 == v25 && v23 == v27;
        if (v28)
        {

          v14 = v52;
          v4 = v54;
          v6 = v56;
LABEL_24:
          v30 = v4;
          v28 = v7 == v4;
          v4 += 16;
          if (v28)
          {
            goto LABEL_26;
          }

LABEL_25:
          *v7 = *v30;
          goto LABEL_26;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v14 = v52;
        v4 = v54;
        v6 = v56;
        if ((v29 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (v16 >= v15)
      {
        goto LABEL_24;
      }

      v30 = v6;
      v28 = v7 == v6;
      v6 += 16;
      if (!v28)
      {
        goto LABEL_25;
      }

LABEL_26:
      v7 += 16;
    }

    while (v4 < v14 && v6 < v5);
  }

  v6 = v7;
LABEL_55:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000332A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100033330(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_100033344(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003346C(a1, v4);
}

unint64_t sub_100033388(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100033534(a1, a2, v4);
}

unint64_t sub_100033400(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1000335EC(a1, v2);
}

unint64_t sub_10003346C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100033F88(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10002E508(v8);
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

unint64_t sub_100033534(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000335EC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

Swift::Int sub_100033658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003411C(0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_1000338F4()
{
  v1 = v0;
  sub_10001A6A8(0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100033A44()
{
  v1 = v0;
  sub_10003411C(0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100033BD0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

void *sub_100033D28(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = *(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = v18;
      *(v11 + 8) = v17;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      v11 += 16;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100033E88()
{
  sub_10000BFFC((v0 + 24), *(v0 + 48));

  CurrentValueSubject.value.getter();

  sub_100019D4C(v2);

  CurrentValueSubject.send(_:)();
}

void sub_100033F30()
{
  if (!qword_1000DB6A0)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB6A0);
    }
  }
}

void sub_100033FE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100034030(uint64_t a1)
{
  if (!qword_1000DB708)
  {
    sub_1000340B4(255, &qword_1000DB710, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSampleQueryDescriptor);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB708);
    }
  }
}

void sub_1000340B4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003DDC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10003411C(uint64_t a1)
{
  if (!qword_1000DB720)
  {
    sub_1000340B4(255, &qword_1000DA868, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr, &type metadata accessor for Array);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB720);
    }
  }
}

void *sub_1000341C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10003195C(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10003195C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10003195C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10003195C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10003195C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100034588(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000345E0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  __chkstk_darwin(v4);
  v13[0] = 46;
  v13[1] = 0xE100000000000000;
  v12 = v13;

  v6 = sub_1000341C8(1, 1, sub_1000349BC, v11, a1, a2, v5);
  if (v6[2] == 2)
  {
    v7 = v6;

    static String._fromSubstring(_:)();

    if (v7[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {

      static String._fromSubstring(_:)();

      type metadata accessor for FoundationPluginBundleProvider();
      static FoundationPluginBundleProvider.sharedInstance.getter();
      v9 = dispatch thunk of PluginBundleProvider.loadAndValidatePluginBundle(named:)();

      v10 = NSBundle.getPluginAppDelegateClass()();

      return v10;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_1000349BC(uint64_t *a1)
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

uint64_t sub_100034A14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100034A5C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_100034AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = &OBJC_PROTOCOL___UIApplicationTestingDelegate;
  v13 = swift_dynamicCastObjCProtocolConditional();
  if (v13)
  {
    v14 = v13;
    if ([v13 respondsToSelector:"application:runTest:options:"])
    {
      swift_unknownObjectRetain_n();
      v15 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v17 = [v14 application:a1 runTest:v15 options:isa];
      swift_unknownObjectRelease_n();

      return v17;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    static Logger.general.getter();
    swift_unknownObjectRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[1] = a4;
      v27[0] = v22;
      *v21 = 136446210;
      v26[0] = a3;
      sub_10000968C(0, &qword_1000DB738, &protocol descriptor for PluginAppDelegate, 0);
      v23 = String.init<A>(describing:)();
      v25 = sub_1000036D0(v23, v24, v27);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "PluginAppDelegate does not conform to UIApplicationTestingDelegate: %{public}s", v21, 0xCu);
      sub_100003B90(v22);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v10 + 8))(v12, v9);
  }

  return 0;
}

__n128 sub_100034D7C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100034D88(uint64_t a1, int a2)
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

uint64_t sub_100034DD0(uint64_t result, int a2, int a3)
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

uint64_t sub_100034E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v45 = a2;
  v52 = a3;
  v5 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for InsetGroupedListStyle();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036544(0);
  v10 = v9;
  v11 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036E1C(0);
  v15 = *(v14 - 8);
  v42 = v14;
  v43 = v15;
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036EF0(0);
  v19 = *(v18 - 8);
  v46 = v18;
  v47 = v19;
  __chkstk_darwin(v18);
  v39 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036FF4(0);
  v48 = v21;
  __chkstk_darwin(v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v54 = a2;
  sub_1000373BC(0, &qword_1000DB7A8, &type metadata accessor for _ConditionalContent);
  sub_100036B1C();
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  v24 = sub_100039E88(&qword_1000DB858, sub_100036544, &protocol conformance descriptor for List<A, B>);
  v25 = v40;
  View.listStyle<A>(_:)();
  (*(v41 + 8))(v8, v25);
  (*(v11 + 8))(v13, v10);
  LocalizedStringKey.init(stringLiteral:)();
  v55 = v10;
  v56 = v25;
  v57 = v24;
  v58 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v39;
  v28 = v42;
  View.navigationTitle(_:)();

  (*(v43 + 8))(v17, v28);
  v29 = v49;
  v30 = v50;
  v31 = v51;
  (*(v50 + 104))(v49, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v51);
  v55 = v28;
  v56 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v46;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v30 + 8))(v29, v31);
  (*(v47 + 8))(v27, v32);
  v33 = swift_allocObject();
  v34 = v44;
  v35 = v45;
  *(v33 + 16) = v44;
  *(v33 + 24) = v35;
  v36 = &v23[*(v48 + 36)];
  *v36 = sub_100037198;
  v36[1] = v33;
  v36[2] = 0;
  v36[3] = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  *(v37 + 24) = v35;
  sub_100037254();
  swift_retain_n();
  View.refreshable(action:)();

  return sub_10001E560(v23);
}

uint64_t sub_100035438@<X0>(uint64_t a2@<X8>)
{
  v45 = a2;
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  sub_1000373BC(0, &qword_1000DB880, &type metadata accessor for _ConditionalContent.Storage);
  v4 = v3;
  __chkstk_darwin(v3);
  v6 = v38 - v5;
  sub_1000365E0(0);
  v8 = v7;
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v41 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100037440(0, &qword_1000DB888, &type metadata accessor for _ConditionalContent.Storage);
  v43 = v10;
  __chkstk_darwin(v10);
  v12 = v38 - v11;
  sub_100037440(0, &qword_1000DB7B0, &type metadata accessor for _ConditionalContent);
  v14 = v13;
  __chkstk_darwin(v13);
  v44 = v38 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v46;
  if (v47)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._countAndFlagsBits = 0x203A726F727245;
    v17._object = 0xE700000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
    v46 = v16;
    swift_errorRetain();
    sub_100008C14();
    v18._countAndFlagsBits = String.init<A>(reflecting:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v18);

    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
    LocalizedStringKey.init(stringInterpolation:)();
    v20 = Text.init(_:tableName:bundle:comment:)();
    v22 = v21;
    *v6 = v20;
    *(v6 + 1) = v21;
    v24 = v23 & 1;
    v6[16] = v23 & 1;
    *(v6 + 3) = v25;
    swift_storeEnumTagMultiPayload();
    sub_1000385D8(v20, v22, v24);
    sub_100036BB8();

    _ConditionalContent<>.init(storage:)();
    sub_1000385E8(v16, 1);
    sub_1000385F4(v20, v22, v24);
  }

  if (v46 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_1000385E8(v16, 0);
    LocalizedStringKey.init(stringLiteral:)();
    *v12 = Text.init(_:tableName:bundle:comment:)();
    *(v12 + 1) = v35;
    v12[16] = v36 & 1;
    *(v12 + 3) = v37;
    swift_storeEnumTagMultiPayload();
    sub_100036C54();
    v34 = v44;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_12;
  }

  if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  v40 = v8;
  v27 = sub_100039674(v16);
  sub_1000385E8(v16, 0);
  v28 = v27[2];
  if (v28)
  {
    v38[0] = v14;
    v38[1] = v4;
    v29 = sub_100031D38(v28, 0);
    v39 = sub_100033BD0(&v46, v29 + 4, v28, v27);
    v30 = v46;

    result = sub_10000F754(v30);
    if (v39 != v28)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  v46 = v29;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v27;
  sub_100039900(0, &qword_1000DB7C0, &type metadata for String, &type metadata accessor for Array);
  sub_100039D04(0, &qword_1000DB7C8, sub_1000366B4);
  sub_100036AA0();
  sub_100036CCC();
  v31 = v41;
  ForEach<>.init(_:id:content:)();
  v32 = v42;
  v33 = v40;
  (*(v42 + 16))(v12, v31, v40);
  swift_storeEnumTagMultiPayload();
  sub_100036C54();
  v34 = v44;
  _ConditionalContent<>.init(storage:)();
  (*(v32 + 8))(v31, v33);
LABEL_12:
  sub_100039794(v34, v6);
  swift_storeEnumTagMultiPayload();
  sub_100036BB8();
  _ConditionalContent<>.init(storage:)();
  return sub_100039814(v34);
}

uint64_t sub_100035AF0(uint64_t *a1, uint64_t a2)
{
  sub_100039898();

  Text.init<A>(_:)();
  sub_1000366B4(0);
  sub_100036D74();
  return Section<>.init(header:content:)();
}

uint64_t sub_100035BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    sub_100033388(a2, a3);
    if (v3)
    {
    }
  }

  v6 = sub_10007A03C(v4);
  sub_100038604(&v6);

  swift_getKeyPath();
  sub_100039A2C(0, &qword_1000DA868, sub_10003677C, &type metadata accessor for Array);
  sub_1000367C8(0);
  sub_100036A18();
  sub_100039E88(&qword_1000DB848, sub_1000367C8, &protocol conformance descriptor for NavigationLink<A, B>);
  return ForEach<>.init(_:id:content:)();
}

void sub_100035D38(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 messageIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_100035D90(id *a1)
{
  v1 = *a1;
  sub_100036880(0);
  sub_100039E88(&qword_1000DB800, sub_100036880, &protocol conformance descriptor for VStack<A>);
  sub_1000369C4();
  v2 = v1;
  return NavigationLink.init(destination:label:)();
}

__n128 sub_100035E58@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  sub_100035EEC(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t sub_100035EEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 categoryIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [a1 categoryIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100039898();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.body.getter();
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_1000385F4(v10, v12, v14 & 1);

  static Color.primary.getter();
  v20 = Text.foregroundColor(_:)();
  v45 = v21;
  v46 = v20;
  v44 = v22;
  v47 = v23;

  sub_1000385F4(v15, v17, v19 & 1);

  v24 = [a1 creationDate];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  sub_10009ACA0(v25, v27);

  v28 = Text.init<A>(_:)();
  v30 = v29;
  LOBYTE(v27) = v31;
  static Font.caption.getter();
  v32 = Text.font(_:)();
  v34 = v33;
  LOBYTE(v12) = v35;

  sub_1000385F4(v28, v30, v27 & 1);

  static Color.secondary.getter();
  v36 = Text.foregroundColor(_:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_1000385F4(v32, v34, v12 & 1);

  *a2 = v46;
  *(a2 + 8) = v45;
  *(a2 + 16) = v44 & 1;
  *(a2 + 24) = v47;
  *(a2 + 32) = v36;
  *(a2 + 40) = v38;
  *(a2 + 48) = v40 & 1;
  *(a2 + 56) = v42;
  sub_1000385D8(v46, v45, v44 & 1);

  sub_1000385D8(v36, v38, v40 & 1);

  sub_1000385F4(v36, v38, v40 & 1);

  sub_1000385F4(v46, v45, v44 & 1);
}

uint64_t sub_100036224(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  type metadata accessor for MainActor();
  *(v2 + 24) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000362BC, v4, v3);
}

uint64_t sub_1000362BC()
{

  sub_1000238D8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100036320(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 clientIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *a1;
  if (!*(*a1 + 16))
  {

    goto LABEL_5;
  }

  v9 = sub_100033388(v5, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_5:
    v21 = [v3 clientIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v22;

    sub_100039900(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1000AE610;
    *(v23 + 32) = v3;
    v24 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a1;
    v20 = v23;
    goto LABEL_6;
  }

  v12 = *(*(v8 + 56) + 8 * v9);

  v13 = [v3 clientIdentifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_100039900(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AE610;
  *(inited + 32) = v3;
  v18 = v3;
  sub_10006155C(inited);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *a1;
  v20 = v12;
LABEL_6:
  sub_1000394F8(v20, v14, v16, isUniquelyReferenced_nonNull_native);

  *a1 = v26;
  return result;
}