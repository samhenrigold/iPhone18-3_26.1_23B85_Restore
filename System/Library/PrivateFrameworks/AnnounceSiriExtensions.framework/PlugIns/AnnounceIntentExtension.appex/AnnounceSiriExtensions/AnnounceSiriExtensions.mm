uint64_t sub_100001974(void *a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v5 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  v6 = __chkstk_darwin(v5 - 8);
  v68 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v66 - v9;
  __chkstk_darwin(v8);
  v74 = &v66 - v11;
  v12 = sub_100016394();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v69 = v15;
  v70 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v66 - v16;
  if (qword_100020FA8 != -1)
  {
    swift_once();
  }

  v18 = qword_100021A18;
  sub_1000163A4();
  v19 = a1;
  v20 = sub_100016384();
  v21 = sub_1000164E4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "Received Stop Announcement Intent: %@", v22, 0xCu);
    sub_100002CBC(v23, &qword_1000214B0, &qword_1000173E0);
  }

  v73 = v12;

  v25 = sub_100016374();
  v67 = *(v25 - 8);
  (*(v67 + 56))(v74, 1, 1, v25);
  v26 = [v19 _metadata];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 endpointId];

    if (v28)
    {
      sub_1000163D4();

      sub_100016344();

      v29 = v74;
      sub_100002CBC(v74, &qword_100021340, &unk_1000173D0);
      sub_100002C4C(v10, v29);
    }
  }

  v30 = v19;
  v31 = sub_100016384();
  v32 = sub_1000164E4();

  if (os_log_type_enabled(v31, v32))
  {
    v66 = a3;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v75 = v34;
    *v33 = 136315138;
    v35 = [v30 _metadata];
    if (v35 && (v36 = v35, v37 = [v35 endpointId], v36, v37))
    {
      v38 = sub_1000163D4();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    aBlock = v38;
    v77 = v40;
    sub_1000029F0(&unk_1000210E0, &qword_100017570);
    v41 = sub_1000163E4();
    v43 = sub_100015224(v41, v42, &v75);

    *(v33 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v31, v32, "EndpointID = %s", v33, 0xCu);
    sub_100002C00(v34);

    a3 = v66;
  }

  else
  {
  }

  v44 = OBJC_IVAR____TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler_localPlaybackSession;
  v46 = v72;
  v45 = v73;
  v47 = *(v72 + OBJC_IVAR____TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler_localPlaybackSession);
  if (v47)
  {
    goto LABEL_22;
  }

  v48 = v68;
  sub_100002A38(v74, v68);
  v49 = v67;
  if ((*(v67 + 48))(v48, 1, v25) == 1)
  {
    isa = 0;
  }

  else
  {
    v51.super.isa = sub_100016354().super.isa;
    v52 = v49;
    isa = v51.super.isa;
    (*(v52 + 8))(v48, v25);
  }

  v53 = [objc_allocWithZone(ANLocalPlaybackSession) initWithEndpointIdentifier:isa];

  v54 = *(v46 + v44);
  *(v46 + v44) = v53;
  v55 = v53;

  if (v55)
  {
    [v55 setDelegate:v46];
  }

  v47 = *(v46 + v44);
  if (v47)
  {
LABEL_22:
    v56 = objc_opt_self();
    v57 = v47;
    v58 = [v56 stopCommand];
    v59 = v70;
    (*(v13 + 16))(v70, v17, v45);
    v60 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v61 = (v69 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    (*(v13 + 32))(v62 + v60, v59, v45);
    v63 = (v62 + v61);
    *v63 = v71;
    v63[1] = a3;
    v80 = sub_100002B48;
    v81 = v62;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_10000243C;
    v79 = &unk_10001C998;
    v64 = _Block_copy(&aBlock);

    [v57 sendPlaybackCommand:v58 completionHandler:v64];
    _Block_release(v64);
  }

  sub_100002CBC(v74, &qword_100021340, &unk_1000173D0);
  return (*(v13 + 8))(v17, v45);
}

void sub_1000020D0(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  if (a1)
  {
    swift_errorRetain();
    v4 = sub_100016384();
    v5 = sub_1000164D4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_1000166E4();
      v10 = sub_100015224(v8, v9, &v23);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Stop Announcement failed with error: %s", v6, 0xCu);
      sub_100002C00(v7);
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_100016384();
    v12 = sub_1000164E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Stop Announcement completed successfully", v13, 2u);
    }
  }

  v14 = sub_100016384();
  v15 = sub_1000164E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    if (qword_100020FB8 != -1)
    {
      v21 = v16;
      swift_once();
      v16 = v21;
    }

    v17 = *(qword_100021A28 + 16);
    if (v17 >> 62)
    {
      v22 = v16;
      v18 = sub_100016644();
      v16 = v22;
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Records in Stop Response: %ld", v16, 0xCu);
  }

  v19 = [objc_allocWithZone(INStopAnnouncementIntentResponse) initWithCode:3 userActivity:0];
  if (qword_100020FB8 != -1)
  {
    swift_once();
  }

  sub_100002D1C();

  isa = sub_100016454().super.isa;

  [v19 setStoppedAnnouncementRecords:isa];

  a3(v19);
}

void sub_10000243C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_100002594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopAnnouncementIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100002600(char *a1)
{
  v2 = OBJC_IVAR____TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler_localPlaybackSession;
  v3 = *&a1[OBJC_IVAR____TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler_localPlaybackSession];
  v4 = a1;
  if (v3)
  {
    [v3 setDelegate:0];
    v5 = *&a1[v2];
  }

  else
  {
    v5 = 0;
  }

  *&a1[v2] = 0;
}

void *sub_10000269C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1000026FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10000272C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100002758@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100002864@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000029B8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10000290C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANPlaybackOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000029B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1000029F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002AA8()
{
  v1 = sub_100016394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_100002B48(uint64_t a1)
{
  v3 = *(sub_100016394() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000020D0(a1, v1 + v4, v5);
}

uint64_t sub_100002BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C00(void *a1)
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

uint64_t sub_100002C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002CBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000029F0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100002D1C()
{
  result = qword_1000210F0;
  if (!qword_1000210F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000210F0);
  }

  return result;
}

uint64_t sub_100002D68()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100002DC8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002E28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (sub_100016694())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = sub_1000162F4();

  v9 = [v8 code];

  return sub_100002F8C(v9);
}

uint64_t sub_100002F8C(uint64_t a1)
{
  if (a1 <= 1032)
  {
    if (a1 <= 1016)
    {
      if (a1 == 1009 || a1 == 1015)
      {
        return 6;
      }
    }

    else
    {
      switch(a1)
      {
        case 1017:
          return 8;
        case 1031:
          return 7;
        case 1032:
          return 12;
      }
    }

    return 4;
  }

  if (a1 <= 1042)
  {
    if (a1 == 1033)
    {
      return 10;
    }

    if (a1 != 1034)
    {
      if (a1 == 1035)
      {
        return 11;
      }

      return 4;
    }

    return 9;
  }

  switch(a1)
  {
    case 1043:
      return 13;
    case 1047:
      return 14;
    case 1049:
      return 9;
  }

  return 4;
}

uint64_t sub_10000304C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (sub_100016694())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = sub_1000162F4();

  v9 = [v8 code];

  if (v9 == 1027)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1000031B4()
{
  v0 = sub_100016394();
  sub_1000032B8(v0, qword_100021A00);
  sub_10000331C(v0, qword_100021A00);
  if (qword_100020FB0 != -1)
  {
    swift_once();
  }

  v1 = qword_100021A20;
  return sub_1000163A4();
}

unint64_t sub_10000326C()
{
  result = qword_1000211C0;
  if (!qword_1000211C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000211C0);
  }

  return result;
}

uint64_t *sub_1000032B8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000331C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10000326C();
  result = sub_100016504();
  *a4 = result;
  return result;
}

uint64_t sub_1000033DC()
{
  type metadata accessor for ReadAnnouncementHistory();
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  qword_100021A28 = result;
  return result;
}

uint64_t sub_100003414()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

id sub_100003470(void *a1)
{
  v3 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v30 - v8;
  __chkstk_darwin(v7);
  v11 = v30 - v10;
  result = [a1 recipients];
  if (!result)
  {
    return result;
  }

  v13 = result;
  sub_1000037D0();
  v14 = sub_100016464();

  v15 = sub_10000A428(v14);

  v16 = [v15 roomNames];
  v17 = sub_100016464();

  v18 = *(v17 + 16);

  if (v18 != 1)
  {
LABEL_10:

    return 0;
  }

  v19 = [v15 roomNames];
  v20 = sub_100016464();

  if (!v20[2])
  {

    goto LABEL_10;
  }

  v21 = v20[5];
  v30[1] = v20[4];

  v22 = sub_100016374();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v11, 1, 1, v22);
  v24 = [a1 _metadata];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 endpointId];

    if (v26)
    {
      sub_1000163D4();
      v30[0] = v21;

      sub_100016344();

      sub_10000381C(v11);
      sub_100002C4C(v9, v11);
    }
  }

  sub_100002A38(v11, v6);
  if ((*(v23 + 48))(v6, 1, v22) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100016354().super.isa;
    (*(v23 + 8))(v6, v22);
  }

  v28 = sub_1000163C4();

  v29 = [v1 isEndpointWithUUID:isa inRoomWithName:v28];

  sub_10000381C(v11);
  return v29;
}

unint64_t sub_1000037D0()
{
  result = qword_100021280;
  if (!qword_100021280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021280);
  }

  return result;
}

uint64_t sub_10000381C(uint64_t a1)
{
  v2 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000038A4()
{
  if (qword_100020FA0 != -1)
  {
    swift_once();
  }

  v1 = sub_100016394();
  sub_10000331C(v1, qword_100021A00);
  v2 = sub_100016384();
  v3 = sub_1000164E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Skipping MU Check", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = sub_100016374();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000039FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000029F0(&qword_100021348, &qword_1000174B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC23AnnounceIntentExtension13IntentHandler____lazy_storage___logger;
  swift_beginAccess();
  sub_100005174(v1 + v9, v8, &qword_100021348, &qword_1000174B0);
  v10 = sub_100016394();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_100002CBC(v8, &qword_100021348, &qword_1000174B0);
  if (qword_100020FA8 != -1)
  {
    swift_once();
  }

  v12 = qword_100021A18;
  sub_1000163A4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000051DC(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_100003C24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_100016394();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v111 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v110 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v110 - v14;
  v16 = __chkstk_darwin(v13);
  v118 = &v110 - v17;
  v18 = __chkstk_darwin(v16);
  v120 = &v110 - v19;
  __chkstk_darwin(v18);
  v21 = &v110 - v20;
  sub_1000039FC(&v110 - v20);
  v22 = a1;
  v23 = sub_100016384();
  v24 = sub_1000164E4();

  v25 = os_log_type_enabled(v23, v24);
  v119 = v3;
  v117 = a2;
  v110 = v12;
  v114 = v15;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v123[0] = v116;
    *v26 = 138412546;
    *(v26 + 4) = v22;
    *v27 = v22;
    *(v26 + 12) = 2080;
    v122[0] = [v22 _idiom];
    type metadata accessor for INDeviceIdiom(0);
    v28 = sub_1000163E4();
    v30 = sub_100015224(v28, v29, v123);

    *(v26 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Resolving %@ for idiom %s", v26, 0x16u);
    sub_100002CBC(v27, &qword_1000214B0, &qword_1000173E0);

    sub_100002C00(v116);
    v3 = v119;
  }

  v31 = *(v7 + 8);
  v31(v21, v6);
  v32 = [v22 _idiom];
  v33 = v118;
  if (!v32)
  {
    sub_1000039FC(v120);
    v34 = sub_100016384();
    v35 = sub_1000164D4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "idiom is unknown", v36, 2u);
    }

    v31(v120, v6);
  }

  v37 = [v22 identifier];
  v115 = v22;
  v116 = v31;
  v112 = v7;
  v113 = v6;
  if (v37)
  {
    v38 = v37;
    v39 = sub_1000163D4();
    v41 = v40;

    v42 = OBJC_IVAR____TtC23AnnounceIntentExtension13IntentHandler_recentIntentHandlers;
    swift_beginAccess();
    v43 = *&v3[v42];
    if (*(v43 + 16))
    {

      v44 = sub_100013668(v39, v41);
      if (v45)
      {
        v120 = *(*(v43 + 56) + 8 * v44);

        sub_1000039FC(v33);

        v46 = sub_100016384();
        v47 = sub_1000164E4();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v123[0] = v49;
          *v48 = 136315138;
          v50 = sub_100015224(v39, v41, v123);

          *(v48 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v46, v47, "Found recent intent handler for identifier: %s", v48, 0xCu);
          sub_100002C00(v49);

          v3 = v119;

          v51 = v118;
        }

        else
        {

          v51 = v33;
        }

        v31(v51, v6);
        goto LABEL_31;
      }
    }
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    AnnouncementIntentHandler = type metadata accessor for ReadAnnouncementIntentHandler(0);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      AnnouncementIntentHandler = type metadata accessor for SendAnnouncementIntentHandler(0);
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        AnnouncementIntentHandler = type metadata accessor for StopAnnouncementIntentHandler();
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          v53 = v3;
          goto LABEL_25;
        }

        AnnouncementIntentHandler = type metadata accessor for PlayAnnouncementSoundIntentHandler();
      }
    }
  }

  v53 = [objc_allocWithZone(AnnouncementIntentHandler) init];
LABEL_25:
  v120 = v53;
  v54 = v114;
  sub_1000039FC(v114);
  v55 = v22;
  v56 = sub_100016384();
  v57 = sub_1000164E4();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v123[0] = v59;
    *v58 = 136315138;
    v60 = [v55 identifier];
    if (v60)
    {
      v61 = v60;
      v62 = sub_1000163D4();
      v64 = v63;

      v31 = v116;
    }

    else
    {
      v64 = 0xE300000000000000;
      v62 = 7104878;
    }

    v65 = sub_100015224(v62, v64, v123);

    *(v58 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v56, v57, "Created new intent handler for identifier: %s", v58, 0xCu);
    sub_100002C00(v59);
  }

  v31(v54, v6);
  v3 = v119;
