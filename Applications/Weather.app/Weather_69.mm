uint64_t sub_10074BEAC()
{
  sub_100008188();
  v2 = *v1;
  sub_100003AF8();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = sub_10001920C();
  v5(v4);
  sub_10000E700();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10074C02C()
{
  sub_100013494();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_1000D3F9C(v2))
  {
    v3 = sub_10000389C();
    *v3 = 0;
    sub_10000FA14(&_mh_execute_header, v4, v5, "TipCoordinator configured");
    sub_100003884(v3);
  }

  type metadata accessor for MainActor();
  *(v0 + 136) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10074C10C, v7, v6);
}

uint64_t sub_10074C10C()
{
  sub_100003B08();

  sub_10074B838(1, v0);

  sub_100003B14();

  return v1();
}

uint64_t sub_10074C190(char a1)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_10001B350(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = v2;
  *(v9 + 40) = a1;
  sub_1006C0138();
}

uint64_t sub_10074C2C8()
{
  v0 = type metadata accessor for LocationComponentViewModel(0);
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = sub_10001920C();
  sub_1001B4294(v5, v6);
  result = sub_1001B8FB8(v4);
  if (result != 6)
  {
    return sub_10074C34C(result);
  }

  return result;
}

uint64_t sub_10074C34C(char a1)
{
  type metadata accessor for Tips.InvalidationReason();
  sub_10000548C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  if (qword_100CA27B0 != -1)
  {
    sub_10000F960(&qword_100CA27B0);
  }

  v9 = type metadata accessor for Logger();
  sub_10000703C(v9, qword_100D90D68);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (sub_1000D3F9C(v11))
  {
    v12 = sub_100018264();
    v13 = sub_1000205BC();
    v32 = v13;
    *v12 = 136315138;
    v14 = String.init<A>(describing:)();
    v16 = sub_100078694(v14, v15, &v32);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Invalidating tip=%s", v12, 0xCu);
    sub_100006F14(v13);
    sub_100003884(v13);
    sub_100003884(v12);
  }

  switch(a1)
  {
    case 1:
      v27 = sub_100019E50();
      v28(v27);
      sub_10047A8F0();
      break;
    case 2:
      v23 = sub_100019E50();
      v24(v23);
      sub_10047A89C();
      break;
    case 3:
      v25 = sub_100019E50();
      v26(v25);
      sub_10047A848();
      break;
    case 4:
      v34 = sub_10074A4C8(v17, v18) & 1;
      v21 = sub_100019E50();
      v22(v21);
      sub_10047A7F4();
      break;
    case 5:
      v35 = sub_10074A548(v17, v18) & 1;
      v29 = sub_100019E50();
      v30(v29);
      sub_10047A7A0();
      break;
    default:
      v33 = sub_10074A448(v17, v18) & 1;
      v19 = sub_100019E50();
      v20(v19);
      sub_10047A944();
      break;
  }

  Tip.invalidate(reason:)();
  return (*(v4 + 8))(v8, v1);
}

uint64_t sub_10074C684(char *a1)
{
  v1 = *a1;
  if (sub_1008C22D4(*a1) == 0x726F46796C696164 && v2 == 0xED00007473616365)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
LABEL_16:
      v10 = sub_1008C15D0(v1);
      return v10 & 1;
    }
  }

  if (qword_100CA20D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_10000703C(v5, qword_100D8FE28);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  if (v12 != 1)
  {
    goto LABEL_16;
  }

  if (qword_100CA27B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000703C(v6, qword_100D90D68);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Skipping daily forecast tip since it was last displayed", v9, 2u);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_10074C880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 192) = a5;
  *(v5 + 56) = a4;
  v6 = type metadata accessor for Tips.Status();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  sub_10022C350(&qword_100CA3528, &unk_100A4A660);
  *(v5 + 88) = swift_task_alloc();
  v7 = sub_10022C350(&qword_100CA3540, &qword_100A2D578);
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  v8 = sub_10022C350(&qword_100CA3548, &unk_100A2D580);
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = type metadata accessor for MainActor();
  *(v5 + 152) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 160) = v10;
  *(v5 + 168) = v9;

  return _swift_task_switch(sub_10074CA84, v10, v9);
}

uint64_t sub_10074CA84()
{
  sub_100008188();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_10074CE5C(*(v0 + 192), v4, v0 + 16);
  sub_1000161C0((v0 + 16), *(v0 + 40));
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  sub_100006F14((v0 + 16));
  *(v0 + 176) = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  sub_100069974(v5);
  sub_100051AE8();

  return AsyncStream.Iterator.next(isolation:)(v6, v7, v8);
}

uint64_t sub_10074CB98()
{
  sub_100013494();
  v1 = *v0;
  v2 = *v0;
  sub_100003AF8();
  *v3 = v2;

  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return _swift_task_switch(sub_10074CCD0, v5, v4);
}

uint64_t sub_10074CCD0()
{
  sub_100008188();
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  if (sub_100024D10(v1, 1, v2) == 1)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    sub_100003B14();
    sub_100051AE8();

    __asm { BRAA            X1, X16 }
  }

  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 192);
  (*(v6 + 32))(v5, v1, v2);
  v8 = sub_10074CF3C(v5, v7);
  (*(v6 + 8))(v5, v2, v8);
  *(v0 + 176) = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  *v9 = v0;
  sub_100069974(v9);
  sub_100051AE8();

  return AsyncStream.Iterator.next(isolation:)(v10, v11, v12);
}

unint64_t sub_10074CE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a1)
  {
    case 1:
      *(a3 + 24) = &unk_100C59068;
      result = sub_10047A8F0();
      goto LABEL_7;
    case 2:
      *(a3 + 24) = &unk_100C59048;
      result = sub_10047A89C();
      goto LABEL_7;
    case 3:
      *(a3 + 24) = &unk_100C59028;
      result = sub_10047A848();
LABEL_7:
      *(a3 + 32) = result;
      return result;
    case 4:
      v4 = sub_10074A4C8(a1, a2);
      *(a3 + 24) = &unk_100C59000;
      result = sub_10047A7F4();
      goto LABEL_9;
    case 5:
      v4 = sub_10074A548(a1, a2);
      *(a3 + 24) = &unk_100C58F80;
      result = sub_10047A7A0();
      goto LABEL_9;
    default:
      v4 = sub_10074A448(a1, a2);
      *(a3 + 24) = &unk_100C590E0;
      result = sub_10047A944();
LABEL_9:
      *(a3 + 32) = result;
      *a3 = v4 & 1;
      return result;
  }
}

