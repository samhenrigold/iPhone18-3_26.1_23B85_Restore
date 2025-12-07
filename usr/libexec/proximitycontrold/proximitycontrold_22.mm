double sub_100209D34(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10020A5E0(a1, a2, a3, a4, a5);
  }

  return result;
}

double sub_100209DC8(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100209FB4(a1, a2, a3);
  }

  return result;
}

void *sub_100209E44()
{
  v1 = v0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034DBB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_100209F5C()
{
  sub_100209E44();

  return swift_deallocClassInstance();
}

void sub_100209FB4(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v70 = a1[1];
  v71 = *a1;
  v69 = a1[2];
  v68 = *(a1 + 6);
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10034DBB8);
  sub_100076E64(a1, &v74);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  sub_100076EC0(a1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v73[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD000000000000029, 0x80000001002A6370, v73);
    *(v11 + 12) = 2080;
    v12 = a1[1];
    v74 = *a1;
    v75 = v12;
    v76 = a1[2];
    v77 = *(a1 + 6);
    sub_100076E64(a1, v72);
    v13 = String.init<A>(describing:)();
    v15 = sub_100017494(v13, v14, v73);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: state=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v16 = *(v4 + 32);
  if (*(v16 + 16))
  {

    v17 = sub_100004B58(a2, a3);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      v20 = *(v19 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state);
      v21 = v20[3];
      v22 = v20[4];
      v66 = v4;
      v67 = a3;
      v23 = a2;
      v24 = v20[5];
      v25 = v20[6];
      v27 = v20[7];
      v26 = v20[8];
      v28 = v20[9];
      v30 = a1[1];
      v29 = a1[2];
      v31 = *(a1 + 6);
      *(v20 + 3) = *a1;
      v20[9] = v31;
      *(v20 + 7) = v29;
      *(v20 + 5) = v30;

      v32 = v24;
      a2 = v23;
      v33 = v25;
      v4 = v66;
      a3 = v67;
      sub_1001CED4C(v21, v22, v32, v33, v27, v26, v28);
      sub_100076E64(a1, &v74);
      sub_10005E71C();
      v34 = v20[4];
      v35 = v20[5];
      v36 = v20[6];
      v37 = v20[7];
      v38 = v20[8];
      v39 = v20[9];
      *&v74 = v20[3];
      *(&v74 + 1) = v34;
      *&v75 = v35;
      *(&v75 + 1) = v36;
      *&v76 = v37;
      *(&v76 + 1) = v38;
      v77 = v39;
      sub_10006C458(v74, v34, v35, v36, v37, v38, v39);
      CurrentValueSubject.send(_:)();

      sub_1001CED4C(v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77);
      goto LABEL_12;
    }
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v74 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_100017494(a2, a3, &v74);
    _os_log_impl(&_mh_execute_header, v40, v41, "### No transfer? mediaRouteID=%s - NOTE: This is expected if the transfer was initiated via V1 Handoff", v42, 0xCu);
    sub_10000903C(v43);
  }

LABEL_12:
  v44 = (*(*(v4 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage) + qword_100346AF8);

  os_unfair_lock_lock(v44);

  sub_1002134C4(v45, a2, a3);
  v47 = v46;

  os_unfair_lock_unlock(v44);

  if (v47)
  {
    v48 = *(v47 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__v1TransferState);
    v49 = v48[3];
    v50 = v48[4];
    v51 = v48[5];
    v52 = v48[6];
    v53 = v48[7];
    v54 = v48[8];
    v55 = v48[9];
    *(v48 + 3) = v71;
    *(v48 + 5) = v70;
    *(v48 + 7) = v69;
    v48[9] = v68;

    sub_1001CED3C(v49, v50, v51, v52, v53, v54, v55);
    sub_100076E64(a1, &v74);
    sub_10005E88C();
    v56 = v48[4];
    v57 = v48[5];
    v58 = v48[6];
    v59 = v48[7];
    v60 = v48[8];
    v61 = v48[9];
    *&v74 = v48[3];
    *(&v74 + 1) = v56;
    *&v75 = v57;
    *(&v75 + 1) = v58;
    *&v76 = v59;
    *(&v76 + 1) = v60;
    v77 = v61;
    sub_10006CCD4(v74, v56, v57, v58, v59, v60, v61);
    CurrentValueSubject.send(_:)();

    sub_1001CED3C(v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77);
  }

  else
  {

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v74 = v65;
      *v64 = 136315138;
      *(v64 + 4) = sub_100017494(a2, a3, &v74);
      _os_log_impl(&_mh_execute_header, v62, v63, "### No device? mediaRouteID=%s", v64, 0xCu);
      sub_10000903C(v65);
    }
  }
}

void sub_10020A5E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a4;
  v12 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_10034DBB8);
  sub_10021341C(a1, a2, a3, v8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  sub_100215598(a1, a2, a3, v8);

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v57 = v52;
    *v18 = 136315650;
    *(v18 + 4) = sub_100017494(0xD00000000000001CLL, 0x80000001002A6280, &v57);
    v54 = v6;
    *(v18 + 12) = 2080;
    v19 = sub_10025484C(a1, a2, a3, v8);
    v51 = v17;
    v21 = sub_100017494(v19, v20, &v57);
    v53 = a1;
    v22 = v21;

    v50 = v18;
    *(v18 + 14) = v22;
    *(v18 + 22) = 2080;
    v55 = 60;
    v56 = 0xE100000000000000;
    v23 = UUID.uuidString.getter();
    sub_10000B584(8, v23, v24);
    v49 = v16;

    v25 = static String._fromSubstring(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);
    v6 = v54;

    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v32._countAndFlagsBits = sub_1000092A0(v30, v31);
    String.append(_:)(v32);

    v33._countAndFlagsBits = 62;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34 = sub_100017494(v55, v56, &v57);

    v36 = v49;
    v35 = v50;
    *(v50 + 24) = v34;
    a1 = v53;
    _os_log_impl(&_mh_execute_header, v36, v51, "%s: effect=%s, session=%s", v35, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (v8 <= 1u)
  {
    if (v8)
    {
      LOBYTE(v55) = a2 & 1;

      sub_10020B3B8(a5, a1, a2 & 1, a3);
      return;
    }

    v37 = a2 & 1;
    v38 = a5;
    v39 = a1;
    v40 = a3;
LABEL_27:

    sub_10020D200(v38, v39, v37, v40, 0);
    return;
  }

  if (v8 == 2)
  {

    sub_10020C2C8(a5, a1, a2);
    return;
  }

  if (v8 == 3)
  {

    sub_100213E08(a1);
    return;
  }

  v41 = a3 | a2;
  if (!(a3 | a2 | a1))
  {
    v38 = a5;
    v39 = 0;
    v37 = 0;
    v40 = 1;
    goto LABEL_27;
  }

  if (a1 == 1 && !v41)
  {

    sub_100210CA0(a5, 0xD000000000000022, 0x80000001002A6250);
    return;
  }

  if (a1 == 2 && !v41)
  {
    v42 = *(*(a5 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__executedThisSession);
    *(v42 + 24) = 0;

    sub_10005E50C();
    LOBYTE(v55) = *(v42 + 24);
    CurrentValueSubject.send(_:)();

LABEL_38:

    return;
  }

  if (a1 == 3 && !v41)
  {
    static TaskPriority.high.getter();
    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v14, 0, 1, v43);
    v44 = qword_1003391F0;

    if (v44 != -1)
    {
      swift_once();
    }

    v45 = qword_10038B5C0;
    v46 = sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
    v47 = swift_allocObject();
    v47[2] = v45;
    v47[3] = v46;
    v47[4] = v6;
    v47[5] = a5;

    sub_100240220(0, 0, v14, &unk_10028EB28, v47);
    goto LABEL_38;
  }

  sub_100213CC0();
}

uint64_t sub_10020AC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[11] = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for ExperienceEvent(0);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for TransferEvent(0);
  v5[16] = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v7;
  v5[18] = v6;

  return (_swift_task_switch)(sub_10020AE20, v7, v6);
}

uint64_t sub_10020AE20()
{
  v1 = *(*(v0 + 80) + 24);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_10020AECC;

  return sub_100213FA8(v1);
}

uint64_t sub_10020AECC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10020B1C0;
  }

  else
  {
    v5 = sub_10020B008;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_10020B008()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  swift_storeEnumTagMultiPayload();

  v5 = UUID.uuidString.getter();
  v7 = v6;
  sub_1002154D0(v1, v2, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v8 = (v3 + *(v4 + 48));
  v9 = (v3 + *(v4 + 64));
  sub_1002154D0(v2, v3, type metadata accessor for ExperienceEvent);
  *v8 = v5;
  v8[1] = v7;
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  PassthroughSubject.send(_:)();
  v10 = v0[16];
  v11 = v0[14];
  sub_1000097E8(v0[12], &unk_10034C700, &qword_100273D30);
  sub_100215538(v11, type metadata accessor for ExperienceEvent);
  sub_100215538(v10, type metadata accessor for TransferEvent);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10020B1C0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);

  swift_errorRetain();
  sub_10014FEEC(v1, (v0 + 16));
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v8 = *(v0 + 48);
  *(v2 + 48) = *(v0 + 64);
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  *v2 = v6;
  swift_storeEnumTagMultiPayload();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  sub_1002154D0(v2, v3, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v12 = (v4 + *(v5 + 48));
  v13 = (v4 + *(v5 + 64));
  sub_1002154D0(v3, v4, type metadata accessor for ExperienceEvent);
  *v12 = v9;
  v12[1] = v11;
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  PassthroughSubject.send(_:)();

  v14 = *(v0 + 128);
  v15 = *(v0 + 112);
  sub_1000097E8(*(v0 + 96), &unk_10034C700, &qword_100273D30);
  sub_100215538(v15, type metadata accessor for ExperienceEvent);
  sub_100215538(v14, type metadata accessor for TransferEvent);

  v16 = *(v0 + 8);

  return v16();
}

double sub_10020B3B8(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10034DBB8);

  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = v14;
    v18 = v17;
    v45 = swift_slowAlloc();
    v51 = v45;
    *v18 = 136315650;
    *(v18 + 4) = sub_100017494(0xD00000000000002DLL, 0x80000001002A61E0, &v51);
    *(v18 + 12) = 2080;
    v49 = 60;
    v50 = 0xE100000000000000;
    v44 = v15;
    v19 = UUID.uuidString.getter();
    sub_10000B584(8, v19, v20);
    v47 = v5;
    v48 = a4;
    v21 = a3;
    HIDWORD(v43) = v16;

    v22 = static String._fromSubstring(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);
    a3 = v21;
    v5 = v47;
    a4 = v48;

    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v29._countAndFlagsBits = sub_1000092A0(v27, v28);
    String.append(_:)(v29);

    v30._countAndFlagsBits = 62;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v31 = sub_100017494(v49, v50, &v51);

    *(v18 + 14) = v31;
    *(v18 + 22) = 2080;
    v32 = sub_100078EF8(a2, a3 & 1, a4);
    v34 = sub_100017494(v32, v33, &v51);

    *(v18 + 24) = v34;
    v35 = v44;
    _os_log_impl(&_mh_execute_header, v44, BYTE4(v43), "%s: %s, %s", v18, 0x20u);
    swift_arrayDestroy();

    v14 = v46;
  }

  else
  {
  }

  static TaskPriority.high.getter();
  v36 = type metadata accessor for TaskPriority();
  (*(*(v36 - 8) + 56))(v12, 0, 1, v36);
  v37 = qword_1003391F0;

  v38 = v14;

  if (v37 != -1)
  {
    swift_once();
  }

  v39 = qword_10038B5C0;
  v40 = sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = v40;
  *(v41 + 32) = a1;
  *(v41 + 40) = v5;
  *(v41 + 48) = a2;
  *(v41 + 56) = a3 & 1;
  *(v41 + 64) = a4;

  sub_100240220(0, 0, v12, &unk_10028EB00, v41);

  return result;
}

uint64_t sub_10020B844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 224) = a7;
  *(v8 + 88) = a6;
  *(v8 + 96) = a8;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 104) = sub_100035D04(&unk_10034C700, &qword_100273D30);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = type metadata accessor for ExperienceEvent(0);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = type metadata accessor for TransferEvent(0);
  *(v8 + 144) = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 152) = v10;
  *(v8 + 160) = v9;

  return (_swift_task_switch)(sub_10020B9D8, v10, v9);
}

uint64_t sub_10020B9D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100070D94(a1, a2);
  *(v2 + 168) = v3;
  if (v3)
  {
    v4 = sub_100214688(*(v2 + 88), *(v2 + 224) & 1, *(v2 + 96));
    v6 = v5;
    v8 = v7;
    v10 = v9;
    *(v2 + 176) = v4;
    *(v2 + 184) = v5;
    *(v2 + 192) = v7;
    *(v2 + 200) = v9;
    v11 = swift_task_alloc();
    *(v2 + 208) = v11;
    *v11 = v2;
    v11[1] = sub_10020BD30;

    return sub_10021511C(v4, v6, v8, v10);
  }

  else
  {
    sub_100035D04(&qword_100346AD0, &qword_10027E290);
    sub_10000E244(&qword_100346AD8, &qword_100346AD0, &qword_10027E290, &unk_10027EBE0);
    v13 = swift_allocError();
    *v14 = 0xD000000000000018;
    v14[1] = 0x80000001002A32F0;
    swift_willThrow();
    v15 = *(v2 + 144);
    v16 = *(v2 + 128);
    v18 = *(v2 + 104);
    v17 = *(v2 + 112);

    swift_errorRetain();
    sub_10014FEEC(v13, (v2 + 16));
    v19 = *(v2 + 16);
    v20 = *(v2 + 32);
    v21 = *(v2 + 48);
    *(v15 + 48) = *(v2 + 64);
    *(v15 + 16) = v20;
    *(v15 + 32) = v21;
    *v15 = v19;
    swift_storeEnumTagMultiPayload();
    v22 = UUID.uuidString.getter();
    v24 = v23;
    sub_1002154D0(v15, v16, type metadata accessor for TransferEvent);
    swift_storeEnumTagMultiPayload();
    v25 = (v17 + *(v18 + 48));
    v26 = (v17 + *(v18 + 64));
    sub_1002154D0(v16, v17, type metadata accessor for ExperienceEvent);
    *v25 = v22;
    v25[1] = v24;
    *v26 = 0xD000000000000027;
    v26[1] = 0x80000001002A6190;
    PassthroughSubject.send(_:)();

    v27 = *(v2 + 144);
    v28 = *(v2 + 128);
    sub_1000097E8(*(v2 + 112), &unk_10034C700, &qword_100273D30);
    sub_100215538(v28, type metadata accessor for ExperienceEvent);
    sub_100215538(v27, type metadata accessor for TransferEvent);

    v29 = *(v2 + 8);

    return v29();
  }
}