LABEL_31:
  v66 = OBJC_IVAR____TtC23AnnounceIntentExtension13IntentHandler_recentIntentHandlers;
  swift_beginAccess();
  v118 = v66;
  v67 = *&v3[v66];
  v68 = 1 << *(v67 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v67 + 64);
  v71 = (v68 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v73 = 0;
  if (v70)
  {
    while (1)
    {
      v74 = v73;
LABEL_38:
      v75 = __clz(__rbit64(v70)) | (v74 << 6);
      v76 = (*(v67 + 48) + 16 * v75);
      v77 = *v76;
      v78 = v76[1];
      v79 = *(*(v67 + 56) + 8 * v75);
      sub_10000591C(0, &qword_100021358, NSObject_ptr);

      v80 = v79;
      v81 = v120;
      v82 = sub_1000164F4();

      if (v82)
      {
        break;
      }

      v70 &= v70 - 1;

      v73 = v74;
      if (!v70)
      {
        goto LABEL_35;
      }
    }

    v100 = v118;
    v99 = v119;
    swift_beginAccess();

    v101 = v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = *&v100[v99];
    *&v100[v99] = 0x8000000000000000;
    sub_1000054F0(v101, v77, v78, isUniquelyReferenced_nonNull_native);

    *&v100[v99] = v121;
    swift_endAccess();
    v103 = v110;
    sub_1000039FC(v110);

    v104 = v80;
    v105 = sub_100016384();
    v106 = sub_1000164E4();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v122[0] = v108;
      *v107 = 136315138;

      v109 = sub_100015224(v77, v78, v122);

      *(v107 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v105, v106, "Updated recent intent handler for identifier: %s", v107, 0xCu);
      sub_100002C00(v108);
    }

    else
    {
    }

    v116(v103, v113);
    v84 = v117;
  }

  else
  {
    while (1)
    {
LABEL_35:
      v74 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        __break(1u);
        return result;
      }

      if (v74 >= v71)
      {
        break;
      }

      v70 = *(v67 + 64 + 8 * v74);
      ++v73;
      if (v70)
      {
        goto LABEL_38;
      }
    }

    v83 = [v115 identifier];
    v84 = v117;
    if (v83)
    {
      v85 = v83;
      v86 = sub_1000163D4();
      v88 = v87;

      v90 = v118;
      v89 = v119;
      swift_beginAccess();
      v91 = v120;

      v92 = swift_isUniquelyReferenced_nonNull_native();
      v121 = *&v90[v89];
      *&v90[v89] = 0x8000000000000000;
      sub_1000054F0(v91, v86, v88, v92);

      *&v90[v89] = v121;
      swift_endAccess();
      v93 = v111;
      sub_1000039FC(v111);

      v94 = sub_100016384();
      v95 = sub_1000164E4();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v122[0] = v97;
        *v96 = 136315138;
        v98 = sub_100015224(v86, v88, v122);

        *(v96 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v94, v95, "Added new intent handler to recents for identifier: %s", v96, 0xCu);
        sub_100002C00(v97);
      }

      else
      {
      }

      v116(v93, v113);
    }
  }

  result = sub_10000591C(0, &unk_100021360, INExtension_ptr);
  v84[3] = result;
  *v84 = v120;
  return result;
}

