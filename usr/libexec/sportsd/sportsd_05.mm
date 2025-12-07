uint64_t sub_10007869C()
{
  swift_unknownObjectWeakDestroy();
  sub_10001C594();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100078704()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10007875C(uint64_t a1)
{
  v3 = v1[3];
  v13 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  v10 = sub_10003FBF8(v9);
  *v10 = v11;
  v10[1] = sub_100045D48;

  return sub_100076580(a1, v13, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100078848()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100078890()
{
  sub_10001C370();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  v3 = sub_10003FBF8(v2);
  *v3 = v4;
  v5 = sub_100079308(v3);

  return sub_100075FB8(v5, v6, v7, v8, v9, v10, v1);
}

uint64_t sub_10007893C(uint64_t a1)
{
  sub_1000795B8();
  sub_10001C370();
  sub_100064384();
  v1 = swift_task_alloc();
  v2 = sub_10003FBF8(v1);
  *v2 = v3;
  sub_100079308(v2);
  sub_100079588();
  sub_1000795A0();

  return sub_100075A1C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100078A44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100078A94(uint64_t a1)
{
  sub_1000795B8();
  sub_10001C370();
  sub_100064384();
  v1 = swift_task_alloc();
  v2 = sub_10003FBF8(v1);
  *v2 = v3;
  sub_100079308(v2);
  sub_100079588();
  sub_1000795A0();

  return sub_100074F8C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100078BA8(uint64_t a1)
{
  sub_1000795B8();
  sub_10001C370();
  sub_100064384();
  v1 = swift_task_alloc();
  v2 = sub_10003FBF8(v1);
  *v2 = v3;
  sub_100079308(v2);
  sub_100079588();
  sub_1000795A0();

  return sub_100074928(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100078C38()
{
  _Block_release(*(v0 + 16));
  sub_10001C594();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100078C70()
{

  sub_10007957C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100078CD4()
{
  v1 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10000AC84(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);

  v7 = type metadata accessor for Date();
  if (!sub_100008B84(v0 + v4, 1, v7))
  {
    sub_10000ACDC();
    (*(v8 + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, ((((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_100078DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100078E6C()
{
  v1 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10000AC84(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = (v0 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v0 + v8);
  v16 = *(v0 + v8 + 8);

  sub_10007391C(v9, v10, v11, v0 + v6, v13, v14, v15, v16);
}

uint64_t sub_100078F18()
{

  sub_10005B070();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100078F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100078FE4()
{
  sub_100008A94((v0 + 24));
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 72));

  return _swift_deallocObject(v0, 112, 7);
}

void sub_100079034(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 set_sourceApplicationBundleIdentifier:v4];
}

uint64_t sub_100079090(uint64_t a1)
{
  sub_1000795B8();
  sub_10001C370();
  sub_100064384();
  v1 = swift_task_alloc();
  v2 = sub_10003FBF8(v1);
  *v2 = v3;
  sub_100079308(v2);
  sub_100079588();
  sub_1000795A0();

  return sub_100073484(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10007917C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000791E0()
{

  v0 = sub_1000794C0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100079224(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000ACDC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10007932C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_1000793B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + v1 + 32);
  sub_100008614((a1 + v1), *(a1 + v1 + 24));
  return v2;
}

uint64_t sub_1000793E0()
{
  sub_100008A94(v0);
}

uint64_t *sub_100079430(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_100008614(a1, v2);
  v1[5] = v2;
  v1[6] = *(v3 + 8);

  return sub_10003F5B0(v1 + 2);
}

void sub_100079480(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_1000794A0(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1000170D4(v4, v3, va);
}

uint64_t sub_1000794D0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

__n128 sub_100079500()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  result = *(v0 + 96);
  *(v0 + 56) = result;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  return result;
}

uint64_t sub_10007951C()
{

  return swift_slowAlloc();
}

uint64_t sub_100079548()
{

  return swift_slowAlloc();
}

BOOL sub_100079564()
{

  return os_log_type_enabled(v1, v0);
}

unint64_t sub_100079618(__int128 *a1, uint64_t a2)
{
  if (*(a1 + 3) == 1)
  {
    sub_10001EF70(a1, &qword_1000DE878, &qword_1000AE970);
    v4 = sub_1000175AC(a2);
    if (v5)
    {
      v6 = v4;
      swift_isUniquelyReferenced_nonNull_native();
      sub_10007BF08();
      v7 = sub_100003998(&qword_1000DD7C0, &unk_1000AC128);
      sub_10007BF1C(v7, v8, v9, v10, v11, v12, v13, v14, v20, v21);
      v15 = (*(v22 + 56) + 32 * v6);
      v16 = v15[1];
      v24 = *v15;
      v25 = v16;
      sub_100003998(&qword_1000DBD08, &qword_1000AA690);
      sub_10001DA90();
      _NativeDictionary._delete(at:)();
      *v2 = v22;
    }

    else
    {
      v24 = 0uLL;
      *&v25 = 0;
      *(&v25 + 1) = 1;
    }

    return sub_10001EF70(&v24, &qword_1000DE878, &qword_1000AE970);
  }

  else
  {
    v17 = a1[1];
    v24 = *a1;
    v25 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    result = sub_1000869D0(&v24, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
  }

  return result;
}

uint64_t sub_10007975C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100003998(&qword_1000DE868, &qword_1000AE960);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for DatedSubscribers();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100008B84(a1, 1, v11) == 1)
  {
    sub_10001EF70(a1, &qword_1000DE868, &qword_1000AE960);
    sub_10007BA04(a2, a3, v10);

    return sub_10001EF70(v10, &qword_1000DE868, &qword_1000AE960);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_100086EA0(v14, a2, a3);

    *v4 = v17;
  }

  return result;
}

uint64_t sub_100079928()
{
  type metadata accessor for WatchlistSuppressionActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1000E6DE0 = v0;
  return result;
}

uint64_t sub_100079988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA58 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000799E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WatchlistSuppressionActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

unint64_t sub_100079A1C()
{
  _StringGuts.grow(_:)(21);

  sub_10007B6D4();
  v0._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v0);

  return 0xD000000000000013;
}

unint64_t sub_100079ABC(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000020;
  }
}

void *sub_100079B08(uint64_t a1)
{
  type metadata accessor for WatchlistSuppressNotificationsXPCConnectionManager();
  swift_allocObject();
  result = sub_100079B44();
  qword_1000E6DE8 = result;
  return result;
}

void *sub_100079B44()
{
  v0[2] = 0;
  type metadata accessor for PersistentStore();
  v0[3] = PersistentStore.__allocating_init()();

  v1 = dispatch thunk of PersistentStore.retrieveSuppressionTally()();

  v0[4] = v1;
  return v0;
}

void sub_100079BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007B148();
  if (v5 && (v6 = v5, v22 = sub_100079E04, v23 = 0, v18 = _NSConcreteStackBlock, v19 = 1107296256, sub_10007BEF4(), v20 = v7, v21 = &unk_1000D3930, v8 = _Block_copy(&v18), , v9 = [v6 remoteObjectProxyWithErrorHandler:v8], _Block_release(v8), v6, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_100003998(&qword_1000DE860, &qword_1000AE958), swift_dynamicCast()))
  {
    v10 = v18;
    v11 = String._bridgeToObjectiveC()();
    sub_10001C594();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = sub_100039B6C;
    v13[3] = 0;
    v13[4] = v12;
    v13[5] = a1;
    v13[6] = a2;
    v22 = sub_10007B8B8;
    v23 = v13;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_10007A520;
    v21 = &unk_1000D3980;
    v14 = _Block_copy(&v18);

    [v10 suppressNotificationsFor:v11 completion:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = sub_10007B72C();
    v16 = sub_10007BF3C(&unk_1000D3AF0, v15);
    *v17 = 0;
    sub_100039B6C(v16);
  }
}

void sub_100079E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D18);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1000170D4(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Watchlist XPC Error: %s", v7, 0xCu);
    sub_100008A94(v8);
  }

  sub_100039B6C(a1);
}

void sub_100079F7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100079FE4(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a6;
  v10 = type metadata accessor for Date();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100003998(&qword_1000DE868, &qword_1000AE960);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  __chkstk_darwin(v20);
  v22 = &v49 - v21;
  v23 = type metadata accessor for DatedSubscribers();
  __chkstk_darwin(v23);
  v29 = __chkstk_darwin(v24);
  if (a1)
  {
    return a2(a1, v29);
  }

  v50 = v13;
  v51 = v16;
  v49 = v28;
  v54 = &v49 - v26;
  v55 = a5;
  v52 = v25;
  v53 = a3;
  v31 = v57;
  v56 = v27;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = result;
    swift_beginAccess();
    v33 = *(v32 + 32);
    if (*(v33 + 16))
    {

      v34 = v31;
      v35 = sub_100017538(v55, v31);
      if (v36)
      {
        v37 = v52;
        (*(v56 + 16))(v22, *(v33 + 56) + *(v56 + 72) * v35, v52);
        v38 = v22;
        v39 = 0;
      }

      else
      {
        v38 = v22;
        v39 = 1;
        v37 = v52;
      }

      sub_100008E2C(v38, v39, 1, v37);
    }

    else
    {
      v40 = v52;
      sub_100008E2C(v22, 1, 1, v52);

      v34 = v31;
      v37 = v40;
    }

    v41 = v51;
    sub_10007B8C8(v22, v19);
    if (sub_100008B84(v19, 1, v37) == 1)
    {
      Date.init()();
      v42 = v54;
      DatedSubscribers.init(subscriberCount:lastSubscription:)();

      sub_10001EF70(v19, &qword_1000DE868, &qword_1000AE960);
    }

    else
    {

      v42 = v54;
      (*(v56 + 32))(v54, v19, v37);
    }

    v43 = v55;

    static DatedSubscribers.+ infix(_:_:)();
    sub_100008E2C(v41, 0, 1, v37);
    swift_beginAccess();
    sub_10007975C(v41, v43, v34);
    swift_endAccess();
    if (sub_10007B0AC())
    {
      (a2)();

      return (*(v56 + 8))(v42, v37);
    }

    else
    {
      v44 = *(v32 + 32);

      v45 = v50;
      sub_10007C014(v43, v34, v44, v50);

      if (sub_100008B84(v45, 1, v37) == 1)
      {
        (*(v56 + 8))(v42, v37);

        return sub_10001EF70(v45, &qword_1000DE868, &qword_1000AE960);
      }

      else
      {
        v46 = v56;
        v47 = v49;
        (*(v56 + 32))(v49, v45, v37);
        if (DatedSubscribers.subscriberCount.getter() >= 2)
        {
          (a2)(0);
        }

        v48 = *(v46 + 8);
        v48(v47, v37);
        return (v48)(v54, v37);
      }
    }
  }

  return result;
}

void sub_10007A520(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10007A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5)
{
  v11 = sub_100003998(&qword_1000DE868, &qword_1000AE960);
  __chkstk_darwin(v11 - 8);
  v13 = &v52 - v12;
  type metadata accessor for DatedSubscribers();
  sub_10002677C();
  v15 = v14;
  __chkstk_darwin(v16);
  v58 = v17;
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  v21 = swift_allocObject();
  v22 = a4;
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  v63 = v21;
  swift_beginAccess();
  v23 = *(a3 + 32);

  v60 = a1;
  v62 = a2;
  sub_10007C014(a1, a2, v23, v13);

  if (sub_100008B84(v13, 1, v5) != 1)
  {
    v57 = a5;
    v27 = *(v15 + 32);
    v61 = v20;
    v27();
    v28 = sub_10007B148();
    if (v28)
    {
      v29 = v28;
      v56 = v15;
      v30 = swift_allocObject();
      v31 = sub_10007BEDC(v30);
      v68 = sub_10007BB8C;
      v69 = v31;
      sub_10007BEBC();
      v65 = 1107296256;
      sub_10007BEF4();
      v66 = v32;
      v67 = &unk_1000D39F8;
      v33 = _Block_copy(&aBlock);

      v34 = [v29 remoteObjectProxyWithErrorHandler:v33];
      _Block_release(v33);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100003998(&qword_1000DE860, &qword_1000AE958);
      if (swift_dynamicCast())
      {
        v55 = aBlock;
        v35 = v5;
        v36 = v60;
        v53 = v27;
        v54 = String._bridgeToObjectiveC()();
        sub_10001C594();
        v37 = swift_allocObject();
        swift_weakInit();
        v38 = v56;
        v39 = v59;
        v40 = v35;
        (*(v56 + 16))(v59, v61, v35);
        v41 = (*(v38 + 80) + 40) & ~*(v38 + 80);
        v42 = (v58 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
        v43 = swift_allocObject();
        v44 = sub_10007BEDC(v43);
        *(v44 + 32) = v37;
        (v53)(v44 + v41, v39, v40);
        v45 = (v43 + v42);
        *v45 = v36;
        v45[1] = v62;
        v68 = sub_10007BC68;
        v69 = v43;
        sub_10007BEBC();
        v65 = 1107296256;
        v66 = sub_10007A520;
        v67 = &unk_1000D3A48;
        v46 = _Block_copy(&aBlock);

        v47 = v54;
        [v55 enableNotificationsFor:v54 completion:v46];
        _Block_release(v46);
        swift_unknownObjectRelease();

        (*(v38 + 8))(v61, v40);
        goto LABEL_8;
      }

      v15 = v56;
    }

    v48 = sub_10007B72C();
    v49 = sub_10007BF3C(&unk_1000D3AF0, v48);
    *v50 = 0;
    sub_100031590(v49, v22);

    (*(v15 + 8))(v61, v5);
    goto LABEL_8;
  }

  sub_10001EF70(v13, &qword_1000DE868, &qword_1000AE960);
  v24 = sub_10007B72C();
  v25 = sub_10007BF3C(&unk_1000D3AF0, v24);
  *v26 = 0;
  sub_100031590(v25, v22);

LABEL_8:
}

uint64_t sub_10007AAD4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D18);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_1000170D4(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Watchlist XPC Error: %s", v8, 0xCu);
    sub_100008A94(v9);
  }

  return a2(a1);
}

uint64_t sub_10007AC64(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_100003998(&qword_1000DE868, &qword_1000AE960);
  __chkstk_darwin(v12 - 8);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v36 - v16;
  v18 = type metadata accessor for DatedSubscribers();
  __chkstk_darwin(v18);
  v23 = __chkstk_darwin(v19);
  v25 = v36 - v24;
  if (a1)
  {
    return a2(a1, v23);
  }

  v38 = v21;
  v39 = v20;
  v36[0] = v22;
  v36[1] = a3;
  v37 = a7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    if (DatedSubscribers.subscriberCount.getter() >= 1)
    {
      static DatedSubscribers.- infix(_:_:)();
      v28 = v38;
      v29 = v39;
      (*(v38 + 16))(v17, v25, v39);
      sub_100008E2C(v17, 0, 1, v29);
      swift_beginAccess();
      v30 = v37;

      sub_10007975C(v17, a6, v30);
      swift_endAccess();
      if (DatedSubscribers.subscriberCount.getter() >= 1)
      {
        if (sub_10007B0AC())
        {
          (a2)();
        }

        else
        {
          (a2)();
        }

        return (*(v38 + 8))(v25, v39);
      }

      (*(v28 + 8))(v25, v29);
    }

    swift_beginAccess();
    v31 = *(v27 + 32);

    v32 = v37;
    sub_10007C014(a6, v37, v31, v14);

    v33 = v39;
    if (sub_100008B84(v14, 1, v39) == 1)
    {
      sub_10001EF70(v14, &qword_1000DE868, &qword_1000AE960);
LABEL_14:
      (a2)(0);
    }

    v34 = v38;
    v35 = v36[0];
    (*(v38 + 32))(v36[0], v14, v33);
    if (DatedSubscribers.subscriberCount.getter())
    {
      (*(v34 + 8))(v35, v33);
      goto LABEL_14;
    }

    swift_beginAccess();
    sub_10007BA04(a6, v32, v17);
    sub_10001EF70(v17, &qword_1000DE868, &qword_1000AE960);
    swift_endAccess();
    if (sub_10007B0AC())
    {
      (a2)();
    }

    else
    {
      (a2)();
    }

    return (*(v38 + 8))(v36[0], v39);
  }

  return result;
}

uint64_t sub_10007B0AC()
{
  swift_beginAccess();

  dispatch thunk of PersistentStore.persistSuppressionTally(_:)();

  return 0;
}

void *sub_10007B148()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    sub_10007B7D8();
    v3 = sub_10007B384(0xD000000000000018, 0x80000001000B2730, 4096);
    v4 = *(v1 + 16);
    *(v1 + 16) = v3;
    v5 = v3;

    if (v5)
    {
      v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7sportsd51WatchlistSuppressNotificationsXPCConnectionProtocol_];
      [v5 setRemoteObjectInterface:v6];
    }

    v7 = *(v1 + 16);
    if (v7 && (v21 = sub_10007B400, v22 = 0, v17 = _NSConcreteStackBlock, v18 = 1107296256, v19 = sub_10007B4E8, v20 = &unk_1000D38B8, v8 = _Block_copy(&v17), v9 = v7, [v9 setInterruptionHandler:v8], _Block_release(v8), v9, (v10 = *(v1 + 16)) != 0))
    {
      sub_10001C594();
      v11 = swift_allocObject();
      swift_weakInit();
      v21 = sub_10007B868;
      v22 = v11;
      v17 = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_10007B4E8;
      v20 = &unk_1000D3908;
      v12 = _Block_copy(&v17);
      v13 = v10;

      [v13 setInvalidationHandler:v12];
      _Block_release(v12);

      v14 = *(v1 + 16);
    }

    else
    {
      v14 = 0;
    }

    [v14 resume];
    v2 = *(v1 + 16);
  }

  v15 = v2;
  return v2;
}

id sub_10007B384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_10007B400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D18);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Watchlist suppression connection interrupted. This should be recoverable.", v5, 2u);
  }
}

uint64_t sub_10007B4E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10007B52C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100007DE8(v3, qword_1000E6D18);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Watchlist suppression connection invalidated.", v6, 2u);
    }

    v7 = *(v2 + 16);
    *(v2 + 16) = 0;
  }
}

uint64_t sub_10007B648()
{

  return v0;
}

uint64_t sub_10007B678()
{
  sub_10007B648();

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_10007B6D4()
{
  result = qword_1000DE840;
  if (!qword_1000DE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE840);
  }

  return result;
}

unint64_t sub_10007B72C()
{
  result = qword_1000DE848;
  if (!qword_1000DE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE848);
  }

  return result;
}

unint64_t sub_10007B784()
{
  result = qword_1000DE850;
  if (!qword_1000DE850)
  {
    type metadata accessor for WatchlistSuppressionActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE850);
  }

  return result;
}

unint64_t sub_10007B7D8()
{
  result = qword_1000DE858;
  if (!qword_1000DE858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DE858);
  }

  return result;
}

uint64_t sub_10007B81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007B834()
{
  swift_weakDestroy();
  sub_10001C594();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10007B870()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10007B8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DE868, &qword_1000AE960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007B938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100017538(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10007BF08();
  v7 = sub_100003998(&qword_1000DE880, &qword_1000AE978);
  sub_10007BF1C(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);

  v15 = *(*(v19 + 56) + 8 * v6);
  sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
  _NativeDictionary._delete(at:)();
  *v3 = v19;
  return v15;
}

uint64_t sub_10007BA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100017538(a1, a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v9 = *(*v3 + 24);
    sub_100003998(&qword_1000DE870, &qword_1000AE968);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);

    v10 = *(v16 + 56);
    v11 = type metadata accessor for DatedSubscribers();
    (*(*(v11 - 8) + 32))(a3, v10 + *(*(v11 - 8) + 72) * v7, v11);
    _NativeDictionary._delete(at:)();
    *v3 = v16;
    v12 = a3;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = type metadata accessor for DatedSubscribers();
    v12 = a3;
    v13 = 1;
  }

  return sub_100008E2C(v12, v13, 1, v14);
}

uint64_t sub_10007BB4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007BB94()
{
  type metadata accessor for DatedSubscribers();
  sub_10002677C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v7 + 16, v4 | 7);
}

uint64_t sub_10007BC68(uint64_t a1)
{
  v3 = *(type metadata accessor for DatedSubscribers() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_10007AC64(a1, v5, v6, v7, v1 + v4, v9, v10);
}

_BYTE *sub_10007BD20(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10007BDECLL);
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

unint64_t sub_10007BE24()
{
  result = qword_1000DE888;
  if (!qword_1000DE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE888);
  }

  return result;
}

uint64_t sub_10007BEDC(uint64_t result)
{
  *(result + 16) = sub_10007BB84;
  *(result + 24) = v1;
  return result;
}

BOOL sub_10007BF1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_10007BF3C(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

double sub_10007BF54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_100017538(a1, a2), (v6 & 1) != 0))
  {
    v7 = sub_10008365C(v5);

    sub_10001B798(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t sub_10007BFB0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    result = sub_1000175AC(result);
    if (v5)
    {
      return sub_10008341C(*(a2 + 56) + 32 * result, a3, &qword_1000DBD08, &qword_1000AA690);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 1;
  return result;
}

void *sub_10007C02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100017538(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_10007C074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_100017538(a1, a2);
    if (v3)
    {
    }
  }

  return sub_10001C53C();
}

uint64_t sub_10007C0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100017538(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_10007C118@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_100017634(a1), (v5 & 1) != 0))
  {
    v6 = sub_10008365C(v4);

    sub_10001B798(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_10007C174(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100017678();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_10007C1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_100017538(a1, a2), (a2 & 1) != 0))
  {
    v9 = v8;
    v10 = *(a3 + 56);
    v11 = a4(0);
    sub_10001C2AC();
    (*(v12 + 16))(a5, v10 + *(v12 + 72) * v9, v11);
    sub_10005B354();
    v16 = v11;
  }

  else
  {
    (a4)(0, a2);
    sub_100045E00();
  }

  return sub_100008E2C(v13, v14, v15, v16);
}