uint64_t sub_10020BD30()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  sub_10009D58C(v2[22], v2[23]);

  v3 = v2[20];
  v4 = v2[19];
  if (v0)
  {
    v5 = sub_10020C0A8;
  }

  else
  {
    v5 = sub_10020BED8;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_10020BED8()
{
  v14 = v0[21];
  v1 = v0[18];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  swift_storeEnumTagMultiPayload();

  v5 = UUID.uuidString.getter();
  v7 = v6;
  sub_1002154D0(v1, v2, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v8 = (v3 + *(v4 + 48));
  v9 = (v3 + *(v4 + 64));
  sub_1002154D0(v2, v3, type metadata accessor for ExperienceEvent);
  *v8 = v5;
  v8[1] = v7;
  *v9 = 1701736260;
  v9[1] = 0xE400000000000000;
  PassthroughSubject.send(_:)();

  v10 = v0[18];
  v11 = v0[16];
  sub_1000097E8(v0[14], &unk_10034C700, &qword_100273D30);
  sub_100215538(v11, type metadata accessor for ExperienceEvent);
  sub_100215538(v10, type metadata accessor for TransferEvent);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10020C0A8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);

  swift_errorRetain();
  sub_10014FEEC(v1, (v0 + 16));
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v8 = *(v0 + 48);
  *(v2 + 48) = *(v0 + 64);
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  *v2 = v6;
  swift_storeEnumTagMultiPayload();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  sub_1002154D0(v2, v3, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v12 = (v4 + *(v5 + 48));
  v13 = (v4 + *(v5 + 64));
  sub_1002154D0(v3, v4, type metadata accessor for ExperienceEvent);
  *v12 = v9;
  v12[1] = v11;
  *v13 = 0xD000000000000027;
  v13[1] = 0x80000001002A6190;
  PassthroughSubject.send(_:)();

  v14 = *(v0 + 144);
  v15 = *(v0 + 128);
  sub_1000097E8(*(v0 + 112), &unk_10034C700, &qword_100273D30);
  sub_100215538(v15, type metadata accessor for ExperienceEvent);
  sub_100215538(v14, type metadata accessor for TransferEvent);

  v16 = *(v0 + 8);

  return v16();
}

double sub_10020C2C8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_10034DBB8);

  sub_10009D534(a2, a3);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  sub_10009D58C(a2, a3);
  if (os_log_type_enabled(v12, v13))
  {
    v38 = v13;
    v39 = v10;
    v40 = v4;
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v14 = 136315650;
    *(v14 + 4) = sub_100017494(0xD00000000000001BLL, 0x80000001002A6170, &v44);
    *(v14 + 12) = 2080;
    v42 = 60;
    v43 = 0xE100000000000000;
    v15 = UUID.uuidString.getter();
    sub_10000B584(8, v15, v16);

    v17 = static String._fromSubstring(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v24._countAndFlagsBits = sub_1000092A0(v22, v23);
    String.append(_:)(v24);

    v25._countAndFlagsBits = 62;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26 = sub_100017494(v42, v43, &v44);

    *(v14 + 14) = v26;
    *(v14 + 22) = 2080;
    if (a3 <= 1)
    {
      if (a3)
      {
        v10 = v39;
        v4 = v40;
        v27 = v38;
        if (a3 == 1)
        {
          v28 = 0xE500000000000000;
          v29 = 0x636973754DLL;
          goto LABEL_17;
        }

LABEL_16:
        v29 = a2;
        v28 = a3;
        goto LABEL_17;
      }

      v28 = 0xE800000000000000;
      v29 = 0x656D695465636146;
    }

    else
    {
      if (a3 != 2)
      {
        v10 = v39;
        v4 = v40;
        v27 = v38;
        if (a3 == 3)
        {
          v28 = 0xEF6F6D65446C6F72;
          v29 = 0x746E6F43786F7250;
          goto LABEL_17;
        }

        if (a3 == 4)
        {
          v28 = 0xE600000000000000;
          v29 = 0x697261666153;
LABEL_17:
          sub_10009D534(a2, a3);
          v30 = sub_100017494(v29, v28, &v44);

          *(v14 + 24) = v30;
          _os_log_impl(&_mh_execute_header, v12, v27, "%s: %s, %s", v14, 0x20u);
          swift_arrayDestroy();

          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v28 = 0xEB00000000676E69;
      v29 = 0x79616C5020776F4ELL;
    }

    v10 = v39;
    v4 = v40;
    v27 = v38;
    goto LABEL_17;
  }

LABEL_18:

  static TaskPriority.high.getter();
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v10, 0, 1, v31);

  sub_10009D534(a2, a3);
  v32 = qword_1003391F0;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_10038B5C0;
  v34 = sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v35 = swift_allocObject();
  v35[2] = v33;
  v35[3] = v34;
  v35[4] = a1;
  v35[5] = a2;
  v35[6] = a3;
  v35[7] = v4;

  sub_100240220(0, 0, v10, &unk_10028EAE0, v35);

  return result;
}

uint64_t sub_10020C7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[13] = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v7[14] = swift_task_alloc();
  v7[15] = type metadata accessor for ExperienceEvent(0);
  v7[16] = swift_task_alloc();
  v7[17] = type metadata accessor for TransferEvent(0);
  v7[18] = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[19] = v9;
  v7[20] = v8;

  return (_swift_task_switch)(sub_10020C960, v9, v8);
}

uint64_t sub_10020C960(uint64_t a1, uint64_t a2)
{
  v3 = sub_100070D94(a1, a2);
  *(v2 + 168) = v3;
  if (v3)
  {
    sub_10009D534(*(v2 + 80), *(v2 + 88));
    v4 = swift_task_alloc();
    *(v2 + 176) = v4;
    *v4 = v2;
    v4[1] = sub_10020CCA0;
    v6 = *(v2 + 80);
    v5 = *(v2 + 88);

    return sub_10021511C(v6, v5, 0, _swiftEmptyArrayStorage);
  }

  else
  {
    sub_100035D04(&qword_100346AD0, &qword_10027E290);
    sub_10000E244(&qword_100346AD8, &qword_100346AD0, &qword_10027E290, &unk_10027EBE0);
    v8 = swift_allocError();
    *v9 = 0xD000000000000018;
    v9[1] = 0x80000001002A32F0;
    swift_willThrow();
    v10 = *(v2 + 144);
    v11 = *(v2 + 128);
    v13 = *(v2 + 104);
    v12 = *(v2 + 112);

    swift_errorRetain();
    sub_10014FEEC(v8, (v2 + 16));
    v14 = *(v2 + 16);
    v15 = *(v2 + 32);
    v16 = *(v2 + 48);
    *(v10 + 48) = *(v2 + 64);
    *(v10 + 16) = v15;
    *(v10 + 32) = v16;
    *v10 = v14;
    swift_storeEnumTagMultiPayload();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    sub_1002154D0(v10, v11, type metadata accessor for TransferEvent);
    swift_storeEnumTagMultiPayload();
    v20 = (v12 + *(v13 + 48));
    v21 = (v12 + *(v13 + 64));
    sub_1002154D0(v11, v12, type metadata accessor for ExperienceEvent);
    *v20 = v17;
    v20[1] = v19;
    *v21 = 0xD000000000000027;
    v21[1] = 0x80000001002A6190;
    PassthroughSubject.send(_:)();

    v22 = *(v2 + 144);
    v23 = *(v2 + 128);
    sub_1000097E8(*(v2 + 112), &unk_10034C700, &qword_100273D30);
    sub_100215538(v23, type metadata accessor for ExperienceEvent);
    sub_100215538(v22, type metadata accessor for TransferEvent);

    v24 = *(v2 + 8);

    return v24();
  }
}

uint64_t sub_10020CCA0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  sub_10009D58C(v2[10], v2[11]);
  v3 = v2[20];
  v4 = v2[19];
  if (v0)
  {
    v5 = sub_10020CFDC;
  }

  else
  {
    v5 = sub_10020CE08;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_10020CE08()
{
  v14 = v0[21];
  v1 = v0[18];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  swift_storeEnumTagMultiPayload();

  v5 = UUID.uuidString.getter();
  v7 = v6;
  sub_1002154D0(v1, v2, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v8 = (v3 + *(v4 + 48));
  v9 = (v3 + *(v4 + 64));
  sub_1002154D0(v2, v3, type metadata accessor for ExperienceEvent);
  *v8 = v5;
  v8[1] = v7;
  *v9 = 1701736260;
  v9[1] = 0xE400000000000000;
  PassthroughSubject.send(_:)();

  v10 = v0[18];
  v11 = v0[16];
  sub_1000097E8(v0[14], &unk_10034C700, &qword_100273D30);
  sub_100215538(v11, type metadata accessor for ExperienceEvent);
  sub_100215538(v10, type metadata accessor for TransferEvent);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10020CFDC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);

  swift_errorRetain();
  sub_10014FEEC(v1, (v0 + 16));
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v8 = *(v0 + 48);
  *(v2 + 48) = *(v0 + 64);
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  *v2 = v6;
  swift_storeEnumTagMultiPayload();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  sub_1002154D0(v2, v3, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v12 = (v4 + *(v5 + 48));
  v13 = (v4 + *(v5 + 64));
  sub_1002154D0(v3, v4, type metadata accessor for ExperienceEvent);
  *v12 = v9;
  v12[1] = v11;
  *v13 = 0xD000000000000027;
  v13[1] = 0x80000001002A6190;
  PassthroughSubject.send(_:)();

  v14 = *(v0 + 144);
  v15 = *(v0 + 128);
  sub_1000097E8(*(v0 + 112), &unk_10034C700, &qword_100273D30);
  sub_100215538(v15, type metadata accessor for ExperienceEvent);
  sub_100215538(v14, type metadata accessor for TransferEvent);

  v16 = *(v0 + 8);

  return v16();
}

double sub_10020D200(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v95 = a5;
  v97 = a4;
  v8 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v8 - 8);
  v10 = &v82[-v9];
  v11 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v12 = *(v11 - 8);
  v90 = v11;
  v91 = v12;
  v13 = __chkstk_darwin(v11);
  v87 = &v82[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v96 = &v82[-v15];
  v16 = type metadata accessor for Date();
  v88 = *(v16 - 8);
  v89 = v16;
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v86 = &v82[-v18];
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003078(v19, qword_10034DBB8);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v92 = a3;
  v93 = v10;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v102 = v85;
    *v23 = 136315394;
    *(v23 + 4) = sub_100017494(0xD000000000000035, 0x80000001002A6010, &v102);
    *(v23 + 12) = 2080;
    *&v110 = 60;
    *(&v110 + 1) = 0xE100000000000000;
    v84 = v20;
    v24 = UUID.uuidString.getter();
    sub_10000B584(8, v24, v25);
    v26 = a2;
    v83 = v21;

    v27 = static String._fromSubstring(_:)();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);
    a2 = v26;

    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    v34._countAndFlagsBits = sub_1000092A0(v32, v33);
    String.append(_:)(v34);

    v35._countAndFlagsBits = 62;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36 = sub_100017494(v110, *(&v110 + 1), &v102);

    *(v23 + 14) = v36;
    v37 = v84;
    _os_log_impl(&_mh_execute_header, v84, v83, "%s: %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v38 = *(a1 + 24);
  v39 = *(*(v38 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
  v40 = v94;
  if (v39)
  {
    v41 = v94;
    v87 = a2;
    *&v110 = 0;
    *(&v110 + 1) = 0xE000000000000000;
    v42 = v39;
    _StringGuts.grow(_:)(36);

    *&v110 = 0x1000000000000022;
    *(&v110 + 1) = 0x80000001002A5F80;
    v43 = [v42 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47._countAndFlagsBits = v44;
    v47._object = v46;
    String.append(_:)(v47);

    v48 = v110;
    sub_10008D594(&v110);
    v98 = v110;
    v99 = v111;
    v100 = v112;
    v49 = v114;
    v101 = v113;
    static Date.now.getter();
    v50 = &v96[*(v90 + 48)];
    (*(v88 + 32))();
    *v50 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_1000AFF4C(0, v49[2] + 1, 1, v49);
    }

    v51 = v92;
    v53 = v49[2];
    v52 = v49[3];
    v40 = v41;
    if (v53 >= v52 >> 1)
    {
      v49 = sub_1000AFF4C((v52 > 1), v53 + 1, 1, v49);
    }

    v49[2] = v53 + 1;
    sub_100098288(v96, v49 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v53);
    v54 = a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
    v55 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
    v102 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
    v103 = v55;
    v56 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
    v104 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
    v105 = v56;
    v57 = v101;
    v58 = v100;
    *(v54 + 16) = v99;
    *(v54 + 32) = v58;
    *v54 = v98;
    *(v54 + 48) = v57;
    *(v54 + 56) = v49;
    sub_1000097E8(&v102, &qword_10033E428, &qword_100274640);
    a2 = v87;
  }

  else
  {
    sub_10008D594(&v110);
    v106 = v110;
    v107 = v111;
    v108 = v112;
    v59 = v114;
    v109 = v113;
    static Date.now.getter();
    v60 = &v87[*(v90 + 48)];
    (*(v88 + 32))();
    *v60 = 0x1000000000000026;
    v60[1] = 0x80000001002A5FE0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_1000AFF4C(0, v59[2] + 1, 1, v59);
    }

    v51 = v92;
    v62 = v59[2];
    v61 = v59[3];
    if (v62 >= v61 >> 1)
    {
      v59 = sub_1000AFF4C((v61 > 1), v62 + 1, 1, v59);
    }

    v59[2] = v62 + 1;
    sub_100098288(v87, v59 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v62);
    v63 = a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
    v64 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
    v102 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
    v103 = v64;
    v65 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
    v104 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
    v105 = v65;
    v66 = v109;
    v67 = v108;
    *(v63 + 16) = v107;
    *(v63 + 32) = v67;
    *v63 = v106;
    *(v63 + 48) = v66;
    *(v63 + 56) = v59;
    sub_1000097E8(&v102, &qword_10033E428, &qword_100274640);
  }

  v68 = *(v38 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__executedThisSession);
  *(v68 + 24) = 1;

  sub_10005E50C();
  LOBYTE(v102) = *(v68 + 24);
  CurrentValueSubject.send(_:)();

  v69 = a2;
  v70 = v51;
  v71 = v97;
  if (v97 == 1)
  {
    v69 = sub_100070168();
    v70 = v72;
    v71 = v73;
  }

  sub_10007732C(a2, v51, v97);
  v74 = v93;
  static TaskPriority.high.getter();
  v75 = type metadata accessor for TaskPriority();
  (*(*(v75 - 8) + 56))(v74, 0, 1, v75);

  sub_10007732C(v69, v70, v71);
  v76 = qword_1003391F0;

  v77 = a1;
  if (v76 != -1)
  {
    swift_once();
  }

  v78 = qword_10038B5C0;
  v79 = sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v80 = swift_allocObject();
  *(v80 + 16) = v78;
  *(v80 + 24) = v79;
  *(v80 + 32) = v69;
  *(v80 + 40) = v70;
  *(v80 + 48) = v71;
  *(v80 + 56) = v40;
  *(v80 + 64) = v77;
  *(v80 + 72) = v95 & 1;

  sub_100240220(0, 0, v74, &unk_10028EA98, v80);
  sub_100077374(v69, v70, v71);

  return result;
}

uint64_t sub_10020DB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  *(v8 + 56) = sub_100035D04(&unk_10034C700, &qword_100273D30);
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 72) = type metadata accessor for ExperienceEvent(0);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = type metadata accessor for TransferEvent(0);
  *(v8 + 96) = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 104) = v10;
  *(v8 + 112) = v9;

  return (_swift_task_switch)(sub_10020DCEC, v10, v9);
}

uint64_t sub_10020DCEC()
{
  if (*(v0 + 32) == 1)
  {
    sub_100035D04(&qword_10034DE40, &qword_10028EAA8);
    sub_10000E244(&qword_10034DE48, &qword_10034DE40, &qword_10028EAA8, &unk_10027EBE0);
    v1 = swift_allocError();
    *v2 = 0xD000000000000018;
    v2[1] = 0x80000001002A6050;
    swift_willThrow();
    v3 = *(v0 + 96);
    v4 = *(v0 + 80);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    *v3 = v1;
    swift_storeEnumTagMultiPayload();

    swift_errorRetain();
    v7 = UUID.uuidString.getter();
    v9 = v8;
    sub_1002154D0(v3, v4, type metadata accessor for TransferEvent);
    swift_storeEnumTagMultiPayload();
    v10 = (v5 + *(v6 + 48));
    v11 = (v5 + *(v6 + 64));
    sub_1002154D0(v4, v5, type metadata accessor for ExperienceEvent);
    *v10 = v7;
    v10[1] = v9;
    *v11 = 0xD000000000000025;
    v11[1] = 0x80000001002A6070;
    PassthroughSubject.send(_:)();

    sub_1000097E8(v5, &unk_10034C700, &qword_100273D30);
    sub_100215538(v4, type metadata accessor for ExperienceEvent);
    sub_100215538(v3, type metadata accessor for TransferEvent);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 16);
    if (*(v0 + 24))
    {
      v15 = v14;
      v16 = swift_task_alloc();
      *(v0 + 136) = v16;
      *v16 = v0;
      v16[1] = sub_10020E1D4;
      v17 = *(v0 + 152);
      v18 = *(v0 + 48);

      return sub_10020F92C(v18, v15, v17);
    }

    else
    {
      v19 = v14;
      v20 = swift_task_alloc();
      *(v0 + 120) = v20;
      *v20 = v0;
      v20[1] = sub_10020E098;
      v21 = *(v0 + 152);
      v22 = *(v0 + 48);

      return sub_10020E788(v22, v19, v21);
    }
  }
}

uint64_t sub_10020E098()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_10020E390;
  }

  else
  {
    v5 = sub_10020E310;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_10020E1D4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_10020E58C;
  }

  else
  {
    v5 = sub_100215794;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_10020E310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020E390()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  *v1 = *(v0 + 128);
  swift_storeEnumTagMultiPayload();

  swift_errorRetain();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  sub_1002154D0(v1, v2, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v8 = (v3 + *(v4 + 48));
  v9 = (v3 + *(v4 + 64));
  sub_1002154D0(v2, v3, type metadata accessor for ExperienceEvent);
  *v8 = v5;
  v8[1] = v7;
  *v9 = 0xD000000000000025;
  v9[1] = 0x80000001002A6070;
  PassthroughSubject.send(_:)();

  sub_1000097E8(v3, &unk_10034C700, &qword_100273D30);
  sub_100215538(v2, type metadata accessor for ExperienceEvent);
  sub_100215538(v1, type metadata accessor for TransferEvent);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10020E58C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  *v1 = *(v0 + 144);
  swift_storeEnumTagMultiPayload();

  swift_errorRetain();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  sub_1002154D0(v1, v2, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v8 = (v3 + *(v4 + 48));
  v9 = (v3 + *(v4 + 64));
  sub_1002154D0(v2, v3, type metadata accessor for ExperienceEvent);
  *v8 = v5;
  v8[1] = v7;
  *v9 = 0xD000000000000025;
  v9[1] = 0x80000001002A6070;
  PassthroughSubject.send(_:)();

  sub_1000097E8(v3, &unk_10034C700, &qword_100273D30);
  sub_100215538(v2, type metadata accessor for ExperienceEvent);
  sub_100215538(v1, type metadata accessor for TransferEvent);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10020E788(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 248) = a2;
  *(v4 + 256) = v3;
  *(v4 + 344) = a3;
  *(v4 + 240) = a1;
  v5 = type metadata accessor for OSSignpostID();
  *(v4 + 264) = v5;
  *(v4 + 272) = *(v5 - 8);
  *(v4 + 280) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v4 + 288) = v6;
  v7 = *(v6 - 8);
  *(v4 + 296) = v7;
  *(v4 + 304) = *(v7 + 64);
  *(v4 + 312) = swift_task_alloc();
  v8 = sub_100035D04(&qword_10034DE50, &qword_10028EAC0);
  *(v4 + 320) = v8;
  *(v4 + 328) = *(v8 - 8);
  *(v4 + 336) = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10020E9A8, v10, v9);
}

uint64_t sub_10020E9A8()
{
  v86 = v0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10034DBB8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_100017494(0xD00000000000002ALL, 0x80000001002A60F0, &v83);
    *(v4 + 12) = 2080;
    v84 = 60;
    v85 = 0xE100000000000000;
    v5 = UUID.uuidString.getter();
    sub_10000B584(8, v5, v6);

    v7 = static String._fromSubstring(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 32;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v14._countAndFlagsBits = sub_1000092A0(v12, v13);
    String.append(_:)(v14);

    v15._countAndFlagsBits = 62;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = sub_100017494(v84, v85, &v83);

    *(v4 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: session=%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(*(v0 + 240) + 24);
  v18 = *(*(v17 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
  if (!v18)
  {
    sub_100213B1C();
    swift_allocError();
    *v22 = 0xD00000000000001CLL;
    *(v22 + 8) = 0x80000001002A60A0;
    *(v22 + 16) = 1;
    swift_willThrow();
LABEL_25:

    v67 = *(v0 + 8);
    goto LABEL_26;
  }

  v19 = v18;
  v20 = [v19 interactionDirection];
  if (v20 == 1)
  {
    v21 = &selRef_selectedDeviceState;
  }

  else
  {
    if (v20 != 2)
    {
LABEL_22:

      sub_100213B1C();
      swift_allocError();
      *v64 = 0xD000000000000020;
      *(v64 + 8) = 0x80000001002A60C0;
      *(v64 + 16) = 1;
      swift_willThrow();
LABEL_24:

      goto LABEL_25;
    }

    v21 = &selRef_proxDeviceState;
  }

  v23 = [v19 *v21];
  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v82 = sub_10000DF0C(v25, v26);
  v28 = v27;

  if (!v28)
  {

    sub_100213B1C();
    swift_allocError();
    *v65 = xmmword_10028E910;
    *(v65 + 16) = 1;
    swift_willThrow();

    goto LABEL_24;
  }

  v29 = *(v0 + 240);
  v81 = [v19 interactionDirection];

  v73 = v29 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  v78 = UUID.uuidString.getter();
  v76 = v30;
  type metadata accessor for HandoffTransfer(0);
  v31 = swift_allocObject();
  v74 = v19;

  v32 = v24;
  UUID.init()();
  v33 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state;
  sub_100035D04(&qword_10034DE60, &qword_10028EAC8);
  v34 = swift_allocObject();
  *(v31 + v33) = v34;
  v34[1] = 0u;
  v34[2] = 0u;
  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___mediaTransferStatusPublisher) = 0;
  v34[3] = 0u;
  v34[4] = 0u;
  v35 = (v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
  v35[2] = 0u;
  v35[3] = 0u;
  *v35 = 0u;
  v35[1] = 0u;
  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_tasks) = &_swiftEmptySetSingleton;
  if (qword_1003392A0 != -1)
  {
    swift_once();
  }

  v80 = v28;
  sub_100003078(v1, qword_100350090);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Init", v38, 2u);
  }

  v77 = *(v0 + 336);
  v71 = *(v0 + 320);
  v72 = *(v0 + 328);
  v70 = *(v0 + 312);
  v68 = *(v0 + 296);
  v69 = *(v0 + 288);
  v39 = *(v0 + 344);
  v40 = *(v0 + 248);
  v41 = *(v0 + 256);

  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_activity) = v40;
  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_automatic) = v39;
  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_device) = v17;
  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction) = v81;
  v42 = (v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_sessionID);
  *v42 = v78;
  v42[1] = v76;
  v43 = v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type;
  *v43 = v82;
  *(v43 + 8) = v80;
  *(v43 + 16) = v24;
  *(v43 + 24) = v18;
  *(v43 + 32) = 1;
  v44 = v74;

  v79 = v32;
  v45 = v40;

  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_contentType) = sub_1000AF120();

  *(v0 + 208) = sub_10005E71C();
  sub_100035D04(&qword_10033C268, &qword_10028EAD0);
  sub_10000E244(&qword_10033E580, &qword_10033C268, &qword_10028EAD0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v46 = Publisher.eraseToAnyPublisher()();

  *(v0 + 216) = v46;
  swift_allocObject();
  swift_weakInit();
  swift_retain_n();
  sub_100035D04(&qword_10033E588, &unk_100274730);
  sub_10000E244(&qword_10033E590, &qword_10033E588, &unk_100274730, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v75 = v44;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = *(v41 + 32);
  *(v41 + 32) = 0x8000000000000000;
  sub_10004DCFC(v31, v82, v80, isUniquelyReferenced_nonNull_native);

  *(v41 + 32) = v84;
  swift_endAccess();

  sub_100049C84(v31);

  sub_10006FFBC(v31);

  *(v0 + 224) = sub_10005E71C();
  v48 = Publisher.eraseToAnyPublisher()();

  *(v0 + 232) = v48;
  Publisher.filter(_:)();

  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  swift_weakInit();

  (*(v68 + 16))(v70, v73, v69);
  v51 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v49;
  *(v52 + 24) = v50;
  (*(v68 + 32))(v52 + v51, v70, v69);
  sub_10000E244(&qword_10034DE68, &qword_10034DE50, &qword_10028EAC0, &protocol conformance descriptor for Publishers.Filter<A>);
  Publisher<>.sink(receiveValue:)();

  (*(v72 + 8))(v77, v71);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10001B7F4();
  OSSignpostID.init(_:)();
  static os_signpost_type_t.begin.getter();
  if (qword_100338F20 != -1)
  {
    swift_once();
  }

  v54 = *(v0 + 272);
  v53 = *(v0 + 280);
  v55 = *(v0 + 264);
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v54 + 8))(v53, v55);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v84 = v59;
    *v58 = 136315138;
    v61 = sub_1000092A0(v59, v60);
    v63 = sub_100017494(v61, v62, &v84);

    *(v58 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v56, v57, "Executing media handoff with %s", v58, 0xCu);
    sub_10000903C(v59);
  }

  sub_1000F3250(v82, v80);

  v67 = *(v0 + 8);