id sub_100004988()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IntentHandler(uint64_t a1)
{
  result = qword_1000212C8;
  if (!qword_1000212C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004A64(uint64_t a1)
{
  sub_100004B04(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100004B04(uint64_t a1)
{
  if (!qword_1000214A0)
  {
    sub_100016394();
    v1 = sub_100016514();
    if (!v2)
    {
      atomic_store(v1, &qword_1000214A0);
    }
  }
}

void sub_100004B5C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  __chkstk_darwin(v6 - 8);
  v52 = &v50 - v7;
  v8 = sub_100016394();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v50 - v13;
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  sub_1000039FC(&v50 - v15);

  v17 = sub_100016384();
  v18 = sub_1000164E4();

  v19 = os_log_type_enabled(v17, v18);
  v53 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v50 = v3;
    v21 = v8;
    v22 = v14;
    v23 = v9;
    v24 = v20;
    v25 = swift_slowAlloc();
    v54[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_100015224(a1, a2, v54);
    _os_log_impl(&_mh_execute_header, v17, v18, "Transaction Did Complete for Intent Identifier: %s", v24, 0xCu);
    sub_100002C00(v25);

    v9 = v23;
    v14 = v22;
    v8 = v21;
    v3 = v50;
  }

  v26 = *(v9 + 8);
  v26(v16, v8);
  v27 = [objc_opt_self() sharedInstance];
  v28 = [v27 BOOLForDefault:ANDefaultPlaybackStatusReturnsImmediately];

  v29 = OBJC_IVAR____TtC23AnnounceIntentExtension13IntentHandler_recentIntentHandlers;
  swift_beginAccess();
  v30 = *(v3 + v29);
  if (*(v30 + 16))
  {

    v31 = sub_100013668(v53, a2);
    if (v32)
    {
      v33 = *(*(v30 + 56) + 8 * v31);

      type metadata accessor for ReadAnnouncementIntentHandler(0);
      v34 = swift_dynamicCastClass();
      if (v34 && (v28 & 1) == 0)
      {
        v35 = v34;
        sub_1000039FC(v14);
        v36 = sub_100016384();
        v37 = sub_1000164E4();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Intent Handler is Read Announcement Intent Handler", v38, 2u);
        }

        v26(v14, v8);
        v39 = v51;
        sub_1000039FC(v51);
        v40 = sub_100016384();
        v41 = sub_1000164E4();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "Requesting announced to stop playing announcements.", v42, 2u);
        }

        v26(v39, v8);
        v43 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_endpointIdentifier;
        swift_beginAccess();
        v44 = v52;
        sub_100005174(v35 + v43, v52, &qword_100021340, &unk_1000173D0);
        v45 = sub_100016374();
        v46 = *(v45 - 8);
        isa = 0;
        if ((*(v46 + 48))(v44, 1, v45) != 1)
        {
          isa = sub_100016354().super.isa;
          (*(v46 + 8))(v44, v45);
        }

        v48 = [objc_allocWithZone(ANLocalPlaybackSession) initWithEndpointIdentifier:isa];

        v49 = [objc_opt_self() stopCommand];
        [v48 sendPlaybackCommand:v49 completionHandler:0];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100005174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000029F0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000051DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000029F0(&qword_100021348, &qword_1000174B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000524C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000029F0(&qword_100021350, &qword_1000174B8);
  v35 = v4;
  result = sub_100016664();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1000166F4();
      sub_100016404();
      result = sub_100016704();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000054F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100013668(a2, a3);
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
      sub_10000524C(v16, a4 & 1);
      v11 = sub_100013668(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1000166D4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100005668();
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

id sub_100005668()
{
  v1 = v0;
  sub_1000029F0(&qword_100021350, &qword_1000174B8);
  v2 = *v0;
  v3 = sub_100016654();
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

        result = v20;
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

unint64_t sub_1000057D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000029F0(&qword_100021350, &qword_1000174B8);
    v3 = sub_100016674();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100013668(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

void *sub_1000058D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000591C(uint64_t a1, unint64_t *a2, void *a3)
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

void *sub_100005964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = objc_allocWithZone(INSpeakableString);
    v8 = sub_1000163C4();
    v9 = [v7 initWithSpokenPhrase:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a3 + 16);
  if (v10)
  {
    v56 = _swiftEmptyArrayStorage;
    sub_100016604();
    v11 = a3 + 40;
    v12 = v9;
    do
    {
      v13 = objc_allocWithZone(INSpeakableString);

      v14 = v12;
      v15 = sub_1000163C4();
      v16 = [v13 initWithSpokenPhrase:v15];

      LOWORD(v53) = 0;
      [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v14 zone:0 group:0 room:v16 isExcludeFilter:v53 hasAllQuantifier:?];

      sub_1000165E4();
      sub_100016614();
      sub_100016624();
      sub_1000165F4();
      v11 += 16;
      --v10;
    }

    while (v10);
    v9 = v12;
    goto LABEL_10;
  }

  if (*(a4 + 16))
  {
    v56 = _swiftEmptyArrayStorage;
LABEL_10:
    sub_100005FB4(_swiftEmptyArrayStorage);
    v17 = *(a4 + 16);
    if (v17)
    {
      sub_100016604();
      v18 = a4 + 40;
      do
      {
        v19 = objc_allocWithZone(INSpeakableString);
        v20 = v9;
        v21 = v9;

        v22 = sub_1000163C4();
        v23 = [v19 initWithSpokenPhrase:v22];

        LOWORD(v53) = 0;
        [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v21 zone:v23 group:0 room:0 isExcludeFilter:v53 hasAllQuantifier:?];

        sub_1000165E4();
        sub_100016614();
        v9 = v20;
        sub_100016624();
        sub_1000165F4();
        v18 += 16;
        --v17;
      }

      while (v17);
    }

    sub_100005FB4(_swiftEmptyArrayStorage);

    return v56;
  }

  if (qword_100020FA0 != -1)
  {
    swift_once();
  }

  v25 = sub_100016394();
  sub_10000331C(v25, qword_100021A00);

  v26 = sub_100016384();
  v27 = sub_1000164E4();

  if (os_log_type_enabled(v26, v27))
  {
    log = v26;
    v55 = v9;
    v28 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v28 = 136446722;
    v29 = sub_100016714();
    v31 = v27;
    v32 = sub_100015224(v29, v30, &v56);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = sub_100016474();
    v35 = sub_100015224(v33, v34, &v56);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2080;
    v36 = sub_100016474();
    v38 = sub_100015224(v36, v37, &v56);

    *(v28 + 24) = v38;
    v39 = v31;
    v26 = log;
    _os_log_impl(&_mh_execute_header, log, v39, "(%{public}s) Rooms and Zones empty: %s, %s", v28, 0x20u);
    swift_arrayDestroy();

    v9 = v55;
  }

  if (a2)
  {
    v40 = v9;
    v41 = sub_100016384();
    v42 = sub_1000164E4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56 = v44;
      *v43 = 136446210;
      v45 = sub_100016714();
      v47 = sub_100015224(v45, v46, &v56);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "(%{public}s) Creating filter with Home only", v43, 0xCu);
      sub_100002C00(v44);
    }

    sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000174D0;
    v49 = objc_allocWithZone(INSpeakableString);
    v50 = sub_1000163C4();
    v51 = [v49 initWithSpokenPhrase:v50];

    LOWORD(v53) = 0;
    v52 = [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v51 zone:0 group:0 room:0 isExcludeFilter:v53 hasAllQuantifier:?];

    *(v48 + 32) = v52;
    return v48;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100005FB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100016644();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_100016644();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000060A4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100006144(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000060A4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_100016644();
LABEL_9:
  result = sub_1000165C4();
  *v2 = result;
  return result;
}

uint64_t sub_100006144(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100016644();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100016644();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000062C4();
          for (i = 0; i != v6; ++i)
          {
            sub_1000029F0(&unk_100021640, &unk_1000176E0);
            v9 = sub_1000138A4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000037D0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000062C4()
{
  result = qword_1000213D8;
  if (!qword_1000213D8)
  {
    sub_100006328(&unk_100021640, &unk_1000176E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000213D8);
  }

  return result;
}

uint64_t sub_100006328(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006370@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000029F0(&qword_100021348, &qword_1000174B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler____lazy_storage___logger;
  swift_beginAccess();
  sub_100005174(v1 + v9, v8, &qword_100021348, &qword_1000174B0);
  v10 = sub_100016394();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_100002CBC(v8, &qword_100021348, &qword_1000174B0);
  if (qword_100020FA8 != -1)
  {
    swift_once();
  }

  v12 = qword_100021A18;
  sub_1000163A4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10000A018(v6, v1 + v9, &qword_100021348, &qword_1000174B0);
  return swift_endAccess();
}

id sub_1000065A8()
{
  sub_1000065E4();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadAnnouncementIntentHandler(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000065E4()
{
  v1 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_announce;
  v2 = *(v0 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_announce);
  if (v2)
  {
    [v2 setDelegate:0];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession;
  v5 = *(v0 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession);
  if (v5)
  {
    [v5 setDelegate:0];
    v5 = *(v0 + v4);
  }

  *(v0 + v4) = 0;
}

uint64_t type metadata accessor for ReadAnnouncementIntentHandler(uint64_t a1)
{
  result = qword_100021488;
  if (!qword_100021488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006790(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_1000029F0(&qword_100021340, &unk_1000173D0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v3 = sub_100016394();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000068B8, 0, 0);
}

uint64_t sub_1000068B8()
{
  v88 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_announce;
  v3 = *(v1 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_announce);
  if (v3)
  {
    goto LABEL_18;
  }

  v4 = *(v0 + 88);
  sub_100006370(*(v0 + 160));
  v5 = v4;
  v6 = sub_100016384();
  v7 = sub_1000164E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v87 = v10;
    *v9 = 136315138;
    v11 = [v8 _metadata];
    v84 = v2;
    if (v11 && (v12 = v11, v13 = [v11 endpointId], v12, v13))
    {
      v14 = sub_1000163D4();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v85 = *(v0 + 160);
    v21 = *(v0 + 120);
    v20 = *(v0 + 128);
    *(v0 + 64) = v14;
    *(v0 + 72) = v16;
    sub_1000029F0(&unk_1000210E0, &qword_100017570);
    v22 = sub_1000163E4();
    v24 = sub_100015224(v22, v23, &v87);

    *(v9 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v6, v7, "EndpointID = %s", v9, 0xCu);
    sub_100002C00(v10);

    (*(v20 + 8))(v85, v21);
    v2 = v84;
  }

  else
  {
    v17 = *(v0 + 160);
    v18 = *(v0 + 120);
    v19 = *(v0 + 128);

    (*(v19 + 8))(v17, v18);
  }

  v25 = [*(v0 + 88) _metadata];
  if (v25 && (v26 = v25, v27 = [v25 endpointId], v26, v27))
  {
    v28 = v2;
    sub_1000163D4();

    sub_100016344();
  }

  else
  {
    v28 = v2;
    v29 = *(v0 + 112);
    v30 = sub_100016374();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  }

  v32 = *(v0 + 104);
  v31 = *(v0 + 112);
  v33 = *(v0 + 96);
  v34 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_endpointIdentifier;
  swift_beginAccess();
  sub_10000A018(v31, v33 + v34, &qword_100021340, &unk_1000173D0);
  swift_endAccess();
  sub_100005174(v33 + v34, v32, &qword_100021340, &unk_1000173D0);
  v35 = sub_100016374();
  v36 = *(v35 - 8);
  isa = 0;
  if ((*(v36 + 48))(v32, 1, v35) != 1)
  {
    v38 = *(v0 + 104);
    isa = sub_100016354().super.isa;
    (*(v36 + 8))(v38, v35);
  }

  v39 = [objc_allocWithZone(ANAnnounce) initWithEndpointIdentifier:isa];

  v2 = v28;
  v40 = *(v1 + v28);
  *(v1 + v28) = v39;
  v41 = v39;

  if (v41)
  {
    [v41 setDelegate:*(v0 + 96)];
  }

  v3 = *(v1 + v28);
  if (v3)
  {
LABEL_18:
    v42 = [v3 unplayedAnnouncements];
    sub_10000591C(0, &unk_1000214C0, ANAnnouncementContext_ptr);
    v43 = sub_100016464();
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  v47 = *(v0 + 152);
  v44 = *(v0 + 96);
  *(v0 + 80) = v43;
  v45 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_playbackOptions;
  *(v44 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_playbackOptions) = 128;
  sub_100006370(v47);
  v46 = sub_100016384();
  LOBYTE(v47) = sub_1000164E4();
  v48 = v43 >> 62;
  if (!os_log_type_enabled(v46, v47))
  {
    goto LABEL_23;
  }

  v49 = swift_slowAlloc();
  *v49 = 134217984;
  if (v48)
  {
    goto LABEL_64;
  }

  v50 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v49 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v46, v47, "Unheard Announcements (%ld)", v49, 0xCu);

LABEL_23:

    v51 = *(*(v0 + 128) + 8);
    v51(*(v0 + 152), *(v0 + 120));
    if (v48)
    {
      if (sub_100016644())
      {
LABEL_25:
        v1 = v43;
        goto LABEL_38;
      }
    }

    else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v52 = *(v1 + v2);
    if (v52)
    {
      v53 = [v52 receivedAnnouncements];
      sub_10000591C(0, &unk_1000214C0, ANAnnouncementContext_ptr);
      v1 = sub_100016464();
    }

    else
    {
      v1 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    *(v0 + 80) = v1;

    v54 = *(v44 + v45);
    if ((v54 & 0x40) == 0)
    {
      *(v44 + v45) = v54 | 0x40;
    }

    sub_100006370(*(v0 + 144));
    v55 = sub_100016384();
    v56 = sub_1000164E4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      if (v1 >> 62)
      {
        v81 = v1;
        v82 = v57;
        v58 = sub_100016644();
        v57 = v82;
        v1 = v81;
      }

      else
      {
        v58 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v57 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v55, v56, "All Announcements (%ld)", v57, 0xCu);
    }

    v51(*(v0 + 144), *(v0 + 120));
    v43 = v1;
LABEL_38:
    v86 = v51;
    if (v1 >> 62)
    {
      v44 = sub_100016644();
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = _swiftEmptyArrayStorage;
    if (!v44)
    {
      goto LABEL_52;
    }

    v87 = _swiftEmptyArrayStorage;

    v46 = &v87;
    v49 = sub_100016604();
    if ((v44 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_64:
    v79 = v2;
    v80 = v49;
    v50 = sub_100016644();
    v49 = v80;
    v2 = v79;
  }

  v59 = 0;
  v60 = v43 & 0xC000000000000001;
  do
  {
    if (v60)
    {
      v64 = sub_1000165B4();
    }

    else
    {
      v64 = *(v1 + 8 * v59 + 32);
    }

    v65 = v64;
    v66 = [v64 homeName];
    if (!v66)
    {
      sub_1000163D4();
      v66 = sub_1000163C4();
    }

    v67 = [objc_allocWithZone(INSpeakableString) initWithSpokenPhrase:v66];

    LOWORD(v83) = 0;
    v68 = [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v67 zone:0 group:0 room:0 isExcludeFilter:v83 hasAllQuantifier:?];

    v69 = [v65 announcementID];
    if (!v69)
    {
      sub_1000163D4();
      v69 = sub_1000163C4();
    }

    ++v59;
    v61 = [v65 audioFileDuration];
    v62 = objc_allocWithZone(INAnnouncementRecord);
    v63 = v68;
    [v62 initWithOriginator:v63 identifier:v69 duration:v61];

    sub_1000165E4();
    sub_100016614();
    sub_100016624();
    sub_1000165F4();
  }

  while (v44 != v59);

  v47 = v87;
LABEL_52:
  if (qword_100020FB8 != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 136);
  *(qword_100021A28 + 16) = v47;

  v71 = [objc_allocWithZone(INReadAnnouncementIntentResponse) initWithCode:1 userActivity:0];
  sub_10000591C(0, &qword_1000210F0, INAnnouncementRecord_ptr);
  v72 = sub_100016454().super.isa;
  [v71 setAnnouncementRecords:v72];

  sub_100006370(v70);

  v73 = sub_100016384();
  v74 = sub_1000164E4();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    if (v47 >> 62)
    {
      v76 = sub_100016644();
    }

    else
    {
      v76 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v75 + 4) = v76;

    _os_log_impl(&_mh_execute_header, v73, v74, "Confirmed Read Announcement Intent with announcement count: %ld", v75, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v86(*(v0 + 136), *(v0 + 120));

  v77 = *(v0 + 8);

  return v77(v71);
}

uint64_t sub_10000757C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000A404;

  return sub_100006790(v6);
}

uint64_t sub_100007640(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_1000029F0(&unk_100021660, &qword_1000176F0);
  v2[9] = swift_task_alloc();
  sub_1000029F0(&qword_100021340, &unk_1000173D0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = sub_100016394();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000077B8, 0, 0);
}

uint64_t sub_1000077B8()
{
  v118 = v0;
  v1 = *(v0 + 56);
  sub_100006370(*(v0 + 152));
  v2 = v1;
  v3 = sub_100016384();
  v4 = sub_1000164E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received Read Announcement Intent: %@", v6, 0xCu);
    sub_100002CBC(v7, &qword_1000214B0, &qword_1000173E0);
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);

  v12 = *(v11 + 8);
  v12(v9, v10);
  if (qword_100020FB8 != -1)
  {
LABEL_66:
    swift_once();
  }

  v13 = *(qword_100021A28 + 16);
  *(v0 + 160) = v13;
  v14 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_68:
    v106 = *(v0 + 112);

    sub_100006370(v106);

    v107 = sub_100016384();
    v108 = sub_1000164E4();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 134217984;
      if (v14)
      {
        v110 = sub_100016644();
      }

      else
      {
        v110 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v109 + 4) = v110;

      _os_log_impl(&_mh_execute_header, v107, v108, "No announcements to play back. (%ld)", v109, 0xCu);
    }

    else
    {
    }

    v12(*(v0 + 112), *(v0 + 96));
    v102 = [objc_allocWithZone(INReadAnnouncementIntentResponse) initWithCode:3 userActivity:0];
    sub_10000591C(0, &qword_1000210F0, INAnnouncementRecord_ptr);
    v103.super.isa = sub_100016454().super.isa;

    [v102 setAnnouncementRecords:v103.super.isa];
LABEL_75:

    v111 = *(v0 + 8);

    return v111(v102);
  }

  v15 = sub_100016644();
  if (!v15)
  {
    goto LABEL_68;
  }

LABEL_6:
  v16 = *(v0 + 56);
  v17 = objc_opt_self();

  v18 = [v17 sharedInstance];
  v115 = [v18 BOOLForDefault:ANDefaultPlaybackStatusReturnsImmediately];

  v114 = v12;
  if ([v16 _idiom] == 5)
  {
    sub_100006370(*(v0 + 144));

    v19 = sub_100016384();
    v20 = sub_1000164E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      if (v14)
      {
        v22 = sub_100016644();
      }

      else
      {
        v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 4) = v22;

      _os_log_impl(&_mh_execute_header, v19, v20, "Requesting playback (CarPlay) for announcements (%ld)", v21, 0xCu);
    }

    else
    {
    }

    v12(*(v0 + 144), *(v0 + 96));
    v27 = 0;
    v12 = (v13 & 0xFFFFFFFFFFFFFF8);
    v116 = _swiftEmptyArrayStorage;
    do
    {
      v28 = v27;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v29 = sub_1000165B4();
        }

        else
        {
          if (v28 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v29 = *(v13 + 8 * v28 + 32);
        }

        v30 = v29;
        v27 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v31 = [v29 identifier];
        if (v31)
        {
          break;
        }

        ++v28;
        if (v27 == v15)
        {
          goto LABEL_39;
        }
      }

      v32 = v31;
      v33 = sub_1000163D4();
      v112 = v34;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_100009BE4(0, *(v116 + 2) + 1, 1, v116);
      }

      v36 = *(v116 + 2);
      v35 = *(v116 + 3);
      if (v36 >= v35 >> 1)
      {
        v116 = sub_100009BE4((v35 > 1), v36 + 1, 1, v116);
      }

      *(v116 + 2) = v36 + 1;
      v37 = &v116[16 * v36];
      *(v37 + 4) = v33;
      *(v37 + 5) = v112;
    }

    while (v27 != v15);
  }

  else
  {
    sub_100006370(*(v0 + 136));

    v23 = sub_100016384();
    v24 = sub_1000164E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      if (v14)
      {
        v26 = sub_100016644();
      }

      else
      {
        v26 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v25 + 4) = v26;

      _os_log_impl(&_mh_execute_header, v23, v24, "Requesting playback for announcements (%ld)", v25, 0xCu);
    }

    else
    {
    }

    v38 = *(v0 + 64);
    v12(*(v0 + 136), *(v0 + 96));
    v39 = *(v38 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_playbackOptions);
    if ((v39 & 0x20) == 0)
    {
      *(v38 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_playbackOptions) = v39 | 0x20;
    }

    v40 = [*(v0 + 56) startAnnouncementIdentifier];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1000163D4();
      v44 = v43;

      sub_1000029F0(&unk_100021610, &unk_100017578);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1000174E0;
      *(v45 + 32) = v42;
      *(v45 + 40) = v44;
    }
  }

LABEL_39:
  v46 = *(v0 + 64);
  v47 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession;
  if (*(v46 + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession))
  {
    v48 = v115;
    p_prots = (&OBJC_PROTOCOL___INStopAnnouncementIntentHandling + 16);
  }

  else
  {
    v50 = *(v0 + 56);
    sub_100006370(*(v0 + 128));
    v51 = v50;
    v52 = sub_100016384();
    v53 = sub_1000164E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v0 + 56);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v117 = v56;
      *v55 = 136315138;
      v57 = [v54 _metadata];
      v58 = v56;
      if (v57 && (v59 = v57, v60 = [v57 endpointId], v59, v60))
      {
        v61 = sub_1000163D4();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0;
      }

      v113 = *(v0 + 128);
      v66 = *(v0 + 96);
      *(v0 + 40) = v61;
      *(v0 + 48) = v63;
      sub_1000029F0(&unk_1000210E0, &qword_100017570);
      v67 = sub_1000163E4();
      v69 = sub_100015224(v67, v68, &v117);

      *(v55 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v52, v53, "EndpointID = %s", v55, 0xCu);
      sub_100002C00(v58);

      v114(v113, v66);
    }

    else
    {
      v64 = *(v0 + 128);
      v65 = *(v0 + 96);

      v114(v64, v65);
    }

    v70 = [*(v0 + 56) _metadata];
    if (v70 && (v71 = v70, v72 = [v70 endpointId], v71, v72))
    {
      sub_1000163D4();

      sub_100016344();
    }

    else
    {
      v73 = *(v0 + 88);
      v74 = sub_100016374();
      (*(*(v74 - 8) + 56))(v73, 1, 1, v74);
    }

    v75 = *(v0 + 80);
    v76 = *(v0 + 88);
    v77 = *(v0 + 64);
    v78 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_endpointIdentifier;
    swift_beginAccess();
    sub_10000A018(v76, v77 + v78, &qword_100021340, &unk_1000173D0);
    swift_endAccess();
    sub_100005174(v77 + v78, v75, &qword_100021340, &unk_1000173D0);
    v79 = sub_100016374();
    v80 = *(v79 - 8);
    isa = 0;
    if ((*(v80 + 48))(v75, 1, v79) != 1)
    {
      v82 = *(v0 + 80);
      isa = sub_100016354().super.isa;
      (*(v80 + 8))(v82, v79);
    }

    v83 = [objc_allocWithZone(ANLocalPlaybackSession) initWithEndpointIdentifier:isa];

    v84 = *(v46 + v47);
    *(v46 + v47) = v83;
    v85 = v83;

    v46 = *(v0 + 64);
    p_prots = &OBJC_PROTOCOL___INStopAnnouncementIntentHandling.prots;
    if (v85)
    {
      [v85 setDelegate:*(v0 + 64)];

      v46 = *(v0 + 64);
    }

    v48 = v115;
  }

  v86 = objc_opt_self();
  v87 = *(&p_prots[124]->count + v46);
  v88 = sub_100016454().super.isa;

  v89 = [v86 playCommandWithOptions:v87 announcementIdentifiers:v88];
  *(v0 + 168) = v89;

  if (v48)
  {
    sub_100006370(*(v0 + 120));
    v90 = sub_100016384();
    v91 = sub_1000164E4();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Not waiting for playback to complete. Returning success early.", v92, 2u);
    }

    v93 = *(v0 + 120);
    v94 = *(v0 + 96);
    v96 = *(v0 + 64);
    v95 = *(v0 + 72);

    v114(v93, v94);
    v97 = sub_1000164C4();
    (*(*(v97 - 8) + 56))(v95, 1, 1, v97);
    v98 = swift_allocObject();
    v98[2] = 0;
    v98[3] = 0;
    v98[4] = v96;
    v98[5] = v89;
    v99 = v96;
    v100 = v89;
    sub_100009094(0, 0, v95, &unk_100017568, v98);

    v101 = *(v0 + 168);
    v102 = [objc_allocWithZone(INReadAnnouncementIntentResponse) initWithCode:3 userActivity:0];
    sub_10000591C(0, &qword_1000210F0, INAnnouncementRecord_ptr);
    v103.super.isa = sub_100016454().super.isa;

    [v102 setAnnouncementRecords:v103.super.isa];

    goto LABEL_75;
  }

  v104 = swift_task_alloc();
  *(v0 + 176) = v104;
  *v104 = v0;
  v104[1] = sub_10000858C;

  return sub_100008968(v89);
}

uint64_t sub_10000858C(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10000868C, 0, 0);
}

uint64_t sub_10000868C()
{
  v1 = v0[21];
  v2 = [objc_allocWithZone(INReadAnnouncementIntentResponse) initWithCode:v0[23] userActivity:0];
  sub_10000591C(0, &qword_1000210F0, INAnnouncementRecord_ptr);
  isa = sub_100016454().super.isa;

  [v2 setAnnouncementRecords:isa];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_1000087D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100008874;

  return sub_100008968(a5);
}

uint64_t sub_100008874()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100008968(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = sub_100016394();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_100008A34, 0, 0);
}

uint64_t sub_100008A34()
{
  v1 = *(v0[27] + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession);
  v0[32] = v1;
  if (v1)
  {
    v2 = v0[26];
    v0[2] = v0;
    v0[3] = sub_100008C50;
    v3 = swift_continuation_init();
    v0[17] = sub_1000029F0(&qword_1000214B8, &unk_1000175A0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100014710;
    v0[13] = &unk_10001CA80;
    v0[14] = v3;
    [v1 sendPlaybackCommand:v2 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_100006370(v0[31]);
    v4 = sub_100016384();
    v5 = sub_1000164E4();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[31];
    v8 = v0[28];
    v9 = v0[29];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Playback Completed", v10, 2u);
    }

    (*(v9 + 8))(v7, v8);

    v11 = v0[1];

    return v11(3);
  }
}

uint64_t sub_100008C50()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_100008E84;
  }

  else
  {
    v2 = sub_100008D60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100008D60()
{
  sub_100006370(*(v0 + 248));
  v1 = sub_100016384();
  v2 = sub_1000164E4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Playback Completed", v7, 2u);
  }

  (*(v6 + 8))(v4, v5);

  v8 = *(v0 + 8);

  return v8(3);
}

uint64_t sub_100008E84()
{
  v20 = v0;
  v1 = v0[32];
  v2 = v0[30];
  swift_willThrow();

  sub_100006370(v2);
  swift_errorRetain();
  v3 = sub_100016384();
  v4 = sub_1000164D4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[29];
    v5 = v0[30];
    v7 = v0[28];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_1000166E4();
    v12 = sub_100015224(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Playback Error: %{public}s", v8, 0xCu);
    sub_100002C00(v9);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[29];
    v13 = v0[30];
    v15 = v0[28];

    (*(v14 + 8))(v13, v15);
  }

  swift_getErrorValue();
  v16 = sub_10000304C(v0[19], v0[20]);

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_100009094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005174(a3, v25 - v10, &unk_100021660, &qword_1000176F0);
  v12 = sub_1000164C4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100002CBC(v11, &unk_100021660, &qword_1000176F0);
  }

  else
  {
    sub_1000164B4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000164A4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000163F4() + 32;
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

      sub_100002CBC(a3, &unk_100021660, &qword_1000176F0);

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

  sub_100002CBC(a3, &unk_100021660, &qword_1000176F0);
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

uint64_t sub_10000951C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000095E0;

  return sub_100007640(v6);
}

uint64_t sub_1000095E0(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

void sub_10000983C(uint64_t a1)
{
  sub_100009958(319, &qword_100021498, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_100009958(319, &qword_1000214A0, &type metadata accessor for Logger);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100009958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100016514();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000099F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009AEC;

  return v6(a1);
}

uint64_t sub_100009AEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_100009BE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000029F0(&unk_100021610, &unk_100017578);
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

uint64_t sub_100009CF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008874;

  return sub_1000087D8(a1, v4, v5, v7, v6);
}

uint64_t sub_100009DFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009E34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A41C;

  return sub_1000099F4(a1, v4);
}

uint64_t sub_100009EEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008874;

  return sub_1000099F4(a1, v4);
}

uint64_t sub_100009FB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A018(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000029F0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A084()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000A41C;

  return sub_10000951C(v2, v3, v4);
}

uint64_t sub_10000A13C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000A41C;

  return sub_100014BAC(v2, v3, v4);
}

uint64_t sub_10000A1FC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A244()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000A41C;

  return sub_10000757C(v2, v3, v4);
}

uint64_t sub_10000A2F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A338(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A41C;

  return sub_100014C98(a1, v4, v5, v6);
}

unint64_t sub_10000A428(unint64_t result)
{
  v1 = result;
  v40 = &_swiftEmptySetSingleton;
  v41 = &_swiftEmptySetSingleton;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:
    v26 = &_swiftEmptySetSingleton;
    goto LABEL_23;
  }

  result = sub_100016644();
  v2 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v38 = 0;
    v3 = 0;
    v4 = 0xE000000000000000;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_1000165B4();
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = [v5 zone];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 spokenPhrase];

        v10 = sub_1000163D4();
        v12 = v11;

        sub_100012C78(&v39, v10, v12);
      }

      v13 = [v6 room];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 spokenPhrase];

        v16 = sub_1000163D4();
        v18 = v17;

        sub_100012C78(&v39, v16, v18);
      }

      v19 = [v6 home];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 spokenPhrase];

        v22 = sub_1000163D4();
        v24 = v23;

        v25 = HIBYTE(v4) & 0xF;
        if ((v4 & 0x2000000000000000) == 0)
        {
          v25 = v38 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
        }

        else
        {

          v38 = v22;
          v4 = v24;
        }
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
    v26 = v41;