uint64_t sub_10007C29C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100017744();
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

double sub_10007C2F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_1000175AC(a1), (v5 & 1) != 0))
  {
    v6 = sub_10008365C(v4);

    sub_10001B798(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

BOOL sub_10007C350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_10007C37C()
{
  sub_1000643A8();
  v79 = v0;
  v72 = v2;
  v73 = v1;
  v74 = v4;
  v75 = v3;
  v76 = v5;
  v6 = type metadata accessor for Date();
  v7 = sub_10001C3C4(v6);
  __chkstk_darwin(v7);
  sub_10000DC58();
  v71 = v8;
  sub_10001F268();
  v9 = type metadata accessor for SportsActivityAttributes.EventInfo();
  v10 = sub_10001C3C4(v9);
  __chkstk_darwin(v10);
  sub_10000DC58();
  v78 = v11;
  v12 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  v13 = sub_10001C3C4(v12);
  __chkstk_darwin(v13);
  sub_1000499AC();
  v70 = v14;
  sub_1000498EC();
  __chkstk_darwin(v15);
  v17 = v60 - v16;
  v82 = type metadata accessor for SportingEventSubscription.Metadata();
  sub_10000AC48();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_10000DC58();
  v80 = v21;
  sub_10001F268();
  v22 = type metadata accessor for Sport();
  sub_10000AC48();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_1000499AC();
  v77 = v26;
  sub_1000498EC();
  __chkstk_darwin(v27);
  sub_1000498F8();
  v81 = v28;
  sub_1000498EC();
  __chkstk_darwin(v29);
  v31 = v60 - v30;
  v32 = SportingEventSubscription.sportingEventDetails.getter();
  v33 = SportingEvent.clock.getter();

  v34 = SportingEventCurrentClock.current.getter();
  v35 = dispatch thunk of SportingEventClock.isCountingDown.getter();

  if (v35 == 2)
  {
    SportingEventSubscription.sport.getter();
    Sport.init(rawValue:)();
    v69 = Sport.isClockCountingDown.getter();
    v36 = v24;
    (*(v24 + 8))(v31, v22);
  }

  else
  {
    v69 = v35;
    v36 = v24;
  }

  v37 = v22;
  SportingEventSubscription.metadata.getter();
  if (sub_100008B84(v17, 1, v82) == 1)
  {
    sub_10001BB44(v17, &qword_1000DD218, &unk_1000ABE10);
    sub_10007F78C();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();
  }

  else
  {
    v39 = v80;
    (*(v19 + 32))(v80, v17, v82);
    SportingEventSubscription.sport.getter();
    v40 = v81;
    Sport.init(rawValue:)();
    v41 = v79;
    v42 = sub_10007FC68();
    if (v41)
    {
      (*(v36 + 8))(v40, v37);
      (*(v19 + 8))(v39, v82);
    }

    else
    {
      v79 = v42;
      v43 = SportingEventSubscription.canonicalId.getter();
      v66 = v44;
      v67 = v43;
      v68 = v36;
      (*(v36 + 16))(v77, v40, v37);
      v45 = SportingEventSubscription.leagueId.getter();
      v64 = v46;
      v65 = v45;
      v47 = SportingEventSubscription.Metadata.localizedLeagueName.getter();
      v62 = v48;
      v63 = v47;
      sub_10007FFA4();
      v49 = SportingEventSubscription.canonicalId.getter();
      v51 = v50;
      v52 = v70;
      (*(v19 + 16))(v70, v39, v82);
      sub_10005B354();
      sub_100008E2C(v53, v54, v55, v82);
      sub_1000858E0(v75, v74, v49, v51);
      v61 = v37;
      v57 = v56;

      sub_10001BB44(v52, &qword_1000DD218, &unk_1000ABE10);
      v58 = 0xE000000000000000;
      if (v57)
      {
        v58 = v57;
      }

      v70 = v58;
      v60[1] = SportingEventSubscription.Metadata.preGameTitle.getter();
      v60[0] = v59;
      SportingEventSubscription.Metadata.shortTitle.getter();
      static Date.now.getter();

      SportsActivityAttributes.init(canonicalId:sport:leagueId:leagueName:contenders:eventInfo:clockIsCountingDown:eventURL:preGameTitle:shortTitle:createdDate:bundleId:languageTag:)();
      (*(v68 + 8))(v81, v61);
      (*(v19 + 8))(v39, v82);
    }
  }

  sub_1000643C0();
}

void sub_10007C8C8()
{
  sub_1000643A8();
  v44 = v1;
  v45 = v0;
  v46 = v3;
  v47 = v2;
  v48 = v4;
  v42 = type metadata accessor for Date();
  sub_10001C2AC();
  __chkstk_darwin(v5);
  sub_10000DC58();
  v43 = v6;
  v7 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  sub_10001C3C4(v7);
  sub_10000ACFC();
  __chkstk_darwin(v8);
  v10 = v41 - v9;
  v11 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001C3C4(v11);
  sub_10000ACFC();
  __chkstk_darwin(v12);
  sub_10008364C();
  v13 = type metadata accessor for SportsActivityAttributes.EventInfo();
  v14 = sub_10001C3C4(v13);
  __chkstk_darwin(v14);
  sub_10000ADA0();
  v15 = type metadata accessor for Sport();
  sub_10000AC48();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000ADA0();
  v21 = v20 - v19;
  v22 = SportingEventSubscription.sportingEventDetails.getter();
  v23 = dispatch thunk of SportingEvent.competitors.getter();

  v24 = sub_10001BE20(v23);

  if (v24)
  {
    v27 = SportingEventSubscription.canonicalId.getter();
    v41[1] = v28;
    v41[2] = v27;
    (*(v17 + 104))(v21, enum case for Sport.unknown(_:), v15);
    SportingEventSubscription.leagueId.getter();
    v41[0] = v29;
    sub_100045E00();
    sub_100008E2C(v30, v31, v32, v42);
    SportsActivityAttributes.EventInfo.init(startDate:)();
    v33 = SportingEventSubscription.canonicalId.getter();
    v35 = v34;
    SportingEventSubscription.metadata.getter();
    sub_1000858E0(v47, v46, v33, v35);
    sub_1000836AC();

    sub_10001BB44(v10, &qword_1000DD218, &unk_1000ABE10);
    static Date.now.getter();

    SportsActivityAttributes.init(canonicalId:sport:leagueId:leagueName:contenders:eventInfo:clockIsCountingDown:eventURL:preGameTitle:shortTitle:createdDate:bundleId:languageTag:)();
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C(&qword_1000DBA38, v25, v26);
    }

    v36 = type metadata accessor for Logger();
    sub_100007DE8(v36, qword_1000E6D90);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Competitors cannot be empty", v39, 2u);
    }

    sub_10007F78C();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
  }

  sub_1000643C0();
}

uint64_t sub_10007CCA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v254 = a7;
  LODWORD(v245) = a6;
  v242 = a5;
  v219 = a4;
  v263 = a3;
  v243 = a2;
  v244 = a8;
  v11 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001C3C4(v11);
  sub_10000ACFC();
  __chkstk_darwin(v12);
  sub_100045DAC(v211 - v13);
  v239 = type metadata accessor for URL();
  sub_10000AC48();
  v238 = v14;
  __chkstk_darwin(v15);
  sub_10000DC58();
  sub_100045DAC(v16);
  v249 = type metadata accessor for Date();
  sub_10000AC48();
  v233 = v17;
  __chkstk_darwin(v18);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v19);
  sub_10008360C();
  sub_100045DAC(v20);
  v232 = type metadata accessor for SportsActivityContentState.EventInfoState();
  sub_10000AC48();
  v230 = v21;
  __chkstk_darwin(v22);
  sub_10000DC58();
  v234 = v23;
  v24 = sub_100003998(&qword_1000DDA70, &qword_1000AC4F0);
  sub_10001C3C4(v24);
  sub_10000ACFC();
  __chkstk_darwin(v25);
  v253 = v211 - v26;
  v27 = sub_100003998(&qword_1000DDA78, &qword_1000AC4F8);
  sub_10001C3C4(v27);
  sub_10000ACFC();
  __chkstk_darwin(v28);
  sub_100045DAC(v211 - v29);
  v241 = type metadata accessor for SportsActivityContentState();
  sub_10000AC48();
  v240 = v30;
  __chkstk_darwin(v31);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v32);
  sub_10008360C();
  sub_100045DAC(v33);
  v218 = type metadata accessor for SportingEventPlayLevel();
  sub_10000AC48();
  v217 = v34;
  __chkstk_darwin(v35);
  sub_10000DC58();
  sub_100045DAC(v36);
  v247 = type metadata accessor for SportingEventProgressStatus();
  sub_10000AC48();
  v246 = v37;
  __chkstk_darwin(v38);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v39);
  sub_10008360C();
  sub_100045DAC(v40);
  v255 = type metadata accessor for SportsActivityPlay();
  sub_10000AC48();
  v256 = v41;
  __chkstk_darwin(v42);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v43);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v44);
  sub_10008360C();
  v262 = v45;
  v265 = sub_100003998(&qword_1000DE898, &qword_1000AEB70);
  sub_10001C2AC();
  __chkstk_darwin(v46);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v47);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v48);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v49);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v50);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v51);
  sub_10008360C();
  v268 = v52;
  sub_10001F268();
  v53 = type metadata accessor for RunningClockComponentsFormatter.DataSource();
  v54 = sub_10001C3C4(v53);
  __chkstk_darwin(v54);
  sub_10000ADA0();
  v55 = type metadata accessor for SportsActivityGenericClock();
  sub_10000AC48();
  v225 = v56;
  __chkstk_darwin(v57);
  sub_10000ADA0();
  sub_10008364C();
  type metadata accessor for SportsActivityClock();
  sub_10000AC48();
  v266 = v59;
  v267 = v58;
  __chkstk_darwin(v58);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v60);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v61);
  v63 = v211 - v62;
  __chkstk_darwin(v64);
  sub_10008360C();
  v264 = v65;
  sub_10001F268();
  v66 = type metadata accessor for Sport();
  sub_10000AC48();
  v68 = v67;
  __chkstk_darwin(v69);
  sub_100045D70();
  v72 = v70 - v71;
  __chkstk_darwin(v73);
  v75 = v211 - v74;
  SportingEventSubscription.sport.getter();
  Sport.init(rawValue:)();
  v76 = *(v68 + 16);
  v258 = v75;
  v76(v72, v75, v66);
  v259 = v68;
  v260 = v66;
  v77 = v68;
  v78 = a1;
  v79 = (*(v77 + 88))(v72, v66);
  v261 = a1;
  if (v79 == enum case for Sport.baseball(_:))
  {
    sub_10008170C(v63);
    v80 = v263;
    v55 = v267;
    v81 = v268;
    v75 = v266;
LABEL_12:
    v86 = v264;
    goto LABEL_13;
  }

  if (v79 == enum case for Sport.basketball(_:) || v79 == enum case for Sport.football(_:) || v79 == enum case for Sport.hockey(_:))
  {
    v78 = v261;
    SportingEventSubscription.createRunningClockDataSource(preferStaticClock:)();
    SportsActivityGenericClock.init(runningClockDataSource:)();
    (*(v225 + 32))(v63, v9, v55);
    v84 = sub_100083678();
    v85(v84);
    v80 = v263;
    v81 = v268;
    goto LABEL_12;
  }

  v86 = v264;
  v78 = v261;
  if (v79 == enum case for Sport.soccer(_:))
  {
    sub_100080E6C(v261, v245 & 1, v63);
    v80 = v263;
    v55 = v267;
    v81 = v268;
    v75 = v266;
  }

  else
  {
    v107 = sub_100083678();
    v108(v107);
    v109 = sub_1000836D8();
    v110(v109);
    v80 = v263;
    v81 = v268;
  }

LABEL_13:
  v87 = v265;
  (*(v75 + 4))(v86, v63, v55);
  v88 = v257;
  sub_100084CC0(v81, v81 + *(v87 + 48), v78, v80);
  v89 = v88;
  if (v88)
  {
    (*(v75 + 1))(v86, v55);
    return (*(v259 + 8))(v258, v260);
  }

  if (SportingEventSubscription.shouldDisplayPlayByPlay.getter())
  {
    v91 = SportingEventSubscription.sportingEventDetails.getter();
    SportingEvent.progressStatus.getter();

    sub_10008366C();
    v92 = sub_1000835FC();
    v94 = v93(v92);
    if (v94 == enum case for SportingEventProgressStatus.inProgress(_:))
    {
      sub_100081B8C(v80, v219, v262);
    }

    else if (v94 == enum case for SportingEventProgressStatus.final(_:))
    {
      v111 = SportingEventSubscription.mostRecentPlay.getter();
      v112 = v217;
      v113 = v216;
      v114 = v218;
      (*(v217 + 104))(v216, enum case for SportingEventPlayLevel.all(_:), v218);
      sub_10007C174(v113, v111);
      sub_1000836B8();

      (*(v112 + 8))(v113, v114);
      if (v80)
      {
        v115 = v80;
        SportingEventPlay.playDescription.getter();

        v89 = 0;
      }

      SportsActivityPlay.init(isLeftBarVisible:isRightBarVisible:isPlay:text:)();

      v55 = v267;
    }

    else
    {
      static SportsActivityPlay.empty.getter();
      sub_10008366C();
      v208 = sub_1000835FC();
      v209(v208);
    }
  }

  else
  {
    static SportsActivityPlay.empty.getter();
  }

  v95 = sub_100083690();
  *(v95 + 16) = 0;
  v216 = v95 + 16;
  v96 = sub_100083690();
  *(v96 + 16) = SportingEventSubscription.shouldDisplayPlayByPlay.getter() & 1;
  v219 = (v96 + 16);
  v97 = sub_100083690();
  *(v97 + 16) = 1;
  v215 = (v97 + 16);
  v218 = v89;
  v217 = v95;
  v225 = v96;
  v224 = v97;
  if (v254)
  {
    sub_10007FBE4(v95, v97, v96);
    v220 = 0;
    sub_1000835E8();
    v100 = v250;
  }

  else
  {
    v101 = SportingEventSubscription.sportingEventDetails.getter();
    SportingEvent.progressStatus.getter();

    sub_10008366C();
    v102 = sub_1000835FC();
    v104 = v103(v102);
    v100 = v250;
    if (v104 != enum case for SportingEventProgressStatus.preGame(_:))
    {
      v116 = v104 == enum case for SportingEventProgressStatus.inProgress(_:) || v104 == enum case for SportingEventProgressStatus.statusBreak(_:);
      v106 = v268;
      if (!v116)
      {
        *v219 = 0;
        v117 = sub_1000835FC();
        v118(v117);
      }

      v220 = 1;
      sub_1000835E8();
      v105 = v226;
      goto LABEL_36;
    }

    sub_10007FBE4(v95, v224, v225);
    v220 = 0;
    sub_1000835E8();
  }

  v105 = v226;
  v106 = v268;
LABEL_36:
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C(&qword_1000DBA38, v98, v99);
  }

  v119 = type metadata accessor for Logger();
  sub_100007DE8(v119, qword_1000E6D90);
  v120 = *(v266 + 2);
  v246 = v266 + 16;
  v245 = v120;
  (v120)(v105, v86, v55);
  v121 = v78[2];
  v257 = v78 + 2;
  v247 = v121;
  v121(v100, v262, v95);
  sub_10008341C(v106, v251, &qword_1000DE898, &qword_1000AEB70);
  v122 = v106;
  v123 = v248;
  sub_10008341C(v122, v248, &qword_1000DE898, &qword_1000AEB70);
  v124 = v261;
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.debug.getter();

  v127 = os_log_type_enabled(v125, v126);
  v226 = v124;
  if (v127)
  {
    v128 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    v269 = v213;
    *v128 = 136316162;
    v212 = v125;
    v129 = v124;
    v130 = SportingEventSubscription.canonicalId.getter();
    v132 = v131;
    sub_1000170D4(v130, v131, &v269);
    sub_10001C1DC();

    *(v128 + 4) = v129;
    *(v128 + 12) = 2080;
    sub_1000836E4(&v252);
    v133 = v267;
    sub_10008366C();
    v245();
    sub_10001C53C();
    String.init<A>(reflecting:)();
    sub_1000836AC();
    v134 = sub_1000836D8();
    v261 = v135;
    (v135)(v134, v133);
    v136 = sub_10001C53C();
    sub_1000170D4(v136, v137, v138);
    sub_1000836B8();

    *(v128 + 14) = v132;
    *(v128 + 22) = 2080;
    sub_1000836E4(&v253);
    sub_1000836C4();
    v139();
    String.init<A>(describing:)();
    sub_1000836AC();
    v140 = sub_1000836D8();
    v250 = v141;
    v141(v140, v95);
    v142 = sub_10001C53C();
    sub_1000170D4(v142, v143, v144);
    sub_1000836B8();

    v214 = v128;
    *(v128 + 24) = v132;
    *(v128 + 32) = 2080;
    v145 = v251;
    v146 = v223;
    sub_10008341C(v251, v223, &qword_1000DE898, &qword_1000AEB70);
    v147 = *(v265 + 48);
    v148 = SportsActivityContender.scoreEntries.getter();
    v149 = type metadata accessor for SportsActivityContender();
    sub_10001C2AC();
    v151 = *(v150 + 8);
    v151(v146, v149);
    v151(v146 + v147, v149);
    v221 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
    v152 = sub_1000832D4(&qword_1000DC4C0, &type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName, &protocol conformance descriptor for SportingEventCompetitorScoreStatisticType.StatisticName);
    v153 = v248;
    v211[1] = v152;
    v154 = Dictionary.description.getter();
    v222 = v126;
    v155 = v154;
    v157 = v156;

    sub_10001BB44(v145, &qword_1000DE898, &qword_1000AEB70);
    sub_1000170D4(v155, v157, &v269);
    sub_10001C1DC();

    v158 = v214;
    *(v214 + 34) = v148;
    *(v158 + 42) = 2080;
    sub_10008341C(v153, v146, &qword_1000DE898, &qword_1000AEB70);
    v159 = *(v265 + 48);
    SportsActivityContender.scoreEntries.getter();
    v151(v146 + v159, v149);
    v151(v146, v149);
    v95 = v255;
    v160 = Dictionary.description.getter();
    v162 = v161;

    sub_10001BB44(v153, &qword_1000DE898, &qword_1000AEB70);
    v163 = sub_1000170D4(v160, v162, &v269);

    v164 = v214;
    *(v214 + 44) = v163;
    v165 = v212;
    _os_log_impl(&_mh_execute_header, v212, v222, "Creating activity content for event '%s':\n    clock: %s,\n    play: %s,\n    scoreA: %s,\n    scoreB: %s", v164, 0x34u);
    swift_arrayDestroy();

    v166 = v249;
    v167 = v267;
  }

  else
  {

    sub_10001BB44(v123, &qword_1000DE898, &qword_1000AEB70);
    sub_10001BB44(v251, &qword_1000DE898, &qword_1000AEB70);
    v168 = v250;
    v250 = *(v256 + 8);
    v250(v168, v95);
    v169 = sub_1000836D8();
    v167 = v267;
    v261 = v170;
    (v170)(v169, v267);
    v166 = v249;
  }

  sub_10008366C();
  v245();
  sub_10005B354();
  sub_100008E2C(v171, v172, v173, v167);
  sub_1000836E4(&v270);
  sub_1000836C4();
  v174();
  sub_10005B354();
  sub_100008E2C(v175, v176, v177, v95);
  v178 = v263[4];
  sub_100008614(v263, v263[3]);
  v179 = v229;
  v180 = sub_10001C1DC();
  v181(v180, v178);
  v182 = v231;
  static Date.now.getter();
  v183 = static Date.> infix(_:_:)();
  v184 = *(v233 + 8);
  v184(v182, v166);
  v184(v179, v166);
  v185 = &enum case for SportsActivityContentState.EventInfoState.preGame(_:);
  if ((v183 & 1) == 0)
  {
    v185 = &enum case for SportsActivityContentState.EventInfoState.startingSoon(_:);
  }

  v186 = v234;
  (*(v230 + 104))(v234, *v185, v232);
  sub_1000836E4(&v247);
  swift_beginAccess();
  v187 = *v183;
  v188 = v215;
  swift_beginAccess();
  v189 = *v188;
  v190 = v268;
  v191 = v227;
  sub_10008341C(v268, v227, &qword_1000DE898, &qword_1000AEB70);
  v192 = v228;
  sub_10008341C(v190, v228, &qword_1000DE898, &qword_1000AEB70);
  v193 = v219;
  swift_beginAccess();
  LOBYTE(v193) = *v193;
  v194 = v193 & v242;
  v195 = *(v265 + 48);
  v196 = v236;
  (*(v238 + 16))(v236, v243, v239);
  HIBYTE(v210) = v194;
  LOBYTE(v210) = v193;
  v197 = v237;
  SportsActivityContentState.init(clock:play:eventInfoState:isClockVisible:isEventInfoVisible:isScoreVisible:contenderA:contenderB:shouldDisplayPlayByPlay:shouldShowWatchAlertUI:subscriptionContainerURL:isWaitingForUserConsent:)(v252, v253, v186, v220, v187, v189, v191, v192 + v195, v210, v196, v254 & 1);
  v198 = type metadata accessor for SportsActivityContender();
  sub_10001C2AC();
  v200 = *(v199 + 8);
  v200(v192, v198);
  v200(v191 + v195, v198);
  v201 = v240;
  v202 = v241;
  (*(v240 + 16))(v235, v197, v241);
  v203 = SportingEventSubscription.heartbeatSessionsTTLSeconds.getter();
  if (v204)
  {
    sub_100045E00();
    sub_100008E2C(v205, v206, v207, v249);
  }

  else
  {
    sub_10007FAD0(*&v203);
  }

  sub_1000832D4(&qword_1000DDA90, &type metadata accessor for SportsActivityContentState, &protocol conformance descriptor for SportsActivityContentState);
  sub_1000832D4(&qword_1000DDA98, &type metadata accessor for SportsActivityContentState, &protocol conformance descriptor for SportsActivityContentState);
  sub_1000832D4(&qword_1000DDAA0, &type metadata accessor for SportsActivityContentState, &protocol conformance descriptor for SportsActivityContentState);
  ActivityContent.init(state:staleDate:relevanceScore:)();
  (*(v201 + 8))(v197, v202);
  v250(v262, v255);
  sub_10001BB44(v268, &qword_1000DE898, &qword_1000AEB70);
  (v261)(v264, v267);
  (*(v259 + 8))(v258, v260);
}