LABEL_26:

  return v67();
}

uint64_t sub_10020F92C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 256) = a2;
  *(v4 + 264) = v3;
  *(v4 + 360) = a3;
  *(v4 + 248) = a1;
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 272) = v6;
  *(v4 + 280) = v5;

  return (_swift_task_switch)(sub_10020FA24, v6, v5);
}

uint64_t sub_10020FA24()
{
  v62 = v0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 288) = sub_100003078(v1, qword_10034DBB8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_100017494(0xD000000000000029, 0x80000001002A6140, &v59);
    *(v4 + 12) = 2080;
    v60 = 60;
    v61 = 0xE100000000000000;
    v5 = UUID.uuidString.getter();
    sub_10000B584(8, v5, v6);

    v7 = static String._fromSubstring(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 32;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v14._countAndFlagsBits = sub_1000092A0(v12, v13);
    String.append(_:)(v14);

    v15._countAndFlagsBits = 62;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = sub_100017494(v60, v61, &v59);

    *(v4 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: session=%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100339180 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 256);
  v18 = qword_10038B4E8;
  v19 = sub_1001C5784(v17);
  v21 = v20;
  LODWORD(v17) = ~v20;

  *(v0 + 296) = v19;
  *(v0 + 361) = v21;
  if (v17)
  {
    v22 = *(*(v0 + 248) + 24);
    if (v21)
    {
      v23 = [v19 presentationContext];
      v24 = [v23 mode];

      if (v24 > 2)
      {
        v56 = 0;
      }

      else
      {
        v56 = qword_10028EC20[v24];
      }

      v30 = [*(v0 + 256) bundleIdentifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v31;
    }

    else
    {
      v56 = sub_1001F63B8();
      v28 = sub_1001C9FD0();
      v57 = v29;
    }

    v32 = UUID.uuidString.getter();
    v55 = v33;
    type metadata accessor for HandoffTransfer(0);
    v34 = swift_allocObject();
    *(v0 + 304) = v34;
    UUID.init()();
    v35 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state;
    sub_100035D04(&qword_10034DE60, &qword_10028EAC8);
    v36 = swift_allocObject();
    *(v34 + v35) = v36;
    v36[1] = 0u;
    v36[2] = 0u;
    *(v34 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___mediaTransferStatusPublisher) = 0;
    v36[3] = 0u;
    v36[4] = 0u;
    v37 = (v34 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
    v37[2] = 0u;
    v37[3] = 0u;
    *v37 = 0u;
    v37[1] = 0u;
    *(v34 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_tasks) = &_swiftEmptySetSingleton;
    if (qword_1003392A0 != -1)
    {
      swift_once();
    }

    v58 = v19;
    sub_100003078(v1, qword_100350090);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Init", v40, 2u);
    }

    v41 = *(v0 + 360);
    v43 = *(v0 + 256);
    v42 = *(v0 + 264);

    *(v34 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_activity) = v43;
    *(v34 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_automatic) = v41;
    *(v34 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_device) = v22;
    *(v34 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction) = v56;
    v44 = (v34 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_sessionID);
    *v44 = v32;
    v44[1] = v55;
    v45 = v34 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type;
    *v45 = v28;
    *(v45 + 8) = v57;
    *(v45 + 32) = 0;
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    *(v34 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_contentType) = sub_100077D68(v28, v57, 0);
    *(v0 + 312) = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state;

    v46 = v43;

    *(v0 + 232) = sub_10005E71C();
    sub_100035D04(&qword_10033C268, &qword_10028EAD0);
    sub_10000E244(&qword_10033E580, &qword_10033C268, &qword_10028EAD0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v47 = Publisher.eraseToAnyPublisher()();

    *(v0 + 240) = v47;
    swift_allocObject();
    swift_weakInit();

    sub_100035D04(&qword_10033E588, &unk_100274730);
    sub_10000E244(&qword_10033E590, &qword_10033E588, &unk_100274730, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v48 = UUID.uuidString.getter();
    v50 = v49;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v42 + 24);
    *(v42 + 24) = 0x8000000000000000;
    sub_10004DCFC(v34, v48, v50, isUniquelyReferenced_nonNull_native);

    *(v42 + 24) = v60;
    swift_endAccess();

    sub_100049C84(v34);

    sub_10006FFBC(v34);
    v52 = qword_10038B4E8;
    *(v0 + 320) = qword_10038B4E8;
    sub_10003672C(v58, v21);
    if (v21)
    {
      v52;
      v53 = swift_task_alloc();
      *(v0 + 344) = v53;
      *v53 = v0;
      v53[1] = sub_1002104D4;

      return sub_1001FC6B8(v22, v58);
    }

    else
    {
      v52;
      v54 = swift_task_alloc();
      *(v0 + 328) = v54;
      *v54 = v0;
      v54[1] = sub_1002103B8;

      return sub_1001FB388(v22, v58);
    }
  }

  else
  {
    sub_100213B1C();
    swift_allocError();
    *v25 = xmmword_10028E920;
    *(v25 + 16) = 0;
    swift_willThrow();
    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1002103B8()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1002107B8;
  }

  else
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1002105F0;
  }

  return (_swift_task_switch)(v5, v3, v4);
}

uint64_t sub_1002104D4()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_100210A2C;
  }

  else
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_100215790;
  }

  return (_swift_task_switch)(v5, v3, v4);
}

uint64_t sub_1002105F0()
{
  sub_100036718(*(v0 + 296), *(v0 + 361));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Call handoff succeeded", v3, 2u);
  }

  v5 = *(v0 + 304);
  v4 = *(v0 + 312);

  v6 = *(v5 + v4);
  v7 = v6[3];
  v8 = v6[4];
  v9 = v6[5];
  v10 = v6[6];
  v11 = v6[7];
  v12 = v6[8];
  v13 = v6[9];
  v6[3] = 0;
  v6[4] = 0;
  v6[5] = 2;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;

  sub_1001CED4C(v7, v8, v9, v10, v11, v12, v13);
  sub_10005E71C();
  v14 = v6[3];
  v15 = v6[4];
  v16 = v6[5];
  v17 = v6[6];
  v18 = v6[7];
  v19 = v6[8];
  v20 = v6[9];
  *(v0 + 128) = v14;
  *(v0 + 136) = v15;
  *(v0 + 144) = v16;
  *(v0 + 152) = v17;
  *(v0 + 160) = v18;
  *(v0 + 168) = v19;
  *(v0 + 176) = v20;
  sub_10006C458(v14, v15, v16, v17, v18, v19, v20);
  CurrentValueSubject.send(_:)();

  sub_1001CED4C(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  v21 = *(v0 + 296);
  LOBYTE(v9) = *(v0 + 361);
  sub_1002125C4(*(v0 + 304));

  sub_100036718(v21, v9);
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1002107B8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = *(v0 + 361);

  sub_100036718(v2, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "### Error executing call handoff: %@", v6, 0xCu);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);
  }

  v10 = *(v0 + 304);
  v9 = *(v0 + 312);

  swift_errorRetain();
  sub_10014FEEC(v1, (v0 + 16));
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v14 = *(v10 + v9);
  v15 = v14[3];
  v16 = v14[4];
  v17 = v14[5];
  v18 = v14[6];
  v19 = v14[7];
  v20 = v14[8];
  v21 = v14[9];
  v22 = *(v0 + 56);
  *(v14 + 3) = *(v0 + 16);
  v14[5] = v11;
  v14[6] = v12;
  v14[7] = v13;
  *(v14 + 4) = v22;

  sub_1001CED4C(v15, v16, v17, v18, v19, v20, v21);
  sub_10005E71C();
  v23 = v14[3];
  v24 = v14[4];
  v25 = v14[5];
  v26 = v14[6];
  v27 = v14[7];
  v28 = v14[8];
  v29 = v14[9];
  *(v0 + 72) = v23;
  *(v0 + 80) = v24;
  *(v0 + 88) = v25;
  *(v0 + 96) = v26;
  *(v0 + 104) = v27;
  *(v0 + 112) = v28;
  *(v0 + 120) = v29;
  sub_10006C458(v23, v24, v25, v26, v27, v28, v29);
  CurrentValueSubject.send(_:)();

  sub_1001CED4C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  v30 = *(v0 + 296);
  LOBYTE(v16) = *(v0 + 361);
  sub_1002125C4(*(v0 + 304));

  sub_100036718(v30, v16);
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100210A2C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 296);
  v3 = *(v0 + 361);

  sub_100036718(v2, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "### Error executing call handoff: %@", v6, 0xCu);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);
  }

  v10 = *(v0 + 304);
  v9 = *(v0 + 312);

  swift_errorRetain();
  sub_10014FEEC(v1, (v0 + 16));
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v14 = *(v10 + v9);
  v15 = v14[3];
  v16 = v14[4];
  v17 = v14[5];
  v18 = v14[6];
  v19 = v14[7];
  v20 = v14[8];
  v21 = v14[9];
  v22 = *(v0 + 56);
  *(v14 + 3) = *(v0 + 16);
  v14[5] = v11;
  v14[6] = v12;
  v14[7] = v13;
  *(v14 + 4) = v22;

  sub_1001CED4C(v15, v16, v17, v18, v19, v20, v21);
  sub_10005E71C();
  v23 = v14[3];
  v24 = v14[4];
  v25 = v14[5];
  v26 = v14[6];
  v27 = v14[7];
  v28 = v14[8];
  v29 = v14[9];
  *(v0 + 72) = v23;
  *(v0 + 80) = v24;
  *(v0 + 88) = v25;
  *(v0 + 96) = v26;
  *(v0 + 104) = v27;
  *(v0 + 112) = v28;
  *(v0 + 120) = v29;
  sub_10006C458(v23, v24, v25, v26, v27, v28, v29);
  CurrentValueSubject.send(_:)();

  sub_1001CED4C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  v30 = *(v0 + 296);
  LOBYTE(v16) = *(v0 + 361);
  sub_1002125C4(*(v0 + 304));

  sub_100036718(v30, v16);
  v31 = *(v0 + 8);

  return v31();
}

double sub_100210CA0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v7 = *(v6 - 8);
  v87 = v6;
  v88 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v78 - v11;
  v12 = type metadata accessor for Date();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v78 - v16;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100003078(v17, qword_10034DBB8);

  v82 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v89 = a1;
    v22 = v21;
    v81 = swift_slowAlloc();
    *&v95 = v81;
    *v22 = 136315650;
    *(v22 + 4) = sub_100017494(0xD000000000000027, 0x80000001002A5FB0, &v95);
    *(v22 + 12) = 2080;
    *&v103 = 60;
    *(&v103 + 1) = 0xE100000000000000;
    v80 = v20;
    v23 = UUID.uuidString.getter();
    sub_10000B584(8, v23, v24);
    v78 = a2;
    v79 = a3;

    v25 = static String._fromSubstring(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v32._countAndFlagsBits = sub_1000092A0(v30, v31);
    String.append(_:)(v32);

    v33._countAndFlagsBits = 62;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34 = sub_100017494(v103, *(&v103 + 1), &v95);

    *(v22 + 14) = v34;
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_100017494(v78, v79, &v95);
    _os_log_impl(&_mh_execute_header, v19, v80, "%s: session=%s, reason=%s", v22, 0x20u);
    swift_arrayDestroy();

    a1 = v89;
  }

  v35 = *(a1 + 24);
  v36 = *(*(v35 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
  if (v36)
  {
    *&v103 = 0;
    *(&v103 + 1) = 0xE000000000000000;
    v37 = v36;
    _StringGuts.grow(_:)(36);

    *&v103 = 0x1000000000000022;
    *(&v103 + 1) = 0x80000001002A5F80;
    v38 = [v37 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42._countAndFlagsBits = v39;
    v42._object = v41;
    String.append(_:)(v42);

    v43 = v103;
    sub_10008D594(&v103);
    v91 = v103;
    v92 = v104;
    v93 = v105;
    v44 = v107;
    v94 = v106;
    v45 = v83;
    static Date.now.getter();
    v46 = v84;
    v47 = &v84[*(v87 + 48)];
    (*(v85 + 32))(v84, v45, v86);
    *v47 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1000AFF4C(0, v44[2] + 1, 1, v44);
    }

    v49 = v44[2];
    v48 = v44[3];
    if (v49 >= v48 >> 1)
    {
      v44 = sub_1000AFF4C((v48 > 1), v49 + 1, 1, v44);
    }

    v44[2] = v49 + 1;
    sub_100098288(v46, v44 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v49);
    v50 = a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
    v51 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
    v95 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
    v96 = v51;
    v52 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
    v97 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
    v98 = v52;
    v53 = v94;
    v54 = v93;
    *(v50 + 16) = v92;
    *(v50 + 32) = v54;
    *v50 = v91;
    *(v50 + 48) = v53;
    *(v50 + 56) = v44;
    sub_1000097E8(&v95, &qword_10033E428, &qword_100274640);
    v55 = sub_100070168();
    if (v57 == 1)
    {
    }

    else
    {
      v71 = v55;
      v72 = v56;
      v73 = v57;
      v90 = v56 & 1;
      if (sub_10009FF24(v55, v56 & 1, v57, v35))
      {
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v74, v75, "Initiating automatic transfer", v76, 2u);
        }

        v77 = v71;
        sub_10020D200(a1, v71, v72 & 1, v73, 1);
      }

      else
      {
      }
    }
  }

  else
  {
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "### No mediaRemoteDisplayContext - scheduling possible automatic transfer", v61, 2u);
    }

    sub_10008D594(&v103);
    v99 = v103;
    v100 = v104;
    v101 = v105;
    v62 = v107;
    v102 = v106;
    static Date.now.getter();
    v63 = &v10[*(v87 + 48)];
    (*(v85 + 32))(v10, v15, v86);
    *v63 = 0x100000000000004ELL;
    *(v63 + 1) = 0x80000001002A5F30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1000AFF4C(0, v62[2] + 1, 1, v62);
    }

    v65 = v62[2];
    v64 = v62[3];
    if (v65 >= v64 >> 1)
    {
      v62 = sub_1000AFF4C((v64 > 1), v65 + 1, 1, v62);
    }

    v62[2] = v65 + 1;
    sub_100098288(v10, v62 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v65);
    v66 = a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
    v67 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
    v95 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
    v96 = v67;
    v68 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
    v97 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
    v98 = v68;
    v69 = v102;
    v70 = v101;
    *(v66 + 16) = v100;
    *(v66 + 32) = v70;
    *v66 = v99;
    *(v66 + 48) = v69;
    *(v66 + 56) = v62;
    sub_1000097E8(&v95, &qword_10033E428, &qword_100274640);
    sub_100211534(a1);
  }

  return result;
}