LABEL_23:
    v27 = [objc_allocWithZone(ANHomeContext) init];
    v28 = sub_1000163C4();

    [v27 setHomeName:v28];

    v29 = v26[2];
    if (v29)
    {
      v30 = sub_100012B84(v26[2], 0);
      v31 = sub_10001392C(&v39, v30 + 4, v29, v26);
      sub_10001401C(v39);
      if (v31 == v29)
      {
        goto LABEL_27;
      }

      __break(1u);
    }

LABEL_27:
    isa = sub_100016454().super.isa;

    [v27 setZoneNames:isa];

    v33 = v40;
    v34 = v40[2];
    if (v34)
    {
      v35 = sub_100012B84(v40[2], 0);
      v36 = sub_10001392C(&v39, v35 + 4, v34, v33);
      sub_10001401C(v39);
      if (v36 == v34)
      {
LABEL_31:
        v37 = sub_100016454().super.isa;

        [v27 setRoomNames:v37];

        return v27;
      }

      __break(1u);
    }

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A7EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000029F0(&qword_100021348, &qword_1000174B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler____lazy_storage___logger;
  swift_beginAccess();
  sub_100005174(v1 + v9, v8, &qword_100021348, &qword_1000174B0);
  v10 = sub_100016394();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_100002CBC(v8, &qword_100021348, &qword_1000174B0);
  if (qword_100020FA8 != -1)
  {
    swift_once();
  }

  v12 = qword_100021A18;
  sub_1000163A4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000051DC(v6, v1 + v9);
  return swift_endAccess();
}

id sub_10000AAAC()
{
  v1 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce;
  v2 = *&v0[OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce];
  if (v2)
  {
    [v2 setDelegate:0];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for SendAnnouncementIntentHandler(0);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for SendAnnouncementIntentHandler(uint64_t a1)
{
  result = qword_100021568;
  if (!qword_100021568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000AC50(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_100016334();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v4 = sub_100016394();
  v2[35] = v4;
  v2[36] = *(v4 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return _swift_task_switch(sub_10000ADD8, 0, 0);
}

uint64_t sub_10000ADD8()
{
  v109 = v0;
  v1 = v0[29];
  sub_10000A7EC(v0[45]);
  v2 = v1;
  v3 = sub_100016384();
  v4 = sub_1000164E4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[45];
  v8 = v0[35];
  v7 = v0[36];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v108[0] = v10;
    *v9 = 136315138;
    v11 = sub_10000C3E4();
    v13 = sub_100015224(v11, v12, v108);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Resolving Announcement: %s", v9, 0xCu);
    sub_100002C00(v10);
  }

  v14 = *(v7 + 8);
  v14(v6, v8);
  v0[46] = v14;
  v15 = v0[29];
  sub_10000A7EC(v0[44]);
  v16 = v15;
  v17 = sub_100016384();
  v18 = sub_1000164E4();

  if (!os_log_type_enabled(v17, v18))
  {
    v28 = v0[44];
    v29 = v0[35];

    v30 = v28;
    v31 = v29;
    goto LABEL_11;
  }

  v106 = v14;
  v19 = v0[29];
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v108[0] = v21;
  *v20 = 136315138;
  v22 = [v19 _metadata];
  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = v22;
  v24 = [v22 endpointId];

  if (!v24)
  {
    v22 = 0;
LABEL_9:
    v27 = 0xE000000000000000;
    goto LABEL_10;
  }

  v25 = sub_1000163D4();
  v27 = v26;

  v22 = v25;
LABEL_10:
  v32 = v0[44];
  v33 = v0[35];
  v34 = sub_100015224(v22, v27, v108);

  *(v20 + 4) = v34;
  _os_log_impl(&_mh_execute_header, v17, v18, "Endpoint %s", v20, 0xCu);
  sub_100002C00(v21);

  v30 = v32;
  v31 = v33;
  v14 = v106;
LABEL_11:
  v14(v30, v31);
  v35 = v0[29];
  v36 = sub_100013A84(v35);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[22] = sub_100014478;
  v0[23] = v37;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10000243C;
  v0[21] = &unk_10001CC38;
  v38 = _Block_copy(v0 + 18);
  v39 = v36;

  [v39 prewarmWithHandler:v38];
  _Block_release(v38);

  v40 = [v35 announcement];
  v0[47] = v40;
  if (v40)
  {
    v41 = v40;
    v42 = [v0[29] isReply];
    if (v42 && (v43 = v42, v44 = [v42 BOOLValue], v43, v44))
    {
      v45 = [v41 identifier];
      v0[48] = v45;
      if (v45)
      {
        v46 = v45;
        v47 = sub_1000163D4();
        v0[49] = v47;
        v0[50] = v48;
        v49 = HIBYTE(v48) & 0xF;
        if ((v48 & 0x2000000000000000) == 0)
        {
          v49 = v47 & 0xFFFFFFFFFFFFLL;
        }

        if (v49)
        {
          v50 = sub_100013A84(v0[29]);
          v0[51] = v50;
          v0[2] = v0;
          v0[7] = v0 + 28;
          v0[3] = sub_10000BAEC;
          v51 = swift_continuation_init();
          v0[17] = sub_1000029F0(&qword_100021638, &qword_1000176D8);
          v0[10] = _NSConcreteStackBlock;
          v0[11] = 1107296256;
          v0[12] = sub_10000CA00;
          v0[13] = &unk_10001CC60;
          v0[14] = v51;
          [v50 announcementForID:v46 reply:v0 + 10];

          return _swift_continuation_await(v0 + 2);
        }
      }

      sub_10000A7EC(v0[42]);
      v99 = sub_100016384();
      v100 = sub_1000164D4();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&_mh_execute_header, v99, v100, "Announcement Identifier is empty for reply", v101, 2u);
      }

      v102 = v0[42];
      v103 = v0[35];

      v14(v102, v103);
      aBlock = [objc_opt_self() unsupportedForReason:1];
    }

    else
    {
      v52 = [v0[47] speechDataURL];
      if (v52)
      {
        v53 = v0[33];
        v54 = v0[34];
        v55 = v0[31];
        v56 = v0[32];
        v57 = v52;
        sub_100016324();

        (*(v56 + 16))(v53, v54, v55);
        v58 = objc_allocWithZone(AVAudioFile);
        v59 = sub_100012A38(v53);
        v72 = v0[41];
        v73 = v59;
        v74 = [v59 length];
        v75 = [v73 processingFormat];
        [v75 sampleRate];
        v77 = v76;

        v78 = v74 / v77;
        sub_10000A7EC(v72);
        v79 = sub_100016384();
        v80 = sub_1000164E4();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 134349056;
          *(v81 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v79, v80, "Speech Data Length: %{public}f", v81, 0xCu);
        }

        v82 = v0[46];
        v83 = v0[41];
        v84 = v0[35];

        v82(v83, v84);
        if (v78 >= 60.0)
        {
          sub_10000A7EC(v0[39]);
          v89 = sub_100016384();
          v90 = sub_1000164E4();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 67240192;
            *(v91 + 4) = 60;
            _os_log_impl(&_mh_execute_header, v89, v90, "Speech Data Length Exceeds Maximum (%{public}d seconds). Requires Confirmation.", v91, 8u);
          }

          v93 = v0[46];
          v92 = v0[47];
          v94 = v0[39];
          v96 = v0[34];
          v95 = v0[35];
          v97 = v0[31];
          v98 = v0[32];

          v93(v94, v95);
          aBlock = [objc_opt_self() confirmationRequiredWithAnnouncementToConfirm:v92 forReason:1];

          (*(v98 + 8))(v96, v97);
        }

        else
        {
          v85 = v0[47];
          v86 = v0[34];
          v88 = v0[31];
          v87 = v0[32];
          sub_10000591C(0, &unk_100021650, INSendAnnouncementAnnouncementResolutionResult_ptr);
          aBlock = [swift_getObjCClassFromMetadata() successWithResolvedAnnouncement:v85];

          (*(v87 + 8))(v86, v88);
        }
      }

      else
      {
        sub_10000A7EC(v0[38]);
        v65 = sub_100016384();
        v66 = sub_1000164D4();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v65, v66, "Resolving Announcement failed for no Speech Data URL.", v67, 2u);
        }

        v69 = v0[46];
        v68 = v0[47];
        v70 = v0[38];
        v71 = v0[35];

        v69(v70, v71);
        sub_10000591C(0, &unk_100021650, INSendAnnouncementAnnouncementResolutionResult_ptr);
        aBlock = [swift_getObjCClassFromMetadata() needsValue];
      }
    }
  }

  else
  {
    sub_10000A7EC(v0[37]);
    v60 = sub_100016384();
    v61 = sub_1000164E4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Announcement is empty. Needs value.", v62, 2u);
    }

    v63 = v0[37];
    v64 = v0[35];

    v14(v63, v64);
    sub_10000591C(0, &unk_100021650, INSendAnnouncementAnnouncementResolutionResult_ptr);
    aBlock = [swift_getObjCClassFromMetadata() needsValue];
  }

  v104 = v0[1];

  return v104(aBlock);
}

uint64_t sub_10000BAEC()
{

  return _swift_task_switch(sub_10000BBCC, 0, 0);
}

uint64_t sub_10000BBCC()
{
  v64 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 384);

  if (v1)
  {

    v3 = [*(v0 + 376) speechDataURL];
    if (v3)
    {
      v4 = *(v0 + 264);
      v5 = *(v0 + 272);
      v6 = *(v0 + 248);
      v7 = *(v0 + 256);
      v8 = v3;
      sub_100016324();

      (*(v7 + 16))(v4, v5, v6);
      v9 = objc_allocWithZone(AVAudioFile);
      v10 = sub_100012A38(v4);
      v32 = *(v0 + 328);
      v33 = v10;
      v34 = [v10 length];
      v35 = [v33 processingFormat];
      [v35 sampleRate];
      v37 = v36;

      v38 = v34 / v37;
      sub_10000A7EC(v32);
      v39 = sub_100016384();
      v40 = sub_1000164E4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134349056;
        *(v41 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v39, v40, "Speech Data Length: %{public}f", v41, 0xCu);
      }

      v42 = *(v0 + 368);
      v43 = *(v0 + 328);
      v44 = *(v0 + 280);

      v42(v43, v44);
      if (v38 >= 60.0)
      {
        sub_10000A7EC(*(v0 + 312));
        v49 = sub_100016384();
        v50 = sub_1000164E4();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 67240192;
          *(v51 + 4) = 60;
          _os_log_impl(&_mh_execute_header, v49, v50, "Speech Data Length Exceeds Maximum (%{public}d seconds). Requires Confirmation.", v51, 8u);
        }

        v53 = *(v0 + 368);
        v52 = *(v0 + 376);
        v54 = *(v0 + 312);
        v56 = *(v0 + 272);
        v55 = *(v0 + 280);
        v57 = *(v0 + 248);
        v58 = *(v0 + 256);

        v53(v54, v55);
        v62 = [objc_opt_self() confirmationRequiredWithAnnouncementToConfirm:v52 forReason:1];

        (*(v58 + 8))(v56, v57);
      }

      else
      {
        v45 = *(v0 + 376);
        v46 = *(v0 + 272);
        v48 = *(v0 + 248);
        v47 = *(v0 + 256);
        sub_10000591C(0, &unk_100021650, INSendAnnouncementAnnouncementResolutionResult_ptr);
        v62 = [swift_getObjCClassFromMetadata() successWithResolvedAnnouncement:v45];

        (*(v47 + 8))(v46, v48);
      }
    }

    else
    {
      sub_10000A7EC(*(v0 + 304));
      v21 = sub_100016384();
      v22 = sub_1000164D4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Resolving Announcement failed for no Speech Data URL.", v23, 2u);
      }

      v24 = *(v0 + 368);
      v25 = *(v0 + 376);
      v26 = *(v0 + 304);
      v27 = *(v0 + 280);

      v24(v26, v27);
      sub_10000591C(0, &unk_100021650, INSendAnnouncementAnnouncementResolutionResult_ptr);
      v62 = [swift_getObjCClassFromMetadata() needsValue];
    }
  }

  else
  {
    sub_10000A7EC(*(v0 + 344));

    v11 = sub_100016384();
    v12 = sub_1000164D4();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 400);
    if (v13)
    {
      v15 = *(v0 + 392);
      v61 = *(v0 + 368);
      v16 = *(v0 + 344);
      v17 = *(v0 + 280);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v63 = v19;
      *v18 = 136315138;
      v20 = sub_100015224(v15, v14, &v63);

      *(v18 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Could not find reply-to announcement: %s", v18, 0xCu);
      sub_100002C00(v19);

      v61(v16, v17);
    }

    else
    {
      v28 = *(v0 + 368);
      v29 = *(v0 + 344);
      v30 = *(v0 + 280);

      v28(v29, v30);
    }

    v31 = *(v0 + 376);
    v62 = [objc_opt_self() unsupportedForReason:1];
  }

  v59 = *(v0 + 8);

  return v59(v62);
}