double sub_10074CF3C(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Tips.Status();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  if (qword_100CA27B0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000703C(v15, qword_100D90D68);
  v16 = *(v7 + 16);
  v42 = a1;
  v16(v14, a1, v6);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v44 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v41 = v7;
    v21 = v20;
    v39 = swift_slowAlloc();
    v46 = v39;
    *v21 = 136315394;
    v45 = a2;
    v22 = String.init<A>(describing:)();
    v24 = sub_100078694(v22, v23, &v46);
    v40 = v3;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v16(v11, v14, v6);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    v29 = *(v41 + 8);
    v29(v14, v6);
    v30 = sub_100078694(v26, v28, &v46);

    *(v21 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s.stream.status=%s", v21, 0x16u);
    swift_arrayDestroy();

    v7 = v41;
  }

  else
  {

    v29 = *(v7 + 8);
    v29(v14, v6);
  }

  v31 = v43;
  v16(v43, v42, v6);
  v32 = (*(v7 + 88))(v31, v6);
  if (v32 == enum case for Tips.Status.invalidated(_:))
  {
    v33 = v44;
    sub_1008C20C8(v44);
    v34 = v33;
LABEL_8:
    v35 = sub_10074D308(0, v34);
    (v29)(v31, v6, v35);
    return result;
  }

  v34 = v44;
  if (v32 == enum case for Tips.Status.pending(_:))
  {
    v37 = 0;
  }

  else
  {
    if (v32 != enum case for Tips.Status.available(_:))
    {
      goto LABEL_8;
    }

    v37 = 1;
  }

  return sub_10074D308(v37, v44);
}

double sub_10074D308(char a1, uint64_t a2)
{
  v2 = a2;
  switch(a2)
  {
    case 1:
      sub_10074B118(a1 & 1, a2);
      if (a1)
      {
        goto LABEL_13;
      }

      break;
    case 2:
      sub_10074B220(a1 & 1, a2);
      if (a1)
      {
        goto LABEL_13;
      }

      break;
    case 3:
      sub_10074B328(a1 & 1, a2);
      if (a1)
      {
        goto LABEL_13;
      }

      break;
    case 4:
      sub_10074B430(a1 & 1, a2);
      if (a1)
      {
        goto LABEL_13;
      }

      break;
    case 5:
      sub_10074B538(a1 & 1, a2);
      if (a1)
      {
        goto LABEL_13;
      }

      break;
    default:
      sub_10074B010(a1 & 1, a2);
      if (a1)
      {
LABEL_13:
        if (sub_1008C22D4(v2) != 0x726F46796C696164 || v5 != 0xED00007473616365)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        if (qword_100CA20D0 != -1)
        {
          swift_once();
        }

        v7 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
        sub_10000703C(v7, qword_100D8FE28);
        swift_beginAccess();
        Tips.Parameter.wrappedValue.setter();
        swift_endAccess();
      }

      break;
  }

  return result;
}

uint64_t sub_10074D4AC()
{

  v1 = OBJC_IVAR____TtC7Weather14TipCoordinator___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_10074D51C()
{
  sub_10074D4AC();

  return swift_deallocClassInstance();
}

uint64_t sub_10074D57C()
{
  sub_100008188();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = sub_100007F54(v4);
  *v5 = v6;
  v5[1] = sub_1000D8400;
  v7 = sub_1000066D8();

  return sub_10074B8F0(v7, v8, v1, v2, v3);
}

uint64_t sub_10074D62C()
{
  sub_100013494();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v1[1] = sub_10006D0B0;
  v3 = sub_1000066D8();

  return v4(v3);
}

uint64_t sub_10074D6D0()
{
  sub_100008188();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  *(v1 + 72) = *(v12 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_10000E700();
  sub_100051AE8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10074D7C4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10014986C(&qword_100CD6220, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_10001920C();
  dispatch thunk of Clock.now.getter();
  sub_10014986C(&qword_100CD6228, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10074D950;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10074D950()
{
  sub_100008188();
  sub_10000C7E4();
  v3 = v2;
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[8];
  v7 = *v1;
  sub_100003AF8();
  *v8 = v7;
  v3[15] = v0;

  v4(v5, v6);
  if (!v0)
  {

    sub_100003B14();
    sub_100051AE8();

    __asm { BRAA            X1, X16 }
  }

  sub_10000E700();
  sub_100051AE8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10074DAEC()
{
  sub_100003B08();

  sub_100003B14();

  return v0();
}

uint64_t sub_10074DB88()
{
  sub_100008188();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = sub_100007F54(v4);
  *v5 = v6;
  v5[1] = sub_10006D0B0;
  v7 = sub_1000066D8();

  return sub_10074C880(v7, v8, v1, v2, v3);
}

uint64_t sub_10074DCD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapComponentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PredictedLocationIntentDonationsDebugView(uint64_t a1)
{
  result = qword_100CD62D8;
  if (!qword_100CD62D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10074DDB8(uint64_t a1)
{
  sub_10051E7A4(319, &qword_100CC3A70, &type metadata for Bool, &protocol witness table for Bool);
  if (v1 <= 0x3F)
  {
    sub_10051E7A4(319, &qword_100CC3A78, &type metadata for Int, &protocol witness table for Int);
    if (v2 <= 0x3F)
    {
      sub_10051E7A4(319, &unk_100CC3A80, &type metadata for Double, &protocol witness table for Double);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PredictedLocationsScheduleStore();
        if (v4 <= 0x3F)
        {
          sub_100081C98();
          if (v5 <= 0x3F)
          {
            sub_10051E7F4();
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

uint64_t sub_10074DF00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  v4 = sub_100003AE8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v9 = sub_10022C350(&qword_100CD6320, &qword_100A7F1C0);
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  v20 = v1;
  sub_10022C350(&qword_100CD6328, &qword_100A7F1C8);
  sub_100006F64(&qword_100CD6330, &qword_100CD6328, &qword_100A7F1C8, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  v12 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_100750974(v2, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_1007509D8(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = &v11[*(v9 + 56)];
  *v15 = sub_100750A3C;
  v15[1] = v14;
  sub_10000579C();
  sub_100006F64(v16, &qword_100CD6320, &qword_100A7F1C0, v17);
  View.navigationTitle(_:)();
  return sub_100018144(v11, &qword_100CD6320, &qword_100A7F1C0);
}

uint64_t sub_10074E184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v75 = sub_10022C350(&qword_100CC3AE8, &unk_100A5CE88);
  v68 = *(v75 - 8);
  __chkstk_darwin(v75);
  v67 = &v64 - v3;
  v4 = sub_10022C350(&qword_100CB5D30, &unk_100A49560);
  __chkstk_darwin(v4 - 8);
  v78 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = &v64 - v7;
  v71 = sub_10022C350(&qword_100CC3AF0, &qword_100A5CE98);
  v66 = *(v71 - 8);
  __chkstk_darwin(v71);
  v65 = &v64 - v8;
  v9 = sub_10022C350(&qword_100CB5D28, &unk_100A5CEA0);
  __chkstk_darwin(v9 - 8);
  v77 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v64 - v12;
  v88 = sub_10022C350(&qword_100CB5D20, &unk_100A49550);
  v76 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v69 = &v64 - v15;
  v16 = sub_10022C350(&qword_100CB5D18, &unk_100A5CEB0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v86 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v89 = sub_10022C350(&qword_100CB5D10, &unk_100A49540);
  v73 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v64 - v24;
  v84 = sub_10022C350(&qword_100CB5D40, &qword_100A49570);
  v72 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v64 - v28;
  *&v94 = 0xD000000000000013;
  *(&v94 + 1) = 0x8000000100AD33C0;
  LOBYTE(v95) = 0;
  v96 = _swiftEmptyArrayStorage;
  v93 = a1;
  sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  sub_100006F64(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
  v81 = v29;
  Section<>.init(header:content:)();
  *&v94 = 0xD000000000000011;
  *(&v94 + 1) = 0x8000000100AD3440;
  LOBYTE(v95) = 0;
  v96 = _swiftEmptyArrayStorage;
  v99 = 0xD0000000000000B5;
  v100 = 0x8000000100ADD090;
  v101 = 0;
  v102 = _swiftEmptyArrayStorage;
  v92 = a1;
  sub_10022C350(&qword_100CC3AF8, &qword_100A5CEC0);
  sub_100006F64(&qword_100CC3B00, &qword_100CC3AF8, &qword_100A5CEC0, &protocol conformance descriptor for TupleView<A>);
  v82 = v25;
  Section<>.init(header:footer:content:)();
  v94 = xmmword_100A5CD80;
  LOBYTE(v95) = 0;
  v96 = _swiftEmptyArrayStorage;
  v91 = a1;
  sub_10022C350(&qword_100CC3B08, &unk_100A5CEC8);
  sub_100006F64(&qword_100CC3B10, &qword_100CC3B08, &unk_100A5CEC8, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  v30 = (a1 + *(type metadata accessor for PredictedLocationIntentDonationsDebugView(0) + 32));
  v31 = *v30;
  v32 = *(v30 + 1);
  LOBYTE(v94) = v31;
  *(&v94 + 1) = v32;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v33 = *(v17 + 60);
  v80 = v21;
  v21[v33] = v99;
  v94 = xmmword_100A5CD90;
  LOBYTE(v95) = 0;
  v96 = _swiftEmptyArrayStorage;
  v90 = a1;
  sub_10022C350(&qword_100CB66A0, &qword_100A4A060);
  sub_100006F64(&qword_100CB6698, &qword_100CB66A0, &qword_100A4A060, &protocol conformance descriptor for Toggle<A>);
  v34 = v69;
  Section<>.init(header:content:)();
  sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  v35 = UISettingProperty.wrappedValue.getter();
  if (v94 == 1)
  {
    *&v94 = 0xD00000000000001ALL;
    *(&v94 + 1) = 0x8000000100AD35E0;
    LOBYTE(v95) = 0;
    v96 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v35);
    sub_10022C350(&qword_100CC3B28, &qword_100A5CEE0);
    sub_100521B30();
    v36 = v65;
    Section<>.init(header:content:)();
    v37 = v70;
    v38 = v71;
    (*(v66 + 32))(v70, v36, v71);
    v39 = 0;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    v39 = 1;
    v40 = v70;
    v41 = v71;
  }

  v42 = 1;
  v43 = v40;
  sub_10001B350(v40, v39, 1, v41);
  v44 = UISettingProperty.wrappedValue.getter();
  v45 = v74;
  v46 = v75;
  if (v94 == 1)
  {
    *&v94 = 0xD00000000000001ELL;
    *(&v94 + 1) = 0x8000000100AD35C0;
    LOBYTE(v95) = 0;
    v96 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v44);
    sub_10022C350(&qword_100CC3B18, &qword_100A5CED8);
    sub_100006F64(&qword_100CC3B20, &qword_100CC3B18, &qword_100A5CED8, &protocol conformance descriptor for Stepper<A>);
    v47 = v67;
    Section<>.init(header:content:)();
    (*(v68 + 32))(v45, v47, v46);
    v42 = 0;
  }

  sub_10001B350(v45, v42, 1, v46);
  v48 = v45;
  v49 = v72;
  v50 = v83;
  (*(v72 + 16))(v83, v81, v84);
  *&v94 = v50;
  v51 = v73;
  v52 = v85;
  (*(v73 + 16))(v85, v82, v89);
  *(&v94 + 1) = v52;
  v53 = v86;
  sub_100060DE0(v80, v86, &qword_100CB5D18, &unk_100A5CEB0);
  v95 = v53;
  v54 = v76;
  v55 = v87;
  (*(v76 + 16))(v87, v34, v88);
  v96 = v55;
  v56 = v77;
  sub_100060DE0(v43, v77, &qword_100CB5D28, &unk_100A5CEA0);
  v97 = v56;
  v57 = v78;
  sub_100060DE0(v48, v78, &qword_100CB5D30, &unk_100A49560);
  v98 = v57;
  sub_1003E9984();
  sub_100018144(v48, &qword_100CB5D30, &unk_100A49560);
  sub_100018144(v43, &qword_100CB5D28, &unk_100A5CEA0);
  v58 = *(v54 + 8);
  v59 = v88;
  v58(v34, v88);
  sub_100018144(v80, &qword_100CB5D18, &unk_100A5CEB0);
  v60 = *(v51 + 8);
  v60(v82, v89);
  v61 = *(v49 + 8);
  v62 = v84;
  v61(v81, v84);
  sub_100018144(v57, &qword_100CB5D30, &unk_100A49560);
  sub_100018144(v56, &qword_100CB5D28, &unk_100A5CEA0);
  v58(v87, v59);
  sub_100018144(v86, &qword_100CB5D18, &unk_100A5CEB0);
  v60(v85, v89);
  return (v61)(v83, v62);
}

uint64_t sub_10074EEE4(uint64_t a1)
{
  v2 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100750974(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1007509D8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return Button.init(action:label:)();
}

uint64_t sub_10074F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10074F104, v7, v6);
}

uint64_t sub_10074F104()
{
  sub_10000EB1C();
  sub_100008188();
  static Logger.predictedLocationIntentDonations.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_1000054A4(v2))
  {
    *swift_slowAlloc() = 0;
    sub_10000FA14(&_mh_execute_header, v3, v4, "Debug setting will donate intents for predicted locations");
    sub_100007E54();
  }

  v5 = sub_100013954();
  v6(v5);
  v7 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_100019E64(v7);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  sub_100006070(v8);
  sub_10002C7FC();

  return dispatch thunk of PredictedLocationsServiceProxyType.donateIntentsForPredictedLocations()(v9, v10, v11, v12, v13, v14, v15, v16);
}

double sub_10074F208@<D0>(uint64_t a1@<X8>)
{
  result = 1.82824933e44;
  *a1 = xmmword_100A7F130;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10074F228@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a1;
  v34 = a2;
  v3 = sub_10022C350(&qword_100CA6F40, &unk_100A97D20);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v32 = &v31 - v13;
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  sub_100750974(a1, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_1007509D8(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  Button.init(action:label:)();
  static ButtonRole.destructive.getter();
  v22 = type metadata accessor for ButtonRole();
  sub_10001B350(v5, 0, 1, v22);
  sub_100750974(v31, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_1007509D8(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v20);
  Button.init(role:action:label:)();
  v24 = *(v10 + 16);
  v25 = v32;
  v24(v32, v19, v9);
  v26 = v33;
  v24(v33, v16, v9);
  v27 = v34;
  v24(v34, v25, v9);
  v28 = sub_10022C350(&qword_100CC3B88, &unk_100A5CF20);
  v24(&v27[*(v28 + 48)], v26, v9);
  v29 = *(v10 + 8);
  v29(v16, v9);
  v29(v19, v9);
  v29(v26, v9);
  return (v29)(v25, v9);
}

uint64_t sub_10074F624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10074F718, v7, v6);
}

uint64_t sub_10074F718()
{
  sub_10000EB1C();
  sub_100008188();
  static Logger.predictedLocationIntentDonations.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_1000054A4(v2))
  {
    *swift_slowAlloc() = 0;
    sub_10000FA14(&_mh_execute_header, v3, v4, "Debug setting will schedule refresh of predicted locations");
    sub_100007E54();
  }

  v5 = sub_100013954();
  v6(v5);
  v7 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_100019E64(v7);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  sub_100006070(v8);
  sub_10002C7FC();

  return dispatch thunk of PredictedLocationsServiceProxyType.reschedulePredictedLocationsRefreshForIntentDonations()(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10074F81C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  v4 = sub_100003AE8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v9 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  sub_10001B350(v12, 1, 1, v13);
  sub_100750974(a1, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_1007509D8(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_1006C0138();
}

uint64_t sub_10074F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10074FA94, v7, v6);
}

uint64_t sub_10074FA94()
{
  sub_10000EB1C();
  sub_100008188();
  static Logger.predictedLocationIntentDonations.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_1000054A4(v2))
  {
    *swift_slowAlloc() = 0;
    sub_10000FA14(&_mh_execute_header, v3, v4, "Debug setting will cancel next scheduled refresh of predicted locations");
    sub_100007E54();
  }

  v5 = sub_100013954();
  v6(v5);
  v7 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_100019E64(v7);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  sub_100006070(v8);
  sub_10002C7FC();

  return dispatch thunk of PredictedLocationsServiceProxyType.cancelScheduledPredictedLocationsRefreshForIntentDonations()(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10074FB98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CABBF8, &qword_100A5CF10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  __chkstk_darwin(v11);
  v13 = &v21[-v12];
  __chkstk_darwin(v14);
  v16 = &v21[-v15];
  v23 = a1;
  LabeledContent<>.init(content:label:)();
  v22 = a1;
  LabeledContent<>.init(content:label:)();
  v17 = *(v5 + 16);
  v17(v10, v16, v4);
  v17(v7, v13, v4);
  v17(a2, v10, v4);
  v18 = sub_10022C350(&qword_100CC3B80, &qword_100A5CF18);
  v17(&a2[*(v18 + 48)], v7, v4);
  v19 = *(v5 + 8);
  v19(v13, v4);
  v19(v16, v4);
  v19(v7, v4);
  return (v19)(v10, v4);
}

uint64_t sub_10074FE44@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  sub_10074FEA4(a1);
  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10074FEA4(void (*a1)(void))
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  a1();
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    sub_100018144(v5, &unk_100CB2CF0, &unk_100A2D7F0);
    return 1701736270;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v10 = Date.description.getter();
    (*(v7 + 8))(v9, v6);
  }

  return v10;
}

uint64_t sub_100750044(uint64_t a1)
{
  v2 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = &off_100C44190;
  sub_100750974(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1007509D8(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_10022C350(&qword_100CC3B58, &qword_100A5CF00);
  sub_10022C350(&qword_100CC3B40, &qword_100A5CEE8);
  sub_100006F64(&qword_100CC3B60, &qword_100CC3B58, &qword_100A5CF00, &protocol conformance descriptor for [A]);
  sub_100521BB4();
  sub_100521D14();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1007501EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a1;
  sub_100750974(a2, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1007509D8(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  *(v11 + v10 + v8) = v9;
  v13[16] = v9;
  v14 = a2;
  sub_10022C350(&qword_100CC3B70, &qword_100A5CF08);
  sub_100006F64(&qword_100CC3B78, &qword_100CC3B70, &qword_100A5CF08, &protocol conformance descriptor for HStack<A>);
  Button.init(action:label:)();
  LODWORD(a2) = static HierarchicalShapeStyle.primary.getter();
  result = sub_10022C350(&qword_100CC3B40, &qword_100A5CEE8);
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_1007503A0(uint64_t a1, char a2)
{
  type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_10022C350(&qword_100CC39F8, &qword_100A5CDD8);
  return UISettingProperty.wrappedValue.setter();
}

__n128 sub_100750414@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = static VerticalAlignment.center.getter();
  v19 = 1;
  sub_1007504A8(v3, &v13);
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  result = v13;
  v12 = v19;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 24) = result;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  *(a3 + 56) = v8;
  *(a3 + 64) = v9;
  *(a3 + 72) = v10;
  return result;
}

uint64_t sub_1007504A8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = 0x6574756E696D2035;
  switch(a1)
  {
    case 1:
      v3 = 0x74756E696D203531;
      break;
    case 2:
      v3 = 0x72756F682031;
      break;
    case 3:
      v3 = 0x7372756F682036;
      break;
    default:
      break;
  }

  v15 = v3;
  sub_10002D5A4();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_10022C350(&qword_100CC39F8, &qword_100A5CDD8);
  UISettingProperty.wrappedValue.getter();
  v12 = sub_1009F9F68(v15);
  if (v12 == 4 || qword_100A7F208[a1] != qword_100A7F208[v12])
  {
    v13 = 0;
  }

  else
  {
    v13 = Image.init(systemName:)();
  }

  sub_10010CD54(v5, v7, v9 & 1);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v13;

  sub_10010CD64(v5, v7, v9 & 1);
}

uint64_t sub_100750680(uint64_t a1)
{
  type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_10022C350(&qword_100CC3A00, &unk_100A5CDE0);
  UISettingProperty.projectedValue.getter();
  return Stepper.init<A>(value:in:step:onEditingChanged:label:)();
}

void sub_100750778(uint64_t a1@<X8>)
{
  _StringGuts.grow(_:)(27);

  type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_10022C350(&qword_100CC3A00, &unk_100A5CDE0);
  UISettingProperty.wrappedValue.getter();
  v2 = v5 * 100.0;
  if (COERCE__INT64(fabs(v5 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 9504;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    *a1 = 0xD000000000000017;
    *(a1 + 8) = 0x8000000100AD3600;
    *(a1 + 16) = 0;
    *(a1 + 24) = _swiftEmptyArrayStorage;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1007508BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PredictedLocationIntentDonationsDebugView(0);

  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_100750974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007509D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100750A3C()
{
  v2 = sub_100020B04();
  sub_100003810(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1007508BC(v0, v4);
}

uint64_t sub_100750AC8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_100003810(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1007501EC(a1, v7, a2);
}

uint64_t sub_100750B44()
{
  v1 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_100003AE8(v1);
  v4 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_1007503A0(v4, v5);
}

uint64_t sub_100750C70(uint64_t a1)
{
  v3 = type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_100003810(v3);
  return sub_10074F81C(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

uint64_t sub_100750CE0()
{
  sub_10000EB1C();
  sub_100008188();
  v0 = sub_100020B04();
  sub_100003810(v0);
  sub_100016AB4();
  v1 = swift_task_alloc();
  v2 = sub_100007F54(v1);
  *v2 = v3;
  sub_10000C9B8(v2);
  sub_10002C7FC();

  return sub_10074F9A0(v4, v5, v6, v7);
}

uint64_t sub_100750D94()
{
  sub_10000EB1C();
  sub_100008188();
  v0 = sub_100020B04();
  sub_100003810(v0);
  sub_100016AB4();
  v1 = swift_task_alloc();
  v2 = sub_100007F54(v1);
  *v2 = v3;
  sub_10000C9B8(v2);
  sub_10002C7FC();

  return sub_10074F624(v4, v5, v6, v7);
}

uint64_t sub_100750E68()
{
  type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_100008560();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  sub_100003D98();
  (*(v4 + 8))(v1 + v3);
  v5 = v0[7];
  sub_10022C350(&qword_100CC39F8, &qword_100A5CDD8);
  sub_100003D98();
  (*(v6 + 8))(v1 + v3 + v5);
  v7 = v0[8];
  sub_10022C350(&qword_100CC3A00, &unk_100A5CDE0);
  sub_100003D98();
  (*(v8 + 8))(v1 + v3 + v7);

  sub_10003C7D8();
  sub_100006F14((v1 + v3 + v0[11]));

  return swift_deallocObject();
}

uint64_t sub_100750FDC()
{
  sub_10000EB1C();
  sub_100008188();
  v0 = sub_100020B04();
  sub_100003810(v0);
  sub_100016AB4();
  v1 = swift_task_alloc();
  v2 = sub_100007F54(v1);
  *v2 = v3;
  sub_10000C9B8(v2);
  sub_10002C7FC();

  return sub_10074F010(v4, v5, v6, v7);
}

uint64_t sub_100751090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v139 = v5;
  v140 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v138 = v7 - v6;
  v8 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  v146 = v123 - v10;
  type metadata accessor for MapsConfiguration();
  sub_1000037C4();
  v135 = v12;
  v136 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v134 = v14 - v13;
  type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v132 = v16;
  v133 = v15;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v131 = v18 - v17;
  v19 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003C38();
  v124 = v21 - v22;
  __chkstk_darwin(v23);
  v145 = v123 - v24;
  v25 = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003C38();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  v32 = v123 - v31;
  v130 = sub_10022C350(&qword_100CD6400, &qword_100A7F2B8);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_100003C38();
  v129 = v34 - v35;
  __chkstk_darwin(v36);
  v128 = v123 - v37;
  v38 = type metadata accessor for LocationPreviewViewState(0);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_100003C38();
  v42 = v40 - v41;
  __chkstk_darwin(v43);
  v45 = v123 - v44;
  v46 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_1000037D8();
  v50 = v49 - v48;
  v142 = type metadata accessor for WeatherMenuInput(0);
  sub_1000037E8();
  __chkstk_darwin(v51);
  sub_1000037D8();
  v52 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  v53 = sub_100003810(v52);
  __chkstk_darwin(v53);
  sub_100003C38();
  v144 = v54 - v55;
  __chkstk_darwin(v56);
  v58 = v123 - v57;
  v59 = type metadata accessor for PreviewLocation(0);
  v141 = v58;
  countAndFlagsBits = v59;
  sub_10001B350(v58, 1, 1, v59);
  sub_10075244C();
  v137 = a1;
  sub_10075244C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v46 = &unk_100A31400;
    sub_100051BBC();
    sub_100095588();
    v70 = type metadata accessor for ModalViewState.MapViewModal(0);
    if (sub_100024D10(v29, 1, v70) != 1)
    {
      sub_100014DC0();
      sub_1000D3A04();
      v71 = v130;
      v72 = *(v130 + 48);
      v73 = object;
      sub_1000161C0(object + 22, object[25]);
      sub_100016E70();
      v75 = sub_100495F00(v42, v74);
      v76 = v32;
      v62 = v73;
      sub_1000180EC(v76, &qword_100CA65E0, &unk_100A31400);
      v77 = v141;
      sub_1000180EC(v141, &qword_100CA65C8, &unk_100A31670);
      sub_100019E8C();
      v78 = v128;
      sub_10075244C();
      sub_1000049FC();
      sub_1007524A4(v42, v79);
      sub_10001F698();
      v78[v72] = v75;
      v68 = v129;
      sub_100074F54();
      sub_100095588();
      sub_100023128();
      sub_10001B350(v77, 0, 1, countAndFlagsBits);
      sub_100074F54();
      sub_100051BBC();
      v69 = *(v71 + 48);
      goto LABEL_9;
    }

    sub_1000180EC(v32, &qword_100CA65E0, &unk_100A31400);
    sub_10001F698();
    sub_1000180EC(v29, &qword_100CA65E0, &unk_100A31400);
LABEL_7:
    LODWORD(v130) = 2;
    v46 = v142;
    v62 = object;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    sub_10001F698();
    sub_1007524A4(v50, type metadata accessor for ModalViewState);
    goto LABEL_7;
  }

  sub_100014DC0();
  sub_1000D3A04();
  v61 = *(v130 + 48);
  v62 = object;
  sub_1000161C0(object + 22, object[25]);
  sub_100016E70();
  v64 = sub_100495F00(v45, v63);
  v65 = v141;
  sub_1000180EC(v141, &qword_100CA65C8, &unk_100A31670);
  sub_100019E8C();
  v66 = v128;
  sub_10075244C();
  sub_1000049FC();
  sub_1007524A4(v45, v67);
  sub_10001F698();
  v66[v61] = v64;
  v68 = v129;
  sub_100074F54();
  sub_100095588();
  sub_100023128();
  sub_10001B350(v65, 0, 1, countAndFlagsBits);
  sub_100074F54();
  sub_100051BBC();
  v69 = *(v130 + 48);
LABEL_9:
  LODWORD(v130) = *(v68 + v69);
  sub_1007524A4(v68, type metadata accessor for PreviewLocation);
LABEL_10:
  v80 = v137;
  sub_100751CEC(v137, v145);
  LODWORD(v128) = *(v80 + v46[7]);
  v81 = objc_opt_self();
  v82 = [v81 mainBundle];
  v149._object = 0x8000000100ADD180;
  sub_1000109EC();
  v87 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, v85, v86, v149);
  v123[0] = v87._countAndFlagsBits;
  object = v87._object;

  v88 = sub_1000699A0();
  v150._object = 0x8000000100ADD180;
  sub_1000109EC();
  v93 = NSLocalizedString(_:tableName:bundle:value:comment:)(v89, v90, v91, v92, v150);
  v123[1] = v93._countAndFlagsBits;

  v94 = sub_1000699A0();
  v151._object = 0x8000000100ADD180;
  sub_1000109EC();
  v151._countAndFlagsBits = 0xD00000000000001DLL;
  v99 = NSLocalizedString(_:tableName:bundle:value:comment:)(v95, v96, v97, v98, v151);
  v126 = v99._object;
  countAndFlagsBits = v99._countAndFlagsBits;

  v100 = [v81 mainBundle];
  v152._object = 0x8000000100ADD230;
  v101._countAndFlagsBits = 0x64695320776F6853;
  v101._object = 0xEC00000072616265;
  v102._countAndFlagsBits = 0;
  v102._object = 0xE000000000000000;
  v152._countAndFlagsBits = 0xD00000000000001DLL;
  v103 = NSLocalizedString(_:tableName:bundle:value:comment:)(v101, 0, v100, v102, v152);
  v125 = v103._countAndFlagsBits;
  v104 = v103._object;

  LODWORD(v129) = sub_100752170(v141, v62);
  sub_1000161C0((v62 + 16), *(v62 + 40));
  v105 = v131;
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v106 = v134;
  AppConfiguration.maps.getter();
  (*(v132 + 8))(v105, v133);
  LODWORD(v133) = MapsConfiguration.windOverlayEnabled.getter();
  (*(v135 + 8))(v106, v136);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v136 = UnitManager.temperature.getter();

  v107 = v128;
  sub_100051BBC();
  sub_100095588();
  if (v107 == 128)
  {

    v112 = v124;
    sub_100051BBC();
    v110 = v140;
    v113 = sub_100024D10(v112, 1, v140);
    v109 = v138;
    v108 = v139;
    if (v113 == 1)
    {
      (*(v139 + 16))(v138, v80 + *(v142 + 32), v110);
      if (sub_100024D10(v112, 1, v110) != 1)
      {
        sub_1000180EC(v112, &qword_100CA5CF8, &unk_100A302F0);
      }

      object = v93._object;
      v108 = v139;
      v110 = v140;
      v109 = v138;
    }

    else
    {
      (*(v139 + 32))(v138, v112, v110);
      object = v93._object;
    }

    v46 = v142;
    v111 = &v148;
  }

  else
  {
    sub_1000180EC(v145, &qword_100CA5CF8, &unk_100A302F0);
    v109 = v138;
    v108 = v139;
    v110 = v140;
    (*(v139 + 16))(v138, v80 + v46[8], v140);

    v111 = &v147;
  }

  v114 = *(v111 - 32);
  v115 = v107 != 128;
  v116 = *(v80 + v46[13]);
  if (v116)
  {
    v104 = v126;
    v117 = countAndFlagsBits;
  }

  else
  {
    v117 = v125;
  }

  sub_100051BBC();
  v118 = type metadata accessor for WeatherMenuViewModel(0);
  *(a2 + v118[5]) = v130;
  sub_100051BBC();
  *(a2 + v118[7]) = v115;
  (*(v108 + 32))(a2 + v118[8], v109, v110);
  v119 = (a2 + v118[9]);
  v120 = object;
  *v119 = v114;
  v119[1] = v120;
  *(a2 + v118[10]) = v116;
  v121 = (a2 + v118[11]);
  *v121 = v117;
  v121[1] = v104;
  *(a2 + v118[12]) = v129 & 1;
  *(a2 + v118[13]) = v136;
  *(a2 + v118[14]) = v133 & 1;
  return sub_10001B350(a2, 0, 1, v118);
}

uint64_t sub_100751CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v38 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v38);
  v36 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for Location.Identifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WeatherMenuInput(0);
  sub_100095588();
  if (sub_100024D10(v12, 1, v13) == 1)
  {
    sub_1000180EC(v12, &qword_100CADBA0, &qword_100A3D250);
    v18 = 1;
    v19 = v39;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v20 = *(a1 + *(v17 + 36) + 16);
    v21 = Location.Identifier.id.getter();
    sub_1000864C0(v21, v22, v20);

    v23 = type metadata accessor for LocationWeatherDataState(0);
    if (sub_100024D10(v5, 1, v23) == 1)
    {
      (*(v14 + 8))(v16, v13);
      sub_1000180EC(v5, &qword_100CA37B0, &unk_100A2D740);
      sub_10001B350(v8, 1, 1, v38);
      v19 = v39;
    }

    else
    {
      v24 = a1;
      sub_1001A0D3C();
      sub_1007524A4(v5, type metadata accessor for LocationWeatherDataState);
      v25 = v38;
      v26 = sub_100024D10(v8, 1, v38);
      v19 = v39;
      if (v26 != 1)
      {
        v27 = v36;
        sub_1000D3A04();
        v28 = *(v24 + *(v17 + 48));
        v29 = v37;
        sub_1000161C0((v37 + 56), *(v37 + 80));
        v31 = sub_100922C64(v27, v28, v30);
        v33 = v32;
        sub_1000161C0((v29 + 96), *(v29 + 120));
        sub_100523678(v27 + *(v25 + 24), v31, v33, v16, v19);

        sub_1007524A4(v27, type metadata accessor for WeatherData);
        (*(v14 + 8))(v16, v13);
        v18 = 0;
        goto LABEL_9;
      }

      (*(v14 + 8))(v16, v13);
    }

    sub_1000180EC(v8, &qword_100CA3898, &qword_100A314D0);
    v18 = 1;
  }

LABEL_9:
  v34 = type metadata accessor for WeatherMapOverlayKind();
  return sub_10001B350(v19, v18, 1, v34);
}

BOOL sub_100752170(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CA6890, &qword_100A31680);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for PreviewLocation(0);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095588();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1000180EC(v8, &qword_100CA65C8, &unk_100A31670);
    return 0;
  }

  else
  {
    sub_1000D3A04();
    sub_1006E6B60();
    v13 = sub_1006E6834();
    v15 = v14;
    sub_1000161C0((a2 + 136), *(a2 + 160));
    sub_1001A34D0(v13, v15);

    sub_1007524A4(v11, type metadata accessor for PreviewLocation);
    v16 = type metadata accessor for SavedLocation();
    v12 = sub_100024D10(v5, 1, v16) == 1;
    sub_1000180EC(v5, &qword_100CA6890, &qword_100A31680);
  }

  return v12;
}

void *sub_1007523B4()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);
  sub_100006F14(v0 + 17);
  sub_100006F14(v0 + 22);
  return v0;
}

uint64_t sub_1007523F4()
{
  sub_1007523B4();

  return swift_deallocClassInstance();
}

uint64_t sub_10075244C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1007524A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_1007524FC()
{
  swift_unknownObjectRelease();
  sub_100006F14(v0 + 4);
  sub_100006F14(v0 + 9);
  sub_100006F14(v0 + 14);
  sub_100006F14(v0 + 19);
  sub_100006F14(v0 + 24);
  sub_100006F14(v0 + 29);
  sub_100006F14(v0 + 34);
  sub_100006F14(v0 + 39);
  sub_100006F14(v0 + 44);
  sub_100006F14(v0 + 49);
  sub_100006F14(v0 + 54);
  return v0;
}

uint64_t sub_100752574()
{
  sub_1007524FC();

  return swift_deallocClassInstance();
}

uint64_t sub_1007525A8(uint64_t a1)
{
  result = sub_100759F10(a1);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v6 = sub_1007863CC();
    v7 = sub_1007846BC(v6);
    sub_1007863CC();
    v8 = static String.read(from:)();
    v10 = v9;
    v17 = v8;
    v11 = sub_1007863CC();
    v15 = static ExternalSearchQuery.read(from:)(v11);
    v16 = v12;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1007863CC();
    static Optional<A>.read(from:)();
    v13 = sub_1007863CC();
    v14 = sub_100756C2C(v13);
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    swift_allocObject();
    return sub_100042DA8(v4, v5 & 1, v23, v22, v7, v17, v10, v15, v16, v21, v18, v19, v14 & 1, v20);
  }

  return result;
}

uint64_t sub_1007527F8()
{
  sub_1007863D8();
  result = sub_10075A030(v3, *(v0 + 16), *(v0 + 24));
  if (!v1)
  {
    sub_1000C8410();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1000C8410();
    FixedSizeTypeBinaryCodable.write(to:)();
    v5 = sub_10000CDB0();
    sub_100784630(v5);

    sub_10078671C();
    String.write(to:)();
    sub_100786800();

    v6 = *(v2 + 48);

    sub_10078671C();
    ExternalSearchQuery.write(to:)(v7, v8, v9);
    sub_100786800();

    sub_1000C8410();
    result = FixedSizeTypeBinaryCodable.write(to:)();
    if (!v6)
    {
      sub_10022C350(&qword_100CA6078, &unk_100A30870);
      sub_1000C8410();
      Optional<A>.write(to:)();
      v10 = sub_10000CDB0();
      sub_100756C44(v10);
      sub_1000C8410();
      return FixedSizeTypeBinaryCodable.write(to:)();
    }
  }

  return result;
}

uint64_t sub_100752994()
{
  sub_100786524();
  type metadata accessor for ListViewState._Storage();
  v0 = sub_100042D78();
  return sub_1007525A8(v0);
}

void sub_1007529E8()
{
  sub_100032568();
  v2 = sub_100786DE4();
  active = type metadata accessor for LocationViewerActiveLocationState(v2);
  v4 = sub_100003810(active);
  __chkstk_darwin(v4);
  sub_100005888();
  v5 = sub_1000236E0();
  sub_100782360(v5, v6, v7, v8, v9, v10, v11, v12, v21, v22, SWORD2(v22), SBYTE6(v22), HIBYTE(v22));
  if (!v0)
  {
    v13 = sub_1000236E0();
    v14 = sub_1007846BC(v13);
    v15 = sub_1000236E0();
    v16 = sub_100783E40(v15);
    v17 = sub_1000236E0();
    v18 = sub_1007580F0(v17);
    sub_10019235C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v19 = sub_1000236E0();
    v20 = sub_1007846BC(v19);
    swift_allocObject();
    sub_10003DDB8(v1, v14, v16 & 1, v18, v23, v20);
  }

  sub_1002E5564();
  sub_10008835C();
}

uint64_t sub_100752B24()
{
  v2 = sub_100017580();
  active = type metadata accessor for LocationViewerActiveLocationState(v2);
  v4 = sub_100003810(active);
  __chkstk_darwin(v4);
  sub_100005384();
  sub_1000E82F4(v0 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v0);
  sub_100786574();
  sub_10078211C();
  sub_100786A4C();
  result = sub_1000E83A0();
  if (!v1)
  {
    v6 = sub_100786574();
    sub_100784630(v6);
    v7 = sub_100786574();
    sub_100783DE0(v7);
    v8 = sub_100786574();
    sub_100758108(v8);
    sub_100786574();
    FixedSizeTypeBinaryCodable.write(to:)();
    v9 = sub_100786574();
    return sub_100784630(v9);
  }

  return result;
}

void sub_100752C88()
{
  v0 = sub_100786524();
  type metadata accessor for LocationViewerViewState._Storage(v0);
  sub_100042D78();
  sub_1007529E8();
}

void sub_100752CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  v155 = v31;
  v32 = type metadata accessor for ModalViewState(0);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_1000038E4();
  v137 = v34;
  v35 = sub_1000038CC();
  v36 = type metadata accessor for ViewState(v35);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_1000038E4();
  sub_1000FD184(v38);
  type metadata accessor for Date();
  sub_1000037C4();
  v139 = v40;
  v142 = v39;
  __chkstk_darwin(v39);
  sub_1000038E4();
  v148 = v41;
  v42 = sub_1000038CC();
  v43 = type metadata accessor for TimeState(v42);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_1000038E4();
  v147 = v45;
  v46 = sub_1000038CC();
  v47 = type metadata accessor for NotificationsOptInState(v46);
  v48 = sub_100003810(v47);
  __chkstk_darwin(v48);
  sub_1000038E4();
  v150 = v49;
  sub_1000038CC();
  type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v151 = v51;
  v153 = v50;
  __chkstk_darwin(v50);
  sub_10002429C();
  v52 = type metadata accessor for NotificationsState(0);
  sub_1000037E8();
  __chkstk_darwin(v53);
  sub_10001BA34();
  v54 = type metadata accessor for LocationsState(0);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  sub_1000520E4();
  v56 = type metadata accessor for EnvironmentState(0);
  v57 = sub_100003810(v56);
  __chkstk_darwin(v57);
  sub_100049BF8();
  type metadata accessor for AppConfiguration();
  sub_1000037C4();
  __chkstk_darwin(v58);
  sub_100005888();
  v59 = type metadata accessor for AppConfigurationState(0);
  v60 = sub_100003810(v59);
  __chkstk_darwin(v60);
  sub_1000106FC();
  v61 = static Set<>.read(from:)();
  if (!v26)
  {
    v154 = v61;
    v120 = v30;
    v62 = sub_1007846BC(v155);
    static AppConfiguration.read(from:)();
    v63 = sub_100008408();
    v64(v63);
    v65 = sub_1007863CC();
    sub_100781958(v65, v66, v67, v68, v69, v70, v71, v72, v116, v120, v24, v29, v28, v27, v25, v137, v139, v142, v145, v147);
    sub_100782C30();
    v156 = sub_1007580F0(v155);
    v73 = type metadata accessor for NotificationSubscription.Location();
    sub_10077C574(&unk_100CD66B0);
    sub_100087E4C();
    sub_10077C574(v74);
    sub_1007871F0();
    v75 = static Array<A>.read(from:)();
    sub_1007871FC();
    v76 = static Array<A>.read(from:)();
    static PredictedLocationsNotificationSubscription.Kind.read(from:)();
    sub_1007863F0();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v77 = v62;
    *v121 = v156;
    *(v121 + 8) = v75;
    *(v121 + 16) = v76;
    (*(v151 + 32))(v121 + *(v52 + 28), v131, v153);
    *(v121 + *(v52 + 32)) = a14;
    sub_10075919C(v155, v78, v79, v80, v81, v82, v83, v84, v73, v121, SBYTE1(v121), SBYTE2(v121), SBYTE3(v121), SBYTE4(v121), SBYTE5(v121), SBYTE6(v121), SHIBYTE(v121));
    sub_1007871CC();
    static Date.read(from:)();
    (*(v140 + 32))(*(&v146 + 1), v148, v143);
    v85 = sub_1007871CC();
    sub_10067ABA8(v85, v86, v87, v88, v89, v90, v91, v92, v117, v122, v125, v127, v129);
    v93 = sub_1007871CC();
    sub_1006821D4(v93, v94, v95, v96, v97, v98, v99, v100, v118, v123, v126, v128, v130);
    sub_1007871CC();
    v101 = static String.read(from:)();
    v103 = v102;
    type metadata accessor for LocationWeatherDataState(0);
    sub_10077C574(&unk_100CD66C0);
    sub_1000D42FC();
    sub_10077C574(v104);
    v105 = static Dictionary<>.read(from:)();
    v106 = type metadata accessor for LocationAvailableDataSetState(0);
    sub_10077C574(&unk_100CD66D0);
    sub_1000715CC();
    v108 = sub_10077C574(v107);
    v110 = sub_10078776C(v155, &type metadata for String, v106, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, v109, v108);
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    type metadata accessor for WeatherCondition();
    sub_10077C574(&unk_100CD66E0);
    sub_10002035C();
    sub_10077C574(v111);
    v112 = static Dictionary<>.read(from:)();
    sub_1007842EC();
    sub_100784340();
    v152 = static Dictionary<>.read(from:)();
    v149 = type metadata accessor for ContentStatusBanner(0);
    v144 = sub_100072E1C();
    v141 = sub_100784394();
    v132 = sub_1007843E8();
    sub_10077C574(&unk_100CD6710);
    sub_10006A8C8();
    sub_10077C574(v113);
    v114 = static Dictionary<>.read(from:)();
    LOBYTE(v115) = a13;
    swift_allocObject();
    sub_10003E038(v154, v77, v135, v134, v133, v124, v150, *(&v146 + 1), v146, v138, v101, v103, v105, v110, v115, v112, v152, v114, v119, v124, v132, v133, v134, v135, v136, v138, v141, v144, v146, v149, v150, v152, 0, v154, v155);
  }

  sub_10000C8F4();
}

void sub_1007537D8()
{
  sub_10000E8AC();
  v7 = v6;
  v8 = type metadata accessor for ModalViewState(0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000038E4();
  v80 = v10;
  v11 = sub_1000038CC();
  type metadata accessor for ViewState(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  v14 = sub_1000FD184(v13);
  v15 = type metadata accessor for TimeState(v14);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000038E4();
  v79 = v17;
  v18 = sub_1000038CC();
  v19 = type metadata accessor for NotificationsOptInState(v18);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000038E4();
  v78 = v21;
  v22 = sub_1000038CC();
  type metadata accessor for NotificationsState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100005888();
  v24 = type metadata accessor for LocationsState(0);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000520E4();
  v26 = type metadata accessor for EnvironmentState(0);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100006168();
  v28 = type metadata accessor for AppConfigurationState(0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_1000106FC();

  sub_1000BA488();
  Set<>.write(to:)();
  if (!v1)
  {

    sub_100784630(v7);
    v30 = v0;
    sub_1000E82F4(v0 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v4);
    sub_1007866C4();
    AppConfiguration.write(to:)();
    sub_1000699C0();
    sub_1000E83A0();
    v31 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    sub_1000E82F4(v30 + v31, v3);
    sub_100781718();
    sub_100013BDC();
    sub_1000E83A0();
    sub_1000E82F4(v30 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v5);
    sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
    sub_10077C574(&unk_100CD6768);
    sub_1000E3220();
    sub_10077C574(v32);
    sub_100786598();
    Optional<A>.write(to:)();
    sub_1007870C0(v24[5]);
    type metadata accessor for SavedLocation();
    sub_10077C574(&unk_100CD6778);
    sub_100030268();
    sub_10077C574(v33);
    sub_1007871B4();
    sub_1007871F0();
    Array<A>.write(to:)();
    type metadata accessor for LocationModel();
    sub_10077C574(&unk_100CD6788);
    sub_1000BAF30();
    sub_10077C574(v34);
    sub_100049C10();
    Array<A>.write(to:)();
    sub_1007870C0(v24[7]);
    type metadata accessor for LocationOfInterest();
    sub_100786968();
    sub_10077C574(v35);
    sub_100023154();
    sub_10077C574(v36);
    sub_1007871B4();
    Array<A>.write(to:)();
    sub_1007870C0(v24[8]);
    type metadata accessor for Location();
    sub_10077C574(&unk_100CD6688);
    sub_100019EA4();
    sub_10077C574(v37);
    sub_1007871B4();
    Array<A>.write(to:)();
    type metadata accessor for Location.Identifier();
    sub_10077C574(&unk_100CD67A8);
    sub_1000C8C08();
    sub_10077C574(v38);
    Array<A>.write(to:)();
    Dictionary<>.write(to:)();
    sub_1000870CC();
    Dictionary<>.write(to:)();
    sub_1000870CC();
    sub_100786534();
    sub_100782A34();
    type metadata accessor for LocationDisplayContext();
    sub_10077C574(&unk_100CD67B8);
    sub_10008878C();
    v77 = sub_10077C574(v39);
    Dictionary<>.write(to:)();
    sub_1000870CC();
    sub_10004EA4C();
    sub_1000E83A0();
    sub_1000E82F4(v30 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v2);
    v40 = sub_100786534();
    sub_100758108(v40);
    v41 = *(v2 + 8);
    type metadata accessor for NotificationSubscription.Location();
    sub_10077C574(&unk_100CD66B0);
    sub_100087E4C();
    sub_10077C574(v42);
    sub_1007876E4(v7, v41);
    sub_1007876E4(v7, *(v2 + 16));
    sub_100786534();
    PredictedLocationsNotificationSubscription.Kind.write(to:)();
    sub_100786534();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1000D3FB4();
    sub_1000E83A0();
    v43 = sub_100786CA4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_1000E82F4(v43, v78);
    sub_100786534();
    sub_100759598();
    sub_1000C8824();
    sub_1000E83A0();
    v44 = sub_100786CA4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_1000E82F4(v44, v79);
    sub_100786534();
    Date.write(to:)();
    sub_1000868A0();
    sub_1000E83A0();
    v45 = sub_100786CA4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
    sub_1000E82F4(v45, v81);
    sub_100786534();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786598();
    sub_1007527F8();
    sub_100786534();
    sub_10077BF3C();
    v46 = sub_100786534();
    sub_100783DE0(v46);
    v47 = [objc_opt_self() currentDevice];
    [v47 userInterfaceIdiom];

    v48 = sub_100786534();
    sub_100783DE0(v48);
    sub_10022C350(&qword_100CA6600, &unk_100A5C400);
    sub_10077C574(&qword_100CD0060);
    sub_1007863C0();
    sub_10077C574(v49);
    sub_10002CA80();
    Optional<A>.write(to:)();
    v50 = sub_100786534();
    UIInterfaceOrientation.write(to:)(v50, v51);
    v52 = sub_100786534();
    UIUserInterfaceSizeClass.write(to:)(v52, v53);
    v54 = sub_100786534();
    sub_1007822A0(v54);
    v55 = sub_100786534();
    sub_100783DE0(v55);
    v56 = sub_100786534();
    sub_100784630(v56);
    type metadata accessor for DisplayMetrics(0);
    sub_100786534();
    DynamicTypeSize.write(to:)();
    v57 = sub_100786534();
    sub_100756538(v57, v58);
    v59 = sub_100786534();
    sub_1007566FC(v59, v60);
    type metadata accessor for WeatherMapPresentationState(0);
    sub_100786534();
    WeatherMapOverlayKind.write(to:)();
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    sub_100786534();
    Optional<A>.write(to:)();
    sub_100786534();
    sub_1007569E8();
    sub_100786534();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786534();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100021144();
    sub_1000E83A0();
    v61 = sub_100786CA4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
    sub_1000E82F4(v61, v80);
    sub_100786534();
    sub_100681CEC();
    sub_1000A7D1C();
    sub_1000E83A0();
    v62 = *(v30 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v63 = *(v30 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v64 = *(v30 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);

    sub_10078671C();
    String.write(to:)();
    if (v62)
    {
    }

    else
    {
      v65 = type metadata accessor for LocationWeatherDataState(0);
      sub_1000E5A48();
      sub_10077C574(v66);
      sub_1000D42FC();
      v68 = sub_10077C574(v67);
      sub_10078773C(v7, v63, &type metadata for String, v65, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, v69, v68);
      sub_1000870CC();
      v70 = type metadata accessor for LocationAvailableDataSetState(0);
      sub_10077C574(&unk_100CD66D0);
      sub_1000715CC();
      v72 = sub_10077C574(v71);
      sub_10078773C(v7, v64, &type metadata for String, v70, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, v73, v72);
      sub_1000870CC();

      sub_100786534();
      FixedSizeTypeBinaryCodable.write(to:)();
      type metadata accessor for WeatherCondition();
      sub_10077C574(&unk_100CD66E0);
      sub_10002035C();
      sub_10077C574(v74);
      Dictionary<>.write(to:)();
      sub_1000870CC();
      sub_1007842EC();
      sub_100784340();
      Dictionary<>.write(to:)();
      sub_1000870CC();

      type metadata accessor for ContentStatusBanner(0);
      sub_100072E1C();
      sub_100784394();
      sub_1007843E8();
      sub_1007869B0();
      sub_10077C574(v75);
      sub_10006A8C8();
      sub_10077C574(v76);

      Dictionary<>.write(to:)();
      sub_1000870CC();
    }
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void sub_10075499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1007586B4(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, SWORD2(v15), SBYTE6(v15), HIBYTE(v15));
  v10 = v9;
  if (!v8)
  {
    v11 = v9 >> 24;
    v12 = v9 >> 8;
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 17) = v12;
    *(v13 + 18) = BYTE2(v10) & 1;
    *(v13 + 19) = v11;
    *(v13 + 21) = BYTE2(v11);
    *(v13 + 22) = BYTE6(v10) & 1;
  }
}

void sub_100754A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1007586B4(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, SWORD2(v15), SBYTE6(v15), HIBYTE(v15));
  v10 = v9;
  if (!v8)
  {
    v11 = v9 >> 24;
    v12 = v9 >> 8;
    type metadata accessor for NotificationsOptInViewState._Storage();
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 17) = v12;
    *(v13 + 18) = BYTE2(v10) & 1;
    *(v13 + 21) = BYTE2(v11);
    *(v13 + 19) = v11;
    *(v13 + 22) = BYTE6(v10) & 1;
  }
}

void sub_100754B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13)
{
  sub_10000E8AC();
  sub_100786DE4();
  type metadata accessor for URL();
  sub_1000037C4();
  __chkstk_darwin(v15);
  sub_10001BA34();
  sub_1000236E0();
  sub_100758A40(v16);
  if (!v13)
  {
    sub_1000236E0();
    static String.read(from:)();
    v17 = sub_1000236E0();
    v43 = sub_1007846BC(v17);
    sub_1000236E0();
    v18 = static String.read(from:)();
    v20 = v19;
    *(&v35 + 1) = v18;
    v21 = sub_1000236E0();
    DWORD1(v35) = sub_1007846BC(v21);
    sub_1000236E0();
    static Optional<A>.read(from:)();
    sub_1000236E0();
    static Optional<A>.read(from:)();
    v22 = sub_1000236E0();
    HIDWORD(v32) = sub_1007846BC(v22);
    v34 = v20;
    sub_1005131A0();
    sub_100784824();
    sub_100784878();
    sub_1007871F0();
    v31 = static Set<>.read(from:)();
    sub_1007848CC();
    sub_100784920();
    sub_100784974();
    sub_1007871F0();
    v33 = static Set<>.read(from:)();
    sub_1000236E0();
    static URL.read(from:)();
    sub_10019235C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    HIDWORD(v30) = a13;
    v23 = sub_1000236E0();
    LOBYTE(v20) = sub_100783E40(v23);
    swift_allocObject();
    BYTE1(v28) = v20 & 1;
    LOBYTE(v28) = a13;
    LOBYTE(v27) = BYTE4(v32);
    sub_100786FB4();
    sub_1002D5EE8(v24, v25, v26, v43, *(&v35 + 1), v34, DWORD1(v35), v38, v39, v36, v37, v27, v31, v33, v14, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v35, v36, v37, v38, v39, v40, v41, v42);
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void sub_100754F68()
{
  sub_10000E8AC();
  sub_1002E5718();
  v3 = type metadata accessor for URL();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000520E4();
  memcpy(v18, (v0 + 16), 0xC2uLL);
  sub_1002DD184(v18, v17);
  sub_1007866F0();
  sub_100758EA0();
  if (v1)
  {
    sub_1002DD1E0(v18);
  }

  else
  {
    sub_1002DD1E0(v18);
    v7 = *(v0 + 216);

    sub_1007876A4();
    sub_1000E6714();
    if (v7)
    {
    }

    else
    {

      v8 = sub_1007866F0();
      sub_100784630(v8);
      v9 = *(v0 + 240);

      sub_1007876A4();
      sub_1000E6714();

      v10 = sub_1007866F0();
      sub_100784630(v10);
      if (!v9)
      {
        v17[0] = *(v0 + 264);
        sub_10022C350(&qword_100CA6078, &unk_100A30870);
        Optional<A>.write(to:)();
        v17[0] = *(v0 + 280);
        Optional<A>.write(to:)();
        v11 = sub_1007866F0();
        sub_100784630(v11);
        sub_1005131A0();
        sub_100784824();
        sub_100784878();

        v12 = sub_1000314C8();
        sub_100787604(v12);
        sub_1000E6714();

        sub_1007848CC();
        sub_100784920();
        sub_100784974();

        v13 = sub_1000314C8();
        sub_100787604(v13);
        sub_1000E6714();

        (*(v5 + 16))(v2, v0 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_onlineFeedbackURL, v3);
        URL.write(to:)();
        v14 = sub_100020E44();
        v15(v14);
        LOBYTE(v17[0]) = *(v0 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_showOnlineFeedbackSafariView);
        sub_1007866F0();
        FixedSizeTypeBinaryCodable.write(to:)();
        v16 = sub_1007866F0();
        sub_100783DE0(v16);
      }
    }
  }

  sub_1007865A4();
  sub_10000C8F4();
}

void sub_100755288()
{
  v0 = sub_100786524();
  type metadata accessor for ReportWeatherContentViewModel._Storage(v0);
  v1 = sub_100042D78();
  sub_100754B10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, SWORD2(v10), SBYTE6(v10), HIBYTE(v10));
}

uint64_t sub_1007552DC()
{
  sub_100756EA0();
  if (!v0)
  {
    v1 = swift_allocObject();
    sub_100787704(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  }

  return sub_10003BB20();
}

uint64_t sub_10075532C()
{
  sub_1000BB558();
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_10029C25C(__dst, &v3);
  v1 = sub_10000CDB0();
  sub_100756FFC(v1);
  return sub_10026AD10(__dst);
}

uint64_t sub_100755394()
{
  sub_100756EA0();
  if (!v0)
  {
    type metadata accessor for ReportWeatherViewState._Storage();
    v1 = swift_allocObject();
    sub_100787704(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  }

  return sub_10003BB20();
}

uint64_t sub_10075540C(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    result = sub_100786BE4(result, v3, v4, v5, v6, v7, v8, v9, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
    if (result >= 0x19)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v11 = sub_10077C574(v10);
      v12 = sub_100074D7C(v11);
      sub_10002C964(v12, v13);
      sub_100006494();
      (*(v14 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1007555EC()
{
  sub_10000E8AC();
  v4 = v3;
  v5 = sub_10022C350(&qword_100CAB960, &unk_100A3A7E0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100022E2C();
  type metadata accessor for Location();
  sub_100017D50();
  __chkstk_darwin(v7);
  sub_100049BF8();
  sub_100786618();
  static Location.read(from:)();
  if (!v0)
  {
    v8 = sub_100786618();
    v17 = sub_100783E40(v8);
    type metadata accessor for DetailHeroChartLollipopPosition(0);
    sub_10077C574(&qword_100CD0050);
    sub_100025304();
    sub_10077C574(v9);
    sub_100787054();
    static Optional<A>.read(from:)();
    type metadata accessor for CGRect(0);
    sub_1000C864C();
    sub_10077C574(v10);
    sub_100010A4C();
    sub_10077C574(v11);
    sub_100786C4C();
    static Optional<A>.read(from:)();
    sub_100786BA8();
    v12 = sub_10000CA1C();
    v13(v12);
    type metadata accessor for AveragesDetailViewState(0);
    sub_1007874FC();
    *(v4 + v14) = v17 & 1;
    sub_100786150(v1, v4 + *(v15 + 24), &qword_100CAB960, &unk_100A3A7E0);
    sub_100786D48(v4 + *(v2 + 28));
    *(v16 + 32) = v18;
  }

  sub_100036EA0();
  sub_10000C8F4();
}

uint64_t sub_10075586C()
{
  sub_1007863D8();
  result = Location.write(to:)();
  if (!v0)
  {
    type metadata accessor for AveragesDetailViewState(0);
    sub_10001325C();
    v4 = sub_10000CDB0();
    sub_100783DE0(v4);
    sub_10022C350(&qword_100CAB960, &unk_100A3A7E0);
    sub_1000E6478();
    sub_10077C574(v5);
    sub_100025304();
    sub_10077C574(v6);
    sub_100052444();
    sub_1000326B4(v1 + *(v2 + 28));
    sub_10022C350(&qword_100CB73A0, "<2\r");
    sub_100008E34();
    sub_10077C574(v7);
    sub_100010A4C();
    sub_10077C574(v8);
    return sub_1001721CC();
  }

  return result;
}

void sub_1007559B0()
{
  sub_10000E8AC();
  v4 = v3;
  v6 = v5;
  v7 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v9 = sub_100022E2C();
  v10 = type metadata accessor for SearchViewState.ViewState(v9);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100006168();
  sub_100786618();
  v12 = static String.read(from:)();
  if (!v0)
  {
    v14 = v12;
    v15 = v13;
    v16 = sub_100786618();
    sub_100755C60(v16, v17, v18, v19, v20, v21, v22, v23, v28, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
    v24 = sub_100786618();
    v30 = sub_1007846BC(v24);
    type metadata accessor for Location();
    sub_1000B8534();
    sub_10077C574(v25);
    sub_100019EA4();
    sub_10077C574(v26);
    sub_100787054();
    static Optional<A>.read(from:)();
    *v6 = v14;
    v6[1] = v15;
    type metadata accessor for SearchViewState(0);
    sub_10001325C();
    sub_10078753C();
    sub_100187600(v2, v27);
    *(v6 + *(v4 + 24)) = v30;
    sub_100786150(v1, v6 + *(v4 + 28), &qword_100CA65D8, &unk_100A3D9D0);
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void sub_100755B80()
{
  sub_1000D3C1C();
  sub_1007863D8();
  String.write(to:)();
  if (!v0)
  {
    type metadata accessor for SearchViewState(0);
    sub_100079588();
    sub_100755E9C();
    v1 = sub_10000CDB0();
    sub_100784630(v1);
    sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
    sub_1000C8DAC();
    sub_10077C574(v2);
    sub_100019EA4();
    sub_10077C574(v3);
    sub_100786728();
  }

  sub_100088758();
}

void sub_100755C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1000D3C1C();
  sub_100786560();
  type metadata accessor for CodableError();
  sub_100024A44();
  __chkstk_darwin(v15);
  sub_100049BF8();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v13)
  {
    switch(a13)
    {
      case 1:
        sub_1000B0CA4();
        static CodableError.read(from:)();
        v16 = sub_1000D42A0();
        v17(v16);
        type metadata accessor for SearchViewState.ViewState(0);
        sub_1007864F4();
        goto LABEL_6;
      case 2:
      case 4:
      case 5:
        type metadata accessor for SearchViewState.ViewState(0);
        sub_100017BC0();
        goto LABEL_6;
      case 3:
        type metadata accessor for SearchLocation(0);
        sub_100021FFC();
        sub_10077C574(v18);
        sub_100786B80(&unk_100CD67D0);
        sub_1000314C8();
        sub_1000523E0();
        *v14 = static Array<A>.read(from:)();
        type metadata accessor for SearchViewState.ViewState(0);
        sub_1007864E4();
LABEL_6:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v20 = sub_10077C574(v19);
        v21 = sub_100074D7C(v20);
        sub_10002C964(v21, v22);
        sub_100006494();
        (*(v23 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_1002E5564();
  sub_100088758();
}

void sub_100755E9C()
{
  sub_100032568();
  sub_100786514();
  type metadata accessor for CodableError();
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_1000106FC();
  type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  v4 = sub_100786790();
  sub_1000E82F4(v4, v0);
  sub_100053370();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1007863E4();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v1)
      {
        type metadata accessor for SearchLocation(0);
        sub_100021FFC();
        sub_10077C574(v9);
        sub_100786B80(&unk_100CD67D0);
        sub_1000E14AC();
        sub_10078660C();
        sub_1007877CC(v10, v11, v12, v13, v14);
      }

      break;
    case 2u:
    case 3u:
    case 4u:
      sub_1007863E4();
      FixedSizeTypeBinaryCodable.write(to:)();
      break;
    default:
      v5 = sub_100786504();
      v6(v5);
      sub_1007863E4();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v1)
      {
        sub_1007866E0();
        CodableError.write(to:)();
      }

      v7 = sub_10000810C();
      v8(v7);
      break;
  }

  sub_100786F80();
  sub_10008835C();
}

void sub_100756108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  sub_100786AD0();
  v18 = sub_10078676C();
  v19 = type metadata accessor for WeatherMapTrackingState(v18);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100006168();
  type metadata accessor for WeatherMapOverlayKind();
  sub_100024A44();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100049BF8();
  v24 = sub_10003BB20();
  v25 = sub_100756440(v24);
  if (!v13)
  {
    v26 = v25;
    v27 = sub_10003BB20();
    v28 = sub_1007565E8(v27);
    sub_10003BB20();
    static WeatherMapOverlayKind.read(from:)();
    sub_10003BB20();
    static Optional<A>.read(from:)();
    sub_10003BB20();
    sub_1007567A8();
    sub_100042D78();
    static FixedSizeTypeBinaryCodable.read(from:)();
    *v14 = v26;
    v14[1] = v28;
    v29 = type metadata accessor for WeatherMapPresentationState(0);
    (*(v22 + 32))(&v14[v29[6]], v17, v16);
    v30 = &v14[v29[7]];
    *v30 = v31;
    v30[1] = v32;
    sub_100187600(v15, &v14[v29[8]]);
    v14[v29[9]] = a13;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void sub_100756344()
{
  sub_1007863D8();
  sub_100756538(v2, *v0);
  if (!v1)
  {
    v3 = sub_10000CDB0();
    sub_1007566FC(v3, v4);
    type metadata accessor for WeatherMapPresentationState(0);
    sub_100013AD0();
    WeatherMapOverlayKind.write(to:)();
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    sub_1000C8410();
    Optional<A>.write(to:)();
    sub_100013AD0();
    sub_1007569E8();
    sub_100787184();
    sub_1000C8410();
    FixedSizeTypeBinaryCodable.write(to:)();
  }
}

uint64_t sub_100756440(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v4)
    {
      return 4;
    }

    else if (v3 == 3)
    {
      v5 = sub_10000CDB0();
      return sub_1007824D8(v5);
    }

    else if (v3 == 2)
    {
      return 5;
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100756538(uint64_t a1, char a2)
{
  if (a2 == 5)
  {
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  if (a2 == 4)
  {
    sub_100787430();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  result = sub_10078732C();
  if (!v2)
  {
    return sub_1007822A0(a1);
  }

  return result;
}

uint64_t sub_1007565E8(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v4)
    {
      return 128;
    }

    else if (v3 == 3)
    {
      v6 = sub_10000CDB0();
      return sub_100783E40(v6) & 1 | 0x40;
    }

    else if (v3 == 2)
    {
      v5 = sub_10000CDB0();
      return sub_100783E40(v5) & 1;
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v8 = sub_10077C574(v7);
      v9 = sub_100074D7C(v8);
      sub_10002C964(v9, v10);
      sub_100006494();
      (*(v11 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1007566FC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >> 6 && a2 >> 6 != 1)
  {
    sub_100787430();
    return sub_10078779C();
  }

  else
  {
    result = FixedSizeTypeBinaryCodable.write(to:)();
    if (!v2)
    {
      return sub_100783DE0(a1);
    }
  }

  return result;
}

void sub_1007567A8()
{
  sub_100032568();
  sub_100192434();
  type metadata accessor for WeatherMapOverlayKind();
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_100049BF8();
  sub_10019235C();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_100787154();
    switch(v3)
    {
      case 0:
        sub_10022C350(&qword_100CA6660, &unk_100A41280);
        v4 = sub_100031400();
        v6 = 1;
        goto LABEL_7;
      case 1:
        sub_10022C350(&qword_100CA6660, &unk_100A41280);
        v4 = sub_100031400();
        v6 = 2;
        goto LABEL_7;
      case 2:
        sub_1000BC6E4();
        static FixedSizeTypeBinaryCodable.read(from:)();
        sub_1000236E0();
        static WeatherMapOverlayKind.read(from:)();
        v7 = sub_10022C350(&qword_100CA6660, &unk_100A41280);
        *v1 = v14;
        sub_100786B24();
        v8();
        v4 = v1;
        v6 = 0;
        v5 = v7;
        goto LABEL_7;
      case 3:
        sub_10022C350(&qword_100CA6660, &unk_100A41280);
        v4 = sub_100031400();
        v6 = 3;
LABEL_7:
        sub_10001B350(v4, v6, 3, v5);
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v10 = sub_10077C574(v9);
        v11 = sub_100074D7C(v10);
        sub_10002C964(v11, v12);
        sub_100006494();
        (*(v13 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_1002E5564();
  sub_10008835C();
}

void sub_1007569E8()
{
  sub_100032568();
  sub_100786514();
  type metadata accessor for WeatherMapOverlayKind();
  sub_10000FB48();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000106FC();
  v7 = type metadata accessor for WeatherMapTrackingState(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100005384();
  v9 = sub_100786790();
  sub_1000E82F4(v9, v0);
  v10 = sub_10022C350(&qword_100CA6660, &unk_100A41280);
  switch(sub_100024D10(v0, 3, v10))
  {
    case 1u:
    case 2u:
    case 3u:
      sub_100786574();
      FixedSizeTypeBinaryCodable.write(to:)();
      break;
    default:
      (*(v5 + 32))(v3, v0 + *(v10 + 48), v2);
      sub_100786574();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v1)
      {
        sub_100786574();
        FixedSizeTypeBinaryCodable.write(to:)();
        sub_1000E6768();
        WeatherMapOverlayKind.write(to:)();
      }

      v11 = sub_10000C8E8();
      v12(v11);
      break;
  }

  sub_100786C88();
  sub_10008835C();
}

void sub_100756C5C()
{
  sub_10000E8AC();
  sub_1007864C4();
  type metadata accessor for Location();
  sub_10000FB48();
  __chkstk_darwin(v2);
  sub_100006168();
  sub_100786618();
  static Location.read(from:)();
  if (!v1)
  {
    v3 = sub_100786618();
    v4 = sub_100783E40(v3);
    type metadata accessor for CGRect(0);
    sub_1000C864C();
    sub_10077C574(v5);
    sub_100010A4C();
    sub_10077C574(v6);
    sub_100786C4C();
    static Optional<A>.read(from:)();
    sub_100786BA8();
    v7 = sub_1000E14D4();
    v8(v7);
    v9 = type metadata accessor for AirQualityDetailViewState(0);
    *(v0 + *(v9 + 20)) = v4 & 1;
    sub_100786CE8(*(v9 + 24));
    *(v10 + 32) = v11;
  }

  sub_100036EA0();
  sub_10000C8F4();
}

uint64_t sub_100756DD0(uint64_t a1)
{
  result = Location.write(to:)();
  if (!v2)
  {
    type metadata accessor for AirQualityDetailViewState(0);
    sub_1007874FC();
    v5 = sub_10000CDB0();
    sub_100783DE0(v5);
    sub_1000326B4(v1 + *(v3 + 24));
    sub_10022C350(&qword_100CB73A0, "<2\r");
    sub_100008E34();
    sub_1007863C0();
    sub_10077C574(v6);
    sub_100010A4C();
    sub_10077C574(v7);
    return sub_1001721CC();
  }

  return result;
}

void sub_100756EA0()
{
  sub_100786DA8();
  sub_1000526D4(v2);
  if (!v0)
  {
    if (HIBYTE(v33) == 2)
    {
      v19 = sub_1000B0CA4();
      sub_1007599D4(v19, v20, v21, v22, v23, v24, v25, v26, v32, v33, v34, v36, v38, v39, v41, v42, v44, v45, v47, v48, v50, v51, v53, v54, v55, v56);
      v11 = v37;
      v12 = v40;
      v13 = v43;
      v14 = v46;
      v15 = v49;
      v17 = v52;
      v18 = v35 & 0xFFFFFFFFFFFFFF9 | 0x8000000000000000;
      goto LABEL_6;
    }

    if (HIBYTE(v33) == 1)
    {
      type metadata accessor for ReportWeatherContentViewModel._Storage(0);
      v3 = sub_1000B0CA4();
      sub_100754B10(v3, v4, v5, v6, v7, v8, v9, v10, v32, v33, SWORD2(v33), SBYTE6(v33), HIBYTE(v33));
      v17 = v16 & 0xFFFFFFFFFFFFFFFLL;
      v18 = v16 & 0xFFFFFFFFFFFFFF9;
LABEL_6:
      *v1 = v18;
      *(v1 + 8) = v11;
      *(v1 + 24) = v12;
      *(v1 + 40) = v13;
      *(v1 + 56) = v14;
      *(v1 + 72) = v15;
      *(v1 + 88) = v17;
      return;
    }

    type metadata accessor for BinaryDecoder.Error();
    sub_10001F6D0();
    v28 = sub_10077C574(v27);
    v29 = sub_100074D7C(v28);
    sub_10002C964(v29, v30);
    sub_100006494();
    (*(v31 + 104))();
    swift_willThrow();
  }
}

void sub_100756FFC(uint64_t a1)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v2)
    {
      sub_100759B30();
    }
  }

  else
  {
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v2)
    {
      sub_100754F68();
    }
  }
}

void sub_1007570D8()
{
  sub_10000E8AC();
  v4 = v3;
  v5 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10001320C();
  v7 = sub_10022C350(qword_100CA66A0, &unk_100A314C0);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000115E8();
  type metadata accessor for Location();
  sub_10000FB48();
  __chkstk_darwin(v9);
  sub_100049BF8();
  sub_1007863CC();
  static Location.read(from:)();
  if (!v0)
  {
    v19 = v4;
    type metadata accessor for MoonDetailSelectedDate(0);
    sub_10077C574(&unk_100CD0070);
    sub_1000C8548();
    sub_10077C574(v10);
    sub_10000CDBC();
    sub_10078671C();
    static Optional<A>.read(from:)();
    type metadata accessor for Date();
    sub_1007863CC();
    static Optional<A>.read(from:)();
    type metadata accessor for CGRect(0);
    sub_1000C864C();
    sub_10077C574(v11);
    sub_100010A4C();
    sub_10077C574(v12);
    static Optional<A>.read(from:)();
    v13 = sub_1007863CC();
    v14 = sub_1007846BC(v13);
    v15 = type metadata accessor for MoonDetailViewState(0);
    v16 = v19 + v15[7];
    v17 = sub_10000CA1C();
    v18(v17);
    sub_100786150(v2, v19 + v15[5], qword_100CA66A0, &unk_100A314C0);
    sub_100786150(v1, v19 + v15[6], &unk_100CB2CF0, &unk_100A2D7F0);
    *v16 = v20;
    *(v16 + 16) = v21;
    *(v16 + 32) = v22;
    *(v19 + v15[8]) = v14;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

uint64_t sub_1007574A0()
{
  sub_1007863D8();
  result = Location.write(to:)();
  if (!v0)
  {
    v3 = type metadata accessor for MoonDetailViewState(0);
    sub_10022C350(qword_100CA66A0, &unk_100A314C0);
    sub_1000E6670();
    sub_10077C574(v4);
    sub_1000C8548();
    sub_10077C574(v5);
    sub_100052444();
    sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    sub_10000CDB0();
    Optional<A>.write(to:)();
    sub_1000326B4(v1 + *(v3 + 28));
    sub_10022C350(&qword_100CB73A0, "<2\r");
    sub_100008E34();
    sub_10077C574(v6);
    sub_100010A4C();
    sub_10077C574(v7);
    sub_100192570();
    Optional<A>.write(to:)();
    v8 = sub_10000CDB0();
    return sub_100784630(v8);
  }

  return result;
}

void sub_100757638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  v35 = v17;
  v18 = sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
  sub_100003810(v18);
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100003CF8();
  v20 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  sub_10078647C();
  v22 = type metadata accessor for Location();
  sub_1000037C4();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_1000317E4();
  type metadata accessor for DetailCondition();
  sub_1000037C4();
  __chkstk_darwin(v26);
  sub_100006168();
  static DetailCondition.read(from:)();
  if (!v14)
  {
    sub_10000CDB0();
    static Location.read(from:)();
    type metadata accessor for Date();
    v27 = v13;
    sub_10000CDB0();
    static Optional<A>.read(from:)();
    type metadata accessor for CGRect(0);
    sub_1000E1788();
    sub_10077C574(v28);
    sub_100010A4C();
    sub_10077C574(v29);
    sub_100786FCC();
    sub_100031474();
    static Optional<A>.read(from:)();
    type metadata accessor for DetailChartSelection(0);
    sub_1000B91B0();
    sub_10077C574(v30);
    sub_100088014(&unk_100CD0088);
    static Optional<A>.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v31 = sub_10000810C();
    v32(v31);
    v33 = type metadata accessor for ConditionDetailViewState(0);
    (*(v24 + 32))(v35 + v33[5], v16, v22);
    sub_100786150(v27, v35 + v33[6], &unk_100CB2CF0, &unk_100A2D7F0);
    v34 = v35 + v33[7];
    *v34 = v36;
    *(v34 + 16) = v37;
    *(v34 + 32) = v38;
    sub_100786150(v15, v35 + v33[8], &qword_100CB0BA8, &unk_100A40F80);
    *(v35 + v33[9]) = a13;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

uint64_t sub_100757A84()
{
  sub_1007863D8();
  result = DetailCondition.write(to:)();
  if (!v0)
  {
    type metadata accessor for ConditionDetailViewState(0);
    sub_100079588();
    Location.write(to:)();
    sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    sub_10000CDB0();
    Optional<A>.write(to:)();
    sub_1000326B4(v1 + *(v2 + 28));
    sub_10022C350(&qword_100CB73A0, "<2\r");
    sub_100008E34();
    sub_10077C574(v4);
    sub_100010A4C();
    sub_10077C574(v5);
    sub_100192570();
    Optional<A>.write(to:)();
    sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
    sub_1000B91B0();
    sub_10077C574(v6);
    sub_100088014(&qword_100CD0088);
    sub_100052444();
    sub_100787184();
    sub_1000C8410();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

void sub_100757C30()
{
  v3 = sub_1007864C4();
  v4 = type metadata accessor for SelectedSearchResult(v3);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100005384();
  v6 = type metadata accessor for LocationPreviewModalViewState(0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100006168();
  v8 = type metadata accessor for PreviewLocation(0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100049BF8();
  v10 = sub_1007865E4();
  sub_10077F2DC(v10);
  if (!v1)
  {
    v11 = sub_1007865E4();
    sub_10068104C(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24, SWORD2(v24), SBYTE6(v24), SHIBYTE(v24));
    sub_1007865E4();
    sub_100781F6C();
    v19 = sub_100037280();
    sub_100187600(v19, v20);
    type metadata accessor for LocationPreviewViewState(0);
    sub_10001325C();
    sub_10078753C();
    sub_100187600(v2, v21);
    sub_10078753C();
    sub_100187600(v0, v22);
  }

  sub_100787148();
}

void sub_100757DC8()
{
  sub_1007863D8();
  sub_10077F6B8(v1);
  if (!v0)
  {
    type metadata accessor for LocationPreviewViewState(0);
    sub_100079588();
    sub_1006801AC();
    sub_100013AD0();
    sub_100781DA4();
  }
}

void sub_100757E30(uint64_t a1)
{
  sub_10078676C();
  type metadata accessor for Date();
  sub_10000548C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000106FC();
  sub_10066F85C();
  sub_1007872F8();
  if (!v2)
  {
    static Date.read(from:)();
    sub_1007872F8();
    sub_1007872F8();
    *v3 = v11;
    v8 = type metadata accessor for DetailHeroChartLollipopPosition(0);
    (*(v6 + 32))(&v3[v8[5]], v4, v1);
    *&v3[v8[6]] = v10;
    *&v3[v8[7]] = v9;
  }

  sub_100041B68();
}

uint64_t sub_100757FB4()
{
  sub_10002498C();
  sub_10066F85C();
  sub_10000CDB0();
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    type metadata accessor for DetailHeroChartLollipopPosition(0);
    sub_100079588();
    Date.write(to:)();
    sub_100786FE4(*(v1 + 24));
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786FE4(*(v1 + 28));
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

uint64_t sub_100758120(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    result = sub_100786BE4(result, v3, v4, v5, v6, v7, v8, v9, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
    if (result >= 0xA)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v11 = sub_10077C574(v10);
      v12 = sub_100074D7C(v11);
      sub_10002C964(v12, v13);
      sub_100006494();
      (*(v14 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_100758398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  sub_100786AD0();
  v17 = v16;
  type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_100017D50();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000106FC();
  v21 = sub_10003BB20();
  v22 = sub_1007580F0(v21);
  if (!v13)
  {
    v23 = v22;
    type metadata accessor for NotificationSubscription.Location();
    sub_10077C574(&unk_100CD66B0);
    sub_100087E4C();
    sub_10077C574(v24);
    sub_1007871C0();
    v27 = static Array<A>.read(from:)();
    sub_1007871C0();
    v25 = static Array<A>.read(from:)();
    sub_10003BB20();
    static PredictedLocationsNotificationSubscription.Kind.read(from:)();
    sub_100042D78();
    static FixedSizeTypeBinaryCodable.read(from:)();
    *v17 = v23;
    *(v17 + 8) = v27;
    *(v17 + 16) = v25;
    v26 = type metadata accessor for NotificationsState(0);
    (*(v19 + 32))(v17 + *(v26 + 28), v15, v14);
    *(v17 + *(v26 + 32)) = a13;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void sub_10075859C()
{
  sub_1000D3C1C();
  sub_1007863D8();
  sub_100758108(v3);
  if (!v0)
  {
    type metadata accessor for NotificationSubscription.Location();
    sub_10077C574(&unk_100CD66B0);
    sub_100087E4C();
    sub_10077C574(v4);
    v5 = sub_100020B28();
    sub_1007876C4(v5, v6);
    sub_1007876C4(v1, *(v2 + 16));
    type metadata accessor for NotificationsState(0);
    sub_100013AD0();
    PredictedLocationsNotificationSubscription.Kind.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  sub_100088758();
}

void sub_1007586B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13)
{
  sub_1007877E4();
  sub_100758880(v14);
  if (!v13)
  {
    sub_10078477C();
    sub_1007847D0();
    sub_10078671C();
    static Optional<A>.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v15 = sub_1000B0CA4();
    sub_10076AD40(v15);
    v16 = sub_1000B0CA4();
    sub_100783E40(v16);
  }

  sub_1007877F8();
}

void sub_1007587A8(uint64_t a1, uint64_t a2)
{
  sub_1007877E4();
  sub_100758940(v3);
  if (!v2)
  {
    sub_10022C350(&qword_100CC5280, &qword_100A5FE60);
    sub_10078477C();
    sub_1007847D0();
    sub_100786728();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    v4 = sub_10000CDB0();
    sub_10076AEA4(v4, v5);
    v6 = sub_10000CDB0();
    sub_100783DE0(v6);
  }

  sub_1007877F8();
}

uint64_t sub_100758880(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    result = sub_100786BE4(result, v3, v4, v5, v6, v7, v8, v9, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
    if (result >= 6)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v11 = sub_10077C574(v10);
      v12 = sub_100074D7C(v11);
      sub_10002C964(v12, v13);
      sub_100006494();
      (*(v14 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100758A40@<X0>(uint64_t a2@<X8>)
{
  result = static String.read(from:)();
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    sub_100786420();
    v8 = static String.read(from:)();
    v10 = v9;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100786420();
    v11 = static String.read(from:)();
    v13 = v12;
    v43 = v11;
    sub_100786420();
    v14 = static String.read(from:)();
    v41 = v15;
    v42 = v13;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v16 = sub_100786420();
    v40 = sub_1007824D8(v16);
    sub_100786420();
    v17 = static String.read(from:)();
    v39 = v18;
    sub_100786420();
    v37 = static String.read(from:)();
    v38 = v19;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v20 = sub_100786420();
    v36 = sub_100758120(v20);
    sub_100786420();
    v34 = static String.read(from:)();
    v35 = v21;
    sub_100786420();
    v32 = static String.read(from:)();
    v33 = v22;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v23 = sub_100786420();
    v31 = sub_100758120(v23);
    sub_100786420();
    v29 = static String.read(from:)();
    v30 = v24;
    sub_100786420();
    v27 = static String.read(from:)();
    v28 = v25;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v26 = sub_100786420();
    result = sub_100758120(v26);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v10;
    *(a2 + 32) = v48;
    *(a2 + 40) = v43;
    *(a2 + 48) = v42;
    *(a2 + 56) = v14;
    *(a2 + 64) = v41;
    *(a2 + 72) = v47;
    *(a2 + 73) = v40;
    *(a2 + 80) = v17;
    *(a2 + 88) = v39;
    *(a2 + 96) = v37;
    *(a2 + 104) = v38;
    *(a2 + 112) = v46;
    *(a2 + 113) = v36;
    *(a2 + 120) = v34;
    *(a2 + 128) = v35;
    *(a2 + 136) = v32;
    *(a2 + 144) = v33;
    *(a2 + 152) = v45;
    *(a2 + 153) = v31;
    *(a2 + 160) = v29;
    *(a2 + 168) = v30;
    *(a2 + 176) = v27;
    *(a2 + 184) = v28;
    *(a2 + 192) = v44;
    *(a2 + 193) = result;
  }

  return result;
}

uint64_t sub_100758EA0()
{
  sub_100787048();
  result = String.write(to:)();
  if (!v1)
  {
    String.write(to:)();
    sub_10078732C();
    String.write(to:)();
    String.write(to:)();
    sub_100787344();
    sub_1007822A0(v0);
    String.write(to:)();
    String.write(to:)();
    sub_10078779C();
    sub_1007581E0(v0);
    String.write(to:)();
    String.write(to:)();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1007581E0(v0);
    String.write(to:)();
    String.write(to:)();
    FixedSizeTypeBinaryCodable.write(to:)();
    return sub_1007581E0(v0);
  }

  return result;
}

void sub_100759050()
{
  sub_1000D3C1C();
  sub_1000E62AC();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000106FC();
  sub_1007866F0();
  static Date.read(from:)();
  if (!v1)
  {
    sub_1007866F0();
    v3 = static String.read(from:)();
    v5 = v4;
    v6 = sub_10003C620();
    v7(v6);
    v8 = (v0 + *(type metadata accessor for MainStateProcessingContext(0) + 20));
    *v8 = v3;
    v8[1] = v5;
  }

  sub_100786F80();
  sub_100088758();
}

uint64_t sub_100759150(uint64_t a1)
{
  result = Date.write(to:)();
  if (!v1)
  {
    type metadata accessor for MainStateProcessingContext(0);
    sub_100787574();
    sub_10000CDB0();
    return String.write(to:)();
  }

  return result;
}

void sub_10075919C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17)
{
  sub_10000E8AC();
  sub_1000E67F4();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v19);
  sub_100049BF8();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v17)
  {
    sub_1007863CC();
    v20 = static Set<>.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1007863CC();
    static Date.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v21 = sub_1007863CC();
    v24 = sub_1007846BC(v21);
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    *v18 = a17;
    *(v18 + 8) = v20;
    *(v18 + 16) = a16;
    *(v18 + 17) = a15;
    *(v18 + 18) = a14;
    *(v18 + 19) = a13;
    *(v18 + 20) = a12;
    v22 = type metadata accessor for NotificationsOptInState(0);
    sub_100786FB4();
    v23();
    *(v18 + v22[12]) = a11;
    *(v18 + v22[13]) = a10;
    *(v18 + v22[14]) = v24;
    *(v18 + v22[15]) = v28;
    *(v18 + v22[16]) = v27;
    *(v18 + v22[17]) = v26;
    *(v18 + v22[18]) = v25;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

uint64_t sub_100759598()
{
  sub_1007863D8();
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    sub_10000CDB0();
    Set<>.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    type metadata accessor for NotificationsOptInState(0);
    sub_100013AD0();
    Date.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    v2 = sub_10000CDB0();
    sub_100784630(v2);
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

uint64_t sub_100759860(uint64_t a1)
{
  sub_1000526D4(a1);
  if (!v2)
  {
    sub_100051AC0();
    if (v3)
    {
      v4 = sub_10000CDB0();
      v1 = sub_10077ED98(v4);
      sub_10000CDB0();
      static String.read(from:)();
    }

    else
    {
      v1 = type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v6 = sub_10077C574(v5);
      v7 = sub_100074D7C(v6);
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      swift_willThrow();
    }
  }

  return v1;
}

uint64_t sub_100759958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v4)
  {
    sub_10077EE70(a1);
    sub_100014268();
    return String.write(to:)();
  }

  return result;
}

void sub_1007599D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10005246C();
  v28 = v27;
  v30 = sub_100783E40(v29);
  if (!v26)
  {
    v31 = v30;
    sub_100786420();
    v32 = static String.read(from:)();
    v34 = v33;
    sub_100786420();
    v35 = static String.read(from:)();
    v37 = v36;
    sub_100786420();
    v41 = static String.read(from:)();
    v42 = v38;
    sub_1007849C8();
    sub_100784A1C();
    sub_1007871A8();
    static Optional<A>.read(from:)();
    sub_100786420();
    v39 = static String.read(from:)();
    *v28 = v31 & 1;
    *(v28 + 8) = v32;
    *(v28 + 16) = v34;
    *(v28 + 24) = v35;
    *(v28 + 32) = v37;
    *(v28 + 40) = v41;
    *(v28 + 48) = v42;
    *(v28 + 56) = a12;
    *(v28 + 64) = a13;
    *(v28 + 72) = a14;
    *(v28 + 80) = v39;
    *(v28 + 88) = v40;
  }

  sub_1001707D4();
}

uint64_t sub_100759B30()
{
  sub_1007863D8();
  result = sub_100783DE0(v1);
  if (!v0)
  {
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_10022C350(&qword_100CCB0C0, &qword_100A69D10);
    sub_1007849C8();
    sub_100784A1C();
    sub_100786408();
    sub_1000523E0();
    Optional<A>.write(to:)();
    sub_10000CDB0();
    return String.write(to:)();
  }

  return result;
}

void sub_100759C18()
{
  sub_10000E8AC();
  v3 = v2;
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_100006168();
  type metadata accessor for Location();
  sub_100024A44();
  __chkstk_darwin(v5);
  sub_1000520E4();
  static Location.read(from:)();
  if (!v0)
  {
    static LocationOfInterest.read(from:)();
    type metadata accessor for CGRect(0);
    sub_10077C574(&unk_100CD0040);
    sub_100010A4C();
    sub_10077C574(v6);
    static Optional<A>.read(from:)();
    sub_100786BA8();
    v7 = sub_100787474();
    v8(v7);
    type metadata accessor for HomeAndWorkRefinementViewState(0);
    sub_10001325C();
    sub_10078660C();
    v9();
    sub_100786D48(v3 + *(v1 + 24));
    *(v10 + 32) = v11;
  }

  sub_1007865A4();
  sub_10000C8F4();
}

uint64_t sub_100759E44()
{
  sub_1007863D8();
  result = Location.write(to:)();
  if (!v0)
  {
    type metadata accessor for HomeAndWorkRefinementViewState(0);
    sub_100079588();
    LocationOfInterest.write(to:)();
    sub_1000326B4(v1 + *(v2 + 24));
    sub_10022C350(&qword_100CB73A0, "<2\r");
    sub_100008E34();
    sub_10077C574(v4);
    sub_100010A4C();
    sub_10077C574(v5);
    return sub_1001721CC();
  }

  return result;
}

uint64_t sub_100759F10(uint64_t a1)
{
  result = static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v1)
  {
    if (v9 == 1)
    {
      return 0;
    }

    else if (v9 == 2)
    {
      sub_1000BC6E4();
      static FixedSizeTypeBinaryCodable.read(from:)();
      return v8;
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v4 = sub_10077C574(v3);
      v5 = sub_100074D7C(v4);
      sub_10002C964(v5, v6);
      sub_100006494();
      (*(v7 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10075A030(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v3)
  {
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

uint64_t static ExternalSearchQuery.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v4)
    {
      return 0;
    }

    else if (v3 == 2)
    {
      sub_10000CDB0();
      return static String.read(from:)();
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v6 = sub_10077C574(v5);
      v7 = sub_100074D7C(v6);
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t ExternalSearchQuery.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return sub_100787344();
  }

  result = sub_10078732C();
  if (!v3)
  {
    sub_1000E14D4();
    return String.write(to:)();
  }

  return result;
}

void sub_10075A240(uint64_t a1)
{
  sub_1007865BC();
  sub_10000C76C();
  v5 = type metadata accessor for Date();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100020E28();
  __chkstk_darwin(v9);
  sub_100079578();
  __chkstk_darwin(v10);
  sub_10003BA64();
  v11 = static String.read(from:)();
  if (!v2)
  {
    v13 = v12;
    v17 = v11;
    static Date.read(from:)();
    static Date.read(from:)();
    static Date.read(from:)();
    sub_10066F85C();
    sub_100786D90();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10066E384();
    sub_10066E3DC();
    static Optional<A>.read(from:)();
    *v1 = v17;
    v1[1] = v13;
    v14 = type metadata accessor for DetailChartSelection(0);
    v15 = *(v7 + 32);
    (v15)(v1 + v14[5], v3, v5);
    sub_100786B24();
    v15();
    (v15)(v1 + v14[7], v4, v5);
    *(v1 + v14[8]) = v20;
    v16 = v1 + v14[9];
    *v16 = v18;
    v16[8] = v19;
  }

  sub_1007865A4();
  sub_10009D16C();
}

uint64_t sub_10075A4F0()
{
  sub_1007863D8();
  result = String.write(to:)();
  if (!v0)
  {
    type metadata accessor for DetailChartSelection(0);
    sub_100079588();
    Date.write(to:)();
    sub_100013AD0();
    Date.write(to:)();
    sub_100013AD0();
    Date.write(to:)();
    sub_10066F85C();
    sub_1000C8410();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10022C350(&qword_100CA6188, qword_100A53E20);
    sub_10066E384();
    sub_10066E3DC();
    return sub_1001721CC();
  }

  return result;
}

void static AirPollutant.read(from:)()
{
  sub_10000E8AC();
  v2 = v1;
  v3 = type metadata accessor for AirPollutantUnit();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100005888();
  type metadata accessor for AirPollutantMeasurement();
  sub_100017D50();
  __chkstk_darwin(v5);
  sub_100049BF8();
  type metadata accessor for AirPollutantKind();
  sub_100024A44();
  __chkstk_darwin(v6);
  sub_10001BA34();
  static AirPollutantKind.read(from:)(v2);
  if (!v0)
  {
    static AirPollutantMeasurement.read(from:)(v2);
    v7 = sub_100786E94();
    static AirPollutantUnit.read(from:)(v7);
    sub_10000CA1C();
    AirPollutant.init(kind:amount:displayUnit:)();
  }

  sub_10078716C();
  sub_10000C8F4();
}

void AirPollutant.write(to:)()
{
  sub_10000E8AC();
  sub_100786DE4();
  type metadata accessor for AirPollutantUnit();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for AirPollutantMeasurement();
  sub_100017D50();
  __chkstk_darwin(v3);
  sub_10001BA34();
  type metadata accessor for AirPollutantKind();
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_10002429C();
  AirPollutant.kind.getter();
  AirPollutantKind.write(to:)();
  v5 = sub_100786C78();
  if (!v0)
  {
    v6(v5);
    AirPollutant.amount.getter();
    AirPollutantMeasurement.write(to:)();
    v7 = sub_1000B98F4();
    v8(v7);
    sub_100787124();
    AirPollutant.displayUnit.getter();
    AirPollutantUnit.write(to:)(v1);
    v5 = sub_100786414();
  }

  v6(v5);
  sub_10078716C();
  sub_10000C8F4();
}

uint64_t static AirPollutantCategory.read(from:)(uint64_t a1)
{
  result = static String.read(from:)();
  if (!v1)
  {
    sub_100042D78();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000810C();
    return AirPollutantCategory.init(description:number:)();
  }

  return result;
}

uint64_t AirPollutantCategory.write(to:)()
{
  sub_1000BB558();
  AirPollutantCategory.description.getter();
  String.write(to:)();
  if (v0)
  {
  }

  AirPollutantCategory.number.getter();
  sub_10000CDB0();
  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t static AirPollutantKind.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 0xF)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for AirPollutantKind();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t AirPollutantKind.write(to:)()
{
  sub_100071804();
  type metadata accessor for AirPollutantKind();
  sub_1000037C4();
  __chkstk_darwin(v0);
  v2 = sub_100014DD8(v1, v8);
  v3(v2);
  v4 = sub_100045438();
  v6 = v5(v4);
  if (v6 == enum case for AirPollutantKind.pm2point5(_:) || v6 == enum case for AirPollutantKind.pm10(_:) || v6 == enum case for AirPollutantKind.o3(_:) || v6 == enum case for AirPollutantKind.ozone(_:) || v6 == enum case for AirPollutantKind.no(_:) || v6 == enum case for AirPollutantKind.no2(_:) || v6 == enum case for AirPollutantKind.nox(_:) || v6 == enum case for AirPollutantKind.so2(_:) || v6 == enum case for AirPollutantKind.co(_:) || v6 == enum case for AirPollutantKind.nmhc(_:) || v6 == enum case for AirPollutantKind.nmhcs(_:) || v6 == enum case for AirPollutantKind.nh3(_:) || v6 == enum case for AirPollutantKind.c6h6(_:) || v6 == enum case for AirPollutantKind.trs(_:) || v6 == enum case for AirPollutantKind.unknown(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    result = sub_100786F40();
    __break(1u);
  }

  return result;
}

uint64_t static AirPollutantUnit.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_100051AC0();
    if (v4 || v3 == 2)
    {
      sub_10078658C();
      type metadata accessor for AirPollutantUnit();
      sub_100003A9C();
      v5 = sub_100031474();
      return v6(v5);
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v8 = sub_10077C574(v7);
      v9 = sub_100074D7C(v8);
      sub_10002C964(v9, v10);
      sub_100006494();
      (*(v11 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void static AirPollutantMeasurement.read(from:)(uint64_t a1)
{
  sub_1007865BC();
  v3 = v2;
  v19 = v4;
  sub_10022C350(&qword_100CD6500, &qword_100A7F380);
  sub_100017D50();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_100021D38();
  sub_10022C350(&qword_100CD6508, &qword_100A7F388);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000183C0();
  sub_100786EF0(v3);
  if (!v1)
  {
    if (v20 == 2)
    {
      sub_100786EF0(v3);
      v7 = sub_10000C70C(0, &qword_100CD0028, NSUnitConcentrationMass_ptr);
      v11 = sub_1007863E4();
      static NSUnitConcentrationMass.read(from:)(v11);
      sub_100786D54();
      Measurement.init(value:unit:)();
      sub_100786B24();
      v12();
    }

    else
    {
      if (v20 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v15 = sub_10077C574(v14);
        v16 = sub_1007863A0(v15);
        sub_100787298(v16, v17);
        sub_10004E4B8();
        (*(v18 + 104))();
        swift_willThrow();
        goto LABEL_2;
      }

      sub_100786EF0(v3);
      v7 = sub_10000C70C(0, &qword_100CD0020, NSUnitDispersion_ptr);
      v8 = sub_1007863E4();
      static NSUnitDispersion.read(from:)(v8);
      sub_100786D54();
      Measurement.init(value:unit:)();
      v9 = sub_1000BA488();
      v10(v9);
    }

    sub_10078658C();
    type metadata accessor for AirPollutantMeasurement();
    sub_100003A9C();
    (*(v13 + 104))(v19, v7);
  }

LABEL_2:
  sub_1007865A4();
  sub_10009D16C();
}

void AirPollutantMeasurement.write(to:)()
{
  sub_10000E8AC();
  v28 = v4;
  sub_10022C350(&qword_100CD6500, &qword_100A7F380);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_100003CB4();
  v6 = sub_10022C350(&qword_100CD6508, &qword_100A7F388);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100037CB0();
  v8 = type metadata accessor for AirPollutantMeasurement();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000317E4();
  (*(v10 + 16))(v3, v0, v8);
  v12 = sub_1000BA488();
  v14 = v13(v12);
  if (v14 == enum case for AirPollutantMeasurement.unitDispersion(_:))
  {
    v15 = sub_1000BA488();
    v16(v15);
    sub_100787118();
    v17(v2, v3, v6);
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      v18 = sub_10078646C();
      sub_100779504(v18, v19);
    }

    v20 = sub_100020E44();
    v21(v20);
LABEL_9:
    sub_1007865A4();
    sub_10000C8F4();
    return;
  }

  if (v14 == enum case for AirPollutantMeasurement.concentration(_:))
  {
    v22 = sub_1000BA488();
    v23(v22);
    v24 = sub_100786DF0();
    v25(v24);
    sub_1001706C0();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      sub_100779504(v28, &qword_100CD6500);
    }

    v26 = sub_100024350();
    v27(v26);
    goto LABEL_9;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void static AirQuality.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  v83 = v27;
  v82 = v28;
  v29 = type metadata accessor for WeatherMetadata();
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for AirQualitySourceKind();
  sub_1000037C4();
  __chkstk_darwin(v31);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for AirQualitySource();
  sub_1000037C4();
  __chkstk_darwin(v32);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for AirQualityPreviousDayComparison();
  sub_1000037C4();
  __chkstk_darwin(v33);
  sub_1000038E4();
  v34 = sub_10022C350(&qword_100CB8BE0, &unk_100A4CFB0);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  sub_1000038CC();
  type metadata accessor for URL();
  sub_1000037C4();
  __chkstk_darwin(v36);
  sub_1000038E4();
  sub_100787238(v37);
  v38 = sub_10022C350(&qword_100CD6510, &qword_100A7F390);
  sub_100003810(v38);
  sub_100003828();
  __chkstk_darwin(v39);
  sub_10078647C();
  type metadata accessor for AirQualityScaleCategory();
  sub_10000548C();
  __chkstk_darwin(v40);
  sub_100006168();
  type metadata accessor for AirQualityScale();
  sub_100024A44();
  __chkstk_darwin(v41);
  sub_100049BF8();
  type metadata accessor for Date();
  sub_10000FB48();
  v43 = v42;
  __chkstk_darwin(v44);
  sub_100020E28();
  __chkstk_darwin(v45);
  sub_10003C300();
  static Date.read(from:)();
  if (!v22)
  {
    v81 = v23;
    static Date.read(from:)();
    v46 = static String.read(from:)();
    sub_1007873AC();
    static AirQualityScale.read(from:)(v83, v47, v48, v49, v50, v51, v52, v53, v76, v78, SWORD2(v78), SBYTE6(v78), SHIBYTE(v78));
    v80 = v43;
    sub_100786D90();
    static FixedSizeTypeBinaryCodable.read(from:)();
    static AirQualityScaleCategory.read(from:)(v83);
    sub_100786D90();
    static FixedSizeTypeBinaryCodable.read(from:)();
    HIDWORD(v79) = v84;
    type metadata accessor for ProviderAttribution();
    sub_1000E1508();
    sub_10077C574(v54);
    sub_1007863C0();
    sub_10077C574(v55);
    sub_1002E52D0();
    sub_1000523E0();
    static Optional<A>.read(from:)();
    static URL.read(from:)();
    v56 = type metadata accessor for AirPollutant();
    sub_10077C574(&unk_100CD6528);
    sub_1007863C0();
    sub_10077C574(v57);
    static Dictionary<>.read(from:)();
    sub_1007871F0();
    static Optional<A>.read(from:)();
    v58 = sub_100787084();
    static AirQualityPreviousDayComparison.read(from:)(v58);
    v59 = sub_100787084();
    static AirQualitySourceKind.read(from:)(v59);
    sub_100787084();
    static String.read(from:)();
    AirQualitySource.init(kind:description:)();
    v60 = sub_100787084();
    static WeatherMetadata.read(from:)(v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v77, v56, v79, 0.0, a10, v46, v80, v21, v20, v24, v25, v26, v81, v82);
    AirQuality.init(measurementDate:expirationDate:scaleIdentifier:scale:index:currentScaleCategory:isSignificant:providerAttribution:learnMoreURL:pollutants:primaryPollutant:previousDayComparison:source:metadata:)();
  }

  sub_10000C8F4();
}

void AirQuality.write(to:)()
{
  sub_10000E8AC();
  v41 = type metadata accessor for WeatherMetadata();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_1000038E4();
  v42 = v4;
  sub_1000038CC();
  type metadata accessor for AirQualitySource();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v43 = v6;
  sub_1000038CC();
  type metadata accessor for AirQualityPreviousDayComparison();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000038E4();
  sub_10022C350(&qword_100CB8BE0, &unk_100A4CFB0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v44 = v9;
  sub_1000038CC();
  type metadata accessor for URL();
  sub_1000037C4();
  __chkstk_darwin(v10);
  sub_1000038E4();
  sub_100786F74(v11);
  sub_10022C350(&qword_100CD6510, &qword_100A7F390);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  sub_1000FD184(v13);
  v14 = type metadata accessor for AirQualityScaleCategory();
  sub_1000037C4();
  __chkstk_darwin(v15);
  sub_10002429C();
  type metadata accessor for AirQualityScale();
  sub_100024A44();
  __chkstk_darwin(v16);
  sub_1000520E4();
  type metadata accessor for Date();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v20);
  sub_100030230();
  AirQuality.measurementDate.getter();
  Date.write(to:)();
  if (v1)
  {
    v21 = sub_1000E17A0();
    v22(v21);
  }

  else
  {
    v46 = v2;
    v23 = *(v18 + 8);
    v24 = sub_1000E17A0();
    v23(v24);
    sub_100786BC8();
    AirQuality.expirationDate.getter();
    sub_100787078();
    Date.write(to:)();
    v25 = sub_1000BA488();
    v23(v25);
    if (!v0)
    {
      sub_100786BC8();
      v26 = AirQuality.scaleIdentifier.getter();
      sub_100195570(v26, v27);
      sub_100786800();

      sub_1000371B0();
      AirQuality.scale.getter();
      sub_10019224C();
      AirQualityScale.write(to:)();
      v29 = sub_100786414();
      v30(v29, v46);
      sub_100786BC8();
      AirQuality.index.getter();
      sub_10000CDB0();
      FixedSizeTypeBinaryCodable.write(to:)();
      sub_1000371B0();
      sub_100786BC8();
      AirQuality.currentScaleCategory.getter();
      v31 = sub_10019224C();
      AirQualityScaleCategory.write(to:)(v31);
      v32 = sub_100786414();
      v33(v32, v14);
      sub_100786BC8();
      AirQuality.isSignificant.getter();
      sub_10000CDB0();
      FixedSizeTypeBinaryCodable.write(to:)();
      sub_100786BC8();
      AirQuality.providerAttribution.getter();
      sub_1000E1508();
      sub_10077C574(v34);
      sub_1007863C0();
      sub_10077C574(v35);
      sub_1007866C4();
      Optional<A>.write(to:)();
      sub_1006827B8(v45, &qword_100CD6510);
      sub_100786BC8();
      AirQuality.learnMoreURL.getter();
      sub_100786754();
      URL.write(to:)();
      v36 = sub_100786414();
      v37(v36);
      sub_100786BC8();
      AirQuality.pollutants.getter();
      sub_1000038D8();
      type metadata accessor for AirPollutant();
      sub_10077C574(&unk_100CD6528);
      sub_10077C574(&unk_100CD6530);
      sub_10003C310();
      Dictionary<>.write(to:)();

      sub_100786BC8();
      AirQuality.primaryPollutant.getter();
      sub_1007866C4();
      Optional<A>.write(to:)();
      sub_1006827B8(v44, &qword_100CB8BE0);
      sub_10078755C();
      AirQuality.previousDayComparison.getter();
      sub_100786598();
      AirQualityPreviousDayComparison.write(to:)();
      v38 = sub_100786BD4();
      v39(v38);
      sub_10078755C();
      AirQuality.source.getter();
      sub_100786598();
      AirQualitySource.write(to:)();
      sub_100786E34();
      v40(v43);
      sub_10078755C();
      AirQuality.metadata.getter();
      sub_100786598();
      WeatherMetadata.write(to:)();
      sub_1001994E4();
      v28(v42, v41);
    }
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void AirQualityData.write(to:)()
{
  sub_10000E8AC();
  v3 = v0;
  sub_100017580();
  type metadata accessor for AirQuality();
  sub_100017D50();
  __chkstk_darwin(v4);
  sub_1000106FC();
  v5 = type metadata accessor for AirQualityData();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100049BF8();
  (*(v7 + 16))(v2, v3, v5);
  v9 = sub_10003C310();
  v11 = v10(v9);
  if (v11 == enum case for AirQualityData.available(_:))
  {
    v12 = sub_10003C310();
    v13(v12);
    sub_100786B24();
    v14();
    sub_10001635C();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      sub_1007866E0();
      AirQuality.write(to:)();
    }

    v15 = sub_10000810C();
    v16(v15);
    goto LABEL_10;
  }

  if (v11 == enum case for AirQualityData.temporarilyUnavailable(_:))
  {
    sub_1000C8FEC();
LABEL_9:
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
LABEL_10:
    sub_1007865A4();
    sub_10000C8F4();
    return;
  }

  if (v11 == enum case for AirQualityData.unsupported(_:))
  {
    sub_1000BCE14();
    goto LABEL_9;
  }

  sub_100786F40();
  __break(1u);
}

uint64_t static AirQualityPreviousDayComparison.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 6)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for AirQualityPreviousDayComparison();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t AirQualityPreviousDayComparison.write(to:)()
{
  sub_100071804();
  type metadata accessor for AirQualityPreviousDayComparison();
  sub_1000037C4();
  __chkstk_darwin(v0);
  v2 = sub_100014DD8(v1, v8);
  v3(v2);
  v4 = sub_100045438();
  v6 = v5(v4);
  if (v6 == enum case for AirQualityPreviousDayComparison.muchWorse(_:) || v6 == enum case for AirQualityPreviousDayComparison.worse(_:) || v6 == enum case for AirQualityPreviousDayComparison.same(_:) || v6 == enum case for AirQualityPreviousDayComparison.better(_:) || v6 == enum case for AirQualityPreviousDayComparison.muchBetter(_:) || v6 == enum case for AirQualityPreviousDayComparison.unknown(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    result = sub_100786F40();
    __break(1u);
  }

  return result;
}

void static AirQualityScale.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  v14 = type metadata accessor for AirQualityScaleGradient();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_10001BA34();
  sub_1000236E0();
  static String.read(from:)();
  if (!v13)
  {
    sub_1000236E0();
    static String.read(from:)();
    sub_1000236E0();
    static Optional<A>.read(from:)();
    sub_1000236E0();
    static Optional<A>.read(from:)();
    sub_1000236E0();
    static String.read(from:)();
    sub_10019235C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000236E0();
    static Range<>.read(from:)();
    type metadata accessor for AirQualityScaleCategory();
    sub_10077C574(&unk_100CD6538);
    sub_1007863C0();
    sub_10077C574(v16);
    static Array<A>.read(from:)();
    type metadata accessor for AirQualityScaleGradientStop();
    sub_10077C574(&unk_100CD6548);
    sub_100043828();
    sub_10077C574(v17);
    sub_10000810C();
    static Array<A>.read(from:)();
    AirQualityScaleGradient.init(stops:)();
    AirQualityScale.init(identifier:displayName:shortDisplayName:longDisplayName:displayLabel:isNumerical:range:categories:gradient:)();
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void AirQualityScale.write(to:)()
{
  sub_10000E8AC();
  sub_1002E5718();
  type metadata accessor for AirQualityScaleGradient();
  sub_10000FB48();
  __chkstk_darwin(v1);
  sub_1000106FC();
  AirQualityScale.identifier.getter();
  sub_100786344();
  String.write(to:)();
  if (!v0)
  {

    AirQualityScale.displayName.getter();
    sub_100786344();
    String.write(to:)();

    AirQualityScale.shortDisplayName.getter();
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    sub_100011498();
    Optional<A>.write(to:)();
    sub_1007875D8();

    AirQualityScale.longDisplayName.getter();
    sub_100011498();
    Optional<A>.write(to:)();
    sub_1007875D8();

    AirQualityScale.displayLabel.getter();
    sub_100786344();
    String.write(to:)();

    AirQualityScale.isNumerical.getter();
    sub_1000B0CA4();
    FixedSizeTypeBinaryCodable.write(to:)();
    AirQualityScale.range.getter();
    sub_10022C350(&qword_100CBD760, &unk_100A6AE90);
    sub_1000B0CA4();
    Range<>.write(to:)();
    AirQualityScale.categories.getter();
    sub_1000038D8();
    type metadata accessor for AirQualityScaleCategory();
    sub_10077C574(&unk_100CD6538);
    sub_100786F08(&unk_100CD6540);
    sub_1000314C8();
    sub_1007871C0();
    Array<A>.write(to:)();
    sub_100786800();

    AirQualityScale.gradient.getter();
    AirQualityScaleGradient.stops.getter();
    sub_1000038D8();
    type metadata accessor for AirQualityScaleGradientStop();
    sub_10077C574(&unk_100CD6548);
    sub_100043828();
    sub_10077C574(v2);
    sub_1000314C8();
    Array<A>.write(to:)();
    v3 = sub_100036E30();
    v4(v3);
  }

  sub_10002FE90();
  sub_10000C8F4();
}

uint64_t static AirQualityScaleCategory.read(from:)(uint64_t a1)
{
  result = static String.read(from:)();
  if (!v1)
  {
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100786420();
    static String.read(from:)();
    sub_100786420();
    static Optional<A>.read(from:)();
    sub_100786420();
    static Range<>.read(from:)();
    sub_100786420();
    static Optional<A>.read(from:)();
    sub_10000C8E8();
    return AirQualityScaleCategory.init(description:number:color:recommendation:range:glyph:)();
  }

  return result;
}

void AirQualityScaleCategory.write(to:)(uint64_t a1)
{
  sub_1007877E4();
  sub_10002498C();
  v2 = AirQualityScaleCategory.description.getter();
  sub_100195570(v2, v3);
  if (!v1)
  {

    AirQualityScaleCategory.number.getter();
    sub_1000C8410();
    FixedSizeTypeBinaryCodable.write(to:)();
    v4 = AirQualityScaleCategory.color.getter();
    sub_100195570(v4, v5);

    AirQualityScaleCategory.recommendation.getter();
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    v6 = sub_100786408();
    sub_100787754(v6, v7, v8);

    AirQualityScaleCategory.range.getter();
    sub_10022C350(&qword_100CBD760, &unk_100A6AE90);
    sub_1000C8410();
    Range<>.write(to:)();
    AirQualityScaleCategory.glyph.getter();
    v9 = sub_100786408();
    sub_100787754(v9, v10, v11);
  }

  sub_1007877F8();
}

uint64_t static AirQualityScaleGradient.read(from:)()
{
  sub_10000C76C();
  type metadata accessor for AirQualityScaleGradientStop();
  sub_100786AF4();
  sub_10077C574(v1);
  sub_100043828();
  sub_10077C574(v2);
  sub_100025214();
  result = static Array<A>.read(from:)();
  if (!v0)
  {
    return AirQualityScaleGradient.init(stops:)();
  }

  return result;
}

uint64_t AirQualityScaleGradient.write(to:)()
{
  sub_1000BB558();
  AirQualityScaleGradient.stops.getter();
  sub_1000038D8();
  type metadata accessor for AirQualityScaleGradientStop();
  sub_100786AF4();
  sub_10077C574(v0);
  sub_100043828();
  v2 = sub_10077C574(v1);
  sub_1000C8B34(v2);
  sub_100786800();
}

uint64_t static AirQualityScaleGradientStop.read(from:)()
{
  sub_100786DA8();
  result = static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_1000B0CA4();
    static String.read(from:)();
    return AirQualityScaleGradientStop.init(location:color:)();
  }

  return result;
}

uint64_t AirQualityScaleGradientStop.write(to:)()
{
  sub_10002498C();
  AirQualityScaleGradientStop.location.getter();
  sub_10000CDB0();
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    v2 = AirQualityScaleGradientStop.color.getter();
    sub_100195570(v2, v3);
    sub_100786800();
  }

  return result;
}

void static AirQualitySource.read(from:)()
{
  sub_1000E62AC();
  type metadata accessor for AirQualitySourceKind();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000106FC();
  v2 = sub_1007866F0();
  static AirQualitySourceKind.read(from:)(v2);
  if (!v0)
  {
    sub_1007866F0();
    static String.read(from:)();
    AirQualitySource.init(kind:description:)();
  }

  sub_100787148();
}

void AirQualitySource.write(to:)()
{
  sub_1000D3C1C();
  sub_100017580();
  type metadata accessor for AirQualitySourceKind();
  sub_100024A44();
  __chkstk_darwin(v1);
  sub_100049BF8();
  AirQualitySource.kind.getter();
  v2 = sub_100786E88();
  AirQualitySourceKind.write(to:)(v2);
  v3 = sub_1007864D4();
  v4(v3);
  if (!v0)
  {
    AirQualitySource.description.getter();
    sub_1000B0EE4();
    String.write(to:)();
    sub_1000E6714();
  }

  sub_100786F80();
  sub_100088758();
}

uint64_t static AirQualitySourceKind.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_10078643C();
    if (v3)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for AirQualitySourceKind();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t static AvailableDataSets.read(from:)(uint64_t a1)
{
  result = static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v1)
  {
    return AvailableDataSets.init(rawValue:)();
  }

  return result;
}

uint64_t AvailableDataSets.write(to:)()
{
  sub_1000BB558();
  AvailableDataSets.rawValue.getter();
  sub_10000CDB0();
  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t static CurrentWeather.read(from:)(uint64_t a1)
{
  v160 = a1;
  v7 = type metadata accessor for WeatherMetadata();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  sub_100003918(v9);
  v10 = type metadata accessor for Wind();
  v11 = sub_100003E5C(v10, &v159);
  __chkstk_darwin(v11);
  sub_1000038E4();
  sub_100003990(v12);
  v13 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_100003E5C(v13, v155);
  v146 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  sub_100003918(v16);
  v17 = type metadata accessor for UVIndex();
  v18 = sub_100003E5C(v17, &v158);
  __chkstk_darwin(v18);
  sub_1000038E4();
  sub_100003990(v19);
  v20 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_10000E70C();
  sub_100003918(v23);
  v24 = type metadata accessor for ApparentPrecipitationIntensity();
  v25 = sub_100003E5C(v24, &v162);
  __chkstk_darwin(v25);
  sub_1000038E4();
  sub_100003918(v26);
  v27 = type metadata accessor for PrecipitationAmountByType();
  v28 = sub_100003E5C(v27, &v163);
  v150 = v29;
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_10000E70C();
  sub_100003918(v35);
  v36 = type metadata accessor for PrecipitationAmount();
  v37 = sub_100003E5C(v36, &v164);
  v152 = v38;
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_10000E70C();
  sub_100003918(v40);
  v41 = type metadata accessor for PressureTrend();
  v42 = sub_100003E5C(v41, &v165);
  v153 = v43;
  __chkstk_darwin(v42);
  sub_1000038E4();
  sub_100003990(v44);
  v45 = sub_10022C350(&qword_100CAC3D0, &unk_100AA0D60);
  sub_100003E5C(v45, &v166);
  v154[0] = v46;
  sub_100003828();
  __chkstk_darwin(v47);
  sub_1000039BC();
  sub_100003990(v48);
  sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_1000037C4();
  v154[3] = v49;
  v154[4] = v50;
  sub_100003828();
  __chkstk_darwin(v51);
  sub_1000039BC();
  v155[0] = v52;
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v155[1] = v53;
  v156 = v54;
  __chkstk_darwin(v53);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_10000C930();
  __chkstk_darwin(v56);
  sub_100030230();
  v57 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v157 = v58;
  __chkstk_darwin(v59);
  sub_100005384();
  v60 = type metadata accessor for CloudCoverByAltitude();
  sub_1000037C4();
  v158 = v61;
  __chkstk_darwin(v62);
  sub_10001BA34();
  type metadata accessor for Date();
  sub_100017D50();
  v64 = v63;
  __chkstk_darwin(v65);
  sub_10002429C();
  v66 = v159;
  result = static Date.read(from:)();
  if (!v66)
  {
    v143 = v1;
    v159 = v64;
    v68 = v160;
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000CC10();
    static CloudCoverByAltitude.read(from:)();
    sub_1000719F4();
    static WeatherCondition.read(from:)(v68);
    v140 = static String.read(from:)();
    v141 = v69;
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1007865B0();
    sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
    static NSUnitTemperature.read(from:)(v68);
    sub_1007865B0();
    if (v142)
    {
      sub_1007863FC();

      v70 = sub_10000CA1C();
      v71(v70);
      v72 = sub_10000EB30();
      v73(v72);
      v74 = sub_100786414();
      v76 = v4;
      return v75(v74, v76);
    }

    Measurement.init(value:unit:)();
    sub_10011948C();
    sub_10078679C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1007865B0();
    sub_10078635C();
    sub_1007865B0();
    sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
    v77 = sub_100786D24();
    static NSUnitSpeed.read(from:)(v77);
    sub_1007865B0();
    Measurement.init(value:unit:)();
    sub_10078635C();
    sub_1007865B0();
    sub_10000C70C(0, &qword_100CAC448, NSUnitPressure_ptr);
    v82 = sub_100786D24();
    static NSUnitPressure.read(from:)(v82);
    sub_1007865B0();
    sub_1007873C4();
    Measurement.init(value:unit:)();
    sub_100786748();
    sub_10078679C();
    static PressureTrend.read(from:)(v83);
    v84 = sub_100040E30();
    static PrecipitationAmount.read(from:)(v84);
    v85 = sub_100040E30();
    static PrecipitationAmount.read(from:)(v85);
    v86 = sub_100040E30();
    static PrecipitationAmountByType.read(from:)(v86);
    v87 = sub_100040E30();
    static PrecipitationAmountByType.read(from:)(v87);
    v88 = sub_100040E30();
    static PrecipitationAmountByType.read(from:)(v88);
    v89 = sub_100040E30();
    static PrecipitationAmountByType.read(from:)(v89);
    v90 = sub_100040E30();
    static PrecipitationAmountByType.read(from:)(v90);
    v91 = sub_100040E30();
    static PrecipitationAmountByType.read(from:)(v91);
    sub_100040E30();
    static ApparentPrecipitationIntensity.read(from:)();
    sub_1007865B0();
    sub_10078679C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1007865B0();
    sub_10078635C();
    sub_1007865B0();
    sub_100787684();
    sub_1007865B0();
    sub_1007873C4();
    Measurement.init(value:unit:)();
    sub_10078635C();
    sub_1007865B0();
    sub_100787684();
    sub_1007865B0();
    sub_1007873C4();
    Measurement.init(value:unit:)();
    sub_1000117E8();
    sub_10077C5F0(v112);
    sub_100018704();
    sub_10077C5F0(v113);
    sub_100786748();
    sub_1007871FC();
    sub_10078679C();
    static Optional<A>.read(from:)();
    sub_1007865B0();
    sub_100786748();
    sub_1007871FC();
    sub_10078679C();
    static Optional<A>.read(from:)();
    sub_1007865B0();
    sub_10078635C();
    sub_1007865B0();
    v115 = *(v114 - 256);
    static UVIndex.ExposureCategory.read(from:)(v160);
    sub_1007865B0();
    if (v115)
    {
      sub_1007863FC();

      v116 = sub_1007862F8(&v160);
      sub_1006827B8(v116, v117);
      v118 = sub_1007862F8(v161);
      sub_1006827B8(v118, v119);
      v120 = *(v156 + 8);
      v121 = sub_100030224(v154);
      v120(v121);
      v92 = sub_100030224(&v150);
      v120(v92);
      v93 = sub_10012CE00();
      v94(v93);
      v95 = sub_100786F98();
      v97 = *(v96 - 256);
      (qword_100A2F670)(v95, v97);
      (qword_100A2F670)(v147, v97);
      v98 = sub_100041144();
      (qword_100A2F670)(v98, v97);
      v99 = sub_100786D60();
      (qword_100A2F670)(v99, v97);
      (qword_100A2F670)(v148, v97);
      (qword_100A2F670)(v149, v97);
      v100 = *(v152 + 8);
      v101 = sub_100786C94();
      v103 = *(v102 - 256);
      v100(v101, v103);
      v104 = sub_1007868B4();
      v100(v104, v103);
      v105 = sub_100051AFC();
      v106(v105);
      v107 = sub_1000C8F58();
      v108(v107);
      v109 = sub_100786CB4();
      v110(v109);
      v111 = sub_100030224(v151);
      v120(v111);
      v78 = sub_10078648C();
      v79(v78);
      v80 = sub_1007864A8();
      v81(v80);
      v74 = sub_1000B7BE8();
      return v75(v74, v76);
    }

    UVIndex.init(value:category:)();
    sub_10078635C();
    sub_1007865B0();
    sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    v122 = sub_100786D24();
    static NSUnitLength.read(from:)(v122);
    sub_1007865B0();
    sub_1007873C4();
    Measurement.init(value:unit:)();
    sub_100786748();
    sub_10078679C();
    static Wind.read(from:)(v123);
    sub_1007865B0();
    sub_100786748();
    sub_10078679C();
    static WeatherMetadata.read(from:)(v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, 0, v5, v3, v57, v2, v60, v6, v143, v4, v144, v145, v146);
    sub_100786DCC();
    sub_100786D6C();
    sub_10078741C();
    sub_1000BEA34();
    return CurrentWeather.init(date:cloudCover:cloudCoverLow:cloudCoverMid:cloudCoverHigh:cloudCoverByAltitude:condition:symbolName:dewPoint:humidity:precipitationIntensity:pressure:pressureTrend:rainfallAmount:snowfallAmount:pastHourPrecipitationAmountByType:pastSixHoursPrecipitationAmountByType:pastTwentyFourHoursPrecipitationAmountByType:nextHourPrecipitationAmountByType:nextSixHoursPrecipitationAmountByType:nextTwentyFourHoursPrecipitationAmountByType:apparentPrecipitationIntensity:isDaylight:temperature:apparentTemperature:highTemperature:lowTemperature:uvIndex:visibility:wind:metadata:)();
  }

  return result;
}

void CurrentWeather.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v22;
  a20 = v23;
  v152[0] = v20;
  v152[1] = v24;
  v25 = type metadata accessor for WeatherMetadata();
  v26 = sub_100003E5C(v25, &a15);
  __chkstk_darwin(v26);
  sub_1000038E4();
  sub_100003918(v27);
  v28 = type metadata accessor for Wind();
  v29 = sub_100003E5C(v28, &a12);
  __chkstk_darwin(v29);
  sub_1000038E4();
  sub_100003990(v30);
  v31 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_100003E5C(v31, &a9);
  sub_100003828();
  __chkstk_darwin(v32);
  sub_1000039BC();
  sub_100003918(v33);
  v34 = type metadata accessor for UVIndex();
  v35 = sub_100003E5C(v34, v152);
  __chkstk_darwin(v35);
  sub_1000038E4();
  sub_100003990(v36);
  sub_10022C350(qword_100CA5418, &qword_100A2F670);
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_10000E70C();
  sub_100003918(v39);
  v40 = type metadata accessor for ApparentPrecipitationIntensity();
  v41 = sub_100003E5C(v40, &v147);
  __chkstk_darwin(v41);
  sub_1000038E4();
  sub_100003918(v42);
  v43 = type metadata accessor for PrecipitationAmountByType();
  v44 = sub_100003E5C(v43, &a18);
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  v136 = v50;
  sub_1000038CC();
  type metadata accessor for PrecipitationAmount();
  sub_1000037C4();
  v138 = v52;
  v139 = v51;
  __chkstk_darwin(v51);
  sub_100003848();
  v137 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_10000E70C();
  v140 = v55;
  sub_1000038CC();
  type metadata accessor for PressureTrend();
  sub_1000037C4();
  v141 = v57;
  v142 = v56;
  __chkstk_darwin(v56);
  sub_1000038E4();
  v143 = v58;
  sub_10022C350(&qword_100CAC3D0, &unk_100AA0D60);
  sub_1000037C4();
  v144 = v60;
  v145 = v59;
  sub_100003828();
  __chkstk_darwin(v61);
  sub_1000039BC();
  sub_100786F74(v62);
  sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_1000037C4();
  v146[1] = v64;
  v146[2] = v63;
  sub_100003828();
  __chkstk_darwin(v65);
  sub_1000039BC();
  v147 = v66;
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v148 = v68;
  v149 = v67;
  __chkstk_darwin(v67);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_10000E70C();
  sub_1000FD184(v71);
  type metadata accessor for WeatherCondition();
  sub_100024A44();
  v150 = v72;
  __chkstk_darwin(v73);
  sub_10002429C();
  v74 = type metadata accessor for CloudCoverByAltitude();
  sub_1000037C4();
  v151 = v75;
  __chkstk_darwin(v76);
  sub_100049BF8();
  type metadata accessor for Date();
  sub_10000FB48();
  v78 = v77;
  __chkstk_darwin(v79);
  sub_10001BA34();
  CurrentWeather.date.getter();
  v80 = v152[0];
  Date.write(to:)();
  if (v80)
  {
    v81 = sub_1002E52D0();
    v82(v81);
  }

  else
  {
    v152[0] = v74;
    v83 = sub_1002E52D0();
    v84(v83);
    CurrentWeather.cloudCover.getter();
    a10 = v85;
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    CurrentWeather.cloudCoverLow.getter();
    a10 = v86;
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10078725C();
    CurrentWeather.cloudCoverMid.getter();
    a10 = v87;
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10078725C();
    CurrentWeather.cloudCoverHigh.getter();
    a10 = v88;
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1000371B0();
    sub_10078725C();
    CurrentWeather.cloudCoverByAltitude.getter();
    sub_1000E0F90();
    CloudCoverByAltitude.write(to:)();
    v89 = sub_100786414();
    v90(v89);
    sub_1000371B0();
    sub_10078725C();
    CurrentWeather.condition.getter();
    sub_1000E0F90();
    WeatherCondition.write(to:)();
    v92 = sub_100786414();
    v93(v92, v21);
    sub_10078725C();
    CurrentWeather.symbolName.getter();
    sub_1000B0EE4();
    String.write(to:)();
    sub_1000E6714();

    sub_100787208();
    CurrentWeather.dewPoint.getter();
    sub_1000066E8();
    v94 = sub_1000E0F90();
    sub_100779504(v94, v95);
    v96 = *(v148 + 8);
    v96(v78 + 8, v149);
    CurrentWeather.humidity.getter();
    a10 = v97;
    sub_100786574();
    FixedSizeTypeBinaryCodable.write(to:)();
    CurrentWeather.precipitationIntensity.getter();
    sub_100028AC8();
    sub_100163724();
    sub_100779504(v98, v99);
    v100 = sub_100786BB8();
    v101(v100);
    sub_100786C6C();
    CurrentWeather.pressure.getter();
    sub_1007866C4();
    sub_100779504(v102, v103);
    v104 = sub_100786FFC();
    v105(v104);
    sub_100786C6C();
    CurrentWeather.pressureTrend.getter();
    sub_1007866C4();
    PressureTrend.write(to:)(v106);
    v107 = sub_100786BD4();
    v108(v107);
    sub_100786C6C();
    CurrentWeather.rainfallAmount.getter();
    sub_1007866C4();
    PrecipitationAmount.write(to:)();
    v109 = *(v138 + 8);
    v109(v140, v139);
    sub_100786C1C();
    CurrentWeather.snowfallAmount.getter();
    sub_10078644C();
    PrecipitationAmount.write(to:)();
    v109(v137, v139);
    CurrentWeather.pastHourPrecipitationAmountByType.getter();
    sub_100786B18();
    PrecipitationAmountByType.write(to:)();
    sub_100787160();
    v136(v136);
    sub_1007866FC();
    CurrentWeather.pastSixHoursPrecipitationAmountByType.getter();
    sub_10078644C();
    PrecipitationAmountByType.write(to:)();
    v110 = sub_1000BD320(&a16);
    v136(v110);
    sub_1007866FC();
    CurrentWeather.pastTwentyFourHoursPrecipitationAmountByType.getter();
    sub_10078644C();
    PrecipitationAmountByType.write(to:)();
    v111 = sub_1000BD320(&v141);
    v136(v111);
    sub_1007866FC();
    CurrentWeather.nextHourPrecipitationAmountByType.getter();
    sub_10078644C();
    PrecipitationAmountByType.write(to:)();
    v112 = sub_1000BD320(&v143);
    v136(v112);
    sub_1007866FC();
    CurrentWeather.nextSixHoursPrecipitationAmountByType.getter();
    sub_10078644C();
    PrecipitationAmountByType.write(to:)();
    v113 = sub_1000BD320(&v145);
    v136(v113);
    sub_1007866FC();
    CurrentWeather.nextTwentyFourHoursPrecipitationAmountByType.getter();
    sub_10078644C();
    PrecipitationAmountByType.write(to:)();
    v114 = sub_1000BD320(v146);
    v136(v114);
    sub_10000492C();
    CurrentWeather.apparentPrecipitationIntensity.getter();
    sub_100786B18();
    ApparentPrecipitationIntensity.write(to:)();
    v115 = sub_1000AF658();
    v116(v115);
    LOBYTE(a10) = CurrentWeather.isDaylight.getter() & 1;
    sub_1007865F0();
    sub_100786C6C();
    CurrentWeather.temperature.getter();
    sub_1000066E8();
    sub_1007866C4();
    sub_100779504(v117, v118);
    v119 = sub_1007873B8(&v142);
    (v96)(v119);
    sub_100786C6C();
    CurrentWeather.apparentTemperature.getter();
    sub_1000066E8();
    sub_1007866C4();
    sub_100779504(v120, v121);
    v122 = sub_1007873B8(&v144);
    (v96)(v122);
    sub_100787008();
    CurrentWeather.highTemperature.getter();
    sub_1000117E8();
    sub_10077C5F0(v123);
    sub_100018704();
    sub_10077C5F0(v124);
    sub_100787220();
    sub_100163724();
    Optional<A>.write(to:)();
    sub_1006827B8(v134, qword_100CA5418);
    sub_100786C6C();
    CurrentWeather.lowTemperature.getter();
    sub_100787220();
    Optional<A>.write(to:)();
    sub_1006827B8(v135, qword_100CA5418);
    sub_10000492C();
    CurrentWeather.uvIndex.getter();
    a10 = UVIndex.value.getter();
    sub_10003BCF8();
    FixedSizeTypeBinaryCodable.write(to:)();
    UVIndex.category.getter();
    v125 = sub_100786630();
    UVIndex.ExposureCategory.write(to:)(v125);
    sub_100042334();
    sub_100786DB4();
    v127(v126);
    sub_10000492C();
    CurrentWeather.visibility.getter();
    sub_10001CC78();
    v128 = sub_100040D14();
    sub_100779504(v128, v129);
    sub_10000E73C();
    sub_100787580();
    v131(v130);
    sub_10000492C();
    CurrentWeather.wind.getter();
    sub_100040D14();
    Wind.write(to:)();
    v132 = sub_100052748();
    v133(v132);
    sub_10000492C();
    CurrentWeather.metadata.getter();
    sub_100040D14();
    WeatherMetadata.write(to:)();
    sub_10000E73C();
    v91();
  }

  sub_100036EA0();
  sub_10000C8F4();
}

uint64_t static CloudCoverByAltitude.read(from:)()
{
  sub_100786DA8();
  result = static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100787268();
    return CloudCoverByAltitude.init(low:medium:high:)();
  }

  return result;
}

uint64_t CloudCoverByAltitude.write(to:)()
{
  sub_10002498C();
  CloudCoverByAltitude.low.getter();
  sub_10000CDB0();
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    CloudCoverByAltitude.medium.getter();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    CloudCoverByAltitude.high.getter();
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

void sub_10076067C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1007865BC();
  v27 = v26;
  v58 = v28;
  v29 = sub_10022C350(&qword_100CB5F98, "rQ\v");
  sub_100003810(v29);
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  sub_100786F74(v31);
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_100017D50();
  v60 = v32;
  __chkstk_darwin(v33);
  sub_100003C38();
  v36 = v34 - v35;
  __chkstk_darwin(v37);
  sub_1000B9E20();
  type metadata accessor for TimeZone();
  sub_10000FB48();
  v61 = v38;
  __chkstk_darwin(v39);
  sub_1000317E4();
  v40 = type metadata accessor for Date();
  sub_1000037C4();
  v42 = v41;
  __chkstk_darwin(v43);
  sub_1000520E4();
  static Date.read(from:)();
  if (!v20)
  {
    v56 = v36;
    v57 = v21;
    static String.read(from:)();
    static String.read(from:)();
    static TimeZone.read(from:)();
    sub_100786D90();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
    static NSUnitTemperature.read(from:)(v27);
    Measurement.init(value:unit:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    static NSUnitTemperature.read(from:)(v27);
    Measurement.init(value:unit:)();
    sub_100787178();
    static Optional<A>.read(from:)();
    static Optional<A>.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100787178();
    static String.read(from:)();
    type metadata accessor for Precipitation();
    sub_1000BA220();
    sub_10077C574(v44);
    sub_1007863C0();
    sub_10077C574(v45);
    sub_10002CA80();
    static Optional<A>.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100787178();
    v55 = static String.read(from:)();
    v47 = v46;
    sub_100787178();
    static String.read(from:)();
    sub_100787178();
    static String.read(from:)();
    sub_1007860A8();
    sub_1007860FC();
    v48 = static Array<A>.read(from:)();
    (*(v42 + 32))(v58, v24, v40);
    v49 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_1000179EC((v58 + v49[5]));
    sub_1000179EC((v58 + *(v50 + 24)));
    (*(v61 + 32))(v58 + *(v51 + 28), v25, v57);
    v52 = *(v60 + 32);
    v52(v58 + v49[8], v23, v22);
    v52(v58 + v49[9], v56, v22);
    v53 = (v58 + v49[10]);
    *v53 = v65;
    v53[1] = v66;
    sub_1000179EC((v58 + v49[11]));
    *(v58 + v49[12]) = v64;
    *(v58 + v49[13]) = v63;
    sub_1000179EC((v58 + v49[14]));
    sub_100786150(v59, v58 + v49[15], &qword_100CB5F98, "rQ\v");
    *(v58 + v49[16]) = v62;
    v54 = (v58 + v49[17]);
    *v54 = v55;
    v54[1] = v47;
    sub_1000179EC((v58 + v49[18]));
    sub_1000179EC((v58 + v49[19]));
    *(v58 + v49[20]) = v48;
  }

  sub_10009D16C();
}

void sub_100761014()
{
  sub_1007863D8();
  Date.write(to:)();
  if (!v0)
  {
    type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_10001325C();
    sub_1000C82DC();
    sub_1000C82DC();
    sub_100013AD0();
    TimeZone.write(to:)();
    sub_1000066E8();
    v1 = sub_100013AD0();
    sub_100779504(v1, v2);
    sub_1000066E8();
    v3 = sub_100013AD0();
    sub_100779504(v3, v4);
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    sub_100786408();
    Optional<A>.write(to:)();
    sub_100786408();
    Optional<A>.write(to:)();
    sub_1000C8410();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100787184();
    sub_1000C8410();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1000C82DC();
    sub_10022C350(&qword_100CB5F98, "rQ\v");
    sub_1000BA220();
    sub_10077C574(v5);
    sub_1007863C0();
    sub_10077C574(v6);
    sub_100052444();
    sub_100787184();
    sub_1000C8410();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1000C82DC();
    sub_1000C82DC();
    sub_1000C82DC();
    sub_1007860A8();
    sub_1007860FC();
    sub_100031474();
    Array<A>.write(to:)();
  }
}

uint64_t sub_1007612D4()
{
  v0 = sub_100786524();
  type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(v0);
  sub_10077C574(&unk_100CD0090);
  sub_100786998();
  sub_10077C574(v1);
  sub_100786B0C();
  return static Array<A>.read(from:)();
}

uint64_t sub_100761370()
{
  v0 = sub_1000926C0();
  type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(v0);
  sub_10077C574(&unk_100CD0090);
  sub_100786998();
  v2 = sub_10077C574(v1);
  return sub_1000C8B34(v2);
}

uint64_t static DayWeather.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a1;
  v161 = a2;
  v6 = sub_10022C350(&qword_100CD6578, &qword_100A7F398);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v9 = sub_100003918(v8);
  v11 = type metadata accessor for DayPartForecast(v9, v10);
  v12 = sub_100003E5C(v11, &v176);
  v159 = v13;
  __chkstk_darwin(v12);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_10000E70C();
  sub_100003990(v15);
  v16 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  v17 = sub_100003E5C(v16, &v179);
  v162 = v18;
  __chkstk_darwin(v17);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_10000E70C();
  sub_100003990(v21);
  v22 = sub_10022C350(&qword_100CAEC90, &unk_100A5CFE0);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  sub_1000039BC();
  sub_100003918(v24);
  v25 = type metadata accessor for Wind();
  v26 = sub_100003E5C(v25, &v180);
  v164 = v27;
  __chkstk_darwin(v26);
  sub_1000038E4();
  sub_100003918(v28);
  v29 = type metadata accessor for UVIndex();
  v30 = sub_100003E5C(v29, &v181);
  v165 = v31;
  __chkstk_darwin(v30);
  sub_1000038E4();
  sub_100003918(v32);
  v33 = type metadata accessor for MoonEvents();
  v34 = sub_100003E5C(v33, &v182);
  v166 = v35;
  __chkstk_darwin(v34);
  sub_1000038E4();
  sub_100003918(v36);
  v37 = type metadata accessor for SunEvents();
  v38 = sub_100003E5C(v37, &v183);
  v167 = v39;
  __chkstk_darwin(v38);
  sub_1000038E4();
  sub_100003918(v40);
  v41 = type metadata accessor for PrecipitationAmountByType();
  v42 = sub_100003E5C(v41, &v184);
  v168 = v43;
  __chkstk_darwin(v42);
  sub_1000038E4();
  sub_100003990(v44);
  v45 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v46 = sub_100003E5C(v45, &v186);
  v170[2] = v47;
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_10000E70C();
  sub_100003918(v49);
  v50 = type metadata accessor for Precipitation();
  v51 = sub_100003E5C(v50, &v187);
  v172 = v52;
  __chkstk_darwin(v51);
  sub_1000038E4();
  sub_100003990(v53);
  v54 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_10078631C();
  v57 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v174 = v58;
  __chkstk_darwin(v59);
  sub_100003C38();
  sub_100030568();
  __chkstk_darwin(v60);
  v62 = v146 - v61;
  type metadata accessor for WeatherCondition();
  sub_100024A44();
  v175 = v63;
  __chkstk_darwin(v64);
  sub_1000317E4();
  v65 = type metadata accessor for Date();
  sub_1000037C4();
  v67 = v66;
  __chkstk_darwin(v68);
  sub_1000520E4();
  v69 = v176;
  result = static Date.read(from:)();
  if (!v69)
  {
    v150 = v3;
    v153 = v2;
    v152 = v62;
    v151 = v57;
    v154 = v4;
    v156 = v5;
    v176 = v65;
    v155 = v67;
    v71 = v177;
    static WeatherCondition.read(from:)(v177);
    v72 = static String.read(from:)();
    v74 = v73;
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
    static NSUnitTemperature.read(from:)(v71);
    v149 = v72;
    sub_1000719F4();
    sub_100786F8C();
    Measurement.init(value:unit:)();
    sub_1000370B0();
    static Optional<A>.read(from:)();
    v148 = v74;
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1007873AC();
    static NSUnitTemperature.read(from:)(v177);
    sub_100786D54();
    Measurement.init(value:unit:)();
    sub_1000E1484();
    static Optional<A>.read(from:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000E583C();
    sub_10011948C();
    v76 = v147;
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000E583C();
    if (v76)
    {
      sub_1007863FC();

LABEL_7:
      v77 = sub_1007862F8(&v188);
      sub_1006827B8(v77, v78);
      v79 = *(v174 + 8);
      sub_100786CD8();
      sub_100042230();
      v79();
      v80 = sub_1007862F8(v170);
      sub_1006827B8(v80, v81);
      v82 = sub_1000E31B8(v169);
      (v79)(v82);
      v83 = sub_1001AD040();
      v84(v83);
      v85 = sub_100042760();
      return v75(v85);
    }

    sub_100041044();
    sub_1000E583C();
    sub_100041044();
    sub_1000E583C();
    sub_100041044();
    v86 = sub_1000E1484();
    static Precipitation.read(from:)(v86);
    sub_1000E583C();
    sub_100041044();
    sub_1000E583C();
    sub_100041044();
    sub_1000E583C();
    v87 = sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    v88 = sub_10078654C();
    static NSUnitLength.read(from:)(v88);
    sub_1000E583C();
    sub_100786D78();
    Measurement.init(value:unit:)();
    sub_100041044();
    sub_1000E583C();
    v92 = *(v91 - 256);
    static NSUnitLength.read(from:)(v177);
    sub_1000E583C();
    if (v92)
    {
      sub_1007863FC();

      sub_10000E73C();
      v93(v170[0], v170[1]);
LABEL_8:
      v89 = sub_100092670();
      v90(v89, v171);
      goto LABEL_7;
    }

    sub_100786D78();
    Measurement.init(value:unit:)();
    v94 = sub_1000A4078();
    static PrecipitationAmountByType.read(from:)(v94);
    sub_1000E583C();
    sub_1000A4078();
    static SunEvents.read(from:)();
    sub_1000E583C();
    sub_1000A4078();
    static MoonEvents.read(from:)();
    sub_1000E583C();
    sub_100041044();
    sub_1000E583C();
    v96 = *(v95 - 256);
    static UVIndex.ExposureCategory.read(from:)(v177);
    sub_1000E583C();
    if (v96)
    {
      sub_1007863FC();

LABEL_13:
      sub_10000E73C();
      sub_100787274();
      v97();
      sub_100042334();
      sub_1007875A0();
      v98();
      sub_1000B981C();
      sub_10078719C();
      v99();
      sub_100787380();
      sub_10003B8B4();
      sub_100021424();
      v87();
      v100 = sub_100052378(&v185);
      (v87)(v100);
      goto LABEL_8;
    }

    sub_100786DCC();
    UVIndex.init(value:category:)();
    sub_100041044();
    sub_1000E583C();
    sub_100041044();
    sub_1000E583C();
    sub_100041044();
    sub_1000E583C();
    v146[3] = v178[1];
    sub_100041044();
    sub_1000E583C();
    v146[2] = v178[0];
    v101 = sub_1000A4078();
    static Wind.read(from:)(v101);
    sub_1000E583C();
    sub_1000117E8();
    sub_10077C6AC(v104);
    sub_100018704();
    sub_10077C6AC(v105);
    sub_1000E1484();
    v106 = v147;
    static Optional<A>.read(from:)();
    sub_1000E583C();
    if (v106)
    {
      sub_1007863FC();

      sub_10000E73C();
      v108 = sub_1007875B8();
      v109(v108);
      v102 = sub_10012CE00();
      v103(v102);
      goto LABEL_13;
    }

    sub_100041044();
    sub_1000E583C();
    sub_1007870A0();
    sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
    v107 = sub_10078654C();
    static NSUnitSpeed.read(from:)(v107);
    sub_1000E583C();
    sub_100786F20(v110, v111);
    sub_100041044();
    sub_1000E583C();
    sub_1007870A0();
    v112 = sub_10078654C();
    static NSUnitSpeed.read(from:)(v112);
    sub_1000E583C();
    sub_100786F20(v113, v114);
    sub_100041044();
    sub_1000E583C();
    sub_1007870A0();
    v115 = sub_10078654C();
    static NSUnitSpeed.read(from:)(v115);
    sub_1000E583C();
    sub_100786F20(v116, v117);
    v118 = sub_1000A4078();
    static DayPartForecast.read(from:)(v118);
    sub_1000E583C();
    v119 = sub_1000A4078();
    static DayPartForecast.read(from:)(v119);
    sub_1000E583C();
    sub_10077C574(&unk_100CD65A0);
    sub_1007863C0();
    sub_10077C574(v120);
    sub_1000E1484();
    v121 = v147;
    static Optional<A>.read(from:)();
    if (v121)
    {
      sub_1007863FC();

      sub_1000BC71C();
      v122 = v160;
      type metadata accessor for DayPartForecast(v157, v160);
      type metadata accessor for DayPartForecast(v158, v122);
      sub_100133AD8();
      v123 = sub_100787090(&v173);
      (v122)(v123, &type metadata accessor for DayPartForecast);
      v124 = sub_1000C8B14(&v177);
      v122(v124);
      v125 = sub_1000C8B14(v178);
      v122(v125);
      sub_1006827B8(v163, &qword_100CAEC90);
      sub_10000E73C();
      v126 = sub_1007875B8();
      v127(v126);
      v128 = sub_10012CE00();
      v129(v128);
      sub_10000E73C();
      sub_100787274();
      v130();
      sub_100042334();
      sub_1007875A0();
      v131();
      sub_1000B981C();
      sub_10078719C();
      v132();
      sub_100787380();
      sub_10003B8B4();
      sub_100021424();
      (v122)();
      v133 = sub_100052378(&v185);
      v122(v133);
      v134 = sub_100092670();
      v135(v134, v171);
      v136 = sub_1007862F8(&v188);
      sub_1006827B8(v136, v137);
      v138 = *(v174 + 8);
      sub_100786CD8();
      sub_100042230();
      v138();
      v139 = sub_1007862F8(v170);
      sub_1006827B8(v139, v140);
      v141 = sub_1000E31B8(v169);
      (v138)(v141);
      v142 = sub_1001AD040();
      v143(v142);
      v144 = sub_100042760();
      return v145(v144);
    }

    else
    {
      sub_100786DCC();
      sub_1007868C0();
      sub_10078667C();
      sub_1000BEA34();
      return DayWeather.init(date:condition:symbolName:highTemperature:highTemperatureTime:lowTemperature:lowTemperatureTime:humidity:humidityMax:humidityMin:maximumHumidity:minimumHumidity:precipitation:precipitationChance:rainfallAmount:snowfallAmount:precipitationAmountByType:sun:moon:uvIndex:visibilityMax:visibilityMin:maximumVisibility:minimumVisibility:wind:highWindSpeed:windGustSpeedMax:windSpeedAvg:windSpeedMax:daytimeForecast:overnightForecast:restOfDayForecast:)();
    }
  }

  return result;
}

void DayWeather.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v24;
  a20 = v25;
  v186 = v21;
  v187 = v26;
  sub_10022C350(&qword_100CD6578, &qword_100A7F398);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v27);
  sub_1000039BC();
  v172 = v28;
  v29 = sub_1000038CC();
  v171 = type metadata accessor for DayPartForecast(v29, v30);
  sub_1000037C4();
  __chkstk_darwin(v31);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_10000E70C();
  sub_100003990(v33);
  v34 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  v35 = sub_100003E5C(v34, &a15);
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  sub_100003990(v38);
  sub_10022C350(&qword_100CAEC90, &unk_100A5CFE0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  sub_100003918(v40);
  v41 = type metadata accessor for Wind();
  v42 = sub_100003E5C(v41, &v188);
  __chkstk_darwin(v42);
  sub_1000038E4();
  sub_100003918(v43);
  v44 = type metadata accessor for UVIndex();
  v45 = sub_100003E5C(v44, &v185);
  v163 = v46;
  __chkstk_darwin(v45);
  sub_1000038E4();
  sub_100003918(v47);
  v48 = type metadata accessor for MoonEvents();
  v49 = sub_100003E5C(v48, &v182);
  v157 = v50;
  __chkstk_darwin(v49);
  sub_1000038E4();
  sub_100003918(v51);
  v52 = type metadata accessor for SunEvents();
  v53 = sub_100003E5C(v52, &v179);
  v151 = v54;
  __chkstk_darwin(v53);
  sub_1000038E4();
  sub_100003918(v55);
  type metadata accessor for PrecipitationAmountByType();
  sub_1000037C4();
  __chkstk_darwin(v56);
  sub_1000038E4();
  sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  v174 = v58;
  v175 = v57;
  __chkstk_darwin(v57);
  sub_100003848();
  v173 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_10000E70C();
  v176 = v61;
  sub_1000038CC();
  type metadata accessor for Precipitation();
  sub_1000037C4();
  v177 = v63;
  v178 = v62;
  __chkstk_darwin(v62);
  sub_1000038E4();
  v179 = v64;
  v182 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000037E8();
  __chkstk_darwin(v65);
  sub_100003848();
  v180 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_10000E70C();
  v181 = v68;
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v183 = v70;
  v184 = v69;
  __chkstk_darwin(v69);
  sub_100030084();
  __chkstk_darwin(v71);
  sub_100030230();
  v72 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v185 = v73;
  __chkstk_darwin(v74);
  sub_1000520E4();
  type metadata accessor for Date();
  sub_100017D50();
  __chkstk_darwin(v75);
  sub_100049BF8();
  DayWeather.date.getter();
  v76 = v186;
  Date.write(to:)();
  if (v76)
  {
    v77 = sub_10001F188();
    v78(v77);
  }

  else
  {
    v186 = v22;
    v79 = sub_10001F188();
    v80(v79);
    DayWeather.condition.getter();
    sub_1000E17CC();
    WeatherCondition.write(to:)();
    v81 = sub_1000419B4();
    v82(v81, v72);
    DayWeather.symbolName.getter();
    sub_100786344();
    String.write(to:)();
    sub_1000E6714();

    DayWeather.highTemperature.getter();
    sub_1000066E8();
    sub_100031268();
    sub_100779504(v83, v84);
    v85 = v184;
    v86 = *(v183 + 8);
    v87 = sub_100786E7C();
    v86(v87);
    v88 = v181;
    DayWeather.highTemperatureTime.getter();
    sub_100786B18();
    Optional<A>.write(to:)();
    sub_1006827B8(v88, &unk_100CB2CF0);
    sub_1007867E8();
    DayWeather.lowTemperature.getter();
    sub_1000066E8();
    sub_1007866C4();
    sub_100779504(v89, v90);
    (v86)(*&v23, v85);
    v91 = v180;
    sub_1007867E8();
    DayWeather.lowTemperatureTime.getter();
    sub_100011498();
    sub_100786598();
    Optional<A>.write(to:)();
    sub_1006827B8(v91, &unk_100CB2CF0);
    sub_1007867E8();
    DayWeather.humidity.getter();
    sub_1000B0CA4();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1007867E8();
    DayWeather.humidityMax.getter();
    sub_1000B0CA4();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1007867E8();
    DayWeather.humidityMin.getter();
    sub_1000B0CA4();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1007867E8();
    DayWeather.maximumHumidity.getter();
    sub_1000B0CA4();
    FixedSizeTypeBinaryCodable.write(to:)();
    DayWeather.minimumHumidity.getter();
    sub_1007865F0();
    DayWeather.precipitation.getter();
    sub_10011C148();
    Precipitation.write(to:)();
    (*(v177 + 8))(v179, v178);
    DayWeather.precipitationChance.getter();
    sub_1007865F0();
    DayWeather.rainfallAmount.getter();
    sub_10001CC78();
    v92 = sub_10011C148();
    sub_100779504(v92, v93);
    v94 = *(v174 + 8);
    v94(v176, v175);
    DayWeather.snowfallAmount.getter();
    sub_10001CC78();
    sub_100786EE4();
    sub_100779504(v95, v96);
    v94(v173, v175);
    DayWeather.precipitationAmountByType.getter();
    sub_100040D14();
    PrecipitationAmountByType.write(to:)();
    v97 = sub_100786694();
    v98(v97);
    sub_10078664C();
    DayWeather.sun.getter();
    sub_10011C148();
    SunEvents.write(to:)();
    sub_10000E73C();
    v99();
    sub_10078664C();
    DayWeather.moon.getter();
    sub_10011C148();
    MoonEvents.write(to:)();
    sub_100786308();
    sub_100787274();
    v100();
    sub_10078664C();
    DayWeather.uvIndex.getter();
    UVIndex.value.getter();
    sub_1007865F0();
    UVIndex.category.getter();
    v101 = sub_100786630();
    UVIndex.ExposureCategory.write(to:)(v101);
    sub_10000E73C();
    sub_1007875A0();
    v102();
    DayWeather.visibilityMax.getter();
    sub_1007865F0();
    DayWeather.visibilityMin.getter();
    sub_1007865F0();
    DayWeather.maximumVisibility.getter();
    sub_1007865F0();
    DayWeather.minimumVisibility.getter();
    sub_1007865F0();
    sub_10078664C();
    DayWeather.wind.getter();
    sub_10011C148();
    Wind.write(to:)();
    sub_10000E73C();
    sub_10078719C();
    v103();
    sub_1000371B0();
    DayWeather.highWindSpeed.getter();
    sub_1000117E8();
    sub_10077C6AC(v104);
    sub_100018704();
    sub_10077C6AC(v105);
    Optional<A>.write(to:)();
    sub_1006827B8(v174 + 8, &qword_100CAEC90);
    sub_10078664C();
    DayWeather.windGustSpeedMax.getter();
    sub_100028AC8();
    v106 = sub_10011C148();
    sub_100779504(v106, v107);
    sub_100787160();
    MEMORY[0](0);
    sub_1000371B0();
    DayWeather.windSpeedAvg.getter();
    sub_100028AC8();
    sub_100786C10();
    sub_100779504(v108, v109);
    v110 = sub_1007874E8();
    MEMORY[0](v110);
    if (!v20)
    {
      sub_1000371B0();
      DayWeather.windSpeedMax.getter();
      sub_100028AC8();
      sub_100786C10();
      sub_100779504(v111, v112);
      v113 = sub_1007874E8();
      MEMORY[0](v113);
      sub_1000184C0();
      DayWeather.daytimeForecast.getter();
      v114 = sub_100040D14();
      DayPartForecast.write(to:)(v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v146, v23, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167);
      sub_100787160();
      MEMORY[0](v169, v171);
      sub_1000371B0();
      DayWeather.overnightForecast.getter();
      sub_100786C10();
      DayPartForecast.write(to:)(v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v147, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168);
      MEMORY[0](v170, v171);
      DayWeather.restOfDayForecast.getter();
      sub_10077C574(&unk_100CD65A0);
      sub_100787314(&unk_100CD65A8);
      Optional<A>.write(to:)();
      sub_1006827B8(v172, &qword_100CD6578);
    }
  }

  sub_100036EA0();
  sub_10000C8F4();
}

uint64_t static Elevation.read(from:)()
{
  sub_1000E62AC();
  sub_10066F85C();
  sub_100786A40();
  result = static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    sub_100786A40();
    static FixedSizeTypeBinaryCodable.read(from:)();
    return Elevation.init(degrees:isPM:)();
  }

  return result;
}

uint64_t Elevation.write(to:)(uint64_t a1)
{
  Elevation.degrees.getter();
  sub_10066F85C();
  sub_1007863E4();
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v1)
  {
    Elevation.isPM.getter();
    sub_1007863E4();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

void sub_100763A5C()
{
  sub_10000E8AC();
  v3 = v2;
  v4 = sub_10022C350(&qword_100CACF38, &unk_100A47BB0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  sub_100003CF8();
  sub_1000236E0();
  v6 = static String.read(from:)();
  if (!v0)
  {
    v8 = v6;
    v9 = v7;
    sub_1000236E0();
    v10 = static String.read(from:)();
    v12 = v11;
    sub_1000236E0();
    static Optional<A>.read(from:)();
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
    sub_10077C574(&unk_100CD67F8);
    sub_100786F08(&unk_100CD6800);
    sub_100787054();
    static Optional<A>.read(from:)();
    sub_1000236E0();
    v13 = static String.read(from:)();
    *v3 = v8;
    v3[1] = v9;
    v3[2] = v10;
    v3[3] = v12;
    v3[4] = v18;
    v3[5] = v19;
    v15 = v14;
    v16 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
    sub_100786150(v1, v3 + *(v16 + 28), &qword_100CACF38, &unk_100A47BB0);
    v17 = (v3 + *(v16 + 32));
    *v17 = v13;
    v17[1] = v15;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

uint64_t sub_100763C88()
{
  sub_1007863D8();
  result = String.write(to:)();
  if (!v0)
  {
    sub_10000CDB0();
    String.write(to:)();
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    sub_1000C8410();
    Optional<A>.write(to:)();
    type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
    sub_10022C350(&qword_100CACF38, &unk_100A47BB0);
    sub_10077C574(&unk_100CD67F8);
    sub_1007863C0();
    sub_10077C574(v2);
    sub_100052444();
    return sub_1000C82DC();
  }

  return result;
}

uint64_t sub_100763DCC()
{
  v5 = sub_10000C76C();
  v6 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(v5);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100005888();
  sub_1007867A8();
  result = static String.read(from:)();
  if (!v1)
  {
    sub_10078748C();
    sub_1007867A8();
    sub_100763EF0(v9);
    *v0 = v4;
    v0[1] = v3;
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
    sub_10078753C();
    return sub_100187600(v2, v10);
  }

  return result;
}

uint64_t sub_100763E98(uint64_t a1)
{
  result = String.write(to:)();
  if (!v1)
  {
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
    sub_10000CDB0();
    return sub_100764104();
  }

  return result;
}

int *sub_100763EF0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TemperatureScaleConfiguration();
  sub_10000FB48();
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_100786420();
  result = static TemperatureScaleConfiguration.read(from:)();
  if (!v1)
  {
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_100786420();
    v5 = static String.read(from:)();
    v7 = v6;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v8 = sub_10002C598();
    v9(v8);
    result = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    *(a1 + result[5]) = v14;
    *(a1 + result[6]) = v13;
    *(a1 + result[7]) = v12;
    v10 = (a1 + result[8]);
    *v10 = v5;
    v10[1] = v7;
    *(a1 + result[9]) = v11;
  }

  return result;
}

uint64_t sub_100764104()
{
  sub_1007863D8();
  result = TemperatureScaleConfiguration.write(to:)();
  if (!v0)
  {
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    sub_10001325C();
    sub_100786FE4(v3);
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786FE4(*(v1 + 24));
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786FE4(*(v1 + 28));
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1000C82DC();
    sub_100786D84();
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  return result;
}

void sub_100764208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v23;
  a20 = v24;
  sub_100033FF8();
  v25 = sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  sub_100003810(v25);
  sub_100003828();
  __chkstk_darwin(v26);
  v28 = &a9 - v27;
  v29 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  sub_100003810(v29);
  sub_100003828();
  __chkstk_darwin(v30);
  sub_100021D38();
  v31 = type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000106FC();
  type metadata accessor for UUID();
  sub_100786D18();
  static Optional<A>.read(from:)();
  if (!v21)
  {
    a10 = v20;
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
    sub_10077C574(&unk_100CD00A0);
    sub_10003BBA8();
    sub_10077C574(v33);
    sub_100031400();
    sub_100786FD8();
    v34 = static Array<A>.read(from:)();
    v35 = sub_1000059A0();
    sub_100786150(v35, v36, v37, v38);
    *(v22 + *(v31 + 20)) = v34;
    type metadata accessor for WeatherDescription();
    sub_10077C574(&unk_100CD00B0);
    sub_1007865D8();
    sub_10077C574(v39);
    sub_1000046B4();
    static Optional<A>.read(from:)();
    v40 = sub_100786784();
    v41 = a10;
    sub_100187600(v40, a10);
    v42 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
    sub_100786150(v28, v41 + *(v42 + 20), &qword_100CAE8E8, &unk_100A49400);
  }

  sub_100041B68();
  sub_10000C8F4();
}

void sub_1007644D0()
{
  sub_1000D3C1C();
  sub_1000BB558();
  sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  sub_10000CDB0();
  Optional<A>.write(to:)();
  if (!v0)
  {
    type metadata accessor for HourlyForecastComponentViewModel(0);
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
    sub_100786908();
    sub_10077C574(v1);
    sub_10003BBA8();
    sub_10077C574(v2);
    sub_100040F9C();
    sub_1007871C0();
    Array<A>.write(to:)();
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
    sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
    sub_10077C574(&unk_100CD00B0);
    sub_10077C574(&unk_100CD00B8);
    sub_100025214();
    sub_1000523E0();
    Optional<A>.write(to:)();
  }

  sub_100088758();
}

void sub_10076464C()
{
  sub_1000D3C1C();
  sub_100786C5C();
  v2 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_100022E2C();
  type metadata accessor for UUID();
  sub_1007867A8();
  static Optional<A>.read(from:)();
  if (!v1)
  {
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
    sub_100786908();
    sub_10077C574(v4);
    sub_10003BBA8();
    sub_10077C574(v5);
    sub_10002C598();
    v6 = static Array<A>.read(from:)();
    v7 = sub_1000046B4();
    sub_100786150(v7, v8, v9, v10);
    *(v0 + *(type metadata accessor for HourlyForecastComponentViewModel(0) + 20)) = v6;
  }

  sub_100786E70();
  sub_100088758();
}

uint64_t sub_10076479C()
{
  sub_1000BB558();
  sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  sub_10000CDB0();
  result = Optional<A>.write(to:)();
  if (!v0)
  {
    type metadata accessor for HourlyForecastComponentViewModel(0);
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
    sub_10077C574(&unk_100CD00A0);
    sub_10003BBA8();
    v3 = sub_10077C574(v2);
    return sub_1000C8B34(v3);
  }

  return result;
}

void sub_10076487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1000D3C1C();
  v22 = sub_10000C76C();
  v23 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(v22);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_100006168();
  v25 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100030084();
  __chkstk_darwin(v27);
  sub_100040F00();
  sub_100786D0C();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v21)
  {
    sub_1007872A4();
    if (v29)
    {
      v34 = sub_100786EAC();
      sub_100765038(v34);
      sub_1000E6750();
      v35 = sub_100786540();
      sub_100187600(v35, v36);
    }

    else if (v28 == 2)
    {
      sub_100786EAC();
      sub_100764D7C();
      sub_100036E88();
      v32 = sub_1000215E0();
      sub_100187600(v32, v33);
    }

    else
    {
      if (v28 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v38 = sub_10077C574(v37);
        v39 = sub_1007863A0(v38);
        sub_100787280(v39, v40);
        sub_10004E4B8();
        (*(v41 + 104))();
        swift_willThrow();
        goto LABEL_2;
      }

      sub_100786EAC();
      sub_100764D7C();
      sub_100036E88();
      v30 = sub_100037280();
      sub_100187600(v30, v31);
    }

    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
  }

LABEL_2:
  sub_100786E70();
  sub_100088758();
}

void sub_100764A68()
{
  sub_10000E8AC();
  v2 = sub_100017580();
  v3 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(v2);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000520E4();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100030084();
  __chkstk_darwin(v6);
  sub_100040F00();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_10001BA34();
  v8 = sub_1000167A4();
  sub_1000E82F4(v8, v1);
  sub_1002E54F8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100036E88();
    v12 = sub_10000CA1C();
    sub_100187600(v12, v13);
    sub_10001635C();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100786E88();
    Date.write(to:)();
    sub_1007863E4();
    TimeZone.write(to:)();
    sub_1007863E4();
    Array<A>.write(to:)();
    sub_1007863E4();
    String.write(to:)();
    sub_1007863E4();
    String.write(to:)();
LABEL_9:
    sub_1007868F0();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100036E88();
    v10 = sub_1002E58CC();
    sub_100187600(v10, v11);
    sub_1000C8FEC();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v0)
    {
      sub_1007866E0();
      Date.write(to:)();
      sub_1007863E4();
      TimeZone.write(to:)();
      sub_1007863E4();
      Array<A>.write(to:)();
      sub_1007863E4();
      String.write(to:)();
      sub_1007863E4();
      String.write(to:)();
    }

    goto LABEL_9;
  }

  sub_1000E6750();
  v14 = sub_100017B70();
  sub_100187600(v14, v15);
  sub_1000BCE14();
  sub_1007863E4();
  FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    sub_10078646C();
    sub_100765570();
  }

LABEL_10:
  sub_1000E83A0();
  sub_1007865A4();
  sub_10000C8F4();
}

void sub_100764D7C()
{
  sub_10000E8AC();
  sub_1007874A4();
  type metadata accessor for TimeZone();
  sub_10000548C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000106FC();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v7);
  sub_100049BF8();
  sub_100786AC4();
  static Date.read(from:)();
  if (!v2)
  {
    sub_100786AC4();
    static TimeZone.read(from:)();
    sub_100786AC4();
    v18 = static Array<A>.read(from:)();
    sub_100786AC4();
    v16 = static String.read(from:)();
    v17 = v8;
    sub_100786AC4();
    v9 = static String.read(from:)();
    v15 = v10;
    sub_100786FB4();
    v11();
    v12 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
    (*(v5 + 32))(v1 + v12[5], v3, v0);
    *(v1 + v12[6]) = v18;
    v13 = (v1 + v12[7]);
    *v13 = v16;
    v13[1] = v17;
    v14 = (v1 + v12[8]);
    *v14 = v9;
    v14[1] = v15;
  }

  sub_100041B68();
  sub_10000C8F4();
}

uint64_t sub_100764F94()
{
  sub_1007863D8();
  result = Date.write(to:)();
  if (!v0)
  {
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
    sub_100079588();
    TimeZone.write(to:)();
    sub_10000CDB0();
    Array<A>.write(to:)();
    sub_1000C82DC();
    return sub_1000C82DC();
  }

  return result;
}

void sub_100765038(uint64_t a1)
{
  sub_1007865BC();
  sub_100786AD0();
  v32 = v5;
  v6 = type metadata accessor for TimeZone();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100049BF8();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v8);
  sub_1000317E4();
  type metadata accessor for Precipitation();
  sub_100024A44();
  __chkstk_darwin(v9);
  sub_10001BA34();
  sub_100042D78();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v1)
  {
    v30 = v3;
    v31 = v4;
    sub_1007863CC();
    static Optional<A>.read(from:)();
    sub_1007863CC();
    v10 = static String.read(from:)();
    v12 = v11;
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v13 = sub_1007863CC();
    static Precipitation.read(from:)(v13);
    sub_1007863CC();
    v28 = static String.read(from:)();
    v29 = v14;
    sub_1007863CC();
    v26 = static String.read(from:)();
    v27 = v15;
    sub_1007863CC();
    static String.read(from:)();
    sub_1007863CC();
    static Date.read(from:)();
    sub_1007863CC();
    static TimeZone.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v16 = static Array<A>.read(from:)();
    *v32 = v38;
    *(v32 + 8) = v36;
    *(v32 + 16) = v37;
    *(v32 + 24) = v10;
    *(v32 + 32) = v12;
    *(v32 + 40) = v35;
    *(v32 + 48) = v34;
    v17 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
    v18 = sub_1007871D8(v17[9]);
    v19(v18);
    v20 = (v32 + v17[10]);
    *v20 = v28;
    v20[1] = v29;
    v21 = (v32 + v17[11]);
    *v21 = v26;
    v21[1] = v27;
    sub_1000179EC((v32 + v17[12]));
    v22 = sub_1007871D8(v17[13]);
    v23(v22, v31, v2);
    v24 = sub_1007871D8(v17[14]);
    v25(v24, v30, v6);
    *(v32 + v17[15]) = v33;
    *(v32 + v17[16]) = v16;
  }

  sub_10002FE90();
  sub_10009D16C();
}

uint64_t sub_100765570()
{
  sub_1007863D8();
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    sub_1000C8410();
    Optional<A>.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_1000C8410();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1000C8410();
    FixedSizeTypeBinaryCodable.write(to:)();
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
    sub_100013AD0();
    Precipitation.write(to:)();
    sub_1000C82DC();
    sub_1000C82DC();
    sub_1000C82DC();
    sub_100013AD0();
    Date.write(to:)();
    sub_100013AD0();
    TimeZone.write(to:)();
    sub_100787184();
    sub_1000C8410();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_10000CDB0();
    return Array<A>.write(to:)();
  }

  return result;
}

uint64_t static HourWeather.read(from:)(uint64_t a1)
{
  v1 = type metadata accessor for Wind();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000038E4();
  sub_100003918(v3);
  v4 = type metadata accessor for UVIndex();
  v5 = sub_100003E5C(v4, v42);
  __chkstk_darwin(v5);
  sub_1000038E4();
  sub_100003918(v6);
  v7 = type metadata accessor for PressureTrend();
  v8 = sub_100003E5C(v7, &v43);
  __chkstk_darwin(v8);
  sub_1000038E4();
  sub_100003990(v9);
  v10 = sub_10022C350(&qword_100CAC3D0, &unk_100AA0D60);
  sub_100003E5C(v10, &v44);
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  sub_100003918(v12);
  v13 = type metadata accessor for ApparentPrecipitationIntensity();
  v14 = sub_100003E5C(v13, &v45);
  __chkstk_darwin(v14);
  sub_1000038E4();
  sub_100003990(v15);
  v16 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v17 = sub_100003E5C(v16, &v46);
  __chkstk_darwin(v17);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_10000E70C();
  sub_100003918(v20);
  v21 = type metadata accessor for Precipitation();
  v22 = sub_100003E5C(v21, &v47);
  __chkstk_darwin(v22);
  sub_1000038E4();
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100031DB0();
  __chkstk_darwin(v25);
  sub_10003BA64();
  type metadata accessor for WeatherCondition();
  sub_1000037C4();
  __chkstk_darwin(v26);
  sub_10002429C();
  type metadata accessor for CloudCoverByAltitude();
  sub_10000FB48();
  __chkstk_darwin(v27);
  sub_1000317E4();
  type metadata accessor for Date();
  sub_100024A44();
  __chkstk_darwin(v28);
  sub_100049BF8();
  result = static Date.read(from:)();
  if (!v40)
  {
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    static CloudCoverByAltitude.read(from:)();
    static WeatherCondition.read(from:)(a1);
    static String.read(from:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
    sub_1000201F8();
    sub_1000BC6E4();
    static NSUnitTemperature.read(from:)(v30);
    Measurement.init(value:unit:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v31 = sub_1007871E4();
    static Precipitation.read(from:)(v31);
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    sub_1007866C4();
    static NSUnitLength.read(from:)(v32);
    sub_100786D78();
    Measurement.init(value:unit:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10078745C();
    sub_1007866C4();
    static NSUnitLength.read(from:)(v33);
    sub_100786D78();
    Measurement.init(value:unit:)();
    sub_100786E4C();
    sub_1007871E4();
    static ApparentPrecipitationIntensity.read(from:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CAC448, NSUnitPressure_ptr);
    v34 = sub_1007871E4();
    static NSUnitPressure.read(from:)(v34);
    sub_100786D78();
    Measurement.init(value:unit:)();
    sub_100786D6C();
    v35 = sub_1007871E4();
    static PressureTrend.read(from:)(v35);
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10078745C();
    sub_100786754();
    static NSUnitTemperature.read(from:)(v36);
    sub_100786D78();
    Measurement.init(value:unit:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10078745C();
    sub_100786754();
    static NSUnitTemperature.read(from:)(v37);
    sub_100786D78();
    Measurement.init(value:unit:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    static UVIndex.ExposureCategory.read(from:)(a1);
    sub_100787568();
    UVIndex.init(value:category:)();
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10078745C();
    sub_1007866C4();
    static NSUnitLength.read(from:)(v38);
    sub_100786D78();
    Measurement.init(value:unit:)();
    sub_1007875AC();
    v39 = sub_1007871E4();
    static Wind.read(from:)(v39);
    sub_1007875AC();
    sub_100786DCC();
    sub_100787568();
    sub_1007868C0();
    sub_10078667C();
    sub_1000BEA34();
    return HourWeather.init(date:cloudCover:cloudCoverLow:cloudCoverMid:cloudCoverHigh:cloudCoverByAltitude:condition:symbolName:dewPoint:humidity:isDaylight:precipitation:precipitationChance:precipitationAmount:snowfallAmount:apparentPrecipitationIntensity:pressure:pressureTrend:temperature:apparentTemperature:uvIndex:visibility:wind:)();
  }

  return result;
}

void HourWeather.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v21;
  a20 = v22;
  type metadata accessor for Wind();
  sub_1000037C4();
  __chkstk_darwin(v23);
  sub_1000038E4();
  sub_100003918(v24);
  v25 = type metadata accessor for UVIndex();
  v26 = sub_100003E5C(v25, &a16);
  __chkstk_darwin(v26);
  sub_1000038E4();
  sub_100003918(v27);
  v28 = type metadata accessor for PressureTrend();
  v29 = sub_100003E5C(v28, &a12);
  __chkstk_darwin(v29);
  sub_1000038E4();
  sub_100003990(v30);
  sub_10022C350(&qword_100CAC3D0, &unk_100AA0D60);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  v87 = v32;
  sub_1000038CC();
  type metadata accessor for ApparentPrecipitationIntensity();
  sub_1000037C4();
  v88 = v34;
  v89 = v33;
  __chkstk_darwin(v33);
  sub_1000038E4();
  v90 = v35;
  sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  v92 = v37;
  v93 = v36;
  __chkstk_darwin(v36);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  v91 = v39;
  sub_10000386C();
  __chkstk_darwin(v40);
  sub_10000E70C();
  v94 = v41;
  sub_1000038CC();
  type metadata accessor for Precipitation();
  sub_1000037C4();
  __chkstk_darwin(v42);
  sub_1000038E4();
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v95 = v44;
  v96 = v43;
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_10000E70C();
  sub_1000FD184(v47);
  type metadata accessor for WeatherCondition();
  sub_1000037C4();
  __chkstk_darwin(v48);
  sub_10002429C();
  type metadata accessor for CloudCoverByAltitude();
  sub_1000037C4();
  __chkstk_darwin(v49);
  sub_100005888();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v50);
  sub_1000106FC();
  HourWeather.date.getter();
  Date.write(to:)();
  v51 = sub_100786DF0();
  v52(v51);
  if (!v20)
  {
    HourWeather.cloudCover.getter();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    HourWeather.cloudCoverLow.getter();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100787250();
    HourWeather.cloudCoverMid.getter();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_100787250();
    HourWeather.cloudCoverHigh.getter();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1000371B0();
    sub_100787250();
    HourWeather.cloudCoverByAltitude.getter();
    sub_1000E0F90();
    CloudCoverByAltitude.write(to:)();
    v53 = sub_100786414();
    v54(v53);
    sub_1000371B0();
    sub_100787250();
    HourWeather.condition.getter();
    sub_1000E0F90();
    WeatherCondition.write(to:)();
    sub_100786414();
    sub_100786DB4();
    v59(v56, v57, v58);
    sub_100787250();
    HourWeather.symbolName.getter();
    sub_1000B0EE4();
    String.write(to:)();
    sub_1000E6714();

    sub_100787208();
    HourWeather.dewPoint.getter();
    sub_1000066E8();
    v60 = sub_1000E0F90();
    sub_100779504(v60, v61);
    v62 = *(v95 + 8);
    v62(0, v96);
    HourWeather.humidity.getter();
    sub_100786574();
    FixedSizeTypeBinaryCodable.write(to:)();
    HourWeather.isDaylight.getter();
    sub_100786574();
    FixedSizeTypeBinaryCodable.write(to:)();
    HourWeather.precipitation.getter();
    sub_100786754();
    Precipitation.write(to:)();
    v63 = sub_100786BB8();
    v64(v63);
    HourWeather.precipitationChance.getter();
    sub_1007865F0();
    HourWeather.precipitationAmount.getter();
    sub_10001CC78();
    sub_100786754();
    sub_100779504(v65, v66);
    v67 = *(v92 + 8);
    v67(v94, v93);
    HourWeather.snowfallAmount.getter();
    sub_10001CC78();
    v68 = sub_10078645C();
    sub_100779504(v68, v69);
    v67(v91, v93);
    HourWeather.apparentPrecipitationIntensity.getter();
    sub_10078645C();
    ApparentPrecipitationIntensity.write(to:)();
    (*(v88 + 8))(v90, v89);
    HourWeather.pressure.getter();
    v70 = sub_10078645C();
    sub_100779504(v70, v71);
    v72 = sub_1000419B4();
    v73(v72);
    sub_10000CC10();
    HourWeather.pressureTrend.getter();
    v74 = sub_10078645C();
    PressureTrend.write(to:)(v74);
    v75 = sub_100052748();
    v76(v75);
    sub_10000CC10();
    HourWeather.temperature.getter();
    sub_1000066E8();
    v77 = sub_10078645C();
    sub_100779504(v77, v78);
    v62(v87, v96);
    sub_10000CC10();
    HourWeather.apparentTemperature.getter();
    sub_1000066E8();
    v79 = sub_10078645C();
    sub_100779504(v79, v80);
    v62(v87, v96);
    sub_1000184C0();
    HourWeather.uvIndex.getter();
    UVIndex.value.getter();
    sub_10003BCF8();
    FixedSizeTypeBinaryCodable.write(to:)();
    UVIndex.category.getter();
    v81 = sub_100786630();
    UVIndex.ExposureCategory.write(to:)(v81);
    sub_10000E73C();
    v82 = sub_1007870B0();
    v84(v82, *(v83 - 256));
    sub_1000184C0();
    HourWeather.visibility.getter();
    sub_10001CC78();
    v85 = sub_100040D14();
    sub_100779504(v85, v86);
    v67(0, v93);
    sub_1000184C0();
    HourWeather.wind.getter();
    sub_100040D14();
    Wind.write(to:)();
    sub_1001994E4();
    v55();
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void sub_10076719C()
{
  sub_100786ED8();
  v2 = static String.read(from:)();
  if (!v0)
  {
    v4 = v2;
    v5 = v3;
    sub_1007863CC();
    static Optional<A>.read(from:)();
    sub_1007863CC();
    v6 = static String.read(from:)();
    v8 = v7;
    sub_1007863CC();
    static String.read(from:)();
    v20 = v9;
    sub_1007863CC();
    v15 = static String.read(from:)();
    v16 = v10;
    sub_1007863CC();
    v13 = static String.read(from:)();
    v14 = v11;
    sub_1007863CC();
    static Optional<A>.read(from:)();
    *v1 = v4;
    *(v1 + 8) = v5;
    *(v1 + 16) = v18;
    *(v1 + 24) = v19;
    *(v1 + 32) = v6;
    *(v1 + 40) = v8;
    sub_100787130(v20, v12, v13, v14, v15, v16);
    *(v1 + 96) = v17;
  }
}

uint64_t sub_100767344()
{
  sub_1007863D8();
  result = String.write(to:)();
  if (!v0)
  {
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    v2 = sub_100786408();
    sub_100787754(v2, v3, v4);
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    v5 = sub_100786408();
    return sub_100787754(v5, v6, v7);
  }

  return result;
}

void sub_100767444()
{
  sub_10000E8AC();
  v3 = sub_1007874A4();
  v4 = type metadata accessor for WeatherConditionBackgroundTimeData(v3);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000106FC();
  v6 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel(0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100005888();
  sub_1000B0CA4();
  v8 = static String.read(from:)();
  if (!v1)
  {
    v10 = v8;
    v11 = v9;
    sub_1000B0CA4();
    static Optional<A>.read(from:)();
    sub_1000B0CA4();
    v20 = static String.read(from:)();
    v23 = v12;
    sub_1000B0CA4();
    v13 = static String.read(from:)();
    v15 = v14;
    v19 = v13;
    sub_1000B0CA4();
    sub_100772B80();
    sub_10078686C();
    v16 = sub_10000C8E8();
    sub_100187600(v16, v17);
    *v0 = v10;
    v0[1] = v11;
    v0[2] = v21;
    v0[3] = v22;
    v0[4] = v20;
    v0[5] = v23;
    v0[6] = v19;
    v0[7] = v15;
    v18 = type metadata accessor for ListPreprocessedDataModel(0);
    sub_100187600(v2, v0 + *(v18 + 32));
  }

  sub_10002FE90();
  sub_10000C8F4();
}

uint64_t sub_1007675FC()
{
  sub_1007863D8();
  result = String.write(to:)();
  if (!v0)
  {
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    sub_1000C8410();
    Optional<A>.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    type metadata accessor for ListPreprocessedDataModel(0);
    sub_10019224C();
    Date.write(to:)();
    type metadata accessor for WeatherConditionBackgroundTimeData(0);
    sub_10022C350(&qword_100CA58B8, &qword_100A2FD30);
    sub_100786854();
    sub_10077C574(v2);
    sub_1000D3C40();
    sub_10077C574(v3);
    sub_100052444();
    sub_10022C350(&qword_100CACCC0, &unk_100A5D780);
    sub_1000E1454();
    sub_10077C574(v4);
    sub_1000888CC();
    sub_10077C574(v5);
    return sub_100786728();
  }

  return result;
}

void static MinuteCondition.read(from:)()
{
  sub_10000E8AC();
  sub_1007874A4();
  v1 = type metadata accessor for PrecipitationShift();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_100049BF8();
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000115E8();
  type metadata accessor for Date();
  sub_10000548C();
  __chkstk_darwin(v5);
  sub_100005888();
  sub_100786AC4();
  static Date.read(from:)();
  if (!v0)
  {
    sub_10008650C();
    static Optional<A>.read(from:)();
    sub_100786AC4();
    static String.read(from:)();
    sub_100786AC4();
    static String.read(from:)();
    sub_100786AC4();
    static PrecipitationShift.read(from:)();
    sub_1007867B4();
    MinuteCondition.init(date:expirationDate:shortDescription:longDescription:shift:)();
  }

  sub_100041B68();
  sub_10000C8F4();
}

void MinuteCondition.write(to:)()
{
  sub_10000E8AC();
  sub_1002E5718();
  type metadata accessor for PrecipitationShift();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_100005888();
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_100037CB0();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_10002429C();
  MinuteCondition.date.getter();
  Date.write(to:)();
  v5 = sub_1000E1530();
  if (!v0)
  {
    v6(v5);
    MinuteCondition.expirationDate.getter();
    sub_1000E17CC();
    Optional<A>.write(to:)();
    sub_1006827B8(v1, &unk_100CB2CF0);
    v7 = MinuteCondition.shortDescription.getter();
    sub_1007870F0(v7, v8);

    v9 = MinuteCondition.longDescription.getter();
    sub_1007870F0(v9, v10);

    sub_1007873F0();
    MinuteCondition.shift.getter();
    PrecipitationShift.write(to:)();
    v5 = sub_100037B8C();
  }

  v6(v5);
  sub_1000C8EF8();
  sub_10000C8F4();
}

void static MinuteSummary.read(from:)(uint64_t a1)
{
  sub_1007865BC();
  v2 = sub_10022C350(&qword_100CD65B0, &qword_100A7F3A0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000183C0();
  type metadata accessor for Precipitation();
  sub_100024A44();
  __chkstk_darwin(v4);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v5);
  sub_100030230();
  v6 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100037CB0();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v8);
  sub_100049BF8();
  static Date.read(from:)();
  if (!v1)
  {
    static Optional<A>.read(from:)();
    v9 = sub_100787084();
    static Precipitation.read(from:)(v9);
    v10 = sub_100787084();
    static Precipitation.read(from:)(v10);
    sub_1000BC6E4();
    static FixedSizeTypeBinaryCodable.read(from:)();
    type metadata accessor for ApparentPrecipitationIntensity();
    sub_10078680C();
    sub_10077C574(v11);
    sub_1000B9A2C();
    sub_10077C574(v12);
    static Optional<A>.read(from:)();
    MinuteSummary.init(date:expirationDate:precipitation:precipitationKind:precipitationChance:apparentPrecipitationIntensity:)();
  }

  sub_10002FE90();
  sub_10009D16C();
}

void MinuteSummary.write(to:)()
{
  sub_10000E8AC();
  sub_10022C350(&qword_100CD65B0, &qword_100A7F3A0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v16 = v4;
  sub_1000038CC();
  type metadata accessor for Precipitation();
  sub_1000037C4();
  v17 = v6;
  v18 = v5;
  __chkstk_darwin(v5);
  sub_1000088C0();
  __chkstk_darwin(v7);
  sub_100030230();
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000132E8();
  type metadata accessor for Date();
  sub_10000548C();
  __chkstk_darwin(v9);
  sub_1000106FC();
  MinuteSummary.date.getter();
  Date.write(to:)();
  v10 = sub_10078670C();
  v11(v10);
  if (!v0)
  {
    MinuteSummary.expirationDate.getter();
    sub_100786754();
    Optional<A>.write(to:)();
    sub_1006827B8(v2, &unk_100CB2CF0);
    MinuteSummary.precipitation.getter();
    sub_100786598();
    Precipitation.write(to:)();
    v12 = *(v17 + 8);
    v12(v1, v18);
    MinuteSummary.precipitationKind.getter();
    Precipitation.write(to:)();
    v13 = sub_1002E52D0();
    (v12)(v13);
    MinuteSummary.precipitationChance.getter();
    sub_1000236E0();
    FixedSizeTypeBinaryCodable.write(to:)();
    MinuteSummary.apparentPrecipitationIntensity.getter();
    sub_1000E6658();
    sub_10077C574(v14);
    sub_1000B9A2C();
    sub_10077C574(v15);
    Optional<A>.write(to:)();
    sub_1006827B8(v16, &qword_100CD65B0);
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void static MinuteWeather.read(from:)(uint64_t a1)
{
  sub_100786DFC();
  v3 = v2;
  v4 = type metadata accessor for ApparentPrecipitationIntensity();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100049BF8();
  sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10078647C();
  type metadata accessor for Precipitation();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100006168();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v8);
  sub_1000106FC();
  static Date.read(from:)();
  if (!v1)
  {
    static Precipitation.read(from:)(v3);
    static FixedSizeTypeBinaryCodable.read(from:)();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
    static NSUnitSpeed.read(from:)(v3);
    Measurement.init(value:unit:)();
    static ApparentPrecipitationIntensity.read(from:)();
    sub_100049C10();
    sub_1007871FC();
    MinuteWeather.init(date:precipitation:precipitationChance:precipitationIntensity:apparentPrecipitationIntensity:)();
  }

  sub_100786E18();
}

void MinuteWeather.write(to:)()
{
  sub_10000E8AC();
  type metadata accessor for ApparentPrecipitationIntensity();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000038E4();
  sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  sub_1000038CC();
  type metadata accessor for Precipitation();
  sub_10000FB48();
  __chkstk_darwin(v4);
  sub_10002429C();
  type metadata accessor for Date();
  sub_100024A44();
  __chkstk_darwin(v5);
  sub_100049BF8();
  MinuteWeather.date.getter();
  Date.write(to:)();
  v6 = sub_1000059A0();
  v7(v6);
  if (!v0)
  {
    sub_1007873F0();
    MinuteWeather.precipitation.getter();
    sub_1007870E0();
    Precipitation.write(to:)();
    v10 = sub_100037B8C();
    v11(v10, v1);
    MinuteWeather.precipitationChance.getter();
    FixedSizeTypeBinaryCodable.write(to:)();
    sub_1007873F0();
    MinuteWeather.precipitationIntensity.getter();
    sub_100028AC8();
    v12 = sub_1007870E0();
    sub_100779504(v12, v13);
    v14 = sub_100037B8C();
    v15(v14);
    sub_1007873F0();
    MinuteWeather.apparentPrecipitationIntensity.getter();
    sub_1007870E0();
    ApparentPrecipitationIntensity.write(to:)();
    v16 = sub_100037B8C();
    v9(v16, v8);
  }

  sub_10000C8F4();
}

void static Article.read(from:)()
{
  sub_10000E8AC();
  sub_1000E67F4();
  type metadata accessor for Locale();
  sub_10000FB48();
  __chkstk_darwin(v1);
  sub_1000106FC();
  sub_1007863CC();
  static String.read(from:)();
  if (!v0)
  {
    sub_1007863CC();
    static Array<A>.read(from:)();
    sub_1007863CC();
    static Locale.read(from:)();
    sub_1007863CC();
    static Optional<A>.read(from:)();
    sub_1007863CC();
    static Array<A>.read(from:)();
    type metadata accessor for UUID();
    sub_1007863CC();
    static Array<A>.read(from:)();
    sub_1007874C4();
    Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void Article.write(to:)()
{
  sub_1000D3C1C();
  sub_100071804();
  type metadata accessor for Locale();
  sub_100024A44();
  __chkstk_darwin(v2);
  sub_100049BF8();
  v3 = Article.id.getter();
  sub_100195570(v3, v4);
  sub_100786800();
  if (!v1)
  {

    Article.supportedStorefronts.getter();
    sub_100031474();
    Array<A>.write(to:)();
    sub_100786800();

    if (v0)
    {
      goto LABEL_5;
    }

    sub_100787008();
    Article.locale.getter();
    Locale.write(to:)();
    v5 = sub_1007864D4();
    v6(v5);
    Article.headlineOverride.getter();
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    sub_10000CDB0();
    Optional<A>.write(to:)();

    Article.phenomena.getter();
    sub_100031474();
    Array<A>.write(to:)();
    sub_100786800();

    Article.alertIds.getter();
    sub_1000038D8();
    type metadata accessor for UUID();
    sub_100031474();
    Array<A>.write(to:)();
    sub_100786800();
  }

LABEL_5:
  sub_1002E5564();
  sub_100088758();
}

uint64_t static ArticlePlacementLocation.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 0xF)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for ArticlePlacementLocation();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t ArticlePlacementLocation.write(to:)()
{
  sub_100071804();
  type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  __chkstk_darwin(v0);
  v2 = sub_100014DD8(v1, v8);
  v3(v2);
  v4 = sub_100045438();
  v6 = v5(v4);
  if (v6 == enum case for ArticlePlacementLocation.airQualityDetail(_:) || v6 == enum case for ArticlePlacementLocation.feelsLikeDetail(_:) || v6 == enum case for ArticlePlacementLocation.humidityDetail(_:) || v6 == enum case for ArticlePlacementLocation.moonDetail(_:) || v6 == enum case for ArticlePlacementLocation.precipitationDetail(_:) || v6 == enum case for ArticlePlacementLocation.precipitationAveragesDetail(_:) || v6 == enum case for ArticlePlacementLocation.pressureDetail(_:) || v6 == enum case for ArticlePlacementLocation.severe(_:) || v6 == enum case for ArticlePlacementLocation.sunriseSunsetDetail(_:) || v6 == enum case for ArticlePlacementLocation.temperatureDetail(_:) || v6 == enum case for ArticlePlacementLocation.trend(_:) || v6 == enum case for ArticlePlacementLocation.temperatureAveragesDetail(_:) || v6 == enum case for ArticlePlacementLocation.uvIndexDetail(_:) || v6 == enum case for ArticlePlacementLocation.visibilityDetail(_:) || v6 == enum case for ArticlePlacementLocation.windDetail(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    result = sub_100786F40();
    __break(1u);
  }

  return result;
}

uint64_t static News.read(from:)()
{
  sub_10000C76C();
  type metadata accessor for ArticlePlacement();
  sub_100786A94();
  sub_10077C574(v1);
  sub_100043A8C();
  sub_10077C574(v2);
  sub_100025214();
  result = static Array<A>.read(from:)();
  if (!v0)
  {
    return News.init(placements:)();
  }

  return result;
}

uint64_t News.write(to:)()
{
  sub_1000BB558();
  News.placements.getter();
  sub_1000038D8();
  type metadata accessor for ArticlePlacement();
  sub_100786A94();
  sub_10077C574(v0);
  sub_100043A8C();
  v2 = sub_10077C574(v1);
  sub_1000C8B34(v2);
  sub_100786800();
}

void static ArticlePlacement.read(from:)()
{
  sub_1000D3C1C();
  sub_10000C76C();
  v1 = type metadata accessor for ArticlePlacementLocation();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_100005888();
  type metadata accessor for Article();
  sub_10077C574(&unk_100CD65D8);
  sub_1007865D8();
  v4 = sub_10077C574(v3);
  sub_100786C28(v4);
  if (!v0)
  {
    v5 = sub_100786CC4();
    static ArticlePlacementLocation.read(from:)(v5);
    sub_10000C8E8();
    ArticlePlacement.init(articles:location:)();
  }

  sub_100786C88();
  sub_100088758();
}

void ArticlePlacement.write(to:)()
{
  sub_10000E8AC();
  sub_1000926C0();
  type metadata accessor for ArticlePlacementLocation();
  sub_10000548C();
  __chkstk_darwin(v1);
  sub_100006168();
  ArticlePlacement.articles.getter();
  sub_100787498();
  type metadata accessor for Article();
  sub_10077C574(&unk_100CD65D8);
  sub_100786F08(&unk_100CD65E0);
  sub_100192570();
  Array<A>.write(to:)();
  sub_1007874D0();

  if (!v0)
  {
    ArticlePlacement.location.getter();
    sub_1007867F4();
    ArticlePlacementLocation.write(to:)();
    v2 = sub_100786540();
    v3(v2);
  }

  sub_1001333F8();
  sub_10000C8F4();
}

void sub_100769530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  sub_100786560();
  type metadata accessor for News();
  sub_100024A44();
  __chkstk_darwin(v15);
  sub_100049BF8();
  sub_1000BC6E4();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v13)
  {
    if (a13 == 2)
    {
      type metadata accessor for NewsArticlePlacement(0);
      sub_100786A7C();
      sub_10077C574(v20);
      sub_100786B58(&unk_100CD6810);
      sub_1000314C8();
      sub_1000523E0();
      *v14 = static Array<A>.read(from:)();
      type metadata accessor for NewsDataModel(0);
      sub_1007864E4();
    }

    else
    {
      if (a13 != 1)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v22 = sub_10077C574(v21);
        v23 = sub_100074D7C(v22);
        sub_10002C964(v23, v24);
        sub_100006494();
        (*(v25 + 104))();
        swift_willThrow();
        goto LABEL_2;
      }

      type metadata accessor for ArticlePlacement();
      sub_100786AAC();
      sub_10077C574(v16);
      sub_100043A8C();
      sub_10077C574(v17);
      sub_1000314C8();
      sub_1007871A8();
      static Array<A>.read(from:)();
      News.init(placements:)();
      v18 = sub_1000D42A0();
      v19(v18);
      type metadata accessor for NewsDataModel(0);
      sub_1007864F4();
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_2:
  sub_10002FE90();
  sub_10000C8F4();
}

void sub_100769770()
{
  sub_10000E8AC();
  sub_100786514();
  type metadata accessor for News();
  sub_100017D50();
  __chkstk_darwin(v2);
  sub_1000106FC();
  type metadata accessor for NewsDataModel(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  v4 = sub_100786790();
  sub_1000E82F4(v4, v0);
  sub_100053370();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001706C0();
    sub_1007863E4();
    FixedSizeTypeBinaryCodable.write(to:)();
    if (!v1)
    {
      type metadata accessor for NewsArticlePlacement(0);
      sub_100786A7C();
      sub_10077C574(v5);
      sub_100786B58(&unk_100CD6810);
      sub_1000E14AC();
      sub_10078660C();
      sub_1007877CC(v6, v7, v8, v9, v10);
    }

    goto LABEL_8;
  }

  v11 = sub_100786504();
  v12(v11);
  sub_1007863E4();
  FixedSizeTypeBinaryCodable.write(to:)();
  if (!v1)
  {
    News.placements.getter();
    sub_1000038D8();
    type metadata accessor for ArticlePlacement();
    sub_100786AAC();
    sub_10077C574(v15);
    sub_100043A8C();
    sub_10077C574(v16);
    sub_1000E14AC();
    Array<A>.write(to:)();
    v17 = sub_10000810C();
    v18(v17);
LABEL_8:

    goto LABEL_9;
  }

  v13 = sub_10000810C();
  v14(v13);
LABEL_9:
  sub_1007865A4();
  sub_10000C8F4();
}

void static NextHourMinute.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, double a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100786DFC();
  HourPerceivedIntensity = type metadata accessor for NextHourPerceivedIntensity();
  v32 = sub_100003810(HourPerceivedIntensity);
  __chkstk_darwin(v32);
  sub_100049BF8();
  sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_10000548C();
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000115E8();
  type metadata accessor for Date();
  sub_10000FB48();
  __chkstk_darwin(v34);
  sub_1000317E4();
  sub_1007867A8();
  static Date.read(from:)();
  if (!v30)
  {
    sub_1007863F0();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_1007863F0();
    static FixedSizeTypeBinaryCodable.read(from:)();
    sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
    v35 = sub_100786AC4();
    static NSUnitSpeed.read(from:)(v35);
    Measurement.init(value:unit:)();
    sub_100786AC4();
    static NextHourPerceivedIntensity.read(from:)();
    NextHourMinute.init(startDate:precipitationChance:precipitationIntensity:perceivedIntensity:)();
  }

  sub_100786E18();
}

void NextHourMinute.write(to:)()
{
  sub_10000E8AC();
  sub_100787498();
  type metadata accessor for NextHourPerceivedIntensity();
  sub_1000037C4();
  v14 = v3;
  v15 = v2;
  __chkstk_darwin(v2);
  sub_10001BA34();
  sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_100017D50();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100037CB0();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_10002429C();
  NextHourMinute.startDate.getter();
  Date.write(to:)();
  if (v0)
  {
    v6 = sub_1000E1530();
    v7(v6);
  }

  else
  {
    v8 = sub_1000E1530();
    v9(v8);
    NextHourMinute.precipitationChance.getter();
    FixedSizeTypeBinaryCodable.write(to:)();
    NextHourMinute.precipitationIntensity.getter();
    sub_100028AC8();
    sub_1000E17CC();
    sub_100779504(v10, v11);
    v12 = sub_10000810C();
    v13(v12);
    NextHourMinute.perceivedIntensity.getter();
    sub_100787244();
    NextHourPerceivedIntensity.write(to:)();
    (*(v14 + 8))(v1, v15);
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

uint64_t static NextHourPerceivedIntensityScale.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_10078643C();
    if (v3)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for NextHourPerceivedIntensityScale();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

void static NextHourSummary.read(from:)(uint64_t a1)
{
  sub_1007865BC();
  v2 = sub_10022C350(&qword_100CD65E8, &qword_100A7F3A8);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v4 = sub_10022C350(&qword_100CD65B0, &qword_100A7F3A0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  type metadata accessor for Precipitation();
  sub_1000037C4();
  __chkstk_darwin(v6);
  sub_1000317E4();
  v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000115E8();
  type metadata accessor for Date();
  sub_100017D50();
  __chkstk_darwin(v9);
  sub_1000520E4();
  static Date.read(from:)();
  if (!v1)
  {
    sub_1000B98F4();
    static Optional<A>.read(from:)();
    static Precipitation.read(from:)(0);
    sub_100786EF0(0);
    type metadata accessor for ApparentPrecipitationIntensity();
    sub_10078680C();
    sub_10077C574(v10);
    sub_1000B9A2C();
    sub_10077C574(v11);
    sub_100787480();
    sub_10078738C();
    static Optional<A>.read(from:)();
    type metadata accessor for NextHourPerceivedIntensity();
    sub_10077C574(&unk_100CD65F0);
    sub_1007863C0();
    sub_10077C574(v12);
    static Optional<A>.read(from:)();
    NextHourSummary.init(startDate:endDate:precipitation:precipitationChance:apparentPrecipitationIntensity:perceivedIntensity:)();
  }

  sub_1007865A4();
  sub_10009D16C();
}

void NextHourSummary.write(to:)()
{
  sub_10000E8AC();
  sub_10022C350(&qword_100CD65E8, &qword_100A7F3A8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_1000039BC();
  v15 = v3;
  sub_10022C350(&qword_100CD65B0, &qword_100A7F3A0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v16 = v5;
  sub_1000038CC();
  type metadata accessor for Precipitation();
  sub_1000037C4();
  __chkstk_darwin(v6);
  sub_100049BF8();
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100022E2C();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v8);
  sub_1000520E4();
  NextHourSummary.startDate.getter();
  Date.write(to:)();
  v9 = sub_10000CDBC();
  v10(v9);
  if (!v0)
  {
    NextHourSummary.endDate.getter();
    Optional<A>.write(to:)();
    sub_1006827B8(v1, &unk_100CB2CF0);
    NextHourSummary.precipitation.getter();
    Precipitation.write(to:)();
    v11 = sub_100052730();
    v12(v11);
    NextHourSummary.precipitationChance.getter();
    FixedSizeTypeBinaryCodable.write(to:)();
    NextHourSummary.apparentPrecipitationIntensity.getter();
    sub_1000E6658();
    sub_10077C574(v13);
    sub_1000B9A2C();
    sub_10077C574(v14);
    sub_100786FC0();
    Optional<A>.write(to:)();
    sub_1006827B8(v16, &qword_100CD65B0);
    NextHourSummary.perceivedIntensity.getter();
    sub_10077C574(&unk_100CD65F0);
    sub_100787314(&unk_100CD65F8);
    sub_100786FC0();
    Optional<A>.write(to:)();
    sub_1006827B8(v15, &qword_100CD65E8);
  }

  sub_100036EA0();
  sub_10000C8F4();
}

void static MoonEvents.read(from:)()
{
  sub_1000D3C1C();
  sub_100033FF8();
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v3);
  sub_1000B9E20();
  v4 = sub_100786EAC();
  static MoonPhase.read(from:)(v4);
  if (!v0)
  {
    type metadata accessor for Date();
    sub_100020B28();
    static Optional<A>.read(from:)();
    sub_100020B28();
    static Optional<A>.read(from:)();
    MoonEvents.init(phase:moonrise:moonset:)();
  }

  sub_100786E70();
  sub_100088758();
}

void MoonEvents.write(to:)()
{
  sub_1000D3C1C();
  sub_100787048();
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100030084();
  __chkstk_darwin(v4);
  sub_10004E424();
  MoonEvents.phase.getter();
  v5 = sub_100786574();
  MoonPhase.write(to:)(v5);
  if (!v0)
  {
    MoonEvents.moonrise.getter();
    Optional<A>.write(to:)();
    sub_1006827B8(v2, &unk_100CB2CF0);
    MoonEvents.moonset.getter();
    sub_1000E6768();
    Optional<A>.write(to:)();
    sub_1006827B8(v1, &unk_100CB2CF0);
  }

  sub_100786C88();
  sub_100088758();
}

uint64_t sub_10076AB24(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    result = sub_100786BE4(result, v3, v4, v5, v6, v7, v8, v9, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
    if (result >= 8u)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v11 = sub_10077C574(v10);
      v12 = sub_100074D7C(v11);
      sub_10002C964(v12, v13);
      sub_100006494();
      (*(v14 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10076AD40(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    result = v13;
    if (v13 != 3 && v13 != 2)
    {
      if (v13 == 1)
      {
        sub_1000BC6E4();
        static FixedSizeTypeBinaryCodable.read(from:)();
        sub_1000BC6E4();
        static FixedSizeTypeBinaryCodable.read(from:)();
        v3 = sub_10000CDB0();
        v4 = static UVIndex.ExposureCategory.read(from:)(v3);
        if (v11)
        {
          v5 = 256;
        }

        else
        {
          v5 = 0;
        }

        return (v5 | v12) & 0xFF00FFFF | (v4 << 16);
      }

      else
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F6D0();
        v7 = sub_10077C574(v6);
        v8 = sub_100074D7C(v7);
        sub_10002C964(v8, v9);
        sub_100006494();
        (*(v10 + 104))();
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_10076AEA4(uint64_t a1, char a2)
{
  if (a2 == 2 || a2 == 3)
  {
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  sub_100787430();
  result = sub_10078779C();
  if (!v2)
  {
    FixedSizeTypeBinaryCodable.write(to:)();
    FixedSizeTypeBinaryCodable.write(to:)();
    return UVIndex.ExposureCategory.write(to:)(a1);
  }

  return result;
}

uint64_t static Precipitation.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 6)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for Precipitation();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t Precipitation.write(to:)()
{
  sub_100071804();
  type metadata accessor for Precipitation();
  sub_1000037C4();
  __chkstk_darwin(v0);
  v2 = sub_100014DD8(v1, v8);
  v3(v2);
  v4 = sub_100045438();
  v6 = v5(v4);
  if (v6 == enum case for Precipitation.none(_:) || v6 == enum case for Precipitation.hail(_:) || v6 == enum case for Precipitation.mixed(_:) || v6 == enum case for Precipitation.rain(_:) || v6 == enum case for Precipitation.sleet(_:) || v6 == enum case for Precipitation.snow(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    result = sub_100786F40();
    __break(1u);
  }

  return result;
}

void PrecipitationAmount.write(to:)()
{
  sub_10000E8AC();
  v2 = v1;
  v3 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v5);
  sub_10000C930();
  __chkstk_darwin(v6);
  sub_10002137C();
  __chkstk_darwin(v7);
  sub_100031DB0();
  __chkstk_darwin(v8);
  sub_100030568();
  __chkstk_darwin(v9);
  sub_10003BA64();
  PrecipitationAmount.pastHour.getter();
  sub_10001CC78();
  v10 = sub_10078758C();
  sub_100779504(v10, &qword_100CAB938);
  v11 = sub_100786EB8();
  v12(v11);
  if (!v2)
  {
    sub_100787060();
    PrecipitationAmount.pastSixHours.getter();
    sub_10001CC78();
    sub_100786598();
    sub_100779504(v13, v14);
    v15 = sub_1000E1618();
    v3(v15);
    PrecipitationAmount.pastTwentyFourHours.getter();
    sub_10001CC78();
    sub_100779504(v26, v16);
    v17 = sub_1007875D8();
    (v3)(v17, v0);
    PrecipitationAmount.nextHour.getter();
    sub_10001CC78();
    sub_100779504(v26, v18);
    v19 = sub_1007871B4();
    v3(v19);
    sub_100787060();
    PrecipitationAmount.nextSixHours.getter();
    sub_10001CC78();
    sub_100786598();
    sub_100779504(v20, v21);
    v22 = sub_1000E1618();
    v3(v22);
    sub_100787060();
    PrecipitationAmount.nextTwentyFourHours.getter();
    sub_10001CC78();
    sub_100786598();
    sub_100779504(v23, v24);
    v25 = sub_1000E1618();
    v3(v25);
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void static PrecipitationAmountByType.read(from:)(uint64_t a1)
{
  sub_1007865BC();
  v3 = v2;
  v4 = type metadata accessor for SnowfallAmount();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_10001BA34();
  sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_100024A44();
  __chkstk_darwin(v6);
  sub_100003C38();
  sub_100030568();
  __chkstk_darwin(v7);
  sub_100021390();
  __chkstk_darwin(v8);
  sub_1000B8A18();
  __chkstk_darwin(v9);
  sub_1000886FC();
  __chkstk_darwin(v10);
  sub_10004E424();
  sub_100786760();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v1)
  {
    sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    static NSUnitLength.read(from:)(v3);
    sub_100786F8C();
    Measurement.init(value:unit:)();
    sub_1000825A8();
    v11 = sub_100786D9C();
    static NSUnitLength.read(from:)(v11);
    sub_100786F8C();
    Measurement.init(value:unit:)();
    sub_1000825A8();
    v12 = sub_100786D9C();
    static NSUnitLength.read(from:)(v12);
    sub_100786F8C();
    Measurement.init(value:unit:)();
    sub_1000825A8();
    v13 = sub_100786D9C();
    static NSUnitLength.read(from:)(v13);
    sub_100786F8C();
    Measurement.init(value:unit:)();
    sub_1000825A8();
    v14 = sub_100786D9C();
    static NSUnitLength.read(from:)(v14);
    sub_100786F8C();
    Measurement.init(value:unit:)();
    static SnowfallAmount.read(from:)(0);
    PrecipitationAmountByType.init(hail:mixed:rainfall:sleet:precipitation:snowfallAmount:)();
  }

  sub_100036EA0();
  sub_10009D16C();
}

void PrecipitationAmountByType.write(to:)()
{
  sub_10000E8AC();
  sub_1000926C0();
  v24 = type metadata accessor for SnowfallAmount();
  sub_1000037C4();
  v26 = v5;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v25 = v7;
  sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_10000548C();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v11);
  sub_100079578();
  __chkstk_darwin(v12);
  sub_100031DB0();
  __chkstk_darwin(v13);
  sub_100021390();
  __chkstk_darwin(v14);
  sub_10004E424();
  PrecipitationAmountByType.hail.getter();
  sub_10001CC78();
  sub_100779504(v2, &qword_100CAB938);
  v15 = *(v9 + 8);
  v15(v4, v0);
  if (!v1)
  {
    PrecipitationAmountByType.mixed.getter();
    sub_10001CC78();
    sub_100779504(v2, v16);
    v15(v3, v0);
    PrecipitationAmountByType.rainfall.getter();
    sub_10001CC78();
    sub_100779504(v2, v17);
    v18 = sub_1000B98F4();
    (v15)(v18);
    sub_1007873E4();
    PrecipitationAmountByType.sleet.getter();
    sub_10001CC78();
    sub_100031268();
    sub_100779504(v19, v20);
    v21 = sub_1000370B0();
    (v15)(v21);
    PrecipitationAmountByType.precipitation.getter();
    sub_10001CC78();
    sub_100779504(v2, v22);
    v23 = sub_100049C10();
    (v15)(v23);
    sub_1007873E4();
    PrecipitationAmountByType.snowfallAmount.getter();
    sub_100031268();
    SnowfallAmount.write(to:)();
    (*(v26 + 8))(v25, v24);
  }

  sub_1007865A4();
  sub_10000C8F4();
}

void sub_10076BCCC(uint64_t a1, uint64_t a2)
{
  sub_1007865BC();
  v29 = v9;
  v11 = v10;
  sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_100024A44();
  __chkstk_darwin(v12);
  sub_1000088C0();
  __chkstk_darwin(v13);
  sub_1000B8A18();
  __chkstk_darwin(v14);
  sub_100031DB0();
  __chkstk_darwin(v15);
  sub_10002137C();
  __chkstk_darwin(v16);
  sub_100021390();
  __chkstk_darwin(v17);
  sub_1002E4C00();
  sub_100786760();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v3)
  {
    sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    v18 = sub_10078646C();
    v19 = static NSUnitLength.read(from:)(v18);
    sub_1007872C8(v19, v20);
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v21 = sub_10078646C();
    v22 = static NSUnitLength.read(from:)(v21);
    sub_1007872C8(v22, v23);
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v24 = sub_10078646C();
    v25 = static NSUnitLength.read(from:)(v24);
    sub_1007872C8(v25, v26);
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v27 = sub_10078646C();
    static NSUnitLength.read(from:)(v27);
    Measurement.init(value:unit:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    v28 = sub_100786D9C();
    static NSUnitLength.read(from:)(v28);
    Measurement.init(value:unit:)();
    sub_10011948C();
    static FixedSizeTypeBinaryCodable.read(from:)();
    static NSUnitLength.read(from:)(v11);
    Measurement.init(value:unit:)();
    v29(v8, v4, v6, v7, v2, v5);
  }

  sub_1007865A4();
  sub_10009D16C();
}

void SnowfallAmount.write(to:)()
{
  sub_10000E8AC();
  v2 = v1;
  v3 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v5);
  sub_10000C930();
  __chkstk_darwin(v6);
  sub_10002137C();
  __chkstk_darwin(v7);
  sub_100031DB0();
  __chkstk_darwin(v8);
  sub_100030568();
  __chkstk_darwin(v9);
  sub_10003BA64();
  SnowfallAmount.amount.getter();
  sub_10001CC78();
  v10 = sub_10078758C();
  sub_100779504(v10, &qword_100CAB938);
  v11 = sub_100786EB8();
  v12(v11);
  if (!v2)
  {
    sub_100787060();
    SnowfallAmount.maximum.getter();
    sub_10001CC78();
    sub_100786598();
    sub_100779504(v13, v14);
    v15 = sub_1000E1618();
    v3(v15);
    SnowfallAmount.minimum.getter();
    sub_10001CC78();
    sub_100779504(v26, v16);
    v17 = sub_1007875D8();
    (v3)(v17, v0);
    SnowfallAmount.amountLiquidEquivalent.getter();
    sub_10001CC78();
    sub_100779504(v26, v18);
    v19 = sub_1007871B4();
    v3(v19);
    sub_100787060();
    SnowfallAmount.maximumLiquidEquivalent.getter();
    sub_10001CC78();
    sub_100786598();
    sub_100779504(v20, v21);
    v22 = sub_1000E1618();
    v3(v22);
    sub_100787060();
    SnowfallAmount.minimumLiquidEquivalent.getter();
    sub_10001CC78();
    sub_100786598();
    sub_100779504(v23, v24);
    v25 = sub_1000E1618();
    v3(v25);
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void static PrecipitationShift.read(from:)()
{
  sub_1000D3C1C();
  sub_10000C76C();
  v1 = type metadata accessor for PrecipitationShift.Kind();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_100005888();
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100030084();
  __chkstk_darwin(v5);
  sub_10003BA64();
  type metadata accessor for Date();
  sub_100053370();
  static Optional<A>.read(from:)();
  if (!v0)
  {
    sub_100053370();
    static Optional<A>.read(from:)();
    v6 = sub_100786E94();
    static PrecipitationShift.Kind.read(from:)(v6);
    sub_10002C598();
    PrecipitationShift.init(date:nextDate:kind:)();
  }

  sub_100088758();
}

void PrecipitationShift.write(to:)()
{
  sub_10000E8AC();
  sub_1002E5718();
  v8 = type metadata accessor for PrecipitationShift.Kind();
  sub_1000037C4();
  v9 = v4;
  __chkstk_darwin(v5);
  sub_100005888();
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100020E28();
  __chkstk_darwin(v7);
  sub_1000B9E20();
  PrecipitationShift.date.getter();
  Optional<A>.write(to:)();
  sub_1006827B8(v2, &unk_100CB2CF0);
  if (!v0)
  {
    PrecipitationShift.nextDate.getter();
    sub_100786E7C();
    sub_1000E17CC();
    Optional<A>.write(to:)();
    sub_1006827B8(v3, &unk_100CB2CF0);
    PrecipitationShift.kind.getter();
    sub_100786FC0();
    PrecipitationShift.Kind.write(to:)();
    (*(v9 + 8))(v1, v8);
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

uint64_t static PrecipitationShift.Kind.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    if ((v10 - 1) >= 0x40u && v10 - 65 >= 0x25)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v6 = sub_10077C574(v5);
      v7 = sub_100074D7C(v6);
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_10078658C();
      type metadata accessor for PrecipitationShift.Kind();
      sub_100003A9C();
      v3 = sub_100031474();
      return v4(v3);
    }
  }

  return result;
}

uint64_t PrecipitationShift.Kind.write(to:)()
{
  sub_100071804();
  type metadata accessor for PrecipitationShift.Kind();
  sub_1000037C4();
  __chkstk_darwin(v0);
  v2 = sub_100014DD8(v1, v8);
  v3(v2);
  v4 = sub_100045438();
  v6 = v5(v4);
  if (v6 == enum case for PrecipitationShift.Kind.possibleDrizzle(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleDrizzleStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleDrizzleStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleDrizzleStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleDrizzleStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.drizzle(_:)
    || v6 == enum case for PrecipitationShift.Kind.drizzleStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.drizzleStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.drizzleStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.drizzleStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.rain(_:)
    || v6 == enum case for PrecipitationShift.Kind.rainStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.rainStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.rainStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.rainStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRain(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.drizzleToHeavyRain(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainToDrizzle(_:)
    || v6 == enum case for PrecipitationShift.Kind.rainToHeavyRain(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainToRain(_:)
    || v6 == enum case for PrecipitationShift.Kind.drizzleToHeavyRainStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainToDrizzleStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.rainToHeavyRainStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainToRainStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.drizzleToHeavyRainStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainToDrizzleStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.rainToHeavyRainStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainToRainStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.drizzleToHeavyRainStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainToDrizzleStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.rainToHeavyRainStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainToRainStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.drizzleToHeavyRainStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainToDrizzleStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.rainToHeavyRainStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavyRainToRainStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleFlurries(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleFlurriesStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleFlurriesStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleFlurriesStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleFlurriesStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.flurries(_:)
    || v6 == enum case for PrecipitationShift.Kind.flurriesStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.flurriesStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.flurriesStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.flurriesStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.snow(_:)
    || v6 == enum case for PrecipitationShift.Kind.snowStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.snowStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.snowStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.snowStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnow(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.flurriesToHeavySnow(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowToFlurries(_:)
    || v6 == enum case for PrecipitationShift.Kind.snowToHeavySnow(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowToSnow(_:)
    || v6 == enum case for PrecipitationShift.Kind.flurriesToHeavySnowStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowToFlurriesStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.snowToHeavySnowStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowToSnowStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.flurriesToHeavySnowStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowToFlurriesStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.snowToHeavySnowStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowToSnowStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.flurriesToHeavySnowStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowToFlurriesStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.snowToHeavySnowStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowToSnowStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.flurriesToHeavySnowStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowToFlurriesStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.snowToHeavySnowStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.heavySnowToSnowStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleSleet(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleSleetStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleSleetStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleSleetStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleSleetStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.sleet(_:)
    || v6 == enum case for PrecipitationShift.Kind.sleetStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.sleetStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.sleetStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.sleetStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleHail(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleHailStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleHailStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleHailStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.possibleHailStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.hail(_:)
    || v6 == enum case for PrecipitationShift.Kind.hailStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.hailStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.hailStartStop(_:)
    || v6 == enum case for PrecipitationShift.Kind.hailStopStart(_:)
    || v6 == enum case for PrecipitationShift.Kind.clear(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    result = sub_100786F40();
    __break(1u);
  }

  return result;
}

void sub_10076D3DC(void *a1@<X8>)
{
  sub_10076D550();
  if (!v1)
  {
    sub_10000CDB0();
    v3 = static String.read(from:)();
    v5 = v4;
    memcpy(a1, v6, 0x70uLL);
    a1[14] = v3;
    a1[15] = v5;
  }
}

uint64_t sub_10076D45C(uint64_t a1)
{
  result = String.write(to:)();
  if (!v1)
  {
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    return String.write(to:)();
  }

  return result;
}

uint64_t sub_10076D6DC(uint64_t a1)
{
  result = String.write(to:)();
  if (!v1)
  {
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    return String.write(to:)();
  }

  return result;
}

uint64_t static PressureTrend.read(from:)(uint64_t a1)
{
  result = sub_1000526D4(a1);
  if (!v1)
  {
    sub_10078643C();
    if (v3)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F6D0();
      v7 = sub_10077C574(v6);
      v8 = sub_100074D7C(v7);
      sub_10002C964(v8, v9);
      sub_100006494();
      (*(v10 + 104))();
      return swift_willThrow();
    }

    else
    {
      sub_1000BCF48();
      type metadata accessor for PressureTrend();
      sub_100003A9C();
      v4 = sub_100031474();
      return v5(v4);
    }
  }

  return result;
}

uint64_t static ProviderAttribution.read(from:)()
{
  sub_100033FF8();
  v1 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  sub_10001320C();
  sub_100786EAC();
  result = static String.read(from:)();
  if (!v0)
  {
    sub_10078748C();
    type metadata accessor for URL();
    sub_100786EAC();
    static Optional<A>.read(from:)();
    sub_1000059A0();
    return ProviderAttribution.init(name:logoURL:)();
  }

  return result;
}

void ProviderAttribution.write(to:)(uint64_t a1)
{
  sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10001320C();
  ProviderAttribution.name.getter();
  sub_10078738C();
  String.write(to:)();

  if (!v1)
  {
    ProviderAttribution.logoURL.getter();
    sub_100163714();
    Optional<A>.write(to:)();
    sub_1006827B8(v2, &qword_100CB3AB0);
  }

  sub_100787148();
}

void static SunEvents.read(from:)()
{
  sub_10000E8AC();
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v3);
  sub_100003878();
  sub_10000386C();
  __chkstk_darwin(v4);
  sub_100003878();
  sub_10000386C();
  __chkstk_darwin(v5);
  sub_100021390();
  __chkstk_darwin(v6);
  sub_100030568();
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  sub_1000886FC();
  __chkstk_darwin(v9);
  sub_100031DB0();
  __chkstk_darwin(v10);
  sub_10002137C();
  __chkstk_darwin(v11);
  sub_1000B9E20();
  type metadata accessor for Date();
  static Optional<A>.read(from:)();
  if (!v0)
  {
    static Optional<A>.read(from:)();
    sub_100786540();
    static Optional<A>.read(from:)();
    sub_100786540();
    static Optional<A>.read(from:)();
    sub_100786540();
    static Optional<A>.read(from:)();
    sub_100786540();
    static Optional<A>.read(from:)();
    sub_100786540();
    static Optional<A>.read(from:)();
    sub_100786540();
    static Optional<A>.read(from:)();
    sub_100786540();
    static Optional<A>.read(from:)();
    sub_100786540();
    static Optional<A>.read(from:)();
    SunEvents.init(astronomicalDawn:nauticalDawn:civilDawn:sunrise:solarNoon:sunset:civilDusk:nauticalDusk:astronomicalDusk:solarMidnight:)();
  }

  sub_10000C8F4();
}