uint64_t sub_100211534(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v87 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v6 - 8);
  v77 = &v69[-v7];
  v8 = sub_100035D04(&qword_10034DE20, &qword_10028EA30);
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v80 = &v69[-v9];
  v10 = sub_100035D04(&qword_10034DE28, &qword_10028EA38);
  v84 = *(v10 - 8);
  v85 = v10;
  __chkstk_darwin(v10);
  v83 = &v69[-v11];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v79 = &v69[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v69[-v17];
  v78 = v19;
  __chkstk_darwin(v16);
  v21 = &v69[-v20];
  Date.init()();
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100003078(v22, qword_10034DBB8);
  v23 = *(v13 + 16);
  v90 = v21;
  v76 = v13 + 16;
  v75 = v23;
  v23(v18, v21, v12);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v91 = v13;
  v88 = v1;
  v89 = v3;
  v86 = v5;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v94[0] = v71;
    *v27 = 136315650;
    *(v27 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002A5E70, v94);
    *(v27 + 12) = 2080;
    v92 = 60;
    v93 = 0xE100000000000000;
    v28 = UUID.uuidString.getter();
    sub_10000B584(8, v28, v29);
    v70 = v25;

    v30 = static String._fromSubstring(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v34._countAndFlagsBits = 32;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v37._countAndFlagsBits = sub_1000092A0(v35, v36);
    String.append(_:)(v37);

    v38._countAndFlagsBits = 62;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39 = sub_100017494(v92, v93, v94);

    *(v27 + 14) = v39;
    *(v27 + 22) = 2080;
    sub_1002139E4(&qword_100345628, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v74 = *(v91 + 8);
    v74(v18, v12);
    v43 = sub_100017494(v40, v42, v94);

    *(v27 + 24) = v43;
    _os_log_impl(&_mh_execute_header, v24, v70, "%s: session=%s, timestamp=%s", v27, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v74 = *(v13 + 8);
    v74(v18, v12);
  }

  v72 = a1;
  v73 = v12;
  v44 = *(a1 + 24);
  v92 = sub_10006FD08();
  v45 = v90;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v46 = qword_10038B5B8;
  v94[0] = qword_10038B5B8;
  v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v48 = v77;
  (*(*(v47 - 8) + 56))(v77, 1, 1, v47);
  v49 = v46;
  sub_100035D04(&qword_10033D4E0, &qword_10028EA40);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_10033D4E8, &qword_10033D4E0, &qword_10028EA40, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000513CC();
  v50 = v80;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v48, &qword_10034C680, &qword_100270390);

  sub_100003118(0, &qword_10033D520, PCMediaRemoteDisplayContext_ptr);
  sub_10000E244(&qword_10034DE30, &qword_10034DE20, &qword_10028EA30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v51 = v82;
  v52 = v83;
  Publisher.compactMap<A>(_:)();
  (*(v81 + 8))(v50, v51);
  v53 = swift_allocObject();
  v54 = v88;
  swift_weakInit();
  v55 = v79;
  v56 = v73;
  v75(v79, v45, v73);
  v57 = v91;
  v58 = (*(v91 + 80) + 24) & ~*(v91 + 80);
  v59 = (v78 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 16) = v53;
  (*(v57 + 32))(v60 + v58, v55, v56);
  *(v60 + v59) = v72;
  sub_10000E244(&qword_10034DE38, &qword_10034DE28, &qword_10028EA38, &protocol conformance descriptor for Publishers.CompactMap<A, B>);

  v61 = v85;
  v62 = Publisher<>.sink(receiveValue:)();

  (*(v84 + 8))(v52, v61);
  *(v54 + 56) = v62;

  v64 = v86;
  v63 = v87;
  v65 = v89;
  (*(v87 + 16))(v86, v44 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v89);
  swift_beginAccess();
  if (!*(*(v54 + 40) + 16))
  {
    goto LABEL_12;
  }

  sub_100019110(v64);
  if ((v66 & 1) == 0)
  {

LABEL_12:
    (*(v63 + 8))(v64, v65);
    sub_10001AEA0(v44);
    return (v74)(v90, v56);
  }

  v67 = *(v63 + 8);

  v67(v64, v65);

  return (v74)(v90, v56);
}

void sub_100211FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v5 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v57 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v52 - v6;
  v59 = type metadata accessor for Date();
  v8 = *(v59 - 8);
  v9 = __chkstk_darwin(v59);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v52 - v13;
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v56 = v5;
    Date.timeIntervalSinceNow.getter();
    v20 = v19;
    if (qword_100339230 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v54 = sub_100003078(v21, qword_10034DBB8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v55 = v11;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v53 = v8;
      v26 = v25;
      v27 = swift_slowAlloc();
      v52 = a3;
      v28 = v27;
      *&v65[0] = v27;
      *v26 = 136315138;
      v29 = sub_100209A0C(-v20);
      v31 = v7;
      v32 = sub_100017494(v29, v30, v65);

      *(v26 + 4) = v32;
      v7 = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Transfer context arrived %ss after scheduling", v26, 0xCu);
      sub_10000903C(v28);

      v8 = v53;
    }

    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v33 = *(qword_10038B0B8 + 744);
    sub_10005F4E4();

    static Date.+ infix(_:_:)();
    Date.init()();
    v34 = static Date.< infix(_:_:)();
    v35 = *(v8 + 8);
    v36 = v14;
    v37 = v59;
    v35(v36, v59);
    if (v34)
    {
      v38 = sub_100210CA0(v58, 0xD00000000000002DLL, 0x80000001002A5F00);
      (v35)(v16, v37, v38);
    }

    else
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "### mediaRemoteDisplayContext arrived after deadline", v41, 2u);
      }

      sub_10008D594(v65);
      v61 = v65[0];
      v62 = v65[1];
      v63 = v65[2];
      v42 = v67;
      v64 = v66;
      v43 = v55;
      static Date.now.getter();
      v44 = &v7[*(v56 + 48)];
      (*(v8 + 32))(v7, v43, v59);
      *v44 = 0x1000000000000037;
      *(v44 + 1) = 0x80000001002A5EC0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1000AFF4C(0, v42[2] + 1, 1, v42);
      }

      v46 = v42[2];
      v45 = v42[3];
      if (v46 >= v45 >> 1)
      {
        v42 = sub_1000AFF4C((v45 > 1), v46 + 1, 1, v42);
      }

      v35(v16, v59);
      v42[2] = v46 + 1;
      sub_100098288(v7, v42 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v46);
      v47 = v58 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
      v48 = *(v58 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
      v60[0] = *(v58 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
      v60[1] = v48;
      v49 = *(v58 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
      v60[2] = *(v58 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
      v60[3] = v49;
      v50 = v64;
      v51 = v63;
      *(v47 + 16) = v62;
      *(v47 + 32) = v51;
      *v47 = v61;
      *(v47 + 48) = v50;
      *(v47 + 56) = v42;
      sub_1000097E8(v60, &qword_10033E428, &qword_100274640);
    }

    *(v18 + 56) = 0;
  }
}

double sub_1002125C4(uint64_t a1)
{
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034DBB8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD000000000000017, 0x80000001002A6120, v18);
    *(v5 + 12) = 2080;
    v6 = sub_10023E6A4();
    v8 = sub_100017494(v6, v7, v18);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: transfer=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_100209708(a1, sub_10004B06C);

  v9 = (a1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type);
  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 32) == 1)
  {
    v11 = *v9;
    v10 = v9[1];

    swift_beginAccess();
    v12 = v11;
    v13 = v10;
  }

  else
  {
    v14 = UUID.uuidString.getter();
    v16 = v15;
    swift_beginAccess();
    v12 = v14;
    v13 = v16;
  }

  sub_1001CFDEC(0, v12, v13);
  swift_endAccess();
  return sub_10023E254();
}

double sub_100212860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1002125C4(Strong);
      sub_10001B7F4();
      OSSignpostID.init(_:)();
      static os_signpost_type_t.end.getter();
      if (qword_100338F20 != -1)
      {
        swift_once();
      }

      os_signpost(_:dso:log:name:signpostID:_:_:)();

      (*(v4 + 8))(v6, v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100212A48(uint64_t a1, void *a2)
{
  v3 = sub_10000EBC0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100212AAC(uint64_t (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

void *sub_100212AE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = sub_100035D04(&qword_10034DDB8, &qword_10028E9B0);
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_100035D04(&qword_10034DDC0, &qword_10028E9B8);
  v34 = *(v10 - 8);
  v35 = v10;
  __chkstk_darwin(v10);
  v28 = &v28 - v11;
  v1[3] = _swiftEmptyDictionarySingleton;
  v1[4] = _swiftEmptyDictionarySingleton;
  v1[5] = _swiftEmptyDictionarySingleton;
  v36 = type metadata accessor for HandoffTransfer(0);
  v37 = type metadata accessor for UUID();
  v38 = sub_1002139E4(&qword_10034DDC8, type metadata accessor for HandoffTransfer, &unk_100294F98);
  KeyPath = swift_getKeyPath();
  sub_100035D04(&qword_10034DDD0, &unk_10028E9F0);
  swift_allocObject();
  v13 = sub_10006B474(KeyPath, 0);

  v2[8] = &_swiftEmptySetSingleton;
  v2[6] = v13;
  v2[7] = 0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_10034DBB8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Init", v17, 2u);
  }

  v2[2] = a1;

  v39 = sub_100140E18();
  swift_allocObject();
  swift_weakInit();

  sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  v29 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v39 = *(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  type metadata accessor for HandoffSession(0);

  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_10034DDD8, &unk_10028EA00);
  v18 = v31;
  Publishers.CompactMap.map<A>(_:)();
  (*(v30 + 8))(v6, v18);
  sub_10000E244(&qword_10034DDE0, &qword_10034DDB8, &qword_10028E9B0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_10000E244(&qword_10034DDE8, &qword_10034DDD8, &unk_10028EA00, &protocol conformance descriptor for Publishers.Map<A, B>);
  v19 = v28;
  v20 = v33;
  Publisher<>.switchToLatest()();
  (*(v32 + 8))(v9, v20);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100213378;
  *(v22 + 24) = v21;
  sub_10000E244(&qword_10034DDF0, &qword_10034DDC0, &qword_10028E9B8, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v23 = v35;
  Publisher<>.sink(receiveValue:)();

  (*(v34 + 8))(v19, v23);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v39 = sub_1000F1608();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_100343C08, &qword_100279AB0);
  v24 = v29;
  sub_10000E244(&qword_100343C10, &qword_100343C08, &qword_100279AB0, v29);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v39 = sub_1000F1790();
  v25 = swift_allocObject();
  swift_weakInit();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_1002133BC;
  *(v26 + 24) = v25;
  sub_100035D04(&qword_10034DDF8, &qword_10028EA10);
  sub_10000E244(&qword_10034DE00, &qword_10034DDF8, &qword_10028EA10, v24);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_1002133C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = *(a1 + 32);
  v4 = *(a1 + 56);
  v7 = *(a1 + 48);
  return v2(v6, v4, *(a1 + 64));
}

id sub_10021341C(id result, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {

      return sub_10009D534(result, a2);
    }

    else if (a4 == 3)
    {
    }
  }

  else
  {
    v4 = result;

    return v4;
  }

  return result;
}

void sub_1002134C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v13 = sub_10000DF0C(v11, v12);
    v15 = v14;

    if (v15)
    {
      if (v13 == a2 && v15 == a3)
      {

        return;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
LABEL_15:

        return;
      }
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_15;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

double sub_100213670(uint64_t a1)
{
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034DBB8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A21B0, &v21);
    *(v5 + 12) = 2080;
    if (a1)
    {
      v6 = UUID.uuidString.getter();
      sub_10000B584(8, v6, v7);

      v8 = static String._fromSubstring(_:)();
      v10 = v9;

      v11._countAndFlagsBits = v8;
      v11._object = v10;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 32;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v15._countAndFlagsBits = sub_1000092A0(v13, v14);
      String.append(_:)(v15);

      v16._countAndFlagsBits = 62;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17 = 60;
      v18 = 0xE100000000000000;
    }

    else
    {
      v18 = 0xE300000000000000;
      v17 = 7104878;
    }

    v19 = sub_100017494(v17, v18, &v21);

    *(v5 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: session=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    *(*(*(a1 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__executedThisSession) + 24) = 0;

    sub_10005E50C();
    CurrentValueSubject.send(_:)();
  }

  return result;
}

void sub_100213944(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100211FA4(a1, v5, v1 + v4, v6);
}

uint64_t sub_1002139E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100213A2C(uint64_t a1)
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
  v11[1] = sub_1000E6584;

  return sub_10020DB4C(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_100213B1C()
{
  result = qword_10034DE58;
  if (!qword_10034DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034DE58);
  }

  return result;
}

double sub_100213B78(uint64_t a1)
{
  type metadata accessor for UUID();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_100212860(a1, v3, v4);
}

uint64_t sub_100213BEC(uint64_t a1)
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
  v10[1] = sub_1000E6584;

  return sub_10020C7D0(a1, v4, v5, v6, v7, v9, v8);
}

void sub_100213CC0()
{
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034DBB8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100017494(0xD000000000000025, 0x80000001002A6310, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000903C(v3);
  }
}

void sub_100213E08(uint64_t a1)
{
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034DBB8);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_100017494(0xD000000000000024, 0x80000001002A6340, &v9);
    *(v4 + 12) = 2080;
    v5 = sub_100254BB4(a1);
    v7 = sub_100017494(v5, v6, &v9);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "%s: effect=%s", v4, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100213FC8()
{
  v24 = v0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = sub_100003078(v1, qword_10034DBB8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v4 = 136315394;
    v5 = sub_100017494(0xD00000000000001BLL, 0x80000001002A62F0, v23);
    *(v4 + 4) = v5;
    *(v4 + 12) = 2080;
    v7 = sub_1000092A0(v5, v6);
    v9 = sub_100017494(v7, v8, v23);

    *(v4 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000DF0C(v10, v11);
  v13 = v12;

  if (v13)
  {
    v14 = objc_allocWithZone(MRUpdateActiveSystemEndpointRequest);
    v15 = String._bridgeToObjectiveC()();

    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 initWithOutputDeviceUID:v15 reason:v16];
    v0[21] = v17;

    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v0[22] = v18;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100214410;
    v19 = swift_continuation_init();
    v0[17] = sub_100035D04(&qword_10034DE88, &qword_10028EB40);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100212A48;
    v0[13] = &unk_100313580;
    v0[14] = v19;
    [v17 perform:v18 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_100035D04(&qword_10034DE78, &qword_10028EB38);
    sub_10000E244(&qword_10034DE80, &qword_10034DE78, &qword_10028EB38, &unk_10027EBE0);
    swift_allocError();
    *v20 = xmmword_10028E910;
    swift_willThrow();
    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100214410()
{

  return (_swift_task_switch)(sub_1002144F0, 0, 0);
}

uint64_t sub_1002144F0()
{
  v1 = *(v0 + 144);

  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v3;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "### Failed to set system endpoint: %@", v6, 0xCu);
      sub_1000097E8(v7, &qword_100339940, &unk_100272C50);
    }

    v10 = *(v0 + 168);

    swift_willThrow();
    v11 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 168);

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_100214688(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for LaunchAppRequest.Option(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v92 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v91 = &v83 - v10;
  v11 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v12 = __chkstk_darwin(v11 - 8);
  v88 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = &v83 - v14;
  v15 = type metadata accessor for UUID();
  v89 = *(v15 - 8);
  v90 = v15;
  v16 = __chkstk_darwin(v15);
  v86 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v85 = &v83 - v18;
  v19 = sub_100035D04(&qword_10034DE70, &unk_10028EB10);
  v20 = __chkstk_darwin(v19 - 8);
  v96 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v83 - v22;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100003078(v24, qword_10034DBB8);

  v26 = a1;
  v94 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v95 = v26;

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v93 = v7;
    v98 = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_100017494(0xD000000000000036, 0x80000001002A6210, &v98);
    *(v29 + 12) = 2080;
    v31 = sub_100078EF8(a1, a2 & 1, a3);
    v33 = a2;
    v34 = v23;
    v35 = sub_100017494(v31, v32, &v98);

    *(v29 + 14) = v35;
    v23 = v34;
    a2 = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s: %s", v29, 0x16u);
    swift_arrayDestroy();
    v7 = v93;
  }

  if (a2)
  {
    sub_100035D04(&qword_10033F020, &qword_100275768);
    v36 = *(v7 + 9);
    v37 = (v7[80] + 32) & ~v7[80];
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10026F050;
    swift_storeEnumTagMultiPayload();
    if (!a3)
    {
      v39 = *(v7 + 7);
      v39(v23, 1, 1, v6);
      v40 = v95;
      v41 = [v40 service];
      v95 = v40;
      if (v41 - 2 < 2)
      {
        v51 = [v40 conversationUUID];
        if (!v51)
        {
          goto LABEL_26;
        }

        v93 = v7;
        v84 = v6;
        v43 = v23;
        v52 = v51;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = v88;
        UUID.init(uuidString:)();

        v54 = v89;
        v53 = v90;
        if ((*(v89 + 48))(v45, 1, v90) != 1)
        {
          sub_1000097E8(v23, &qword_10034DE70, &unk_10028EB10);
          v69 = v45;
          v70 = *(v54 + 32);
          v71 = v86;
          v70(v86, v69, v53);
          v70(v23, v71, v53);
          v6 = v84;
          goto LABEL_24;
        }
      }

      else
      {
        if (!v41)
        {
          v55 = v6;
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&_mh_execute_header, v56, v57, "### Unknown service", v58, 2u);
          }

          v6 = v55;
          goto LABEL_26;
        }

        if (v41 != 1)
        {
          v93 = v23;
          v59 = v41;
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v84 = v6;
            v63 = v62;
            v64 = v7;
            v65 = swift_slowAlloc();
            v98 = v65;
            *v63 = 136315138;
            v97 = v59;
            type metadata accessor for TUCallService(0);
            v66 = String.init<A>(describing:)();
            v68 = sub_100017494(v66, v67, &v98);

            *(v63 + 4) = v68;
            _os_log_impl(&_mh_execute_header, v60, v61, "### Unknown service type: %s", v63, 0xCu);
            sub_10000903C(v65);
            v7 = v64;

            v6 = v84;
          }

          v23 = v93;
          goto LABEL_26;
        }

        v42 = [v40 callUUID];
        if (!v42)
        {
LABEL_26:
          v72 = v96;
          sub_100215460(v23, v96);
          if ((*(v7 + 6))(v72, 1, v6) == 1)
          {
            sub_1000097E8(v72, &qword_10034DE70, &unk_10028EB10);
            v73 = Logger.logObject.getter();
            v74 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = v23;
              v77 = swift_slowAlloc();
              v98 = v77;
              *v75 = 136315138;
              *(v75 + 4) = sub_100017494(0x656D695465636146, 0xE800000000000000, &v98);
              _os_log_impl(&_mh_execute_header, v73, v74, "### Launching %s for call activity without URL", v75, 0xCu);
              sub_10000903C(v77);

              v78 = v76;
            }

            else
            {

              v78 = v23;
            }

            sub_1000097E8(v78, &qword_10034DE70, &unk_10028EB10);
          }

          else
          {
            v79 = v91;
            sub_1002156FC(v72, v91, type metadata accessor for LaunchAppRequest.Option);
            v80 = v92;
            sub_1002154D0(v79, v92, type metadata accessor for LaunchAppRequest.Option);
            v81 = sub_1000B0258(1, 2, 1, v38);

            sub_100215538(v79, type metadata accessor for LaunchAppRequest.Option);
            sub_1000097E8(v23, &qword_10034DE70, &unk_10028EB10);
            v81[2] = 2;
            sub_1002156FC(v80, v81 + v37 + v36, type metadata accessor for LaunchAppRequest.Option);
          }

          return 0;
        }

        v93 = v7;
        v84 = v6;
        v43 = v23;
        v44 = v42;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = v87;
        UUID.init(uuidString:)();

        v47 = v89;
        v46 = v90;
        if ((*(v89 + 48))(v45, 1, v90) != 1)
        {
          sub_1000097E8(v23, &qword_10034DE70, &unk_10028EB10);
          v48 = v45;
          v49 = *(v47 + 32);
          v50 = v85;
          v49(v85, v48, v46);
          v49(v23, v50, v46);
          v6 = v84;
LABEL_24:
          swift_storeEnumTagMultiPayload();
          v39(v23, 0, 1, v6);
          goto LABEL_25;
        }
      }

      sub_1000097E8(v45, &unk_100348F30, &unk_100272540);
      v23 = v43;
      v6 = v84;
LABEL_25:
      v7 = v93;
      goto LABEL_26;
    }
  }

  return 0;
}

uint64_t sub_10021511C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return (_swift_task_switch)(sub_100215140, 0, 0);
}