uint64_t sub_10000C3E4()
{
  v1 = v0;
  v2 = 7104878;
  v3 = sub_1000029F0(&qword_1000215E8, &qword_100017698);
  __chkstk_darwin(v3);
  v5 = &v48 - v4;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1000165A4(143);
  v51 = v48;
  v52 = v49;
  v53._countAndFlagsBits = 0xD000000000000013;
  v53._object = 0x8000000100018C50;
  sub_100016424(v53);
  v6 = [v0 identifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000163D4();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 7104878;
  }

  v54._countAndFlagsBits = v8;
  v54._object = v10;
  sub_100016424(v54);

  v55._countAndFlagsBits = 0x656970696365520ALL;
  v55._object = 0xED0000203A73746ELL;
  sub_100016424(v55);
  v11 = [v1 recipients];
  if (v11)
  {
    v12 = v11;
    sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
    sub_100016464();
  }

  sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
  v13 = sub_100016474();
  v15 = v14;

  v56._countAndFlagsBits = v13;
  v56._object = v15;
  sub_100016424(v56);

  v57._countAndFlagsBits = 0xD00000000000001ALL;
  v57._object = 0x8000000100018C70;
  sub_100016424(v57);
  v16 = [v1 announcement];
  if (v16 && (v17 = v16, v18 = [v16 identifier], v17, v18))
  {
    v19 = sub_1000163D4();
    v21 = v20;

    v22._countAndFlagsBits = v19;
  }

  else
  {
    v21 = 0xE300000000000000;
    v22._countAndFlagsBits = 7104878;
  }

  v23 = 0x65736C6166;
  v22._object = v21;
  sub_100016424(v22);

  v58._countAndFlagsBits = 0x6C7065522073490ALL;
  v58._object = 0xEB00000000203A79;
  sub_100016424(v58);
  v24 = [v1 isReply];
  if (v24 && (v25 = v24, v26 = [v24 BOOLValue], v25, (v26 & 1) != 0))
  {
    v27 = 0xE400000000000000;
    v28._countAndFlagsBits = 1702195828;
  }

  else
  {
    v27 = 0xE500000000000000;
    v28._countAndFlagsBits = 0x65736C6166;
  }

  v28._object = v27;
  sub_100016424(v28);

  v59._countAndFlagsBits = 0xD000000000000012;
  v59._object = 0x8000000100018C90;
  sub_100016424(v59);
  v50 = v3;
  v29 = sub_100013FB8(&v48);
  v30 = [v1 announcement];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 speechDataURL];

    if (v32)
    {
      sub_100016324();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v35 = sub_100016334();
    (*(*(v35 - 8) + 56))(v5, v33, 1, v35);
    sub_100012C08(v5, v29);
  }

  else
  {
    v34 = sub_100016334();
    (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
  }

  sub_100016634();
  sub_100002C00(&v48);
  v60._object = 0x8000000100018CB0;
  v60._countAndFlagsBits = 0xD000000000000010;
  sub_100016424(v60);
  v36 = [v1 announcement];
  if (v36 && (v37 = v36, v38 = [v36 speechDataTranscription], v37, v38))
  {

    v39 = 0xE400000000000000;
    v23 = 1702195828;
  }

  else
  {
    v39 = 0xE500000000000000;
  }

  v61._countAndFlagsBits = v23;
  v61._object = v39;
  sub_100016424(v61);

  v62._countAndFlagsBits = 0x6874676E654C202CLL;
  v62._object = 0xEA00000000002820;
  sub_100016424(v62);
  v40 = [v1 announcement];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 speechDataTranscription];

    if (v42)
    {
      sub_1000163D4();

      v42 = sub_100016414();
    }
  }

  else
  {
    v42 = 0;
  }

  v48 = v42;
  v63._countAndFlagsBits = sub_100016684();
  sub_100016424(v63);

  v64._countAndFlagsBits = 0x696F70646E450A29;
  v64._object = 0xEE00203A4449746ELL;
  sub_100016424(v64);
  v43 = [v1 _endpointId];
  if (v43)
  {
    v44 = v43;
    v2 = sub_1000163D4();
    v46 = v45;
  }

  else
  {
    v46 = 0xE300000000000000;
  }

  v65._countAndFlagsBits = v2;
  v65._object = v46;
  sub_100016424(v65);

  return v51;
}

uint64_t sub_10000CA00(uint64_t a1, void *a2)
{
  v3 = sub_1000058D8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10000CBEC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000095E0;

  return sub_10000AC50(v6);
}

uint64_t sub_10000CCB0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_100016394();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000CD7C, 0, 0);
}

uint64_t sub_10000CD7C()
{
  v38 = v0;
  v1 = (v0 + 16);
  v2 = *(v0 + 64);
  sub_10000A7EC(*(v0 + 104));
  v3 = v2;
  v4 = sub_100016384();
  v5 = sub_1000164E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = v11;
    *v10 = 136315138;
    v12 = sub_10000C3E4();
    v14 = sub_100015224(v12, v13, &v37);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Resolving Recipients: %s", v10, 0xCu);
    sub_100002C00(v11);

    v1 = (v0 + 16);
  }

  v15 = *(v8 + 8);
  v15(v7, v9);
  v16 = *(v0 + 64);
  v17 = sub_100013A84(v16);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = sub_10001470C;
  *(v0 + 56) = v18;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10000243C;
  *(v0 + 40) = &unk_10001CBE8;
  v19 = _Block_copy(v1);
  v20 = v17;

  [v20 prewarmWithHandler:v19];
  _Block_release(v19);

  v21 = sub_100013A84(v16);
  LOBYTE(v19) = sub_100003470(v16);

  if (v19)
  {
    sub_10000A7EC(*(v0 + 96));
    v22 = sub_100016384();
    v23 = sub_1000164D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Attempting to announce to the same room containing self", v24, 2u);
    }

    v25 = *(v0 + 96);
    v26 = *(v0 + 80);

    v15(v25, v26);
    sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000174D0;
    *(v27 + 32) = [objc_opt_self() unsupportedForReason:2];

    v28 = *(v0 + 8);

    return v28(v27);
  }

  else
  {
    v30 = [*(v0 + 64) isReply];
    if (v30 && (v31 = v30, v32 = [v30 BOOLValue], v31, v32))
    {
      v33 = swift_task_alloc();
      *(v0 + 112) = v33;
      *v33 = v0;
      v33[1] = sub_10000D230;
      v34 = *(v0 + 64);

      return sub_10000D780(v34);
    }

    else
    {
      v35 = swift_task_alloc();
      *(v0 + 120) = v35;
      *v35 = v0;
      v35[1] = sub_10000D36C;
      v36 = *(v0 + 64);

      return sub_10000E3AC(v36);
    }
  }
}

uint64_t sub_10000D230(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000D36C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void *sub_10000D4A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100016394();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = result;
      swift_errorRetain();
      sub_10000A7EC(v9);

      swift_errorRetain();
      v12 = sub_100016384();
      v13 = sub_1000164D4();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24 = v15;
        *v14 = 136446210;
        swift_getErrorValue();
        v16 = sub_1000166E4();
        v18 = sub_100015224(v16, v17, &v24);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Prewarm Completed with Error %{public}s", v14, 0xCu);
        sub_100002C00(v15);
      }

      else
      {
      }

      return (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = result;
      sub_10000A7EC(v7);

      v20 = sub_100016384();
      v21 = sub_1000164E4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Prewarm Completed", v22, 2u);
      }

      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_10000D780(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_100016394();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_10000D858, 0, 0);
}

uint64_t sub_10000D858()
{
  v1 = [*(v0 + 256) recipients];
  if (!v1)
  {
    v10 = (v0 + 288);
    sub_10000A7EC(*(v0 + 288));
    v12 = sub_100016384();
    v13 = sub_1000164E4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Skipping Resolve Recipients for Reply without recipients";
      goto LABEL_9;
    }

LABEL_11:
    v16 = &selRef_notRequired;
    goto LABEL_12;
  }

  v2 = v1;
  sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
  v3 = sub_100016464();
  *(v0 + 312) = v3;

  v4 = sub_10000A428(v3);
  v5 = [v4 homeName];

  v6 = sub_1000163D4();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = (v0 + 296);
    v11 = *(v0 + 296);

    sub_10000A7EC(v11);
    v12 = sub_100016384();
    v13 = sub_1000164E4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Recipients contain home name. No additional resolution required.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);
      v16 = &selRef_notRequired;
LABEL_10:

LABEL_12:
      v17 = *v10;
      v18 = *(v0 + 272);
      v19 = *(v0 + 280);

      (*(v19 + 8))(v17, v18);
      sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000174D0;
      sub_10000591C(0, &qword_100021630, INSendAnnouncementRecipientResolutionResult_ptr);
      *(v20 + 32) = [swift_getObjCClassFromMetadata() *v16];

      v21 = *(v0 + 8);

      return v21(v20);
    }

    goto LABEL_11;
  }

  v23 = [*(v0 + 256) announcement];
  if (v23 && (v24 = v23, v25 = [v23 identifier], v24, v25))
  {
    v26 = sub_1000163D4();
    v28 = v27;

    *(v0 + 216) = v26;
    *(v0 + 224) = v28;
  }

  else
  {
    v33 = [objc_allocWithZone(ANLocalPlaybackSession) init];
    v34 = [v33 lastPlayedAnnouncementInfo];

    v35 = sub_1000163B4();
    *(v0 + 232) = sub_1000163D4();
    *(v0 + 240) = v36;
    sub_100016564();
    if (!*(v35 + 16) || (v37 = sub_1000136E0(v0 + 144), (v38 & 1) == 0))
    {

      sub_10001405C(v0 + 144);
      *(v0 + 216) = 0;
      *(v0 + 224) = 0;
      goto LABEL_27;
    }

    sub_100009FB4(*(v35 + 56) + 32 * v37, v0 + 184);
    sub_10001405C(v0 + 144);

    if (swift_dynamicCast())
    {
      v28 = *(v0 + 224);
    }

    else
    {
      v28 = 0;
      *(v0 + 216) = 0;
      *(v0 + 224) = 0;
    }
  }

  if (!v28)
  {
LABEL_27:
    v10 = (v0 + 304);
    v39 = *(v0 + 304);

    sub_10000A7EC(v39);
    v12 = sub_100016384();
    v40 = sub_1000164D4();
    if (!os_log_type_enabled(v12, v40))
    {
      v16 = &selRef_unsupported;
      goto LABEL_12;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v12, v40, "Contains Recipients with no announcement identifier. Unable to determine context for home.", v41, 2u);
    v16 = &selRef_unsupported;
    goto LABEL_10;
  }

  v29 = sub_100013A84(*(v0 + 256));
  *(v0 + 320) = v29;
  v30 = v29;
  v31 = sub_1000163C4();
  *(v0 + 328) = v31;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 248;
  *(v0 + 24) = sub_10000DE28;
  v32 = swift_continuation_init();
  *(v0 + 136) = sub_1000029F0(&qword_100021638, &qword_1000176D8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10000CA00;
  *(v0 + 104) = &unk_10001CC10;
  *(v0 + 112) = v32;
  [v30 announcementForID:v31 reply:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10000DE28()
{

  return _swift_task_switch(sub_10000DF08, 0, 0);
}

uint64_t sub_10000DF08()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 328);

  if (v1)
  {
    v3 = [sub_100013A84(*(v0 + 256)) contextFromAnnouncement:v1];
    if (v3)
    {
      v23 = v3;
      v4 = [v3 homeName];
      if (!v4)
      {
        sub_1000163D4();
        v4 = sub_1000163C4();
      }

      v5 = *(v0 + 312);
      v6 = [objc_allocWithZone(INSpeakableString) initWithSpokenPhrase:v4];

      LOWORD(v22) = 0;
      v7 = [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v6 zone:0 group:0 room:0 isExcludeFilter:v22 hasAllQuantifier:?];

      v8 = v7;
      sub_100016444();
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100016484();
      }

      sub_100016494();
      if (v5 >> 62)
      {
        v9 = sub_100016644();
      }

      else
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = _swiftEmptyArrayStorage;
      if (v9)
      {
        result = sub_100016604();
        if (v9 < 0)
        {
          __break(1u);
          goto LABEL_36;
        }

        v12 = objc_opt_self();
        v13 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v14 = sub_1000165B4();
          }

          else
          {
            v14 = *(v5 + 8 * v13 + 32);
          }

          v15 = v14;
          ++v13;
          v16 = [v12 successWithResolvedHomeFilter:v14];

          sub_1000165E4();
          sub_100016614();
          sub_100016624();
          sub_1000165F4();
        }

        while (v9 != v13);
        v10 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_18:
          v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
            goto LABEL_19;
          }