void sub_10007E3F4()
{
  sub_1000643A8();
  v83 = v1;
  v2 = type metadata accessor for AlertConfiguration.AlertSound();
  v3 = sub_10001C3C4(v2);
  __chkstk_darwin(v3);
  sub_10000ADA0();
  sub_10008364C();
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = sub_10001C3C4(v4);
  __chkstk_darwin(v5);
  sub_1000499AC();
  sub_1000498EC();
  __chkstk_darwin(v6);
  sub_10008360C();
  sub_10001F268();
  type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  sub_10000AC48();
  v78 = v8;
  v79 = v7;
  __chkstk_darwin(v7);
  sub_1000499AC();
  v77 = v9;
  sub_1000498EC();
  __chkstk_darwin(v10);
  sub_10008360C();
  v76 = v11;
  sub_10001F268();
  v12 = type metadata accessor for SportingEventPlayLevel();
  sub_10000AC48();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000ADA0();
  v18 = v17 - v16;
  type metadata accessor for Sport();
  sub_10000AC48();
  v80 = v20;
  v81 = v19;
  __chkstk_darwin(v19);
  sub_10000DC58();
  v82 = v21;
  sub_10001F268();
  v22 = type metadata accessor for SportingEventProgressStatus();
  sub_10000AC48();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_10000ADA0();
  v28 = v27 - v26;
  if ((SportingEventSubscription.shouldDisplayPlayByPlay.getter() & 1) == 0)
  {
    type metadata accessor for AlertConfiguration();
    sub_100045E00();
    sub_100008E2C(v41, v42, v43, v44);
    goto LABEL_18;
  }

  v29 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  if ((*(v24 + 88))(v28, v22) != enum case for SportingEventProgressStatus.preGame(_:))
  {
    v73 = v24;
    v74 = v28;
    v75 = v22;
    SportingEventSubscription.sport.getter();
    v45 = v82;
    Sport.init(rawValue:)();
    v46 = SportingEventSubscription.mostRecentPlay.getter();
    (*(v14 + 104))(v18, enum case for SportingEventPlayLevel.alerts(_:), v12);
    v47 = sub_10007C174(v18, v46);

    (*(v14 + 8))(v18, v12);
    if (v47)
    {
      v48 = v83[4];
      sub_100008614(v83, v83[3]);
      v49 = sub_10001C1DC();
      v51 = v50(v49, v48);
      v52 = *(v51 + 16);
      if (v52)
      {
        sub_100017B68(0, v52, 0);
        v53 = v51 + 32;
        do
        {
          sub_10000BC8C(v53, v85);
          v54 = v85[4];
          sub_100008614(v85, v85[3]);
          v55 = sub_10001C1DC();
          v57 = v56(v55, v54);
          v59 = v58;
          sub_100008A94(v85);
          v61 = _swiftEmptyArrayStorage[2];
          v60 = _swiftEmptyArrayStorage[3];
          if (v61 >= v60 >> 1)
          {
            sub_100017B68((v60 > 1), v61 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v61 + 1;
          v62 = &_swiftEmptyArrayStorage[2 * v61];
          v62[4] = v57;
          v62[5] = v59;
          v53 += 40;
          --v52;
        }

        while (v52);

        v45 = v82;
      }

      else
      {
      }

      v64 = sub_1000846DC(v47, v45, _swiftEmptyArrayStorage);
      if (!v0)
      {
        v66 = v64;
        v67 = v65;

        Sport.scoreStatisticName.getter();
        sub_10007C29C(v76, v66);

        v84 = *(v78 + 8);
        v84(v76, v79);

        Sport.scoreStatisticName.getter();
        sub_10007C29C(v77, v67);

        v84(v77, v79);
        v85[0] = dispatch thunk of CustomStringConvertible.description.getter();
        v85[1] = v68;
        v69._countAndFlagsBits = 45;
        v69._object = 0xE100000000000000;
        String.append(_:)(v69);
        v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v70);

        v71._countAndFlagsBits = 32;
        v71._object = 0xE100000000000000;
        String.append(_:)(v71);
        v72._countAndFlagsBits = SportingEventPlay.playDescription.getter();
        String.append(_:)(v72);

        (*(v80 + 8))(v82, v81);
        (*(v73 + 8))(v74, v75);
        v30 = v83;
        goto LABEL_4;
      }

      (*(v80 + 8))(v45, v81);
    }

    else
    {
      sub_10007F78C();
      swift_allocError();
      *v63 = 3;
      swift_willThrow();
      (*(v80 + 8))(v82, v81);
    }

    (*(v73 + 8))(v74, v75);
    goto LABEL_18;
  }

  v30 = v83;
  v31 = v83[4];
  sub_100008614(v83, v83[3]);
  v32 = sub_10001C1DC();
  v33(v32, v31);
LABEL_4:
  v34 = v30[4];
  sub_100008614(v30, v30[3]);
  v35 = sub_10001C1DC();
  v36(v35, v34);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  static AlertConfiguration.AlertSound.default.getter();
  AlertConfiguration.init(title:body:sound:)();
  type metadata accessor for AlertConfiguration();
  sub_10005B354();
  sub_100008E2C(v37, v38, v39, v40);
LABEL_18:
  sub_1000643C0();
}

void sub_10007EB70()
{
  sub_1000643A8();
  v78 = v1;
  v79 = v0;
  v77 = v2;
  v3 = type metadata accessor for Locale();
  v4 = sub_10001C3C4(v3);
  __chkstk_darwin(v4);
  sub_10000DC58();
  v74 = v5;
  sub_10001F268();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_10000AC48();
  v75 = v7;
  v76 = v6;
  __chkstk_darwin(v6);
  sub_10000DC58();
  v73 = v8;
  sub_10001F268();
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = sub_10001C3C4(v9);
  __chkstk_darwin(v10);
  sub_10000ADA0();
  v13 = v12 - v11;
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = sub_10001C3C4(v14);
  __chkstk_darwin(v15);
  sub_100045D70();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = v64 - v20;
  v22 = type metadata accessor for AlertConfiguration.AlertSound();
  sub_10000AC48();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_100045D70();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v31 = v64 - v30;
  v32 = sub_1000499E0();
  v34 = v33;
  objc_allocWithZone(LSApplicationRecord);
  v35 = v79;
  v36 = sub_100058D5C(v32, v34, 1);
  if (v35)
  {

LABEL_3:
    v37 = type metadata accessor for AlertConfiguration();
    v38 = v78;
    v39 = 1;
LABEL_4:
    sub_100008E2C(v38, v39, 1, v37);
    sub_1000643C0();
    return;
  }

  v68 = v13;
  v69 = v28;
  v71 = v22;
  v72 = v31;
  v70 = v21;
  v79 = v18;
  if (!v36)
  {
    goto LABEL_3;
  }

  v40 = v36;
  v41 = SportingEventSubscription.sportingEventDetails.getter();
  v42 = dispatch thunk of SportingEvent.alertUpdates.getter();

  if (!v42)
  {

    goto LABEL_3;
  }

  if (!sub_10001BE20(v42))
  {

    goto LABEL_3;
  }

  if ((v42 & 0xC000000000000001) != 0)
  {
    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v44 = v24;
    v43 = v75;
    goto LABEL_11;
  }

  v43 = v75;
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = v24;
    v45 = *(v42 + 32);
LABEL_11:

    v46 = SportingEventAlertUpdate.alert.getter();

    v47 = SportingEventAlert.title.getter();
    v48 = SportingEventAlertText.arguments.getter();

    v66 = sub_10007F7E0(v48, v40);

    v49 = SportingEventAlert.body.getter();
    v50 = SportingEventAlertText.arguments.getter();

    v75 = sub_10007F7E0(v50, v40);

    SportingEventAlert.sound.getter();
    v67 = v44;
    if (v51)
    {
      static AlertConfiguration.AlertSound.named(_:)();
    }

    else
    {
      static AlertConfiguration.AlertSound.default.getter();
    }

    v52 = v73;
    v53 = SportingEventAlert.title.getter();
    SportingEventAlertText.key.getter();

    String.LocalizationValue.init(_:)();
    v77 = v40;
    v54 = [v77 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
    v64[0] = v43[13];
    (v64[0])(v52);
    static Locale.current.getter();
    v65 = v46;
    sub_100083618();
    v55 = String.init(localized:)();
    v64[1] = v56;
    v64[2] = v55;
    v57 = SportingEventAlert.body.getter();
    SportingEventAlertText.key.getter();

    String.LocalizationValue.init(_:)();
    v58 = v77;
    v59 = [v77 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (v64[0])(v52, v80, v76);
    static Locale.current.getter();
    sub_100083618();
    String.init(localized:)();
    sub_1000836AC();
    sub_10007F3F4(v66);

    String.init(format:arguments:)();

    LocalizedStringResource.init(stringLiteral:)();
    sub_10007F3F4(v75);

    sub_10001C53C();
    String.init(format:arguments:)();

    LocalizedStringResource.init(stringLiteral:)();
    v60 = v67;
    v61 = v71;
    v62 = v72;
    (*(v67 + 16))(v69, v72, v71);
    v63 = v78;
    AlertConfiguration.init(title:body:sound:)();

    (*(v60 + 8))(v62, v61);
    v37 = type metadata accessor for AlertConfiguration();
    v38 = v63;
    v39 = 0;
    goto LABEL_4;
  }

  __break(1u);
}

unint64_t sub_10007F184(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_10007F23C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v21 = a3;
  v4 = a2(0);
  sub_10000AC48();
  v6 = v5;
  sub_10000ACFC();
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v25 = _swiftEmptyArrayStorage;
    sub_100017C20(0, v10, 0);
    v11 = v25;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v20 = *(v12 + 56);
    do
    {
      v13(v9, v15, v4);
      v25 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_100017C20(v16 > 1, v17 + 1, 1);
      }

      v23 = v4;
      v24 = v21;
      v18 = sub_10003F5B0(&v22);
      v13(v18, v9, v4);
      v11 = v25;
      v25[2] = v17 + 1;
      sub_10000A8F8(&v22, &v11[5 * v17 + 4]);
      (*(v12 - 8))(v9, v4);
      v15 += v20;
      --v10;
    }

    while (v10);
  }

  return v11;
}

