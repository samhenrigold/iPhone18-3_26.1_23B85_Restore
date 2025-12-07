uint64_t sub_100035D78@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v114 = a4;
  v105 = a3;
  v123 = a5;
  v109 = type metadata accessor for Logger();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003020(&qword_1000A4308, &qword_100081338);
  __chkstk_darwin(v8 - 8);
  v113 = &v98 - v9;
  v10 = type metadata accessor for IncomingMessageEntity();
  v111 = *(v10 - 8);
  v112 = v10;
  v11 = __chkstk_darwin(v10);
  v106 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v98 - v13;
  v14 = type metadata accessor for SevereNotificationEntity.NotificationKind();
  v116 = *(v14 - 8);
  v117 = v14;
  __chkstk_darwin(v14);
  v118 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003020(&qword_1000A4310, &unk_100081340);
  __chkstk_darwin(v16 - 8);
  v115 = &v98 - v17;
  v119 = type metadata accessor for SevereNotificationEntity();
  v18 = *(v119 - 8);
  v19 = __chkstk_darwin(v119);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v98 - v22;
  v24 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v121 = (&v98 - v28);
  v29 = type metadata accessor for Expression();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v120 = &v98 - v34;
  v122 = *a1;
  v35 = v130;
  NotificationStore.severeNotifications.getter();
  if (v35)
  {

LABEL_5:
    v47 = v123;
    *v123 = 0;
    v47[1] = 0;
    return result;
  }

  v99 = v33;
  v100 = v27;
  v130 = v30;
  v104 = v29;
  v101 = a2;
  v102 = v23;
  v103 = 0;
  dispatch thunk of Table.query.getter();

  v37 = [v122 identifier];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v128 = &type metadata for String;
  v129 = &protocol witness table for String;
  v126 = v38;
  v127 = v40;
  v41 = v120;
  == infix(_:_:)();
  sub_100006994(&v126);
  v42 = v121;
  *v121 = 1702125924;
  *(v42 + 8) = 0xE400000000000000;
  v43 = enum case for OrderBy.descending(_:);
  v44 = type metadata accessor for OrderBy();
  (*(*(v44 - 8) + 104))(v42, v43, v44);
  sub_100006BD4(v42, 0, 1, v44);
  v45 = v103;
  v46 = dispatch thunk of Query.where(_:orderBy:limit:)();
  if (v45)
  {

    sub_10000E904(v42, &qword_1000A3808, &qword_100080F70);
    result = (v130[1])(v41, v104);
    goto LABEL_5;
  }

  v48 = v46;
  v98 = v44;
  v103 = 0;

  sub_10000E904(v42, &qword_1000A3808, &qword_100080F70);
  v121 = v130[1];
  v121(v41, v104);
  v49 = 0;
  v50 = *(v48 + 16);
  v51 = (v18 + 16);
  v130 = (v18 + 8);
  for (i = v119; ; (*v130)(v21, i))
  {
    if (v50 == v49)
    {
      goto LABEL_40;
    }

    if (v49 >= *(v48 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    (*(v18 + 16))(v21, v48 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v49, i);
    SevereNotificationEntity.replacementAlert.getter();
    dispatch thunk of Column.value.getter();

    if (v127 == 1)
    {
      break;
    }

    ++v49;
    sub_10000E344(v126, v127);
  }

  v51 = v102;
  (*(v18 + 32))(v102, v21, i);
  SevereNotificationEntity.notificationKind.getter();
  v53 = v115;
  dispatch thunk of Column.value.getter();

  v54 = sub_100003020(&qword_1000A4318, &qword_100081350);
  result = sub_100007374(v53, 1, v54);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_42;
  }

  v55 = v118;
  JSON.value.getter();
  (*(*(v54 - 8) + 8))(v53, v54);
  v57 = v116;
  v56 = v117;
  v58 = (*(v116 + 88))(v55, v117);
  v59 = v103;
  v60 = v100;
  if (v58 == enum case for SevereNotificationEntity.NotificationKind.periodic(_:))
  {
    goto LABEL_17;
  }

  if (v58 != enum case for SevereNotificationEntity.NotificationKind.cloudChannel(_:))
  {
    (*(v57 + 8))(v118, v56);
    goto LABEL_17;
  }

  NotificationStore.incomingMessages.getter();
  if (v59)
  {

    v72 = v112;
    (*v130)(v51, v119);
    v73 = v113;
    sub_100006BD4(v113, 1, 1, v72);
LABEL_23:
    result = sub_10000E904(v73, &qword_1000A4308, &qword_100081338);
    goto LABEL_5;
  }

  dispatch thunk of Table.query.getter();

  SevereNotificationEntity.messageIdentifier.getter();
  dispatch thunk of Column.value.getter();

  if (!v125)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v128 = &type metadata for String;
  v129 = &protocol witness table for String;
  v126 = v124;
  v127 = v125;
  == infix(_:_:)();
  sub_100006994(&v126);
  sub_100006BD4(v60, 1, 1, v98);
  v71 = v113;
  dispatch thunk of Query.first(_:orderBy:)();
  i = 0;

  sub_10000E904(v60, &qword_1000A3808, &qword_100080F70);
  v121(v99, v104);
  v49 = v112;
  v73 = v71;
  if (sub_100007374(v71, 1, v112) == 1)
  {
    (*v130)(v51, v119);

    goto LABEL_23;
  }

  v50 = v110;
  v18 = v111;
  (*(v111 + 32))(v110, v71, v49);
  IncomingMessageEntity.channel.getter();
  dispatch thunk of Column.value.getter();

  v74 = v127;
  if (v127 < 2)
  {
LABEL_34:
    v103 = i;

    v79 = v107;
    static Logger.notifications.getter();
    v80 = v106;
    (*(v18 + 16))(v106, v50, v49);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    v83 = os_log_type_enabled(v81, v82);
    v84 = v109;
    v85 = v50;
    v86 = v108;
    if (!v83)
    {
      v95 = v85;

      v96 = *(v18 + 8);
      v96(v80, v49);
      (*(v86 + 8))(v79, v84);
      v96(v95, v49);
      result = (*v130)(v51, v119);
      goto LABEL_5;
    }

    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v124 = v88;
    *v87 = 136315138;
    IncomingMessageEntity.messageID.getter();
    dispatch thunk of Column.value.getter();

    v89 = v127;
    if (v127)
    {
      v90 = v80;
      v91 = v126;
      v92 = v112;
      v93 = *(v111 + 8);
      v93(v90, v112);
      v94 = sub_10000D9FC(v91, v89, &v124);

      *(v87 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v81, v82, "Encountered incoming message without channel identifier: %s", v87, 0xCu);
      sub_100006994(v88);

      (*(v108 + 8))(v107, v109);
      v93(v110, v92);
      result = (*v130)(v102, v119);
      goto LABEL_5;
    }

    goto LABEL_44;
  }

  v75 = v126;
  if (v126 == *(v105 + 16) && v127 == *(v105 + 24))
  {
    sub_10000E344(v126, v127);
    (*(v18 + 8))(v50, v49);
    goto LABEL_17;
  }

  v103 = 0;
  v77 = v18;
  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_10000E344(v75, v74);
  (*(v77 + 8))(v50, v49);
  if (v78)
  {
LABEL_17:
    SevereNotificationEntity.alertIdentifier.getter();
    dispatch thunk of Column.value.getter();

    v61 = v127;
    v62 = v114;
    v63 = v122;
    if (v127)
    {
      v64 = v126;

      v124 = v64;
      v125 = v61;
      __chkstk_darwin(v65);
      *(&v98 - 2) = &v124;
      LOBYTE(v64) = sub_100036E7C(sub_100036F58, (&v98 - 4), v62);

      if (v64)
      {
        result = (*v130)(v51, v119);
        goto LABEL_5;
      }

      v66 = [v63 identifier];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      result = (*v130)(v51, v119);
      v70 = v123;
      *v123 = v67;
      v70[1] = v69;
      return result;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  (*v130)(v51, v119);
LABEL_40:

  v97 = v123;
  *v123 = 0;
  v97[1] = 0;
  return result;
}

uint64_t sub_100036C5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100036CAC()
{
  v1 = (type metadata accessor for SevereMessage(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  type metadata accessor for Date();
  sub_100007050();
  (*(v6 + 8))(v0 + v3 + v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100036D98(unint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for SevereMessage(0);
  sub_100006FF0(v5);
  sub_1000359F4(a1, a2, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));
}

uint64_t sub_100036E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL sub_100036E7C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100036FB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100007050();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10003700C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100037044(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_10003707C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000370D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000370EC()
{
  sub_100030E38();
  type metadata accessor for SevereNotification(0);
  sub_100030BE8();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = type metadata accessor for CloudChannelSevereNotification(0);
    v6 = v3 + *(v5 + 28);

    v7 = *(type metadata accessor for SevereNotificationContent(0) + 40);
    v8 = type metadata accessor for Date();
    if (!sub_100031070(v8))
    {
      (*(*(v1 - 8) + 8))(v6 + v7, v1);
    }

    v9 = (v5 + 32);
  }

  else
  {

    v10 = type metadata accessor for PeriodicSevereNotification(0);
    v11 = v3 + *(v10 + 24);

    v12 = *(type metadata accessor for SevereNotificationContent(0) + 40);
    v13 = type metadata accessor for Date();
    if (!sub_100031070(v13))
    {
      (*(*(v1 - 8) + 8))(v11 + v12, v1);
    }

    v9 = (v10 + 28);
  }

  v14 = *v9;
  type metadata accessor for Location();
  sub_100007050();
  (*(v15 + 8))(v3 + v14);
  sub_100030E08();

  return _swift_deallocObject(v16, v17, v18);
}

uint64_t sub_100037338(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100018904();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100037398()
{
  sub_100030E38();
  type metadata accessor for SevereNotificationSubscription(0);
  sub_100030BE8();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Location();
    sub_100007050();
    (*(v4 + 8))(v0 + v2);
    v5 = type metadata accessor for ResolvedPredictedLocation(0);
    v6 = *(v5 + 24);
    v7 = type metadata accessor for Date();
    sub_100018904();
    v9 = *(v8 + 8);
    v9(v3 + v6, v7);
    v9(v3 + *(v5 + 28), v7);
  }

  else
  {
    type metadata accessor for NotificationSubscription.Location();
    sub_100007050();
    (*(v10 + 8))(v0 + v2);
  }

  sub_100030E08();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_1000374FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100018904();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10003759C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, unint64_t))
{
  v8 = a3(0);
  sub_100006FF0(v8);
  return a4(a1, a2, v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));
}

uint64_t sub_100037620()
{
  sub_100030E38();
  type metadata accessor for SevereNotificationSubscription(0);
  sub_100030BE8();
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Location();
    sub_100007050();
    (*(v4 + 8))(v0 + v2);
    v5 = type metadata accessor for ResolvedPredictedLocation(0);
    v6 = *(v5 + 24);
    v7 = type metadata accessor for Date();
    sub_100018904();
    v9 = *(v8 + 8);
    v9(v3 + v6, v7);
    v9(v3 + *(v5 + 28), v7);
  }

  else
  {
    type metadata accessor for NotificationSubscription.Location();
    sub_100007050();
    (*(v10 + 8))(v0 + v2);
  }

  sub_100030E08();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_1000377A8(uint64_t a1)
{
  v4 = type metadata accessor for SevereNotificationSubscription(0);
  sub_10000E960(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = *(v1 + 16);
  v9 = (v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000378C4;

  return sub_1000345C4(a1, v8, v1 + v6, v10, v11);
}

uint64_t sub_1000378C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000379B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100037A70(uint64_t a1)
{

  return sub_1000374FC(v2, a1 + v1, type metadata accessor for SevereNotification);
}

uint64_t sub_100037A9C()
{

  return sub_100036FB8(v0, type metadata accessor for SevereMessage);
}

uint64_t sub_100037AC4()
{

  return sub_100036FB8(v0, type metadata accessor for SevereNotification);
}

uint64_t sub_100037AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 112) = v9;
  *(v10 - 104) = &a9 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  return 0;
}

uint64_t sub_100037B2C()
{

  return swift_allocObject();
}

uint64_t sub_100037B44()
{

  return swift_slowAlloc();
}

void sub_100037B8C()
{
  sub_100030E38();
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v7 = type metadata accessor for ResolvedPredictedLocation(0);
  __chkstk_darwin(v7 - 8);
  sub_10000E970();
  v10 = v9 - v8;
  v11 = type metadata accessor for NotificationSubscription.Location();
  sub_100006FBC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_10000E970();
  sub_100038978();
  sub_100018904();
  __chkstk_darwin(v15);
  sub_10000E970();
  v18 = v17 - v16;
  sub_10001868C(v4, v17 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000325A0(v18, v10);
    type metadata accessor for Location();
    sub_100018904();
    (*(v19 + 16))(v6, v10);
    sub_100038938();
    sub_1000387D4(v10, v20);
  }

  else
  {
    v21 = sub_1000389BC();
    v23 = v22(v21);
    v3(v23);
    (*(v13 + 8))(v1, v11);
  }

  sub_100030E08();
}

void sub_100037D44()
{
  sub_100030E38();
  v29 = v1;
  v3 = v2;
  v28 = type metadata accessor for ResolvedPredictedLocation(0);
  sub_100018904();
  __chkstk_darwin(v4);
  sub_10000E970();
  v7 = v6 - v5;
  v8 = type metadata accessor for NotificationSubscription.Location();
  sub_100006FBC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000E970();
  sub_100038978();
  sub_100018904();
  v13 = __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  v18 = sub_100003020(&qword_1000A4148, &qword_1000810C8);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v28 - v20;
  v22 = *(v19 + 56);
  sub_10001868C(v3, &v28 - v20);
  sub_10001868C(v29, &v21[v22]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10001868C(v21, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v10 + 32))(v0, &v21[v22], v8);
      static NotificationSubscription.Location.== infix(_:_:)();
      v25 = *(v10 + 8);
      v25(v0, v8);
      v25(v17, v8);
      sub_100038950();
      goto LABEL_14;
    }

    (*(v10 + 8))(v17, v8);
    goto LABEL_10;
  }

  sub_10001868C(v21, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100038938();
    sub_1000387D4(v15, v24);
LABEL_10:
    sub_10003876C(v21);
    goto LABEL_14;
  }

  sub_1000325A0(&v21[v22], v7);
  if (static Location.== infix(_:_:)() & 1) != 0 && *&v15[*(v28 + 20)] == *(v7 + *(v28 + 20)) && (static Date.== infix(_:_:)())
  {
    static Date.== infix(_:_:)();
    sub_100038938();
    sub_1000387D4(v7, v23);
  }

  else
  {
    sub_100038938();
    sub_1000387D4(v7, v26);
  }

  sub_100038938();
  sub_1000387D4(v15, v27);
  sub_100038950();
LABEL_14:
  sub_100030E08();
}

void sub_10003807C()
{
  sub_100030E38();
  v2 = type metadata accessor for ResolvedPredictedLocation(0);
  sub_100018904();
  __chkstk_darwin(v3);
  sub_10000E970();
  v6 = v5 - v4;
  v7 = type metadata accessor for NotificationSubscription.Location();
  sub_100006FBC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000E970();
  sub_100038978();
  sub_100018904();
  __chkstk_darwin(v11);
  sub_10000E970();
  v14 = v13 - v12;
  sub_10001868C(v0, v13 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000325A0(v14, v6);
    Hasher._combine(_:)(1uLL);
    type metadata accessor for Location();
    sub_1000388F0(&qword_1000A4158, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    dispatch thunk of Hashable.hash(into:)();
    v15 = *(v6 + *(v2 + 20));
    if (v15 == 0.0)
    {
      v15 = 0.0;
    }

    Hasher._combine(_:)(*&v15);
    type metadata accessor for Date();
    sub_1000388F0(&qword_1000A4160, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    sub_100038938();
    sub_1000387D4(v6, v16);
  }

  else
  {
    v17 = sub_1000389BC();
    v18(v17);
    Hasher._combine(_:)(0);
    sub_1000388F0(&qword_1000A4168, &type metadata accessor for NotificationSubscription.Location, &protocol conformance descriptor for NotificationSubscription.Location);
    dispatch thunk of Hashable.hash(into:)();
    (*(v9 + 8))(v1, v7);
  }

  sub_100030E08();
}

Swift::Int sub_100038330()
{
  Hasher.init(_seed:)();
  sub_10003807C();
  return Hasher._finalize()();
}

Swift::Int sub_10003837C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10003807C();
  return Hasher._finalize()();
}

void sub_1000383B8()
{
  sub_100030E38();
  v33 = v0;
  v1 = type metadata accessor for ResolvedPredictedLocation(0);
  __chkstk_darwin(v1 - 8);
  sub_10000E970();
  v4 = v3 - v2;
  type metadata accessor for Location.Identifier();
  sub_100006FBC();
  __chkstk_darwin(v5);
  sub_10000E970();
  v32 = type metadata accessor for Location();
  sub_100006FBC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000E970();
  v11 = v10 - v9;
  v12 = type metadata accessor for NotificationSubscription.Location();
  sub_100006FBC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000E970();
  v18 = v17 - v16;
  type metadata accessor for SevereNotificationSubscription(0);
  sub_100018904();
  __chkstk_darwin(v19);
  sub_10000E970();
  v22 = v21 - v20;
  sub_10001868C(v33, v21 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000325A0(v22, v4);
    _StringGuts.grow(_:)(32);

    sub_1000389A8();
    Location.identifier.getter();
    v23 = Location.Identifier.uniqueID.getter();
    v24 = sub_100038994();
    v25(v24);
    v26._countAndFlagsBits = v23;
    v26._object = v7;
    String.append(_:)(v26);

    sub_100038938();
    sub_1000387D4(v4, v27);
  }

  else
  {
    (*(v14 + 32))(v18, v22, v12);
    _StringGuts.grow(_:)(35);

    sub_1000389A8();
    NotificationSubscription.Location.location.getter();
    Location.identifier.getter();
    v7[1](v11, v32);
    v28 = Location.Identifier.uniqueID.getter();
    v29 = sub_100038994();
    v30(v29);
    v31._countAndFlagsBits = v28;
    v31._object = v7 + 1;
    String.append(_:)(v31);

    (*(v14 + 8))(v18, v12);
  }

  sub_100030E08();
}

uint64_t type metadata accessor for SevereNotificationSubscription(uint64_t a1)
{
  result = qword_1000A43A0;
  if (!qword_1000A43A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003876C(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A4148, &qword_1000810C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000387D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100018904();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100038834(uint64_t a1)
{
  result = type metadata accessor for NotificationSubscription.Location();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ResolvedPredictedLocation(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000388F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100038950()
{

  return sub_1000387D4(v0, type metadata accessor for SevereNotificationSubscription);
}

uint64_t sub_100038978()
{

  return type metadata accessor for SevereNotificationSubscription(0);
}

uint64_t sub_1000389D0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 120) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100039C88();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return _swift_task_switch(sub_100038AD0, v5, v4);
}

uint64_t sub_100038AD0()
{
  v1 = *(v0 + 120);
  sub_1000032B8((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_100038B7C;

  return sub_10004B484(v1 & 1);
}

uint64_t sub_100038B7C(uint64_t a1)
{
  v4 = *v2;
  sub_100030C64();
  *v5 = v4;
  v6 = *v2;
  sub_100030C64();
  *v7 = v6;
  v4[11] = v1;

  if (v1)
  {
    v8 = v4[8];
    v9 = v4[9];

    return _swift_task_switch(sub_100038FBC, v8, v9);
  }

  else
  {
    v4[12] = a1;
    v10 = swift_task_alloc();
    v4[13] = v10;
    *v10 = v6;
    v10[1] = sub_100038CF8;

    return sub_100039138(a1);
  }
}

uint64_t sub_100038CF8()
{
  v1 = *v0;
  sub_100030C64();
  *v3 = v2;
  v4 = *v0;
  sub_100030C64();
  *v5 = v4;
  *(v7 + 112) = v6;

  v8 = *(v1 + 72);
  v9 = *(v1 + 64);

  return _swift_task_switch(sub_100038E3C, v9, v8);
}

uint64_t sub_100038E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_100039F38();
  a19 = v21;
  a20 = v22;
  a18 = v20;

  static Logger.predictedLocations.getter();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = sub_100037B44();
    a9 = v26;
    sub_100039EC0(7.2225e-34);
    type metadata accessor for ResolvedPredictedLocation(0);
    v27 = Array.description.getter();
    v29 = sub_10000D9FC(v27, v28, &a9);

    *(v25 + 14) = v29;
    sub_100039F54(&_mh_execute_header, v30, v31, "Successfully refreshed predicted locations; resolvedPredictedLocations=%{private,mask.hash}s");
    sub_100006994(v26);
    sub_10000FA7C(v26);
    sub_10000FA7C(v25);
  }

  v32 = sub_100030CE0();
  v33(v32);

  sub_100039EDC();
  sub_100039EA4();

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_100038FBC()
{

  static Logger.predictedLocations.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to refresh predicted locations; error=%{public}@", v3, 0xCu);
    sub_100039CE0(v4);
    sub_10000FA7C(v4);
    sub_10000FA7C(v3);
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_100039138(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ResolvedPredictedLocation(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Location();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for PredictedLocation(0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100039C88();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v8;
  v2[21] = v7;

  return _swift_task_switch(sub_100039360, v8, v7);
}

uint64_t sub_100039360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100039F38();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  static Logger.predictedLocations.getter();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v20 + 128);
  if (v25)
  {
    v27 = swift_slowAlloc();
    v28 = sub_100037B44();
    a9 = v28;
    sub_100039EC0(7.2225e-34);
    v29 = Array.description.getter();
    v31 = sub_10000D9FC(v29, v30, &a9);

    *(v27 + 14) = v31;
    sub_100039F54(&_mh_execute_header, v32, v33, "Will reverse geocode predicted locations; locations=%{private,mask.hash}s");
    sub_100006994(v28);
    sub_10000FA7C(v28);
    sub_10000FA7C(v27);
  }

  v34 = *(v26 + 8);
  v35 = sub_100030CE0();
  v34(v35);
  *(v20 + 176) = v34;
  v36 = *(v20 + 16);
  v37 = *(v36 + 16);
  *(v20 + 184) = v37;
  if (v37)
  {
    v38 = *(v20 + 112);
    v39 = *(v20 + 88);
    v40 = *(v39 + 80);
    *(v20 + 240) = v40;
    v41 = *(v39 + 72);
    *(v20 + 200) = 0;
    *(v20 + 208) = _swiftEmptyArrayStorage;
    *(v20 + 192) = v41;
    sub_100039D48(v36 + ((v40 + 32) & ~v40), v38);
    *(v20 + 216) = sub_100039E30();
    v42 = swift_task_alloc();
    v43 = sub_100039EEC(v42);
    *v43 = v44;
    sub_100039E08(v43);
    sub_100039EA4();

    return Promise.resolveAsync()(v45);
  }

  else
  {

    sub_100039EA4();

    return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
  }
}

uint64_t sub_1000395AC()
{
  v2 = *v1;
  sub_100030C64();
  *v3 = v2;
  v4 = *v1;
  sub_100030C64();
  *v5 = v4;
  v2[29] = v0;

  if (v0)
  {
    v6 = v2[20];
    v7 = v2[21];
    v8 = sub_100039918;
  }

  else
  {

    v6 = v2[20];
    v7 = v2[21];
    v8 = sub_1000396C0;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1000396C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100039F38();
  v47 = v12[26];
  v13 = v12[13];
  v14 = v12[10];
  v15 = v12[6];
  v16 = v12[4];
  (*(v12[8] + 16))(v15, v12[9], v12[7]);
  v17 = sub_100030CE0();
  sub_100039D48(v17, v18);
  *(v15 + v16[5]) = *(v13 + 16);
  v19 = *(v14 + 28);
  v20 = v16[6];
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 32);
  v22(v15 + v20, v13 + v19, v21);
  v22(v15 + v16[7], v13 + *(v14 + 32), v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v12[26];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10005BAEC();
    v24 = v45;
  }

  v25 = *(v24 + 16);
  if (v25 >= *(v24 + 24) >> 1)
  {
    sub_10005BAEC();
    v24 = v46;
  }

  v26 = v12[14];
  v27 = v12[6];
  v28 = v12[5];
  (*(v12[8] + 8))(v12[9], v12[7]);
  sub_100039DAC(v26);
  *(v24 + 16) = v25 + 1;
  sub_1000325A0(v27, v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25);
  sub_100039F24();
  if (v30)
  {
    sub_100039EFC();

    sub_100039EDC();
    sub_100039EA4();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, v47, a10, a11, a12);
  }

  else
  {
    v12[25] = v29;
    v12[26] = v24;
    sub_100039E70(v29);
    v12[27] = sub_100039E30();
    v40 = swift_task_alloc();
    v41 = sub_100039EEC(v40);
    *v41 = v42;
    sub_100039E08(v41);
    sub_100039EA4();

    return Promise.resolveAsync()(v43);
  }
}

uint64_t sub_100039918()
{
  v36 = v0;
  v1 = v0[14];
  v2 = v0[12];

  static Logger.predictedLocations.getter();
  sub_100039D48(v1, v2);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[22];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  if (v5)
  {
    v34 = v0[22];
    v10 = v0[12];
    v11 = v0[13];
    v33 = v0[14];
    v12 = sub_100037B44();
    v32 = v9;
    v13 = swift_slowAlloc();
    v31 = v7;
    v14 = sub_100037B44();
    v35 = v14;
    *v12 = 138412803;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100039D48(v10, v11);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    sub_100039DAC(v10);
    v19 = sub_10000D9FC(v16, v18, &v35);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to reverse geocode predicted location. Will be dropped from predicted locations list; error=%@, location=%{private,mask.hash}s", v12, 0x20u);
    sub_100039CE0(v13);
    sub_10000FA7C(v13);
    sub_100006994(v14);
    sub_10000FA7C(v14);
    sub_10000FA7C(v12);

    v34(v31, v32);
    v20 = v33;
  }

  else
  {
    v21 = v0[12];

    sub_100039DAC(v21);
    v6(v7, v9);
    v20 = v8;
  }

  sub_100039DAC(v20);
  sub_100039F24();
  if (v23)
  {
    sub_100039EFC();

    v24 = sub_100039EDC();

    return v25(v24);
  }

  else
  {
    v0[25] = v22;
    sub_100039E70(v22);
    v0[27] = sub_100039E30();
    v27 = swift_task_alloc();
    v28 = sub_100039EEC(v27);
    *v28 = v29;
    v30 = sub_100039E08(v28);

    return Promise.resolveAsync()(v30);
  }
}

uint64_t sub_100039C24()
{
  sub_100006994((v0 + 16));
  sub_100006994((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

unint64_t sub_100039C88()
{
  result = qword_1000A4488;
  if (!qword_1000A4488)
  {
    type metadata accessor for LocIntelActor.Actor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4488);
  }

  return result;
}

uint64_t sub_100039CE0(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A4030, &qword_100080F58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039DAC(uint64_t a1)
{
  v2 = type metadata accessor for PredictedLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039E30()
{
  v2 = v1[10];
  v3 = v1[11];
  sub_1000032B8(v1 + 7, v2);
  v4.n128_u64[0] = *v0;
  v5.n128_u64[0] = v0[1];

  return dispatch thunk of GeocodeManagerType.reverseGeocode(coordinate:)(v2, v3, v4, v5);
}

uint64_t sub_100039E70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16) + ((*(v1 + 240) + 32) & ~*(v1 + 240)) + *(v1 + 192) * a1;
  v4 = *(v1 + 112);

  return sub_100039D48(v3, v4);
}

void sub_100039EC0(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t sub_100039EFC()
{
}

void sub_100039F54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100039F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = a1 + *(a3 + 28);

  return sub_100007374(v7, a2, v6);
}

uint64_t sub_100039FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = a1 + *(a4 + 28);

  return sub_100006BD4(v8, a2, a2, v7);
}

uint64_t type metadata accessor for PredictedLocation(uint64_t a1)
{
  result = qword_1000A44E8;
  if (!qword_1000A44E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A09C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10003A168(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for PredictedLocation(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t sub_10003A214(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  type metadata accessor for PredictedLocation(0);
  type metadata accessor for Date();
  sub_10003A39C(&qword_1000A4160, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10003A314()
{
  Hasher.init(_seed:)();
  sub_10003A214(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10003A360(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10003A214(v2);
  return Hasher._finalize()();
}

uint64_t sub_10003A39C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10003A3E4()
{
  v1 = type metadata accessor for PredictedLocationsConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  SettingProperty.wrappedValue.getter();

  if (v13 == 1)
  {

    SettingProperty.wrappedValue.getter();

    v9 = v13;

    SettingProperty.wrappedValue.getter();
  }

  else
  {
    sub_1000032B8((v0 + 136), *(v0 + 160));
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.predictedLocations.getter();
    PredictedLocationsConfiguration.firstSchedulingInterval.getter();
    v9 = v10;
    PredictedLocationsConfiguration.reschedulingIntervalForDonations.getter();
    PredictedLocationsConfiguration.reschedulingGracePeriodInterval.getter();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

uint64_t sub_10003A634(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003020(&qword_1000A3800, &unk_100080860);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for XPCActivity();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PredictedLocationsRefresh(0);
  v9 = __chkstk_darwin(v38);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.predictedLocationIntentDonations.getter();
  v37 = a1;
  sub_100007E24(a1, v13);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = v14;
    v21 = v20;
    v22 = swift_slowAlloc();
    v33 = v6;
    v23 = v22;
    v39 = v22;
    *v21 = 136446210;
    sub_100007E24(v13, v11);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    sub_100007E88(v13);
    v27 = sub_10000D9FC(v24, v26, &v39);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Will schedule refresh: %{public}s", v21, 0xCu);
    sub_100006994(v23);
    v6 = v33;

    (*(v15 + 8))(v17, v32);
  }

  else
  {

    sub_100007E88(v13);
    (*(v15 + 8))(v17, v14);
  }

  sub_1000032B8(v2 + 2, v2[5]);
  v28 = v34;
  static XPCActivity.predictedLocationIntentDonations.getter();
  v29 = v37;
  dispatch thunk of XPCActivityManagerType.scheduleActivity(_:on:with:)();
  (*(v35 + 8))(v28, v36);
  sub_1000032B8(v2 + 7, v2[10]);
  v30 = type metadata accessor for Date();
  (*(*(v30 - 8) + 16))(v6, v29, v30);
  sub_100006BD4(v6, 0, 1, v30);
  dispatch thunk of PredictedLocationsScheduleStoreType.recordNextRefresh(at:)();
  return sub_100018858(v6, &qword_1000A3800, &unk_100080860);
}

uint64_t sub_10003AA50@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v6 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v6);
  sub_100018920();
  __chkstk_darwin(v7);
  v47 = &v41 - v8;
  sub_100003020(&qword_1000A4600, &qword_100081A30);
  sub_100018904();
  __chkstk_darwin(v9);
  sub_100015754();
  v12 = v10 - v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v41 - v15;
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  v45 = type metadata accessor for Logger();
  sub_100006FBC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_10003C888();
  v43 = v3;
  sub_10003AE6C(v3, a1, a3);
  static Logger.predictedLocationIntentDonations.getter();
  v44 = a3;
  sub_10003C7D0(a3, v18, &qword_1000A4600, &qword_100081A30);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42 = v12;
    v26 = v25;
    v48[0] = v25;
    *v24 = 136446210;
    sub_10003C7D0(v18, v16, &qword_1000A4600, &qword_100081A30);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    sub_100018858(v18, &qword_1000A4600, &qword_100081A30);
    v30 = sub_10000D9FC(v27, v29, v48);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Calculated next refresh: %{public}s", v24, 0xCu);
    sub_100006994(v26);
    v31 = v26;
    v12 = v42;
    sub_10000FA7C(v31);
    sub_10000FA7C(v24);
  }

  else
  {

    sub_100018858(v18, &qword_1000A4600, &qword_100081A30);
  }

  result = (*(v20 + 8))(v3, v45);
  if (v46)
  {
    sub_100006930((v43 + 7), v48);
    sub_1000032B8(v48, v48[3]);
    sub_10003C7D0(v44, v12, &qword_1000A4600, &qword_100081A30);
    v33 = type metadata accessor for PredictedLocationsRefresh(0);
    if (sub_100007374(v12, 1, v33) == 1)
    {
      sub_100018858(v12, &qword_1000A4600, &qword_100081A30);
      v34 = type metadata accessor for Date();
      v35 = v47;
      v36 = 1;
    }

    else
    {
      v37 = type metadata accessor for Date();
      sub_100018904();
      v39 = v47;
      (*(v38 + 16))(v47, v12, v37);
      sub_100007E88(v12);
      v35 = v39;
      v36 = 0;
      v34 = v37;
    }

    sub_100006BD4(v35, v36, 1, v34);
    v40 = v47;
    dispatch thunk of PredictedLocationsScheduleStoreType.recordNextRefresh(at:)();
    sub_100018858(v40, &qword_1000A3800, &unk_100080860);
    return sub_100006994(v48);
  }

  return result;
}

uint64_t sub_10003AE6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a2;
  v5 = type metadata accessor for Logger();
  v127 = *(v5 - 8);
  v128 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v114 = &v107 - v10;
  __chkstk_darwin(v9);
  v120 = &v107 - v11;
  v112 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v12 = __chkstk_darwin(v112);
  v119 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v111 = &v107 - v15;
  v16 = __chkstk_darwin(v14);
  v118 = &v107 - v17;
  v18 = __chkstk_darwin(v16);
  v117 = &v107 - v19;
  v20 = __chkstk_darwin(v18);
  v115 = &v107 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v107 - v23;
  __chkstk_darwin(v22);
  v126 = &v107 - v25;
  v125 = type metadata accessor for Date();
  v122 = *(v125 - 8);
  v26 = __chkstk_darwin(v125);
  v113 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v107 - v29;
  v31 = __chkstk_darwin(v28);
  v116 = &v107 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v107 - v34;
  v36 = __chkstk_darwin(v33);
  v121 = &v107 - v37;
  __chkstk_darwin(v36);
  v123 = &v107 - v38;
  v39 = type metadata accessor for PredictedLocationsFeatureState();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v43 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v107 - v44;
  if (WDWeatherAppIsInstalled())
  {
    v109 = v30;
    v110 = a3;
    sub_1000032B8(a1 + 12, a1[15]);
    dispatch thunk of PredictedLocationsFeatureStateManagerType.syncIntentDonationFeatureState()();
    (*(v40 + 104))(v43, enum case for PredictedLocationsFeatureState.active(_:), v39);
    v46 = static PredictedLocationsFeatureState.== infix(_:_:)();
    v47 = *(v40 + 8);
    v47(v43, v39);
    v47(v45, v39);
    if (v46)
    {
      v48 = v123;
      Date.init()();
      v49 = sub_10003A3E4();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      sub_1000032B8(a1 + 7, a1[10]);
      v56 = v126;
      dispatch thunk of PredictedLocationsScheduleStoreType.mostRecentRefreshDate()();
      sub_1000032B8(a1 + 7, a1[10]);
      dispatch thunk of PredictedLocationsScheduleStoreType.nextScheduledRefreshDate()();
      v57 = v125;
      sub_100007374(v24, 1, v125);
      sub_100018858(v24, &qword_1000A3800, &unk_100080860);
      v58 = v56;
      v59 = v115;
      sub_10003C7D0(v58, v115, &qword_1000A3800, &unk_100080860);
      if (sub_100007374(v59, 1, v57) == 1)
      {
        v60 = v122;
        (*(v122 + 16))(v35, v48, v57);
        v61 = sub_100007374(v59, 1, v57);
        v62 = v120;
        v63 = v121;
        v64 = v116;
        if (v61 != 1)
        {
          sub_100018858(v59, &qword_1000A3800, &unk_100080860);
        }
      }

      else
      {
        v60 = v122;
        (*(v122 + 32))(v35, v59, v57);
        v62 = v120;
        v63 = v121;
        v64 = v116;
      }

      sub_100068054(v63);
      v116 = *(v60 + 8);
      (v116)(v35, v57);
      static Logger.predictedLocationIntentDonations.getter();
      v75 = v117;
      sub_10003C7D0(v126, v117, &qword_1000A3800, &unk_100080860);
      (*(v60 + 16))(v64, v63, v57);
      v76 = v118;
      sub_10003C7D0(v124, v118, &qword_1000A3800, &unk_100080860);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v133[0] = v114;
        *v79 = 136446978;
        v129 = v49;
        v130 = v51;
        v131 = v53;
        v132 = v55;
        v80 = String.init<A>(describing:)();
        v108 = v78;
        v82 = sub_10000D9FC(v80, v81, v133);

        *(v79 + 4) = v82;
        *(v79 + 12) = 2080;
        v83 = v111;
        v115 = v60 + 8;
        sub_10003C7D0(v75, v111, &qword_1000A3800, &unk_100080860);
        v107 = v77;
        v84 = String.init<A>(describing:)();
        v86 = v85;
        sub_100018858(v75, &qword_1000A3800, &unk_100080860);
        v87 = sub_10000D9FC(v84, v86, v133);

        *(v79 + 14) = v87;
        *(v79 + 22) = 2080;
        sub_10003C830();
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v89;
        (v116)(v64, v125);
        v91 = sub_10000D9FC(v88, v90, v133);

        *(v79 + 24) = v91;
        *(v79 + 32) = 2080;
        v60 = v122;
        sub_10003C7D0(v76, v83, &qword_1000A3800, &unk_100080860);
        v92 = String.init<A>(describing:)();
        v94 = v93;
        v63 = v121;
        sub_100018858(v76, &qword_1000A3800, &unk_100080860);
        v95 = sub_10000D9FC(v92, v94, v133);

        *(v79 + 34) = v95;
        v96 = v107;
        _os_log_impl(&_mh_execute_header, v107, v108, "Will determine next refresh, config=%{public}s, lastRefresh=%s, nextLogicalRefreshDate=%s, currentScheduledDate=%s)", v79, 0x2Au);
        swift_arrayDestroy();

        v57 = v125;

        (*(v127 + 8))(v120, v128);
        v97 = v116;
      }

      else
      {

        sub_100018858(v76, &qword_1000A3800, &unk_100080860);
        v97 = v116;
        (v116)(v64, v57);
        sub_100018858(v75, &qword_1000A3800, &unk_100080860);
        (*(v127 + 8))(v62, v128);
      }

      v98 = v119;
      sub_10003C7D0(v124, v119, &qword_1000A3800, &unk_100080860);
      if (sub_100007374(v98, 1, v57) == 1)
      {
        sub_100018858(v126, &qword_1000A3800, &unk_100080860);
        v97(v123, v57);
        sub_100018858(v98, &qword_1000A3800, &unk_100080860);
        v99 = *(v60 + 32);
      }

      else
      {
        v99 = *(v60 + 32);
        v100 = v113;
        v99();
        v101 = v123;
        if (static Date.> infix(_:_:)())
        {
          v102 = static Date.< infix(_:_:)();
          sub_100018858(v126, &qword_1000A3800, &unk_100080860);
          v97(v101, v57);
          if (v102)
          {
            v97(v63, v57);
            v103 = v109;
            (v99)(v109, v100, v57);
LABEL_26:
            v105 = v110;
            (v99)(v110, v103, v57);
            v68 = type metadata accessor for PredictedLocationsRefresh(0);
            *(v105 + *(v68 + 20)) = v53;
            v69 = v105;
            v74 = 0;
            return sub_100006BD4(v69, v74, 1, v68);
          }

          v104 = v100;
        }

        else
        {
          v97(v100, v57);
          sub_100018858(v126, &qword_1000A3800, &unk_100080860);
          v104 = v101;
        }

        v97(v104, v57);
      }

      v103 = v109;
      (v99)(v109, v63, v57);
      goto LABEL_26;
    }

    v70 = v114;
    static Logger.predictedLocationIntentDonations.getter();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Intent donation feature state is not active; no next refresh", v73, 2u);
    }

    (*(v127 + 8))(v70, v128);
    v68 = type metadata accessor for PredictedLocationsRefresh(0);
    v69 = v110;
  }

  else
  {
    static Logger.predictedLocationIntentDonations.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Weather app was uninstalled; no next refresh", v67, 2u);
    }

    (*(v127 + 8))(v8, v128);
    v68 = type metadata accessor for PredictedLocationsRefresh(0);
    v69 = a3;
  }

  v74 = 1;
  return sub_100006BD4(v69, v74, 1, v68);
}

uint64_t sub_10003BBA0(uint64_t a1, uint64_t a2)
{
  v90 = a1;
  v3 = type metadata accessor for Date();
  sub_100006FBC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100015754();
  v82 = (v7 - v8);
  sub_100030F24();
  __chkstk_darwin(v9);
  v83 = &v77[-v10];
  type metadata accessor for Logger();
  sub_100006FBC();
  v88 = v12;
  v89 = v11;
  __chkstk_darwin(v11);
  sub_100015754();
  v84 = v13 - v14;
  sub_100030F24();
  __chkstk_darwin(v15);
  v86 = &v77[-v16];
  v17 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v17);
  sub_100018920();
  __chkstk_darwin(v18);
  v20 = &v77[-v19];
  v21 = sub_100003020(&qword_1000A4600, &qword_100081A30);
  sub_100006FF0(v21);
  sub_100018920();
  __chkstk_darwin(v22);
  v24 = &v77[-v23];
  v25 = type metadata accessor for PredictedLocationsRefresh(0);
  sub_100018904();
  __chkstk_darwin(v26);
  sub_100015754();
  v81 = v27 - v28;
  sub_100030F24();
  __chkstk_darwin(v29);
  v80 = &v77[-v30];
  sub_100030F24();
  __chkstk_darwin(v31);
  v33 = &v77[-v32];
  v87 = v5;
  v34 = *(v5 + 16);
  v35 = a2;
  (v34)(v20, a2, v3);
  sub_100006BD4(v20, 0, 1, v3);
  sub_10003AA50(v20, 1, v24);
  sub_100018858(v20, &qword_1000A3800, &unk_100080860);
  v85 = v25;
  v36 = sub_100007374(v24, 1, v25);
  if (v36 == 1)
  {
    sub_100018858(v24, &qword_1000A4600, &qword_100081A30);
    v37 = v84;
    static Logger.predictedLocationIntentDonations.getter();
    v38 = sub_10003C8B4();
    v34(v38);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v91 = v42;
      *v41 = 136446210;
      sub_10003C830();
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      v46 = sub_10003C8A0();
      v47(v46);
      v48 = sub_10000D9FC(v43, v45, &v91);

      *(v41 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v39, v40, "Verified schedule date=%{public}s, will reject rescheduling.", v41, 0xCu);
      sub_100006994(v42);
      sub_10000FA7C(v42);
      sub_10000FA7C(v41);
    }

    else
    {

      v70 = sub_10003C8A0();
      v71(v70);
    }

    (*(v88 + 8))(v37, v89);
    sub_100006BD4(v90, 1, 1, v35);
    return 0;
  }

  else
  {
    sub_10003C76C(v24, v33);
    static Logger.predictedLocationIntentDonations.getter();
    v49 = v83;
    v50 = sub_10003C8B4();
    v34(v50);
    v51 = v80;
    sub_100007E24(v33, v80);
    v52 = v81;
    sub_100007E24(v33, v81);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v82 = v34;
      v56 = v55;
      v79 = swift_slowAlloc();
      v91 = v79;
      *v56 = 136446722;
      sub_10003C830();
      LODWORD(v84) = v36;
      v78 = v54;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v49;
      v60 = v59;
      (*(v87 + 8))(v58, v35);
      v61 = sub_10000D9FC(v57, v60, &v91);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      sub_100007E88(v51);
      v65 = sub_10000D9FC(v62, v64, &v91);

      *(v56 + 14) = v65;
      *(v56 + 22) = 2050;
      v66 = v85;
      v67 = *(v52 + *(v85 + 20));
      sub_100007E88(v52);
      *(v56 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v53, v78, "Verified schedule date=%{public}s returning date=%{public}s gracePeriod=%{public}f", v56, 0x20u);
      v68 = v79;
      swift_arrayDestroy();
      sub_10000FA7C(v68);
      v69 = v56;
      v34 = v82;
      sub_10000FA7C(v69);

      (*(v88 + 8))(v86, v89);
    }

    else
    {

      sub_100007E88(v52);
      sub_100007E88(v51);
      v73 = sub_10003C8A0();
      v74(v73);
      (*(v88 + 8))(v86, v89);
      v66 = v85;
    }

    v75 = v90;
    (v34)(v90, v33, v35);
    sub_100006BD4(v75, 0, 1, v35);
    v72 = *&v33[*(v66 + 20)];
    sub_100007E88(v33);
  }

  return v72;
}

uint64_t sub_10003C268@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v3);
  sub_100018920();
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = sub_100003020(&qword_1000A4600, &qword_100081A30);
  sub_100006FF0(v7);
  sub_100018920();
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for Logger();
  sub_100006FBC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_10003C888();
  static Logger.predictedLocationIntentDonations.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Will attempt to reschedule", v17, 2u);
    sub_10000FA7C(v17);
  }

  (*(v13 + 8))(v1, v11);
  v18 = type metadata accessor for Date();
  sub_100006BD4(v6, 1, 1, v18);
  sub_10003AA50(v6, 1, v10);
  sub_100018858(v6, &qword_1000A3800, &unk_100080860);
  v19 = type metadata accessor for PredictedLocationsRefresh(0);
  if (sub_100007374(v10, 1, v19) == 1)
  {
    sub_100018858(v10, &qword_1000A4600, &qword_100081A30);
    sub_10003C4D8();
    v20 = 1;
  }

  else
  {
    sub_10003C76C(v10, a1);
    sub_10003A634(a1);
    v20 = 0;
  }

  return sub_100006BD4(a1, v20, 1, v19);
}

uint64_t sub_10003C4D8()
{
  v1 = type metadata accessor for XPCActivity();
  sub_100006FBC();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  sub_100006FBC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10003C888();
  static Logger.predictedLocationIntentDonations.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Will unschedule next refresh", v13, 2u);
    sub_10000FA7C(v13);
  }

  (*(v9 + 8))(v0, v7);
  sub_1000032B8(v0 + 2, v0[5]);
  static XPCActivity.predictedLocationIntentDonations.getter();
  dispatch thunk of XPCActivityManagerType.unscheduleActivity(_:)();
  (*(v3 + 8))(v6, v1);
  sub_1000032B8(v0 + 7, v0[10]);
  return dispatch thunk of PredictedLocationsScheduleStoreType.clearNextRefreshRecord()();
}

void *sub_10003C6CC()
{
  sub_100006994(v0 + 2);
  sub_100006994(v0 + 7);
  sub_100006994(v0 + 12);
  sub_100006994(v0 + 17);

  return v0;
}

uint64_t sub_10003C714()
{
  sub_10003C6CC();

  return _swift_deallocClassInstance(v0, 192, 7);
}

uint64_t sub_10003C76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocationsRefresh(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003020(a3, a4);
  sub_100018904();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_10003C830()
{
  result = qword_1000A4198;
  if (!qword_1000A4198)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4198);
  }

  return result;
}

uint64_t sub_10003C8C8(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_100006D78(a1, v3 + 16);
  sub_100006D78(a2, v3 + 56);
  sub_100006D78(a3, v3 + 96);
  return v3;
}

uint64_t sub_10003C918()
{
  v1 = type metadata accessor for AppConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8((v0 + 96), *(v0 + 120));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v5 = AppConfiguration.locationDecimalPrecision.getter();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_10003CA0C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = *v2;
  v4 = type metadata accessor for Logger();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for LocationCoordinate();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = type metadata accessor for WeatherAlerts();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for WeatherDataResponse();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  sub_100003020(&qword_1000A46D0, &qword_100081718);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v8 = type metadata accessor for Units();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  sub_100003020(&qword_1000A46D8, &qword_100081720);
  v3[36] = swift_task_alloc();
  sub_100003020(&qword_1000A46E0, &qword_100081728);
  v3[37] = swift_task_alloc();
  sub_100003020(&qword_1000A46E8, &qword_100081730);
  v3[38] = swift_task_alloc();
  sub_100003020(&qword_1000A46F0, &qword_100081738);
  v3[39] = swift_task_alloc();
  sub_100003020(&qword_1000A46F8, &qword_100081740);
  v3[40] = swift_task_alloc();
  sub_100003020(&qword_1000A4700, &qword_100081748);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = type metadata accessor for WeatherDataCaching.Options();
  v3[44] = swift_task_alloc();
  sub_100003020(&qword_1000A4708, &qword_100081750);
  v3[45] = swift_task_alloc();
  sub_100003020(&qword_1000A4710, &qword_100081758);
  v3[46] = swift_task_alloc();
  v9 = type metadata accessor for WeatherDataRequestOptions();
  v3[47] = v9;
  v3[48] = *(v9 - 8);
  v3[49] = swift_task_alloc();
  sub_100003020(&qword_1000A4718, &unk_100081760);
  v3[50] = swift_task_alloc();
  v10 = type metadata accessor for WeatherServiceRequestLocation();
  v3[51] = v10;
  v3[52] = *(v10 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v11 = sub_100003020(&qword_1000A4720, &qword_1000822B0);
  v3[55] = v11;
  v3[56] = *(v11 - 8);
  v3[57] = swift_task_alloc();
  v12 = type metadata accessor for ResolvedPredictedLocation(0);
  v3[58] = v12;
  v3[59] = *(v12 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v13 = sub_100003020(&qword_1000A3C18, &qword_100081770);
  v3[65] = v13;
  v3[66] = *(v13 - 8);
  v3[67] = swift_task_alloc();

  return _swift_task_switch(sub_10003D124, 0, 0);
}

uint64_t sub_10003D124()
{
  v1 = *(*(v0 + 96) + 16);
  *(v0 + 544) = v1;
  if (!v1)
  {
    sub_100003020(&qword_1000A3B88, &qword_100080FA0);
    sub_1000435DC();
    sub_100042EB8(v16, 255, v17);
    Dictionary.init(dictionaryLiteral:)();
    goto LABEL_12;
  }

  static Settings.LocationIntelligence.Debug.useMockedWeatherAlert.getter();
  sub_100042EB8(&qword_1000A4728, v2, type metadata accessor for PredictedLocationsWeatherAlertService);
  Configurable.setting<A>(_:)();

  if (*(v0 + 600) == 1)
  {
    v3 = *(v0 + 528);
    v25 = *(v0 + 520);
    v4 = *(v0 + 472);
    v5 = *(v0 + 96);
    sub_10001482C(0, v1, 0);
    sub_100043674();
    v7 = v5 + v6;
    v24 = *(v4 + 72);
    do
    {
      v8 = *(v0 + 536);
      v9 = *(v0 + 512);
      sub_100042EFC(v7, v9, type metadata accessor for ResolvedPredictedLocation);
      v10 = *(v25 + 48);
      sub_100042EFC(v9, v8, type metadata accessor for ResolvedPredictedLocation);
      v11 = sub_10003E8D0(v9);
      sub_100042F58(v9, type metadata accessor for ResolvedPredictedLocation);
      *(v8 + v10) = v11;
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10001482C((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      sub_100043674();
      sub_100043558(v15, _swiftEmptyArrayStorage + v14 + *(v3 + 72) * v13, &qword_1000A3C18, &qword_100081770);
      v7 += v24;
      --v1;
    }

    while (v1);
    sub_10003ED54(_swiftEmptyArrayStorage, &qword_1000A4750, &unk_100081788, sub_100042168);
LABEL_12:
    sub_1000435F4();
    sub_100043680();

    sub_1000436E0();

    __asm { BRAA            X2, X16 }
  }

  v18 = swift_task_alloc();
  *(v0 + 552) = v18;
  *v18 = v0;
  v18[1] = sub_10003D530;
  sub_1000436E0();

  return sub_10003EE04(v19);
}

uint64_t sub_10003D530()
{
  sub_100030C4C();
  sub_100043668();
  sub_100030C64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 560) = v3;

  v4 = sub_100043658();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003D61C(void *a1)
{
  v2 = 0;
  v3 = v1[70];
  v4 = v1[56];
  v63 = v1[55];
  v5 = *(v3 + 16);
  v61 = (v1[52] + 32);
  v64 = _swiftEmptyArrayStorage;
  while (1)
  {
    v1[71] = v64;
    if (v5 == v2)
    {
      break;
    }

    if (v2 >= *(v3 + 16))
    {
      __break(1u);
      return Promise.resolveAsync()(a1);
    }

    v6 = v1[57];
    v8 = v1[50];
    v7 = v1[51];
    sub_10004350C(v1[70] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2, v6, &qword_1000A4720, &qword_1000822B0);
    sub_10003F050(v6, *(v6 + *(v63 + 48)), *(v6 + *(v63 + 48) + 8), v8);
    sub_100018858(v6, &qword_1000A4720, &qword_1000822B0);
    if (sub_100007374(v8, 1, v7) == 1)
    {
      a1 = sub_100018858(v1[50], &qword_1000A4718, &unk_100081760);
      ++v2;
    }

    else
    {
      v57 = v1[54];
      v58 = v1[53];
      v9 = v1[51];
      v10 = *v61;
      (*v61)();
      (v10)(v58, v57, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005BBC4();
        v64 = v15;
      }

      v11 = v64[2];
      if (v11 >= v64[3] >> 1)
      {
        sub_10005BBC4();
        v64 = v16;
      }

      ++v2;
      v64[2] = v11 + 1;
      sub_100043674();
      a1 = (v10)(v13 + v12 + *(v14 + 72) * v11);
    }
  }

  v59 = v1[49];
  v60 = v1[48];
  v62 = v1[47];
  v17 = v1[45];
  v55 = v1[35];
  v54 = v1[34];
  v56 = v1[33];
  v18 = v1[14];

  sub_1000032B8((v18 + 16), *(v18 + 40));
  static Locale.languageIdentifier.getter();
  type metadata accessor for TimeZone();
  sub_100030DE0();
  sub_100006BD4(v19, v20, v21, v22);
  WeatherRequestLocationOptions.init(decimalPrecision:limitsPrecision:)();
  v23 = type metadata accessor for WeatherRequestLocationOptions();
  sub_100006BD4(v17, 0, 1, v23);
  v1[10] = _swiftEmptyArrayStorage;
  sub_100042EB8(&qword_1000A4730, 255, &type metadata accessor for WeatherDataCaching.Options);
  sub_100003020(&qword_1000A4738, &qword_100081780);
  sub_1000434C8(&qword_1000A4740, &qword_1000A4738, &qword_100081780);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = type metadata accessor for DateInterval();
  sub_100030DE0();
  sub_100006BD4(v25, v26, v27, v24);
  sub_100030DE0();
  sub_100006BD4(v28, v29, v30, v24);
  type metadata accessor for WeatherRequestPeriodicRelativeRange();
  sub_100030DE0();
  sub_100006BD4(v31, v32, v33, v34);
  type metadata accessor for WeatherRequestDailyRelativeRange();
  sub_100030DE0();
  sub_100006BD4(v35, v36, v37, v38);
  type metadata accessor for WeatherRequestHourlyRelativeRange();
  sub_100030DE0();
  sub_100006BD4(v39, v40, v41, v42);
  type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  sub_100030DE0();
  sub_100006BD4(v43, v44, v45, v46);
  type metadata accessor for WDSNetworkActivity();
  sub_100030DE0();
  sub_100006BD4(v47, v48, v49, v50);
  static Locale.preferredLanguages.getter();
  (*(v54 + 104))(v55, enum case for Units.metric(_:), v56);
  WeatherDataRequestOptions.init(language:timeZone:units:countryCode:locationOptions:cachingOptions:treatmentIdentifiers:dailyDateInterval:hourlyDateInterval:periodicRelativeRange:dailyRelativeRange:hourlyRelativeRange:marineHourlyRelativeRange:networkActivity:needsMarineData:needsTwilightData:preferredLanguages:)();
  v1[72] = dispatch thunk of WeatherDataServiceType.perform(requests:for:with:)();
  (*(v60 + 8))(v59, v62);
  swift_task_alloc();
  sub_100030CD4();
  v1[73] = v51;
  *v51 = v52;
  v51[1] = sub_10003DB84;
  a1 = v1 + 9;

  return Promise.resolveAsync()(a1);
}

uint64_t sub_10003DB84()
{
  sub_100030C58();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 592) = v0;

  if (v0)
  {

    v4 = sub_10003E560;
  }

  else
  {
    v4 = sub_10003DCBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003DCBC()
{
  v98 = v0;
  v90 = v0[29];
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[9];
  sub_100003020(&qword_1000A3B88, &qword_100080FA0);
  sub_1000435DC();
  sub_100042EB8(v5, 255, v6);
  result = Dictionary.init(dictionaryLiteral:)();
  v96 = result;
  v92 = *(v4 + 16);
  v93 = v4;
  v91 = v4 + 32;
  v8 = (v2 + 8);
  v88 = (v1 + 32);
  v9 = 0;
  v89 = (v3 + 8);
LABEL_2:
  while (v9 != v92)
  {
    if (v9 >= *(v93 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v10 = *(v91 + 24 * v9 + 16);
    if (!*(v10 + 16))
    {
      goto LABEL_31;
    }

    ++v9;
    sub_100042EFC(v10 + ((*(v90 + 80) + 32) & ~*(v90 + 80)), v0[30], &type metadata accessor for WeatherDataResponse);
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      v11 = v0[31];
      v12 = v0[32];
      v13 = v0[25];
      sub_100043558(v0[30], v12, &qword_1000A46D0, &qword_100081718);
      sub_10004350C(v12, v11, &qword_1000A46D0, &qword_100081718);
      if (sub_100007374(v11, 1, v13) == 1)
      {
        v14 = v0[31];
        sub_100018858(v0[32], &qword_1000A46D0, &qword_100081718);
        sub_100018858(v14, &qword_1000A46D0, &qword_100081718);
        goto LABEL_9;
      }

      v95 = v9;
      v27 = v0[12];
      (*v88)(v0[27], v0[31], v0[25]);
      v28 = 0;
      sub_100043674();
      v30 = v27 + v29;
      for (i = *(v31 + 72); ; v30 += i)
      {
        if (v28 == v0[68])
        {
          static Logger.predictedLocationNotifications.getter();
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          v45 = os_log_type_enabled(v43, v44);
          v46 = v0[32];
          v47 = v0[27];
          v48 = v0[25];
          if (v45)
          {
            v87 = v0[25];
            v49 = swift_slowAlloc();
            v86 = v46;
            v50 = sub_100037B44();
            v97[0] = v50;
            *v49 = 141558275;
            sub_1000436A8();
            *(v49 + 4) = v51;
            *(v49 + 12) = 2081;
            v52 = CLLocationCoordinate2D.id.getter();
            v54 = sub_10000D9FC(v52, v53, v97);

            *(v49 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v43, v44, "Failed to retrieve matching predicted location from response for location=%{private,mask.hash}s", v49, 0x16u);
            sub_100006994(v50);
            sub_10000FA7C(v50);
            sub_10000FA7C(v49);

            v55 = sub_1000436CC();
            v56(v55);
            sub_1000436B4();
            v57(v47, v87);
            v58 = v86;
          }

          else
          {

            v74 = sub_1000436CC();
            v75(v74);
            sub_1000436B4();
            v76(v47, v48);
            v58 = v46;
          }

          result = sub_100018858(v58, &qword_1000A46D0, &qword_100081718);
          v9 = v95;
          goto LABEL_2;
        }

        v34 = v0[23];
        v33 = v0[24];
        v35 = v0[21];
        sub_1000435C4();
        v36 = sub_100030E2C();
        sub_100042EFC(v36, v37, v38);
        Location.coordinate.getter();
        LocationCoordinate.init(_:)();
        LocationCoordinate.init(_:)();
        v39 = static LocationCoordinate.== infix(_:_:)();
        v40 = *v8;
        (*v8)(v34, v35);
        v40(v33, v35);
        if (v39)
        {
          break;
        }

        ++v28;
        sub_1000435AC();
        sub_100042F58(v41, v42);
      }

      v59 = v0[62];
      v60 = v0[63];
      sub_1000325A0(v0[61], v59);
      sub_1000325A0(v59, v60);
      v61 = WeatherAlerts.alerts.getter();
      v62 = swift_task_alloc();
      *(v62 + 16) = v60;
      v63 = sub_100018F68(sub_100042FB0, v62, v61);

      v64 = sub_100013688(v60, v96);
      v65 = v0[63];
      if (v64)
      {
        v66 = v0[60];

        sub_1000435C4();
        sub_100042EFC(v65, v66, v67);
        v68 = sub_10003F438(v0 + 2, v66);
        v70 = v0[60];
        v71 = v0[32];
        v72 = v0[27];
        v73 = v0[25];
        if (*v69)
        {
          sub_10002A9EC(v63);
        }

        else
        {
        }

        (v68)(v0 + 2, 0);
        sub_1000435AC();
        sub_100042F58(v70, v81);
        sub_1000436B4();
        v82(v72, v73);
        sub_100018858(v71, &qword_1000A46D0, &qword_100081718);
      }

      else
      {
        v77 = v0[32];
        v78 = v0[27];
        v79 = v0[25];
        swift_isUniquelyReferenced_nonNull_native();
        v97[0] = v96;
        sub_10002C424(v63, v65);
        sub_1000436B4();
        v80(v78, v79);
        sub_100018858(v77, &qword_1000A46D0, &qword_100081718);
        v96 = v97[0];
      }

      sub_1000435AC();
      result = sub_100042F58(v83, v84);
      v9 = v95;
    }

    else
    {
      sub_100042F58(v0[30], &type metadata accessor for WeatherDataResponse);
LABEL_9:
      static Logger.predictedLocationNotifications.getter();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[19];
      v19 = v0[16];
      if (v17)
      {
        v94 = v9;
        v20 = swift_slowAlloc();
        v21 = sub_100037B44();
        v97[0] = v21;
        *v20 = 141558275;
        sub_1000436A8();
        *(v20 + 4) = v22;
        *(v20 + 12) = 2081;
        v23 = CLLocationCoordinate2D.id.getter();
        v25 = sub_10000D9FC(v23, v24, v97);

        *(v20 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to retrieve weather alerts from response for location=%{private,mask.hash}s", v20, 0x16u);
        sub_100006994(v21);
        sub_10000FA7C(v21);
        v26 = v20;
        v9 = v94;
        sub_10000FA7C(v26);
      }

      result = (*v89)(v18, v19);
    }
  }

  sub_1000435F4();

  v85 = v0[1];

  return v85(v96);
}

void sub_10003E560(uint64_t a1)
{
  static Logger.predictedLocationNotifications.getter();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[17];
    v22 = v1[18];
    v5 = v1[16];
    v6 = sub_100037B44();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 141558531;
    sub_1000436A8();
    *(v6 + 4) = v8;
    *(v6 + 12) = 2081;
    v9 = Array.description.getter();
    v11 = sub_10000D9FC(v9, v10, v23);

    *(v6 + 14) = v11;
    *(v6 + 22) = 2082;
    swift_getErrorValue();
    v12 = Error.logSafeDescription.getter();
    v14 = sub_10000D9FC(v12, v13, v23);

    *(v6 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch weather alerts for location=%{private,mask.hash}s; error=%{public}s", v6, 0x20u);
    swift_arrayDestroy();
    sub_10000FA7C(v7);
    sub_10000FA7C(v6);

    (*(v4 + 8))(v22, v5);
  }

  else
  {
    v16 = v1[17];
    v15 = v1[18];
    v17 = v1[16];

    (*(v16 + 8))(v15, v17);
  }

  sub_100003020(&qword_1000A3B88, &qword_100080FA0);
  sub_1000435DC();
  sub_100042EB8(v18, 255, v19);
  Dictionary.init(dictionaryLiteral:)();

  sub_1000435F4();
  sub_100043680();

  sub_1000436E0();

  __asm { BRAA            X2, X16 }
}

void *sub_10003E8D0(char *a1)
{
  v34 = a1;
  v1 = type metadata accessor for WeatherAlert();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ResolvedPredictedLocation(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Settings.LocationIntelligence.Debug.mockWeatherAlertCount.getter();
  sub_100042EB8(&qword_1000A4728, v12, type metadata accessor for PredictedLocationsWeatherAlertService);
  Configurable.setting<A>(_:)();

  v13 = v35;
  static Logger.predictedLocationNotifications.getter();
  sub_100042EFC(v34, v7, type metadata accessor for ResolvedPredictedLocation);
  v34 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v9;
    v17 = v16;
    v31 = swift_slowAlloc();
    v35 = v31;
    *v17 = 134218499;
    *(v17 + 4) = v13;
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    v18 = ResolvedPredictedLocation.description.getter();
    v32 = v8;
    v20 = v19;
    sub_100042F58(v7, type metadata accessor for ResolvedPredictedLocation);
    v21 = sub_10000D9FC(v18, v20, &v35);

    *(v17 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Using mock weather alerts for predicted location; count=%ld, location=%{private,mask.hash}s", v17, 0x20u);
    sub_100006994(v31);

    result = (*(v33 + 8))(v34, v32);
  }

  else
  {

    sub_100042F58(v7, type metadata accessor for ResolvedPredictedLocation);
    result = (*(v9 + 8))(v34, v8);
  }

  if (v13 < 1)
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
    result = sub_100014674(0, v13, 0);
    v23 = 0;
    v24 = v35;
    v25 = 1;
    v26 = v13;
    while (!v23)
    {
      sub_1000404DC(v4);
      v35 = v24;
      v28 = v24[2];
      v27 = v24[3];
      if (v28 >= v27 >> 1)
      {
        sub_100014674((v27 > 1), v28 + 1, 1);
        v24 = v35;
      }

      v24[2] = v28 + 1;
      result = (*(v2 + 32))(v24 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v28, v4, v1);
      v23 = v25 == v13;
      if (v25 == v13)
      {
        v25 = 0;
      }

      else if (__OFADD__(v25++, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (!--v26)
      {
        return v24;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_10003ED54(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void **))
{
  if (*(a1 + 16))
  {
    sub_100003020(a2, a3);
    sub_1000436C0();
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_10003EE04(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_10003EE24, 0, 0);
}

uint64_t sub_10003EE24()
{
  sub_100030C58();
  v1 = sub_100003020(&qword_1000A4778, &qword_1000817C8);
  v2 = sub_100003020(&qword_1000A4780, &qword_1000817D0);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 24);
  swift_task_alloc();
  sub_100030CD4();
  *(v0 + 48) = v4;
  *v4 = v5;
  v4[1] = sub_10003EF38;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v2, 0, 0, &unk_1000817E0, v3, v1);
}

uint64_t sub_10003EF38()
{
  sub_100030C4C();
  sub_100043668();
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  v3 = sub_100043658();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10003F050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a4;
  v6 = type metadata accessor for Location.Identifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ResolvedPredictedLocation(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003020(&qword_1000A4710, &qword_100081758);
  __chkstk_darwin(v17 - 8);
  v19 = &v32 - v18;
  if (a3)
  {
    Location.coordinate.getter();
    Location.timeZone.getter();
    v20 = type metadata accessor for TimeZone();
    sub_100006BD4(v19, 0, 1, v20);

    WeatherServiceRequestLocation.init(coordinate:countryCode:timeZone:)();
    v21 = 0;
  }

  else
  {
    v33 = v6;
    v34 = v13;
    v35 = v14;
    static Logger.predictedLocationNotifications.getter();
    sub_100042EFC(a1, v12, type metadata accessor for ResolvedPredictedLocation);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      Location.identifier.getter();
      v26 = Location.Identifier.uniqueID.getter();
      v28 = v27;
      (*(v7 + 8))(v9, v33);
      sub_100042F58(v12, type metadata accessor for ResolvedPredictedLocation);
      v29 = sub_10000D9FC(v26, v28, &v37);

      *(v24 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Skipping weather alert fetch due to missing country code for predicted location. predictedLocation=%{private,mask.hash}s", v24, 0x16u);
      sub_100006994(v25);
    }

    else
    {

      sub_100042F58(v12, type metadata accessor for ResolvedPredictedLocation);
    }

    (*(v35 + 8))(v16, v34);
    v21 = 1;
  }

  v30 = type metadata accessor for WeatherServiceRequestLocation();
  return sub_100006BD4(v36, v21, 1, v30);
}

uint64_t (*sub_10003F438(uint64_t *a1, uint64_t a2))()
{
  v4 = sub_100042FE8(0x30uLL);
  *a1 = v4;
  v5 = type metadata accessor for ResolvedPredictedLocation(0);
  v6 = sub_100042FE8(*(*(v5 - 8) + 64));
  v4[4] = v6;
  sub_100042EFC(a2, v6, type metadata accessor for ResolvedPredictedLocation);
  v4[5] = sub_1000429F8(v4, v6);
  return sub_10003F4F4;
}

void sub_10003F4F4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1000435AC();
  sub_100042F58(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_10003F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_100003020(&qword_1000A4720, &qword_1000822B0);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_100003020(&qword_1000A4778, &qword_1000817C8);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = *(type metadata accessor for ResolvedPredictedLocation(0) - 8);
  v4[21] = v7;
  v4[22] = *(v7 + 64);
  v4[23] = swift_task_alloc();
  sub_100003020(&unk_1000A3930, &qword_100080900);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_10003F73C, 0, 0);
}

uint64_t sub_10003F73C()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 168);
    v29 = **(v0 + 88);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v28 = *(v3 + 72);
    v27 = (v4 + 40) & ~v4;
    v6 = type metadata accessor for TaskPriority();
    do
    {
      v30 = v2;
      v8 = *(v0 + 192);
      v7 = *(v0 + 200);
      v9 = *(v0 + 184);
      v10 = *(v0 + 104);
      sub_100030DE0();
      sub_100006BD4(v11, v12, v13, v6);
      sub_1000435C4();
      sub_100042EFC(v5, v9, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v10;
      sub_1000325A0(v9, v15 + v27);
      sub_10004350C(v7, v8, &unk_1000A3930, &qword_100080900);
      LODWORD(v8) = sub_100007374(v8, 1, v6);

      v16 = *(v0 + 192);
      if (v8 == 1)
      {
        sub_100018858(*(v0 + 192), &unk_1000A3930, &qword_100080900);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v6 - 8) + 8))(v16, v6);
      }

      if (v15[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v20 = swift_allocObject();
      *(v20 + 16) = &unk_100081800;
      *(v20 + 24) = v15;

      if (v19 | v17)
      {
        v21 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v0 + 200);
      *(v0 + 48) = 1;
      *(v0 + 56) = v21;
      *(v0 + 64) = v29;
      swift_task_create();

      sub_100018858(v22, &unk_1000A3930, &qword_100080900);
      v5 += v28;
      v2 = v30 - 1;
    }

    while (v30 != 1);
  }

  *(v0 + 72) = **(v0 + 88);
  v23 = swift_task_alloc();
  *(v0 + 208) = v23;
  v24 = sub_100003020(&qword_1000A4788, &qword_100081810);
  v25 = sub_1000434C8(&qword_1000A4790, &qword_1000A4788, &qword_100081810);
  *v23 = v0;
  v23[1] = sub_10003FAE8;

  return AsyncSequence.collect()(v24, v25);
}

uint64_t sub_10003FAE8()
{
  sub_100030C4C();
  sub_100043668();
  sub_100030C64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v4;

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10003FC04, 0, 0);
  }
}

uint64_t sub_10003FC04()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = _swiftEmptyArrayStorage;
    v6 = *(v3 + 72);
    do
    {
      v8 = *(v0 + 152);
      v7 = *(v0 + 160);
      v9 = *(v0 + 112);
      sub_10004350C(v4, v7, &qword_1000A4778, &qword_1000817C8);
      sub_100043558(v7, v8, &qword_1000A4778, &qword_1000817C8);
      v10 = sub_100007374(v8, 1, v9);
      v11 = *(v0 + 152);
      if (v10 == 1)
      {
        sub_100018858(v11, &qword_1000A4778, &qword_1000817C8);
      }

      else
      {
        sub_100043558(v11, *(v0 + 128), &qword_1000A4720, &qword_1000822B0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005BC9C(0, v5[2] + 1, 1, v5);
          v5 = v17;
        }

        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          sub_10005BC9C(v12 > 1, v13 + 1, 1, v5);
          v5 = v18;
        }

        v5[2] = v13 + 1;
        sub_100043674();
        sub_100043558(v16, v5 + v14 + *(v15 + 72) * v13, &qword_1000A4720, &qword_1000822B0);
      }

      v4 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  **(v0 + 80) = v5;

  sub_100030C70();

  return v19();
}

uint64_t sub_10003FE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  v6 = type metadata accessor for Location.Identifier();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for ResolvedPredictedLocation(0);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_10003FF7C, 0, 0);
}

uint64_t sub_10003FF7C()
{
  sub_100030C58();
  sub_1000032B8((v0[5] + 56), *(v0[5] + 80));
  sub_1000436C0();
  v0[14] = dispatch thunk of LocationMetadataManagerType.resolveCountryCode(for:)();
  swift_task_alloc();
  sub_100030CD4();
  v0[15] = v1;
  *v1 = v2;
  v1[1] = sub_100040044;

  return Promise.resolveAsync()(v0 + 2);
}

uint64_t sub_100040044()
{
  sub_100030C4C();
  sub_100043668();
  v3 = v2;
  sub_100030C64();
  *v4 = v3;
  v5 = *v1;
  sub_10000FA6C();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    v7 = sub_10004021C;
  }

  else
  {

    v7 = sub_10004014C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10004014C()
{
  sub_100030C58();
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_100003020(&qword_1000A4720, &qword_1000822B0);
  if (v2)
  {
    v4 = (v0[4] + *(v3 + 48));
    sub_1000435C4();
    sub_100042EFC(v5, v6, v7);
    v8 = 0;
    *v4 = v1;
    v4[1] = v2;
  }

  else
  {
    v8 = 1;
  }

  sub_100006BD4(v0[4], v8, 1, v3);

  sub_100030C70();

  return v9();
}

uint64_t sub_10004021C()
{
  v35 = v0;
  v1 = v0[10];
  v2 = v0[6];

  static Logger.predictedLocationNotifications.getter();
  sub_1000435C4();
  sub_100042EFC(v2, v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  if (v6)
  {
    v33 = v0[11];
    v12 = v0[8];
    v11 = v0[9];
    v29 = v0[7];
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = sub_100037B44();
    v34 = v31;
    *v13 = 141558787;
    sub_1000436A8();
    *(v13 + 4) = v14;
    *(v13 + 12) = 2081;
    v32 = v7;
    Location.identifier.getter();
    v15 = Location.Identifier.uniqueID.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v29);
    sub_1000435AC();
    sub_100042F58(v9, v18);
    v19 = sub_10000D9FC(v15, v17, &v34);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2160;
    sub_1000436A8();
    *(v13 + 24) = v20;
    *(v13 + 32) = 2113;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v21;
    *v30 = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to resolve country code for location; predictedLocation=%{private,mask.hash}s, error=%{private,mask.hash}@", v13, 0x2Au);
    sub_100018858(v30, &qword_1000A4030, &qword_100080F58);
    sub_10000FA7C(v30);
    sub_100006994(v31);
    sub_10000FA7C(v31);
    sub_10000FA7C(v13);

    (*(v8 + 8))(v32, v33);
  }

  else
  {

    sub_1000435AC();
    sub_100042F58(v9, v22);
    (*(v8 + 8))(v7, v10);
  }

  sub_100003020(&qword_1000A4720, &qword_1000822B0);
  sub_100030DE0();
  sub_100006BD4(v23, v24, v25, v26);

  sub_100030C70();

  return v27();
}

uint64_t sub_1000404DC@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v1 = sub_100003020(&qword_1000A4758, &qword_100081798);
  __chkstk_darwin(v1 - 8);
  v78 = &v64 - v2;
  v3 = sub_100003020(&qword_1000A3E28, &qword_1000817A0);
  __chkstk_darwin(v3 - 8);
  v77 = &v64 - v4;
  v5 = sub_100003020(&qword_1000A4760, &qword_1000817A8);
  __chkstk_darwin(v5 - 8);
  v76 = &v64 - v6;
  v7 = type metadata accessor for Severity();
  v74 = *(v7 - 8);
  v75 = v7;
  __chkstk_darwin(v7);
  v73 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003020(&qword_1000A4768, &unk_1000817B0);
  __chkstk_darwin(v9 - 8);
  v68 = &v64 - v10;
  v11 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v12 = __chkstk_darwin(v11 - 8);
  v82 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = &v64 - v14;
  v15 = type metadata accessor for Calendar();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v65 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v64 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v81 = &v64 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v64 - v25;
  __chkstk_darwin(v24);
  v67 = &v64 - v27;
  v28 = sub_100003020(&qword_1000A3540, &unk_100080520);
  __chkstk_darwin(v28 - 8);
  v30 = &v64 - v29;
  v71 = &v64 - v29;
  v31 = type metadata accessor for UUID();
  __chkstk_darwin(v31 - 8);
  v72 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v33 = sub_100003020(&qword_1000A3548, &qword_100080FC0);
  v34 = sub_100006BD4(v30, 1, 1, v33);
  v83 = 0x206B636F4DLL;
  v84 = 0xE500000000000000;
  v35 = sub_100042E4C(v34, &off_10009AD98);
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v35 = 0x5720657265766553;
    v37 = 0xEE00726568746165;
  }

  v38 = v37;
  String.append(_:)(*&v35);

  v69 = v84;
  v70 = v83;
  Date.init()();
  static Calendar.current.getter();
  v39 = v26;
  Date.wc_addHours(_:calendar:)();
  v40 = *(v16 + 8);
  v40(v18, v15);
  v41 = *(v65 + 8);
  v66 = v39;
  v41(v39, v19);
  v42 = v81;
  Date.init()();
  static Calendar.current.getter();
  Date.wc_addHours(_:calendar:)();
  v43 = v15;
  v40(v18, v15);
  v41(v42, v19);
  v44 = v64;
  Date.init()();
  static Calendar.current.getter();
  Date.wc_addHours(_:calendar:)();
  v40(v18, v15);
  v41(v44, v19);
  Date.init()();
  static Calendar.current.getter();
  v45 = v80;
  Date.wc_addHours(_:calendar:)();
  v40(v18, v43);
  v41(v44, v19);
  sub_100006BD4(v45, 0, 1, v19);
  Date.init()();
  static Calendar.current.getter();
  v46 = v82;
  Date.wc_addHours(_:calendar:)();
  v40(v18, v43);
  v41(v44, v19);
  sub_100006BD4(v46, 0, 1, v19);
  v47 = enum case for Certainty.likely(_:);
  v48 = type metadata accessor for Certainty();
  v49 = v68;
  (*(*(v48 - 8) + 104))(v68, v47, v48);
  sub_100006BD4(v49, 0, 1, v48);
  sub_100003020(&qword_1000A4770, &qword_1000817C0);
  v50 = type metadata accessor for ResponseType();
  v51 = *(v50 - 8);
  v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100081610;
  (*(v51 + 104))(v53 + v52, enum case for ResponseType.prepare(_:), v50);
  (*(v74 + 104))(v73, enum case for Severity.severe(_:), v75);
  v54 = enum case for EventSignificance.warning(_:);
  v55 = type metadata accessor for EventSignificance();
  v56 = v76;
  (*(*(v55 - 8) + 104))(v76, v54, v55);
  sub_100006BD4(v56, 0, 1, v55);
  v57 = enum case for Urgency.expected(_:);
  v58 = type metadata accessor for Urgency();
  v59 = v77;
  (*(*(v58 - 8) + 104))(v77, v57, v58);
  sub_100006BD4(v59, 0, 1, v58);
  v60 = enum case for Importance.high(_:);
  v61 = type metadata accessor for Importance();
  v62 = v78;
  (*(*(v61 - 8) + 104))(v78, v60, v61);
  sub_100006BD4(v62, 0, 1, v61);
  return WeatherAlert.init(id:area:areaId:areaName:countryCode:description:expireTime:issuedTime:effectiveTime:eventOnsetTime:eventEndTime:detailsUrl:certainty:phenomenon:responses:severity:significance:source:eventSource:urgency:messages:importance:)();
}

void *sub_100040EE4()
{
  sub_100006994(v0 + 2);
  sub_100006994(v0 + 7);
  sub_100006994(v0 + 12);
  return v0;
}

uint64_t sub_100040F14()
{
  sub_100040EE4();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_100040F6C()
{
  sub_100030C4C();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = sub_100003020(&qword_1000A46B8, &unk_1000816F0);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_100003020(&qword_1000A3C08, &qword_100080B18);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_100043658();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100041074()
{
  sub_100030C4C();
  v1 = sub_10003C918();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_100041114;
  v3 = *(v0 + 16);

  return sub_10003CA0C(v3, v1);
}

uint64_t sub_100041114()
{
  sub_100030C4C();
  sub_100043668();
  sub_100030C64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = sub_100043658();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100041200()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = v0[7];
    v23 = v0[4];
    sub_10001484C(0, v2, 0);
    result = sub_100030B04(v1);
    v5 = result;
    v6 = v1 + 64;
    v7 = v2 - 1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v1 + 32))
      {
        if ((*(v6 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_18;
        }

        if (v4 != *(v1 + 36))
        {
          goto LABEL_19;
        }

        v25 = v7;
        v26 = v4;
        v8 = v0[9];
        v10 = v0[5];
        v9 = v0[6];
        type metadata accessor for ResolvedPredictedLocation(0);
        sub_1000435C4();
        sub_100042EFC(v11, v9, v12);
        v13 = *(*(v1 + 56) + 8 * v5);
        sub_1000325A0(v9, v10);
        *(v10 + *(v23 + 48)) = v13;
        v14 = *(v24 + 48);

        sub_1000414F8(v8, v10, v13);
        *(v8 + v14) = v15;
        sub_100018858(v10, &qword_1000A46B8, &unk_1000816F0);
        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_10001484C((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        sub_100043674();
        result = sub_100043558(v20, _swiftEmptyArrayStorage + v18 + *(v19 + 72) * v17, &qword_1000A3C08, &qword_100080B18);
        if (v5 >= -(-1 << *(v1 + 32)))
        {
          goto LABEL_20;
        }

        v6 = v1 + 64;
        if ((*(v1 + 64 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_21;
        }

        if (v26 != *(v1 + 36))
        {
          goto LABEL_22;
        }

        result = _HashTable.occupiedBucket(after:)();
        if (!v25)
        {
          goto LABEL_14;
        }

        v5 = result;
        v4 = *(v1 + 36);
        v7 = v25 - 1;
        if (result < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_14:

    v21 = sub_10003ED54(_swiftEmptyArrayStorage, &qword_1000A46C0, &qword_100081708, sub_1000425B0);

    v22 = v0[1];

    return v22(v21);
  }

  return result;
}

void sub_1000414F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Location.Identifier();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ResolvedPredictedLocation(0);
  __chkstk_darwin(v8 - 8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a3;
  v14 = sub_100003020(&qword_1000A3B88, &qword_100080FA0);
  sub_1000434C8(&qword_1000A4080, &qword_1000A3B88, &qword_100080FA0);
  v53 = v14;
  v15 = Sequence.groupedBy<A>(_:)();
  v16 = *(v15 + 16);
  v59 = v10;
  v60 = a1;
  v58 = v13;
  if (v16)
  {
    v51 = v11;
    v52 = a2;
    v67 = _swiftEmptyArrayStorage;
    sub_100014654(0, v16, 0);
    v17 = v67;
    v20 = sub_100030B04(v15);
    v21 = 0;
    v22 = v15 + 64;
    v62 = v18;
    v63 = v16;
    v61 = v15 + 72;
    v64 = v15 + 64;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v15 + 32))
    {
      v23 = v20 >> 6;
      if ((*(v22 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v15 + 36) != v18)
      {
        goto LABEL_29;
      }

      v65 = v19;
      v24 = *(*(v15 + 56) + 8 * v20);
      v66 = v18;
      v67 = v17;
      v26 = v17[2];
      v25 = v17[3];

      if (v26 >= v25 >> 1)
      {
        sub_100014654((v25 > 1), v26 + 1, 1);
        v17 = v67;
      }

      v17[2] = v26 + 1;
      v17[v26 + 4] = v24;
      v27 = 1 << *(v15 + 32);
      if (v20 >= v27)
      {
        goto LABEL_30;
      }

      v22 = v64;
      v28 = *(v64 + 8 * v23);
      if ((v28 & (1 << v20)) == 0)
      {
        goto LABEL_31;
      }

      if (*(v15 + 36) != v66)
      {
        goto LABEL_32;
      }

      v29 = v28 & (-2 << (v20 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v17;
        v31 = v23 << 6;
        v32 = v23 + 1;
        v33 = (v61 + 8 * v23);
        while (v32 < (v27 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            sub_10002FAA8(v20, v66, v65 & 1);
            v27 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        sub_10002FAA8(v20, v66, v65 & 1);
LABEL_19:
        v17 = v30;
      }

      v19 = 0;
      ++v21;
      v20 = v27;
      v18 = v62;
      if (v21 == v63)
      {

        v10 = v59;
        a1 = v60;
        v11 = v51;
        a2 = v52;
        v13 = v58;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_23:
    v36 = v57;
    static Logger.predictedLocationNotifications.getter();
    sub_100042EFC(a2, v36, type metadata accessor for ResolvedPredictedLocation);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = v66;
      *v39 = 141558531;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      v40 = a2;
      v41 = v54;
      Location.identifier.getter();
      v42 = Location.Identifier.uniqueID.getter();
      v44 = v43;
      v45 = v41;
      a2 = v40;
      (*(v55 + 8))(v45, v56);
      sub_100042F58(v36, type metadata accessor for ResolvedPredictedLocation);
      v46 = sub_10000D9FC(v42, v44, &v67);

      *(v39 + 14) = v46;
      *(v39 + 22) = 2080;
      v47 = Array.description.getter();
      v49 = sub_10000D9FC(v47, v48, &v67);

      *(v39 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v37, v38, "Successfully fetched weather alerts for location=%{private,mask.hash}s; alerts=%s", v39, 0x20u);
      swift_arrayDestroy();
      a1 = v60;

      (*(v11 + 8))(v58, v59);
    }

    else
    {

      sub_100042F58(v36, type metadata accessor for ResolvedPredictedLocation);
      (*(v11 + 8))(v13, v10);
    }

    sub_100042EFC(a2, a1, type metadata accessor for ResolvedPredictedLocation);
  }
}

uint64_t sub_100041B38(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041C30;

  return v6(a1);
}

uint64_t sub_100041C30()
{
  sub_100030C4C();
  sub_100043668();
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  sub_100030C70();

  return v3();
}

Swift::Int sub_100041D14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for ResolvedPredictedLocation(0);
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  sub_100003020(a3, a4);
  v44 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (!*(v12 + 16))
  {
LABEL_34:

LABEL_35:
    *v7 = v14;
    return result;
  }

  v40 = v4;
  v41 = v12;
  v15 = 0;
  v16 = (v12 + 64);
  v17 = 1 << *(v12 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v12 + 64);
  v20 = (v17 + 63) >> 6;
  v21 = result + 64;
  v22 = v43;
  if (!v19)
  {
LABEL_7:
    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_12;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v12 + 32);
    v7 = v40;
    if (v39 >= 64)
    {
      sub_10002C6DC(0, (v39 + 63) >> 6, v16);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v12 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v23 = __clz(__rbit64(v19));
    v24 = (v19 - 1) & v19;
LABEL_12:
    v27 = v23 | (v15 << 6);
    v28 = *(v12 + 48);
    v46 = *(v42 + 72);
    v47 = v24;
    v29 = v28 + v46 * v27;
    if (v44)
    {
      sub_1000325A0(v29, v11);
      v45 = *(*(v12 + 56) + 8 * v27);
    }

    else
    {
      sub_100042EFC(v29, v11, type metadata accessor for ResolvedPredictedLocation);
      v45 = *(*(v12 + 56) + 8 * v27);
    }

    Hasher.init(_seed:)();
    type metadata accessor for Location();
    sub_100042EB8(&qword_1000A4158, 255, &type metadata accessor for Location);
    dispatch thunk of Hashable.hash(into:)();
    v30 = *&v11[*(v22 + 20)];
    if (v30 == 0.0)
    {
      v30 = 0.0;
    }

    Hasher._combine(_:)(*&v30);
    type metadata accessor for Date();
    sub_100042EB8(&qword_1000A4160, 255, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v31 = -1 << *(v14 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
    {
      break;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v12 = v41;
LABEL_26:
    *(v21 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    result = sub_1000325A0(v11, *(v14 + 48) + v46 * v34);
    *(*(v14 + 56) + 8 * v34) = v45;
    ++*(v14 + 16);
    v19 = v47;
    if (!v47)
    {
      goto LABEL_7;
    }
  }

  v35 = 0;
  v36 = (63 - v31) >> 6;
  v12 = v41;
  while (++v33 != v36 || (v35 & 1) == 0)
  {
    v37 = v33 == v36;
    if (v33 == v36)
    {
      v33 = 0;
    }

    v35 |= v37;
    v38 = *(v21 + 8 * v33);
    if (v38 != -1)
    {
      v34 = __clz(__rbit64(~v38)) + (v33 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_100042168(uint64_t a1, char a2, void *a3)
{
  v41 = a3;
  v6 = type metadata accessor for ResolvedPredictedLocation(0);
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003020(&qword_1000A3C18, &qword_100081770);
  v9 = __chkstk_darwin(v8);
  v12 = v36 - v11;
  v39 = *(a1 + 16);
  if (!v39)
  {
  }

  v36[0] = v6;
  v36[1] = v3;
  v13 = 0;
  v14 = *(v9 + 48);
  v37 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v38 = v14;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v10;
    sub_10004350C(v37 + *(v10 + 72) * v13, v12, &qword_1000A3C18, &qword_100081770);
    v16 = v42;
    sub_1000325A0(v12, v42);
    v17 = *&v12[v38];
    v18 = *v41;
    v20 = sub_100074E6C(v16);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_19;
    }

    v24 = v19;
    if (v18[3] < v23)
    {
      break;
    }

    if (a2)
    {
      if (v19)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_100003020(&qword_1000A4180, &qword_100081120);
      _NativeDictionary.copy()();
      if (v24)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v27 = v42;
    v28 = *v41;
    *(*v41 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    sub_1000325A0(v27, v28[6] + *(v40 + 72) * v20);
    *(v28[7] + 8 * v20) = v17;
    v29 = v28[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    ++v13;
    v28[2] = v31;
    a2 = 1;
    v10 = v15;
    if (v39 == v13)
    {
    }
  }

  sub_100041D14(v23, a2 & 1, &qword_1000A4750, &unk_100081788);
  v25 = sub_100074E6C(v42);
  if ((v24 & 1) != (v26 & 1))
  {
    goto LABEL_21;
  }

  v20 = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v32 = swift_allocError();
  swift_willThrow();
  v45 = v32;
  swift_errorRetain();
  sub_100003020(&qword_1000A37F0, &unk_100080850);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100042F58(v42, type metadata accessor for ResolvedPredictedLocation);
  }

LABEL_22:
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v34._object = 0x80000001000854D0;
  v34._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v34);
  _print_unlocked<A, B>(_:_:)();
  v35._countAndFlagsBits = 39;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000425B0(uint64_t a1, char a2, void *a3)
{
  v41 = a3;
  v6 = type metadata accessor for ResolvedPredictedLocation(0);
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003020(&qword_1000A3C08, &qword_100080B18);
  v9 = __chkstk_darwin(v8);
  v12 = v36 - v11;
  v39 = *(a1 + 16);
  if (!v39)
  {
  }

  v36[0] = v6;
  v36[1] = v3;
  v13 = 0;
  v14 = *(v9 + 48);
  v37 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v38 = v14;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v10;
    sub_10004350C(v37 + *(v10 + 72) * v13, v12, &qword_1000A3C08, &qword_100080B18);
    v16 = v42;
    sub_1000325A0(v12, v42);
    v17 = *&v12[v38];
    v18 = *v41;
    v20 = sub_100074E6C(v16);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_19;
    }

    v24 = v19;
    if (v18[3] < v23)
    {
      break;
    }

    if (a2)
    {
      if (v19)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_100003020(&qword_1000A46C8, &qword_100081710);
      _NativeDictionary.copy()();
      if (v24)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v27 = v42;
    v28 = *v41;
    *(*v41 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    sub_1000325A0(v27, v28[6] + *(v40 + 72) * v20);
    *(v28[7] + 8 * v20) = v17;
    v29 = v28[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    ++v13;
    v28[2] = v31;
    a2 = 1;
    v10 = v15;
    if (v39 == v13)
    {
    }
  }

  sub_100041D14(v23, a2 & 1, &qword_1000A46C0, &qword_100081708);
  v25 = sub_100074E6C(v42);
  if ((v24 & 1) != (v26 & 1))
  {
    goto LABEL_21;
  }

  v20 = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v32 = swift_allocError();
  swift_willThrow();
  v45 = v32;
  swift_errorRetain();
  sub_100003020(&qword_1000A37F0, &unk_100080850);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100042F58(v42, type metadata accessor for ResolvedPredictedLocation);
  }

LABEL_22:
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v34._object = 0x80000001000854D0;
  v34._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v34);
  _print_unlocked<A, B>(_:_:)();
  v35._countAndFlagsBits = 39;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*sub_1000429F8(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = sub_100042FE8(0x58uLL);
  *a1 = v4;
  v5 = type metadata accessor for ResolvedPredictedLocation(0);
  v6 = sub_100042FE8(*(*(v5 - 8) + 64));
  v4[8] = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100042EFC(a2, v6, type metadata accessor for ResolvedPredictedLocation);
  v4[9] = sub_100042E18(v4);
  v4[10] = sub_100042B54(v4 + 4, v6, isUniquelyReferenced_nonNull_native);
  return sub_100042AD4;
}

void sub_100042AD4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_1000435AC();
  sub_100042F58(v3, v4);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_100042B54(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = sub_100042FE8(0x40uLL);
  *a1 = v8;
  v8[1] = a2;
  v8[2] = v3;
  v9 = type metadata accessor for ResolvedPredictedLocation(0);
  v8[3] = v9;
  v10 = *(v9 - 8);
  v8[4] = v10;
  v8[5] = sub_100042FE8(*(v10 + 64));
  v11 = *v3;
  v12 = sub_100074E6C(a2);
  *(v8 + 56) = v13 & 1;
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v12;
  v18 = v13;
  sub_100003020(&qword_1000A4180, &qword_100081120);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v16))
  {
    v19 = sub_100074E6C(a2);
    if ((v18 & 1) == (v20 & 1))
    {
      v17 = v19;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[6] = v17;
  if (v18)
  {
    v21 = *(*(*v4 + 56) + 8 * v17);
  }

  else
  {
    v21 = 0;
  }

  *v8 = v21;
  return sub_100042CE0;
}

void sub_100042CE0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v9 = v1[5];
      sub_1000435C4();
      sub_100042EFC(v10, v9, v11);
      sub_10002C63C(v4, v9, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    sub_1000435AC();
    sub_100042F58(v5, v6);
    sub_100003020(&qword_1000A3B88, &qword_100080FA0);
    sub_1000435DC();
    sub_100042EB8(v7, 255, v8);
    _NativeDictionary._delete(at:)();
  }

  v12 = v1[5];

  free(v12);

  free(v1);
}

uint64_t (*sub_100042E18(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100042E40;
}

unint64_t sub_100042E4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_10002F970(*(a2 + 16));
  if (result < v2)
  {
    v5 = *(a2 + 16 * result + 32);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100042EB8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1000436C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100042EFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100018904();
  v4 = sub_100030E2C();
  v5(v4);
  return a2;
}

uint64_t sub_100042F58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100018904();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_100042FE8(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_10004301C()
{
  sub_100030C58();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  sub_100030CD4();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1000435A4;

  return sub_10003F554(v5, v3, v7, v6);
}

uint64_t sub_1000430C8()
{
  v1 = (type metadata accessor for ResolvedPredictedLocation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  type metadata accessor for Location();
  sub_100018904();
  (*(v5 + 8))(v0 + v3);
  v6 = v1[8];
  v7 = type metadata accessor for Date();
  sub_100018904();
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v9(v0 + v3 + v1[9], v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004320C(uint64_t a1)
{
  v4 = *(type metadata accessor for ResolvedPredictedLocation(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  swift_task_alloc();
  sub_100030CD4();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_100043300;

  return sub_10003FE30(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100043300()
{
  sub_100030C4C();
  sub_100043668();
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  sub_100030C70();

  return v3();
}

uint64_t sub_1000433E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100043418()
{
  sub_100030C58();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  sub_100030CD4();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_100043300;

  return sub_100041B38(v3, v4);
}

uint64_t sub_1000434C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000325C(a2, a3);
    sub_1000436C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004350C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000436FC(a1, a2, a3, a4);
  sub_100018904();
  v5 = sub_100030E2C();
  v6(v5);
  return v4;
}

uint64_t sub_100043558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000436FC(a1, a2, a3, a4);
  sub_100018904();
  v5 = sub_100030E2C();
  v6(v5);
  return v4;
}

uint64_t sub_100043680()
{
  v4 = v0[19];
  v3 = v0[20];
  *(v1 - 128) = v0[23];
  *(v1 - 120) = v3;
  v5 = v0[18];
  *(v1 - 112) = v4;
  *(v1 - 104) = v5;
}

uint64_t sub_1000436FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100003020(a3, a4);
}

void *sub_10004371C()
{
  sub_100006930((v0 + 2), v3);
  sub_1000032B8(v3, v3[3]);
  sub_10004AEC8(&qword_1000A3B48, v1, type metadata accessor for PredictedLocationsNotificationsManager, &unk_1000818C0);
  sub_10004B08C();
  dispatch thunk of LocationManagerType.removeObserver(_:)();
  sub_100006994(v3);
  sub_100006994(v0 + 2);
  sub_100006994(v0 + 7);

  sub_100006994(v0 + 14);
  sub_100006994(v0 + 19);
  swift_unknownObjectRelease();
  sub_100006994(v0 + 26);
  sub_100006994(v0 + 31);
  sub_100006994(v0 + 36);
  sub_100006994(v0 + 41);
  sub_100006994(v0 + 46);
  sub_100018858((v0 + 53), &qword_1000A48D0, &qword_100081AD8);
  return v0;
}

uint64_t sub_100043834()
{
  sub_10004371C();

  return _swift_deallocClassInstance(v0, 432, 7);
}

char *sub_10004388C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100003020(&qword_1000A48A0, &qword_1000818B8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1000438BC()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_10000E960(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for PredictedLocationsFeatureState();
  v1[9] = v4;
  sub_10000E960(v4);
  v1[10] = v5;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AF38();
  sub_10004AEC8(v6, 255, v7, &protocol conformance descriptor for LocIntelActor.Actor);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10004B180();
  v1[14] = v8;
  v1[15] = v9;
  v10 = sub_10004B174();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100043A3C()
{
  sub_10004B284();
  sub_100030E20();
  if (WDWeatherAppIsInstalled())
  {
    sub_1000032B8((*(v0 + 16) + 368), *(*(v0 + 16) + 392));
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_100043BCC;
    sub_10004B250();

    return dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()(v2);
  }

  else
  {

    static Logger.predictedLocationNotifications.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (sub_10004B118(v5))
    {
      v6 = sub_100030F7C();
      *v6 = 0;
      sub_10004B21C(&_mh_execute_header, v7, v8, "Weather app was uninstalled; skipping processing of notifications");
      sub_10000FA7C(v6);
    }

    v9 = sub_100030CE0();
    v10(v9);
    sub_10004B0FC();

    sub_100030C70();
    sub_10004B250();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_100043BCC()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 120);
  v6 = *(v0 + 112);

  return _swift_task_switch(sub_100043CD8, v6, v5);
}

uint64_t sub_100043CD8()
{
  sub_10004B284();
  sub_100030E20();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  (*(v3 + 104))(v0[11], enum case for PredictedLocationsFeatureState.active(_:), v2);
  v4 = static PredictedLocationsFeatureState.== infix(_:_:)();
  v5 = *(v3 + 8);
  v6 = sub_100030CE0();
  v5(v6);
  (v5)(v1, v2);
  if (v4)
  {
    sub_1000032B8((v0[2] + 328), *(v0[2] + 352));
    PredictedLocationsScheduleStoreType.recordRefresh()();
    static Logger.predictedLocationNotifications.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (sub_10004B070(v8))
    {
      v9 = sub_100030F7C();
      sub_10004B0A8(v9);
      sub_10004AFE8();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      sub_10004B030();
    }

    v15 = v0[4];
    v16 = v0[2];

    v0[17] = *(v15 + 8);
    v17 = sub_100030CE0();
    v18(v17);
    sub_1000032B8((v16 + 248), *(v16 + 272));
    v19 = swift_task_alloc();
    v0[18] = v19;
    *v19 = v0;
    v19[1] = sub_100043F4C;
    sub_10004B250();

    return sub_100068DE0();
  }

  else
  {

    static Logger.predictedLocationNotifications.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (sub_10004B118(v23))
    {
      v24 = sub_100030F7C();
      *v24 = 0;
      sub_10004B21C(&_mh_execute_header, v25, v26, "Predicted locations notification feature state is not active; skipping processing of notifications");
      sub_10000FA7C(v24);
    }

    v27 = sub_100030CE0();
    v28(v27);
    sub_10004B0FC();

    sub_100030C70();
    sub_10004B250();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_100043F4C()
{
  sub_100030C4C();
  sub_100030E50();
  sub_10004AFD8();
  *v3 = v2;
  v4 = *v1;
  sub_10004B098();
  *v5 = v4;
  *(v7 + 152) = v6;

  sub_100030E68();
  v9 = *(v8 + 120);
  v10 = *(v0 + 112);

  return _swift_task_switch(sub_100044058, v10, v9);
}

uint64_t sub_100044058()
{
  sub_10004B23C();
  sub_100030E20();
  static Logger.predictedLocationNotifications.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10004B070(v2))
  {
    v3 = sub_100030F7C();
    sub_10004B0A8(v3);
    sub_10004AFE8();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_10004B030();
  }

  v9 = v0[17];

  v10 = sub_100030CE0();
  v9(v10);
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_10004415C;
  sub_10004B064(v0[19]);
  sub_10004B1C0();

  return sub_1000445C0(v12);
}

uint64_t sub_10004415C(uint64_t a1)
{
  sub_10004B23C();
  sub_100030E20();
  v3 = v2;
  v4 = *v1;
  sub_10000FA6C();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;
  *(v4 + 168) = v3;

  v7 = swift_task_alloc();
  *(v4 + 176) = v7;
  *v7 = v6;
  v7[1] = sub_10004429C;
  sub_10004B1C0();

  return sub_1000448B4(v8);
}

uint64_t sub_10004429C()
{
  sub_100030C58();
  sub_100030E50();
  sub_10000FA6C();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v3;
  v4[1] = sub_1000443FC;
  v5 = sub_10004B064(*(v0 + 152));

  return sub_100045238(v5);
}

uint64_t sub_1000443FC()
{
  sub_100030C58();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 120);
  v6 = *(v0 + 112);

  return _swift_task_switch(sub_10004452C, v6, v5);
}

uint64_t sub_10004452C()
{
  sub_10004B23C();
  sub_100030E20();

  sub_10004B134();
  sub_10004B0FC();

  sub_100030C70();
  sub_10004B1C0();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000445C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v4;
  v2[11] = v3;

  return _swift_task_switch(sub_100044688, v4, v3);
}

uint64_t sub_100044688()
{
  sub_100030C4C();
  v0[12] = *(v0[8] + 96);
  ReferenceCountedLazy.increase()();
  sub_1000032B8(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_100044738;
  sub_10004B064(v0[7]);

  return sub_100040F6C();
}

uint64_t sub_100044738()
{
  sub_100030C4C();
  sub_100030E50();
  sub_10004AFD8();
  *v3 = v2;
  v4 = *v1;
  sub_10004B098();
  *v5 = v4;
  *(v7 + 112) = v6;

  sub_100030E68();
  v9 = *(v8 + 88);
  v10 = *(v0 + 80);

  return _swift_task_switch(sub_100044844, v10, v9);
}

uint64_t sub_100044844()
{
  sub_100030C4C();

  ReferenceCountedLazy.decrease()();
  sub_100006994(v0 + 2);
  v1 = v0[1];
  v2 = v0[14];

  return v1(v2);
}

uint64_t sub_1000448B4(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for Expression();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = *(type metadata accessor for ResolvedPredictedLocation(0) - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_100003020(&qword_1000A40F0, &qword_100081030);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v6;
  v2[21] = v5;

  return _swift_task_switch(sub_100044A98, v6, v5);
}

void sub_100044A98(uint64_t a1)
{
  v3 = *(v1 + 136);
  v2 = *(v1 + 144);
  v4 = *(v1 + 128);
  v5 = *(v1 + 72);
  *(v1 + 176) = *(*(v1 + 80) + 104);
  ReferenceCountedLazy.increase()();
  *(v1 + 64) = v5;
  *(v1 + 184) = *(v1 + 56);
  swift_getKeyPath();

  KeyPathComparator.init<A>(_:order:)();
  sub_100003020(&qword_1000A48B0, &qword_100081A78);
  sub_100006CD0(&qword_1000A48B8, &qword_1000A48B0, &qword_100081A78, &protocol conformance descriptor for [A : B].Keys);
  sub_100006CD0(&qword_1000A4110, &qword_1000A40F0, &qword_100081030, &protocol conformance descriptor for KeyPathComparator<A>);
  v6 = Sequence.sorted<A>(using:)();
  *(v1 + 192) = v6;
  (*(v3 + 8))(v2, v4);

  v7 = *(v6 + 16);
  *(v1 + 200) = v7;
  if (v7)
  {
    v8 = 0;
    *(v1 + 256) = *(*(v1 + 112) + 80);
    while (1)
    {
      sub_10004B198(v8);
      if (v9)
      {
        __break(1u);
        return;
      }

      v10 = *(v1 + 72);
      sub_10004AF50();
      sub_10004AB4C(v11, v12, v13);
      if (*(v10 + 16) && (sub_100074E6C(*(v1 + 120)), (v14 & 1) != 0))
      {
      }

      else
      {
        v15 = _swiftEmptyArrayStorage;
      }

      *(v1 + 216) = v15;
      v16 = v15[2];
      *(v1 + 224) = v16;
      if (v16)
      {
        break;
      }

      v18 = *(v1 + 200);
      v17 = *(v1 + 208);
      v19 = *(v1 + 120);

      sub_10004AF20();
      sub_10004AD90(v19, v20);
      if (v17 + 1 == v18)
      {
        goto LABEL_15;
      }

      v8 = *(v1 + 208) + 1;
    }

    *(v1 + 232) = 0;
    *(v1 + 240) = v15[4];

    v21 = swift_task_alloc();
    *(v1 + 248) = v21;
    *v21 = v1;
    v22 = sub_10004AFF8(v21);

    sub_100046EE8(v22, v23, v24);
  }

  else
  {
LABEL_15:

    NotificationStore.periodicWeatherAlerts.getter();
    dispatch thunk of Table.delete.getter();

    *(v1 + 40) = type metadata accessor for Date();
    *(v1 + 48) = &protocol witness table for Date;
    sub_100006D18((v1 + 16));
    Date.init(timeIntervalSinceNow:)();
    sub_10004B1AC();
    <= infix(_:_:)();
    sub_100006994((v1 + 16));
    dispatch thunk of Delete.where(_:)();
    v25 = sub_100030CAC();
    v26(v25);

    sub_10004B1FC();

    sub_100030C70();

    v27();
  }
}

uint64_t sub_100044E78()
{
  sub_100030C58();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 168);
  v6 = *(v0 + 160);

  return _swift_task_switch(sub_100044FA8, v6, v5);
}

void sub_100044FA8()
{
  sub_10004B23C();
  sub_100030E20();
  v1 = v0[29] + 1;
  if (v1 == v0[28])
  {
    while (1)
    {
      v3 = v0[25];
      v2 = v0[26];
      v4 = v0[15];

      sub_10004AF20();
      sub_10004AD90(v4, v5);
      if (v2 + 1 == v3)
      {
        break;
      }

      sub_10004B198(v0[26] + 1);
      if (v6)
      {
        __break(1u);
        return;
      }

      v7 = v0[9];
      sub_10004AF50();
      sub_10004AB4C(v8, v9, v10);
      if (*(v7 + 16) && (sub_100074E6C(v0[15]), (v11 & 1) != 0))
      {
      }

      else
      {
        v12 = _swiftEmptyArrayStorage;
      }

      v0[27] = v12;
      v13 = v12[2];
      v0[28] = v13;
      if (v13)
      {
        v1 = 0;
        goto LABEL_11;
      }
    }

    NotificationStore.periodicWeatherAlerts.getter();
    dispatch thunk of Table.delete.getter();

    v0[5] = type metadata accessor for Date();
    v0[6] = &protocol witness table for Date;
    sub_100006D18(v0 + 2);
    Date.init(timeIntervalSinceNow:)();
    sub_10004B1AC();
    <= infix(_:_:)();
    sub_100006994(v0 + 2);
    dispatch thunk of Delete.where(_:)();
    v19 = sub_100030CAC();
    v20(v19);

    sub_10004B1FC();

    sub_100030C70();
    sub_10004B1C0();

    v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    v12 = v0[27];
LABEL_11:
    v0[29] = v1;
    v0[30] = v12[v1 + 4];

    v14 = swift_task_alloc();
    v0[31] = v14;
    *v14 = v0;
    sub_10004AFF8(v14);
    sub_10004B1C0();

    sub_100046EE8(v15, v16, v17);
  }
}

uint64_t sub_100045238(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_10004AEC8(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v5;
  v2[10] = v4;

  return _swift_task_switch(sub_100045368, v5, v4);
}

uint64_t sub_100045368()
{
  sub_10004B284();
  sub_100030E20();
  static Logger.predictedLocationNotifications.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10004B070(v2))
  {
    v3 = sub_100030F7C();
    sub_10004B0A8(v3);
    sub_10004AFE8();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_10004B030();
  }

  v9 = v0[5];
  v10 = v0[2];

  v0[11] = *(v9 + 8);
  v11 = sub_100030CE0();
  v12(v11);
  sub_100024F60(v10);
  v0[12] = v13;
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_100045480;
  sub_10004B250();

  return Promise.resolveAsync()(v15);
}

uint64_t sub_100045480()
{
  sub_100030C4C();
  sub_100043668();
  v3 = v2;
  sub_10004AFD8();
  *v4 = v3;
  v5 = *v1;
  sub_10000FA6C();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1000455EC;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_100045584;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100045584()
{
  sub_100030C4C();

  sub_100030C70();

  return v0();
}

uint64_t sub_1000455EC()
{
  sub_10004B23C();
  sub_100030E20();

  static Logger.predictedLocationNotifications.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to validate cloud channel subscriptions when processing notifications for predicted locations; error=%{public}@", v3, 0xCu);
    sub_100018858(v4, &qword_1000A4030, &qword_100080F58);
    sub_10000FA7C(v4);
    sub_10000FA7C(v3);
  }

  else
  {
  }

  (*(v0 + 88))(*(v0 + 48), *(v0 + 32));

  sub_100030C70();
  sub_10004B1C0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_100045778()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_10000E960(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AF38();
  sub_10004AEC8(v4, 255, v5, &protocol conformance descriptor for LocIntelActor.Actor);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10004B180();
  v1[7] = v6;
  v1[8] = v7;
  v8 = sub_10004B174();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100045874(uint64_t a1)
{
  v18 = v1;
  static Logger.predictedLocationNotifications.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10004B070(v3))
  {
    v4 = sub_100030F7C();
    sub_10004B0A8(v4);
    sub_10004AFE8();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_10004B030();
  }

  v10 = v1[2];

  v11 = sub_100030CE0();
  v12(v11);
  os_unfair_lock_lock((v10 + 416));
  sub_100045B70((v10 + 424), v10, &v17);
  os_unfair_lock_unlock((v10 + 416));
  v13 = v17;
  v1[9] = v17;
  v14 = swift_task_alloc();
  v1[10] = v14;
  v15 = sub_100003020(&qword_1000A37F0, &unk_100080850);
  *v14 = v1;
  v14[1] = sub_1000459F8;

  return Task.value.getter(v15, v13, &type metadata for () + 8, v15, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000459F8()
{
  sub_100030C58();
  sub_100043668();
  v3 = v2;
  sub_10004AFD8();
  *v4 = v3;
  v5 = *v1;
  sub_10000FA6C();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_10004AF1C;
  }

  else
  {
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_100045B04;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100045B04()
{
  sub_100030C4C();

  sub_100030C70();

  return v0();
}

uint64_t sub_100045B70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a2;
  v5 = sub_100003020(&unk_1000A3930, &qword_100080900);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v23 = a1;
    static Logger.predictedLocationNotifications.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v22 = a3;
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Cancelling in progress rescheduling task", v14, 2u);
      a3 = v22;
    }

    (*(v9 + 8))(v11, v8);
    sub_100003020(&qword_1000A37F0, &unk_100080850);
    Task.cancel()();

    a1 = v23;
  }

  v15 = type metadata accessor for TaskPriority();
  sub_100006BD4(v7, 1, 1, v15);
  v16 = v24;

  v17 = static LocIntelActor.shared.getter();
  v18 = sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v16;
  v20 = sub_1000465F0(0, 0, v7, &unk_100081A28, v19);
  *a1 = v20;
  *a3 = v20;
}

uint64_t sub_100045E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100003020(&qword_1000A4600, &qword_100081A30);
  v4[3] = swift_task_alloc();
  v4[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100045F30, v6, v5);
}

uint64_t sub_100046114()
{
  sub_100030C4C();
  sub_100030E50();
  sub_10004AFD8();
  *v3 = v2;
  v4 = *v1;
  sub_10004B098();
  *v5 = v4;
  *(v7 + 72) = v6;

  sub_100030E68();
  v9 = *(v8 + 48);
  v10 = *(v0 + 40);

  return _swift_task_switch(sub_100046220, v10, v9);
}

uint64_t sub_100046220()
{
  sub_100030C58();
  v1 = v0[7];
  static Task<>.checkCancellation()();
  if (v1)
  {

    v2 = v0[2];

    os_unfair_lock_lock((v2 + 416));

    *(v2 + 424) = 0;
    os_unfair_lock_unlock((v2 + 416));

    sub_100030C70();

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_100046330;
    v6 = sub_10004B064(v0[9]);

    return sub_100045238(v6);
  }
}

uint64_t sub_100046330()
{
  sub_100030C58();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return _swift_task_switch(sub_100046460, v6, v5);
}

uint64_t sub_100046460()
{
  sub_100030C4C();
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 416));

  *(v1 + 424) = 0;
  os_unfair_lock_unlock((v1 + 416));

  sub_100030C70();

  return v2();
}

uint64_t sub_1000464E4()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return _swift_task_switch(sub_10004AF18, v6, v5);
}

uint64_t sub_1000465F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003020(&unk_1000A3930, &qword_100080900);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_10003C7D0(a3, v21 - v9, &unk_1000A3930, &qword_100080900);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100007374(v10, 1, v11);

  if (v12 == 1)
  {
    sub_100018858(v10, &unk_1000A3930, &qword_100080900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_100018858(a3, &unk_1000A3930, &qword_100080900);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100018858(a3, &unk_1000A3930, &qword_100080900);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100046880()
{
  sub_100030C4C();
  v1[2] = v0;
  v1[3] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AF38();
  sub_10004AEC8(v2, 255, v3, &protocol conformance descriptor for LocIntelActor.Actor);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10004B180();
  v1[4] = v4;
  v1[5] = v5;
  v6 = sub_10004B174();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100046A28()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 40);
  v6 = *(v0 + 32);

  return _swift_task_switch(sub_100046B34, v6, v5);
}

uint64_t sub_100046B34()
{
  sub_100030C4C();

  sub_100030C70();

  return v0();
}

uint64_t sub_100046B8C()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_10000E960(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AF38();
  sub_10004AEC8(v4, 255, v5, &protocol conformance descriptor for LocIntelActor.Actor);
  sub_10004B08C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10004B180();
  v1[7] = v6;
  v1[8] = v7;
  v8 = sub_10004B174();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100046C88()
{
  sub_100030C58();
  static Logger.predictedLocationNotifications.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10004B070(v2))
  {
    v3 = sub_100030F7C();
    sub_10004B0A8(v3);
    sub_10004AFE8();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_10004B030();
  }

  v9 = sub_100030CAC();
  v10(v9);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  sub_10004B1D4(v11);

  return sub_100046880();
}

uint64_t sub_100046D7C()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 64);
  v6 = *(v0 + 56);

  return _swift_task_switch(sub_100046E88, v6, v5);
}

uint64_t sub_100046E88()
{
  sub_100030C4C();

  sub_100030C70();

  return v0();
}

uint64_t sub_100046EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for PeriodicWeatherAlertEntity();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = type metadata accessor for WeatherAlert();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v10;
  v4[22] = v9;

  return _swift_task_switch(sub_10004713C, v10, v9);
}

uint64_t sub_10004713C()
{
  sub_10004B23C();
  sub_100030E20();
  if (sub_100047830(v0[3], v0[4]))
  {

    sub_10004B0D8();

    sub_100030C70();
    sub_10004B1C0();

    return v2(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    v10 = swift_task_alloc();
    v0[23] = v10;
    *v10 = v0;
    v10[1] = sub_100047248;
    sub_10004B064(v0[2]);
    sub_10004B1C0();

    return sub_100048450(v11, v12);
  }
}

uint64_t sub_100047248()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 176);
  v6 = *(v0 + 168);

  return _swift_task_switch(sub_100047354, v6, v5);
}

uint64_t sub_100047354()
{
  v1 = v0[3];

  sub_10004B134();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[16];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v0[3] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v16 = (v0[13] + 8);
    v18 = (v3 - 8);
    v19 = *(v3 + 56);
    v17 = v5;
    do
    {
      v4(v0[19], v6, v0[15]);
      NotificationStore.periodicWeatherAlerts.getter();
      v8 = v0[18];
      v7 = v0[19];
      v9 = v0[15];
      dispatch thunk of Table.save.getter();

      v4(v8, v7, v9);
      PeriodicWeatherAlertEntity.init(weatherAlert:)();
      dispatch thunk of Save.entity(_:)();
      v10 = v0[19];
      v12 = v0[14];
      v11 = v0[15];
      v13 = v0[12];

      (*v16)(v12, v13);
      (*v18)(v10, v11);
      v4 = v17;
      v6 += v19;
      --v2;
    }

    while (v2);
  }

  sub_10004B0D8();

  sub_100030C70();

  return v14();
}

uint64_t sub_100047830(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v77 = type metadata accessor for Logger();
  v75 = *(v77 - 8);
  v3 = __chkstk_darwin(v77);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v61 = &v57 - v7;
  __chkstk_darwin(v6);
  v9 = &v57 - v8;
  v10 = sub_100003020(&qword_1000A40D8, &qword_100080FF8);
  __chkstk_darwin(v10 - 8);
  v63 = &v57 - v11;
  v12 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  v13 = __chkstk_darwin(v12 - 8);
  v62 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  v73 = type metadata accessor for Expression();
  v17 = *(v73 - 8);
  v18 = __chkstk_darwin(v73);
  v65 = (&v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v70 = &v57 - v20;
  v21 = sub_100003020(&qword_1000A40D0, &qword_100080FF0);
  __chkstk_darwin(v21 - 8);
  v69 = &v57 - v22;
  v78 = type metadata accessor for UUID();
  v23 = *(v78 - 8);
  __chkstk_darwin(v78);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Settings.Notifications.Severe.filterHandledAlerts.getter();
  sub_10004AEC8(&qword_1000A48C0, v26, type metadata accessor for PredictedLocationsNotificationsManager, &unk_100081940);
  Configurable.setting<A>(_:)();

  if (v80 != 1)
  {
    return 0;
  }

  v57 = v9;
  v27 = *(a1 + 16);
  if (!v27)
  {
    return 0;
  }

  v28 = *(type metadata accessor for WeatherAlert() - 8);
  v29 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v76 = (v23 + 8);
  v68 = (v17 + 8);
  v59 = (v17 + 104);
  v74 = (v75 + 8);
  v58 = enum case for Expression.and(_:);
  v75 = *(v28 + 72);
  *&v30 = 138543362;
  v71 = v30;
  v72 = v16;
  v67 = v5;
  v66 = v25;
  while (1)
  {
    WeatherAlert.id.getter();
    v31 = UUID.uuidString.getter();
    v33 = v32;
    (*v76)(v25, v78);
    NotificationStore.periodicWeatherAlerts.getter();
    dispatch thunk of Table.query.getter();

    v82 = &type metadata for String;
    v83 = &protocol witness table for String;
    v80 = v31;
    v81 = v33;

    v34 = v31;
    v35 = v70;
    == infix(_:_:)();
    sub_100006994(&v80);
    v36 = type metadata accessor for OrderBy();
    sub_100006BD4(v16, 1, 1, v36);
    v37 = v69;
    dispatch thunk of Query.first(_:orderBy:)();
    v64 = v36;

    sub_100018858(v16, &qword_1000A3808, &qword_100080F70);
    v38 = *v68;
    (*v68)(v35, v73);
    v39 = type metadata accessor for PeriodicWeatherAlertEntity();
    v40 = sub_100007374(v37, 1, v39);
    sub_100018858(v37, &qword_1000A40D0, &qword_100080FF0);
    if (v40 != 1)
    {
      break;
    }

    NotificationStore.weatherAlerts.getter();
    v60 = v38;
    dispatch thunk of Table.query.getter();

    sub_100003020(&qword_1000A48C8, &qword_100081A90);
    v41 = swift_allocBox();
    v82 = &type metadata for String;
    v83 = &protocol witness table for String;
    v80 = v34;
    v81 = v33;

    == infix(_:_:)();
    sub_100006994(&v80);
    v82 = &type metadata for Bool;
    v83 = &protocol witness table for Bool;
    LOBYTE(v80) = 1;
    == infix(_:_:)();
    sub_100006994(&v80);
    v42 = v65;
    *v65 = v41;
    (*v59)(v42, v58, v73);
    v43 = v62;
    sub_100006BD4(v62, 1, 1, v64);
    dispatch thunk of Query.first(_:orderBy:)();
    v25 = v66;

    sub_100018858(v43, &qword_1000A3808, &qword_100080F70);
    v60(v65, v73);
    v44 = type metadata accessor for WeatherAlertEntity();
    v45 = v63;
    if (sub_100007374(v63, 1, v44) != 1)
    {
      sub_100018858(v45, &qword_1000A40D8, &qword_100080FF8);
      v47 = v57;
      static Logger.predictedLocationNotifications.getter();

      v48 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v80 = v55;
        *v54 = 136446210;
        v56 = sub_10000D9FC(v34, v33, &v80);

        *(v54 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v48, v53, "Will skip notification for previously handled cloud channel weather alert with identifier: %{public}s", v54, 0xCu);
        sub_100006994(v55);

        goto LABEL_13;
      }

      goto LABEL_16;
    }

    sub_100018858(v45, &qword_1000A40D8, &qword_100080FF8);
    v16 = v72;
    v29 += v75;
    if (!--v27)
    {
      return 0;
    }
  }

  v47 = v61;
  static Logger.predictedLocationNotifications.getter();

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v80 = v51;
    *v50 = 136446210;
    v52 = sub_10000D9FC(v34, v33, &v80);

    *(v50 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v48, v49, "Will skip notification for previously handled periodic weather alert with identifier: %{public}s", v50, 0xCu);
    sub_100006994(v51);

LABEL_13:

    goto LABEL_17;
  }

LABEL_16:

LABEL_17:

  (*v74)(v47, v77);
  return 1;
}

uint64_t sub_100048450(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for WeatherAlert();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  type metadata accessor for ResolvedPredictedLocation(0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for SevereNotification(0);
  v3[19] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for PeriodicSevereNotification(0);
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for SevereNotificationContent(0);
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for SevereNotificationSubscription(0);
  v3[32] = swift_task_alloc();
  sub_100003020(&qword_1000A4070, &unk_100080F90);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[36] = v9;
  v3[37] = v8;

  return _swift_task_switch(sub_1000487F8, v9, v8);
}

uint64_t sub_1000487F8()
{
  v66 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v61 = v0[28];
  v63 = v0[26];
  v6 = v0[5];
  v7 = v0[4];
  sub_1000032B8((v0[6] + 112), *(v0[6] + 136));
  sub_10004AF50();
  sub_10004AB4C(v7, v3, v8);
  swift_storeEnumTagMultiPayload();
  static Date.now.getter();
  sub_100016658(v6, v3, v4, v2);
  (*(v5 + 8))(v4, v61);
  sub_10004B04C();
  sub_10004AD90(v3, v9);
  sub_10003C7D0(v2, v1, &qword_1000A4070, &unk_100080F90);
  if (sub_100007374(v1, 1, v63) == 1)
  {
    v10 = v0[33];
    v11 = v0[11];
    v12 = v0[4];

    sub_100018858(v10, &qword_1000A4070, &unk_100080F90);
    static Logger.predictedLocationNotifications.getter();
    sub_10004AF50();
    sub_10004AB4C(v12, v11, v13);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[34];
    v18 = v0[16];
    v19 = v0[13];
    v20 = v0[14];
    v21 = v0[11];
    if (v16)
    {
      v64 = v0[34];
      v22 = sub_100037B44();
      v23 = swift_slowAlloc();
      v65 = v23;
      *v22 = 141558531;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v59 = v19;
      v62 = v18;
      v24 = ResolvedPredictedLocation.description.getter();
      v26 = v25;
      sub_10004AF20();
      sub_10004AD90(v21, v27);
      v28 = sub_10000D9FC(v24, v26, &v65);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2080;
      v29 = Array.description.getter();
      v31 = sub_10000D9FC(v29, v30, &v65);

      *(v22 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to make notification content for location=%{private,mask.hash}s, weatherAlerts=%s", v22, 0x20u);
      swift_arrayDestroy();
      sub_10000FA7C(v23);
      sub_10000FA7C(v22);

      (*(v20 + 8))(v62, v59);
      v32 = v64;
    }

    else
    {

      sub_10004AF20();
      sub_10004AD90(v21, v52);
      (*(v20 + 8))(v18, v19);
      v32 = v17;
    }

    sub_100018858(v32, &qword_1000A4070, &unk_100080F90);
    sub_10004AF98();
    sub_10004B0B4();

    sub_100030C70();
    sub_10004B1E0();

    __asm { BRAA            X1, X16 }
  }

  v33 = v0[32];
  v34 = v0[27];
  v35 = v0[24];
  v36 = v0[25];
  v37 = v0[23];
  v38 = v0[20];
  v39 = v0[21];
  v40 = v0[19];
  v41 = v0[6];
  v58 = v0[4];
  v60 = v0[5];
  sub_10004AD30(v0[33], v34, type metadata accessor for SevereNotificationContent);
  UUID.init()();
  v42 = UUID.uuidString.getter();
  v56 = v43;
  v57 = v42;
  (*(v39 + 8))(v37, v38);
  sub_10004AB4C(v34, v36 + *(v35 + 24), type metadata accessor for SevereNotificationContent);
  v44 = *(v35 + 28);
  type metadata accessor for Location();
  sub_100018904();
  (*(v45 + 16))(v36 + v44, v58);
  *v36 = v57;
  v36[1] = v56;
  v36[2] = v60;
  sub_1000032B8((v41 + 152), *(v41 + 176));
  sub_10004AB4C(v36, v40, type metadata accessor for PeriodicSevereNotification);
  swift_storeEnumTagMultiPayload();
  sub_10004AF50();
  sub_10004AB4C(v58, v33, v46);
  swift_storeEnumTagMultiPayload();

  sub_100032A48();
  v0[38] = v47;
  sub_10004B04C();
  sub_10004AD90(v33, v48);
  sub_10004AD90(v40, type metadata accessor for SevereNotification);
  v49 = swift_task_alloc();
  v0[39] = v49;
  *v49 = v0;
  v49[1] = sub_100048DA4;
  sub_10004B1E0();

  return Promise.resolveAsync()(v50);
}

uint64_t sub_100048DA4()
{
  sub_100030C4C();
  sub_100043668();
  v3 = v2;
  sub_10004AFD8();
  *v4 = v3;
  v5 = *v1;
  sub_10000FA6C();
  *v6 = v5;
  v3[40] = v0;

  if (v0)
  {
    v7 = v3[36];
    v8 = v3[37];
    v9 = sub_100049378;
  }

  else
  {

    v7 = v3[36];
    v8 = v3[37];
    v9 = sub_100048EA8;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100048EA8()
{
  v62 = v0;
  v1 = v0[12];
  v2 = v0[4];

  v4 = v0[2];
  v3 = v0[3];
  static Logger.predictedLocationNotifications.getter();
  sub_10004AF50();
  sub_10004AB4C(v2, v1, v5);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v55 = v7;
    log = v6;
    v8 = v0[12];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v10 = 136315907;
    v11 = sub_10000D9FC(v4, v3, &v60);

    *(v10 + 4) = v11;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    v12 = ResolvedPredictedLocation.description.getter();
    v14 = v13;
    sub_10004AF20();
    sub_10004AD90(v8, v15);
    v16 = sub_10000D9FC(v12, v14, &v60);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2080;
    v17 = *(v9 + 16);
    if (v17)
    {
      v18 = v0[21];
      v19 = v0[8];
      v20 = v0[5];
      v61 = _swiftEmptyArrayStorage;
      sub_10001486C(0, v17, 0);
      v21 = v61;
      v22 = *(v19 + 16);
      v19 += 16;
      v23 = v20 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v57 = *(v19 + 56);
      v58 = v22;
      v24 = (v19 - 8);
      do
      {
        v25 = v0[9];
        v26 = v0[7];
        v58(v25, v23, v26);
        WeatherAlert.id.getter();
        (*v24)(v25, v26);
        v61 = v21;
        v28 = v21[2];
        v27 = v21[3];
        if (v28 >= v27 >> 1)
        {
          sub_10001486C((v27 > 1), v28 + 1, 1);
          v21 = v61;
        }

        v29 = v0[22];
        v30 = v0[20];
        v21[2] = v28 + 1;
        (*(v18 + 32))(v21 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v28, v29, v30);
        v23 += v57;
        --v17;
      }

      while (v17);
    }

    v59 = v0[34];
    v42 = v0[27];
    v43 = v0[25];
    v44 = v0[17];
    v46 = v0[13];
    v45 = v0[14];
    v47 = Array.description.getter();
    v49 = v48;

    v50 = sub_10000D9FC(v47, v49, &v60);

    *(v10 + 34) = v50;
    _os_log_impl(&_mh_execute_header, log, v55, "Successfully sent notification with id=%s for location=%{private,mask.hash}s; weatherAlerts=%s", v10, 0x2Au);
    swift_arrayDestroy();
    sub_10004B030();
    sub_10000FA7C(v10);

    (*(v45 + 8))(v44, v46);
    sub_10004AF80();
    sub_10004AD90(v43, v51);
    sub_10004AF68();
    sub_10004AD90(v42, v52);
    v41 = v59;
  }

  else
  {
    v31 = v0[34];
    v32 = v0[27];
    v33 = v0[25];
    v34 = v0[17];
    v36 = v0[13];
    v35 = v0[14];
    v37 = v0[12];

    sub_10004AF20();
    sub_10004AD90(v37, v38);
    (*(v35 + 8))(v34, v36);
    sub_10004AF80();
    sub_10004AD90(v33, v39);
    sub_10004AF68();
    sub_10004AD90(v32, v40);
    v41 = v31;
  }

  sub_100018858(v41, &qword_1000A4070, &unk_100080F90);
  sub_10004AF98();

  sub_100030C70();

  return v53();
}

void sub_100049378()
{
  v1 = v0[10];
  v2 = v0[4];

  static Logger.predictedLocationNotifications.getter();
  sub_10004AF50();
  sub_10004AB4C(v2, v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[34];
  v8 = v0[27];
  v9 = v0[25];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  v13 = v0[10];
  if (v6)
  {
    v35 = v0[34];
    v14 = sub_100037B44();
    v33 = v9;
    v15 = swift_slowAlloc();
    v34 = v8;
    v16 = sub_100037B44();
    v36 = v16;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v31 = v12;
    v32 = v10;
    v17 = ResolvedPredictedLocation.description.getter();
    v19 = v18;
    sub_10004AF20();
    sub_10004AD90(v13, v20);
    v21 = sub_10000D9FC(v17, v19, &v36);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v22;
    *v15 = v22;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to send notification for location=%{private,mask.hash}s; error=%{public}@", v14, 0x20u);
    sub_100018858(v15, &qword_1000A4030, &qword_100080F58);
    sub_10000FA7C(v15);
    sub_100006994(v16);
    sub_10004B030();
    sub_10000FA7C(v14);

    (*(v11 + 8))(v32, v31);
    sub_10004AF80();
    sub_10004AD90(v33, v23);
    sub_10004AF68();
    sub_10004AD90(v34, v24);
    v25 = v35;
  }

  else
  {

    sub_10004AF20();
    sub_10004AD90(v13, v26);
    (*(v11 + 8))(v10, v12);
    sub_10004AF80();
    sub_10004AD90(v9, v27);
    sub_10004AF68();
    sub_10004AD90(v8, v28);
    v25 = v7;
  }

  sub_100018858(v25, &qword_1000A4070, &unk_100080F90);
  sub_10004AF98();
  sub_10004B0B4();

  sub_100030C70();
  sub_10004B1E0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000496A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000435A4;

  return sub_1000438BC();
}

uint64_t sub_100049738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100043300;

  return sub_100045778();
}

uint64_t sub_1000497C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000435A4;

  return sub_100046880();
}

uint64_t sub_100049858()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000435A4;

  return sub_100046B8C();
}

uint64_t sub_100049910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100003020(&unk_1000A3930, &qword_100080900);
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Logger();
  sub_100006FBC();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  static Logger.predictedLocationNotifications.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_100030F7C();
    v48 = v13;
    v19 = v3;
    v20 = a2;
    v21 = a1;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Running predicted locations manager as xpc activity", v18, 2u);
    v23 = v22;
    a1 = v21;
    a2 = v20;
    v3 = v19;
    v13 = v48;
    sub_10000FA7C(v23);
  }

  v24 = *(v9 + 8);
  v24(v15, v7);
  if (WDWeatherAppIsInstalled())
  {
    type metadata accessor for TaskPriority();
    sub_100030DE0();
    sub_100006BD4(v25, v26, v27, v28);

    v29 = static LocIntelActor.shared.getter();
    sub_10004AF38();
    v32 = sub_10004AEC8(v30, 255, v31, &protocol conformance descriptor for LocIntelActor.Actor);
    v33 = swift_allocObject();
    v33[2] = v29;
    v33[3] = v32;
    v33[4] = v3;
    v33[5] = a1;
    v33[6] = a2;
  }

  else
  {
    static Logger.predictedLocationNotifications.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (sub_10004B118(v35))
    {
      v36 = sub_100030F7C();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v3, "Weather app was uninstalled; rejecting xpc run instructions", v36, 2u);
      sub_10000FA7C(v36);
    }

    v24(v13, v7);
    type metadata accessor for TaskPriority();
    sub_100030DE0();
    sub_100006BD4(v37, v38, v39, v40);

    v41 = static LocIntelActor.shared.getter();
    sub_10004AF38();
    v44 = sub_10004AEC8(v42, 255, v43, &protocol conformance descriptor for LocIntelActor.Actor);
    v45 = swift_allocObject();
    v45[2] = v41;
    v45[3] = v44;
    v45[4] = a1;
    v45[5] = a2;
  }

  sub_10006C7F8();

  return 1;
}

uint64_t sub_100049CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  sub_100006FBC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (WDWeatherAppIsInstalled())
  {
    sub_10004B264();
    return sub_100063AEC(a1, a2);
  }

  else
  {
    static Logger.predictedLocationNotifications.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_100030F7C();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Weather app was uninstalled; rejecting verification request", v13, 2u);
      sub_10000FA7C(v13);
    }

    (*(v6 + 8))(v9, v4);
    type metadata accessor for Date();
    sub_100030DE0();
    sub_100006BD4(v14, v15, v16, v17);
    return 0;
  }
}

uint64_t sub_100049E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_100003020(&qword_1000A3800, &unk_100080860);
  v5[4] = swift_task_alloc();
  v5[5] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100049F28, v7, v6);
}

uint64_t sub_100049F28()
{
  sub_100030C58();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  type metadata accessor for Date();
  sub_100030DE0();
  sub_100006BD4(v3, v4, v5, v6);
  v2(v1, 0, 1);
  sub_100018858(v1, &qword_1000A3800, &unk_100080860);

  sub_100030C70();

  return v7();
}

uint64_t sub_100049FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100003020(&qword_1000A3800, &unk_100080860);
  v6[5] = swift_task_alloc();
  sub_100003020(&qword_1000A4600, &qword_100081A30);
  v6[6] = swift_task_alloc();
  v6[7] = type metadata accessor for PredictedLocationsRefresh(0);
  v6[8] = swift_task_alloc();
  v6[9] = static LocIntelActor.shared.getter();
  v7 = swift_task_alloc();
  v6[10] = v7;
  *v7 = v6;
  v7[1] = sub_10004A118;

  return sub_1000438BC();
}

uint64_t sub_10004A118()
{
  sub_100030C4C();
  sub_100043668();
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  type metadata accessor for LocIntelActor.Actor();
  sub_10004AF38();
  sub_10004AEC8(v3, 255, v4, &protocol conformance descriptor for LocIntelActor.Actor);
  sub_10004B08C();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004A25C, v6, v5);
}

uint64_t sub_10004A25C()
{
  sub_10004B284();
  sub_100030E20();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  sub_10004B264();
  v4 = type metadata accessor for Date();
  sub_100030DE0();
  sub_100006BD4(v5, v6, v7, v4);
  sub_1000629B8();
  sub_100018858(v3, &qword_1000A3800, &unk_100080860);
  if (sub_100007374(v2, 1, v1) == 1)
  {
    v8 = v0[5];
    v9 = v0[3];
    sub_100018858(v0[6], &qword_1000A4600, &qword_100081A30);
    sub_100030DE0();
    sub_100006BD4(v10, v11, v12, v4);
    v9(v8, 0, 1);
    sub_100018858(v8, &qword_1000A3800, &unk_100080860);
  }

  else
  {
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[5];
    v16 = v0[3];
    sub_10004AD30(v0[6], v13, type metadata accessor for PredictedLocationsRefresh);
    (*(*(v4 - 8) + 16))(v15, v13, v4);
    sub_100006BD4(v15, 0, 1, v4);
    v16(v15, *(v13 + *(v14 + 20)), 0);
    sub_100018858(v15, &qword_1000A3800, &unk_100080860);
    sub_10004AD90(v13, type metadata accessor for PredictedLocationsRefresh);
  }

  sub_100030C70();
  sub_10004B250();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_10004A45C()
{
  sub_100003020(&qword_1000A4178, &qword_100081AD0);
  updated = type metadata accessor for LocationManagerUpdateType();
  sub_100006FBC();
  v2 = v1;
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100081610;
  (*(v2 + 104))(v4 + v3, enum case for LocationManagerUpdateType.authorization(_:), updated);
  return v4;
}

uint64_t sub_10004A530(uint64_t a1, int a2)
{
  v4 = sub_100003020(&unk_1000A3930, &qword_100080900);
  result = __chkstk_darwin(v4 - 8);
  v6 = *(v2 + 408);
  if (v6)
  {
    *(v2 + 408) = a2;
    if (v6 != a2)
    {
      type metadata accessor for TaskPriority();
      sub_100030DE0();
      sub_100006BD4(v7, v8, v9, v10);

      v11 = static LocIntelActor.shared.getter();
      sub_10004AF38();
      v14 = sub_10004AEC8(v12, 255, v13, &protocol conformance descriptor for LocIntelActor.Actor);
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      *(v15 + 24) = v14;
      *(v15 + 32) = v6;
      *(v15 + 36) = a2;
      *(v15 + 40) = v2;
      sub_10006C7F8();
    }
  }

  else
  {
    *(v2 + 408) = a2;
  }

  return result;
}

uint64_t sub_10004A66C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  *(v6 + 80) = a4;
  *(v6 + 84) = a5;
  v7 = type metadata accessor for Logger();
  *(v6 + 24) = v7;
  *(v6 + 32) = *(v7 - 8);
  *(v6 + 40) = swift_task_alloc();
  *(v6 + 48) = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004AEC8(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 56) = v9;
  *(v6 + 64) = v8;

  return _swift_task_switch(sub_10004A794, v9, v8);
}

uint64_t sub_10004A794()
{
  sub_10004B23C();
  sub_100030E20();
  static Logger.predictedLocationNotifications.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10004B070(v2))
  {
    v4 = *(v0 + 80);
    v3 = *(v0 + 84);
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = v4;
    *(v5 + 8) = 1024;
    *(v5 + 10) = v3;
    sub_10004AFE8();
    _os_log_impl(v6, v7, v8, v9, v10, 0xEu);
    sub_10004B030();
  }

  v11 = sub_100030CAC();
  v12(v11);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  sub_10004B1D4(v13);
  sub_10004B1C0();

  return sub_100045778();
}

uint64_t sub_10004A8B0()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 64);
  v6 = *(v0 + 56);

  return _swift_task_switch(sub_10004AF10, v6, v5);
}

uint64_t sub_10004AA78()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004AAB8()
{
  sub_100030C58();
  sub_10004B18C();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100030BFC(v2);
  *v3 = v4;
  v5 = sub_10004AFC0(v3);

  return sub_100045E30(v5, v6, v7, v1);
}

uint64_t sub_10004AB4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100018904();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10004ABB0(uint64_t a1)
{
  sub_10004B23C();
  sub_100030E20();
  sub_10004B18C();
  v1 = swift_task_alloc();
  v2 = sub_100030BFC(v1);
  *v2 = v3;
  sub_10004AFC0(v2);
  sub_10004B1C0();

  return sub_100049E28(v4, v5, v6, v7, v8);
}

uint64_t sub_10004AC48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004AC90(uint64_t a1)
{
  sub_10004B284();
  sub_100030E20();
  sub_10004B18C();
  v1 = swift_task_alloc();
  v2 = sub_100030BFC(v1);
  *v2 = v3;
  sub_10004AFC0(v2);
  sub_10004B250();

  return sub_100049FD8(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10004AD30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100018904();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10004AD90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100018904();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004ADE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004AE28(uint64_t a1)
{
  sub_10004B284();
  sub_100030E20();
  sub_10004B18C();
  v1 = swift_task_alloc();
  v2 = sub_100030BFC(v1);
  *v2 = v3;
  sub_10004AFC0(v2);
  sub_10004B250();

  return sub_10004A66C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10004AEC8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10004B030()
{
}

BOOL sub_10004B070(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10004B0B4()
{
}

uint64_t sub_10004B0D8()
{
}

uint64_t sub_10004B0FC()
{
}

BOOL sub_10004B118(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_10004B134()
{
  sub_1000032B8((v0 + 328), *(v0 + 352));

  PredictedLocationsScheduleStoreType.recordSuccessfulExecution()();
}

void sub_10004B1FC()
{

  ReferenceCountedLazy.decrease()();
}

void sub_10004B21C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

double sub_10004B298(char a1)
{
  v3 = type metadata accessor for AppConfiguration();
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8((v1 + 24), *(v1 + 48));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  return sub_10004B340(v5, a1 & 1);
}

double sub_10004B340(uint64_t a1, char a2)
{
  v4 = type metadata accessor for PredictedLocationsConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppConfiguration.predictedLocations.getter();
  if (a2)
  {
    PredictedLocationsConfiguration.forecastWindowIntervalStartForSevereWeatherNotification.getter();
    v9 = v8;
    PredictedLocationsConfiguration.forecastWindowIntervalEndForSevereWeatherNotification.getter();
  }

  else
  {
    PredictedLocationsConfiguration.forecastWindowIntervalStartForDonations.getter();
    v9 = v10;
    PredictedLocationsConfiguration.forecastWindowIntervalEndForDonations.getter();
  }

  v11 = type metadata accessor for AppConfiguration();
  (*(*(v11 - 8) + 8))(a1, v11);
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_10004B484(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 281) = a1;
  *(v2 + 160) = *v1;
  v3 = type metadata accessor for PredictedLocation(0);
  *(v2 + 168) = v3;
  *(v2 + 176) = *(v3 - 8);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  sub_100003020(&qword_1000A4700, &qword_100081748);
  *(v2 + 208) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10004CA18(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 248) = v6;
  *(v2 + 256) = v5;

  return _swift_task_switch(sub_10004B680, v6, v5);
}

uint64_t sub_10004B680()
{
  static Settings.LocationIntelligence.Debug.useMockedPredictedLocations.getter();
  sub_10004CA18(&qword_1000A4980, v1, type metadata accessor for PredictedLocationsProvider, &unk_100081B3C);
  Configurable.setting<A>(_:)();

  if (*(v0 + 280) == 1)
  {

    sub_10004C0AC();
    v3 = v2;

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    sub_10004B298(*(v0 + 281) & 1);
    static Logger.predictedLocations.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Will fetch predicted context locations from CoreRoutine", v8, 2u);
    }

    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 208);
    v12 = *(v0 + 216);
    v13 = *(v0 + 152);

    (*(v10 + 8))(v9, v12);
    sub_10004C7E0();
    v14 = type metadata accessor for DateInterval();
    sub_100006BD4(v11, 0, 1, v14);
    sub_100003020(&qword_1000A4988, &qword_100081BA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100081AE0;
    v16 = objc_allocWithZone(NSSortDescriptor);
    *(v15 + 32) = sub_10004CA60(0xD00000000000001BLL, 0x80000001000856F0, 1);
    v17 = objc_allocWithZone(NSSortDescriptor);
    *(v15 + 40) = sub_10004CA60(0x6C696261626F7270, 0xEB00000000797469, 0);
    v18 = objc_allocWithZone(RTPredictedContextOptions);
    v19 = sub_10004CACC(v11, 1, 0, v15);
    *(v0 + 264) = v19;
    v20 = *(v13 + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_10004BA58;
    v21 = swift_continuation_init();
    *(v0 + 136) = sub_100003020(&qword_1000A4990, &qword_100081BA8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10004C924;
    *(v0 + 104) = &unk_10009BE58;
    *(v0 + 112) = v21;
    [v20 fetchPredictedContextWithOptions:v19 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10004BA58()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 256);
  v4 = *(v1 + 248);
  if (v2)
  {
    v5 = sub_10004BFF4;
  }

  else
  {
    v5 = sub_10004BB88;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_10004BB88()
{
  v36 = v0[22];
  v37 = v0[23];

  v38 = v0[18];
  v1 = [v38 nextStepPredictedContextsWithFilterMask:1];
  sub_100030944(0, &qword_1000A4998, RTPredictedContext_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100037A1C(v2);
  v4 = 0;
  v40 = _swiftEmptyArrayStorage;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v34 = v0[24];
      v35 = v0[25];
      v39 = v0[23];
      v32 = v6;
      v10 = [v9 locationOfInterest];
      v11 = [v10 location];

      [v11 latitude];
      v13 = v12;

      v14 = [v9 locationOfInterest];
      v15 = [v14 location];

      [v15 longitude];
      v17 = v16;

      v33 = v32;
      [v9 probability];
      v19 = v18;
      v20 = [v9 dateInterval];
      v21 = [v20 startDate];

      v22 = [v21 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v9 dateInterval];
      v24 = [v23 endDate];

      v25 = [v24 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      *v39 = v13;
      *(v37 + 8) = v17;
      *(v37 + 16) = v19;
      sub_10004CC44(v39, v34);
      sub_10004CC44(v34, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005BA14();
        v40 = v28;
      }

      v26 = v40[2];
      if (v26 >= v40[3] >> 1)
      {
        sub_10005BA14();
        v40 = v29;
      }

      v27 = v0[25];
      v40[2] = v26 + 1;
      sub_10004CC44(v27, v40 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v26);
      v4 = v7;
    }

    else
    {

      ++v4;
    }
  }

  v30 = v0[33];

  v31 = v0[1];

  v31(v40);
}

uint64_t sub_10004BFF4()
{
  v1 = *(v0 + 264);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_10004C0AC()
{
  v69 = type metadata accessor for Calendar();
  v57 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v54 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Date();
  v56 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for PredictedLocation(0);
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v4 = (&v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Logger();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Settings.LocationIntelligence.Debug.mockPredictedLocationCoordinates.getter();
  sub_10004CA18(&qword_1000A4980, v7, type metadata accessor for PredictedLocationsProvider, &unk_100081B3C);
  Configurable.setting<A>(_:)();

  v72 = v74;
  v73 = v75;
  v70 = 59;
  v71 = 0xE100000000000000;
  v8 = sub_1000069E0();
  v9 = &type metadata for String;
  v10 = StringProtocol.components<A>(separatedBy:)();

  v11 = 0;
  v12 = *(v10 + 16);
  v13 = v10 + 40;
  v61 = _swiftEmptyArrayStorage;
  v62 = v12;
  v63 = v8;
  v55 = v10 + 40;
LABEL_2:
  v14 = (v13 + 16 * v11);
  while (v12 != v11)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v15 = *v14;
    v74 = *(v14 - 1);
    v75 = v15;
    v72 = 44;
    v73 = 0xE100000000000000;
    v16 = StringProtocol.components<A>(separatedBy:)();
    v17 = v16;
    if (v16[2] == 2)
    {
      v18 = v4;
      v19 = v10;
      v20 = v9;
      v22 = v16[4];
      v21 = v16[5];
      v74 = 0;

      v23 = sub_10004CD14(v22, v21, &v74);

      if (v17[2] < 2uLL)
      {
        goto LABEL_26;
      }

      v24 = v74;
      v26 = v17[6];
      v25 = v17[7];

      v74 = 0;
      v27 = sub_10004CD14(v26, v25, &v74);

      if (v23 && v27)
      {
        v28 = v74;
        v9 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005B940();
          v61 = v32;
        }

        v10 = v19;
        v29 = v61[2];
        v4 = v18;
        if (v29 >= v61[3] >> 1)
        {
          sub_10005B940();
          v61 = v33;
        }

        v12 = v62;
        ++v11;
        v30 = v61;
        v61[2] = v29 + 1;
        v31 = &v30[2 * v29];
        v31[4] = v24;
        v31[5] = v28;
        v13 = v55;
        goto LABEL_2;
      }

      v9 = v20;
      v10 = v19;
      v4 = v18;
      v12 = v62;
    }

    else
    {
    }

    v14 += 2;
    ++v11;
  }

  v34 = v58;
  static Logger.predictedLocations.getter();
  v35 = v61;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v74 = v39;
    *v38 = 136315138;
    type metadata accessor for CLLocationCoordinate2D(0);
    v40 = Array.description.getter();
    v42 = sub_10000D9FC(v40, v41, &v74);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "Returning mock coordinates for predicted locations; coordinates=%s", v38, 0xCu);
    sub_100006994(v39);
  }

  (*(v59 + 8))(v34, v60);
  v43 = v35[2];
  if (v43)
  {
    v74 = _swiftEmptyArrayStorage;
    sub_10001477C(0, v43, 0);
    v44 = v74;
    v45 = (v57 + 8);
    v46 = (v56 + 8);
    v47 = v35 + 5;
    do
    {
      v48 = *(v47 - 1);
      v49 = *v47;
      Date.init()();
      v50 = v66;
      Date.init()();
      v51 = v68;
      static Calendar.current.getter();
      Date.wc_addHours(_:calendar:)();
      (*v45)(v51, v69);
      (*v46)(v50, v67);
      *v4 = v48;
      v4[1] = v49;
      v4[2] = 0x3FF0000000000000;
      v74 = v44;
      v53 = v44[2];
      v52 = v44[3];
      if (v53 >= v52 >> 1)
      {
        sub_10001477C((v52 > 1), v53 + 1, 1);
        v44 = v74;
      }

      v44[2] = v53 + 1;
      sub_10004CC44(v4, v44 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v53);
      v47 += 2;
      --v43;
    }

    while (v43);
  }
}

uint64_t sub_10004C7E0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v3 = __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  Date.init()();
  Date.addingTimeInterval(_:)();
  Date.addingTimeInterval(_:)();
  DateInterval.init(start:end:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t *sub_10004C924(uint64_t a1, void *a2, void *a3)
{
  result = sub_1000032B8((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_100051F18(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_100051F88(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C9B4()
{
  sub_100006994((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_10004CA18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_10004CA60(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

id sub_10004CACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for DateInterval();
  isa = 0;
  if (sub_100007374(a1, 1, v9) != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  if (a3)
  {
    sub_100030944(0, &qword_1000A49A8, CLLocation_ptr);
    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  sub_100030944(0, &qword_1000A49A0, NSSortDescriptor_ptr);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v5 initWithForecastWindowDateInterval:isa filterContextTypeMask:a2 filterLocations:v11.super.isa resultSortDescriptors:v12];

  return v13;
}

uint64_t sub_10004CC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_10004CCA8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_10004CD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_10004CE28(uint64_t a1)
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100006FBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000E970();
  v7 = v6 - v5;
  v18 = type metadata accessor for DispatchQoS();
  sub_100006FBC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000E970();
  v13 = v12 - v11;
  v14 = type metadata accessor for MachService();
  __chkstk_darwin(v14 - 8);
  sub_10000E970();
  v15 = qword_1000A49B0;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  type metadata accessor for Settings.Daemon.Performance();
  static Settings.Daemon.Performance.clearCachesWithinXPCActivity.getter();
  SettingReader.read<A>(_:)();

  *(v19 + v15) = v21;
  *(v19 + qword_1000A49B8) = a1;

  static MachServices.Database.getter();
  sub_100005360();
  static DispatchQoS.background.getter();
  sub_10004E404();
  sub_100003020(&qword_1000A4A18, &qword_100081C38);
  sub_10004E45C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static OS_dispatch_queue.schedulingQueue(named:attributes:qualityOfService:)();
  (*(v3 + 8))(v7, v1);
  (*(v9 + 8))(v13, v18);
  v16 = XPCDaemonService.init(machService:targetQueue:)();

  return v16;
}

uint64_t sub_10004D0C4(uint64_t a1)
{
  PartyProcessXCPDaemonConnectionPredicate = type metadata accessor for FirstPartyProcessXCPDaemonConnectionPredicate();
  sub_100006FBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000E970();
  v7 = v6 - v5;
  static XPCDaemonConnectionPredicate<>.firstPartyProcess.getter();
  dispatch thunk of XPCDaemonService.evaluate<each A>(_:is:)();
  return (*(v3 + 8))(v7, PartyProcessXCPDaemonConnectionPredicate);
}

uint64_t sub_10004D208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000A3258 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002FE8(v6, static Logger.daemon);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Performing database management activities", v9, 2u);
  }

  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = v3;

  dispatch thunk of XPCDaemonService.enqueue(_:)();
}

uint64_t sub_10004D354(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v31 = a2;
  v3 = type metadata accessor for Database.Location();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + qword_1000A49B0) == 1)
  {
    if (qword_1000A3258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100002FE8(v7, static Logger.daemon);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Performing pruning of expired Weather data caches", v10, 2u);
    }

    if (*(a1 + qword_1000A49B8))
    {
      ReferenceCountedLazy.value(_:)();
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Finished pruning of expired Weather data caches", v13, 2u);
    }
  }

  if (qword_1000A3258 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002FE8(v14, static Logger.daemon);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Performing incremental vacuum on NotificationStore database", v17, 2u);
  }

  type metadata accessor for NotificationStore();
  static NotificationStore.location.getter();
  sub_10004D86C(v6);
  v18 = *(v4 + 8);
  v18(v6, v3);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Performing incremental vacuum on GeocodeStore database", v21, 2u);
  }

  type metadata accessor for GeocodeStore();
  static GeocodeStore.location.getter();
  sub_10004D86C(v6);
  v18(v6, v3);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Performing incremental vacuum on LocationMetadataStore database", v24, 2u);
  }

  type metadata accessor for LocationMetadataStore();
  static LocationMetadataStore.location.getter();
  sub_10004D86C(v6);
  v18(v6, v3);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Performing incremental vacuum on WeatherDataStore database", v27, 2u);
  }

  type metadata accessor for WeatherDataStore();
  static WeatherDataStore.location.getter();
  sub_10004D86C(v6);
  v28 = (v18)(v6, v3);
  return v31(v28);
}

void sub_10004D86C(uint64_t a1)
{
  v46 = a1;
  v1 = type metadata accessor for Database.VacuumMode();
  v44 = *(v1 - 8);
  v45 = v1;
  __chkstk_darwin(v1);
  v43 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Database.CacheSize();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for Database.RecoveryMode();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Database.JournalingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AssertionOptions();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for Database.Location();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v38 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v39 = v15;
  v40 = v18;
  v37 = *(v15 + 16);
  v37(&v36 - v19, v46);
  static AssertionOptions.weatherAssertions.getter();
  (*(v10 + 104))(v12, enum case for Database.JournalingMode.wal(_:), v9);
  (*(v6 + 104))(v8, enum case for Database.RecoveryMode.truncate(_:), v41);
  *v5 = 16;
  (*(v3 + 104))(v5, enum case for Database.CacheSize.pages(_:), v42);
  (*(v44 + 104))(v43, enum case for Database.VacuumMode.incremental(_:), v45);
  type metadata accessor for Database();
  swift_allocObject();
  LOBYTE(v48[0]) = 1;
  Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:)();
  Database.incrementalVacuum()();
  if (v20)
  {

    v21 = v40;
    v22 = v38;
    if (qword_1000A3258 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100002FE8(v23, static Logger.daemon);
    (v37)(v22, v46, v21);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v47 = v20;
      v48[0] = v27;
      *v26 = 136446466;
      swift_errorRetain();
      sub_100003020(&qword_1000A37F0, &unk_100080850);
      v28 = String.init<A>(describing:)();
      v30 = sub_10000D9FC(v28, v29, v48);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v31 = Database.Location.path.getter();
      if (v32)
      {
        v33 = v31;
      }

      else
      {
        v33 = 7104878;
      }

      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = 0xE300000000000000;
      }

      (*(v39 + 8))(v22, v21);
      v35 = sub_10000D9FC(v33, v34, v48);

      *(v26 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "An error occurred while performing incremental vacuum %{public}s at location: %{public}s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v39 + 8))(v22, v21);
    }
  }

  else
  {
  }
}

uint64_t sub_10004DEAC(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  sub_10004D208(sub_10004E584, v5);
}

uint64_t sub_10004DF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  sub_100006BD4(a1, 0, 1, v4);
  return 0;
}

uint64_t sub_10004DFC0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_10004D208(sub_10004E4F8, v4);

  return 1;
}

uint64_t sub_10004E038(void (*a1)(char *, void, uint64_t))
{
  v2 = sub_100003020(&qword_1000A3800, &unk_100080860);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for Date();
  sub_100006BD4(v4, 1, 1, v5);
  a1(v4, 0, 1);
  return sub_10000FA04(v4);
}

void sub_10004E0EC(void *a1)
{
  if (*a1)
  {
    WeatherDataStore.purgeExpiredData()();
  }
}

uint64_t sub_10004E15C()
{
  v0 = type metadata accessor for XPCActivity.XPCPriority();
  sub_100006FBC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000E970();
  v6 = v5 - v4;
  v7 = type metadata accessor for XPCActivity();
  sub_10004E58C(v7, static XPCActivity.Databases);
  sub_100002FE8(v7, static XPCActivity.Databases);
  (*(v2 + 104))(v6, enum case for XPCActivity.XPCPriority.maintenance(_:), v0);
  return XPCActivity.init(identifier:gracePeriod:priority:requiresNetworkConnectivity:)();
}

uint64_t XPCActivity.Databases.unsafeMutableAddressor()
{
  if (qword_1000A3248 != -1)
  {
    sub_10004E5F0(&qword_1000A3248);
  }

  v0 = type metadata accessor for XPCActivity();

  return sub_100002FE8(v0, static XPCActivity.Databases);
}

uint64_t static XPCActivity.Databases.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000A3248 != -1)
  {
    sub_10004E5F0(&qword_1000A3248);
  }

  v2 = type metadata accessor for XPCActivity();
  v3 = sub_100002FE8(v2, static XPCActivity.Databases);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for DatabaseManager(uint64_t a1)
{
  result = qword_1000A49C0;
  if (!qword_1000A49C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10004E404()
{
  result = qword_1000A4A10;
  if (!qword_1000A4A10)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A10);
  }

  return result;
}

unint64_t sub_10004E45C()
{
  result = qword_1000A4A20;
  if (!qword_1000A4A20)
  {
    sub_10000325C(&qword_1000A4A18, &qword_100081C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A20);
  }

  return result;
}

uint64_t sub_10004E4C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E500()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004E54C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_10004E58C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10004E5F0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10004E610@<X0>(double *a1@<X8>)
{
  v21 = type metadata accessor for PredictedLocationsConfiguration();
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8((v1 + 176), *(v1 + 200));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.predictedLocations.getter();
  PredictedLocationsConfiguration.minDistanceFromCurrentLocationToConsiderLocationForDonation.getter();
  v11 = v10;
  PredictedLocationsConfiguration.minDistanceFromSavedLocationsToConsiderLocationForDonation.getter();
  v13 = v12;
  PredictedLocationsConfiguration.maxAgeForWidgetDonationToBeConsideredRecent.getter();
  v15 = v14;
  PredictedLocationsConfiguration.minProbabilityToConsiderLocationForDonationWithRecentDonation.getter();
  v17 = v16;
  PredictedLocationsConfiguration.minProbabilityToConsiderLocationForDonationWithNoRecentDonation.getter();
  v19 = v18;
  (*(v3 + 8))(v5, v21);
  (*(v7 + 8))(v9, v6);

  SettingProperty.wrappedValue.getter();

  if (v22 == 1)
  {

    SettingProperty.wrappedValue.getter();

    v17 = v22;

    SettingProperty.wrappedValue.getter();

    v19 = v22;
  }

  *a1 = v11;
  *(a1 + 1) = v13;
  *(a1 + 2) = v15;
  *(a1 + 3) = v17;
  *(a1 + 4) = v19;
  return result;
}

uint64_t sub_10004E864(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for Location.Identifier();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for LocationCoordinate();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v6 = type metadata accessor for LocationDataModel();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  sub_100003020(&qword_1000A3800, &unk_100080860);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10004EAF0, 0, 0);
}

uint64_t sub_10004EAF0()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 72);
  sub_10004E610((v0 + 16));
  sub_1000032B8((v4 + 56), *(v4 + 80));
  dispatch thunk of PredictedLocationsScheduleStoreType.mostRecentSuccessfulExecution()();
  sub_10000F994(v1, v2);
  v5 = sub_100007374(v2, 1, v3);
  v6 = *(v0 + 216);
  if (v5 == 1)
  {
    sub_10000FA04(*(v0 + 216));
LABEL_4:
    v14 = 32;
    goto LABEL_6;
  }

  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v9 = *(v0 + 192);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v11 = v10;
  v12 = *(v8 + 8);
  v12(v7, v9);
  v13 = *(v0 + 32);
  v12(v6, v9);
  if (v11 > v13)
  {
    goto LABEL_4;
  }

  v14 = 24;
LABEL_6:
  v15 = *(v0 + 16 + v14);
  *(v0 + 56) = *(v0 + 64);

  sub_100031B60();
  if (*(*(v0 + 56) + 16))
  {
    v16 = *(v0 + 16);
    sub_1000032B8((*(v0 + 72) + 96), *(*(v0 + 72) + 120));
    v17 = dispatch thunk of LocationManagerType.currentCLLocation.getter();
    sub_100031D00(v17);

    if (*(*(v0 + 56) + 16))
    {
      v18 = *(v0 + 72);
      v19 = v18[20];
      v20 = v18[21];
      sub_1000032B8(v18 + 17, v19);
      v21 = swift_task_alloc();
      *(v0 + 232) = v21;
      *v21 = v0;
      v21[1] = sub_10004EEBC;

      return dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()(v19, v20);
    }

    static Logger.predictedLocationIntentDonations.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (sub_100031158(v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v16;
      v25 = "No predicted locations met the min current location distance (%f, returning empty array.";
      goto LABEL_15;
    }
  }

  else
  {

    static Logger.predictedLocationIntentDonations.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (sub_100031158(v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v15;
      v25 = "No predicted locations met the probability threshold (%f, returning empty array.";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v22, v23, v25, v24, 0xCu);
    }
  }

  v26 = sub_100030CAC();
  v27(v26);
  sub_10000FA04(*(v0 + 224));

  v28 = *(v0 + 8);

  return v28(_swiftEmptyArrayStorage);
}

uint64_t sub_10004EEBC(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10004EFBC, 0, 0);
}

uint64_t sub_10004EFBC()
{
  if (v0[30])
  {
    v1 = v0[30];
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = v1[2];
  if (v2)
  {
    v3 = v0[22];
    v4 = v0[19];
    v5 = v0[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = *(v3 + 16);
    v3 += 16;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v26 = *(v3 + 56);
    v27 = v6;
    v24 = (v4 + 8);
    v25 = (v5 + 8);
    v23 = (v3 - 8);
    do
    {
      v8 = v0[23];
      v10 = v0[20];
      v9 = v0[21];
      v12 = v0[17];
      v11 = v0[18];
      v13 = v0[15];
      v27(v8, v7, v9);
      LocationDataModel.identifier.getter();
      Location.Identifier.coordinate.getter();
      (*v25)(v12, v13);
      LocationCoordinate.init(_:)();
      LocationCoordinate.clLocation.getter();
      (*v24)(v10, v11);
      (*v23)(v8, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += v26;
      --v2;
    }

    while (v2);
  }

  v14 = v0[3];
  sub_100031F80(_swiftEmptyArrayStorage);

  v15 = v0[7];
  if (!v15[2])
  {

    static Logger.predictedLocationIntentDonations.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (sub_100031158(v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v16, v17, "No predicted locations met the min saved locations distance (%f, returning empty array.", v18, 0xCu);
    }

    v19 = sub_100030CAC();
    v20(v19);
    v15 = _swiftEmptyArrayStorage;
  }

  sub_10000FA04(v0[28]);

  v21 = v0[1];

  return v21(v15);
}

uint64_t sub_10004F30C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10004F3CC, 0, 0);
}

uint64_t sub_10004F3CC(uint64_t a1)
{
  static Logger.predictedLocationIntentDonations.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100031158(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will fetch predicted locations for intent donations", v4, 2u);
  }

  v5 = *(v1 + 16);

  v6 = sub_100030CAC();
  v7(v6);
  sub_1000032B8((v5 + 16), *(v5 + 40));
  v8 = swift_task_alloc();
  *(v1 + 48) = v8;
  *v8 = v1;
  v8[1] = sub_10004F504;

  return sub_1000389D0(0);
}

uint64_t sub_10004F504(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 56) = a1;

  v5 = swift_task_alloc();
  *(v3 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_10004F658;

  return sub_10004E864(a1);
}

uint64_t sub_10004F658(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10004F794()
{
  sub_100006994((v0 + 16));
  sub_100006994((v0 + 56));
  sub_100006994((v0 + 96));
  sub_100006994((v0 + 136));
  sub_100006994((v0 + 176));

  return v0;
}

uint64_t sub_10004F7EC()
{
  sub_10004F794();

  return _swift_deallocClassInstance(v0, 240, 7);
}

void sub_10004F844()
{
  if (qword_1000A3258 != -1)
  {
    sub_1000033B4(&qword_1000A3258);
  }

  v0 = type metadata accessor for Logger();
  sub_100002FE8(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_100031158(v2))
  {
    v3 = sub_100030F7C();
    *v3 = 0;
    sub_10005045C(&_mh_execute_header, v4, v5, "Daemon has been requested to unregister and exit");
    sub_10000FA7C(v3);
  }

  type metadata accessor for XPCActivityManager();
  sub_100003020(&qword_1000A4B88, &unk_100081D60);
  v6 = type metadata accessor for XPCActivity();
  sub_100006FBC();
  v8 = v7;
  v10 = *(v9 + 72);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100080320;
  v13 = v12 + v11;
  static XPCActivity.Notifications.getter();
  if (qword_1000A3248 != -1)
  {
    sub_10004E5F0(&qword_1000A3248);
  }

  v14 = sub_100002FE8(v6, static XPCActivity.Databases);
  (*(v8 + 16))(v13 + v10, v14, v6);
  static XPCActivity.predictedLocationNotifications.getter();
  static XPCActivity.predictedLocationIntentDonations.getter();
  static XPCActivityManager.unregister(_:)();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_100030F7C();
    *v17 = 0;
    sub_10005043C(&_mh_execute_header, v18, v19, "Exiting after unregistering activities");
    sub_10000FA7C(v17);
  }

  exit(0);
}

void sub_10004FA50()
{
  if (qword_1000A3258 != -1)
  {
    sub_1000033B4(&qword_1000A3258);
  }

  v0 = type metadata accessor for Logger();
  sub_100002FE8(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_100031158(v2))
  {
    v3 = sub_100030F7C();
    *v3 = 0;
    sub_10005045C(&_mh_execute_header, v4, v5, "Daemon has been requested to exit");
    sub_10000FA7C(v3);
  }

  v6 = dispatch_semaphore_create(0);
  type metadata accessor for XPCActivityManager();
  sub_100003020(&qword_1000A4B88, &unk_100081D60);
  v7 = type metadata accessor for XPCActivity();
  sub_100006FBC();
  v9 = v8;
  v11 = *(v10 + 72);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100080320;
  v14 = v13 + v12;
  static XPCActivity.Notifications.getter();
  if (qword_1000A3248 != -1)
  {
    sub_10004E5F0(&qword_1000A3248);
  }

  v15 = sub_100002FE8(v7, static XPCActivity.Databases);
  (*(v9 + 16))(v14 + v11, v15, v7);
  static XPCActivity.predictedLocationNotifications.getter();
  static XPCActivity.predictedLocationIntentDonations.getter();
  *(swift_allocObject() + 16) = v6;
  v6;
  static XPCActivityManager.defer(_:completion:)();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (sub_100031158(v17))
  {
    v18 = sub_100030F7C();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Daemon is waiting at defer semaphore", v18, 2u);
    sub_10000FA7C(v18);
  }

  OS_dispatch_semaphore.wait()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_100030F7C();
    *v21 = 0;
    sub_10005043C(&_mh_execute_header, v22, v23, "Exiting after deferring activities");
    sub_10000FA7C(v21);
  }

  exit(0);
}

void sub_10004FD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100006FBC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  sub_100006FBC();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A3258 != -1)
  {
    sub_1000033B4(&qword_1000A3258);
  }

  v15 = type metadata accessor for Logger();
  sub_100002FE8(v15, static Logger.daemon);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (sub_100031158(v17))
  {
    v18 = sub_100030F7C();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Daemon running", v18, 2u);
    sub_10000FA7C(v18);
  }

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  type metadata accessor for Settings.Daemon.Performance();
  static Settings.Daemon.Performance.deferXPCServiceLaunch.getter();
  SettingReader.read<A>(_:)();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v32 = v14;
    v33 = v11;
    v19 = v8;
    v20 = v9;
    v21 = sub_1000500F8();
    v22 = sub_100037A1C(v21);
    if (v22)
    {
      v23 = v22;
      if (v22 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v23; ++i)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v25 = *(v21 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        [v25 start];
        swift_unknownObjectRelease();
      }
    }

    v9 = v20;
    v8 = v19;
    v14 = v32;
    v11 = v33;
  }

  type metadata accessor for Settings();
  static Settings.memoryTesting.getter();
  v26 = dispatch thunk of SettingGroup.isEnabled.getter();

  if ((v26 & 1) == 0)
  {
    sub_1000032B8((v34 + OBJC_IVAR____TtC8weatherd6Daemon_activityManager), *(v34 + OBJC_IVAR____TtC8weatherd6Daemon_activityManager + 24));
    dispatch thunk of XPCActivityManagerType.checkIn()();
    sub_100024A98();
    ObjectType = swift_getObjectType();
    aBlock[4] = sub_1000501C4;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002FA4;
    aBlock[3] = &unk_10009BF08;
    v28 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    sub_1000501D8(ObjectType, v29, v30);
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v28);
    (*(v5 + 8))(v8, v3);
    (*(v11 + 8))(v14, v9);
    OS_dispatch_source.resume()();
  }
}

uint64_t sub_1000500F8()
{
  sub_100003020(&qword_1000A4988, &qword_100081BA0);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC8weatherd6Daemon_databaseManager);
  v3 = *(v0 + OBJC_IVAR____TtC8weatherd6Daemon_notificationsManager);
  *(v1 + 16) = xmmword_100081D30;
  v4 = *(v0 + OBJC_IVAR____TtC8weatherd6Daemon_decommissioningService);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v5 = *(v0 + OBJC_IVAR____TtC8weatherd6Daemon_severeNotificationsManager);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = *(v0 + OBJC_IVAR____TtC8weatherd6Daemon_predictedLocationsService);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_1000501D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100050388(v3, v4, v5);
  sub_100003020(&unk_1000A32B0, &qword_100080350);
  sub_1000031F8();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100050370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100050388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B70;
  if (!qword_1000A4B70)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B70);
  }

  return result;
}

uint64_t sub_1000503E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10005043C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_10005045C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10005047C()
{
  v2 = type metadata accessor for CloudChannelSevereNotification(0);
  v3 = sub_100006FF0(v2);
  __chkstk_darwin(v3);
  sub_10000E970();
  v6 = (v5 - v4);
  v7 = type metadata accessor for PeriodicSevereNotification(0);
  v8 = sub_100006FF0(v7);
  __chkstk_darwin(v8);
  sub_10000E970();
  v9 = sub_10005101C();
  type metadata accessor for SevereNotification(v9);
  sub_100018904();
  __chkstk_darwin(v10);
  sub_10000E970();
  v13 = v12 - v11;
  sub_100050FBC();
  sub_100050A10(v0, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100051004();
    sub_100050958(v13, v6, v15);
    v16 = *v6;

    v17 = v6;
    v18 = v1;
  }

  else
  {
    sub_100050FEC();
    sub_100050958(v13, v1, v19);
    v16 = *v1;

    v17 = v1;
    v18 = v6;
  }

  sub_1000509B8(v17, v18);
  return v16;
}

uint64_t sub_1000505D4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CloudChannelSevereNotification(0);
  sub_100018904();
  __chkstk_darwin(v4);
  sub_10000E970();
  v5 = sub_10005101C();
  type metadata accessor for PeriodicSevereNotification(v5);
  sub_100018904();
  __chkstk_darwin(v6);
  sub_10000E970();
  v9 = v8 - v7;
  type metadata accessor for SevereNotification(0);
  sub_100018904();
  __chkstk_darwin(v10);
  sub_10000E970();
  v13 = v12 - v11;
  sub_100050FBC();
  sub_100050A10(v1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100050958(v13, v2, type metadata accessor for CloudChannelSevereNotification);
    sub_100050FD4();
    sub_100050A10(v2 + v15, a1, v16);
    v17 = v2;
    v18 = type metadata accessor for CloudChannelSevereNotification;
  }

  else
  {
    sub_100050958(v13, v9, type metadata accessor for PeriodicSevereNotification);
    sub_100050FD4();
    sub_100050A10(v9 + v19, a1, v20);
    v17 = v9;
    v18 = type metadata accessor for PeriodicSevereNotification;
  }

  return sub_1000509B8(v17, v18);
}

uint64_t sub_10005076C()
{
  v2 = type metadata accessor for CloudChannelSevereNotification(0);
  v3 = sub_100006FF0(v2);
  __chkstk_darwin(v3);
  sub_10000E970();
  v6 = v5 - v4;
  v7 = type metadata accessor for PeriodicSevereNotification(0);
  v8 = sub_100006FF0(v7);
  __chkstk_darwin(v8);
  sub_10000E970();
  v9 = sub_10005101C();
  type metadata accessor for SevereNotification(v9);
  sub_100018904();
  __chkstk_darwin(v10);
  sub_10000E970();
  v13 = v12 - v11;
  sub_100050FBC();
  sub_100050A10(v0, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100051004();
    sub_100050958(v13, v6, v15);
    v16 = *(v6 + 32);

    v17 = v6;
    v18 = v1;
  }

  else
  {
    sub_100050FEC();
    sub_100050958(v13, v1, v19);
    v16 = *(v1 + 16);

    v17 = v1;
    v18 = v6;
  }

  sub_1000509B8(v17, v18);
  return v16;
}

uint64_t sub_100050920(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100050958(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100018904();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000509B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100018904();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100050A10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100018904();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100050A84()
{
  sub_100051044();
  if (v0 == v2)
  {
    return sub_10005102C();
  }

  v4 = v1;
  v5 = v0;
  type metadata accessor for SevereNotificationContent(0);
  sub_10005105C();
  if (*(v6 + 84) == v5)
  {
    v7 = *(v4 + 28);
  }

  else
  {
    type metadata accessor for Location();
    v7 = *(v4 + 32);
  }

  v8 = sub_100051050(v7);

  return sub_100007374(v8, v9, v10);
}

void sub_100050B48(uint64_t a1, uint64_t a2)
{
  sub_100051044();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    type metadata accessor for SevereNotificationContent(0);
    sub_10005105C();
    if (*(v9 + 84) == v8)
    {
      v10 = *(v7 + 28);
    }

    else
    {
      type metadata accessor for Location();
      v10 = *(v7 + 32);
    }

    v11 = sub_100051050(v10);

    sub_100006BD4(v11, v12, a2, v13);
  }
}

void sub_100050C04(uint64_t a1)
{
  sub_100050CB0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SevereNotificationContent(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Location();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100050CB0(uint64_t a1)
{
  if (!qword_1000A4BF8)
  {
    type metadata accessor for WeatherAlert();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A4BF8);
    }
  }
}

uint64_t sub_100050D1C()
{
  sub_100051044();
  if (v0 == v2)
  {
    return sub_10005102C();
  }

  v4 = v1;
  v5 = v0;
  type metadata accessor for SevereNotificationContent(0);
  sub_10005105C();
  if (*(v6 + 84) == v5)
  {
    v7 = *(v4 + 24);
  }

  else
  {
    type metadata accessor for Location();
    v7 = *(v4 + 28);
  }

  v8 = sub_100051050(v7);

  return sub_100007374(v8, v9, v10);
}

void sub_100050DE0(uint64_t a1, uint64_t a2)
{
  sub_100051044();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    type metadata accessor for SevereNotificationContent(0);
    sub_10005105C();
    if (*(v9 + 84) == v8)
    {
      v10 = *(v7 + 24);
    }

    else
    {
      type metadata accessor for Location();
      v10 = *(v7 + 28);
    }

    v11 = sub_100051050(v10);

    sub_100006BD4(v11, v12, a2, v13);
  }
}

void sub_100050E9C(uint64_t a1)
{
  sub_100050CB0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SevereNotificationContent(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Location();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100050F48(uint64_t a1)
{
  result = type metadata accessor for PeriodicSevereNotification(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CloudChannelSevereNotification(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005102C()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_100051068()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_1000510C0();
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000510C0()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  sub_100005360();
  v1 = static OS_dispatch_queue.notifications.getter();
  [v0 setUnderlyingQueue:v1];

  return v0;
}

uint64_t sub_100051138(__int128 *a1)
{
  v3 = type metadata accessor for PromiseDeduperFlags();
  __chkstk_darwin(v3);
  *(v1 + 16) = 0;
  sub_100051D80();
  sub_100003020(&qword_1000A4E28, &qword_100082DA0);
  sub_100051DD8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100003020(&qword_1000A4E30, &qword_100081E80);
  swift_allocObject();
  *(v1 + 64) = PromiseDeduper.init(options:)();
  sub_100006D78(a1, v1 + 24);
  return v1;
}

uint64_t sub_100051250()
{
  sub_100006994((v0 + 24));

  return v0;
}

uint64_t sub_100051280()
{
  sub_100051250();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1000512D8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000D9FC(a1, a2, &v22);
    _os_log_impl(&_mh_execute_header, v10, v11, "Requested channel map asset download with identifier: %{public}s", v12, 0xCu);
    sub_100006994(v13);
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(v3 + 64);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v14;
  v15[5] = v3;
  v16 = objc_allocWithZone(sub_100003020(&qword_1000A4E38, &qword_100081E88));

  v17 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A4E40, &qword_100081E90);
  v18 = v17;
  v19 = Promise.__allocating_init(_:scheduleOn:)();

  return v19;
}

uint64_t sub_10005154C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19 = a4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_10000D9FC(a1, a2, v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting channel map download for identifier: %{public}s", v14, 0xCu);
    sub_100006994(v15);

    a4 = v19;
  }

  v16 = (*(v8 + 8))(v10, v7);
  v20[0] = a1;
  v20[1] = a2;
  __chkstk_darwin(v16);
  *(&v18 - 4) = a4;
  *(&v18 - 3) = a1;
  *(&v18 - 2) = a2;
  return PromiseDeduper.promise(key:createBlock:)();
}

uint64_t sub_100051760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100005360();
  v5 = static OS_dispatch_queue.notifications.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_100003020(&qword_1000A3528, &qword_100080508);
  type metadata accessor for CloudChannelMapManager();
  firstly<A, B>(on:disposeOn:closure:)();

  v7 = static OS_dispatch_queue.notifications.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  Promise.then<A>(on:closure:)();

  v9 = zalgo.getter();
  v10 = Promise.error(on:closure:)();

  return v10;
}

uint64_t sub_10005193C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v6;
    v13 = a2;
    v14 = v12;
    v15 = swift_slowAlloc();
    v20 = a1;
    v16 = v15;
    v19[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_10000D9FC(v13, a3, v19);
    _os_log_impl(&_mh_execute_header, v10, v11, "Completed channel map download with identifier: %{public}s", v14, 0xCu);
    sub_100006994(v16);
    a1 = v20;

    (*(v7 + 8))(v9, v18);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_100006930(a1, v19);
  sub_100003020(&qword_1000A4E40, &qword_100081E90);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_100051B54(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = a1;
    v15 = v9;
    *v8 = 136446210;
    swift_errorRetain();
    sub_100003020(&qword_1000A37F0, &unk_100080850);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D9FC(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to download cloud channel: %{public}s", v8, 0xCu);
    sub_100006994(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_100051D28(uint64_t a1)
{
  v2 = sub_100051068();
  [v2 addOperation:a1];
}

unint64_t sub_100051D80()
{
  result = qword_1000A5BA0;
  if (!qword_1000A5BA0)
  {
    type metadata accessor for PromiseDeduperFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BA0);
  }

  return result;
}

unint64_t sub_100051DD8()
{
  result = qword_1000A5BB0;
  if (!qword_1000A5BB0)
  {
    sub_10000325C(&qword_1000A4E28, &qword_100082DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BB0);
  }

  return result;
}

uint64_t sub_100051E3C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100051EA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051F1C(uint64_t a1, uint64_t a2)
{
  sub_100003020(&qword_1000A37F0, &unk_100080850);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

void *sub_100051FAC()
{
  sub_100006930((v0 + 2), v3);
  sub_1000032B8(v3, v3[3]);
  sub_100057F40(&qword_1000A3AE8, v1, type metadata accessor for PredictedLocationsIntentDonationManager, &unk_100081F58);
  sub_10004B08C();
  dispatch thunk of LocationManagerType.removeObserver(_:)();
  sub_100006994(v3);
  sub_100006994(v0 + 2);
  sub_100006994(v0 + 7);
  sub_100006994(v0 + 12);
  sub_100006994(v0 + 17);
  sub_100006994(v0 + 22);
  sub_100006994(v0 + 27);
  return v0;
}

uint64_t sub_10005207C()
{
  sub_100051FAC();

  return _swift_deallocClassInstance(v0, 260, 7);
}

uint64_t sub_1000520D4(uint64_t a1, void *a2)
{
  v3 = *sub_1000032B8((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_100051F1C(v3, a2);
  }

  return j__swift_continuation_throwingResume();
}

uint64_t sub_100052138(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for Logger();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = sub_100003020(&qword_1000A40F0, &qword_100081030);
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  sub_100003020(&qword_1000A4F70, &qword_1000820B0);
  v2[28] = swift_task_alloc();
  v2[29] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_100057F40(&qword_1000A4488, 255, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v6;
  v2[31] = v5;

  return _swift_task_switch(sub_100052308, v6, v5);
}