uint64_t sub_100215140()
{
  v17 = v0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034DBB8);
  sub_10009D534(v2, v1);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_10009D58C(v2, v1);

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[8];
    v6 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0xD00000000000001ELL, 0x80000001002A61C0, &v16);
    *(v10 + 12) = 2080;
    v0[2] = v9;
    v0[3] = v8;
    v0[4] = v7;
    v0[5] = v6;
    sub_10009D534(v9, v8);

    v11 = String.init<A>(describing:)();
    v13 = sub_100017494(v11, v12, &v16);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100215378(uint64_t a1)
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
  v11[1] = sub_1000E6584;

  return sub_10020B844(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100215460(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10034DE70, &unk_10028EB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002154D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100215538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100215598(void *a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {

      sub_10009D58C(a1, a2);
    }

    else if (a4 == 3)
    {
    }
  }

  else
  {
  }
}

uint64_t sub_10021563C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009D6D4;

  return sub_10020AC94(a1, v4, v5, v7, v6);
}

uint64_t sub_1002156FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100215764(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

char *sub_10021579C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  if (qword_100338EE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_10033F340);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30.receiver = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100017494(a3, a4, &v30);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s-Init", v14, 0xCu);
    sub_10000903C(v15);
  }

  v16 = objc_allocWithZone(NSUserDefaults);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithSuiteName:v17];

  if (v18)
  {
    *&v7[qword_10033F358] = v18;
    v19 = &v7[qword_10033F360];
    *v19 = a3;
    *(v19 + 1) = a4;
    v20 = &v7[qword_10033F368];
    *v20 = a5;
    *(v20 + 1) = a6;
    v32.receiver = v7;
    v32.super_class = ObjectType;

    v21 = v18;
    v22 = objc_msgSendSuper2(&v32, "init");
    v23 = String._bridgeToObjectiveC()();
    [v21 addObserver:v22 forKeyPath:v23 options:1 context:0];

    v24 = String._bridgeToObjectiveC()();

    v25 = [v21 objectForKey:v24];

    if (v25)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000516B4(&v29, &v30);
    }

    else
    {
      v30 = 0;
      v31 = 0u;
    }

    sub_100035D04(&unk_100339680, &qword_100278390);
    if (swift_dynamicCast())
    {
      v30.receiver = v29;
      LOBYTE(v30.super_class) = 0;
      (*&v22[qword_10033F368])(&v30);
    }

    else
    {
    }
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v22;
}

uint64_t sub_100215B20()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034DE90);
  sub_100003078(v0, qword_10034DE90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100215BA0(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_100035D04(&qword_10034E060, &qword_10028EDA8);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_100035D04(&qword_10034E068, &qword_10028EDB0);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_100035D04(&qword_10034E070, &qword_10028EDB8);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_100035D04(&qword_10034E078, &qword_10028EDC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_10000EBC0(a1, a1[3]);
  sub_100217A9C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_100217B44();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_100217AF0();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_100217B98();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_100215F20()
{
  v1 = 0x7774654E656D6173;
  if (*v0 != 1)
  {
    v1 = 0x656D6F48656D6173;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6F7972657665;
  }
}

uint64_t sub_100215F84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002173F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100215FAC(uint64_t a1)
{
  v2 = sub_100217A9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100215FE8(uint64_t a1)
{
  v2 = sub_100217A9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100216024(uint64_t a1)
{
  v2 = sub_100217B98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100216060(uint64_t a1)
{
  v2 = sub_100217B98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021609C(uint64_t a1)
{
  v2 = sub_100217AF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002160D8(uint64_t a1)
{
  v2 = sub_100217AF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100216114(uint64_t a1)
{
  v2 = sub_100217B44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100216150(uint64_t a1)
{
  v2 = sub_100217B44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021618C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10021750C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1002161D4()
{
  type metadata accessor for AccessControlLevelMonitor();
  v0 = swift_allocObject();
  result = sub_100216470();
  qword_10038B5D0 = v0;
  return result;
}

char *sub_100216210()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = objc_allocWithZone(sub_100035D04(&qword_10034E080, &unk_10028EDC8));

    v4 = v0;
    v2 = sub_10021579C(0xD000000000000011, 0x80000001002A16C0, 0xD000000000000012, 0x80000001002A36C0, sub_100217BF4, v0);
    v5 = *(v0 + 40);
    *(v4 + 40) = v2;
    v6 = v2;
    sub_10001DAC4(v5);
  }

  sub_100056F7C(v1);
  return v2;
}

double sub_1002162EC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  sub_1001C251C(v2, v3);

  return result;
}

char *sub_100216348()
{
  v1 = *(v0 + 48);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = objc_allocWithZone(sub_100035D04(&qword_10034E080, &unk_10028EDC8));

    v4 = v0;
    v2 = sub_10021579C(0xD000000000000011, 0x80000001002A16C0, 0x776F6C6C41703270, 0xE800000000000000, sub_100217BEC, v0);
    v5 = *(v0 + 48);
    *(v4 + 48) = v2;
    v6 = v2;
    sub_10001DAC4(v5);
  }

  sub_100056F7C(v1);
  return v2;
}

double sub_100216414(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  sub_1001C251C(v2, v3);

  return result;
}

void *sub_100216470()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v74 = *(v2 - 8);
  __chkstk_darwin(v2);
  v72 = v3;
  v73 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100035D04(&qword_10034E088, &qword_10028EDD8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v76 = &v62 - v6;
  v7 = sub_100035D04(&qword_10034E090, &qword_10028EDE0);
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v65 = &v62 - v8;
  v9 = sub_100035D04(&qword_10034E098, &qword_10028EDE8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v66 = &v62 - v11;
  v12 = sub_100035D04(&qword_10034E0A0, &qword_10028EDF0);
  v70 = *(v12 - 8);
  v71 = v12;
  __chkstk_darwin(v12);
  v69 = &v62 - v13;
  sub_100035D04(&qword_10034E0A8, &qword_10028EDF8);
  swift_allocObject();
  *(v0 + 24) = sub_10003349C(0, 1, 0, 0, 0, 0, 0);
  swift_allocObject();
  *(v0 + 32) = sub_10003349C(0, 1, 0, 0, 0, 0, 0);
  *(v0 + 40) = vdupq_n_s64(1uLL);
  *(v0 + 56) = 0;
  if (qword_100339238 != -1)
  {
    swift_once();
  }

  v75 = v2;
  v14 = sub_100003078(v2, qword_10034DE90);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Init", v17, 2u);
  }

  v18 = [objc_opt_self() standardUserDefaults];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 persistentDomainForName:v19];

  if (v20)
  {
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v21 + 16) && (v22 = sub_100004B58(0xD000000000000012, 0x80000001002A36C0), (v23 & 1) != 0) && (sub_10001766C(*(v21 + 56) + 32 * v22, v78), (swift_dynamicCast() & 1) != 0) && *(v21 + 16) && (v24 = v81, v25 = sub_100004B58(0x776F6C6C41703270, 0xE800000000000000), (v26 & 1) != 0))
    {
      sub_10001766C(*(v21 + 56) + 32 * v25, v78);

      if (swift_dynamicCast())
      {
        if (v24 == 1)
        {
          v27 = 2;
        }

        else
        {
          v27 = v81 != 1;
        }

        swift_beginAccess();
        sub_100035D04(&qword_10034E0B0, &qword_10028EE00);
        swift_allocObject();
        v28 = v27;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Defaulting on access control level.", v31, 2u);
  }

  swift_beginAccess();
  sub_100035D04(&qword_10034E0B0, &qword_10028EE00);
  swift_allocObject();
  v28 = 2;
LABEL_20:
  v1[2] = sub_1000341E8(v28, 0, 0, 0, 0, 0);
  swift_endAccess();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v77 = v5;
  v64 = v4;
  if (v34)
  {
    v62 = v10;
    v63 = v9;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v81 = v36;
    *v35 = 136315138;
    swift_beginAccess();
    v37 = v1;

    CurrentValueSubject.value.getter();
    v38 = v79;
    if (v79 == 3)
    {
      CurrentValueSubject.value.getter();

      v38 = v80;
    }

    else
    {
    }

    LOBYTE(v80) = v38;
    v39 = String.init<A>(describing:)();
    v41 = sub_100017494(v39, v40, &v81);

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Initial accessControlLevel: %s", v35, 0xCu);
    sub_10000903C(v36);

    v1 = v37;
    v9 = v63;
    v10 = v62;
  }

  else
  {
  }

  v42 = v1[3];
  v80 = v1[4];
  v81 = v42;
  sub_10000E244(&qword_10034E0B8, &qword_10034E0A8, &qword_10028EDF8, &unk_10027C688);

  v43 = v65;
  Publishers.CombineLatest.init(_:_:)();
  sub_10000E244(&qword_10034E0C0, &qword_10034E090, &qword_10028EDE0, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v44 = v66;
  v45 = v68;
  Publisher.dropFirst(_:)();
  (*(v67 + 8))(v43, v45);
  sub_10000E244(&qword_10034E0C8, &qword_10034E098, &qword_10028EDE8, &protocol conformance descriptor for Publishers.Drop<A>);
  v46 = v69;
  Publisher.map<A>(_:)();
  (*(v10 + 8))(v44, v9);
  LOBYTE(v43) = static os_log_type_t.info.getter();
  v47 = v73;
  v48 = v74;
  v49 = v75;
  (*(v74 + 16))(v73, v14, v75);
  v50 = v1;
  v51 = (*(v48 + 80) + 64) & ~*(v48 + 80);
  v52 = v51 + v72;
  v53 = swift_allocObject();
  *(v53 + 2) = 0;
  *(v53 + 3) = 0;
  *(v53 + 4) = 0xD000000000000018;
  *(v53 + 5) = 0x80000001002A6500;
  *(v53 + 6) = 0;
  *(v53 + 7) = 0xE000000000000000;
  (*(v48 + 32))(&v53[v51], v47, v49);
  v53[v52] = v43;
  sub_10000E244(&qword_10034E0D0, &qword_10034E0A0, &qword_10028EDF0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v54 = v76;
  v55 = v71;
  v56 = v46;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034E0D8, &qword_10034E088, &qword_10028EDD8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v57 = v64;
  v58 = Publisher.eraseToAnyPublisher()();
  (*(v77 + 8))(v54, v57);
  (*(v70 + 8))(v56, v55);
  v81 = v58;
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10034E0E0, &qword_10028EE08);
  sub_10000E244(&qword_10034E0E8, &qword_10034E0E0, &qword_10028EE08, &protocol conformance descriptor for AnyPublisher<A, B>);
  v59 = Publisher<>.sink(receiveValue:)();

  v50[7] = v59;

  v60 = sub_100216210();

  return v50;
}

uint64_t sub_100217064@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 8))
  {
    *a2 = 2;
  }

  else
  {
    v2 = *(result + 16) != 1;
    if (*result == 1)
    {
      v2 = 2;
    }

    if (*(result + 24))
    {
      v2 = 2;
    }

    *a2 = v2;
  }

  return result;
}

double sub_1002170A8(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();

    sub_1001C2100(v2);
  }

  return result;
}

uint64_t sub_100217138()
{

  sub_10001DAC4(*(v0 + 40));
  sub_10001DAC4(*(v0 + 48));

  return swift_deallocClassInstance();
}

unint64_t sub_1002171D0()
{
  result = qword_10034E018;
  if (!qword_10034E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E018);
  }

  return result;
}

uint64_t sub_100217224()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100217258()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10021728C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002172C0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1002172F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_100217320()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100217354()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100217388()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002173BC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002173F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F7972657665 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7774654E656D6173 && a2 == 0xEB000000006B726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6F48656D6173 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10021750C(void *a1)
{
  v29 = sub_100035D04(&qword_10034E020, &qword_10028ED80);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v33 = &v26 - v2;
  v3 = sub_100035D04(&qword_10034E028, &qword_10028ED88);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_100035D04(&qword_10034E030, &qword_10028ED90);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_100035D04(&qword_10034E038, &unk_10028ED98);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_10000EBC0(a1, a1[3]);
  sub_100217A9C();
  v12 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v21 = &type metadata for AccessControlLevel;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    sub_10000903C(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_100217B98();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_100217B44();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_100217AF0();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_10000903C(v35);
  return v36;
}

unint64_t sub_100217A9C()
{
  result = qword_10034E040;
  if (!qword_10034E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E040);
  }

  return result;
}

unint64_t sub_100217AF0()
{
  result = qword_10034E048;
  if (!qword_10034E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E048);
  }

  return result;
}

unint64_t sub_100217B44()
{
  result = qword_10034E050;
  if (!qword_10034E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E050);
  }

  return result;
}

unint64_t sub_100217B98()
{
  result = qword_10034E058;
  if (!qword_10034E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E058);
  }

  return result;
}

uint64_t sub_100217BFC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  result = sub_1001BFB20(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result;
  return result;
}

unint64_t sub_100217CF4()
{
  result = qword_10034E0F0;
  if (!qword_10034E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E0F0);
  }

  return result;
}

unint64_t sub_100217D4C()
{
  result = qword_10034E0F8;
  if (!qword_10034E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E0F8);
  }

  return result;
}

unint64_t sub_100217DA4()
{
  result = qword_10034E100;
  if (!qword_10034E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E100);
  }

  return result;
}

unint64_t sub_100217DFC()
{
  result = qword_10034E108;
  if (!qword_10034E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E108);
  }

  return result;
}

unint64_t sub_100217E54()
{
  result = qword_10034E110;
  if (!qword_10034E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E110);
  }

  return result;
}

unint64_t sub_100217EAC()
{
  result = qword_10034E118;
  if (!qword_10034E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E118);
  }

  return result;
}

unint64_t sub_100217F04()
{
  result = qword_10034E120;
  if (!qword_10034E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E120);
  }

  return result;
}

unint64_t sub_100217F5C()
{
  result = qword_10034E128;
  if (!qword_10034E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E128);
  }

  return result;
}

unint64_t sub_100217FB4()
{
  result = qword_10034E130;
  if (!qword_10034E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E130);
  }

  return result;
}

void sub_100218028(uint64_t a1, uint64_t a2)
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

uint64_t sub_10021808C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034E140);
  sub_100003078(v0, qword_10034E140);
  return Logger.init(subsystem:category:)();
}

void sub_1002182E4()
{
  if (qword_100339248 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10034E140);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (*(v2 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startDistance + 4))
    {
      v6 = 0xE300000000000000;
      v7 = 7104878;
    }

    else
    {
      v7 = String.init<A>(describing:)();
      v6 = v8;
    }

    v9 = sub_100017494(v7, v6, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "startDistance: %s", v4, 0xCu);
    sub_10000903C(v5);
  }

  else
  {
  }
}

void sub_10021849C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v28 - v6;
  v8 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  if (qword_100339248 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_10034E140);
  v15 = v0;
  v29 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v16))
  {
    v28 = v5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    v19 = v2;
    v20 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startTime;
    swift_beginAccess();
    v21 = v15 + v20;
    v22 = v19;
    sub_10006C4AC(v21, v13);
    sub_10006C4AC(v13, v11);
    if ((*(v19 + 48))(v11, 1, v1) == 1)
    {
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    else
    {
      (*(v19 + 32))(v7, v11, v1);
      (*(v19 + 16))(v28, v7, v1);
      v24 = String.init<A>(describing:)();
      v23 = v26;
      (*(v22 + 8))(v7, v1);
    }

    sub_1000097E8(v13, &qword_10033C280, &qword_100272A80);
    v27 = sub_100017494(v24, v23, &v30);

    *(v17 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v29, v16, "startTime: %s", v17, 0xCu);
    sub_10000903C(v18);
  }

  else
  {
    v25 = v29;
  }
}

id sub_100218838(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_interruptionHandler];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_invalidationHandler];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_progress] = 0;
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_factor] = 0;
  v5 = &v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_frequency];
  *v5 = 0;
  v5[8] = 1;
  v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activeDeviceClass] = 0;
  v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activated] = 0;
  v6 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  *&v1[v6] = qword_10038B0B8;
  v7 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_fluidSpring;

  *&v1[v7] = sub_1001FDBF4();
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine] = 0;
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticPlayers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_repeater] = 0;
  v8 = &v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startDistance];
  *v8 = 0;
  v8[4] = 1;
  v9 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startTime;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HapticPlayer(0);
  return objc_msgSendSuper2(&v12, "init");
}

id sub_100218A08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HapticPlayer(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HapticPlayer(uint64_t a1)
{
  result = qword_10034E1F8;
  if (!qword_10034E1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100218B5C(uint64_t a1)
{
  sub_10018C4E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100218C64(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100218CD4(a2, a3);
  }
}

void sub_100218CD4(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue;
  v11 = *&v3[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue];
  *v9 = v11;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    if (qword_100339248 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10034E140);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Activate", v16, 2u);
  }

  v17 = objc_allocWithZone(CHHapticEngine);
  aBlock[0] = 0;
  v18 = [v17 initAndReturnError:aBlock];
  v19 = aBlock[0];
  if (v18)
  {
    v20 = v18;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = a1;
    v22[4] = a2;
    aBlock[4] = sub_10021C354;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = &unk_100313A08;
    v23 = _Block_copy(aBlock);

    v24 = v19;

    [v20 startWithCompletionHandler:v23];
    _Block_release(v23);
    v25 = *&v3[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine];
    *&v3[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine] = v20;
    v26 = v20;

    if (v3[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_frequency + 8])
    {
    }

    else
    {
      v34 = *&v3[v10];
      v35 = 1.0 / *&v3[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_frequency];
      type metadata accessor for RepeatingTimer();
      v36 = swift_allocObject();
      *(v36 + 48) = v34;
      *(v36 + 56) = 0;
      *(v36 + 32) = v35;
      v37 = swift_allocObject();
      *(v37 + 16) = v3;
      *(v36 + 16) = sub_10021C360;
      *(v36 + 24) = v37;
      v38 = v34;
      v39 = v3;
      sub_10002689C(0, 0);
      *(v36 + 40) = 1;
      sub_1001787F4();
      swift_getObjectType();
      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();

      *&v39[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_repeater] = v36;
    }
  }

  else
  {
    v27 = aBlock[0];
    v28 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "### Activate: %@", v31, 0xCu);
      sub_1000097E8(v32, &qword_100339940, &unk_100272C50);
    }

    swift_errorRetain();
    a1(v28);
  }
}

double sub_10021925C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue);
    v26 = v13;
    v19 = a4;
    v20 = a3;
    v21 = Strong;
    v22 = v18;
    v27 = v12;
    v23 = v22;

    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = v20;
    v24[4] = v19;
    v24[5] = a2;
    aBlock[4] = sub_10021C684;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_100313A80;
    v25 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_10007E5B8();
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10003F184();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v9 + 8))(v11, v8);
    (*(v26 + 8))(v15, v27);
  }

  return result;
}

void sub_100219538(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100339248 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_10034E140);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "### Activate: %@", v9, 0xCu);
      sub_1000097E8(v10, &qword_100339940, &unk_100272C50);
    }

    swift_errorRetain();
    a2(a1);
  }

  else
  {
    if (qword_100339248 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003078(v12, qword_10034E140);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Activated", v15, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      sub_1002197E0(a2);
    }
  }
}