void *sub_10007F3F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_100017C60(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v7 = v2[2];
      v8 = v2[3];

      if (v7 >= v8 >> 1)
      {
        sub_100017C60(v8 > 1, v7 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for String;
      v12 = sub_1000833C8();
      *&v10 = v6;
      *(&v10 + 1) = v5;
      v2[2] = v7 + 1;
      sub_10000A8F8(&v10, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10007F544@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001C3C4(v2);
  sub_10000ACFC();
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for SportsActivityAttributes.EventInfo();
  sub_10000AC48();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000ADA0();
  v12 = v11 - v10;
  SportsActivityAttributes.eventInfo.getter();
  SportsActivityAttributes.EventInfo.startDate.getter();
  (*(v8 + 8))(v12, v6);
  v13 = type metadata accessor for Date();
  if (sub_100008B84(v5, 1, v13) != 1)
  {
    return (*(*(v13 - 8) + 32))(a1, v5, v13);
  }

  Date.init()();
  result = sub_100008B84(v5, 1, v13);
  if (result != 1)
  {
    return sub_10001BB44(v5, &qword_1000DC5A0, &unk_1000AB0E0);
  }

  return result;
}

uint64_t sub_10007F6E0(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3)
{
  v5 = a1();
  sub_10007F23C(v5, a2, a3);
  sub_1000836B8();

  return a3;
}

unint64_t sub_10007F78C()
{
  result = qword_1000DE890;
  if (!qword_1000DE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE890);
  }

  return result;
}

void *sub_10007F7E0(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v27 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v25 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v10 - 8);
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_100017B68(0, v11, 0);
    v12 = v29;
    v24 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
    v13 = (v5 + 104);
    v14 = a1 + 40;
    do
    {
      swift_bridgeObjectRetain_n();
      String.LocalizationValue.init(_:)();
      v15 = [v28 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*v13)(v7, v24, v26);
      static Locale.current.getter();
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      v16 = String.init(localized:)();
      v18 = v17;

      v29 = v12;
      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        sub_100017B68((v19 > 1), v20 + 1, 1);
        v12 = v29;
      }

      v12[2] = v20 + 1;
      v21 = &v12[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v14 += 16;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_10007FAD0(double a1)
{
  v2 = type metadata accessor for Date();
  sub_10000AC48();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000ADA0();
  v8 = v7 - v6;
  if (a1 <= 0.0)
  {
    sub_100045E00();

    return sub_100008E2C(v13, v14, v15, v2);
  }

  else
  {
    Date.init()();
    Date.addingTimeInterval(_:)();
    (*(v4 + 8))(v8, v2);
    sub_10005B354();
    return sub_100008E2C(v9, v10, v11, v2);
  }
}

uint64_t sub_10007FBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  swift_beginAccess();
  *(a2 + 16) = 0;
  result = swift_beginAccess();
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_10007FC68()
{
  v2 = type metadata accessor for SportingEventSubscription.Competitor();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = *(SportingEventSubscription.Metadata.competitors.getter() + 16);

  if (v9 != 2)
  {
    sub_10007F78C();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    return v1;
  }

  result = SportingEventSubscription.Metadata.competitors.getter();
  if (*(result + 16))
  {
    v22 = v0;
    v11 = *(v3 + 16);
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v11(v8, result + v12, v2);

    result = SportingEventSubscription.Metadata.competitors.getter();
    if (*(result + 16) >= 2uLL)
    {
      v11(v5, result + v12 + *(v3 + 72), v2);

      sub_100003998(&qword_1000DE8E0, &unk_1000AEBB0);
      v13 = *(type metadata accessor for SportsActivityAttributes.Contender() - 8);
      v23 = v5;
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1000AB460;
      v16 = v1 + v15;
      v17 = v22;
      sub_1000801C4(v16);
      if (v17)
      {
        v18 = *(v3 + 8);
        v18(v23, v2);
        v18(v8, v2);
        *(v1 + 16) = 0;
      }

      else
      {
        sub_1000801C4(v16 + v14);
        v20 = *(v3 + 8);
        v20(v23, v2);
        v20(v8, v2);
      }

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007FFA4()
{
  v0 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for SportingEventSubscription.Metadata();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  SportingEventSubscription.metadata.getter();
  if (sub_100008B84(v5, 1, v6) == 1)
  {
    sub_10001BB44(v5, &qword_1000DD218, &unk_1000ABE10);
    v10 = type metadata accessor for Date();
    sub_100008E2C(v2, 1, 1, v10);
    return SportsActivityAttributes.EventInfo.init(startDate:)();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    SportingEventSubscription.Metadata.eventStartDate.getter();
    v12 = type metadata accessor for Date();
    sub_100008E2C(v2, 0, 1, v12);
    SportsActivityAttributes.EventInfo.init(startDate:)();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1000801C4@<X0>(uint64_t a2@<X8>)
{
  v28 = a2;
  v2 = type metadata accessor for SportsActivityAttributes.Contender.LogoFilePaths();
  __chkstk_darwin(v2 - 8);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  __chkstk_darwin(v4 - 8);
  v6 = v26 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  __chkstk_darwin(v14);
  v16 = v26 - v15;
  SportingEventSubscription.Competitor.localLogoUrl.getter();
  if (v17)
  {
    URL.init(string:)();

    if (sub_100008B84(v6, 1, v7) == 1)
    {
      sub_10001BB44(v6, &unk_1000DD7B0, &qword_1000AC150);
    }

    else
    {
      (*(v8 + 32))(v16, v6, v7);
      URL.lastPathComponent.getter();
      v18 = [objc_opt_self() defaultManager];
      NSFileManager.currentContainerURL.getter();

      URL.appendingPathComponent(_:)();

      v19 = *(v8 + 8);
      v19(v10, v7);
      URL.path.getter();
      v19(v13, v7);
      v19(v16, v7);
    }
  }

  v20 = SportingEventSubscription.Competitor.canonicalId.getter();
  v26[4] = v21;
  v26[5] = v20;
  v22 = SportingEventSubscription.Competitor.teamColorHex.getter();
  v26[2] = v23;
  v26[3] = v22;
  SportingEventSubscription.Competitor.abbreviation.getter();
  v26[1] = v24;
  SportingEventSubscription.Competitor.name.getter();
  sub_100080524(v27);
  SportingEventSubscription.Competitor.isHome.getter();
  SportingEventSubscription.Competitor.ordinal.getter();
  return SportsActivityAttributes.Contender.init(canonicalId:colorHex:abbreviation:name:localLogoURL:logoFilePaths:isHome:ordinal:)();
}

uint64_t sub_100080524@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v71 = *(v2 - 8);
  __chkstk_darwin(v2);
  v69 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = &v66 - v5;
  v6 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = sub_100003998(&qword_1000DD250, &unk_1000AEBC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v66 - v13;
  v15 = type metadata accessor for SportingEventSubscription.Competitor.LogoFilePaths();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v72 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v66 - v19;
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  SportingEventSubscription.Competitor.logoFilePaths.getter();
  if (sub_100008B84(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v23, v14, v15);
    SportingEventSubscription.Competitor.LogoFilePaths.smallSize.getter();
    v29 = &unk_1000DB000;
    v73 = v16;
    v74 = v15;
    v68 = a1;
    if (v30)
    {
      URL.init(string:)();

      if (sub_100008B84(v11, 1, v2) != 1)
      {
        URL.lastPathComponent.getter();
        v42 = *(v71 + 8);
        v42(v11, v2);
        v43 = [objc_opt_self() defaultManager];
        v44 = v69;
        NSFileManager.currentContainerURL.getter();

        v45 = v70;
        URL.appendingPathComponent(_:)();

        v42(v44, v2);
        v67 = URL.path.getter();
        v41 = v46;
        v42(v45, v2);
        v16 = v73;
        v15 = v74;
        goto LABEL_23;
      }

      sub_10001BB44(v11, &unk_1000DD7B0, &qword_1000AC150);
      v29 = &unk_1000DB000;
    }

    if (v29[327] != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100007DE8(v31, qword_1000E6D90);
    (*(v16 + 16))(v20, v23, v15);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75 = v35;
      *v34 = 136315138;
      v36 = SportingEventSubscription.Competitor.LogoFilePaths.smallSize.getter();
      if (v37)
      {
        v38 = v36;
      }

      else
      {
        v38 = 7104878;
      }

      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0xE300000000000000;
      }

      (*(v73 + 8))(v20, v74);
      v40 = sub_1000170D4(v38, v39, &v75);
      v15 = v74;

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to normalize logo path for small size at %s", v34, 0xCu);
      sub_100008A94(v35);
      v16 = v73;
    }

    else
    {

      (*(v16 + 8))(v20, v15);
    }

    v67 = 0;
    v41 = 0;
LABEL_23:
    SportingEventSubscription.Competitor.LogoFilePaths.defaultSize.getter();
    URL.init(string:)();

    v47 = sub_100008B84(v8, 1, v2);
    v48 = v72;
    if (v47 == 1)
    {
      sub_10001BB44(v8, &unk_1000DD7B0, &qword_1000AC150);
      if (qword_1000DBA38 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100007DE8(v49, qword_1000E6D90);
      (*(v16 + 16))(v48, v23, v15);
      v50 = Logger.logObject.getter();
      v51 = v16;
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v75 = v54;
        *v53 = 136315138;
        v55 = SportingEventSubscription.Competitor.LogoFilePaths.defaultSize.getter();
        v57 = v56;
        (*(v51 + 8))(v48, v74);
        v58 = sub_1000170D4(v55, v57, &v75);

        *(v53 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v50, v52, "Failed to normalize logo path for default size at %s", v53, 0xCu);
        sub_100008A94(v54);
        v15 = v74;
      }

      else
      {

        (*(v51 + 8))(v48, v15);
      }

      v64 = 0;
    }

    else
    {
      URL.lastPathComponent.getter();
      v59 = *(v71 + 8);
      v59(v8, v2);
      v60 = [objc_opt_self() defaultManager];
      v61 = v69;
      NSFileManager.currentContainerURL.getter();

      v62 = v70;
      v15 = v74;
      URL.appendingPathComponent(_:)();

      v59(v61, v2);
      URL.path.getter();
      v64 = v63;
      v59(v62, v2);
    }

    if (v41 || (SportingEventSubscription.Competitor.LogoFilePaths.smallSize.getter(), v65))
    {
      if (v64)
      {
LABEL_35:
        SportsActivityAttributes.Contender.LogoFilePaths.init(smallSize:defaultSize:)();
        return (*(v73 + 8))(v23, v15);
      }
    }

    else if (v64)
    {
      goto LABEL_35;
    }

    SportingEventSubscription.Competitor.LogoFilePaths.defaultSize.getter();
    goto LABEL_35;
  }

  sub_10001BB44(v14, &qword_1000DD250, &unk_1000AEBC0);
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100007DE8(v24, qword_1000E6D90);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to normalize logos, missing LogoFilePaths.", v27, 2u);
  }

  return SportsActivityAttributes.Contender.LogoFilePaths.init(smallSize:defaultSize:)();
}

void *sub_100080E6C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v73) = a2;
  v72 = a3;
  v4 = type metadata accessor for SportingEventClockPeriodType();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v62 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100003998(&qword_1000DE8A0, &qword_1000AEB78);
  __chkstk_darwin(v66);
  v7 = &v62 - v6;
  v8 = sub_100003998(&qword_1000DE8A8, &qword_1000AEB80);
  __chkstk_darwin(v8 - 8);
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v16 = type metadata accessor for SportingEventProgressStatus();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v62 - v21;
  v23 = sub_100003998(&qword_1000DE8B0, &qword_1000AEB88);
  __chkstk_darwin(v23 - 8);
  v74 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v62 - v26;
  v28 = type metadata accessor for RunningClockComponentsFormatter.DataSource();
  v70 = *(v28 - 8);
  v71 = v28;
  __chkstk_darwin(v28);
  v69 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v62 - v31;
  v64 = a1;
  SportingEventSubscription.createRunningClockDataSource(preferStaticClock:)();
  v33 = type metadata accessor for PenaltyShootoutsViewModel();
  v73 = v27;
  v63 = v33;
  sub_100008E2C(v27, 1, 1, v33);
  RunningClockComponentsFormatter.DataSource.progressStatus.getter();
  (*(v17 + 104))(v19, enum case for SportingEventProgressStatus.inProgress(_:), v16);
  LOBYTE(a1) = sub_100064D7C(v22, v19);
  v34 = *(v17 + 8);
  v34(v19, v16);
  v34(v22, v16);
  if ((a1 & 1) == 0)
  {
    goto LABEL_23;
  }

  RunningClockComponentsFormatter.DataSource.periodType.getter();
  v36 = v67;
  v35 = v68;
  (*(v67 + 104))(v12, enum case for SportingEventClockPeriodType.shootouts(_:), v68);
  sub_100008E2C(v12, 0, 1, v35);
  v37 = *(v66 + 48);
  sub_10008341C(v15, v7, &qword_1000DE8A8, &qword_1000AEB80);
  sub_10008341C(v12, &v7[v37], &qword_1000DE8A8, &qword_1000AEB80);
  if (sub_100008B84(v7, 1, v35) == 1)
  {
    sub_10001BB44(v12, &qword_1000DE8A8, &qword_1000AEB80);
    sub_10001BB44(v15, &qword_1000DE8A8, &qword_1000AEB80);
    if (sub_100008B84(&v7[v37], 1, v35) == 1)
    {
      sub_10001BB44(v7, &qword_1000DE8A8, &qword_1000AEB80);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v38 = v65;
  sub_10008341C(v7, v65, &qword_1000DE8A8, &qword_1000AEB80);
  if (sub_100008B84(&v7[v37], 1, v35) == 1)
  {
    sub_10001BB44(v12, &qword_1000DE8A8, &qword_1000AEB80);
    sub_10001BB44(v15, &qword_1000DE8A8, &qword_1000AEB80);
    (*(v36 + 8))(v38, v35);
LABEL_7:
    sub_10001BB44(v7, &qword_1000DE8A0, &qword_1000AEB78);
LABEL_23:
    v56 = v70;
    v57 = v71;
    (*(v70 + 16))(v69, v32, v71);
    v58 = v73;
    sub_10008341C(v73, v74, &qword_1000DE8B0, &qword_1000AEB88);
    v59 = v72;
    SportsActivitySoccerClock.init(runningClockDataSource:penaltyShootoutsViewModel:)();
    sub_10001BB44(v58, &qword_1000DE8B0, &qword_1000AEB88);
    (*(v56 + 8))(v32, v57);
    v60 = enum case for SportsActivityClock.soccer(_:);
    v61 = type metadata accessor for SportsActivityClock();
    return (*(*(v61 - 8) + 104))(v59, v60, v61);
  }

  v39 = v62;
  (*(v36 + 32))(v62, &v7[v37], v35);
  sub_1000832D4(&qword_1000DE8B8, &type metadata accessor for SportingEventClockPeriodType, &protocol conformance descriptor for SportingEventClockPeriodType);
  LODWORD(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v36 + 8);
  v40(v39, v35);
  sub_10001BB44(v12, &qword_1000DE8A8, &qword_1000AEB80);
  sub_10001BB44(v15, &qword_1000DE8A8, &qword_1000AEB80);
  v40(v38, v35);
  sub_10001BB44(v7, &qword_1000DE8A8, &qword_1000AEB80);
  if ((v66 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v41 = SportingEventSubscription.sportingEventDetails.getter();
  v42 = dispatch thunk of SportingEvent.competitors.getter();

  v43 = sub_10001BE20(v42);
  if (!v43)
  {

LABEL_22:
    v54 = v74;
    PenaltyShootoutsViewModel.init(contextualShootouts:)();
    v55 = v73;
    sub_10001BB44(v73, &qword_1000DE8B0, &qword_1000AEB88);
    sub_100008E2C(v54, 0, 1, v63);
    sub_100083264(v54, v55);
    goto LABEL_23;
  }

  v44 = v43;
  v68 = v32;
  v75 = _swiftEmptyArrayStorage;
  result = sub_100017C00(0, v43 & ~(v43 >> 63), 0);
  if ((v44 & 0x8000000000000000) == 0)
  {
    v46 = 0;
    v47 = v75;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v48 = *(v42 + 8 * v46 + 32);
      }

      v49 = v48;
      v50 = SportingEventCompetitorContainer.competitor.getter();
      v51 = SportingEventCompetitor.contextualShootouts()();

      if (!v51)
      {
        v51 = _swiftEmptyArrayStorage;
      }

      v75 = v47;
      v53 = v47[2];
      v52 = v47[3];
      if (v53 >= v52 >> 1)
      {
        sub_100017C00((v52 > 1), v53 + 1, 1);
        v47 = v75;
      }

      ++v46;
      v47[2] = v53 + 1;
      v47[v53 + 4] = v51;
    }

    while (v44 != v46);

    v32 = v68;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008170C@<X0>(uint64_t a2@<X8>)
{
  v38 = a2;
  v2 = type metadata accessor for RunningClockComponentsFormatter.DataSource();
  __chkstk_darwin(v2 - 8);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsActivityBaseballClock();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportingEventProgressStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for BaseballClockFormatter.FormattedComponents();
  v32 = *(v13 - 8);
  v33 = v13;
  __chkstk_darwin(v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BaseballClockFormatter();
  static BaseballClockFormatter.formattedComponents(subscription:)();
  sub_100003998(&qword_1000DE8C0, &unk_1000AEB90);
  v16 = swift_allocObject();
  v31 = xmmword_1000AB130;
  *(v16 + 16) = xmmword_1000AB130;
  v17 = BaseballClockFormatter.FormattedComponents.activeBases.getter();
  v18 = sub_10007C350(1, v17);

  *(v16 + 32) = v18;
  v19 = BaseballClockFormatter.FormattedComponents.activeBases.getter();
  v20 = sub_10007C350(2, v19);

  *(v16 + 33) = v20;
  v21 = BaseballClockFormatter.FormattedComponents.activeBases.getter();
  v22 = sub_10007C350(3, v21);

  *(v16 + 34) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v31;
  *(v23 + 32) = BaseballClockFormatter.FormattedComponents.outs.getter() > 0;
  *(v23 + 33) = BaseballClockFormatter.FormattedComponents.outs.getter() > 1;
  *(v23 + 34) = BaseballClockFormatter.FormattedComponents.outs.getter() > 2;
  v24 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  (*(v7 + 104))(v9, enum case for SportingEventProgressStatus.inProgress(_:), v6);
  sub_100064D7C(v12, v9);
  v25 = *(v7 + 8);
  v25(v9, v6);
  v25(v12, v6);
  BaseballClockFormatter.FormattedComponents.pitchCount.getter();
  SportingEventSubscription.createRunningClockDataSource(preferStaticClock:)();
  v26 = v34;
  SportsActivityBaseballClock.init(basesActiveStates:outsActiveStates:ballsAndStrikes:isActiveBaseVisible:runningClockDataSource:)();
  (*(v32 + 8))(v15, v33);
  v27 = v38;
  (*(v36 + 32))(v38, v26, v37);
  v28 = enum case for SportsActivityClock.baseball(_:);
  v29 = type metadata accessor for SportsActivityClock();
  return (*(*(v29 - 8) + 104))(v27, v28, v29);
}

void sub_100081B8C(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v36[1] = a3;
  v36[0] = a1;
  v4 = sub_100003998(&qword_1000DDA80, &qword_1000AC500);
  __chkstk_darwin(v4 - 8);
  v6 = v36 - v5;
  v7 = type metadata accessor for SportingEventPlayLevel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  sub_10008341C(a2, v6, &qword_1000DDA80, &qword_1000AC500);
  if (sub_100008B84(v6, 1, v7) == 1)
  {
    sub_10001BB44(v6, &qword_1000DDA80, &qword_1000AC500);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v14 = SportingEventSubscription.mostRecentPlay.getter();
    v15 = sub_10007C174(v13, v14);

    (*(v8 + 8))(v13, v7);
    if (v15)
    {
      goto LABEL_5;
    }
  }

  v16 = SportingEventSubscription.mostRecentPlay.getter();
  (*(v8 + 104))(v10, enum case for SportingEventPlayLevel.all(_:), v7);
  v15 = sub_10007C174(v10, v16);

  (*(v8 + 8))(v10, v7);
  if (!v15)
  {
    static SportsActivityPlay.empty.getter();
    return;
  }

LABEL_5:
  v17 = dispatch thunk of SportingEventPlay.competitors.getter();
  v18 = sub_10001BE20(v17);

  if (v18 != 2)
  {
    v34 = 2;
LABEL_19:
    sub_10007F78C();
    swift_allocError();
    *v35 = v34;
    swift_willThrow();

    return;
  }

  v19 = v36[0][3];
  v20 = v36[0][4];
  sub_100008614(v36[0], v19);
  v21 = *(v20 + 32);
  v22 = *(v21(v19, v20) + 16);

  if (v22 != 2)
  {
    v34 = 1;
    goto LABEL_19;
  }

  v23 = v21(v19, v20);
  if (*(v23 + 16))
  {
    sub_10000BC8C(v23 + 32, v37);

    v24 = dispatch thunk of SportingEventPlay.competitors.getter();
    __chkstk_darwin(v24);
    v36[-2] = v37;

    v38 = sub_100082FD8(v25);
    v26 = v36[2];
    sub_100082258(sub_10008331C, &v36[-4]);
    if (v26)
    {
      goto LABEL_27;
    }

    v27 = v38;
    if ((v38 & 0xC000000000000001) == 0)
    {
      v28 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        v29 = *(v38 + 32);
        if (v28 != 1)
        {
          v30 = v29;
          v31 = v27[5];
          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_27:

      __break(1u);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
  v32 = v31;

  v33 = dispatch thunk of SportingEventCompetitorContainer.isActive.getter();
  if (v33 == 2 || (v33 & 1) == 0)
  {
    dispatch thunk of SportingEventCompetitorContainer.isActive.getter();
  }

  SportingEventPlay.playDescription.getter();
  SportsActivityPlay.init(isLeftBarVisible:isRightBarVisible:isPlay:text:)();

  sub_100008A94(v37);
}

uint64_t sub_100082034(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = SportingEventCompetitorContainer.competitor.getter();
  v5 = SportingEventCompetitor.canonicalId.getter();
  v7 = v6;

  v8 = a3[3];
  v9 = a3[4];
  sub_100008614(a3, v8);
  v10 = *(v9 + 8);
  if (v5 == v10(v8, v9) && v7 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      return v14 & 1;
    }
  }

  v15 = SportingEventCompetitorContainer.competitor.getter();
  v16 = SportingEventCompetitor.canonicalId.getter();
  v18 = v17;

  if (v16 == v10(v8, v9) && v18 == v19)
  {

    v14 = 0;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v14 = v21 ^ 1;
  }

  return v14 & 1;
}

uint64_t sub_1000821B8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for SportingEventCompetitorContainer();
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

unint64_t sub_100082234(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100082258(uint64_t (*a1)(id *, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_100083350(v6);
  }

  sub_1000822F0(a1, a2);
  return specialized ContiguousArray._endMutation()();
}

void sub_1000822F0(uint64_t (*a1)(id *, void **), uint64_t a2)
{
  v6 = v2[1];
  v7 = _minimumMergeRunLength(_:)(v6);
  if (v7 < v6)
  {
    v8 = v7;
    v9 = sub_1000821B8(v6 / 2);
    v11[0] = v10;
    v11[1] = (v6 / 2);
    sub_1000824E8(v11, v12, v2, a1, a2, v8);
    if (v3)
    {
      if (v6 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v6 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1000823E8(0, v6, 1, a1);
  }
}

void sub_1000823E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1000824E8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(id *, void **), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_94:
    v111 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_96;
    }

    goto LABEL_138;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v13 = *a3;
      v14 = v9 + 1;
      v115 = *(*a3 + 8 * v12);
      v114 = *(v13 + 8 * v9);
      v15 = v114;
      v16 = v115;
      v17 = v15;
      LODWORD(v111) = a4(&v115, &v114);
      if (v7)
      {

        goto LABEL_106;
      }

      v105 = v10;

      v108 = 8 * v11;
      v18 = (v13 + 8 * v11 + 16);
      v103 = v11;
      v19 = v11 + 2;
      v12 = v14;
      while (1)
      {
        v20 = v12;
        v21 = v19;
        if (v12 + 1 >= v8)
        {
          break;
        }

        v22 = v8;
        v23 = *(v18 - 1);
        v115 = *v18;
        v114 = v23;
        v24 = v115;
        v25 = v23;
        v26 = a4(&v115, &v114);

        v27 = v111 ^ v26;
        ++v18;
        v12 = v20 + 1;
        v19 = v21 + 1;
        v8 = v22;
        v7 = 0;
        if (v27)
        {
          goto LABEL_10;
        }
      }

      v12 = v8;
LABEL_10:
      if (v111)
      {
        if (v12 < v103)
        {
          goto LABEL_132;
        }

        v28 = v103 <= v20;
        v10 = v105;
        v11 = v103;
        if (v28)
        {
          if (v8 >= v21)
          {
            v29 = v21;
          }

          else
          {
            v29 = v8;
          }

          v30 = 8 * v29 - 8;
          v31 = v12;
          v32 = v103;
          v33 = v108;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v35 = *(v34 + v33);
              *(v34 + v33) = *(v34 + v30);
              *(v34 + v30) = v35;
            }

            ++v32;
            v30 -= 8;
            v33 += 8;
          }

          while (v32 < v31);
        }
      }

      else
      {
        v11 = v103;
        v10 = v105;
      }
    }

    v36 = a3[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_128;
      }

      if (v12 - v11 < a6)
      {
        if (__OFADD__(v11, a6))
        {
          __break(1u);
        }

        else
        {
          if (v11 + a6 >= v36)
          {
            v37 = a3[1];
          }

          else
          {
            v37 = v11 + a6;
          }

          if (v37 >= v11)
          {
            if (v12 == v37)
            {
              goto LABEL_33;
            }

            v80 = v11;
            v81 = *a3;
            v82 = (*a3 + 8 * v12 - 8);
            v104 = v80;
            v106 = v10;
            v83 = (v80 - v12);
            v101 = v37;
            while (1)
            {
              v110 = v12;
              v111 = v83;
              v84 = *(v81 + 8 * v12);
              v85 = v82;
              do
              {
                v115 = v84;
                v114 = *v82;
                v86 = v114;
                v87 = v84;
                v17 = v86;
                v88 = a4(&v115, &v114);
                if (v7)
                {

LABEL_106:
                  return;
                }

                v89 = v88;

                if ((v89 & 1) == 0)
                {
                  break;
                }

                if (!v81)
                {
                  goto LABEL_135;
                }

                v90 = *v82;
                v84 = v82[1];
                *v82 = v84;
                v82[1] = v90;
                --v82;
                v91 = __CFADD__(v83, 1);
                v83 = (v83 + 1);
              }

              while (!v91);
              v12 = v110 + 1;
              v82 = v85 + 1;
              v83 = (v111 - 1);
              if (v110 + 1 == v101)
              {
                v12 = v101;
                v11 = v104;
                v10 = v106;
                goto LABEL_33;
              }
            }
          }
        }

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
    }

LABEL_33:
    if (v12 < v11)
    {
      goto LABEL_127;
    }

    v109 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100016B2C();
      v10 = v92;
    }

    v38 = *(v10 + 2);
    v39 = v38 + 1;
    v40 = v11;
    if (v38 >= *(v10 + 3) >> 1)
    {
      sub_100016B2C();
      v10 = v93;
    }

    *(v10 + 2) = v39;
    v41 = v10 + 32;
    v42 = &v10[16 * v38 + 32];
    *v42 = v40;
    *(v42 + 1) = v109;
    v111 = *a1;
    if (!*a1)
    {
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      return;
    }

    if (v38)
    {
      break;
    }

LABEL_82:
    v8 = a3[1];
    v9 = v109;
    if (v109 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v43 = v39 - 1;
    v44 = &v41[16 * v39 - 16];
    v45 = &v10[16 * v39];
    if (v39 >= 4)
    {
      v50 = &v41[16 * v39];
      v51 = *(v50 - 8);
      v52 = *(v50 - 7);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_115;
      }

      v55 = *(v50 - 6);
      v54 = *(v50 - 5);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_116;
      }

      v57 = *(v45 + 1);
      v58 = v57 - *v45;
      if (__OFSUB__(v57, *v45))
      {
        goto LABEL_118;
      }

      v56 = __OFADD__(v48, v58);
      v59 = v48 + v58;
      if (v56)
      {
        goto LABEL_121;
      }

      if (v59 >= v53)
      {
        v73 = *v44;
        v72 = *(v44 + 1);
        v56 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v56)
        {
          goto LABEL_126;
        }

        if (v48 < v74)
        {
          v43 = v39 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v39 == 3)
    {
      v46 = *(v10 + 4);
      v47 = *(v10 + 5);
      v56 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      v49 = v56;
LABEL_53:
      if (v49)
      {
        goto LABEL_117;
      }

      v61 = *v45;
      v60 = *(v45 + 1);
      v62 = __OFSUB__(v60, v61);
      v63 = v60 - v61;
      v64 = v62;
      if (v62)
      {
        goto LABEL_120;
      }

      v65 = *(v44 + 1);
      v66 = v65 - *v44;
      if (__OFSUB__(v65, *v44))
      {
        goto LABEL_123;
      }

      if (__OFADD__(v63, v66))
      {
        goto LABEL_125;
      }

      if (v63 + v66 >= v48)
      {
        if (v48 < v66)
        {
          v43 = v39 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (v39 < 2)
    {
      goto LABEL_119;
    }

    v68 = *v45;
    v67 = *(v45 + 1);
    v56 = __OFSUB__(v67, v68);
    v63 = v67 - v68;
    v64 = v56;
LABEL_68:
    if (v64)
    {
      goto LABEL_122;
    }

    v70 = *v44;
    v69 = *(v44 + 1);
    v56 = __OFSUB__(v69, v70);
    v71 = v69 - v70;
    if (v56)
    {
      goto LABEL_124;
    }

    if (v71 < v63)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v43 - 1 >= v39)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v75 = &v41[16 * v43 - 16];
    v76 = *v75;
    v77 = &v41[16 * v43];
    v78 = *(v77 + 1);
    sub_100082BAC((*a3 + 8 * *v75), (*a3 + 8 * *v77), (*a3 + 8 * v78), v111, a4);
    if (v7)
    {
      goto LABEL_104;
    }

    if (v78 < v76)
    {
      goto LABEL_109;
    }

    v79 = v10;
    v10 = *(v10 + 2);
    if (v43 > v10)
    {
      goto LABEL_110;
    }

    *v75 = v76;
    *(v75 + 1) = v78;
    if (v43 >= v10)
    {
      goto LABEL_111;
    }

    v39 = (v10 - 1);
    memmove(&v41[16 * v43], v77 + 16, 16 * &v10[-v43 - 1]);
    *(v79 + 2) = v10 - 1;
    v28 = v10 > 2;
    v10 = v79;
    if (!v28)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
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
  v10 = sub_100082EC4(v10);
LABEL_96:
  v94 = v10 + 16;
  v95 = *(v10 + 2);
  while (v95 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_134;
    }

    v96 = v10;
    v97 = &v10[16 * v95];
    v10 = *v97;
    v98 = &v94[2 * v95];
    v99 = v98[1];
    sub_100082BAC((*a3 + 8 * *v97), (*a3 + 8 * *v98), (*a3 + 8 * v99), v111, a4);
    if (v7)
    {
      break;
    }

    if (v99 < v10)
    {
      goto LABEL_112;
    }

    if (v95 - 2 >= *v94)
    {
      goto LABEL_113;
    }

    *v97 = v10;
    *(v97 + 1) = v99;
    v100 = *v94 - v95;
    if (*v94 < v95)
    {
      goto LABEL_114;
    }

    v95 = *v94 - 1;
    memmove(v98, v98 + 2, 16 * v100);
    *v94 = v95;
    v10 = v96;
  }

LABEL_104:
}

uint64_t sub_100082BAC(char *a1, char *a2, void **a3, void **a4, uint64_t (*a5)(id *, void **))
{
  v6 = a4;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 >= v9)
  {
    sub_100016F60(a2, (a3 - a2) / 8, a4);
    v29 = a2;
    v13 = &v6[v9];
    v30 = -v6;
    v31 = a3;
    v53 = -v6;
    __src = v6;
LABEL_15:
    v32 = v29 - 1;
    --v31;
    v33 = v13 + v30;
    v55 = v29;
    while (1)
    {
      if (v13 <= v6 || v29 <= v7)
      {
LABEL_29:
        v45 = v13 - v6;
        v46 = v29 < v6 || v29 >= &v6[v45];
        if (v46 || v29 != v6)
        {
          v47 = 8 * v45;
          v48 = v6;
          goto LABEL_47;
        }

        return 1;
      }

      v56 = v33;
      v35 = v7;
      v36 = v13;
      v37 = v13 - 1;
      v60 = *(v13 - 1);
      v38 = v32;
      v59 = *v32;
      v39 = v59;
      v40 = v60;
      v41 = v39;
      v42 = a5(&v60, &v59);
      if (v5)
      {
        break;
      }

      v43 = v42;

      v44 = v31 + 1;
      if (v43)
      {
        v6 = __src;
        v29 = v38;
        v7 = v35;
        v13 = v36;
        v30 = v53;
        if (v44 != v55)
        {
          *v31 = *v38;
          v29 = v38;
        }

        goto LABEL_15;
      }

      v7 = v35;
      v29 = v55;
      v32 = v38;
      if (v36 != v44)
      {
        *v31 = *v37;
      }

      --v31;
      v33 = v56 - 8;
      v13 = v37;
      v6 = __src;
    }

    v29 = v55;
    v48 = __src;
    v51 = v55 < __src || v55 >= &__src[v56 / 8];
    if (v51 || v55 != __src)
    {
      v47 = 8 * (v56 / 8);
      goto LABEL_47;
    }
  }

  else
  {
    v10 = v5;
    sub_100016F60(a1, (a2 - a1) / 8, a4);
    v12 = a2;
    v13 = &v6[v8];
    v14 = a3;
    while (1)
    {
      if (v6 >= v13 || v12 >= v14)
      {
        v29 = v7;
        goto LABEL_29;
      }

      v16 = v13;
      v17 = v7;
      v18 = v12;
      v60 = *v12;
      v19 = v6;
      v20 = *v6;
      v59 = v20;
      v21 = v60;
      v22 = v20;
      v23 = a5(&v60, &v59);
      if (v10)
      {
        break;
      }

      v24 = v23;

      if (v24)
      {
        v10 = 0;
        v25 = v18;
        v12 = v18 + 1;
        v26 = v17;
        v27 = v17 == v18;
        v6 = v19;
      }

      else
      {
        v10 = 0;
        v25 = v19;
        v6 = v19 + 1;
        v26 = v17;
        v27 = v17 == v19;
        v12 = v18;
      }

      v14 = a3;
      v13 = v16;
      if (!v27)
      {
        *v26 = *v25;
      }

      v7 = (v26 + 1);
    }

    v48 = v19;
    v49 = v16 - v19;
    v50 = v17 < v19 || v17 >= &v19[v49];
    if (v50 || v17 != v19)
    {
      v47 = 8 * v49;
      v29 = v17;
LABEL_47:
      memmove(v29, v48, v47);
    }
  }

  return 1;
}

char *sub_100082ED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_1000DC4A0, &qword_1000AEBA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_100082FD8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      v5 = v4;
      v2 = sub_100016DD4(v4, 0);
      sub_10008306C((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_10008306C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10001BE20(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for SportingEventCompetitorContainer();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_100083364();
        for (i = 0; i != v7; ++i)
        {
          sub_100003998(&qword_1000DE8C8, &qword_1000AEBA8);
          v9 = sub_1000831D0(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1000831D0(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_100082224(a3);
  sub_100082234(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_10008325C;
}

uint64_t sub_100083264(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DE8B0, &qword_1000AEB88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000832D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100083364()
{
  result = qword_1000DE8D0;
  if (!qword_1000DE8D0)
  {
    sub_1000089A8(&qword_1000DE8C8, &qword_1000AEBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE8D0);
  }

  return result;
}

unint64_t sub_1000833C8()
{
  result = qword_1000DE8D8;
  if (!qword_1000DE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE8D8);
  }

  return result;
}

uint64_t sub_10008341C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003998(a3, a4);
  sub_10001C2AC();
  v5 = sub_10001C53C();
  v6(v5);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ActivityDataProviderError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x100083544);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100083580()
{
  result = qword_1000DE8E8;
  if (!qword_1000DE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE8E8);
  }

  return result;
}

uint64_t sub_100083618()
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100083690()
{

  return swift_allocObject();
}

unint64_t sub_1000836F0(uint64_t a1, uint64_t a2)
{
  v2 = swift_slowAlloc();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = [(objc_class *)isa bytes];
  v5 = isa;
  result = Data.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  CC_SHA1(v4, result, v2);
  v7 = Data.init(bytes:count:)();
  v9 = v8;
  v10 = [objc_opt_self() createBagForSubProfile];
  if (!v10)
  {
    sub_10008387C();
    v10 = sub_100020A74();
  }

  v11 = objc_opt_self();
  v12 = Data._bridgeToObjectiveC()().super.isa;
  v13 = [v11 signaturePromiseFromData:v12 type:1 bag:v10];

  sub_100008BAC(v7, v9);
  return v13;
}

unint64_t sub_10008387C()
{
  result = qword_1000DC968;
  if (!qword_1000DC968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC968);
  }

  return result;
}

unint64_t sub_1000838C0(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x31)
  {
    return 49;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100083914(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      result = 0x7041746E65696C63;
      break;
    case 2:
      result = 0x7542746E65696C63;
      break;
    case 3:
      result = 0x6163696E6F6E6163;
      break;
    case 4:
      result = 0x707954746E657665;
      break;
    case 5:
      result = 0x5574736575716572;
      break;
    case 6:
      sub_10008412C();
      result = v4 | 6;
      break;
    case 7:
    case 30:
    case 43:
      v7 = 5;
      goto LABEL_37;
    case 8:
    case 33:
      sub_10008412C();
      result = v6 | 2;
      break;
    case 9:
      sub_10008412C();
      result = v3 | 8;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x74726F7073;
      break;
    case 12:
      result = 0x6163696669746F6ELL;
      break;
    case 13:
    case 18:
    case 44:
      sub_10008412C();
      result = v5 | 7;
      break;
    case 14:
    case 19:
    case 38:
      v7 = 9;
LABEL_37:
      result = v7 | 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x6556726576726573;
      break;
    case 17:
    case 28:
    case 29:
    case 36:
    case 48:
      sub_10008412C();
      result = v8 | 3;
      break;
    case 20:
    case 26:
    case 37:
    case 41:
      sub_10008412C();
      result = v9 | 1;
      break;
    case 21:
      result = 0x6172747369676572;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x646F43726F727265;
      break;
    case 24:
      result = 0x6D6F44726F727265;
      break;
    case 25:
      result = 0x616552726F727265;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 31:
      result = 0x6174536863746566;
      break;
    case 32:
      result = 0x506B726F7774656ELL;
      break;
    case 34:
      result = 0xD000000000000010;
      break;
    case 35:
      result = 0x65736E6F70736572;
      break;
    case 39:
      result = 0x6F43737574617473;
      break;
    case 40:
      result = 0x4D74736575716572;
      break;
    case 42:
      result = 0x6E65674172657375;
      break;
    case 45:
      result = 0x6D614E746E657665;
      break;
    case 46:
      result = 0x73736572676F7270;
      break;
    case 47:
      result = 0x6552646568636163;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100083EEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000838C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100083F1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100083914(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsMetricsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD0)
  {
    if (a2 + 48 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 48) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 49;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v5 = v6 - 49;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportsMetricsKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xCF)
  {
    v6 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
        JUMPOUT(0x10008409CLL);
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
          *result = a2 + 48;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000840D8()
{
  result = qword_1000DE988;
  if (!qword_1000DE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE988);
  }

  return result;
}

uint64_t sub_100084140()
{
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 23;
  v1 = sub_100067F70();
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = v1;
  *(inited + 72) = 24;
  v2 = sub_100067DE8();
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v2;
  *(inited + 88) = v3;
  *(inited + 112) = 25;
  type metadata accessor for ApiAgentError(0);
  sub_100084234();
  v4 = Error.localizedDescription.getter();
  *(inited + 144) = &type metadata for String;
  *(inited + 120) = v4;
  *(inited + 128) = v5;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t sub_100084234()
{
  result = qword_1000DD730;
  if (!qword_1000DD730)
  {
    type metadata accessor for ApiAgentError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD730);
  }

  return result;
}

id sub_1000842C0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_100084324()
{
  v0 = sub_100003998(&qword_1000DCF70, &unk_1000AB920);
  sub_10000AC48();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100003998(&qword_1000DEA30, &qword_1000AED90);
  sub_10000AC48();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v20[-v10];
  type metadata accessor for ContainerConstants();
  v12 = static ContainerConstants.defaultSuiteName.getter();
  v14 = v13;
  v15 = objc_allocWithZone(NSUserDefaults);
  v16 = sub_100058E38(v12, v14);
  if (v16)
  {
    v17 = v16;
    swift_getKeyPath();
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_10000A6FC(&qword_1000DEA40, &qword_1000DEA30, &qword_1000AED90, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
    v18 = Publisher.eraseToAnyPublisher()();

    (*(v8 + 8))(v11, v6);
  }

  else
  {
    v20[15] = 0;
    Just.init(_:)();
    sub_10000A6FC(&qword_1000DEA38, &qword_1000DCF70, &unk_1000AB920, &protocol conformance descriptor for Just<A>);
    v18 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v0);
  }

  return v18;
}

id sub_1000845BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 filteringEnabled];
  *a2 = result;
  return result;
}

void sub_1000845F0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_10001BE20(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

uint64_t sub_1000846DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v76 = a2;
  v78 = a1;
  v4 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  sub_10000AC48();
  __chkstk_darwin(v5);
  sub_1000499AC();
  v86 = v6;
  sub_1000498EC();
  __chkstk_darwin(v7);
  v10 = &v69 - v9;
  v75 = *(a3 + 16);
  if (v75)
  {
    v11 = 0;
    v12 = a3 + 32;
    v73 = enum case for SportingEventCompetitorScoreStatisticType.StatisticName.shootout(_:);
    v72 = v8 + 104;
    v13 = _swiftEmptyArrayStorage;
    v74 = v8;
    v83 = v8 + 8;
    v71 = xmmword_1000AB460;
    v81 = v4;
    v82 = v8 + 16;
    v70 = a3 + 32;
    do
    {
      v14 = (v12 + 16 * v11);
      v16 = *v14;
      v15 = v14[1];
      v79 = v11 + 1;
      v80 = v13;

      v17 = dispatch thunk of SportingEventPlay.competitors.getter();
      v84 = sub_10001BE20(v17);
      v85 = v17;
      v18 = 0;
      a3 = v17 & 0xC000000000000001;
      v19 = v17 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v84 == v18)
        {

          sub_10007F78C();
          v64 = swift_allocError();
          sub_1000873B4(v64, v65);
          goto LABEL_40;
        }

        if (a3)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *(v19 + 16))
          {
            goto LABEL_44;
          }

          v20 = *(v85 + 8 * v18 + 32);
        }

        if (__OFADD__(v18, 1))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v87 = v20;
        v21 = SportingEventCompetitorContainer.competitor.getter();
        v22 = SportingEventCompetitor.canonicalId.getter();
        v24 = v23;

        if (v22 == v16 && v24 == v15)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v26)
        {
          goto LABEL_17;
        }

        ++v18;
      }

LABEL_17:

      sub_100003998(&qword_1000DEA50, &qword_1000AEDC8);
      v27 = v74;
      v28 = *(v74 + 72);
      v29 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v71;
      v77 = v30;
      v31 = v30 + v29;
      Sport.scoreStatisticName.getter();
      v32 = *(v27 + 104);
      v84 = v31;
      v85 = v28;
      v33 = v31 + v28;
      v34 = v81;
      v32(v33, v73, v81);
      v35 = 0;
      v36 = 0;
      v37 = *(v27 + 16);
      v38 = &_swiftEmptyDictionarySingleton;
      do
      {
        v39 = v35;
        v37(v10, v84 + v36 * v85, v34);
        v40 = dispatch thunk of SportingEventCompetitorContainer.getScoreEntry(name:)();
        if (v40)
        {
          v41 = v40;
          SportingEventCompetitorScoreEntry.value.getter();

          v37(v86, v10, v34);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = v38;
          sub_100017744();
          v45 = *(v38 + 2);
          v46 = (v44 & 1) == 0;
          v47 = v45 + v46;
          if (__OFADD__(v45, v46))
          {
            __break(1u);
            goto LABEL_43;
          }

          v48 = v43;
          v49 = v44;
          sub_100003998(&qword_1000DEA58, &qword_1000AEDD0);
          v50 = &v88;
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v47))
          {
            v50 = v88;
            sub_100017744();
            if ((v49 & 1) != (v52 & 1))
            {
              goto LABEL_46;
            }

            v48 = v51;
          }

          v38 = v88;
          if (v49)
          {
            sub_100087368();
            v34 = v81;
            v50(v86, v81);
            v53 = sub_10008737C();
            (v50)(v53);
          }

          else
          {
            *(v88 + (v48 >> 6) + 8) |= 1 << v48;
            v56 = v86;
            v34 = v81;
            v37((*(v38 + 6) + v48 * v85), v86, v81);
            sub_100087368();
            v50(v56, v34);
            v57 = sub_10008737C();
            (v50)(v57);
            v58 = *(v38 + 2);
            v59 = __OFADD__(v58, 1);
            v60 = v58 + 1;
            if (v59)
            {
              goto LABEL_45;
            }

            *(v38 + 2) = v60;
          }
        }

        else
        {
          v54 = sub_10008737C();
          v55(v54);
        }

        v35 = 1;
        v36 = 1;
      }

      while ((v39 & 1) == 0);
      swift_setDeallocating();
      sub_100086810();
      v13 = v80;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100016C08();
        v13 = v62;
      }

      a3 = v13[2];
      v61 = a3 + 1;
      if (a3 >= v13[3] >> 1)
      {
        sub_100016C08();
        v13 = v63;
      }

      v13[2] = v61;
      v13[a3 + 4] = v38;
      v11 = v79;
      v12 = v70;
    }

    while (v79 != v75);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
    v61 = _swiftEmptyArrayStorage[2];
  }

  if (v61 == 2)
  {
    a3 = v13[4];
  }

  else
  {
    sub_10007F78C();
    v66 = swift_allocError();
    sub_1000873B4(v66, v67);
LABEL_40:
  }

  return a3;
}

uint64_t sub_100084CC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v122 = a1;
  v123 = a2;
  v7 = sub_100003998(&qword_1000DE8A8, &qword_1000AEB80);
  v8 = sub_10001C3C4(v7);
  __chkstk_darwin(v8);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v9);
  sub_10008360C();
  v119 = v10;
  sub_10001F268();
  v126 = type metadata accessor for SportingEventProgressStatus();
  sub_10000AC48();
  v121 = v11;
  __chkstk_darwin(v12);
  sub_1000499AC();
  v125 = v13;
  sub_1000498EC();
  __chkstk_darwin(v14);
  sub_10008360C();
  v120 = v15;
  v16 = sub_100003998(&qword_1000DEA48, &qword_1000AEDC0);
  v17 = sub_10001C3C4(v16);
  __chkstk_darwin(v17);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v106 - v21;
  v124 = type metadata accessor for SportingEventCompetitorWinOutcome();
  sub_10000AC48();
  v117 = v23;
  __chkstk_darwin(v24);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v25);
  sub_1000835D8();
  __chkstk_darwin(v26);
  sub_10008360C();
  v116 = v27;
  sub_10001F268();
  v129 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  sub_10000AC48();
  v127 = v28;
  __chkstk_darwin(v29);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v30);
  v32 = &v106 - v31;
  type metadata accessor for Sport();
  sub_10000AC48();
  v130 = v34;
  v131 = v33;
  __chkstk_darwin(v33);
  sub_100087338();
  v36 = a4[3];
  v35 = a4[4];
  v37 = sub_100045DF4();
  sub_100008614(v37, v38);
  v39 = *((*(v35 + 32))(v36, v35) + 16);

  if (v39 != 2)
  {
    sub_10007F78C();
    swift_allocError();
    *v49 = 1;
    return swift_willThrow();
  }

  SportingEventSubscription.sport.getter();
  v128 = v4;
  Sport.init(rawValue:)();
  v40 = SportingEventSubscription.sportingEventDetails.getter();
  sub_100008614(a4, a4[3]);
  v41 = sub_100087350();
  result = v42(v41);
  if (*(result + 16))
  {
    sub_10000BC8C(result + 32, &v133);

    sub_100008614(a4, a4[3]);
    v44 = sub_100087350();
    result = v45(v44);
    if (*(result + 16) >= 2uLL)
    {
      sub_10000BC8C(result + 72, v132);

      v46 = v136;
      v47 = sub_100085FB8(a3, a4);
      if (v46)
      {
        (*(v130 + 8))(v128, v131);

        sub_100008A94(v132);
        return sub_100008A94(&v133);
      }

      v50 = v47;
      v51 = v48;
      v108 = v19;

      Sport.scoreStatisticName.getter();
      v52 = sub_10008737C();
      sub_10007C29C(v52, v53);
      v112 = v50;

      v54 = v127 + 8;
      v55 = *(v127 + 8);
      v55(v32, v129);

      Sport.scoreStatisticName.getter();
      sub_10007C29C(v32, v51);
      v111 = v51;

      v56 = sub_100087388();
      v110 = v54;
      v109 = v55;
      (v55)(v56);
      v57 = dispatch thunk of SportingEvent.competitors.getter();
      __chkstk_darwin(v57);
      *(&v106 - 2) = &v133;
      sub_1000845F0(sub_100087288, (&v106 - 4), v57);
      sub_1000873D4();
      v136 = v40;
      if (v40)
      {
        dispatch thunk of SportingEventCompetitorContainer.winOutcome.getter();

        v58 = sub_100087304();
        v59 = v124;
        v61 = sub_100008B84(v58, v60, v124);
        v62 = v126;
        if (v61 != 1)
        {
          v63 = v116;
          v107 = *(v117 + 32);
          v107(v116, v22, v59);
          v64 = dispatch thunk of SportingEvent.competitors.getter();
          __chkstk_darwin(v64);
          *(&v106 - 2) = v132;
          sub_1000845F0(sub_1000865B8, (&v106 - 4), v64);
          sub_1000873D4();
          v22 = v108;
          dispatch thunk of SportingEventCompetitorContainer.winOutcome.getter();

          v65 = sub_100087304();
          v67 = sub_100008B84(v65, v66, v59);
          v68 = v125;
          if (v67 != 1)
          {
            v95 = v113;
            v107(v113, v22, v59);
            v96 = enum case for SportingEventCompetitorWinOutcome.win(_:);
            v97 = v63;
            v98 = v117;
            v99 = *(v117 + 104);
            v100 = v114;
            v99(v114, enum case for SportingEventCompetitorWinOutcome.win(_:), v59);
            sub_100064E90(v97, v100);
            v101 = *(v98 + 8);
            v101(v100, v59);
            v99(v100, v96, v59);
            sub_100064E90(v95, v100);
            v101(v100, v59);
            v101(v95, v59);
            v101(v116, v59);
            v92 = v130;
            v91 = v131;
            goto LABEL_23;
          }

          (*(v117 + 8))(v63, v59);
          v69 = v121;
LABEL_13:
          v72 = v120;
          sub_10001BB44(v22, &qword_1000DEA48, &qword_1000AEDC0);
          SportingEvent.progressStatus.getter();
          v73 = *(v69 + 104);
          v73(v68, enum case for SportingEventProgressStatus.final(_:), v62);
          v74 = sub_100064D7C(v72, v68);
          v75 = *(v69 + 8);
          v76 = sub_100087388();
          v75(v76);
          v77 = sub_100045DF4();
          v75(v77);
          if ((v74 & 1) == 0)
          {
            SportingEvent.progressStatus.getter();
            v73(v68, enum case for SportingEventProgressStatus.forfeit(_:), v62);
            v78 = sub_100064D7C(v72, v68);
            v79 = sub_100087388();
            v75(v79);
            v80 = sub_100045DF4();
            v75(v80);
            if ((v78 & 1) == 0)
            {
              v92 = v130;
              v91 = v131;
LABEL_23:
              v102 = v134;
              v103 = v135;
              sub_100008614(&v133, v134);
              (*(v103 + 8))(v102, v103);

              SportsActivityContender.init(canonicalId:scoreEntries:isWinnerIndicatorVisible:)();
              sub_100008614(v132, v132[3]);
              v104 = sub_100045DF4();
              v105(v104);

              SportsActivityContender.init(canonicalId:scoreEntries:isWinnerIndicatorVisible:)();

              (*(v92 + 8))(v128, v91);
              sub_100008A94(v132);
              return sub_100008A94(&v133);
            }
          }

          v81 = SportingEvent.clock.getter();
          v82 = SportingEventCurrentClock.current.getter();

          v83 = SportingEventClock.period.getter();
          v84 = v119;
          dispatch thunk of SportingEventClockPeriod.type.getter();

          v85 = type metadata accessor for SportingEventClockPeriodType();
          v86 = sub_100087304();
          if (sub_100008B84(v86, v87, v85) != 1)
          {
            v88 = v115;
            sub_1000459F8(v84, v115, &qword_1000DE8A8, &qword_1000AEB80);
            v89 = *(v85 - 8);
            if ((*(v89 + 88))(v88, v85) == enum case for SportingEventClockPeriodType.shootouts(_:))
            {
              v90 = v118;
              (*(v127 + 104))(v118, enum case for SportingEventCompetitorScoreStatisticType.StatisticName.shootout(_:), v129);
LABEL_21:
              sub_10001BB44(v84, &qword_1000DE8A8, &qword_1000AEB80);
              v93 = v112;

              sub_10007C29C(v90, v93);

              v94 = v111;

              sub_10007C29C(v90, v94);

              v109(v90, v129);
              v92 = v130;
              v91 = v131;
              goto LABEL_23;
            }

            (*(v89 + 8))(v88, v85);
          }

          v90 = v118;
          Sport.scoreStatisticName.getter();
          goto LABEL_21;
        }
      }

      else
      {
        v70 = sub_100087304();
        sub_100008E2C(v70, v71, 1, v124);
        v62 = v126;
      }

      v69 = v121;
      v68 = v125;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000858E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v61 = a3;
  v62 = a4;
  v67 = a1;
  v6 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v7 = sub_10001C3C4(v6);
  __chkstk_darwin(v7);
  sub_1000499AC();
  v60 = v8;
  sub_1000498EC();
  __chkstk_darwin(v9);
  sub_10008360C();
  v59 = v10;
  sub_10001F268();
  type metadata accessor for URLQueryItem();
  sub_10000AC48();
  v68 = v12;
  v69 = v11;
  __chkstk_darwin(v11);
  sub_1000499AC();
  v64 = v13;
  sub_1000498EC();
  __chkstk_darwin(v14);
  sub_10008360C();
  v63 = v15;
  sub_10001F268();
  type metadata accessor for URLComponents();
  sub_10000AC48();
  v65 = v17;
  v66 = v16;
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  v23 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  v24 = sub_10001C3C4(v23);
  __chkstk_darwin(v24);
  v26 = &v58 - v25;
  v27 = type metadata accessor for SportingEventSubscription.Metadata();
  sub_10000AC48();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_100087338();
  v31 = sub_100087388();
  sub_1000459F8(v31, v32, &qword_1000DD218, &unk_1000ABE10);
  if (sub_100008B84(v26, 1, v27) == 1)
  {
    sub_10001BB44(v26, &qword_1000DD218, &unk_1000ABE10);
    if (qword_1000DBA38 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100007DE8(v33, qword_1000E6D90);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Cannot create event deeplink URL, metadata is missing", v36, 2u);
    }

    return 0;
  }

  else
  {
    (*(v29 + 32))(v4, v26, v27);

    v70._countAndFlagsBits = v67;
    v70._object = a2;
    v38 = sub_10004B99C(v70);
    v39 = v29;
    if (v38 == 2)
    {
      URLComponents.init()();
      sub_100087320();
      URLComponents.scheme.setter();
      sub_100087394();

      sub_1000872B8();
      v49 = v64;
      URLQueryItem.init(name:value:)();

      sub_100003998(&qword_1000DC590, &unk_1000AAFC0);
      v50 = v68;
      v51 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1000AA5B0;
      v53 = v49;
      v54 = v69;
      (*(v50 + 16))(v52 + v51, v53, v69);
      URLComponents.queryItems.setter();
      v55 = v60;
      URLComponents.url.getter();
      v56 = type metadata accessor for URL();
      if (sub_100008B84(v55, 1, v56) == 1)
      {
        sub_10001BB44(v55, &unk_1000DD7B0, &qword_1000AC150);
        v37 = 0;
      }

      else
      {
        v37 = URL.absoluteString.getter();
        (*(*(v56 - 8) + 8))(v55, v56);
      }

      (*(v50 + 8))(v64, v54);
      (*(v65 + 8))(v19, v66);
    }

    else
    {
      v41 = v68;
      v40 = v69;
      if (v38 == 1)
      {
        URLComponents.init()();
        sub_100087320();
        URLComponents.scheme.setter();
        sub_100087394();

        sub_1000872B8();
        v42 = v63;
        URLQueryItem.init(name:value:)();

        sub_100003998(&qword_1000DC590, &unk_1000AAFC0);
        v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1000AA5B0;
        (*(v41 + 16))(v44 + v43, v42, v40);
        URLComponents.queryItems.setter();
        v45 = v59;
        URLComponents.url.getter();
        v46 = type metadata accessor for URL();
        v47 = sub_100087304();
        if (sub_100008B84(v47, v48, v46) == 1)
        {
          sub_10001BB44(v45, &unk_1000DD7B0, &qword_1000AC150);
          v37 = 0;
        }

        else
        {
          v37 = URL.absoluteString.getter();
          (*(*(v46 - 8) + 8))(v45, v46);
        }

        (*(v41 + 8))(v63, v40);
        (*(v65 + 8))(v22, v66);
      }

      else
      {
        v37 = SportingEventSubscription.Metadata.eventURL.getter();
      }
    }

    (*(v39 + 8))(v4, v27);
  }

  return v37;
}

uint64_t sub_100085FB8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Sport();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  v11 = a2[4];
  sub_100008614(a2, v10);
  v12 = *(v11 + 32);
  v13 = *(v12(v10, v11) + 16);

  if (v13 != 2)
  {
    sub_10007F78C();
    swift_allocError();
    *v46 = 1;
    swift_willThrow();
    return v10;
  }

  SportingEventSubscription.sport.getter();
  Sport.init(rawValue:)();
  result = v12(v10, v11);
  v58 = *(result + 16);
  if (v58)
  {
    v15 = 0;
    v55 = result + 32;
    v54 = enum case for SportingEventCompetitorScoreStatisticType.StatisticName.shootout(_:);
    v53 = v60 + 104;
    v64 = (v60 + 8);
    v65 = v60 + 16;
    v16 = _swiftEmptyArrayStorage;
    v52 = xmmword_1000AB460;
    v66 = a1;
    v56 = result;
    v57 = v9;
    while (v15 < *(result + 16))
    {
      v62 = v15;
      v63 = v16;
      sub_10000BC8C(v55 + 40 * v15, v69);
      sub_100003998(&qword_1000DEA50, &qword_1000AEDC8);
      v17 = v60;
      v18 = *(v60 + 72);
      v19 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v52;
      v61 = v20;
      v21 = v20 + v19;
      Sport.scoreStatisticName.getter();
      v22 = *(v17 + 104);
      v67 = v21;
      v68 = v18;
      v23 = v21 + v18;
      v24 = v59;
      v22(v23, v54, v59);
      v25 = 0;
      v26 = 0;
      v27 = *(v17 + 16);
      v28 = &_swiftEmptyDictionarySingleton;
      do
      {
        v29 = v25;
        v27(v7, v67 + v26 * v68, v24);
        v30 = v70;
        v31 = v71;
        sub_100008614(v69, v70);
        v32 = (*(v31 + 8))(v30, v31);
        v34 = v33;
        v35 = SportingEventSubscription.sportingEventDetails.getter();
        sub_1000865D8(v32, v34, v35, v7);
        v37 = v36;
        v38 = v24;
        v40 = v39;

        if (v40)
        {
          (*v64)(v7, v38);
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = v28;
          sub_100086BF0(v37, v7, isUniquelyReferenced_nonNull_native);
          (*v64)(v7, v38);
          v28 = v72;
        }

        v24 = v38;
        v25 = 1;
        v26 = 1;
      }

      while ((v29 & 1) == 0);
      swift_setDeallocating();
      sub_100086810();
      v16 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100016C08();
        v16 = v44;
      }

      v9 = v57;
      v42 = v62;
      v43 = v16[2];
      if (v43 >= v16[3] >> 1)
      {
        sub_100016C08();
        v16 = v45;
      }

      v15 = v42 + 1;
      v16[2] = v43 + 1;
      v16[v43 + 4] = v28;
      sub_100008A94(v69);
      result = v56;
      if (v15 == v58)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_18:
  v47 = v16[2];
  if (!v47)
  {
    goto LABEL_23;
  }

  if (v47 != 1)
  {
    v10 = v16[4];
    v48 = *(v50 + 8);

    v48(v9, v51);

    return v10;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000864E4(uint64_t a1, void *a2)
{
  v3 = SportingEventCompetitorContainer.competitor.getter();
  v4 = SportingEventCompetitor.canonicalId.getter();
  v6 = v5;

  v7 = a2[3];
  v8 = a2[4];
  sub_100008614(a2, v7);
  if (v4 == (*(v8 + 8))(v7, v8) && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

void sub_1000865D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = dispatch thunk of SportingEvent.competitors.getter();
  v7 = sub_10001BE20(v6);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      return;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v11 = SportingEventCompetitorContainer.competitor.getter();
    v12 = SportingEventCompetitor.canonicalId.getter();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_16;
    }
  }

LABEL_16:

  v17 = dispatch thunk of SportingEventCompetitorContainer.getScoreEntry(name:)();

  if (v17)
  {
    SportingEventCompetitorScoreEntry.value.getter();
  }
}

uint64_t sub_100086754()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000867C0(uint64_t *a1, uint64_t *a2)
{
  sub_100003998(a1, a2);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v2, 32, 7);
}

uint64_t sub_100086810()
{
  type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100086888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  sub_100017538(a3, a4);
  sub_1000872A4();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_100003998(&qword_1000DE2C0, &unk_1000ADAA0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v12))
  {
    goto LABEL_5;
  }

  v18 = sub_100017538(a3, a4);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v6;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_100086FD4(v16, a3, a4, a1, a2, v20);
  }
}