LABEL_33:

          goto LABEL_28;
        }
      }

      else if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_18;
      }

      v17 = sub_100016644();
      if (v17)
      {
LABEL_19:
        result = sub_100016604();
        if ((v17 & 0x8000000000000000) == 0)
        {
          v18 = 0;
          do
          {
            if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
            {
              v19 = sub_1000165B4();
            }

            else
            {
              v19 = _swiftEmptyArrayStorage[v18 + 4];
            }

            v20 = v19;
            ++v18;
            [objc_allocWithZone(INSendAnnouncementRecipientResolutionResult) initWithHomeFilterResolutionResult:v19];

            sub_1000165E4();
            sub_100016614();
            sub_100016624();
            sub_1000165F4();
          }

          while (v17 != v18);

          v10 = _swiftEmptyArrayStorage;
          goto LABEL_28;
        }

LABEL_36:
        __break(1u);
        return result;
      }

      goto LABEL_33;
    }
  }

  else
  {
  }

  sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
  v10 = swift_allocObject();
  *(v10 + 1) = xmmword_1000174D0;
  sub_10000591C(0, &qword_100021630, INSendAnnouncementRecipientResolutionResult_ptr);
  v10[4] = [swift_getObjCClassFromMetadata() unsupported];
LABEL_28:

  v21 = *(v0 + 8);

  return v21(v10);
}

uint64_t sub_10000E3AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100016394();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10000E4A8, 0, 0);
}

uint64_t sub_10000E4A8()
{
  v88 = v0;
  v1 = [*(v0 + 16) recipients];
  if (v1)
  {
    v2 = v1;
    sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
    v3 = sub_100016464();

    v4 = sub_10000A428(v3);
  }

  else
  {
    v4 = [objc_allocWithZone(ANHomeContext) init];
  }

  v5 = *(v0 + 88);
  v6 = [sub_100013A84(*(v0 + 16)) homeNamesForContext:v4];
  v7 = sub_100016464();

  sub_10000A7EC(v5);

  v8 = sub_100016384();
  v9 = sub_1000164E4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 88);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  if (v10)
  {
    v14 = v7;
    v15 = swift_slowAlloc();
    v85 = v0;
    v87[0] = swift_slowAlloc();
    v16 = v4;
    v17 = v87[0];
    *v15 = 136315138;
    v18 = sub_100016474();
    v83 = v11;
    v20 = sub_100015224(v18, v19, v87);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Found Homes: %s", v15, 0xCu);
    sub_100002C00(v17);
    v4 = v16;
    v0 = v85;

    v7 = v14;

    v21 = *(v12 + 8);
    v21(v83, v13);
  }

  else
  {

    v21 = *(v12 + 8);
    v21(v11, v13);
  }

  v22 = *(v7 + 16);
  if (v22 != 1)
  {
    if (v22)
    {
      sub_10000A7EC(*(v0 + 56));
      v39 = sub_100016384();
      v40 = sub_1000164E4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Found Multiple Homes. Need to disambiguate", v41, 2u);
      }

      v43 = *(v0 + 48);
      v42 = *(v0 + 56);
      v44 = *(v0 + 32);

      v21(v42, v44);
      v45 = v4;
      sub_10001410C(v7, v45);

      v46 = objc_opt_self();
      sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
      isa = sub_100016454().super.isa;

      v48 = [v46 disambiguationWithHomeFiltersToDisambiguate:isa];

      v49 = [objc_allocWithZone(INSendAnnouncementRecipientResolutionResult) initWithHomeFilterResolutionResult:v48];
      sub_10000A7EC(v43);
      v50 = v49;
      v51 = sub_100016384();
      v52 = sub_1000164E4();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v50;
        *v54 = v50;
        v55 = v50;
        _os_log_impl(&_mh_execute_header, v51, v52, "Disambiguation Result: %@", v53, 0xCu);
        sub_100002CBC(v54, &qword_1000214B0, &qword_1000173E0);
      }

      v56 = *(v0 + 48);
      v57 = *(v0 + 32);

      v21(v56, v57);
      sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
      v29 = swift_allocObject();
      *(v29 + 1) = xmmword_1000174D0;
      v29[4] = v50;
    }

    else
    {
      v23 = *(v0 + 80);

      sub_10000A7EC(v23);
      v24 = sub_100016384();
      v25 = sub_1000164D4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Did not find any Homes", v26, 2u);
      }

      v27 = *(v0 + 80);
      v28 = *(v0 + 32);

      v21(v27, v28);
      sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
      v29 = swift_allocObject();
      *(v29 + 1) = xmmword_1000174D0;
      v29[4] = [objc_opt_self() unsupportedForReason:1];
    }

    goto LABEL_36;
  }

  sub_10000A7EC(*(v0 + 72));
  v30 = sub_100016384();
  v31 = sub_1000164E4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Found Single Home", v32, 2u);
  }

  v84 = v4;
  v33 = *(v0 + 72);
  v34 = *(v0 + 32);
  v35 = *(v0 + 16);

  v21(v33, v34);
  v36 = [v35 recipients];
  if (v36)
  {
    v37 = v36;
    sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
    v38 = sub_100016464();
  }

  else
  {
    v87[0] = _swiftEmptyArrayStorage;
    sub_100016604();
    v58 = objc_allocWithZone(INSpeakableString);

    v59 = sub_1000163C4();
    v60 = [v58 initWithSpokenPhrase:v59];

    LOWORD(v81) = 0;
    [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v60 zone:0 group:0 room:0 isExcludeFilter:v81 hasAllQuantifier:?];

    sub_1000165E4();
    sub_100016614();
    sub_100016624();
    sub_1000165F4();

    v38 = v87[0];
  }

  sub_10000A7EC(*(v0 + 64));

  v61 = sub_100016384();
  v62 = sub_1000164E4();

  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v0 + 64);
  v65 = *(v0 + 32);
  if (v63)
  {
    v66 = swift_slowAlloc();
    v86 = v65;
    v87[0] = swift_slowAlloc();
    v67 = v87[0];
    *v66 = 136315138;
    sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
    v68 = sub_100016474();
    v82 = v21;
    v70 = sub_100015224(v68, v69, v87);

    *(v66 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Resolved Recipients: %s", v66, 0xCu);
    sub_100002C00(v67);

    v82(v64, v86);
  }

  else
  {

    v21(v64, v65);
  }

  if (v38 >> 62)
  {
    v71 = sub_100016644();
    if (v71)
    {
      goto LABEL_27;
    }

LABEL_35:

    v29 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v71 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v71)
  {
    goto LABEL_35;
  }

LABEL_27:
  v87[0] = _swiftEmptyArrayStorage;
  result = sub_100016604();
  if (v71 < 0)
  {
    __break(1u);
    return result;
  }

  v73 = objc_opt_self();
  v74 = 0;
  v75 = v38;
  v76 = v38 & 0xC000000000000001;
  do
  {
    if (v76)
    {
      v77 = sub_1000165B4();
    }

    else
    {
      v77 = *(v75 + 8 * v74 + 32);
    }

    v78 = v77;
    ++v74;
    v79 = [v73 successWithResolvedHomeFilter:v77];
    [objc_allocWithZone(INSendAnnouncementRecipientResolutionResult) initWithHomeFilterResolutionResult:v79];

    sub_1000165E4();
    sub_100016614();
    sub_100016624();
    sub_1000165F4();
  }

  while (v71 != v74);

  v29 = v87[0];
LABEL_36:

  v80 = *(v0 + 8);

  return v80(v29);
}

uint64_t sub_10000F0EC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000F1B0;

  return sub_10000CCB0(v6);
}

uint64_t sub_10000F1B0(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v8 = *v1;

  sub_10000591C(0, &qword_100021630, INSendAnnouncementRecipientResolutionResult_ptr);
  isa = sub_100016454().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10000F350(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_100016374();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  sub_1000029F0(&qword_100021340, &unk_1000173D0);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = sub_1000029F0(&qword_1000215E8, &qword_100017698);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v4 = sub_100016334();
  v2[49] = v4;
  v2[50] = *(v4 - 8);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v5 = sub_100016394();
  v2[53] = v5;
  v2[54] = *(v5 - 8);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();

  return _swift_task_switch(sub_10000F638, 0, 0);
}

uint64_t sub_10000F638()
{
  v117 = v0;
  v1 = *(v0 + 280);
  sub_10000A7EC(*(v0 + 552));
  v2 = v1;
  v3 = sub_100016384();
  v4 = sub_1000164E4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 552);
  v7 = *(v0 + 424);
  v8 = *(v0 + 432);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v116[0] = v10;
    *v9 = 136315138;
    v11 = sub_10000C3E4();
    v13 = sub_100015224(v11, v12, v116);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received Send Announcement Intent: %s", v9, 0xCu);
    sub_100002C00(v10);
  }

  v14 = *(v8 + 8);
  v14(v6, v7);
  *(v0 + 560) = v14;
  v15 = [*(v0 + 280) announcement];
  if (!v15)
  {
    (*(*(v0 + 400) + 56))(*(v0 + 384), 1, 1, *(v0 + 392));
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v15 speechDataURL];

  if (v17)
  {
    sub_100016324();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(v0 + 392);
  v20 = *(v0 + 400);
  v22 = *(v0 + 376);
  v21 = *(v0 + 384);
  v23 = *(v20 + 56);
  v23(v22, v18, 1, v19);
  sub_100012C08(v22, v21);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
LABEL_9:
    v24 = *(v0 + 448);
    sub_100002CBC(*(v0 + 384), &qword_1000215E8, &qword_100017698);
    sub_10000A7EC(v24);
    v25 = sub_100016384();
    v26 = sub_1000164D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No speech data URL", v27, 2u);
    }

    v28 = *(v0 + 448);
    v29 = *(v0 + 424);

    v14(v28, v29);
    v114 = [objc_allocWithZone(INSendAnnouncementIntentResponse) initWithCode:4 userActivity:0];

    v53 = *(v0 + 8);

    return v53(v114);
  }

  v115 = v14;
  v30 = *(v0 + 408);
  v31 = *(v0 + 416);
  v32 = *(v0 + 392);
  v33 = *(v0 + 400);
  (*(v33 + 32))(v31, *(v0 + 384), v32);
  (*(v33 + 16))(v30, v31, v32);
  v34 = objc_allocWithZone(AVAudioFile);
  v35 = sub_100012A38(v30);
  v36 = *(v0 + 544);
  v37 = *(v0 + 280);
  v38 = v35;
  v39 = [v35 length];
  v40 = [v38 processingFormat];
  [v40 sampleRate];
  v42 = v41;

  sub_10000A7EC(v36);
  v43 = v37;
  v44 = sub_100016384();
  v45 = sub_1000164E4();

  if (os_log_type_enabled(v44, v45))
  {
    v113 = v39;
    v46 = *(v0 + 280);
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v116[0] = v48;
    *v47 = 136315138;
    v49 = [v46 announcement];
    if (v49)
    {
      v50 = v49;
      v51 = [v49 speechDataURL];

      if (v51)
      {
        sub_100016324();

        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      v58 = *(v0 + 360);
      v57 = *(v0 + 368);
      v23(v58, v52, 1, *(v0 + 392));
      sub_100012C08(v58, v57);
    }

    else
    {
      v23(*(v0 + 368), 1, 1, *(v0 + 392));
    }

    v59 = *(v0 + 544);
    v60 = *(v0 + 424);
    v61 = sub_1000163E4();
    v63 = sub_100015224(v61, v62, v116);

    *(v47 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v44, v45, "Speech Data URL: %s", v47, 0xCu);
    sub_100002C00(v48);

    v115(v59, v60);
    v39 = v113;
  }

  else
  {
    v55 = *(v0 + 544);
    v56 = *(v0 + 424);

    v115(v55, v56);
  }

  sub_10000A7EC(*(v0 + 528));
  v64 = sub_100016384();
  v65 = sub_1000164E4();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    *(v66 + 4) = v39 / v42;
    _os_log_impl(&_mh_execute_header, v64, v65, "Speech Data Length: %f", v66, 0xCu);
  }

  v67 = *(v0 + 528);
  v68 = *(v0 + 520);
  v69 = *(v0 + 424);
  v70 = *(v0 + 432);
  v71 = *(v0 + 280);

  *(v0 + 568) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v72 = v115;
  v115(v67, v69);
  sub_10000A7EC(v68);
  v73 = v71;
  v74 = sub_100016384();
  v75 = sub_1000164E4();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = *(v0 + 280);
    v77 = swift_slowAlloc();
    *v77 = 67109120;
    v78 = [v76 announcement];
    if (v78)
    {
      v79 = v78;
      v80 = [v78 speechDataTranscription];

      if (v80)
      {

        v81 = 1;
      }

      else
      {
        v81 = 0;
      }

      v72 = v115;
    }

    else
    {
      v81 = 0;
    }

    v83 = *(v0 + 280);
    *(v77 + 4) = v81;

    _os_log_impl(&_mh_execute_header, v74, v75, "Transcription: %{BOOL}d", v77, 8u);

    v82 = *(v0 + 280);
  }

  else
  {

    v82 = *(v0 + 280);
    v74 = v82;
  }

  v84 = *(v0 + 520);
  v85 = *(v0 + 424);

  v72(v84, v85);
  sub_100016314(v86);
  v88 = v87;
  v89 = [objc_opt_self() contentWithAudioFileURL:v87];
  *(v0 + 576) = v89;

  v90 = [v82 announcement];
  if (!v90 || (v91 = v90, v92 = [v90 speechDataTranscription], v91, !v92))
  {
    v92 = 0;
  }

  v93 = *(v0 + 280);
  [v89 setTranscription:v92];

  v94 = [v93 _metadata];
  if (v94)
  {
    v95 = v94;
    v96 = [v94 endpointId];

    if (v96)
    {
      v97 = *(v0 + 344);
      v98 = *(v0 + 296);
      v99 = *(v0 + 304);
      sub_1000163D4();

      sub_100016344();

      if ((*(v99 + 48))(v97, 1, v98) == 1)
      {
        isa = 0;
      }

      else
      {
        v101 = *(v0 + 344);
        v102 = *(v0 + 296);
        v103 = *(v0 + 304);
        isa = sub_100016354().super.isa;
        (*(v103 + 8))(v101, v102);
      }

      [v89 setEndpointIdentifier:isa];
    }
  }

  v104 = [*(v0 + 280) sharedUserID];
  if (v104)
  {
    v105 = v104;
    sub_1000163D4();
    v107 = v106;
  }

  else
  {
    v107 = 0;
  }

  *(v0 + 584) = v107;
  v108 = [v89 endpointIdentifier];
  if (v108)
  {
    v109 = v108;
    sub_100016364();

    v110 = 0;
  }

  else
  {
    v110 = 1;
  }

  (*(*(v0 + 304) + 56))(*(v0 + 328), v110, 1, *(v0 + 296));
  v111 = swift_task_alloc();
  *(v0 + 592) = v111;
  *v111 = v0;
  v111[1] = sub_100010344;
  v112 = *(v0 + 336);

  return sub_100003884(v112);
}

uint64_t sub_100010344()
{
  v1 = *(*v0 + 328);

  sub_100002CBC(v1, &qword_100021340, &unk_1000173D0);

  return _swift_task_switch(sub_100010488, 0, 0);
}