uint64_t sub_1002197E0(uint64_t (*a1)(uint64_t))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = sub_1001FDBF4();
    v10 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_fluidSpring);
    *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_fluidSpring) = v9;

    sub_100219A80();
    return a1(0);
  }

  else
  {
    __break(1u);
    swift_once();
    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_10034E140);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "### Activate: %@", v14, 0xCu);
      sub_1000097E8(v15, &qword_100339940, &unk_100272C50);
    }

    swift_errorRetain();
    a1(v3);
  }
}

void sub_100219A80()
{
  v2 = v0;
  if (qword_100339248 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034E140);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Setup Hatpic Player", v6, 2u);
  }

  sub_10021B7E4();
  v7 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine);
  if (v7)
  {
    v8 = CHHapticEventParameterIDHapticIntensity;
    v9 = objc_allocWithZone(CHHapticEventParameter);
    v92 = v7;
    LODWORD(v10) = 1.0;
    v11 = [v9 initWithParameterID:v8 value:v10];
    v12 = CHHapticEventParameterIDHapticSharpness;
    v90 = v1;
    v13 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults;
    v96 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults;
    v14 = *(*(v2 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults) + 1392);

    v15 = v14;
    sub_10005FA50();
    v17 = v16;

    v18 = objc_allocWithZone(CHHapticEventParameter);
    LODWORD(v19) = v17;
    v20 = [v18 initWithParameterID:v12 value:v19];
    v97 = v2;
    v21 = *(*(v2 + v13) + 1400);

    v22 = v21;
    sub_10005FA50();
    v24 = v23;

    v25 = objc_allocWithZone(CHHapticEventParameter);
    LODWORD(v26) = v24;
    v27 = [v25 initWithParameterID:v12 value:v26];
    sub_100035D04(&qword_10033AE40, &qword_1002719E0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100271B90;
    *(v28 + 32) = v11;
    *(v28 + 40) = v20;
    v29 = CHHapticEventTypeHapticContinuous;
    v30 = objc_allocWithZone(CHHapticEvent);
    sub_100003118(0, &qword_10034E220, CHHapticEventParameter_ptr);
    v31 = v11;
    v95 = v20;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v86 = [v30 initWithEventType:v29 parameters:isa relativeTime:0.0 duration:1.79769313e308];

    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100271B90;
    *(v33 + 32) = v31;
    *(v33 + 40) = v27;
    v34 = *(*(v2 + v96) + 1408);
    v94 = v31;
    v93 = v27;

    v35 = v34;
    sub_10005F4E4();
    v37 = v36;

    v38 = objc_allocWithZone(CHHapticEvent);
    v39 = Array._bridgeToObjectiveC()().super.isa;

    v88 = [v38 initWithEventType:v29 parameters:v39 relativeTime:v37 duration:1.79769313e308];

    v40 = CHHapticDynamicParameterIDHapticIntensityControl;
    v41 = *(*(v97 + v96) + 1384);

    v42 = v41;
    sub_10005FA50();
    v44 = v43;

    v45 = objc_allocWithZone(CHHapticDynamicParameter);
    LODWORD(v46) = v44;
    v47 = [v45 initWithParameterID:v40 value:v46 relativeTime:0.0];
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1002764E0;
    *(v48 + 32) = v86;
    v49 = objc_allocWithZone(CHHapticPattern);
    v50 = v86;
    v51 = sub_10021BBDC(v48, _swiftEmptyArrayStorage);
    if (v90)
    {
    }

    else
    {
      v53 = v51;
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1002764E0;
      *(v54 + 32) = v88;
      v55 = objc_allocWithZone(CHHapticPattern);
      v85 = v88;
      v91 = sub_10021BBDC(v54, _swiftEmptyArrayStorage);
      v87 = v50;
      v99[0] = 0;
      v56 = v92;
      v57 = [v92 createAdvancedPlayerWithPattern:v53 error:v99];
      v58 = v99[0];
      v59 = v94;
      v60 = v95;
      v61 = v93;
      v89 = v57;
      if (v57)
      {
        v82 = v53;
        v83 = v47;
        v99[0] = 0;
        v62 = v58;
        v63 = [v92 createAdvancedPlayerWithPattern:v91 error:v99];
        v64 = v99[0];
        if (v63)
        {
          v65 = v63;
          v66 = swift_allocObject();
          *(v66 + 16) = xmmword_1002764E0;
          *(v66 + 32) = v47;
          v67 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticPlayers;
          swift_beginAccess();
          v68 = *(v97 + v67);
          v69 = v64;
          v84 = v83;

          sub_10021C390(v66, v68);

          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100271B90;
          *(inited + 32) = v89;
          *(inited + 40) = v65;
          v71 = *(*(v97 + v96) + 1456);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();

          v72 = v71;
          LOBYTE(v68) = sub_1000031CC();

          if (v68)
          {

            v73 = Logger.logObject.getter();
            v74 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              *v75 = 0;
              _os_log_impl(&_mh_execute_header, v73, v74, "SingleHapticPlayer via defaults, only using player0", v75, 2u);
            }

            inited = swift_allocObject();
            *(inited + 16) = xmmword_1002764E0;
            *(inited + 32) = v89;
            swift_unknownObjectRetain();
          }

          swift_beginAccess();
          sub_1000B39C4(inited);
          swift_endAccess();
          v76 = *(v97 + v67);
          if (v76 >> 62)
          {
LABEL_34:
            v59 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v59 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v59)
          {
            v61 = 0;
            v47 = (v76 & 0xC000000000000001);
            v56 = (v76 & 0xFFFFFFFFFFFFFF8);
            v53 = &selRef_requestIdentifier;
            do
            {
              if (v47)
              {
                v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v60 = (v61 + 1);
                if (__OFADD__(v61, 1))
                {
LABEL_27:
                  __break(1u);
                  goto LABEL_28;
                }
              }

              else
              {
                if (v61 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_34;
                }

                v58 = *(v76 + 8 * v61 + 32);
                swift_unknownObjectRetain();
                v60 = (v61 + 1);
                if (__OFADD__(v61, 1))
                {
                  goto LABEL_27;
                }
              }

              v98[0] = 0;
              if (![v58 startAtTime:v98 error:0.0])
              {
                v81 = v98[0];

                _convertNSErrorToError(_:)();

                swift_willThrow();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v80 = v92;
                goto LABEL_32;
              }

              v77 = v98[0];
              swift_unknownObjectRelease();
              ++v61;
            }

            while (v60 != v59);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v79 = v99[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_unknownObjectRelease();

          v80 = v94;
LABEL_32:
        }
      }

      else
      {
LABEL_28:
        v78 = v58;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }

  else
  {
    sub_10021C2F4();
    swift_allocError();
    *v52 = 3;
    swift_willThrow();
  }
}

double sub_10021A4C8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = type metadata accessor for DispatchQoS();
  v5 = *(v13[0] - 8);
  __chkstk_darwin(v13[0]);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activated) = 0;
  v8 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10021ADD4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_1003138F0;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  static DispatchQoS.unspecified.getter();
  v13[1] = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13[0]);

  return result;
}

void sub_10021A76C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10021A7C0();
  }
}

uint64_t sub_10021A7C0()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v16)
  {
    v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_100339248 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  v18 = sub_100003078(v17, qword_10034E140);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Invalidate", v21, 2u);
  }

  v22 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_repeater;
  v23 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_repeater);
  if (v23)
  {
    v24 = *(v23 + 16);
    v25 = *(v23 + 24);
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;

    sub_10002689C(v24, v25);

    v26 = *(v1 + v22);
    if (v26 && *(v26 + 40) == 1)
    {
      *(v26 + 40) = 0;

      sub_1001787F4();
      swift_getObjectType();
      OS_dispatch_source.suspend()();
      swift_unknownObjectRelease();
    }

    *(v1 + v22) = 0;
  }

  v27 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine;
  v28 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine);
  if (v28)
  {
    v29 = *(v17 - 8);
    (*(v29 + 16))(v9, v18, v17);
    (*(v29 + 56))(v9, 0, 1, v17);
    v30 = v44;
    sub_10007E4B8(v9, v44);
    v31 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = 0xD000000000000011;
    *(v32 + 24) = 0x80000001002A65E0;
    sub_10007E4B8(v30, v32 + v31);
    aBlock[4] = sub_10007E528;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = &unk_100313940;
    v33 = _Block_copy(aBlock);
    v34 = v28;

    [v34 stopWithCompletionHandler:v33];

    _Block_release(v33);
    v35 = *(v1 + v27);
    *(v1 + v27) = 0;
  }

  v36 = v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startDistance;
  *v36 = 0;
  *(v36 + 4) = 1;
  sub_1002182E4();
  v37 = type metadata accessor for Date();
  (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
  v38 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startTime;
  swift_beginAccess();
  sub_10021ADDC(v4, v1 + v38);
  swift_endAccess();
  sub_10021849C();
  result = sub_1000097E8(v4, &qword_10033C280, &qword_100272A80);
  v40 = v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_invalidationHandler;
  v41 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_invalidationHandler);
  if (v41)
  {
    v42 = *(v40 + 8);

    v41(v43);
    return sub_10002689C(v41, v42);
  }

  return result;
}

uint64_t sub_10021ADDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10021AE4C(uint64_t a1, float a2)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    sub_10021C2F4();
    swift_allocError();
    v7 = 2;
LABEL_47:
    *v6 = v7;
    swift_willThrow();
    return;
  }

  v8 = v2;
  v9 = a2;
  if (a1)
  {
    v10 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_fluidSpring);
    [v10 step:CACurrentMediaTime() progress:a2];
    v12 = v11;

    v9 = v12;
  }

  v13 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticPlayers;
  swift_beginAccess();
  v14 = *(v8 + v13);
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_46:
    sub_10021C2F4();
    swift_allocError();
    v7 = 4;
    goto LABEL_47;
  }

LABEL_11:
  v15 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults;
  v16 = *(*(v8 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults) + 952);

  v17 = v16;
  sub_10005FA50();
  v19 = v18;

  v20 = *(*(v8 + v15) + 944);

  v21 = v20;
  sub_10005FA50();
  v23 = v22;

  if (v19 > v23)
  {
    __break(1u);
  }

  else
  {
    if (v9 > 0.0)
    {
      if (v9 >= 1.0)
      {
        v19 = v23;
      }

      else
      {
        v19 = ((1.0 - v9) * v19) + (v9 * v23);
      }
    }

    if (qword_100339248 == -1)
    {
      goto LABEL_17;
    }
  }

  swift_once();
LABEL_17:
  v24 = type metadata accessor for Logger();
  sub_100003078(v24, qword_10034E140);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v66 = v28;
    *v27 = 136315906;
    *(v27 + 4) = sub_100017494(0xD00000000000002BLL, 0x80000001002A6600, &v66);
    *(v27 + 12) = 2048;
    *(v27 + 14) = a2;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v9;
    *(v27 + 32) = 2048;
    *(v27 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s: factor=%f, effectiveFactor=%f, intensityFactor=%f", v27, 0x2Au);
    sub_10000903C(v28);
  }

  v29 = CHHapticDynamicParameterIDHapticIntensityControl;
  v30 = objc_allocWithZone(CHHapticDynamicParameter);
  v31 = &selRef_requestIdentifier;
  *&v32 = v19;
  v33 = [v30 initWithParameterID:v29 value:v32 relativeTime:0.0];
  v34 = CHHapticDynamicParameterIDHapticSharpnessControl;
  v35 = objc_allocWithZone(CHHapticDynamicParameter);
  LODWORD(v36) = 1054615798;
  v37 = [v35 initWithParameterID:v34 value:v36 relativeTime:0.0];
  v38 = objc_allocWithZone(CHHapticDynamicParameter);
  LODWORD(v39) = 0.25;
  v40 = [v38 initWithParameterID:v34 value:v39 relativeTime:0.0];
  v41 = *(v8 + v13);
  if (v41 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_21:
      v65 = v40;
      v63 = v13;
      if ((v41 & 0xC000000000000001) != 0)
      {

        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v42 = *(v41 + 32);
        swift_unknownObjectRetain();
      }

      v41 = sub_100035D04(&qword_10033AE40, &qword_1002719E0);
      v31 = swift_allocObject();
      *(v31 + 1) = xmmword_100271B90;
      v31[4] = v33;
      v31[5] = v37;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002764E0;
      *(inited + 32) = v42;
      v3 = inited + 32;
      v33 = v33;
      v37 = v37;
      swift_unknownObjectRetain();
      sub_10021C390(v31, inited);

      swift_setDeallocating();
      swift_arrayDestroy();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100271B90;
      v64 = v33;
      *(v44 + 32) = v33;
      *(v44 + 40) = v65;
      v45 = *(v8 + v63);
      v40 = (v45 >> 62);
      if (!(v45 >> 62))
      {
        v3 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v33 = v3 != 0;
        if (v3 >= v33)
        {
          goto LABEL_26;
        }

        goto LABEL_60;
      }

      v59 = v44;
      if (v45 < 0)
      {
        v41 = v45;
      }

      else
      {
        v41 = v45 & 0xFFFFFFFFFFFFFF8;
      }

      v60 = _CocoaArrayWrapper.endIndex.getter();
      if (v60 < 0)
      {
        __break(1u);
      }

      else
      {
        v3 = v60;
        v33 = v60 != 0;
        if (_CocoaArrayWrapper.endIndex.getter() < v33)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (_CocoaArrayWrapper.endIndex.getter() < v3)
        {
          __break(1u);
          goto LABEL_60;
        }
      }

      v44 = v59;
LABEL_26:
      v61 = v37;
      v62 = v44;
      if ((v45 & 0xC000000000000001) != 0)
      {
        swift_bridgeObjectRetain_n();
        v46 = v64;
        v47 = v65;
        if (v3 >= 2)
        {
          v48 = v33;
          do
          {
            sub_100035D04(&qword_100345F90, &qword_10027D000);
            _ArrayBuffer._typeCheckSlowPath(_:)(v48++);
          }

          while (v3 != v48);
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v49 = v64;
        v50 = v65;
      }

      if (v40)
      {
        v37 = _CocoaArrayWrapper.subscript.getter();
        v41 = v51;
        v33 = v52;
        v3 = v53;
      }

      else
      {
        v37 = (v45 & 0xFFFFFFFFFFFFFF8);
        v41 = (v45 & 0xFFFFFFFFFFFFFF8) + 32;
        v3 = (2 * v3) | 1;
      }

      v31 = v62;
      v40 = v65;
      if ((v3 & 1) == 0)
      {
        goto LABEL_36;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v56 = swift_dynamicCastClass();
      if (!v56)
      {
        swift_unknownObjectRelease();
        v56 = _swiftEmptyArrayStorage;
      }

      v57 = v56[2];

      if (!__OFSUB__(v3 >> 1, v33))
      {
        if (v57 == (v3 >> 1) - v33)
        {
          v55 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v55)
          {
LABEL_44:
            sub_10021C390(v31, v55);

            swift_unknownObjectRelease();

            return;
          }

          v55 = _swiftEmptyArrayStorage;
LABEL_43:
          swift_unknownObjectRelease();
          goto LABEL_44;
        }

        goto LABEL_63;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      swift_unknownObjectRelease_n();
LABEL_36:
      sub_10021BD38(v37, v41, v33, v3);
      v55 = v54;
      goto LABEL_43;
    }
  }

  else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  sub_10021C2F4();
  swift_allocError();
  *v58 = 4;
  swift_willThrow();
}

void sub_10021B5DC(float a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults) + 1464);

  v4 = v3;
  v5 = sub_1000031CC();

  sub_10021AE4C(v5 & 1, a1);
}

void sub_10021B7E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticPlayers;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (qword_100339248 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034E140);
  v5 = v0;
  v6 = Logger.logObject.getter();
  LOBYTE(v7) = static os_log_type_t.default.getter();
  v27 = v2;
  v28 = v0;
  if (!os_log_type_enabled(v6, v7))
  {

    v6 = v5;
    goto LABEL_10;
  }

  v8 = swift_slowAlloc();
  *v8 = 134217984;
  v9 = *&v0[v2];
  if (v9 >> 62)
  {
    goto LABEL_31;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v8 + 4) = v10;
    v11 = v8;

    _os_log_impl(&_mh_execute_header, v6, v7, "Haptic players stop (%ld)", v11, 0xCu);

    v2 = v27;
    v1 = v0;
LABEL_10:

    v5 = *&v1[v2];
    if (v5 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v8;
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    if (v7 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    v26 = v8;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v26;
  }

  v12 = v5 & 0xC000000000000001;

  v13 = 0;
  v14 = &selRef_requestIdentifier;
  do
  {
    if (v12)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v16 = *(v5 + v13 + 4);
      swift_unknownObjectRetain();
    }

    v29 = 0;
    if ([v16 v14[287]])
    {
      v15 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = v29;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = v5;
        v22 = v7;
        v23 = v12;
        v24 = swift_slowAlloc();
        *v20 = 138412290;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v18, v19, "### Error stopping player: %@", v20, 0xCu);
        sub_1000097E8(v24, &qword_100339940, &unk_100272C50);
        v12 = v23;
        v7 = v22;
        v5 = v21;

        v14 = &selRef_requestIdentifier;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    ++v13;
  }

  while (v7 != v13);

  v2 = v27;
  v1 = v28;
LABEL_24:
  *&v1[v2] = _swiftEmptyArrayStorage;
}

id sub_10021BBDC(uint64_t a1, uint64_t a2)
{
  sub_100003118(0, &qword_100344D28, CHHapticEvent_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100003118(0, &qword_10034E218, CHHapticDynamicParameter_ptr);
  v4 = Array._bridgeToObjectiveC()().super.isa;

  v9 = 0;
  v5 = [v2 initWithEvents:isa parameters:v4 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

void sub_10021BD38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        sub_100035D04(&qword_100345F90, &qword_10027D000);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100035D04(&qword_10033AE40, &qword_1002719E0);
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

double sub_10021BE28(uint64_t a1, void (**a2)(void, void))
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = objc_opt_self();
  _Block_copy(a2);
  v13 = [objc_msgSend(v12 "capabilitiesForHardware")];
  swift_unknownObjectRelease();
  if (v13)
  {
    if ((*(a1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activated) & 1) == 0)
    {
      *(a1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activated) = 1;
      v22 = *(a1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v27[1] = v23;
      v24[2] = v23;
      v24[3] = sub_100104000;
      v24[4] = v11;
      aBlock[4] = sub_10021C348;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100018AB8;
      aBlock[3] = &unk_1003139B8;
      v25 = _Block_copy(aBlock);
      v26 = v22;

      static DispatchQoS.unspecified.getter();
      v29 = _swiftEmptyArrayStorage;
      sub_10007E5B8();
      sub_100035D04(&unk_100343710, &qword_100271800);
      sub_10003F184();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v25);

      (*(v5 + 8))(v7, v4);
      (*(v28 + 8))(v10, v8);

      return result;
    }

    sub_10021C2F4();
    swift_allocError();
    *v14 = 0;
  }

  else
  {
    if (qword_100339248 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_10034E140);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "### Activate: Haptics not supported on current hardware", v18, 2u);
    }

    sub_10021C2F4();
    swift_allocError();
    *v19 = 5;
  }

  v20 = _convertErrorToNSError(_:)();
  (a2)[2](a2, v20);

  return result;
}