unint64_t sub_1000869D0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  sub_1000175AC(a2);
  sub_1000872A4();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v7;
  sub_100003998(&qword_1000DD7C0, &unk_1000AC128);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v6))
  {
    sub_1000175AC(a2);
    if ((v9 & 1) != (v10 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v9)
  {
    sub_100079604();

    return sub_100045358(v11, v12);
  }

  else
  {
    sub_100079604();

    return sub_100087020(v15, v16, v17, v18);
  }
}

_OWORD *sub_100086AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000872D8(a1, a2, a3);
  sub_1000872A4();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_100003998(&qword_1000DEA68, &unk_1000AFC00);
  v12 = sub_100087310();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    goto LABEL_5;
  }

  v14 = sub_100017538(v6, v5);
  if ((v11 & 1) != (v15 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v14;
LABEL_5:
  v16 = *v4;
  if (v11)
  {
    sub_100008A94((v16[7] + 32 * v10));
    sub_100079604();

    return sub_100008EA8(v17, v18);
  }

  else
  {
    sub_10008706C(v10, v6, v5, v3, v16);
    sub_100079604();
  }
}

void sub_100086BF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  sub_100017744();
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v13;
  v19 = v14;
  sub_100003998(&qword_1000DEA58, &qword_1000AEDD0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  sub_100017744();
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v20;
LABEL_5:
  v22 = *v4;
  if (v19)
  {
    *(v22[7] + 8 * v18) = a1;
  }

  else
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_1000870D8(v18, v11, a1, v22);
  }
}