uint64_t sub_100010488()
{
  v157 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100002CBC(v1, &qword_100021340, &unk_1000173D0);
  }

  else
  {
    v4 = *(v0 + 512);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    (*(v3 + 32))(v5, v1, v2);
    sub_10000A7EC(v4);
    (*(v3 + 16))(v6, v5, v2);
    v7 = sub_100016384();
    v8 = sub_1000164E4();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 560);
    v11 = *(v0 + 512);
    v12 = *(v0 + 424);
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 296);
    if (v9)
    {
      v153 = *(v0 + 512);
      v16 = swift_slowAlloc();
      v149 = v10;
      v146 = swift_slowAlloc();
      v156 = v146;
      *v16 = 136315138;
      sub_100013F60();
      v148 = v12;
      v17 = sub_100016684();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = v20;
      v22 = sub_100015224(v17, v19, &v156);

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v7, v8, "MU HMUser ID: %s", v16, 0xCu);
      sub_100002C00(v146);

      v149(v153, v148);
    }

    else
    {

      v23 = *(v14 + 8);
      v23(v13, v15);
      v21 = v23;
      v10(v11, v12);
    }

    v24 = *(v0 + 576);
    v25 = *(v0 + 320);
    v26 = *(v0 + 296);
    isa = sub_100016354().super.isa;
    [v24 setHomeKitUserIdentifier:isa];

    v21(v25, v26);
  }

  v28 = [*(v0 + 280) isReply];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 BOOLValue];

    if (v30)
    {
      v31 = [*(v0 + 280) recipients];
      if (!v31)
      {
        v68 = [*(v0 + 280) announcement];
        if (!v68 || (v69 = v68, v70 = [v68 identifier], v69, !v70))
        {
          v70 = 0;
        }

        v71 = *(v0 + 280);
        v72 = [objc_opt_self() destinationWithReplyToAnnouncementIdentifier:v70];

        v73 = v72;
        v74 = [v71 announcement];
        if (v74)
        {
          v75 = v74;
          v76 = [v74 identifier];

          if (v76)
          {
            v77 = sub_1000163D4();
            v79 = v78;

            v80 = HIBYTE(v79) & 0xF;
            if ((v79 & 0x2000000000000000) == 0)
            {
              v80 = v77 & 0xFFFFFFFFFFFFLL;
            }

            if (v80)
            {
              sub_10000A7EC(*(v0 + 504));

              v81 = sub_100016384();
              v82 = sub_1000164E4();

              v83 = os_log_type_enabled(v81, v82);
              v84 = *(v0 + 560);
              v85 = *(v0 + 504);
              v86 = *(v0 + 424);
              if (v83)
              {
                v87 = swift_slowAlloc();
                v151 = v84;
                v88 = swift_slowAlloc();
                v156 = v88;
                *v87 = 136315138;
                v89 = sub_100015224(v77, v79, &v156);

                *(v87 + 4) = v89;
                _os_log_impl(&_mh_execute_header, v81, v82, "Sending Reply to Announcement: %s", v87, 0xCu);
                sub_100002C00(v88);

                v151(v85, v86);
              }

              else
              {

                v84(v85, v86);
              }

              goto LABEL_47;
            }
          }
        }

        sub_10000A7EC(*(v0 + 496));
        v139 = sub_100016384();
        v140 = sub_1000164E4();
        v141 = os_log_type_enabled(v139, v140);
        v142 = *(v0 + 560);
        v143 = *(v0 + 496);
        v144 = *(v0 + 424);
        if (v141)
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&_mh_execute_header, v139, v140, "Sending Reply to latest Announcement", v145, 2u);
        }

        v142(v143, v144);
        goto LABEL_47;
      }

      v32 = v31;
      sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
      v33 = sub_100016464();

      v34 = sub_10000A428(v33);

      v35 = [v34 homeName];
      if (!v35)
      {
        sub_1000163D4();
        v35 = sub_1000163C4();
      }

      v36 = [v34 zoneNames];
      if (!v36)
      {
        sub_100016464();
        v36 = sub_100016454().super.isa;
      }

      v37 = [v34 roomNames];
      if (!v37)
      {
        sub_100016464();
        v37 = sub_100016454().super.isa;
      }

LABEL_46:
      v91 = [objc_opt_self() destinationWithHomeName:v35 zoneNames:v36 roomNames:v37];

      v73 = v91;
LABEL_47:
      *(v0 + 600) = v73;
      v92 = [objc_opt_self() requestWithContent:*(v0 + 576) destination:v73];
      *(v0 + 608) = v92;
      v93 = [v73 type];

      if (!v93)
      {
        v94 = [v73 roomObjects];
        v95 = sub_100016464();

        v96 = *(v95 + 16);

        if (v96 || (v97 = [v73 zoneObjects], v98 = sub_100016464(), v97, v99 = *(v98 + 16), , v99))
        {
          sub_10000A7EC(*(v0 + 480));
          v100 = v73;
          v101 = sub_100016384();
          v102 = sub_1000164E4();
          v103 = os_log_type_enabled(v101, v102);
          v104 = *(v0 + 560);
          v105 = *(v0 + 480);
          v106 = *(v0 + 424);
          if (v103)
          {
            v155 = *(v0 + 480);
            v107 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            *v107 = 134349826;
            v108 = [v100 roomObjects];
            v109 = sub_100016464();

            v147 = v104;
            v110 = *(v109 + 16);

            *(v107 + 4) = v110;

            *(v107 + 12) = 2080;
            v111 = [v100 roomObjects];
            sub_100016464();

            v112 = sub_100016474();
            v114 = v113;

            v115 = sub_100015224(v112, v114, &v156);

            *(v107 + 14) = v115;
            *(v107 + 22) = 2050;
            v116 = [v100 zoneObjects];
            v117 = sub_100016464();

            v118 = *(v117 + 16);

            *(v107 + 24) = v118;
            *(v107 + 32) = 2080;
            v119 = [v100 zoneObjects];
            sub_100016464();

            v120 = sub_100016474();
            v122 = v121;

            v123 = sub_100015224(v120, v122, &v156);

            *(v107 + 34) = v123;
            _os_log_impl(&_mh_execute_header, v101, v102, "Sending Announcement to Rooms (%{public}ld) = %s, Zones (%{public}ld) = %s ", v107, 0x2Au);
            swift_arrayDestroy();

            v147(v155, v106);
          }

          else
          {

            v104(v105, v106);
          }
        }

        else
        {
          sub_10000A7EC(*(v0 + 472));
          v126 = v73;
          v127 = sub_100016384();
          v128 = sub_1000164E4();

          v129 = os_log_type_enabled(v127, v128);
          v130 = *(v0 + 560);
          v131 = *(v0 + 472);
          v132 = *(v0 + 424);
          if (v129)
          {
            v133 = swift_slowAlloc();
            v152 = v130;
            v134 = swift_slowAlloc();
            v156 = v134;
            *v133 = 136315138;
            v135 = [v126 homeObject];
            sub_100016524();
            swift_unknownObjectRelease();
            v136 = sub_1000163E4();
            v138 = sub_100015224(v136, v137, &v156);

            *(v133 + 4) = v138;
            _os_log_impl(&_mh_execute_header, v127, v128, "[No Room or Zone Names] Sending Announcement to %s", v133, 0xCu);
            sub_100002C00(v134);

            v152(v131, v132);
          }

          else
          {

            v130(v131, v132);
          }
        }
      }

      v124 = sub_100013A84(*(v0 + 280));
      *(v0 + 616) = v124;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 256;
      *(v0 + 24) = sub_1000116DC;
      v125 = swift_continuation_init();
      *(v0 + 136) = sub_1000029F0(&unk_1000215F0, &unk_1000176A0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100012124;
      *(v0 + 104) = &unk_10001CB98;
      *(v0 + 112) = v125;
      [v124 sendRequest:v92 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  v38 = *(v0 + 280);
  v39 = sub_100013A84(v38);
  v40 = [v38 recipients];
  if (v40)
  {
    v41 = v40;
    sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
    v42 = sub_100016464();

    v43 = sub_10000A428(v42);
  }

  else
  {
    v43 = [objc_allocWithZone(ANHomeContext) init];
  }

  v44 = [v39 homeNamesForContext:v43];

  v45 = sub_100016464();
  if (*(v45 + 16) == 1)
  {
    v46 = *(v0 + 280);

    v47 = [v46 recipients];
    if (v47)
    {
      v48 = v47;
      sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
      v49 = sub_100016464();

      v34 = sub_10000A428(v49);
    }

    else
    {
      v34 = [objc_allocWithZone(ANHomeContext) init];
    }

    v90 = sub_1000163C4();

    [v34 setHomeName:v90];

    v35 = [v34 homeName];
    if (!v35)
    {
      sub_1000163D4();
      v35 = sub_1000163C4();
    }

    v36 = [v34 zoneNames];
    if (!v36)
    {
      sub_100016464();
      v36 = sub_100016454().super.isa;
    }

    v37 = [v34 roomNames];
    if (!v37)
    {
      sub_100016464();
      v37 = sub_100016454().super.isa;
    }

    goto LABEL_46;
  }

  sub_10000A7EC(*(v0 + 488));

  v50 = sub_100016384();
  v51 = sub_1000164D4();

  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 560);
  v54 = *(v0 + 488);
  v55 = *(v0 + 424);
  if (v52)
  {
    v56 = swift_slowAlloc();
    v150 = v53;
    v57 = swift_slowAlloc();
    v156 = v57;
    *v56 = 136315138;
    v58 = sub_100016474();
    v60 = v59;

    v61 = sub_100015224(v58, v60, &v156);

    *(v56 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v50, v51, "Did not find exactly one home for recipients: %s", v56, 0xCu);
    sub_100002C00(v57);

    v150(v54, v55);
  }

  else
  {

    v53(v54, v55);
  }

  v62 = *(v0 + 576);
  v63 = *(v0 + 416);
  v64 = *(v0 + 392);
  v65 = *(v0 + 400);
  v154 = [objc_allocWithZone(INSendAnnouncementIntentResponse) initWithCode:4 userActivity:0];

  (*(v65 + 8))(v63, v64);

  v66 = *(v0 + 8);

  return v66(v154);
}