unint64_t sub_10021C2F4()
{
  result = qword_10034E208;
  if (!qword_10034E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E208);
  }

  return result;
}

void sub_10021C390(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v7 = &qword_10034E218;
  v22 = v2;
  v23 = v4;
  do
  {
    if (v6)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v2 + 8 * v5 + 32);
      swift_unknownObjectRetain();
    }

    sub_100003118(0, v7, CHHapticDynamicParameter_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v24 = 0;
    v11 = [v9 sendParameters:isa atTime:&v24 error:0.0];

    if (v11)
    {
      v8 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = v24;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100339248 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003078(v13, qword_10034E140);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = v6;
        v17 = a1;
        v18 = swift_slowAlloc();
        v19 = v7;
        v20 = swift_slowAlloc();
        *v18 = 138412290;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v14, v15, "### Failed to update haptic: %@", v18, 0xCu);
        sub_1000097E8(v20, &qword_100339940, &unk_100272C50);
        v7 = v19;

        a1 = v17;
        v6 = v16;
        v2 = v22;
        v4 = v23;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    ++v5;
  }

  while (v4 != v5);
}

uint64_t getEnumTagSinglePayload for AirDropUIEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AirDropUIEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10021C818(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_10021C844(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

BOOL sub_10021C884(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  v6 = v3 < 0x40 && v2 == v3;
  v7 = ((v3 ^ v2) & 0x3F) == 0;
  if ((v3 & 0xC0) != 0x40)
  {
    v7 = 0;
  }

  v8 = v3 == 128;
  if (v4 != 1)
  {
    v7 = v8;
  }

  if (v4)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_10021C8D0(uint64_t a1)
{
  result = sub_10021C8F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10021C8F8()
{
  result = qword_10034E228;
  if (!qword_10034E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E228);
  }

  return result;
}

uint64_t sub_10021C9E4(uint64_t a1)
{
  result = type metadata accessor for NoticeTapAction(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NoticeContent(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10021CA98(uint64_t a1)
{
  result = type metadata accessor for ShareableContentExposedContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10021CB60(uint64_t a1)
{
  result = type metadata accessor for ShareableContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10021CC24(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10021CC90@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for LeaderNoticeTapAction(0);
  sub_100223AD4(&qword_10034E770, type metadata accessor for LeaderNoticeTapAction, &unk_1002908DC);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  type metadata accessor for NoticeTapAction(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10021CE58()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034E230);
  sub_100003078(v0, qword_10034E230);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10021CED0(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034E548, &qword_10028FA48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000EBC0(a1, a1[3]);
  sub_100223970();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11[14] = *(v3 + 16);
    v11[13] = 1;
    sub_100223B1C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = type metadata accessor for NoticeContext(0);
    v11[12] = 2;
    type metadata accessor for NoticeTapAction(0);
    sub_100223AD4(&qword_10034E558, type metadata accessor for NoticeTapAction, &unk_10028F434);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[11] = *(v3 + *(v9 + 28));
    v11[10] = 3;
    sub_100223B70();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[9] = 4;
    type metadata accessor for NoticeContent(0);
    sub_100223AD4(&qword_10034E568, type metadata accessor for NoticeContent, &unk_10028F704);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10021D184(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = type metadata accessor for NoticeContent(0);
  __chkstk_darwin(v19);
  v21 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NoticeTapAction(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100035D04(&qword_10034E518, &qword_10028FA40);
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v17 - v7;
  v9 = type metadata accessor for NoticeContext(0);
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EBC0(a1, a1[3]);
  sub_100223970();
  v23 = v8;
  v12 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_10000903C(a1);
  }

  else
  {
    v24 = v4;
    v13 = v6;
    v14 = v20;
    v15 = v21;
    v31 = 0;
    *v11 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v11 + 1) = v16;
    v17 = v16;
    v29 = 1;
    sub_1002239C4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11[16] = v30;
    v28 = 2;
    sub_100223AD4(&qword_10034E530, type metadata accessor for NoticeTapAction, &unk_10028F45C);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100223A18(v13, &v11[v9[6]], type metadata accessor for NoticeTapAction);
    v26 = 3;
    sub_100223A80();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11[v9[7]] = v27;
    v25 = 4;
    sub_100223AD4(&qword_10034E540, type metadata accessor for NoticeContent, &unk_10028F72C);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v14 + 8))(v23, v22);
    sub_100223A18(v15, &v11[v9[8]], type metadata accessor for NoticeContent);
    sub_100223908(v11, v18, type metadata accessor for NoticeContext);
    sub_10000903C(a1);
    sub_1002238A8(v11, type metadata accessor for NoticeContext);
  }
}

uint64_t sub_10021D654()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6F69746341706174;
  v4 = 0x6E65746E49706174;
  if (v1 != 3)
  {
    v4 = 0x746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C797473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10021D6E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100223F68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10021D70C(uint64_t a1)
{
  v2 = sub_100223970();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021D748(uint64_t a1)
{
  v2 = sub_100223970();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021D7B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4866666F646E6168;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEB00000000746E69;
  }

  if (*a2)
  {
    v5 = 0x4866666F646E6168;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xEB00000000746E69;
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10021D868()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10021D8F4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10021D96C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10021D9F4(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100301778, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_10021DA54(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x4866666F646E6168;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000746E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10021DB5C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NoticeTapAction(0);
  __chkstk_darwin(v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100223908(v1, v8, type metadata accessor for NoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v8, v2);
      v14[0] = 0x284C52556E65706FLL;
      v14[1] = 0xE800000000000000;
      sub_100223AD4(&qword_100343268, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v10);

      v11._countAndFlagsBits = 41;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12 = v14[0];
      (*(v3 + 8))(v5, v2);
      return v12;
    }

    else
    {
      return 1701736302;
    }
  }

  else
  {
    sub_1002238A8(v8, type metadata accessor for NoticeTapAction);
    return 0xD000000000000014;
  }
}

uint64_t sub_10021DD98(void *a1)
{
  v2 = sub_100035D04(&qword_10034E750, &qword_10028FB58);
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v35 = &v31 - v3;
  v4 = type metadata accessor for URL();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10034E758, &qword_10028FB60);
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_100035D04(&qword_10034E760, &qword_10028FB68);
  v31 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for NoticeTapAction(0);
  __chkstk_darwin(v12);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100035D04(&qword_10034E768, &unk_10028FB70);
  v41 = *(v15 - 8);
  v42 = v15;
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  sub_10000EBC0(a1, a1[3]);
  sub_100225470();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100223908(v40, v14, type metadata accessor for NoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v36;
      v19 = v37;
      v21 = v34;
      (*(v36 + 32))(v34, v14, v37);
      LOBYTE(v43) = 2;
      sub_1002254C4();
      v22 = v35;
      v23 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100223AD4(&qword_100348538, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v24 = v39;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v38 + 8))(v22, v24);
      (*(v20 + 8))(v21, v19);
      return (*(v41 + 8))(v17, v23);
    }

    else
    {
      LOBYTE(v43) = 0;
      sub_10022556C();
      v30 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v31 + 8))(v11, v9);
      return (*(v41 + 8))(v17, v30);
    }
  }

  else
  {
    v26 = *v14;
    v27 = v14[1];
    LOBYTE(v43) = 1;
    sub_100225518();
    v28 = v42;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v43 = v26;
    v44 = v27;
    sub_100165FDC();
    v29 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v32 + 8))(v8, v29);
    (*(v41 + 8))(v17, v28);
    return sub_100010708(v26, v27);
  }
}

uint64_t sub_10021E348@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_100035D04(&qword_10034E710, &qword_10028FB38);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  __chkstk_darwin(v3);
  v51 = &v42 - v5;
  v54 = sub_100035D04(&qword_10034E718, &qword_10028FB40);
  v48 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v42 - v6;
  v7 = sub_100035D04(&qword_10034E720, &qword_10028FB48);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v52 = &v42 - v8;
  v9 = sub_100035D04(&qword_10034E728, &qword_10028FB50);
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v12 = type metadata accessor for NoticeTapAction(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = (&v42 - v17);
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v21 = a1[3];
  v63 = a1;
  sub_10000EBC0(a1, v21);
  sub_100225470();
  v22 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v23 = v52;
    v43 = v18;
    v44 = v15;
    v45 = v20;
    v24 = v53;
    v25 = v54;
    v57 = v12;
    v26 = v55;
    v27 = KeyedDecodingContainer.allKeys.getter();
    v28 = (2 * *(v27 + 16)) | 1;
    v59 = v27;
    v60 = v27 + 32;
    v61 = 0;
    v62 = v28;
    v29 = sub_100218008();
    if (v29 == 3 || v61 != v62 >> 1)
    {
      v31 = type metadata accessor for DecodingError();
      swift_allocError();
      v33 = v32;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      *v33 = v57;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v31 - 8) + 104))(v33, enum case for DecodingError.typeMismatch(_:), v31);
      swift_willThrow();
      (*(v56 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        if (v29 == 1)
        {
          LOBYTE(v58) = 1;
          sub_100225518();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v30 = v56;
          sub_100165E88();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v48 + 8))(v24, v25);
          (*(v30 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v38 = v43;
          *v43 = v58;
          swift_storeEnumTagMultiPayload();
          v39 = v38;
          v40 = v45;
          sub_100223A18(v39, v45, type metadata accessor for NoticeTapAction);
          v41 = v26;
        }

        else
        {
          LOBYTE(v58) = 2;
          sub_1002254C4();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v41 = v26;
          type metadata accessor for URL();
          sub_100223AD4(&qword_100348498, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v35 = v44;
          v36 = v49;
          v37 = v51;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v50 + 8))(v37, v36);
          (*(v56 + 8))(v11, v9);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v40 = v45;
          sub_100223A18(v35, v45, type metadata accessor for NoticeTapAction);
        }
      }

      else
      {
        LOBYTE(v58) = 0;
        sub_10022556C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v46 + 8))(v23, v47);
        (*(v56 + 8))(v11, v9);
        swift_unknownObjectRelease();
        v40 = v45;
        swift_storeEnumTagMultiPayload();
        v41 = v26;
      }

      sub_100223A18(v40, v41, type metadata accessor for NoticeTapAction);
    }
  }

  return sub_10000903C(v63);
}

uint64_t sub_10021EAE0()
{
  v1 = 0x634172656461656CLL;
  if (*v0 != 1)
  {
    v1 = 0x4C52556E65706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_10021EB3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100224118(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10021EB64(uint64_t a1)
{
  v2 = sub_100225470();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021EBA0(uint64_t a1)
{
  v2 = sub_100225470();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021EBDC(uint64_t a1)
{
  v2 = sub_100225518();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021EC18(uint64_t a1)
{
  v2 = sub_100225518();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021EC54(uint64_t a1)
{
  v2 = sub_10022556C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021EC90(uint64_t a1)
{
  v2 = sub_10022556C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021ECCC(uint64_t a1)
{
  v2 = sub_1002254C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021ED08(uint64_t a1)
{
  v2 = sub_1002254C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021ED7C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LeaderNoticeTapAction(0);
  __chkstk_darwin(v6);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100223908(v1, v8, type metadata accessor for LeaderNoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v10 = 0x726566736E617274;
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v8;
      v12 = v8[1];
      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v18, "transferCall(");
      HIWORD(v18[1]) = -4864;
      v13._countAndFlagsBits = v11;
      v13._object = v12;
      String.append(_:)(v13);

      v14._countAndFlagsBits = 41;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      return v18[0];
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    strcpy(v18, "openURL(");
    BYTE1(v18[1]) = 0;
    WORD1(v18[1]) = 0;
    HIDWORD(v18[1]) = -402653184;
    sub_100223AD4(&qword_100343268, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 41;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v10 = v18[0];
    (*(v3 + 8))(v5, v2);
  }

  return v10;
}

uint64_t sub_10021EFF0(void *a1)
{
  v2 = sub_100035D04(&qword_10034EA10, &qword_100290F40);
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v29 = &v26 - v3;
  v32 = sub_100035D04(&qword_10034EA18, &qword_100290F48);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v28 = &v26 - v4;
  v31 = sub_100035D04(&qword_10034EA20, &qword_100290F50);
  v27 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v26 - v5;
  v7 = type metadata accessor for URL();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LeaderNoticeTapAction(0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100035D04(&qword_10034EA28, &qword_100290F58);
  v13 = *(v38 - 8);
  __chkstk_darwin(v38);
  v15 = &v26 - v14;
  sub_10000EBC0(a1, a1[3]);
  sub_100226B00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100223908(v37, v12, type metadata accessor for LeaderNoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = 1;
      sub_100226BA8();
      v17 = v28;
      v18 = v38;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v32;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v30 + 8))(v17, v19);
      return (*(v13 + 8))(v15, v18);
    }

    else
    {
      v41 = 2;
      sub_100226B54();
      v24 = v29;
      v25 = v38;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v33 + 8))(v24, v34);
      return (*(v13 + 8))(v15, v25);
    }
  }

  else
  {
    v21 = v27;
    (*(v35 + 32))(v9, v12, v36);
    v39 = 0;
    sub_100226BFC();
    v22 = v38;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100223AD4(&qword_100348538, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = v31;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v6, v23);
    (*(v35 + 8))(v9, v36);
    return (*(v13 + 8))(v15, v22);
  }
}

uint64_t sub_10021F56C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v59 = sub_100035D04(&qword_10034E9D0, &qword_100290F20);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v63 = &v50 - v3;
  v54 = sub_100035D04(&qword_10034E9D8, &qword_100290F28);
  v58 = *(v54 - 8);
  __chkstk_darwin(v54);
  v62 = &v50 - v4;
  v5 = sub_100035D04(&qword_10034E9E0, &qword_100290F30);
  v55 = *(v5 - 8);
  v56 = v5;
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = sub_100035D04(&qword_10034E9E8, &qword_100290F38);
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for LeaderNoticeTapAction(0);
  v12 = __chkstk_darwin(v11);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v12);
  v17 = &v50 - v16;
  __chkstk_darwin(v15);
  v19 = &v50 - v18;
  v20 = a1[3];
  v66 = a1;
  sub_10000EBC0(a1, v20);
  sub_100226B00();
  v21 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v50 = v14;
    v51 = v17;
    v22 = v62;
    v23 = v63;
    v65 = 0;
    v52 = v19;
    v53 = v11;
    v25 = v60;
    v24 = v61;
    v26 = v64;
    v27 = KeyedDecodingContainer.allKeys.getter();
    v28 = (2 * *(v27 + 16)) | 1;
    v67 = v27;
    v68 = v27 + 32;
    v69 = 0;
    v70 = v28;
    v29 = sub_100218008();
    v30 = v10;
    if (v29 == 3 || v69 != v70 >> 1)
    {
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      *v36 = v53;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
      swift_willThrow();
    }

    else if (v29)
    {
      if (v29 == 1)
      {
        v71 = 1;
        sub_100226BA8();
        v31 = v22;
        v32 = v65;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v32)
        {
          v33 = v54;
          v45 = KeyedDecodingContainer.decode(_:forKey:)();
          v47 = v46;
          (*(v58 + 8))(v31, v33);
          (*(v25 + 8))(v10, v24);
          swift_unknownObjectRelease();
          v48 = v50;
          *v50 = v45;
          v48[1] = v47;
          swift_storeEnumTagMultiPayload();
          v49 = v48;
LABEL_17:
          v44 = v52;
          sub_100223A18(v49, v52, type metadata accessor for LeaderNoticeTapAction);
          v43 = v26;
          goto LABEL_18;
        }
      }

      else
      {
        v71 = 2;
        sub_100226B54();
        v42 = v65;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v42)
        {
          v43 = v26;
          (*(v57 + 8))(v23, v59);
          (*(v25 + 8))(v10, v24);
          swift_unknownObjectRelease();
          v44 = v52;
          swift_storeEnumTagMultiPayload();
LABEL_18:
          sub_100223A18(v44, v43, type metadata accessor for LeaderNoticeTapAction);
          return sub_10000903C(v66);
        }
      }
    }

    else
    {
      v71 = 0;
      sub_100226BFC();
      v38 = v7;
      v39 = v65;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v39)
      {
        type metadata accessor for URL();
        sub_100223AD4(&qword_100348498, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v40 = v51;
        v41 = v56;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v55 + 8))(v38, v41);
        (*(v25 + 8))(v10, v24);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v49 = v40;
        goto LABEL_17;
      }
    }

    (*(v25 + 8))(v30, v24);
    swift_unknownObjectRelease();
  }

  return sub_10000903C(v66);
}

uint64_t sub_10021FCEC()
{
  if (*v0)
  {
    return 0x726566736E617274;
  }

  else
  {
    return 0x4C52556E65706FLL;
  }
}