uint64_t sub_100086D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100017538(a2, a3);
  sub_1000872A4();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_100003998(&qword_1000DE880, &qword_1000AE978);
  v12 = sub_100087310();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    goto LABEL_5;
  }

  v14 = sub_100017538(a2, a3);
  if ((v11 & 1) != (v15 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v14;
LABEL_5:
  v16 = *v3;
  if (v11)
  {
    *(v16[7] + 8 * v10) = a1;
    sub_100079604();
  }

  else
  {
    sub_100087190(v10, a2, a3, a1, v16);
    sub_100079604();
  }
}

uint64_t sub_100086EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000872D8(a1, a2, a3);
  sub_1000872A4();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_100003998(&qword_1000DE870, &qword_1000AE968);
  v12 = sub_100087310();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    v14 = sub_100017538(v6, v5);
    if ((v11 & 1) == (v15 & 1))
    {
      v10 = v14;
      goto LABEL_5;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v11)
  {
    type metadata accessor for DatedSubscribers();
    sub_10001C2AC();
    sub_100079604();

    __asm { BRAA            X3, X16 }
  }

  sub_1000871D8(v10, v6, v5, v3, *v4);
  sub_100079604();
}

unint64_t sub_100086FD4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

unint64_t sub_100087020(unint64_t result, char a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = (a4[7] + 32 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_10008706C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100008EA8(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1000870D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100087190(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1000871D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for DatedSubscribers();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1000872D8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100017538(a2, a3);
}

uint64_t sub_100087394()
{

  return URLComponents.host.setter(0x746E657665, 0xE500000000000000);
}

uint64_t sub_1000873B4(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t sub_1000873D4()
{
  *(v1 - 344) = v0;
}

uint64_t sub_1000873FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_10008743C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000874B0()
{
  sub_100003998(&qword_1000DEA70, &qword_1000AEE70);
  sub_10000ACFC();
  __chkstk_darwin(v1);
  v3 = &v50 - v2;
  v55 = sub_100003998(&qword_1000DEA78, &qword_1000AEE78);
  sub_10000AC48();
  v5 = v4;
  sub_10000ACFC();
  __chkstk_darwin(v6);
  v8 = &v50 - v7;
  v57 = sub_100003998(&qword_1000DEA80, &qword_1000AEE80);
  sub_10000AC48();
  v58 = v9;
  sub_10000ACFC();
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  v59 = sub_100003998(&qword_1000DEA88, &qword_1000AEE88);
  sub_10000AC48();
  v60 = v13;
  sub_10000ACFC();
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v63 = sub_100003998(&qword_1000DEA90, &qword_1000AEE90);
  sub_10000AC48();
  v64 = v17;
  sub_10000ACFC();
  __chkstk_darwin(v18);
  sub_10000ADEC();
  sub_10000AF24(v19);
  v65 = sub_100003998(&qword_1000DEA98, &qword_1000AEE98);
  sub_10000AC48();
  v68 = v20;
  sub_10000ACFC();
  __chkstk_darwin(v21);
  sub_10000ADEC();
  sub_10000AF24(v22);
  sub_100003998(&qword_1000DEAA0, &qword_1000AEEA0);
  sub_10000AC48();
  v66 = v23;
  v67 = v24;
  sub_10000ACFC();
  __chkstk_darwin(v25);
  sub_10000ADEC();
  sub_10000AF24(v26);
  sub_100088EF8(v0, v69);
  sub_100089E54();
  v27 = swift_allocObject();
  sub_100089E34(v27);
  sub_100003998(&qword_1000DEAA8, &qword_1000AEEA8);
  sub_100089DF8();
  sub_10000A6FC(v28, &qword_1000DEAA8, &qword_1000AEEA8, v29);
  Deferred.init(createPublisher:)();
  v69[0] = *(v0 + 120);
  v30 = v69[0];
  v54 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_100008E2C(v3, 1, 1, v54);
  v53 = sub_10001FA6C();
  sub_10000A6FC(&qword_1000DEAB8, &qword_1000DEA78, &qword_1000AEE78, &protocol conformance descriptor for Deferred<A>);
  v52 = sub_10008965C(&qword_1000DEAC0, sub_10001FA6C, &protocol conformance descriptor for OS_dispatch_queue);
  v51 = v30;
  v31 = v55;
  Publisher.receive<A>(on:options:)();
  sub_100088F3C(v3);
  (*(v5 + 8))(v8, v31);
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DEAC8, &qword_1000AEEB0);
  sub_10000A6FC(&qword_1000DEAD0, &qword_1000DEA80, &qword_1000AEE80, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  sub_10000A6FC(&qword_1000DEAD8, &qword_1000DEAC8, &qword_1000AEEB0, &protocol conformance descriptor for Publishers.Sequence<A, B>);
  v32 = v57;
  Publisher<>.flatMap<A>(maxPublishers:_:)();
  sub_100089E60();
  v33(v12, v32);
  sub_100088EF8(v0, v69);
  sub_100089E54();
  v34 = swift_allocObject();
  sub_100089E34(v34);
  sub_10000A6FC(&qword_1000DEAE0, &qword_1000DEA88, &qword_1000AEE88, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v35 = v56;
  v36 = v59;
  Publisher.filter(_:)();

  sub_100089E60();
  v37(v16, v36);
  sub_100088EF8(v0, v69);
  sub_100089E54();
  v38 = swift_allocObject();
  sub_100089E34(v38);
  sub_100003998(&qword_1000DD670, &unk_1000AC168);
  sub_10000A6FC(&qword_1000DEAE8, &qword_1000DEA90, &qword_1000AEE90, &protocol conformance descriptor for Publishers.Filter<A>);
  sub_100089DE0();
  sub_10000A6FC(v39, &qword_1000DD670, &unk_1000AC168, v40);
  v41 = v61;
  v42 = v63;
  Publisher.flatMap<A>(maxPublishers:_:)();

  sub_100089E60();
  v43(v35, v42);
  v44 = v51;
  v69[0] = v51;
  sub_100008E2C(v3, 1, 1, v54);
  sub_10000A6FC(&qword_1000DEAF0, &qword_1000DEA98, &qword_1000AEE98, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v45 = v62;
  v46 = v65;
  Publisher.subscribe<A>(on:options:)();
  sub_100088F3C(v3);

  (*(v68 + 8))(v41, v46);
  sub_10000A6FC(&qword_1000DEAF8, &qword_1000DEAA0, &qword_1000AEEA0, &protocol conformance descriptor for Publishers.SubscribeOn<A, B>);
  v47 = v66;
  v48 = Publisher.eraseToAnyPublisher()();
  (*(v67 + 8))(v45, v47);
  return v48;
}

uint64_t sub_100087D28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100088EF8(a1, v5);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v5, 0x90uLL);
  sub_100003998(&qword_1000DEAA8, &qword_1000AEEA8);
  swift_allocObject();
  result = Future.init(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_100087DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v6 - 8);
  v8 = &__src[-v7];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for TaskPriority();
  sub_100008E2C(v8, 1, 1, v10);
  sub_100088EF8(a3, __src);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  memcpy(v11 + 4, __src, 0x90uLL);
  v11[22] = sub_100026094;
  v11[23] = v9;

  sub_10004A77C();
}

uint64_t sub_100087F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = *(type metadata accessor for SportsActivityManagedContext(0) - 8);
  v6[6] = swift_task_alloc();

  return _swift_task_switch(sub_100087FCC);
}

uint64_t sub_100087FCC()
{
  sub_10001BEC4();
  *(v0 + 56) = sub_100008614((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_100088070);
}

uint64_t sub_100088070()
{
  sub_10001BEC4();
  *(v0 + 64) = sub_100058D0C(v1);

  return _swift_task_switch(sub_1000880DC);
}

uint64_t sub_1000880DC()
{
  v27 = v0;
  v1 = v0;
  v2 = v0[8];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[5];
    v25 = v0[6];
    v26 = _swiftEmptyArrayStorage;
    sub_100017B68(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    do
    {
      v8 = v1;
      v9 = v1[6];
      sub_100089CF4(v6, v9);
      v10 = *v9;
      v11 = *(v25 + 8);

      sub_100089D58(v9, type metadata accessor for SportsActivityManagedContext);
      v26 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        sub_100017B68((v12 > 1), v13 + 1, 1);
        v5 = v26;
      }

      v5[2] = v13 + 1;
      v14 = &v5[2 * v13];
      v14[4] = v10;
      v14[5] = v11;
      v6 += v7;
      --v3;
      v1 = v8;
    }

    while (v3);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100007DE8(v15, qword_1000E6D90);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    v20 = Array.description.getter();
    v22 = sub_1000170D4(v20, v21, &v26);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Checking for stale activities: '%s'", v18, 0xCu);
    sub_100008A94(v19);
  }

  (v1[3])(v5, 0);

  v23 = v1[1];

  return v23();
}

uint64_t sub_1000883A8(uint64_t *a1)
{

  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000A6FC(&qword_1000DEB18, &qword_1000DC420, &unk_1000ADE60, &protocol conformance descriptor for [A]);
  return Publishers.Sequence.init(sequence:)();
}

uint64_t sub_10008846C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = a1[1];
  v25 = *a1;
  v12 = *(a2 + 16);
  if ((sub_100066914() & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_100008614((v12 + 16), *(v12 + 40));
  result = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (result)
  {
    v14 = result;
    (*a2)();
    SportingEventSubscription.updatedAt.getter();
    Date.timeIntervalSince(_:)();
    v16 = v15;
    v17 = *(v5 + 8);
    v17(v7, v4);
    v17(v10, v4);
    if (*(a2 + 128) >= v16)
    {

      return 0;
    }

    else
    {
      if (qword_1000DBA38 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100007DE8(v18, qword_1000E6D90);
      sub_100088EF8(a2, v27);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v26 = v22;
        *v21 = 136315650;
        *(v21 + 4) = sub_1000170D4(v25, v11, &v26);
        *(v21 + 12) = 2048;
        *(v21 + 14) = v16;
        *(v21 + 22) = 2048;
        v23 = v28;
        sub_100089B98(v27);
        *(v21 + 24) = v23;
        _os_log_impl(&_mh_execute_header, v19, v20, "Detected stale activity %s: (%f > %f).", v21, 0x20u);
        sub_100008A94(v22);
      }

      else
      {

        sub_100089B98(v27);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1000887B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v24 = *(a2 + 48);
  v5 = sub_100008614((a2 + 24), v24);
  v27 = v24;
  v6 = sub_10003F5B0(v26);
  (*(*(v24 - 8) + 16))(v6, v5, v24);
  v7 = *(a2 + 16);
  v8 = *(a2 + 72);
  sub_10000BC8C(a2 + 80, v30);
  v28 = v7;
  v29 = v8;
  v30[5] = v4;
  v30[6] = v3;
  v9 = type metadata accessor for ActivityAuthorization();
  v10 = objc_allocWithZone(v9);

  v11 = [v10 init];
  v12 = sub_1000499E0();
  v14 = v13;
  v25[3] = v9;
  v25[4] = &off_1000D1900;
  v25[0] = v11;
  type metadata accessor for ActivityCapUtility();
  v15 = swift_allocObject();
  v16 = sub_10000B90C(v25, v9);
  v17 = __chkstk_darwin(v16);
  v19 = (&v25[-2] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v15[5] = v9;
  v15[6] = &off_1000D1900;
  v15[2] = v21;
  v15[7] = v12;
  v15[8] = v14;
  sub_100008A94(v25);

  v30[7] = v15;
  v22 = sub_100088A30();
  sub_100089018(v26);
  v26[0] = v22;
  LOBYTE(v25[0]) = 0;
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.replaceError(with:)();
}

uint64_t sub_100088A30()
{
  v1 = v0;
  v40 = type metadata accessor for Date();
  sub_10000AC48();
  v39[1] = v2;
  __chkstk_darwin(v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for SubscriptionRefreshOperation(0);
  __chkstk_darwin(refreshed);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100003998(&qword_1000DD670, &unk_1000AC168);
  sub_10000AC48();
  v44 = v9;
  sub_10000ACFC();
  __chkstk_darwin(v10);
  sub_10000ADEC();
  v42 = v11;
  v45 = sub_100003998(&qword_1000DEB00, &qword_1000AEEB8);
  sub_10000AC48();
  v43 = v12;
  sub_10000ACFC();
  __chkstk_darwin(v13);
  sub_10000ADEC();
  sub_10000AF24(v14);
  v15 = v0[5];
  v16 = v0[6];
  sub_10000BC8C((v0 + 7), __src);
  v17 = v0[12];
  v18 = v0[13];

  if (sub_100066914())
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  static SportsManager.RefreshOptions.all.getter();
  *v8 = v15;
  *(v8 + 1) = v16;
  sub_10000A8F8(__src, (v8 + 16));
  *(v8 + 7) = v17;
  *(v8 + 8) = v18;
  v8[72] = v19 & 1;
  v20 = *(refreshed + 40);
  v21 = Date.init()();
  sub_10008C99C(v21);
  v23 = v22;
  sub_100089E60();
  v24(v5, v40);
  *&v8[v20] = v23;
  v25 = sub_1000A25EC();
  sub_100089D58(v8, type metadata accessor for SubscriptionRefreshOperation);
  *&__src[0] = v25;
  v48[0] = 0;
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
  v26 = v42;
  Publisher.replaceError(with:)();

  sub_1000890EC(v1, __src);
  v27 = swift_allocObject();
  memcpy((v27 + 16), __src, 0x78uLL);
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  sub_100089DE0();
  sub_10000A6FC(v28, v29, v30, v31);
  sub_100089DF8();
  sub_10000A6FC(v32, &qword_1000DD038, &unk_1000AB9A0, v33);
  v34 = v41;
  v35 = v46;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v44 + 8))(v26, v35);
  sub_10000A6FC(&qword_1000DEB08, &qword_1000DEB00, &qword_1000AEEB8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v36 = v45;
  v37 = Publisher.eraseToAnyPublisher()();
  (*(v43 + 8))(v34, v36);
  return v37;
}

uint64_t sub_100088F3C(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DEA70, &qword_1000AEE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100088FA4()
{

  sub_100008A94((v0 + 40));

  sub_100008A94((v0 + 96));

  sub_100089E54();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100089048@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1000890EC(a1, __src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x78uLL);
  sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  swift_allocObject();
  result = Future.init(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_10008912C(void (*a1)(void *), uint64_t a2, void *a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v6 - 8);
  v35 = v31 - v7;
  v8 = type metadata accessor for SportingEventProgressStatus();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v31 - v12;
  v14 = swift_allocObject();
  v31[1] = a2;
  v32 = a1;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = a3[5];

  if ((sub_100066914() & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_100008614((v15 + 16), *(v15 + 40));
  v16 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (!v16)
  {

    v24 = type metadata accessor for PersistentStoreError();
    sub_10008965C(&qword_1000DEB10, &type metadata accessor for PersistentStoreError, &protocol conformance descriptor for PersistentStoreError);
    v25 = swift_allocError();
    (*(*(v24 - 8) + 104))(v26, enum case for PersistentStoreError.fileNotFound(_:), v24);
    __src[0] = v25;
    LOBYTE(__src[1]) = 1;
    v32(__src);
  }

  v17 = v16;
  v18 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  v20 = v33;
  v19 = v34;
  (*(v33 + 32))(v10, v13, v34);
  v21 = (*(v20 + 88))(v10, v19);
  if (v21 != enum case for SportingEventProgressStatus.preGame(_:) && v21 != enum case for SportingEventProgressStatus.inProgress(_:) && v21 != enum case for SportingEventProgressStatus.statusBreak(_:))
  {
    if (v21 != enum case for SportingEventProgressStatus.final(_:))
    {
      if (v21 == enum case for SportingEventProgressStatus.postponed(_:))
      {
        goto LABEL_15;
      }

      if (v21 != enum case for SportingEventProgressStatus.suspended(_:) && v21 != enum case for SportingEventProgressStatus.cancelled(_:))
      {
        if (v21 == enum case for SportingEventProgressStatus.delayed(_:))
        {
          goto LABEL_15;
        }

        if (v21 != enum case for SportingEventProgressStatus.forfeit(_:))
        {
          if (v21 != enum case for SportingEventProgressStatus.unknown(_:))
          {
            (*(v20 + 8))(v10, v19);
          }

          goto LABEL_15;
        }
      }
    }

    SportingEventSubscription.liveActivityTTLSeconds.setter();
  }

LABEL_15:
  v28 = type metadata accessor for TaskPriority();
  sub_100008E2C(v35, 1, 1, v28);
  sub_1000890EC(a3, __src);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  memcpy(v29 + 4, __src, 0x78uLL);
  v29[19] = v17;
  v29[20] = sub_1000326E0;
  v29[21] = v14;
  sub_10004A77C();
}

uint64_t sub_1000895BC()
{
  sub_100008A94((v0 + 16));

  sub_100008A94((v0 + 72));

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100089624()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008965C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000896A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000896C8);
}

uint64_t sub_1000896C8()
{
  sub_10001BEC4();
  sub_100008614(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100089770;

  return sub_100058748();
}

uint64_t sub_100089770()
{
  sub_10001BEC4();
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1000898E8;
  }

  else
  {
    v2 = sub_100089880;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100089880()
{
  sub_10001BEC4();
  (*(v0 + 32))(1, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000898E8()
{
  v1 = v0[7];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1, 1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100089978()
{
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 32));

  sub_100008A94((v0 + 88));

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_1000899F0()
{
  v2 = *(v0 + 168);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_100089E10(v3);

  return sub_1000896A4(v4, v5, v6, v7, v8, v9, v2);
}

uint64_t sub_100089AA8()
{
  sub_10001BEC4();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100089BD4()
{
  swift_unknownObjectRelease();

  sub_100008A94((v0 + 56));

  sub_100008A94((v0 + 112));

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100089C4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100089E10(v1);

  return sub_100087F0C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100089CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsActivityManagedContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100089D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100089E34(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 - 232), 0x90uLL);
}

BOOL sub_100089E8C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SportsSessionType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t static SportsActivityCreationPolicy.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsActivityCreationPolicy(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003998(&qword_1000DEB20, &qword_1000AEF70);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_10008A144(a1, &v20 - v12);
  sub_10008A144(a2, &v13[v15]);
  sub_10008A53C(v13);
  if (!v17)
  {
    sub_10008A144(v13, v10);
    sub_10008A53C(&v13[v15]);
    if (!v17)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v16 = static Date.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_10008A210(v13);
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_10008A1A8(v13);
    v16 = 0;
    return v16 & 1;
  }

  sub_10008A53C(&v13[v15]);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_10008A210(v13);
  v16 = 1;
  return v16 & 1;
}

uint64_t type metadata accessor for SportsActivityCreationPolicy(uint64_t a1)
{
  result = qword_1000DEBA8;
  if (!qword_1000DEBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008A144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsActivityCreationPolicy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A1A8(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DEB20, &qword_1000AEF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008A210(uint64_t a1)
{
  v2 = type metadata accessor for SportsActivityCreationPolicy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008A270()
{
  result = qword_1000DEB28;
  if (!qword_1000DEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEB28);
  }

  return result;
}

unint64_t sub_10008A2C8()
{
  result = qword_1000DEB30;
  if (!qword_1000DEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEB30);
  }

  return result;
}

_BYTE *sub_10008A334(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x10008A3D0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10008A41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = sub_100008B84(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008A478(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Date();

  return sub_100008E2C(a1, v5, a3, v6);
}

uint64_t sub_10008A4D4(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

BOOL sub_10008A55C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_10008A60C()
{
  type metadata accessor for LiveActivityRequestMeasurement(0);
  swift_allocObject();
  result = sub_10008A6F8();
  qword_1000E6DF0 = result;
  return result;
}

uint64_t sub_10008A64C()
{
  result = sub_1000499E0();
  *&xmmword_1000DEBD8 = result;
  *(&xmmword_1000DEBD8 + 1) = v1;
  return result;
}

void sub_10008A670()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  v2 = 0x6C616E7265746E69;
  if (!v1)
  {
    v2 = 0x72656D6F74737563;
  }

  *&xmmword_1000DEBE8 = v2;
  *(&xmmword_1000DEBE8 + 1) = 0xE800000000000000;
}

uint64_t sub_10008A6F8()
{
  v0 = type metadata accessor for MetricsPipeline();
  v35 = *(v0 - 8);
  v36 = v0;
  __chkstk_darwin(v0);
  v34 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for MetricsPipeline.Configuration();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = &v27 - v5;
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v13 = *(qword_1000E6CC0 + 16);
  Bag.init(from:)();
  v14 = sub_100003998(&qword_1000DED90, &unk_1000AFC30);
  v30 = v7;
  v15 = *(v7 + 16);
  v15(v9, v12, v6);
  v27 = LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:bag:rules:)();
  v28 = v6;
  v15(v9, v12, v6);
  v16 = type metadata accessor for LiveActivityRequestEventRecorder();
  swift_allocObject();
  v17 = sub_10008B920(v9, 0xD000000000000013, 0x80000001000B0A70);
  v18 = v37;
  v19 = (v37 + OBJC_IVAR____TtC7sportsd30LiveActivityRequestMeasurement_eventRecorder);
  *(v37 + OBJC_IVAR____TtC7sportsd30LiveActivityRequestMeasurement_eventRecorder + 24) = v16;
  v19[4] = sub_10008C89C();
  *v19 = v17;
  v15(v9, v12, v6);
  v38[3] = v14;
  v38[4] = sub_10008C8F4();
  v38[0] = v27;

  sub_1000592AC(&off_1000CF9E0);
  v20 = v29;
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:)();
  sub_10000BC8C(v19, v38);
  v21 = v31;
  MetricsPipeline.Configuration.withRecorder(_:)();
  sub_100008A94(v38);
  v22 = v32;
  v23 = v33;
  v24 = *(v32 + 8);
  v24(v20, v33);
  (*(v22 + 16))(v20, v21, v23);
  v25 = v34;
  MetricsPipeline.init(from:)();

  v24(v21, v23);
  (*(v30 + 8))(v12, v28);
  (*(v35 + 32))(v18 + OBJC_IVAR____TtC7sportsd30LiveActivityRequestMeasurement_metricsPipeline, v25, v36);
  return v18;
}

uint64_t sub_10008AB34(uint64_t a1, uint64_t a2)
{
  *(&v78 + 1) = a2;
  *&v78 = a1;
  v84 = sub_100003998(&qword_1000DED80, &unk_1000AF218);
  sub_10000AC48();
  v82 = v2;
  __chkstk_darwin(v3);
  v80 = &v73 - v4;
  v83 = type metadata accessor for MetricsFieldsContext();
  sub_10000AC48();
  v81 = v5;
  __chkstk_darwin(v6);
  sub_100045D70();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v79 = &v73 - v11;
  type metadata accessor for MetricsData();
  sub_10000AC48();
  v86 = v13;
  v87 = v12;
  __chkstk_darwin(v12);
  v85 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  __chkstk_darwin(v15 - 8);
  sub_100045D70();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v73 - v20;
  v22 = type metadata accessor for URL();
  sub_10000AC48();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_100045D70();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v88 = &v73 - v30;
  v31 = [objc_opt_self() defaultManager];
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 containerURLForSecurityApplicationGroupIdentifier:v32];

  if (v33)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  sub_100008E2C(v18, v34, 1, v22);
  sub_10008C82C(v18, v21);
  if (sub_100008B84(v21, 1, v22) == 1)
  {
    return sub_1000261E8(v21, &unk_1000DD7B0, &qword_1000AC150);
  }

  URL.appendingPathComponent(_:)();
  v36 = *(v24 + 8);
  v36(v21, v22);
  (*(v24 + 32))(v88, v28, v22);
  v37 = Data.init(contentsOf:options:)();
  v39 = v38;
  sub_100008B28(v37, v38);
  v40 = sub_10008C984();
  v42 = sub_1000492AC(v40, v41);
  v77 = v24 + 8;
  v76 = v36;
  if (!v43)
  {
    v91 = v37;
    v92 = v39;
    v49 = sub_10008C984();
    sub_100008B28(v49, v50);
    sub_100003998(&unk_1000DD760, &qword_1000ABFF8);
    v47 = v9;
    if (swift_dynamicCast())
    {
      sub_10000A8F8(v89, &v93);
      sub_100008614(&v93, v94);
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        v51 = sub_10008C984();
        sub_100008BAC(v51, v52);
        sub_100008614(&v93, v94);
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v73 = *(&v89[0] + 1);
        v48 = *&v89[0];
        sub_100008A94(&v93);
        goto LABEL_14;
      }

      sub_100008A94(&v93);
    }

    else
    {
      v90 = 0;
      memset(v89, 0, sizeof(v89));
      sub_1000261E8(v89, &qword_1000DD588, &qword_1000AC000);
    }

    sub_10008C984();
    v48 = sub_100049074();
    v73 = v53;
    v54 = sub_10008C984();
    sub_100008BAC(v54, v55);
    goto LABEL_14;
  }

  v44 = v42;
  v73 = v43;
  v45 = sub_10008C984();
  sub_100008BAC(v45, v46);
  v47 = v9;
  v48 = v44;
LABEL_14:
  v74 = v39;
  if (qword_1000DBA70 != -1)
  {
    swift_once();
  }

  v75 = v37;
  v94 = &type metadata for String;
  v93 = xmmword_1000DEBD8;
  sub_10008C958();

  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  v56 = sub_10008C990();
  sub_100086AE0(v56, 7368801, 0xE300000000000000);
  v94 = &type metadata for String;
  *&v93 = 0xD000000000000013;
  *(&v93 + 1) = 0x80000001000B2960;
  sub_10008C958();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  sub_100086AE0(v89, 0x707954746E657665, 0xE900000000000065);
  v94 = &type metadata for String;
  strcpy(&v93, "Content");
  *(&v93 + 1) = 0xE700000000000000;
  sub_10008C958();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  sub_100086AE0(v89, 0xD000000000000010, 0x80000001000B2980);
  v94 = &type metadata for String;
  strcpy(&v93, "SportingEvent");
  HIWORD(v93) = -4864;
  sub_10008C958();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  sub_100086AE0(v89, 0xD000000000000013, 0x80000001000B29A0);
  if (qword_1000DBA78 != -1)
  {
    swift_once();
  }

  v94 = &type metadata for String;
  v93 = xmmword_1000DEBE8;
  sub_100008EA8(&v93, v89);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  v57 = sub_10008C990();
  sub_100086AE0(v57, v58, v59);
  v94 = &type metadata for String;
  v93 = v78;
  sub_100008EA8(&v93, v89);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  v60 = sub_10008C990();
  sub_100086AE0(v60, v61, 0xE900000000000064);
  v94 = &type metadata for String;
  *&v93 = v48;
  *(&v93 + 1) = v73;
  sub_10008C958();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  v62 = sub_10008C990();
  sub_100086AE0(v62, 0x6449746E65696C63, 0xE800000000000000);
  v94 = &type metadata for Int;
  *&v93 = 1;
  sub_10008C958();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  v63 = sub_10008C990();
  sub_100086AE0(v63, v64, v65);
  sub_100003998(&qword_1000DED88, &qword_1000AF228);
  type metadata accessor for MetricsFieldExclusionRequest();
  *(swift_allocObject() + 16) = xmmword_1000AA5B0;
  static MetricsFieldExclusionRequest.clientBuildType.getter();
  sub_100059438();
  v66 = v85;
  MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)();
  MetricsFieldsContext.init()();
  *&v93 = 0xD000000000000013;
  *(&v93 + 1) = 0x80000001000B0A70;
  v67 = v80;
  static MetricsFieldsContext.Property<A>.topic.getter();
  v68 = v79;
  MetricsFieldsContext.addingValue<A>(_:forProperty:)();
  (*(v82 + 8))(v67, v84);
  v69 = *(v81 + 8);
  v70 = v83;
  v69(v47, v83);
  MetricsPipeline.process(_:using:)();
  v69(v68, v70);
  v71 = sub_10001BDC0(0, &qword_1000DC5D8, OS_dispatch_queue_ptr);
  v72 = static OS_dispatch_queue.main.getter();
  v94 = v71;
  v95 = &protocol witness table for OS_dispatch_queue;
  *&v93 = v72;
  Promise.then(perform:orCatchError:on:)();

  sub_100008BAC(v75, v74);
  (*(v86 + 8))(v66, v87);
  v76(v88, v22);
  return sub_100008A94(&v93);
}

void sub_10008B638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D30);
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
    _os_log_impl(&_mh_execute_header, oslog, v4, "LiveActivityActionMeasurement: error: %@", v5, 0xCu);
    sub_1000261E8(v6, &unk_1000DD790, &unk_1000AB7A0);
  }
}

uint64_t sub_10008B794()
{
  v1 = OBJC_IVAR____TtC7sportsd30LiveActivityRequestMeasurement_metricsPipeline;
  type metadata accessor for MetricsPipeline();
  sub_100026794();
  (*(v2 + 8))(v0 + v1);
  sub_100008A94((v0 + OBJC_IVAR____TtC7sportsd30LiveActivityRequestMeasurement_eventRecorder));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for LiveActivityRequestMeasurement(uint64_t a1)
{
  result = qword_1000DEC30;
  if (!qword_1000DEC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008B888(uint64_t a1)
{
  result = type metadata accessor for MetricsPipeline();
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

void *sub_10008B920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Bag.Profile();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Bag.profile.getter();
  v12 = Bag.Profile.name.getter();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = Bag.amsBag.getter();
  v16 = objc_allocWithZone(AMSMetrics);
  v17 = sub_10008BE34(v12, v14, v15);
  v18 = AMSMetrics.withRemoteInspection.getter();

  v19 = type metadata accessor for Bag();
  (*(*(v19 - 8) + 8))(a1, v19);
  v4[2] = v18;
  v4[3] = a2;
  v4[4] = a3;
  return v4;
}

void sub_10008BAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  if (!a3)
  {
  }

  sub_10001BDC0(0, &qword_1000DED70, AMSMetricsEvent_ptr);

  v8 = sub_10008BBF8();
  v6 = LintedMetricsEvent.fields.getter();
  sub_10008BFD4(v6, v5);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 addPropertiesWithDictionary:isa];

  [v4[2] enqueueEvent:v8];
}

id sub_10008BBF8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithTopic:v1];

  return v2;
}

uint64_t sub_10008BC6C()
{
  sub_100003998(&qword_1000DED68, &qword_1000AF200);
  v1 = [*(v0 + 16) flush];
  Promise<A>.init(_:)();
  v4[3] = type metadata accessor for SyncTaskScheduler();
  v4[4] = &protocol witness table for SyncTaskScheduler;
  sub_10003F5B0(v4);
  SyncTaskScheduler.init()();
  v2 = Promise.map<A>(on:_:)();

  sub_100008A94(v4);
  return v2;
}

id sub_10008BD30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

uint64_t sub_10008BD94()
{
  v0 = sub_10008BD6C();

  return _swift_deallocClassInstance(v0, 40, 7);
}

id sub_10008BE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithContainerID:v5 bag:a3];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10008BE9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1000AC240;
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

unint64_t *sub_10008BF00(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10008C7B4(v7, a2, a3, &v8);

    if (!v4)
    {
      return v8;
    }
  }

  return result;
}

uint64_t sub_10008BF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t *sub_10008BFD4(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_10008BF00(v10, v6, v4, a2);

      return a2;
    }
  }

  __chkstk_darwin(a1);
  v7 = (&v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_10008BE9C(0, v6, v7);
  v8 = sub_10008C144(v7, v6, v4);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

unint64_t *sub_10008C144(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = result;
  v21 = 0;
  v3 = 0;
  v26 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v26 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_10001B798(*(v26 + 56) + 32 * v12, v25);
    v23[0] = v14;
    v23[1] = v15;
    v16 = sub_10001B798(v25, &v24);
    v22[0] = v14;
    v22[1] = v15;
    __chkstk_darwin(v16);
    v18[2] = v22;
    swift_bridgeObjectRetain_n();
    LOBYTE(v14) = sub_10008A55C(sub_10008C80C, v18, &off_1000CFA10);
    sub_1000261E8(v23, &qword_1000DED78, &unk_1000AF208);
    sub_100008A94(v25);

    if ((v14 & 1) == 0)
    {
      *(v20 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_10008C56C(v20, v19, v21, v26);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_10008C56C(v20, v19, v21, v26);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10008C330(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003998(&qword_1000DEDA8, &unk_1000AF230);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10008C56C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003998(&qword_1000DBCF8, &qword_1000AA680);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_10001B798(v17 + 32 * v16, v33);
    sub_100008EA8(v33, v32);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_100008EA8(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t *sub_10008C7B4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X8>)
{
  result = sub_10008C144(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_10008C82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008C89C()
{
  result = qword_1000DED98;
  if (!qword_1000DED98)
  {
    type metadata accessor for LiveActivityRequestEventRecorder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DED98);
  }

  return result;
}

unint64_t sub_10008C8F4()
{
  result = qword_1000DEDA0;
  if (!qword_1000DEDA0)
  {
    sub_1000089A8(&qword_1000DED90, &unk_1000AFC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEDA0);
  }

  return result;
}

void sub_10008C99C(uint64_t a1)
{
  Date.timeIntervalSince1970.getter();
  sub_10008CA88();
  if (!(v3 ^ v4 | v2))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v1 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_10008C9F4(uint64_t a1)
{
  Date.timeIntervalSince1970.getter();
  sub_10008CA88();
  if (!(v3 ^ v4 | v2))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v1 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_10008CA40(double a1)
{
  sub_10008CA88();
  if (!(v3 ^ v4 | v2))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v1 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_10008CAA4(int a1)
{
  v35 = a1;
  sub_100003998(&qword_1000DD020, &unk_1000AB990);
  sub_10000AC48();
  v36 = v3;
  v37 = v2;
  __chkstk_darwin(v2);
  v5 = &v33 - v4;
  v6 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v7 = sub_10001C3C4(v6);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for Date();
  sub_10000AC48();
  v34 = v11;
  __chkstk_darwin(v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  if (qword_1000DBA00 != -1)
  {
    sub_100091528(&qword_1000DBA00, v16, v17);
  }

  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  v21 = (v1 + *(ActivityOperation + 56));
  v22 = *v21;
  v23 = v21[1];
  if ((sub_10004F60C(*v21, v23) & 1) == 0)
  {
    v25 = sub_100045BF8();
    v26 = sub_10007BF3C(&unk_1000D4F28, v25);
    *v27 = v22;
    v27[1] = v23;
    v38 = v26;

    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    Fail.init(error:)();
    sub_10000A6FC(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990, &protocol conformance descriptor for Fail<A, B>);
    v28 = v37;
    v29 = Publisher.eraseToAnyPublisher()();
    (*(v36 + 8))(v5, v28);
    return v29;
  }

  if ((v35 & 1) == 0)
  {
    sub_1000459F8(v1 + *(ActivityOperation + 48), v9, &qword_1000DC5A0, &unk_1000AB0E0);
    if (sub_100008B84(v9, 1, v10) == 1)
    {
      sub_10001BB44(v9, &qword_1000DC5A0, &unk_1000AB0E0);
      return sub_10008DB70();
    }

    v30 = v34;
    (*(v34 + 32))(v19, v9, v10);
    static Date.now.getter();
    v31 = static Date.> infix(_:_:)();
    v32 = *(v30 + 8);
    v32(v14, v10);
    if ((v31 & 1) == 0)
    {
      v32(v19, v10);
      return sub_10008DB70();
    }

    v29 = sub_10008D460(v19);
    v32(v19, v10);
    return v29;
  }

  return sub_10008CEC0();
}

uint64_t type metadata accessor for SubscriptionCreateActivityOperation(uint64_t a1)
{
  result = qword_1000DEEA0;
  if (!qword_1000DEEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008CEC0()
{
  v78 = type metadata accessor for Date();
  sub_10000AC48();
  v77 = v1;
  __chkstk_darwin(v2);
  sub_10000ADA0();
  v76 = v4 - v3;
  v75 = type metadata accessor for UUID();
  sub_10000AC48();
  v73 = v5;
  __chkstk_darwin(v6);
  sub_10000ADA0();
  v9 = v8 - v7;
  v10 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
  v11 = sub_10001C3C4(v10);
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for SubscriptionRegisterOperation(0);
  sub_10001C2AC();
  __chkstk_darwin(v15);
  sub_10000ADA0();
  v18 = v17 - v16;
  sub_10000BC30(v0, v81);
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  v20 = 0;
  v21 = 0;
  v79 = 0;
  v22 = 0;
  v23 = (v0 + ActivityOperation[13]);
  v25 = *v23;
  v24 = v23[1];
  v69 = v25;
  v74 = v24;
  v26 = (v0 + ActivityOperation[15]);
  v28 = *v26;
  v27 = v26[1];
  v68 = v28;
  v67 = v27;
  if (*(v0 + 384) != 1)
  {
    v21 = *(v0 + 432);
    v20 = *(v0 + 440);
    v22 = *(v0 + 424);
    v79 = *(v0 + 416);
  }

  v72 = v20;
  v66 = *(v0 + 496);
  v29 = *(v0 + ActivityOperation[16]);
  v71 = v21;
  v70 = v22;
  if (v29)
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      v31 = 4;
    }

    else
    {
      v31 = 1;
    }
  }

  else
  {

    v31 = 4;
  }

  v65 = v31;
  v32 = type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
  sub_100008E2C(v13, 1, 1, v32);
  v33 = (v0 + ActivityOperation[14]);
  v35 = *v33;
  v34 = v33[1];
  v64 = v35;
  v63 = v34;
  sub_10000A898(v81, v18);
  v37 = v82;
  v36 = v83;
  sub_10000A898(&v84, v18 + 56);
  sub_10000A898(v85, v18 + 96);
  sub_1000459F8(v13, v18 + v14[18], &qword_1000DD210, &qword_1000ABE08);
  sub_100003998(&qword_1000DC430, &qword_1000AA610);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000AB460;
  v39 = v68;
  v40 = v67;
  *(v38 + 32) = v68;
  *(v38 + 40) = v40;

  UUID.init()();
  v41 = UUID.uuidString.getter();
  v62 = v13;
  v43 = v42;
  (*(v73 + 8))(v9, v75);
  *(v38 + 48) = v41;
  *(v38 + 56) = v43;
  v80 = v38;
  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60, &protocol conformance descriptor for [A]);
  v44 = BidirectionalCollection<>.joined(separator:)();
  v46 = v45;

  *(v18 + 40) = v37;
  *(v18 + 48) = v36;
  v47 = v74;
  *(v18 + 136) = v69;
  *(v18 + 144) = v47;
  *(v18 + 152) = v39;
  *(v18 + 160) = v40;
  v48 = v64;
  v49 = v63;
  *(v18 + 168) = v64;
  *(v18 + 176) = v49;
  v50 = v72;
  *(v18 + 184) = v71;
  *(v18 + 192) = v50;
  v51 = v70;
  *(v18 + 200) = v79;
  *(v18 + 208) = v51;
  *(v18 + 216) = xmmword_1000AF240;
  *(v18 + 232) = v66;
  *(v18 + 240) = 0;
  *(v18 + 248) = 0;
  *(v18 + 256) = v65;
  v52 = v14[19];
  v53 = v49;
  swift_bridgeObjectRetain_n();

  v54 = v76;
  v55 = Date.init()();
  sub_10008C99C(v55);
  v57 = v56;
  (*(v77 + 8))(v54, v78);
  sub_10001BB44(v62, &qword_1000DD210, &qword_1000ABE08);
  sub_10000BCF0(v81);
  *(v18 + v52) = v57;
  v58 = (v18 + v14[20]);
  *v58 = v44;
  v58[1] = v46;
  v59 = (v18 + v14[21]);
  *v59 = v48;
  v59[1] = v53;
  v60 = sub_1000351E0();
  sub_10009107C(v18, type metadata accessor for SubscriptionRegisterOperation);
  return v60;
}

uint64_t sub_10008D460(uint64_t a1)
{
  v46 = a1;
  v45 = type metadata accessor for Date();
  v43 = *(v45 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v45);
  v41 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  v4 = *(ActivityOperation - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(ActivityOperation - 8);
  v6 = sub_100003998(&qword_1000DEDB0, &qword_1000AF260);
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  __chkstk_darwin(v6);
  v55 = v36 - v8;
  v50 = sub_100003998(&qword_1000DEDB8, &qword_1000AF268);
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v42 = v36 - v9;
  v10 = sub_100003998(&qword_1000DEDC0, &unk_1000AF270);
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  __chkstk_darwin(v10);
  v49 = v36 - v12;
  v13 = *(v1 + 336);
  v54 = v1;
  v56 = *(*sub_100008614((v1 + 312), v13) + 64);
  v36[0] = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008E360(v1, v36[0]);
  v14 = *(v4 + 80);
  v15 = (v14 + 16) & ~v14;
  v39 = v15;
  v37 = v15 + v5;
  v38 = v14 | 7;
  v16 = swift_allocObject();
  sub_10008E3C8(v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DC9A0, &qword_1000AB3D0);
  v36[2] = sub_100003998(&qword_1000DEDC8, &unk_1000AF280);
  v40 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000A6FC(&qword_1000DC9A8, &qword_1000DC9A0, &qword_1000AB3D0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v36[1] = sub_10000A6FC(&qword_1000DEDD0, &qword_1000DEDC8, &unk_1000AF280, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  v17 = v36[0];
  sub_10008E360(v54, v36[0]);
  v18 = v43;
  v19 = v41;
  v20 = v45;
  (*(v43 + 16))(v41, v46, v45);
  v21 = v18;
  v22 = (v37 + *(v18 + 80)) & ~*(v18 + 80);
  v23 = swift_allocObject();
  v24 = v39;
  sub_10008E3C8(v17, v23 + v39);
  (*(v21 + 32))(v23 + v22, v19, v20);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10008EAD4;
  *(v25 + 24) = v23;
  static Subscribers.Demand.unlimited.getter();
  sub_10000A6FC(&qword_1000DEDD8, &qword_1000DEDB0, &qword_1000AF260, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v26 = v42;
  v27 = v47;
  v28 = v55;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v48 + 8))(v28, v27);
  sub_10008E360(v54, v17);
  v29 = swift_allocObject();
  sub_10008E3C8(v17, v29 + v24);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1000914F4;
  *(v30 + 24) = v29;
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DEDE0, &qword_1000DEDB8, &qword_1000AF268, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, v40);
  v32 = v49;
  v31 = v50;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v53 + 8))(v26, v31);
  sub_10000A6FC(&qword_1000DEDE8, &qword_1000DEDC0, &unk_1000AF270, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v33 = v51;
  v34 = Publisher.eraseToAnyPublisher()();
  (*(v52 + 8))(v32, v33);
  return v34;
}

uint64_t sub_10008DB70()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  v2 = *(ActivityOperation - 8);
  __chkstk_darwin(ActivityOperation - 8);
  v46 = v3;
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003998(&qword_1000DEDB0, &qword_1000AF260);
  v6 = *(v5 - 8);
  v37 = v5;
  v38 = v6;
  __chkstk_darwin(v5);
  v50 = &v35 - v7;
  v39 = sub_100003998(&qword_1000DEE08, &qword_1000AF2A8);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v52 = &v35 - v8;
  v42 = sub_100003998(&qword_1000DEE10, &qword_1000AF2B0);
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v51 = &v35 - v9;
  v10 = sub_100003998(&qword_1000DEE18, &unk_1000AF2B8);
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  __chkstk_darwin(v10);
  v40 = &v35 - v12;
  v13 = *(v0 + 336);
  v47 = v0;
  v53 = *(*sub_100008614((v0 + 312), v13) + 56);
  v14 = v0;
  v15 = v4;
  v36 = v4;
  sub_10008E360(v14, v4);
  v49 = *(v2 + 80);
  v16 = (v49 + 16) & ~v49;
  v17 = swift_allocObject();
  sub_10008E3C8(v15, v17 + v16);

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DC9A0, &qword_1000AB3D0);
  sub_100003998(&qword_1000DEDC8, &unk_1000AF280);
  v48 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000A6FC(&qword_1000DC9A8, &qword_1000DC9A0, &qword_1000AB3D0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000A6FC(&qword_1000DEDD0, &qword_1000DEDC8, &unk_1000AF280, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  v18 = v47;
  v19 = v36;
  sub_10008E360(v47, v36);
  v20 = swift_allocObject();
  sub_10008E3C8(v19, v20 + v16);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10008F340;
  *(v21 + 24) = v20;
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  v35 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_10000A6FC(&qword_1000DEDD8, &qword_1000DEDB0, &qword_1000AF260, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, v48);
  v22 = v37;
  v23 = v50;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v38 + 8))(v23, v22);
  sub_10008E360(v18, v19);
  v24 = swift_allocObject();
  sub_10008E3C8(v19, v24 + v16);
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
  v25 = v35;
  sub_10000A6FC(&qword_1000DEE20, &qword_1000DEE08, &qword_1000AF2A8, v35);
  sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0, v48);
  v26 = v39;
  v27 = v52;
  Publisher.flatMap<A>(maxPublishers:_:)();

  (*(v41 + 8))(v27, v26);
  sub_10008E360(v47, v19);
  v28 = swift_allocObject();
  sub_10008E3C8(v19, v28 + v16);
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  sub_10000A6FC(&qword_1000DEE28, &qword_1000DEE10, &qword_1000AF2B0, v25);
  sub_10000A6FC(&qword_1000DD040, &qword_1000DD038, &unk_1000AB9A0, &protocol conformance descriptor for Future<A, B>);
  v29 = v40;
  v30 = v42;
  v31 = v51;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v45 + 8))(v31, v30);
  sub_10000A6FC(&qword_1000DEE30, &qword_1000DEE18, &unk_1000AF2B8, v25);
  v32 = v43;
  v33 = Publisher.eraseToAnyPublisher()();
  (*(v44 + 8))(v29, v32);
  return v33;
}

uint64_t sub_10008E330@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10008E444(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10008E360(uint64_t a1, uint64_t a2)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  (*(*(ActivityOperation - 8) + 16))(a2, a1, ActivityOperation);
  return a2;
}

uint64_t sub_10008E3C8(uint64_t a1, uint64_t a2)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  (*(*(ActivityOperation - 8) + 32))(a2, a1, ActivityOperation);
  return a2;
}

uint64_t sub_10008E444(uint64_t a1)
{
  v27 = a1;
  v25 = sub_100003998(&qword_1000DEDF8, &unk_1000AF298);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v21 - v2;
  v26 = sub_100003998(&qword_1000DCF80, &qword_1000AB930);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v21 - v4;
  v6 = sub_100003998(&qword_1000DEDF0, &qword_1000AF290);
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for SportsScheduledActivities();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A898(*(v1 + 304) + 16, v28);
  sub_100008614(v28, v28[3]);
  dispatch thunk of PersistentStorable.scheduledLiveActivities.getter();
  v13 = SportsScheduledActivities.scheduledActivities.getter();
  (*(v10 + 8))(v12, v9);
  v14 = *(v13 + 16);

  sub_100008A94(v28);
  if (v14 >= v27)
  {
    sub_100045BF8();
    v18 = swift_allocError();
    *v19 = xmmword_1000AF250;
    v28[0] = v18;
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    Fail.init(error:)();
    sub_10000A6FC(&qword_1000DEE00, &qword_1000DEDF0, &qword_1000AF290, &protocol conformance descriptor for Fail<A, B>);
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v22 + 8))(v8, v6);
  }

  else
  {
    Just.init(_:)();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    v15 = v25;
    Just.setFailureType<A>(to:)();
    (*(v23 + 8))(v3, v15);
    sub_10000A6FC(&qword_1000DCFD8, &qword_1000DCF80, &qword_1000AB930, &protocol conformance descriptor for Result<A, B>.Publisher);
    v16 = v26;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v24 + 8))(v5, v16);
  }

  return v17;
}

uint64_t sub_10008E884()
{
  type metadata accessor for SubscriptionCreateActivityOperation(0);
  sub_10003C224();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Date();
  sub_10000AC48();
  v9 = v8;
  v10 = *(v8 + 80);
  v17 = *(v11 + 64);
  v12 = v1 + v4;
  sub_100008A94((v1 + v4));

  sub_100008A94((v1 + v4 + 56));
  sub_100008A94((v1 + v4 + 96));
  sub_100008A94((v1 + v4 + 136));

  sub_100008A94((v1 + v4 + 184));
  sub_100008A94((v1 + v4 + 224));
  sub_100008A94((v1 + v4 + 264));

  sub_100008A94((v1 + v4 + 312));
  if (*(v1 + v4 + 384) != 1)
  {
  }

  if (*(v12 + 472) != 1)
  {

    if (*(v12 + 488) != 1)
    {
    }
  }

  v13 = *(v0 + 48);
  if (!sub_100008B84(v12 + v13, 1, v7))
  {
    (*(v9 + 8))(v12 + v13, v7);
  }

  v14 = v3 | v10;
  v15 = (v4 + v6 + v10) & ~v10;

  (*(v9 + 8))(v1 + v15, v7);

  return _swift_deallocObject(v1, v15 + v17, v14 | 7);
}

uint64_t sub_10008EAD4()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  sub_10000AC84(ActivityOperation);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Date();
  sub_10001C3C4(v6);
  return sub_10008EB88(v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)));
}

uint64_t sub_10008EB88(uint64_t a1)
{
  v22 = a1;
  v2 = sub_100003998(&qword_1000DEDF0, &qword_1000AF290);
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v18 = sub_100003998(&qword_1000DEDF8, &unk_1000AF298);
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v15 - v3;
  v19 = sub_100003998(&qword_1000DCF80, &qword_1000AB930);
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v15 - v5;
  v7 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  sub_10000A898(*(v1 + 304) + 16, v23);
  sub_100008614(v23, v23[3]);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 16))(v9, v22, v10);
  sub_100008E2C(v9, 0, 1, v10);
  type metadata accessor for SubscriptionCreateActivityOperation(0);
  dispatch thunk of PersistentStorable.scheduleLiveActivity(_:forId:)();
  sub_10001BB44(v9, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_100008A94(v23);
  Just.init(_:)();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  v11 = v18;
  Just.setFailureType<A>(to:)();
  (*(v16 + 8))(v4, v11);
  sub_10000A6FC(&qword_1000DCFD8, &qword_1000DCF80, &qword_1000AB930, &protocol conformance descriptor for Result<A, B>.Publisher);
  v12 = v19;
  v13 = Publisher.eraseToAnyPublisher()();
  (*(v17 + 8))(v6, v12);
  return v13;
}

uint64_t sub_10008EFEC()
{
  type metadata accessor for SubscriptionCreateActivityOperation(0);
  sub_10003C224();
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  sub_1000916F4();

  sub_10009162C();
  sub_1000915F0();
  sub_100091798();
  if (!v8)
  {
  }

  if (*(v2 + 472) != 1)
  {

    if (*(v2 + 488) != 1)
    {
    }
  }

  v9 = *(v0 + 48);
  v10 = type metadata accessor for Date();
  if (!sub_1000916B8(v10))
  {
    sub_10000ACDC();
    (*(v11 + 8))(v2 + v9, v3);
  }

  sub_10000AE38();
  sub_10000AE38();
  sub_10000AE38();

  return _swift_deallocObject(v1, ((v5 + 16) & ~v5) + v7, v5 | 7);
}

uint64_t sub_10008F154()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008F18C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_10008F1BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *(swift_allocObject() + 16) = v3;
  sub_100003998(&qword_1000DEE38, &qword_1000AF2D8);
  swift_allocObject();
  Future.init(_:)();
  sub_10000A6FC(&qword_1000DEE40, &qword_1000DEE38, &qword_1000AF2D8, &protocol conformance descriptor for Future<A, B>);
  v4 = Publisher.eraseToAnyPublisher()();

  *a2 = v4;
  return result;
}

uint64_t sub_10008F2CC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = sub_1000916D8();
  sub_10001C3C4(v2);
  v3 = sub_100091548();

  return a2(v3);
}

uint64_t sub_10008F344()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  sub_10001C3C4(ActivityOperation);
  return sub_10008CEC0();
}

uint64_t sub_10008F39C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = *(*sub_100008614((a1 + 312), *(a1 + 336)) + 48);
}

uint64_t sub_10008F3E8()
{
  v0 = sub_1000916D8();
  sub_10001C3C4(v0);
  sub_100091548();

  return sub_10008F39C(v1, v2);
}

uint64_t sub_10008F448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  v7 = *(ActivityOperation - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(ActivityOperation - 8);
  v10 = *a1;
  v9 = a1[1];
  sub_10008E360(a2, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_10008E3C8(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v10;
  v13[1] = v9;
  sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  swift_allocObject();

  result = Future.init(_:)();
  *a3 = result;
  return result;
}