uint64_t sub_1000116DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 624) = v1;
  if (v1)
  {
    v2 = sub_100011D84;
  }

  else
  {
    v2 = sub_1000117EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000117EC()
{
  v52 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 256);

  sub_10000A7EC(v1);
  v3 = v2;
  v4 = sub_100016384();
  v5 = sub_1000164E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 560);
  v8 = *(v0 + 464);
  v50 = v0;
  v9 = *(v0 + 424);
  v46 = v3;
  if (v6)
  {
    v10 = swift_slowAlloc();
    v47 = v7;
    v11 = swift_slowAlloc();
    v51 = v11;
    *v10 = 136315138;
    v12 = v8;
    v13 = v3;
    v14 = [v13 description];
    v15 = sub_1000163D4();
    v17 = v16;

    v18 = sub_100015224(v15, v17, &v51);

    *(v10 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Announcement sent successfully! Result = %s", v10, 0xCu);
    sub_100002C00(v11);
    v3 = v46;

    v47(v12, v9);
  }

  else
  {

    v7(v8, v9);
  }

  v45 = [objc_allocWithZone(INSendAnnouncementIntentResponse) initWithCode:3 userActivity:0];
  v19 = [v3 destination];
  v20 = sub_1000121FC();

  if (v20 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100016644())
  {
    v22 = 0;
    v48 = v20 & 0xFFFFFFFFFFFFFF8;
    v49 = v20 & 0xC000000000000001;
    while (1)
    {
      if (v49)
      {
        v26 = sub_1000165B4();
      }

      else
      {
        if (v22 >= *(v48 + 16))
        {
          goto LABEL_16;
        }

        v26 = *(v20 + 8 * v22 + 32);
      }

      v27 = v26;
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v29 = v20;
      sub_10000A7EC(v50[57]);
      v30 = v27;
      v31 = sub_100016384();
      v32 = sub_1000164E4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        *(v33 + 4) = v30;
        *v34 = v30;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v31, v32, "Intent Response Announcement Record: %@", v33, 0xCu);
        sub_100002CBC(v34, &qword_1000214B0, &qword_1000173E0);
      }

      v23 = v50[70];
      v24 = v50[57];
      v25 = v50[53];

      v23(v24, v25);
      ++v22;
      v20 = v29;
      if (v28 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v36 = v50[76];
  v37 = v50[75];
  v38 = v50[72];
  v39 = v50[52];
  v40 = v50[49];
  v41 = v50[50];
  sub_10000591C(0, &qword_1000210F0, INAnnouncementRecord_ptr);
  isa = sub_100016454().super.isa;

  [v45 setSentAnnouncements:isa];

  (*(v41 + 8))(v39, v40);

  v43 = v50[1];

  return v43(v45);
}

uint64_t sub_100011D84()
{
  v27 = v0;
  v1 = v0[77];
  v2 = v0[55];
  swift_willThrow();

  swift_getErrorValue();
  v3 = sub_100002E28(v0[26], v0[27]);
  sub_10000A7EC(v2);
  swift_errorRetain();
  v4 = sub_100016384();
  v5 = sub_1000164D4();

  if (os_log_type_enabled(v4, v5))
  {
    v24 = v0[70];
    v6 = v0[55];
    v7 = v0[53];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136446466;
    swift_getErrorValue();
    v10 = sub_1000166E4();
    v12 = sub_100015224(v10, v11, &v26);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2050;
    *(v8 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Send Announcement failed with error: %{public}s, Intent Response Code: %{public}ld", v8, 0x16u);
    sub_100002C00(v9);

    v24(v6, v7);
  }

  else
  {
    v13 = v0[70];
    v14 = v0[55];
    v15 = v0[53];

    v13(v14, v15);
  }

  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[72];
  v19 = v0[52];
  v20 = v0[49];
  v21 = v0[50];
  v25 = [objc_allocWithZone(INSendAnnouncementIntentResponse) initWithCode:v3 userActivity:0];

  (*(v21 + 8))(v19, v20);

  v22 = v0[1];

  return v22(v25);
}

uint64_t sub_100012124(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000058D8((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000029F0(&unk_100021620, &qword_1000177F0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void *sub_1000121FC()
{
  v1 = [v0 type];
  result = _swiftEmptyArrayStorage;
  if (v1)
  {
    return result;
  }

  v3 = [v0 homeObject];
  sub_100016524();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = [v0 roomObjects];
  v5 = sub_100016464();

  v6 = sub_100012898(v5);

  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = [v0 zoneObjects];
  v8 = sub_100016464();

  v9 = sub_100012898(v8);

  if (!v9)
  {

    goto LABEL_19;
  }

  if (!v6[2] && !v9[2])
  {

    v15 = objc_allocWithZone(INSpeakableString);
    v16 = sub_1000163C4();

    v17 = [v15 initWithSpokenPhrase:v16];

    LOWORD(v20) = 0;
    v18 = [objc_allocWithZone(INHomeFilter) initWithEntityIdentifiers:0 entityName:0 entityType:1 outerDeviceType:37 outerDeviceName:0 deviceType:37 home:v17 zone:0 group:0 room:0 isExcludeFilter:v20 hasAllQuantifier:?];

    sub_1000029F0(&qword_1000213D0, &qword_1000176C0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000174D0;
    *(v19 + 32) = [objc_allocWithZone(INAnnouncementRecord) initWithOriginator:v18 identifier:0 duration:0];

    return v19;
  }

  sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
  v10 = sub_100005964(0, 0, v6, v9);

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  v11 = sub_100016644();
  if (!v11)
  {
LABEL_19:

    return _swiftEmptyArrayStorage;
  }

LABEL_9:
  result = sub_100016604();
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_1000165B4();
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      [objc_allocWithZone(INAnnouncementRecord) initWithOriginator:v13 identifier:0 duration:0];

      sub_1000165E4();
      sub_100016614();
      sub_100016624();
      sub_1000165F4();
    }

    while (v11 != v12);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_100012738(uint64_t a1)
{
  sub_100004B04(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000127D4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000A404;

  return sub_10000F350(v6);
}

void *sub_100012898(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10001353C(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100009FB4(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10001353C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1000129B0(char *a1)
{
  v2 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce;
  v3 = *&a1[OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce];
  v4 = a1;
  if (v3)
  {
    [v3 setDelegate:0];
    v5 = *&a1[v2];
  }

  else
  {
    v5 = 0;
  }

  *&a1[v2] = 0;
}

id sub_100012A38(uint64_t a1)
{
  v2 = v1;
  sub_100016314(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initForReading:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_100016334();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_100016304();

    swift_willThrow();
    v12 = sub_100016334();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

void *sub_100012B84(uint64_t a1, uint64_t a2)
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

  sub_1000029F0(&unk_100021610, &unk_100017578);
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

uint64_t sub_100012C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000029F0(&qword_1000215E8, &qword_100017698);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012C78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000166F4();
  sub_100016404();
  v8 = sub_100016704();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000166B4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100013028(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100012DC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000029F0(&qword_100021608, &unk_1000176B0);
  result = sub_100016584();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1000166F4();
      sub_100016404();
      result = sub_100016704();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100013028(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100012DC8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000131A8();
      goto LABEL_16;
    }

    sub_100013304(v8 + 1);
  }

  v10 = *v4;
  sub_1000166F4();
  sub_100016404();
  result = sub_100016704();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000166B4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000166C4();
  __break(1u);
  return result;
}

void *sub_1000131A8()
{
  v1 = v0;
  sub_1000029F0(&qword_100021608, &unk_1000176B0);
  v2 = *v0;
  v3 = sub_100016574();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

uint64_t sub_100013304(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000029F0(&qword_100021608, &unk_1000176B0);
  result = sub_100016584();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1000166F4();

      sub_100016404();
      result = sub_100016704();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_10001353C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001355C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001355C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000029F0(&unk_100021610, &unk_100017578);
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

unint64_t sub_100013668(uint64_t a1, uint64_t a2)
{
  sub_1000166F4();
  sub_100016404();
  v4 = sub_100016704();

  return sub_100013724(a1, a2, v4);
}

unint64_t sub_1000136E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100016544(*(v2 + 40));

  return sub_1000137DC(a1, v4);
}

unint64_t sub_100013724(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000166B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000137DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000140B0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100016554();
      sub_10001405C(v8);
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

void (*sub_1000138A4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000165B4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100013924;
  }

  __break(1u);
  return result;
}

void *sub_10001392C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_100013A84(void *a1)
{
  v2 = v1;
  v4 = sub_1000029F0(&qword_100021340, &unk_1000173D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = sub_100016394();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce;
  result = *(v1 + OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce);
  if (result)
  {
    return result;
  }

  sub_10000A7EC(v13);
  v16 = a1;
  v17 = sub_100016384();
  v18 = sub_1000164E4();

  v46 = v18;
  if (!os_log_type_enabled(v17, v18))
  {

    (*(v11 + 8))(v13, v10);
    goto LABEL_10;
  }

  v42 = v17;
  v19 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v49 = v41;
  v43 = v19;
  v44 = v16;
  *v19 = 136315138;
  v20 = [v16 _metadata];
  v21 = v20;
  v45 = v9;
  if (!v20)
  {
    goto LABEL_8;
  }

  v22 = [v20 endpointId];

  if (!v22)
  {
    v21 = 0;
LABEL_8:
    v24 = 0;
    goto LABEL_9;
  }

  v21 = sub_1000163D4();
  v24 = v23;

LABEL_9:
  v47 = v21;
  v48 = v24;
  sub_1000029F0(&unk_1000210E0, &qword_100017570);
  v25 = sub_1000163E4();
  v27 = sub_100015224(v25, v26, &v49);

  v29 = v42;
  v28 = v43;
  *(v43 + 1) = v27;
  _os_log_impl(&_mh_execute_header, v29, v46, "EndpointID = %s", v28, 0xCu);
  sub_100002C00(v41);

  (*(v11 + 8))(v13, v10);
  v16 = v44;
  v9 = v45;
LABEL_10:
  v30 = [v16 _metadata];
  if (v30 && (v31 = v30, v32 = [v30 endpointId], v31, v32))
  {
    sub_1000163D4();

    sub_100016344();
  }

  else
  {
    v33 = sub_100016374();
    (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
  }

  sub_100005174(v9, v7, &qword_100021340, &unk_1000173D0);
  v34 = sub_100016374();
  v35 = *(v34 - 8);
  isa = 0;
  if ((*(v35 + 48))(v7, 1, v34) != 1)
  {
    isa = sub_100016354().super.isa;
    (*(v35 + 8))(v7, v34);
  }

  v37 = [objc_allocWithZone(ANAnnounce) initWithEndpointIdentifier:isa];

  v38 = *(v2 + v14);
  *(v2 + v14) = v37;
  v39 = v37;

  if (v39)
  {
    [v39 setDelegate:v2];
  }

  sub_100002CBC(v9, &qword_100021340, &unk_1000173D0);
  result = *(v2 + v14);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100013F60()
{
  result = qword_100021600;
  if (!qword_100021600)
  {
    sub_100016374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021600);
  }

  return result;
}

uint64_t *sub_100013FB8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100014024()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001410C(uint64_t a1, void *a2)
{
  v36 = *(a1 + 16);
  if (!v36)
  {
    return _swiftEmptyArrayStorage;
  }

  v35 = a1 + 32;
  sub_10000591C(0, &qword_100021280, INHomeFilter_ptr);
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v40 = v2;
    v6 = (v35 + 16 * v2);
    v8 = *v6;
    v7 = v6[1];

    v9 = [a2 roomNames];
    v10 = sub_100016464();

    v11 = [a2 zoneNames];
    v12 = sub_100016464();

    v13 = sub_100005964(v8, v7, v10, v12);

    v14 = v13;

    v15 = v13 >> 62;
    if (v13 >> 62)
    {
      v16 = sub_100016644();
    }

    else
    {
      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v3 >> 62;
    if (v3 >> 62)
    {
      v33 = sub_100016644();
      v19 = v33 + v16;
      if (__OFADD__(v33, v16))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v17)
      {
        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v19 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_100016644();
      goto LABEL_15;
    }

    if (v17)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1000165C4();
    v3 = result;
    v20 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v15)
    {
      break;
    }

    v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v22 >> 1) - v21) < v16)
    {
      goto LABEL_36;
    }

    v38 = v3;
    v24 = v20 + 8 * v21 + 32;
    v34 = v20;
    if (v15)
    {
      if (v23 < 1)
      {
        goto LABEL_38;
      }

      sub_1000062C4();
      for (i = 0; i != v23; ++i)
      {
        sub_1000029F0(&unk_100021640, &unk_1000176E0);
        v26 = sub_1000138A4(v39, i, v14);
        v28 = v14;
        v29 = *v27;
        (v26)(v39, 0);
        *(v24 + 8 * i) = v29;
        v14 = v28;
      }
    }

    else
    {
      swift_arrayInitWithCopy();
    }

    v3 = v38;
    v5 = v40;
    if (v16 >= 1)
    {
      v30 = *(v34 + 16);
      v31 = __OFADD__(v30, v16);
      v32 = v30 + v16;
      if (v31)
      {
        goto LABEL_37;
      }

      *(v34 + 16) = v32;
    }

LABEL_4:
    v2 = v5 + 1;
    if (v2 == v36)
    {
      return v3;
    }
  }

  result = sub_100016644();
  v23 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  v5 = v40;
  if (v16 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100014494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000144B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000A41C;

  return sub_1000127D4(v2, v3, v4);
}

uint64_t sub_100014568()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000A41C;

  return sub_10000F0EC(v2, v3, v4);
}

uint64_t sub_10001461C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008874;

  return sub_10000CBEC(v2, v3, v4);
}

uint64_t sub_100014710(uint64_t a1, void *a2)
{
  v3 = sub_1000058D8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000029F0(&unk_100021620, &qword_1000177F0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100014944(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000095E0;

  return sub_1000157CC(v6);
}

id sub_100014A58(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayAnnouncementSoundIntentHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100014AB0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014AF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008874;

  return sub_100014944(v2, v3, v4);
}

uint64_t sub_100014BAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000A41C;

  return v6();
}

uint64_t sub_100014C98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100008874;

  return v7();
}

uint64_t sub_100014D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100005174(a3, v23 - v10, &unk_100021660, &qword_1000176F0);
  v12 = sub_1000164C4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100002CBC(v11, &unk_100021660, &qword_1000176F0);
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

  sub_1000164B4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1000164A4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1000163F4() + 32;
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

    sub_100002CBC(a3, &unk_100021660, &qword_1000176F0);

    return v21;
  }

LABEL_8:
  sub_100002CBC(a3, &unk_100021660, &qword_1000176F0);
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

uint64_t sub_10001507C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000150B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A41C;

  return sub_1000099F4(a1, v4);
}

uint64_t sub_10001516C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008874;

  return sub_1000099F4(a1, v4);
}

unint64_t sub_100015224(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000152F0(v11, 0, 0, 1, a1, a2);
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
    sub_100009FB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002C00(v11);
  return v7;
}

unint64_t sub_1000152F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000153FC(a5, a6);
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
    result = sub_1000165D4();
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

void *sub_1000153FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100015448(a1, a2);
  sub_100015578(&off_10001C920);
  return v3;
}

void *sub_100015448(uint64_t a1, unint64_t a2)
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

  v6 = sub_100015664(v5, 0);
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

  result = sub_1000165D4();
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
        v10 = sub_100016434();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100015664(v10, 0);
        result = sub_100016594();
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

uint64_t sub_100015578(uint64_t result)
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

  result = sub_1000156D8(result, v11, 1, v3);
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

void *sub_100015664(uint64_t a1, uint64_t a2)
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

  sub_1000029F0(&qword_1000216F8, &qword_1000177E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000156D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000029F0(&qword_1000216F8, &qword_1000177E8);
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

uint64_t sub_1000157CC(uint64_t a1)
{
  v1[22] = a1;
  sub_1000029F0(&qword_100021340, &unk_1000173D0);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v2 = sub_100016394();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000158DC, 0, 0);
}

uint64_t sub_1000158DC()
{
  if (qword_100020FA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = qword_100021A18;
  sub_1000163A4();
  v3 = v1;
  v4 = sub_100016384();
  v5 = sub_1000164E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received Play Announcement Sound Intent: %@", v7, 0xCu);
    sub_100002CBC(v8, &qword_1000214B0, &qword_1000173E0);
  }

  v10 = *(v0 + 176);

  if ([v10 soundType] == 1)
  {
    v11 = *(v0 + 200);
    v12 = *(v0 + 176);
    v13 = [objc_allocWithZone(ANTonePlayerService) init];
    *(v0 + 232) = v13;
    v14 = sub_100016374();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v11, 1, 1, v14);
    v16 = [v12 _metadata];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 endpointId];

      if (v18)
      {
        v20 = *(v0 + 192);
        v19 = *(v0 + 200);
        sub_1000163D4();

        sub_100016344();

        sub_100002CBC(v19, &qword_100021340, &unk_1000173D0);
        sub_100002C4C(v20, v19);
      }
    }

    v21 = [*(v0 + 176) audioSessionID];
    v22 = sub_100016384();
    v23 = sub_1000164E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "Siri Audio Session ID: %u", v24, 8u);
    }

    v25 = *(v0 + 200);
    v26 = *(v0 + 184);

    sub_100005174(v25, v26, &qword_100021340, &unk_1000173D0);
    if ((*(v15 + 48))(v26, 1, v14) == 1)
    {
      isa = 0;
    }

    else
    {
      v33 = *(v0 + 184);
      isa = sub_100016354().super.isa;
      (*(v15 + 8))(v33, v14);
    }

    *(v0 + 240) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100015EA8;
    v34 = swift_continuation_init();
    *(v0 + 136) = sub_1000029F0(&qword_1000214B8, &unk_1000175A0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100014710;
    *(v0 + 104) = &unk_10001CEB8;
    *(v0 + 112) = v34;
    [v13 playTone:0 audioSessionID:v21 endpointUUID:isa completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v28 = *(v0 + 176);
    v29 = sub_100016384();
    v30 = sub_1000164D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 176);
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = [v31 soundType];

      _os_log_impl(&_mh_execute_header, v29, v30, "Unsupported Sound Type: %ld", v32, 0xCu);
    }

    else
    {

      v29 = *(v0 + 176);
    }

    v36 = *(v0 + 216);
    v35 = *(v0 + 224);
    v37 = *(v0 + 208);

    v38 = [objc_allocWithZone(INPlayAnnouncementSoundIntentResponse) initWithCode:4 userActivity:0];
    (*(v36 + 8))(v35, v37);

    v39 = *(v0 + 8);

    return v39(v38);
  }
}

uint64_t sub_100015EA8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1000160B8;
  }

  else
  {
    v2 = sub_100015FB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100015FB8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = [objc_allocWithZone(INPlayAnnouncementSoundIntentResponse) initWithCode:3 userActivity:0];

  sub_100002CBC(v5, &qword_100021340, &unk_1000173D0);
  (*(v4 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1000160B8()
{
  v18 = v0;
  v1 = v0[30];
  swift_willThrow();

  swift_errorRetain();
  v2 = sub_100016384();
  v3 = sub_1000164D4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_1000166E4();
    v8 = sub_100015224(v6, v7, &v17);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to Play Announcement Sound: %s", v4, 0xCu);
    sub_100002C00(v5);
  }

  else
  {
  }

  v9 = v0[28];
  v10 = v0[29];
  v11 = v0[26];
  v12 = v0[27];
  v13 = v0[25];
  v14 = [objc_allocWithZone(INPlayAnnouncementSoundIntentResponse) initWithCode:3 userActivity:0];

  sub_100002CBC(v13, &qword_100021340, &unk_1000173D0);
  (*(v12 + 8))(v9, v11);

  v15 = v0[1];

  return v15(v14);
}