uint64_t sub_10021FD5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100224234(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10021FD84(uint64_t a1)
{
  v2 = sub_100226B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021FDC0(uint64_t a1)
{
  v2 = sub_100226B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021FDFC(uint64_t a1)
{
  v2 = sub_100226BFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021FE38(uint64_t a1)
{
  v2 = sub_100226BFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10021FE84(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10021FF0C(uint64_t a1)
{
  v2 = sub_100226BA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021FF48(uint64_t a1)
{
  v2 = sub_100226BA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021FF84(uint64_t a1)
{
  v2 = sub_100226B54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021FFC0(uint64_t a1)
{
  v2 = sub_100226B54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100220034(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_100035D04(&qword_10034E5B0, &qword_10028FA78);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_100035D04(&qword_10034E5B8, &qword_10028FA80);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_100035D04(&qword_10034E5C0, &qword_10028FA88);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_100035D04(&qword_10034E5C8, &qword_10028FA90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_10000EBC0(a1, a1[3]);
  sub_1002249E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_100224A88();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_100224A34();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_100224ADC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

void sub_1002203B4(void *a1)
{
  v2 = sub_100035D04(&qword_10034E640, &qword_10028FAC0);
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v42 - v3;
  v48 = type metadata accessor for ShareableContentExposedContext(0);
  __chkstk_darwin(v48);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_10034E648, &qword_10028FAC8);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v42 - v6;
  v7 = sub_100035D04(&qword_10034E650, &qword_10028FAD0);
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v10 = sub_100035D04(&qword_10034E658, &qword_10028FAD8);
  v42 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for NoticeContent(0);
  __chkstk_darwin(v13);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100035D04(&qword_10034E660, &qword_10028FAE0);
  v54 = *(v16 - 8);
  v55 = v16;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  sub_10000EBC0(a1, a1[3]);
  sub_100224B30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100223908(v53, v15, type metadata accessor for NoticeContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *v15;
      v26 = v15[1];
      v28 = v15[2];
      v27 = v15[3];
      LOBYTE(v56) = 2;
      sub_100224BD8();
      v29 = v45;
      v30 = v55;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v56 = v25;
      v57 = v26;
      v58 = v28;
      v59 = v27;
      sub_100224DD0();
      v31 = v47;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v46 + 8))(v29, v31);
      (*(v54 + 8))(v18, v30);
    }

    else
    {
      v38 = v49;
      sub_100223A18(v15, v49, type metadata accessor for ShareableContentExposedContext);
      LOBYTE(v56) = 3;
      sub_100224B84();
      v39 = v50;
      v40 = v55;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100223AD4(&qword_10034E668, type metadata accessor for ShareableContentExposedContext, &unk_10028F68C);
      v41 = v52;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v51 + 8))(v39, v41);
      sub_1002238A8(v38, type metadata accessor for ShareableContentExposedContext);
      (*(v54 + 8))(v18, v40);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v33 = *v15;
      v32 = v15[1];
      v35 = v15[2];
      v34 = v15[3];
      LOBYTE(v56) = 1;
      sub_100224C80();
      v36 = v55;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v56 = v33;
      v57 = v32;
      v58 = v35;
      v59 = v34;
      sub_100224E24();
      v37 = v44;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v43 + 8))(v9, v37);
      (*(v54 + 8))(v18, v36);
    }

    else
    {
      v21 = *v15;
      v20 = v15[1];
      v23 = v15[2];
      v22 = v15[3];
      LOBYTE(v56) = 0;
      sub_100224D28();
      v24 = v55;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v56 = v21;
      v57 = v20;
      v58 = v23;
      v59 = v22;
      sub_100224E78();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v42 + 8))(v12, v10);
      (*(v54 + 8))(v18, v24);
    }
  }
}

uint64_t sub_100220AB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_100035D04(&qword_10034E5D0, &qword_10028FA98);
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  __chkstk_darwin(v3);
  v78 = &v60 - v5;
  v6 = sub_100035D04(&qword_10034E5D8, &qword_10028FAA0);
  v7 = *(v6 - 8);
  v68 = v6;
  v69 = v7;
  __chkstk_darwin(v6);
  v77 = &v60 - v8;
  v67 = sub_100035D04(&qword_10034E5E0, &qword_10028FAA8);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v76 = &v60 - v9;
  v65 = sub_100035D04(&qword_10034E5E8, &qword_10028FAB0);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v72 = &v60 - v10;
  v11 = sub_100035D04(&qword_10034E5F0, &qword_10028FAB8);
  v74 = *(v11 - 8);
  v75 = v11;
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  v73 = type metadata accessor for NoticeContent(0);
  v14 = __chkstk_darwin(v73);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v60 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v60 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v60 - v24;
  __chkstk_darwin(v23);
  v27 = &v60 - v26;
  v28 = a1[3];
  v88 = a1;
  sub_10000EBC0(a1, v28);
  sub_100224B30();
  v29 = v80;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v29)
  {
    v60 = v25;
    v61 = v22;
    v62 = v19;
    v63 = v16;
    v31 = v76;
    v30 = v77;
    v80 = v27;
    v33 = v74;
    v32 = v75;
    v35 = v78;
    v34 = v79;
    v36 = KeyedDecodingContainer.allKeys.getter();
    v37 = (2 * *(v36 + 16)) | 1;
    v84 = v36;
    v85 = v36 + 32;
    v86 = 0;
    v87 = v37;
    v38 = sub_100218018();
    if (v38 == 4 || v86 != v87 >> 1)
    {
      v45 = type metadata accessor for DecodingError();
      swift_allocError();
      v46 = v32;
      v48 = v47;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      *v48 = v73;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v45 - 8) + 104))(v48, enum case for DecodingError.typeMismatch(_:), v45);
      swift_willThrow();
      (*(v33 + 8))(v13, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v38 > 1u)
      {
        if (v38 == 2)
        {
          LOBYTE(v81) = 2;
          sub_100224BD8();
          v49 = v30;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_100224C2C();
          v50 = v68;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v69 + 8))(v49, v50);
          (*(v33 + 8))(v13, v32);
          swift_unknownObjectRelease();
          v55 = v82;
          v56 = v83;
          v57 = v62;
          *v62 = v81;
          *(v57 + 16) = v55;
          *(v57 + 24) = v56;
        }

        else
        {
          LOBYTE(v81) = 3;
          sub_100224B84();
          v52 = v35;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for ShareableContentExposedContext(0);
          sub_100223AD4(&qword_10034E608, type metadata accessor for ShareableContentExposedContext, &unk_10028F6B4);
          v57 = v63;
          v53 = v70;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v71 + 8))(v52, v53);
          (*(v33 + 8))(v13, v32);
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v59 = v80;
        sub_100223A18(v57, v80, type metadata accessor for NoticeContent);
        v39 = v34;
      }

      else
      {
        v39 = v34;
        if (v38)
        {
          LOBYTE(v81) = 1;
          sub_100224C80();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_100224CD4();
          v51 = v67;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v66 + 8))(v31, v51);
          (*(v33 + 8))(v13, v32);
          swift_unknownObjectRelease();
          v42 = v82;
          v43 = v83;
          v44 = v61;
          *v61 = v81;
        }

        else
        {
          LOBYTE(v81) = 0;
          sub_100224D28();
          v40 = v72;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_100224D7C();
          v41 = v65;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v64 + 8))(v40, v41);
          (*(v33 + 8))(v13, v32);
          swift_unknownObjectRelease();
          v42 = v82;
          v43 = v83;
          v44 = v60;
          *v60 = v81;
        }

        *(v44 + 2) = v42;
        *(v44 + 3) = v43;
        swift_storeEnumTagMultiPayload();
        v58 = v44;
        v59 = v80;
        sub_100223A18(v58, v80, type metadata accessor for NoticeContent);
      }

      sub_100223A18(v59, v39, type metadata accessor for NoticeContent);
    }
  }

  return sub_10000903C(v88);
}

uint64_t sub_10022159C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v20[2] = a3;
  v20[0] = a4;
  v20[1] = a5;
  v11 = sub_100035D04(a6, a7);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - v13;
  v15 = sub_10000EBC0(a1, a1[3]);
  (a8)(v15, v16, v17);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  v18 = v20[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v18)
  {
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10022172C(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034E6A0, &qword_10028FAF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000EBC0(a1, a1[3]);
  sub_100224ECC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for ShareableContentExposedContext(0);
    LOBYTE(v12) = 1;
    type metadata accessor for ShareableContent(0);
    sub_100223AD4(&qword_100348178, type metadata accessor for ShareableContent, &unk_10028B9D0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_100224F74();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10022192C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for ShareableContent(0);
  __chkstk_darwin(v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10034E688, &qword_10028FAE8);
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for ShareableContentExposedContext(0);
  __chkstk_darwin(v9);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000EBC0(a1, a1[3]);
  sub_100224ECC();
  v26 = v8;
  v12 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_10000903C(a1);
  }

  else
  {
    v13 = v5;
    v27 = v9;
    v14 = v24;
    v15 = v25;
    LOBYTE(v28) = 0;
    *v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v11[1] = v16;
    v21[1] = v16;
    v22 = v11;
    LOBYTE(v28) = 1;
    sub_100223AD4(&qword_100348150, type metadata accessor for ShareableContent, &unk_10028B9F8);
    v17 = v13;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v27;
    sub_100223A18(v17, v22 + *(v27 + 20), type metadata accessor for ShareableContent);
    v29 = 2;
    sub_100224F20();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v14 + 8))(v26, v15);
    v20 = v22;
    v19 = v23;
    *(v22 + *(v18 + 24)) = v28;
    sub_100223908(v20, v19, type metadata accessor for ShareableContentExposedContext);
    sub_10000903C(a1);
    sub_1002238A8(v20, type metadata accessor for ShareableContentExposedContext);
  }
}

uint64_t sub_100221CE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100224358(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100221D08(uint64_t a1)
{
  v2 = sub_1002249E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221D44(uint64_t a1)
{
  v2 = sub_1002249E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100221D80(uint64_t a1)
{
  v2 = sub_100224ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221DBC(uint64_t a1)
{
  v2 = sub_100224ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100221DF8(uint64_t a1)
{
  v2 = sub_100224A88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221E34(uint64_t a1)
{
  v2 = sub_100224A88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100221E70(uint64_t a1)
{
  v2 = sub_100224A34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221EAC(uint64_t a1)
{
  v2 = sub_100224A34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100221EF8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100224470(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100221F40(uint64_t a1)
{
  v2 = sub_100224D28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221F7C(uint64_t a1)
{
  v2 = sub_100224D28();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100221FB8()
{
  v1 = 1819042147;
  v2 = 0x616964656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x636972656E6567;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10022202C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10022501C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100222054(uint64_t a1)
{
  v2 = sub_100224B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100222090(uint64_t a1)
{
  v2 = sub_100224B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002220CC(uint64_t a1)
{
  v2 = sub_100224C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100222108(uint64_t a1)
{
  v2 = sub_100224C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100222144(uint64_t a1)
{
  v2 = sub_100224BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100222180(uint64_t a1)
{
  v2 = sub_100224BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002221BC(uint64_t a1)
{
  v2 = sub_100224B84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002221F8(uint64_t a1)
{
  v2 = sub_100224B84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100222268(uint64_t a1)
{
  v2 = sub_10022541C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002222A4(uint64_t a1)
{
  v2 = sub_10022541C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10022237C(uint64_t a1)
{
  v2 = sub_1002253C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002223B8(uint64_t a1)
{
  v2 = sub_1002253C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100222438@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_100225184(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t sub_1002224D0(uint64_t a1)
{
  v2 = sub_100225374();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022250C(uint64_t a1)
{
  v2 = sub_100225374();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002225E4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

unint64_t sub_100222688()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1002226D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002269EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100222700(uint64_t a1)
{
  v2 = sub_100224ECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022273C(uint64_t a1)
{
  v2 = sub_100224ECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002227BC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_100222844(uint64_t a1)
{
  v2 = sub_100224FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100222880(uint64_t a1)
{
  v2 = sub_100224FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002228BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100035D04(&qword_10034E6B0, &qword_10028FAF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000EBC0(a1, a1[3]);
  sub_100224FC8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_10000903C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_100222A38(void *a1)
{
  v2 = sub_100035D04(&qword_10034E6C0, &qword_10028FB00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000EBC0(a1, a1[3]);
  sub_100224FC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100222B74(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_100222C04()
{
  result = qword_10034E4E0;
  if (!qword_10034E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E4E0);
  }

  return result;
}

unint64_t sub_100222C8C()
{
  result = qword_10034E4F8;
  if (!qword_10034E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E4F8);
  }

  return result;
}

unint64_t sub_100222CE0()
{
  result = qword_10034E500;
  if (!qword_10034E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E500);
  }

  return result;
}

uint64_t sub_100222D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NoticeTapAction(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v27 - v11);
  v13 = sub_100035D04(&qword_10034E510, &qword_10028FA38);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v27 - v15;
  v17 = (&v27 + *(v14 + 56) - v15);
  sub_100223908(a1, &v27 - v15, type metadata accessor for NoticeTapAction);
  sub_100223908(a2, v17, type metadata accessor for NoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100223908(v16, v12, type metadata accessor for NoticeTapAction);
    v22 = *v12;
    v23 = v12[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v24 = *v17;
      v25 = v17[1];
      v20 = sub_1001B1F40(v22, v23, *v17, v25);
      sub_100010708(v24, v25);
      sub_100010708(v22, v23);
      goto LABEL_12;
    }

    sub_100010708(v22, v23);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100223908(v16, v10, type metadata accessor for NoticeTapAction);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v28;
      (*(v28 + 32))(v6, v17, v4);
      v20 = static URL.== infix(_:_:)();
      v21 = *(v19 + 8);
      v21(v6, v4);
      v21(v10, v4);
LABEL_12:
      sub_1002238A8(v16, type metadata accessor for NoticeTapAction);
      return v20 & 1;
    }

    (*(v28 + 8))(v10, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_1000097E8(v16, &qword_10034E510, &qword_10028FA38);
    v20 = 0;
    return v20 & 1;
  }

  sub_1002238A8(v16, type metadata accessor for NoticeTapAction);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1002230A8(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ShareableContentExposedContext(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = *(a1 + v6 + 8);
  v10 = *(a2 + v6 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v8 && v9 == v10;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = type metadata accessor for ShareableContent(0);
  if (sub_1001E25FC(v7 + *(v12 + 20), v8 + *(v12 + 20)))
  {
    v13 = *(v5 + 24);
    v14 = (a1 + v13);
    v15 = *(a1 + v13 + 8);
    v16 = (a2 + v13);
    v17 = v16[1];
    if (v15)
    {
      if (v17)
      {
        v18 = *v14 == *v16 && v15 == v17;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v17)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1002231B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareableContentExposedContext(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NoticeContent(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = (&v53 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = (&v53 - v15);
  __chkstk_darwin(v14);
  v18 = (&v53 - v17);
  v19 = sub_100035D04(&qword_10034E508, &qword_10028FA30);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = (&v53 + *(v20 + 56) - v21);
  v23 = a1;
  v24 = &v53 - v21;
  sub_100223908(v23, &v53 - v21, type metadata accessor for NoticeContent);
  sub_100223908(a2, v22, type metadata accessor for NoticeContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100223908(v24, v16, type metadata accessor for NoticeContent);
      v27 = *v16;
      v26 = v16[1];
      v29 = v16[2];
      v28 = v16[3];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_19:
        v42 = v24;
        v43 = *v22;
        v44 = v22[1];
        v46 = v22[2];
        v45 = v22[3];
        v47 = v27 == v43 && v26 == v44;
        if (!v47 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

LABEL_39:
          sub_1002238A8(v42, type metadata accessor for NoticeContent);
          goto LABEL_35;
        }

        if (v29 == v46 && v28 == v45)
        {
        }

        else
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v49 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v51 = v42;
LABEL_42:
        sub_1002238A8(v51, type metadata accessor for NoticeContent);
        v50 = 1;
        return v50 & 1;
      }
    }

    else
    {
      sub_100223908(v24, v18, type metadata accessor for NoticeContent);
      v27 = *v18;
      v26 = v18[1];
      v29 = v18[2];
      v28 = v18[3];
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_19;
      }
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100223908(v24, v13, type metadata accessor for NoticeContent);
    v31 = *v13;
    v30 = v13[1];
    v33 = v13[2];
    v32 = v13[3];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_30:

LABEL_34:
      sub_1000097E8(v24, &qword_10034E508, &qword_10028FA30);
LABEL_35:
      v50 = 0;
      return v50 & 1;
    }

    v34 = v24;
    v35 = *v22;
    v36 = v22[1];
    v38 = v22[2];
    v37 = v22[3];
    v39 = v31 == v35 && v30 == v36;
    if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (v33 == v38 && v32 == v37)
      {
      }

      else
      {
        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v41 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v51 = v34;
      goto LABEL_42;
    }

LABEL_45:
    sub_1002238A8(v34, type metadata accessor for NoticeContent);
    goto LABEL_35;
  }

  sub_100223908(v24, v10, type metadata accessor for NoticeContent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1002238A8(v10, type metadata accessor for ShareableContentExposedContext);
    goto LABEL_34;
  }

  sub_100223A18(v22, v6, type metadata accessor for ShareableContentExposedContext);
  v50 = sub_1002230A8(v10, v6);
  sub_1002238A8(v6, type metadata accessor for ShareableContentExposedContext);
  sub_1002238A8(v10, type metadata accessor for ShareableContentExposedContext);
  sub_1002238A8(v24, type metadata accessor for NoticeContent);
  return v50 & 1;
}

uint64_t sub_100223750(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v5 = 0x4866666F646E6168;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*(a1 + 16))
  {
    v6 = 0xEB00000000746E69;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (*(a2 + 16))
  {
    v7 = 0x4866666F646E6168;
  }

  else
  {
    v7 = 0x647261646E617473;
  }

  if (*(a2 + 16))
  {
    v8 = 0xEB00000000746E69;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = type metadata accessor for NoticeContext(0);
  if ((sub_100222D34(a1 + v11[6], a2 + v11[6]) & 1) == 0 || *(a1 + v11[7]) != *(a2 + v11[7]))
  {
    return 0;
  }

  v12 = v11[8];

  return sub_1002231B8(a1 + v12, a2 + v12);
}

uint64_t sub_1002238A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100223908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100223970()
{
  result = qword_10034E520;
  if (!qword_10034E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E520);
  }

  return result;
}

unint64_t sub_1002239C4()
{
  result = qword_10034E528;
  if (!qword_10034E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E528);
  }

  return result;
}

uint64_t sub_100223A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100223A80()
{
  result = qword_10034E538;
  if (!qword_10034E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E538);
  }

  return result;
}

uint64_t sub_100223AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100223B1C()
{
  result = qword_10034E550;
  if (!qword_10034E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E550);
  }

  return result;
}

unint64_t sub_100223B70()
{
  result = qword_10034E560;
  if (!qword_10034E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E560);
  }

  return result;
}

uint64_t sub_100223BC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LeaderNoticeTapAction(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_100035D04(&qword_10034EA30, &unk_100290F60);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v27 - v15;
  v17 = (&v27 + *(v14 + 56) - v15);
  sub_100223908(a1, &v27 - v15, type metadata accessor for LeaderNoticeTapAction);
  sub_100223908(a2, v17, type metadata accessor for LeaderNoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v23 = v28;
    sub_100223908(v16, v12, type metadata accessor for LeaderNoticeTapAction);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v23 + 32))(v6, v17, v4);
      v24 = static URL.== infix(_:_:)();
      v25 = *(v23 + 8);
      v25(v6, v4);
      v25(v12, v4);
      sub_1002238A8(v16, type metadata accessor for LeaderNoticeTapAction);
      return v24 & 1;
    }

    (*(v23 + 8))(v12, v4);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_19;
    }

LABEL_15:
    sub_1000097E8(v16, &qword_10034EA30, &unk_100290F60);
    goto LABEL_16;
  }

  sub_100223908(v16, v10, type metadata accessor for LeaderNoticeTapAction);
  v20 = *v10;
  v19 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_15;
  }

  if (v20 == *v17 && v19 == v17[1])
  {

    goto LABEL_19;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
LABEL_19:
    sub_1002238A8(v16, type metadata accessor for LeaderNoticeTapAction);
    v24 = 1;
    return v24 & 1;
  }

  sub_1002238A8(v16, type metadata accessor for LeaderNoticeTapAction);
LABEL_16:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_100223F68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746341706174 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65746E49706174 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100224118(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x634172656461656CLL && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C52556E65706FLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100224234(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C52556E65706FLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC0000006C6C6143 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xED0000616964654DLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100224358(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766965636572 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684956531 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100224470(void *a1)
{
  v31 = sub_100035D04(&qword_10034E570, &qword_10028FA50);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_100035D04(&qword_10034E578, &qword_10028FA58);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_100035D04(&qword_10034E580, &qword_10028FA60);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_100035D04(&qword_10034E588, &unk_10028FA68);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_10000EBC0(a1, v12);
  sub_1002249E0();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_100218008();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_100224A88();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000903C(v35);
          return v9;
        }

        v40 = 2;
        sub_100224A34();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_100224ADC();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v22 = &type metadata for NoticeTapIntent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_10000903C(v35);
  return v9;
}